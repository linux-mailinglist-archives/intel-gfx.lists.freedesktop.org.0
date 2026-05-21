Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8C2TNZA+D2pNIQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 19:19:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21BE05AA119
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 19:19:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B82210E4C8;
	Thu, 21 May 2026 17:19:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KRvm/jPq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECA9510E4BD;
 Thu, 21 May 2026 17:19:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779383948; x=1810919948;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Y6GlH+KstmlKYEDX6yr74uRIHErUds9q763a1pKuYM0=;
 b=KRvm/jPquej+hf0cH+cZ4r4ng0ndwwJNsfllFjXj5cqEhxTbsVITvHzS
 rCMzFttehzG91DKeXjwBztSZH1GkIx8jw6Hsr2Uu1JEMSdII336O5eiY1
 MmCS/vM/DqWwleALQYBGSCxAwDbKZVkEq3BrjPM1w4P8JoEBdOJTrV552
 pM8dXQqbsqUXwRyCSGV9ETdpkBQ6otD7o4PKqt1TNM5U/xvxhN/f4+zZQ
 QiQHhTQgtlcRPOWxSwpzLDqkkEpCb8NQ0u5bPlTUMX2e8WjYICLiIv0eK
 2dMDuDU4kzesMtFK5EWXGZq6QKyTYUiYAII8CAbBNXwm3dmRwzW1qRT4N A==;
X-CSE-ConnectionGUID: boCEX3yPRAqnjRjaHiZcSw==
X-CSE-MsgGUID: LWkufdHKSf6m/wPGvrXNuA==
X-IronPort-AV: E=McAfee;i="6800,10657,11793"; a="105770949"
X-IronPort-AV: E=Sophos;i="6.24,160,1774335600"; d="scan'208";a="105770949"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 10:19:07 -0700
X-CSE-ConnectionGUID: R5ckaYkSTwWfPy/h8/F85Q==
X-CSE-MsgGUID: RIrpl95qQmuhpSA7bR0SCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,160,1774335600"; d="scan'208";a="239727507"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 10:19:07 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 21 May 2026 10:19:06 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 21 May 2026 10:19:06 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.2) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 21 May 2026 10:19:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FQAL0fYvw6CdYMiSAiBKQQyLgjkhME7ZghOnlz7rZw8kMO1Gl2i9pOKwu+sBsfYQtgdP8j20uk/Zplr4V3KGX4HXoaDfu0uexjeR8YKqe6JbaBbHG3Df+9UAd4Jb/i2mUhNqYTugmR1pOx6xuBZlFFGQ4eeSxYMw3EEjwlU5jReYUqx0wmXf7eeYUCdLdaZ7ybg2lK0asjwN2meduK3Xh0DmLzyu9bZk+bL3Azb67f6RP6E1+mmOYDUbJ48uRrNk/5ulG+Z4M3mFQJ7X1dO2j62FzXKjvMBVg51h4gubwQeK87c7PMETKe8BbFcb0TNLlmGIKX3adel4BaGDC9qBLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y6GlH+KstmlKYEDX6yr74uRIHErUds9q763a1pKuYM0=;
 b=BPi8T+KsfWLwdVzCIoIC8A+jMVBw5TlurDSp2yYiBwyaCW89MCh5bNmaBXc+42mUe4XHX685CHEht6WlTf2zK5SgWVNh7mGIpsvqr+gSCoGN1M7zFxaBL9PNz2//WYnnGIxzEoGJycRFYaWXQ3Feck6zb+hoq4+LT+u06awYchuKUpHZEoVw/g+Q4Xd0veBgWIFEoiZhb1B9KeIit6mYNqiJ1MOhYmYomzKwgUELBXp6YmuXymLQm7XhpY2cAtYBml0KX6LHWBBZ0i745+3O8GGSOFLgDbLMhXuS3xAo64ipdLsmBFQY+u/91WgBTky4/CcTHZAzG4LJNB8FAFNtjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 CY8PR11MB7338.namprd11.prod.outlook.com (2603:10b6:930:9e::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.48.14; Thu, 21 May 2026 17:19:02 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.21.0048.016; Thu, 21 May 2026
 17:19:01 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>, "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v6 02/16] drm/i915/cmtg: Set CMTG clock select
