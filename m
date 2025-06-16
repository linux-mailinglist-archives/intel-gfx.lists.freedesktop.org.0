Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6919AADA9F3
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Jun 2025 09:57:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 852DA10E2D2;
	Mon, 16 Jun 2025 07:57:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wgj+qL6W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5CD610E2CF;
 Mon, 16 Jun 2025 07:57:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750060630; x=1781596630;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=w+rbsXJIweS2JBu0ARwHKnMO4Z+ye1RpwrIHGciK1rs=;
 b=Wgj+qL6Wp3CslpzlPfwFsEcaAOpIq/wU2wGRIuQXJBJWTI1PAHigaBez
 uh6cxUYsCgo5IVlfjiPfAxptosVqTLQcceT0g0uFoX5dgDVlXAjuq+m+q
 /wY1TkqrvTEYHHC11BTouE933igP5k7JvtO78gNhc7L7Sf6hkvQVn6iYa
 P4ZSQ2+T6cgoAqcqxXwzn+6ZxmRnqNtS3FkK8Kq1Qz1k1DN9rOQZDATlA
 7OrB4UqJHRNVUXsjtQLwuHlJxig2DLoMAd2xqaC+MuYNW0ScUDqTGu+iE
 uWYV5/Fe39OLF+yYFSmNemq7GfxRNA68ntoCNoiALCAYyxmfeaIuImFAp Q==;
X-CSE-ConnectionGUID: e/vcKiwzTIOvZ3S+SA2rvw==
X-CSE-MsgGUID: NzyPxHWUT66xeGSIaTCVmw==
X-IronPort-AV: E=McAfee;i="6800,10657,11465"; a="77591352"
X-IronPort-AV: E=Sophos;i="6.16,240,1744095600"; d="scan'208";a="77591352"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 00:57:08 -0700
X-CSE-ConnectionGUID: OTmQXvrJSjyC4TehCI/DUA==
X-CSE-MsgGUID: gzWP4fZlQiu1BHdJmrBlxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,240,1744095600"; d="scan'208";a="148946552"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 00:57:07 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 16 Jun 2025 00:57:07 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 16 Jun 2025 00:57:07 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.49)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 16 Jun 2025 00:57:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZNYuru6tNqz+XlKyhAFEnuh27u1rIq7b+y+Uf37DNyWeqV5PFaLdWcwLa96MCLKvmUfBxJFEDGNXqCkcwQdflMk8JBrqaSs+UI1/4Nn6KkwpdUygtcMaqjNu7ydg64W2Vl6ahUb25mGjWRSD0yV9Lmb6c6LDMf+j+LKt7AnZG60mSLhz7+4u4XpTScp0ojQx6a3xjiUqFz3MGu9nZ5Wg9/XIwUB8imNnj9Km3iNMXkYDOgGoFkk48kI8UJgZpSlclOULnw1HtRlV5n3dMgNRiZcy8IR034ZlJLT+JTxQExY73dMhFO3mtL9L2a60rUbDSPDQdAJRjSSSOszCwAXNvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w+rbsXJIweS2JBu0ARwHKnMO4Z+ye1RpwrIHGciK1rs=;
 b=bZ0nEFSEYDxRXFO3n+XVudpgWuQHgDQ1EEUluubJVmsaDQxAiyfrYJEgubdco2m2wn33oFDRkfU0x5MqLbJaDASctrPwzQeK3cgkDAeGk0ootQnAXQ88LoNWUnEUM95CISpCpFlte9x1ayUcmJ43zKjuT7QL4/vnl/pvDKdQAMLX3G9r1OAPpxu5tQq3n4ufQF5iXNXqE+1Mjy16BRMZ+Uh/xnweiBdTT+bGtFrfwzMh2dzF5kHhk5ugKF4cOTh5WPJTi81cl01sH1jXaOa4q1gxz3UeK4xo35AMw3Y/gW2fquv//cmFogDkI4d52I/3k6eGO3GVCJCvPaWsMq5O8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5491.namprd11.prod.outlook.com (2603:10b6:610:d6::19)
 by PH0PR11MB4934.namprd11.prod.outlook.com (2603:10b6:510:30::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.25; Mon, 16 Jun
 2025 07:57:04 +0000
Received: from CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a]) by CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a%5]) with mapi id 15.20.8835.027; Mon, 16 Jun 2025
 07:57:03 +0000
