Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E673D2E23CE
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Dec 2020 03:54:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A8098973E;
	Thu, 24 Dec 2020 02:54:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D43E8973E
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Dec 2020 02:54:21 +0000 (UTC)
IronPort-SDR: uowQpneYCfzkJ9TbAmIHfHyvjHqX7TF534uYNSKu0NHXm49gCGREo/Miy8A/1ohIort+o5N49v
 cVY4pyHv0lXw==
X-IronPort-AV: E=McAfee;i="6000,8403,9844"; a="173528424"
X-IronPort-AV: E=Sophos;i="5.78,444,1599548400"; d="scan'208";a="173528424"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2020 18:54:21 -0800
IronPort-SDR: CL8L7pYBkaLE+PC0UhevxrxyeKrywRQOgLF3YPv9ARr3hWgyZ5cKcWaQS85w5e32uh0Ydf68NK
 eN5deyZhHkPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,444,1599548400"; d="scan'208";a="393607051"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga002.fm.intel.com with ESMTP; 23 Dec 2020 18:54:20 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 23 Dec 2020 18:54:20 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 23 Dec 2020 18:54:20 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 23 Dec 2020 18:54:20 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.36.53) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Wed, 23 Dec 2020 18:54:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nvNTkgevhSwXbEVrm7ETV5qy8K84iunfjreQrkWwWASi7mgBZShY/6Fgb2hSpl/lzyt59T7ZEhVuOKJQHkhp99nn++PeH0PS7jPYiSoKP35oNlny3vvVCnMzgBjlxhRwvrHMAvPAYVKT93nNDFis2F3zEq6QYeAS1yz+TFIsvwohu3nF9Po457/ko3vchedHaPCwp+7ZdOtN+RDv6MoH8rEQgwvlDx5EkvUwgOAip3wm9t8PTXL4e4MmJ5mOeVA9rmUDtFENdtc6h5vMwGZ6i/pPuyZuR6JPBrxR2bSpG3XL1jg2U7oBYbKL1KEhJAWb81EEBZtlFnd3xMNxPQ18CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AJ8jxR8BqAqWvUzGSqMut0H2vMPvlu0dmleBABhf5OM=;
 b=b5u0lomTlZN0hhJyqeAhJpV0ARz4BsnGbzJUw6XnYfqh/YsIk6X0XwRpBarDg9fHRtpShKitoGnMTbfDefIwZ79z9BIixnJIS6AnsdGl8u0ZcPz7QCTCRQnP/NC3Yf+VEGb4Rse4ElJ/JnmbOcDdh3taw1ky7nXNh1PvVa/hnNlr5wfIE05WHC0hg+JOfmDCH1M/TZPhI0Wntu6SpbD47UFr/8fd57mwFnUdmrcINGJCPndUYyTyurR79FJy7LbiYlknRKjK3RHu+RPkceplHXm8nJQ3rAN8e0uynpR17pYjUhsphsyhkQjFDV8e+OqlyWCatxI1MI7iBuVhbMnZEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AJ8jxR8BqAqWvUzGSqMut0H2vMPvlu0dmleBABhf5OM=;
 b=N+slj/b7Wh1yV/+9UgMh0QG3DByHKeBratk3E4lFOBetp9LkTf1ILF0EbStfRyhh2bDb6apLf53pVBifGYl5xbPxeZ2HHTiCSfRZzsIELMumeWlSI7n8fXn0QlneswRUaH6oB9aiMKA6kCH7kq8TG84afAFOJKcALsflEasUt8I=
Received: from DM6PR11MB3340.namprd11.prod.outlook.com (2603:10b6:5:56::14) by
 DM6PR11MB4137.namprd11.prod.outlook.com (2603:10b6:5:199::30) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3676.33; Thu, 24 Dec 2020 02:54:18 +0000
Received: from DM6PR11MB3340.namprd11.prod.outlook.com
 ([fe80::c471:66bd:15ed:9481]) by DM6PR11MB3340.namprd11.prod.outlook.com
 ([fe80::c471:66bd:15ed:9481%6]) with mapi id 15.20.3676.034; Thu, 24 Dec 2020
 02:54:18 +0000
From: "Zhang, Xiong Y" <xiong.y.zhang@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2] drm/i915: Try to guess PCH type even without ISA
 bridge
Thread-Index: AQHW2Qn4tGpj8zaSzkilfcSgybkQ46oFjAJA
Date: Thu, 24 Dec 2020 02:54:18 +0000
Message-ID: <DM6PR11MB334085330EFDA917B59BDE2FBBDD0@DM6PR11MB3340.namprd11.prod.outlook.com>
References: <160793037629.28163.3135436538881981223@emeril.freedesktop.org>
 <20201218090531.23241-1-xiong.y.zhang@intel.com> <87im8soq2w.fsf@intel.com>
