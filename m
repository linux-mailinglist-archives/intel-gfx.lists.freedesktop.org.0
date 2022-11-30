Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C853963D3AE
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Nov 2022 11:43:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA9D610E257;
	Wed, 30 Nov 2022 10:43:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B21310E214
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Nov 2022 10:43:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669805002; x=1701341002;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=qV+yTsQkFRpJwqFp/0PjnKVK87168q86HpVEaon2RMs=;
 b=bSED6HaRojXWsQAgB/FfE1AUlp6iFpeg/RQmk2Im/kESuOUA7haUHI7v
 KODnlV69WItfBwU8D77MgLdzILgZa63HJorkZNMBtL3/JSpSh+mMpkh/l
 UZsK97V2DhkkTRuRG4d3vmn3JyogWlMmSxyhDh0strcUtKAJ7HQ6mgNzg
 Csl4sIKaNYMVMa2EydhDOuVkf4TTRRq5ugPNd9ip3rXzOE2D/Ahr6IliY
 z5PReGlB9/3/HRAiuSi44RSgXeAeDWtseGhv64Jfkb1hEaTBIvhG8c1ZD
 bBCJkv9yGd3tLoOt8y/OJPIN/z9wfv7/BIdkaL3yDjQ0xt2J3oARrFKIw Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="342284465"
X-IronPort-AV: E=Sophos;i="5.96,206,1665471600"; d="scan'208";a="342284465"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 02:43:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="621836653"
X-IronPort-AV: E=Sophos;i="5.96,206,1665471600"; d="scan'208";a="621836653"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga006.jf.intel.com with ESMTP; 30 Nov 2022 02:43:21 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 30 Nov 2022 02:43:18 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 30 Nov 2022 02:43:17 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 30 Nov 2022 02:43:17 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 30 Nov 2022 02:43:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xn2mnX5IMA9+kPh8Th6ilW7K05ELkF/QLqlmYazEImIcfkh7nul+XOw0L9S6gtkrdatCVy7GiVJfVeKc1tSlW1ziA32AvnV8JvZBjndRcDttBavC+JawPhxOtI5G6rfgtlG581Q2TSFMah+Ei2OYk49NzrB+F9NkdybxluxomWGprKRaeUC/fFnpsowG0dkv0BWq/zUnVMsP0LRfdLxoqPn0Qrfs2yFXJ+0ohe+EXlnwulpfTvwIlirYq6p3YIpaA14TlScyNGx8prUzQHkEqUbAAAcXr1rtZyGiEOB1G3j0hgdJTbzVGglIPAjjdWa3dd6QJYxUm7Pi6xhmb7JwNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wgKzChXPLWin4CyV5Cclu8Rp+ZXW+JPnEOvR2zSsRvY=;
 b=ZAAbgFw8/Kw0TAc0Dji4DVhYeR1HRqvfxVP8F30iE9FeKxMzcxhi31kl3aYKhy5Y7rI0pAzPty4lALpQBsC5k1N/sw0sa0oBCMqZdO2Tt/MsxNz7xU9iG8RQsFBvIOUJOACouOH83bPqkBmQkjdWA52xoHl+cLBWgyDocE/7JAympBRWg9edHgql2ySHGRyEmQXFvP81mcoUk1lDFxe2lhz7WwzBxH8sjaBN/b/JQMB5R4TAMJN9tghLGkPBAf5hehapV+vOhAU9qRX0wKKHCqEouvrfd1TS4vrPKPLRWMSbdlLnSa/5Yo6i2U+EBRbUhC+wzJFCNI8v2MT9mIA2EA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CY5PR11MB6305.namprd11.prod.outlook.com (2603:10b6:930:23::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5857.23; Wed, 30 Nov 2022 10:43:13 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::aa9e:a40d:d382:d488]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::aa9e:a40d:d382:d488%4]) with mapi id 15.20.5857.023; Wed, 30 Nov 2022
 10:43:13 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "Sharma, Swati2"
 <swati2.sharma@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dsc: Refactor dsc gen checks
