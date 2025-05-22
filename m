Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98C42AC0384
	for <lists+intel-gfx@lfdr.de>; Thu, 22 May 2025 06:46:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44450112D6C;
	Thu, 22 May 2025 04:44:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jZfxaReA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EC3996B50;
 Thu, 22 May 2025 04:19:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747887550; x=1779423550;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+1h4iwXECeS/RHM+dkt0tFJB5zSSTfy4cJJgMguiMQE=;
 b=jZfxaReAjnlgwnd+KKC/rvnrG3KBZQpv5PUdtlU0JlexdPmRPVz8x4Wm
 NhgGk3CIQOHzKG1iTApJl+lcHAvj1GV5Wumf1EO2aMXQiaMitYJl9+pJJ
 IzBHAOI/6K6AmplMhUUBBNBEF+EyJMyLXXPCQacf3tR51OAU8dnVE798W
 89qGUXyj4MV1wOrEDRJwp5UZrqFjmh8+ImbGx8H523fOK1BbeiIMyEyM/
 hukF0QuxRtpIwZEiXZSxS5pr6CEUQ5Bz1mAOO25UCJXK4EgVvUQmNzDuo
 9kpoATcSDEjTKqjVAulaP/7K65rFopG3tx5jFFkUpmQtiT0apkVm6w4DY w==;
X-CSE-ConnectionGUID: 9FDAfiWvS1aQSZYbtZNn6A==
X-CSE-MsgGUID: wL7Acp8aS9KodT7W1arfhw==
X-IronPort-AV: E=McAfee;i="6700,10204,11440"; a="75290709"
X-IronPort-AV: E=Sophos;i="6.15,305,1739865600"; d="scan'208";a="75290709"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 21:19:03 -0700
X-CSE-ConnectionGUID: RzuKwF9TQfiBlwle28RgKg==
X-CSE-MsgGUID: vO3/rQt1Sg62zYaVaU+XyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,305,1739865600"; d="scan'208";a="145640493"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 21:19:03 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 21 May 2025 21:19:02 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 21 May 2025 21:19:02 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Wed, 21 May 2025 21:19:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Me2RBJbTmnn5/zMEfmk7nkZKnNyrijdr36hSOa57Q6bKZRIREo2wm4QeCH8G9aTMy9vGRZHSlheUsATpvLFWBFj3utivuTthCTVtH/PCUj6D/5F04KCH1OVJ8Zi1rRC0XSUJNmyA7TQd8NGmFS5DtoEM5PiiZ/zf48ICsiMzpQoLl+jbGTs7clxxPZYrWzusNHRW3mCTWzNA1ovNeIyXqdSgTvPlztnLFgN8whdP2rUREt0I669qV9Vg6b81NRR4F8oNPCtMP2eN3fZoQgANZiECgqBI6e0U/XgPuQ/470RGimeqCetIJ3wAlip0OxRQ5TZL6UYUt6n3E9/0lSpvzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+1h4iwXECeS/RHM+dkt0tFJB5zSSTfy4cJJgMguiMQE=;
 b=uy2w8PMLSFBb8zhB+QTT6GvX1j+f51WybNXzO8X6eKL+cw1OZrRdNkB6LPcfCF4XiJgQW0/mOhNnVL7Cnd3nVdB5ZnT9a5aVvac7Wr+VIC3OaUI3gfFtiqQ9ndPmrMCjn/mmeKCt9+YeHPd8qFsf4eWm3u9LJG5RFznLwpedOzC2WUOHAUXN1hUt+so9oJHvrLu6TX0RgxHpJRWj+PeHyY7SpyBrk/RrPgD5kl4u8tBr9Bc6P3IkP1RojNUJGpKWtCtGXktj9b/UrxkQcjKh4TBM+/Be0qO6b46DZmjoMtDasTqWU1XnvZ/tCIYFl+NG+ZBZSL3EtDIimbwPkzNavw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 IA4PR11MB9231.namprd11.prod.outlook.com (2603:10b6:208:560::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.30; Thu, 22 May
 2025 04:18:54 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::d84a:3532:5337:1f7c]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::d84a:3532:5337:1f7c%6]) with mapi id 15.20.8746.030; Thu, 22 May 2025
 04:18:54 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Shankar, 
 Uma" <uma.shankar@intel.com>
