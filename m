Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4AFA1B507
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 12:51:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49F3A10E968;
	Fri, 24 Jan 2025 11:51:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lVEzQilF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA72A10E963;
 Fri, 24 Jan 2025 11:51:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737719493; x=1769255493;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=v8dHAXAXaO1Vo8tbCXQevJNu1n2LAnLjXZ7ZgQlpRsM=;
 b=lVEzQilF3RgsoeXBt869Ups7uKcoUH3ApBWRyUiA9Nk7dA1/hbRfZk7P
 PTy0GzUQQBqz+7QUwaf6LvPe1GyQx2cHRgeD7UetUeURrKDAZ1A2cGJaM
 /tB8jMeU2/bn2xWavIJn91eAH7USE0qvoMMXYrFlUvbHMtDYukfBodDeL
 Y3r9RZsVawXVyNV3XUMfCGf7cwAMkupd49LLjtCaOFwQUjS0Vv5p22+eg
 mJVHZuvxi6bmJMlA9kZFESDU/SnpmBFkWtEaYYhFLAUG3xdda+bwNCXOd
 6WtUO3kIe0dYU7lEQHCPVv2VMbHvYmoSLqPrpa2pAz0fPbNGXEEb2gh89 g==;
X-CSE-ConnectionGUID: idi746H0TAyWEl+Z+xcYfw==
X-CSE-MsgGUID: 2UajZJi1Q0uizOyiPstAHQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="41915663"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="41915663"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 03:51:33 -0800
X-CSE-ConnectionGUID: DIiBUD7VRHCb+zgXggGWmA==
X-CSE-MsgGUID: qUVr6vvzSfuuOK+GY6e/fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="138626003"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jan 2025 03:51:33 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 24 Jan 2025 03:51:31 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 24 Jan 2025 03:51:31 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 24 Jan 2025 03:51:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TF+EXIL5GLWmojw7S21tTyurXT0XPPpJasf0TgiMn2KlGGQd16YMZnSxgmLJqlu3HV9jcCHfHe0jBZLomzjgMs3X3KtXM2QyywQ/F+DEgXLJV25C6aFWSRR7uNPP6qQlFGs8MbGk7JDuCEE8biA+ZHHf1J5purUMAlqh66grSBhMNajkicH3bqJtC/nNWIqDGU7WKexa/gI459cFSxt8WpUYSZm7/gSIMJ1nerwF4zwWHywYpvUlcxw7PcjmwOiug64lL8prYLOq8eYfIqUg2MLZNY388tz3AHUq7zyt5sqBrTl7WbS2C7zOIvTHJJ8uNgaUp9H6J54DXOxBbsVcHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v8dHAXAXaO1Vo8tbCXQevJNu1n2LAnLjXZ7ZgQlpRsM=;
 b=qYHHcQlzdcYSaYKK9ssTpCe/xQE0Zr7UlH1aaQj7EBmdu1GnydbeMsiWFBRDqQ26zd5xUQ+NUyCbb9jE8oHIX5c1dmR5VfrxNQaS4adKjZdtUSWCIDPZVDZYM3VXVV1oRVpJYg21vaTKvgtUPjkBWwnAuo/FZzheQQmbs8B2pGxXWVAXK2PLtGai+X52qypCef0zo3H+Gl296YuPSC6p7R/Evmp0GRZQuisnlWQguljNUqwLRVULFawSiAPemP5GBgEx38mJpQQxOaRcP5LpjstYalJ1XYO6PwL56evqc+rSQnQpDBXBIRfdzn0ohQTj63HKxE/M+lXkLuD5uEVxgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH0PR11MB4917.namprd11.prod.outlook.com (2603:10b6:510:32::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8377.18; Fri, 24 Jan 2025 11:51:29 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8377.009; Fri, 24 Jan 2025
 11:51:29 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: Re: [PATCH v4 10/13] drm/i915/psr: Remove DSB_SKIP_WAITS_EN chicken
 bit
Thread-Topic: [PATCH v4 10/13] drm/i915/psr: Remove DSB_SKIP_WAITS_EN chicken
 bit
Thread-Index: AQHbbk66QgFrFpj1ekOeMG+KNKzLDLMlzpGAgAABbAA=
Date: Fri, 24 Jan 2025 11:51:29 +0000
Message-ID: <5444b862e2927be54e32fe31577b2ca32f3a3d1a.camel@intel.com>
References: <20250124105625.822459-1-jouni.hogander@intel.com>
 <20250124105625.822459-11-jouni.hogander@intel.com>
 <Z5N9jzJZaZktVYUk@intel.com>
In-Reply-To: <Z5N9jzJZaZktVYUk@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH0PR11MB4917:EE_
x-ms-office365-filtering-correlation-id: 2eb4d6a6-cffa-446c-a6e6-08dd3c6d7084
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|10070799003|376014|1800799024|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?YnE5TzBicVNLbzI3SkpCTy9RV1JQZWJWTXlLcGV5dk5yT1k0QnEyckl1R0pp?=
 =?utf-8?B?NVh0ZEdXejh5aklwaEVncVNvdXRoOGYyUzNpWEF1emJ0ZE9QYnAwUjU1LzBJ?=
 =?utf-8?B?QUcyMnhXUmp2RHNZNlZEd3VFSzZJQ3NlN2xvZ05hWFZVM29ldGpMWldxWitH?=
 =?utf-8?B?OGo1Qkk2R2wyenBPbHkweU9wdTRvOE1zeGNJZlhLRlRTUi9tdVNvWmVmb1Rr?=
 =?utf-8?B?TllKR1hyaTVXdHJOTkZqZ0lneFZ3ZkV0eG9wNlMrUjZsYlNlSmpVQzhjTFkz?=
 =?utf-8?B?UUV3bDVydjh1ZDZubVNHYWhvQkRTR2R4V1pwYkEybVNiS0xFNzlnSW1zTUVE?=
 =?utf-8?B?eW9KL1NoQStUL3VQcjcvdFUvMzV1Nk9yZFY2aCtNYnZYUUtKa3VnR3FrMmlY?=
 =?utf-8?B?NTlLTzEvYnZWeDVmVnJBQWtYNXgwUFliVTlsWTlIaVlKdm94dEtoQ2xyanBB?=
 =?utf-8?B?d1Rsa1Y1QXE5dEM1bm5VbGQ2SlBIU1VtTEdqM0hvQUFENkcwR3hCbUpNUnk3?=
 =?utf-8?B?bnl0OUhRNEh5ZDMwbGVhU3g4MURsVTh4NytDbXlWZlhVKy9Xa2tlQzB5NUov?=
 =?utf-8?B?VHBrWSs5MU5zeGZyeHlrNCtZRlhYNjNHZm1LQVZVVHJOVTludW9Jc1JDdnhp?=
 =?utf-8?B?d2Vyb3RoTTVKRVl1bW95ejMyUVAwbnh2c1ZUSk1ndEplUHVHMkJSK2RrRGpo?=
 =?utf-8?B?ZG5hMjFQTmJyOWJwbVpTYVEvWmhYK04xNlJxL1VJWXphSEJLVDZNU2EzWGFo?=
 =?utf-8?B?Y2tBdGcwRTR1SnEwZ2REbjBUbE53VFBXVE9EWElvMGV0ZXdxNFBLYmU5djMy?=
 =?utf-8?B?cWJOMnZZbkZOMFJDZ0FpNXdBaXRvK1pMVHBOVU8wZ1JtYnUwclZGUDdpWmV0?=
 =?utf-8?B?Mmlrb1BaYUwvMlFyMjRTdGdKWnpJUlRrK3g4d3RvVlBGUTNZVW1rdDNwczFV?=
 =?utf-8?B?ZGVVWlpZTzlhdGFxRzQwSktZYkFmcVNsd1hFdGs1NlZCVFhZdTllVjBjc0h1?=
 =?utf-8?B?MzloUnY3RzFaQzVEMUNuVmE3Z2FlazdnQTBPS2Rmc1ZQTHhtVVZmOTFRRDE4?=
 =?utf-8?B?bDZ1TS9CczhZMUw1UzgzNk56QmEzNFhiampvSFVZY3JzVGpyS25Kd3puSVdy?=
 =?utf-8?B?Vm13OTdPVmZIUXdkNFNGemZocWYwTHdQbVFkd0tvaDZUZVR2eTRhSEh0TUYy?=
 =?utf-8?B?cXdvWDB3eGZscDJLN3FuTEJ1TXZPTDd5aWlzS0xwVFdPaWd2VEpNNE9BUmp0?=
 =?utf-8?B?WEJjaVhmU2M4R1pGKzN5R3ZTdEs2VHZBaTR1RXM0anNEVkZ6azFpc0VXVEhw?=
 =?utf-8?B?V1NaUjJXRHlGa29teWd0ODNHZm9BUWhneGxFNVFyU2RHQnV0OHdqeTI5aHJF?=
 =?utf-8?B?WmQ3OEtVV20rU1NYc2NBUkVJZng2UktIQlhzVTVpeTc1a2RGT1l0VFBLWERs?=
 =?utf-8?B?ZFRNRmdlc1R4Nm15R2ZqT2NzdU0wS0NHYzJDM0U3bkNqOWhLZEZtcXNTV3Q3?=
 =?utf-8?B?WlpOL0kxZW9mbTkyRDdiUTVkVHpjQS9wL3hmb0N5WWhZYVVQN2t3bUdpQ3li?=
 =?utf-8?B?Nm53MVBhQ3JlbUtFM0YyNlFhUDVQTDFra1NFUFl5dFh2enVrVHdTZFQyWnlv?=
 =?utf-8?B?RHBROUlkRlh5Y0lISVoxRjBhOEJDUVM1Sm9LMkNwUUU1UVFBVG8wT1RmU1RI?=
 =?utf-8?B?aGxEbzloRjlsWDNRdlBTbU1HVW5sNnFWVnIvaUI5ckc0ejRNTTJaSlo4bndU?=
 =?utf-8?B?bnBLSEc5cm1pUG80RnJtOUdoUkRQUERHLzhxbHFiZCtqVkF1alRkMERzL29h?=
 =?utf-8?B?YWpPWlJ0VzFxd2wwelkzSW10cEt4WnpjNlFweEF2b1VUQnJlazZEWFExQURi?=
 =?utf-8?B?ajB0cVhiV1JnTmNTcVZXdW5HRDZtZmVESWhRRk5rTmo0UjNpbDVHcm5COVVi?=
 =?utf-8?Q?eWdMuYWW8yC4T9647zrWedJCQivncszD?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(376014)(1800799024)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OEdmYzZoL2pyWWhnUmFMNC9GajVmVlI4K0tDSmdSU1diOTkzWUNWYnNjekRC?=
 =?utf-8?B?UktRVDZxc0o5czEwUnRnYStCTFY1b2Q2UGRNZ3Y0MHM3RFVDR3dXMFM4Qnpv?=
 =?utf-8?B?SGpJVXQ4WUxLYURWTEFiMlIxeEtYbDY0Z3Vyb3FkWWZTaDM4TjAxakNERUxF?=
 =?utf-8?B?eXhtc3ArbGt0RG1Kblc5K3pHSFJXcW9jWGpHSnZGendoZjNrQ0lCRzNkMXN4?=
 =?utf-8?B?Y1l1RXJDcjFYbkJ3anlKeGFiVUc0TUJQTEE2dEt3MGozYnd0aEg5cUxZNmQ3?=
 =?utf-8?B?ZlgxK2dxSFNLMkl0d0ZmV0VwRTVCbkJXWm9wQjR5M3dRNXpVbmNvMUFQcUZy?=
 =?utf-8?B?YnM2cHV6MVZjbGNOa2o5TnlRV1NodnRVd2ZXR1IvRmhxT2hKN1I2MTR6eGZ6?=
 =?utf-8?B?SDdEVHY2VGJqaldObkNIRStqNHgvVThHUVY5Sm9seHJML1pWUUV0YThsQzVo?=
 =?utf-8?B?OEJNZ2ltc2h3b2R0YzltRDRQc2ZVa3F0UitCUTU1WitMLzBiRkVrQnBMZXBw?=
 =?utf-8?B?S3J4NmVBdXdkTVJrdjNSKzVlN1BhVWJHdHlBdWpOb3c5Tlo2SkwxWU1kdm1l?=
 =?utf-8?B?eGRDYjlydVBNcTZ2c3Z0bmlTb1QzVVBJNnV2emhSNmQyb2s2MmYwVm9hQkU3?=
 =?utf-8?B?d0FGR2k4R1dvR2EraHY2Mkp2Z3oxZW41TkQ2SUg4S0J6VnRTbXZMRTVDdC83?=
 =?utf-8?B?blhkcENXbG9DeURZbVFKNU94cUJGVzJneHJ6NktReUpDN2hsWUxEQTBreHZ4?=
 =?utf-8?B?T0JDWlBqNUlEREZvcE5qQXJQRlJPTWg5OVI0TXZzS1pFcy9MOE9aa2tKK1E2?=
 =?utf-8?B?dGJaanEyZlBJbnI4d1d2bDFJWkc0bVZjeXZoU2FsVnlFT1BYaGVuUHNYSHp2?=
 =?utf-8?B?cnJMVW1ySXBhazVPOE1pVVNtRWxCZzh3NmRRRFR4SnpwRUNjQTREcmY0NXlj?=
 =?utf-8?B?U3ZuOXd4V3VLKzRmaWpyVGdUNXV4RGl4Qys5U1lYTU5jUGlXNWdyODVEQUUv?=
 =?utf-8?B?UGpZQ1M3SHZsTmx6Zmp6UTZkbmh2S1JtNkZUMTlvTDFyamxiY2RhVkVEN0tu?=
 =?utf-8?B?V3RDTS9raWhsZGlTNmxjZjdPczVDR1RkdzVvLzVOSGs4WnFQQ3RtWWI4MjFT?=
 =?utf-8?B?MVJuaE1IaTRvMWc3MllLSWpOUXZadVkvSE1TQklqVDAwQmo4Y1JiVU93WkEy?=
 =?utf-8?B?aHdKQVZsYkJOMW54am5xRXVjSnRUKy9CRldzaThSRGNKVHRSUEprZ0tKOCta?=
 =?utf-8?B?R014dDlGaEJ4b213Y0tCUFRHUVFsNkovOXFoN1h2WjhvbE1iUUVSd2kyM3BV?=
 =?utf-8?B?am9SY2NSYmQxa0VNUXMxdEtoeWZkVnZZWHBkN0czTU9JVE16eS9zSEJBMUxs?=
 =?utf-8?B?WGNkU3RweFN6b0ZHQUpXaFN3SlljSWYwMFZMemZPR3UrUks5eGFFUm9aK1ND?=
 =?utf-8?B?T2QrSDB3bXhCeldpamVuZE96MFpKTDlNOEs3dkJDNDA3MmUrY21VdU56bkpR?=
 =?utf-8?B?dFo3YUxldHdIa3JOc0VmcXFqZVExYXVWNjFuR0pzWi9qSE9FSlhVZUpIOHhS?=
 =?utf-8?B?TWppTTZsTWR1dlBKNXowUWxuSStoVXVCbEE5My9EKzhDek9DK0tPOEpJbnE1?=
 =?utf-8?B?UUFlSVM0Nk4wakZyeE45eFd1aGEzUWNtRkY4VzNXYmVpdS9IN2FnSUxzYWVj?=
 =?utf-8?B?SDN1elY5R3NhWFJQZ3pWL1pSM25qK2hGYm9URUF6a2NvTmo3b3JWYnN2QWxL?=
 =?utf-8?B?RE9SbHR3TFZya0hKQjgybzN5RWJ2VStuRVkzNmdaNVdZSEZubXRCckRwcU9X?=
 =?utf-8?B?TS95S2JQOENjUTdaVTNnL1hXZWt0M1ZyN0dWN3RjN2pqSmpGM2F6VUFqcy9F?=
 =?utf-8?B?UjZMakdHcytRRCtybHBTTGRBUTZZVkFvYnlQRkFtb2NLaVlLZkdSRytxd3o1?=
 =?utf-8?B?WFZibUNxYmdQajM0WlpQVjVKTnVSZFhJdytUdWRGZnQvR29Ea1dyVjJwVWoz?=
 =?utf-8?B?MUhtMzZQcEVDR1R0REdQbjR5bmdoRGFyMzZtRE9uN1hyUnJxVmY1elBFMnpI?=
 =?utf-8?B?clpDNkdySndGUHhYYmVMQlk0bGRaUDFjaWk0WFA5TmgvVXkzYUVHbW9FcDFw?=
 =?utf-8?B?MjVoTjJoVCtxMEdOTzZzTlIwa01ONEIwbWRXY3R4TS9rRDBNVjBVZmwzSUo3?=
 =?utf-8?B?QVhlOVNZdkl4NEZtV29hSDB3TnovNW04QWVGcmpuTEltV0cxdkFVMEE2Qkpy?=
 =?utf-8?B?MWhCV0V0WEM3K3lSbjVZN2dkUXpnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9EC6E12A5EF75C4D891FF6965AA21F8E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2eb4d6a6-cffa-446c-a6e6-08dd3c6d7084
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jan 2025 11:51:29.2783 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: elovi40Y07Cx1QX66h5XEtlLrmxRCDJR3AIrAheK2Jkr3j9j5CBWEKfTl1+Rbfc102flPUQH7wyXcWMONtOxrJWtLEyj1RxBBF6NHhhH1mQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4917
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

T24gRnJpLCAyMDI1LTAxLTI0IGF0IDEzOjQ2ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIEZyaSwgSmFuIDI0LCAyMDI1IGF0IDEyOjU2OjIxUE0gKzAyMDAsIEpvdW5pIEjDtmdh
bmRlciB3cm90ZToNCj4gPiBXZSBoYXZlIGRpZmZlcmVudCBhcHByb2FjaCBvbiBob3cgZmxpcCBp
cyBjb25zaWRlcmVkIGJlaW5nDQo+ID4gY29tcGxldGUuIFdlIGFyZQ0KPiA+IHdhaXRpbmcgZm9y
IHZibGFuayBvbiBEU0IgYW5kIGdlbmVyYXRlIGludGVycnVwdCB3aGVuIGl0IGhhcHBlbnMNCj4g
PiBhbmQgdGhpcw0KPiA+IGludGVycnVwdCBpcyBjb25zaWRlcmVkIGFzIGluZGljYXRpb24gb2Yg
Y29tcGxldGlvbiAtPiB3ZQ0KPiA+IGRlZmluaXRlbHkgZG8gbm90DQo+ID4gd2FudCB0byBza2lw
IHZibGFuayB3YWl0Lg0KPiA+IA0KPiA+IEFsc28gbm90IHNraXBwaW5nIHNjYW5saW5lIHdhaXQg
c2hvdWxkbid0IGNhdXNlIGFueSBwcm9ibGVtcyBpZiB3ZQ0KPiA+IGFyZSBpbg0KPiA+IERFRVBf
U0xFRVAgUElQRURTTCByZWdpc3RlciBpcyByZXR1cm5pbmcgMCAtPiBldmFzaW9uIGRvZXMgbm90
aGluZw0KPiA+IGFuZCBpZg0KPiA+IHdlIGFyZSBub3QgaW4gREVFUF9TTEVFUCBldmFzaW9uIHdv
cmtzIHNhbWUgd2F5IGFzIHdpdGhvdXQgUFNSLg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IEpv
dW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYyB8IDUgKystLS0NCj4gPiDC
oDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+ID4gDQo+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMN
Cj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gPiBpbmRl
eCA4OWQzNDk2YmNiZGJkLi5iYjc3ZGVkOGJmNzI2IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+ID4gQEAgLTE2OCwxMyArMTY4LDEyIEBAIHN0
YXRpYyB1MzIgZHNiX2NoaWNrZW4oc3RydWN0DQo+ID4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0
ZSwNCj4gPiDCoAkJwqDCoMKgwqDCoMKgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQ0KPiA+IMKg
ew0KPiANCj4gSUlSQyBic3BlYyBzdWdnZXN0cyB0aGF0IHdlIHNob3VsZCBhbHdheXMgc2V0IERT
Ql9TS0lQX1dBSVRTX0VOLA0KPiBzbyB3ZSBzaG91bGQgcHJvYmFibHkgaGF2ZSBhIGNvbW1lbnQg
aGVyZSBleHBsYWluaW5nIG91ciByZWFzb24NCj4gZm9yIG9taXR0aW5nIGl0LiBPdGhlcndpc2Ug
SSBmZWFyIHRoYXQgc29tZW9uZSBpcyBnb2luZyB0byBiZQ0KPiBibGluZGx5IHJlYWRpbmcgdGhl
IHNwZWMgYW5kIHRoZW4gdHJ5IHRvIGFkZCB0aGUgYml0IGJhY2suDQoNCk9rLCBJIHdpbGwgYWRk
IHRoYXQuDQoNCkJSLA0KDQpKb3VpIEjDtmdhbmRlcg0KPiANCj4gPiDCoAlpZiAocHJlX2NvbW1p
dF9pc192cnJfYWN0aXZlKHN0YXRlLCBjcnRjKSkNCj4gPiAtCQlyZXR1cm4gRFNCX1NLSVBfV0FJ
VFNfRU4gfA0KPiA+IC0JCQlEU0JfQ1RSTF9XQUlUX1NBRkVfV0lORE9XIHwNCj4gPiArCQlyZXR1
cm4gRFNCX0NUUkxfV0FJVF9TQUZFX1dJTkRPVyB8DQo+ID4gwqAJCQlEU0JfQ1RSTF9OT19XQUlU
X1ZCTEFOSyB8DQo+ID4gwqAJCQlEU0JfSU5TVF9XQUlUX1NBRkVfV0lORE9XIHwNCj4gPiDCoAkJ
CURTQl9JTlNUX05PX1dBSVRfVkJMQU5LOw0KPiA+IMKgCWVsc2UNCj4gPiAtCQlyZXR1cm4gRFNC
X1NLSVBfV0FJVFNfRU47DQo+ID4gKwkJcmV0dXJuIDA7DQo+ID4gwqB9DQo+ID4gwqANCj4gPiDC
oHN0YXRpYyBib29sIGFzc2VydF9kc2JfaGFzX3Jvb20oc3RydWN0IGludGVsX2RzYiAqZHNiKQ0K
PiA+IC0tIA0KPiA+IDIuNDMuMA0KPiANCg0K
