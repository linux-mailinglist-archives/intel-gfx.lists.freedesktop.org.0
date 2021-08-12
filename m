Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37CDC3EA012
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Aug 2021 10:00:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA5956E311;
	Thu, 12 Aug 2021 08:00:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CC7F6E0EF
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Aug 2021 08:00:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10073"; a="215330442"
X-IronPort-AV: E=Sophos;i="5.84,315,1620716400"; d="scan'208";a="215330442"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2021 01:00:21 -0700
X-IronPort-AV: E=Sophos;i="5.84,315,1620716400"; d="scan'208";a="590550469"
Received: from genxfsim-desktop.iind.intel.com (HELO intel.com)
 ([10.223.74.179])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2021 01:00:18 -0700
Date: Thu, 12 Aug 2021 13:13:04 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Juston Li <juston.li@intel.com>
Cc: intel-gfx@lists.freedesktop.org, seanpaul@chromium.org,
 ramalingam.c@intel.com, rodrigo.vivi@intel.com
Message-ID: <20210812074303.GC814@intel.com>
References: <20210811212314.153269-1-juston.li@intel.com>
 <20210811212314.153269-3-juston.li@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20210811212314.153269-3-juston.li@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v4 2/3] drm/i915/hdcp: read RxInfo once when
 reading RepeaterAuth_Send_ReceiverID_List
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2021-08-11 at 14:23:13 -0700, Juston Li wrote:
> When reading RepeaterAuth_Send_ReceiverID_List, RxInfo is read by itself
> once to retrieve the DEVICE_COUNT to calculate the size of the
> ReceiverID list then read a second time as a part of reading ReceiverID
> list.
> 
> On some MST docking stations, RxInfo can only be read after the RxStatus
> READY bit is set otherwise the read will return -EIO. The spec states that
> the READY bit should be cleared as soon as RxInfo has been read.
> 
> In this case, the first RxInfo read succeeds but after the READY bit is
> cleared, the second read fails.
> 
> Fix it by reading RxInfo once and storing it before reading the rest of
> RepeaterAuth_Send_ReceiverID_List once we know the size.
> 
> Modify get_receiver_id_list_size() to read and store RxInfo in the
> message buffer and also parse DEVICE_COUNT so we know the size of
> RepeaterAuth_Send_ReceiverID_List.
> 
> Afterwards, retrieve the rest of the message at the offset for
> seq_num_V.
> 
> Changes in v5:
> - Don't change the offset define for Send_ReceiverID_List
>   When reading, update message offset to account for RxInfo being read
v5 looks good to me 
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
> 
> Changes in v4:
> - rebase and edit commit message
> 
> Changes in v3:
> - remove comment
> 
> Changes in v2:
> - remove unnecessary moving of drm_i915_private from patch 1
> 
> Signed-off-by: Juston Li <juston.li@intel.com>
> Acked-by: Anshuman Gupta <anshuman.gupta@intel.com>
> Reviewed-by: Ramalingam C <ramalingam.c@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 31 ++++++++++----------
>  1 file changed, 16 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index 1d0096654776..fbfb3c4d16bb 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -496,11 +496,10 @@ get_rxinfo_hdcp_1_dev_downstream(struct intel_digital_port *dig_port, bool *hdcp
>  }
>  
>  static
> -ssize_t get_receiver_id_list_size(struct intel_digital_port *dig_port)
> +ssize_t get_receiver_id_list_rx_info(struct intel_digital_port *dig_port, u32 *dev_cnt, u8 *byte)
>  {
> -	u8 rx_info[HDCP_2_2_RXINFO_LEN];
> -	u32 dev_cnt;
>  	ssize_t ret;
> +	u8 *rx_info = byte;
>  
>  	ret = drm_dp_dpcd_read(&dig_port->dp.aux,
>  			       DP_HDCP_2_2_REG_RXINFO_OFFSET,
> @@ -508,15 +507,11 @@ ssize_t get_receiver_id_list_size(struct intel_digital_port *dig_port)
>  	if (ret != HDCP_2_2_RXINFO_LEN)
>  		return ret >= 0 ? -EIO : ret;
>  
> -	dev_cnt = (HDCP_2_2_DEV_COUNT_HI(rx_info[0]) << 4 |
> +	*dev_cnt = (HDCP_2_2_DEV_COUNT_HI(rx_info[0]) << 4 |
>  		   HDCP_2_2_DEV_COUNT_LO(rx_info[1]));
>  
> -	if (dev_cnt > HDCP_2_2_MAX_DEVICE_COUNT)
> -		dev_cnt = HDCP_2_2_MAX_DEVICE_COUNT;
> -
> -	ret = sizeof(struct hdcp2_rep_send_receiverid_list) -
> -		HDCP_2_2_RECEIVER_IDS_MAX_LEN +
> -		(dev_cnt * HDCP_2_2_RECEIVER_ID_LEN);
> +	if (*dev_cnt > HDCP_2_2_MAX_DEVICE_COUNT)
> +		*dev_cnt = HDCP_2_2_MAX_DEVICE_COUNT;
>  
>  	return ret;
>  }
> @@ -534,6 +529,7 @@ int intel_dp_hdcp2_read_msg(struct intel_digital_port *dig_port,
>  	const struct hdcp2_dp_msg_data *hdcp2_msg_data;
>  	ktime_t msg_end = ktime_set(0, 0);
>  	bool msg_expired;
> +	u32 dev_cnt;
>  
>  	hdcp2_msg_data = get_hdcp2_dp_msg_data(msg_id);
>  	if (!hdcp2_msg_data)
> @@ -546,17 +542,22 @@ int intel_dp_hdcp2_read_msg(struct intel_digital_port *dig_port,
>  
>  	hdcp->cp_irq_count_cached = atomic_read(&hdcp->cp_irq_count);
>  
> +	/* DP adaptation msgs has no msg_id */
> +	byte++;
> +
>  	if (msg_id == HDCP_2_2_REP_SEND_RECVID_LIST) {
> -		ret = get_receiver_id_list_size(dig_port);
> +		ret = get_receiver_id_list_rx_info(dig_port, &dev_cnt, byte);
>  		if (ret < 0)
>  			return ret;
>  
> -		size = ret;
> +		byte += ret;
> +		size = sizeof(struct hdcp2_rep_send_receiverid_list) -
> +		HDCP_2_2_RXINFO_LEN - HDCP_2_2_RECEIVER_IDS_MAX_LEN +
> +		(dev_cnt * HDCP_2_2_RECEIVER_ID_LEN);
> +		offset += HDCP_2_2_RXINFO_LEN;
>  	}
> -	bytes_to_recv = size - 1;
>  
> -	/* DP adaptation msgs has no msg_id */
> -	byte++;
> +	bytes_to_recv = size - 1;
>  
>  	while (bytes_to_recv) {
>  		len = bytes_to_recv > DP_AUX_MAX_PAYLOAD_BYTES ?
> -- 
> 2.31.1
> 