Thread-Index: AQHY9OdcWqcWA45jw0CgYOifblcl3644BBYAgB9iYAA=
Date: Wed, 30 Nov 2022 10:43:12 +0000
Message-ID: <DM4PR11MB63607C0268FD812B630C4ED8F4159@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20221110093312.13932-1-swati2.sharma@intel.com>
 <87r0yb59yf.fsf@intel.com>
In-Reply-To: <87r0yb59yf.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CY5PR11MB6305:EE_
x-ms-office365-filtering-correlation-id: 68bcfa2f-37a9-44f8-2f38-08dad2bfae10
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: w/v8QOEStTkGWMyWIfIYlR6dSmCEYa54QdD+5CEjKtjE+fo4Zb0/JKNbRAKEBAEJeGwca80zauuSKFbidQY9M/qjVoxNkf/y86rjAHZLlO7NmRURuecFSBYdOPZhR6pj4NGqd06MfpASfFWi17Bx5qTnBYZ1vwgrFuRxL2bmTUTXVYCq4KLJtRQvyMbBl7/7NHc/B6el2AzuWRox9cKK5XqxKT5nzceNuRwTW8NdyrXhhq9//BsYHeg/bdfKSjdtV//zmHzU3GeS2aGYDhhC1xnUqoqMgutMSgw/UBaVWIAmO6XxIUCjMAJzUhrdnV1NnMyPwx61F3BRX+uRQOcksre77lXV5H9m8Y0xrUzueef10FhDR9UmH/Klx1C2l+wmXkZseVHUrLSGeaYA3yTzAGRycTJS7OzJmxrl2X7Xhn2No9TwJKV4yCI/GIdCLv0AdMD5ypNXS5GCX1thMXd1rExZEW3s0wUx5WCNdlayYAbAlLupQ+/GI/tytQjyjPW70/usIe62lT93Le+xMMmYq0tmLBRXT1rnpe3YW2BshDaYQMJC35G6tLv1JG0grsxsnCuPIbl4aKBIcvJf4QCP3xKcz1UX1j9QYpXbCi0SfDGjvY4eybw8xDn7xjDpcEGYeY1g+igzn6km00We5p2IpYjLIqJjRgSc/hkVYOzMhKcyK9o/F4lW1HYAwYUaeN+mwmcD2PT1aIS6KQpg0/Eing==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(396003)(366004)(136003)(39860400002)(376002)(451199015)(316002)(83380400001)(33656002)(186003)(8936002)(2906002)(122000001)(41300700001)(86362001)(55016003)(8676002)(76116006)(66946007)(66476007)(66556008)(110136005)(66446008)(38100700002)(64756008)(52536014)(82960400001)(53546011)(7696005)(26005)(6506007)(9686003)(5660300002)(71200400001)(38070700005)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/IZgcyCGxnFETs6cIK7f7GK4zY1ttKtJWCcjnwOQUNjsO+yj6SJ88hlERpxY?=
 =?us-ascii?Q?hcClC+YuWW6+T1xj6djXQ798W0m6Dthj0d6X5XfcpIPYH0+WvgZcD1d6oQkP?=
 =?us-ascii?Q?s33Mx9o599LjLPqeVOR9kGT+VoOvIztQ3UkXhxx4LGS3XK2DLqE4rJCW80x7?=
 =?us-ascii?Q?PV3U7Su11uqyT8IYw3uWvyjG90FM4x5ob00ruwn6xe3XC0PFJSysWvq1a8Md?=
 =?us-ascii?Q?ce7iPGtE5ZnugxxwnO3flW8slTizmd3eIMo/T6pVhsN13FAviXo3csbRWRzz?=
 =?us-ascii?Q?lPk1JlxpqBLbs5lrS8JINYBhd1ndWmPukKtlHsNekRJIgkF/wCY2mIBfUx3X?=
 =?us-ascii?Q?Zxny6fVLigJ7UMwOEP1O6gFtoQPkMeLgag0UKo6tApqErPstAgiVN0yROaZ5?=
 =?us-ascii?Q?dkoXqRXHM8jMiz5xlAuveEpu48VCYethGlQepHr+vhmdhtx6t7uIwfBMyofb?=
 =?us-ascii?Q?36Oa3zQgpuSMLZK7Wbs26d7osJxmqMyE34szbGVGFmhqFxzuxVfZ2IvXYnNQ?=
 =?us-ascii?Q?CMvDkKlubjtAFYySppmgwSDmnwNfUwf5ifCHTiHNfd4K0o1/JNaIb3k8JMkI?=
 =?us-ascii?Q?XBxczNzHNqldD2UOk2obY0tSDqR+wT/3mQ3idUhjCrqPU5kzLvTiaIf+83+w?=
 =?us-ascii?Q?/46HkFPUa0wz5VsiErFyxwFJbl9s2bk2k2Nk/Ofi/hPYgN1daivvcK/Xc99/?=
 =?us-ascii?Q?ni0gdaH14dB6XlT8ACs4oYMB7ucS97tg0rABQLdOfNF93mIVddIUXsC/WWhe?=
 =?us-ascii?Q?VlPqJ6A3BFoyaCHkGKCqLeXJs8XuABVRqalh2zhpcyGXNiMYEMyIQ0hateC3?=
 =?us-ascii?Q?GeB8UJMaYtwsLEaRYvLU/Ek1F/e4+n1zBR28Ik/PLRYZizug1txFFQY8f8nz?=
 =?us-ascii?Q?8nBWHelaZ6tnaJ+E/uq5cLGTPvI9H5RsZSl6QNfPddtLCMcCMco3x1lzk0D8?=
 =?us-ascii?Q?5BPfUCOwbgBhaoQEMpZQYuErZ36vaQdemYlV2XX4WdoIQUXCb38ZaFFatoCT?=
 =?us-ascii?Q?7jtP22v4BCZbLygfZhPIs2ltaydHVrg4IvQShBQQkMWFjcr63a9nSuK0zBvm?=
 =?us-ascii?Q?lyb+q9dMR0hCSvXYWkrgTLKEBxWDSRhpF9kd8Rzqk7yFhrJ2tcK1+aW0fxwM?=
 =?us-ascii?Q?nBwzXED19KfxWJCPOYfQIKVyX50O1dsBXKU0ncm0a+R5G1brbD9k8OXogDtT?=
 =?us-ascii?Q?1/yoHh2R1hc8pRlSDUJPIyURzGhboddMLLgjQKBvDzdAxrBhfp1SGPF6QtHb?=
 =?us-ascii?Q?J76lvBAZPcRRxrPycTO03vg5uLUMDqSRFKAcQVMhptsOqFBllcXohKqoErI0?=
 =?us-ascii?Q?0FvtO4thGoy8+x7p+um0gwn38DLVWPpGBDEbZQhwai7eIZlken5tjaTmoq+W?=
 =?us-ascii?Q?+DlULubVMcQFyiI0GL4C/07UZNINyyJkQ4VpzyR0+Q8nqAIX/1LNZOvxaBAq?=
 =?us-ascii?Q?hYl3LX0LUlW5/iDx3L8RfadHSmEnfvT9tCa9gLkpyy8SuU3XWqhSOU000gOp?=
 =?us-ascii?Q?3Xdx9reLpv805SMyTJitp30y1ka1KoCFPm8uDmBTw3PCvvZfiUbj3V3w2DRq?=
 =?us-ascii?Q?YAiyz/84/c8vkDy62D+zEPZ/RiM+iHeDq/7FK3LM?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68bcfa2f-37a9-44f8-2f38-08dad2bfae10
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Nov 2022 10:43:12.6760 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aQpEFRy7pCe+4kimryvzqoIU5+aoXRX0b6t+MvPA135WLxI/CxfyxenNrxiZXvL/pewyvDoCar05rM22NybxLw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6305
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsc: Refactor dsc gen checks
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



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni Nikula
> Sent: Thursday, November 10, 2022 4:54 PM
> To: Sharma, Swati2 <swati2.sharma@intel.com>; intel-gfx@lists.freedesktop=
.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsc: Refactor dsc gen checks
>=20
> On Thu, 10 Nov 2022, Swati Sharma <swati2.sharma@intel.com> wrote:
> > Use HAS_DSC(__i915) wrapper containing runtime info of has_dsc member.
> > Platforms supporting dsc has this flag enabled; no need of
> > DISPLAY_VER() check.
> >
> > Also, simplified intel_dsc_source_support() based on above changes.
> >
> > Suggested-by: Jani Nikula <jani.nikula@intel.com>
> > Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
>=20
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Pushed to drm-intel-next. Thanks for the patch and reviews.

