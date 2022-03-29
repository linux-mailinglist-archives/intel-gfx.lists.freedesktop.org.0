Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C154EB334
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 20:14:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7581810E1C6;
	Tue, 29 Mar 2022 18:14:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C9D510E1C6
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 18:14:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648577676; x=1680113676;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=awUlhCowZKZt5Nl3tCS9n33VBKGda5Tx+XkZSNXN0LU=;
 b=ZYJQURl2SBxrMowtPq6BKeSEj+oxJ8dIeqAOiGtcmZav2eM17AE0x+17
 jd6yI6LrWkWwzgvBEQD5bqhSeOrCbhcjqSveYP3kCNKEGh0AElAwPWtzl
 30urBUQCX98gTyvSBMnnSiixoOXfWxNHGpCecDo6JVCBnYUdEwt4ffeJZ
 ciYcR+uydlFkAOP1ohp7jM09BvBYsY+ZCAOgEoMkzTfj+JhgxMTFft1h6
 /L5fom5t1yqYLaoYSVQnG0+NxlrtkeXUwOcL/GVAkaI83zws+s4ub93II
 +yIVtY6EZGXttPgtEW5pJZtT4SmP787bXfGZmsGDGdou2pMFNffWLzb1O Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="258156800"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="258156800"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 11:14:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="564834468"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by orsmga008.jf.intel.com with SMTP; 29 Mar 2022 11:14:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Mar 2022 21:14:32 +0300
Date: Tue, 29 Mar 2022 21:14:32 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <YkNMiEdouCGD2rsv@intel.com>
References: <20220328191617.122838-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220328191617.122838-1-jose.souza@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3 1/3] drm/i915/display: Program
 PIPE_MBUS_DBOX_CTL with adl-p values
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 28, 2022 at 12:16:15PM -0700, José Roberto de Souza wrote:
> From: Caz Yokoyama <caz.yokoyama@intel.com>
> 
> B credits set by IFWI do not match with specification default, so here
> programming the right value.
> 
> Also while at it, taking the oportunity to do a read-modify-write to
> not overwrite all other bits in this register that specification don't
> ask us to change.

RMWs considered harmful. This is a double buffered register and in the
future we may have to program it via DSB to update it atomically with
the rest of the registers (eg. if we want to avoid the modeset for the
mbus joining change). And when that happens the RMW will have to be
removed again since the DSB can't even read registers. So IMO better
to not even start down this path.

> 
> BSpec: 49213
> BSpec: 50343
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Caz Yokoyama <caz.yokoyama@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 3d2ff258f0a94..078ada041e1cd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1830,13 +1830,19 @@ static void icl_pipe_mbus_enable(struct intel_crtc *crtc, bool joined_mbus)
>  	enum pipe pipe = crtc->pipe;
>  	u32 val;
>  
> +	val = intel_de_read(dev_priv, PIPE_MBUS_DBOX_CTL(pipe));
> +	val &= ~MBUS_DBOX_A_CREDIT_MASK;
>  	/* Wa_22010947358:adl-p */
>  	if (IS_ALDERLAKE_P(dev_priv))
> -		val = joined_mbus ? MBUS_DBOX_A_CREDIT(6) : MBUS_DBOX_A_CREDIT(4);
> +		val |= joined_mbus ? MBUS_DBOX_A_CREDIT(6) : MBUS_DBOX_A_CREDIT(4);
>  	else
> -		val = MBUS_DBOX_A_CREDIT(2);
> +		val |= MBUS_DBOX_A_CREDIT(2);
>  
> -	if (DISPLAY_VER(dev_priv) >= 12) {
> +	val &= ~(MBUS_DBOX_BW_CREDIT_MASK | MBUS_DBOX_B_CREDIT_MASK);
> +	if (IS_ALDERLAKE_P(dev_priv)) {
> +		val |= MBUS_DBOX_BW_CREDIT(2);
> +		val |= MBUS_DBOX_B_CREDIT(8);
> +	} else if (DISPLAY_VER(dev_priv) >= 12) {
>  		val |= MBUS_DBOX_BW_CREDIT(2);
>  		val |= MBUS_DBOX_B_CREDIT(12);
>  	} else {
> -- 
> 2.35.1

-- 
Ville Syrjälä
Intel
