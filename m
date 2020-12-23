Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CEABD2E1A18
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Dec 2020 09:39:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF4246E8D2;
	Wed, 23 Dec 2020 08:39:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CF1D6E8D2
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Dec 2020 08:39:38 +0000 (UTC)
IronPort-SDR: 86Z4Z0jzlc6s5EvI8XqVQgZCbZbzGxULX2puGAtGB6ggBuTJgM7DIgU1si42oO5xVCTh2EwPBm
 trHqUHYSZRQQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9843"; a="176081478"
X-IronPort-AV: E=Sophos;i="5.78,441,1599548400"; d="scan'208";a="176081478"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2020 00:39:34 -0800
IronPort-SDR: dhgNODCy2vcVZopiJnrlv3BivIPB7wLab9jkahmNnYhMPOI/pYJfcgBIJ+CuUutJKXXuV7dVi/
 ZXQtwT8AmUGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,441,1599548400"; d="scan'208";a="492777932"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 23 Dec 2020 00:39:33 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 23 Dec 2020 00:39:32 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 23 Dec 2020 00:39:32 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Wed, 23 Dec 2020 00:39:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dfxOcXO6xvVv5qddEoJyOJrzjvObrtLl5bAxVGj67re/9WQw6NUuKOqHBC1LIsALVTId8PBl5E/1CBJTRIFRB+cB7jV9v4FoH7ae7fOOnyTCOifaqwxAkGKnXGJlwuANzEj0AneyYvkcQ51Np4xLcH+LN/Hi+J+F95GAYWkbFj+bavmyNHULi8OZbrSjmj7pDBW0JOgW/O29mELSSFxK5HgINBB3gnc9V2MNf62RQaz9SuiTGdavYzd3BbiVViI9S2sKR8HotUlkNKkmVZDmT2ooHstddFIJXKwPGH5O7q+tb5eZCz3e5zmNatwe+nz/oZbnk/rFGlPwkbAs8oWM+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vlyLLL3B3S5+sYm3JGK/Yr0fpp1HCeYdpKpc8bdOI8s=;
 b=nmA0d2Cp1/u6hsbL7GpWpQJtM38Ss4ILAJLy3JQgNepxh5kulhQTmZVBpzIOK8R/rhsLAd5RundW5ukN7dapGxhA6VHnmGAbxCjGus1kLx5RNS9mo6VvnQc1W++16P6a/K1OPGrPuFlwGUOntK+2jBaF7uJ9W5Kwums5NSptfWeoIwVkGgeFh1pWIhZ71D86dHDBM/9E6nMh1o1X39Ae9/9bRwThODoKHfJ2MD+fQAtSUx05a7kZ+Bg0SdL5EruTs0klVEj9su8EDESY75L3UoSB0HB6rvO9rcCm7/COyy1wyMNMYa7aNwe7iKQh7zBieeCem9jBjaGxgFtKa/opFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vlyLLL3B3S5+sYm3JGK/Yr0fpp1HCeYdpKpc8bdOI8s=;
 b=SpkcUjYftMMjzVN/TVZp9SKjmVaWtk5oBpEb/jrrmF+Gev8krpRxnQwQFNtvtUXlN1R3BcWxkt5IiK/sjyl+bh8KTkLFBNS3I9bO6SJiMeqPLvCudeiirR1hRdoqRSbEBkQfjQa5a72MJZPXERYMf+ElpuyCrb0O50LhJLB4T/Q=
