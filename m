Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Tmq9Ne64M2rqFQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2026 11:22:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0DDF69ED39
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2026 11:22:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=k5EbFkFp;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8731210ED0F;
	Thu, 18 Jun 2026 09:22:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE5C510ED0F;
 Thu, 18 Jun 2026 09:22:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781774570; x=1813310570;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Vgjtxn1qWdvO2hHZCIzaYGshrJhj7JA3l/y0OPlnUjs=;
 b=k5EbFkFp4uHPNWgW0t0CDKJDVCTuf37X5o9qpsAFtRoRynBYUftp5XOL
 a1H3dTdGMYeYSjs/mq6uIJQN5cYPIZQHDVa/I9WSmfPKO3eGQoC5jpnlL
 WP4ZoYRk+g+ZxjAKOpuU4AazEOVyoKpDpMC/7+mVZjG2kLQOgSO50v/p7
 s/qE833b2BAElPQrieIxMqfsUEppV1av+m4I7Ffh0cfYp9PTg5gCWBlqm
 tMqMjOIxNuegB7FnD+MGtz7vjtxYbAiHldWMASbQDBqP0AGOLDPOJhESR
 3aiYr3nEpNAjXPB4iI2+01M4cgBH6PoPFMSdGkO3Vb8kX7khfXTkuWLkm w==;
X-CSE-ConnectionGUID: 3+BsGgfrSQ+EPrPC81l67g==
X-CSE-MsgGUID: CGBwRc2TRZOF5P5btwaRVw==
X-IronPort-AV: E=McAfee;i="6800,10657,11820"; a="100160768"
X-IronPort-AV: E=Sophos;i="6.24,211,1774335600"; d="scan'208";a="100160768"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2026 02:22:49 -0700
X-CSE-ConnectionGUID: taLh0AP6RP29R70968TuBQ==
X-CSE-MsgGUID: +uAK5HhUSTqYjy6Z9SmB4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,211,1774335600"; d="scan'208";a="250209917"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2026 02:22:49 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 18 Jun 2026 02:22:49 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 18 Jun 2026 02:22:49 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.20) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 18 Jun 2026 02:22:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d2DvZd4xfGSJ/K3IHApIHCCjaa6ZKzyvrKcbSJ8Ku0zIbOYW/hpojS4pKacOdbkyDFZZ0QfBP4sER/75xsl0AlXduNytNvGBMKfq6BlazpQqPy0OkeVZ/sSoIFnMKKPv7TeJL4IGovgXYOtw8CJP5xb/HuPdq7oEPHxO1el0lzel+zSXSeI0urkQRp60GSQlMdv+5BQU0lcsmdQrmf9Vrcb9x+BczTK8MlxUXE8UQ5PQ1m4m6B4eeNP177vBtizWKX7Wp6fDedcM4SlpKGANRZqpGFCeKhfqkfslf333520uXGv21qG004myYZpIi2osu545a0gzV4EzgjMunqiI1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AQcSzfBlnBSOJGdc0+GMX++V3efK3wtNZ17DP/og/DI=;
 b=qjPpcrMp+0FPXhlwUUhYyy7mNUOAI3hFMB41ZwVEN5L12lfpBi6iLqeP7qADOuI/gDP06Tj6JloC6Y86KYj1fYR0FgZix88YShWkpnHR4flBrIcGxnV7ceyY54fD/u25a3dv/Q4DQ30NRfWZXn0s7lVbmdyXzTmdONwJM8sY4DHuzOKmbAcxsFflwudlfAfOgxrtNLx9L84HAiq3EMljR8aIb4MNz0kTGh6g7uMh5/W0mitLZ53YHTkSBMy4X6fSkUcJwpXRp49pf/+0GhYqYPmT/YDkFly9WSZX55LRdzAEldIq1x7EIIlH9BgQqTloBzVcM5dJe9Gooi5Yg7t/Gg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA3PR11MB7554.namprd11.prod.outlook.com (2603:10b6:806:315::9)
 by PH3PPFA5F77FFEC.namprd11.prod.outlook.com (2603:10b6:518:1::d40)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Thu, 18 Jun
 2026 09:22:46 +0000
Received: from SA3PR11MB7554.namprd11.prod.outlook.com
 ([fe80::3ec0:2280:db82:d67b]) by SA3PR11MB7554.namprd11.prod.outlook.com
 ([fe80::3ec0:2280:db82:d67b%5]) with mapi id 15.21.0113.015; Thu, 18 Jun 2026
 09:22:46 +0000
