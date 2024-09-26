Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D518E986C27
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 07:52:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1327B10E123;
	Thu, 26 Sep 2024 05:52:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mv+ys634";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1BC410E123
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2024 05:52:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727329959; x=1758865959;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fwG5XKKt0bprBf9gfBUK+LIS2Qeqwi3cJEsgxTAa7mg=;
 b=mv+ys6347oCKimJUuzuUwRuDUK0fLdifW5UIpyISYwKQI0ZJsDBz63BV
 J7LbnICzQBRnL/lRJEBzG3F0W7GcbI4VOepYjp5bUOqHhR1ayTUGe2DAY
 bVLcvhlXScPGKUwbAs67dIohCY6j8rU2kQJ8bJQr/I/NgQqHic6q2ME6/
 KM3FSelFb81WBrAvSgbaekas6UsSIsrG9SvcDN9RGSsnPIHAIgv2A9vlZ
 g4/tVMLzYtdkLaT6oKl1T/DrOqqEBXs3ZREl7c4fsGfLYbEDlVT1PQlrn
 aRlt2FixcsQ+zIYiAxpBkqcNE5OwOCJxmi8MAFT9NCeFhism1xYpjvB8P Q==;
X-CSE-ConnectionGUID: zfmGgS1WR36J0D6o4+7VrQ==
X-CSE-MsgGUID: tczXvV1oQre4b1kMfBRjFw==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="26353480"
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="26353480"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 22:52:35 -0700
X-CSE-ConnectionGUID: 0aQI3jI+SL2kguJLLK2h5A==
X-CSE-MsgGUID: BZAQNVC1ToCK7haPFTe4MQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="72473533"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Sep 2024 22:52:35 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 25 Sep 2024 22:52:35 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 25 Sep 2024 22:52:35 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 25 Sep 2024 22:52:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PN9djHlqG8/3Q749DQ5a9k04qaM7XoHnA75jFRlsQWDwQA832f5PnISeueQrS47R8mNOpQ8LEWrgcwXSjJYeupLXwfHjSQky8Nzk/gBlrEvJyuMeAop9mmXiK5X4IvobnGPE5EDNU0R6fmhjyYwN6LobsTKMC5vCVp+MmLu+rSP51hvf+fFm+1blZcG+jVoc0aItBNUDU46tsD49K7yE1NnmB+0d0b68J6aj5pA8IXRXHIQ/Dpy5mwZhN3vj4pwHmhg8oQLneGJfXIB7NBSEppP8n7Vn4C3PXBPbevIDQkjjyZSm1R7XtVp6L8Oqr/Rcpu+EFzis8cb9Xw1n/2FGNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SvjRxhRZPnpwyqm3Hc9H+mVoBUoQUvLLkBfIsqm4HsE=;
 b=efl7jHkLOt4PRlaYvNVEV9F9+FqHhMC3N88vDhDhzIZSaKMQNhq/jEXAuQSxEJHD2hChIwmK1yltuecp+n8rtpbloZQChx8EKbOPo6HAcFZwYhqgzCao+1xQNvORpZSerUmz1+q+Ex8XQ6cGg+bFn/5lx/Bf300bdMDNERXe2VI9aMyOSNpCXlFgZfdQAkfMxRHAUCrjYnDktOhqfL6QHHKq13PH7XkW4mAJo/D2qcPHVvgVFo6SI8d/ZQyAQTRgtk1uKArprYjbOtmsPIrp9cg805Pv86COJCb1Xc+0YJtnETQ36xrZlDr8WnkVSzfAgl6IzPhmxcVRLlTCmXlSeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by DM6PR11MB4673.namprd11.prod.outlook.com (2603:10b6:5:2a4::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.29; Thu, 26 Sep
 2024 05:52:27 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%2]) with mapi id 15.20.8005.021; Thu, 26 Sep 2024
 05:52:27 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
