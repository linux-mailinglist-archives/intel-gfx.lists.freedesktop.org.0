Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 334B4173C8E
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 17:08:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 844946EE83;
	Fri, 28 Feb 2020 16:07:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 037666EE83
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 16:07:57 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 08:07:57 -0800
X-IronPort-AV: E=Sophos;i="5.70,496,1574150400"; d="scan'208";a="227587636"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 08:07:56 -0800
Date: Fri, 28 Feb 2020 18:07:17 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200228160717.GA30328@ideak-desk.fi.intel.com>
References: <20200128155152.21977-1-ville.syrjala@linux.intel.com>
 <20200128155152.21977-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200128155152.21977-4-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/i915: Add glk to
 intel_detect_preproduction_hw()
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 28, 2020 at 05:51:52PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Detect GLK pre-production steppings. Not 100% of A2 being pre-prod
> since the spec is a bit of a mess but feels more or less correct.
> =

> Suggested-by: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

On the series:
Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_drv.c | 1 +
>  drivers/gpu/drm/i915/i915_drv.h | 2 ++
>  2 files changed, 3 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_=
drv.c
> index 5a5846d892f4..d89d54f5593c 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -438,6 +438,7 @@ static void intel_detect_preproduction_hw(struct drm_=
i915_private *dev_priv)
>  	pre |=3D IS_SKL_REVID(dev_priv, 0, SKL_REVID_F0);
>  	pre |=3D IS_BXT_REVID(dev_priv, 0, BXT_REVID_B_LAST);
>  	pre |=3D IS_KBL_REVID(dev_priv, 0, KBL_REVID_A0);
> +	pre |=3D IS_GLK_REVID(dev_priv, 0, GLK_REVID_A2);
>  =

>  	if (pre) {
>  		DRM_ERROR("This is a pre-production stepping. "
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index a8a08c63278e..d62b57ba0ced 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1578,6 +1578,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  =

>  #define GLK_REVID_A0		0x0
>  #define GLK_REVID_A1		0x1
> +#define GLK_REVID_A2		0x2
> +#define GLK_REVID_B0		0x3
>  =

>  #define IS_GLK_REVID(dev_priv, since, until) \
>  	(IS_GEMINILAKE(dev_priv) && IS_REVID(dev_priv, since, until))
> -- =

> 2.24.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
