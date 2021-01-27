Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9E6305476
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 08:24:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD89E6E1BC;
	Wed, 27 Jan 2021 07:24:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA0656E1BC
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 07:24:38 +0000 (UTC)
IronPort-SDR: ORsIcGb3Pavz/tNfptjIn+K82/b1fZQ5qQJ8JmcHE1+/Ki7YEn8+PUkPvtonmErm+3HJPliGve
 z9bDuSryM9ig==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="159202646"
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="159202646"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 23:24:38 -0800
IronPort-SDR: +93zk5LRWj1jyqnQX8lTaSKK3BNVkZOG9bc9zMFHpFZLRNxUL+lKiX2XUuFsZ2AToEUKqUSDBm
 aukCq6EjYmHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="430004619"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 26 Jan 2021 23:24:38 -0800
Received: from bgsmsx603.gar.corp.intel.com (10.109.78.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 26 Jan 2021 23:24:37 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX603.gar.corp.intel.com (10.109.78.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 27 Jan 2021 12:54:35 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Wed, 27 Jan 2021 12:54:35 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Li, Juston" <juston.li@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 3/4] drm/i915/hdcp: read RxInfo once when reading
 Send_Pairing_Info
Thread-Index: AQHW9HjIkorzPId1JkW+R7iB76gmaqo7EbhQ
Date: Wed, 27 Jan 2021 07:24:34 +0000
Message-ID: <7976a4bd85224f44bf893e5cda00aeeb@intel.com>
References: <20210127065034.2501119-1-juston.li@intel.com>
 <20210127065034.2501119-3-juston.li@intel.com>
In-Reply-To: <20210127065034.2501119-3-juston.li@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 3/4] drm/i915/hdcp: read RxInfo once when
 reading Send_Pairing_Info
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
Cc: "seanpaul@chromium.org" <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Li, Juston <juston.li@intel.com>
> Sent: Wednesday, January 27, 2021 12:21 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: seanpaul@chromium.org; Gupta, Anshuman
> <anshuman.gupta@intel.com>; C, Ramalingam <ramalingam.c@intel.com>;
> Li, Juston <juston.li@intel.com>
> Subject: [PATCH v2 3/4] drm/i915/hdcp: read RxInfo once when reading
> Send_Pairing_Info
> 
> Previously when reading Send_Pairing_Info, RxInfo by itself was read once
> to retrieve the DEVICE_COUNT and then a second time when reading the
> RepeaterAuth_Send_ReceiverID_List which contains RxInfo.
> 
> On a couple HDCP 2.2 docks, this second read attempt on RxInfo fails due to
> no Ack response. This behavior doesn't seem to be defined but regardless
> we can fix it by reading RxInfo once and storing it before reading the rest of
> RepeaterAuth_Send_ReceiverID_List once we know the size.
> 
> Modify get_receiver_id_list_size() to read and store RxInfo in the message
> buffer and also parse DEVICE_COUNT so we know the size of
> RepeaterAuth_Send_ReceiverID_List.
> 
> Afterwards, retrieve the rest of the message at the offset for seq_num_V.
> 
> Changes in v2:
> - remove unnecessary moving of drm_i915_private from patch 1
> 
> Signed-off-by: Juston Li <juston.li@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 29 ++++++++++----------
>  include/drm/drm_dp_helper.h                  |  2 +-
>  2 files changed, 16 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index d1397af97f69..cd183944bc5a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -475,11 +475,10 @@ int intel_dp_hdcp2_write_msg(struct
> intel_digital_port *dig_port,  }
> 
>  static
> -ssize_t get_receiver_id_list_size(struct intel_digital_port *dig_port)
> +ssize_t get_receiver_id_list_rx_info(struct intel_digital_port
> +*dig_port, u32 *dev_cnt, u8 *byte)
>  {
> -	u8 rx_info[HDCP_2_2_RXINFO_LEN];
> -	u32 dev_cnt;
>  	ssize_t ret;
> +	u8 *rx_info = byte;
> 
>  	ret = drm_dp_dpcd_read(&dig_port->dp.aux,
>  			       DP_HDCP_2_2_REG_RXINFO_OFFSET, @@ -
> 487,15 +486,11 @@ ssize_t get_receiver_id_list_size(struct
> intel_digital_port *dig_port)
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
> @@ -511,6 +506,7 @@ int intel_dp_hdcp2_read_msg(struct
> intel_digital_port *dig_port,
>  	u8 *byte = buf;
>  	ssize_t ret, bytes_to_recv, len;
>  	const struct hdcp2_dp_msg_data *hdcp2_msg_data;
> +	u32 dev_cnt;
> 
>  	hdcp2_msg_data = get_hdcp2_dp_msg_data(msg_id);
>  	if (!hdcp2_msg_data)
> @@ -523,17 +519,22 @@ int intel_dp_hdcp2_read_msg(struct
> intel_digital_port *dig_port,
> 
>  	hdcp->cp_irq_count_cached = atomic_read(&hdcp->cp_irq_count);
> 
> +	/* DP adaptation msgs has no msg_id */
> +	byte++;
> +
>  	if (msg_id == HDCP_2_2_REP_SEND_RECVID_LIST) {
> -		ret = get_receiver_id_list_size(dig_port);
> +		ret = get_receiver_id_list_rx_info(dig_port, &dev_cnt,
> byte);
>  		if (ret < 0)
>  			return ret;
> 
> -		size = ret;
> +		byte += ret;
> +		size = sizeof(struct hdcp2_rep_send_receiverid_list) -
> +		HDCP_2_2_RXINFO_LEN -
> HDCP_2_2_RECEIVER_IDS_MAX_LEN +
> +		(dev_cnt * HDCP_2_2_RECEIVER_ID_LEN);
>  	}
> -	bytes_to_recv = size - 1;
> 
>  	/* DP adaptation msgs has no msg_id */
Please remove this comment.
With that 
Acked-by: Anshuman Gupta <anshuman.gupta@intel.com>
> -	byte++;
> +	bytes_to_recv = size - 1;
> 
>  	while (bytes_to_recv) {
>  		len = bytes_to_recv > DP_AUX_MAX_PAYLOAD_BYTES ?
> diff --git a/include/drm/drm_dp_helper.h b/include/drm/drm_dp_helper.h
> index edffd1dcca3e..3b42392394ba 100644
> --- a/include/drm/drm_dp_helper.h
> +++ b/include/drm/drm_dp_helper.h
> @@ -1388,7 +1388,7 @@ enum drm_dp_phy {
>  #define DP_HDCP_2_2_LC_INIT_OFFSET
> 	DP_HDCP_2_2_REG_RN_OFFSET
>  #define DP_HDCP_2_2_LC_SEND_LPRIME_OFFSET
> 	DP_HDCP_2_2_REG_LPRIME_OFFSET
>  #define DP_HDCP_2_2_SKE_SEND_EKS_OFFSET
> 	DP_HDCP_2_2_REG_EDKEY_KS_OFFSET
> -#define DP_HDCP_2_2_REP_SEND_RECVID_LIST_OFFSET
> 	DP_HDCP_2_2_REG_RXINFO_OFFSET
> +#define DP_HDCP_2_2_REP_SEND_RECVID_LIST_OFFSET
> 	DP_HDCP_2_2_REG_SEQ_NUM_V_OFFSET
>  #define DP_HDCP_2_2_REP_SEND_ACK_OFFSET
> 	DP_HDCP_2_2_REG_V_OFFSET
>  #define DP_HDCP_2_2_REP_STREAM_MANAGE_OFFSET
> 	DP_HDCP_2_2_REG_SEQ_NUM_M_OFFSET
>  #define DP_HDCP_2_2_REP_STREAM_READY_OFFSET
> 	DP_HDCP_2_2_REG_MPRIME_OFFSET
> --
> 2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