In-Reply-To: <87im8soq2w.fsf@intel.com>
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
x-ms-office365-filtering-correlation-id: fa3d84d9-6596-41a4-e236-08d8a7b73559
x-ms-traffictypediagnostic: DM6PR11MB4137:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB41372570247AF30C27C1094DBBDD0@DM6PR11MB4137.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aay5f4J+3BZmv4LP6+0lFsqDSb2b9ee3Q3s5UsJ9q5OdZrmjommrLqig/eKqhTJN+nzqDD6ftv8p7uKdmWgnyyYKoUUY/Y/eKiS5Iaaicn80FEpkBwlVFCQbZ1nc8Xd10I90Bd4ZC/NUheykQT+pe15in+AM198Yc4aGkSIgoPlBBXVK+htakQ/jdHWldyZF/U6+Zv/T2C1QTnio+jKQg5U8SamfqaczIRtY5c6vbCb5WIF+dlV8EeT2t9+/b0iihPDmDl07ZgsYgoJ0MVABqPq/tb5XpjWwGC9DvVxRxGKFIWjo0e/YtSuDKMHpR27vIYIAY8MuJ9XwUVusHgpMl4PSOGY9cMdvpJmsKs6YRACjtIzl59fDgavLvvpi6sNUESpvVgj55QK5AKotr1s6qtCTpn+0iKQha/KP3pyrGRwuPKrVXNkVp75IDrssMWmz
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3340.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(39860400002)(376002)(136003)(346002)(366004)(55016002)(110136005)(316002)(8676002)(6506007)(71200400001)(7696005)(86362001)(54906003)(66556008)(66946007)(9686003)(66476007)(33656002)(478600001)(52536014)(5660300002)(83380400001)(66446008)(26005)(186003)(64756008)(2906002)(4326008)(8936002)(76116006)(226253002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?swa7uxhk3W/cdI8Hd6d6C2bfj1PULLOA5u3qPKHYPjtvAKN+sDgCjyGyxRbI?=
 =?us-ascii?Q?sERPcr3i14BAttSM5LIEaef9Dep8FXKJ3vuar8RPn8iLh9nxznAjH7N4OobT?=
 =?us-ascii?Q?Y9U4ME87luTpXGU4HGa3K5IgFMBlgmwuPbljg26R9goo827OqhRSpLWiqxk/?=
 =?us-ascii?Q?pykzWiva+/7jpDQ4cwXE430tErfr1clvCYm/nEFCcn0zgSFbS6DlBLNN3eei?=
 =?us-ascii?Q?B1WtZEg7KAS3lVcFcvD1KIsLdamScyK5up6EwVrv32XIZQaYMfhfKgIjrKad?=
 =?us-ascii?Q?5utcmBbG2TrnfIWNR0uCRvgIhvIHDcgpVbX8gsaW5hvXl5VFL7TX7tDfnWgS?=
 =?us-ascii?Q?stKE8f/KIDZxcCyN7VKb6bFB0BI73IJeJ+XlB0yy0QSjD5CXGEiuxcxTu0Sh?=
 =?us-ascii?Q?GgofIU5x3ur332Mh2JeMvnnFTTQMvWyxtNOAxh5sv2z58ndjtimYfX0V6jkE?=
 =?us-ascii?Q?Z+KTPGcaNZkAvWOIIpSmqD2B+pm84BhTA3nBXUeJkkOcbZwRl/f3YpGyYsnP?=
 =?us-ascii?Q?eN4xMr+m1F+6yeZlJklsdrc8rNuKiQ5QBVWwRI1vfMVD3acX8Eya8E92Snhy?=
 =?us-ascii?Q?D9r2GoHZLleo8Lwd+OOHIchJRlQOSD5+uOoCsLowfMUf0E5YPCEoVpMvFZ0W?=
 =?us-ascii?Q?4vX2Gy4y0bBmrmZsjrNoRkG2d92OmlgYWXbalnofSidCoA2b92j/5JAO4Aue?=
 =?us-ascii?Q?jGD7zwGvTr229M2hZKpKT7fgPO1H77noyEkAv2TXg859U/qAqZpVNxyhReLR?=
 =?us-ascii?Q?+S6AE0+q9O2MZx0KZUKLpEaHOwaLjvMBE83Eu+pefHzxs/hYpu4UJA4BC7yO?=
 =?us-ascii?Q?xJXzJb1rOJO0OK9U5W8YyeZIi4KvZqqY5XW98LQ24xZOL0RrZ85S4OEdIhs+?=
 =?us-ascii?Q?/FzKCrifAYgkCY/5FLd78PFqlQLkLbdkp8AnSzDJ1AoHU6MU2icOSYTz2UwB?=
 =?us-ascii?Q?1N/UqVuGGLHhDZhUBHA9uTRumHukrB65Gs5Lcz5tJiw=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3340.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa3d84d9-6596-41a4-e236-08d8a7b73559
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Dec 2020 02:54:18.7282 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vJmqCTmKu+Mj3lJypalnZ5tGjP5PFhQarwZlR+zO8Sx4H5zIUfpVzBSDPrwmwKAkSAIjFV1dPyz+akDVEoafOQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4137
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
Cc: "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> On Fri, 18 Dec 2020, Xiong Zhang <xiong.y.zhang@intel.com> wrote:
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
> 
> intel_detect_pch_virt() calls intel_virt_detect_pch()... the naming should be
> clarified to make some difference.
 [Zhang, Xiong Y] Indeed the naming is confusing. How about deleting this new added function, then move intel_pch_type() calling into original intel_virt_detect_pch(), and let intel_virt_detect_pch() return id and pch_type,  finally assign id and pch_type  in intel_detect_pch().

thanks
> 
> > +	pch_type = intel_pch_type(dev_priv, id);
> > +
> > +	/* Sanity check virtual PCH id */
> > +	if (drm_WARN_ON(&dev_priv->drm,
> > +			id && pch_type == PCH_NONE))
> > +		id = 0;
> > +
> > +	dev_priv->pch_type = pch_type;
> > +	dev_priv->pch_id = id;
> 
> Previously the pch type and id assignments were all done in
> intel_detect_pch(), so moving this to a separate function in *some* but not
> all cases reduces clarity too.
> 
> BR,
> Jani.
> 
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
> 
> --
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