Subject: RE: [PATCH] drm/i915/vdsc: Add bpc check in intel_dsc_compute_params
Thread-Topic: [PATCH] drm/i915/vdsc: Add bpc check in intel_dsc_compute_params
Thread-Index: AQHbD824ic6NImfw80Sd0te/XysAA7Jpi7WAgAAEBgA=
Date: Thu, 26 Sep 2024 05:52:27 +0000
Message-ID: <SJ1PR11MB612966E084E28DDE2434EEC5B96A2@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20240926043332.1284692-2-suraj.kandpal@intel.com>
 <20240926053346.1391776-2-suraj.kandpal@intel.com>
In-Reply-To: <20240926053346.1391776-2-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|DM6PR11MB4673:EE_
x-ms-office365-filtering-correlation-id: 3022b2fd-77f5-4e3a-1a5d-08dcddef6705
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?mrTRzoImsEcBDNj+G5x1hT2PDI7XeMR+lQPnfafSfcJo+y++z8kROnC9DH2r?=
 =?us-ascii?Q?B/kxVzUL+GVCbXgz5cP7mhNIWxHL4oYuOmFT0YC/775OjLB1THjzJwzkLPbQ?=
 =?us-ascii?Q?Fw8yc24+awevgi/wfGzOHiESnAQtOeNptSxRQN7ytB3hrbdzEjnA0IXKxU9a?=
 =?us-ascii?Q?HEHQKMIIY0Wp6hTP12c1eLWV8CxZH31yVjMaQAfiRnAZf3vN31XBsUKBoEcS?=
 =?us-ascii?Q?U2OqnEMen6VhtiBsWOcQvNnzsbqDDVojH0pRQ2mpJI7raY9x2TsvN6xDjsZh?=
 =?us-ascii?Q?fHdWeq21U1XB4OP7KpsDpfEjSeOiS+wGJswad+LlWdsvmxs+DVrZlNkh+34l?=
 =?us-ascii?Q?Vo6b057IGBHRujQR8RosP9X+z9tkOolZfvlpMIqEIwYZZMpueNGx29EHEvvj?=
 =?us-ascii?Q?zFFKt4DB5pijXg8qt8DDnyi7vfG8yiWiWCP2TA5XmbOKaLHfR9hmXS0xu567?=
 =?us-ascii?Q?VdZkuSAhf+T00gTI5MVbHuG7P1evvw9pWvfjj8j+4+zVYDSorq05BZQK3dns?=
 =?us-ascii?Q?CdSE0ym8A9IFya/4+DPyYEiGO1DjQQb3Brh2ayVVxzE+xgSHPMji/VFixFAI?=
 =?us-ascii?Q?WY2meXimlRtprGoFVccn9rNzZH9br99agSWa4bch05yOR8JuBb+ULQEV1vZF?=
 =?us-ascii?Q?mz+y/aG3nCyfQ8v4fzd0bW0uxXVeBLRzK8Roe6gEwL/d7mrqHOItgO09mR+0?=
 =?us-ascii?Q?hIaXz7xfY5iUqnDtNDk+R1ZIBszlME1kafmd/dwE+cdSEOAMLUCUbDRObl3Z?=
 =?us-ascii?Q?LDXdkm/nqmqUS8UCwa7bQOREJU88HkDP7HLc6JpHGyRZM0UOudws0fQRaUtX?=
 =?us-ascii?Q?B+cwJsDCXeIP1nTX5wUaERWGfa855+Y86JpTaQXf0w7JhL3nCevLwJqdc7Gb?=
 =?us-ascii?Q?s0eWIr3DJOlNDge7Y7ko/tXTaNGuK+MrkC1ssTycX/xNAWpeTYKtCqFzc3Fw?=
 =?us-ascii?Q?HeVuKxnWMJ4HOvmtHCx7net5b8mJiOOCgaA7rFCMFfi9bD8miiGSwZ+mE/B8?=
 =?us-ascii?Q?MkYa/v5+70tk9uOklxuyzKdVNqQB9MGsW0VeMDiSHEG/zNdrftY6wZ+C/sR5?=
 =?us-ascii?Q?J6PMBu3BQBuqmCQ0a29AZpF1syG9507Vyhiq+mviI1oi0DIPT6+gOtm9hsnj?=
 =?us-ascii?Q?kwcpFPZspr0oNLEUX9kxWXM+/BvH+ykdtStfnHCoHfseCBgmfDc8Rlvr0W3O?=
 =?us-ascii?Q?5nMiUcIysacGzbfNpONc3LD/dyk4wOYRIkCruTqEfYeXz5x/YG2oaiPZpEtg?=
 =?us-ascii?Q?6z06nb/G0/kKHvgpvc6b8+VwR/gJoMSdWr0nWqDwG8ZQ+n9DrrgCY3qhWSyW?=
 =?us-ascii?Q?LB3y7mn0lyUdG1v/aXWINLUr980ParCtCDz9TN8RUuk19VnbscUQNbg33Je5?=
 =?us-ascii?Q?pJJHLnaR1gOd5qVOQYjVHSwcjCZnDJU6Vd1ih7IPeAxJD1Zl5w=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3zFC2vCVxmcBEcop4YLU7U5em74BhhTk2zeZHM03y+ww7i70xV+HbNS/hjAi?=
 =?us-ascii?Q?EbX5cI1X0XmGxSh39yb4Mdlq/5vNiQdrejDIR9fWkyUlBDwfdwlPpwLog6Ek?=
 =?us-ascii?Q?LI0DdN0bGMT1NSLtZzhOzqOEgoKgiT3maDGATl1KwXrYthpLJqEvfGSlRYAJ?=
 =?us-ascii?Q?fSnjdepc1cEj/VWrc3rUnXteuC08NYUrbR2dX0nHpAUg2F3JJx7Hluat8dYm?=
 =?us-ascii?Q?nnyCgbhZmLUe3lDE+ZXjGUJ+mvgnythEJPA1Hm0RCScyy/M0qMeVByc52Q6L?=
 =?us-ascii?Q?gf9OXcE+6S6ZJPUiwhlKPXdtHkWBpSP2F/sIhxPXsqeTyJynQ6k9RBzr/XY2?=
 =?us-ascii?Q?niHfBR29/RA3UeV9U0SzPlzJQ0aypLc/7zeIMuHUcVdHfMwPD/zkNfOGaIK2?=
 =?us-ascii?Q?Kw+baoAUo2dc2tZGEeEIDx0C4tQCX1dtBV3cdr1QVKP3AL9VYkqQ/CzjshGQ?=
 =?us-ascii?Q?K+tpCSHmOvN9KxezUiRB7WLhINAXnyaWwNVThKncxJ6zQ+RKtaqgCVLk+sPT?=
 =?us-ascii?Q?Vgf2zzrvOWZ4eQ5IGAV+OtQXtWHPUSKXTNc0SMnGoiTPFFRiBqBlIPpiadzq?=
 =?us-ascii?Q?Q+EaVQVVHuJLbtRhmXVziJ8po/XivzSw6JglRwUj41RBihInx0mlcqcn6EkV?=
 =?us-ascii?Q?dGbDePAKpXlnMIqi/NLao6zE0gkzXt13X3dKSNN/oxFN0Y0CxjcwzqmzJsqp?=
 =?us-ascii?Q?IAFS4ChmZxsimgvkY07GvH9JI8aPHFw5t2xMYJvHstQEZXDQFnB4dvh3MVOP?=
 =?us-ascii?Q?8L02xnbnUP2LXDa5xqIppoj2TffJWlc2Rj9IjXIAWztWcjJ02fGDd44wd6VV?=
 =?us-ascii?Q?404XyPUpIy28pp9rjIYPAnUC+AbL9vhk+EluuZsBHT8C3PsqPHbgP0OKEZ4V?=
 =?us-ascii?Q?1lPOsOE9vYCxUTG/Zz86cb0OOTykUjgxQzzoPTz2ARi5teo5rjE7k6q9oakh?=
 =?us-ascii?Q?yj0TLiYLcedVoh2v7AzEr5eGkfMTt3o3TDeuEwh0hCDbqArPhypVPj0THJSS?=
 =?us-ascii?Q?r8FJvoi40BlD54vRm3h/Ckz+VCqkg0Uo6VQM/8Jkh8Z8B+yd/jXL2WzqAOnt?=
 =?us-ascii?Q?ra7cgTq4DKX2IxdTXe/Yt4ZAuD99e0GYGOPla4BOya/R4p2vwvpJcYR5h2Dd?=
 =?us-ascii?Q?yo4AD9teR1Xu58MH9guT6n09A2ScDdWDtJP3baVxUKejCaKs/dLAydrEu8sk?=
 =?us-ascii?Q?7tVtIg8Dxi65OkCEs0L5y6EPQVWiKwd+PXE/csHRhKcjqkath+PVQvNeiGbX?=
 =?us-ascii?Q?jQODjlBH/MJK1DKlGwBFArPFct4d4KcPXCuny8TOio1Vd+sdjKXueNC728qX?=
 =?us-ascii?Q?f7XbaMYyMjotjA6syzFur9OscrPKQJac+nmHeUYoNPIn3DbQ3sD4GCeJeJlm?=
 =?us-ascii?Q?DSVYLhvNuZyCFbEWQVKPgoyCZMPDxqEOf/V7h9gij0PiMTGf43Llp3ypTFsA?=
 =?us-ascii?Q?g/AMVoy7Rgqkfb/j4230P5fr9Z5eG9u/Uh5PSm7n1i8PGKz+Yxb+2CSh4RuW?=
 =?us-ascii?Q?qEIDmk0BXBsWfQ6SmLso0tUry3/yev6dxdMkZclM4WZPGd0Ncj3wAMpAM3X5?=
 =?us-ascii?Q?Rk6On0XMgJrVkbe/6L8YRzaMc557uIb8MA+btYRfWvQIGzYXvo64FwuEcr0l?=
 =?us-ascii?Q?Rw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3022b2fd-77f5-4e3a-1a5d-08dcddef6705
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2024 05:52:27.4929 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +/5MSQ6QRFz20B3svZU9m7RBB1WcDlYCMDVuSF6SgZ7M3aIet64MDK7fdWwJyOINToI1BoaYv0sSe2FoDPuTeaLrVLUn6lNul0bcFOLo2GY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4673
X-OriginatorOrg: intel.com
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
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Thursday, September 26, 2024 11:04 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>;
> Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH] drm/i915/vdsc: Add bpc check in
> intel_dsc_compute_params
>=20
> DSC does not support bpc under 8 according to DSC 1.2a Section 2
> Requirements. Return an error if that happens to be the case.
>=20
> --v2
> -should be bits_per_component [Mitul/Chaitanya/Srikanth] -Add reference t=
o
> this restriction [Chaitanya]
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

LGTM


Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 8158e3702ed5..7a30fdea16da 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -306,6 +306,11 @@ int intel_dsc_compute_params(struct
> intel_crtc_state *pipe_config)
>=20
>  	vdsc_cfg->bits_per_component =3D pipe_config->pipe_bpp / 3;
>=20
> +	if (vdsc_cfg->bits_per_component < 8) {
> +		drm_dbg_kms(&dev_priv->drm, "DSC bpc requirements not
> met\n");
> +		return -EINVAL;
> +	}
> +
>  	drm_dsc_set_rc_buf_thresh(vdsc_cfg);
>=20
>  	/*
> --
> 2.43.2

