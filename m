Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44F3F9FF9F4
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jan 2025 14:49:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CBFF10E402;
	Thu,  2 Jan 2025 13:49:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EpqlmEnA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D14FE10E402;
 Thu,  2 Jan 2025 13:49:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735825789; x=1767361789;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KxSk3umQPXgDxyVEqrCyKDuiPWunkx9jlRKfMWnzu30=;
 b=EpqlmEnATFINzOdfYbbex2nXLAtH1vGNUY5CvH4Kvi/EEIu92FZgK0O8
 cNnqo75ezUk99sROKMp7DQRMyBrD8arJqx09cKPz2LPFVyyG9LNPTvco3
 FCMw4Bx7I6mWgks9s1uuUyqlazG7E57zl7MZ+r57UJQN/hzjBQzErVOwk
 LrZcXTy3Y3+rFJAfY5mujIChp/NWBnMtgfx8FUgyOA0m3xZ4tmC40JqKZ
 /a/651nonvKoUlLgwEZARxjTd+1m9CS1a1E3D2jp03KMBhpS2itj41GLH
 9OM65iVzjHDOAyYEk7ucSPP9xPnpFkxZvwQfdOtHVj0uRQZ5v+3T5ukxt A==;
X-CSE-ConnectionGUID: Vf0T1ubRQQOAPaopHlKOkQ==
X-CSE-MsgGUID: VvlKSvieSE6MPbfCq2JL6Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11302"; a="35936939"
X-IronPort-AV: E=Sophos;i="6.12,285,1728975600"; d="scan'208";a="35936939"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2025 05:49:49 -0800
X-CSE-ConnectionGUID: 98wRhXUeTbmyY0NNq+WlQA==
X-CSE-MsgGUID: D8mAmg5nQ5+xTZiS7YwCVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,285,1728975600"; d="scan'208";a="101295441"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Jan 2025 05:49:49 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 2 Jan 2025 05:49:47 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 2 Jan 2025 05:49:47 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 2 Jan 2025 05:49:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cVwvT/3nAJzJRymdX2bdsK6k2mn7yIfZC1mumpgQ7GXzDwqF03NQJZJYtmCMPnUygt6nR6ZtUbVyiqnkQY+ryLrIpPqrtv1Av64YwNB4eHBt1dkQ2oUEGmPUO1EBzxf+YpkUiwjOGCH7eQ5UlTwnUx43eVrnmkqLhXxv4PQGYfRLEeGIw2NLsc8whMcSgokafzBmufmMEriPpYaOAnrBQ+cn2p1OttpmTu+CvUQff6kgH7UOhWzDHE4OkNoOl+jsiP+Ujw3q8T1wz237d5D29OJlqgYcHzV6V9Fgg96qbgqScRBZS9L/SENiMqiJqZdAB499TMWoyE88olobntX9rA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KxSk3umQPXgDxyVEqrCyKDuiPWunkx9jlRKfMWnzu30=;
 b=ZiqqEfV4oVtmLo0aYDBgesRm8ZupoUyefYWg+bzUXYkPAi95PJU77bA2Nzpxdg/NLirXQ0+TWSFfNNqioMgtzEdbgP60Ou5bBv0BZRFtBIDYkiC7T+li5q3zqQQVvzD9+yAmuiFo8saNNzjhWgsmaPEYtc9GdZzU3pphpaXZGFSvOh9vYqEB7uS5uXZB7cYRhyO6CLAkSN1+g6x2biu+j5FOWHuSF5HFOSnLcfgKt2/6KrjDskcRng1xatXFXsEGsfRsD/XFwn8ixqTxL8Qp1kiq9QEDSfT8bSTpsv7a1y4c3OXBEZ6rZszXHCZiSgSfkkANrA+8gDF4mQQ4O8aaZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5491.namprd11.prod.outlook.com (2603:10b6:610:d6::19)
 by CO1PR11MB4882.namprd11.prod.outlook.com (2603:10b6:303:97::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.13; Thu, 2 Jan
 2025 13:48:59 +0000
Received: from CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a]) by CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a%5]) with mapi id 15.20.8314.013; Thu, 2 Jan 2025
 13:48:59 +0000
