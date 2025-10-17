Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B0F1BE7DA5
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 11:43:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 687C010EB9D;
	Fri, 17 Oct 2025 09:43:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VijTH/YY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1821B10EB94;
 Fri, 17 Oct 2025 09:43:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760694220; x=1792230220;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:mime-version:content-transfer-encoding;
 bh=kY0yTgwBALa671xb8NLHy5/Ou6Ra1V7yqsvsvgebWc0=;
 b=VijTH/YYMjABCZDeMlhAlr+xeFYsucqtd2+40gUDUgWpW+uvoIIRCN/b
 r3CJADq+VceOkUpO5LlOHU24v+Qu5zL6heQksDZgIh132DfRT4GwdC9qw
 Y32i19/an4l7vCcMgrwFE6Yh5Ug6vNY5hwfTlKgq+XqBr9SZfc1X6pEn+
 eabCKR+4PQKQuH6wJwZkih9BCJItSy+XG2tdNxjvGqtlaHygZTs7DCRax
 8SZqArEUsvKQNDSBXDBdi1rsnZf4na5H0VmpqN+hcomLUNmH22w/FOh9i
 wOAsxIjroh1AqTIqIY43dSszPsQs6MBJyiEakdngRxTszDNBYHntK1tf0 A==;
X-CSE-ConnectionGUID: t5L53YpISFCxqovLpApFBA==
X-CSE-MsgGUID: BheendeZQJ+AyzlN53IQKw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62811358"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62811358"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 02:43:40 -0700
X-CSE-ConnectionGUID: SXQgsS+BQam810ult156dw==
X-CSE-MsgGUID: KZR413/3QVy/7l2LDV+w/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="206403144"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 02:43:39 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 02:43:38 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 17 Oct 2025 02:43:38 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.28) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 02:43:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=S72yQtB5vF5qnHYuonHJkwCQZ/s/i6NxFgYYh50h5uYr3n5txKYLWzWE5b4yaOxrTGen8ja5b9HucmGjz0JyaHU9nH1V7ukPkEkE2hJP4HysyFHEPGrh5E5daIjaZBda0TapqrWxH6mp9/XyM03ZmUNlOKAnZ+k09bDg9PMH1fA+dN+oiz+FBMoqReLsblqlXioHddONZiT5kvi3zDRPswhJzSlZENwgw3UNiyGsRfL07v4HmV9mYxT6PgWzK8W58Jbhqft5xYkPkB9BQarprJ2GM5gJDpZps8fZRkREex+fcqngXi5aHkjsMOmeftH/5wHQKVYwWCsJNmTG+WVpHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oujF52z4a4bWIui49HRpCK+wn9NX7GO/rOCGyi2QMm8=;
 b=cshWL8IKpaGjdStx/cYIdpYVBEPSlklSqjDYFKrn99lbwmkMsCcDXzk5TICoRFql+6vx9g8bu3836xPPzjTNdpIaInSBRLc/TBHDwP8dTcKjNxTNrbfmBjRCiDDZXfYlRdcJFLdm+5do5nycWlPu42IOwnHoqVr2dPvDym+FiQAaPFuvJLtxdNq1dbK0VvagTgiHE0IY8Tbk3Su6LkI+c1SKEW1HF15e7l4oMYWy1Rpr4bHESVVIw+3cH2qCyUIaOFwSeDAYdSSmexmlr449yhkwq/VXS6Xczn3+wcazdVNErYHCZWABMzxLf46QhiTSWWE5jdcSYjOZEqhM6ugG0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7589.namprd11.prod.outlook.com (2603:10b6:806:34a::14)
 by SA3PR11MB9486.namprd11.prod.outlook.com (2603:10b6:806:47f::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.13; Fri, 17 Oct
 2025 09:43:37 +0000
Received: from SN7PR11MB7589.namprd11.prod.outlook.com
 ([fe80::df51:5691:df7d:9a34]) by SN7PR11MB7589.namprd11.prod.outlook.com
 ([fe80::df51:5691:df7d:9a34%3]) with mapi id 15.20.9228.011; Fri, 17 Oct 2025
 09:43:37 +0000
From: "Grabski, Mateusz" <mateusz.grabski@intel.com>
To: "i915-ci-infra@lists.freedesktop.org"
 <i915-ci-infra@lists.freedesktop.org>, "Deak, Imre" <imre.deak@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvZHA6?=
 =?utf-8?Q?_Fix_panel_replay_in_DSC_mode_(rev2)?=
Thread-Topic: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNS9kcDogRml4?=
 =?utf-8?Q?_panel_replay_in_DSC_mode_(rev2)?=
Thread-Index: AQHcP0jVLrgZCEGf7k6U06DIyzXjybTGFiYA
Date: Fri, 17 Oct 2025 09:43:36 +0000
Message-ID: <SN7PR11MB75892D2FE6A7DB8E0EDA8311E7F6A@SN7PR11MB7589.namprd11.prod.outlook.com>
References: <20251015161934.262108-1-imre.deak@intel.com>
 <176055989763.19094.12450157913190398736@97596180aaec>
 <aPIMx-HJrhuM_xo7@ideak-desk>
In-Reply-To: <aPIMx-HJrhuM_xo7@ideak-desk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB7589:EE_|SA3PR11MB9486:EE_
x-ms-office365-filtering-correlation-id: a4eb8c92-8b7a-4a71-7e58-08de0d61a55f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|13003099007|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?RGlIb3Q2dDlBalFtcTRlRjVXQmRJZ3ladXV2ZzRYY1JuYnUzamtxQVRZeWVq?=
 =?utf-8?B?MGNlQnJCY09lT1EycHNpakRLUnN2WUhCV3h0YVNMUi82WkxNc1orNDB5a2F5?=
 =?utf-8?B?Z2ZaUW4xWlc3a0lyUWlwaStMRERySDdIbXhZKzAzaXZOTUtuNzBDT2JUYWpY?=
 =?utf-8?B?Z2JEc2d1ZDM1QUlQamgwSEorNHQ3MGFmaTNWUEpJdXhkaUdBZGliQXpiVnFn?=
 =?utf-8?B?aC9Vbi9NZm9TcGxwUGkvdmNzNUErL0Vmd0pxRHkvcm5sazhIV3UrcENNSUky?=
 =?utf-8?B?SzhJQXB3RTR6ZEI0TEt0Z3NWUU1KK0JmcU0yN1g1TEt6SEZZNUdlNm1hR1Fq?=
 =?utf-8?B?ZmFtZHVodWFNTnBpZmlaOERmbFVUa1dNU1p1T3lTenJpNlIzMGpMQWJhT2JZ?=
 =?utf-8?B?WTcwa0VoNkNJcGRvRUhWWUlUa3ZyUEREQXNYaStkNTRRMVBIN0tWN0xjZ2w5?=
 =?utf-8?B?M2pBa0k5RlZmQ3lWY292MEdTRWdySTlWakZKOUV3QWtXQWFNeVZ2LzI4dVhu?=
 =?utf-8?B?UXF2dVdSelkvVUtzRnhzcndkVndmbkdIT0JoaUFTa1N3eVpTa2VTQ2drbFJk?=
 =?utf-8?B?NFpHeXlPdXBtaFhuZzNKSkhja0ZuUWkyZTZhZ3EydDgvbXVlNTV3VCtJK3pa?=
 =?utf-8?B?ZzB6ME5MeDhYMG12RXJoUmd1bVhMRnN2TFV6dlZEdmJENWk5VGxyZEpsQ1FU?=
 =?utf-8?B?Y0dPeG01TUxIQUJQQkZOaFY1ak1sdVJDRzRYRGpYc0M2MnU3YncydithR3My?=
 =?utf-8?B?TUFWS0dnSVIyTEg3M1BrZXdkODlkMnNMQmFxcE14MDNNd3RkVGRHTVZZK3Vv?=
 =?utf-8?B?cDZONUIxbHBrclhhRlRVaGRnRStIOXd0NngyWXFKUFIzSkdxeDFjUzdGTFBN?=
 =?utf-8?B?Q0YxVjh4clp5cy9WK3ViVnhLSzlOK2tSQW9lOWU0ZnRxaWNPQzZpSU1YejFl?=
 =?utf-8?B?c0JZanhmUnVZOWZ4ZUZadFFrVEZsRG5nTWR6UGxUcnVLcmM4YTh1SFhRVG5B?=
 =?utf-8?B?emVNSWFRUDV4U0YrY01sY0lQT3JNUDVtTzBYTXd6YlJlR05GS09LaS9VZVVt?=
 =?utf-8?B?VHdzMHp5d0RpRDMzTHVmb2txVXJJNjNnMFhLTDBRTjl3enBhVEZkSmtjOElj?=
 =?utf-8?B?am5OOGRzOXdjbW91NXVTUlpWTjRySCsxK0Z4Z1NvWERmR1g4WU5wemwwOGcw?=
 =?utf-8?B?TVBDdFFIYUVXcmJZY3dvamVEWUdDQTZ2MFFKanIzTlZMWG9CbnRoUThwNjZv?=
 =?utf-8?B?VFB1aXRObUxhc0Q2MC9BQ1d4bjhDWSs0NmE0TkFJaUpFMzFsVVNZZUQ5NVgv?=
 =?utf-8?B?Qm5OdUJkRnNpMllsREJDV2JWSWJpYXladmRwUmg5NDRXOGtCTGdDajh6WTZ0?=
 =?utf-8?B?b21WVDhFSmU2WkE0RDlaOXc3bzR4ZUV1SEJLcmVpdm9ibHdXWmJZb0l1WUdO?=
 =?utf-8?B?dkEvZ1pPOURsY1gwbTMwdUdSaXRlN1R3eDJJRCtTMkMvbnJEYjZUTGxBZjl5?=
 =?utf-8?B?SlJFOW9Tb1h1bytWK2pRT2I5QTYyT0hSMjZ2VFc2OW15Wk01UklERDE2c05J?=
 =?utf-8?B?akQvVFJCbTQxTXJRY1RKVEhzOHN1REhEWTZDWDIzNWpzRS9KWUpZeDY1Zjl6?=
 =?utf-8?B?U0E3UUE3UkVNS0JIK2g4SGNTd3V6QWJGZXJPNlJVY3gwYVprUDlVTkpjTzg3?=
 =?utf-8?B?d2o4SUJkQStibGpBMlp6ODl4RHBLWnJ0YnZ1YzBGZnFwby9INE1DK2x4OWpz?=
 =?utf-8?B?TngzM0ZJbE84ejJEeG5UTXVFUFBmWnJOcXExRGhDQWJxMExtaE5xWmh0RVVt?=
 =?utf-8?B?YzBpMVlmbm9oNjVEV1RUNDhCL2pySG1hN3BVS3JRL2JJWDNBcVBWQzRPTXRv?=
 =?utf-8?B?dXk2ajJDN2h6elFTS2NRK2JhUFVwTnVHS1NSOVZiRmJvSHZnSVhCTzdhTFlw?=
 =?utf-8?B?WVFYYXlaSkJWdDV6dlhwTldVU1J5VGdTWDNJZ2JsZG1GaTNoUVIyUkZFUlBt?=
 =?utf-8?B?YnBYQk9rdVVnPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7589.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(13003099007)(7053199007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TnFvOFVXem8wcWZ6UW45a1JvUlpPdE5kSzNRamVLTFMyL1JLOFVjQnZvQU9M?=
 =?utf-8?B?aHJmK2FjM3ZIcVJBQ0JURXMzeHhNTFZ2LzhkRHBQN3BBVWRoZml3UlBxYlN4?=
 =?utf-8?B?QTZMcXhiS0ZiY1NsbEVnc0dnU2lYcjNXYXg1ZTFiZUEzTllodDFoSXB5a2Rr?=
 =?utf-8?B?bXBDbmxDZXQwNFVNQnFwNTZtMXJpSm1RUmNJZjN3Ty9oZVhUT0xOdnJDTmZz?=
 =?utf-8?B?MHN2Rmt3UmhWM1R2VkJybHB4ZnJmVUVUQXdyVVNtcUFDTnNnaVJvUm4vN2pv?=
 =?utf-8?B?clNNTkpBVG1OdVRmNnppSFRPYllGaFordWlaaVN4N1JpeXlKUFVycEZIb1Z4?=
 =?utf-8?B?dHhyUDdkWUQyVDVHcHVwdnRyUU0xZHF5ZjFhYWFqdXlqampIaUdiaFZSdDJN?=
 =?utf-8?B?QkNhWGdpY1IvRVc5S0xDMFB6Q3o1S2NNVlBCajlxbFVjUDVEZys5T1cyOWhG?=
 =?utf-8?B?eUF3c3RsMGk2ay9zUDhHNGlRTEVSVXFaaGdWSUVwRXl6aWNEcUVXWHR0NjlG?=
 =?utf-8?B?ZUM0bkFtNytOWmlpN0JxY1VBbTZ0ZGx4NGpaTkxZeXRxSGpFUG9kWlYrQy81?=
 =?utf-8?B?TEZmdnVET2VEcVpvM010RUxtNHV0WnVVbWpaUkxtY1o5cGlQR3FzTERzaEow?=
 =?utf-8?B?QWZPWGZxYWdPODc3WWo3cWFaMHlmdExuQkxsVlBCLzhHSEJZSzlLVmw0Z1Bm?=
 =?utf-8?B?WmUwRGJETHR4azNtVDIzWklvM0dKZGxmck0rNDhnTC9UcUxaWjN2OEpzcnZm?=
 =?utf-8?B?SWZBcDNXOHJlK1FBemlvMUhjNW0wTGpaVzk0YWsyNkJ2U3d1WkVBTFZ0ZlJ3?=
 =?utf-8?B?VFlTdU5hdTczallPNlRyZ2VweWdYazhSOWJMV2xrMG9iMm12eUZkSlBkYURK?=
 =?utf-8?B?VzlTTjlFS1hycit5OTZBaWNGUXczRlIwWlFFeE9JTGErS0xXSDd1bVJ0Yk1V?=
 =?utf-8?B?L2QrZW9ROW9NeDhaU2ZnbnpTL1QzQzN4dTVUWlhWQVREdEszRnloMURsWGxn?=
 =?utf-8?B?ZEpjUktLTy9ubHRGcC8xVkFrTnBiSTN4VTZjU0p0OHFqejZPSklxVUxSb3E3?=
 =?utf-8?B?bHAxUzFrajgwUDNCZzRTUy8raGx3RElxOU92MDNsZVNPaXR2Nm1mSUE1b2NK?=
 =?utf-8?B?TWVwYlV0bG1sUWZaSHIvNWc5K2ZEcWRzZ2gzZ0JqOTZLZDhHbTlGQ0ovN1Zt?=
 =?utf-8?B?eC9VdU42eFk5VmZIN2N5KzQ1ZWJjb1VYYnFOcEVxOTczLzhsaW1VZW5tbSs0?=
 =?utf-8?B?Tjk5MklSd2pLYVdzYnpqeGZjZWVJUGxZcWowTnRDVFJwZ2UzbXRwV3BacWht?=
 =?utf-8?B?MWtsZjNmY1J6M0lNSUJMUkF6bDhzLy9NMzNnVEZkZUNHTDZQSzNtbzMxU3Q2?=
 =?utf-8?B?ZElKbXJtVjF3d3JEOFZvRUNGYWQ2b21BTkIxZ01PZVNzenJ3aWdXUXN2cFRx?=
 =?utf-8?B?SWNQSHN0a0xtbS9yd2hENlVUZEE0OHI5UVRQU2ljbytiRVNJMVBrZUVpcDZN?=
 =?utf-8?B?SWUvVXRDcjNCREwwZUQxVG9BSDRuMnp3L2N0SFpscHhoL0lTZC9kbUZCbm9D?=
 =?utf-8?B?U0pLbThGeGlYTUJuVDZaUWFlcjlaTHZUenFkSms5VVp4cDhZOHVwUzFEOStu?=
 =?utf-8?B?d2ZDTGlYek9aZEs2cUlHNitvd3JJaUIyK0Q2UUkrWTd6S0Z2K3pQMGU0S0JT?=
 =?utf-8?B?MkdBdzhtZHFENUV4QmUrdk5nbTdkdjA4clk3MTE1eEJENzYzaTIrUmh6cGJ1?=
 =?utf-8?B?Tlc2ckFWTUU3T0pHa2RKeFVONzFzS21tWHZJN1VrV0dDWGVXNWU1b1gxRnNZ?=
 =?utf-8?B?a05uZkpmcitaa3BFVnI2ZmtYS25CcHR2L1B0OVpmNGhGMzB2VktPdm5WLzR4?=
 =?utf-8?B?Y0RNaG4vSjVaelNYSGVtdUd4dTB2K0hJdmJMVUE3MzdKVGNPL1lrdzZ1YTFK?=
 =?utf-8?B?T202aWIxMXhmbjRrRDNpSVpJK2RMMjN2WVg3UUoweUQzQncvU3lFUzd5dS9p?=
 =?utf-8?B?bHl1bjY1b0FGdXg2aUhKZnJrS3Fub0tscUM5NGV0Vk1DekI2KzJsUTFFQkpR?=
 =?utf-8?B?Q0JZZ291OHhoYWRlTmJqTFR3d24rVzBHbVBJQnNTbEhpZklFWHZ5U1R4MS91?=
 =?utf-8?Q?w+TpDvgbhLfujWFG73vAGp1ad?=
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7589.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a4eb8c92-8b7a-4a71-7e58-08de0d61a55f
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2025 09:43:37.0137 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RHPoqO6Llb14BLndfwQ3JtHUWBiQ8P9DH3XWJhYv2T7AN3vNmu3smLSNzTq3KGE/cLgvKj7vI74GCPzlMXRYvvEzDWIFuAb3H/7T0hsb4vs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB9486
X-OriginatorOrg: intel.com
Content-Transfer-Encoding: base64
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

SGVsbG8sIEltcmUNCg0KSSB3aWxsIHF1ZXVlIHNoYXJkcyBmb3IgeW91Lg0KUmVnYXJkcw0KTWF0
ZXVzeg0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogSTkxNS1jaS1pbmZyYSA8
aTkxNS1jaS1pbmZyYS1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9m
IEltcmUgRGVhaw0KU2VudDogRnJpZGF5LCBPY3RvYmVyIDE3LCAyMDI1IDExOjMxIEFNDQpUbzog
STkxNS1jaS1pbmZyYUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCkNjOiBpbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnDQpTdWJqZWN0OiBSZTog4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZv
ciBkcm0vaTkxNS9kcDogRml4IHBhbmVsIHJlcGxheSBpbiBEU0MgbW9kZSAocmV2MikNCg0KSGkg
Q0kgdGVhbSwNCg0KdGhlIGZhaWx1cmUgaXMgdW5yZWxhdGVkIHRvIHRoZSBjaGFuZ2VzLCBzZWUg
YmVsb3cgZm9yIGRldGFpbHMsIGNvdWxkIHlvdSBwbGVhc2UgZm9yd2FyZCB0aGUgcGF0Y2hzZXQg
dG8gdGVzdGluZyBvbiBzaGFyZHMgYXMgd2VsbD8NCg0KT24gV2VkLCBPY3QgMTUsIDIwMjUgYXQg
MDg6MjQ6NTdQTSArMDAwMCwgUGF0Y2h3b3JrIHdyb3RlOg0KPiA9PSBTZXJpZXMgRGV0YWlscyA9
PQ0KPiANCj4gU2VyaWVzOiBkcm0vaTkxNS9kcDogRml4IHBhbmVsIHJlcGxheSBpbiBEU0MgbW9k
ZSAocmV2MikNCj4gVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2Vy
aWVzLzE1NTU4Ny8NCj4gU3RhdGUgOiBmYWlsdXJlDQo+IA0KPiA9PSBTdW1tYXJ5ID09DQo+IA0K
PiBDSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV8xNzM2OCAtPiBQYXRjaHdvcmtfMTU1
NTg3djIgDQo+ID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT0NCj4gDQo+IFN1bW1hcnkNCj4gLS0tLS0tLQ0KPiANCj4gICAqKkZBSUxVUkUqKg0KPiAN
Cj4gICBTZXJpb3VzIHVua25vd24gY2hhbmdlcyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMTU1NTg3
djIgYWJzb2x1dGVseSBuZWVkIHRvIGJlDQo+ICAgdmVyaWZpZWQgbWFudWFsbHkuDQo+ICAgDQo+
ICAgSWYgeW91IHRoaW5rIHRoZSByZXBvcnRlZCBjaGFuZ2VzIGhhdmUgbm90aGluZyB0byBkbyB3
aXRoIHRoZSBjaGFuZ2VzDQo+ICAgaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTU1NTg3djIsIHBs
ZWFzZSBub3RpZnkgeW91ciBidWcgdGVhbSAoSTkxNS1jaS1pbmZyYUBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcpIHRvIGFsbG93IHRoZW0NCj4gICB0byBkb2N1bWVudCB0aGlzIG5ldyBmYWlsdXJlIG1v
ZGUsIHdoaWNoIHdpbGwgcmVkdWNlIGZhbHNlIHBvc2l0aXZlcyBpbiBDSS4NCj4gDQo+ICAgRXh0
ZXJuYWwgVVJMOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTU1NTg3djIvaW5kZXguaHRtbA0KPiANCj4gUGFydGljaXBhdGluZyBob3N0cyAo
NDAgLT4gMzgpDQo+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiANCj4gICBNaXNz
aW5nICAgICgyKTogZmktc25iLTI1MjBtIGJhdC1hZGxzLTYgDQo+IA0KPiBQb3NzaWJsZSBuZXcg
aXNzdWVzDQo+IC0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gDQo+ICAgSGVyZSBhcmUgdGhlIHVua25v
d24gY2hhbmdlcyB0aGF0IG1heSBoYXZlIGJlZW4gaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTU1
NTg3djI6DQo+IA0KPiAjIyMgSUdUIGNoYW5nZXMgIyMjDQo+IA0KPiAjIyMjIFBvc3NpYmxlIHJl
Z3Jlc3Npb25zICMjIyMNCj4gDQo+ICAgKiBpZ3RAZ2VtX3N5bmNAYmFzaWMtZWFjaDoNCj4gICAg
IC0gZmkta2JsLWd1YzogICAgICAgICBbUEFTU11bMV0gLT4gW0lOQ09NUExFVEVdWzJdDQo+ICAg
IFsxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTcz
NjgvZmkta2JsLWd1Yy9pZ3RAZ2VtX3N5bmNAYmFzaWMtZWFjaC5odG1sDQo+ICAgIFsyXTogDQo+
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NTU4
N3YyL2ZpLWtibC1ndWMNCj4gL2lndEBnZW1fc3luY0BiYXNpYy1lYWNoLmh0bWwNCg0KVGhlcmUg
ZG9lc24ndCBzZWVtIHRvIGJlIGFueSBkaXNwbGF5IGNvbm5lY3RlZCB0byBmaS1rYmwtZ3VjLCBz
byB0aGUgZGlzcGxheSBzcGVjaWZpYyBjaGFuZ2VzIGluIHRoZSBwYXRjaHNldCBhcmUgdW5yZWxh
dGVkIHRvIHRoZSBmYWlsdXJlLg0KDQpJdCB0b29rIG1lIGEgd2hpbGUgdG8gZGV0ZXJtaW5lIHRo
YXQgbm8gZGlzcGxheSBpcyBjb25uZWN0ZWQuIElzIGFuIGVtcHR5ICJpOTE1X2Rpc3BsYXlfaW5m
bzAiIGxpbmtlZCBvbiB0aGUgQ0kgcmVzdWx0IHBhZ2Ugc3VwcG9zZWQgdG8gaW5kaWNhdCB0aGlz
IGFsd2F5cz8gQ291bGQgeW91IGluZGljYXRlIGluIGEgbW9yZSBvYnZpb3VzIHdheSB0aGF0ICJO
byBkaXNwbGF5IGNvbm5lY3RlZCIgb24gdGhlIHJlc3VsdHMgcGFnZT8NCg0KVGhlIGZhaWx1cmUg
aW1vLCBpcyBlaXRoZXIgZHVlIHRvIGEgbmV0d29yayBjb25uZWN0aW9uIGlzc3VlIChubyBXQVJO
cywgZXJyb3JzIGluIHRoZSBsb2csIGRtZXNnIGVuZGluZyB3aXRoIGEgZmxvb2Qgb2YgMCBieXRl
cyByZWFkKSBvciBzb21lIEdGWCBkZXZpY2UgREM2IC0+IERDMCB0cmFuc2l0aW9uIG9yIHNvbWUg
R0ZYIEdFTSByZWxhdGVkIGlzc3VlLCBzZWUgbW9yZSBiZWxvdy4gVGhlcmUgYXJlIG5vIHBzdG9y
ZSBvciBvdGhlciBwb3N0LW1vcnRlbSBsb2dzIGF2YWlsYWJsZSwgc28gaXQncyBpbXBvc3NpYmxl
IHRvIGtub3cgdGhlIHJvb3QgY2F1c2UgZm9yIHN1cmUuIFB1dHRpbmcgbXVjaCBtb3JlIGVmZm9y
dCBpbnRvIG1ha2luZyBzdWNoIGxvZ3MgYXZhaWxhYmxlIGV2ZXJ5d2hlcmUgd291bGQgYmUgcmVh
bGx5IGFwcHJlY2lhdGVkLg0KDQpUaGUgZmFjdCB0aGF0IHRoZSBjb25uZWN0aW9uIGlzIGxvc3Qg
d2hpbGUgdGhlIHN5c3RlbSBpcyBhY3RpdmUsIHNvIG5vdCBhcm91bmQgc3lzdGVtIHN1c3BlbmQv
cmVzdW1lICh3aGVyZSBuZXR3b3JrIGRldmljZSBmYWlsdXJlcyB3ZXJlIHR5cGljYWwgaW4gdGhl
IHBhc3QpIG1ha2VzIHRoZSBsaWtlbGlob29kIG9mIGEgbmV0d29yayBkZXZpY2UgZmFpbHVyZSBs
b3dlci4NCg0KSSBzZWUgdGhlIEdGWCBkZXZpY2UgYmVpbmcgaW4gREM2IHdoZW4gdGhlIGNvbm5l
Y3Rpb24gaXMgbG9zdCwgc28gaXQncyBwb3NzaWJsZSB0aGUgbWFjaGluZSBoYW5ncyB3aGVuIEdG
WCBpcyB0cnlpbmcgdG8gZXhpdCB0byBEQzAuDQoNCkEgcmVjZW50IHNpbWlsYXIgY29ubmVjdGlv
biBsb3N0IGZhaWx1cmUgZHVyaW5nIGEgR0VNL0dUIHRlc3Qgb24gdGhlIHNhbWUgZmkta2JsLWd1
YyBtYWNoaW5lIGlzOg0KaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTU0ODgxdjEvZmkta2JsLWd1Yy9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHJlcXVl
c3RzLmh0bWwNCg0KPiBLbm93biBpc3N1ZXMNCj4gLS0tLS0tLS0tLS0tDQo+IA0KPiAgIEhlcmUg
YXJlIHRoZSBjaGFuZ2VzIGZvdW5kIGluIFBhdGNod29ya18xNTU1ODd2MiB0aGF0IGNvbWUgZnJv
bSBrbm93biBpc3N1ZXM6DQo+IA0KPiAjIyMgSUdUIGNoYW5nZXMgIyMjDQo+IA0KPiAjIyMjIElz
c3VlcyBoaXQgIyMjIw0KPiANCj4gICAqIGlndEBkbWFidWZAYWxsLXRlc3RzOg0KPiAgICAgLSBi
YXQtYXBsLTE6ICAgICAgICAgIFtQQVNTXVszXSAtPiBbQUJPUlRdWzRdIChbaTkxNSMxMjkwNF0p
ICsxIG90aGVyIHRlc3QgYWJvcnQNCj4gICAgWzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xNzM2OC9iYXQtYXBsLTEvaWd0QGRtYWJ1ZkBhbGwtdGVz
dHMuaHRtbA0KPiAgICBbNF06IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xNTU1ODd2Mi9iYXQtYXBsLTEvDQo+IGlndEBkbWFidWZAYWxsLXRl
c3RzLmh0bWwNCj4gDQo+ICAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQGxhdGVfZ3RfcG06DQo+
ICAgICAtIGZpLWNmbC04MTA5dTogICAgICAgW1BBU1NdWzVdIC0+IFtETUVTRy1XQVJOXVs2XSAo
W2k5MTUjMTM3MzVdKSArODAgb3RoZXIgdGVzdHMgZG1lc2ctd2Fybg0KPiAgICBbNV06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE3MzY4L2ZpLWNmbC04
MTA5dS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQGxhdGVfZ3RfcG0uaHRtbA0KPiAgICBbNl06IA0K
PiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTU1
ODd2Mi9maS1jZmwtODEwDQo+IDl1L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAbGF0ZV9ndF9wbS5o
dG1sDQo+IA0KPiAgICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kczoNCj4gICAg
IC0gYmF0LWRnMi05OiAgICAgICAgICBbUEFTU11bN10gLT4gW0RNRVNHLUZBSUxdWzhdIChbaTkx
NSMxMjA2MV0pICsxIG90aGVyIHRlc3QgZG1lc2ctZmFpbA0KPiAgICBbN106IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE3MzY4L2JhdC1kZzItOS9pZ3RA
aTkxNV9zZWxmdGVzdEBsaXZlQHdvcmthcm91bmRzLmh0bWwNCj4gICAgWzhdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTU1ODd2Mi9iYXQtZGcy
LTkvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kcy5odG1sDQo+ICAgICAtIGJhdC1h
cmxzLTY6ICAgICAgICAgW1BBU1NdWzldIC0+IFtETUVTRy1GQUlMXVsxMF0gKFtpOTE1IzEyMDYx
XSkgKzEgb3RoZXIgdGVzdCBkbWVzZy1mYWlsDQo+ICAgIFs5XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTczNjgvYmF0LWFybHMtNi9pZ3RAaTkxNV9z
ZWxmdGVzdEBsaXZlQHdvcmthcm91bmRzLmh0bWwNCj4gICAgWzEwXTogDQo+IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NTU4N3YyL2JhdC1hcmxz
LTYNCj4gL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAd29ya2Fyb3VuZHMuaHRtbA0KPiANCj4gICAq
IGlndEBrbXNfcGlwZV9jcmNfYmFzaWNAcmVhZC1jcmM6DQo+ICAgICAtIGZpLWNmbC04MTA5dTog
ICAgICAgW1BBU1NdWzExXSAtPiBbRE1FU0ctV0FSTl1bMTJdIChbaTkxNSMxMzczNV0gLyBbaTkx
NSMxMzg5MF0pICs0OSBvdGhlciB0ZXN0cyBkbWVzZy13YXJuDQo+ICAgIFsxMV06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE3MzY4L2ZpLWNmbC04MTA5
dS9pZ3RAa21zX3BpcGVfY3JjX2Jhc2ljQHJlYWQtY3JjLmh0bWwNCj4gICAgWzEyXTogDQo+IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NTU4N3Yy
L2ZpLWNmbC04MTANCj4gOXUvaWd0QGttc19waXBlX2NyY19iYXNpY0ByZWFkLWNyYy5odG1sDQo+
IA0KPiAgIA0KPiAgIFtpOTE1IzEyMDYxXTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3Jn
L2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8xMjA2MQ0KPiAgIFtpOTE1IzEyOTA0XTogaHR0cHM6
Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8xMjkwNA0K
PiAgIFtpOTE1IzEzNzM1XTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1
L2tlcm5lbC8tL2lzc3Vlcy8xMzczNQ0KPiAgIFtpOTE1IzEzODkwXTogDQo+IGh0dHBzOi8vZ2l0
bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMvMTM4OTANCj4gDQo+
IA0KPiBCdWlsZCBjaGFuZ2VzDQo+IC0tLS0tLS0tLS0tLS0NCj4gDQo+ICAgKiBMaW51eDogQ0lf
RFJNXzE3MzY4IC0+IFBhdGNod29ya18xNTU1ODd2Mg0KPiANCj4gICBDSS0yMDE5MDUyOTogMjAx
OTA1MjkNCj4gICBDSV9EUk1fMTczNjg6IDY5Y2EzMGRmMDAwYjM4MmU3NjU3ZjMwMDE0OGJlNTA1
MDgzMzc3ZjIgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgNCj4g
ICBJR1RfODU4NTogODU4NQ0KPiAgIFBhdGNod29ya18xNTU1ODd2MjogNjljYTMwZGYwMDBiMzgy
ZTc2NTdmMzAwMTQ4YmU1MDUwODMzNzdmMiBAIA0KPiBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9w
Lm9yZy9nZngtY2kvbGludXgNCj4gDQo+ID09IExvZ3MgPT0NCj4gDQo+IEZvciBtb3JlIGRldGFp
bHMgc2VlOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTU1NTg3djIvaW5kZXguaHRtbA0KLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCkludGVsIFRlY2hub2xvZ3kg
UG9sYW5kIHNwLiB6IG8uby4KdWwuIFNsb3dhY2tpZWdvIDE3MyB8IDgwLTI5OCBHZGFuc2sgfCBT
YWQgUmVqb25vd3kgR2RhbnNrIFBvbG5vYyB8IFZJSSBXeWR6aWFsIEdvc3BvZGFyY3p5IEtyYWpv
d2VnbyBSZWplc3RydSBTYWRvd2VnbyAtIEtSUyAxMDE4ODIgfCBOSVAgOTU3LTA3LTUyLTMxNiB8
IEthcGl0YWwgemFrbGFkb3d5IDIwMC4wMDAgUExOLgpTcG9sa2Egb3N3aWFkY3phLCB6ZSBwb3Np
YWRhIHN0YXR1cyBkdXplZ28gcHJ6ZWRzaWViaW9yY3kgdyByb3p1bWllbml1IHVzdGF3eSB6IGRu
aWEgOCBtYXJjYSAyMDEzIHIuIG8gcHJ6ZWNpd2R6aWFsYW5pdSBuYWRtaWVybnltIG9wb3puaWVu
aW9tIHcgdHJhbnNha2NqYWNoIGhhbmRsb3d5Y2guCgpUYSB3aWFkb21vc2Mgd3JheiB6IHphbGFj
em5pa2FtaSBqZXN0IHByemV6bmFjem9uYSBkbGEgb2tyZXNsb25lZ28gYWRyZXNhdGEgaSBtb3pl
IHphd2llcmFjIGluZm9ybWFjamUgcG91Zm5lLiBXIHJhemllIHByenlwYWRrb3dlZ28gb3Ryenlt
YW5pYSB0ZWogd2lhZG9tb3NjaSwgcHJvc2lteSBvIHBvd2lhZG9taWVuaWUgbmFkYXdjeSBvcmF6
IHRyd2FsZSBqZWogdXN1bmllY2llOyBqYWtpZWtvbHdpZWsgcHJ6ZWdsYWRhbmllIGx1YiByb3pw
b3dzemVjaG5pYW5pZSBqZXN0IHphYnJvbmlvbmUuClRoaXMgZS1tYWlsIGFuZCBhbnkgYXR0YWNo
bWVudHMgbWF5IGNvbnRhaW4gY29uZmlkZW50aWFsIG1hdGVyaWFsIGZvciB0aGUgc29sZSB1c2Ug
b2YgdGhlIGludGVuZGVkIHJlY2lwaWVudChzKS4gSWYgeW91IGFyZSBub3QgdGhlIGludGVuZGVk
IHJlY2lwaWVudCwgcGxlYXNlIGNvbnRhY3QgdGhlIHNlbmRlciBhbmQgZGVsZXRlIGFsbCBjb3Bp
ZXM7IGFueSByZXZpZXcgb3IgZGlzdHJpYnV0aW9uIGJ5IG90aGVycyBpcyBzdHJpY3RseSBwcm9o
aWJpdGVkLgo=

