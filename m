Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 299F2170CB1
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 00:42:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78AC689F6F;
	Wed, 26 Feb 2020 23:42:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B778789F6F
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 23:42:42 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 15:42:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,490,1574150400"; d="scan'208";a="410804241"
Received: from invictus.jf.intel.com (HELO InViCtUs) ([10.165.21.212])
 by orsmga005.jf.intel.com with ESMTP; 26 Feb 2020 15:42:41 -0800
Date: Wed, 26 Feb 2020 15:43:17 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200226234317.GA24545@InViCtUs>
References: <20200226014603.42190-1-jose.souza@intel.com>
 <20200226014603.42190-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200226014603.42190-2-jose.souza@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 02/14] drm/i915/tgl: Extend Wa_1409825376
 stepping
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 25, 2020 at 05:45:51PM -0800, Jos=E9 Roberto de Souza wrote:
> This workaround is only fixed in C0 stepping to extend it to B0 too.
> =

> BSpec: 52890
> Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 49484d5f5f84..e6d9ec124db8 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -6852,7 +6852,7 @@ static void tgl_init_clock_gating(struct drm_i915_p=
rivate *dev_priv)
>  		   I915_READ(POWERGATE_ENABLE) | vd_pg_enable);
>  =

>  	/* Wa_1409825376:tgl (pre-prod)*/
> -	if (IS_TGL_DISP_REVID(dev_priv, TGL_DISP_REVID_A0, TGL_DISP_REVID_A0))
> +	if (IS_TGL_DISP_REVID(dev_priv, TGL_DISP_REVID_A0, TGL_DISP_REVID_B0))
>  		I915_WRITE(GEN9_CLKGATE_DIS_3, I915_READ(GEN9_CLKGATE_DIS_3) |
>  			   TGL_VRH_GATING_DIS);
>  }
> -- =

> 2.25.1
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