From: "Ravali, JupallyX" <jupallyx.ravali@intel.com>
To: "i915-ci-infra@lists.freedesktop.org" <i915-ci-infra@lists.freedesktop.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvZGlz?=
 =?utf-8?B?cGxheTogaGFuZGxlIGhkbWkgY29ubmVjdG9yIGluaXQgZmFpbHVyZXMsIGFu?=
 =?utf-8?Q?d_no_HDMI/DP_cases_(rev7)?=
Thread-Topic: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNS9kaXNwbGF5?=
 =?utf-8?B?OiBoYW5kbGUgaGRtaSBjb25uZWN0b3IgaW5pdCBmYWlsdXJlcywgYW5kIG5v?=
 =?utf-8?Q?_HDMI/DP_cases_(rev7)?=
Thread-Index: AQHbXQfp/Q+1WXlqQE6T+23anRTQR7MDgI3Q
Date: Thu, 2 Jan 2025 13:48:58 +0000
Message-ID: <CH0PR11MB549121C304B7FCE2D84C2AA7EF142@CH0PR11MB5491.namprd11.prod.outlook.com>
References: <cover.1735568047.git.jani.nikula@intel.com>
 <173559989105.1101968.12335734921663728138@b555e5b46a47>
 <874j2ho474.fsf@intel.com>
