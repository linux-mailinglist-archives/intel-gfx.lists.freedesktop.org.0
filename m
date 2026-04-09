Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6Ly/HUi012lURwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 16:14:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3063CBD6D
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 16:14:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B309B10E807;
	Thu,  9 Apr 2026 14:14:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OxsM/lfl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F0A010E801;
 Thu,  9 Apr 2026 14:14:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775744069; x=1807280069;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bK/yhK+sT8UaV1mx9AL0D2lFvHM2Y5u1bEefMNLJJ/0=;
 b=OxsM/lflitTw8KiKjft86FX5ZC+OLQ+iihLlySg0nBLvAjQ582A1bK1T
 ty59I9VDu9aEVu3cZ+NJGkxfKr2xFb5WLHHwfphkaqJoRMCTaMp+oWpDQ
 YHLjG61XUEomOIvHpA4GD4HeGcVoSdXHgETXtMqJhy0CLsRC/MmzD1HQ7
 1RCq9Ve9OSd00mMJE35PaEskMxdLF/T3KjQoGFKsfqCuzDWgd1sp98zjw
 bQBzD9nIZgoqLZ0oXAd5T2CtI5zGomv1pwHVkmTLVLi+rOOn2x4HwnN37
 bZKQYgV20NbZp4n6wUW5OTP+k8MfooPh978wjYqMccvyDUKu36/9nUrcx g==;
X-CSE-ConnectionGUID: wpmaN2Z8StCfsz7vAToCIg==
X-CSE-MsgGUID: 1UCXx81XQhSVMC57+BirMQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11754"; a="94140617"
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="94140617"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 07:14:28 -0700
X-CSE-ConnectionGUID: 4f8nBPi9RPuN47P746peew==
X-CSE-MsgGUID: qm63GTHMTLKDWuoAmWWyVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="252110318"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 07:14:28 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 07:14:27 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 9 Apr 2026 07:14:27 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.32) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 07:14:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q6ybwqyYYFVFLIBp5BkP4xExXFaQEuACUF88/3r1A5PLz90UxBAJYq6D/MYpZr0rFThishW2NSl2oN3R4QXDQ2orhuVvCWKvn0JUT2de9hW+RO5k/pWYziwqvPoMW7CzweIp898uFCDvxrQENXEbeZTglHDrZQrPKq6kocJZaZ8eFX/Tma4ykDUImuKitwfwhnXuqWBeloikPZhWlnTzLVrvKcWQOS3xRvR0GFc8fN/Zsd8I46OuqLZ+XICCEI7FoDkFiBLFd7HY0iXRD7bclbpTI2ownNAurGHXUcZSPBR7Dw5WMlivPcIkn09spHCKPjbHN1E7/+z6MnvdZ+UFxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bK/yhK+sT8UaV1mx9AL0D2lFvHM2Y5u1bEefMNLJJ/0=;
 b=ULOTH+B1CmMA0w0GMoiJt3oIMExC/VMOeWLrc8CIq+BoBma+MOfanHcJ+HuHSCsLq6becgH6voobiiB/ko02liPIirCeQcN144/dtVHHaHBLx0+kAimzgRMv79pk6pCkUhOogoncnoxJMRYf951P0EibRbz+8yWkCTqblsdPAxElmo5W7/NHFjNR9euXj5ltLZcnSD6+floGvDiEQhk6wT190CUMPBen9QrhvSfB8BoRbXJVCdIZ8ZzccFKPwJli4h5zRaD4gfvOvS2OZc76oKTO+4d1lsp3VYyUHCupLIM0gyK8OJYRIPE3Y9BfwR1qJjkIKuE3CvCMhRwCZhRn3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by CH3PR11MB7769.namprd11.prod.outlook.com (2603:10b6:610:123::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.20; Thu, 9 Apr
 2026 14:14:17 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973%4]) with mapi id 15.20.9769.016; Thu, 9 Apr 2026
 14:14:17 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 1/2] drm/i915/mst: Call intel_pfit_compute_config() for
 sharpness filter
