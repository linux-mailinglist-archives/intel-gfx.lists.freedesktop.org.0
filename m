Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF38015BAB2
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 09:23:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B93E89DFD;
	Thu, 13 Feb 2020 08:23:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 527BD89DFD
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2020 08:23:16 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 00:23:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,436,1574150400"; d="scan'208";a="227159799"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by orsmga008.jf.intel.com with ESMTP; 13 Feb 2020 00:23:13 -0800
Date: Thu, 13 Feb 2020 13:53:29 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20200213082329.GA13448@intel.com>
References: <20200212084143.13852-1-anshuman.gupta@intel.com>
 <20200212084143.13852-2-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200212084143.13852-2-anshuman.gupta@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 1/1] drm/i915/hdcp: Mandate zero
 seq_num_V at first RecvId msg
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-02-12 at 14:11:43 +0530, Anshuman Gupta wrote:
> HDCP Repeater initializes seq_num_V to 0 at the beginning of
> hdcp Session i.e. after AKE_init received, refer
> HDCP 2.2 Spec HDMI PAGE 19, DP PAGE 20.
> 
> HDCP 2.2 Comp specs 1B-06 test verifies that whether DUT
> considers failure of authentication if the repeater provides a
> non-zero value in seq_num_V in the first,
> RepeaterAuth_Send_ReceiverID_List message.
> 
> Make sure that HDCP repeater initializes seq_num_V to zero at
> beginning of session i.e. after AKE_Init, fail the Auth if
> there is non zero seq_num_V.
> 
> v2:
> - Used existing hdcp2_encrypted flag instead of
>   declaring new flag. [Ram]
> 
> Cc: Ramalingam C <ramalingam.c@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 30e0a3aa9d57..75f60ca282fc 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -1462,6 +1462,12 @@ int hdcp2_authenticate_repeater_topology(struct intel_connector *connector)
>  	seq_num_v =
>  		drm_hdcp_be24_to_cpu((const u8 *)msgs.recvid_list.seq_num_v);
>  
> +	if (!hdcp->hdcp2_encrypted && seq_num_v) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "Non zero Seq_num_v at first RecvId_List msg\n");
> +		return -EINVAL;
> +	}
> +
As we dont have retry for topology authentication alone and it always
start with AKE_Init, we can rely on hdcp2_encrypted status for first
RepeaterAuth_Send_ReceiverID_List detection.

LGTM.

Reviewed-by: Ramalingam C <ramalingam.c@intel.com>

>  	if (seq_num_v < hdcp->seq_num_v) {
>  		/* Roll over of the seq_num_v from repeater. Reauthenticate. */
>  		DRM_DEBUG_KMS("Seq_num_v roll over.\n");
> -- 
> 2.24.0
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
