Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7D1ABE168
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 18:59:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AB2D10E5BB;
	Tue, 20 May 2025 16:59:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U0jyrppr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A74D110E5C0;
 Tue, 20 May 2025 16:59:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747760365; x=1779296365;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=+Ic68mOKIZN5DiV1uwSlyWgLFzP8/HlgECnoqIjzrv4=;
 b=U0jyrppruapSZ5w5UMKMlKkQ+EpWJuEBTueV+OKBmwVr1IU33bS9uhly
 D23xLXW8tdC8c+Ej6pllr/E8ZslnEtTIO7lSn0LHPTvGQ+hiaTmyQ+fkh
 3bsyfgYtSuN5vTacmaQ03I91P3eLPAThf0Ams5xsMZJ6L3gCfH1Slsypv
 YDKtKtsE+ayux9tGfYSQnRKwhS8wJzwK+uBpHc23MsaWDFdbQz9jnVAxZ
 gtt6QEjHOTT/2L4fQYjfBFnNk464pBGwVCZmf3tOyLU6litMBNEZPQCd0
 f3JQBD81PfEeTtEa5NSws3dfU03rTVLBBkoWUjTojSaRvFe+nG4wODdeG g==;
X-CSE-ConnectionGUID: i0IYBWiUQuOFw2nji13B9g==
X-CSE-MsgGUID: Lv/m57G+Sryq6HMNiwQVeg==
X-IronPort-AV: E=McAfee;i="6700,10204,11439"; a="37323438"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="37323438"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 09:59:24 -0700
X-CSE-ConnectionGUID: gp1beA8zR9+1w1i7wETQGg==
X-CSE-MsgGUID: qjJyxUAbTvmRKlZgJjZSSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="163040250"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 09:59:24 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 20 May 2025 09:59:23 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 20 May 2025 09:59:23 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 20 May 2025 09:59:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R5ncJpdhueYkGfCehCvPseBNwDS2PcX7RMISw73BWXUQjfbRLEhDrmy3+6HO+fI+ocg/bhqEs8h2S/Ru1rIwCi6vx3vJJizv+0naL8gV129uJK0yBLnHJSIu7aO9W9sBTZQZj789Db8896JoBTsHjdO+C1R1HUCML1lSphL3WTuEQuVla65uDso5CEUIWC72+tooeyysjMp/urk4gKoXtyUq0K/c1jI8xEW4+TGXJY+RtGTb/Nnbz0H1BDE9FFKCgUR6mhHQ1G8CKqHjzUVFRw2+yFVzsVHfOyW7zOOH0bwSyZP5I5gOYVrfHnbo7D8sPu+5QC4me/FIB3MXSJoqyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+Ic68mOKIZN5DiV1uwSlyWgLFzP8/HlgECnoqIjzrv4=;
 b=jINj05xODTq3DfJkfGNzMgCmEW5dQfDMqxv2HBwOKbB3iTX//QUOi9RGVcPKPGiCn2l7pgv0DGjmlkVZf0vzIUmEwUT5KgdGBuVBrQKxaMUaD72nk28+dUyicg2Q8ALVga0DtnmBChxXLKr3QqyrcywTnR+eUoJeyoEDbuumrbftnc+rGYeaNfJCezz1HrCNJu3cIgz1VVZR10JcV7D2FAn9VXf0fX82B5b+ZbMcaHMbB+IGCZzBecV6oROyw7SGIGoW9IMfnjZSZI2yXeqfv0/u3O1gEZV1R58lk/Se54qWsMPr+VS4a0LK0in84SsReSJyGVufsK7lJw2Mp2hQwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ0PR11MB6741.namprd11.prod.outlook.com (2603:10b6:a03:47a::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.30; Tue, 20 May
 2025 16:59:15 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8722.027; Tue, 20 May 2025
 16:59:15 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 07/11] drm/i915/alpm: Move port alpm configuration
Thread-Topic: [PATCH 07/11] drm/i915/alpm: Move port alpm configuration
Thread-Index: AQHbu0CJIkckHdd2tkSgsbFAOJx3sbPbVOSAgACFoYA=
Date: Tue, 20 May 2025 16:59:15 +0000
Message-ID: <1072d68a94727d7b7e7a067f9830ca58b5ef4aff.camel@intel.com>
References: <20250502085902.154740-1-jouni.hogander@intel.com>
 <20250502085902.154740-8-jouni.hogander@intel.com>
 <eae1ec28-109a-41c6-a17e-3a45b50e6a0e@intel.com>
