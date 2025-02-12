Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C155CA320C9
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 09:20:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 687C010E7F6;
	Wed, 12 Feb 2025 08:19:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UZ6w2KRy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A39AF10E7F6;
 Wed, 12 Feb 2025 08:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739348399; x=1770884399;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=PJ+weAEVDtJ2WkgvWdz9NRzfY3nZ76/hdx/3iYFm/ic=;
 b=UZ6w2KRy/vduisttgAqnUAv/j3HE85vO7FbnS44nw5sf2vZ1KVhXAN0h
 BzdhePu0cnJIXDfLj3F+f7M28M8a/cCK5c02A+Gn2PkUfXypHSP6T4ma8
 rcFWJsnXFhwaxyTxpGrT5W0tPoDzbeF6gq3tTlkpzctXYLwwW0R4yRr/N
 IxF5hfC17waSzPyq95slc6dzCmU2bSvWSiNSgfHTVeqkhByzldX7ERZIR
 tn/ZyTjfJhAj11R0X8wS0aNxJE38OwmLhjiv9hnq7amhEr7uonQnnSUFD
 Ppd3/HDHIwPVjhlFqV7Z5lt+5r8I76ETzJeU3RhafRvOFxDiVmdqaLrxe Q==;
X-CSE-ConnectionGUID: SYFwfiT9Tt28vPbikiMtLQ==
X-CSE-MsgGUID: Ffx6fc3zQ0egdN5k620YgQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="43756710"
X-IronPort-AV: E=Sophos;i="6.13,279,1732608000"; d="scan'208";a="43756710"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 00:19:58 -0800
X-CSE-ConnectionGUID: qEf/voTiQ5yhKTFWvf6SFQ==
X-CSE-MsgGUID: RmX/TTzzQKqG00MAZUgc5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="112608864"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 00:19:57 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 12 Feb 2025 00:19:57 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 12 Feb 2025 00:19:57 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Feb 2025 00:19:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LnKjKnRTr5RYpK94n4EnzRb2zVNsOmG28CxV1dx6O8mVJj90+VfrtAu/4WPWBkHpFjW1ZUwUJmONeg7WyD8dj4fLiCT7IBj6ZZZifHNBJN8k4HjOUmNqRhjmfixXMwc+62X9w1VX80CQbKRXTNXZgqh1eR95TtJokNfbtJ4PWV1gup1lgV33jmj4BApOh0HdKyY+bPWfbwFMc4PHI57ke543fqQbmkfskcv9RSfLG+xsK56gt5I/m33zx5xCIJIyGyWXhP4B5MCfYuqPqXIap+ksGbUTz7cwsFLglaXXW7oHVGA3Zr6ezmPzxDE7HeKU7/C7zNBnZu8hO+lKZSXDsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PJ+weAEVDtJ2WkgvWdz9NRzfY3nZ76/hdx/3iYFm/ic=;
 b=IgnV85miQZtJCqNBRdymWpjbzaApo5t7m6jt1EpfMkoqMdsoKBpwqaGGobTJB9Che3WzRrez6BLZniQJ2r1ggy/zTe8Kp1+Nm0yTJHMJn5f6zEaYhTzbrwbVySsrj+XIyoHOJ+FG4YlMxm5qNv8HeZO3o8fATelsQUaw6l0E2wb5xjRKLomkMeJZ817n0RGe5jlHK64hf/pa1mevb3p9gWeun3ZCqX3IunwrevcAM6++EPP0OdPDp1kNg50/XQqLczIRUa9wiRISV/NdBXAhx44tgiu0FPlMbh6ckK66FqKb+X14s5Mj46wYdLvVwG484lYL9o592C3WRv9/k8aabA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 CH0PR11MB5282.namprd11.prod.outlook.com (2603:10b6:610:bd::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8445.11; Wed, 12 Feb 2025 08:19:36 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::f6db:9044:ad81:33d9]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::f6db:9044:ad81:33d9%6]) with mapi id 15.20.8422.015; Wed, 12 Feb 2025
 08:19:36 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, Ville
 Syrjala <ville.syrjala@linux.intel.com>,
 "I915-ci-infra@lists.freedesktop.org" <I915-ci-infra@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvdnJy?=
 =?utf-8?Q?:_Fix_DSB+VRR_usage_for_PTL+_(rev5)?=
