Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D95BBE16C0
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 06:22:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2570E10E2C8;
	Thu, 16 Oct 2025 04:22:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m6Darzjl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3E8210E2C6;
 Thu, 16 Oct 2025 04:22:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760588551; x=1792124551;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JvV7C5dUSgdfocHAg9Awlb6nCAz4VwgqxxcVcfJ5JtA=;
 b=m6DarzjlSeDUKkDCHeaM9mMGrSR1eYcLLKHOcq5Zo/USee3r9AG6cCLR
 SmnG9bghhJWKotLPtkMszkmm+zxrLmQ0gUBzPcv7oT0SVuVfHIBSH6MJN
 hvelQqZ92emucsQbSEKIJ6+SCokc7wCR56iOGdwMu9GkofkXa/1sc0ybl
 tqEv+VTKeGzAibYCxC+NjxD7Yhf22ebmV89w0oN3lwQeKXew1TBGBP+zu
 YXY9jnDJkE0zeN/HK7jfZYeuxYmutwRVZMIelO8eF/4hWh5/WxWd5/lX2
 7d4QZzcznJsfgSTnLQxIwG8qTnoIigffK+4i7Sf5xe+GXABKCbxUzA6EY A==;
X-CSE-ConnectionGUID: 7QWaViUtRv2df3Z/CG1e9g==
X-CSE-MsgGUID: 9Wcu1p+KS6OCFR0FBHsfCw==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="74113615"
X-IronPort-AV: E=Sophos;i="6.19,233,1754982000"; d="scan'208";a="74113615"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 21:22:30 -0700
X-CSE-ConnectionGUID: klt5CmraTZe2QUQYzapAyg==
X-CSE-MsgGUID: BU3+dnQfS0yihlFrbpwbqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,233,1754982000"; d="scan'208";a="213302443"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 21:22:30 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 21:22:29 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 21:22:29 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.36) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 21:22:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FEu0uqyB95UiPiUQuzYFKyKQF8L5sNVRumrKwyKKWgWg+tyjFp67KJoLX2/K/lYNM0JHaKRNyxFj49oKCf3mXKm4Rf5ycIaH7tfxmHyF4JqhtMRd7hFdcuWrgzRh+y/jvKDX5tjoh71Uj+iNLlXQmyiwqf4EWg6yRdWwyY6uW2+ocMqaRBKqLTyGmdrjTqbiH+4rHd0xotx139Lb1tiHFRJO5T8GyirENL1wWtW5TK/1VtbG4e+dD14NNqXsKVGT+EimcrnbypAAOqTGOtBm4wuZg28RA3iWvJXkBdo1MybBduZUt8Vq6YI5Fz9tbgZFE++T6B7MS/IRlhLz4ubeBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JvV7C5dUSgdfocHAg9Awlb6nCAz4VwgqxxcVcfJ5JtA=;
 b=LDg4teKJHM5phO3qDBJdBDEbOsm6lWCTicjP0uo8kfClQWQ64PUjFEuRshPPzkhig1//1hsjVPms5PqNjcs3xqhMDZHx1EPInvoXlSDhwAhIqGffP659D8UNvXqkMA/8+vFACIQ9OFBRTB6U6OmN+CscMXB50UUwDiuZ8/hTr/NZOfUEsydTuPDaKoAtc9Xm4zf6hHTX6TwqlMFiDg+0I3nDlT2J43FlpeaBqhFNGGiW0HWW2MFZa81dm6sbrdoqZG4s2lx3759+yB/nNYzWThY3PpvgfvbGrfGJWeQcr4VupMZjWuhdnAyVtNJtQepQoE6BJVOgImZykPFSwAh+8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5491.namprd11.prod.outlook.com (2603:10b6:610:d6::19)
 by DS0PR11MB6422.namprd11.prod.outlook.com (2603:10b6:8:c6::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.13; Thu, 16 Oct
 2025 04:22:23 +0000
Received: from CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::250:1566:d191:a23b]) by CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::250:1566:d191:a23b%5]) with mapi id 15.20.9228.010; Thu, 16 Oct 2025
 04:22:23 +0000