From: "Ravali, JupallyX" <jupallyx.ravali@intel.com>
To: "i915-ci-infra@lists.freedesktop.org"
 <i915-ci-infra@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, =?utf-8?B?VmlsbGUgU3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Subject: =?utf-8?B?UkU6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvZHNi?=
 =?utf-8?Q?:_DSB_fixed_and_flip_queue_prep_work_(rev3)?=
Thread-Topic: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNS9kc2I6IERT?=
 =?utf-8?Q?B_fixed_and_flip_queue_prep_work_(rev3)?=
Thread-Index: AQHb3RwTsiTkzAcYE0eIURizl5psKrQFZbLAgAACjMA=
Date: Mon, 16 Jun 2025 07:57:03 +0000
Message-ID: <CH0PR11MB54917D2F9478CB5047D4AD7CEF70A@CH0PR11MB5491.namprd11.prod.outlook.com>
References: <20250612145018.8735-1-ville.syrjala@linux.intel.com>
 <174989903395.79834.421344106672910374@1538d3639d33>
 <DM8PR11MB565584C752FB1C26B9E19852E070A@DM8PR11MB5655.namprd11.prod.outlook.com>
In-Reply-To: <DM8PR11MB565584C752FB1C26B9E19852E070A@DM8PR11MB5655.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5491:EE_|PH0PR11MB4934:EE_
x-ms-office365-filtering-correlation-id: 6c48669a-7b3c-4dda-537f-08ddacab61da
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700018|7053199007|13003099007; 
x-microsoft-antispam-message-info: =?utf-8?B?M0QxcVF6NVRxUUJ1aEZlK2RURFNKQnJwbURIL2paYTNxd0xvc2hKRHRGTUp5?=
 =?utf-8?B?bWtnckFLT2xTdzJOVFFvSmVlRDA5dXJGMUNHWUF0RmFDS1EzeHZCVk1iYkp6?=
 =?utf-8?B?ajkzOVRURHBqbFNQMS9tYUtGcTFwK0xjcWk4c0RINUxSLzdwZXJNSXlmeHZy?=
 =?utf-8?B?R1kvZjBnbVFaT2grbUd6SjdwVDM3YXJaMTEyNW9wNWh1eXV0R2pxaFVscnJ3?=
 =?utf-8?B?Q1g5ZnAva3AvMmNvUGxWYjRVMTVVTEhaeDVqdkRacmpyYWFnVGVqWUN4Nlgy?=
 =?utf-8?B?dWluZjZUU0JWUDNZNTJLdE9HRURDSUpLQ0cyRllwY0ZLM0crOFZNZjJoY3dD?=
 =?utf-8?B?WFFMY2N1OHBiblZaT0trZm45N3B3bmhPa2ttak1RbzJYRkw5aHVjcFJkODc3?=
 =?utf-8?B?bEpUV2ozS0xNVXpEWmwvOHJOSXFmd0dxUkR1UE84dUhpZFp6SHVYTjdaN0pW?=
 =?utf-8?B?ZlM4OU9rb3hNN3VKMnprTFFDS2RxNXcxS05KU2FjM1lwa2lzMTIxeW91aWhz?=
 =?utf-8?B?OW9VNCtNNXVHMk0rVytyR3phSUhheGJ2VFFPOGVJb0lPeTYybDZoOU1QZjYy?=
 =?utf-8?B?MlZCODdTZDlpTU9aanp3bjBXaHVVa1ExV1cwaVJ3c3NSMmVZZHc2TDZMVUU4?=
 =?utf-8?B?NGFzVnAvUWY5bDZnRkdnUjhzcWNVQ1gwdkRlRnlMdGRNaVRidTVzcGhxY3c0?=
 =?utf-8?B?RlNZMnROWllIejdlb0dQV01wTitFMHNmeERJQ3BBZzBsMlNSSDlIcTJRYlB0?=
 =?utf-8?B?dWM0ZU5renIwM25Wb2VUaEh0MkRtVGVWcXRlcWNuTEwzOHZnT3YySkdsUlBr?=
 =?utf-8?B?aFRpZ0ZnN0tFYmo3cnJsMkZhWG1peFFCeHlNR0x0NDFqVHRHK2xTVDd0V0hz?=
 =?utf-8?B?QnVaM2pPSTBmSzRrN0FsUUdzb2ZRV0VpZUphaHpkL2pwMDQxWWU1eWlNUzVL?=
 =?utf-8?B?WWVKbGVraWZXbWhSamZLUmszK3RQSzJvVDhSMVVJT1NqRHUza1BNUlM4cHhN?=
 =?utf-8?B?V0tBOGRrN0RCL09sM1d5cHpJbzlDejNSbGlpRE5tT1lWdUU2R0oxeG4ydm1M?=
 =?utf-8?B?bDdYL2xqSUxCMDFsVlQvbC81Y21VUGp1cWt1c2kwVVNwTGtLNEszMm5mSDI0?=
 =?utf-8?B?Q2YzUFJqMmxxWTRVckg5Q3N4YWUrS042b3V3U0p4cXg0cW5BOWpjNUJlUlhs?=
 =?utf-8?B?YnRYOGx2bmc3dzJRNEtnQlpoRllEWklubGVCUVVXQzVEaEpTMkxLRjl5VWZj?=
 =?utf-8?B?bWhLRWMwWGxMQ3MremZqS256R1ZmdG8zOWJYd2JSU2UzVjZSM2ZJdWdwQkRq?=
 =?utf-8?B?TUJzbEZVdVhJVW53T29XczdkRmt5UTFHVFB1TUVESHJLUDVTQjlLZ1NvN0dL?=
 =?utf-8?B?dlNxWlh2YjduaTdib2xhVmdrYWxpMzVtUC9WRE03cURrMCtrR0hpVHp0QWRZ?=
 =?utf-8?B?ZGtXdm1rZTJaenRaZTNMSmtPWDRuWDJ6M1Z5dFZKeHNPd3BhWm8zVHN6TVFX?=
 =?utf-8?B?YXhGM0YzdGFVNE9SZVZmL2FHSHM4VkFGSW00bjQrbnZlanZZUnZoZ1ZITElH?=
 =?utf-8?B?OVFXblVDRzVaSnRuQU5NenhpYU9NMlJOMVpMQlBVOUZ5ZFRudWRBQ1REY0wr?=
 =?utf-8?B?Y2NGNDFla2hpRlBLSUZ2bGR2Vm9hMDg1VCtOUWEyNnNaa0xib1FSUmk4aDBC?=
 =?utf-8?B?TFNQRjI2bENUNkdiWEN0MXZNbmUxeVRoaEIwalJrM1NQd2h1TERjZ2VPUlpH?=
 =?utf-8?B?M2l4TlN1azRsbW8wMmRpeDRFck1UcGNIeUxCWHlkTE9weXFHTHZ4ZnExTU1m?=
 =?utf-8?B?Zjg0V3c2S3p0ZTQ2VjNnRndTOHhvMEFmbkd2ajUvZFdMSVU4WFp6S0RuK1ov?=
 =?utf-8?B?cnkyODNsTVd2VHlHUDZQYVBOWUpzK3p3aHNRU2pZNkZGcDcvY2VmZkFaV0Zi?=
 =?utf-8?Q?LjImlU8LMTs=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5491.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018)(7053199007)(13003099007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cWtBVG95SVNXc1Y5ZFJuVDg4ZUpZbXVuV3pzcXd6ck5pNXp0ZnZYZW8veXFl?=
 =?utf-8?B?RHJ0YWIrWUFoMjROOTRDeVd5RDA2UW96L2UyMXo2TGdUb09uNzdPa1ZVdkFT?=
 =?utf-8?B?MlZZSnN5V0d3cnNBamNsbFBnb1BSTTVTODdtSmlkNnRVTlJ6dFc4YzJ4cDY5?=
 =?utf-8?B?akNxVTloVjhpM1NBNTZaSURETWw5T3JhR25WWTU2bzhwZlZSWjA4NTdocjhT?=
 =?utf-8?B?cnZ3YWNPalZaMWtEZW90dGhSeTY3UzBNejNnak82U0Evbm9uY3lqU3dsY2Jw?=
 =?utf-8?B?a1VVT2RPQTRqL0xnNlBnTkxlZGd1NWtqL1BpcFNQdXEvRkxVYkVYcE5yRG9X?=
 =?utf-8?B?dEF3UGpsNHE3YVZpQ3Z3eCswYUE1Y2szTy92ejB3dzBvVFRJREdnNnlhdjBt?=
 =?utf-8?B?ZGhnYlB4TThna0dacm15cVppQ0hYMGUrRHJ0eEFZNW1jcWxJR3hmemdXdVZy?=
 =?utf-8?B?ZWlkZVZWUzdTamo4eHNhSzlHT00zQXU0c0p2a0hSNkVURlAyR3lRdmxCUFow?=
 =?utf-8?B?NGVWS3pUemNjMmhKWDYvV0JFYitPY0E0WEc5eEpIUkwvdldGZnc5enhaZ3hG?=
 =?utf-8?B?STdCME10Zm84R0tJbXRCY1plajBjSEFKaHdPQXIxT1BuY2NlY1I3NXNCR0Y2?=
 =?utf-8?B?aS93aUdSK0pYUi9QaTJ2TWt6cjBtU09HendGUjd4TmhoRTFLWkp1dFNGZmlX?=
 =?utf-8?B?YmU3UDdIamJZbXlJUDB5SkJmK1QrbWoySXI1QVgyTXlYNnF5N2hId3I5T1VZ?=
 =?utf-8?B?QXJ6VmlvUDlwdVV2cGVaOFZKaWh0VDR4Y1NFb3AwOGxONXFOSzMyR0k0eGxj?=
 =?utf-8?B?ekIzbDlLTUo2bVVLcXpNUmU3NDVUTzdDRzJHOVQzaFBWdEplS2pENUZDMHZS?=
 =?utf-8?B?R250RzgvdWVsOUhNRUhOY3l5ZWl2MDVuTFJSbytsZTNXUjBkc285eXRkNzVE?=
 =?utf-8?B?NEZMaUg4ZENQdWU0NW53MzFCR1JrMFYyTlNNS2NJWHNGa3pOa1FSU1RXZ3hP?=
 =?utf-8?B?dkpYek4rV1c4VHFEM0ppTWZEKzRVdHQ5c0twaE9jcS9raW9OaVNjWjNqNnJQ?=
 =?utf-8?B?WCs1SVZQbHpXSXk1MU5qYmFhMWs2UkhTNWdtR0NzQjBZTEVJUk90NmlnTlVx?=
 =?utf-8?B?QzFFL2RDd0tYR3VqaWZwK2VYb3Y3U3NCbTFLQTBrSGN6NFZYOVdBcTN6WjZB?=
 =?utf-8?B?dllRb3dnSVh2a0xaZVI5YTFTWGJBbVgrUzlKa2NHaHEvQ1BvSUYyamk0eUtQ?=
 =?utf-8?B?VEJDa0U2aFVkaWxMc2FBSms5TERxdTNFSHZ5SnhvK2VZOTNLRUZsU3RPTTZa?=
 =?utf-8?B?cmlWSU5raHZybzYxbFBYdFllOXJtUVZYZWZlc3loUVgxeVN6MzVxa0NZbDhw?=
 =?utf-8?B?RmtvSVpCU2s1bHF3WHdQRStPYTNFVXN6aHdmd1VGMTJEN3NQY3NqY3BKYmgv?=
 =?utf-8?B?SUNQY0huQjNzNXRRTmlaQWlhOFpIZUVKYXdtOFZoMC9NQ0RZWVc2Qlk0M0NH?=
 =?utf-8?B?bjlsa1BLU29uSm1VSHR0Z1p3ZEk3ZkVnVzJveGxweGU2VWRqcjJUVjN1a21h?=
 =?utf-8?B?aFk1TDdYdHNvOXFHdzJEZTB5N01abTIraHpwTEVQQzZmNVkyTjJKMVFnck02?=
 =?utf-8?B?K2dBZEM4RFJnalAvclpsVitXblZlS2VMTWdaYW1KVDA2Z0FHdDVmMlh5Q1py?=
 =?utf-8?B?ckNEa0hxdnZ5dXh5QWt5UWJiK0ZTSXFPSGtLa1Y4RWNLcllobWpqOWxZZmVG?=
 =?utf-8?B?aGpSQzc3Y2JlckI5TEEzOSsyb1RCM3REUmFjbldMMHpPaTdVR0dmSjE1TVkw?=
 =?utf-8?B?YWJGY3hTeVppUGNHNkJ1M3MxUzAvZS9KWkZBSUdqWm1SSkdkY1dGSlBjZXcr?=
 =?utf-8?B?Unl5dk83SGFpdks5M01XVmJIV2hXdjFTWEVPSDcyaU1zTXpXb3BmSmZSajV1?=
 =?utf-8?B?UVRUSCsrMEZyNExZbkdKMGFVSTdINGF3UWFMNXZwRGhyZEVWeUtaTWxQbkgw?=
 =?utf-8?B?L1FpUDhNUkhJTXBCWXp1V3hWaTdrVGEyeUhFRGIxVUhrVkxlNytkWUhnQko2?=
 =?utf-8?B?NCtCTE84emtSYXZ6OTR6ZkNTWjlGdHpiSjZWTFJaMXFiTlhSZXoyekdRRTAv?=
 =?utf-8?Q?c5Kpp4LR2IJx9wlsOJe71a+Sa?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5491.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c48669a-7b3c-4dda-537f-08ddacab61da
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2025 07:57:03.7502 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 99i0UShRr99WkzP6Sraj9+xsjUUlHEufg9JwUg1gmwCN1HOabkYky+vmbZQPcUN4pylxajdivREvFPMlJ9vh0E3BYSJWrH8OkDwP7UR3qPQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4934
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

SGksDQoNCiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzE1MDE3Mi8g
LSBSZS1yZXBvcnRlZC4NCmk5MTUuQ0kuQkFUIC0gUmUtcmVwb3J0ZWQuDQoNCg0KVGhhbmtzLA0K
UmF2YWxpLg0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogSTkxNS1jaS1pbmZy
YSA8aTkxNS1jaS1pbmZyYS1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxm
IE9mIFNhYXJpbmVuLCBKYW5pDQpTZW50OiAxNiBKdW5lIDIwMjUgMTI6NTcNClRvOiBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPjsgSTkxNS1jaS1pbmZyYUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNClN1
YmplY3Q6IFJFOiDinJcgaTkxNS5DSS5CQVQ6IGZhaWx1cmUgZm9yIGRybS9pOTE1L2RzYjogRFNC
IGZpeGVkIGFuZCBmbGlwIHF1ZXVlIHByZXAgd29yayAocmV2MykNCg0KSGksIA0KDQo+IC0tLS0t
T3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLWdmeCA8aW50ZWwtZ2Z4LWJvdW5j
ZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgDQo+IFBhdGNod29yaw0KPiBT
ZW50OiBTYXR1cmRheSwgMTQgSnVuZSAyMDI1IDE0LjA0DQo+IFRvOiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiDinJcgaTkxNS5DSS5CQVQ6IGZhaWx1cmUgZm9yIGRy
bS9pOTE1L2RzYjogRFNCIGZpeGVkIGFuZCBmbGlwIA0KPiBxdWV1ZSBwcmVwIHdvcmsgKHJldjMp
DQo+IA0KPiBQYXRjaCBEZXRhaWxzDQo+IFNlcmllczoJZHJtL2k5MTUvZHNiOiBEU0IgZml4ZWQg
YW5kIGZsaXAgcXVldWUgcHJlcCB3b3JrIChyZXYzKQ0KPiBVUkw6CWh0dHBzOi8vcGF0Y2h3b3Jr
LmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTUwMTcyLw0KPiBTdGF0ZToJZmFpbHVyZQ0KPiBEZXRh
aWxzOglodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9QYXRjaHdv
cmtfMTUwMTcydjMvaW5kZXguaHRtbA0KPiANCj4gQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBD
SV9EUk1fMTY3MDQgLT4gUGF0Y2h3b3JrXzE1MDE3MnYzDQo+IA0KPiANCj4gU3VtbWFyeQ0KPiAN
Cj4gDQo+IEZBSUxVUkUNCj4gDQo+IFNlcmlvdXMgdW5rbm93biBjaGFuZ2VzIGNvbWluZyB3aXRo
IFBhdGNod29ya18xNTAxNzJ2MyBhYnNvbHV0ZWx5IG5lZWQgDQo+IHRvIGJlIHZlcmlmaWVkIG1h
bnVhbGx5Lg0KPiANCj4gSWYgeW91IHRoaW5rIHRoZSByZXBvcnRlZCBjaGFuZ2VzIGhhdmUgbm90
aGluZyB0byBkbyB3aXRoIHRoZSBjaGFuZ2VzIA0KPiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18x
NTAxNzJ2MywgcGxlYXNlIG5vdGlmeSB5b3VyIGJ1ZyB0ZWFtIA0KPiAoSTkxNS1jaS0NCj4gaW5m
cmFAbGlzdHMuZnJlZWRlc2t0b3Aub3JnKSB0byBhbGxvdyB0aGVtIHRvIGRvY3VtZW50IHRoaXMg
bmV3IA0KPiBmYWlsdXJlIG1vZGUsIHdoaWNoIHdpbGwgcmVkdWNlIGZhbHNlIHBvc2l0aXZlcyBp
biBDSS4NCj4gDQo+IEV4dGVybmFsIFVSTDogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLQ0KPiB0aXAvUGF0Y2h3b3JrXzE1MDE3MnYzL2luZGV4Lmh0bWwNCj4gDQo+IA0KPiBQ
YXJ0aWNpcGF0aW5nIGhvc3RzICg0NCAtPiA0MykNCj4gDQo+IA0KPiBNaXNzaW5nICgxKTogZmkt
c25iLTI1MjBtDQo+IA0KPiANCj4gUG9zc2libGUgbmV3IGlzc3Vlcw0KPiANCj4gDQo+IEhlcmUg
YXJlIHRoZSB1bmtub3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGludHJvZHVjZWQgaW4N
Cj4gUGF0Y2h3b3JrXzE1MDE3MnYzOg0KPiANCj4gDQo+IElHVCBjaGFuZ2VzDQo+IA0KPiANCj4g
UG9zc2libGUgcmVncmVzc2lvbnMNCj4gDQo+IA0KPiAqCWlndEBpOTE1X3NlbGZ0ZXN0QGxpdmU6
DQo+IA0KPiAJKgliYXQtYWRscC02OiBQQVNTIDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tDQo+IHRpcC9DSV9EUk1fMTY3MDQvYmF0LWFkbHAtNi9pZ3RAaTkxNV9zZWxmdGVz
dEBsaXZlLmh0bWw+ICAtPiBBQk9SVA0KPiA8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUwMTcydjMvYmF0LWFkbHAtDQo+IDYvaWd0QGk5MTVfc2Vs
ZnRlc3RAbGl2ZS5odG1sPg0KDQpOb3QgcmVsYXRlZCB0byB0aGlzIHNlcmllcywgcGxlYXNlIHJl
LXJlcG9ydC4gDQoNCj4gDQo+IA0KPiBLbm93biBpc3N1ZXMNCj4gDQo+IA0KPiBIZXJlIGFyZSB0
aGUgY2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdvcmtfMTUwMTcydjMgdGhhdCBjb21lIGZyb20ga25v
d24NCj4gaXNzdWVzOg0KPiANCj4gDQo+IElHVCBjaGFuZ2VzDQo+IA0KPiANCj4gSXNzdWVzIGhp
dA0KPiANCj4gDQo+ICoJaWd0QGRtYWJ1ZkBhbGwtdGVzdHNAZG1hX2ZlbmNlX2NoYWluOg0KPiAN
Cj4gCSoJZmktYnN3LW4zMDUwOiBQQVNTIDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tDQo+IHRpcC9DSV9EUk1fMTY3MDQvZmktYnN3LW4zMDUwL2lndEBkbWFidWZAYWxsLQ0K
PiB0ZXN0c0BkbWFfZmVuY2VfY2hhaW4uaHRtbD4gIC0+IElOQ09NUExFVEUgPGh0dHBzOi8vaW50
ZWwtZ2Z4LQ0KPiBjaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTAxNzJ2My9maS1i
c3ctDQo+IG4zMDUwL2lndEBkbWFidWZAYWxsLXRlc3RzQGRtYV9mZW5jZV9jaGFpbi5odG1sPiAg
KGk5MTUjMTI5MDQgDQo+IDxodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUv
a2VybmVsLy0vaXNzdWVzLzEyOTA0PiApICsxIA0KPiBvdGhlciB0ZXN0IGluY29tcGxldGUNCj4g
DQo+ICoJaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBoYW5nY2hlY2s6DQo+IA0KPiAJKgliYXQtYWRs
cC02OiBQQVNTIDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9D
SV9EUk1fMTY3MDQvYmF0LWFkbHAtNi9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQGhhbmdjaGVjay5o
dG1sPiAgLT4gDQo+IEFCT1JUIA0KPiA8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTUwMTcydjMvYmF0LQ0KPiBhZGxwLTYvaWd0QGk5MTVfc2VsZnRl
c3RAbGl2ZUBoYW5nY2hlY2suaHRtbD4gIChpOTE1IzE0MzY1IA0KPiA8aHR0cHM6Ly9naXRsYWIu
ZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8xNDM2NT4gKQ0KPiANCj4g
KglpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmthcm91bmRzOg0KPiANCj4gCSoJYmF0LWFybGgt
MzogUEFTUyA8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLQ0KPiB0aXAvQ0lf
RFJNXzE2NzA0L2JhdC1hcmxoLTMvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kcy5o
dG1sPg0KPiAtPiBETUVTRy1GQUlMIDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tDQo+IHRpcC9QYXRjaHdvcmtfMTUwMTcydjMvYmF0LWFybGgtDQo+IDMvaWd0QGk5MTVfc2Vs
ZnRlc3RAbGl2ZUB3b3JrYXJvdW5kcy5odG1sPiAgKGk5MTUjMTIwNjEgDQo+IDxodHRwczovL2dp
dGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzEyMDYxPiApICsx
IA0KPiBvdGhlciB0ZXN0IGRtZXNnLWZhaWwNCj4gCSoJYmF0LWRnMi0xNDogUEFTUyA8aHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLQ0KPiB0aXAvQ0lfRFJNXzE2NzA0L2JhdC1k
ZzItMTQvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kcy5odG1sPg0KPiAtPiBETUVT
Ry1GQUlMIDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9QYXRj
aHdvcmtfMTUwMTcydjMvYmF0LWRnMi0NCj4gMTQvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUB3b3Jr
YXJvdW5kcy5odG1sPiAgKGk5MTUjMTIwNjEgDQo+IDxodHRwczovL2dpdGxhYi5mcmVlZGVza3Rv
cC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzEyMDYxPiApICsxIA0KPiBvdGhlciB0ZXN0
IGRtZXNnLWZhaWwNCj4gDQo+IA0KPiBQb3NzaWJsZSBmaXhlcw0KPiANCj4gDQo+ICoJaWd0QGk5
MTVfc2VsZnRlc3RAbGl2ZUBndWNfaGFuZzoNCj4gDQo+IAkqCWJhdC10d2wtMjogSU5DT01QTEVU
RSA8aHR0cHM6Ly9pbnRlbC1nZngtDQo+IGNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE2
NzA0L2JhdC10d2wtDQo+IDIvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBndWNfaGFuZy5odG1sPiAg
KGk5MTUjMTQwOTYgDQo+IDxodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUv
a2VybmVsLy0vaXNzdWVzLzE0MDk2PiApIC0+IA0KPiBQQVNTDQo+IDxodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTAxNzJ2My9iYXQtdHdsLQ0KPiAy
L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAZ3VjX2hhbmcuaHRtbD4gICsxIG90aGVyIHRlc3QgcGFz
cw0KPiANCj4gKglpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmthcm91bmRzOg0KPiANCj4gCSoJ
YmF0LW10bHAtOTogRE1FU0ctRkFJTCA8aHR0cHM6Ly9pbnRlbC1nZngtDQo+IGNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzE2NzA0L2JhdC1tdGxwLQ0KPiA5L2lndEBpOTE1X3NlbGZ0ZXN0
QGxpdmVAd29ya2Fyb3VuZHMuaHRtbD4gIChpOTE1IzEyMDYxIA0KPiA8aHR0cHM6Ly9naXRsYWIu
ZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8xMjA2MT4gKSAtPiANCj4g
UEFTUw0KPiA8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTUwMTcydjMvYmF0LW10bHAtDQo+IDkvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUB3b3JrYXJv
dW5kcy5odG1sPiAgKzEgb3RoZXIgdGVzdCBwYXNzDQo+IA0KPiANCj4gV2FybmluZ3MNCj4gDQo+
IA0KPiAqCWlndEBpOTE1X3NlbGZ0ZXN0QGxpdmU6DQo+IA0KPiAJKgliYXQtYXRzbS0xOiBETUVT
Ry1GQUlMIDxodHRwczovL2ludGVsLWdmeC0NCj4gY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fMTY3MDQvYmF0LWF0c20tDQo+IDEvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZS5odG1sPiAgKGk5
MTUjMTIwNjEgDQo+IDxodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2Vy
bmVsLy0vaXNzdWVzLzEyMDYxPiAgLw0KPiBpOTE1IzEzOTI5IDxodHRwczovL2dpdGxhYi5mcmVl
ZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0NCj4gL2lzc3Vlcy8xMzkyOT4gKSAtPiBETUVT
Ry1GQUlMIDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9QYXRj
aHdvcmtfMTUwMTcydjMvYmF0LWF0c20tMS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlLmh0bWw+DQo+
IChpOTE1IzEyMDYxIDxodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2Vy
bmVsLy0NCj4gL2lzc3Vlcy8xMjA2MT4gIC8gaTkxNSMxNDIwNA0KPiA8aHR0cHM6Ly9naXRsYWIu
ZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8xNDIwND4gKQ0KPiANCj4g
KglpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQG1tYW46DQo+IA0KPiAJKgliYXQtYXRzbS0xOiBETUVT
Ry1GQUlMIDxodHRwczovL2ludGVsLWdmeC0NCj4gY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fMTY3MDQvYmF0LWF0c20tDQo+IDEvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBtbWFuLmh0bWw+
ICAoaTkxNSMxMzkyOSANCj4gPGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkx
NS9rZXJuZWwvLS9pc3N1ZXMvMTM5Mjk+ICkgLT4gDQo+IERNRVNHLUZBSUwgPGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS0NCj4gdGlwL1BhdGNod29ya18xNTAxNzJ2My9iYXQt
YXRzbS0xL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAbW1hbi5odG1sPg0KPiAoaTkxNSMxNDIwNCA8
aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tDQo+IC9pc3N1
ZXMvMTQyMDQ+ICkNCj4gDQo+IA0KPiBCdWlsZCBjaGFuZ2VzDQo+IA0KPiANCj4gKglMaW51eDog
Q0lfRFJNXzE2NzA0IC0+IFBhdGNod29ya18xNTAxNzJ2Mw0KPiANCj4gQ0ktMjAxOTA1Mjk6IDIw
MTkwNTI5DQo+IENJX0RSTV8xNjcwNDogNzA3YmQ4OGQ1Yjc5OWMwMGZmNWJlOTYzNGIyZjRlNGVj
ZTc5ZDg4OSBAIA0KPiBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgN
Cj4gSUdUXzg0MTE6IGQ1YjVkMmJiNGY4Nzk1YTk4ZWE1ODM3NmExMjhiNzRmNjU0YjdlYzEgQCAN
Cj4gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pZ3QtZ3B1LXRvb2xzLmdpdA0K
PiBQYXRjaHdvcmtfMTUwMTcydjM6IDcwN2JkODhkNWI3OTljMDBmZjViZTk2MzRiMmY0ZTRlY2U3
OWQ4ODkgQCANCj4gZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4DQoN
Cg==