Thread-Topic: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNS92cnI6IEZp?=
 =?utf-8?Q?x_DSB+VRR_usage_for_PTL+_(rev5)?=
Thread-Index: AQHbfPMJjy7dm2X7tUGFsWxSVk1cNLNDUyFg
Date: Wed, 12 Feb 2025 08:19:36 +0000
Message-ID: <DM8PR11MB56554477F9A8D7391566BD46E0FC2@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <20250207223159.14132-1-ville.syrjala@linux.intel.com>
 <173932608693.1123756.9647793676727112332@b555e5b46a47>
In-Reply-To: <173932608693.1123756.9647793676727112332@b555e5b46a47>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5655:EE_|CH0PR11MB5282:EE_
x-ms-office365-filtering-correlation-id: 4abc6c9a-cc7e-4706-c59c-08dd4b3dfce1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|13003099007|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?ZldHT0sxTEY4TGxRanZNQ2RVemVjSWs5SGQ4elV6ZGpBYUs0VjZQZUwxQ1Nq?=
 =?utf-8?B?RHcvTDV5L2t1Nmd3TWVzRndPSFJrZ2tMT1NTM3dId3VQRlk0aWdwWlZFbllH?=
 =?utf-8?B?a0wwbDFHMjloSUs2ZW5UZ0o0L0lUcGg3NFVlRENIRDlFc3lQYWI2L1ExRDJJ?=
 =?utf-8?B?V251YVNkYSsrRk01Yi9iMU9EbGVBa2dVY1loaDM3WU5acS9oVlJWQnhpcHUy?=
 =?utf-8?B?U05VRnlIMmx3NU1JVEhRTjBuM0xuUUxVNmFVYnR0RjRaVDQyMjFIM3pVQk9h?=
 =?utf-8?B?OGtIcUZDNEhaczI4dk5jc1gzUzhxRVlvQWxyMXBZbDB2WEFRTnZyK1U0Umc1?=
 =?utf-8?B?TnNEdStvMGh6M2VmQ0ZHREpLdlM4bWtkMW5xalV4empuajZaWUV2ZVhoWERR?=
 =?utf-8?B?Ky9kT0ZNMkY4TXBZZGZYU1lYS0l6V3JsNUxIajMyekI1V1cvdjZIUGxQa3ZV?=
 =?utf-8?B?aTFqSnVjenF2TDdHNzJ1YkJ2K0NMcWZRMU5qL0lqU1U5ODFSVklDU29VbWdv?=
 =?utf-8?B?RjA4dElsTjJ4dVZ4QWtWTWR2aUhIY09qY1ZwT042K0dCUmJ0Q2VMeWIydDFs?=
 =?utf-8?B?c0ZON0I4WDZBWWN4WHIwb0o3LzNKdENJN0NiVWZBNkZsSTNFN0NIOTRuWm5u?=
 =?utf-8?B?NUlyRUpNd1VqZzJnaTk1bHk1emJBcElwUHN0ZFdRUURCdGMxS0dwQVFKcUJz?=
 =?utf-8?B?TEZuWVVPUU92TXBRdUxFRUlHc2J3SWY2cVRRMVVWWW1mckRROHlvRFpMNFhQ?=
 =?utf-8?B?aFh0WGhJcTk1Y243cncycU9XL1ZOZTVXbCttdVlFNkZwMjR5RVVTMGtOSUc0?=
 =?utf-8?B?d3RJT1RuSlhvLy9sbXVvSVJOaHpBcVF5cnFDYzRDU1VuOU9YQ05MTkJaUlo3?=
 =?utf-8?B?MlBJbFp3MnZxVFRGUlliS3dPUlAxcW5VbXdncFlVRmFtbjdJYXBaN0FWWXFZ?=
 =?utf-8?B?UWdja2szZHNyY0xaUjRsWXFaTmovQVhkZVp6UXdRV3R5YTg0YmwrNXdvaU9t?=
 =?utf-8?B?RU1zU1czSjZRQ0owYTB6RDlnUTNzczdpUWVZeXNHUWV2V0M4S09EL3h6ZUVS?=
 =?utf-8?B?WWt0YUdrL2kxcEVOWXNmRVlDRkJ2S3ZseFVhSFpoOUxHd1UrcDN1UmdBdExn?=
 =?utf-8?B?aTJpblhLQ3p5ZFRFVEl6M1o4NDU3T29uY0hQenY3VWJhQnNjSjIvWXd4Q2pJ?=
 =?utf-8?B?WWJ5d05xWlB0TzdJenF4aGFjbDQ2allManFDSnJoWXRBMUc0WGZ1WWFLN3Vy?=
 =?utf-8?B?bUQrendBVVZnaTlVVjlTYk9KYzdUTXg3Um5qUEk2UENaWTRqMW5mdHV4VlVD?=
 =?utf-8?B?V01TaFZucCtaczZ4d05EODBVb1RLcGt2NE9vSGltSDBjTWpjNlJPZXRxZllO?=
 =?utf-8?B?U2c4SVUxQUtLdVhIL0N3NXU2MVlaZDlZQlA5SERLTFY3Y3RxRGdJSkdwU2RB?=
 =?utf-8?B?Z1R4Z3ZMZW1ueW43UHdrQ0d2VXc5NVZpWGdOVmNVQURXMzRURFIrUnV0ZHcx?=
 =?utf-8?B?VHZUK0Q0S0tqblFqUUNTdjZWM3lMLytXNUxZNEp1NE1GTmdCejI2RkdqOU1m?=
 =?utf-8?B?NTZkTEdDUDNEbGVyQWRaZFpJc0x0U0xOUVFySFZJWWp5eU5WNG9sSTMrM2dO?=
 =?utf-8?B?dmVtNFVRTXZoR0VzWmErK3NpNHY1T1hLUmJ5amVXRDVxOFlmZU4zUXFoZjIz?=
 =?utf-8?B?R0Q3d1h1Nlp3ZW5haVByMC84cmsyQi9mRVRpeUlyQTRJTC9qMFdaMjE1Znor?=
 =?utf-8?B?YU9UKzYweWR5QWtRK3FqOUpiNGpaT0Nna3dseEJjQlNaRDA1czJXMDJyNDQ3?=
 =?utf-8?B?Y0hoSlJ2MGhGcjFVWXBRaDNQVW9hbW1XandSN0hLSlRncFVUL3RHWnMyZzZt?=
 =?utf-8?B?MnIvcTF1OGVxN3BaeExJYUl0REp4Z0g0QWtGN0NrLzc1VFE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(13003099007)(38070700018)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NWd3cEVQQWp3WDdoOWVtSWtYQ2g3M2FSTEpWQXIwalBmcGFiQXBxVjBJb25a?=
 =?utf-8?B?Rnl4UHdYTHFYcVVIOHpjMUdKcFM2elFjTmtVZElzWnpJdEhseXpPbkNlSGtw?=
 =?utf-8?B?U0MrTTJzRUk0ZFBsajBORDJGdnBqZXFyMytUdTd4NkVPaFZ0dlZwZUFqWkJj?=
 =?utf-8?B?SzZxSUV6WlhYZC9JTGdGS1EzVWNZVlpQWldJdml6MFBaUmg0aGxrbTNRYmRt?=
 =?utf-8?B?RlVGcjdGY2VsMkw4RGg0eTFZcWcwOGpzL0FHK0VlQ05ZMDMxdCtoUFpSR3ln?=
 =?utf-8?B?QWJ6V3lHTmhhN2R2SmNLbmNTb0tRVlpzTHF1WnJNTVJyZVJBdjVYd0ZCemsr?=
 =?utf-8?B?SElNWjFUbG1zTllwQ2I0OTVBY0loekhzZ2kzSUNPSzV5VlR0b1VHR3AwYVg1?=
 =?utf-8?B?RnZ4OERXVElMK29zOVcvRXFncEM2K0RJa1JsK2pVN0lnenlQMXVlZUlIWlJq?=
 =?utf-8?B?aG9ncHNLOGVaUWVwRW9idUl0NTFhR1F5RUdzbUFSSjhXRjBqa01zY1BPU096?=
 =?utf-8?B?eEw4bG02cDJaSUVyRi9ud0xkN0NkOUlnblpZUWtwQ09TcGJEZVpZS1hhWlJF?=
 =?utf-8?B?RDkxblpVeFVBVkxLWWhDSlZLMEVySllEM3dlMU9WbzdoZG50UHRzUVVFcHMz?=
 =?utf-8?B?dE5wZ3N1OEtRZGpLaVBXZnNjOEcvZVROYWIzeEVxTURIdzN0V0xDZDUxNnFs?=
 =?utf-8?B?TFBSVVljUEVoSTlEbS8wYjJ3QnM1YzF4ejFCcjE3ZlU1RFg1aW9UNEZIbTlk?=
 =?utf-8?B?SXM3cG04YlZhQVUzNkhzaVVLOXpzRHJWaldiNnRXSm9HakU5c3IzeWJTNTlU?=
 =?utf-8?B?ekxhbHRGQWdFSGljdFZ4SzM2YVdUTzk3QlNGbVBVb3MzSEdsK1ZBc3lXSG4z?=
 =?utf-8?B?TlhlZUJUS3FpRjdEejMvQ2VESDNZMVZPK0R4U1AxWU5yWis5eUU4Y2lQYU9v?=
 =?utf-8?B?U0V3M2xIbS9kUmFKcGZLWUNtYVNDY2VvL21tSFExQ2FKcGFJZ0hrZTR2Y2Yr?=
 =?utf-8?B?UGlpUHJTbngwYms3M01ieGNkVE5RRlcrSjlBczJOblVNSW9SZFpPbmFCT1Fy?=
 =?utf-8?B?a1JacnE4SkJYYytRVWwxOWQ5cUVzVk4xai9NWEY4eUU5Rm5VcE10OTVCcFcz?=
 =?utf-8?B?UU9MSEtQaVdqaFc1MjMycWsxWWRqY2JMNjcyd3pZb2QvWFozZm5KUUJEZkZP?=
 =?utf-8?B?alJCREVoRzQzc0s4N2NockdGclVxQy9jellmeWF4WWRnZDl0SjB6a1NkRWRL?=
 =?utf-8?B?bEFDKzVGekthRUNQSUNSQ2ZPZGZNdHhwSC9MZWdudEZXWXhzbHBiWTRocmtQ?=
 =?utf-8?B?djVZbHI0ODRJQ0dBYy9mMjFUcTdHNGNxRy9QTEczcFN1VFM5cTc3eVZON0xU?=
 =?utf-8?B?SDhtdUZOMEJpcUk5Nk5rRHREY1laRUUrS2ZNRG5aNDJHL21mVCtLMmM0c1JT?=
 =?utf-8?B?cnc0OWxJdVFlZWlLdW1lNHhnT3JPUmc4NjRFTTVZdWpwUmF0cHRCZzRCa1hN?=
 =?utf-8?B?b2MvQWFJQlRFNkZxcjNSZHBGSitMR2hFTGJlRHZJSzJEVWF2aUxBcXRmWm5Q?=
 =?utf-8?B?b2ppMmpxSTB4dEEzVzNYRG40NFMxNGZJNlNHVDJFRDhOMWhsbTNocVArd2RF?=
 =?utf-8?B?djhPVUtraEd5UUlJWkRVY1NKZkNJSmNlKytNc1BUdlZ0RzI5OTd2STdzNkQ3?=
 =?utf-8?B?OSttM0laVGJvd1l3T21UTVZnbXJsTE00SVM1dHRNOUMxTC9wVGt0a2ZDUkRI?=
 =?utf-8?B?KzI1QSt2V0ZmbEJ4ajdSdExTa1VwZlMxMjY0UjJKMTJrMGt0K20yRUlKSXFR?=
 =?utf-8?B?bHZZV3JEZkdXYngyUDlnaThYNlY1cWlvb0orUFo1dDNTQVRyMGx3eDkxVzlE?=
 =?utf-8?B?SnpBb2RHUXk1YXBmOTBPOEh2TEZzNVRhZHl3UXVNdHBNaDMrQnZVa3Y2TTBZ?=
 =?utf-8?B?UTk2aE1LeHpOVldoeHBmczNGQjg0VVNEWDVBK3NkT3NNRDRHZldRNGYvc1lS?=
 =?utf-8?B?UGRrM0JhMjA1bUloanRlck9QNnpmTW85QTVyK2hQQ3FsM1ptMFVUT0RNZk10?=
 =?utf-8?B?cXhCTGNFTEVRWFJJOGNWQ2d4RmVRcHlmNVgvMGFTNjFwZitYUnVFcUZDY0Jx?=
 =?utf-8?Q?eT9mPa3V0CbJsMsQwnvEr472i?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4abc6c9a-cc7e-4706-c59c-08dd4b3dfce1
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2025 08:19:36.4002 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ErPBmtLu2uXuUuGphnZ25sqYDUpTjtrN9AbOlIcL37jVyRkLzosLGonCNlAbc5xHhwGfnaWdfnFChtjgWwAmOw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5282
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