Regards,
Uma Shankar
>=20
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c   |  6 +++---
> >  drivers/gpu/drm/i915/display/intel_vdsc.c | 11 ++++-------
> >  drivers/gpu/drm/i915/i915_drv.h           |  1 +
> >  3 files changed, 8 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 7400d6b4c587..f6f9257bd202 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -1012,7 +1012,7 @@ intel_dp_mode_valid(struct drm_connector
> *_connector,
> >  	 * Output bpp is stored in 6.4 format so right shift by 4 to get the
> >  	 * integer value since we support only integer values of bpp.
> >  	 */
> > -	if (DISPLAY_VER(dev_priv) >=3D 10 &&
> > +	if (HAS_DSC(dev_priv) &&
> >  	    drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)) {
> >  		/*
> >  		 * TBD pass the connector BPC,
> > @@ -2906,7 +2906,7 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp)
> >  	intel_dp_set_max_sink_lane_count(intel_dp);
> >
> >  	/* Read the eDP DSC DPCD registers */
> > -	if (DISPLAY_VER(dev_priv) >=3D 10)
> > +	if (HAS_DSC(dev_priv))
> >  		intel_dp_get_dsc_sink_cap(intel_dp);
> >
> >  	/*
> > @@ -4691,7 +4691,7 @@ intel_dp_detect(struct drm_connector *connector,
> >  	}
> >
> >  	/* Read DP Sink DSC Cap DPCD regs for DP v1.4 */
> > -	if (DISPLAY_VER(dev_priv) >=3D 11)
> > +	if (HAS_DSC(dev_priv))
> >  		intel_dp_get_dsc_sink_cap(intel_dp);
> >
> >  	intel_dp_configure_mst(intel_dp);
> > diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > index 269f9792390d..7b4d300a4dd8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > @@ -344,16 +344,13 @@ bool intel_dsc_source_support(const struct
> intel_crtc_state *crtc_state)
> >  	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> >  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> >
> > -	if (!RUNTIME_INFO(i915)->has_dsc)
> > +	if (!HAS_DSC(i915))
> >  		return false;
> >
> > -	if (DISPLAY_VER(i915) >=3D 12)
> > -		return true;
> > -
> > -	if (DISPLAY_VER(i915) >=3D 11 && cpu_transcoder !=3D TRANSCODER_A)
> > -		return true;
> > +	if (DISPLAY_VER(i915) =3D=3D 11 && cpu_transcoder =3D=3D TRANSCODER_A=
)
> > +		return false;
> >
> > -	return false;
> > +	return true;
> >  }
> >
> >  static bool is_pipe_dsc(struct intel_crtc *crtc, enum transcoder
> > cpu_transcoder) diff --git a/drivers/gpu/drm/i915/i915_drv.h
> > b/drivers/gpu/drm/i915/i915_drv.h index 05b3300cc4ed..9d1fe5d6a104
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -484,6 +484,7 @@ static inline struct intel_gt *to_gt(struct drm_i91=
5_private
> *i915)
> >  #define INTEL_REVID(dev_priv)	(to_pci_dev((dev_priv)->drm.dev)-
> >revision)
> >
> >  #define HAS_DSB(dev_priv)	(INTEL_INFO(dev_priv)->display.has_dsb)
> > +#define HAS_DSC(__i915)		(RUNTIME_INFO(__i915)->has_dsc)
> >
> >  #define INTEL_DISPLAY_STEP(__i915)
> > (RUNTIME_INFO(__i915)->step.display_step)
> >  #define INTEL_GRAPHICS_STEP(__i915)
> > (RUNTIME_INFO(__i915)->step.graphics_step)
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
