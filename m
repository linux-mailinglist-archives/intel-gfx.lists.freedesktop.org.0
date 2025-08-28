Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82392B398BE
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Aug 2025 11:48:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79A0D10E969;
	Thu, 28 Aug 2025 09:48:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AyfYu8WS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1676310E95F;
 Thu, 28 Aug 2025 09:48:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756374528; x=1787910528;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=QCikE6A47zxZgS54gYmNBbyVzU8ArrqBb7vB/Cjk0TI=;
 b=AyfYu8WSgg+K1JXz0E8Uj9oCHPsPqxPWTFLVM6OeEq0fWjAfN6Elwwgg
 RTT0HIp3n/gmk17RGaOIOhmrCfpqTmpXqI+7RfDhRPAf5G6bjlHhTma5r
 hbY1R+SZfLwPhYIlya1/PSPAAUmXX/QGd4zw9cR8l1sjyOCi2DrMg/1xJ
 yq/WxrYRLtVyzqkbOxxvJa20IyY7xs/ZDf7iMQRwNQi9UbTPA9BaXYpYq
 LqiTmzX0d9MQPUXEQyHMBqHrS454jL2HzvHcWmvdkG9o7/wpCsG6UK0vb
 2YOaWlgp5Wsa05c81s6LQzeI8M+2P5d6KUE40LHSC/K6Fua2pJUz3rvhe A==;
X-CSE-ConnectionGUID: 01Uw0KktQWmBgTR9PIhNuQ==
X-CSE-MsgGUID: ntzYEUrEQduYhQ09O1Bpsw==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="58491273"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="58491273"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 02:48:47 -0700
X-CSE-ConnectionGUID: cJw4BapAQ8yQfDd1Wj9QiA==
X-CSE-MsgGUID: wmkG0FQ5TXCIuPydV3mMyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="169313922"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 02:48:47 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 28 Aug 2025 02:48:45 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 28 Aug 2025 02:48:45 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.65)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 28 Aug 2025 02:48:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=O3aHvBlQd/ZeoRjjjQN8D1BI7+i8p3B+1bjKBXvxrofTvuOeSUzsdh/6w/4M86UHtCgj4FicUiSeqZIUlww1hhCqv2M5JAwXIx8z9YiGKjJzETFhJrCA2ENWCBpUK1nyg64Ehrr5qQuGjwTx3tnZtrD9kHvXoHCg8hpj6dZ+EQloNa5WSXhvAusG43HoZFMBhAuYoO8wSVSE3SFv3pLyTeosbR9/e5OWQoCu/E+UUKL0+LHyM6scrhsKUMqkQHRZUQP8nma5RzRk56nFV2JiJKbBT6BbUzy4PDI7d5xQgf0Al0Hy/XLGqXBZv6OXnUF0CfHkK47vIq9pMsGEF8ETsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QCikE6A47zxZgS54gYmNBbyVzU8ArrqBb7vB/Cjk0TI=;
 b=JaOoo3SyfVN3NsyQKoYF28oUfedHfWOH6wU0ICzuV/8rCKveHb0sySWi5hpaTs6ZlCOYvjyjZkbyhnxqh4B3jc/8aoVGVj/n4Phgazx4vmawjbpJRLTz14LnsU8WtM2tL+/1yUEPqgBcU3U0SjxVCCRUHF1g7syzF8jZ/w9SmjDvcW8fyrkMQhtXypvixG/hVx9yHg8n7NYMnr9lNJL8Zuh/0hqlVYWhw0Gxj26O5GRCYaZ4kdCmD4EIT37l/HZBj1IPRMmhVGgNF62re4HhuFDy/dZ/m6W5Q6plgvdvnHv9TrGg7VtomND9IzvWbjKJFelvcOjWOpBjbaQguy0XjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS0PR11MB9480.namprd11.prod.outlook.com (2603:10b6:8:28d::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9052.14; Thu, 28 Aug 2025 09:48:39 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9073.010; Thu, 28 Aug 2025
 09:48:39 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 4/4] drm/i915/alpm: Use actual lfps cycle and silence
 periods in wake time