From: "Ravali, JupallyX" <jupallyx.ravali@intel.com>
To: "i915-ci-infra@lists.freedesktop.org" <i915-ci-infra@lists.freedesktop.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBpOTE1LkNJLkZ1bGw6IGZhaWx1cmUgZm9yIGRybS9pOTE1OiBB?=
 =?utf-8?Q?void_lock_inversion_when_pinning_to_GGTT_(rev2)?=
Thread-Topic: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbDogZmFpbHVyZSBmb3IgZHJtL2k5MTU6IEF2b2lk?=
 =?utf-8?Q?_lock_inversion_when_pinning_to_GGTT_(rev2)?=
Thread-Index: AQHcPbS7PCfkZ0YFvUqzNYOaVBOlurTDBOmA
Date: Thu, 16 Oct 2025 04:22:23 +0000
Message-ID: <CH0PR11MB549154EBD70F19A315500EADEFE9A@CH0PR11MB5491.namprd11.prod.outlook.com>
References: <20251014125504.14804-5-janusz.krzysztofik@linux.intel.com>
 <176047796460.12447.7161243985847652732@97596180aaec>
 <13864218.uLZWGnKmhe@jkrzyszt-mobl2.ger.corp.intel.com>
In-Reply-To: <13864218.uLZWGnKmhe@jkrzyszt-mobl2.ger.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5491:EE_|DS0PR11MB6422:EE_
x-ms-office365-filtering-correlation-id: 32ea8fa6-11d1-4f7c-0fb9-08de0c6b9acf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|10070799003|376014|7053199007|38070700021|13003099007;
x-microsoft-antispam-message-info: =?utf-8?B?a1VsMzJmdzZEQXlQOVJVSHpwWjZtcXlVSHNibHVQYXJzQzJDb2E4akovbzl2?=
 =?utf-8?B?ZitGamZMYkxxSVM3ME9ZZlRpdU02dW81NG5qWVpZeUFBNzlXK1dxeUpXcWdE?=
 =?utf-8?B?NVJLME9la1dxWUwyQ0lVN082T3RidzZUMCtXV1EzMjF6TXdRMzFYcW9mOHF2?=
 =?utf-8?B?RDlWYjBCUUhrUHhaQklNMnpxMW5paVJONGM3eWhFZFhTUHB0RFJVd2RFQVRM?=
 =?utf-8?B?L1ZNSFNvZWxRRHYvWWVMd3N0blpGWmphSGhjT3F6K3BoS1NjbllyM3BoTHFF?=
 =?utf-8?B?RzdweFJyNmkvNFVBdG43U1pESWFqTmR6alFvcjFuM05odFlSeDM0aDZnRHB2?=
 =?utf-8?B?eG8wU2toS0k1c2FaS0hNRmNOMlZYRnNyR3k4c2lIMU10UFQvTXovQzdrYXFq?=
 =?utf-8?B?ZUZ1Q3FQam8reWdEQnFXNW8wWjJiZmlQYzhLRHRmcWlzcDJLVlRmWVN2UWRu?=
 =?utf-8?B?eTdxMzVtc1BmUVpNQVRjWE5DdVV0MUwyR0YxYjdWckFYMk5Ma0NkMmhJT3F3?=
 =?utf-8?B?M3p6ZGg2QUVTa2hwYXV4cU5Tc3V6UXpTOXZML2wzS2JySlZHOWVPYUE0RUQz?=
 =?utf-8?B?NHJKUjFac0p5ZFFLK3dxNTFZV0F6WG9rR3hpNzlWYlZmUUJvdjV0YTAzQTNU?=
 =?utf-8?B?ZWNqMm16TDNjVHFEOC8xTVBCSTdQQlBiUTBEakVxcTJiTjh3SHdQTjVmZzRG?=
 =?utf-8?B?M3owWE1ZZnZFeG9aMWdPaXVWR3RIZkdUNmVxaHNsc1ZudkxlNkZWVUxWOHVG?=
 =?utf-8?B?dFJzSmtJclRPNFBtcHJRS21GTkt3OUZjT1M1SVNNTThTdW9ieXNPTGxOZ1JK?=
 =?utf-8?B?cEpZcnV6dmlSWDh0QmdKQWlGc3JnSm1qa290Z0RiYnVqWmgzWllqM0VzSm5o?=
 =?utf-8?B?dHphZk1PSWtUMmhEcFR3T3V6UzJIeVljVDB0dmpIaStLR2Z3VWFoMnBaUWhZ?=
 =?utf-8?B?ZlBneDB4ejNzdWw0U3hDczRDNmJDTUZxeDhLWWgvOXNUVnhzeHRKT21FbVFt?=
 =?utf-8?B?MjAyeXcxU2hucU9BRzZxbnNYOUFkUzlYYVdqd0FHOGtnQ1ArNUVvOE0zNXg5?=
 =?utf-8?B?VmxuR1ZEZnBHd2txcGY1eDhtRlpYSzRRTFNqcFRUTWF4Y3RKMkc0VW5Telky?=
 =?utf-8?B?NHlRdFY2ZXRKaS9LMDZjUEVhUWNoUFdkUmhSdEJubE9IQ1I3T1NGWE1FdURn?=
 =?utf-8?B?Z0djN1V4czBZaXV5QXB3K21Obk0xZi9jcFJZZXpUMUlRSWVWR3hZZkF4Ykxu?=
 =?utf-8?B?NWcvQU5yMWZqYTlUTy9sSEN1RXI1bVB4NWI0TWVXSmswU1ZmSUE0TVFld2xz?=
 =?utf-8?B?bVZ3MXBoVnJ3YUZaTDVyVnBndnJNbG5ZS24vbEhPaFlRTHhQODN6Q1FLcUZV?=
 =?utf-8?B?U2dUb3llMmpkMTc2ODQrNnFUVTRnV3IrbVJINWhOMmVPQkFHaVBkVThZaVBU?=
 =?utf-8?B?cldOMncreWxOS09zUE5jaHV5R3BkcFJUNkV2MUlEcUZpZTZxTERlaU96VTNW?=
 =?utf-8?B?SWUwN3JVVFhmT20vYXc5RHFHZFE0cHNZTVcvQmJNcURZeHFGeGM0cVI1dVZJ?=
 =?utf-8?B?OG55RzdhQ3RsMFNpUW5LSDBGY1FVZUwvL0M4U2pjT2djQklGbk92bFM2Rndv?=
 =?utf-8?B?cWhHckJmR1VndjBIN0taUXdLS0dKWG9TVExTa3MwS2dUVFBrSjhMYjFBNFV1?=
 =?utf-8?B?Vk9DckExYUY4bHVPN1JEWFhEZ2Y0dW5OMzZFc3JERVU2eXczWS9ML1pkd1NQ?=
 =?utf-8?B?REpEWGNhTUsvQjhYK2NLNUxaTkRqZ0pPbEdXejNvYXNVRUN6UzRDSWhKYUZn?=
 =?utf-8?B?LzNGMms2ZmthTFMyck8wRFVrTzVkNUVDOWR1NFZWSlZZWlFiRDMxVld4anlK?=
 =?utf-8?B?SWlERkxmL1hMK0J1RnR0UnFqZXFEN09NTk1ZMmlzNlVvRk5yRktFWDdtOVFQ?=
 =?utf-8?B?MWJsV1d6QmZHcytmVDZrSlFQc0xsbDI0TmFjcWtCUXVLZTBGYmQ2QVVaMFNX?=
 =?utf-8?B?UWFPUjJVUmVRPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5491.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(10070799003)(376014)(7053199007)(38070700021)(13003099007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MFJ0MjZrUEJlSlJSUzB4QUpselJ6MnZsMHFzL09yeE9XdjhVZDkzcDd2U01F?=
 =?utf-8?B?SmxMSUNHQ3BPeGh2aVpPYzVwdnN0ay9QenBhbUJ3M3J4c2xVcFJQMW9uejFa?=
 =?utf-8?B?bWFqTVhoUklnNGI0WXFJYTliQ0pDNTNYVzJKSGJqOVI5VDBtZmxneWFtclVK?=
 =?utf-8?B?elFOYnBieUNvWEhFRERLZzJ0VGZZZFJJYzV2N1d0b3Z0VEUweWZQYlRpc1Fm?=
 =?utf-8?B?ZFNQSSsvZlNBQTlzZlBaOHRXOENiQTE2Mmhva1pIb1BCL0dYbzE2eG5GeDRh?=
 =?utf-8?B?K3Q0c0MwYWJIbjZSbXA4NHhYcnFDZHVteG9palVJdU1KQm55ck5PcWZTRm11?=
 =?utf-8?B?eTBRRnBhSm1TNkY0Ky80aE9aNzUwOUNhWXJ5WW0rQnVUWGN0NEcxUjFsUXZX?=
 =?utf-8?B?bTFCdFdXVWpNeWtlV3RVbHNoOERGWEZoNkROWGRFblZjRGFtYVl3eTJkNnpR?=
 =?utf-8?B?bnA1R3ZQNEUwSUJrdzNWa0ZoRVBaaStaV0R4VW9iR1dzWHRJRHFvQnFYOHdy?=
 =?utf-8?B?NlZZcmljbEdRQ1JnRkI2WGZ2N0JYNzBzK2w3V0k4MWordmRKOU5JZndmUFAr?=
 =?utf-8?B?VlU3QmFCZVY4MlE4OFhqRjlncThxdnlLejlnNTMzVnNod2R1N0JOTEpzSTcy?=
 =?utf-8?B?ZmdmT1AwNnRTeXhremczYlpSWnMvRzVSckNCbVNqazRvNkp2R2hMS2IwOTNw?=
 =?utf-8?B?MHY3ZmRMNk9aQWh2MENwMUliQjdwZEZZcTJJQlRQT0RQSG1WclBQaDVuNTJk?=
 =?utf-8?B?TXVSVi80eWpML0dnaW85Mk1kVWQ5RXplYmc2bEhQcmdyVEJTRWhJN0h0emxM?=
 =?utf-8?B?eDQ1aWZEZG15bUF0UHk4UFRGRjhXOXlsZ3pNZmVHaWZEU2dBRXJsS3lkQmQr?=
 =?utf-8?B?eFhXLzRRcXY0b3Q3Snpsai9mR01zdU13NktxZ3piMVBmNEdzeisyYm5RWlhm?=
 =?utf-8?B?aWp4dUtwSHR3VWhtalBsMTNWN1U5K1F2TEVHeHcwWTJjUmhUYWRGaEZoaFh4?=
 =?utf-8?B?ZmZUVzdaaVVJcm5ybCtBWHJxQUQ4dTlvdWVmb2cxQ0twR2JDaldmSUgvcHJJ?=
 =?utf-8?B?RUYzUHFka2Q1b2lQbnZLdHdJREVpSFJPdlFLakxaSmFOQnZFYjVuTFlnNERW?=
 =?utf-8?B?SXNPTHlVTmpVWmo2VTdKSzltL3hreHhaZVc3YnNXTzZidlN6RE4zRkoyc1hj?=
 =?utf-8?B?T1phR0o3Y2NyL0hqWTM2NUVwQmp6eUpCWWRBUDZMWnBKSGpxVkdRUFF6dHpB?=
 =?utf-8?B?bE5aaHFOMmlaaitoMlJUWk14dW16OU1OT1JUc0JVQXN3aDlpYkd0SmRldGtK?=
 =?utf-8?B?YndCdVN5dEZzYyswdEN6NmdSYzVNMDhBYnk1SmxTVzlrc05KT1VSWHN6dVFF?=
 =?utf-8?B?V25sOUZ5eWJPdnBNYjB4WEhzRU1WdVdsSFFSSlo5V3pUcDFzUVFmb24xUkht?=
 =?utf-8?B?RnVFZnNrVkV2UkN6YzJPSWFabjhoTzBQcWFoaHJ5Z0c3ekhabzhaMDNZeUNl?=
 =?utf-8?B?T21Pb1lKbUdoWkVjQ1AzSTRjcm1aS2V1N0JFSFh2ZWdOU3QrY0taZVV5cWxI?=
 =?utf-8?B?WWdwZHB1WVg0NnNVSkJxVlBFWllPb1cyVGVCVXdyRE50ZXJFL2lxTlBucHRl?=
 =?utf-8?B?K3lmUlNMZldHeHJaWWdYaVk4RDFZdWhHcmVHYktwOVE0NGE5bFVqeURzK3pG?=
 =?utf-8?B?OTNtQXhFVzVXT0cwK2ZKNFdZdlBGOXVBdGxTcU5aV2M1ODNtRjNjMEJmT0Z1?=
 =?utf-8?B?ZGNqNEI4WXVQSFBXaEdHbjhaeGhncTlJSyszZm9EVVVtVlp4T1NvSkFvU3VL?=
 =?utf-8?B?eWt1Rmt2cHl5aWplTEZ3QWo1ZmpmbnM4eUhPcGZMS3hnUXczYVJBSEk5L3A1?=
 =?utf-8?B?cllaaThvcjNZa2tkcEVGM3hEOW1VeXBBVVF2VVVoVkpRVWlKNjhMemw3L2dw?=
 =?utf-8?B?dlhXQ0hEMUlpQ04rQ0FicUpDS2hkYVZ4ZEY4bEx2QmwwMkVvSGRpUG9xWWlj?=
 =?utf-8?B?bDVjZyttMU5XbEZpTVR6ZlY2OUJsdXBDV1RwMzhVVUdITFFSNGtWQThGYTdN?=
 =?utf-8?B?NWlXQVJYZnpmRkdpNG5EdTBxTjE3b1ZvaXRVUnBrRVJobnFUVlY1R29JQnZp?=
 =?utf-8?B?dkFhcUhGbUlQSTJTcXBJYnAzTnZvcllUUndQdVJWdXNiKzlUam1hcFpsdlVz?=
 =?utf-8?Q?94TiBAwgsMOGqvnrIniwEJbtcmP2ady9C7LAijPJcZBe?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5491.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 32ea8fa6-11d1-4f7c-0fb9-08de0c6b9acf
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2025 04:22:23.1355 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YCWONF5t6J7qKPh/tpu67FRMF6Dl07IzKMDujHVOWYuiNowIkVa3dfPwlIkA+ngQ6e6cWF1uLd1xCcxg6gGWbgBv45uYndgx3DxfhfbLDk0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6422
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

SGksDQoNCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTU1NjIyLw0K
aTkxNS5DSS5GVUxMIC0gUmUtcmVwb3J0ZWQuDQoNClRoYW5rcywNClJhdmFsaS4NCg0KLS0tLS1P
cmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEk5MTUtY2ktaW5mcmEgPGk5MTUtY2ktaW5mcmEt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKYW51c3ogS3J6eXN6
dG9maWsNClNlbnQ6IDE1IE9jdG9iZXIgMjAyNSAxNDo0OA0KVG86IEk5MTUtY2ktaW5mcmFAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnDQpDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0K
U3ViamVjdDogUmU6IOKclyBpOTE1LkNJLkZ1bGw6IGZhaWx1cmUgZm9yIGRybS9pOTE1OiBBdm9p
ZCBsb2NrIGludmVyc2lvbiB3aGVuIHBpbm5pbmcgdG8gR0dUVCAocmV2MikNCg0KSGkgSTkxNS1j
aS1pbmZyYUBsaXN0cy5mcmVlZGVza3RvcC5vcmcsDQoNCk9uIFR1ZXNkYXksIDE0IE9jdG9iZXIg
MjAyNSAyMzozOToyNCBDRVNUIFBhdGNod29yayB3cm90ZToNCj4gPT0gU2VyaWVzIERldGFpbHMg
PT0NCj4gDQo+IFNlcmllczogZHJtL2k5MTU6IEF2b2lkIGxvY2sgaW52ZXJzaW9uIHdoZW4gcGlu
bmluZyB0byBHR1RUIChyZXYyKQ0KPiBVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNr
dG9wLm9yZy9zZXJpZXMvMTU1NjIyLw0KPiBTdGF0ZSA6IGZhaWx1cmUNCj4gDQo+ID09IFN1bW1h
cnkgPT0NCj4gDQo+IENJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzE3MzYyX2Z1bGwg
LT4gUGF0Y2h3b3JrXzE1NTYyMnYyX2Z1bGwgDQo+ID09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT0NCj4gDQo+IFN1bW1hcnkNCj4gLS0tLS0tLQ0KPiAN
Cj4gICAqKkZBSUxVUkUqKg0KPiANCj4gICBTZXJpb3VzIHVua25vd24gY2hhbmdlcyBjb21pbmcg
d2l0aCBQYXRjaHdvcmtfMTU1NjIydjJfZnVsbCBhYnNvbHV0ZWx5IG5lZWQgdG8gYmUNCj4gICB2
ZXJpZmllZCBtYW51YWxseS4NCj4gICANCj4gICBJZiB5b3UgdGhpbmsgdGhlIHJlcG9ydGVkIGNo
YW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMNCj4gICBpbnRyb2R1Y2Vk
IGluIFBhdGNod29ya18xNTU2MjJ2Ml9mdWxsLCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0g
KEk5MTUtY2ktaW5mcmFAbGlzdHMuZnJlZWRlc2t0b3Aub3JnKSB0byBhbGxvdyB0aGVtDQo+ICAg
dG8gZG9jdW1lbnQgdGhpcyBuZXcgZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxsIHJlZHVjZSBmYWxz
ZSBwb3NpdGl2ZXMgaW4gQ0kuDQo+IA0KPiAgIA0KPiANCj4gUGFydGljaXBhdGluZyBob3N0cyAo
MTIgLT4gMTEpDQo+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiANCj4gICBNaXNz
aW5nICAgICgxKTogc2hhcmQtZGcyLXNldDIgDQo+IA0KPiBQb3NzaWJsZSBuZXcgaXNzdWVzDQo+
IC0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gDQo+ICAgSGVyZSBhcmUgdGhlIHVua25vd24gY2hhbmdl
cyB0aGF0IG1heSBoYXZlIGJlZW4gaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTU1NjIydjJfZnVs
bDoNCj4gDQo+ICMjIyBJR1QgY2hhbmdlcyAjIyMNCj4gDQo+ICMjIyMgUG9zc2libGUgcmVncmVz
c2lvbnMgIyMjIw0KPiANCj4gICAqIGlndEBpOTE1X3N1c3BlbmRAZGVidWdmcy1yZWFkZXI6DQo+
ICAgICAtIHNoYXJkLWRnMjogICAgICAgICAgW1BBU1NdWzFdIC0+IFtBQk9SVF1bMl0NCj4gICAg
WzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xNzM2
Mi9zaGFyZC1kZzItMS9pZ3RAaTkxNV9zdXNwZW5kQGRlYnVnZnMtcmVhZGVyLmh0bWwNCj4gICAg
WzJdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTU1NjIydjIvc2hhcmQtZGcyLQ0KPiAxMC9pZ3RAaTkxNV9zdXNwZW5kQGRlYnVnZnMtcmVh
ZGVyLmh0bWwNCg0KVGhlIGNoYW5nZSB1bmRlciB0aGUgcHJlLW1lcmdlIHRlc3RpbmcgZG9lc24n
dCBhZmZlY3QgREcyLCBvbmx5IENIViBhbmQgQlhUIHBsYXRmb3JtcywgdGhlbiB0aGUgYWJvdmUg
aXMgbm90IHJlbGF0ZWQuICBQbGVhc2UgdXBkYXRlIGZpbHRlcnMgYW5kIHJlLSByZXBvcnQuDQoN
ClRoYW5rcywNCkphbnVzeg0KDQo+IA0KPiAgIA0KPiBLbm93biBpc3N1ZXMNCj4gLS0tLS0tLS0t
LS0tDQouLi4NCg0KDQoNCg==
