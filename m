Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 020BE58408B
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 16:07:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E04510E574;
	Thu, 28 Jul 2022 14:07:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54DDF10E6D5
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jul 2022 14:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659017220; x=1690553220;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=+6E7YTSiFb4AyvKo1gOrwM5jrQiFWwQABBIDftnLAdo=;
 b=UlVzhBLJV3xapkn64MByYQCE4KTrx9d9THOyqz+TuhQir0+Bqo9usxfg
 UeAqjJRGEfeQqdINwt+wyZY9T/67NEUicboGn3fotg+OtX+Y/ZJCeFjkD
 5yRl3syPGUKuhAtG7YXp4WaucfeIYtUwT/uy/c611Gcm8BgDwK9gpeTOC
 TiFRTiGav00L+Omh0VPDXU6DYYoKncNNWM5j0TVYcEFC/sUHC1BAcNoY2
 W8UMly2gpG2E06iFHbjYVk2oTNUZthUi5yowCfH3SBEDpr23GH0qDJeIj
 as0fBoqjZge9qxKFYPLMottd26gB3jEqhgt/0CdL6+JBGvgPKCfNVHI9X Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="287273030"
X-IronPort-AV: E=Sophos;i="5.93,198,1654585200"; d="scan'208";a="287273030"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2022 07:06:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,198,1654585200"; d="scan'208";a="777149449"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 28 Jul 2022 07:06:58 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 28 Jul 2022 07:06:57 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 28 Jul 2022 07:06:57 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 28 Jul 2022 07:06:57 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 28 Jul 2022 07:06:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JuHHPWNe/0plglDNpnnLy/kEyq6mU7wih8Loa+fX6N95ysjVf/Y2vtITuOEdJIo8swbbTs8UxdSK/JnslvraTqbRg9l2gvr77SjqkkqlnXbahTjln/Y+I8HgNgGIVKYJLQ76EMaVxilujtjmGeKeqeqPz9g2twlx9890KjsHGFWADYiEKIA8oXdb3UIb+QZddXCcaFXy/+HBZznnhB4X4zamtsvevvnaq79ShFgYHG9mleTlp1theLH1nrjz2O/72W3nQ3VlSMDJyE/cekNmgkrTYUTMqP8XQdszPpma33PQH7gosJTNaXSOp4ZYo+4UrUWfuTb2pdYA0F+Fkr71yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Nj8kwPsA8XqCuPSY9qgQoBlkjGLowmjEDtXHFiiJqI0=;
 b=E0HfnRLI/u2xca1aGv20C6qmadjzEmxfEam83iQvtH4o0VsQ6YmY470Mnevo6JICdy5ce4SIP5uf5386Zm+LKyGvrhZhnKu4IOIXzKu+J1eNjUZhtVTuKPDTw3XLJ0HlX5gREWrFV84uwW+iRGkG4mhO08mc/ubaIi6A06crmLWJADkJHl2/nRAJtTYZQrLFoFqQxxu/ThCs2jVc4dVLr15gPbFjCIy9vPdnEd0b170ERka1qOp6W8jC3mCoQfVCzFFnS/dEBv9+uth857SQqZOAY2G0HnvpgsBGqxR9/cZUgDwiFWMDL8D4wq8f735M70f3viUClxKGBSRGOp4IHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 MN2PR11MB3662.namprd11.prod.outlook.com (2603:10b6:208:ee::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5458.19; Thu, 28 Jul 2022 14:06:39 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::f866:137e:cb07:5adf]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::f866:137e:cb07:5adf%6]) with mapi id 15.20.5482.010; Thu, 28 Jul 2022
 14:06:39 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 1/2] drm/i915/d12+: Disable DMC handlers
 during loading/disabling the firmware
Thread-Index: AQHYolog7thfNuWMUE2xoeyDLRwMKq2T0ZLg
Date: Thu, 28 Jul 2022 14:06:39 +0000
Message-ID: <DM4PR11MB636090D788C91B09AD9D7EF0F4969@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20220727164523.1621361-1-imre.deak@intel.com>
 <20220728081440.1676857-1-imre.deak@intel.com>