In-Reply-To: <eae1ec28-109a-41c6-a17e-3a45b50e6a0e@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ0PR11MB6741:EE_
x-ms-office365-filtering-correlation-id: 99cee412-595c-4a89-bc37-08dd97bfa700
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|376014|1800799024|366016|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?QXZDVnY0R250MDlXa0w2ZEtRRVV1K2lPUzhRUEF1MTlRZkJLWmZWNlV2SU5p?=
 =?utf-8?B?YksxUituRzkxU0ltRUUxRFgrS24rdXhSRWgrTEZSY05pUTFiNGprS0RKRFkv?=
 =?utf-8?B?NFRpUUE5ODMrdGY5eCtQM0VnbmIyVjdBSjVxOTg5VWVjdDlYbTk1TnMvdWV3?=
 =?utf-8?B?VkVDWE9ZWUdGcEpDaVpHcnJZV3N3ZHFHQ0dUS1RsVTJobHIybE15OG94bmcr?=
 =?utf-8?B?dWZFcDRtYmJNM3BWbC9rUnZrTWtVb0hZcE1zZ3pIVnlWbk9YV1psY3JOQmNC?=
 =?utf-8?B?WWZkZXNLeW5ZZkw3SEcwNVBWOEJNK1hXdTZxQUhkaFErNGpHcE5mQTNPMVFI?=
 =?utf-8?B?YXFyaXRCVjZycXVFNHpRRm1SZUxjUGxvbkkwUkZHbTFhTTMreXJQQzN0MUdv?=
 =?utf-8?B?Skt1ZGFSeVpxdElVelFpMmRwNEtYZ0swNHBrdGNlMlNRKzIrVzhyZFVKYUF1?=
 =?utf-8?B?U1BsREdrSmFJQWZ1N2pxWTBNNit5VVpDZWVvaTlKaXQzZi9pUXo4VjRia0Qr?=
 =?utf-8?B?WkhoSTlnQzNVbDNGYjluTEJSekRCN2VTWEVqb0pKaGZZN3Q3Q25MOFM1eWJz?=
 =?utf-8?B?OHhLeWRqckM2MzFpazM5dXJwRnV4cWExK1hvUDVxOXZ1bS9Qckk1eVNOL2hF?=
 =?utf-8?B?UmV1N0wrVjBkd04zZ21UeUVqVUNqSGpKSTJ2TjVHUTl3RW1meFlVeDR6ajFt?=
 =?utf-8?B?RkRhbWxqMTJhMVFYV2svajh1WTlJeVhnbTJEWExkL1A0OHNLTTdUSVdFZXZx?=
 =?utf-8?B?dmNuQUlZUWlnZTErSSsyU25jRWpkZHU0ZU5NSjNQUmRtY3FHS2RaY3F2Qkk0?=
 =?utf-8?B?WE5oS05IckNkMXZuLzloN0tOVzFobHdkdkRUcFFTRkZDamdhZjdFWlZ2dFlF?=
 =?utf-8?B?Zkc3SHBEaXBOMkgyY09mNzZmK3dwQ0gyTUhmN1NaVVV2Ump2QXQvTThjUGRG?=
 =?utf-8?B?SmNwMXMzY1lCdlQ0ZVRIQ2VTUHZvVFV4bm5BYngyMEw2cWF6dk04ZUhhWnhl?=
 =?utf-8?B?cTF5K3g4bVV2L3ZkRlJ6czVQUVJTYXZ6VUIrRXNJazlEWS9hS2VYNXVZNEI0?=
 =?utf-8?B?RXRoejFBQ1kvWnJsVVNOTE9DQ3h0WnZhM3cwYnBRa3BHRVlMVG5vOTBvNVJR?=
 =?utf-8?B?SzVxdTVTcjRRRlVrTEJkelBJTkNEM0NobGtxL0pWNy8vWnhJaFlENHo3OW9w?=
 =?utf-8?B?QWJiVDZzaDVwNDBTRUxWUTJkQTNSUU1iVmxzU0g0K0FFNk9PVjBPS2NPM0JW?=
 =?utf-8?B?djNNbkwrajFDdi8xZ2ZIRVlEN3dXVjlmVU1oUDZDbUpWcHRudDk4WWplSXBF?=
 =?utf-8?B?NW9PbUpkei9CbTdaeWJGY0YxVmcvQUoxT0ZNTERkbFRZQXpEd01obzZGNmpt?=
 =?utf-8?B?V2w5c2dXbDJjb2pGZ0dNc0V2UnFSUkdsN0R6UjN0c3FOd3F4dHNkNTJ4YWFp?=
 =?utf-8?B?c0VUSHpjdmpNaXhtQW5QdnlYSTFYQnRxM3g5WDNWdGl4TlJmK2hPM2MrYURB?=
 =?utf-8?B?Y3JVV0tVK0k3YXVLWmJNanhpVGd3Q0c4WWtyVmVvdU15aFhuc2twZTlTdHZ2?=
 =?utf-8?B?My96VEVnRXRjZWFEZTBEOSs5VDIreTZBUzVJZ2pUcVhVV01MWjdtOU1mT3By?=
 =?utf-8?B?K1A5VFhnS1lCR1h2YnptOVJ6dWJlZzhJaHg2Z0RxZiszN0huQXdNYTVsOTJS?=
 =?utf-8?B?a00vMzB4RFIvaHJjUzEyOTNBS3hMMkxBWTZxZGVONS9UK1J1Qitac0wvMHJ6?=
 =?utf-8?B?c2dDLzFKbzYvTDNaZUtQMFFKckNnZ2NTbk9wRFNnbXFKM2dlYWhWblhWL1RN?=
 =?utf-8?B?akw4V1UrRy9Cd1RlYU9MSURNZlVMLzZzakFKUGRhRlFENzNFc0ZVOVBoZzJi?=
 =?utf-8?B?clkwNzljOUZPeE5rQ2JwM2JZaG1lRHdZcHdZNDhUOFU1QWhIa1dYTUZEL1g2?=
 =?utf-8?B?Lyt6WTdodFpab3djVlBHVEFYU1FLbzhjWDJYRWcxUHIwUjlna2pGTHN2YXNz?=
 =?utf-8?Q?vhXyiWnC6+hCnCP7IBYv5zlza6LB/M=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(1800799024)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MWRybkM0cHE0KzZiRjFHQWgyUG8wRmZJMXpPT2wxSkhsU2Z2bTNIS08vTDZo?=
 =?utf-8?B?K2Z2MGdsVXV2M1dzcVBmNFZ3ZWdGL2xwOGJSQ1dQaTcwYjVPamlHM09oWkpy?=
 =?utf-8?B?TVVuaDV5UEhVMjVYanNORkpvUWNmS1FTN25JQ29rOGF0Nnc5aU5TQUJWaVNo?=
 =?utf-8?B?N0xnUFFST1B0WUJ3cDNWaklkckpzQUNGYlVBVjZiaExDYjdxdENoenNKN0do?=
 =?utf-8?B?L3FUVlpKNDZiTWdnMHh3UXQzb1Q4WTVrSG53WWRSL1Q2cytkMU8rT01FSWtH?=
 =?utf-8?B?QXZWdjhRYjR2QUVEK2lwakhCSUxDdFVVdmZVK29Gc2tMTy8rcFVuQm9oVzBq?=
 =?utf-8?B?S29qdmsyelg5UmVtVEtOckhCYXFCTG9YTEJCSnRqSjczYjNhNlJ6Z1Y1K2Y4?=
 =?utf-8?B?N1BlK2M0OVA0NUw0ZU94c253RzY4ZlFFdUgrRDBwTDdDT1dLTjFpSnluaGlo?=
 =?utf-8?B?RUs4U0p3UmJoajRUblpCbTBHNFpGQXJ4cWlkOHdHM0hKMjdHYklkYjcxdVk5?=
 =?utf-8?B?WDJQNjBRNUphc3dmVlR2b2lRVHd6b3gveUZSS3VYU0lPRXJmbC9zRkhmR0Y5?=
 =?utf-8?B?dXpFS2g0b1k2YnUranBYY3lWMmtRYjZ4cGI3WGlwK3A2c2Z6T2oyczhjZG9P?=
 =?utf-8?B?MElvYTI2R2MyeXZBWnZHeUVlQzZ3eGY3dFNWaGVrT2VFL1BORllIMjVFZlUy?=
 =?utf-8?B?Tkh5YXBlU3c5TXcvWTUvMTZFSmM4ekdGU1FsWCtlNGNWM1VtQWFDZC9NNmgv?=
 =?utf-8?B?c3JCNEIrZDFtN2VleGNVZTJGT1M3UEdGenpqTzBmMW9vU1BBTXJ4K093eWVy?=
 =?utf-8?B?QWYxVFprcG9WQzdHeUE0MlhUUVEzOFk0OUpYbUM1V3QwNUh2c0RNdWdZbTMz?=
 =?utf-8?B?bVVtQ0RtM0pxNG9IeitxN1pOM0Z4aTFvZDFyK2NsTEU3T1czZGZ2NGRKb1FK?=
 =?utf-8?B?Q01sY2wvZ2Zlc0U5Wjcvdzc2SDRzSzBoSmNRV3N1Tm4xRlRXeXhxYThsVTJ3?=
 =?utf-8?B?SWJpS09qZEtaQ20zcXJOMXU3RytmY1VJNEtoUVNJaDhKcmdSYjQrRGk0cktS?=
 =?utf-8?B?UzRBazNsUlBXNXU2SCtDZ096WFRFZGVpUzh2UURKU3BITUVsQnVwS1BUNFdx?=
 =?utf-8?B?aXFScVA0dEV5Ym5ER0JLcUFtOG9vNzdLZG9qK2dWTGptMkxXY2dNTzV4c09B?=
 =?utf-8?B?eHZNYi8zWFlFemF0NWRWb0hvYThrcFp4Rzd2LzZwUXAvcDhSaGVLK29LVUZ0?=
 =?utf-8?B?dUNMaFFZam9EdUhmanF5eERzcjBvMktpeU5FVFVkNGoyTFFGaHBIaldzM1o3?=
 =?utf-8?B?OHcxVzM5Qlc2UGhmQzl2cU1ub1h0bmh5emJDblp5UW9yL2pJQkJsT1MyY3k5?=
 =?utf-8?B?eDZEbExJNWxJZ2VyZ2lieW1mVyt4K1RscVVCd0svcnljME9pUjZzOHBKVHha?=
 =?utf-8?B?dmVWOGZpVURmb2xiNkFBdm5GZHg3b1I5aHVCZmRQUGtEZHZ2c2pLRVBZczE2?=
 =?utf-8?B?SU9RZ211bmVBNmNXQWhhUklEVmlHeXp5eXppblNCaU1scUx3WnlkOVNhanhI?=
 =?utf-8?B?V3REVlYyNFVIRDR2WmF4aVNVZVRIejdsMll4R1daRTdXNkJnVVFEOEpxbFlK?=
 =?utf-8?B?R2pQVllpeDNhQXh0d0xTSmsvUUxFb2ZnWHVWT1dEbmJrb09nODFodVZMbWF6?=
 =?utf-8?B?WVJZNkNkZXdWWTZlUDRKeURoTE5FWVM3UU5uTWJwS1orWWJwbWJEeTcxYWdx?=
 =?utf-8?B?K1dPVis1aU1VcG9YTTRFY1JOOFB0SFVwSCtOVlNQV2twWkJCNzlZVFpGdEt4?=
 =?utf-8?B?UWViakErSWFWYWpBT2phREtidW1HTEpnUVJlMU9LVG4vZno0S3Rsd3BPcUl0?=
 =?utf-8?B?RDBNREp2dW5wWmRRd2lWamlKSXlDbmlZajB0eFVpOWRJOGlDb0FBMG42eFoz?=
 =?utf-8?B?a2Z3ejlqOUx4QnBVMllzUkY3VlVNZDNXVWx6VVAwQTI0T1lJQjh3QzlYdDBG?=
 =?utf-8?B?RkxHNTgxTHA4bm11c0psdW54VmZqUm5xOWFxeXBZVDFhblVMNE5yMklnL29p?=
 =?utf-8?B?c2lXdWNnUk0xdWxNaVMzRzlIRHQ3b2oxdnplVHpzSDFPTEFCcmxGbHA5UU1O?=
 =?utf-8?B?T0tqbTN3a3dCT3pxdWtZMGtTUmRhdmUvQktLUVhkSEozc05KYkRobTFRRXVM?=
 =?utf-8?B?U2s3Zkl5UzFhVWF4MlF1S1JCVDA1K1NwUkg4Mlk1ZTZETExXenA5alJCWldL?=
 =?utf-8?B?a2hZdmE0dzJnTDlnbXB5Q0s4QjFRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <CBD8CAE0EBE06443A2A9D1B7F00D26CC@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99cee412-595c-4a89-bc37-08dd97bfa700
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2025 16:59:15.2303 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2bu3kZvKssi2DVKN7nwMQSy/vkgG/JkAsnGzevtXEblp3cSngrrspwHwvqzRRhMx7rqt/a6VZDsPYm/+uZK8mlYl/zkgs4Thh+KK1F/WChM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6741
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

