Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 465213E8802
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Aug 2021 04:29:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C2AE6E095;
	Wed, 11 Aug 2021 02:28:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2FB86E091;
 Wed, 11 Aug 2021 02:28:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10072"; a="194625931"
X-IronPort-AV: E=Sophos;i="5.84,311,1620716400"; d="scan'208";a="194625931"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2021 19:28:50 -0700
X-IronPort-AV: E=Sophos;i="5.84,311,1620716400"; d="scan'208";a="484643927"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.205])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2021 19:28:48 -0700
Date: Wed, 11 Aug 2021 08:00:49 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Juston Li <juston.li@intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 seanpaul@chromium.org, anshuman.gupta@intel.com, rodrigo.vivi@intel.com
Message-ID: <20210811023047.GA16096@intel.com>
References: <20210810235212.138721-1-juston.li@intel.com>
 <20210810235212.138721-2-juston.li@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20210810235212.138721-2-juston.li@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3 1/3] drm/i915/hdcp: update
 cp_irq_count_cached in intel_dp_hdcp2_read_msg()
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

On 2021-08-10 at 16:52:10 -0700, Juston Li wrote:
> Update cp_irq_count_cached when reading messages rather than when
> writing a message to make sure the value is up to date and not
> stale from a previously handled CP_IRQ.
> 
> AKE flow  doesn't always respond to a read with a ACK write msg.
> E.g. AKE_Send_Pairing_Info will "timeout" because we received
> a CP_IRQ for reading AKE_Send_H_Prime but no write occurred between that
> and reading AKE_Send_Pairing_Info so cp_irq_count_cached is stale
> causing the wait to return right away rather than waiting for a new
> CP_IRQ.

LGTM.

Reviewed-by: Ramalingam C <ramalingam.c@intel.com>
> 
> Signed-off-by: Juston Li <juston.li@intel.com>
> Acked-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index d697d169e8c1..1d0096654776 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -446,8 +446,6 @@ static
>  int intel_dp_hdcp2_write_msg(struct intel_digital_port *dig_port,
>  			     void *buf, size_t size)
>  {
> -	struct intel_dp *dp = &dig_port->dp;
> -	struct intel_hdcp *hdcp = &dp->attached_connector->hdcp;
>  	unsigned int offset;
>  	u8 *byte = buf;
>  	ssize_t ret, bytes_to_write, len;
> @@ -463,8 +461,6 @@ int intel_dp_hdcp2_write_msg(struct intel_digital_port *dig_port,
>  	bytes_to_write = size - 1;
>  	byte++;
>  
> -	hdcp->cp_irq_count_cached = atomic_read(&hdcp->cp_irq_count);
> -
>  	while (bytes_to_write) {
>  		len = bytes_to_write > DP_AUX_MAX_PAYLOAD_BYTES ?
>  				DP_AUX_MAX_PAYLOAD_BYTES : bytes_to_write;
> @@ -530,6 +526,8 @@ int intel_dp_hdcp2_read_msg(struct intel_digital_port *dig_port,
>  			    u8 msg_id, void *buf, size_t size)
>  {
>  	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> +	struct intel_dp *dp = &dig_port->dp;
> +	struct intel_hdcp *hdcp = &dp->attached_connector->hdcp;
>  	unsigned int offset;
>  	u8 *byte = buf;
>  	ssize_t ret, bytes_to_recv, len;
> @@ -546,6 +544,8 @@ int intel_dp_hdcp2_read_msg(struct intel_digital_port *dig_port,
>  	if (ret < 0)
>  		return ret;
>  
> +	hdcp->cp_irq_count_cached = atomic_read(&hdcp->cp_irq_count);
> +
>  	if (msg_id == HDCP_2_2_REP_SEND_RECVID_LIST) {
>  		ret = get_receiver_id_list_size(dig_port);
>  		if (ret < 0)
> -- 
> 2.31.1
> 
