Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28CE4528396
	for <lists+intel-gfx@lfdr.de>; Mon, 16 May 2022 13:56:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1951710E6F1;
	Mon, 16 May 2022 11:56:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AE7410E66D
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 May 2022 11:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652702182; x=1684238182;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6xZ0Wdk0UGhKWlnnhsjpb3Z2dW5hmKAFN5VR3vI9yFU=;
 b=Xfx7kY09C/634CmO6BRUClhd+L+vLG/YSZNqR9tLcDqkBIhbt8WwsAgt
 IU2wVTNVCZxm4dS67EZ6HqzZ4tmDhGd4KBhkthiTqjz1jAv6Y89/qY+EG
 G7vmWDZrfIWAzSifSDsGwPcUX+XXnpIxy4yOne2DJKzZ00rUD5XdMA1K1
 REWE+ZQXW22P0wRkS4YzC1uqRDexH9Gaa5BB9LnY1XDMgKDIPbNFRVmIX
 lhI8jY4JgEADE8jUoZ3nPXFHh8NdmIMLlZFvOTNmpKiAPjzLKMnnyFk2i
 K5oI0J1LDE2sxhkGOOtP9l54UAoNxVAUg1dcFREWE8uTSwyZOFjlax/ML g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10348"; a="268386211"
X-IronPort-AV: E=Sophos;i="5.91,229,1647327600"; d="scan'208";a="268386211"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2022 04:56:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,229,1647327600"; d="scan'208";a="625907045"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 16 May 2022 04:56:21 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 16 May 2022 04:56:20 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 16 May 2022 04:56:20 -0700
Received: from fmsmsx610.amr.corp.intel.com ([10.18.126.90]) by
 fmsmsx610.amr.corp.intel.com ([10.18.126.90]) with mapi id 15.01.2308.027;
 Mon, 16 May 2022 04:56:20 -0700
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Use drm_dbg for rpm logging
Thread-Index: AQHYZTe9Hk9A1N1SnkuN+HfEekW2W60bGQmAgAZUSnA=
Date: Mon, 16 May 2022 11:56:20 +0000
Message-ID: <ea16d8b9975a424693a4db52ae4908ec@intel.com>
References: <20220511130455.22028-1-anshuman.gupta@intel.com>
 <87ee0z75cu.wl-ashutosh.dixit@intel.com>
In-Reply-To: <87ee0z75cu.wl-ashutosh.dixit@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.401.20
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use drm_dbg for rpm logging
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Dixit, Ashutosh <ashutosh.dixit@intel.com>
> Sent: Thursday, May 12, 2022 9:47 AM
> To: Gupta, Anshuman <anshuman.gupta@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use drm_dbg for rpm logging
>=20
> On Wed, 11 May 2022 06:04:54 -0700, Anshuman Gupta wrote:
> >
> > RPM suspend/resume also supported on gfx platforms which doesn't have
> > kms support and even on platforms without any connected display panel.
> > There is no good reason to log rpm suspend/resume debug message with
> > drm_dbg_kms() therefore changing it to drm_dbg().
>=20
> Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
Thanks for review pushed to drm-intel-next.
Br,
Anshuman.
>=20
> > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_driver.c | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_driver.c
> > b/drivers/gpu/drm/i915/i915_driver.c
> > index 90b0ce5051af..ed6028fd442d 100644
> > --- a/drivers/gpu/drm/i915/i915_driver.c
> > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > @@ -1549,7 +1549,7 @@ static int intel_runtime_suspend(struct device
> *kdev)
> >	if (drm_WARN_ON_ONCE(&dev_priv->drm,
> !HAS_RUNTIME_PM(dev_priv)))
> >		return -ENODEV;
> >
> > -	drm_dbg_kms(&dev_priv->drm, "Suspending device\n");
> > +	drm_dbg(&dev_priv->drm, "Suspending device\n");
> >
> >	disable_rpm_wakeref_asserts(rpm);
> >
> > @@ -1625,7 +1625,7 @@ static int intel_runtime_suspend(struct device
> *kdev)
> >	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv))
> >		intel_hpd_poll_enable(dev_priv);
> >
> > -	drm_dbg_kms(&dev_priv->drm, "Device suspended\n");
> > +	drm_dbg(&dev_priv->drm, "Device suspended\n");
> >	return 0;
> >  }
> >
> > @@ -1639,7 +1639,7 @@ static int intel_runtime_resume(struct device *kd=
ev)
> >	if (drm_WARN_ON_ONCE(&dev_priv->drm,
> !HAS_RUNTIME_PM(dev_priv)))
> >		return -ENODEV;
> >
> > -	drm_dbg_kms(&dev_priv->drm, "Resuming device\n");
> > +	drm_dbg(&dev_priv->drm, "Resuming device\n");
> >
> >	drm_WARN_ON_ONCE(&dev_priv->drm, atomic_read(&rpm-
> >wakeref_count));
> >	disable_rpm_wakeref_asserts(rpm);
> > @@ -1683,7 +1683,7 @@ static int intel_runtime_resume(struct device *kd=
ev)
> >		drm_err(&dev_priv->drm,
> >			"Runtime resume failed, disabling it (%d)\n", ret);
> >	else
> > -		drm_dbg_kms(&dev_priv->drm, "Device resumed\n");
> > +		drm_dbg(&dev_priv->drm, "Device resumed\n");
> >
> >	return ret;
> >  }
> > --
> > 2.26.2
> >
