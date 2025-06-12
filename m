Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D60F0AD7CC1
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 22:58:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C21E10E193;
	Thu, 12 Jun 2025 20:58:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cgAiWHku";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6F6710E098;
 Thu, 12 Jun 2025 20:58:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749761888; x=1781297888;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CPbwcWypubnWM2QERfqskPWUYl9ugwNcJ9/6DO8mecQ=;
 b=cgAiWHkuBOxwAXWWoF0tgL950n6ZTiQNNU6MFYlpCqP+TSQm/iqortRN
 B8T4CmFKlN5skVLOSV2oP0YOUas7fRHBkP3aqMfEW6hnAVoC9LPOYms2d
 Eq+ogN2cVT3CSBV9wEi7WwjQRYtXQFx0m7LEzAJ8uAa0kDHr2MHdolmD7
 magCawWBfjjNT5OLGvXkP4WRlJdV+PFBPj1DEk8RqITAVhH/GvEQe2UqG
 oC9pFum9+vLHMVWH3iFE+DBEXywdjIeG4WLJaKmu008LgSBAHUv6NU8ag
 0vWwq2qXEC/WgS3VrHJWml2xaEbuwatLu4zxvR2jYfWuwLaMk9YcQON+i w==;
X-CSE-ConnectionGUID: syCR1P6TTEmZZ5d/dAWc2Q==
X-CSE-MsgGUID: /gDEDg4dQG6/hWzC0G/fLg==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="63313305"
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="63313305"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 13:58:07 -0700
X-CSE-ConnectionGUID: 8Q/H7hdfTvK7ZZQDp1IKMw==
X-CSE-MsgGUID: PN6EYV+rROip4m1Fgu7adw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="148187026"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 13:58:07 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 12 Jun 2025 13:58:06 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 12 Jun 2025 13:58:06 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.84) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 12 Jun 2025 13:58:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hyNw7UtaP+04O7nqdvU2fX3wjto847lW2H80KRaTrlg9nqb9jwutYF9oOPgilFwvna+I3dKTl3Y604bvzdRpbmvJfmEvvWu1N2kDJjC6AG779SVsSpk39rlmQEB/Q+cSVNDU4NOL8jQ63osASJldA+Ce0OTIVOo1ScmmzLnrdWg6kFc+0ILGJyKhtExi8jXE4I50nWvWO/hYojnL2nxNWX72AapnVhs8liiJ30uoQSaP7BgZRBGJ2LhNTVVEWgTVcZ+qvTACXbGBj3Cyc9vYDs+3aDhKjj/yXA7HJwEMe1zVPBO5jqr/a9tU6GysvkDp22QkOxIcokEFX75eOoc1Gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CPbwcWypubnWM2QERfqskPWUYl9ugwNcJ9/6DO8mecQ=;
 b=Cii9Cdb5LYmxyWls7ylDdZyp04rKCTREydutHb/vcrO8ldBV+vaSh1yBXhWeMRwtGS9pOQ3jNsuVAYzSgQBmK6k6mXAWlTmwGIpycQWdM9jLVzgF6RP462G0uoPCQp4mSpee0D8EgpxgBDneefg8Xufb/zSBj3VC+FQ0aRLUov4688Lj43316tGF9cOJ+x+gZkmivOBK8CqCvMP3SmGzbDYI5ilkEVKxGpjDfBDN4329gohRDwYgoST74zYhENztlkKcZxILNpj5p8tk6M6XjLcvRYsrKjUakfSPLqfn2cYo2/uGH/huKnXvlE/yQDI9wyOE/cggn42X4Jf9ldVvGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH7PR11MB6605.namprd11.prod.outlook.com (2603:10b6:510:1b0::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.29; Thu, 12 Jun
 2025 20:58:03 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.8835.018; Thu, 12 Jun 2025
 20:58:03 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 8/9] drm/i915/dmc: Pass crtc_state to intel_dmc_{enable,
 disable}_pipe()
Thread-Topic: [PATCH 8/9] drm/i915/dmc: Pass crtc_state to intel_dmc_{enable, 
 disable}_pipe()
