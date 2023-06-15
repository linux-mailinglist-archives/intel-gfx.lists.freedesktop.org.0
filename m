Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F6A67321CD
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jun 2023 23:40:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAB7010E050;
	Thu, 15 Jun 2023 21:40:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE31D10E050
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jun 2023 21:40:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686865224; x=1718401224;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=C0LWzM/tWPjpnnjaITJRB0rkLT/azUnJpRivCYgWBo0=;
 b=kAjIgTJ/AZ5RpSGSYg6i8jYyIo3c0RnPV1KBXB75DvANM0RmBLPDAJdY
 o6XBR6mGhnf/R6VPAg9djO7Qu1HsvywwCP6tbzsZYcRBzW/FwtlAwuqMk
 ShdI/nCQQHEMISUWOOUXUDWbJIWtsfpKy0GfoDxZ6IB4c7ftqfEn7dsBZ
 lhLMPdLJmWjrJL6i6GowLibC4e2jnexpJwRPVQERTY2SfRCImfZcADKP4
 fiwUi8S8O02OXjGSSGAzSABBlZeoueQoDDMpdCVAz2SePQzF+r7yIL87i
 jRFdeLJJcWlLWJ3KjXL+PLEreiOS3St4yvT/Qq/UdGhWdiARZw1S5ye03 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="422691295"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="422691295"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 14:40:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="1042841490"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="1042841490"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 15 Jun 2023 14:40:22 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 15 Jun 2023 14:40:22 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 15 Jun 2023 14:40:22 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 15 Jun 2023 14:40:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YFlcMv/zJcWMW/jfpHuYAJ6IhpHeIuXQU2FrZx1IS3sbLMthEU3c4aiPC/Atp+HGvyZVVDp7ZyZhmSy/qj8Uh3kVK1aqXOkk8t6D2utYXIXmFko0zvl2bSGPrYhLG/ESSAJLOMTCU3FKMC+gsU/9QjjfKDw1gLY0KtfGJCBPzjFZI1QCZ3iR+6u/qvpvSr4vCjXyPgS9WRIZj3g70KPTZ0vilkMCA3N/WCimEZrj+VoUPXEEo7MxuXLAYuEzjvi5Ltq1ZQ7g5POxhOMQqWmjXfeRAQASl/FyG5d5zTnCAuBsnI2ROAEx4QS5PXlfCbQJb0nRNv2bvjLuB9T4RV4Jag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qWviC9AJUMNsdv3AWLfL3cjIJlxb760zJMegKaPGx2M=;
 b=NjCYpjXnHV4RgH/jLdqVE80tiCW1tD0a4Ae07SrCVfSNUyjDuBvHLsMlB/c9DTsNCfHKQjlS1WqapXOfSbHiiwZ+30oarBdbcL/wuN7bMdVDIy2LzbujHO0zKF1qisB8iNhT95y6ZZb1HNuTVQ/ZUobf0GvxtNjpuY4NCWDhlkojzVMb8sGCRVhSQv3NYOTmHveD1SKrW/7Wexsq1pKE7HJ9gqBWj9nrPOSo0fTV7SLfN5nNHi8S9ushXfoL6Elw2FVqjNq2QI5xtcPaEJSgVHuCFAhjJUFHmied+TmKNeXNUwG45yHyrO2j9EHlv0wugwqPK0qghErV4cKrrt+Y5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com (2603:10b6:a03:4f4::20)
 by DM4PR11MB5358.namprd11.prod.outlook.com (2603:10b6:5:395::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.25; Thu, 15 Jun
 2023 21:40:14 +0000
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::dc02:fa20:2d25:dc]) by SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::dc02:fa20:2d25:dc%5]) with mapi id 15.20.6455.039; Thu, 15 Jun 2023
 21:40:14 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 05/11] drm/i915/KBL: s/KBL/KABYLAKE for
 platform/subplatform defines
Thread-Index: AQHZn0ZeZ3jds0YY40WADsWP417a26+MZLqg
Date: Thu, 15 Jun 2023 21:40:14 +0000
Message-ID: <SJ2PR11MB7715990B0A0109BED08319ADF85BA@SJ2PR11MB7715.namprd11.prod.outlook.com>
References: <20230615050015.3105902-1-dnyaneshwar.bhadane@intel.com>
 <20230615050015.3105902-6-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20230615050015.3105902-6-dnyaneshwar.bhadane@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB7715:EE_|DM4PR11MB5358:EE_