In-Reply-To: <20220728081440.1676857-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5817baf4-1952-4f70-dd37-08da70a26444
x-ms-traffictypediagnostic: MN2PR11MB3662:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 89+j0Qjjob64ELuGzJ4PQFsbvRy5Pw2NFsOl9CGfjPIrO764TbNTY8A44TCe/qa+M/I+wGLtEm9U2uZ/YItjz9Tgb8MHjIDsjsOKn1qUZDcfVa5U4lptApLi8kkbrRQSk/L5JB5DYoXI2fnCwghI3d29HN8X1BSsz0ZVOzyhiZuLvdlxzorSq1Pjm7GAmSXmVNj1BVzdn80JfwuNz94wyyizku5xx1UfG5FD9bcbffPr2umvKjxk2m0dRjDXQtIKU6jV4v5PK9rNrSq22FT3CF9AmJMMOIvhnMh1+RQKmbavY/6c3l7M2QER2zcuGQH2EPK88kolpafOM3bycPj84rI6TTL3QZ7pm+MkW05+OvDbGWTECVs/8lY6KZONrRgskJWMi2CNKE2dTlwx/9igKg+oWGAdA5AUMO0+EnhRTZSEryVe2+EVEAbbDhcyoynotym7rvmQ6SxUevWwswIQ9zZXuVoYGv7xfTVYEYEsUukwWnj14Hy4s8eG1s1Lyz807lut3MPqdIeLHq1+TEzGOJG43Yo0nAag2l/NEGK39ZLqYlz9AIk6qsZi8xKUS3HG1G/p1PEsafTiQPLAmx9ByPkG5hCQFNLbvHnwEDXR2AaSQBRsuMIU5Owm9ng10MkOp5yT+Z1On9UNGSWfiddEgH0reM7CKBBi0yAe2+r/tzkCTY7j9OXmq50j7anfffet42BNbrLFRbRRKnXm1xXOWqbfCZcV3erBTBO85SKDhYHGCEGR0fD+j5jnn0naVc05Gw31gKZwM3AbdjS1TUZojtmxMjsagosmoF4TLEiUI+0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(376002)(366004)(346002)(396003)(136003)(52536014)(8936002)(478600001)(86362001)(186003)(33656002)(53546011)(5660300002)(2906002)(9686003)(26005)(6506007)(38100700002)(41300700001)(7696005)(122000001)(38070700005)(82960400001)(83380400001)(55016003)(66946007)(66556008)(71200400001)(8676002)(76116006)(66476007)(64756008)(66446008)(110136005)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JiLRjtdAotwrxkoI/40khYNTTumrtMiNG7qvT/o/NrKpFzMr73OT1Z39VKXa?=
 =?us-ascii?Q?NdHLhzN8f6dczC1Tb5WKX/RaTc1jxS4KZ1iyQcH/x1T3YHOo56zben/QiWhv?=
 =?us-ascii?Q?I2vBJ4X6C/9eCZXz6KkcrY85mYL1GpLHdPh/apMo3cQ4IDSML8JQx/0BpUxk?=
 =?us-ascii?Q?idqTrWu0EaREx2v6hU+Zlzqwblk9ibHDmTmvsXeAEkBzIKNchqGmKAbUm1yO?=
 =?us-ascii?Q?ZUuw+ZpLIcxOVLkeSVkbTB6ATjWTyiTEhYHtWbdbSwM8QDbN6dFTqmzCcEP+?=
 =?us-ascii?Q?G7li0nR3I1cNzWAhLpvy+4jK0goHkvl22MGU1SbjusCjrfncAqSSAFHMrKxc?=
 =?us-ascii?Q?2wV9DhvZ+Q3Vi1fy7B2C8+pRWQmMNBhCzPz7FxXTh/xzckgtKaq2e2Wt6mZ1?=
 =?us-ascii?Q?j/oFev8hgz1NOJekYpN6/BCzJdM/ZQG0CvkSPCspPKjf7RTFe/38eidRp7BA?=
 =?us-ascii?Q?sNuM/3JKdMQcyYDFh2tJlvpIW2rmvyMoSzdS5zsS/h+Y2/JdCHorWmPHrHhV?=
 =?us-ascii?Q?3QWwVjwo2fRpmTqUi1KrfquBdq4qVNrrMRMhPxmTx76Mfmb7So37U2M/m9ep?=
 =?us-ascii?Q?8DAYnu4+lVH/vU48hCCsPNXRKXCN2njSMTZ+fqBY7pjdCxEK/6hM7vBEp8oA?=
 =?us-ascii?Q?bzHLgnY9ROBoQO1+Fxce/Yu5DuCMP9uKpFLhnZLygdAq4OIlus/n5tpENPNj?=
 =?us-ascii?Q?MLjk2Aw9et+AYSgDca3hLBef9NoKHbd5oJ0ccQ0/fbi77oA+p1/KFwxUDZdu?=
 =?us-ascii?Q?LAti2bxn3EV8W0NJu3bbqTBu0d914mRY5cexZGqHIuEBcrfVoMEdhpMbfa19?=
 =?us-ascii?Q?CLM2kqS0nutQzWyFC4XaUnQrbXvo9RqUJO2iYHEmqyKYefG5lXCWwopwzEYf?=
 =?us-ascii?Q?AOEPKPKzHhuTNznV2GbgyTG/TfNKi2wlOSPBTla37Eh7bOhdNqGx6FbNT1wN?=
 =?us-ascii?Q?he2DL/mrQLJSOZpEjP0vViZAJYNdtyWvIElZlVGTzEaNvv5IE4qjUv3o9dvM?=
 =?us-ascii?Q?vZwlbbdnEd3y9s4ZwpwDqvwHuJotEvjG2YiX5JEzPPLPvQLNGIcr+BLd/TwH?=
 =?us-ascii?Q?dSfVNtFq8rjcT4mMEnqXWGGDuasHW4g6YIznxJ2K9JUnJRbqTjEKGUGye9Ap?=
 =?us-ascii?Q?LEzAHTmlDLBdkyRoi13jd5MTvcZHO0WVKweZ+klQZWBuv0dCl23AdWKNPiuz?=
 =?us-ascii?Q?VZcCBECfnl7q1I1gMCtRYQbpcGb75AxgigNKiI+pWuCBNoNkG0lFnGI2XqfG?=
 =?us-ascii?Q?1+Q1sCkBUujvL4a2qtT7aYPGokC2NqAUp+IBycgVfNvFj65jfsQAML0y+Yts?=
 =?us-ascii?Q?1TQoT7WTaYSvn3S8mvo2T3ZmTayYfqpjLLLnmEXgwdkfTCkwI4py1iRBtiC4?=
 =?us-ascii?Q?peFuswFuhEM73jYIvGMyqW37LAhlhDwMmZht8VdxLJ9gA6DHW5GImoAII8Ee?=
 =?us-ascii?Q?tIS+ZyXkUSqwomnDgvyOD/Qsn540l5p14mhn3i2QG5Y8CI5xXrsn4cMqp+RP?=
 =?us-ascii?Q?KVMfVAZbwt4MVXbnZna8fzN2ikz+TR/4e3YNIDX7tYWd4u2WI2ViFuSb8dUw?=
 =?us-ascii?Q?/q2DbI1uagOQlCKsSIttfT3FO+W4wHwuipyCjjAc?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5817baf4-1952-4f70-dd37-08da70a26444
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jul 2022 14:06:39.5124 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2zoBU6OeyZDHSmKv6SG8IFIiAeJdD8QqV/XZ+MrjPm3sCwnQksPcNpZHcSnoGBuEBhKBL49ljqhY+cPFoXHL3Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3662
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/d12+: Disable DMC handlers
 during loading/disabling the firmware
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Im=
re Deak
> Sent: Thursday, July 28, 2022 1:45 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915/d12+: Disable DMC handlers d=
uring
> loading/disabling the firmware
>=20
> Disable the DMC event handlers before loading the firmware and after unin=
itializing
> the display, to make sure the firmware is inactive. This matches the Bspe=
c
> "Sequences for Display C5 and C6" page for GEN12+.
>=20
> Add a TODO comment for doing the same on pre-GEN12 platforms.
>=20
> v2:
> - Add a macro for the number of event handlers.
> - Disable the event handlers only on GEN12+.
> - s/dev_priv/i915/ in docbook comment.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  .../drm/i915/display/intel_display_power.c    |  3 +
>  drivers/gpu/drm/i915/display/intel_dmc.c      | 56 +++++++++++++++++--
>  drivers/gpu/drm/i915/display/intel_dmc.h      |  1 +
>  drivers/gpu/drm/i915/display/intel_dmc_regs.h |  2 +
>  4 files changed, 56 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 589af257edebc..22f65a9968c6a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1433,6 +1433,7 @@ static void skl_display_core_uninit(struct
> drm_i915_private *dev_priv)
>  		return;
>=20
>  	gen9_disable_dc_states(dev_priv);
> +	/* TODO: disable DMC program */
>=20
>  	gen9_dbuf_disable(dev_priv);
>=20
> @@ -1500,6 +1501,7 @@ static void bxt_display_core_uninit(struct
> drm_i915_private *dev_priv)
>  		return;
>=20
>  	gen9_disable_dc_states(dev_priv);
> +	/* TODO: disable DMC program */
>=20
>  	gen9_dbuf_disable(dev_priv);
>=20
> @@ -1675,6 +1677,7 @@ static void icl_display_core_uninit(struct
> drm_i915_private *dev_priv)
>  		return;
>=20
>  	gen9_disable_dc_states(dev_priv);
> +	intel_dmc_disable_program(dev_priv);
>=20
>  	/* 1. Disable all display engine functions -> aready done */
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> b/drivers/gpu/drm/i915/display/intel_dmc.c
> index fa9ef591b8853..f73205d1f3164 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -277,6 +277,17 @@ static void gen9_set_dc_state_debugmask(struct
> drm_i915_private *dev_priv)
>  	intel_de_posting_read(dev_priv, DC_STATE_DEBUG);  }
>=20
> +static void disable_event_handler(struct drm_i915_private *i915,
> +				  i915_reg_t ctl_reg, i915_reg_t htp_reg) {
> +	intel_de_write(i915, ctl_reg,
> +		       REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
> +				      DMC_EVT_CTL_TYPE_EDGE_0_1) |
> +		       REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
> +				      DMC_EVT_CTL_EVENT_ID_FALSE));
> +	intel_de_write(i915, htp_reg, 0);
> +}
> +
>  static void
>  disable_flip_queue_event(struct drm_i915_private *i915,
>  			 i915_reg_t ctl_reg, i915_reg_t htp_reg) @@ -299,12
> +310,7 @@ disable_flip_queue_event(struct drm_i915_private *i915,
>  		return;
>  	}
>=20
> -	intel_de_write(i915, ctl_reg,
> -		       REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
> -				      DMC_EVT_CTL_TYPE_EDGE_0_1) |
> -		       REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
> -				      DMC_EVT_CTL_EVENT_ID_FALSE));
> -	intel_de_write(i915, htp_reg, 0);
> +	disable_event_handler(i915, ctl_reg, htp_reg);
>  }
>=20
>  static bool
> @@ -356,6 +362,27 @@ disable_all_flip_queue_events(struct drm_i915_privat=
e
> *i915)
>  	}
>  }
>=20
> +static void disable_all_event_handlers(struct drm_i915_private *i915) {
> +	int id;
> +
> +	/* TODO: disable the event handlers on pre-GEN12 platforms as well */
> +	if (DISPLAY_VER(i915) < 12)
> +		return;
> +
> +	for (id =3D DMC_FW_MAIN; id < DMC_FW_MAX; id++) {
> +		int handler;
> +
> +		if (!has_dmc_id_fw(i915, id))
> +			continue;
> +
> +		for (handler =3D 0; handler < DMC_EVENT_HANDLER_COUNT_GEN12;
> handler++)
> +			disable_event_handler(i915,
> +					      DMC_EVT_CTL(i915, id, handler),
> +					      DMC_EVT_HTP(i915, id, handler));
> +	}
> +}
> +
>  /**
>   * intel_dmc_load_program() - write the firmware from memory to register=
.
>   * @dev_priv: i915 drm device.
> @@ -372,6 +399,8 @@ void intel_dmc_load_program(struct drm_i915_private
> *dev_priv)
>  	if (!intel_dmc_has_payload(dev_priv))
>  		return;
>=20
> +	disable_all_event_handlers(dev_priv);
> +
>  	assert_rpm_wakelock_held(&dev_priv->runtime_pm);
>=20
>  	preempt_disable();
> @@ -405,6 +434,21 @@ void intel_dmc_load_program(struct drm_i915_private
> *dev_priv)
>  	disable_all_flip_queue_events(dev_priv);
>  }
>=20
> +/**
> + * intel_dmc_disable_program() - disable the firmware
> + * @i915: i915 drm device
> + *
> + * Disable all event handlers in the firmware, making sure the firmware
> +is
> + * inactive after the display is uninitialized.
> + */
> +void intel_dmc_disable_program(struct drm_i915_private *i915) {
> +	if (!intel_dmc_has_payload(i915))
> +		return;
> +
> +	disable_all_event_handlers(i915);
> +}
> +
>  void assert_dmc_loaded(struct drm_i915_private *i915)  {
>  	drm_WARN_ONCE(&i915->drm,
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h
> b/drivers/gpu/drm/i915/display/intel_dmc.h
> index 41091aee3b47b..67e03315ef999 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
> @@ -47,6 +47,7 @@ struct intel_dmc {
>=20
>  void intel_dmc_ucode_init(struct drm_i915_private *i915);  void
> intel_dmc_load_program(struct drm_i915_private *i915);
> +void intel_dmc_disable_program(struct drm_i915_private *i915);
>  void intel_dmc_ucode_fini(struct drm_i915_private *i915);  void
> intel_dmc_ucode_suspend(struct drm_i915_private *i915);  void
> intel_dmc_ucode_resume(struct drm_i915_private *i915); diff --git
> a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> index 238620b559662..5e5e41644ddfd 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> @@ -28,6 +28,8 @@
>  #define _DMC_REG(i915, dmc_id, reg) \
>  	((reg) - __DMC_REG_MMIO_BASE + _DMC_REG_MMIO_BASE(i915, dmc_id))
>=20
> +#define DMC_EVENT_HANDLER_COUNT_GEN12	8
> +
>  #define _DMC_EVT_HTP_0			0x8f004
>=20
>  #define DMC_EVT_HTP(i915, dmc_id, handler) \
> --
> 2.34.1

