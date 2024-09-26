Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57942986BF1
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 07:15:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91B3110EAB4;
	Thu, 26 Sep 2024 05:15:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cOD6Oo9k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D07F10E87A
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2024 05:13:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727327650; x=1758863650;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Yc64j8PXSgR3OD+nA5Y6OZNpyXAAQrXTPnGZ3Y6tUqE=;
 b=cOD6Oo9kLEWuFER9sbkekhBZDqRhhFT8QX/UvKpJdNfcB45XuReVxqXB
 ONyfiidYPR1hVq27bXKHnjLEJP+W8dNVNKL1bEduMZuPrZgxXCCPJrytA
 BcOYUqIiYYFRkfG32c7cXdAxAPu15a5qeh6L/jkQViejMvCBm5FOzTwTm
 3GYPnhCgtV+As5m93VJhAftnbcSIs4FlyBFPFMvyOuI033k/Ub7f6gx4P
 oyCQgMUfmYRJx9T/goCxd7jovAS5khm3X3Z6L7BExDqN3cMBXjlJOR5Gz
 LW9OtMobnQc8kjQWRveS+7mToDvXJEgKc6XMeB+Xqwm9zOda1RVbcwdGK g==;
X-CSE-ConnectionGUID: bwUlTRzUR+Kpu0/hUncHbA==
X-CSE-MsgGUID: wbyqO29JQmyZiFERUVkySA==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="37783848"
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="37783848"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 22:13:52 -0700
X-CSE-ConnectionGUID: lguOQeiPQNOxXLcswWwL5Q==
X-CSE-MsgGUID: ftQ+pVxkQ/aBeGWKpB9xxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="72807087"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Sep 2024 22:13:53 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 25 Sep 2024 22:13:52 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 25 Sep 2024 22:13:51 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 25 Sep 2024 22:13:51 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 25 Sep 2024 22:13:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mBaNT+78p1WKFZaUy/xUu70PZMjbJA0hp0YIfxpRz7tJyZv2o8Uo2NVyDgZB7emR2OO6VVt5pkUsfsQbPOflbvEA6J5pILfolzdOCQUp7TWQxHtOaSu3QFQfgqcihxzAxsJ4YsOcXyjw120zEcbNlDnRLCG5ccgpq3FcL20Ac8uOda3T/vVDT3QQ2oEE3Iz85zii12nR3nhfhyCzf9eja3ziUVDmeArClFTe8wIAz1oScfYeHrsb6Pn9MGv6wp5UpcfVOY+CyWnnYT7WYYqChoxY3kzLl//CeeywBjrp1SFXcQV+8XWWPMrDc2umYEI1kU26iPt8JJScxZWdmTNYOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RnGYFOAczJtQNHODcgV7R240rUwx2DmiEVhX240segQ=;
 b=rivY+UcyBN1UhPWV0PrfztwDf+ERWQ63M9mX/Pwn0pMAvuggrf0aNXMedKYHNfy+O5M6CBLcD/04X+tJoX21dpij3QZtEtzrNOO8xuFyyUnl/SvL+whGEqCVabxqGDsyPHyUEVHgo32L6qin5TwA4btOaRkDxqeW+b1FWHcXl5s3anrb3eW2O+eQJLBMxNE2rJIx4e8AdQtFCy6NwoKjtl8OhaqQL3ivks4ZaPKpK19ZDiwRRPbgGcOaxjLLKE1vC+bWmgbK8++Cd7jlhH7muuIgzjuoSrSxafiVcH9zFhQudkuLWHyNr85eu8VSD0kSBf91ZZcR9bBWKxUXbP2QEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SJ0PR11MB5918.namprd11.prod.outlook.com (2603:10b6:a03:42c::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.29; Thu, 26 Sep
 2024 05:13:49 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.7982.022; Thu, 26 Sep 2024
 05:13:49 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH] drm/i915/vdsc: Add bpc check in intel_dsc_compute_params
