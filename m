Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 182164B1607
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 20:15:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B65510E951;
	Thu, 10 Feb 2022 19:15:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 583AF10E951
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 19:15:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644520519; x=1676056519;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hfthCZg7Ox/38CJ0XElTuts6jzf6UocFvv4SIIQfor8=;
 b=HkuqP0V7NoICu9lgMNlaBUcwLx4h/WjL3WFjs1dkRuMeWwgo3qRCOsjq
 8L7jBgaPSsqF6afO7THbGqBjbCFdNoBhjKUGdwBxvnIuiKXr/IkKN1iJZ
 lgAZHpNziONraymhyb+CucQmsmXJDXmlwqPZRx2rmBwXXHh8rFKMdl5uW
 oySMiKBTB1SLRaZf8JHNI+F8+x8XGbp83ntsanw6TsusxxH2HThRVvCWO
 q7muVkd8/2M/1fEgPfAYmO3pTIRrORRD7RtpgZLRWX4I7edJ/pXdH7eD2
 zN4ERG64HL9Y4tHnOwAG/kBKtmnNh/IXljBEAqzhBKxo77+/ouMKc+e1K g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="249324982"
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="249324982"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 11:15:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="622845074"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by FMSMGA003.fm.intel.com with ESMTP; 10 Feb 2022 11:15:18 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 10 Feb 2022 11:15:18 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 10 Feb 2022 11:15:17 -0800
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2308.020;
 Thu, 10 Feb 2022 11:15:17 -0800
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dg1: Update DMC_DEBUG3 register
Thread-Index: AQHYHp3TUW2TnwdLXUSgbSTC2hWfRqyNpzGA//+AekA=
Date: Thu, 10 Feb 2022 19:15:17 +0000
Message-ID: <22a25f9320d74e0190fc966feebc4ce9@intel.com>
References: <20220210164430.299456-1-anusha.srivatsa@intel.com>
 <YgVemUgixMuqZEMU@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <YgVemUgixMuqZEMU@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg1: Update DMC_DEBUG3 register
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
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Thursday, February 10, 2022 10:51 AM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg1: Update DMC_DEBUG3 register
>=20
> On Thu, Feb 10, 2022 at 08:44:30AM -0800, Anusha Srivatsa wrote:
> > DMC_DEBUGU3 changes from DG1+
>=20
> This looks to be the same thing as the patch that Chuansheng Liu sent:
>=20
> https://patchwork.freedesktop.org/patch/473272/?series=3D99942&rev=3D1

Yes it is :-/ He sent the patch before mine. So this is void now.

Anusha
>=20
> Matt
>=20
> >
> > Bspec: 49788
> > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 6 ++++--
> >  drivers/gpu/drm/i915/i915_reg.h                      | 1 +
> >  2 files changed, 5 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > index f4de004d470f..87fc4b9b7b93 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > @@ -474,8 +474,10 @@ static int i915_dmc_info(struct seq_file *m, void
> *unused)
> >  		 * reg for DC3CO debugging and validation,
> >  		 * but TGL DMC f/w is using DMC_DEBUG3 reg for DC3CO
> counter.
> >  		 */
> > -		seq_printf(m, "DC3CO count: %d\n",
> > -			   intel_de_read(dev_priv, DMC_DEBUG3));
> > +		if (IS_DGFX(dev_priv))
> > +			seq_printf(m, "DC3CO count: %d\n",
> intel_de_read(dev_priv, DG1_DMC_DEBUG3));
> > +		else
> > +			seq_printf(m, "DC3CO count: %d\n",
> intel_de_read(dev_priv,
> > +DMC_DEBUG3));
> >  	} else {
> >  		dc5_reg =3D IS_BROXTON(dev_priv) ?
> BXT_DMC_DC3_DC5_COUNT :
> >  						 SKL_DMC_DC3_DC5_COUNT;
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h index 87c92314ee26..802962e3977c
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -5633,6 +5633,7 @@
> >  #define DG1_DMC_DEBUG_DC5_COUNT	_MMIO(0x134154)
> >
> >  #define DMC_DEBUG3		_MMIO(0x101090)
> > +#define DG1_DMC_DEBUG3		_MMIO(0x13415C)
> >
> >  /* Display Internal Timeout Register */
> >  #define RM_TIMEOUT		_MMIO(0x42060)
> > --
> > 2.25.1
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation
> (916) 356-2795
