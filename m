Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C05726AD333
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Mar 2023 01:15:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38BAD10E286;
	Tue,  7 Mar 2023 00:15:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5285B10E286
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Mar 2023 00:15:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678148102; x=1709684102;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qEb4qlA0S/lVzWJ5Q1ePDql73AIzB4ruha7HQEOcZTU=;
 b=fuGRAT8i5uZlMMxa5b5A2hOWurf0INuC8MAU9CkbnLaWJIbs+vMAiQBE
 uSw/0zxCa3nZJG5UXPk4+q+hcEhFiXTMxr1WIUM0v1lXl798Najaj5Zss
 D4+iphAb3xtDHaL/D4Zp/cBKtFtCKbmhWUZS6dU+2tN6r5Ro++fjuid6g
 Z2R/ZVFezcroI8alLhe/t6zZ6znCRtnwC7WUGSSlH6nHyUvjVLMBRDiw6
 qL4GfyDl1u5N6H/u/aV64ciyDS2SjISAKuCJHs8A0Vck6Fr7fh4m/Gblb
 FOT1jIkUlQwj16zPdVC7JP7ZtWtJWKLxvuS3Z3zE3o+M5BKZImsd7C6Ls g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="324024580"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="324024580"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 16:14:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="626340218"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="626340218"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 06 Mar 2023 16:14:53 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 6 Mar 2023 16:14:52 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 6 Mar 2023 16:14:52 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 6 Mar 2023 16:14:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=INbF5k8qbo92E5SfL6eRvdTiV31+BoUA/uAorDmewbe3EtEN2KbFsz0Mc4ZNdknkHR1K3OdaGop93JqWKISoRd0yqofyzpc0pYVCBW8SAeXw1s4BuZj1VrhmHnxuL6E74scsklT6mHDO0eWb64UDSaTmjx3KqNBijm1P5V7CJfgu+NWalXdau+BNi45+N3VVlC1qWZrm1NhZErmFisMXfITtZ54pvFr4AVMf7cfrnUjFJv6Yvt8olEPgSAqUCg69xDgGsf7+3DV26AXm+z486QddeDNU66lbeNiXOY7aBhgVeAENmcov6d0JclfHR7zy7yFBbnHEqoc8Gvifv0AApQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qci+4o/e50We6weV3rPMFoV2W89bnxo0VOSSGeP7smc=;
 b=OpYhUzP7ZZIJCMpbUyk31sngg/wcjBz9buHS9E7PflmLXTOtG2Yxg6nbr1aEPYfVtMCgeqGOQ+0gE8KoRsJ94w+gu/wXZ53DHeMU8CgSeTYzlxnKVOgGajd2mQrPufw6j2hM5RnOPnv4UoORCc4hvNM+zW5M9mVPdhLslcuWyZwA06jG0VyEpGCM2YuZGy/in17zYgmw2YCeAmpNGnVKlzFirWFa0tCbL5c+uFLqHdI7nE3mRM3Cm33kige16us7M7e3eWod2pOfC2D30by+2nsRVLFsIssA8Vkb1gNkGq31/z2neqtyC8KvAYDlHrtF7kug19SxSrp8E5B+oam7fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 DS0PR11MB7336.namprd11.prod.outlook.com (2603:10b6:8:11f::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6156.28; Tue, 7 Mar 2023 00:14:49 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::d95d:e1ce:3fe2:c810]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::d95d:e1ce:3fe2:c810%3]) with mapi id 15.20.6156.028; Tue, 7 Mar 2023
 00:14:49 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>, "Ceraolo Spurio, Daniele"
 <daniele.ceraolospurio@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v3 3/5] drm/i915/mtl: make IRQ reset and
 postinstall multi-gt aware
Thread-Index: AQHZTHoR4uBs7LMoT0ysM8njMUQlH67uZFqAgAAHZ3A=
Date: Tue, 7 Mar 2023 00:14:49 +0000
Message-ID: <DM4PR11MB59716229DA2E5B20947C49FF87B79@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20230301201053.928709-1-radhakrishna.sripada@intel.com>
 <20230301201053.928709-4-radhakrishna.sripada@intel.com>
 <20230306225449.GH1543793@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20230306225449.GH1543793@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|DS0PR11MB7336:EE_