Thread-Topic: [PATCH] drm/i915/vdsc: Add bpc check in intel_dsc_compute_params
Thread-Index: AQHbD82rb3myUiAuv0u9eTP8WDU1PLJpgkuAgAADgvA=
Date: Thu, 26 Sep 2024 05:13:49 +0000
Message-ID: <SN7PR11MB67507FBCA2372ED0503C9EC0E36A2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240926043332.1284692-2-suraj.kandpal@intel.com>
 <SJ1PR11MB6129BEE34AAB31767B505C66B96A2@SJ1PR11MB6129.namprd11.prod.outlook.com>
In-Reply-To: <SJ1PR11MB6129BEE34AAB31767B505C66B96A2@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SJ0PR11MB5918:EE_
x-ms-office365-filtering-correlation-id: 68db23e4-1db2-4b4c-33af-08dcddea0164
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?v4vudUMGY44PQwy/hCYfbXO4HVGx3p6mPjIcYY50hAJJiKR1zgLbEjCEF6iy?=
 =?us-ascii?Q?9DcT0Dr2zgQO1ZVpMhVOXOKBIM4xbxOMt5ueKT/paqn5QDnZ4Enwu4H4Qnbl?=
 =?us-ascii?Q?w5VFR9Y3eypFtCw/2ZKO5FUK40/ebkT0UKmYvYOlBz253j/3q2GY7FLmMSY6?=
 =?us-ascii?Q?yr2WYJ97xN65NEHrdPCUxjlmefqGoUepbqp89+kapwYZjVy/pOJQazVZPxxh?=
 =?us-ascii?Q?+SVHsBivVe4F/XPV7cyr5G5+dSFC/OuvWrZxdijdIOK6oPdamaVCKpetgfCK?=
 =?us-ascii?Q?n6s/Dep34Ov+xjmBqWE5FQNF/6v0cAz/SnVeeg9aRSqtAi/pHL7PVPKH/iKp?=
 =?us-ascii?Q?RWOi4Nv+z3n0I7DEKOmrymNSqA+wXSnNRZs6fTLO1kEc53KMSs50Nv/FYAVj?=
 =?us-ascii?Q?Oclj9NykThBOwPmtDyW+sCmRVpRun+CmKB/bR8SC86cBQMvwcOGloUp9cwtP?=
 =?us-ascii?Q?xsPVYnhaCzJUCRAB9bsxH39r6p6oBvfslLsicKxv0G6UAYyv4emiJKJ5sY9y?=
 =?us-ascii?Q?t77pWwg+9M97ukSkvvFuiDSZ8WesAKSwX7WE1crc2zBqIsUMSvxyigso5vo4?=
 =?us-ascii?Q?mv31AdLtI1x3X9f1Vg8zW3rm78WPvR7gYJCynjusLfsI0t24ybrm/KeuBMTA?=
 =?us-ascii?Q?DVStccYvO+eHw+nZ1Vd/UKc8Rgr2tt1VzxAXDRN8mh3PlPE9rU4HPWMNokor?=
 =?us-ascii?Q?nCIcnNYue5g3qRARiknK8daElez9kxtVcZVsDD9F9PGKgPlxM+ejrqeYZFdP?=
 =?us-ascii?Q?0/P5FAkrb3kXV4Ui9DDTID2Hrbyv9GCSxtlabcxcYYhyyEs4f2LE0YtuzTpV?=
 =?us-ascii?Q?ce16WCwzBcHIfyAHIeiG8bSPmG9eCfsMTpTJ/40tPihkwKboKUedKk7HKE5D?=
 =?us-ascii?Q?XDT0+aXSt5cPUn37YHpBnHlvXS77prKuEsDZfwBXRVTWc65/jC6YK9eqjljm?=
 =?us-ascii?Q?WHFx4Xk1TehJNjJtTRGhA/oLc29FkilETRZw9buNLFncm4T4eEX6DNGUnzz9?=
 =?us-ascii?Q?3rYjS8CMYPxCAkYUl8GzT1Qvig+AxEkTUPu07V76aa6hClPugb7U+w8ds+MH?=
 =?us-ascii?Q?0egfafJb6IFDiLdoGQK3rlvPk/wizbuzR9/RdV1KdNTk9hKYhnvbvW4JmoW3?=
 =?us-ascii?Q?JBDpiyJsi+a06D/E6ZFQsmS7dMfwUh1uEYlsovZclgBrFcRWgs0NLNEdufE+?=
 =?us-ascii?Q?0a07TRJ0Q7MiuP2BIZG5VjWRp7fZcr262uRHjo4qjkrRhaUcJq7rF1GJlnlr?=
 =?us-ascii?Q?3yY7WOM3RfV/6xBC6662oFE2WSUju+uPLQtk43Bbgim3WaG8Hah4xsOr+cN/?=
 =?us-ascii?Q?w78djn/01kYMTQUlW5nDi6cyHfu6Mv09ae+f2GrdoZKss3/AQinNyjytR9O4?=
 =?us-ascii?Q?+YJZGB8OGAwC1eScQERBSCGbpGReVyDdFn19PXv5kXWKj2h2zQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pqS062TTsuiO8V5JrGIMj/hCbILYBOCydXvSTAn3Mb7qYM5lzdCNpxKuhdyK?=
 =?us-ascii?Q?QHtX6chdNFyfjC46MPInpnK1e3TxommciCd+vqEvmLPHzU9uwpz2VC2xovk2?=
 =?us-ascii?Q?S+Y4yAcOOKlSb1CoqBZmIE+WsYQkLgi5LwL0v4+QRgjMXQDqQjh32dKGkt/B?=
 =?us-ascii?Q?T+MXsiiWMYhSSbK1VwrM2aoxM0Wt6EldXdE2mNfXHojhBdl3RBTHyWstVHfT?=
 =?us-ascii?Q?UKa5wf7ZXoHgU2gPRzDde572Hip22X6NWNCSCK+BlTOoPOGgn626UOSrpcOm?=
 =?us-ascii?Q?nwr0AbBUrD7ApPIGBP53FZur4UeI2nUKI0lsCwZ8Os5ZnSb9BVUWcK72FhbC?=
 =?us-ascii?Q?Iv6bxNVSqOoFVMBNaF4DATs10w10KPwAJJZuuY7vAgFdYxEoZ2wZh8s3MTrk?=
 =?us-ascii?Q?VdjlqCcX+tTlRWFvSeziESRwWgdRGvoH+6Jj+u67KADsLY3gyGELkuCsuW8X?=
 =?us-ascii?Q?I4Rezs4Buw/XH2lanadu4Gcfw6H1T3ytdarOLZR4PG8DJ742XYBIrLVwb0yq?=
 =?us-ascii?Q?kVT4zp0Hg4v43r1HRajh1UlY0sMVptD3r/DLjh4QMpT23+ROLU/yN0NyBjUg?=
 =?us-ascii?Q?mZnw7hnFmHtlaZ3rCEnQmXrY+mByc+cXcwY3MylMsa4hve43dgClnUqgrXVW?=
 =?us-ascii?Q?6Z63aaTZ/GUAJs1PfS4N2cRlEalD0YIMCzSlpzdLAY/mauZVaB60MsI7RLts?=
 =?us-ascii?Q?lETUHxOeZVo8DX/aivAbJTp/xpiNs0KWCS1tSqLMTpziSvY/DGpoZY9CZtmy?=
 =?us-ascii?Q?ptY88dtb275P+EgkxL837xNrjFn1GobwEBB6EPmc3NaiSXMPmfEDNU8nhf1E?=
 =?us-ascii?Q?ndrsqoMcoLO93JRC4FRET6EyS9fO03RjufrWKu4jHyPLBmBIGdGDPfpVwxKj?=
 =?us-ascii?Q?KhcsQVUlyBgk/UwRTAcAMykFjiLYXW5Sj3x2DC35Kndib32RxHXXpulfaLX5?=
 =?us-ascii?Q?IRf92JksLHplEOCeKXzcBBbaI5yx4dOLKi2LvwkDDivgksOQION8rhU5uEuE?=
 =?us-ascii?Q?jtWaiXTqdXvdNod2mq0XFU3uDr+H1ZuoT/mGlPhMwjxMIm0SoxZWECi2kOky?=
 =?us-ascii?Q?zAnIlQAvCY6q8QgmLKr3clz2xBtlDuoM/aaSohUhywvOcu6hqIi+tK3jxlE0?=
 =?us-ascii?Q?54vvAz6wxESO1f4dJQc6uOFrQD6GQEMLEK0xOUsfUAm7Me3B1ICqMSVbpBEr?=
 =?us-ascii?Q?7ZYwvef3vkBtyP+hcCKiCFM8qr/eolt/6anvsron4H4ssuhADwVwSUg4WvUE?=
 =?us-ascii?Q?J4Nn6psLti4D6SucJwHwoQhh6FnkDsewDPHe0KgbSuQGUtVxhJ/BJ0eoINzI?=
 =?us-ascii?Q?sEtNs4/uE9co6fCBs5QwFmMHlPofNSd2uxZNRGKAXXcOKEBDLNCVFHvV/2Tv?=
 =?us-ascii?Q?M9mf4x+gT4wsfVdIV3rAnjRnCnj5pAPtBZsQToEB+FUD8SzUAIfcx2Ttx/oJ?=
 =?us-ascii?Q?CbMQmEMWzNBvZGPvjpAxvM0QuSeQGviHv0Ioru5xd5C7qkqfV8DrRGhTUqv4?=
 =?us-ascii?Q?/M1ZFGL2O0TWplaPK+3NXct4sG3AygXOBIUZ8MDGtcuOvEkYaeKrU/f1sPUq?=
 =?us-ascii?Q?IGn2Ne3VFE2Eph3/VgF15Xup/JokGlnHFFs3jCO9?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68db23e4-1db2-4b4c-33af-08dcddea0164
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2024 05:13:49.4787 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SPY3CJgsxHQpSshuOBNViiD9ELP0QlgJVcxw6dmDAk3jUUwzN45AFBoi+06lpsTrnInZzs/mCHIdOSMGpkLbkQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5918
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
> From: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Sent: Thursday, September 26, 2024 10:30 AM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: RE: [PATCH] drm/i915/vdsc: Add bpc check in
> intel_dsc_compute_params
>=20
> Hello Suraj
>=20
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Suraj Kandpal
> > Sent: Thursday, September 26, 2024 10:04 AM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Kandpal, Suraj
> > <suraj.kandpal@intel.com>
> > Subject: [PATCH] drm/i915/vdsc: Add bpc check in
> > intel_dsc_compute_params
> >
> > DSC does not support bpc under 8. Return an error if that happens to
> > be the case.
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_vdsc.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > index 8158e3702ed5..39bf8bee106c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > @@ -297,6 +297,11 @@ int intel_dsc_compute_params(struct
> > intel_crtc_state *pipe_config)
> >
> >  	vdsc_cfg->bits_per_pixel =3D pipe_config->dsc.compressed_bpp_x16;
> >
> > +	if (vdsc_cfg->bites_per_pixel < 8) {

>=20
> Typo: bits_per_pixel
>=20
Yes that should be component

> Any Bspec link for this limitation?

In DSC1.2a under 2)requirements the input bpc can be 8,10,12,14 and 16

Regards,
Suraj Kandpal
>=20
> Regards
>=20
> Chaitanya
>=20
> > +		drm_dbg_kms(&dev_priv->drm, "DSC bpc requirements not
> > met\n");
> > +		return -EINVAL;
> > +	}
> > +
> >  	/*
> >  	 * According to DSC 1.2 specs in Section 4.1 if native_420 is set
> >  	 * we need to double the current bpp.
> > --
> > 2.43.2

