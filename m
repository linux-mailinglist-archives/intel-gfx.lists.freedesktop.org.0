Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D31A722E81
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Jun 2023 20:20:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D50F10E031;
	Mon,  5 Jun 2023 18:20:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7C5210E031
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Jun 2023 18:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685989209; x=1717525209;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=orUmIpCdu17gEKKAHa+JSYguVjdFrBVeFjZbx11s/BU=;
 b=YSCIkopN+bzs5hjruw/rI/OX/wcc2XthmJCR4Ac4GkcyTvuRmJ9NCgdl
 w6sfkCpHwyWJp9lpyInx0XW33JOE8hX3Jru//4A+1/ap/D/wGVlxR6wd3
 mPMYXnxC0yv3GG4MV1qqFnfEa5NfCpdVtfRs5901qN7s42YJOY9y1rzTx
 HshidQPVRqBJ79dwIewUO4TKjZ/L57LuSvfNVJQBXXIxMONgB5zKja2Bf
 REA2nGA/jENgUJwScuv/vd/XYzhLOAAb0fEpU0ork4dI+oGa89vMLNhsN
 Vx2V3uP35hTo8AZ8BQ4tse5kJYaybdVkMlyesG3070VXPFKmF1f/66b16 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="442820964"
X-IronPort-AV: E=Sophos;i="6.00,218,1681196400"; d="scan'208";a="442820964"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 11:20:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="821277829"
X-IronPort-AV: E=Sophos;i="6.00,218,1681196400"; d="scan'208";a="821277829"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 05 Jun 2023 11:20:08 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 5 Jun 2023 11:20:08 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 5 Jun 2023 11:20:07 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 5 Jun 2023 11:20:07 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 5 Jun 2023 11:20:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IR2pnOqtmQSpB57zXTTfwEGldiZH2wv9NVCOkLhhGcsi9Z19ITGyU6lROjord4eFS9Q5G3nXKO+7mWrdpfM1lqHLBjB7SR6tCFXnhn0+0/Psnsd++gH8XOTzMUAJMYClHhH2aLupdcERZONQmJ/G5qvrn6knR3gYcEEQmfkO9oSXozL5ViRdao089nZE7fs7lwm5dyD0Zabi3UJIRIQ5UB3gwm6Op5PjXsDBYdtesIBBFMWnvYQ1KOz2D5imoHa1QOj9Y/lMBZW4PmM8GZeNDNZfVdERhBYv3DPqLAstw/GajY3mgGgaEAUUzbF5OS5Xhmms50dmoU+1MzlKy1AgfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EAOVic2//F38V75YOxuvrQdziW2sZ3HHr7Oj2rJzpJU=;
 b=aesJJ2a5VqevbdqHwOujWsIDvqpqbuarQ7nm8hEbBApkFX+hz7iXH0v5xc4gL1U1MCStJAXsB2zTnPXeAO7eMLgdPDGTc7Kp29MpITUpWAhXnTT+MvGtxJQHyINeDZsu5Mykiaj/p2A1cstu3WpY66Iq7FsHmiJKd0ntTPapbOPT4vAE3RiBTxSIyQ+K2Dl1kbdTAMKf6QQf6W9Z64MQHTqblLI2cHWV9ZvZ/3IlXXxEJhDmr/rn0j1MLK4X4+qtdbrPztT2b3O1B+Efd9Wx3rH9rdSwvOQVKBElAINYyuwcoQisu2B6exlelGY5LesYMcfvy8JNYVIjjZjXgD991w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com (2603:10b6:a03:4f4::20)
 by CY8PR11MB7060.namprd11.prod.outlook.com (2603:10b6:930:50::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.15; Mon, 5 Jun
 2023 18:20:05 +0000
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::dc02:fa20:2d25:dc]) by SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::dc02:fa20:2d25:dc%6]) with mapi id 15.20.6455.030; Mon, 5 Jun 2023
 18:20:05 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/5] drm/i915/adlp: s/ADLP/ALDERLAKE_P for
 display and graphics step
