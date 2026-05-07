Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iMFTF6WI/GleRAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 14:42:13 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D28024E853A
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 14:42:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4377E10F0A5;
	Thu,  7 May 2026 12:42:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jMWPLfjb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B76A10F090;
 Thu,  7 May 2026 12:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778157729; x=1809693729;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=6ayVJBo4/BvLbEBRLkgQ1GqZxGfaRaF5if39mNf33z8=;
 b=jMWPLfjbigjxmQCaa2A0SH/JVCoO5VwCQq+6cWjaYd7EuqF4F29JxWOM
 qHmLKh6ADu/d0IF/szwmfRRJ9te76F4vE4kS4KTaP1f9BV8fk3HKXWHkV
 yBYIWrTWWaqKfQrJWElBG4hlXZlox/QCTh6zz+T9y5FPHYN88j1UckCHV
 slGnN/K0wrTKgFBAtXZcS215Uu7wXLUh4lt1TX0uobu8A1wSX7Mcc5yc1
 iqFLMx+aTMgJJP4yHVfxJa7OKMQd/+VC6WIU5byr6oPGJuz5zCrhogllz
 M1BoH4mps9cps0+sWShis0ORUzrbmC4pHHhtWplDRGaiHCfYlQjByno47 g==;
X-CSE-ConnectionGUID: 8AL0VmP+RlOFbE4MqiHmDQ==
X-CSE-MsgGUID: 4QRecsjcSoSWTIJoAmtMhw==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="104563237"
X-IronPort-AV: E=Sophos;i="6.23,221,1770624000"; d="scan'208";a="104563237"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 05:42:09 -0700
X-CSE-ConnectionGUID: LmYiIZiCTZ+Dl6XQ42NDrQ==
X-CSE-MsgGUID: MykKMfmET+mF7/1VKEVCvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,221,1770624000"; d="scan'208";a="233376774"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 05:42:09 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 7 May 2026 05:42:08 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 7 May 2026 05:42:08 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.46) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 7 May 2026 05:42:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YZMnMuV3+LSGk733yCQkVmmnzvVkZOIFTWFruWZARk6Tsp0SwfRwiE8h2oThcjsSad7bM50t2HbkrummAybS51f6qjcRqG9bCyxM/mr1fPuDuOGgi4Pe9gf5OK3WMnccZllLgU0pv2wds+kFiJH4cne/B0WDXGr1fGx15UZSiTmjn/+OwphXQqHWXIF9+jQiCwhgoVtaMGOq6P3s+J4vmp945FOyTBkHTPE40ly7IUw5cPlxreNO7ux3AMQ46bP5m6+TDLgPVdGlzUyhX/usoud/srF5jPCGMGl8VbSARXgFTy6hkA5qT2FUWYLiwwLoj3H4hRqDRAamsTT+5GmrGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6ayVJBo4/BvLbEBRLkgQ1GqZxGfaRaF5if39mNf33z8=;
 b=mZ/BLUF11GmmnA4BXMQaeP/r0nmqbKl9lBktHZKdM5Mu3GdP2NoqKbRdeQSTb3E0JGnYHrQGsOMecIAXmADuVWwz0dcoPN4OKqawG/w1yMaEC/sGzN9SZzzsSJWW7+xD1Y1AqXbzIQhpu7BWah0JMlmMW5dYTyJIeA2zaJPqVNaVdpSQ40+8aLQ9Ukd1t39isHgW2O9nllKp8qP4T1fxVmO5Q2/K2939OIQmevBpshbOsdEnyeIAsQaAxFXzvAct04k9RR4zVOJtWf+0FG7KX0Ze7veRsRe8Nq4U12ab97tFzlaiV87KnamSU0DqzGg2qc1dkVu604h6b5ojhE1JGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM4PR11MB6406.namprd11.prod.outlook.com (2603:10b6:8:8b::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9891.15; Thu, 7 May 2026 12:42:00 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9870.023; Thu, 7 May 2026
 12:42:00 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "stable@vger.kernel.org" <stable@vger.kernel.org>
Subject: Re: [PATCH 3/4] drm/i915/psr: Apply Intel DPCD workaround when SDP on
 prior line used
Thread-Topic: [PATCH 3/4] drm/i915/psr: Apply Intel DPCD workaround when SDP
 on prior line used
Thread-Index: AQHczJpofKIHk7hDOESc5beXOG07n7YAuaYAgAHq7gA=
Date: Thu, 7 May 2026 12:42:00 +0000
Message-ID: <76f39de9d27f63eec50af48af4cb2bd0691b6eb5.camel@intel.com>
References: <20260415054000.400070-1-jouni.hogander@intel.com>
 <20260415054000.400070-4-jouni.hogander@intel.com>
 <DM3PPF208195D8D312A4D274ECBF86DE84FE33F2@DM3PPF208195D8D.namprd11.prod.outlook.com>
In-Reply-To: <DM3PPF208195D8D312A4D274ECBF86DE84FE33F2@DM3PPF208195D8D.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DM4PR11MB6406:EE_
x-ms-office365-filtering-correlation-id: 4e2ab35f-bbb9-430f-a084-08deac360873
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: Yz1DV8V3vEmvNaw3zGjjbUGrP7VtjbJMQ52pSy2MuDQbr7QXvH0koCs6mXSzWiALdeB1Myj58CoRto5NJyAua803tlkpR9Ve9hSx0POiTRSRYCOW/sM4kme+GX5tF9JqkoVLGs086IUizJ9YwZc9LkHxFyHv3WCVQfhHL+W+dQiGdJSUhD/FvBi0Z63HkFmTbX4tJ+vlstjWgR/WqcmICnpcM7aoUj728FY3ReuYXR+dSbCgEhUZmlvgM9FbJ8O8zEPlxZx/4mUW+rFEoI9M4bRIzdwbyrAiYAChEKr0RYXcuzTqHCHaiLu4KE86ndhCilrzHrPUi4+pITBawGjuNoVk3ayAOHUkLIhxhM27aXjf0ivZ9bQpbV+pILRsa646KFQBCg/3xsJfHRmjCJUySKfi1R+WFZhGmY+FOaMM6jN+6SaNKll8dgerxZ7QB7ZSoPhEUwh3ZTfkNCXOyzF/Oa3zVxu+EiUpzzKmTdF9cViExucek8I3lyVup9OPLFxFnQRQbah+BoaQCnCRyBHRGaVzclzrjiSQ7yQLZEQ7QhYiEQwhgMQ1Mt+SuLFeAfnznoPSbDFPEDTbVtzxwMdhL4tASe4DK80MhAxGAekJRTPfgwgSESpa3qan9nNZK0D1IgyU/PTm8w6h51zvVonUY15D3bWj8vF2Xd6JrZKYMNToPrY0VdTZH/7L3hi3RuWH3AfpQ4TlsJUSaZb3lCN0Z0b0xLITpBj+hesqnQiYrlA1IarLSY0fnUznWoIC8Zuv
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aENCdXJ5RmNaZStneDJkc1hrVitrMGhTdGtOZ2JHaXBRTHd3cXJzWTNUWFh3?=
 =?utf-8?B?VytXdHcwQ3FQUVRrcHZkVVRrZjJ4Mi9RenA3YVRScjRPUkVZN2NNRDhVeGE0?=
 =?utf-8?B?c0o3b205RkkxK3pBbVBrd3RKVEQ3TzF2NGQ4YzVnd1V2bThCVmRhOHFCRUJx?=
 =?utf-8?B?Ymw5cTJnUTdLZ3lLbzJ6cXdaMEJrTGM1ZHYxVHhyYi9MUjBYbVk2TWg2MC9X?=
 =?utf-8?B?QzJVbWFqRkxpWFY4eFR2L1FVNHJiTnVSTzU4RHVPdVVYdlUvd3Q4bjVMSVhw?=
 =?utf-8?B?RGhWN0pIbEM0MG5MNWxCWllqMmRMOVQzM1Z2bUU5cnlwOW1QTDQ3WWZzWmg0?=
 =?utf-8?B?M0ZqNnEwcmNFeVUrNk02cTd1WUlJTkhVWDVLZzBxZGFlU2p2ZWdPamZGa3Fz?=
 =?utf-8?B?NW1mdVVrREpTYlhKZWJDT0ZRUTVmU0kyWTNYT3dER1BHZU5UVXptV1k2NkJ5?=
 =?utf-8?B?eFUzTG5WTU5OOG9KcTB2ZzJxYmFjQmpNV1NqaVRKRFoxOStwMmtja2ZRVDdm?=
 =?utf-8?B?YkxvWWFNTFVrNm1NS1FWdk9sRm0yK0ovTGozK2Q0TitSdkZGb0RwN2k2Z3Ur?=
 =?utf-8?B?ZGo0R1BHZ3QrNDNMUENMVGt3NFFlYUhZMEQ4TVIzVnhROXpBK0lUcjBVSFMv?=
 =?utf-8?B?clpteS9UMlZWQThhOGg4cTVVVW9EaDNHTzRRZkNZSUdNSGViUnNyUC9LRlhx?=
 =?utf-8?B?NWpDRnJ2RDlHSHFRYWtnWHRNRGNGNjZSRVFvdzh0RFhVTEVnMWJNRDlsakY3?=
 =?utf-8?B?U2U4RUE2enFIUHhzaEg3eEw1VGVUckZEeEhlUmpJeGdJVTU2WU1BenZZNDdH?=
 =?utf-8?B?a09iMThQNFljODVIQ0t1Z202VGJnWjZjbEY0aHBiYldXdE9WblJ5VUJMM0kw?=
 =?utf-8?B?aGwwM0V2NE1zS3ZXN3pkS3hOMHp4Q0NOWnRnbDZVWTM5S2tTRFM2a2pwdFJU?=
 =?utf-8?B?d25ITlhaNEJTcHhXWmExbmN3NGVLaVJDbUFWY3hKd1UxWUt3a3Q5T3pmdUpN?=
 =?utf-8?B?Y1A4NVg0SkN3UjVJN2F5S1ZvYkJ5bTJ4aVp4Z0puNEx5c3AwYWRvT0xEcFhx?=
 =?utf-8?B?eC84UEErZGZBbjJHWGl2MG9DbHdhdWE1K05vSnI0bWVraXkyQWM5ZDI2dDU3?=
 =?utf-8?B?Vy90YXdNa21VT2pFTWRuaXBBSUoyZ0R1a0tiZ1BxRXVsQTBpWE9LR3c1cUw3?=
 =?utf-8?B?SlgxU01mdklCOENBMjJjK3U4YWxHRkU3MjQxS2tmaHNCaHgvakVaTlZ0YWdP?=
 =?utf-8?B?aXZRSGZPTTRock1XZDc3Yk9yY25YSUd5RXZBMG55YnA2K1p2Z0w2U2wyNWNI?=
 =?utf-8?B?RDRGai81NHgyeWJ1ZFlMUWhhNVFHc0Fwcko4ZGZlQzUwcDUxUWVmbHMvWDFp?=
 =?utf-8?B?UURiYmVySXZQKzFIOFFjbmJQcHB3c25NbkFxN0h3Z3FMajRzU3lyQW1uOWlK?=
 =?utf-8?B?ZWVLWEpiVjVYbXVNaWcwSm01ZWg3S3RtUysvc0tEcEM4T1F5ck52ZkV5N2Ew?=
 =?utf-8?B?RmN6QUVCUHNJaEZIL0xNU1pRVlhCZFlQRGtRcFZrLzAxQk96WFJTU0JYNzVh?=
 =?utf-8?B?RUFVNTlKbllodmNZTllPUWQ3OXMyYWVodzYyczYvSmNVSjg0M2pRUkZ3bXlI?=
 =?utf-8?B?MjFMeEQxZjNFMUtBNUFIU0tWbmV5bzRtWHl5L0hUSGJ1ajREVFlPd0dmd0g0?=
 =?utf-8?B?YVRvQTVrajZVcHIzQys5UDJGSUViWHJsWEIxS3B6cVNuRUpxUFlOSDI5ekRo?=
 =?utf-8?B?c2I5SlB6Q0xKUFE4VmZGYWs4aGh3V0xHbjFGYTJUZXNtS3pJZEVNSE15Ymcx?=
 =?utf-8?B?SmdNUlh3NWlwTVYrYmxiYmszVlR0K3JJWElFR0pJM1VwRUhncTM1bGcyd0d4?=
 =?utf-8?B?U3ZicUZoR29jSjNlWnNRb2hVazBxRS92YWo2cGxZLzhJby9ocE83eGQ5dDJi?=
 =?utf-8?B?ckVCMlNpdHg4SklnOFhYeURSMGpJQmVlaC96cTdiMFdLbmtZaXlyM1NoRGRN?=
 =?utf-8?B?TjlMdzlaWU1tb2VHNGZnTVhWU1ZEUjhJdU9VbXZDbTU2Q214c3l6RTF1L21K?=
 =?utf-8?B?SXBFZzN5djNxdjFHQXFLMGZ4ZlBsOHpiS1BVQksxcnNWNmx5QUdod0lNZWVV?=
 =?utf-8?B?STBDOU5VM0lmVGkyV21HMzl3WXNEeFBTWllSNWJXVFRUZS9VRkU3K29HcUdi?=
 =?utf-8?B?RWpJRVNzRStSSit4aTczOENnVHNIbXRKOUtiRE1HQW53MmZabXE1QWJpdGxF?=
 =?utf-8?B?ZE9oejdOOHJBZ3ZVUDBWZ2dxQndjRFJWUDU4WHdLajJNY1V6Y2ZzT0RyQk5z?=
 =?utf-8?B?ZmphYmI0bnZhb0FicWZ5WHZpQ2RBMEhXcnBaM3M5WExjUzRQckgrVUJDRzJH?=
 =?utf-8?Q?9waRtBWJTIyy43Ec=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <2ACAFFB1A45E984B9F262638B07599A4@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Hp7oaitaXE2eFWylvRk0nY6xnhFg/18NWzRFpLJ942jSIRwiH2ieBq9AsXftL1JCB1ooAAWLw1hLBnAwn/8QzMKoViKEgWQ7TsmeK0oSO1BHkybpxviwrJfdVp/zSvfeZgRGLzN1nryOg+lQXmYt959OiDxoK1X9jzEXKSm7LQ+N++XxttjsRBmZRSxWZ96+B0wB7VJ6x4I1ICiKgF2FhnrjfKQu8VfLtxoMt6SVXcYm5vTWA/4Yin40Gv6xKB41qKclVm1aHRSsNtwsKqqj83/T/jv6OqlRL5F3+dCZ2yxpxLyqvWxzCddScrKmtIK3pgJaflQhkjAC5SWwknzqMw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e2ab35f-bbb9-430f-a084-08deac360873
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2026 12:42:00.2801 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NWz9fHXHR68Cj//JBG3lRXSFiK4EdKAihsP6tCTsG8N19q3wGW6mF7f1VIrZohsymKdDHPyQdWeJLo2rs1K6n2TN06TnB+gAx1TQsoIOSm0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6406
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
X-Rspamd-Queue-Id: D28024E853A
X-Rspamd-Server: lfdr
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
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

T24gV2VkLCAyMDI2LTA1LTA2IGF0IDA3OjI0ICswMDAwLCBLYW5kcGFsLCBTdXJhaiB3cm90ZToN
Cj4gPiBTdWJqZWN0OiBbUEFUQ0ggMy80XSBkcm0vaTkxNS9wc3I6IEFwcGx5IEludGVsIERQQ0Qg
d29ya2Fyb3VuZCB3aGVuDQo+ID4gU0RQIG9uDQo+ID4gcHJpb3IgbGluZSB1c2VkDQo+ID4gDQo+
ID4gVGhlcmUgaXMgSW50ZWwgc3BlY2lmaWMgd29ya2Fyb3VuZCBEUENEIGFkZHJlc3MgY29udGFp
bmluZw0KPiA+IHdvcmthcm91bmQgZm9yDQo+ID4gY2FzZSB3aGVyZSBTRFAgaXMgb24gcHJpb3Ig
bGluZS4gQXBwbHkgdGhpcyB3b3JrYXJvdW5kIGFjY29yZGluZyB0bw0KPiA+IHZhbHVlcyBpbg0K
PiA+IHRoZSBvZmZzZXQuDQo+ID4gDQo+ID4gRml4ZXM6IDYxZTg4NzMyOWUzMyAoImRybS9pOTE1
L3hlbHBkOiBIYW5kbGUgUFNSMiBTRFAgaW5kaWNhdGlvbiBpbg0KPiA+IHRoZSBwcmlvcg0KPiA+
IHNjYW5saW5lIikNCj4gPiBDYzogPHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmc+ICMgdjUuMTUrDQo+
ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5j
b20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jIHwgMzYNCj4gPiArKysrKysrKysrKysrKysrKysrKystLS0NCj4gPiDCoDEgZmlsZSBjaGFu
Z2VkLCAzMiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gaW5kZXggMWYzZjBkMzVk
NTJhLi4zNDExODY2MjJlZDQgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMNCj4gPiBAQCAtMTM4NSw5ICsxMzg1LDM2IEBAIHN0YXRpYyBib29sIHBz
cjJfZ3JhbnVsYXJpdHlfY2hlY2soc3RydWN0DQo+ID4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZSwNCj4gPiDCoAlyZXR1cm4gdHJ1ZTsNCj4gPiDCoH0NCj4gPiANCj4gPiAtc3RhdGljIGJv
b2wgX2NvbXB1dGVfcHNyMl9zZHBfcHJpb3Jfc2NhbmxpbmVfaW5kaWNhdGlvbihzdHJ1Y3QNCj4g
PiBpbnRlbF9kcA0KPiA+ICppbnRlbF9kcCwNCj4gPiAtCQkJCQkJCXN0cnVjdA0KPiA+IGludGVs
X2NydGNfc3RhdGUNCj4gPiAqY3J0Y19zdGF0ZSkNCj4gPiArc3RhdGljIGJvb2wgYXBwbHlfc2Nh
bmxpbmVfaW5kaWNhdGlvbl93YShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ICpjcnRjX3N0
YXRlLA0KPiA+ICsJCQkJCSBzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yDQo+ID4gKmNvbm5lY3RvcikN
Cj4gDQo+IFNob3VsZCB0aGUgbmFtZSBiZSBhcHBseV9zY2FubGluZV9pbmRpY2F0ZSwgc2luY2Ug
eW91IGFyZSBub3QNCj4gYXBwbHlpbmcgdGhlIHdhIGhlcmUganVzdCBzb3J0IG9mIGNoZWNraW5n
IGlmIGl0IG5lZWRzIHRvIGJlIGRvbmUNCg0KSXQgaXMgYWN0dWFsbHkgYXBweWluZyBXQS4gSS5l
LiBkaXNhYmxpbmcgcmVxX3BzcjJfc2RwX3ByaW9yX3NjYW5saW5lDQppZiBwYW5lbCBpcyBub3Qg
aW5saW5lIHdpdGggdGhlIGVEUDEuNGIgU0RQIG9uIHByaW9yIHNjYW5saW5lDQppbXBsZW1lbnRh
dGlvbiBpbiBpbnRlbCBIVy4gV2hhdCBkbyB5b3UgdGhpbms/DQoNCkJSLA0KSm91bmkgSMO2Z2Fu
ZGVyDQoNCj4gDQo+IFJlZ2FyZHMsDQo+IFN1cmFqIEthbmRwYWwNCj4gDQo+ID4gwqB7DQo+ID4g
KwlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gaW50ZWxfYXR0YWNoZWRfZHAoY29ubmVjdG9y
KTsNCj4gPiArCXU4IGVhcmx5X3NjYW5saW5lX3N1cHBvcnQgPSBjb25uZWN0b3ItDQo+ID4gPmRw
LnBzcl9jYXBzLmludGVsX3dhX2RwY2QgJg0KPiA+ICsNCj4gPiAJSU5URUxfV0FfUkVHSVNURVJf
Q0FQU19QU1IyX0VBUkxZU0NBTkxJTkVfU0RQX1NVUFBPUlRfTUENCj4gPiBTSzsNCj4gPiArDQo+
ID4gKwlpZiAoaW50ZWxfZHAtPmVkcF9kcGNkWzBdID49IERQX0VEUF8xNSkNCj4gPiArCQlyZXR1
cm4gdHJ1ZTsNCj4gPiArDQo+ID4gKwlzd2l0Y2goZWFybHlfc2NhbmxpbmVfc3VwcG9ydCkNCj4g
PiArCXsNCj4gPiArCWNhc2UgSU5URUxfV0FfUkVHSVNURVJfQ0FQU19GQUxMX0JBQ0tfVE9fUFNS
MToNCj4gPiArCQljcnRjX3N0YXRlLT5yZXFfcHNyMl9zZHBfcHJpb3Jfc2NhbmxpbmUgPSBmYWxz
ZTsNCj4gPiArCQlyZXR1cm4gZmFsc2U7DQo+ID4gKwljYXNlIElOVEVMX1dBX1JFR0lTVEVSX0NB
UFNfUFNSMl9XSVRIX0VBUkxZX1NDQU5MSU5FOg0KPiA+ICsJCXJldHVybiB0cnVlOw0KPiA+ICsJ
Y2FzZSBJTlRFTF9XQV9SRUdJU1RFUl9DQVBTX1BTUjJfV0lUSE9VVF9FQVJMWV9TQ0FOTElORToN
Cj4gPiArCQljcnRjX3N0YXRlLT5yZXFfcHNyMl9zZHBfcHJpb3Jfc2NhbmxpbmUgPSBmYWxzZTsN
Cj4gPiArCQlyZXR1cm4gdHJ1ZTsNCj4gPiArCWRlZmF1bHQ6DQo+ID4gKwkJTUlTU0lOR19DQVNF
KGVhcmx5X3NjYW5saW5lX3N1cHBvcnQpOw0KPiA+ICsJCXJldHVybiBmYWxzZTsNCj4gPiArCX0N
Cj4gPiArfQ0KPiA+ICsNCj4gPiArc3RhdGljIGJvb2wgX2NvbXB1dGVfcHNyMl9zZHBfcHJpb3Jf
c2NhbmxpbmVfaW5kaWNhdGlvbihzdHJ1Y3QNCj4gPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlLA0KPiA+ICsJCQkJCQkJc3RydWN0DQo+ID4gaW50ZWxfY29ubmVjdG9yDQo+ID4gKmNvbm5l
Y3Rvcikgew0KPiA+ICsJc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9IGludGVsX2F0dGFjaGVk
X2RwKGNvbm5lY3Rvcik7DQo+ID4gwqAJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPQ0K
PiA+IHRvX2ludGVsX2Rpc3BsYXkoaW50ZWxfZHApOw0KPiA+IMKgCWNvbnN0IHN0cnVjdCBkcm1f
ZGlzcGxheV9tb2RlICphZGp1c3RlZF9tb2RlID0NCj4gPiAmY3J0Y19zdGF0ZS0NCj4gPiA+IHVh
cGkuYWRqdXN0ZWRfbW9kZTsNCj4gPiDCoAl1MzIgaGJsYW5rX3RvdGFsLCBoYmxhbmtfbnMsIHJl
cV9uczsNCj4gPiBAQCAtMTQwNiw3ICsxNDMzLDggQEAgc3RhdGljIGJvb2wNCj4gPiBfY29tcHV0
ZV9wc3IyX3NkcF9wcmlvcl9zY2FubGluZV9pbmRpY2F0aW9uKHN0cnVjdCBpbnRlbF9kcA0KPiA+
ICppbnRlbF9kDQo+ID4gwqAJCXJldHVybiBmYWxzZTsNCj4gPiANCj4gPiDCoAljcnRjX3N0YXRl
LT5yZXFfcHNyMl9zZHBfcHJpb3Jfc2NhbmxpbmUgPSB0cnVlOw0KPiA+IC0JcmV0dXJuIHRydWU7
DQo+ID4gKw0KPiA+ICsJcmV0dXJuIGFwcGx5X3NjYW5saW5lX2luZGljYXRpb25fd2EoY3J0Y19z
dGF0ZSwNCj4gPiBjb25uZWN0b3IpOw0KPiA+IMKgfQ0KPiA+IA0KPiA+IMKgc3RhdGljIGludCBp
bnRlbF9wc3JfZW50cnlfc2V0dXBfZnJhbWVzKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+
ID4gQEAgLTE2ODcsNw0KPiA+ICsxNzE1LDcgQEAgc3RhdGljIGJvb2wgaW50ZWxfc2VsX3VwZGF0
ZV9jb25maWdfdmFsaWQoc3RydWN0DQo+ID4gaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ICpjcnRjX3N0
YXRlLA0KPiA+IA0KPiA+IGNvbm5fc3RhdGUpKQ0KPiA+IMKgCQlnb3RvIHVuc3VwcG9ydGVkOw0K
PiA+IA0KPiA+IC0JaWYgKCFfY29tcHV0ZV9wc3IyX3NkcF9wcmlvcl9zY2FubGluZV9pbmRpY2F0
aW9uKGludGVsX2RwLA0KPiA+IGNydGNfc3RhdGUpKSB7DQo+ID4gKwlpZg0KPiA+ICghX2NvbXB1
dGVfcHNyMl9zZHBfcHJpb3Jfc2NhbmxpbmVfaW5kaWNhdGlvbihjcnRjX3N0YXRlLA0KPiA+ICtj
b25uZWN0b3IpKSB7DQo+ID4gwqAJCWRybV9kYmdfa21zKGRpc3BsYXktPmRybSwNCj4gPiDCoAkJ
CcKgwqDCoCAiU2VsZWN0aXZlIHVwZGF0ZSBub3QgZW5hYmxlZCwgU0RQDQo+ID4gaW5kaWNhdGlv
biBkbyBub3QNCj4gPiBmaXQgaW4gaGJsYW5rXG4iKTsNCj4gPiDCoAkJZ290byB1bnN1cHBvcnRl
ZDsNCj4gPiAtLQ0KPiA+IDIuNDMuMA0KPiANCg0K
