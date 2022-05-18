Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FCAF52BDB2
	for <lists+intel-gfx@lfdr.de>; Wed, 18 May 2022 17:19:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AEF910ED2E;
	Wed, 18 May 2022 15:19:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F159B10ED2E
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 May 2022 15:19:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652887169; x=1684423169;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UIvRc2jz/gI9bhig/fKm/VJzVEtOiByKP9FPaxPVcBw=;
 b=Ii7u/5SncNFXvD4ibkIWwZ5TmzfLd2V6Odu8TvXwFyWDPBRPag80mIIj
 tlZSoWs29P2dX0iNVUzYsM5HT3GxlFK6t1ZeXKz3Tptqe1FP/XbGewENW
 nrgdMiME4BR5NFqSKTRo/4gT4YcG09lVM4yKyCnDSaPvII8IgmlIb5QpH
 qniFiPI3nzoykV5p0MnTvS7Y2GW9iLmeiGxJyazBHL6DKA47eVQPukjhD
 YjJVcfR9/vll24idkqyJVpcnMmBDUyOkjmid9cShEsvUuLXG5vbkwecwh
 1KCdlhIkTTH2lbboM2g+1om/O2Q2xXjg3rTf0eim/ADKdVwWSKg++TDgk g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10351"; a="270548569"
X-IronPort-AV: E=Sophos;i="5.91,235,1647327600"; d="scan'208";a="270548569"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 08:19:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,235,1647327600"; d="scan'208";a="556369148"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 18 May 2022 08:19:28 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 18 May 2022 08:19:27 -0700
Received: from fmsmsx610.amr.corp.intel.com ([10.18.126.90]) by
 fmsmsx610.amr.corp.intel.com ([10.18.126.90]) with mapi id 15.01.2308.027;
 Wed, 18 May 2022 08:19:27 -0700
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 7/7] drm/i915/rpm: Enable D3Cold VRAM SR
 Support
Thread-Index: AQHYarhFaf2Lz77KB0+k0zlcOVePMq0lI2iA//+ZN4A=
Date: Wed, 18 May 2022 15:19:27 +0000
Message-ID: <ee7969aef0594aa7bb9d76e8e657db6e@intel.com>
References: <20220518130716.10936-1-anshuman.gupta@intel.com>
 <20220518130716.10936-8-anshuman.gupta@intel.com>
 <YoT/iw8w06n+ITP4@intel.com>
In-Reply-To: <YoT/iw8w06n+ITP4@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.401.20
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915/rpm: Enable D3Cold VRAM SR
 Support
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Wilson,
 Chris P" <chris.p.wilson@intel.com>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Wednesday, May 18, 2022 7:46 PM
> To: Gupta, Anshuman <anshuman.gupta@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>=
;
> Wilson, Chris P <chris.p.wilson@intel.com>; Vivi, Rodrigo
> <rodrigo.vivi@intel.com>
> Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915/rpm: Enable D3Cold VRAM SR
> Support
>=20
> On Wed, May 18, 2022 at 06:37:16PM +0530, Anshuman Gupta wrote:
> > Intel Client DGFX card supports D3Cold with two option.
> > D3Cold-off zero watt, D3Cold-VRAM Self Refresh.
> >
> > i915 requires to evict the lmem objects to smem in order to support
> > D3Cold-Off, which increases i915 the suspend/resume latency. Enabling
> > VRAM Self Refresh feature optimize the latency with additional power
> > cost which required to retain the lmem.
> >
> > Adding intel_runtime_idle (runtime_idle callback) to enable VRAM_SR,
> > it will be used for policy to choose between D3Cold-off vs
> > D3Cold-VRAM_SR.
> >
> > Since we have introduced i915 runtime_idle callback.
> > It need to be warranted that Runtime PM Core invokes runtime_idle
> > callback when runtime usages count becomes zero. That requires to use
> > pm_runtime_put instead of pm_runtime_put_autosuspend.
> >
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Cc: Chris Wilson <chris.p.wilson@intel.com>
> > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_driver.c      | 26 +++++++++++++++++++++++++
> >  drivers/gpu/drm/i915/intel_runtime_pm.c |  3 +--
> >  2 files changed, 27 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_driver.c
> > b/drivers/gpu/drm/i915/i915_driver.c
> > index 5a9d5529fc90..bbb11c632799 100644
> > --- a/drivers/gpu/drm/i915/i915_driver.c
> > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > @@ -1541,6 +1541,31 @@ static int i915_pm_restore(struct device *kdev)
> >  	return i915_pm_resume(kdev);
> >  }
> >
> > +static int intel_runtime_idle(struct device *kdev) {
> > +	struct drm_i915_private *dev_priv =3D kdev_to_i915(kdev);
> > +	int ret =3D 1;
> > +
> > +	if (!HAS_LMEM_SR(dev_priv)) {
> > +		/*TODO: Prepare for D3Cold-Off */
> > +		goto out;
> > +	}
> > +
> > +	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
> > +
> > +	ret =3D intel_pm_vram_sr(dev_priv, true)
>=20
> I don't get why this idle callback is here. Why aren't you just calling t=
hat directly
> from the suspend handler?
We will be having a D3Cold policy in future to decide between D3Cold-VRAM_S=
R and
D3Cold-Off based upon lmem usages also  we need to evict the lmem content i=
f=20
D3cold-off option is used. It will be better to keep it in separate runtime=
 idle call
back to prepare the actual suspend.
Thanks,
Anshuman Gupta.
>=20
> > +	if (!ret)
> > +		drm_dbg(&dev_priv->drm, "VRAM Self Refresh enabled\n");
> > +
> > +	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
> > +
> > +out:
> > +	pm_runtime_mark_last_busy(kdev);
> > +	pm_runtime_autosuspend(kdev);
> > +
> > +	return ret;
> > +}
> > +
> >  static int intel_runtime_suspend(struct device *kdev)  {
> >  	struct drm_i915_private *dev_priv =3D kdev_to_i915(kdev); @@ -1726,6
> > +1751,7 @@ const struct dev_pm_ops i915_pm_ops =3D {
> >  	.restore =3D i915_pm_restore,
> >
> >  	/* S0ix (via runtime suspend) event handlers */
> > +	.runtime_idle =3D intel_runtime_idle,
> >  	.runtime_suspend =3D intel_runtime_suspend,
> >  	.runtime_resume =3D intel_runtime_resume,  }; diff --git
> > a/drivers/gpu/drm/i915/intel_runtime_pm.c
> > b/drivers/gpu/drm/i915/intel_runtime_pm.c
> > index 6ed5786bcd29..4dade7e8a795 100644
> > --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> > @@ -492,8 +492,7 @@ static void __intel_runtime_pm_put(struct
> > intel_runtime_pm *rpm,
> >
> >  	intel_runtime_pm_release(rpm, wakelock);
> >
> > -	pm_runtime_mark_last_busy(kdev);
> > -	pm_runtime_put_autosuspend(kdev);
> > +	pm_runtime_put(kdev);
> >  }
> >
> >  /**
> > --
> > 2.26.2
>=20
> --
> Ville Syrj=E4l=E4
> Intel