Message-ID: <2573aef3-53c1-4c1b-8fe5-2055ad308a13@intel.com>
Date: Thu, 18 Jun 2026 14:52:38 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/i915/alpm: Move the check for PSR and Fixed RR in
 compute_config_late
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
References: <20260616080627.2136659-1-ankit.k.nautiyal@intel.com>
 <DS0PR11MB80499D7BCB69B9CEFBDE16E7F9E52@DS0PR11MB8049.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <DS0PR11MB80499D7BCB69B9CEFBDE16E7F9E52@DS0PR11MB8049.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1PR01CA0163.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::33) To SA3PR11MB7554.namprd11.prod.outlook.com
 (2603:10b6:806:315::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA3PR11MB7554:EE_|PH3PPFA5F77FFEC:EE_
X-MS-Office365-Filtering-Correlation-Id: e66c681f-38ff-4cdf-a983-08decd1b2885
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|23010399003|56012099006|11063799006|22082099003|18002099003|3023799007|4143699003;
X-Microsoft-Antispam-Message-Info: DG5z/M6IUYaKFDHN3ncsnupNbbx8FDEMVUoP93YHq2KMBStBv/Uy3R562cub+c4pZydGfPG06bVOhojrzesW+UBMoAU+DnW3BDG67csmIzxxxIkGlskfoFWUCwpcQ9o4rmt+JeL9AhNYYUM69xnvPCdR7f4WyGaThJ4eELUSEK/C9/ACrTssqTGDEvx3Db1N8lkc246YJreb23g02dEQVou6ekwvk5joKr16YDq3FQss3rixQ90JoC8DxzF2O8i87QfAw8l2SIJE1y1tmIVOBfgmNnNoswaobW9+4gBJHV6C21oIm9jn4WI4Z/huPTTJDrNhrvSzmk7DJH7Ff50zTUpxCMYP96OwN2Wlb2CzQp5HDsFF9dB8KbVvJZugOFqBq2d3H7v1UWrL/n0s17YGoCAKsZINfYHVM8PdkjXcAslgIttNkVRGct65itk9l0SWVJHUp4BRXr6/9fdJGSmMlvNM9w2Tx3W5AGy6QpwNT++4YOyBmlJ04UVXxoTm8chM/Fayw57pMZihjw+EkwnAbwFUC8PlBg/+CAGRuWae3UbIgK1hPwDOTnBzBr7t/5C8dsKVvHIoRyj+l3pMOutzG/QRmIQvUrvVz17OGAxFv9jk02jCKpvtFiNsK6VRIf7INqHpjOEJ7U/2J9lecqlKKEXuXQMrETpy4Bzihk3IImZSZnICQPX0m2QBTZjnmDmx
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA3PR11MB7554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(23010399003)(56012099006)(11063799006)(22082099003)(18002099003)(3023799007)(4143699003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZlE3TW9BWXlweEJWeTM3Nk9xMGRobUxaZU1PU0xsbTltUlJ0UjA5SjhzRUpv?=
 =?utf-8?B?NVBXcTFMYmVSNzJMU1ZrcXUva2VTUnBhcUpERCswTHZDOUE5NWJQdHhVcUZr?=
 =?utf-8?B?QVQyV2l0RTV0VjVHeUxOVWJBWS9QL2h1TEovcDB3OTB3Tm1DYTlFSWNSVmFt?=
 =?utf-8?B?cUhtbmhaRDl6RmU4WEtaUjVkME1FenBtd2lRdVJCeVRoRGFMYlVJZWVsVGNN?=
 =?utf-8?B?anUvVGV0ZmlMdlhVOFlHZGNoQ3EvRzd5RW1OT3NSTjMrdS81MFFiOGdaYUxU?=
 =?utf-8?B?QVFEUkE5TzNGQ1hRcWJaWmd6TmRLbnlEOUI5T2RYdFQ4L3BoVERWYXlTTEtp?=
 =?utf-8?B?Sk8vbEcwZko0UW53YXdUYmsrM1dIdmsxa3dBODJ4eC9kQUpGcWlnK3lac3Uv?=
 =?utf-8?B?N3paU2oyQkYyWDRYaEkxTnhpTEpjYlU0dXhDOFUyNlREUGVXM1ZFL3VxbU9n?=
 =?utf-8?B?akt1VWN5cml5VTRTeTcyRDNadFc4bHhkV3ZrN0ROeGJrc0V4eThTVkpLZVRu?=
 =?utf-8?B?ZzYwb3RUdVE4WmVkQmtKbnVYOTYxT2dBTVAxdnlwSEdjVnBJTUJsZ25OQUEv?=
 =?utf-8?B?K2swYVRUczNmR3BrSUlZa2NuYWlTM3plQWQ3c3RsaE4xMmhmNTJUb1lLdzZP?=
 =?utf-8?B?QVdOVml2MVEzaUJRUXlvQXBaZUlkbTZYSTVIa2dHekdMNVRzemxFbkJ0YTda?=
 =?utf-8?B?Z0U2NnhsV1R2K3RCUTZpVmJWZGtGK2h0cnNhS2JZRDREVml5TitGajkrNDFB?=
 =?utf-8?B?Y3RRdnNYSzAzVjkydDl5RGpMYVBsT0RleG8rblhkVmI0dU41N2plMFdoQzVF?=
 =?utf-8?B?ZWZnWERtV3VGaWdrT2UyY3ZyeFhidk8wVVpsdW9sdi9vS3BFdG05Q3cwT1F4?=
 =?utf-8?B?d0VBdGg1UWlBbExYemlTMllWR1JOa25yQjFTaDJjc2NlNFE4NGxsM2ZncDNi?=
 =?utf-8?B?K0xhWGhDcVlkMy9lVFpNemtNZ3Z3dGhyZmNuM083MUxESCtBZHFzWWRuQWdV?=
 =?utf-8?B?L2dHSW1VdjhSSVpnMkVvdGhpR2tTaFFGSDdDY1h6SVcrWWQvQjJtSmo3NVow?=
 =?utf-8?B?K2l0WXgxUy9zNlo4cE9rVnRhUnl3V1VvMFlyTDlBSVV2TlRDV0dWNUxOa1JG?=
 =?utf-8?B?OWdpZ3prdWkwdlMveWRxb2JkTERsOGsrMHc1bjhML2tYZGltQm5iWFJhN1Fl?=
 =?utf-8?B?WkwwZVlNbTNyM1hyRDFvbkIvNXl4dE82ZmdZTE5ENGs4K0hFbXNMcnBpYUJi?=
 =?utf-8?B?emxCMHNJMWhiMUxYMk5wYWlmSUlTa1VkcVVXMUgrV1V3ZWsrT3J3azgrWVdq?=
 =?utf-8?B?QXhyTkxGVzdTeXE4RWRwWlp6SVVyZjRBTGVWNWtTdGJzZ2Y5KzNybWZyRCsy?=
 =?utf-8?B?aUtDR2E3MGZscDFIMG5OcU40UG5tMU50UjNZNDN4ZTRZZ0xEd1JENFZxeFlK?=
 =?utf-8?B?VGx6UklsVk5uZUFvdmdicFhMWHNRZUh0d3RmNU5uZ2cwbXpsdi9HMTY2WERj?=
 =?utf-8?B?aUt5U2oreDhvT1pJMFh0TEZRMzBtR0ZteGFzRU95WS9QSHhOR3N1SDhFUTd4?=
 =?utf-8?B?Sm5CdEVEN0YrcG1wb1J1VmZJdGNQdlBLRGR5ZzNJaVlNdEJYLzMwVXNaVlJj?=
 =?utf-8?B?d2xsb01EMEZ5cFFZYkdpL0VwemhFMkZWMVJqeFdoeE4rc1JyQ2NIT29MUnRK?=
 =?utf-8?B?Y294UnI4YXVmMmZKNE9pSUFncnFOdU5IcW4rVHBUdC9tZ1FJZU00ODl2d3Rn?=
 =?utf-8?B?RCt5b0ZFTUJISzRUV2g5MkdVQ21lRkovNGJmdGFTVzFKUmpiQlpIMnZjYW9Y?=
 =?utf-8?B?SUN3aTRsSU00UkFJRWVyN2JWTTkrNGVIWTNscVBFaFhwMzBDd09OanY3MFk4?=
 =?utf-8?B?V2I3UzVlU1hOK1VBNlk1MkdsVEJUbFdWZUt4UUxKMi9TcnU3eStidk55Vks2?=
 =?utf-8?B?UWRiRkhIQmx1bllQZ3JTSXh3RGlNNW02c2plV3g5VVVXM2RkWW9pcDAwTSsx?=
 =?utf-8?B?VFhsL0R0a09aSGVaY2pGTndjUXk0TDB1QnZTTUlWZXBMR2tCS2U1cGlJZUU2?=
 =?utf-8?B?VFRCNnQwU0FneG80YjF1THJHa2JQTDZ3dy8vS3JYSnZDTHdxYlNlaXRwaFNY?=
 =?utf-8?B?ekd3TVVQL0hFU1pWcTNrRTNpdWJ6SEY3aVoydWNLMU0wR0dEQXlJMENnaWRC?=
 =?utf-8?B?QkMvV05CWXVwaWJLZERmZkVyNXEzaHZCK0hWVlZ3RE95WlBPdVl2U3ovZjZy?=
 =?utf-8?B?RCtHQ01idm56ZkdtTGtETGV5YXpBMCtHLytnSjFsZklzUzVaTEJ2WDlOLzFN?=
 =?utf-8?B?VFNGZUFZRkZDUGlvUFUrbFNhQ3IxTnY0Y2duSDVYL1QyS3lzYXdDZmhiWTV3?=
 =?utf-8?Q?8ctfWOulZORz8l9Q=3D?=
X-Exchange-RoutingPolicyChecked: og7r+bgQjF3Ov2vTECQ0O0jpGhyQl85ECL2y/QXCcDSB9BUsfnm7Lh7m0soyu1Sqocv+4FQDzhNbQnbk8mVHItrPmIUGShgsGRt4t+tOWtYE0wyK0WHe4R8WXQLSdXn9oW/h6gApTLdIoGKsOIQld64Z1/j5h01CGfeOWoplPUDXXCISX/iU/XszCypG4T8Dy3TUdOEG+2eyp+c0fs9SK2mQT3WkZnc390bSs9NMhBPtxw5RdyxAlNHG4rTIkWxWbTDd97tBMjR3jTVeE/Cz6Fbk/0qTI3opUEXylcPkd9BVCR6nae2vl5ZLSJLd4xNL3M25CnxzxNNmk+mstzQrKw==
X-MS-Exchange-CrossTenant-Network-Message-Id: e66c681f-38ff-4cdf-a983-08decd1b2885
X-MS-Exchange-CrossTenant-AuthSource: SA3PR11MB7554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2026 09:22:46.4896 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gmvZp+Y0qi3TJUZaEOyOWRA4/ZYgCH4K17TzKxM3PT0jxxftbyP1+YOyl9QcafxfkGuMgRmhUxI9JyB9ZFNdjMZwWaj0UPivjzfS/WtRtfY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFA5F77FFEC
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D0DDF69ED39


On 6/16/2026 6:03 PM, Manna, Animesh wrote:
>
>> -----Original Message-----
>> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
>> Sent: Tuesday, June 16, 2026 1:36 PM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Hogander, Jouni <jouni.hogander@intel.com>; Manna, Animesh
>> <animesh.manna@intel.com>; Nautiyal, Ankit K
>> <ankit.k.nautiyal@intel.com>
>> Subject: [PATCH v2] drm/i915/alpm: Move the check for PSR and Fixed RR in
>> compute_config_late
>>
>> With optimized guardband, we need to take into account LOBF requirements
>> via intel_alpm_lobf_min_guardband().
>>
>> Currently, we set has_lobf based not only on whether it is supported, but
>> also on whether PSR/fixed RR are ON. Since these features can switch ON and
>> OFF seamlessly, this may cause LOBF to change, resulting in a change in
>> guardband requirements, and eventually to a full modeset.
>>
>> To avoid this, always account for LOBF if it is supported, in the
>> encoder->compute_config() stage. For this, allow has_lobf to be set
>> irrespective of PSR/Fixed RR. Later, in the encoder->compute_config_late()
>> stage, use the PSR/Fixed RR checks to set has_lobf to the final value.
>>
>> Move the PSR/Fixed RR checks from intel_alpm_lobf_compute_config() to
>> intel_alpm_lobf_compute_config_late(), where we already account for other
>> LOBF constraints.
>>
>> v2: Reset has_lobf if psr or VRR is ON in
>>      intel_alpm_lobf_compute_config_late(). (Animesh)
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> LGTM.
> Reviewed-by: Animesh Manna <animesh.manna@intel.com>


Thanks Animesh for the review, pushed to drm-intel-next.

Regards,

Ankit

>
>> ---
>>   drivers/gpu/drm/i915/display/intel_alpm.c | 10 ++++------
>>   1 file changed, 4 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c
>> b/drivers/gpu/drm/i915/display/intel_alpm.c
>> index c6963ea420cc..991de6e2456c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
>> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
>> @@ -291,7 +291,9 @@ void intel_alpm_lobf_compute_config_late(struct
>> intel_dp *intel_dp,
>>   	if (!crtc_state->has_lobf)
>>   		return;
>>
>> -	if (!intel_alpm_lobf_is_window1_sufficient(crtc_state)) {
>> +	if (crtc_state->has_psr ||
>> +	    !intel_vrr_is_fixed_rr(crtc_state) ||
>> +	    !intel_alpm_lobf_is_window1_sufficient(crtc_state)) {
>>   		crtc_state->has_lobf = false;
>>   		return;
>>   	}
>> @@ -343,11 +345,7 @@ void intel_alpm_lobf_compute_config(struct
>> intel_dp *intel_dp,
>>   	if (!intel_dp->as_sdp_supported)
>>   		return;
>>
>> -	if (crtc_state->has_psr)
>> -		return;
>> -
>> -	if (!intel_vrr_always_use_vrr_tg(display) ||
>> -	    !intel_vrr_is_fixed_rr(crtc_state))
>> +	if (!intel_vrr_always_use_vrr_tg(display))
>>   		return;
>>
>>   	if (!(intel_alpm_aux_wake_supported(intel_dp) ||
>> --
>> 2.34.1