Subject: RE: [v7 04/11] drm/i915/dsb: Implement intel_dsb_gosub()
Thread-Topic: [v7 04/11] drm/i915/dsb: Implement intel_dsb_gosub()
Thread-Index: AQHbyV8ywXktawN4a0qifuCWwTZYzrPcgjbggABBEICAAUrIkA==
Date: Thu, 22 May 2025 04:18:54 +0000
Message-ID: <DS0PR11MB8049E86D0C30C96725BEDCD9F999A@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20250520075537.4074010-1-chaitanya.kumar.borah@intel.com>
 <20250520075537.4074010-5-chaitanya.kumar.borah@intel.com>
 <DS0PR11MB8049E482880E254B344A655DF99EA@DS0PR11MB8049.namprd11.prod.outlook.com>
 <SJ1PR11MB61293BC278197BB20FDD2FEFB99EA@SJ1PR11MB6129.namprd11.prod.outlook.com>
In-Reply-To: <SJ1PR11MB61293BC278197BB20FDD2FEFB99EA@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|IA4PR11MB9231:EE_
x-ms-office365-filtering-correlation-id: 87d47b7b-07ad-4727-5ef5-08dd98e7c3e1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|10070799003|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?TGkzTHVPMGR1emE2R29DNE9FRmUwVEQ5ZURUQmJXSU05MlZ6S0IwTjU1QlUy?=
 =?utf-8?B?VGFkVG9YK2ViSE4xSHlPLzNKZC9WL2xKbU9vU2d0eHBaRkQ3WTc0dUpNeGli?=
 =?utf-8?B?RnlMRlZRdStaR2NJSm44amJHU0tXcVdpNDV2U0pGaE1CdW9vdThqZEFCZ1By?=
 =?utf-8?B?MWVSU1lwaWpSSXBNdDkxNHc5UEhrYU9sbHFLeW9qNWpRbEdlSEI5enVKY3g0?=
 =?utf-8?B?UlBRMWptWXJ6T0N4L2tlVUI3LzRJQ0trNWNjOWw0SWc2aXJUaVZsMVFxN1Y2?=
 =?utf-8?B?ZU84WmRGOTNseVhlUmZVZ0k3NFpPNXFhcjBpQ0JGRlppREc0RlR2clpVZTMx?=
 =?utf-8?B?eU9OcHdJcGJkNUlPWHRwTlJ1d1kxaEllWUdLSlZORTZKU3lwenBXUXJ0YjlV?=
 =?utf-8?B?TCt0bzBzcGNzYlBLei83SjdkeUtWREZTbVdvQWdqdmE1Y01odjBDT3A2MkI0?=
 =?utf-8?B?UUk0cC9Jb2tOT3ZCT0M0OElnc1FYQjZITmpkT2Y1dnUrdUZiYkxCaDZ0czVz?=
 =?utf-8?B?K0JqTXVUNkM1TzJqdTBRVnIwbnJ4SzZwaU9lVGxTMmtBY3B1RDI4cyt2NEZu?=
 =?utf-8?B?STBhd3NMYnNLWFUrNDdPU1RmSWovZy90MEVYSUVpTXFYaXBRU2NSc0w5MzFi?=
 =?utf-8?B?T1gzM3NWWDhTa3RDb1dFVjc4L1FwZUU5YUQ2QnRsVVd5TkdoMlFZVnJGenJM?=
 =?utf-8?B?SGdWOVFJWHRXQjhUNEZIaVhONEExUFlrSDhQaXFkMWtkcjVSZFE5T0l5NmE0?=
 =?utf-8?B?aHNNYU96eHJKNDhRZVg4YnZlYW9IYlc4MGk5MWorM3ZmbjJMSExrZ1ppVElk?=
 =?utf-8?B?b2YveS9yeW0wa2U0MGJTSGsxVjE1bHBJaXNpcjk2NkFxK1dvZTkyNDB5V3Uz?=
 =?utf-8?B?di85YzJtTll5RUR6MjQ2UGVXelhhZEpHLzN2R3MxeGQvdmhVYXZvQ094RSth?=
 =?utf-8?B?RlZiSWRvM3Z4MmdKTzRRZEQ5U3Y2S0RSTld4eW9heFFtSUNLd0ZXaGpEdGRR?=
 =?utf-8?B?NTkzVXh6TllZOEJtQy9sUkNVUUw3UGxpU1BsSHpZZ1YyWFpvdHNJeUhXRFl1?=
 =?utf-8?B?SGlxK3MvQ0VrZVlZUXMxMTRWeHo2TGUrMnVBUlYxWXZ1ZTBCS1VZM3dxSURL?=
 =?utf-8?B?QklsMDhzK2Y0RFcza1plWHBacEY3WmxobmRhbXNyTWpzQ1A3TVhlNkdZejZ4?=
 =?utf-8?B?ai9yeWJ5TWcvdEVZYnZyNTBlaWRjdW1uQTlQV3p0b2o3RERIaW9LY09qMkJX?=
 =?utf-8?B?QWlZSVBIMnpGZE1HaFYzUzQ3WkdJZUhrL2J4Y2t4U2VTRnV5SEJtM3BnRTZ3?=
 =?utf-8?B?SHJTMElSWklrVjRiZDg4Yk05NXQreVRJSU51VlNvY21ONWpvRHBwVG5YK2hD?=
 =?utf-8?B?UWFHU0dBcGJXTldoc0ZOTEtyYml1U24vcTJoLzc5c2h4VDRqSGlLcEV1T0pt?=
 =?utf-8?B?UzE2Z0NDcUJMNXVDd0FYbFk2eUkzUXpXUW1TNnRJZ1ROV3FMRzFYNisySGoy?=
 =?utf-8?B?ZTNoVnlhOElBR2pRcVFOdW1rc2I5Y3UyOGhtOUk0dzdZTGVrU2Q1R1RjeFRl?=
 =?utf-8?B?K0V0ZXNGc1JKT0R6cTZWTTdUR3ZsRlAzM1JCVllhTkpjLzc3SlZ3MXlIbEY2?=
 =?utf-8?B?alZ6WmdlWDFHRW5ZRGdqOG92V3M2aVg2MDlIR3kvZkEzdUVDRXZEdm1FS3o5?=
 =?utf-8?B?NzNBYk1KLzY0dFBsL29lN0V5OTVSVmFDVTVJWnNRaEdRVE1xQi83VjlDSERX?=
 =?utf-8?B?Q05ZTnU0MEFlbE81ZUhjbFVpMjhLcXVFYk9pQlA0R2EzOWRxL2xPVGFqa2I1?=
 =?utf-8?B?Q1ZBOXpSMUs5OXNlaDcyQzVvTzMyV09UYnMzTUFJL1NwczJvUFFkazBkOTlh?=
 =?utf-8?B?WnNKTVNOVDVFQ1VMVTMvcnlTK0xsTnZZMkJ4bnBPQm0vMkpLMGlKWU1reENP?=
 =?utf-8?B?NWdOaUs4Z2cvcnZVZWV0SWc0eU0vRy9zNThFRHUrTmxhZHVGc1IzWGVBYW1C?=
 =?utf-8?B?ZlVwRGo5Z2hRPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(366016)(1800799024)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N2hyNEZhTDRpN3pGMW1nYUthaHRUdXJmY3pXNHFZUk9mQUV6UHkveTdndlA4?=
 =?utf-8?B?enppd3NhdHJPdE5Mbkp1bVE2aFJHKzBmT2dVcy9CNXBXVGwydEJ3VUxNUGo2?=
 =?utf-8?B?QmtjbTlSd05mWGhXQXZsZDdyYklTR0lVV2tXaWdnWXQ3UTcvcGJpbElBK3hp?=
 =?utf-8?B?ejRqdnRlVTJWVnVFSnpqSGFvYVdWbWE2Uy85b3VGYXVyMlFNNHhkQUtOdWI4?=
 =?utf-8?B?djdZZlhaZ2FpU0pyVVlSMnIreGhOVHFVWkJ1SUM1UUdzUWZUSHlJWXE1WUZi?=
 =?utf-8?B?WS9MSGYzMGZPSVhpdVJkeTIvWVhNc0Q2RW1ONFpsb1crRXZBVnpnbmN5ci9B?=
 =?utf-8?B?SVI3MHpodmloR2txTHlDaG1tVkRMOTlkOExWQ0NUTzNsUjNZUUFYTVRzWjBQ?=
 =?utf-8?B?QW92TTZVQTdoRXkwYkYrY2tKSjVJVFFLVUF6NzViVkg4alZwVTl2RHg3UkMv?=
 =?utf-8?B?WjBqcUVqSEg5NkJVeGZqVzJTL0RQcXJWWHVlRFpBKzQ1RUQzbjRXRjV5VGdw?=
 =?utf-8?B?anJyTFpqcGNXSUFHKzMvNFpFOU8rcmpDblQ4TG9SM0lINWdzbndDRGRBR1hy?=
 =?utf-8?B?Q0lTaXMvYTF6dGxsak9aOWU4Z0hsa0I0VFRHbm00OHUvdGtSTTM5UTFTelZH?=
 =?utf-8?B?cjFJUE9uSlFSVUl5ZVUxc3ZJRWFjUHVjbUo3N2RjRGFGeXY3SVdxdGUrTVJR?=
 =?utf-8?B?cGw2a3FBWGVHcUMwdUxjczNvQzF2RmxSVmJnWi9vNzJhSEg4NjRUQ3BnQnRh?=
 =?utf-8?B?ODlPK2tnVWtBeUl0U2hjSTBBb0hJNEVicmJjb0pBUW9NUWFkNkl0VjRXR0dv?=
 =?utf-8?B?b2Q0ZEdKY1RDZ3VEakNFbHhZSzJYeGRDdlZMTHo1VThSMHQwTTMzYW9wQXA1?=
 =?utf-8?B?N05VY2dSaFZ6aE91eU51Vzlja3owTEZRL0xwalNUS2NtaHc0bjNEanZEcVE0?=
 =?utf-8?B?b016eVN6bk5KQldjWjdRRmkxd1A4cTVIdWtCUXVDK0hiYzhRNkZIeGRpem9R?=
 =?utf-8?B?K2R3L3h4T0lZd3dOVzhnK1AvQW4xVlJUTlBJNHhMYWZQZzVLaDhsVXRyTGhK?=
 =?utf-8?B?Y083S25ha016Q3FzWExvYWhqaFFOcFNuUGkwRDhqNGJnLytGTjR4MTg5ZXc3?=
 =?utf-8?B?VHMzUzVROW5ZT0tmc0dYMC9LQ0d5bjdOZ3BtblZzKzlOa3Z3MkRVbkpCSldH?=
 =?utf-8?B?ZGMweGpXSGFTMlVDUW9icnUzb0ZrN3pFQTdqY0lwdGMwRmpuQjNyVm8yZElH?=
 =?utf-8?B?eXAyMUVyZVJxTFRtYjJOa1libEE1WUdnZk8rNWxyZ216K1F1NjV1NzFxdXVI?=
 =?utf-8?B?d0F3eU8zSUlncmpIWXNsZFVQVVVTS2NTdjZaS0hJYXV4T1l1MkVCc0F4U09w?=
 =?utf-8?B?YXR5WG02MGhYOWNXV01KVTE5dTVMcjZVbUpkR0tEekpKUXZJa0cra0NGckFZ?=
 =?utf-8?B?dHlWaEdtOGgwZnIxamh5MWc4dEZYR0FtQXdJUjNyK29sNDE3Mkg0ZGw2YjlN?=
 =?utf-8?B?Mk9rV3JYanhDTmdjSWRRRXcyODc5RCtTN1dKc0VSZHQ2OXNrVnFvZmd2MGhk?=
 =?utf-8?B?a2tnQlJ3Z0pSQ2oyUFRZUGk4dW9VSkR0OFF1Q1BMVTFxWEZIRStsc3YvVjlK?=
 =?utf-8?B?aHlOYUZJLzJ0cVMvdVF0cGFOWjczN0FpbzVjUnRNc2tETmJxZ011Q3QvOGJY?=
 =?utf-8?B?dE1Jc3VwVTBrVEdVQ252MDluZHV3Vml0N2pydlFOL3FRc3c1LzlKWWdLWFhs?=
 =?utf-8?B?MHBxblBydHhCV2JmQ0hYT3pmQk1qKzdXNTBtbTgrbldIV3Y0YktrUTNjK2NG?=
 =?utf-8?B?YnYzMHlpS3praXRuYXZwdUR6bUVaMGlodFB5V0hVR1pIRTl0YzJOSVRoWkZH?=
 =?utf-8?B?aHFZUjVNNlF5d2hSRXNTd0twSkFqTmc0aSs0bk5ua016T2dNRUN1WFk2Wjd3?=
 =?utf-8?B?V2ptSzF5aFRHdVNpQmpXYWtoVENiRWxkTDNkK1I3a0xKNnQ1UE9ZTGtnZTdk?=
 =?utf-8?B?RTdEbWNDdVhlVHN1Wk1nZm0yNmxvVm5tZmVvV2lZZTdhaUh2cFZFT3JEQ1lP?=
 =?utf-8?B?N3NRbk90Zm10QU42a1hOb0RsVmhHdWZLc21vV0c3Q1J4VnRTUExjL0FLNVlC?=
 =?utf-8?B?MmhidEk1NnMya1Y4UnUrRFFpYk1vVWJBKzVrL01UUkw2RlJtRjdlajJ4c3R5?=
 =?utf-8?B?dUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 87d47b7b-07ad-4727-5ef5-08dd98e7c3e1
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2025 04:18:54.7059 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3xy9h9v2K2kKYlxqO5gHnvNlsjy3wgsc9Pc7bZQKJ3vpX1NkyPqHC1CmvzEwmlz4VIHfyTnb7oDOPgux2U7Neg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9231
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQm9yYWgsIENoYWl0YW55
YSBLdW1hciA8Y2hhaXRhbnlhLmt1bWFyLmJvcmFoQGludGVsLmNvbT4NCj4gU2VudDogV2VkbmVz
ZGF5LCBNYXkgMjEsIDIwMjUgMjowMyBQTQ0KPiBUbzogTWFubmEsIEFuaW1lc2ggPGFuaW1lc2gu
bWFubmFAaW50ZWwuY29tPjsgaW50ZWwtDQo+IHhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogdmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb207IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KPiBTdWJqZWN0
OiBSRTogW3Y3IDA0LzExXSBkcm0vaTkxNS9kc2I6IEltcGxlbWVudCBpbnRlbF9kc2JfZ29zdWIo
KQ0KPiANCj4gSGkgQW5pbWVzaCwNCj4gDQo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0N
Cj4gPiBGcm9tOiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQo+ID4g
U2VudDogV2VkbmVzZGF5LCBNYXkgMjEsIDIwMjUgMTA6MTcgQU0NCj4gPiBUbzogQm9yYWgsIENo
YWl0YW55YSBLdW1hciA8Y2hhaXRhbnlhLmt1bWFyLmJvcmFoQGludGVsLmNvbT47IGludGVsLQ0K
PiA+IHhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZw0KPiA+IENjOiB2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbTsgU2hhbmthciwgVW1h
DQo+ID4gPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCj4gPiBTdWJqZWN0OiBSRTogW3Y3IDA0LzEx
XSBkcm0vaTkxNS9kc2I6IEltcGxlbWVudCBpbnRlbF9kc2JfZ29zdWIoKQ0KPiA+DQo+ID4NCj4g
Pg0KPiA+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+IEZyb206IEJvcmFoLCBD
aGFpdGFueWEgS3VtYXIgPGNoYWl0YW55YS5rdW1hci5ib3JhaEBpbnRlbC5jb20+DQo+ID4gPiBT
ZW50OiBUdWVzZGF5LCBNYXkgMjAsIDIwMjUgMToyNiBQTQ0KPiA+ID4gVG86IGludGVsLXhlQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+
ID4gQ2M6IHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tOyBTaGFua2FyLCBVbWENCj4gPiA+
IDx1bWEuc2hhbmthckBpbnRlbC5jb20+OyBNYW5uYSwgQW5pbWVzaA0KPiA+IDxhbmltZXNoLm1h
bm5hQGludGVsLmNvbT47DQo+ID4gPiBCb3JhaCwgQ2hhaXRhbnlhIEt1bWFyIDxjaGFpdGFueWEu
a3VtYXIuYm9yYWhAaW50ZWwuY29tPg0KPiA+ID4gU3ViamVjdDogW3Y3IDA0LzExXSBkcm0vaTkx
NS9kc2I6IEltcGxlbWVudCBpbnRlbF9kc2JfZ29zdWIoKQ0KPiA+ID4NCj4gPiA+IEZyb206IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+ID4gPg0KPiA+
ID4gQWRkIHN1cHBvcnQgZm9yIHRoZSBuZXcgR09TVUIgRFNCIGluc3RydWN0aW9uIChhdmFpbGFi
bGUgb24gcHRsKyksDQo+ID4gPiB3aGljaCBpbnN0cnVjdHMgdGhlIERTQiB0byBqdW1wIHRvIGEg
ZGlmZmVyZW50IGJ1ZmZlciwgZXhlY3V0aWUgdGhlDQo+ID4gPiBjb21tYW5kcyB0aGVyZSwgYW5k
IHRoZW4gcmV0dXJuIGV4ZWN1dGlvbiB0byB0aGUgbmV4dCBpbnN0cnVjdGlvbiBpbg0KPiA+ID4g
dGhlDQo+ID4gb3JpZ2luYWwgYnVmZmVyLg0KPiA+ID4NCj4gPiA+IFRoZXJlIGFyZSBhIGZldyBh
bGlnbm1lbnQgcmVsYXRlZCB3b3JrYXJvdW5kcyB0aGF0IG5lZWQgdG8gYmUgZGVhbHQNCj4gPiA+
IHdpdGggd2hlbiBlbWl0dGluZyBHT1NVQiBpbnN0cnVjdGlvbi4NCj4gPiA+DQo+ID4gPiB2Mjog
UmlnaHQgc2hpZnQgaGVhZCBhbmQgdGFpbCBwb2ludGVyIHBhc3NlZCB0byBnb3N1YiBjb21tYW5k
DQo+ID4gPiAoY2hhaXRhbnlhKQ0KPiA+ID4gdjM6IEFkZCBtYWNybyBmb3IgcmlnaHQgc2hpZnRp
bmcgaGVhZC90YWlsIHBvaW50ZXJzIChBbmltZXNoKQ0KPiA+ID4NCj4gPiA+IFNpZ25lZC1vZmYt
Ynk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+ID4g
PiBTaWduZWQtb2ZmLWJ5OiBDaGFpdGFueWEgS3VtYXIgQm9yYWgNCj4gPiA+IDxjaGFpdGFueWEu
a3VtYXIuYm9yYWhAaW50ZWwuY29tPg0KPiA+ID4gLS0tDQo+ID4gPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYyB8IDU3DQo+ID4gPiArKysrKysrKysrKysrKysrKysr
KysrKysgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaCB8DQo+ID4gPiAr
KysrKysrKysrKysrKysrKysrKysrKysgMg0KPiA+ID4gKw0KPiA+ID4gIDIgZmlsZXMgY2hhbmdl
ZCwgNTkgaW5zZXJ0aW9ucygrKQ0KPiA+ID4NCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gPiA+IGluZGV4IDliMmRlNGU3ZTY4MS4uZGFkNDgz
ZDRiMWNmIDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kc2IuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kc2IuYw0KPiA+ID4gQEAgLTkzLDYgKzkzLDEwIEBAIHN0cnVjdCBpbnRlbF9kc2Igew0KPiA+
ID4gIC8qIHNlZSBEU0JfUkVHX1ZBTFVFX01BU0sgKi8NCj4gPiA+ICAjZGVmaW5lIERTQl9PUENP
REVfUE9MTAkJCTB4QQ0KPiA+ID4gIC8qIHNlZSBEU0JfUkVHX1ZBTFVFX01BU0sgKi8NCj4gPiA+
ICsjZGVmaW5lIERTQl9PUENPREVfR09TVUIJCTB4QyAvKiBwdGwrICovDQo+ID4gPiArI2RlZmlu
ZSAgIERTQl9HT1NVQl9IRUFEX1NISUZUCQkyNg0KPiA+ID4gKyNkZWZpbmUgICBEU0JfR09TVUJf
VEFJTF9TSElGVAkJMA0KPiA+ID4gKyNkZWZpbmUgICBEU0JfR09TVUJfQ09OVkVSVF9BRERSKHgp
CSgoeCkgPj4gNikNCj4gPg0KPiA+IFBsZWFzZSBhZGQgYSBjb2RlIGNvbW1lbnQgd2hhdCBpcyBz
cGVjaWFsIGFib3V0IEdPU1VCIGFuZCB3aHkgdGhlDQo+ID4gYWJvdmUgY29udmVyc2lvbiBpcyBu
ZWVkZWQgd2hpY2ggd2FzIHBvaW50ZWQgb3V0IGluIHByZXZpb3VzIHJldmlldy4NCj4gPiBPdGhl
cndpc2UgdGhlIG90aGVyIGNoYW5nZXMgTEdUTS4NCj4gPg0KPiANCj4gVGhhbmsgeW91IGZvciB0
aGUgcmV2aWV3Lg0KPiBBcG9sb2dpZXMgZm9yIG1pc3NpbmcgdGhlIGNvbW1lbnQuDQo+IA0KPiBE
b2VzIHRoZSBmb2xsb3dpbmcgdGV4dCB3aXRoaW4gdGhlIGludGVsX2RzYl9nb3N1YigpIHdvcms/
DQo+IA0KPiAgICAgICAgLyoNCj4gICAgICAgICAqIFRoZSBHT1NVQiBpbnN0cnVjdGlvbiBoYXMg
dGhlIGZvbGxvd2luZyBtZW1vcnkgbGF5b3V0Lg0KPiAgICAgICAgICoNCj4gICAgICAgICAqICst
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0rDQo+ICAgICAgICAgKiB8ICBPcGNvZGUgIHwgICBSc3ZkICAgIHwgICAgICBI
ZWFkIFB0ciAgICAgIHwgICAgICAgICAgVGFpbCBQdHIgICAgfA0KPiAgICAgICAgICogfCAgIDB4
MGMgICAgICAgfCAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAg
ICAgICAgICAgICAgICAgICAgICAgICAgfA0KPiAgICAgICAgICogKy0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rDQo+
ICAgICAgICAgKiB8PC0gOGJpdHMtPnw8LSA0Yml0cyAtPnw8LS0gICAyNmJpdHMgICAgLS0+fDwt
LSAgMjZiaXRzICAgLS0+fA0KPiAgICAgICAgICoNCj4gICAgICAgICAqIFdlIGhhdmUgb25seSAy
NiBiaXRzIGVhY2ggdG8gcmVwcmVzZW50IHRoZSBoZWFkIGFuZCAgdGFpbA0KPiAgICAgICAgICog
cG9pbnRlcnMgZXZlbiB0aG91Z2ggdGhlIGFkZHJlc3NlcyBpdHNlbGYgYXJlIG9mIDMyIGJpdC4g
SG93ZXZlciwgdGhpcw0KPiAgICAgICAgICogaXMgbm90IGEgcHJvYmxlbSBiZWNhdXNlIHRoZSBh
ZGRyZXNzZXMgYXJlIDY0IGJpdCBhbGlnbmVkIGFuZA0KPiB0aGVyZWZvcmUNCj4gICAgICAgICAq
IHRoZSBsYXN0IDYgYml0cyBhcmUgYWx3YXlzIFplcm8ncy4gVGhlcmVmb3JlLCB3ZSByaWdodCBz
aGlmdCB0aGUgYWRkcmVzcw0KPiAgICAgICAgICogYnkgNiBiZWZvcmUgZW1iZWRkaW5nIGl0IGlu
dG8gdGhlIEdPU1VCIGluc3RydWN0aW9uLg0KPiAgICAgICAgICovDQoNCkxHVE0uIFdpdGggdGhl
IGFib3ZlIGNoYW5nZSANClJldmlld2VkLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5h
QGludGVsLmNvbT4NCg0KPiANCj4gUmVnYXJkcw0KPiANCj4gQ2hhaXRhbnlhDQo+IA0KPiA+IFJl
Z2FyZHMsDQo+ID4gQW5pbWVzaA0KPiA+ID4NCj4gPiA+ICBzdGF0aWMgYm9vbCBwcmVfY29tbWl0
X2lzX3Zycl9hY3RpdmUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4gPiAg
CQkJCSAgICAgc3RydWN0IGludGVsX2NydGMgKmNydGMpDQo+ID4gPiBAQCAtNTMzLDYgKzUzNyw1
OSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kc2JfYWxpZ25fdGFpbChzdHJ1Y3QNCj4gPiA+IGludGVs
X2RzYg0KPiA+ID4gKmRzYikNCj4gPiA+ICAJZHNiLT5mcmVlX3BvcyA9IGFsaWduZWRfdGFpbCAv
IDQ7DQo+ID4gPiAgfQ0KPiA+ID4NCj4gPiA+ICtzdGF0aWMgdm9pZCBpbnRlbF9kc2JfZ29zdWJf
YWxpZ24oc3RydWN0IGludGVsX2RzYiAqZHNiKSB7DQo+ID4gPiArCXUzMiBhbGlnbmVkX3RhaWws
IHRhaWw7DQo+ID4gPiArDQo+ID4gPiArCWludGVsX2RzYl9pbnNfYWxpZ24oZHNiKTsNCj4gPiA+
ICsNCj4gPiA+ICsJdGFpbCA9IGRzYi0+ZnJlZV9wb3MgKiA0Ow0KPiA+ID4gKwlhbGlnbmVkX3Rh
aWwgPSBBTElHTih0YWlsLCBDQUNIRUxJTkVfQllURVMpOw0KPiA+ID4gKw0KPiA+ID4gKwkvKg0K
PiA+ID4gKwkgKiAiVGhlIEdPU1VCIGluc3RydWN0aW9uIGNhbm5vdCBiZSBwbGFjZWQgaW4NCj4g
PiA+ICsJICogIGNhY2hlbGluZSBRVyBzbG90IDYgb3IgNyAobnVtYmVyZWQgMC03KSINCj4gPiA+
ICsJICovDQo+ID4gPiArCWlmIChhbGlnbmVkX3RhaWwgLSB0YWlsIDw9IDIgKiA4KQ0KPiA+ID4g
KwkJaW50ZWxfZHNiX2J1ZmZlcl9tZW1zZXQoJmRzYi0+ZHNiX2J1ZiwgZHNiLT5mcmVlX3Bvcywg
MCwNCj4gPiA+ICsJCQkJCWFsaWduZWRfdGFpbCAtIHRhaWwpOw0KPiA+ID4gKw0KPiA+ID4gKwlk
c2ItPmZyZWVfcG9zID0gYWxpZ25lZF90YWlsIC8gNDsNCj4gPiA+ICt9DQo+ID4gPiArDQo+ID4g
PiArdm9pZCBpbnRlbF9kc2JfZ29zdWIoc3RydWN0IGludGVsX2RzYiAqZHNiLA0KPiA+ID4gKwkJ
ICAgICBzdHJ1Y3QgaW50ZWxfZHNiICpzdWJfZHNiKQ0KPiA+ID4gK3sNCj4gPiA+ICsJc3RydWN0
IGludGVsX2NydGMgKmNydGMgPSBkc2ItPmNydGM7DQo+ID4gPiArCXN0cnVjdCBpbnRlbF9kaXNw
bGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShjcnRjLT5iYXNlLmRldik7DQo+ID4gPiAr
CXVuc2lnbmVkIGludCBoZWFkLCB0YWlsOw0KPiA+ID4gKwl1NjQgaGVhZF90YWlsOw0KPiA+ID4g
Kw0KPiA+ID4gKwlpZiAoZHJtX1dBUk5fT04oZGlzcGxheS0+ZHJtLCBkc2ItPmlkICE9IHN1Yl9k
c2ItPmlkKSkNCj4gPiA+ICsJCXJldHVybjsNCj4gPiA+ICsNCj4gPiA+ICsJaWYgKCFhc3NlcnRf
ZHNiX3RhaWxfaXNfYWxpZ25lZChzdWJfZHNiKSkNCj4gPiA+ICsJCXJldHVybjsNCj4gPiA+ICsN
Cj4gPiA+ICsJaW50ZWxfZHNiX2dvc3ViX2FsaWduKGRzYik7DQo+ID4gPiArDQo+ID4gPiArCWhl
YWQgPSBpbnRlbF9kc2JfaGVhZChzdWJfZHNiKTsNCj4gPiA+ICsJdGFpbCA9IGludGVsX2RzYl90
YWlsKHN1Yl9kc2IpOw0KPiA+ID4gKw0KPiA+ID4gKwloZWFkX3RhaWwgPSAoKHU2NCkoRFNCX0dP
U1VCX0NPTlZFUlRfQUREUihoZWFkKSkgPDwNCj4gPiA+IERTQl9HT1NVQl9IRUFEX1NISUZUKSB8
DQo+ID4gPiArCQkoKHU2NCkoRFNCX0dPU1VCX0NPTlZFUlRfQUREUih0YWlsKSkgPDwNCj4gPiA+
IERTQl9HT1NVQl9UQUlMX1NISUZUKTsNCj4gPiA+ICsNCj4gPiA+ICsJaW50ZWxfZHNiX2VtaXQo
ZHNiLCBsb3dlcl8zMl9iaXRzKGhlYWRfdGFpbCksDQo+ID4gPiArCQkgICAgICAgKERTQl9PUENP
REVfR09TVUIgPDwgRFNCX09QQ09ERV9TSElGVCkgfA0KPiA+ID4gKwkJICAgICAgIHVwcGVyXzMy
X2JpdHMoaGVhZF90YWlsKSk7DQo+ID4gPiArDQo+ID4gPiArCS8qDQo+ID4gPiArCSAqICJOT1RF
OiB0aGUgaW5zdHJ1Y3Rpb25zIHdpdGhpbiB0aGUgY2FjaGVsaW5lDQo+ID4gPiArCSAqICBGT0xM
T1dJTkcgdGhlIEdPU1VCIGluc3RydWN0aW9uIG11c3QgYmUgTk9Qcy4iDQo+ID4gPiArCSAqLw0K
PiA+ID4gKwlpbnRlbF9kc2JfYWxpZ25fdGFpbChkc2IpOw0KPiA+ID4gK30NCj4gPiA+ICsNCj4g
PiA+ICB2b2lkIGludGVsX2RzYl9maW5pc2goc3RydWN0IGludGVsX2RzYiAqZHNiKSAgew0KPiA+
ID4gIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IGRzYi0+Y3J0YzsgZGlmZiAtLWdpdA0KPiA+
ID4gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oDQo+ID4gPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgNCj4gPiA+IGluZGV4IGU4NDNj
NTJiZjk3Yy4uOGIyY2YwYTdiN2U2IDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaA0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kc2IuaA0KPiA+ID4gQEAgLTU3LDYgKzU3LDggQEAgdm9pZCBpbnRl
bF9kc2JfdmJsYW5rX2V2YWRlKHN0cnVjdA0KPiA+ID4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0
ZSwgIHZvaWQgaW50ZWxfZHNiX3BvbGwoc3RydWN0IGludGVsX2RzYiAqZHNiLA0KPiA+ID4gIAkJ
ICAgIGk5MTVfcmVnX3QgcmVnLCB1MzIgbWFzaywgdTMyIHZhbCwNCj4gPiA+ICAJCSAgICBpbnQg
d2FpdF91cywgaW50IGNvdW50KTsNCj4gPiA+ICt2b2lkIGludGVsX2RzYl9nb3N1YihzdHJ1Y3Qg
aW50ZWxfZHNiICpkc2IsDQo+ID4gPiArCQkgICAgIHN0cnVjdCBpbnRlbF9kc2IgKnN1Yl9kc2Ip
Ow0KPiA+ID4gIHZvaWQgaW50ZWxfZHNiX2NoYWluKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUg
KnN0YXRlLA0KPiA+ID4gIAkJICAgICBzdHJ1Y3QgaW50ZWxfZHNiICpkc2IsDQo+ID4gPiAgCQkg
ICAgIHN0cnVjdCBpbnRlbF9kc2IgKmNoYWluZWRfZHNiLA0KPiA+ID4gLS0NCj4gPiA+IDIuMjUu
MQ0KDQo=