x-ms-office365-filtering-correlation-id: f12b7234-a0b1-4a37-9176-08db6de91a9b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GuH44t3xeSyemt5UkxdGspHXaaJYQaTGWh5D9JQd9hP3Jq75tgghtfnPQJChkwmyenVUO0APJdbkbiRQBM580RzRPrq4hoWFVfdM0bjHzk+kR+e7X0fy2rXoeu9diLAun82J6+USObCQ2HlBjKI8JqjJcLSAmYh7N+z+putASccEo0c+41ks9sgRmw2OwV2I9aV9vnqN3qisPgJVaA1E2JN45TrEwjZxZVUY/qZENxm564TkPSGCtvQXuSlxhW/z+OGUOsKeiKF5w0Jb3rDeD5dhJ0kbX+7P973Y577EDy0a8eyPLuCncRmFonXzObRhydv/ICgQmTXdyqt/xuloKpM01habIp8wUWNXlLqqliZatgRSANO/gUc8xGdmi7tkTrbs2L1/EgT8lze58eia/UZKZ2S/cpMCruROq6T0KHH2BolCCocR99roTjZGh0LKL56QL23/7p4STCoHdqz7z3H3ce6Jm/jAuhEisCiP3+W6rlv13vLMw/R7UR0t+WXuOkQ3q6gC/DyKuCibYAM7He7Qtl0nE8ITvAhnfbZgVheiptXqexQupe7Q7oQ/Zbl0Su5ZqQAFUrtp1WEBoRxTxvEKbTwoRpVauV8/HPhItxRQFHJOFjJxh3Bs2QYcBa02
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB7715.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(376002)(366004)(346002)(39860400002)(136003)(451199021)(110136005)(8676002)(41300700001)(7696005)(86362001)(66446008)(8936002)(66556008)(66946007)(66476007)(316002)(33656002)(64756008)(71200400001)(76116006)(4326008)(38070700005)(9686003)(478600001)(107886003)(26005)(55016003)(5660300002)(52536014)(83380400001)(53546011)(6506007)(2906002)(186003)(38100700002)(82960400001)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rw+R05IrQNIACKfZdTHXMIShDC0odeoWA0Rj7VEeCgRv5/4eeQO/d6O9St1o?=
 =?us-ascii?Q?/IGZ/WmN097jxsm7DV/1ee4GyIFz/BPeW6QcExyUq/5FBJsaOEotBkiIiTFM?=
 =?us-ascii?Q?36d6sQzEP4umF5ZKmpG5omYcJim+eCI/NRAMEyap3B1tzuKiPWegQgGPoj6k?=
 =?us-ascii?Q?V0IqTOEWU4eL/GbUbYq90ueBlJbwQBN0KSbkRRpthrmA/FLL3/YCx8GJEbAW?=
 =?us-ascii?Q?bIcKKIy5dCFX0P9c5CkBot5BLmQFGPnTDGPcqudZyXRp407CTymgETeOVXoe?=
 =?us-ascii?Q?0cKRqulmIbM6Pww7BM6mMrG5cB6B6C1fnN8v2vT1fs+PHbk9rNaR0Dtqr6BC?=
 =?us-ascii?Q?GKQl4QRVHHgthdtLQ5a17vm2DvCF+Wi8AuKDIZOk9sa4oJDyqlnhC3/jgyL5?=
 =?us-ascii?Q?yoAIWuV+jM0+1m0L6UCRgeTCFqM5IqSJ5BNGpIzLoHjDOqIfEc9vIxJufaX/?=
 =?us-ascii?Q?6h7kvJMo4n0Hk681dBe62HmlJ5sT/9AtJlGW1Z4ZvRCx6iUP3x+D4KkKqTI3?=
 =?us-ascii?Q?5KVFA4WekZbt0bd8XA1GyuSlo/+A6wMO6df9Bmi//kQP11LHY0aPLCKfvV+7?=
 =?us-ascii?Q?LyaI9RA3oipeIqHRPEfQecm7tY78I15CJzrDlX62Wykqc9xS/4zzD6DW41UA?=
 =?us-ascii?Q?uNC0RdpQfQ6TQhqcEbpEwQyHs2GDc6oe4oQr6pqYUnQB9zWXnKrcoVZztGFS?=
 =?us-ascii?Q?9Mg2nFji3fQp01yyFdZ6uNGqZTeRb16mLv+1qYV/Ou5/eeAky7+llfNEZ9kB?=
 =?us-ascii?Q?qXc8SQrpGl1758wu1jdMUTWd0bOl19tdfRw/caIEf/3yYyvY6Im7j8WU34Im?=
 =?us-ascii?Q?bx6p/Q4jqTizqYSyeeK9ZRg+/1dU39EPjMDFFT/Wu6KakjaaSAmnvSAYYneg?=
 =?us-ascii?Q?w6NKxeT6b4LA28X8I7pCwK21dVYPnQDlm8JYswAp9cVitpedbUjeuXcFSVnV?=
 =?us-ascii?Q?yxlZURuOm5keb4K+yW4wusLNCBeaIOpSpKY7FM+HwPPb8bWYc4JjiPsMd6gb?=
 =?us-ascii?Q?j3iW+nsXGCcMswk+sFQhnn4mmE/TKb4ZHDpspCEbqYfU/dC7Zf0JMy8tuuHt?=
 =?us-ascii?Q?5eD127wX4n1O6XM9e/bmZWJogYdeXydWSc8+TYzuXFv/oiC7gPfd04/TLuvV?=
 =?us-ascii?Q?LNOQlDSZZ6QA16AGSJXAlaPwbC3j5uTDCofgipmXnLTKQhPok5Gu2WEaX1Z3?=
 =?us-ascii?Q?+fa8ZyM5+EqgBgsb53SnRyBCYZLEjVSMWCWkqAnzsJxbEZlj4Owa/3LwxDxZ?=
 =?us-ascii?Q?kIuWWgigZh69qE6p/qtnMsATlKjGavnix4VKx4y3wAWiU+YiQLai0hdXUwrn?=
 =?us-ascii?Q?KSqar+vwaqEMq+ZGuouhIY6SyMg2P5ETh3DV7OLqQWVEOa6JTt2ajqRHx7JX?=
 =?us-ascii?Q?kLyPStYR6DYX+Vxe4y53le2WKwlPR3nu/A7EGpe8f5qC0fmhij7DCe4Yx2g2?=
 =?us-ascii?Q?55XJ9bV7RT/9CZ1ULYCPZ0kZwuCGjwKRSn7WIgYLARZvKcid6PPG2yXJIRWW?=
 =?us-ascii?Q?4oQxZdWZdA0R7D2Bl3MAqyFrETZ1AdFaXukvSC06mgCiSsmMm2PdntlAmRFJ?=
 =?us-ascii?Q?At0qRXnaDXugkwiRsk9f+6EmlFoBeZZzxLiLvVal?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB7715.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f12b7234-a0b1-4a37-9176-08db6de91a9b
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2023 21:40:14.4179 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Wv0XskS92bvy7fuI3f2gupniY2tdq/msW0oJ0PpSuJmbSvPG+ey92Zj7uToU3H+pTDsaudrbBM3TQ6uV+3aQXTUTLZjm9h1rpfMtw8HWhqA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5358
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 05/11] drm/i915/KBL: s/KBL/KABYLAKE for
 platform/subplatform defines
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

