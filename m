Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1FBD9B0905
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 17:59:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38D2710E3E5;
	Fri, 25 Oct 2024 15:59:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gFTex7GU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86B9510E3E5;
 Fri, 25 Oct 2024 15:59:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729871979; x=1761407979;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AZu0BPmC6XnIa/4RIpsqP/iZQEBKUOarwioB03luCqo=;
 b=gFTex7GU0KHw1UmQeBWzsAPj/OgOJgbSb67oB1uWAEBRiWA9GchrIxd2
 IkQPrBikfJjW6oVmh+ZYEnzAI4AozX5f4mtmMMF/4zcnNYLQGJSDM56ey
 BWQDSeT/h/YG808MM3RC4Rb7YdtvjAQ2N57g+Zc1JcXXiFP1783fKS14X
 h10OVQ4TsAc1NWcAMV67qBHoYtanYDRtEd+2wFgys9v4Puh1/GwigYgbC
 mG6KB/Qzi7yl5dC5FhX490J6GaanOjW9DxrBDmj98BHETw0fIlgSlqWJW
 ijZFEOp0pARIHPrrQCzEcA7lHRw0jsDs2E5WOahWonqo6p2lcExSkKu4Y A==;
X-CSE-ConnectionGUID: hoXMrdfPQ5Gpus2dQZ7hBg==
X-CSE-MsgGUID: HYL3nJDWQkK0viubPSKdag==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="33241999"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="33241999"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 08:59:39 -0700
X-CSE-ConnectionGUID: hsys8Be3QuObIWmb+PafYQ==
X-CSE-MsgGUID: 0qsFZuJES3mKv4qZYfIEWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="81782869"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Oct 2024 08:59:39 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 25 Oct 2024 08:59:38 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 25 Oct 2024 08:59:38 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 25 Oct 2024 08:59:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ygtejvYfxpyxqNiMJylmQwrkKkttu2kr/tJ2w+toV1JXJI/CWMBNUsWTheSw5tppMzrczmq5nCw/fv3ejQa4Se6LFUdppJFanPYDGULYDjepiQP4zijSPZIxPQeksbaAOAgCFm2OTlTZjQwEoFRpLJMFEL7164P6zV+eC3RKVFxuTMeX3LNOYm00kixIJlpIH3F+532B1HPqyhkWTq8gbok3aywbS5Vn7GoKxyoimxtq8aQMnUw5FLyznfQPBJdg9WlEDJJp97XMJnu+cgsWqXUmWG3YJAssXz/VvI0nDAkunhtzBPqeMURz+cxc6X9PgoUxawYJL1VjeJS09n83xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AZu0BPmC6XnIa/4RIpsqP/iZQEBKUOarwioB03luCqo=;
 b=DoyWkBl02o+mwuubVy2HAvKbSnxgRc/A1q8rIfrVKiedY1oYYfxObvqpkwDRrqK/02Nfbop5qza7h/1EKbL7XU4teP0CTuXTVlruOxBArTHfHodQ1tMPtmREbSz0DxJNRhahqv7Mu0i17L7dmNq3+Z2a2v2fLLXuZQ3wBu9EhWF0UFR7Y2tMmtT9/pHv3yI3B9jNwHOhaVCoSOQrU+VxnRCn4MUHf3Z8CZ/li22Ea26j1DfxvGyjkATWoCZr4qvPqJNkfT4yFxgT6zWO1/8AWR50mX05kugS+CvsQdJubrLvY7vd9KdMXuiIFhUIUvinvANMDU2CzWidIDZViypWEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by IA1PR11MB7854.namprd11.prod.outlook.com (2603:10b6:208:3f6::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.20; Fri, 25 Oct
 2024 15:59:35 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8093.014; Fri, 25 Oct 2024
 15:59:35 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Ghimiray, Himal Prasad"
 <himal.prasad.ghimiray@intel.com>
Subject: RE: [PATCH] drm/xe/hdcp: Add check to remove hdcp2 compatibility
Thread-Topic: [PATCH] drm/xe/hdcp: Add check to remove hdcp2 compatibility
Thread-Index: AQHbJFQvmh2mxVQK0EuLUzPaQgNlSLKWC3UAgACiWYCAAOgLgIAADx8w
Date: Fri, 25 Oct 2024 15:59:35 +0000
Message-ID: <SN7PR11MB6750CA00D073C831DA6049C0E34F2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241022055655.1902-1-suraj.kandpal@intel.com>
 <20241022072920.102033-1-suraj.kandpal@intel.com>
 <5a48a3f3-bda0-45a2-98e1-068165f8e772@intel.com>
 <SN7PR11MB67501BD53C3641C4BB1E9E58E34F2@SN7PR11MB6750.namprd11.prod.outlook.com>
 <906191eb-f17d-4a89-ac63-aec08fb1f66e@intel.com>
In-Reply-To: <906191eb-f17d-4a89-ac63-aec08fb1f66e@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|IA1PR11MB7854:EE_
x-ms-office365-filtering-correlation-id: 87478dc1-1456-44b1-a646-08dcf50e05a2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?TUdEMGtIU3E5UStBTWlINGk5OWMvejJlRG5OTmYwQ0NQVzBvYjNLRUZreE5q?=
 =?utf-8?B?S1c4TU5CZTFucUNueXg2UW9PT1lGaXl6cW1pMlA3ZlV1YU42VVczSE5NNGtO?=
 =?utf-8?B?M2c0STc2OVR5UUltTUpvb3BYTFNZMExkd3FpMHpYVThzb29pUUJud0FzcmJp?=
 =?utf-8?B?a2JudmhhWUFwdFc5NmdZVjN6TFBMbk83cWJyU2Qvb3ZuSVFETHVQWGM0Z3VO?=
 =?utf-8?B?clpzeHd1eUM3alFRa3pRUDVVcnFIUWsra0tOUVdUSW1meUZZQ3dVRlh3M1Nm?=
 =?utf-8?B?RVJWMWdXRkRucC9TcXYvV2pTV1VkVGlSRUxSaWJWOStZVEhLS0RIc2hkR1ZE?=
 =?utf-8?B?cXZIRHI4dTZoZ3doTzJaWkpFVzljMkt6M1NiTEk5b2pGMi8va3RzUEJTMXdz?=
 =?utf-8?B?V2IrcWovVldpMk53MlppWGt2YWpJWUUxV3BCbmVOd2RqVlUzNnZXeEVmdkZO?=
 =?utf-8?B?bVVNWi9DVE03Um4vK1crVkpUZVkrdmtpWnJhTm4zV1haWUdSVmhTRzliNW9V?=
 =?utf-8?B?eEtxWExGME5XS0hDQUU0WVR6UWhjbWRWNkZkNVdwUzRyWG1neXhDRWQ2QVNZ?=
 =?utf-8?B?bmo2OFNCeWFFK1U0OWNlZ3BESVY2V2lTL21TaVMvelRzcnRXcnYwb1ZEbWQz?=
 =?utf-8?B?R0YxV3hML2J0a0tnVnpUSnAxOS9KSlBOaXBLTVFWOXlmTEtYVnJIYlRkaC8z?=
 =?utf-8?B?ZzVObjBoN2pBNi9BYVJNRVpJd3NrclE3dlFBN3ZVd3hzZU8zbG1QQjlDaGV3?=
 =?utf-8?B?b0FidHJ0ZU0waXJrTk0rdW5DL25VRXR2c0xBVzNzc2NNRFNOMDhjdG9EVU1D?=
 =?utf-8?B?WHpnb2hqL3ZEdzBqdVhxS2dndCtJWG5xYlRHR2RDTUhqcXB4MlQ3L1F3VlB0?=
 =?utf-8?B?VkJxU3hMRzduY0hYd3l2VGx6cldTU0kxalo3QldGOFlJTlczSjF4RmJibFdo?=
 =?utf-8?B?U1BwVy84WmdqMlY1d0g4RWtTVTAwWlJoN0ZFbTF4TzJvTndQekhkYzBWNW5i?=
 =?utf-8?B?cnlDQUpTWTJuZmVrSWpMZXAxV0tiM2pQR01DeHVoT0NnR1Bmc1ZiRzJTYVdE?=
 =?utf-8?B?MVVnL1RKZ2F1YmhvelZaSzgyNGJTUm0vTmhIUjJkR0pwam5HRXhOcjgyMlpJ?=
 =?utf-8?B?U2xucEFZZ0xvU0w4cSsrZFQxaVkwYU40NWZRZHN0ZjNEYThuNGhqd1p1VkI5?=
 =?utf-8?B?SityOEprM2ZkQnVENGtEUjlRMDEzZE5XQlNoenRwc2gzSllWT2hvRFNKZnlM?=
 =?utf-8?B?SGpLWmk4M1FyQWZxc1RtT0JUZ05wS2NXdG4xTXk3OVJxcHVLdXlweVh4WXoz?=
 =?utf-8?B?QUFQL2dKaGtjYkJ1eGI0QStHcDc4cDF1RGlrMUJWVUx3NG1WTmFwbzhnVkh4?=
 =?utf-8?B?MUY0Y3VZV3YwdGdjVVhhMitqK1RhbWVhbzdzdGt1R01pMzJ2OU5JNkMyd1dv?=
 =?utf-8?B?WHFVUnkvV1pKUlU3aVl0REFDdzd0QlFXOWlKMzh2WVZGbGJPMnNobFI4N2gw?=
 =?utf-8?B?Z0xacFowOHd6d3I0L3VTOThveFBRK1V1RThYSjgyK0FNcEsvRnpGTEhDc0RY?=
 =?utf-8?B?SFcwM2ttOWU2K1BGOFlTbzlsRU8xTS9TWldlZG10OGI3RERSUnZxbEZuTEdV?=
 =?utf-8?B?N2U1WStRSDI4Y1VUbnlBWjRtbENlVlRJbFVDbnJodUR3TUtIOUhPMXBnWVF0?=
 =?utf-8?B?NmRyQ0RUUFBIeFAvRE5PZzIrcndWL1g0SzFJMnhoOTEza1BiNUdQQkFSMXd4?=
 =?utf-8?B?ZGJrVEovaGE5MFpGV1BYWk5rWHdGckRqRkt6NUlLMHVadERUMHJsMEtJV2Nw?=
 =?utf-8?Q?cqLkgho2HB+qFAaFl9PQfddoEb66pGYv3LIL8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WjBYaGJ6Y0NiVml5bXFsZkN5Q25sY05FOXdCNjFuZ3BLY1R3M2ZxbTFFbGJ6?=
 =?utf-8?B?bmRYM1FHTlhiUithcWk1ZURkQVdVdWFCMVA0a1UxZmFKSldHTHVubHgweWU3?=
 =?utf-8?B?YXp4NVlFTjRlMkVBdVFwYXBqL3FRS2ZXajBWNVVqNVc2SjB3WEh5VnJONnRJ?=
 =?utf-8?B?dmliTTJIUTh6OEJkZjFSQ20xMTRLL2NoSG16QUxEVWl1M2hWNFJ2d01BNVlL?=
 =?utf-8?B?Z1diREpRRnU3dnpLSC9pOXFzTVpNN0JFUFZFdjcxMENwWnFLeENGSE8vWmtG?=
 =?utf-8?B?bGxDWU1iQnY1N0paS1hLOTdmQWx6c0M5NWNuY0R0STJzblhvSDkvWStYcUlC?=
 =?utf-8?B?Q1NkZ1pxSUhEU1R2QjI4ZFJDdndMUkhvMHhYaTF1MFVGK3FjdEUxQTBSU0FZ?=
 =?utf-8?B?VGxnTkpuNXlVbVBoMEpTd0tGaEd2WTQvTXNWai9kLzRCL2k4S0tPbWxDbWpw?=
 =?utf-8?B?WXY2eXJyZW05SXJvcG1PUitmMlNlZXJ0bHVJaEg0NUczVU1YOWp1RUNiTnZ3?=
 =?utf-8?B?MHR4bWRBUW1BTUNvV2thaGlmS1BUS0JTRDZmQkhlVnQ0WTJ3NStCY01MeVRX?=
 =?utf-8?B?WnM4RUR0TThGODIvdERvRlV3VTduNHl4dnVsRzY1OU4vY3BuenoxWnl0ZlJW?=
 =?utf-8?B?LzUzZ0Z1cEkxQWhFV1FZek56dXppS1BQR3lZRmY0MkpRODVSVlNpcXY3VnlL?=
 =?utf-8?B?WVpCdy9JdzVZeEJteTVlMHVpVHllMGV5VTlxM1FXNjlTYi85VEVmWTNMUE1V?=
 =?utf-8?B?TTJMWjZObXh1amEvck9CR0ROaXJWYUZ4SWxHRFdzWklpTW85WjlZVUZQdFNa?=
 =?utf-8?B?WE9Ob1VDVVk3QTRhWENDMENKZWxOS1Y2Q0hDMi8rZlA0MmF6c0NJYld3T3Uz?=
 =?utf-8?B?ZUFycEh3b2w5K2dqR2xRYURqN2k4MjQ3ZG0yYXVGVE1odFRickZ0VVI2MUlN?=
 =?utf-8?B?VjVUcU1YNFZEQVpua0pDWnllZHI0cmh0Vkg1UEJoSmhMUGxRYXJEblFmMW95?=
 =?utf-8?B?VmJKN1ViTEd6Y04wZUdIdlJ4ZlhndFpTcHJsWVVJZ2VIL0dJKzVmKzlYNUlj?=
 =?utf-8?B?RlFBYjVENXl6UU1VZUR6akNvMm1QcHhzUjYzQnNqNU5YMU10S0VKR2hueldv?=
 =?utf-8?B?ZnJHSG9rZ2pvVTUvZHZUQlBCeXBNWE9MakROL2Fub0wzczgycjJRRzBxSTg4?=
 =?utf-8?B?ZDVaamVNaXBsRUdBTlRZSlJFaHBLU3REYmdoQTdZblFrdkx1N0dQdExwWWZB?=
 =?utf-8?B?MWNKbzg0ZEtZRDFVVVllZDEyd1YwRERPZGJVREVRaWYrZERGVmMrQnZSWkN4?=
 =?utf-8?B?bmxOSzFSUUQ0V2NZYTlZSktHbWJhelJ6Rnd6NlFRRVByMyt5dGk0MFJBZU0r?=
 =?utf-8?B?VXczeVJkUG5GcHhodmtwVXJCdXlZRkF6WEJ4U0I3bXpGWEgzUXpOWElFU01i?=
 =?utf-8?B?UGVwZk52c04zNmdWZ0RqRGE4TEtLZ0NwRjRvYWpoY09TelFpS09uQk9wUGpD?=
 =?utf-8?B?MW10Nk9qaldHaCtOMVNCTkQ2M2RTOS9ZR0NUN2dZdEQyTjJxQ0Z6RXhsYUkv?=
 =?utf-8?B?Nk4xR3JkbmFaVTh1OCtrbldVRFpnTUtNWG9Wd0pkSmZIYmNDNHZBdi94UE9B?=
 =?utf-8?B?UklBSG50djVpWnRoZ2F5WDFKVzZRMG5RL2pDbmdUQXdjRkxNQXlZck5LcGts?=
 =?utf-8?B?ZDJMTEJtSGF5aUg1U3o5WStibHVLZWY0dTNlMjg0QVQ3eDVrbU51bnBVMFdx?=
 =?utf-8?B?ckRHazJaWUp0c096aFAwRDhvbmw0dFpKcG1qOUFOekhhcW5CaEVDZXgzQlJ1?=
 =?utf-8?B?cVlWcWhVNkZZUjN1RzhRTlA1RFpYQVVTQWJhM2RWNFhZZEU4TTFNOUVtVW9r?=
 =?utf-8?B?MkNFVHZ3bW5RSWltQkhZRDduWXZvbEllUncrbnlqb1hPMW52QXJvUWF3Qnl4?=
 =?utf-8?B?L1FrRjFFbTFwR3JkeG9wcXp6LzN0YU12RXIvdFdwV2g2VlJGNW1mNzRmS1d1?=
 =?utf-8?B?V1RHTFFkaTBXbjdzWjRlRnNCMWlyaE04UW9wZ0Z6R1p1R3Y5akFuMnM5TFVv?=
 =?utf-8?B?WGU5MEFrZ2lSajhObDg5L2s5NDA5dmtiSXZtTEhYWU9McEllSGF1R3k0MWpU?=
 =?utf-8?Q?gg6X1lPGdnhJA+CmQEfebzlku?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 87478dc1-1456-44b1-a646-08dcf50e05a2
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Oct 2024 15:59:35.2190 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zAdvzBaDHXV2ddz3Qh0NE3iScwZIlbKU8lYF/YrDt1/2d78+0VmLIZ4H78Je/scLgf2d6soK2ru6ZIaQJHPHZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7854
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQ2VyYW9sbyBTcHVyaW8s
IERhbmllbGUgPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRh
eSwgT2N0b2JlciAyNSwgMjAyNCA4OjM1IFBNDQo+IFRvOiBLYW5kcGFsLCBTdXJhaiA8c3VyYWou
a2FuZHBhbEBpbnRlbC5jb20+OyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmc7DQo+IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IE5hdXRpeWFsLCBBbmtpdCBLIDxh
bmtpdC5rLm5hdXRpeWFsQGludGVsLmNvbT47IEdoaW1pcmF5LCBIaW1hbCBQcmFzYWQNCj4gPGhp
bWFsLnByYXNhZC5naGltaXJheUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0hdIGRy
bS94ZS9oZGNwOiBBZGQgY2hlY2sgdG8gcmVtb3ZlIGhkY3AyIGNvbXBhdGliaWxpdHkNCj4gDQo+
IA0KPiANCj4gDQo+IE9uIDEwLzI0LzIwMjQgNjoyMSBQTSwgS2FuZHBhbCwgU3VyYWogd3JvdGU6
DQo+ID4NCj4gPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPj4gRnJvbTogQ2VyYW9s
byBTcHVyaW8sIERhbmllbGUgPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+DQo+ID4+
IFNlbnQ6IFRodXJzZGF5LCBPY3RvYmVyIDI0LCAyMDI0IDk6MDMgUE0NCj4gPj4gVG86IEthbmRw
YWwsIFN1cmFqIDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT47DQo+ID4+IGludGVsLXhlQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+PiBD
YzogTmF1dGl5YWwsIEFua2l0IEsgPGFua2l0LmsubmF1dGl5YWxAaW50ZWwuY29tPjsgR2hpbWly
YXksIEhpbWFsDQo+ID4+IFByYXNhZCA8aGltYWwucHJhc2FkLmdoaW1pcmF5QGludGVsLmNvbT4N
Cj4gPj4gU3ViamVjdDogUmU6IFtQQVRDSF0gZHJtL3hlL2hkY3A6IEFkZCBjaGVjayB0byByZW1v
dmUgaGRjcDINCj4gPj4gY29tcGF0aWJpbGl0eQ0KPiA+Pg0KPiA+Pg0KPiA+Pg0KPiA+Pg0KPiA+
PiBPbiAxMC8yMi8yMDI0IDEyOjI5IEFNLCBTdXJhaiBLYW5kcGFsIHdyb3RlOg0KPiA+Pj4gQWRk
IGNoZWNrIHRvIHJlbW92ZSBIRENQMiBjb21wYXRpYmlsaXR5IGZyb20gQk1HIGFzIGl0IGRvZXMg
bm90IGhhdmUNCj4gPj4+IEdTQyB3aGljaCBlbmRzIHVwIGNhdXNpbmcgd2FybmluZyB3aGVuIHdl
IHRyeSB0byBnZXQgcmVmZXJlbmNlIG9mDQo+ID4+PiBHU0MgRlcuDQo+ID4+Pg0KPiA+Pj4gRml4
ZXM6IDg5ZDAzMDgwNDgzMSAoImRybS94ZS9oZGNwOiBGaXggY29uZGl0aW9uIGZvciBoZGNwIGdz
YyBjcw0KPiA+Pj4gcmVxdWlyZW1lbnQiKQ0KPiA+Pj4gRml4ZXM6IDg4MzYzMTc3MTAzOCAoImRy
bS9pOTE1L210bDogQWRkIEhEQ1AgR1NDIGludGVyZmFjZSIpDQo+ID4+PiBTaWduZWQtb2ZmLWJ5
OiBTdXJhaiBLYW5kcGFsIDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4NCj4gPj4+IFJldmlld2Vk
LWJ5OiBBbmtpdCBOYXV0aXlhbCA8YW5raXQuay5uYXV0aXlhbEBpbnRlbC5jb20+DQo+ID4+PiBS
ZXZpZXdlZC1ieTogSGltYWwgUHJhc2FkIEdoaW1pcmF5IDxoaW1hbC5wcmFzYWQuZ2hpbWlyYXlA
aW50ZWwuY29tPg0KPiA+Pj4gLS0tDQo+ID4+PiAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2hkY3BfZ3NjLmMgfCAzICsrLQ0KPiA+Pj4gICAgZHJpdmVycy9ncHUvZHJtL3hl
L2Rpc3BsYXkveGVfaGRjcF9nc2MuYyAgICAgIHwgNCArKystDQo+ID4+PiAgICAyIGZpbGVzIGNo
YW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gPj4+DQo+ID4+PiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZGNwX2dzYy5jDQo+
ID4+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRjcF9nc2MuYw0KPiA+
Pj4gaW5kZXggNTU5NjU4NDRkODI5Li4yYzFkMGVlOGNlYzIgMTAwNjQ0DQo+ID4+PiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkY3BfZ3NjLmMNCj4gPj4+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRjcF9nc2MuYw0KPiA+Pj4gQEAg
LTIxLDcgKzIxLDggQEAgc3RydWN0IGludGVsX2hkY3BfZ3NjX21lc3NhZ2Ugew0KPiA+Pj4NCj4g
Pj4+ICAgIGJvb2wgaW50ZWxfaGRjcF9nc2NfY3NfcmVxdWlyZWQoc3RydWN0IGludGVsX2Rpc3Bs
YXkgKmRpc3BsYXkpDQo+ID4+PiAgICB7DQo+ID4+PiAtCXJldHVybiBESVNQTEFZX1ZFUihkaXNw
bGF5KSA+PSAxNDsNCj4gPj4+ICsJcmV0dXJuIERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDE0ICYm
DQo+ID4+PiArCQlESVNQTEFZX1ZFUl9GVUxMKGRpc3BsYXkpICE9IElQX1ZFUigxNCwgMSk7DQo+
ID4+PiAgICB9DQo+ID4+Pg0KPiA+Pj4gICAgYm9vbCBpbnRlbF9oZGNwX2dzY19jaGVja19zdGF0
dXMoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpDQo+ID4+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkveGVfaGRjcF9nc2MuYw0KPiA+Pj4gYi9kcml2ZXJzL2dw
dS9kcm0veGUvZGlzcGxheS94ZV9oZGNwX2dzYy5jDQo+ID4+PiBpbmRleCAyMzE2NzcxMjlhMzUu
LmVmYTM0NDFjMjQ5YyAxMDA2NDQNCj4gPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS94ZS9kaXNw
bGF5L3hlX2hkY3BfZ3NjLmMNCj4gPj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS94ZS9kaXNwbGF5
L3hlX2hkY3BfZ3NjLmMNCj4gPj4+IEBAIC04LDYgKzgsNyBAQA0KPiA+Pj4gICAgI2luY2x1ZGUg
PGxpbnV4L2RlbGF5Lmg+DQo+ID4+Pg0KPiA+Pj4gICAgI2luY2x1ZGUgImFiaS9nc2NfY29tbWFu
ZF9oZWFkZXJfYWJpLmgiDQo+ID4+PiArI2luY2x1ZGUgImk5MTVfZHJ2LmgiDQo+ID4+PiAgICAj
aW5jbHVkZSAiaW50ZWxfaGRjcF9nc2MuaCINCj4gPj4+ICAgICNpbmNsdWRlICJpbnRlbF9oZGNw
X2dzY19tZXNzYWdlLmgiDQo+ID4+PiAgICAjaW5jbHVkZSAieGVfYm8uaCINCj4gPj4+IEBAIC0z
Miw3ICszMyw4IEBAIHN0cnVjdCBpbnRlbF9oZGNwX2dzY19tZXNzYWdlIHsNCj4gPj4+DQo+ID4+
PiAgICBib29sIGludGVsX2hkY3BfZ3NjX2NzX3JlcXVpcmVkKHN0cnVjdCBpbnRlbF9kaXNwbGF5
ICpkaXNwbGF5KQ0KPiA+Pj4gICAgew0KPiA+Pj4gLQlyZXR1cm4gRElTUExBWV9WRVIoZGlzcGxh
eSkgPj0gMTQ7DQo+ID4+PiArCXJldHVybiBESVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAxNCAmJg0K
PiA+Pj4gKwkJRElTUExBWV9WRVJfRlVMTChkaXNwbGF5KSAhPSBJUF9WRVIoMTQsIDEpOw0KPiA+
PiBJIGRvbid0IHRoaW5rIHRoaXMgaXMgdGhlIGNvcnJlY3QgY2hlY2sgb3IgdGhlIGNvcnJlY3Qg
bG9jYXRpb24uIEJNRw0KPiA+PiBkb2VzIHJlcXVpcmUgdGhlIEdTQyBmb3IgSERDUCwgc28gaW50
ZWxfaGRjcF9nc2NfY3NfcmVxdWlyZWQoKSBzaG91bGQNCj4gPj4gc3RpbGwgcmV0dXJuIHRydWU7
IGl0J3MganVzdCB0aGF0IHdlJ3ZlIGRlY2lkZWQgbm90IHRvIHN1cHBvcnQgR1NDIEZXDQo+ID4+
IGxvYWRpbmcgb24gdGhlIHBsYXRmb3JtLCBzbyB3ZSBjYW4ndCBzdXBwb3J0IEhEQ1AyLnguIEFs
c28gbm90ZSB0aGF0DQo+ID4+IHRoZSB0aGlzIG1pZ2h0IGNoYW5nZSBhbmQvb3IgaXQgbWlnaHQg
YXBwbHkgdG8gb3RoZXIgcGxhdGZvcm0gaW4gdGhlDQo+ID4+IGZ1dHVyZSwgc28gYW55IGNoZWNr
IG5lZWRzIHRvIGJlIGRvbmUgYmFzZWQgb24gR1NDIHN1cHBvcnQgYW5kIG5vdA0KPiBwbGF0Zm9y
bS9kaXNwbGF5IElELg0KPiA+Pg0KPiA+PiBJTU8gd2hlbiBpbnRlbF9oZGNwX2dzY19jc19yZXF1
aXJlZCgpIHJldHVybnMgdHJ1ZSwgdGhlIGNhbGxlciBzaG91bGQNCj4gPj4gY2hlY2sgaWYgdGhl
IEdTQyBGVyBpcyBkZWZpbmVkIChvciBpZiB0aGUgR1NDQ1MgaXMgYXZhaWxhYmxlKSBhbmQgaWYN
Cj4gPj4gaXQgaXMgbm90IHJldHVybiB0aGF0IGhkY3AyIGlzIG5vdCBzdXBwb3J0ZWQgZHVlIHRv
IHVubWV0DQo+ID4+IHByZXJlcXVzaXRlcyBhbmQgZmFsbGJhY2sgdG8gMS40IHdpdGhvdXQgcHJp
bnRpbmcgYW55IGVycm9ycy4NCj4gPj4NCj4gPiBIZXJlIGlzIHRoZSB0aGluZyBiZWZvcmUgdGhp
cyBJIHRob3VnaHQgdGhhdCBzaG91bGQgaGF2ZSB3b3JrZWQgdG9vDQo+ID4gYnV0IGFmdGVyIGhk
Y3BfZ3NjX2NzX3JlcXVpcmVkKCkgV2UgY2FsbCBpbnRlbF9oZGNwX2dzY19jaGVja19zdGF0dXMo
KQ0KPiA+IHdoaWNoIGhhcyB0aGUgZm9sbG93aW5nIGNoZWNrDQo+ID4NCj4gPiBpZiAoIWdzYyAm
JiAheGVfdWNfZndfaXNfZW5hYmxlZCgmZ3NjLT5mdykpIHsNCj4gDQo+IFRoaXMgY2hlY2sgc2Vl
bXMgaW5jb3JyZWN0IHRvIG1lLiBTaG91bGRuJ3QgaXQgYmUgYW4gT1IgaW5zdGVhZCBvZiBhbiBB
TkQ/IEl0DQo+IGlzIGFuIE9SIGluIHRoZSBpOTE1IGNvZGUuDQoNClllcyB0aGlzIGNvdWxkIGJl
IGl0IHdpbGwgZmxvYXQgYSBuZXcgdmVyc2lvbg0KDQpSZWdhcmRzLA0KU3VyYWogS2FuZHBhbA0K
DQo+IA0KPiA+ICAgICAgICAgICAgICAgICAgZHJtX2RiZ19rbXMoJnhlLT5kcm0sDQo+ID4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAiR1NDIENvbXBvbmVudHMgbm90IHJlYWR5IGZvciBI
RENQMi54XG4iKTsNCj4gPiAgICAgICAgICAgICAgICAgIHJldHVybiBmYWxzZTsNCj4gPiAgIH0N
Cj4gPg0KPiA+IEFuZCB0aGlzIHNob3VsZCBoYXZlIHJldHVybmVkIGZyb20gaGVyZSBidXQgaXQg
ZG9lcyBub3QgaXQgZ29lcyBhaGVhZA0KPiA+IGFuZCB0cmllcyB0byBnZXQgYSB4ZV9wbV9ydW50
aW1lKCkgV2hpY2ggY2F1c2VzIGl0IHRvIHNob3V0IG91dCBsb3VkDQo+ID4gd2hpY2ggaXMgY3Vy
cmVudGx5IGNhdXNpbmcgYSBsb3Qgb2Ygbm9pc2UgaW4gQ0kNCj4gDQo+IFNlZSBjb21tZW50IGFi
b3ZlIGFib3V0IHBvc3NpYmxlIGlzc3VlLiBCdXQgZXZlbiBpZiB0aGF0IGlzIG5vdCB0aGUgYnVn
LCBpZg0KPiB0aGlzIGZ1bmN0aW9uIHNob3VsZCByZXR1cm4gYW5kIGl0IGlzIG5vdCB0aGVuIHdl
IHNob3VsZCBmaXggdGhpcywgbm90IGhhY2sgdGhlDQo+IGludGVsX2hkY3BfZ3NjX2NzX3JlcXVp
cmVkKCkgZnVuY3Rpb24uDQo+IA0KPiBEYW5pZWxlDQo+IA0KPiA+DQo+ID4gUmVnYXJkcywNCj4g
PiBTdXJhaiBLYW5kcGFsDQo+ID4NCj4gPj4gRGFuaWVsZQ0KPiA+Pg0KPiA+Pj4gICAgfQ0KPiA+
Pj4NCj4gPj4+ICAgIGJvb2wgaW50ZWxfaGRjcF9nc2NfY2hlY2tfc3RhdHVzKHN0cnVjdCBpbnRl
bF9kaXNwbGF5ICpkaXNwbGF5KQ0KDQo=