In-Reply-To: <874j2ho474.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5491:EE_|CO1PR11MB4882:EE_
x-ms-office365-filtering-correlation-id: f1b7acc8-5cb6-4275-67bc-08dd2b343564
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|10070799003|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?Z2ZBWEZDOHVidmhlVE8yMFRKTXVkUllXNTVKYXZQRFpnTDExcTZydlBFZmgy?=
 =?utf-8?B?cGdlYkl5clpWM2VoLzIvdlVFRWJrcFBnZU5Nekg1V1BmaU9hMmllREFjUjhK?=
 =?utf-8?B?MTFGeitxUjgyOHNOOWlYSjhtVy9LNUYvSHdZK0lDZFh1TUV0VzZmcWtYVFVw?=
 =?utf-8?B?SkhZTkh0ZStRc0IzNFdvR24wQkdzYjhvYnRyaVpERUtJZC94Z1luNmJubmhh?=
 =?utf-8?B?ZExHZnJ5aFVZM1doK2JicmRQbTNWbUszM1BPalJ3QmlYMW5HNVdUam5pV2FO?=
 =?utf-8?B?N0syWUw5UG52NVBJTXJCczJnOEpnbUZJMHBndGhaa1ZkekZxeExhd1hMUGV3?=
 =?utf-8?B?YU5QVkkvV1UvdjZ4RGc2MmQzdHZQdkpHZmpaKzJNWEJLRGc3ME5hbjBnOHFh?=
 =?utf-8?B?Myt1Z0p5cVJTcmVFQmFWWmloaXdXQUdKNEpKdjBHVW1KS042RFp0YTFTVGJ1?=
 =?utf-8?B?YXU4M3M4b2tCR1MrZTFwQmZWdE56c0VqZVF6VXcrcHVnUklyaWs3Nk9wZmp4?=
 =?utf-8?B?OWZJT1Yvd2xZVFdrSUtrc2l3cVo5TXdjeWV0MTZIMXViWHpIUC9DVFFhV3Yx?=
 =?utf-8?B?enpkMWUyZlNRTVBjb3RJUGNFOVZrR0VkdEREQ2J4MXNENDFBZTlxSytkU3JG?=
 =?utf-8?B?SUl1MWJDN05wR2Q2THN6QkxFaEhEUHJEd1hFdW9CdUFnTzQxVFFPRmZsSncr?=
 =?utf-8?B?M05oY0ZnamhYNytPVXBDNW04U2x1Qm9yR1NUdTFIMUpaK09JR0xnTDUyR1Zt?=
 =?utf-8?B?cGRPeGhpci9vWm5kZnE5YnpDS1piblNCcXRwNWFiSmswVVZOWlBCN01Gc1BN?=
 =?utf-8?B?d3NaaGdaVjdJOUQvbVVINXpZN0NBanY5WEtKV0YwSXNzTTNBSlYrSFEwck95?=
 =?utf-8?B?eFIzWWNzOFRQNDQ4MFlhTW1PK1U2NlVmSC9FelUwcjArWjlCdzkvUWxCVkg0?=
 =?utf-8?B?VkRoVWxXWW13NGZBQTc0d3NSSjNmZFZLc2VyTUFmeWh4WHpQVjZORWs3ZVQ5?=
 =?utf-8?B?b2xoVnIzZ2F0Szd2bmVqb25jSFNpQkRiRGFuS0h1VUsreGxBZ0JDNnpJVC83?=
 =?utf-8?B?bDk5U2t2YlZMM3JBT0RESE9Zai9wWGdVOVJ0RzloWHZLekZBZ1ZKYTlMdy83?=
 =?utf-8?B?SUdyYzNDcmVqK2J3ZVhpWmM2TXRPdG9mTm5nYjEyZjNoMFAvQVVXcnQ0aTJi?=
 =?utf-8?B?UzdkTDdGTWRTclhwb3ZTeFBiYmMrRFc2NWtTRVdJVjdmL29hbFVIblpSYWVK?=
 =?utf-8?B?Q3FNVFpGTm55b1lCQVFnOFRmL3JBUWxLT1pJekNlVThvWWl2aEs4QmxNRzdO?=
 =?utf-8?B?U1pTVnJHeGh0OFFUbWZXeHRyeGNkSTdTQzFBdlBDczNCd09wU3NTTnBxeHBS?=
 =?utf-8?B?TEsvZXJnZnowTnNadkZMb2l4NjR3WjFsc1BVeWVFOGVxSi9ETndRVjBOei91?=
 =?utf-8?B?QmZ2ekp5b3VldUNCNXYrKy83S0d1MUdwakg5dXNpaUpkeHVOc25DWmFHUnBy?=
 =?utf-8?B?bzhiYmZWaThkZ0IxT001aTNLNWFCbzM0T2xyeHBTS3NTeURpWldISDNLNzJr?=
 =?utf-8?B?Q1dtNWhpM201d25MUmxGbGVRbnpvbUc0RG9mMVJMSGFGQkQ2VDhzejR4ZXZm?=
 =?utf-8?B?SzhiOW45dEw3NDQ4Y3VkTDlLWndDWmpNNVpQYThva2Y0RS9zakRaSWVUWTNQ?=
 =?utf-8?B?QUQycytwTHVFTkY1aUQ2OFV0bkJpVGpUUVJENlFTRVNsTjBLMFMyVkRCQ2NJ?=
 =?utf-8?B?UmF6Zi9nSDA3bFc3bytnK21ZMnlpa0RRL1R1VEJLRU9JbTB5Ym02OGxrRWp2?=
 =?utf-8?B?TlJxY0M3K1NaWjIyY2VJallaRS9VcEhkS0RkdUUxa1crRWd2YmhkbHdJTTVG?=
 =?utf-8?Q?KNbdzsIwm6gAc?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5491.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(10070799003)(1800799024)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L1RTbjk4SU43eHlSNGRKUGQrVkRxc2hGaXE0WUcyR1luRUpBMU9oL3BOVitX?=
 =?utf-8?B?ZWVkQ1hjTzNkMFNJQ1FzVXFoYnA3ZWpWdjNYOG8rSkJ0d29xZWtGbjFaTkNj?=
 =?utf-8?B?OHo5UkRIWlpTdVZRL1ljZzZIZEdLcHVZZlJkTTdNajFKdWFDdDhXMGJVM2ls?=
 =?utf-8?B?UVg4ZDBHOVpsaHdwbUU5Z1FJNmpmZHowTXZkbU4vaTEyS0pGcGFPNzRTdUN6?=
 =?utf-8?B?NFBuL0FtSnpxZmdGdE9FTEJVMkNZRDNPSGlPRkxNWlpyRms3WFI3UU9yY01i?=
 =?utf-8?B?L25SYk5MT21GUW9YSFdGNW1YK254Zjhmd1oyUnBRUFBkcGhmZmcyUWl3RFZU?=
 =?utf-8?B?M2tWc2ZUYm5tTHI3b0ZXRW5ucU9UTEZkaXkvT201QWIvR1Q3WnZZVlZ4Z0tk?=
 =?utf-8?B?cmZGYjBtdzZoREM2TDFRc0F4VTNyTkVrNVZtM3dUdlVRcHo1UkJaY3F0ZEpJ?=
 =?utf-8?B?eFFQK010Skx5MGFDcTFNZVE5cmtUYXRZcG41ZTIwTUd1aFM4T0d0b0RSZnNX?=
 =?utf-8?B?aE5NSVRibFMyTkl0S1pRbTFYVlVnY2R3aTJKMndlTXQvNnNhRnJ5U2VEZTBj?=
 =?utf-8?B?UWZvNzZ0T0RpWDFHeUo1M0VKa25nbW82b2dqMmRjNUwyVE5PS3d0SlB1d2U4?=
 =?utf-8?B?STZvRmM4SVlVL0s4MnZpdkFOSlhRNlR2ODdhWGlPMDZZM1kzMWg4MkJ6MnVx?=
 =?utf-8?B?bXFnQnBCamtxZHE2T05kVVc2bFh2dVBGOUcrN0NCVXFCRGUxMWRUY2xEV1F6?=
 =?utf-8?B?elBsaGxMM1ZTU2duOEk0ZWhsSGozcTZqMk1ubUdvbnAxQ0lJK3dhRHdEcFhi?=
 =?utf-8?B?U1psSGVZcUp2NFdrdXdjRXgzWnN5VDExYTA2Vzg5Wm1Fem5nOFJxRmo3b1NE?=
 =?utf-8?B?NWkvYlJ6a0VDOC80VVUzUU1XeDZaSTUrdk5ZbHRnM2g4RFoxVVR2bWdtcldv?=
 =?utf-8?B?ZmlrVEl3dHh6R043MVFjQXB2ZGpwSGdJayt2cnkxSjRNeVhSQzFGQk15Zm1S?=
 =?utf-8?B?SU4rRW1MZDRTalJMK0dMeWJtRng5RDhQeWZtd3FWci9SOXZMSTFIVlJLS3Vu?=
 =?utf-8?B?aWozaSsrS3lydzBmUnZFQlZMWG9ZSXJ5WnhlUVVOdVhBcGw2MG5ua3RYcExZ?=
 =?utf-8?B?OEhBNWF1SXE0WUQ2MWJxUnFMYVFUNTN6RjZIWE1iWkcrSTVlMXg5M2JiTWhl?=
 =?utf-8?B?QWxZNXNvRFJMaE5OZE53VGVocnlJeTJNNDJzMWMzeXBUOTdNalpWMVIzYi9l?=
 =?utf-8?B?VkFkdTNORlVmU3YrNGYvQ2QxVlhQVTE4a2dTYS9VNUNlSk1tNE9qdEM4TVht?=
 =?utf-8?B?YVFQWlQyakFWM1JQWDMySFppZDZ3WWlXTEVoMEtsWm9ENVB4TUJMMjN0cXZi?=
 =?utf-8?B?OG9CWGpjRTdwdnJWYTdWcXdiSkFqK3dsY2hrQlZPZ3NTY0ZtcGY4RnJ3L2JY?=
 =?utf-8?B?UzNQbDk1NVFtazRMem5KNTNHZnZCT3d5R1l6TFlDSkZnUjZpRDdmN1diUVhI?=
 =?utf-8?B?OWZKSURVOXJTcGM1QTNtYXNnSzJKSi92dVNoWW15dnJRdFlWbDc4cUNQTW9T?=
 =?utf-8?B?a0ZkbzBTUCt1NU5jU1ZPR2pCbzdPVG1yUTQrRGtkU3JtZkQ2TEFMZCt2U0lv?=
 =?utf-8?B?ZWd4dVMwckdDNm1sbzNMM013elpqZEM4MnA0V0J3UDI5QllNMVJLZlJrbVJy?=
 =?utf-8?B?RmE4QnZ4NnNOOFRac3gwYmJsYXFTcnpPRlF6YUJzeFlGZGM0QWZZUEN0akkv?=
 =?utf-8?B?YnpkOTBsYzVnRC9NSU9kWGMvbGwwNHRydUNXYzhqV2hkQkZ3MXY5VUQ2dGcv?=
 =?utf-8?B?VzJJd0JMYncyekg1aUtvMHVWYk81QUFNcDVINXNyOFVXVHBwbWJQa1FFYWtx?=
 =?utf-8?B?bW0wcllKY3o0TWx4U3p2WU1ZSG44WGwxZFNJSkY4VWNzWW55Y3p4WWFtc25x?=
 =?utf-8?B?K0VQWUtEYVlQem1PaGJZdTFxZkVEWm5PVUtscjJVMXprUmJYQ3pGSG1Ec1cz?=
 =?utf-8?B?RWw5VVdSWlZncm9GVEZXRThoU21ETzhMTFEwRC9ybjdCejZveE9qemJicnVS?=
 =?utf-8?B?OHFHa2RDWjJwT3lnSDlHQ2h1dXdmQWRaa2doMFpDUlE2N1NpdHp0SUExY2Fq?=
 =?utf-8?B?UjBhVHZTb1U3MjZBWHllTnBBc3R2YWMyRGZSdkZOYlV1bEtJNWFmNzdhWDlJ?=
 =?utf-8?Q?1xO0mfF+POA14dIP3hhJnKB+8TMuVQ2MoIzqbNDI+ZhU?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5491.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f1b7acc8-5cb6-4275-67bc-08dd2b343564
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jan 2025 13:48:59.0070 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qzPPE7ZyNf1kozaBEGcV0a0N6ap5aH13yKAl5KR/FMSLbuP+rQWUQXRniroJp2Qc4/nYcqp9LjEDdKWt/MueM1m0lT7+N7tMA8fwHfr6pHY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4882
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

SGksDQoNCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTQyMTE5Lw0K
DQppOTE1LkNJLkJBVCAtIFJlLXJlcG9ydGVkLg0KDQpUaGFua3MsDQpSYXZhbGkuDQoNCi0tLS0t
T3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBJOTE1LWNpLWluZnJhIDxpOTE1LWNpLWluZnJh
LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgSmFuaSBOaWt1bGEN
ClNlbnQ6IDAyIEphbnVhcnkgMjAyNSAxNjo0Nw0KVG86IEk5MTUtY2ktaW5mcmFAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnDQpDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KU3ViamVj
dDogUmU6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvZGlzcGxheTogaGFu
ZGxlIGhkbWkgY29ubmVjdG9yIGluaXQgZmFpbHVyZXMsIGFuZCBubyBIRE1JL0RQIGNhc2VzIChy
ZXY3KQ0KDQpPbiBNb24sIDMwIERlYyAyMDI0LCBQYXRjaHdvcmsgPHBhdGNod29ya0BlbWVyaWwu
ZnJlZWRlc2t0b3Aub3JnPiB3cm90ZToNCj4gPT0gU2VyaWVzIERldGFpbHMgPT0NCj4NCj4gU2Vy
aWVzOiBkcm0vaTkxNS9kaXNwbGF5OiBoYW5kbGUgaGRtaSBjb25uZWN0b3IgaW5pdCBmYWlsdXJl
cywgYW5kIG5vIEhETUkvRFAgY2FzZXMgKHJldjcpDQo+IFVSTCAgIDogaHR0cHM6Ly9wYXRjaHdv
cmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xNDIxMTkvDQo+IFN0YXRlIDogZmFpbHVyZQ0KPg0K
PiA9PSBTdW1tYXJ5ID09DQo+DQo+IENJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzE1
ODkyIC0+IFBhdGNod29ya18xNDIxMTl2NyANCj4gPT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PQ0KPg0KPiBTdW1tYXJ5DQo+IC0tLS0tLS0NCj4NCj4g
ICAqKkZBSUxVUkUqKg0KPg0KPiAgIFNlcmlvdXMgdW5rbm93biBjaGFuZ2VzIGNvbWluZyB3aXRo
IFBhdGNod29ya18xNDIxMTl2NyBhYnNvbHV0ZWx5IG5lZWQgdG8gYmUNCj4gICB2ZXJpZmllZCBt
YW51YWxseS4NCj4gICANCj4gICBJZiB5b3UgdGhpbmsgdGhlIHJlcG9ydGVkIGNoYW5nZXMgaGF2
ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMNCj4gICBpbnRyb2R1Y2VkIGluIFBhdGNo
d29ya18xNDIxMTl2NywgcGxlYXNlIG5vdGlmeSB5b3VyIGJ1ZyB0ZWFtIChJOTE1LWNpLWluZnJh
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZykgdG8gYWxsb3cgdGhlbQ0KPiAgIHRvIGRvY3VtZW50IHRo
aXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1Y2UgZmFsc2UgcG9zaXRpdmVzIGlu
IENJLg0KPg0KPiAgIEV4dGVybmFsIFVSTDogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MjExOXY3L2luZGV4Lmh0bWwNCj4NCj4gUGFydGlj
aXBhdGluZyBob3N0cyAoNDEgLT4gMzkpDQo+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LQ0KPg0KPiAgIE1pc3NpbmcgICAgKDIpOiBiYXQtdHdsLTEgZmktc25iLTI1MjBtIA0KPg0KPiBQ
b3NzaWJsZSBuZXcgaXNzdWVzDQo+IC0tLS0tLS0tLS0tLS0tLS0tLS0NCj4NCj4gICBIZXJlIGFy
ZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBh
dGNod29ya18xNDIxMTl2NzoNCj4NCj4gIyMjIElHVCBjaGFuZ2VzICMjIw0KPg0KPiAjIyMjIFBv
c3NpYmxlIHJlZ3Jlc3Npb25zICMjIyMNCj4NCj4gICAqIGlndEBpOTE1X3BtX3JwbUBtb2R1bGUt
cmVsb2FkOg0KPiAgICAgLSBiYXQtYWRscy02OiAgICAgICAgIFtQQVNTXVsxXSAtPiBbRkFJTF1b
Ml0NCj4gICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV8xNTg5Mi9iYXQtYWRscy02L2lndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkLmh0bWwN
Cj4gICAgWzJdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTQyMTE5djcvYmF0LWFkbHMtNg0KPiAvaWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1y
ZWxvYWQuaHRtbA0KPg0KPiAgICogaWd0QGttc19waXBlX2NyY19iYXNpY0Bjb21wYXJlLWNyYy1z
YW5pdHljaGVjay14cjI0Og0KPiAgICAgLSBmaS1rYmwtNzU2N3U6ICAgICAgIFtQQVNTXVszXSAt
PiBbRE1FU0ctV0FSTl1bNF0gKzEgb3RoZXIgdGVzdCBkbWVzZy13YXJuDQo+ICAgIFszXTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTU4OTIvZmkta2Js
LTc1Njd1L2lndEBrbXNfcGlwZV9jcmNfYmFzaWNAY29tcGFyZS1jcmMtc2FuaXR5Y2hlY2steHIy
NC5odG1sDQo+ICAgIFs0XTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE0MjExOXY3L2ZpLWtibC03NTYNCj4gN3UvaWd0QGttc19waXBlX2Ny
Y19iYXNpY0Bjb21wYXJlLWNyYy1zYW5pdHljaGVjay14cjI0Lmh0bWwNCg0KVGhlIGNvbnNlY3V0
aXZlIEJBVCByZXN1bHRzIGhhdmUgYmVlbiBnaXZpbmcgcHJldHR5IG11Y2ggcmFuZG9tIGZhaWx1
cmVzLiBQbGVhc2UgcmUtcmVwb3J0Lg0KDQoNCj4NCj4gICANCj4gS25vd24gaXNzdWVzDQo+IC0t
LS0tLS0tLS0tLQ0KPg0KPiAgIEhlcmUgYXJlIHRoZSBjaGFuZ2VzIGZvdW5kIGluIFBhdGNod29y
a18xNDIxMTl2NyB0aGF0IGNvbWUgZnJvbSBrbm93biBpc3N1ZXM6DQo+DQo+ICMjIyBJR1QgY2hh
bmdlcyAjIyMNCj4NCj4gIyMjIyBJc3N1ZXMgaGl0ICMjIyMNCj4NCj4gICAqIGlndEBmYmRldkBp
bmZvOg0KPiAgICAgLSBmaS1ic3ctbmljazogICAgICAgIE5PVFJVTiAtPiBbU0tJUF1bNV0gKFtp
OTE1IzE4NDldKQ0KPiAgICBbNV06IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNDIxMTl2Ny9maS1ic3ctbmljDQo+IGsvaWd0QGZiZGV2QGlu
Zm8uaHRtbA0KPg0KPiAgICogaWd0QGdlbV9sbWVtX3N3YXBwaW5nQHBhcmFsbGVsLXJhbmRvbS1l
bmdpbmVzOg0KPiAgICAgLSBmaS1ic3ctbmljazogICAgICAgIE5PVFJVTiAtPiBbU0tJUF1bNl0g
KzQyIG90aGVyIHRlc3RzIHNraXANCj4gICAgWzZdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQyMTE5djcvZmktYnN3LW5pYw0KPiBrL2ln
dEBnZW1fbG1lbV9zd2FwcGluZ0BwYXJhbGxlbC1yYW5kb20tZW5naW5lcy5odG1sDQo+DQo+ICAg
KiBpZ3RAa21zX3BpcGVfY3JjX2Jhc2ljQGhhbmctcmVhZC1jcmNAcGlwZS1jLWRwLTE6DQo+ICAg
ICAtIGZpLWtibC03NTY3dTogICAgICAgW1BBU1NdWzddIC0+IFtETUVTRy1XQVJOXVs4XSAoW2k5
MTUjMTI5MTRdKSArMSBvdGhlciB0ZXN0IGRtZXNnLXdhcm4NCj4gICAgWzddOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xNTg5Mi9maS1rYmwtNzU2N3Uv
aWd0QGttc19waXBlX2NyY19iYXNpY0BoYW5nLXJlYWQtY3JjQHBpcGUtYy1kcC0xLmh0bWwNCj4g
ICAgWzhdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTQyMTE5djcvZmkta2JsLTc1Ng0KPiA3dS9pZ3RAa21zX3BpcGVfY3JjX2Jhc2ljQGhh
bmctcmVhZC1jcmNAcGlwZS1jLWRwLTEuaHRtbA0KPg0KPiAgICogaWd0QGttc19waXBlX2NyY19i
YXNpY0Bub25ibG9ja2luZy1jcmMtZnJhbWUtc2VxdWVuY2U6DQo+ICAgICAtIGJhdC1kZzItMTE6
ICAgICAgICAgW1BBU1NdWzldIC0+IFtTS0lQXVsxMF0gKFtpOTE1IzkxOTddKSArMiBvdGhlciB0
ZXN0cyBza2lwDQo+ICAgIFs5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fMTU4OTIvYmF0LWRnMi0xMS9pZ3RAa21zX3BpcGVfY3JjX2Jhc2ljQG5vbmJs
b2NraW5nLWNyYy1mcmFtZS1zZXF1ZW5jZS5odG1sDQo+ICAgIFsxMF06IA0KPiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDIxMTl2Ny9iYXQtZGcy
LTExDQo+IC9pZ3RAa21zX3BpcGVfY3JjX2Jhc2ljQG5vbmJsb2NraW5nLWNyYy1mcmFtZS1zZXF1
ZW5jZS5odG1sDQo+DQo+ICAgKiBpZ3RAcnVubmVyQGFib3J0ZWQ6DQo+ICAgICAtIGZpLXBudi1k
NTEwOiAgICAgICAgTk9UUlVOIC0+IFtGQUlMXVsxMV0gKFtpOTE1IzEzMzUwXSkNCj4gICAgWzEx
XTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzE0MjExOXY3L2ZpLXBudi1kNTENCj4gMC9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbA0KPg0KPiAg
IA0KPiAjIyMjIFBvc3NpYmxlIGZpeGVzICMjIyMNCj4NCj4gICAqIGlndEBjb3JlX2hvdHVucGx1
Z0B1bmJpbmQtcmViaW5kOg0KPiAgICAgLSBiYXQtcnBscy00OiAgICAgICAgIFtETUVTRy1XQVJO
XVsxMl0gKFtpOTE1IzEzNDAwXSkgLT4gW1BBU1NdWzEzXQ0KPiAgICBbMTJdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xNTg5Mi9iYXQtcnBscy00L2ln
dEBjb3JlX2hvdHVucGx1Z0B1bmJpbmQtcmViaW5kLmh0bWwNCj4gICAgWzEzXTogDQo+IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MjExOXY3L2Jh
dC1ycGxzLTQNCj4gL2lndEBjb3JlX2hvdHVucGx1Z0B1bmJpbmQtcmViaW5kLmh0bWwNCj4NCj4g
ICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmU6DQo+ICAgICAtIGJhdC1hZGxwLTk6ICAgICAgICAg
W0FCT1JUXVsxNF0gKFtpOTE1IzEzMzk5XSkgLT4gW1BBU1NdWzE1XSArMSBvdGhlciB0ZXN0IHBh
c3MNCj4gICAgWzE0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9D
SV9EUk1fMTU4OTIvYmF0LWFkbHAtOS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlLmh0bWwNCj4gICAg
WzE1XTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzE0MjExOXY3L2JhdC1hZGxwLTkNCj4gL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmUuaHRtbA0K
Pg0KPiAgICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kczoNCj4gICAgIC0gYmF0
LW10bHAtNjogICAgICAgICBbRE1FU0ctRkFJTF1bMTZdIChbaTkxNSMxMzM5M10pIC0+IFtQQVNT
XVsxN10gKzEgb3RoZXIgdGVzdCBwYXNzDQo+ICAgIFsxNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE1ODkyL2JhdC1tdGxwLTYvaWd0QGk5MTVfc2Vs
ZnRlc3RAbGl2ZUB3b3JrYXJvdW5kcy5odG1sDQo+ICAgIFsxN106IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MjExOXY3L2JhdC1tdGxwLTYvaWd0
QGk5MTVfc2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kcy5odG1sDQo+ICAgICAtIHtiYXQtYXJscy02
fTogICAgICAgW0RNRVNHLUZBSUxdWzE4XSAoW2k5MTUjMTMzOTNdKSAtPiBbUEFTU11bMTldICsx
IG90aGVyIHRlc3QgcGFzcw0KPiAgICBbMThdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV8xNTg5Mi9iYXQtYXJscy02L2lndEBpOTE1X3NlbGZ0ZXN0QGxp
dmVAd29ya2Fyb3VuZHMuaHRtbA0KPiAgICBbMTldOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQyMTE5djcvYmF0LWFybHMtNg0KPiAvaWd0
QGk5MTVfc2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kcy5odG1sDQo+DQo+ICAgDQo+ICAge25hbWV9
OiBUaGlzIGVsZW1lbnQgaXMgc3VwcHJlc3NlZC4gVGhpcyBtZWFucyBpdCBpcyBpZ25vcmVkIHdo
ZW4gY29tcHV0aW5nDQo+ICAgICAgICAgICB0aGUgc3RhdHVzIG9mIHRoZSBkaWZmZXJlbmNlIChT
VUNDRVNTLCBXQVJOSU5HLCBvciBGQUlMVVJFKS4NCj4NCj4gICBbaTkxNSMxMjkxNF06IGh0dHBz
Oi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMvMTI5MTQN
Cj4gICBbaTkxNSMxMzM1MF06IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkx
NS9rZXJuZWwvLS9pc3N1ZXMvMTMzNTANCj4gICBbaTkxNSMxMzM5M106IGh0dHBzOi8vZ2l0bGFi
LmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMvMTMzOTMNCj4gICBbaTkx
NSMxMzM5OV06IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwv
LS9pc3N1ZXMvMTMzOTkNCj4gICBbaTkxNSMxMzQwMF06IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNr
dG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMvMTM0MDANCj4gICBbaTkxNSMxODQ5XTog
aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8x
ODQ5DQo+ICAgW2k5MTUjOTE5N106IA0KPiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcv
ZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzkxOTcNCj4NCj4NCj4gQnVpbGQgY2hhbmdlcw0KPiAt
LS0tLS0tLS0tLS0tDQo+DQo+ICAgKiBMaW51eDogQ0lfRFJNXzE1ODkyIC0+IFBhdGNod29ya18x
NDIxMTl2Nw0KPg0KPiAgIENJLTIwMTkwNTI5OiAyMDE5MDUyOQ0KPiAgIENJX0RSTV8xNTg5Mjog
MDhiZDU5MDkzNWE1MjU4ZmZkNzkzNTVjNTlhZGZmZDcyZmIyYzY0MiBAIGdpdDovL2Fub25naXQu
ZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eA0KPiAgIElHVF84MTcyOiA5MTEyNTgxNjE5YWEx
OThmYTAzMDQxZDVjN2UxOGUwMmY0MmFjMDBmIEAgaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Au
b3JnL2RybS9pZ3QtZ3B1LXRvb2xzLmdpdA0KPiAgIFBhdGNod29ya18xNDIxMTl2NzogMDhiZDU5
MDkzNWE1MjU4ZmZkNzkzNTVjNTlhZGZmZDcyZmIyYzY0MiBAIA0KPiBnaXQ6Ly9hbm9uZ2l0LmZy
ZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgNCj4NCj4gPT0gTG9ncyA9PQ0KPg0KPiBGb3IgbW9y
ZSBkZXRhaWxzIHNlZTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE0MjExOXY3L2luZGV4Lmh0bWwNCg0KLS0NCkphbmkgTmlrdWxhLCBJbnRl
bA0K