Thread-Index: AQHZkygjO3/9xl4K3U6+X5xzhTttjq98WliAgAAxfpA=
Date: Mon, 5 Jun 2023 18:20:05 +0000
Message-ID: <SJ2PR11MB7715BC65288E5EA92B328868F84DA@SJ2PR11MB7715.namprd11.prod.outlook.com>
References: <20230530185529.3378520-1-anusha.srivatsa@intel.com>
 <20230530185529.3378520-2-anusha.srivatsa@intel.com>
 <87o7luaqmq.fsf@intel.com>
In-Reply-To: <87o7luaqmq.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB7715:EE_|CY8PR11MB7060:EE_
x-ms-office365-filtering-correlation-id: d7c6b378-613e-4721-3fc8-08db65f17c65
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: or5U09ULixYSojIQdBxM8PIdMEPhbUzQa7Geag8mK0YbI4qaY0T5K9oJHXjkTpwNLccqBZzJllEG6xouj/DgxHt01ZHoHyS4r13R8ydCF94nIFDZywy0zEtMILg4WeiKFRGa5+NiKCRa147XsS1OMs/1CPMHNugV0e8m3JhVNAm6fqiB8jQr1RGblDd1Lkt5YOJdGw4XlufTU/bLlKr46tf5eW2HxeJBvEHwk7iZD8/lcCy887zuGeDjKwov7YyuJwQutuFHfHj9n++HKJ8XJCMdxlMll9AtUwYdltxDzdd76N6r7pPl28tCFaRZ+3tBKYVYOyACYaUDhnsA108og9PI1y9TevuTatLQKbsjhpdiJHBOmsdZQC2NIZxn9fvcf2J99/GI3Qa0kgz7vYPNK9EbSirJQL9Jyg688iC4iLOVdyHrS3HYUYfvppGO18326ag8s+1qv8Lzavos9hidtuphZ1GeTYaDo72EXUhZxnNNHeVt2eAklY4zd1Vb290rFvF0rb+eTP7ClAj0c2Eux80OY2xqxvrxR29bu1v0mc4VzKU6UBrVDsOtLmu41Uqmp88BsqGnNlqWyTmZOOxbK8OMOEh85KxadUpcKZDI/RqAT3/Vvvpyag01iXiYb4W5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB7715.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(376002)(396003)(366004)(136003)(451199021)(8676002)(76116006)(66556008)(64756008)(66476007)(66446008)(8936002)(66946007)(5660300002)(316002)(55016003)(41300700001)(52536014)(110136005)(2906002)(478600001)(122000001)(38100700002)(82960400001)(9686003)(53546011)(6506007)(26005)(86362001)(186003)(33656002)(71200400001)(7696005)(38070700005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?c3jMqC0w1Exdmxcx9BdoViUpZo00Yc4KXAsILXFgIX8BUAX872nU7ZdnPp4K?=
 =?us-ascii?Q?W0paLez+n8JPDGSko+7GsKDmgVmBShSE0vERUT5lPcYP8zNSo+FSlxLMT/yR?=
 =?us-ascii?Q?hcR2SX+rx9hxwZgyaVBoki5naJ4ShGtUuaf1aPQWmu8mnV76GiroucGaRNq6?=
 =?us-ascii?Q?ZVebsE5ampVr49PRlg3fSqVALxnIFA2doJlXTaXL6qSJ1rRtC9mcRugbz9bl?=
 =?us-ascii?Q?m3k6l0W2VGWKGzuOJBf8jaBRZcqFtDEI4RQaG7UqikCd2g3m6pF/JzoT0miV?=
 =?us-ascii?Q?m7s26LSuQxG1vLgyP4JaJsTcmSViQ0j9dc8FddHI0Lyz2inEugyW0ebkURq/?=
 =?us-ascii?Q?mWQCgNcrSeehB/38IjLYb3XACZ1l0XEyLBUuAiVVyvgkhNU8IbPRYwA1VefT?=
 =?us-ascii?Q?4LBNejjQ8TkVhTPqjDlsAp3aR0UubaBhAkBmRalzbnsHnYz0iiJ6HW0NtDjN?=
 =?us-ascii?Q?eMj/4fJtQ925B0t2qYu5a7R1jYwuWqNmodRJgfcHGlM4QW/NGl5/p8rX58VL?=
 =?us-ascii?Q?rQ1CAJSQ6WUDGgNz/tT82PFEsGVD1srK7uXKcTR3i351awGD8vBF8RbiLq2W?=
 =?us-ascii?Q?WirFdlG+Hln3lqjhzM5PaXQTRCIprWhmNYypMJdjTgs9Z5uwt5jGbeCjn0wy?=
 =?us-ascii?Q?L/1hMcquvsp5UcE5/0Zaw3ubCr8F/1zOOHuwr3KzPxsbRW7Lf+5/kd5Hu8Hg?=
 =?us-ascii?Q?YBgsc7Z/DjSr7oj192GrBGMTnPQ7YJo5t1eYJ8zD735X8NWqW5OU7YoEodXt?=
 =?us-ascii?Q?GyzRlNxywqAPuvFCHSvSshnl7HSa2nZXcjWWBDUorYFe9sbUfE0IQ9ahqXFy?=
 =?us-ascii?Q?o41+m7O871MSxzzisb854FK22LaVzIOMlTR+Sz1VkM31+2VD/RU8E1+qmwE3?=
 =?us-ascii?Q?r+fO/8MzRZoUmH5jVuODSQCTBetyfmtUlrytPtyk0isWLDQjXXtHwLqtCRFb?=
 =?us-ascii?Q?UNx4T6ylljaBnhG4dhTHlK6/k7ECc+UWodrHnov8IJpo79ic4WJNzD2xfM7l?=
 =?us-ascii?Q?97As5OCMKaoAlA9ThDnUaVcKbPxSMt0kcXN2XtXVwMoMFM+YxAP3Wy53HF9C?=
 =?us-ascii?Q?DdLhtq3fC/EtxscPqy80dWYVb3VagE424pPf17EbzptlJZo6SHvCNO62aePj?=
 =?us-ascii?Q?zdpAXCcEpAmI5b90FKaT8BXXgotuDx6WQH+jlbeEOHrij03zFbUy/P8pB/9y?=
 =?us-ascii?Q?qh8IcB7YDLQtt4n/fvXRFedsZwmCRuGZ+Cet2lnbpwXeCTJfGvWvBeiGLzwP?=
 =?us-ascii?Q?3177koQYonom6DeBnwRjWo/qGre0S67WubadAXTXLXW4H+zznbsBvCtrDWTY?=
 =?us-ascii?Q?r+zURseWsmo5KMadGI5vPuT9gYTTEs8nPX7l3tGePOHCoQgwyhfwnpi5RkDQ?=
 =?us-ascii?Q?HGTkl4Wq+04PXggQeTg/5W75ZVzdKweFbkj5uPQRyA4oW8WK84MUBJsc4orF?=
 =?us-ascii?Q?MVM2km9UxGFoYLEADdmARWF9gq7dVsEj7C0jNj9tUQL2mvkyM2NrBKaJzEIv?=
 =?us-ascii?Q?C/eziDaAb22mggbMhcfS//DPKYRGJyqZ9VPlvznCrhqOfC0+iRyDuljRRDRt?=
 =?us-ascii?Q?pryrCeDMMC0EeJHBAgIEeXxFMCzelnJ2hK9kbA5AplAV2Ykh+kxWrPUDE6rv?=
 =?us-ascii?Q?NQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB7715.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d7c6b378-613e-4721-3fc8-08db65f17c65
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2023 18:20:05.1594 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 19j3cNqVH5ztpSbHVQ3mUiiR8j1CoreerwKe6AyziCmtUYJFFUX2kRU6PkIweziZPCEzpHDqaZ8KHk/RQW1uoLV0Nm/tm/TN3enaObvykCU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7060
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/adlp: s/ADLP/ALDERLAKE_P for
 display and graphics step
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Monday, June 5, 2023 8:14 AM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/adlp: s/ADLP/ALDERLAKE_P fo=
r
> display and graphics step
>=20
> On Tue, 30 May 2023, Anusha Srivatsa <anusha.srivatsa@intel.com> wrote:
> > Driver refers to the platfrom Alderlake P as ADLP in places and
> > ALDERLAKE_P in some. Making the consistent change to avoid confusion
> > of the right naming convention for the platform.
>=20
> $ git grep "#define IS_.*_DISPLAY_STEP" -- drivers/gpu/drm/i915/i915_drv.=
h
> drivers/gpu/drm/i915/i915_drv.h:#define IS_KBL_DISPLAY_STEP(i915, since,
> until) \ drivers/gpu/drm/i915/i915_drv.h:#define IS_JSL_EHL_DISPLAY_STEP(=
p,
> since, until) \ drivers/gpu/drm/i915/i915_drv.h:#define
> IS_TGL_DISPLAY_STEP(__i915, since, until) \
> drivers/gpu/drm/i915/i915_drv.h:#define IS_RKL_DISPLAY_STEP(p, since, unt=
il) \
> drivers/gpu/drm/i915/i915_drv.h:#define IS_ADLS_DISPLAY_STEP(__i915, sinc=
e,
> until) \ drivers/gpu/drm/i915/i915_drv.h:#define
> IS_ADLP_DISPLAY_STEP(__i915, since, until) \
> drivers/gpu/drm/i915/i915_drv.h:#define IS_MTL_DISPLAY_STEP(__i915, since=
,
> until) \ drivers/gpu/drm/i915/i915_drv.h:#define IS_DG2_DISPLAY_STEP(__i9=
15,
> since, until) \
>=20
> They all use the acronym. Do you suggest to rename all of them, or just A=
DL-P?

