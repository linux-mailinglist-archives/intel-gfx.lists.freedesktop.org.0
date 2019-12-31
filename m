Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F5F712DA6F
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Dec 2019 18:02:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72765898FA;
	Tue, 31 Dec 2019 17:02:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85965898FA
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Dec 2019 17:01:59 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Dec 2019 09:01:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,380,1571727600"; d="scan'208";a="213689395"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga008.jf.intel.com with ESMTP; 31 Dec 2019 09:01:57 -0800
Date: Tue, 31 Dec 2019 09:01:57 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Message-ID: <20191231170157.GV2877816@mdroper-desk1.amr.corp.intel.com>
References: <20191231144718.32127-1-kai.vehmanen@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191231144718.32127-1-kai.vehmanen@linux.intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: save state of AUD_FREQ_CNTRL on
 all gen9+ platforms
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

On Tue, Dec 31, 2019 at 04:47:18PM +0200, Kai Vehmanen wrote:
> On old platforms the default values of AUD_FREQ_CNTRL are
> typically used (as set by BIOS), so this has not been an issue,
> but future platforms will definitely need this. Extend the state
> save logic to cover all gen9+ platforms.
> 
> Bspec: 49281
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>

Looks good to me.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

Given that the lack of this save/restore was causing noticeable problems
on ICL/TGL, do you know whether the same problems were also seen on
EHL/JSL?  If so, we may want Cc: stable and Fixes: tags so that it gets
backported?


Matt

> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index 27710098d056..e6517c5d83ae 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -849,7 +849,7 @@ static unsigned long i915_audio_component_get_power(struct device *kdev)
>  	ret = intel_display_power_get(dev_priv, POWER_DOMAIN_AUDIO);
>  
>  	if (dev_priv->audio_power_refcount++ == 0) {
> -		if (IS_TIGERLAKE(dev_priv) || IS_ICELAKE(dev_priv)) {
> +		if (INTEL_GEN(dev_priv) >= 9) {
>  			I915_WRITE(AUD_FREQ_CNTRL, dev_priv->audio_freq_cntrl);
>  			DRM_DEBUG_KMS("restored AUD_FREQ_CNTRL to 0x%x\n",
>  				      dev_priv->audio_freq_cntrl);
> @@ -1124,7 +1124,7 @@ static void i915_audio_component_init(struct drm_i915_private *dev_priv)
>  		return;
>  	}
>  
> -	if (IS_TIGERLAKE(dev_priv) || IS_ICELAKE(dev_priv)) {
> +	if (INTEL_GEN(dev_priv) >= 9) {
>  		dev_priv->audio_freq_cntrl = I915_READ(AUD_FREQ_CNTRL);
>  		DRM_DEBUG_KMS("init value of AUD_FREQ_CNTRL of 0x%x\n",
>  			      dev_priv->audio_freq_cntrl);
> -- 
> 2.17.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