Thread-Topic: [PATCH 4/4] drm/i915/alpm: Use actual lfps cycle and silence
 periods in wake time
Thread-Index: AQHcDCDVti7SZBMXzkCJ8+tX/5pw17R3yboAgAAf3wA=
Date: Thu, 28 Aug 2025 09:48:39 +0000
Message-ID: <d9f4011dcb2adcb3daa19ec3a7ee5cb6dc2806f8.camel@intel.com>
References: <20250813070617.480793-1-jouni.hogander@intel.com>
 <20250813070617.480793-5-jouni.hogander@intel.com>
 <DS0PR11MB804973213F7EEFC7040E0DDEF93BA@DS0PR11MB8049.namprd11.prod.outlook.com>
In-Reply-To: <DS0PR11MB804973213F7EEFC7040E0DDEF93BA@DS0PR11MB8049.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS0PR11MB9480:EE_
x-ms-office365-filtering-correlation-id: dd2db88d-f2b6-4fd0-6cba-08dde6181104
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|10070799003|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?MlVnVXZzNE9QZ1lEUGlrZUhBZHNQNmlaRUxMT0pJbmZyUi9zbGptdmxaeGNo?=
 =?utf-8?B?RUt5WEJHNWFLNEVOay9mMUdPUi93L2dlWk5QVnJjNC85aWMwTm5ONUVvVUZt?=
 =?utf-8?B?RC9MQ090bTQ1aFpCZFVZdSsrTkhaeHo3NDhIS0RBQ3BvaWNiK1I3NTVLQ1pk?=
 =?utf-8?B?SHlqZlRGbVBLdVk1T1J3Z253REJyZTNGRUlYZFhUWTFUVUZKS1JFZm0xbjFD?=
 =?utf-8?B?OVFOZ0NKVjk4aDlEZjNxMzlXdmM5a3EvNm4vbzRvbkNUNS9aZmlBOUtXOG85?=
 =?utf-8?B?b1pzUHo1M01TMHJYV3RxbkRPZndwQVlGVHM5bEw2dUdRNVYzbm1welVEbGRs?=
 =?utf-8?B?N2R3RzJvc2xudFN5UFZoTjhqdm1uSFA3Wm8zalF6TldGZjdiRitLTStaRE5F?=
 =?utf-8?B?ZStreUFDQjNubkNGRG0wcEhsWHRPdFpQOVhEM3ZZT25UYVR1TUxBU1JLSGZv?=
 =?utf-8?B?V2RPWDk1ekV0aDdIWURaNHczTDBZdW5tRnhRSVBWZitjbUdMSzlmdDZkaEI1?=
 =?utf-8?B?eC95NVE4b1gvSnVFNDlpMU5ERTNTeEx4Nm5XMFYxQ3F2TkNtLzVRcHU4dTBZ?=
 =?utf-8?B?UlRRUmthbTJ5czlEZVIrSUt2M3RrZytILzJjZmdFUmlSZ1dSNEF4Z2ZVMVM0?=
 =?utf-8?B?bWxyK05aM3hwVkJNd0ZKajRNSEEyVUwrRE81RzRTU0JWRXU3b0ZsRHZHeCtO?=
 =?utf-8?B?TG9EajdwK2UwczYvcWlqUEZUUmxiZWozSGtrQWJjWWtmOHJCemEzSUJlb3FX?=
 =?utf-8?B?cXlqaGRkU3BBcGVQVDQ2ak1aNkg3YXdvbFBndUIxMG5ibUU0UnFWMkFOK01E?=
 =?utf-8?B?OStBb3Y3R3RpV1E4NHFUaUNlR05KRFRSbnBQWDhrREZOK2pVU21KS201c1J3?=
 =?utf-8?B?QjErNmdUTWFFSUJuN3kwN2VXUlc3NFdEVm1Gb1ZiWEtSMzhqdTc5NXd5cS9X?=
 =?utf-8?B?MHBBMTRPam9ITHpoNnRLNGthbFZXMUlnWmd5WnBSb3BVZjY3V3RESjZjTzRU?=
 =?utf-8?B?NFJKT3ZCK1VwTk1uMFBTeEorRlZISW1iV2RiOExKMmlqSE16Z3ZzTE9HNGU0?=
 =?utf-8?B?TkhWVG01KzQzZXhqckpQQkVDL21wV2loek1iNktXemJSaUZWTnFUbHdGREIv?=
 =?utf-8?B?c0hQWWZ2OHhzTzdZTEtoL0ZsYkN5MEMwVWlKeGo3Z0tmQ1VtY015UldTTnBE?=
 =?utf-8?B?NVY3enkxd2t6ZG1ZQ05ZQVN0M0ROdWtYUExQNmo0bVRWV1ZBeFF2bmhyOTEx?=
 =?utf-8?B?V3lKdktKVDlWUlEvak9jcHh5MFJ3UWJPVlRUdHJ0TTFaZTNYcmE0VG1DbHd0?=
 =?utf-8?B?SVQ5ZUdCL29kMWZIT3ZZYUdzbFBhcy9UQ0xwUEFYd0xTV1dHRC9vVHJDVzlI?=
 =?utf-8?B?eDJ6NXZFWGJFak9QRjFXYVA2dFplb290c3REanJqU3NscFY1L0wxM0w5MGNP?=
 =?utf-8?B?aXdYeUZVYVpoeDJrMXdWQ2RRSTZvbm1Bekx3MHVlRTNDRG41MEV1aElpUlpp?=
 =?utf-8?B?aFNXR1RQajNkbTJ4Zk5MbGxRVU9YR1JVL1ZCUzVLQ3pSWGc4T1FPblFTQmdn?=
 =?utf-8?B?UXk5b09vZ3lZRDl4QUl1QXFQZlkyTXUwaGhiM29iUVpaMGloTUloUURBaUE5?=
 =?utf-8?B?WW9HY2Y4bE1PZU5RSFhZcWQxdXdBODBDVTl5ZG51cGJlVURMUER6WDJJai9U?=
 =?utf-8?B?aEkzOXVoNjJQNTNiYWRyWjZrMnJ6SWtBZHprd2RtMVNNcUJSQ1V6NjEvaVJG?=
 =?utf-8?B?ODhMb2M0L24yMUlkV25TQWkzdEhFajVUN3cwNG96clFXTS9kWDdUOFNKMThy?=
 =?utf-8?B?UEg1VnpLNExZYnFhQ2pURlZrZWJ5dkR4VDdHc05hSWgxYVlwdG9ENzZPejFM?=
 =?utf-8?B?YWlCNjErVGNZVnZ1UE9FQW5UVTNndkoxa2JlazFSd3hWQ3JidnE3ZWxodnNL?=
 =?utf-8?B?SW85TDhtL2ZQdjUvMWNHS1JxbGNFWmx1M1FxaEtXakNpMEhiSHZJUHkwWUs4?=
 =?utf-8?B?ZXExSys5NHpnPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(10070799003)(376014)(38070700018)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NDV6dzNxRmRucDBrcktUUEpFbllLNWtxTlZ6R0JwbDlxUXBkSkJWbFFjZUNo?=
 =?utf-8?B?REt5OWFocXhTTzFsWTg3cUtyUVYwZnBFUTNZR3JoLzErM29IYzQ4dkRKdnZ6?=
 =?utf-8?B?c0NNMWxIRXRmckREVlVJOUt1bGQrNUlydWovenQzeTVoSmdZQkIvUTQ0VFh3?=
 =?utf-8?B?ZVlDdkQvcXR5dTdJaGwxQURpYVlJKytpM1pIWGpuVVJvaHpDMEMxU1VNcXRi?=
 =?utf-8?B?N1VhOE1yQ1lydHl0ejVCaFBuK3dBdnRUZi9pRGwxTFBYcWZEU09TSVg3eTJy?=
 =?utf-8?B?bUxNWWhHVE1SdDVhcTFHczNVOWlPMU5BbjF1bW5ESXU5QXlZeitWbXpqYjJG?=
 =?utf-8?B?TFJhYWgxRTcrVmp4bzM2OHZmQjhxUlBUd2Z5eTRUQkdmRWpsc25aL3QvanpY?=
 =?utf-8?B?SCtvTktJTzFnRmdYNnA0bUduR3M1UUFGUVFaTTg0Q0h0L2l6cXJoQUpJNmZD?=
 =?utf-8?B?cmlDbDNkNFFtdmVCbEI5TGdjckV6MVNiYlhzUzhlNlEwd3hPdGpUTXo3bkFa?=
 =?utf-8?B?L25HaUptWHFRTzdIUkUyYmV6SnlJRXBVajJmcncwZ1Y1dVpnVHZua2ZoZmdN?=
 =?utf-8?B?ZGhHK3M4NVFRTEJROWhXMmtJZXNMRTh4bnRiQmtIdE4wZjZyaXBHYm9DYk90?=
 =?utf-8?B?b0RqcXdKZ3RzeEcvaWI2UDhyNlJpSWx3V0piRkY4bGJLVVVsUDlKS281SkRn?=
 =?utf-8?B?RXQxbWxPL2F2b0NjbDdIWHFDb3RDOUtxdXllYVorU2cwSG9hT2pjM3RJcEpi?=
 =?utf-8?B?V0JkLzFEV1BMc05mSWszK29QbWxTcktqMVNtM1NXbFR0Wm1xT1lGUStIaE9X?=
 =?utf-8?B?VUN2cW5LdFhTSnY5b0lET04vazhKUzJaYy96L2FGRmpiSUZlTk5vSzF2SVNl?=
 =?utf-8?B?ZVdqU2M5UHNaWEF1RmtvNW41ZnQ2STA0MFFjcTFKdlJyVUpkNkNoNkp2NzlT?=
 =?utf-8?B?N1pJTGxtSGJEVHNKc3lyQlJGWndGZDY1M2hpZS83bGNhbFZKY2FvN3R0SUFW?=
 =?utf-8?B?ald2Z2V2WDVYVVJ1UkdVLzY1Ujh3cTZVWmJGSG9oTjdMNFdUK09vam9INnZp?=
 =?utf-8?B?WStXR2ZNS0t1dzhHakx3cGtBMkt3cERzRmJXQTR4OFh1VGFpSHV1eU9DMHFW?=
 =?utf-8?B?RkdtTTYzZGRmRVpXaThNL0J3dlJPOWtTblhGMytsbHBpOFE1cWpnVFhYV2dV?=
 =?utf-8?B?Y0FCUXZ5YnNWOG9RV05wQzE2TkFpdGttR290eG9sektmd0E3Z1NtY0hneDlq?=
 =?utf-8?B?bGdndzFsengrZ2d4R2dYVHQ5dEpEZEJENWlrWXBDZmlKUXZzaEtMZlBUNGg2?=
 =?utf-8?B?bWpPRlRJamdLbWJBbkcwWFY3eTE4OUhPL3pqdVgrKzVtd3MxR0llQkpxUm1W?=
 =?utf-8?B?MWdhOTBXNTY0KytCYUdVOEhvWCtQb1E2MW1TZHU3ajlKYWljOTBQeWlwS2JW?=
 =?utf-8?B?ZkdncGJ2UFJXV3pKMEFVcEtxMUxvQTQraEtTZHRJY1JEc044SFlwSE4rZmdi?=
 =?utf-8?B?RXJLZWxZVXB4Ny8xU05OZHJXNmNTMUJUL0N6UVBDbGVrcUtZQ0VKcjdHLzZB?=
 =?utf-8?B?RGFJR1l1dC9PTU93Yy9vQWIvSFdPKzdTRCtJTGpDT0hvV2NCWlRydEh3OWdW?=
 =?utf-8?B?RHlEaHAvdlZFMWlPWjZYS3FrYkFkeVBQc3lscTNDY3hkdnhaem5qQjJvWDFh?=
 =?utf-8?B?L0NTTFRiZ0ZJeThpRkdpd2NBNUpFbGIrbnFodVFueFBMb0dTMHh6MTBWMXh2?=
 =?utf-8?B?alhLcFp2SERpMW9lWTYzQ0NINW1JOGpNeThoMSs5WUNVdnZkbkN0MXZDSXB4?=
 =?utf-8?B?SlNFWjl3UnROcG96NjUwOUgxanhEK3g1UVpua2p5bTliSk1hT01xL1RML2tq?=
 =?utf-8?B?dkxGMmlKT3BLdFdYUlJQRkFUVGs2Q055K0V1QUxKWUFWeXBQQlM1WFlXdUR6?=
 =?utf-8?B?TUhZZTExZUhBQnRMNVE2TW1KcVBsOHE3dTl3TW1ZQUZZdzhrcjZwOGdnNUND?=
 =?utf-8?B?U0VLUWRVcHdzL2VGMTN0aGtNMHd2WDQ2QmJheE93cHk1T2V5VGs4YmF6ZU50?=
 =?utf-8?B?ZkRGYVlHREhmbXRWTUo5dXp4L2tnR2pGdThJYVBJRC84YVZwWnduU1FUR2or?=
 =?utf-8?B?NHdNSm1mTURRMU1iT256M1pROU92ZUpUN2VWcTgzVWxPUWdqQktXRzhNWnNt?=
 =?utf-8?B?VUxPTUpGSlFtdVk0OStJVmNvaEJkcUVyajZ4Mlh5c3NpNVUzQy9pYnVnd3pB?=
 =?utf-8?B?M3JBU1VtNDYvQ3F3eUZaNG9pSlBBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7D1EAA42876A464DAEA203E9FF9B55A8@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dd2db88d-f2b6-4fd0-6cba-08dde6181104
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2025 09:48:39.5561 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7xedCQiiQPKzvUce7EhWV82uhh6pQCkgXWCfV18rkUSHBFnB8iU4yTHBPr6o5o1Q/RIU81V+szLIF1Jkbzx5oeLkfYxGStZG8IlF91p8xYo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB9480
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