Thread-Index: AQHb2ukB1MMRWf29zkqHPRf6k9bcqbQAA3dQ
Date: Thu, 12 Jun 2025 20:58:03 +0000
Message-ID: <DM4PR11MB63609185319675FFC4000783F474A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250611155241.24191-1-ville.syrjala@linux.intel.com>
 <20250611155241.24191-9-ville.syrjala@linux.intel.com>
In-Reply-To: <20250611155241.24191-9-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH7PR11MB6605:EE_
x-ms-office365-filtering-correlation-id: bac5665a-3c7b-4c6c-6662-08dda9f3d2f1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?aEl3cEFaT3pZN2JlZUFOTE9zcGFkZCtKNUNDbVo5aW5IaTF1YVJiRUNWQ1ZJ?=
 =?utf-8?B?U2laRVFhYkszYzVQS2ZQM2poV0J3VkliL1ZjWjM3OUE2Z3NoaHFwYzdGcVl3?=
 =?utf-8?B?WEZvdEdWd2g1czJKU0RjUTVVYTJwNTZsTkN0TnFiZkRMVUI3cnBsazVWYWND?=
 =?utf-8?B?ay8rNWFjeDEvSThFVWxoOCs3ZUFtMk9wS0dKb290NEMzUk9adEVjOXdoNzJX?=
 =?utf-8?B?SVRjb1pVY2NkNlEwd2J4NnFvVDd3V29naklqVDRhNTZyR3hDR1hXd25zcnBX?=
 =?utf-8?B?Z3FWcDk1NDZCN3gzMDBjck9KT3lUSGdnbmtidHNKUElqWDU2SlJIbmxMaUNK?=
 =?utf-8?B?SnNLVko2R05XMSs4LzhsZFFIeDgxWkw5Q3VyNEltSXNIR0E2WFlwVWNRNkdC?=
 =?utf-8?B?NzMxUWJoWGFCRGdsUXBQV2pRN3VvQUFkcUxKTW1scitDZE5QdXJScjh2SFZN?=
 =?utf-8?B?Qm81bGlOVitXTjZQUU1QSHdTaCs0M1hwNGFodkkyaWdvQ3RVWTVnWVdySDBF?=
 =?utf-8?B?NDAvRU9WTDlaWFNqc25BV0h1emVLQnRabFFCSHdnaXZNaWlKVGFTMllyblFF?=
 =?utf-8?B?b2pnSlRrUHJpbmtraEpkeTFEUENOR29HZ3g5VVBmV0FDMzhqdmN3TWNoS3dE?=
 =?utf-8?B?ai9BOG5qeTg3Z0g1QnRFVTVmNXN6ZEdCVHNBRFdhUDJXclpjVnZiaCt5M2dn?=
 =?utf-8?B?ZXZpLzI5VXkxWGpWVDJhUmJiMFpzeUtPN0pGWUU0QU8wZEdBSXpLYk5UMWlD?=
 =?utf-8?B?ZjNHQWJjVnA4R3h0YzVFdE15VWJTTkRTSHQzRzhsK0d6dUhmaXQyQVhjcWNQ?=
 =?utf-8?B?RFVUZFJrMXU4WEM0VDRBblJhVmtpeDExQUIzVW5pRFpmTlhVc2VGZCtKK2Vx?=
 =?utf-8?B?SENNRmw5RUhvNjBZamNXOGI2SHU2TXRQL2dMem50Z0VFbHFnQ1VGRWw3ZjQr?=
 =?utf-8?B?THZzQzI0VnYwT2ZoWStIbDIzcGE4UE5GbXlzclp6NmN4MFVYSnh0aFpaQWxV?=
 =?utf-8?B?Z3lES29QR2dWbnI1NnYwYmU5QWRXVFBRck1MNXZLM2ZLd08zUGxIUGhGV2k2?=
 =?utf-8?B?MlVmdHlIZHFhSTFKYytWQjY3REtnblVaMk56aVVuTXFOQk9LbzUwRXozMG5t?=
 =?utf-8?B?R3FsaDRHcE1HOU12RGkxcGVESThmd3BRK3FqWjIvOVNQbUdmeDVZRHp6NUtM?=
 =?utf-8?B?bUFPMStMWFlIQVplck9qZTdNTnl1UGdGUFFKK1pNNXlETkVqeVV2TkFkRkEx?=
 =?utf-8?B?Tnc2MlcrQ29IOXVldXVYZ0ZOOW1rSDZuUnRlNEpyQzY3UXc3UnlZMFpzQmZm?=
 =?utf-8?B?QWR3QWxBWUU4NEw2WjNBeE94Z2RSL2JJR2hNN2hJSDEvZGdZb2hHcjQwZVFa?=
 =?utf-8?B?K1c4SnhTRlk5NkNnVVpPeVFZQkt2NFRtL2xWVDV4VWlyQ041MGNad2RQNStY?=
 =?utf-8?B?bVY1UmI3NEY5alR1b1BjZmFvMGZCVnBXMUpTK3U3bUZvYnRQQ2YvUUFDY3ND?=
 =?utf-8?B?UytjczgrWVI3cDdWeCsvTkNydlExejJGVWNSNlFXbE9JazZWM3NDNFU3RjJi?=
 =?utf-8?B?VWR4VXN5MzRvSzR4d2NZNWQ3MjhaQlpyc01vSE9TQmZOZWpkYlNqemlvc21h?=
 =?utf-8?B?Ym9IUUtDWlZWdW42U0J5VERFMzBZUDBKYzdGQ01iZ2NDZnpuMnNYQS91NUxj?=
 =?utf-8?B?cnFlL0cyRkVpdXZIMEd2cHpNR2FvOW05T1JCYzZPSDRaQ2JmMjV4OUVnbVpu?=
 =?utf-8?B?OGx0cGtINVRZc0c4NlF2bm1qOVNkdWlsT3hFUWFiSHNzYTBrcCtLTUc1Q3pj?=
 =?utf-8?B?RG82Qmk2RFNDa214TC9RUUJJb0wzMVFjKzk3bVlsQmRVMXFoV0hMRjNNU2Qx?=
 =?utf-8?B?d3UyUEhSSW5GYTdqREsyZ1BEdHF3clR0L2RRMytxSGdLUjVSdFl6T0ZnM1Uv?=
 =?utf-8?B?bUhCd1NQa0RFWDVDZlgza3VvbzRKbHYveVNzU0FqWU9idDNHdUl5cy9mM2Zw?=
 =?utf-8?B?MWovR3Qwb3hRPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?anJINkNzaFlLbTJPVVppSnpjN2ZjNlFsVWxNdVJvQ1F3RGF5djlFY1ZDVTU5?=
 =?utf-8?B?bldXeU9Pc3c2SnNwRUJpSHdWQkZrTFoyMC80TlF1WWdFWlRHcTZnZ2dpQzVP?=
 =?utf-8?B?NjVDMmFEZitvTDFlM3FzTlhlS0h0LzdiaStJN0haLzJJRnJuNHJPL1lWUThC?=
 =?utf-8?B?RlFCMlllZXBSMENTTWxlZGlxSXZ6TGQwdGpBZ2hpZCtraUlwd3hvcGNIYmZv?=
 =?utf-8?B?bHBMT05nUXVUbnZXYmZWZHIrZHlqNWdDem1NSVRaUUpTVm51dVY0NmlpUUtG?=
 =?utf-8?B?dU54My85dFRFS2Y4QWhFSCtoZ1ZMMTBCZVJyZ2tXTjJJZXo5MC80R0lTdExC?=
 =?utf-8?B?K0lTM0RaM1R2YjNGNFFzMVpOWlE5a2VBVFI3VUhET2g2NkMrUDVOU0xNeDBU?=
 =?utf-8?B?S1hQOFVJa0Jmalg4VmlXL2t3bzFKdGZlQ1MzWjI4ck9qYThCWlhmeGh5aTBE?=
 =?utf-8?B?OWRpa3pzcWl0N1l2aDBZUnZRdEwwS2toakxwUmxLUi9nWUZJTWltRWhVWHVl?=
 =?utf-8?B?VnF2TDdGMEF2UkVXQjJHVjl5R0xKclpONUZ0djJGYzJJVzhka09jMWI3ekYw?=
 =?utf-8?B?TWVTNzN1WVptODJhWnU4bE45ZnBHSmlKdUdUQm1mS1NHbGw1U0xwbUo2UXpN?=
 =?utf-8?B?cVU3MStEUG80YWV0S1hIYjUvK0JIMVg0VStBeDZob3V0V0YzclVxa0d2L2tN?=
 =?utf-8?B?U3dRcmtURUhtQUQvc0N1WmdZL1g1QXVnWHFkM091L0xqNmFjLzN1ZjZFL3cw?=
 =?utf-8?B?Y09VUWN6V2wvek9Bbm9wWTFld1NpRWZPcG92cFZZTFY0NU9ac0VlV3I1K0FG?=
 =?utf-8?B?MHlQd1owcEZuV1R2ZVQyT3ZNT3ZIOVJ5RU8yTFEzTWp3ejAzVUNkRWFYcmJt?=
 =?utf-8?B?YW54V29NY291WXcvUWliUVRkSFpGRjdnSk9MSWtiNlB0ZkphamFSTmhIQWh4?=
 =?utf-8?B?YVRTVzJjd2tsNEFFTVFMNjY4SVhaUWdSQ3l0UnVSM1dodnR3VmhsS0VCRVdC?=
 =?utf-8?B?alhzRHhYMCtRaHhEb2lEdE1rdTdpWC8zQWVNMy9rSloxckVOYldNR1dJcml3?=
 =?utf-8?B?SHNZQzZIZmVINHRKQjhRekRHbWIwRnIvSk5nWnRkdHB0Sm1pOEZLMVZPbEsw?=
 =?utf-8?B?TXZMUmhuQk52R3ZmZmJoK2tMRTZoVW9nUTFNSkFMYnpFZFM4UDRucVRJOHlt?=
 =?utf-8?B?Q0tERldFbWlNc1gwN21YdmFpblRObmN5eGdzRG1wTk1QbW1GZmF0OTFRRDJp?=
 =?utf-8?B?M2IwTHUxODFtYWgvNlZGcTJwamQ2R2d4cnpNVHV6T29VR1hVSVNrMklqdldq?=
 =?utf-8?B?d1p3akxYVm5NRVM0MU11RnhjcXFuQVU5eksvTU5wRWRPdDlDc0lqSjZkcGVL?=
 =?utf-8?B?czNCd1g5dWlya1FVU2VTMDVQdzZ1M3Y3SDBNeFlZd3hOS21IYVUzZ09PTnM5?=
 =?utf-8?B?aHJvQ3hEM01UdmxnQ3VmQWVuM3lIMGRpMHdkMnpKN2pvTHNzaDROTkhLNmh3?=
 =?utf-8?B?c3J6dXduRSt3d0FBWWJ5anRhMGlxVGU5dHhIWWsrNDhmTHZDTlA5cEg0NmpZ?=
 =?utf-8?B?TUxtNGJXb2VhU2RiZGwzbitpZVpWRGVCTFRXQnd1eXh3ekdDaFVWdmZLM0l6?=
 =?utf-8?B?V2JDMmVxeFNGSFdvcXZ4cEdhTEF5QXVMR3VLaVpsWGZtRlYrd1o3aHJsZDVx?=
 =?utf-8?B?VzM3TGFOeThJV2RuSXlWSlNZUFNNYjBWNmNMTjVhREF5NVRxK1ZIUENFWmhP?=
 =?utf-8?B?Tnd0SnlKMjh5anFtdWNqbDR5RXJXbmw1bjNsZGdWeEwxSnVTcWQweHJ6bUdZ?=
 =?utf-8?B?TlR5aUpaQ2VEanVYVWxNb3NQUWlzdlR4RUtlaUpkTEMvUWJnWGNUTU1abXZO?=
 =?utf-8?B?SGlCTlpnUE4xWnJJR2JIR3RmbjRuWjJ3WUI0NktmSWxYVUF6Rkpvcld3dE0r?=
 =?utf-8?B?WFZDMjRrMHVFZnJaOTFnaVZDMzR0MERBQzdpNnpkZFlNR1l4SlQ4R0k3VVhk?=
 =?utf-8?B?R25KSDBhb0hMN1p2Z2paN211enJOcTR2T04rSDFreDE2bHZMTTZ5SnA5UVNa?=
 =?utf-8?B?dWE5WXo5aDQ1K3BkZmprbndndW51Rk1IWVJXOXM5YWV0TURRK1dwdXNtVWVh?=
 =?utf-8?Q?hwKwkUHnCNIpgvbOWtNm6Xvao?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bac5665a-3c7b-4c6c-6662-08dda9f3d2f1
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2025 20:58:03.7218 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pAFEzq/OxglkqAL7eVnDY1TKIrIs6o0iWtt47mCk+GCVyJsoVU4J0oTD3kgzXt5GlDNVrwojEp7ky7UA+50kOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6605
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgVmlsbGUNCj4g
U3lyamFsYQ0KPiBTZW50OiBXZWRuZXNkYXksIEp1bmUgMTEsIDIwMjUgOToyMyBQTQ0KPiBUbzog
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogaW50ZWwteGVAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtQQVRDSCA4LzldIGRybS9pOTE1L2RtYzogUGFzcyBj
cnRjX3N0YXRlIHRvIGludGVsX2RtY197ZW5hYmxlLA0KPiBkaXNhYmxlfV9waXBlKCkNCj4gDQo+
IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+
IA0KPiBJJ2xsIG5lZWQgdG8gZXhhbWluZSB0aGUgY3J0YyBzdGF0ZSBkdXJpbmcgaW50ZWxfZG1j
X2VuYWJsZV9waXBlKCkuDQo+IFRvIHRoYXQgZW5kIHBhc3MgdGhlIHdob2xlIGNydGMgaW50byBp
bnRlbF9kbWNfe2VuYWJsZSxkaXNhYmxlfV9waXBlKCkuDQoNCkNoYW5nZXMgTG9vayBHb29kIHRv
IG1lLg0KUmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQoN
Cj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYyAgICAgfCAxNiArKysrKysrKysrKystLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RtYy5jICAgICAgICAgfCAxMCArKysrKysrKy0tDQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtYy5oICAgICAgICAgfCAgNSArKystLQ0KPiAg
Li4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX21vZGVzZXRfc2V0dXAuYyAgIHwgIDIgKy0N
Cj4gIDQgZmlsZXMgY2hhbmdlZCwgMjQgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkNCj4g
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+
IGluZGV4IGIwYzdjNDZmZmJlMi4uZWViM2FhNzc1N2YwIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBAQCAtMTY1OSw4ICsxNjU5LDEy
IEBAIHN0YXRpYyB2b2lkIGhzd19jcnRjX2VuYWJsZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRl
DQo+ICpzdGF0ZSwNCj4gDQo+ICAJaWYgKGRybV9XQVJOX09OKGRpc3BsYXktPmRybSwgY3J0Yy0+
YWN0aXZlKSkNCj4gIAkJcmV0dXJuOw0KPiAtCWZvcl9lYWNoX3BpcGVfY3J0Y19tb2Rlc2V0X2Vu
YWJsZShkaXNwbGF5LCBwaXBlX2NydGMsIG5ld19jcnRjX3N0YXRlLCBpKQ0KPiAtCQlpbnRlbF9k
bWNfZW5hYmxlX3BpcGUoZGlzcGxheSwgcGlwZV9jcnRjLT5waXBlKTsNCj4gKwlmb3JfZWFjaF9w
aXBlX2NydGNfbW9kZXNldF9lbmFibGUoZGlzcGxheSwgcGlwZV9jcnRjLCBuZXdfY3J0Y19zdGF0
ZSwgaSkNCj4gew0KPiArCQljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X3BpcGVf
Y3J0Y19zdGF0ZSA9DQo+ICsJCQlpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRlKHN0YXRl
LCBwaXBlX2NydGMpOw0KPiArDQo+ICsJCWludGVsX2RtY19lbmFibGVfcGlwZShuZXdfcGlwZV9j
cnRjX3N0YXRlKTsNCj4gKwl9DQo+IA0KPiAgCWludGVsX2VuY29kZXJzX3ByZV9wbGxfZW5hYmxl
KHN0YXRlLCBjcnRjKTsNCj4gDQo+IEBAIC0xNzk4LDggKzE4MDIsMTIgQEAgc3RhdGljIHZvaWQg
aHN3X2NydGNfZGlzYWJsZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlDQo+ICpzdGF0ZSwNCj4g
DQo+ICAJaW50ZWxfZW5jb2RlcnNfcG9zdF9wbGxfZGlzYWJsZShzdGF0ZSwgY3J0Yyk7DQo+IA0K
PiAtCWZvcl9lYWNoX3BpcGVfY3J0Y19tb2Rlc2V0X2Rpc2FibGUoZGlzcGxheSwgcGlwZV9jcnRj
LCBvbGRfY3J0Y19zdGF0ZSwgaSkNCj4gLQkJaW50ZWxfZG1jX2Rpc2FibGVfcGlwZShkaXNwbGF5
LCBwaXBlX2NydGMtPnBpcGUpOw0KPiArCWZvcl9lYWNoX3BpcGVfY3J0Y19tb2Rlc2V0X2Rpc2Fi
bGUoZGlzcGxheSwgcGlwZV9jcnRjLCBvbGRfY3J0Y19zdGF0ZSwgaSkNCj4gew0KPiArCQljb25z
dCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX3BpcGVfY3J0Y19zdGF0ZSA9DQo+ICsJCQlp
bnRlbF9hdG9taWNfZ2V0X29sZF9jcnRjX3N0YXRlKHN0YXRlLCBwaXBlX2NydGMpOw0KPiArDQo+
ICsJCWludGVsX2RtY19kaXNhYmxlX3BpcGUob2xkX3BpcGVfY3J0Y19zdGF0ZSk7DQo+ICsJfQ0K
PiAgfQ0KPiANCj4gIC8qIFByZWZlciBpbnRlbF9lbmNvZGVyX2lzX2NvbWJvKCkgKi8NCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZG1jLmMNCj4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtYy5jDQo+IGluZGV4IDM3NjE4Nzk3
ZDkzMS4uMDU2MmVlMWQwOTA1IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RtYy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZG1jLmMNCj4gQEAgLTY2Myw4ICs2NjMsMTEgQEAgc3RhdGljIGJvb2wgbmVlZF9waXBl
ZG1jX2xvYWRfbW1pbyhzdHJ1Y3QNCj4gaW50ZWxfZGlzcGxheSAqZGlzcGxheSwgZW51bSBwaXBl
IHBpcGUNCj4gIAlyZXR1cm4gRElTUExBWV9WRVIoZGlzcGxheSkgPj0gMzAgJiYgcGlwZSA+PSBQ
SVBFX0M7ICB9DQo+IA0KPiAtdm9pZCBpbnRlbF9kbWNfZW5hYmxlX3BpcGUoc3RydWN0IGludGVs
X2Rpc3BsYXkgKmRpc3BsYXksIGVudW0gcGlwZSBwaXBlKQ0KPiArdm9pZCBpbnRlbF9kbWNfZW5h
YmxlX3BpcGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ICB7
DQo+ICsJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGNy
dGNfc3RhdGUpOw0KPiArCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0Yyhj
cnRjX3N0YXRlLT51YXBpLmNydGMpOw0KPiArCWVudW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsN
Cj4gIAllbnVtIGludGVsX2RtY19pZCBkbWNfaWQgPSBQSVBFX1RPX0RNQ19JRChwaXBlKTsNCj4g
DQo+ICAJaWYgKCFpc192YWxpZF9kbWNfaWQoZG1jX2lkKSB8fCAhaGFzX2RtY19pZF9mdyhkaXNw
bGF5LCBkbWNfaWQpKSBAQCAtDQo+IDY4OCw4ICs2OTEsMTEgQEAgdm9pZCBpbnRlbF9kbWNfZW5h
YmxlX3BpcGUoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+IGVudW0gcGlwZSBwaXBl
KQ0KPiAgCQlpbnRlbF9kZV9ybXcoZGlzcGxheSwgUElQRURNQ19DT05UUk9MKHBpcGUpLCAwLA0K
PiBQSVBFRE1DX0VOQUJMRSk7ICB9DQo+IA0KPiAtdm9pZCBpbnRlbF9kbWNfZGlzYWJsZV9waXBl
KHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LCBlbnVtIHBpcGUgcGlwZSkNCj4gK3ZvaWQg
aW50ZWxfZG1jX2Rpc2FibGVfcGlwZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSkNCj4gIHsNCj4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2lu
dGVsX2Rpc3BsYXkoY3J0Y19zdGF0ZSk7DQo+ICsJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0
b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPnVhcGkuY3J0Yyk7DQo+ICsJZW51bSBwaXBlIHBpcGUg
PSBjcnRjLT5waXBlOw0KPiAgCWVudW0gaW50ZWxfZG1jX2lkIGRtY19pZCA9IFBJUEVfVE9fRE1D
X0lEKHBpcGUpOw0KPiANCj4gIAlpZiAoIWlzX3ZhbGlkX2RtY19pZChkbWNfaWQpIHx8ICFoYXNf
ZG1jX2lkX2Z3KGRpc3BsYXksIGRtY19pZCkpIGRpZmYgLS1naXQNCj4gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtYy5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kbWMuaA0KPiBpbmRleCBhMzc5MjA1MjA3OGEuLjc4MjBmYTVhZWQzZSAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuaA0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtYy5oDQo+IEBAIC0xMCwx
NCArMTAsMTUgQEANCj4gDQo+ICBlbnVtIHBpcGU7DQo+ICBzdHJ1Y3QgZHJtX3ByaW50ZXI7DQo+
ICtzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZTsNCj4gIHN0cnVjdCBpbnRlbF9kaXNwbGF5Ow0KPiAg
c3RydWN0IGludGVsX2RtY19zbmFwc2hvdDsNCj4gDQo+ICB2b2lkIGludGVsX2RtY19pbml0KHN0
cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KTsgIHZvaWQNCj4gaW50ZWxfZG1jX2xvYWRfcHJv
Z3JhbShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSk7ICB2b2lkDQo+IGludGVsX2RtY19k
aXNhYmxlX3Byb2dyYW0oc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpOyAtdm9pZA0KPiBp
bnRlbF9kbWNfZW5hYmxlX3BpcGUoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksIGVudW0g
cGlwZSBwaXBlKTsgLXZvaWQNCj4gaW50ZWxfZG1jX2Rpc2FibGVfcGlwZShzdHJ1Y3QgaW50ZWxf
ZGlzcGxheSAqZGlzcGxheSwgZW51bSBwaXBlIHBpcGUpOw0KPiArdm9pZCBpbnRlbF9kbWNfZW5h
YmxlX3BpcGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOw0KPiAr
dm9pZCBpbnRlbF9kbWNfZGlzYWJsZV9waXBlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlKTsNCj4gIHZvaWQgaW50ZWxfZG1jX2Jsb2NrX3BrZ2Moc3RydWN0IGludGVs
X2Rpc3BsYXkgKmRpc3BsYXksIGVudW0gcGlwZSBwaXBlLA0KPiAgCQkJICBib29sIGJsb2NrKTsN
Cj4gIHZvaWQgaW50ZWxfZG1jX3N0YXJ0X3BrZ2NfZXhpdF9hdF9zdGFydF9vZl91bmRlbGF5ZWRf
dmJsYW5rKHN0cnVjdCBpbnRlbF9kaXNwbGF5DQo+ICpkaXNwbGF5LCBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9tb2Rlc2V0X3NldHVwLmMNCj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX21vZGVzZXRfc2V0dXAuYw0KPiBpbmRleCAw
NWUxYjMwOWJhMmMuLjg0MTVmM2Q3MDNlZCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9tb2Rlc2V0X3NldHVwLmMNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9tb2Rlc2V0X3NldHVwLmMNCj4gQEAgLTk2MSw3ICs5NjEs
NyBAQCB2b2lkIGludGVsX21vZGVzZXRfc2V0dXBfaHdfc3RhdGUoc3RydWN0IGludGVsX2Rpc3Bs
YXkNCj4gKmRpc3BsYXksDQo+ICAJCWRybV9jcnRjX3ZibGFua19yZXNldCgmY3J0Yy0+YmFzZSk7
DQo+IA0KPiAgCQlpZiAoY3J0Y19zdGF0ZS0+aHcuYWN0aXZlKSB7DQo+IC0JCQlpbnRlbF9kbWNf
ZW5hYmxlX3BpcGUoZGlzcGxheSwgY3J0Yy0+cGlwZSk7DQo+ICsJCQlpbnRlbF9kbWNfZW5hYmxl
X3BpcGUoY3J0Y19zdGF0ZSk7DQo+ICAJCQlpbnRlbF9jcnRjX3ZibGFua19vbihjcnRjX3N0YXRl
KTsNCj4gIAkJfQ0KPiAgCX0NCj4gLS0NCj4gMi40OS4wDQoNCg==