Thread-Topic: [PATCH v6 02/16] drm/i915/cmtg: Set CMTG clock select
Thread-Index: AQHc4vtnH3z6gEyntkqGGQerqkjKIrYYMl2AgAAwKvCAABWrgIAARqSg
Date: Thu, 21 May 2026 17:19:01 +0000
Message-ID: <DS0PR11MB8049DCD20ECAF219A6CB59A4F90E2@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260513163857.1541888-1-animesh.manna@intel.com>
 <20260513163857.1541888-3-animesh.manna@intel.com>
 <79f55f66-805f-473c-b7f6-f3e9b1fead37@intel.com>
 <DS0PR11MB8049D2B45198589AD80248F1F90E2@DS0PR11MB8049.namprd11.prod.outlook.com>
 <916d3184-7f00-4a90-85e8-43cb9a8b3466@intel.com>
In-Reply-To: <916d3184-7f00-4a90-85e8-43cb9a8b3466@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|CY8PR11MB7338:EE_
x-ms-office365-filtering-correlation-id: 587ec52b-d04e-464b-200d-08deb75d0d67
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|4143699003|56012099003|18002099003|22082099003|11063799006|6133799003;
x-microsoft-antispam-message-info: YJXmfsmTwF9K9yrJkcQG55v3hbOWLJ2PSeggpihLz/xSPT6L6h2u1dFUEqFGeIltuo3AHIhEsbPzCXS0DltWF3HWAo1oTKGWUU1+NyMzeOEjPuA1R33ZXDyfWd6PINm/mUqBYXe9KoqUBl6AhI0bzUCRWnElxu2yn76Hjxwfkq/fAH1SU/RhCYQ4Itoyfof5o+O4k0CNCm8aQ9Mnj4kK0dcfR8oanAXQnhY10zBBYMaznG5Mz4OHS7kNoG7o6EXTvXVq/Zebz4QavwRFfl9YpHp+vNnTElJxfvNi4K4MjcIgnZNY5ZfOAGEPELPkoi6oUkAucLRcN2e5ZZvO/2RtoUail8x/j/6yprE0gUXBPGTzCgjXEE5nFd/q+DV3Dp4OT3D9bKPoEz+mfOXoH9DxY8Kh9sIIsQknhI3sN+VUzkRyffPslQ2owaYcOuLHnKGa7XIzK0YzVxsP4bhEXO0QuXGpqdIN1Gn50/LbzxM9u6CRyKgkhq1qGEpsnQYXYgBD08Z9QVLIK/bgonUbmHq9WnX8Z32TXNB67jwq0xxjUKGXRUky7BfSerr7BgilHHMsmaW/QrQYcqhZ/2jXKc6MCTnTWu3LCGoZTdA7MtKDRU/BANshY28ttPC1/ChlLy0Tq26e/uvXX87VGKdBJnUS3kxrpxDeQ7+QXDVU2x4KW2C4KgdpFU09WC0ybvNLRK8QWkygRrGelQggjPB/RkWrpsL/NaKpsSCBwE3x7dJ/3A/lVVHCqgTjqeL9t1xG85R2
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(4143699003)(56012099003)(18002099003)(22082099003)(11063799006)(6133799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YUJmRHhha0R5WEk2bmVLNVJUbmJ1bm5jYU9aOEZyMDBCMzR1S1diZnc3YlVS?=
 =?utf-8?B?eDhlTXJVdWRzOEwxSDNxK0RKcFV5VnV5blRJd2swVHI2dkFTLzB0RTFJV0Ur?=
 =?utf-8?B?UzBSNjZxbHMxRHFsbjhlZmpTZ29uZEFOZlVSa1E0VUdSbXFhTUhhdlRud0hk?=
 =?utf-8?B?Q21sdytDRENqT1hYNFVYcVNUbkphRmpLS2VpMEFsTFhLMG40SmFqdE5hRjRz?=
 =?utf-8?B?WnJjbTFVVmpoM3BtNlFyd0dSY3p6V2o1dDhYVm0vdmRSRnFNeTVzRmlacDk5?=
 =?utf-8?B?TkJDYlBianpBV1pRYVJKNEl6OGpxMWxSR3lucGxYOWtxMXpaNng5NTQ4WnVB?=
 =?utf-8?B?ODByaGdvUzJOZnZsYlgxVGRpeEkzSHJqMnZhRUxzemFCaWgrUVFFaGxRM1I4?=
 =?utf-8?B?S2dlcGhIS092alRYNEVyaHVnV1crVTVRcHl5ZktyOVBhU1JZbmI2c3VxMXRJ?=
 =?utf-8?B?M0RtOWdWRURuRmtqOU9VV0RPRlNpVUxWallscURYeTB6TG1INEhCd0lyTmoy?=
 =?utf-8?B?Z0lzV015QXBTY0JjMDFjREcxZG9yaFhPQm01RnVsZERiWEN6cGVsRmdLSGVN?=
 =?utf-8?B?UHRTbGRXaUJlQVVtbFQ0WTU1UktKR1NMa0JxZGxoVys3ZlVRQ3ZTa3ZXRDlu?=
 =?utf-8?B?dWJpajBCZXkrelJ2Z1dhS3V4QXFVNnJka1lKbSs2ZXo2NFk4V1JpZThia3VB?=
 =?utf-8?B?WVlLc2tpM3ljMjBYRHIzVnA0R2VQdHRLTDh1OVZBZnEwRTRqY3c0Wm1zS1By?=
 =?utf-8?B?MkprcUVEZ0RERlI1MFB6OTBIZVM3S1RpdzhRVE1BajlzZzRpMHJveWdSZ3Uz?=
 =?utf-8?B?VHdwRUJ6U3ZyNDVXOG1GRUExbGtmQm5JdUUwaHBvN3JSMGQ0VG9jRzRiQW9v?=
 =?utf-8?B?VjBscDRkbHJDMGNwMUd5NVNncElvTjhyNklqUWU3eHpNUWpMRlUrbk5sQ1RJ?=
 =?utf-8?B?MEo0bGJxQmJEM3JHaGJoZGt1R0o1Rm4rait4R1ZzQVJ1cndkUjk0a3Q5NVlm?=
 =?utf-8?B?NytnUWRmWThNeXNGMjJPSUtLc2cxVExtdnlDM2NobEpmbFN3UDBBMS9udzZN?=
 =?utf-8?B?UEIraW5SWVJTL1B5MDRMdVVmT2Z4OXl3QnNpSktmYXR5VEpWYkY2SDhvcU9r?=
 =?utf-8?B?TmY4S1FBeW1wbFNDbDFvS2Erbm52aFBEcFluL2pQMjlWVXlraFBWd3hDRXN3?=
 =?utf-8?B?VTVzc0hjUWlIR1RiZ3RHazZBdWF1bU5UM2lML2dOUVNjQ2ZucUlQd3Zwamg5?=
 =?utf-8?B?SHliOGlUV0ZkUUFRVlJGU0pVakpTMEkvR2ZGb2h2MUtsTEFZU3RZNUhXcHpk?=
 =?utf-8?B?NTFPQkpyUllNREI1K3lQSFF4SFA0ZXFvZ3l2bFoxMjVlZXdzVTdJZlBxTDY1?=
 =?utf-8?B?NmVvUmdsMURmcHlLQmxSb0kxcGNGNkFsNGhHYTNSSDlIbmFXaHFHNEYzNUt3?=
 =?utf-8?B?am1mUXQyYU5Ebk9XcmNIN0tMN1ZRVHNmaS8wNXVuR3NNSkV3eHc3VXFqbXRQ?=
 =?utf-8?B?UjA5bG1RaVFpOUZnYlVYbGlGZFh2d1J3ZE1UcTlhUlVsSWgzUktFc1dpNEpk?=
 =?utf-8?B?cWV5UmtnSzhuNEdoUW5CbG1nNXhWUzZSS1RySEc3WFpFVWVUS2NZWWZ6ajIz?=
 =?utf-8?B?QmFTd1B2d2ZINkd5UGpmaEdjb0h4aThxa0xkL3hKZWNCdE1kMUo4emNtb0d1?=
 =?utf-8?B?a3RpRW1SeUFtNXFKN1JOOVBBRU50YXNxT0d5Z3kyQnZvTGFuZDcwMlgwckFN?=
 =?utf-8?B?L1NhV0gwcFhaRzNpdzFPTDZydnpncW9UNnZvN3VzTThTZ0VKYVo2L0JNQ2Zn?=
 =?utf-8?B?amZzRXF6UTVPYXJVT0w3SW1YWTJ0TEdhTW40ZmhDR0NBQXFmRk4rMFJBbkVa?=
 =?utf-8?B?WjRxVHpZMURhTmVQR2VDbkpRelFMdk5yRkVOMFJjQThYbnhpejJPR2xTdi9B?=
 =?utf-8?B?UjI1NGIrc3FCam9Vdk9ERjlqS2RJYzNXQTB5Vk1SUFVPWHRVRFJaU2dNMVRu?=
 =?utf-8?B?TmlQTCtTMVIxQTMzTjlBOGhOWDUrSnFqWlRsMWk0QXBlNW5NdWlkaUplQUFC?=
 =?utf-8?B?ZC9qcE52Z3AwcHhKRWJ2YmJRRFlJc1BUaW5uWVlnTXhQOHQ1RjBtMWdMNDNm?=
 =?utf-8?B?MHBiUEFMMG5JNXFKR3RkS2lkbzFIcEFwTnVXRWJkQjVRU2JWMnYvdS9NSDFr?=
 =?utf-8?B?cHpBaVllQS9NTFZ3R0ZuZTg5bHNGbWltU0poTUhicTBPL09kLzNUbFlKYjFI?=
 =?utf-8?B?ZzhRajJhSmp2aXVDMFA4eDNqV2VPT0xQWVBZbnVaZ0VUSHZTVEVWMjJKU2l1?=
 =?utf-8?B?NllkdjI2WFFQdE4rOVJCYkZOSmJCdHkvNXJVaXU5ZFVTSDhrVmhFQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: fLlisha3jfMD8UqXnHyXVMQVwyFMCNY0MJqNEFy9+aREkSVMtazQdKuO9uryuPlzJKGDiXp1s8i4BZfacYqwhub24Zj0o+6yPpVtPRKcU2Lm4TT03mcXnF+bWgHG9PRhoUw5pe5m/6boBm8TSx8A6YcjU0F4oWo850Ee67VTiYNxj87XvuGIhOSYu71jSD5wwAnXYifmN08Pxk+MJCqGZtPXLh5iTmTM1AkV5HOTYO2ZYYDZ6BXanj3gJbKj5okDXTocw6+3ytd2agOR3Om0WvrCFnMP1hp8nuH2dDJ7c9U6vNWrgP/KnWi4pA7lMdMpcjxULxb5U5CrtTW7J6NvRw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 587ec52b-d04e-464b-200d-08deb75d0d67
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2026 17:19:01.7571 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T8QZ7f7CMKvK9MH7geQ74htE9/fQo+g8AzJKlMgfwDtAvUP0xoWbY/zgnRdpnPICUQ0+jXos1KlsvCWQJaT8ZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7338
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
X-Spamd-Result: default: False [0.79 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:email];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 21BE05AA119
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogRGliaW4gTW9vbGFrYWRh
biBTdWJyYWhtYW5pYW4NCj4gPGRpYmluLm1vb2xha2FkYW4uc3VicmFobWFuaWFuQGludGVsLmNv
bT4NCj4gU2VudDogVGh1cnNkYXksIE1heSAyMSwgMjAyNiA2OjExIFBNDQo+IFRvOiBNYW5uYSwg
QW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBpbnRlbC0NCj4gZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBTaGFu
a2FyLCBVbWEgPHVtYS5zaGFua2FyQGludGVsLmNvbT47IHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tOw0KPiBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gU3ViamVj
dDogUmU6IFtQQVRDSCB2NiAwMi8xNl0gZHJtL2k5MTUvY210ZzogU2V0IENNVEcgY2xvY2sgc2Vs
ZWN0DQo+IA0KPiANCj4gT24gMjEtMDUtMjAyNiAxNzo0MSwgTWFubmEsIEFuaW1lc2ggd3JvdGU6
DQo+ID4NCj4gPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPj4gRnJvbTogRGliaW4g
TW9vbGFrYWRhbiBTdWJyYWhtYW5pYW4NCj4gPj4gPGRpYmluLm1vb2xha2FkYW4uc3VicmFobWFu
aWFuQGludGVsLmNvbT4NCj4gPj4gU2VudDogVGh1cnNkYXksIE1heSAyMSwgMjAyNiAyOjAxIFBN
DQo+ID4+IFRvOiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBpbnRl
bC0NCj4gPj4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnDQo+ID4+IENjOiBTaGFua2FyLCBVbWEgPHVtYS5zaGFua2FyQGludGVsLmNvbT47
DQo+ID4+IHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tOyBOaWt1bGEsIEphbmkgPGphbmku
bmlrdWxhQGludGVsLmNvbT4NCj4gPj4gU3ViamVjdDogUmU6IFtQQVRDSCB2NiAwMi8xNl0gZHJt
L2k5MTUvY210ZzogU2V0IENNVEcgY2xvY2sgc2VsZWN0DQo+ID4+DQo+ID4+DQo+ID4+IE9uIDEz
LTA1LTIwMjYgMjI6MDgsIEFuaW1lc2ggTWFubmEgd3JvdGU6DQo+ID4+PiBQcm9ncmFtIHRoZSBD
TVRHIENsb2NrIFNlbGVjdCByZWdpc3RlciBiYXNlZCBvbiB0aGUgdHJhbnNjb2RlciB1c2VkLg0K
PiA+Pj4NCj4gPj4+IHYyOg0KPiA+Pj4gLSBDb3JyZWN0IG1hc2sgZm9yIFBIWSBCLiBbSmFuaV0N
Cj4gPj4+IC0gVXNlIFJFR19GSUVMRF9QUkVQKCkgZm9yIGVuYWJsZSB2YWx1ZS4gW0RpYmluXQ0K
PiA+Pj4gLSBFeHRlbmQgY210ZyBjbG9jayBzZWxlY3QgZm9yIHhlM3BscGQuIFtEaWJpbl0NCj4g
Pj4+DQo+ID4+PiB2MzoNCj4gPj4+IC0gQ01URyBzdXBwb3J0IHJlbW92ZWQgZm9yIG9sZCBwbGF0
Zm9ybS4NCj4gPj4+DQo+ID4+PiB2NDoNCj4gPj4+IC0gT3B0aW1pemUgZnVydGhlciB3aXRoIGVs
c2UtaWYuIFtVbWFdDQo+ID4+PiAtIENvcnJlY3QgQ01UR19DTEtfU0VMX0JfTUFTSy4gW1VtYV0N
Cj4gPj4+DQo+ID4+PiBTaWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5h
QGludGVsLmNvbT4NCj4gPj4+IFNpZ25lZC1vZmYtYnk6IERpYmluIE1vb2xha2FkYW4gU3VicmFo
bWFuaWFuDQo+ID4+PiA8ZGliaW4ubW9vbGFrYWRhbi5zdWJyYWhtYW5pYW5AaW50ZWwuY29tPg0K
PiA+Pj4gLS0tDQo+ID4+PiAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nt
dGcuYyAgICAgfCAyMg0KPiArKysrKysrKysrKysrKysrKysrDQo+ID4+PiAgICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NtdGcuaCAgICAgfCAgMSArDQo+ID4+PiAgICAuLi4v
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY210Z19yZWdzLmggICAgfCAgMiArKw0KPiA+Pj4g
ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMgIHwgIDUgKysr
KysNCj4gPj4+ICAgIDQgZmlsZXMgY2hhbmdlZCwgMzAgaW5zZXJ0aW9ucygrKQ0KPiA+Pj4NCj4g
Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NtdGcu
Yw0KPiA+Pj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NtdGcuYw0KPiA+
Pj4gaW5kZXggZGMwMzliZWE0NTJjLi5jZmU1OWM2MDQ1MDYgMTAwNjQ0DQo+ID4+PiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NtdGcuYw0KPiA+Pj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jbXRnLmMNCj4gPj4+IEBAIC0xOTgsMyAr
MTk4LDI1IEBAIGJvb2wgaW50ZWxfY210Z19pc19hbGxvd2VkKGNvbnN0IHN0cnVjdA0KPiA+Pj4g
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gPj4+DQo+ID4+PiAgICAJcmV0dXJuIGZh
bHNlOw0KPiA+Pj4gICAgfQ0KPiA+Pj4gKw0KPiA+Pj4gK3ZvaWQgaW50ZWxfY210Z19zZXRfY2xr
X3NlbGVjdChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+Pj4gKypjcnRjX3N0YXRl
KSB7DQo+ID4+PiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlz
cGxheShjcnRjX3N0YXRlKTsNCj4gPj4+ICsJZW51bSB0cmFuc2NvZGVyIGNwdV90cmFuc2NvZGVy
ID0gY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXI7DQo+ID4+PiArCXUzMiBjbGtfc2VsX2NsciA9
IDA7DQo+ID4+PiArCXUzMiBjbGtfc2VsX3NldCA9IDA7DQo+ID4+PiArDQo+ID4+PiArCWlmICgh
aW50ZWxfY210Z19pc19hbGxvd2VkKGNydGNfc3RhdGUpKQ0KPiA+Pj4gKwkJcmV0dXJuOw0KPiA+
Pj4gKw0KPiA+Pj4gKwlpZiAoY3B1X3RyYW5zY29kZXIgPT0gVFJBTlNDT0RFUl9BKSB7DQo+ID4+
PiArCQljbGtfc2VsX2NsciA9IENNVEdfQ0xLX1NFTF9BX01BU0s7DQo+ID4+PiArCQljbGtfc2Vs
X3NldCA9IENNVEdfQ0xLX1NFTEVDVF9QSFlBX0VOQUJMRTsNCj4gPj4+ICsJfSBlbHNlIGlmIChj
cHVfdHJhbnNjb2RlciA9PSBUUkFOU0NPREVSX0IpIHsNCj4gPj4+ICsJCWNsa19zZWxfY2xyID0g
Q01UR19DTEtfU0VMX0JfTUFTSzsNCj4gPj4+ICsJCWNsa19zZWxfc2V0ID0gQ01UR19DTEtfU0VM
RUNUX1BIWUJfRU5BQkxFOw0KPiA+Pj4gKwl9DQo+ID4+PiArDQo+ID4+PiArCWlmIChjbGtfc2Vs
X3NldCkNCj4gPj4+ICsJCWludGVsX2RlX3JtdyhkaXNwbGF5LCBDTVRHX0NMS19TRUwsIGNsa19z
ZWxfY2xyLA0KPiA+PiBjbGtfc2VsX3NldCk7IH0NCj4gPj4NCj4gPj4gVGhpcyBjb21tZW50IGFw
cGxpZXMgdG8gdGhlIGVudGlyZSBDTVRHIHByb2dyYW1taW5nIHNlcmllcywgYnV0DQo+ID4+IGFk
ZGluZyBpdCBoZXJlIHNpbmNlIHRoaXMgaXMgdGhlIGZpcnN0IFRSQU5TQ09ERVIvUEhZIHByb2dy
YW1taW5nIHN0ZXAuDQo+ID4+DQo+ID4+IFRoZXJlIGFyZSBJR1QgY2FzZXMgd2hlcmUgVFJBTlND
T0RFUl9CIGlzIG5vdCBtYXBwZWQgdG8gUE9SVF9CLCBzbw0KPiA+PiB0aGUNCj4gPj4gY3VycmVu
dHxlbHNlIGlmfCBmbG93IGNhbiBmYWlsIGJlY2F1c2UgUEhZIEIgbWF5IG5vdCBiZSBlbmFibGVk
Lg0KPiA+Pg0KPiA+PiBQbGVhc2UgY2hlY2sgd2hldGhlciB0aGUgcHJvZ3JhbW1pbmcgc2VxdWVu
Y2UgaGVyZSBpcyBjb3JyZWN0IGFuZA0KPiA+PiB3aGF0IFRSQU5TQ09ERVIvUE9SVC9QSFkgY29t
YmluYXRpb25zIGFyZSBzdXBwb3J0ZWQgZm9yIENNVEcuDQo+ID4gV2Ugc2hvdWxkIHJlc3RyaWN0
IENNVEcgdXNhZ2UgaWYgcG9ydCBhbmQgdHJhbnNjb2RlciBpcyBub3QgbWF0Y2hpbmcuIFRoaXMN
Cj4gaXMgbGltaXRhdGlvbiBmcm9tIGhhcmR3YXJlLg0KPiA+IFRoZSBEYzNjbyBzaG91bGQgbm90
IGJlIGFsbG93ZWQgaWYgdHJhbnNjb2RlciBhbmQgcG9ydCBpcyBub3QgbWF0Y2hpbmcuDQo+ID4g
Q01URyB3aWxsIHJlbHkgb24gdGFyZ2V0X2RjX3N0YXRlIHdoaWNoIHdpbGwgYmUgc2V0IGlmIGRj
M2NvIGlzIGFsbG93ZWQuDQo+IA0KPiBUUkFOU0NPREVSX0EsUE9SVF9CIGNvbmZpZ3VyYXRpb24g
aXMgdmFsaWQgZm9yIERDM0NPLg0KPiANCj4gYXMgcGVyIEJzcGVjIERDM0NPIGlzIHN1cHBvcnRl
ZCBpbiBiZWxvdyBjb21iaW5hdGlvbnMuDQo+IFRyYW5zY29kZXIgQSB0byBwb3J0IEEgb3IgQg0K
PiBUcmFuc2NvZGVyIEIgdG8gcG9ydCBBIG9yIEINCg0KRGMzY28gaXMgIk9ubHkgc3VwcG9ydGVk
IHdpdGggQ01URy4iIFNvLCBpZiBDTVRHIGNhbm5vdCBiZSBlbmFibGVkLCBkYzNjbyBhbHNvIHdp
bGwgZm9sbG93IHRoZSBzYW1lLg0KDQpSZWdhcmRzLA0KQW5pbWVzaA0KPiANCj4gPg0KPiA+IFJl
Z2FyZHMsDQo+ID4gQW5pbWVzaA0KPiA+DQo+ID4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jbXRnLmgNCj4gPj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jbXRnLmgNCj4gPj4+IGluZGV4IGVkNTQwNTgxNzM4Zi4uODcwOTJj
ZTZkNjdiIDEwMDY0NA0KPiA+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jbXRnLmgNCj4gPj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfY210Zy5oDQo+ID4+PiBAQCAtMTEsNiArMTEsNyBAQA0KPiA+Pj4gICAgc3RydWN0IGludGVs
X2Rpc3BsYXk7DQo+ID4+PiAgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZTsNCj4gPj4+DQo+ID4+
PiArdm9pZCBpbnRlbF9jbXRnX3NldF9jbGtfc2VsZWN0KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlDQo+ID4+PiArKmNydGNfc3RhdGUpOw0KPiA+Pj4gICAgdm9pZCBpbnRlbF9jbXRnX3Nh
bml0aXplKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KTsNCj4gPj4+ICAgIGJvb2wgaW50
ZWxfY210Z19pc19hbGxvd2VkKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ID4+PiAq
Y3J0Y19zdGF0ZSk7DQo+ID4+Pg0KPiA+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY210Z19yZWdzLmgNCj4gPj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jbXRnX3JlZ3MuaA0KPiA+Pj4gaW5kZXggOTQ1YTM1NTc4Mjg0Li40
YTgwYjg4ZDg4ZmQgMTAwNjQ0DQo+ID4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2NtdGdfcmVncy5oDQo+ID4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2NtdGdfcmVncy5oDQo+ID4+PiBAQCAtMTAsOCArMTAsMTAgQEANCj4gPj4+
DQo+ID4+PiAgICAjZGVmaW5lIENNVEdfQ0xLX1NFTAkJCV9NTUlPKDB4NDYxNjApDQo+ID4+PiAg
ICAjZGVmaW5lIENNVEdfQ0xLX1NFTF9BX01BU0sJCVJFR19HRU5NQVNLKDMxLCAyOSkNCj4gPj4+
ICsjZGVmaW5lIENNVEdfQ0xLX1NFTEVDVF9QSFlBX0VOQUJMRQ0KPiA+PiAJUkVHX0ZJRUxEX1BS
RVAoQ01UR19DTEtfU0VMX0FfTUFTSywgMHg0KQ0KPiA+Pj4gICAgI2RlZmluZSBDTVRHX0NMS19T
RUxfQV9ESVNBQkxFRA0KPiA+PiAJUkVHX0ZJRUxEX1BSRVAoQ01UR19DTEtfU0VMX0FfTUFTSywg
MCkNCj4gPj4+ICAgICNkZWZpbmUgQ01UR19DTEtfU0VMX0JfTUFTSwkJUkVHX0dFTk1BU0soMTUs
IDEzKQ0KPiA+Pj4gKyNkZWZpbmUgQ01UR19DTEtfU0VMRUNUX1BIWUJfRU5BQkxFDQo+ID4+IAlS
RUdfRklFTERfUFJFUChDTVRHX0NMS19TRUxfQl9NQVNLLCAweDYpDQo+ID4+PiAgICAjZGVmaW5l
IENNVEdfQ0xLX1NFTF9CX0RJU0FCTEVEDQo+ID4+IAlSRUdfRklFTERfUFJFUChDTVRHX0NMS19T
RUxfQl9NQVNLLCAwKQ0KPiA+Pj4gICAgI2RlZmluZSBUUkFOU19DTVRHX0NUTF9BCQlfTU1JTygw
eDZmYTg4KQ0KPiA+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfY3gwX3BoeS5jDQo+ID4+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfY3gwX3BoeS5jDQo+ID4+PiBpbmRleCBkODMyZTQ0ZWY2MmEuLjZhNzQ4MTU3OGU2MSAxMDA2
NDQNCj4gPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3Bo
eS5jDQo+ID4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9w
aHkuYw0KPiA+Pj4gQEAgLTksNiArOSw3IEBADQo+ID4+PiAgICAjaW5jbHVkZSA8ZHJtL2RybV9w
cmludC5oPg0KPiA+Pj4NCj4gPj4+ICAgICNpbmNsdWRlICJpbnRlbF9hbHBtLmgiDQo+ID4+PiAr
I2luY2x1ZGUgImludGVsX2NtdGcuaCINCj4gPj4+ICAgICNpbmNsdWRlICJpbnRlbF9jeDBfcGh5
LmgiDQo+ID4+PiAgICAjaW5jbHVkZSAiaW50ZWxfY3gwX3BoeV9yZWdzLmgiDQo+ID4+PiAgICAj
aW5jbHVkZSAiaW50ZWxfZGlzcGxheV9yZWdzLmgiDQo+ID4+PiBAQCAtMzQxOCwxMCArMzQxOSwx
NCBAQCB2b2lkIGludGVsX210bF9wbGxfZW5hYmxlKHN0cnVjdA0KPiA+Pj4gaW50ZWxfZW5jb2Rl
cg0KPiA+PiAqZW5jb2RlciwNCj4gPj4+ICAgIHZvaWQgaW50ZWxfbXRsX3BsbF9lbmFibGVfY2xv
Y2soc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ID4+PiAgICAJCQkJY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ID4+PiAgICB7DQo+ID4+PiArCXN0
cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShlbmNvZGVyKTsN
Cj4gPj4+ICAgIAlzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCA9IGVuY190b19k
aWdfcG9ydChlbmNvZGVyKTsNCj4gPj4+DQo+ID4+PiAgICAJaWYgKGludGVsX3RjX3BvcnRfaW5f
dGJ0X2FsdF9tb2RlKGRpZ19wb3J0KSkNCj4gPj4+ICAgIAkJaW50ZWxfbXRsX3RidF9wbGxfZW5h
YmxlX2Nsb2NrKGVuY29kZXIsIGNydGNfc3RhdGUtDQo+ID4+PiBwb3J0X2Nsb2NrKTsNCj4gPj4+
ICsNCj4gPj4+ICsJaWYgKEhBU19MVF9QSFkoZGlzcGxheSkpDQo+ID4+PiArCQlpbnRlbF9jbXRn
X3NldF9jbGtfc2VsZWN0KGNydGNfc3RhdGUpOw0KPiA+Pj4gICAgfQ0KPiA+Pj4NCj4gPj4+ICAg
IC8qDQo=
