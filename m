Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA4FB0A4D9
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jul 2025 15:09:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 386EF10E9C0;
	Fri, 18 Jul 2025 13:09:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RiqU7Toa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03D5310E9C8;
 Fri, 18 Jul 2025 13:09:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752844176; x=1784380176;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=AYHDwwPtMjITS93tdJ19J1FmotYdFGN9EnwCQHKOPbA=;
 b=RiqU7ToaUNLKGW0HVYzEv3QFzGpAjy5b16oSAdLgGrn2uBnq3UKnK8RM
 ujMnVBj47aa5DQMXUm8s+V5uFMJZhKB5d+C4whBxgWjEK16GYDC0E3J+/
 KUiW0lbjcezdKk2kF+6txG6MBWYQf0cma4WJBKK4rTu/772ZDtL1mrgTV
 HtIOqkjy30Bdn6BfDsW7oqOu02hlStmDjli93E1PXP8JAdxKMPbOSQSQb
 8IMLYvLgn1mUgzUX629TErqhtAG8G+glUoMBXkm4dxdZLHxOSa99Kv8ZP
 as7hCv08VgdvClRgxepvWx/uoGYiECKqmVrBakjhf3hmqfSlfcq0U/xEG g==;
X-CSE-ConnectionGUID: TlhFnl08QX+S2yyQYZFHeQ==
X-CSE-MsgGUID: BlKk6HFqSqqCLqdZ+kUGpA==
X-IronPort-AV: E=McAfee;i="6800,10657,11496"; a="55102204"
X-IronPort-AV: E=Sophos;i="6.16,321,1744095600"; d="scan'208";a="55102204"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 06:09:36 -0700
X-CSE-ConnectionGUID: w6LqUFi1TCuq78XCi11FVg==
X-CSE-MsgGUID: 6OCCOVvaRDe05qFrOkcsXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,321,1744095600"; d="scan'208";a="189005840"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 06:09:36 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 18 Jul 2025 06:09:35 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 18 Jul 2025 06:09:35 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.84) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 18 Jul 2025 06:09:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aUMPVsQu/3mStZ3rb664JKsINQYc+hJVG/V3Pd4OHzsJhmsFc08xTzGzufc7ZGZm8gB4H/Zg77Fss8Zs1zkHsdv5LEXSL2Gms/3rb15HjIvdOVFtsBfCDXn7LDEaLe3+Ozlkt4VkL16VnqAARP7LHsWhYIruSuPcqn3WMmjPKx+rEh5lyBbhPIJfMDaFKJoykD7IqYmlT4X/iEeXfBcux3QCI1STWTTBVyAOYCbE9yRQldF91pDPzQAzO7EbTuylcmi3dMV2yKds3alomZC7wSnN6JyCIqJUjQza3dEe7rtgh17G59f73Fw8dAyPJUF7dScHY3rld++E0gb9uyJxAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AYHDwwPtMjITS93tdJ19J1FmotYdFGN9EnwCQHKOPbA=;
 b=H3Ngost74OgtTxm8TCuRRAuYw73nxQNpqmSg2U8MUGrqsZckTQXMTZUYRfa3vXdyQlrmfF+MGxfdR1lfOl4Fkd7y5CRxCH80Rxg85nW89tg3yI9ZXckxQWOOpsk38+P46cNQLARRT5PHiKMdNpkmeBM1Ck0pf4GJCBKvFrw6YyQqWFwJxFKxn1LpqPo5wtPumVwxVJNiKZ3qYH5AB2YoYqFwnahXRI5h9gbWyryavNJLrIL4060SDKpsyF/OQtY+F5Jy4yYN2GAKYAVNh7QGwbLZ+q+e51rSDs3B558QNQQq+IqVyC+YD6lNS9b7+sGfGxKJhuSVwFW4AsxhaxQVOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS0PR11MB8000.namprd11.prod.outlook.com (2603:10b6:8:128::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8922.39; Fri, 18 Jul 2025 13:08:53 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.8880.021; Fri, 18 Jul 2025
 13:08:52 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Sousa, 
 Gustavo" <gustavo.sousa@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/display: Write PHY_CMN1_CONTROL only when using
 AUXLess ALPM
Thread-Topic: [PATCH] drm/i915/display: Write PHY_CMN1_CONTROL only when using
 AUXLess ALPM
Thread-Index: AQHb9uSw/8wG7IbC4Emrndc4ZWucjbQ2UHaAgAEVpACAAE6MAIAAJOkAgAAC3YA=
Date: Fri, 18 Jul 2025 13:08:52 +0000
Message-ID: <3f3fb0bfadf6096b6e5c9a4137a8a96f56086113.camel@intel.com>
References: <20250717063259.440086-1-jouni.hogander@intel.com>
 <175275909975.1809.8747168482147911326@intel.com>
 <bac5a94acb4cc814a56855be54c2b5e69ab573fe.camel@intel.com>
 <bd7a211e9a56b22673cc8b1d66541bcbea7d3b9f.camel@intel.com>
 <175284351608.1809.17923503412794799848@intel.com>
In-Reply-To: <175284351608.1809.17923503412794799848@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS0PR11MB8000:EE_
x-ms-office365-filtering-correlation-id: e9c8b48f-d4d7-4c21-52a5-08ddc5fc3e92
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|10070799003|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?OHFJcmVmL3ZHaW1XcDExeVVNQkhvR0pJK3NMV2Z4YWF5ZjZzZUVHRFBySTFl?=
 =?utf-8?B?V092QVNFd0Q2ZmY0R1RwNUtiZVdXUkJJNUxWcmM4aTZWN1NlV1lIZnF1NWNY?=
 =?utf-8?B?dVA0Mldxc1diUlBRM0drQ04rV2hrRFVFT1BnMTI2K0x6THQ2TTBpNWZqV2JJ?=
 =?utf-8?B?TUphejFDNTAvOWZaZXhaRk9FTm1rVnFNUzFXVjNvQjc4Zk5ub1ZUZmNXeDc2?=
 =?utf-8?B?VklxNXRGRWUxVDNITEN0ZkFLUWpqL3NpeC9YYmJacnhaaTVwNVJlVWFXQVR2?=
 =?utf-8?B?bEhhbXZJWjl3azNFNEtLOFYydHhPT0ErV2VZN0hJTUluZ3c2KzQzM1lPZmdk?=
 =?utf-8?B?MzFPYnJ1cjlVajdnWlhNMy9SUWNocld4a04xZ09aTkwvcUw4K0FneTNxejBu?=
 =?utf-8?B?YkMrNm9aRVdrb2tHVGJWV3FYVjJLRFdXb0FaMTBuNWxsNldvWWZTVFdCWjRV?=
 =?utf-8?B?QnpnNTQrUlE2UnBtYUVoaUJISlkzQkMvaWtYUHIvWHltV1VXQ2hUTGpyd2Fr?=
 =?utf-8?B?NWV1SmkzNXU3UHd0aVQyQlNrbjFQSGhPZ3NiazJBa0pRTkJKamgzVW54aWhB?=
 =?utf-8?B?OEJxMy9jajdnR0s1akRJOHhkZnF0M1lLVjhxWGRUeXlRUXRvRlViOXg0ZmVn?=
 =?utf-8?B?VjZ6ZGx4bjVvTGxiZVY3d290bmhxOTJpUTFwUjJTQnBNZW1ubmx3MnR6Z0RB?=
 =?utf-8?B?cStQbTJ0NHc3SllXTDJSVnM3VHRLNkZma1BFSTRFZ2xoWnpuanlXSXkzcCsr?=
 =?utf-8?B?aDhpMlZOUnVsSHJXRzRSaC9ES2k3aG15a2lKd3d4MEtHMW45ZFFkU2xjWjdR?=
 =?utf-8?B?RGNGTjNncnZqR3pkZzJGYXl3b2NmUWlVTG1hZHN4ZDdXQmVIOTRSSW5hU2dk?=
 =?utf-8?B?aHVVUkpSM2VlSnBlMVlrTGQ0bVNJTlN5MjBQWVkwRHhjQU9RYUV4SCtWMmRl?=
 =?utf-8?B?S0hlVHlMMWtCZEVoK05yUVcxZERIdHJVN0tyUExJWGFadGNiVVVGVnZZVVgr?=
 =?utf-8?B?SVIyZ2s3YjJTeWNxUDhkREdiSmFWVmpUdm83Y0phTGUyWlpkU1B5cnB1M2hX?=
 =?utf-8?B?eFR1VXlMWHMveUlXMERRQmtVWXFXS2ZQUTFKUHlKUW9ER25aOElUb0k0TTFY?=
 =?utf-8?B?eVVFV0JsUTltYjhWcWNBaXRVaXg4SHBFT2ZHS3llbXZWZWNYTEdmYVpRY0Iv?=
 =?utf-8?B?TUdaYzkranpreVN6WjhhV1llbDBEOERTQ1ZPeXpQeFBORzExaWFBUzlnYlpa?=
 =?utf-8?B?cVBrcHdzcWZFemJJdVZ6dnlLVDd5R0ZnMXZNTXczS0N1cnNZcVlPRjMyeVJQ?=
 =?utf-8?B?RGd3UGgrSGZ6eHlhTlRqQ09qZXhGenJOQ2FQTGxpSXdYOFhsQUp5UXphajh4?=
 =?utf-8?B?Q2ptL2E3Z2YvRTR6ZU52a2hVMndnYXZiWGtUcmU5T3pRODdKVWlhbUlaT1Ax?=
 =?utf-8?B?bzhHL0VkQk5HdXBhQlgveWNQNUJ5ck5zN1FBaGVXYWVRa1NhSG5xaXN2V01H?=
 =?utf-8?B?NjA1b2dqOVpteDAzekI1OTFEOVhUekFsaythQ0ZybGxJRzIwaGlpMlBtVTBB?=
 =?utf-8?B?bE95Z2VuOXg4enlQbXV0aTBoZGViN0k5RUZoRjdEZTBmV3Z4WkRBaXc1TFEz?=
 =?utf-8?B?MnhJQ0NyQVJ1MktSQktUcU4rOUNneFQrMzBZcGJhMUZLL21oN0l6eVFheDF1?=
 =?utf-8?B?MkhTa21KVFcvK0IydU9jTHY4akd3bUlWeS9KTmU4aEZaZm1qSjdTdytLMnht?=
 =?utf-8?B?czR0TlFRbVhJV0MyMktUZjI2alNUQ3lmUDFROCtyV2hsYzBIVWMrRUR5V0Vj?=
 =?utf-8?B?a0tmUmVDVFJuNzVlTWtHRWZmTzV0aUFpYVpnMVlMeDlmc25xT0V3WnAwZVpn?=
 =?utf-8?B?TUlXVXdrRGFPWUR2bUlhVEdBRWh2Uy9HeElNSkNvcW1ZY3lOUmxOeE9mNDg0?=
 =?utf-8?B?MFM3UEFzd1V6dm50V3dld0k3RDQyalNvZTkxcXdwUXdSQk9GNzdvbDNWWVkx?=
 =?utf-8?B?VlVRdmZqSG53PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(10070799003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QjV1YjNEY1RteEdKczE2WU40SllVMG1NUXM0Z2dkMFB4UVpNanU1M011VFBY?=
 =?utf-8?B?a1dNL1FOWUxTVzRqN3FGQ0xERktpTkNieXFXSHhvU0pTQ0I2K3ZsZjlaVVdi?=
 =?utf-8?B?QWd4NUR2MWQ4amdaSDZ3enhiVk9pRUpDMnh2eTQ5blBVc0J4b1pMMm9ZZlhN?=
 =?utf-8?B?MnpzZFViM3NWeTRIZEorTTBsQ3BYelRaTzJvOUV0QTJnYUkwNDYzUW5WbFlZ?=
 =?utf-8?B?bWZFL1pQR0RobGI3SFIzVWFUTHdiN3UrZk1neE5FQjZtdXhzVVJjd3hzRThE?=
 =?utf-8?B?VGdmT0FxenNubE5PUjQ1YXE4bWFnVVBkQ2JIdFczNEp3TEVQQ1dmQUdFZGlS?=
 =?utf-8?B?b1lkSzh6NmtocEVZYzBubmhzN3RJMWdFeDhDd3pPUmdYaFJ0YTZKQVRHdVAw?=
 =?utf-8?B?ZnV1R1FHT1dTcXgwWFVqWTg2V1BrTW5jMXJSWVNkSXFFVkMxeWQ5SW1WV0JH?=
 =?utf-8?B?OWxWT3ZLZW5QajB2MTIrNzdQbCtjYW9sUkl5ajZIb2s1cXNyUERMZVlhTkdD?=
 =?utf-8?B?bisyMFNvcks3czFydWx1Q0VQVlNPdlA5UkFkdWZVT3BEZkFlVk10OEhzbU5t?=
 =?utf-8?B?VHpNbitrWVJvSTd6dW9ZSmIxUCtWTEEwd3VKdjE4UmwwMDNHdTNSQVU1TVJS?=
 =?utf-8?B?bENocGczUGk2MmpwN29OQ1AyUHZTZU5jaWhDWmF0VS92N2huUm5yK29kcXlS?=
 =?utf-8?B?RjRqYVU4YkV3YnZkUXByYlRuQmFuTUprNzBDY1hTRThmSTFORnlaUTZ6UmJO?=
 =?utf-8?B?R2xvaUNaQmNCaXcwR3A0aFJUbmplTGxReE9ldHJtdFNrcGRvM2JqRXNsZzZx?=
 =?utf-8?B?M3hhTmIwSWNKVUJPQzVjKzZqUndDUzdDWkN6WjdyVTNDWVpwZ2lNV1VPV2pq?=
 =?utf-8?B?WDVmQmMwdEQ2aDN4UmRUaWJqTENOR0VwWGFURFk5ajVzNWZNdVFIeFBVRXQx?=
 =?utf-8?B?NGMzUXNEL1hHa3BDMDBDY1NSRDRhQlp4VGFMNHVRajlHc2tFSnRJcktWc3RS?=
 =?utf-8?B?WlJBUXppcGRxQkxCZTRMWVNZbmVMYWIwS2tFYnhJZmR6VjNhV2hoa3JQbStU?=
 =?utf-8?B?bHJMQk5jVTNZcjlDOHBEUmE3RnM4Nm5kdGRrb0JONThtQ3M4YXVUeTBidDFp?=
 =?utf-8?B?dy9OUGdaZ1JJRGxYZEtMZnQwVEtjM3V3bXp3Y29qVi83bml1ZjFQRUVlQ0pF?=
 =?utf-8?B?UzBmaXI1NGVjNGswSWF4UUxXcjJDKzVUbFhCbDcrL3lGVFR3Tnl3SzhKbVRj?=
 =?utf-8?B?RS92NHdlK0FhbHBiNkJ6MVZNdytjbXJJcDljbWE2U1RTT1RMSHluNmdJQ0lG?=
 =?utf-8?B?cG9Db2tDUFFKcUcxVjdnVjhpZzVwMEZmOVdZQkhpRnZNQ2tDY2xNOGNVR1Zu?=
 =?utf-8?B?c2JUeVZlRGtDMDVyVE5RbDJQYmFLQ2xBdjAzOTJ4MDU5R201ejJpQ3l3TFVv?=
 =?utf-8?B?NFplalp2VFZnRzRISFU0bkdQWUpwK2o0NGdBN1hvRjhuaTg0RGdqMCtEZi91?=
 =?utf-8?B?YVRxMkZDR0ZBc1o5NFl3VjJxUFdFMFhEb0I4Y0hYeWxNQjZ6OE5VQ1dyb0NS?=
 =?utf-8?B?c2ZlSGh1aE13S25UZ0x5UXhNUFNqV3NYUDQ2aW5CMG1wTHpCaVF2SHZ4SDBn?=
 =?utf-8?B?THM2L3BPVkhjS3lHSkdYUHU0Ky9pTERFaTdFWTB5bFh3d3ViMHJNK1BpVzIv?=
 =?utf-8?B?VmJjOEhFY0hISFg3Z2o0bGRpbllBNzhyZmIzVUpZMmZ1cUdQUytZWWdrUnlX?=
 =?utf-8?B?blphR213V2xzVjVid3BkZWlaQ2dqYkxOcTJ1TU9SdFdhalZyU2dTcnJDb1ZB?=
 =?utf-8?B?MFJzWGxtZzJoczlJTjZiZkJxanZLRXBiUFlBWlRRN0RCaFQ3U0VBNDJVL1hX?=
 =?utf-8?B?UExnenNJUlkzL3JzaTB2c3ZaM1dJbWM0WFJqNFo3TlZVTTZnUVhQUkorSGtL?=
 =?utf-8?B?L0Z3YjZpV1BSN09la1ZSOGxPN0Z0RjVhQTd2M1Y1dzFnQk1jUVEzSmJMZG5j?=
 =?utf-8?B?VEQrSmxOUEhwQ3cxVmdwT3d1dEExK1J3SUJmc004dVN0OFlLZk1BSUVKWFl0?=
 =?utf-8?B?cU5RRitpdTBldS81Z0gyMDhSSFlkQ1ZsbitwUGRYby9RV0NKdFR0c040ZDFr?=
 =?utf-8?B?V0hsOGdIZDdmUURyTUJ2VXpTNHJNWGwveURxQmwvd0krMmV3NUQ5MXUrZlMz?=
 =?utf-8?B?L0dTelZZRjFBYUNSUCtmRC84Rk5SNUFUUE43ZXFFV0FTTUgwVEhjdXA1Y3pC?=
 =?utf-8?B?aXBleFZJNUl1bStBUWh3TFVIaG53PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <46491B4C53CD3E42821719B3B8C22F5A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e9c8b48f-d4d7-4c21-52a5-08ddc5fc3e92
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2025 13:08:52.8451 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zndfi4d0BNJkH3TJqQ2xxDTC/Bbq8xQIfgxg0xxEmpPCP6O8e4zHtTFQ3ofPjMMK/LhpD+eoFsxKdEu5PfiO1Hn3lYRb8GE+nwIKEvUOSvI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8000
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

T24gRnJpLCAyMDI1LTA3LTE4IGF0IDA5OjU4IC0wMzAwLCBHdXN0YXZvIFNvdXNhIHdyb3RlOg0K
PiBRdW90aW5nIEhvZ2FuZGVyLCBKb3VuaSAoMjAyNS0wNy0xOCAwNzo0NjozMS0wMzowMCkNCj4g
PiBPbiBGcmksIDIwMjUtMDctMTggYXQgMDk6MDUgKzAzMDAsIEhvZ2FuZGVyLCBKb3VuaSB3cm90
ZToNCj4gPiA+IE9uIFRodSwgMjAyNS0wNy0xNyBhdCAxMDozMSAtMDMwMCwgR3VzdGF2byBTb3Vz
YSB3cm90ZToNCj4gPiA+ID4gUXVvdGluZyBKb3VuaSBIw7ZnYW5kZXIgKDIwMjUtMDctMTcgMDM6
MzI6NTgtMDM6MDApDQo+ID4gPiA+ID4gV2UgYXJlIHNlZWluZyAiZG1lc2ctd2Fybi9hYm9ydCAt
ICpFUlJPUiogUEhZICogZmFpbGVkIGFmdGVyDQo+ID4gPiA+ID4gMw0KPiA+ID4gPiA+IHJldHJp
ZXMiDQo+ID4gPiA+ID4gc2luY2Ugd2Ugc3RhcnRlZCBjb25maWd1cmluZyBMRlBTIHNlbmRpbmcu
IEFjY29yZGluZyB0byBCc3BlYw0KPiA+ID4gPiA+IENvbmZpZ3VyaW5nDQo+ID4gPiA+ID4gTEZQ
UyBzZW5kaW5nIGlzIG5lZWRlZCBvbmx5IHdoZW4gdXNpbmcgQVVYTGVzcyBBTFBNLiBUaGlzDQo+
ID4gPiA+ID4gcGF0Y2gNCj4gPiA+ID4gPiBhdm9pZHMNCj4gPiA+ID4gPiB0aGVzZSBmYWlsdXJl
cyBieSBjb25maWd1cmluZyBMRlBTIHNlbmRpbmcgb25seSB3aGVuIHVzaW5nDQo+ID4gPiA+ID4g
QVVYTGVzcw0KPiA+ID4gPiA+IEFMUE0uDQo+ID4gPiA+IA0KPiA+ID4gPiBIbS4uLiBCdXQgdGhl
biB3aXRoIHRoaXMgcGF0Y2ggd2UgYXJlIG1pc3Npbmcgd3JpdGluZyB6ZXJvIHRvDQo+ID4gPiA+
IHRoYXQNCj4gPiA+ID4gYml0DQo+ID4gPiA+IHdoZW4gbmVjZXNzYXJ5LCBubz8NCj4gPiA+IA0K
PiA+ID4gVGhhdCBzaG91bGRuJ3QgYmUgbmVjZXNzYXJ5IGFzIDAgaXMgdGhlIHJlc2V0IHZhbHVl
Lg0KPiA+ID4gDQo+ID4gPiA+IA0KPiA+ID4gPiBDb3VsZCB0aGUgdGltZW91dHMgYmUgaGFwcGVu
aW5nIGJlY2F1c2UgaW50ZWxfY3gwX3JtdygpIGlzDQo+ID4gPiA+IGdldHRpbmcNCj4gPiA+ID4g
Y2FsbGVkIHdpdGhvdXQgY2FsbGluZw0KPiA+ID4gPiBpbnRlbF9jeDBfcGh5X3RyYW5zYWN0aW9u
X2JlZ2luKCkvaW50ZWxfY3gwX3BoeV90cmFuc2FjdGlvbl9lbmQNCj4gPiA+ID4gKCk/DQo+ID4g
PiANCj4gPiA+IEkgd2Fzbid0IGF3YXJlIGFib3V0IHRoZXNlLiBJIHdpbGwgdHJ5IHRoZW0uDQo+
ID4gDQo+ID4gSSB0ZXN0ZWQgdGhpcyBhbmQgaXQgZG9lc24ndCBoZWxwOg0KPiANCj4gT2theS4g
V2VsbCwgSSBzdGlsbCBmaW5kIGl0IHdlaXJkIHRoYXQgdGhpcyB3b3VsZCB0aW1lIG91dCBmb3Ig
b25lDQo+IGNhc2UNCj4gYW5kIG5vdCB0aW1lIG91dCBmb3IgYW5vdGhlci4uLiBEbyB3ZSBoYXZl
IGNvbmZpcm1hdGlvbiB0aGF0IHRoaXMgaXMNCj4gd29ya2luZyBmaW5lIGZvciB0aGUgQVVYLUxl
c3MgQUxQTSBjYXNlPw0KDQpJIGNhbiByZXByb2R1Y2UgdGhpcyBpc3N1ZSBvbmx5IHdpdGggc2V0
dXAgaGF2aW5nIHR3byA0ayBtb25pdG9ycyBpbiBEUA0KcG9ydHMgYW5kIHRoZW4gb25lIGVEUCBw
YW5lbC4gVGhlIGlzc3VlIGlzIHRyaWdnZXJlZCBvbiBEUCBwb3J0LiBJLmUuDQpzb21ldGhpbmcg
dGhhdCBkb2Vzbid0IGhhdmUgQVVYLUxlc3MgQUxQTS4gQXMgaXQncyBjbGVhcmx5IHVubmVjZXNz
YXJ5DQp0byB3cml0ZSB0aGlzIHJlZ2lzdGVyIG9uIHRoYXQgZmFpbGluZyBwb3J0IGFuZCBub3Qg
bWVudGlvbmVkIGluIEhBUyBJDQp3YXMgdGhpbmtpbmcganVzdCByZW1vdmluZyB0aGUgZmFpbGlu
ZyB3cml0ZSB3b3VsZCB3b3JrIGluIHRoaXMgY2FzZS4NCg0KPiANCj4gSSB3b25kZXIgaWYgd2Ug
c2hvdWxkIHJhdGhlciBkbyB0aGlzIHN0ZXAgdG9nZXRoZXIgd2l0aA0KPiBpbnRlbF9jMTBfcGxs
X3Byb2dyYW0oKS4gTm90ZSB0aGF0LCBmb3IgQzEwLCB0aGVyZSBpcyBhbHNvIGEgcmVxdWlyZWQN
Cj4gc3RlcCB0byBzZXQgUEhZX0MxMF9WRFJfQ09OVFJPTDFbMl0gYmVmb3JlIGFjY2Vzc2luZyB0
aGUgbXNnYnVzLg0KDQpDb25maWd1cmluZyB0aGlzIGlzIGEgb3duIHN0ZXAgbGlzdGVkIGluIEhB
UyAoNi5rLmlpKS4gSSBjYW4gdHJ5IGlmDQp0aGlzIHdvcmtzLiBJIGhhdmUgbm8gaWRlYSBpZiBp
dCdzIG9rIHRvIG1vdmUgaXQuDQoNCj4gDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+ID4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiA+IGluZGV4IGVkOGU2NDBiOTZiMC4u
ZTZmZjdmMDdiMmUzIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY3gwX3BoeS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jeDBfcGh5LmMNCj4gPiBAQCAtMzIzOSw2ICszMjM5LDcgQEAgdm9pZCBpbnRlbF9s
bmxfbWFjX3RyYW5zbWl0X2xmcHMoc3RydWN0DQo+ID4gaW50ZWxfZW5jb2RlciAqZW5jb2RlciwN
Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ICpjcnRjX3N0YXRl
KQ0KPiA+IHsNCj4gPiDCoMKgwqDCoMKgwqAgc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkg
PSB0b19pbnRlbF9kaXNwbGF5KGVuY29kZXIpOw0KPiA+ICvCoMKgwqDCoMKgwqAgaW50ZWxfd2Fr
ZXJlZl90IHdha2VyZWY7DQo+ID4gwqDCoMKgwqDCoMKgIHU4IG93bmVkX2xhbmVfbWFzayA9IGlu
dGVsX2N4MF9nZXRfb3duZWRfbGFuZV9tYXNrKGVuY29kZXIpOw0KPiA+IMKgwqDCoMKgwqDCoCBi
b29sIGVuYWJsZSA9DQo+ID4gaW50ZWxfYWxwbV9pc19hbHBtX2F1eF9sZXNzKGVuY190b19pbnRl
bF9kcChlbmNvZGVyKSwNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgY3J0Y19zdGF0ZSk7DQo+ID4gQEAgLTMyNDcsNiArMzI0OCw4IEBAIHZvaWQgaW50ZWxfbG5s
X21hY190cmFuc21pdF9sZnBzKHN0cnVjdA0KPiA+IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+
ID4gwqDCoMKgwqDCoMKgIGlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA8IDIwKQ0KPiA+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuOw0KPiA+IA0KPiA+ICvCoMKgwqDCoMKgwqAg
d2FrZXJlZiA9IGludGVsX2N4MF9waHlfdHJhbnNhY3Rpb25fYmVnaW4oZW5jb2Rlcik7DQo+ID4g
Kw0KPiA+IMKgwqDCoMKgwqDCoCBmb3IgKGkgPSAwOyBpIDwgNDsgaSsrKSB7DQo+ID4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnQgdHggPSBpICUgMiArIDE7DQo+ID4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCB1OCBsYW5lX21hc2sgPSBpIDwgMiA/IElOVEVMX0NYMF9MQU5F
MCA6DQo+ID4gSU5URUxfQ1gwX0xBTkUxOw0KPiA+IEBAIC0zMjU5LDYgKzMyNjIsOCBAQCB2b2lk
IGludGVsX2xubF9tYWNfdHJhbnNtaXRfbGZwcyhzdHJ1Y3QNCj4gPiBpbnRlbF9lbmNvZGVyICpl
bmNvZGVyLA0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGVuYWJsZSA/IENPTlRST0wwX01BQ19UUkFOU01JVF9MRlBTIDoNCj4gPiAw
LA0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIE1CX1dSSVRFX0NPTU1JVFRFRCk7DQo+ID4gwqDCoMKgwqDCoMKgIH0NCj4gPiArDQo+
ID4gK8KgwqDCoMKgwqDCoCBpbnRlbF9jeDBfcGh5X3RyYW5zYWN0aW9uX2VuZChlbmNvZGVyLCB3
YWtlcmVmKTsNCj4gPiB9DQo+ID4gDQo+ID4gRG8geW91IHRoaW5rIEkgc2hvdWxkIHN0aWxsIGFk
ZCB0aGlzIGNoYW5nZSBhcyB3ZWxsPw0KPiANCj4gSWYgd2UgYXJlIHN0aWxsIGdvaW5nIHdpdGgg
dGhpcyBmdW5jdGlvbiBpbnN0ZWFkIG9mIGRvaW5nIGl0IGluDQo+IGludGVsX2MxMF9wbGxfcHJv
Z3JhbSgpLCB0aGVuIHllcy4NCj4gDQo+IC0tDQo+IEd1c3Rhdm8gU291c2ENCj4gDQo+ID4gDQo+
ID4gPiANCj4gPiA+IEJSLA0KPiA+ID4gDQo+ID4gPiBKb3VuaSBIw7ZnYW5kZXINCj4gPiA+IA0K
PiA+ID4gPiANCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBGaXhlczogOWRjNjE5NjgwZGU0ICgiZHJt
L2k5MTUvZGlzcGxheTogQWRkIGZ1bmN0aW9uIHRvDQo+ID4gPiA+ID4gY29uZmlndXJlDQo+ID4g
PiA+ID4gTEZQUyBzZW5kaW5nIikNCj4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7Zn
YW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiA+ID4gPiAtLS0NCj4gPiA+ID4g
PiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYyB8IDExICsrKysr
LS0tLS0tDQo+ID4gPiA+ID4gMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNiBkZWxl
dGlvbnMoLSkNCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPiA+ID4gPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+ID4gPiA+ID4gaW5kZXggZWQ4ZTY0
MGI5NmIwLi45Y2ZjMzE4N2FlYWIgMTAwNjQ0DQo+ID4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPiA+ID4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiA+ID4gPiA+IEBAIC0zMjM5
LDE0ICszMjM5LDE0IEBAIHZvaWQNCj4gPiA+ID4gPiBpbnRlbF9sbmxfbWFjX3RyYW5zbWl0X2xm
cHMoc3RydWN0DQo+ID4gPiA+ID4gaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gPiA+ID4gPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGNvbnN0IHN0cnVjdA0KPiA+ID4gPiA+IGludGVsX2NydGNfc3RhdGUNCj4gPiA+ID4g
PiAqY3J0Y19zdGF0ZSkNCj4gPiA+ID4gPiB7DQo+ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqAgc3Ry
dWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPQ0KPiA+ID4gPiA+IHRvX2ludGVsX2Rpc3BsYXko
ZW5jb2Rlcik7DQo+ID4gPiA+ID4gLcKgwqDCoMKgwqDCoMKgIHU4IG93bmVkX2xhbmVfbWFzayA9
DQo+ID4gPiA+ID4gaW50ZWxfY3gwX2dldF9vd25lZF9sYW5lX21hc2soZW5jb2Rlcik7DQo+ID4g
PiA+ID4gLcKgwqDCoMKgwqDCoMKgIGJvb2wgZW5hYmxlID0NCj4gPiA+ID4gPiBpbnRlbF9hbHBt
X2lzX2FscG1fYXV4X2xlc3MoZW5jX3RvX2ludGVsX2RwKGVuY29kZXIpLA0KPiA+ID4gPiA+IC3C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoA0KPiA+ID4gPiA+IGNydGNf
c3RhdGUpOw0KPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoCB1OCBvd25lZF9sYW5lX21hc2s7DQo+
ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqAgaW50IGk7DQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gLcKg
wqDCoMKgwqDCoMKgIGlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA8IDIwKQ0KPiA+ID4gPiA+ICvC
oMKgwqDCoMKgwqDCoCBpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPCAyMCB8fA0KPiA+ID4gPiA+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgDQo+ID4gPiA+ID4gIWludGVsX2FscG1faXNfYWxwbV9h
dXhfbGVzcyhlbmNfdG9faW50ZWxfZHAoZW5jb2RlciksDQo+ID4gPiA+ID4gY3J0Y19zdGF0ZSkp
DQo+ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybjsNCj4gPiA+
ID4gPiANCj4gPiA+ID4gPiArwqDCoMKgwqDCoMKgwqAgb3duZWRfbGFuZV9tYXNrID0NCj4gPiA+
ID4gPiBpbnRlbF9jeDBfZ2V0X293bmVkX2xhbmVfbWFzayhlbmNvZGVyKTsNCj4gPiA+ID4gDQo+
ID4gPiA+IFRoaXMgb3B0aW1pemF0aW9uIGNvdWxkIGJlIG9uIGl0J3Mgb3duIHBhdGNoLg0KPiA+
IA0KPiA+IE9rLCBtYXliZSBJIGxlYXZlIHRoYXQgb3V0IG9yIGFkZCBvd24gcGF0Y2guDQo+ID4g
DQo+ID4gQlIsDQo+ID4gDQo+ID4gSm91bmkgSMO2Z2FuZGVyDQo+ID4gDQo+ID4gDQo+ID4gPiA+
IA0KPiA+ID4gPiAtLQ0KPiA+ID4gPiBHdXN0YXZvIFNvdXNhDQo+ID4gPiA+IA0KPiA+ID4gPiA+
IMKgwqDCoMKgwqDCoMKgIGZvciAoaSA9IDA7IGkgPCA0OyBpKyspIHsNCj4gPiA+ID4gPiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50IHR4ID0gaSAlIDIgKyAxOw0KPiA+ID4gPiA+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1OCBsYW5lX21hc2sgPSBpIDwgMiA/IElO
VEVMX0NYMF9MQU5FMCA6DQo+ID4gPiA+ID4gSU5URUxfQ1gwX0xBTkUxOw0KPiA+ID4gPiA+IEBA
IC0zMjU2LDggKzMyNTYsNyBAQCB2b2lkIGludGVsX2xubF9tYWNfdHJhbnNtaXRfbGZwcyhzdHJ1
Y3QNCj4gPiA+ID4gPiBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiA+ID4gPiA+IA0KPiA+ID4g
PiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnRlbF9jeDBfcm13KGVuY29kZXIs
IGxhbmVfbWFzaywNCj4gPiA+ID4gPiBQSFlfQ01OMV9DT05UUk9MKHR4LCAwKSwNCj4gPiA+ID4g
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIENPTlRST0wwX01BQ19UUkFOU01JVF9MRlBTLA0KPiA+ID4gPiA+IC3CoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVuYWJsZSA/DQo+
ID4gPiA+ID4gQ09OVFJPTDBfTUFDX1RSQU5TTUlUX0xGUFMNCj4gPiA+ID4gPiA6IDAsDQo+ID4g
PiA+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgTUJfV1JJVEVfQ09NTUlUVEVEKTsNCj4gPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBDT05UUk9MMF9NQUNf
VFJBTlNNSVRfTEZQUywNCj4gPiA+ID4gPiBNQl9XUklURV9DT01NSVRURUQpOw0KPiA+ID4gPiA+
IMKgwqDCoMKgwqDCoMKgIH0NCj4gPiA+ID4gPiB9DQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gLS0g
DQo+ID4gPiA+ID4gMi40My4wDQo+ID4gPiA+ID4gDQo+ID4gPiANCj4gPiANCg0K