x-ms-office365-filtering-correlation-id: e7e53ccd-1ec9-4b85-55a5-08db1ea0f743
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DchEe6OusgWWcFe+IUG7NyDU2vplqiFKSV2O2yL80EUnVkh8jUi17oIPFKCSELIolqYsc+gQC9r9twqoVin4UONB1IP+6qbRGbW0DI5h0xO1e9/VDrK1wHDv8RDN/uDdQTtNQKZCRkXxfI0Gf01HHB0/TbjD+K7rQz1NHXxP2tcuyf0dgsjLqgCTQ4gqkYxA9O+v5IUnOs65nvg9T9F4jtuRgkWbydDmEWsIJg1fEpoRuo3AkE0GxkvnZI62dpVzj2hqSZgisPEZhqp5wT6D4XsgTLBXmOJSq18kmuP9FBlAWuEHWlDEiNud2KjcyNMO0trUMPjgj723EHoIwcuacLsgIbRmmoUOvSWspPaZd7B7WBPZm0LOiXeTURAiiar2m/FE86FEX1tGu/XGcOubf3zZsTnfj6OW5M80YTYADK0HOS4mPEKhUWOTCrS+uQUYvste+bwVWjUiMWt+uy04uV7ZCtJ1HOfOKTamemuk9RhQUmD0tBPRUfFhyltxZWdhEVC3XtznOJ4yYD6F6qKi/tPSSguvOpi6JAFHwGVsd+UyTwglwPw342LWo+jD1+w1ZJLtdZNhHH6q90oF+A9u7PhFDZSFPrClrK2TyBO+Qa/3zoXOgbV6MY9RH9JcKc7TuxGkQlJ0g5TRtQfN+Wl0ynbJcYL3aAqJNZdT8PuGOnIK5Gr7MhP8XzXREUDFgvYmF4Dn+b1wAmPpq+Nhrz9w9w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(39860400002)(346002)(396003)(136003)(376002)(451199018)(82960400001)(86362001)(38070700005)(122000001)(38100700002)(66476007)(33656002)(66946007)(5660300002)(2906002)(66446008)(4326008)(76116006)(64756008)(8936002)(8676002)(41300700001)(66556008)(52536014)(186003)(26005)(9686003)(53546011)(83380400001)(6506007)(110136005)(54906003)(316002)(6636002)(55016003)(478600001)(107886003)(7696005)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?EO3VBaH6xabPJvIh0ZnW7oJ4TbL9ywsYSe5zKX900X2lESKerOnZJ/xln2Ly?=
 =?us-ascii?Q?i2T29LgrYJrOsB88Ofgkc2pyF/QkaDn5uep5R89YVbOImEaYRrzX4MZkcfCH?=
 =?us-ascii?Q?5A3R6IGzoefaOqNk/a9QOKchpoejpvqkn9dq16r/DsB52dgyamJWVyjVT+8B?=
 =?us-ascii?Q?psrhZQcMFCGTv4tEJyA/Il1gQKilQ5prVRIqii7PM4JUi+keu0yh3MJCG2hi?=
 =?us-ascii?Q?hJ9OeYktp6DEFVLRmhqqquRObodmPb7metyXAGYKxx/yoA6H1Asj6JA83pr4?=
 =?us-ascii?Q?sXXh6i5mk+6SuPPUy2xG/bEg7S5O4/QwAqaY5zdwj6dHf2dN13+YZJ+R0O6P?=
 =?us-ascii?Q?yaeNOcEwcio+tvhERwJsOznC/CRUjBj4KgwFu6Ro93KPBuq+dB8VP93Kw7I6?=
 =?us-ascii?Q?RZJ4fqBSidZVGmkelf6zb0848i7L5cdV+o5qCYEBmgBWzHtxyAn9PCyns/DZ?=
 =?us-ascii?Q?j+jxAf2raihTLQSPw6SGa0Ry4Bb2qJmDwXtkGa5QjYWVmun/LP4BAfDXtsaz?=
 =?us-ascii?Q?mclG6oXtXln+FBTfJvGaEgSBa+r0XVISeydwr15Urn+DDzdc6qKz+wiRhACl?=
 =?us-ascii?Q?stt2wJ2ZwYBijENt7A6aY7L9Pe/3BikpnpCfzwsJP/A9a/hM4eFImLjfyb9T?=
 =?us-ascii?Q?P9Nm30OsAC7459/AIWJeetFRLlnK7Z92zACl8cG3sGPdFfC5ei56D1P+IglX?=
 =?us-ascii?Q?uA6k4moG4eFWbcWBzvRVPFFoqRbyut+Rbhu8ZMF6rLxxG8lUMxI4BGOm7KWe?=
 =?us-ascii?Q?ZfGa0NAQVvOreX6MNwCGNNi52naTxI3sWBJ91jsnLsDwVzRSDNuFlP4Ikz7e?=
 =?us-ascii?Q?8gW0PzszwFmsBsEAardzO1F9AghjCtYSyKflZmBT3GZtXfLl79b8qhFoj+/F?=
 =?us-ascii?Q?Hjb7/uOCZ2Ux+a1z6ks35jZ+RK9rum2IjovHdyHiCnixIZKITY1b9p0cRqhk?=
 =?us-ascii?Q?uKRy68KPkDMZ+DqpErsiuZ09Mf461QOiRUT3iRkWEEin+L52L623ezC6axLT?=
 =?us-ascii?Q?U+Ubb20FBXeG/GrvvV7gRwBNeMGJvN+BYPXkSozCB1PwKOZ6Y+JsDBb1rRXk?=
 =?us-ascii?Q?lrImV0PoNynRZWWcW0eL7WIpUNtIdCwrO/OG6lfD+j+QlrLAzPMV8qBv3H5L?=
 =?us-ascii?Q?mep+7UHrrcInkrC374VEigIGu03xnLh4ykOi4oufzpOsfGGfU9V9m7VmJc6m?=
 =?us-ascii?Q?CoxyCfbXkj+Zj+JZDEUzYYUVPzaMLv3fCpkp81TGDghC9NJ4hnWX/dWTceI/?=
 =?us-ascii?Q?qa+jfsD7h5d7EEIz4441BoTHUi1X87IFz1MkkI2s0cIhiemyHPHqQq9ZqPJz?=
 =?us-ascii?Q?4Y/kJEoFDMrQ7oyKdMbJ3dESOdtYdxh/7XvgCDyJmdhL3Z48S6FgsG9lL2YS?=
 =?us-ascii?Q?CQbN2iPOil2hA0rQ6fsbm3cC5MGSmrWEakxYzhdIlL4Vpn2aXH6j8lw/wD0C?=
 =?us-ascii?Q?F5IDxWJJfCsyNzkozQQrCY+1Vvr4YJsFJI7N/lC6z3+mIH54orWjrzCwzNLd?=
 =?us-ascii?Q?yLWARVXO8R5LiMdWLN53HtaAPwrb6WX40DwuzItPJ4xDQmTbwpQx5xj2wrk/?=
 =?us-ascii?Q?Z6tUPDHVRHpxXXuyngXcMRIlqlneIeSo/Ud8vrmSR4QDQGUTQMs0ItvZDFa2?=
 =?us-ascii?Q?VQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e7e53ccd-1ec9-4b85-55a5-08db1ea0f743
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Mar 2023 00:14:49.4886 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FM76JQghzGJN3jyz0hAnHSgNLq6cgPoBTppOs/577lJzYU8rBmaGn2zJF0mDqq9h1NUekDC+zka/aNT16SpnmNQb/ciLUy9UsB0QOe2ITwA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7336
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 3/5] drm/i915/mtl: make IRQ reset and
 postinstall multi-gt aware
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>, "Zanoni,
 Paulo R" <paulo.r.zanoni@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