SGksIA0KDQpTZWUgY29tbWVudCBiZWxvdyBhbmQgcmUtcmVwb3J0LiANCg0KPiAtLS0tLU9yaWdp
bmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdmeC1ib3VuY2VzQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mDQo+IFBhdGNod29yaw0KPiBTZW50OiBX
ZWRuZXNkYXksIDEyIEZlYnJ1YXJ5IDIwMjUgNC4wOA0KPiBUbzogVmlsbGUgU3lyamFsYSA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IENjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnDQo+IFN1YmplY3Q6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5
MTUvdnJyOiBGaXggRFNCK1ZSUiB1c2FnZSBmb3IgUFRMKw0KPiAocmV2NSkNCj4gDQo+IFBhdGNo
IERldGFpbHMNCj4gU2VyaWVzOglkcm0vaTkxNS92cnI6IEZpeCBEU0IrVlJSIHVzYWdlIGZvciBQ
VEwrIChyZXY1KQ0KPiBVUkw6CWh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJp
ZXMvMTQ0MTUzLw0KPiBTdGF0ZToJZmFpbHVyZQ0KPiBEZXRhaWxzOglodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9QYXRjaHdvcmtfMTQ0MTUzdjUvaW5kZXguaHRt
bA0KPiANCj4gQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fMTYxMTEgLT4gUGF0Y2h3
b3JrXzE0NDE1M3Y1DQo+IA0KPiANCj4gU3VtbWFyeQ0KPiANCj4gDQo+IEZBSUxVUkUNCj4gDQo+
IFNlcmlvdXMgdW5rbm93biBjaGFuZ2VzIGNvbWluZyB3aXRoIFBhdGNod29ya18xNDQxNTN2NSBh
YnNvbHV0ZWx5IG5lZWQNCj4gdG8gYmUgdmVyaWZpZWQgbWFudWFsbHkuDQo+IA0KPiBJZiB5b3Ug
dGhpbmsgdGhlIHJlcG9ydGVkIGNoYW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNo
YW5nZXMNCj4gaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTQ0MTUzdjUsIHBsZWFzZSBub3RpZnkg
eW91ciBidWcgdGVhbSAoSTkxNS1jaS0NCj4gaW5mcmFAbGlzdHMuZnJlZWRlc2t0b3Aub3JnKSB0
byBhbGxvdyB0aGVtIHRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1cmUNCj4gbW9kZSwgd2hpY2gg
d2lsbCByZWR1Y2UgZmFsc2UgcG9zaXRpdmVzIGluIENJLg0KPiANCj4gRXh0ZXJuYWwgVVJMOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9QYXRjaHdvcmtfMTQ0
MTUzdjUvaW5kZXguaHRtbA0KPiANCj4gDQo+IFBhcnRpY2lwYXRpbmcgaG9zdHMgKDQ0IC0+IDQz
KQ0KPiANCj4gDQo+IE1pc3NpbmcgKDEpOiBmaS1zbmItMjUyMG0NCj4gDQo+IA0KPiBQb3NzaWJs
ZSBuZXcgaXNzdWVzDQo+IA0KPiANCj4gSGVyZSBhcmUgdGhlIHVua25vd24gY2hhbmdlcyB0aGF0
IG1heSBoYXZlIGJlZW4gaW50cm9kdWNlZCBpbg0KPiBQYXRjaHdvcmtfMTQ0MTUzdjU6DQo+IA0K
PiANCj4gSUdUIGNoYW5nZXMNCj4gDQo+IA0KPiBQb3NzaWJsZSByZWdyZXNzaW9ucw0KPiANCj4g
DQo+ICoJaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBndWNfbXVsdGlfbHJjOg0KPiANCj4gCSoJZmkt
YnN3LW4zMDUwOiBQQVNTIDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+
IHRpcC9DSV9EUk1fMTYxMTEvZmktYnN3LQ0KPiBuMzA1MC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZl
QGd1Y19tdWx0aV9scmMuaHRtbD4gIC0+IEFCT1JUIDxodHRwczovL2ludGVsLQ0KPiBnZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ0MTUzdjUvZmktYnN3LQ0KPiBuMzA1MC9p
Z3RAaTkxNV9zZWxmdGVzdEBsaXZlQGd1Y19tdWx0aV9scmMuaHRtbD4NCj4gDQpTZWVtcyB0byBi
ZSBrbm93biBpc3N1ZSBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2Vy
bmVsLy0vaXNzdWVzLzEzNjU2IA0KSSB3b25kZXIgd2h5IG5vdCBwYXJ0IG9mIGZpbHRlcnMgPyAN
Cg0KIA0KPiBLbm93biBpc3N1ZXMNCj4gDQo+IA0KPiBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3Vu
ZCBpbiBQYXRjaHdvcmtfMTQ0MTUzdjUgdGhhdCBjb21lIGZyb20ga25vd24NCj4gaXNzdWVzOg0K
PiANCj4gDQo+IElHVCBjaGFuZ2VzDQo+IA0KPiANCj4gSXNzdWVzIGhpdA0KPiANCj4gDQo+ICoJ
aWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQ6DQo+IA0KPiAJKgliYXQtYWRscy02OiBQQVNT
IDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9DSV9EUk1fMTYx
MTEvYmF0LWFkbHMtNi9pZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sPiAgLT4NCj4g
RkFJTCA8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTQ0MTUzdjUvYmF0LQ0KPiBhZGxzLTYvaWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQuaHRt
bD4gIChpOTE1IzEzNjMzDQo+IDxodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5
MTUva2VybmVsLy0vaXNzdWVzLzEzNjMzPiApDQo+IAkqCWJhdC1kZzEtNzogUEFTUyA8aHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLQ0KPiB0aXAvQ0lfRFJNXzE2MTExL2JhdC1k
ZzEtNy9pZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sPiAgLT4NCj4gRkFJTCA8aHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ0MTUzdjUv
YmF0LQ0KPiBkZzEtNy9pZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sPiAgKGk5MTUj
MTM2MzMNCj4gPGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwv
LS9pc3N1ZXMvMTM2MzM+ICkNCj4gDQo+ICoJaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZToNCj4gDQo+
IAkqCWJhdC10d2wtMTogTk9UUlVOIC0+IEFCT1JUIDxodHRwczovL2ludGVsLWdmeC0NCj4gY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ0MTUzdjUvYmF0LXR3bC0NCj4gMS9pZ3RA
aTkxNV9zZWxmdGVzdEBsaXZlLmh0bWw+ICAoaTkxNSMxMjkxOQ0KPiA8aHR0cHM6Ly9naXRsYWIu
ZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8xMjkxOT4gIC8NCj4gaTkx
NSMxMzUwMyA8aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8t
DQo+IC9pc3N1ZXMvMTM1MDM+ICkNCj4gDQo+ICoJaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBndF9j
b250ZXh0czoNCj4gDQo+IAkqCWJhdC10d2wtMTogTk9UUlVOIC0+IEFCT1JUIDxodHRwczovL2lu
dGVsLWdmeC0NCj4gY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ0MTUzdjUvYmF0
LXR3bC0NCj4gMS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQGd0X2NvbnRleHRzLmh0bWw+ICAoaTkx
NSMxMjkxOQ0KPiA8aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5l
bC8tL2lzc3Vlcy8xMjkxOT4gKQ0KPiANCj4gKglpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmth
cm91bmRzOg0KPiANCj4gCSoJYmF0LWFybHMtNjogUEFTUyA8aHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLQ0KPiB0aXAvQ0lfRFJNXzE2MTExL2JhdC1hcmxzLTYvaWd0QGk5MTVf
c2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kcy5odG1sPg0KPiAtPiBETUVTRy1GQUlMIDxodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9QYXRjaHdvcmtfMTQ0MTUzdjUv
YmF0LWFybHMtDQo+IDYvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kcy5odG1sPiAg
KGk5MTUjMTIwNjENCj4gPGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9r
ZXJuZWwvLS9pc3N1ZXMvMTIwNjE+ICkgKzEgb3RoZXINCj4gdGVzdCBkbWVzZy1mYWlsDQo+IA0K
PiAqCWlndEBrbXNfcGlwZV9jcmNfYmFzaWNAbm9uYmxvY2tpbmctY3JjLWZyYW1lLXNlcXVlbmNl
Og0KPiANCj4gCSoJYmF0LWRnMi0xMTogUEFTUyA8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLQ0KPiB0aXAvQ0lfRFJNXzE2MTExL2JhdC1kZzItMTEvaWd0QGttc19waXBlX2Ny
Y19iYXNpY0Bub25ibG9ja2luZy1jcmMtDQo+IGZyYW1lLXNlcXVlbmNlLmh0bWw+ICAtPiBTS0lQ
IDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9QYXRjaHdvcmtf
MTQ0MTUzdjUvYmF0LWRnMi0NCj4gMTEvaWd0QGttc19waXBlX2NyY19iYXNpY0Bub25ibG9ja2lu
Zy1jcmMtZnJhbWUtc2VxdWVuY2UuaHRtbD4NCj4gKGk5MTUjOTE5NyA8aHR0cHM6Ly9naXRsYWIu
ZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy85MTk3Pg0KPiApICszIG90
aGVyIHRlc3RzIHNraXANCj4gDQo+IA0KPiBQb3NzaWJsZSBmaXhlcw0KPiANCj4gDQo+ICoJaWd0
QGRtYWJ1ZkBhbGwtdGVzdHM6DQo+IA0KPiAJKgliYXQtYXBsLTE6IElOQ09NUExFVEUgPGh0dHBz
Oi8vaW50ZWwtZ2Z4LQ0KPiBjaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xNjExMS9iYXQt
YXBsLTEvaWd0QGRtYWJ1ZkBhbGwtDQo+IHRlc3RzLmh0bWw+ICAoaTkxNSMxMjkwNCA8aHR0cHM6
Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tDQo+IC9pc3N1ZXMvMTI5
MDQ+ICkgLT4gUEFTUyA8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLQ0KPiB0
aXAvUGF0Y2h3b3JrXzE0NDE1M3Y1L2JhdC1hcGwtMS9pZ3RAZG1hYnVmQGFsbC10ZXN0cy5odG1s
PiAgKzEgb3RoZXINCj4gdGVzdCBwYXNzDQo+IA0KPiAqCWlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVA
d29ya2Fyb3VuZHM6DQo+IA0KPiAJKgliYXQtYWRscC02OiBJTkNPTVBMRVRFIDxodHRwczovL2lu
dGVsLWdmeC0NCj4gY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTYxMTEvYmF0LWFkbHAt
DQo+IDYvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kcy5odG1sPiAgKGk5MTUjOTQx
Mw0KPiA8aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lz
c3Vlcy85NDEzPiApIC0+IFBBU1MNCj4gPGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE0NDE1M3Y1L2JhdC1hZGxwLQ0KPiA2L2lndEBpOTE1X3NlbGZ0
ZXN0QGxpdmVAd29ya2Fyb3VuZHMuaHRtbD4gICsxIG90aGVyIHRlc3QgcGFzcw0KPiANCj4gDQo+
IEJ1aWxkIGNoYW5nZXMNCj4gDQo+IA0KPiAqCUxpbnV4OiBDSV9EUk1fMTYxMTEgLT4gUGF0Y2h3
b3JrXzE0NDE1M3Y1DQo+IA0KPiBDSS0yMDE5MDUyOTogMjAxOTA1MjkNCj4gQ0lfRFJNXzE2MTEx
OiA3NjEyMGI2N2EzZDVlN2EzOGNiYzkyZmMzOTg0NjI5NzEzMGZjNmQwIEANCj4gZ2l0Oi8vYW5v
bmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4DQo+IElHVF84MjI4OiA4MjI4DQo+IFBh
dGNod29ya18xNDQxNTN2NTogNzYxMjBiNjdhM2Q1ZTdhMzhjYmM5MmZjMzk4NDYyOTcxMzBmYzZk
MCBADQo+IGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eA0KDQo=