Received: from DM6PR11MB3340.namprd11.prod.outlook.com (2603:10b6:5:56::14) by
 DM6PR11MB4593.namprd11.prod.outlook.com (2603:10b6:5:2a3::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3676.31; Wed, 23 Dec 2020 08:39:29 +0000
Received: from DM6PR11MB3340.namprd11.prod.outlook.com
 ([fe80::c471:66bd:15ed:9481]) by DM6PR11MB3340.namprd11.prod.outlook.com
 ([fe80::c471:66bd:15ed:9481%6]) with mapi id 15.20.3676.034; Wed, 23 Dec 2020
 08:39:29 +0000
From: "Zhang, Xiong Y" <xiong.y.zhang@intel.com>
To: Zhenyu Wang <zhenyuw@linux.intel.com>
Thread-Topic: [PATCH v2] drm/i915: Try to guess PCH type even without ISA
 bridge
Thread-Index: AQHW2CO5RTwmrZOqU0mMJM3MiuM46KoEXa1w
Date: Wed, 23 Dec 2020 08:39:29 +0000
Message-ID: <DM6PR11MB3340A988AF04DA89A9AFB432BBDE0@DM6PR11MB3340.namprd11.prod.outlook.com>
References: <160793037629.28163.3135436538881981223@emeril.freedesktop.org>
 <20201218090531.23241-1-xiong.y.zhang@intel.com>
 <20201222051513.GY16939@zhen-hp.sh.intel.com>
In-Reply-To: <20201222051513.GY16939@zhen-hp.sh.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.198.147.193]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6ed1f195-e81e-409b-6245-08d8a71e4378
x-ms-traffictypediagnostic: DM6PR11MB4593:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB45930FFE41345715AA41D89FBBDE0@DM6PR11MB4593.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: phIXO+mKYnMgR4M/afZOt4GmAurJ0fkHGWJ8QHY3Me7bkv2FGYUav5bNL1Cqk3jZ2O1hB0pnjwqtc4sSHmkFJVcDfzNeDRBR1d3e3XUbq2kB3IshRN54npcx7k5SjOoopN2ULXE0xeLv18HyrKy6lx3JnQgHEOFZJnhhZ6oPH9MEKi7VfmcfH1z4RtD+O81g4yR6oAIXSZHfsmOzthwcGTEoA+JvLHl5miughdgfkqjMRChjIZaIMN7d6F8DTYdfxGOFVU9avI2rA1TMkL4tp8lVcRwvD92fUTwVyUhpgHIXa4XZGK2nQGuXZO8J+Rl30SBpyJF8DaXDTRLs+nkGa4P8H1L1fOPhwjNDdLq8JT0bSCqwXb3L9gb25jiADs8EkHZz6H3i9RAkPQQ565f5r9fPAw4AwBTdfdEF3BeDWoPKLB5D34bzWL4XoR+2iyVF
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3340.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(39860400002)(346002)(366004)(396003)(136003)(66946007)(76116006)(9686003)(66556008)(64756008)(66446008)(66476007)(8936002)(5660300002)(478600001)(33656002)(52536014)(4326008)(53546011)(6506007)(7696005)(55016002)(26005)(6916009)(86362001)(186003)(316002)(2906002)(83380400001)(54906003)(8676002)(71200400001)(226253002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?6MdcEKi94BsKGbpXEvVD2nC/0n/Lb2dvuTSnkrFtRttECEzFq7CC11FSk+tr?=
 =?us-ascii?Q?g8P6ge++a7WrKVSUYHA/8Q0Ld7W1SQ0k3KflKYZxTH35FY13GC+y5uc6TwLE?=
 =?us-ascii?Q?o4NM3k0d6WWp+2zzt5SPqh22I8htfCau3PXSKKRTvDBeFsTQK8ijQ+GjcPK9?=
 =?us-ascii?Q?t5zFbwiar4uSKcrSruKT4++rn/wM7ssEX2Otdc65qenKx16HJebq2WqN/u7e?=
 =?us-ascii?Q?6+TMEJsHotI3Zm36eeY4/n37YvHbr7gqv1Oh8Q2BdkZ9qA+NmGcHAy59v68E?=
 =?us-ascii?Q?alu8rcEpDBj4Ov23E+4AhgZG4ao5akxMWmi7XoWe5fFT3FTLa0FLS/cJ9+CL?=
 =?us-ascii?Q?b/uGnnuegHpPzXLN2giKraF0MntesWHAZkgUZcXrWBXS1j6nC+/j2+3S+O4+?=
 =?us-ascii?Q?LboPE1Mo6j0w5IMcXSFiAdmaewDMHXYCZtKb/SgyY1sHg1oBhAgtqeM9cHlU?=
 =?us-ascii?Q?Hu50rf77ScPMK1Cq/IoL+iVEqrLwndcqNC90m5mMPerleorHqoJAmG6ZsKSy?=
 =?us-ascii?Q?gTNLVRDSYHJ5Bg+LJ5JqlitwXLBI4EzeJHiT2Gg/j5kvntYMASflR8Pcn/cR?=
 =?us-ascii?Q?E6jHPZ52LaHeEUbgSFshgWrP8LiJ8/izVdeEUcldH/JwIatp/L94av24cNHL?=
 =?us-ascii?Q?TPwTlvYLTaucomEyyUzNQtIdi58JHhMTYfdvUNTsY62+8yP10U4kYU7Ve9A3?=
 =?us-ascii?Q?3m6m8+wEzdnA+a5YgYxNjuoRY7jypOo3RBY+7TtJs/LopeCqAkVQ4pR71uxM?=
 =?us-ascii?Q?Hjfn3mdglJmagF8nmYEhZ8/Q9LIGceKppm2YCeJvUZXov7QkvKCs2Mp+ZETE?=
 =?us-ascii?Q?+BbD2uQXyw9WwIBbV+1UOnYEI4J+QNGBm2EMAqNL1NnIBAB2CovlYKjb7hUZ?=
 =?us-ascii?Q?48WgRbDeq+cDK2FySLxVZL+mPsES/xXthOF4YmkADpQ23FUQES82Mswrreop?=
 =?us-ascii?Q?X6GxwwaXxnOvvBG9hVbbVXEGlaxr9XeLlAqco/ik5fo=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3340.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ed1f195-e81e-409b-6245-08d8a71e4378
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Dec 2020 08:39:29.5016 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: so4MlCw7QYyLHIefI6QiwWiK8p2eBIiUsNvjhzGrKPcium1CTP89TaMy4ImEqjk6+vgKVBKDTSAc3fKEQu1S2A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4593
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Try to guess PCH type even
 without ISA bridge
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> On 2020.12.18 17:05:31 +0800, Xiong Zhang wrote:
> > From: Zhenyu Wang <zhenyuw@linux.intel.com>
> >
> > Some vmm like hyperv and crosvm don't supply any ISA bridge to their
> > guest, when igd passthrough is equipped on these vmm, guest i915
> > display may couldn't work as guest i915 detects PCH_NONE pch type.
> >
> > When i915 runs as guest, this patch guess pch type through gpu type
> > even without ISA bridge.
> >
> > v2: Fix CI warning
> >
> > Signed-off-by: Zhenyu Wang <zhenyuw@linux.intel.com>
> 
> Need to add yourself in sob.
> 
> > ---
> >  drivers/gpu/drm/i915/i915_drv.h  |  7 +++++-
> > drivers/gpu/drm/i915/intel_pch.c | 38 ++++++++++++++++++++++----------
> >  2 files changed, 32 insertions(+), 13 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_drv.h
> > b/drivers/gpu/drm/i915/i915_drv.h index 5a7df5621aa3..df0b8f9268b2
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -1758,6 +1758,11 @@ tgl_revids_get(struct drm_i915_private
> > *dev_priv)  #define INTEL_DISPLAY_ENABLED(dev_priv) \
> >  	(drm_WARN_ON(&(dev_priv)->drm, !HAS_DISPLAY(dev_priv)),
> > !(dev_priv)->params.disable_display)
> >
> > +static inline bool run_as_guest(void) {
> > +	return !hypervisor_is_type(X86_HYPER_NATIVE);
> > +}
> > +
> >  static inline bool intel_vtd_active(void)  {  #ifdef
> > CONFIG_INTEL_IOMMU @@ -1766,7 +1771,7 @@ static inline bool
> > intel_vtd_active(void)  #endif
> >
> >  	/* Running as a guest, we assume the host is enforcing VT'd */
> > -	return !hypervisor_is_type(X86_HYPER_NATIVE);
> > +	return run_as_guest();
> >  }
> >
> >  static inline bool intel_scanout_needs_vtd_wa(struct drm_i915_private
> > *dev_priv) diff --git a/drivers/gpu/drm/i915/intel_pch.c
> > b/drivers/gpu/drm/i915/intel_pch.c
> > index f31c0dabd0cc..a73c60bf349e 100644
> > --- a/drivers/gpu/drm/i915/intel_pch.c
> > +++ b/drivers/gpu/drm/i915/intel_pch.c
> > @@ -184,6 +184,23 @@ intel_virt_detect_pch(const struct
> drm_i915_private *dev_priv)
> >  	return id;
> >  }
> >
> > +static void intel_detect_pch_virt(struct drm_i915_private *dev_priv)
> > +{
> > +	unsigned short id;
> > +	enum intel_pch pch_type;
> > +
> > +	id = intel_virt_detect_pch(dev_priv);
> > +	pch_type = intel_pch_type(dev_priv, id);
> > +
> > +	/* Sanity check virtual PCH id */
> > +	if (drm_WARN_ON(&dev_priv->drm,
> > +			id && pch_type == PCH_NONE))
> > +		id = 0;
> > +
> > +	dev_priv->pch_type = pch_type;
> > +	dev_priv->pch_id = id;
> > +}
> > +
> >  void intel_detect_pch(struct drm_i915_private *dev_priv)  {
> >  	struct pci_dev *pch = NULL;
> > @@ -221,16 +238,7 @@ void intel_detect_pch(struct drm_i915_private
> *dev_priv)
> >  			break;
> >  		} else if (intel_is_virt_pch(id, pch->subsystem_vendor,
> >  					     pch->subsystem_device)) {
> > -			id = intel_virt_detect_pch(dev_priv);
> > -			pch_type = intel_pch_type(dev_priv, id);
> > -
> > -			/* Sanity check virtual PCH id */
> > -			if (drm_WARN_ON(&dev_priv->drm,
> > -					id && pch_type == PCH_NONE))
> > -				id = 0;
> > -
> > -			dev_priv->pch_type = pch_type;
> > -			dev_priv->pch_id = id;
> > +			intel_detect_pch_virt(dev_priv);
> >  			break;
> >  		}
> >  	}
> > @@ -246,8 +254,14 @@ void intel_detect_pch(struct drm_i915_private
> *dev_priv)
> >  		dev_priv->pch_id = 0;
> >  	}
> >
> > -	if (!pch)
> > -		drm_dbg_kms(&dev_priv->drm, "No PCH found.\n");
> > +	if (!pch) {
> 
> Require HAS_DISPLAY() here?
[Zhang, Xiong Y] yes, require it.

thanks
> 
> > +		if (run_as_guest()) {
> > +			drm_dbg_kms(&dev_priv->drm, "No PCH found in
> vm, try guess..\n");
> > +			intel_detect_pch_virt(dev_priv);
> > +		} else {
> > +			drm_dbg_kms(&dev_priv->drm, "No PCH found.\n");
> > +		}
> > +	}
> >
> >  	pci_dev_put(pch);
> >  }
> > --
> > 2.17.1
> >
> 
> --
> 
> $gpg --keyserver wwwkeys.pgp.net --recv-keys 4D781827
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