+Daniele,

Hi Matt,

> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Monday, March 6, 2023 2:55 PM
> To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; De Marchi, Lucas
> <lucas.demarchi@intel.com>; Zanoni, Paulo R <paulo.r.zanoni@intel.com>
> Subject: Re: [Intel-gfx] [PATCH v3 3/5] drm/i915/mtl: make IRQ reset and
> postinstall multi-gt aware
>=20
> On Wed, Mar 01, 2023 at 12:10:51PM -0800, Radhakrishna Sripada wrote:
> > Irq reset and post install are to be made multi-gt aware for the
> > interrupts to work for the media tile on Meteorlake. Iterate through
> > all the gts to process irq reset for each gt.
>=20
> I think I mentioned on the previous version, but this isn't right.  MTL
> does not have separate interrupt registers for each GT the way
> multi-tile platforms like PVC do.  The GT interrupt registers you're
> handling here are in the sgunit so there's only a single copy of them;
> iterating over them multiple times in a row doesn't accomplish anything.
>=20
> The media engine bits are still on the same registers as the primary GT
> and the GSC and media GuC are new additional bits that need to be
> handled.  The necessary handling for the GSC and media GuC should have
> already landed in a187f13d51fa ("drm/i915/guc: handle interrupts from
> media GuC") and c07ee636901d ("drm/i915/mtl: add GSC CS interrupt
> support"), but if there's another bit that was missed somewhere (or if
> we were doing something like looking at the wrong intel_gt's engine mask
> somewhere), that would need to be addressed directly rather than just
> looping over the same IRQ registers multiple times.