Got the idea after looking at subplatform defines in i915_drv.h:

#define IS_METEORLAKE_M(i915) \
        IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_M)
#define IS_METEORLAKE_P(i915) \
        IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_P)
#define IS_DG2_G10(i915) \
        IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G10)
#define IS_DG2_G11(i915) \
        IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G11)
#define IS_DG2_G12(i915) \
        IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G12)
#define IS_ADLS_RPLS(i915) \
        IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_S, INTEL_SUBPLATFORM_RPL)
#define IS_ADLP_N(i915) \
        IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_N)
#define IS_ADLP_RPLP(i915) \
        IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPL)
#define IS_ADLP_RPLU(i915) \
        IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPLU)

We are using the same platform name for platform and sub-platform defines f=
or Meteor Lake and DG2, but somehow for flavors of Alder Lake, the sub-plat=
form has acronym. The idea was that developers should not think if the full=
 name or acronym has to be used. And that resulted in the series. But now t=
hat you have pointed out the above other  such occurrences, I am leaning to=
wards having them changed as well. That is for a platform defined as TIGERL=
AKE, All of its steppings etc should have TIGERLAKE_(TIGERLAKE_MEDIA_,TIGER=
LAKE_DISPLAY_, TIGERLAKE_GRAPHICS_ ) etc instead of having TIGERLAKE in som=
e places and  TGL in its stepping or sub-platform defines.

