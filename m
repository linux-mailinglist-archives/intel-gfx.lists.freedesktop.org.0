Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11AEA5352D3
	for <lists+intel-gfx@lfdr.de>; Thu, 26 May 2022 19:43:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E49E10E735;
	Thu, 26 May 2022 17:43:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D93610E735
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 May 2022 17:43:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653587003; x=1685123003;
 h=date:from:to:subject:message-id:references:mime-version:
 in-reply-to; bh=+0XdELP6SlEsh9bjU25/oYU23AISWe3Wt+O8k9piAI0=;
 b=YVDAvmYDLLmaupZ4QqnoCNTvWF7mk2Ly8LqJ63ZFYQ8ihIIN59AdtsOg
 NTbJK3UXiexmgC1fDk0Bup2rN8T20hb89p+rhhENHSXhOcL7HPpmIbQbW
 ejpnx7bemV/53v4ltSp/LwCs2xswsmg3IrkDALOhk0PGp5eOhzmC8i9gw
 91r5i80PjFWh82isXZb1YRsu+iIkyOHyanNbDsllAXeQd7CpugdGFbnrr
 leourkbHqYE2WxrULj4cP5Q04HEKWTNCHe9cQdRZH2CoAQTnaLxlE/BnQ
 dZXTamn0B7oN9+P9zC0jSFih+Xjf5AndJZsemqiptNVldPSnnEwArA9Nc w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10359"; a="274233604"
X-IronPort-AV: E=Sophos;i="5.91,252,1647327600"; d="scan'208";a="274233604"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2022 10:43:22 -0700
X-IronPort-AV: E=Sophos;i="5.91,252,1647327600"; d="scan'208";a="718359255"
Received: from msatwood-mobl.jf.intel.com (HELO msatwood-mobl) ([10.24.12.99])
 by fmsmga001-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 May 2022 10:43:22 -0700
Date: Thu, 26 May 2022 10:43:18 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <Yo+8NlbnV1tUBp7H@msatwood-mobl>
References: <20220526064935.969225-1-balasubramani.vivekanandan@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220526064935.969225-1-balasubramani.vivekanandan@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/adl_p: Updates to HDMI
 combo PHY voltage swing table
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

On Thu, May 26, 2022 at 12:19:35PM +0530, Balasubramani Vivekanandan wrote:
> New updates to HDMI combo PHY voltage swing tables. Actually with this
> update (bspec updated on 08/17/2021), the values are reverted back to be
> same as icelake for HDMI combo PHY.
> 
> Bspec: 49291
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> ---
>  .../drm/i915/display/intel_ddi_buf_trans.c    | 22 +------------------
>  1 file changed, 1 insertion(+), 21 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> index 85f58dd3df72..5cae1d19bcbb 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> @@ -878,26 +878,6 @@ static const struct intel_ddi_buf_trans adls_combo_phy_trans_edp_hbr3 = {
>  	.num_entries = ARRAY_SIZE(_adls_combo_phy_trans_edp_hbr3),
>  };
>  
> -static const union intel_ddi_buf_trans_entry _adlp_combo_phy_trans_hdmi[] = {
> -							/* NT mV Trans mV    db   */
> -	{ .icl = { 0x6, 0x60, 0x3F, 0x00, 0x00 } },	/*  400    400      0.0 */
> -	{ .icl = { 0x6, 0x68, 0x3F, 0x00, 0x00 } },	/*  500    500      0.0 */
> -	{ .icl = { 0xA, 0x73, 0x3F, 0x00, 0x00 } },	/*  650    650      0.0 ALS */
> -	{ .icl = { 0xA, 0x78, 0x3F, 0x00, 0x00 } },	/*  800    800      0.0 */
> -	{ .icl = { 0xB, 0x7F, 0x3F, 0x00, 0x00 } },	/* 1000   1000      0.0 Re-timer */
> -	{ .icl = { 0xB, 0x7F, 0x3B, 0x00, 0x04 } },	/* Full    Red     -1.5 */
> -	{ .icl = { 0xB, 0x7F, 0x39, 0x00, 0x06 } },	/* Full    Red     -1.8 */
> -	{ .icl = { 0xB, 0x7F, 0x37, 0x00, 0x08 } },	/* Full    Red     -2.0 CRLS */
> -	{ .icl = { 0xB, 0x7F, 0x35, 0x00, 0x0A } },	/* Full    Red     -2.5 */
> -	{ .icl = { 0xB, 0x7F, 0x33, 0x00, 0x0C } },	/* Full    Red     -3.0 */
> -};
> -
> -static const struct intel_ddi_buf_trans adlp_combo_phy_trans_hdmi = {
> -	.entries = _adlp_combo_phy_trans_hdmi,
> -	.num_entries = ARRAY_SIZE(_adlp_combo_phy_trans_hdmi),
> -	.hdmi_default_entry = ARRAY_SIZE(_adlp_combo_phy_trans_hdmi) - 1,
> -};
> -
>  static const union intel_ddi_buf_trans_entry _adlp_combo_phy_trans_dp_hbr[] = {
>  							/* NT mV Trans mV db    */
>  	{ .icl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
> @@ -1556,7 +1536,7 @@ adlp_get_combo_buf_trans(struct intel_encoder *encoder,
>  			 int *n_entries)
>  {
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> -		return intel_get_buf_trans(&adlp_combo_phy_trans_hdmi, n_entries);
> +		return intel_get_buf_trans(&icl_combo_phy_trans_hdmi, n_entries);
>  	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
>  		return adlp_get_combo_buf_trans_edp(encoder, crtc_state, n_entries);
>  	else
> -- 
> 2.25.1
> 