This patch is needed to handle media interrupts. Without this patch we obse=
rved
GuC not loading/communication errors on media gt.

My understanding is that Sgunit is embedded into the SAMedia block and henc=
e need
To be iterated over separately.

Daniele,
Can you confirm if that is accurate.

Thanks,
RK
>=20
>=20
> Matt
>=20
> >
> > Based on original version by Paulo and Tvrtko
> >
> > Cc: Paulo Zanoni <paulo.r.zanoni@intel.com>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
> > Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_irq.c | 30 ++++++++++++++++++------------
> >  1 file changed, 18 insertions(+), 12 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i91=
5_irq.c
> > index 417c981e4968..9377f59c1ac2 100644
> > --- a/drivers/gpu/drm/i915/i915_irq.c
> > +++ b/drivers/gpu/drm/i915/i915_irq.c
> > @@ -2759,16 +2759,19 @@ static void gen11_irq_reset(struct
> drm_i915_private *dev_priv)
> >
> >  static void dg1_irq_reset(struct drm_i915_private *dev_priv)
> >  {
> > -	struct intel_gt *gt =3D to_gt(dev_priv);
> > -	struct intel_uncore *uncore =3D gt->uncore;
> > +	struct intel_gt *gt;
> > +	unsigned int i;
> >
> >  	dg1_master_intr_disable(dev_priv->uncore.regs);
> >
> > -	gen11_gt_irq_reset(gt);
> > -	gen11_display_irq_reset(dev_priv);
> > +	for_each_gt(gt, dev_priv, i) {
> > +		gen11_gt_irq_reset(gt);
> >
> > -	GEN3_IRQ_RESET(uncore, GEN11_GU_MISC_);
> > -	GEN3_IRQ_RESET(uncore, GEN8_PCU_);
> > +		GEN3_IRQ_RESET(gt->uncore, GEN11_GU_MISC_);
> > +		GEN3_IRQ_RESET(gt->uncore, GEN8_PCU_);
> > +	}
> > +
> > +	gen11_display_irq_reset(dev_priv);
> >  }
> >
> >  void gen8_irq_power_well_post_enable(struct drm_i915_private *dev_priv=
,
> > @@ -3422,13 +3425,16 @@ static void gen11_irq_postinstall(struct
> drm_i915_private *dev_priv)
> >
> >  static void dg1_irq_postinstall(struct drm_i915_private *dev_priv)
> >  {
> > -	struct intel_gt *gt =3D to_gt(dev_priv);
> > -	struct intel_uncore *uncore =3D gt->uncore;
> >  	u32 gu_misc_masked =3D GEN11_GU_MISC_GSE;
> > +	struct intel_gt *gt;
> > +	unsigned int i;
> >
> > -	gen11_gt_irq_postinstall(gt);
> > +	for_each_gt(gt, dev_priv, i) {
> > +		gen11_gt_irq_postinstall(gt);
> >
> > -	GEN3_IRQ_INIT(uncore, GEN11_GU_MISC_, ~gu_misc_masked,
> gu_misc_masked);
> > +		GEN3_IRQ_INIT(gt->uncore, GEN11_GU_MISC_,
> ~gu_misc_masked,
> > +			      gu_misc_masked);
> > +	}
> >
> >  	if (HAS_DISPLAY(dev_priv)) {
> >  		icp_irq_postinstall(dev_priv);
> > @@ -3437,8 +3443,8 @@ static void dg1_irq_postinstall(struct
> drm_i915_private *dev_priv)
> >  				   GEN11_DISPLAY_IRQ_ENABLE);
> >  	}
> >
> > -	dg1_master_intr_enable(uncore->regs);
> > -	intel_uncore_posting_read(uncore, DG1_MSTR_TILE_INTR);
> > +	dg1_master_intr_enable(to_gt(dev_priv)->uncore->regs);
> > +	intel_uncore_posting_read(to_gt(dev_priv)->uncore,
> DG1_MSTR_TILE_INTR);
> >  }
> >
> >  static void cherryview_irq_postinstall(struct drm_i915_private *dev_pr=
iv)
> > --
> > 2.34.1
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