Thread-Topic: [PATCH 1/2] drm/i915/mst: Call intel_pfit_compute_config() for
 sharpness filter
Thread-Index: AQHcyAjfyOm9P8wunk28gW9l8hTOo7XWxZrQ
Date: Thu, 9 Apr 2026 14:14:17 +0000
Message-ID: <IA1PR11MB6467A709D75BD7AADF5EF6F1E3582@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20260409100841.1907-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20260409100841.1907-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|CH3PR11MB7769:EE_
x-ms-office365-filtering-correlation-id: 528def96-11e6-4c97-c554-08de9642491a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: bJYhcMMtr6+VZvG9A2AQSXeXbtjwmxkDeJ5MjtNuhWhTRc8RPjcup3ReSroHcL1/LpSo0MfL/wvqT+AhOiE3sjSNJ3ZXn1YzLt0srIYERgMS23u5GcipC/R/HiREZDAMwiG5AnOpPc16QuZGQYUIYcrkXgWgGDI80f/mXp4rKVMplxvPRLP1TaNVygHtMzwtghFbFDKupfFRBU+KsvwdFOvfAy7k64amvEu2Z1eTH1/9d/6smzX9ZnunyEMXPumo8rVsD4l092dCWQuNpAN53sO0fL78N9ASN9V3C8zT10CgOqc5SVBDvqZ9yIF2Lrw94uQDDWTptqxn0LW+q93azEf/OOOz6VwDw0NL23rk8CpBHX3q205a7sqBazFHQ1K6vTiQbZOcdju9p3Sd3+oKZ7rdgZbvoNNr3sIfk2fRUoX7lD4rEo5U7Q37jdxt6brQA3rHK3Avw2O/do7whGEu7A+8AhKMl/UMAM4WLUPUSrB3PIZLLTLVT46jyZbgjA4iY4/HnqBY2rY/HtRm4dHDzJszYdhJ/hcCEGygfCO8gkQJVuVj60vmSMqMvWyc1fgrFhsBdX2MGmowT2P6KZUt+Yf2KuLiWuqIUGj8+mxkosFulPTpTS/tQb1mtMYE2WsfL2l9SGElk0yB+VcGfDimnX0N7cgnlbBkyw67qehEPsWP5wmUXcIZx+owxskTfbHQRm7LQFjzia6tHxU6PytjEn8yrFkZRmdSxTigEVwByg7WXHRqqwarhJqpKMpZXH61LM86e05WQaqWn+7kM0oe8tisQ7VPThZ1TtJWgGtA3Q4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VDVyblErN281SUZPOTdXakhlNllRZ1ZNVUhubjJ1ZDR6akZtZ1l2QmtPNitv?=
 =?utf-8?B?dTJIR0c4ZXBFTjhoZmN3U1RHa3ZqalhTekp3NmN2RVljdEU0YUlITnZSZE51?=
 =?utf-8?B?c2E2N0dGMWRta1lIbXJpZ1lUR1U4SDVKT2xsUTBMUm1vdHZVRDJQaGltamFE?=
 =?utf-8?B?SjEwSjBZb1M4SG45d0VGeGpXS1dGVEFRdDF0YmxweWt2MVhqRVhMbXd3ZWtr?=
 =?utf-8?B?V2prV3pRSG02RDZQYm5nY0cvZjlRbU9RNElCZ2NraUsxeVc2M2tON2ZHVXdV?=
 =?utf-8?B?TEIzOU0yZkljYU11ZmdhNTZKNk4wVm52RG05Zk8vTExQTmJ4cWlEdTY4aE1L?=
 =?utf-8?B?dDQxRVA2VWZSUHBqS0licVk5SEJNVUkvaUhDQ3BncnRiTEczOTB1KzRJbVJY?=
 =?utf-8?B?SlU2T1VCOXdETFBXemh5amhqTTVpTEYyQ1ZmU1IrK0pTWEJRR0tjdjJZc0dD?=
 =?utf-8?B?SUJiZ3MrakZneFB6TkxEOTNNVXNiRjcyVUdKNzdqSmlDWndBQVZuK2QzcmhD?=
 =?utf-8?B?dFhpSkQ1S1YyTUpVcEpRTnlWbmFaWEJreFVMMlV0YVRVRXVoZFpxYUhYL2Z2?=
 =?utf-8?B?dGI0TGxLYmRSdU93QzFqZEc5UVFiKzlKcVJmV2JicnNSbUdQekRJa1RuYXFP?=
 =?utf-8?B?NnhEelRLaUFHd0hQNUtUN3NFM0ZESWY3MUtJWmtlMFBFUFlHZ3JsVDFJR2t2?=
 =?utf-8?B?UEVHME40NEJPOElHVkFka01sNnltMU51L0pCanArdFhTWmdvdFpSUzlGaEM2?=
 =?utf-8?B?a0VRT3FXKzNjWTZKTDRPUCsrMlhGU3UwRXZIRzVlRW52S1NJeTdYWlRFdlls?=
 =?utf-8?B?djFybE4zWkQySTN3UmJoUE9rdHhwaUxTN3dYMVlVQ1NxcTlCdWNhSWRwNGc0?=
 =?utf-8?B?MUZEbUJCR2dzcUVyTWc4MUc0dWIrZG44b1AwUjRxZUprYjVjWXlmQUFpSUNM?=
 =?utf-8?B?S3dSWXk3RFVuaVlvbEZidmd5NUpqcy9uYUcvWFRqN1RhbHo1OEhFN3NvQ01k?=
 =?utf-8?B?N3ZvSytmWW1zWW1TY21XakNnN3F3dXZsL3QyaytaMjU2c1lYdTY2bzdkM1hE?=
 =?utf-8?B?ZU9XSXJ1QW8rSkxkTGpHTmFxN2dHUDdsRzJEU0lzK2x4aFlSNTZBK1cwK3Iw?=
 =?utf-8?B?YTkydGVaQVBjZjYzNDFaNlg5VVd0cC9WODQ1ZnhpYVEzME5iczNKUGlISUZU?=
 =?utf-8?B?VGtBMkFNNFYzUFppQllnNUZzZzVNcDV4RUdBRFdEbG1lYmkvVC9ZWG9Dc212?=
 =?utf-8?B?MnlEbFBkbTNuaW1KR0hKbncyV0FZbUtueVErUlc3SlVnUHNGYUJ2elN4clg0?=
 =?utf-8?B?UXZwNnFQQVh4cXU2Q3pGT25oYk9aVllJbTZON0Y0Z1Nibno5ZWI1M3BrY2tG?=
 =?utf-8?B?cmVQNUJhYnBsTFEzREtZZDFWUFhpSlJZVTBDdHkwdjRuTGFBWGtRVGJGTnNr?=
 =?utf-8?B?RHpYZUVZR3p1d0dEeCtSc01MbmpkdU94NWVneTM3WmE4OEluc3JXbjc3ZnZL?=
 =?utf-8?B?VUJEcDFDeWdGQWlVb2hwOFFycE9lMFJtMFJGV2JaaUx3SzNUVTFiUWhqY09Z?=
 =?utf-8?B?SXZ1MEMxQUEvWkFib1hYT1JETzJjYW5makJkRlNBNE1CZkJuMGZidDYvQUsz?=
 =?utf-8?B?OXQ4S1JzVW9tZmRudzZKaWhYL04xQ1RpV0NadUZzL2NjNzE3UUgrMmxxMVNy?=
 =?utf-8?B?NHQzY3ZWTzUwSmYzSUZPRlRqSDlWeXlvWWptUkxoeGR3bjE0M2VmT1FmN2N4?=
 =?utf-8?B?N3o1SHhXVzBDK09reFFtUlZLd0lZNEdKN1hTNlpnSnlnaHpMVlZ3c2xyeTFX?=
 =?utf-8?B?QzRiaUw3a29KMDRDYndmT1ZDNVowbDM1aEhzcGJXOGx6VWVuR1JuTVNYY3My?=
 =?utf-8?B?cmJWMkNEMm0vcmpaQjF5Vm5CR2gySUM0bDFkaW1mSk4xb3IvQTVmNEtnemgx?=
 =?utf-8?B?ak9pTExseC9FR21YbkJ5WGVTMHlSWHJpN01DbHJmVVUwcEtmK1FSUU1qMHBX?=
 =?utf-8?B?ZjJyOGtnMldSN0RjeHpudjFqeE9QS1M4NldoOW9UaTJNR01lbTJRWFlVQ2Q4?=
 =?utf-8?B?elVQMHg4M2wwUFFTUGtmWlllM21vWURqTW14Z1RIcFJramF5REdRdVVEejlt?=
 =?utf-8?B?TXlEYTY1Y2VKV1IxcGdjeXJHdVk4R0syWndlSkQzMDdMZXNhR0N2eGZTTDFD?=
 =?utf-8?B?M1J3S0RHVHY1M01iUytmRW4xK2sxU2Y4eE1pUU9ua0ZYaGc1YkpsQ0wrcEo4?=
 =?utf-8?B?V0h1SXlQUmFBQk5nNVA3Yy9ackhnR0FlZnZhMmZ0WDJkaVFnSVovLzdoenBr?=
 =?utf-8?B?RlNObnhxTS9HVDdybFM5T0lrN2hZR0RpbVFmTXltTmt1ZDVRcGYxdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: jMiHjEWU4RGzuTCtaCnPB9KY6Kpgy7OiwMjOSxhCAQa+8MhWFiUYLXO2mU4pTePVcPD58JqwPHbw4pF+NvF4EkJjKB0IuyBQejc9Jbdiuv7WvlAq0T6ldq6GOx/8YPbKm0136Wlf4SQymZBMgrrKPCtYWoicfdHeHyakiw5wTcXsJSNHqYAFzMizsodbmdzEVZ/73J1MAbKpKIpZQ1FlmZ4UfUb7/yuVmWCxmIjzFm4PWV0fcwredx9ZO/gig+FUeGDklvaJuF/tlH89ez2TJVJflkCZcJTLEIP9MXS/wNJWzV5xc2X0pGCNdifPYhwiDdJ0NC7d/Ai7QsL18QQxIA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 528def96-11e6-4c97-c554-08de9642491a
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2026 14:14:17.1150 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OullbmbVEZtrdtcv/XIam/N37Nble2D84g6tyAs+xR5/j4yOr/PhmU/YLCfWUQYoDpX7gDMV9Tu4wUY4L4FNcA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7769
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,IA1PR11MB6467.namprd11.prod.outlook.com:mid];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2B3063CBD6D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVmlsbGUgU3lyamFsYSA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBBcHJpbCA5
LCAyMDI2IDM6MzkgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4g
Q2M6IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgR2FyZywgTmVtZXNhIDxuZW1lc2Eu
Z2FyZ0BpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCAxLzJdIGRybS9pOTE1L21zdDogQ2Fs
bCBpbnRlbF9wZml0X2NvbXB1dGVfY29uZmlnKCkgZm9yDQo+IHNoYXJwbmVzcyBmaWx0ZXINCj4g
DQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
DQo+IA0KPiBUaGUgc2hhcnBuZXNzIGZpbHRlciBwcm9wZXJ0eSBpcyBvbiB0aGUgQ1JUQyAoYXMg
b3Bwb3NlZCB0byB0aGUNCj4gY29ubmVjdG9yKSBzbyB0aGUgZXhwZWN0YXRpb24gaXMgdGhhdCBp
dCdzIHVzYWJsZSBvbiBhbGwgb3V0cHV0IHR5cGVzLiBTaW5jZSB0aGUNCj4gc2hhcnBuZXNzIGZp
bHRlciBpcyBub3cgZnVsbHkgaW50ZWdyYXRlZHMgaW50byB0aGUgbm9ybWFsIHBmaXQgY29kZQ0K
PiBpbnRlbF9wZml0X2NvbXB1dGVfY29uZmlnKCkgbXVzdCBiZSBjYWxsZWQgZnJvbSB0aGUgZW5j
b2Rlcg0KPiAuY29tcHV0ZV9jb25maWcoKSBvbiBhbGwgcmVsZXZhbnQgb3V0cHV0IHR5cGVzLg0K
PiANCj4gU2hhcnBuZXNzIGZpbHRlciBpcyBzdXBwb3J0ZWQgb24gTE5MKyBzbyBvbmx5IEhETUkg
YW5kIERQIFNTVC9NU1Qgb3V0cHV0cw0KPiBhcmUgYWN0dWFsbHkgcmVsZXZhbnQuIEkgYWxyZWFk
eSB0b29rIGNhcmUgb2YgSERNSSBhbmQgRFAgU1NULCBidXQgKGFzIHVzdWFsKQ0KPiBmb3Jnb3Qg
YWJvdXQgRFAgTVNULiBBZGQgdGhlIG1pc3NpbmcNCj4gaW50ZWxfcGZpdF9jb21wdXRlX2NvbmZp
ZygpIGNhbGwgdG8gbWFrZSB0aGUgc2hhcnBuZXNzIGZpbHRlciBvcGVyYXRpb25hbCBvbg0KPiBE
UCBNU1QgYXMgd2VsbC4NCj4gDQo+IENjOiBOZW1lc2EgR2FyZyA8bmVtZXNhLmdhcmdAaW50ZWwu
Y29tPg0KPiBGaXhlczogZDQ2ODZmMzRiYmViICgiZHJtL2k5MTUvcGZpdDogQ2FsbCBpbnRlbF9w
Zml0X2NvbXB1dGVfY29uZmlnKCkNCj4gdW5jb25kaXRpb25hbGx5IG9uIChlKURQL0hETUkiKQ0K
PiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBf
bXN0LmMgfCA0ICsrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykNCj4gDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5j
DQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYw0KPiBpbmRl
eCA5NGYyYzNhN2VjNTkuLjkxNTA3NjNjYTE0MyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jDQo+IEBAIC03MjMsNiArNzIzLDEwIEBAIHN0YXRp
YyBpbnQgbXN0X3N0cmVhbV9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QNCj4gaW50ZWxfZW5jb2RlciAq
ZW5jb2RlciwNCj4gIAlwaXBlX2NvbmZpZy0+b3V0cHV0X2Zvcm1hdCA9IElOVEVMX09VVFBVVF9G
T1JNQVRfUkdCOw0KPiAgCXBpcGVfY29uZmlnLT5oYXNfcGNoX2VuY29kZXIgPSBmYWxzZTsNCj4g
DQo+ICsJcmV0ID0gaW50ZWxfcGZpdF9jb21wdXRlX2NvbmZpZyhwaXBlX2NvbmZpZywgY29ubl9z
dGF0ZSk7DQo+ICsJaWYgKHJldCkNCj4gKwkJcmV0dXJuIHJldDsNCj4gKw0KDQpMR1RNLA0KUmV2
aWV3ZWQtYnk6IE5lbWVzYSBHYXJnIDxuZW1lc2EuZ2FyZ0BpbnRlbC5jb20+DQoNCj4gIAlmb3Jf
ZWFjaF9qb2luZXJfY2FuZGlkYXRlKGNvbm5lY3RvciwgYWRqdXN0ZWRfbW9kZSwNCj4gbnVtX2pv
aW5lZF9waXBlcykgew0KPiAgCQlpZiAobnVtX2pvaW5lZF9waXBlcyA+IDEpDQo+ICAJCQlwaXBl
X2NvbmZpZy0+am9pbmVyX3BpcGVzID0gR0VOTUFTSyhjcnRjLT5waXBlICsNCj4gbnVtX2pvaW5l
ZF9waXBlcyAtIDEsDQo+IC0tDQo+IDIuNTIuMA0KDQo=