T24gVGh1LCAyMDI1LTA4LTI4IGF0IDA3OjU0ICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSW50ZWwt
eGUgPGludGVsLXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYNCj4g
PiBPZiBKb3VuaQ0KPiA+IEjDtmdhbmRlcg0KPiA+IFNlbnQ6IFdlZG5lc2RheSwgQXVndXN0IDEz
LCAyMDI1IDEyOjM2IFBNDQo+ID4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7
IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+IENjOiBIb2dhbmRlciwgSm91bmkg
PGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiBTdWJqZWN0OiBbUEFUQ0ggNC80XSBkcm0v
aTkxNS9hbHBtOiBVc2UgYWN0dWFsIGxmcHMgY3ljbGUgYW5kDQo+ID4gc2lsZW5jZQ0KPiA+IHBl
cmlvZHMgaW4gd2FrZSB0aW1lDQo+ID4gDQo+ID4gQ3VycmVudGx5IHdlIGFyZSB1c2luZyBtYXhp
bXVtIGxmcHMgY3ljbGUgYW5kIHNpbGVuY2UgcGVyaW9kIHRpbWVzDQo+ID4gd2hlbg0KPiA+IGNh
bGN1bGF0aW5nIEFVWExlc3Mgd2FrZSB0aW1lLiBVc2UgYWN0dWFsIHZhbHVlcyBpbnN0ZWFkLg0K
PiANCj4gQ291bGQgbm90IGxvY2F0ZSBtaWQgb2YgbWluLW1heCBpcyB0aGUgYWN0dWFsIHZhbHVl
IG9yIG5vdC4gR29vZCB0bw0KPiBrbm93IHRoZSByZWZlcmVuY2UgaWYgSSBtaXNzZWQgaXQuDQo+
IEFzIHBlciBic3BlYyBzb2Z0d2FyZSBjYW4gdXNlIGFueSB2YWx1ZXMgYmV0d2VlbiBtaW5pbXVt
IGFuZCBtYXhpbXVtLA0KPiBzbyBtaWQgb2YgbWluLW1heCBtYXkgYmUgZ29vZC4NCg0KQVVYTGVz
cyB3YWtlIHRpbWUgZm9ybXVsYSBpbiBCc3BlYyBpcyB1c2luZyBtYXhpbXVtIHZhbHVlcyBhcyBs
ZnBzDQpjeWNsZSBhbmQgc2lsZW5jZSBwZXJpb2QgdGltZXMuIEknbGwgZ3Vlc3MgdGhhdCBpcyBq
dXN0IGJlY2F1c2UgdGhvc2UNCndpbGwgd29yayBmb3IgdGhlIHdob2xlIHJhbmdlLiBJIGRvIG5v
dCBzZWUgYW55IHJlYXNvbiB3aHkgY291bGRuJ3Qgd2UNCnVzZSB2YWx1ZXMgd2UgaGF2ZSBhY3R1
YWxseSBjb25maWd1cmVkIGFzIHRoZXNlIHBhcmFtZXRlcnMuDQoNCkZvciBMRlBTIGN5Y2xlIGFu
ZCBzaWxlbmNlIHBlcmlvZCB0aW1lcyBCc3BlYyBpcyBwcm9wb3NpbmcgdXNpbmcgbWlkIG9mDQpt
aW4tbWF4IGFuZCB0aGlzIGlzIHdoYXQgd2UgYXJlIGN1cnJlbnRseSBkb2luZy4NCg0KQlIsDQoN
CkpvdW5pIEjDtmdhbmRlcg0KPiDCoA0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjD
tmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiANCj4gVGhlIGNvZGUgY2hhbmdl
cyBMR1RNLA0KPiBSZXZpZXdlZC1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRl
bC5jb20+DQo+IA0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9hbHBtLmMgfCAxMiArKysrKy0tLS0tLS0NCj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCA1IGlu
c2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+ID4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiA+IGluZGV4IGIyMTIzMzA1ZjEyOC4uNGU4
YWExNjdiOTdiIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYWxwbS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9hbHBtLmMNCj4gPiBAQCAtMTE2LDIxICsxMTYsMTkgQEAgc3RhdGljIGludCBnZXRfbGZwc19o
YWxmX2N5Y2xlX2Nsb2Nrcyhjb25zdA0KPiA+IHN0cnVjdA0KPiA+IGludGVsX2NydGNfc3RhdGUg
KmNydGNfc3RhdGUpDQo+ID4gwqAgKiB0TUxfUEhZX0xPQ0sgPSBUUFM0IExlbmd0aCAqICggMTAg
LyAoTGluayBSYXRlIGluIE1IeikgKQ0KPiA+IMKgICogVFBTNCBMZW5ndGggPSAyNTIgU3ltYm9s
cw0KPiA+IMKgICovDQo+ID4gLXN0YXRpYyBpbnQgX2xubF9jb21wdXRlX2F1eF9sZXNzX3dha2Vf
dGltZShpbnQgcG9ydF9jbG9jaykNCj4gPiArc3RhdGljIGludCBfbG5sX2NvbXB1dGVfYXV4X2xl
c3Nfd2FrZV90aW1lKGNvbnN0IHN0cnVjdA0KPiA+ICtpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlKQ0KPiA+IMKgew0KPiA+IMKgCWludCB0cGh5Ml9wMl90b19wMCA9IDEyICogMTAwMDsNCj4g
PiAtCWludCB0bGZwc19wZXJpb2RfbWF4ID0gODAwOw0KPiA+IC0JaW50IHRzaWxlbmNlX21heCA9
IDE4MDsNCj4gPiDCoAlpbnQgdDEgPSA1MCAqIDEwMDA7DQo+ID4gwqAJaW50IHRwczQgPSAyNTI7
DQo+ID4gwqAJLyogcG9ydF9jbG9jayBpcyBsaW5rIHJhdGUgaW4gMTBrYml0L3MgdW5pdHMgKi8N
Cj4gPiAtCWludCB0bWxfcGh5X2xvY2sgPSAxMDAwICogMTAwMCAqIHRwczQgLyBwb3J0X2Nsb2Nr
Ow0KPiA+ICsJaW50IHRtbF9waHlfbG9jayA9IDEwMDAgKiAxMDAwICogdHBzNCAvIGNydGNfc3Rh
dGUtDQo+ID4gPnBvcnRfY2xvY2s7DQo+ID4gwqAJaW50IG51bV9tbF9waHlfbG9jayA9IDcgKyBE
SVZfUk9VTkRfVVAoNjUwMCwgdG1sX3BoeV9sb2NrKQ0KPiA+ICsgMTsNCj4gPiDCoAlpbnQgdDIg
PSBudW1fbWxfcGh5X2xvY2sgKiB0bWxfcGh5X2xvY2s7DQo+ID4gwqAJaW50IHRjZHMgPSAxICog
dDI7DQo+ID4gDQo+ID4gLQlyZXR1cm4gRElWX1JPVU5EX1VQKHRwaHkyX3AyX3RvX3AwICsgdGxm
cHNfcGVyaW9kX21heCArDQo+ID4gdHNpbGVuY2VfbWF4ICsNCj4gPiAtCQkJwqDCoMKgIHQxICsg
dGNkcywgMTAwMCk7DQo+ID4gKwlyZXR1cm4gRElWX1JPVU5EX1VQKHRwaHkyX3AyX3RvX3AwICsN
Cj4gPiBnZXRfbGZwc19jeWNsZV90aW1lKGNydGNfc3RhdGUpICsNCj4gPiArCQkJwqDCoMKgIFNJ
TEVOQ0VfUEVSSU9EX1RJTUUgKyB0MSArIHRjZHMsDQo+ID4gMTAwMCk7DQo+ID4gwqB9DQo+ID4g
DQo+ID4gwqBzdGF0aWMgaW50DQo+ID4gQEAgLTE0Miw3ICsxNDAsNyBAQCBfbG5sX2NvbXB1dGVf
YXV4X2xlc3NfYWxwbV9wYXJhbXMoc3RydWN0DQo+ID4gaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+
IMKgCQlsZnBzX2hhbGZfY3ljbGU7DQo+ID4gDQo+ID4gwqAJYXV4X2xlc3Nfd2FrZV90aW1lID0N
Cj4gPiAtCQlfbG5sX2NvbXB1dGVfYXV4X2xlc3Nfd2FrZV90aW1lKGNydGNfc3RhdGUtDQo+ID4g
PnBvcnRfY2xvY2spOw0KPiA+ICsJCV9sbmxfY29tcHV0ZV9hdXhfbGVzc193YWtlX3RpbWUoY3J0
Y19zdGF0ZSk7DQo+ID4gwqAJYXV4X2xlc3Nfd2FrZV9saW5lcyA9DQo+ID4gaW50ZWxfdXNlY3Nf
dG9fc2NhbmxpbmVzKCZjcnRjX3N0YXRlLQ0KPiA+ID4gaHcuYWRqdXN0ZWRfbW9kZSwNCj4gPiDC
oAkJCQkJCcKgwqDCoMKgwqDCoA0KPiA+IGF1eF9sZXNzX3dha2VfdGltZSk7DQo+ID4gwqAJc2ls
ZW5jZV9wZXJpb2QgPSBnZXRfc2lsZW5jZV9wZXJpb2Rfc3ltYm9scyhjcnRjX3N0YXRlKTsNCj4g
PiAtLQ0KPiA+IDIuNDMuMA0KPiANCg0K