T24gVHVlLCAyMDI1LTA1LTIwIGF0IDE0OjMwICswNTMwLCBOYXV0aXlhbCwgQW5raXQgSyB3cm90
ZToNCj4gDQo+IE9uIDUvMi8yMDI1IDI6MjggUE0sIEpvdW5pIEjDtmdhbmRlciB3cm90ZToNCj4g
PiBJdCBpcyBzcGVjaWZpZWQgaW4gQnNwZWMgd2hlcmUgcG9ydCBhbHBtIGNvbmZpZ3VyYXRpb24g
aXMgc3VwcG9zZWQNCj4gPiB0byBiZQ0KPiA+IHBlcmZvcm1lZC4gQ2hhbmdlIGFjY29yZGluZ2x5
Lg0KPiA+IA0KPiA+IEhBUzogMTQwMTI3NTg3OTUNCj4gTGV0cyBkcm9wIHJlZmVyZW5jZXMgdG8g
SEFTIGFuZCBhZGQgQnNwZWM6IDY4ODQ5DQoNCkkgaGF2ZSBjaGFuZ2VkIHRoaXMuDQoNCj4gPiBT
aWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4N
Cj4gPiAtLS0NCj4gPiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0u
Y8KgwqDCoCB8IDUzICsrKysrKysrKysrKystLQ0KPiA+IC0tLS0tDQo+ID4gwqAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmjCoMKgwqAgfMKgIDIgKw0KPiA+IMKgIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jIHzCoCAxICsNCj4gPiDC
oCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jwqDCoMKgwqAgfMKgIDYg
KysrDQo+ID4gwqAgNCBmaWxlcyBjaGFuZ2VkLCA0NCBpbnNlcnRpb25zKCspLCAxOCBkZWxldGlv
bnMoLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9hbHBtLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
YWxwbS5jDQo+ID4gaW5kZXggNGE4ZDRiMzRmYTg5ZS4uODU3Y2U4MzA3NWQ4ZCAxMDA2NDQNCj4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiA+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+ID4gQEAgLTM0
NCw3ICszNDQsNiBAQCBzdGF0aWMgdm9pZCBsbmxfYWxwbV9jb25maWd1cmUoc3RydWN0IGludGVs
X2RwDQo+ID4gKmludGVsX2RwLA0KPiA+IMKgIHsNCj4gPiDCoMKgCXN0cnVjdCBpbnRlbF9kaXNw
bGF5ICpkaXNwbGF5ID0NCj4gPiB0b19pbnRlbF9kaXNwbGF5KGludGVsX2RwKTsNCj4gPiDCoMKg
CWVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlciA9IGNydGNfc3RhdGUtDQo+ID4gPmNwdV90
cmFuc2NvZGVyOw0KPiA+IC0JZW51bSBwb3J0IHBvcnQgPSBkcF90b19kaWdfcG9ydChpbnRlbF9k
cCktPmJhc2UucG9ydDsNCj4gPiDCoMKgCXUzMiBhbHBtX2N0bDsNCj4gPiDCoCANCj4gPiDCoMKg
CWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA8IDIwIHx8DQo+ID4gKCFpbnRlbF9wc3JfbmVlZHNf
YWxwbShpbnRlbF9kcCwgY3J0Y19zdGF0ZSkgJiYNCj4gPiBAQCAtMzc0LDIzICszNzMsNiBAQCBz
dGF0aWMgdm9pZCBsbmxfYWxwbV9jb25maWd1cmUoc3RydWN0IGludGVsX2RwDQo+ID4gKmludGVs
X2RwLA0KPiA+IMKgwqAJCQkJwqDCoMKgwqDCoMKgIHByX2FscG1fY3RsKTsNCj4gPiDCoMKgCQl9
DQo+ID4gwqAgDQo+ID4gLQkJaW50ZWxfZGVfd3JpdGUoZGlzcGxheSwNCj4gPiAtCQkJwqDCoMKg
wqDCoMKgIFBPUlRfQUxQTV9DVEwocG9ydCksDQo+ID4gLQkJCcKgwqDCoMKgwqDCoCBQT1JUX0FM
UE1fQ1RMX0FMUE1fQVVYX0xFU1NfRU5BQkxFDQo+ID4gfA0KPiA+IC0JCQnCoMKgwqDCoMKgwqAN
Cj4gPiBQT1JUX0FMUE1fQ1RMX01BWF9QSFlfU1dJTkdfU0VUVVAoMTUpIHwNCj4gPiAtCQkJwqDC
oMKgwqDCoMKgIFBPUlRfQUxQTV9DVExfTUFYX1BIWV9TV0lOR19IT0xEKDApDQo+ID4gfA0KPiA+
IC0JCQnCoMKgwqDCoMKgwqAgUE9SVF9BTFBNX0NUTF9TSUxFTkNFX1BFUklPRCgNCj4gPiAtCQkJ
CcKgwqDCoMKgwqDCoCBpbnRlbF9kcC0NCj4gPiA+YWxwbV9wYXJhbWV0ZXJzLnNpbGVuY2VfcGVy
aW9kX3N5bV9jbG9ja3MpKTsNCj4gPiAtDQo+ID4gLQkJaW50ZWxfZGVfd3JpdGUoZGlzcGxheSwN
Cj4gPiAtCQkJwqDCoMKgwqDCoMKgIFBPUlRfQUxQTV9MRlBTX0NUTChwb3J0KSwNCj4gPiAtCQkJ
wqDCoMKgwqDCoMKgDQo+ID4gUE9SVF9BTFBNX0xGUFNfQ1RMX0xGUFNfQ1lDTEVfQ09VTlQoMTAp
IHwNCj4gPiAtCQkJwqDCoMKgwqDCoMKgDQo+ID4gUE9SVF9BTFBNX0xGUFNfQ1RMX0xGUFNfSEFM
Rl9DWUNMRV9EVVJBVElPTigNCj4gPiAtCQkJCcKgwqDCoMKgwqDCoCBpbnRlbF9kcC0NCj4gPiA+
YWxwbV9wYXJhbWV0ZXJzLmxmcHNfaGFsZl9jeWNsZV9udW1fb2Zfc3ltcykgfA0KPiA+IC0JCQnC
oMKgwqDCoMKgwqANCj4gPiBQT1JUX0FMUE1fTEZQU19DVExfRklSU1RfTEZQU19IQUxGX0NZQ0xF
X0RVUkFUSU9OKA0KPiA+IC0JCQkJwqDCoMKgwqDCoMKgIGludGVsX2RwLQ0KPiA+ID5hbHBtX3Bh
cmFtZXRlcnMubGZwc19oYWxmX2N5Y2xlX251bV9vZl9zeW1zKSB8DQo+ID4gLQkJCcKgwqDCoMKg
wqDCoA0KPiA+IFBPUlRfQUxQTV9MRlBTX0NUTF9MQVNUX0xGUFNfSEFMRl9DWUNMRV9EVVJBVElP
TigNCj4gPiAtCQkJCcKgwqDCoMKgwqDCoCBpbnRlbF9kcC0NCj4gPiA+YWxwbV9wYXJhbWV0ZXJz
LmxmcHNfaGFsZl9jeWNsZV9udW1fb2Zfc3ltcykpOw0KPiA+IMKgwqAJfSBlbHNlIHsNCj4gPiDC
oMKgCQlhbHBtX2N0bCA9IEFMUE1fQ1RMX0VYVEVOREVEX0ZBU1RfV0FLRV9FTkFCTEUgfA0KPiA+
IMKgwqAJCQlBTFBNX0NUTF9FWFRFTkRFRF9GQVNUX1dBS0VfVElNRShpbnRlbF9kcC0NCj4gPiA+
YWxwbV9wYXJhbWV0ZXJzLmZhc3Rfd2FrZV9saW5lcyk7DQo+ID4gQEAgLTQxNCw2ICszOTYsNDEg
QEAgdm9pZCBpbnRlbF9hbHBtX2NvbmZpZ3VyZShzdHJ1Y3QgaW50ZWxfZHANCj4gPiAqaW50ZWxf
ZHAsDQo+ID4gwqDCoAlpbnRlbF9kcC0+YWxwbV9wYXJhbWV0ZXJzLnRyYW5zY29kZXIgPSBjcnRj
X3N0YXRlLQ0KPiA+ID5jcHVfdHJhbnNjb2RlcjsNCj4gPiDCoCB9DQo+ID4gwqAgDQo+ID4gKy8q
Kg0KPiA+ICsgKiBpbnRlbF9hbHBtX3BvcnRfY29uZmlndXJlIC0gUG9ydCBBTFBNIGNvbmZpZ3Vy
YXRpb24NCj4gPiArICogQGludGVsX2RwOiBJbnRlbCBEUA0KPiA+ICsgKiBAY3J0Y19zdGF0ZTog
Q1JUQyBzdGF0ZQ0KPiA+ICsgKg0KPiA+ICsgKiBQZXJmcm9tIHBvcnQgQUxQTSBjb25maWd1cmF0
aW9uIGJhc2VkIG9uIGNydGNfc3RhdGUgc2V0dXAuIFRoaXMNCj4gPiBpcyBjYWxsZWQgYXMNCj4g
PiArICogYSBwYXJ0IG9mIGxpbmsgdHJhaW5pbmcgcHJlcGFyYXRpb24uDQo+ID4gKyAqLw0KPiA+
ICt2b2lkIGludGVsX2FscG1fcG9ydF9jb25maWd1cmUoc3RydWN0IGludGVsX2RwICppbnRlbF9k
cCwNCj4gPiArCQkJwqDCoMKgwqDCoMKgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+
ID4gKmNydGNfc3RhdGUpDQo+ID4gK3sNCj4gPiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNw
bGF5ID0NCj4gPiB0b19pbnRlbF9kaXNwbGF5KGludGVsX2RwKTsNCj4gPiArCWVudW0gcG9ydCBw
b3J0ID0gZHBfdG9fZGlnX3BvcnQoaW50ZWxfZHApLT5iYXNlLnBvcnQ7DQo+ID4gKwl1MzIgYWxw
bV9jdGxfdmFsID0gMCwgbGZwc19jdGxfdmFsID0gMDsNCj4gPiArDQo+ID4gKwlpZiAoaW50ZWxf
YWxwbV9pc19hbHBtX2F1eF9sZXNzKGludGVsX2RwLCBjcnRjX3N0YXRlKSkgew0KPiA+ICsJCWFs
cG1fY3RsX3ZhbCA9IFBPUlRfQUxQTV9DVExfQUxQTV9BVVhfTEVTU19FTkFCTEUNCj4gPiB8DQo+
ID4gKwkJCVBPUlRfQUxQTV9DVExfTUFYX1BIWV9TV0lOR19TRVRVUCgxNSkgfA0KPiA+ICsJCQlQ
T1JUX0FMUE1fQ1RMX01BWF9QSFlfU1dJTkdfSE9MRCgwKSB8DQo+ID4gKwkJCVBPUlRfQUxQTV9D
VExfU0lMRU5DRV9QRVJJT0QoDQo+ID4gKwkJCQlpbnRlbF9kcC0NCj4gPiA+YWxwbV9wYXJhbWV0
ZXJzLnNpbGVuY2VfcGVyaW9kX3N5bV9jbG9ja3MpOw0KPiA+ICsJCWxmcHNfY3RsX3ZhbCA9DQo+
ID4gUE9SVF9BTFBNX0xGUFNfQ1RMX0xGUFNfQ1lDTEVfQ09VTlQoMTApIHwNCj4gPiArCQkJUE9S
VF9BTFBNX0xGUFNfQ1RMX0xGUFNfSEFMRl9DWUNMRV9EVVJBVElPDQo+ID4gTigNCj4gPiArCQkJ
CWludGVsX2RwLQ0KPiA+ID5hbHBtX3BhcmFtZXRlcnMubGZwc19oYWxmX2N5Y2xlX251bV9vZl9z
eW1zKSB8DQo+ID4gKwkJCVBPUlRfQUxQTV9MRlBTX0NUTF9GSVJTVF9MRlBTX0hBTEZfQ1lDTEVf
RA0KPiA+IFVSQVRJT04oDQo+ID4gKwkJCQlpbnRlbF9kcC0NCj4gPiA+YWxwbV9wYXJhbWV0ZXJz
LmxmcHNfaGFsZl9jeWNsZV9udW1fb2Zfc3ltcykgfA0KPiA+ICsJCQlQT1JUX0FMUE1fTEZQU19D
VExfTEFTVF9MRlBTX0hBTEZfQ1lDTEVfRFUNCj4gPiBSQVRJT04oDQo+ID4gKwkJCQlpbnRlbF9k
cC0NCj4gPiA+YWxwbV9wYXJhbWV0ZXJzLmxmcHNfaGFsZl9jeWNsZV9udW1fb2Zfc3ltcyk7DQo+
ID4gKwl9DQo+ID4gKw0KPiA+ICsJaW50ZWxfZGVfd3JpdGUoZGlzcGxheSwgUE9SVF9BTFBNX0NU
TChwb3J0KSwNCj4gPiBhbHBtX2N0bF92YWwpOw0KPiA+ICsNCj4gPiArCWludGVsX2RlX3dyaXRl
KGRpc3BsYXksIFBPUlRfQUxQTV9MRlBTX0NUTChwb3J0KSwNCj4gPiBsZnBzX2N0bF92YWwpOw0K
PiA+ICt9DQo+ID4gKw0KPiA+IMKgIHZvaWQgaW50ZWxfYWxwbV9wcmVfcGxhbmVfdXBkYXRlKHN0
cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUNCj4gPiAqc3RhdGUsDQo+ID4gwqDCoAkJCQkgc3RydWN0
IGludGVsX2NydGMgKmNydGMpDQo+ID4gwqAgew0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uaA0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9hbHBtLmgNCj4gPiBpbmRleCA4M2JiZTBiN2ZmMTAwLi5jOWRkYjIx
MTNmZTBkIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYWxwbS5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9h
bHBtLmgNCj4gPiBAQCAtMjUsNiArMjUsOCBAQCB2b2lkIGludGVsX2FscG1fY29uZmlndXJlKHN0
cnVjdCBpbnRlbF9kcA0KPiA+ICppbnRlbF9kcCwNCj4gPiDCoMKgCQkJwqAgY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUNCj4gPiAqY3J0Y19zdGF0ZSk7DQo+ID4gwqAgdm9pZCBpbnRlbF9h
bHBtX3ByZV9wbGFuZV91cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZQ0KPiA+ICpzdGF0
ZSwNCj4gPiDCoMKgCQkJCSBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0Yyk7DQo+ID4gK3ZvaWQgaW50
ZWxfYWxwbV9wb3J0X2NvbmZpZ3VyZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+ICsJ
CQnCoMKgwqDCoMKgwqAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiAqY3J0Y19z
dGF0ZSk7DQo+ID4gwqAgdm9pZCBpbnRlbF9hbHBtX3Bvc3RfcGxhbmVfdXBkYXRlKHN0cnVjdCBp
bnRlbF9hdG9taWNfc3RhdGUNCj4gPiAqc3RhdGUsDQo+ID4gwqDCoAkJCQnCoCBzdHJ1Y3QgaW50
ZWxfY3J0YyAqY3J0Yyk7DQo+ID4gwqAgdm9pZCBpbnRlbF9hbHBtX2xvYmZfZGVidWdmc19hZGQo
c3RydWN0IGludGVsX2Nvbm5lY3Rvcg0KPiA+ICpjb25uZWN0b3IpOw0KPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiA+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPiBpbmRleCBiMDlm
NzI0YzMwNDZiLi4xMzE4ODg2ZTM0ZGQ3IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPiBAQCAtMTAsNiArMTAsNyBAQA0KPiA+
IMKgIA0KPiA+IMKgICNpbmNsdWRlICJpOTE1X3JlZy5oIg0KPiA+IMKgICNpbmNsdWRlICJpOTE1
X3V0aWxzLmgiDQo+ID4gKyNpbmNsdWRlICJpbnRlbF9hbHBtLmgiDQo+ID4gwqAgI2luY2x1ZGUg
ImludGVsX2N4MF9waHkuaCINCj4gPiDCoCAjaW5jbHVkZSAiaW50ZWxfY3gwX3BoeV9yZWdzLmgi
DQo+ID4gwqAgI2luY2x1ZGUgImludGVsX2RkaS5oIg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ID4gaW5kZXggNzQxMzJjMWQ2Mzg1OC4uY2U3YTQ3
NjViMTBlYSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RkaS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
ZGkuYw0KPiA+IEBAIC0zNzQzLDYgKzM3NDMsMTIgQEAgc3RhdGljIHZvaWQNCj4gPiBtdGxfZGRp
X3ByZXBhcmVfbGlua19yZXRyYWluKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gwqAg
DQo+ID4gwqDCoAlpbnRlbF9kZGlfYnVmX2VuYWJsZShlbmNvZGVyLCBpbnRlbF9kcC0+RFApOw0K
PiA+IMKgwqAJaW50ZWxfZHAtPkRQIHw9IERESV9CVUZfQ1RMX0VOQUJMRTsNCj4gPiArDQo+ID4g
KwkvKg0KPiA+ICsJICogNi5rIElmIEFVWC1MZXNzIEFMUE0gaXMgZ29pbmcgdG8gYmUgZW5hYmxl
ZA0KPiA+ICsJICrCoMKgwqDCoCBpLiBDb25maWd1cmUgUE9SVF9BTFBNX0NUTCBhbmQgUE9SVF9B
TFBNX0xGUFNfQ1RMDQo+ID4gaGVyZQ0KPiA+ICsJICovDQo+ID4gKwlpbnRlbF9hbHBtX3BvcnRf
Y29uZmlndXJlKGludGVsX2RwLCBjcnRjX3N0YXRlKTsNCj4gDQo+IEkgdGhpbmsgd2Ugc2hvdWxk
IGFkZCBhIGNoZWNrIHRvIGVuc3VyZSB0aGlzIGNvZGUgcnVucyBvbmx5IG9uIExOTCsgDQo+IHBs
YXRmb3JtcyAod2hpY2ggc3VwcG9ydHMgQUxQTSkuDQo+IA0KPiBPdGhlcndpc2UsIHdlIG1pZ2h0
IGVuZCB1cCB3cml0aW5nIA0KPiA+IFBPUlRfQUxQTV9DVEx8YW5kfFBPUlRfQUxQTV9MRlBTX0NU
THwgdGhhdCBhcmUgbm90IGRlZmluZWQgb24NCj4gPiBlYXJsaWVyIA0KPiBwbGF0Zm9ybXMsIHdo
aWNoIGNvdWxkIGxlYWQgdG8gdW5pbnRlbmRlZCBiZWhhdmlvci4NCg0KWW91IGFyZSByaWdodC4g
SSBoYXZlIGFkZGVkIGRpc3BsYXkgdmVyc2lvbiBjaGVjayBpbiByZWNlbnQgdmVyc2lvbi4NClRo
YW5rIHlvdSBmb3IgcG9pbnRpbmcgdGhpcyBvdXQuDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXIN
Cg0KPiANCj4gUmVnYXJkcywNCj4gDQo+IEFua2l0DQo+IA0KPiA+IMKgIH0NCj4gPiDCoCANCj4g
PiDCoCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfcHJlcGFyZV9saW5rX3JldHJhaW4oc3RydWN0IGlu
dGVsX2RwDQo+ID4gKmludGVsX2RwLA0KDQo=