This was the naming is uniform and consistent.=20

Anusha=20
> BR,=09
> Jani.
>=20
>=20
>=20
> >
> > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c         | 2 +-
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c      | 2 +-
> >  drivers/gpu/drm/i915/display/intel_psr.c           | 8 ++++----
> >  drivers/gpu/drm/i915/display/skl_universal_plane.c | 4 ++--
> >  drivers/gpu/drm/i915/i915_drv.h                    | 4 ++--
> >  5 files changed, 10 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 6bed75f1541a..013678caaca8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -3541,7 +3541,7 @@ void intel_init_cdclk_hooks(struct drm_i915_priva=
te
> *dev_priv)
> >  	} else if (IS_ALDERLAKE_P(dev_priv)) {
> >  		dev_priv->display.funcs.cdclk =3D &tgl_cdclk_funcs;
> >  		/* Wa_22011320316:adl-p[a0] */
> > -		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> > +		if (IS_ALDERLAKE_P_DISPLAY_STEP(dev_priv, STEP_A0,
> STEP_B0))
> >  			dev_priv->display.cdclk.table =3D
> adlp_a_step_cdclk_table;
> >  		else if (IS_ADLP_RPLU(dev_priv))
> >  			dev_priv->display.cdclk.table =3D rplu_cdclk_table; diff --
> git
> > a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > index 6b2d8a1e2aa9..81f3ce5a0a1e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > @@ -3781,7 +3781,7 @@ static void adlp_cmtg_clock_gating_wa(struct
> > drm_i915_private *i915, struct inte  {
> >  	u32 val;
> >
> > -	if (!IS_ADLP_DISPLAY_STEP(i915, STEP_A0, STEP_B0) ||
> > +	if (!IS_ALDERLAKE_P_DISPLAY_STEP(i915, STEP_A0, STEP_B0) ||
> >  	    pll->info->id !=3D DPLL_ID_ICL_DPLL0)
> >  		return;
> >  	/*
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > b/drivers/gpu/drm/i915/display/intel_psr.c
> > index ea0389c5f656..c25457dae315 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -639,7 +639,7 @@ static void hsw_activate_psr2(struct intel_dp
> *intel_dp)
> >  	}
> >
> >  	/* Wa_22012278275:adl-p */
> > -	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_E0)) {
> > +	if (IS_ALDERLAKE_P_DISPLAY_STEP(dev_priv, STEP_A0, STEP_E0)) {
> >  		static const u8 map[] =3D {
> >  			2, /* 5 lines */
> >  			1, /* 6 lines */
> > @@ -807,7 +807,7 @@ tgl_dc3co_exitline_compute_config(struct intel_dp
> *intel_dp,
> >  		return;
> >
> >  	/* Wa_16011303918:adl-p */
> > -	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> > +	if (IS_ALDERLAKE_P_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> >  		return;
> >
> >  	/*
> > @@ -975,7 +975,7 @@ static bool intel_psr2_config_valid(struct intel_dp
> *intel_dp,
> >  		return false;
> >  	}
> >
> > -	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
> > +	if (IS_ALDERLAKE_P_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
> >  		drm_dbg_kms(&dev_priv->drm, "PSR2 not completely
> functional in this stepping\n");
> >  		return false;
> >  	}
> > @@ -1033,7 +1033,7 @@ static bool intel_psr2_config_valid(struct
> > intel_dp *intel_dp,
> >
> >  	/* Wa_16011303918:adl-p */
> >  	if (crtc_state->vrr.enable &&
> > -	    IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
> > +	    IS_ALDERLAKE_P_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
> >  		drm_dbg_kms(&dev_priv->drm,
> >  			    "PSR2 not enabled, not compatible with HW stepping
> + VRR\n");
> >  		return false;
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > index 36070d86550f..2019e0a87bd3 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -2174,7 +2174,7 @@ static bool skl_plane_has_rc_ccs(struct
> drm_i915_private *i915,
> >  		return false;
> >
> >  	/* Wa_22011186057 */
> > -	if (IS_ADLP_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
> > +	if (IS_ALDERLAKE_P_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
> >  		return false;
> >
> >  	if (DISPLAY_VER(i915) >=3D 11)
> > @@ -2200,7 +2200,7 @@ static bool gen12_plane_has_mc_ccs(struct
> drm_i915_private *i915,
> >  		return false;
> >
> >  	/* Wa_22011186057 */
> > -	if (IS_ADLP_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
> > +	if (IS_ALDERLAKE_P_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
> >  		return false;
> >
> >  	/* Wa_14013215631 */
> > diff --git a/drivers/gpu/drm/i915/i915_drv.h
> > b/drivers/gpu/drm/i915/i915_drv.h index f1205ed3ba71..1a50b8b2f00d
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -669,11 +669,11 @@ IS_SUBPLATFORM(const struct drm_i915_private
> *i915,
> >  	(IS_ALDERLAKE_S(__i915) && \
> >  	 IS_GRAPHICS_STEP(__i915, since, until))
> >
> > -#define IS_ADLP_DISPLAY_STEP(__i915, since, until) \
> > +#define IS_ALDERLAKE_P_DISPLAY_STEP(__i915, since, until) \
> >  	(IS_ALDERLAKE_P(__i915) && \
> >  	 IS_DISPLAY_STEP(__i915, since, until))
> >
> > -#define IS_ADLP_GRAPHICS_STEP(__i915, since, until) \
> > +#define IS_ALDERLAKE_P_GRAPHICS_STEP(__i915, since, until) \
> >  	(IS_ALDERLAKE_P(__i915) && \
> >  	 IS_GRAPHICS_STEP(__i915, since, until))
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