OK one thing that holds true for all patches in the series is the subject: =
drm/i915/PLATFORM:
The general convention is to have platform is lower cases I the subject pre=
fix. So all occurrences of drm/i915/PLATFORM should be replaced with drm/i9=
15/platform.
This is something I have missed mentioning in the previous patches that gav=
e a r-b to.


Apart from the above mentioned platform prefix feedback,
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> -----Original Message-----
> From: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> Sent: Wednesday, June 14, 2023 10:00 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Atwood, Matthew S <matthew.s.atwood@intel.com>; Srivatsa, Anusha
> <anusha.srivatsa@intel.com>; Bhadane, Dnyaneshwar
> <dnyaneshwar.bhadane@intel.com>
> Subject: [PATCH 05/11] drm/i915/KBL: s/KBL/KABYLAKE for
> platform/subplatform defines
>=20
> Follow consistent naming convention. Replace KBL with KABYLAKE.
>=20
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c |  4 ++--
>  drivers/gpu/drm/i915/gt/gen8_engine_cs.c           |  2 +-
>  drivers/gpu/drm/i915/gt/intel_workarounds.c        |  6 +++---
>  drivers/gpu/drm/i915/i915_drv.h                    | 12 ++++++------
>  drivers/gpu/drm/i915/intel_clock_gating.c          |  4 ++--
>  5 files changed, 14 insertions(+), 14 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> index 9e34cc103aeb..84b09d188d2a 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> @@ -1718,9 +1718,9 @@ void intel_ddi_buf_trans_init(struct intel_encoder
> *encoder)
>  			encoder->get_buf_trans =3D icl_get_mg_buf_trans;
>  	} else if (IS_GEMINILAKE(i915) || IS_BROXTON(i915)) {
>  		encoder->get_buf_trans =3D bxt_get_buf_trans;
> -	} else if (IS_CML_ULX(i915) || IS_CFL_ULX(i915) || IS_KBL_ULX(i915)) {
> +	} else if (IS_CML_ULX(i915) || IS_CFL_ULX(i915) ||
> +IS_KABYLAKE_ULX(i915)) {
>  		encoder->get_buf_trans =3D kbl_y_get_buf_trans;
> -	} else if (IS_CML_ULT(i915) || IS_CFL_ULT(i915) || IS_KBL_ULT(i915)) {
> +	} else if (IS_CML_ULT(i915) || IS_CFL_ULT(i915) ||
> +IS_KABYLAKE_ULT(i915)) {
>  		encoder->get_buf_trans =3D kbl_u_get_buf_trans;
>  	} else if (IS_COMETLAKE(i915) || IS_COFFEELAKE(i915) ||
> IS_KABYLAKE(i915)) {
>  		encoder->get_buf_trans =3D kbl_get_buf_trans; diff --git
> a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> index eb72610a8588..ec0771dc662a 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> @@ -43,7 +43,7 @@ int gen8_emit_flush_rcs(struct i915_request *rq, u32
> mode)
>  			vf_flush_wa =3D true;
>=20
>  		/* WaForGAMHang:kbl */
> -		if (IS_KBL_GRAPHICS_STEP(rq->engine->i915, 0, STEP_C0))
> +		if (IS_KABYLAKE_GRAPHICS_STEP(rq->engine->i915, 0,
> STEP_C0))
>  			dc_flush_wa =3D true;
>  	}
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index a62dcbc2f901..b632fb5592a8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -584,7 +584,7 @@ static void kbl_ctx_workarounds_init(struct
> intel_engine_cs *engine,
>  	gen9_ctx_workarounds_init(engine, wal);
>=20
>  	/* WaToEnableHwFixForPushConstHWBug:kbl */
> -	if (IS_KBL_GRAPHICS_STEP(i915, STEP_C0, STEP_FOREVER))
> +	if (IS_KABYLAKE_GRAPHICS_STEP(i915, STEP_C0, STEP_FOREVER))
>  		wa_masked_en(wal, COMMON_SLICE_CHICKEN2,
>  			     GEN8_SBE_DISABLE_REPLAY_BUF_OPTIMIZATION);
>=20
> @@ -1185,7 +1185,7 @@ kbl_gt_workarounds_init(struct intel_gt *gt, struct
> i915_wa_list *wal)
>  	gen9_gt_workarounds_init(gt, wal);
>=20
>  	/* WaDisableDynamicCreditSharing:kbl */
> -	if (IS_KBL_GRAPHICS_STEP(gt->i915, 0, STEP_C0))
> +	if (IS_KABYLAKE_GRAPHICS_STEP(gt->i915, 0, STEP_C0))
>  		wa_write_or(wal,
>  			    GAMT_CHKN_BIT_REG,
>=20
> GAMT_CHKN_DISABLE_DYNAMIC_CREDIT_SHARING);
> @@ -2933,7 +2933,7 @@ xcs_engine_wa_init(struct intel_engine_cs *engine,
> struct i915_wa_list *wal)
>  	struct drm_i915_private *i915 =3D engine->i915;
>=20
>  	/* WaKBLVECSSemaphoreWaitPoll:kbl */
> -	if (IS_KBL_GRAPHICS_STEP(i915, STEP_A0, STEP_F0)) {
> +	if (IS_KABYLAKE_GRAPHICS_STEP(i915, STEP_A0, STEP_F0)) {
>  		wa_write(wal,
>  			 RING_SEMA_WAIT_POLL(engine->mmio_base),
>  			 1);
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 3981b890f053..f19915115cff 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -614,9 +614,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  	IS_SUBPLATFORM(i915, INTEL_SKYLAKE, INTEL_SUBPLATFORM_ULT)
> #define IS_SKL_ULX(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_SKYLAKE, INTEL_SUBPLATFORM_ULX) -
> #define IS_KBL_ULT(i915) \
> +#define IS_KABYLAKE_ULT(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_KABYLAKE, INTEL_SUBPLATFORM_ULT)
> -#define IS_KBL_ULX(i915) \
> +#define IS_KABYLAKE_ULX(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_KABYLAKE, INTEL_SUBPLATFORM_ULX)
>  #define IS_SKL_GT2(i915)	(IS_SKYLAKE(i915) && \
>  				 INTEL_INFO(i915)->gt =3D=3D 2)
> @@ -624,9 +624,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  				 INTEL_INFO(i915)->gt =3D=3D 3)
>  #define IS_SKL_GT4(i915)	(IS_SKYLAKE(i915) && \
>  				 INTEL_INFO(i915)->gt =3D=3D 4)
> -#define IS_KBL_GT2(i915)	(IS_KABYLAKE(i915) && \
> +#define IS_KABYLAKE_GT2(i915)	(IS_KABYLAKE(i915) && \
>  				 INTEL_INFO(i915)->gt =3D=3D 2)
> -#define IS_KBL_GT3(i915)	(IS_KABYLAKE(i915) && \
> +#define IS_KABYLAKE_GT3(i915)	(IS_KABYLAKE(i915) && \
>  				 INTEL_INFO(i915)->gt =3D=3D 3)
>  #define IS_CFL_ULT(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_COFFEELAKE,
> INTEL_SUBPLATFORM_ULT) @@ -652,9 +652,9 @@ IS_SUBPLATFORM(const
> struct drm_i915_private *i915,
>=20
>  #define IS_SKL_GRAPHICS_STEP(p, since, until) (IS_SKYLAKE(p) &&
> IS_GRAPHICS_STEP(p, since, until))
>=20
> -#define IS_KBL_GRAPHICS_STEP(i915, since, until) \
> +#define IS_KABYLAKE_GRAPHICS_STEP(i915, since, until) \
>  	(IS_KABYLAKE(i915) && IS_GRAPHICS_STEP(i915, since, until)) -#define
> IS_KBL_DISPLAY_STEP(i915, since, until) \
> +#define IS_KABYLAKE_DISPLAY_STEP(i915, since, until) \
>  	(IS_KABYLAKE(i915) && IS_DISPLAY_STEP(i915, since, until))
>=20
>  #define IS_JASPERLAKE_EHL_GRAPHICS_STEP(p, since, until) \ diff --git
> a/drivers/gpu/drm/i915/intel_clock_gating.c
> b/drivers/gpu/drm/i915/intel_clock_gating.c
> index a27600bc5976..bb349043522c 100644
> --- a/drivers/gpu/drm/i915/intel_clock_gating.c
> +++ b/drivers/gpu/drm/i915/intel_clock_gating.c
> @@ -456,12 +456,12 @@ static void kbl_init_clock_gating(struct
> drm_i915_private *i915)
>  	intel_uncore_rmw(&i915->uncore, FBC_LLC_READ_CTRL, 0,
> FBC_LLC_FULLY_OPEN);
>=20
>  	/* WaDisableSDEUnitClockGating:kbl */
> -	if (IS_KBL_GRAPHICS_STEP(i915, 0, STEP_C0))
> +	if (IS_KABYLAKE_GRAPHICS_STEP(i915, 0, STEP_C0))
>  		intel_uncore_rmw(&i915->uncore, GEN8_UCGCTL6,
>  				 0, GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
>=20
>  	/* WaDisableGamClockGating:kbl */
> -	if (IS_KBL_GRAPHICS_STEP(i915, 0, STEP_C0))
> +	if (IS_KABYLAKE_GRAPHICS_STEP(i915, 0, STEP_C0))
>  		intel_uncore_rmw(&i915->uncore, GEN6_UCGCTL1,
>  				 0, GEN6_GAMUNIT_CLOCK_GATE_DISABLE);
>=20
> --
> 2.34.1

