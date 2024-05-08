Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D248BFCEE
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2024 14:11:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F55610FB6A;
	Wed,  8 May 2024 12:11:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OpGDq2sv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3165B10FB6A
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2024 12:11:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715170291; x=1746706291;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=V5Ug6TRbTUIAT9Kga0ZpDropaGJjsiB+wvg3LjWrQmI=;
 b=OpGDq2sv67KtnQH56RpOPO9KKwkoc9l+NqIQKUCB5jtzSiEq1IHh6sRz
 HVgqJILyE4ezDN4xi00B/6a5MWyK1x2cOs92pQ2vnqF8YMf3ng40/Y9+F
 zXSVJqj/x/OlB5Kl+idgpaTt4FKpu3jMjEi0SVwIvKnaqSJxoKNGh1FIz
 gj6TM2upsvSaLiFucANplDq486o4hheihMdQUSMC1dRpsyIWEC/49dlc/
 GppZdOw+Qz4zBXq/C0W48CcTrJA/c/plX/HbtjTDNzoVFUlOi4lLviz+9
 eaOYQhccd/EvHcBMrn0S6zyICa3UwqPZpvFJvvRBiCHxBz9/xLAY3vQvv A==;
X-CSE-ConnectionGUID: QNB2MOB5QO+woSvKNBSCpQ==
X-CSE-MsgGUID: ZfdxrE9IR/2XP66trC8wCw==
X-IronPort-AV: E=McAfee;i="6600,9927,11066"; a="21589013"
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="21589013"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 05:03:28 -0700
X-CSE-ConnectionGUID: vN4lzp1vQZG4wuQaRskgVg==
X-CSE-MsgGUID: A6KisIWoQ9uRxqjeOCq1qQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="52071230"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 May 2024 05:03:28 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 8 May 2024 05:03:27 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 8 May 2024 05:03:27 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 8 May 2024 05:03:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EjBdMyyW+F3ya+f+0iBZQ6eSpNXg0gc+xjWgyZzno6CbwYLe0/96p3HxL6jd19B+3vPcsL8BALVb/gJTmkV1udNUA8bXdeYJo8LuQcgcppfk5iaPnOuNJ11NoBnS3KiXeli7EKIo4pDpUOYsGXOJrkGZYQuytcpAFNMYAI1S0w19DbklniU0OLt/v/oHrd5FvRhQFYWyeNiAbWDDn/gF6XskuYuE6Wu9FHTCkBzgVW4GNhgZ8G5Fxr7jN/5hgnV4HCrcrsWJXKsYwtoDZUGeaRHaIRX9VrWJzCWhMxi6vVMklIyHV5Mq7ZLDSKYZRfwQ8tWGXiehMpJLya/oQD/eqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V5Ug6TRbTUIAT9Kga0ZpDropaGJjsiB+wvg3LjWrQmI=;
 b=g+9PradCTgbKP4mvbaA+GiBwOeQtfUiO/ZX0YuITsW3K+xjEX6YqykPKTygfH9PmwLSv4u2cx+SL2r8UNMWloEdSO77vaDwchDtmWAvq++Xk57Ukfmz1TLfvcjupTa7iLLDHuhP2S4TyPQwWeUfh3l243lQo17M5JLLagH5/wFGSVC52YK/aTb4BxO9ijwBcjCNGBvztdH2IpCSResjc6Ec6uDHVVnocDMwysNJRtx+vmubOUjzUUcj8mJktPpifRkYM8E2VX4HZSA9EJ27JNDsj0jHXNbXsitdbQfvFfHrxgkWh4eB47CR+Q+45a1GcjNEFXvBe93OGXjJdeuM9IQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by LV3PR11MB8694.namprd11.prod.outlook.com (2603:10b6:408:21b::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.45; Wed, 8 May
 2024 12:02:25 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::d95b:a57d:ecc:5637]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::d95b:a57d:ecc:5637%7]) with mapi id 15.20.7544.045; Wed, 8 May 2024
 12:02:24 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, =?utf-8?B?VmlsbGUgU3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: PATCH] drm/i915/display/dp: Remove UHBR13.5 for icl
Thread-Topic: PATCH] drm/i915/display/dp: Remove UHBR13.5 for icl
Thread-Index: AQHaoT+W3OwU99oYUEO940MbduGkFA==
Date: Wed, 8 May 2024 12:02:24 +0000
Message-ID: <IA0PR11MB73072F9C1B1EB8C0E2B4C2B0BAE52@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240506090625.2812332-1-arun.r.murthy@intel.com>
 <ZjjHl2oHYpm3--zR@intel.com>
 <IA0PR11MB7307F436AB51E954D870EEA5BA1C2@IA0PR11MB7307.namprd11.prod.outlook.com>
 <ZjjLJEyQJDddXcaq@intel.com>
 <IA0PR11MB73076CE4DB3C399F961188E2BAE52@IA0PR11MB7307.namprd11.prod.outlook.com>
 <87v83ok4kp.fsf@intel.com>
 <IA0PR11MB7307289257C865A660C59A73BAE52@IA0PR11MB7307.namprd11.prod.outlook.com>
 <87le4kjzip.fsf@intel.com>
In-Reply-To: <87le4kjzip.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|LV3PR11MB8694:EE_
x-ms-office365-filtering-correlation-id: 325b9f48-efd8-430a-28d6-08dc6f56b969
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?VzJYYzU3MHNFMnRHVmxhTjlKZk9WSklCWmFNUktReHl2LzBody81b254Yit3?=
 =?utf-8?B?VGVSSzJSV2pwNjY1cUJsMmhGdldpZjRpRnNNMnI1Z3ZzR25mOHEvbGRKNW4z?=
 =?utf-8?B?blZFRlVqU3FiZ2MrNjNGM2NKVWZqVndDMDZnemRDVzdxTWdBZWFEYlhldTRW?=
 =?utf-8?B?ZXh1dUpGSWNSdXhzL0dncDMwWnZZQldaTVlZU1BCSDJ1d0tIb2NmZzRqMzlp?=
 =?utf-8?B?c3A2cis4WWQzeSs3dWN1ZTAwZ0owdS9vc3J0VEhtZGFSeTRKMGZ3TDd3ZWhE?=
 =?utf-8?B?M3JxNElWSWpSa2g1Y1RJK3VRZ3RLL3FXYmJjWnhhSUIzRDdua2NXT2xZQUw1?=
 =?utf-8?B?MDdYQ2ZPenVWNmFhZHJsdSsvL3RJOG1OZnR4RzZlRFZkYlJYMGhVWkQreW55?=
 =?utf-8?B?MmxxY05Bcm05eVgyNi8wNDYreUdRL203cnR1VklYTHhCckRPZHlYTERzZThq?=
 =?utf-8?B?L3BvWm9aSlRCcEtXaWVoNzJycGt4VHBYT1BpSWorM3JhSHNkQnVnMU1lTE1r?=
 =?utf-8?B?SzVHSHJwUHFKeWU0OGFJNXZ4cEFlSTBXTGRhWnVlbXBwZUlKb1BzYWVIeFRC?=
 =?utf-8?B?bzd5OU4vaU5mNVR4UlptSk5oTHlSZSs4ZGNpcXhtbWVTdkZCVHR5R1lpdkZK?=
 =?utf-8?B?U3ZpaDgrU1prUDRWRzloQkVKMkpnSXBOZVluT3JOWTA0NmZiNHJ0QlpLOXhr?=
 =?utf-8?B?aGRoQkxZamZVL015RHY5ZytpYlNoT1U2WXdldFlveGNuK2JVNlhNeUY0RHBU?=
 =?utf-8?B?d3VJUDE3dUFaY1doYlBHL2twZExJTU1Uc1g5b1hIVEwvcWVjbXFMSENsbjNq?=
 =?utf-8?B?QUJndDY2dW9NSU85OStFb0NMQWRHdlhEb2JjU2NEd3Q2cWQrdWt5ajBTb3lF?=
 =?utf-8?B?bDZOTStiQ25WU0VWTTVTYTRKWUFBTlNtZzhST3lzRU8zakRBRm1jeE5FNU5u?=
 =?utf-8?B?Yk01eEdBRU1zMlltcVBMMWhsMFdYVjdmY09pNXNDMEdxeUI5SWtsdDg0bGh2?=
 =?utf-8?B?YUx4QWhqb09uQXJkc3Zob2llbkJTV1BYc1BrdlhmL1lEejRaNU9OTkhBSjFH?=
 =?utf-8?B?RG0yQ2ZQRTlxRmloYjFVRUx6ZnZKczZpdmx1aTM5aEk5dzVEZS9FSXBrODhC?=
 =?utf-8?B?MHg0QS9yWUNIb29VWmdSOG9oa3NsVHl2WFUyTGovY0tHUktTMDAzQXRieG1I?=
 =?utf-8?B?MFRzYmlSWkJEbWo2bUZUVE54SmJWcTN1UEVzUzIvd1FUWXVKWkJDdG1yUHdN?=
 =?utf-8?B?dW1uMkJ5b01LUzFIdHdWZ1FZUUlyVWZKdEJ5aC9JVzNUZTcwb3FYZDc1TmdP?=
 =?utf-8?B?QmNiYkhwODB5a0FvQXRaOWMrSEpyS0VURlNEdmpCMlRJVW5abTNqellaUHdD?=
 =?utf-8?B?M0crYkhkNmp2emtlaFM1c3Q4SndqaXBFcE5QejV0R29xVi9PamxUYUYrTC93?=
 =?utf-8?B?VDJHMnVYUmhCSGExd2FmZ1BseHpTL1FrbjJVUnpCU0xjd2FHZDVyMFYzYUdP?=
 =?utf-8?B?eE4wZlJoYnZKVStvMlFqTVBtcXE5Ynp0Y0J4aTV2cXVhekNUYU9TaHIvZWVa?=
 =?utf-8?B?S1RFTVhjY1R3eGRZUXZUbzRjaHFGUk9mYVV0Z0ZURDUvVFIvcVFiTEs1aUlD?=
 =?utf-8?B?UUFVUG1Xdmc1UWVyRXF5SzZXbG1XNmZxNXU3YVhkRFpsSjEraFh3QmdwcWlI?=
 =?utf-8?B?QU80b0J2VVdwVWNyV1AwMmcwekR4K0EyMVZYeGliUnhMWEFTeEgxTGtaUldH?=
 =?utf-8?B?VHc3YjllUW8yd1NFRGtkQVFrQm9jb0piczdCV2ZvRjRKSEoyeFhBQ3AvR3NB?=
 =?utf-8?B?c013cC9SOEtDOEl2aTcxdz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RG9WcGZKZ2I1Nk5wV1U2ak5Hb1NtMndoejRqUVVHTjY4K1VRbzRaYm9LZkRZ?=
 =?utf-8?B?cG5MNHBDZ05zemlkRjhURitaMTVlcGpNV2piMHFnZlJZelZHb2tZNUdKOGYx?=
 =?utf-8?B?Z3VIenlYSGsvbko0NS9kU0hRTEQrZEozNVFIaTN2aFFBQzloYktUdFN5U3Iv?=
 =?utf-8?B?bk52M3hRcmc4UytYWHJCaGFpNFhkQnhWdVpxN2NqamFRYng5S1B2WEJ2Y0pr?=
 =?utf-8?B?R0ZGMXZXeS9ZaEJibzQ2RmNhaTY0bFJ6amJMcDhURWJqZ05QK2lYVlZoYkMz?=
 =?utf-8?B?RkwvL1Z1eFJGUzNyRXFNNFBiRDJVV0ZSWURCcW1LNkJwZm1oYTVYWVppYzhz?=
 =?utf-8?B?d2I4THJtZjRmTXdVM3BvdkZia2tGTVBLSThUa2I0Tk4wN0NmVjViN3Z5ZW5q?=
 =?utf-8?B?ajZqZkJDVkpQZWhoRXg5cWI1NUFwazlYRWxSRzhzejQ1WUNRQUU3STl6WmFl?=
 =?utf-8?B?dXFnakhSUllVWm44WUhXK2J3UmRhbVpTaDJmUkZkTEpHVCttY2F5QWYwb3VB?=
 =?utf-8?B?WlBKZVlkOG9FaHUxYndnWlk4a3A4WE8yU0hDZkxyU2l4bTRjZU0xTnBzVXdu?=
 =?utf-8?B?b1lTcnU2ZUNmUFFWc1UrZDhrdFhNc05hdU1sV2xJa2JPQ1dvZDZ2WkFMNGZR?=
 =?utf-8?B?NXZLMzcyT1k3RVMxNjJ4OE9OZ1dyTzNWN2sxeUpock9oRzJXTkFxaDd3QW5J?=
 =?utf-8?B?cEFEOGZBUkc2RTluTndmdTVTd1ExZU13MExxNUlXdlhLRldKa3hoajNJQzdo?=
 =?utf-8?B?SGx1dGFsdzhkVElWYUNablhJOUllQURzVk1nTUxsSHNZY1RraHU3L1VaOG5l?=
 =?utf-8?B?YTNQM2tPTHJNdUxvaXY0MGxzVlVzdzI1dnJGai9paVpzOThrOG9KK1UvbWNp?=
 =?utf-8?B?THUxQ2lqWUpNbmJQL0NpZitZN0g2RHp1a1o1cVFRR1JLcUxaVVdjWVVZeWxm?=
 =?utf-8?B?N3lSY0ZBcWtKWGxMSXZ5ZEJyL09NUFZDbkErcUhtMm9Dbko3TGQzc3JFWk5H?=
 =?utf-8?B?MGpldTRsM1N4T3ZocVlUTXpyM0pHMFZDWmZwQzdzbS8wVDluVnhNaFZwaTM5?=
 =?utf-8?B?TldMcEpydWJXL2FPMWRjdkVZVUErN0toLzNScVRpMUhZRDZyMmcxMVB6QjI1?=
 =?utf-8?B?b2dNaHVFLzRoQ3ZTMDM2WUJ3WkErUThHaFlDVlRIZ2NZT0FPZUF1OVNSZVhx?=
 =?utf-8?B?WmR0WW05d3lIUkZXTkd1MzRBRFl5V0t0ZzJONGlnbW1XNU9mdUlwWityN1Js?=
 =?utf-8?B?Vmsxc1JQZlV2TTAzenFZdmk2S1UySXBjaGpIMEswTTdWZEhxRUtRN0RBTFBQ?=
 =?utf-8?B?bWxFcmlLd2kvTUY0Y0JnQ05CREpMZlpsUEM1OHFRSFltZlMwS2VSY2d0ZDlB?=
 =?utf-8?B?bS8zUmMrQVlEN1ZmUkppQzN4QS8rd2lzek1rUDUrS3JiUEdGTDBIR25QTVMr?=
 =?utf-8?B?R2lzWm5YU1h4Q2p0SVl6Vi9KRG9hM2pVNmRYZW5TVkhNZVdZU1pBd3VudjlE?=
 =?utf-8?B?VmtKRitJdm5KZmpTeXdCNklHNlQ5S2hhdVdKVEM4b2ZPNDZWaUJlVldTRktJ?=
 =?utf-8?B?dk11WE9CdEQzOVJNd2d5bVpqS3JaYmJSVDF3SG9kYmtDanhmWkNPS2lyNkFx?=
 =?utf-8?B?U0h6blVrdDA5UzI0cmxEQmxqMjM4QTRKRThLLzNDYU5CbEVVQ3dzWnFXRVI3?=
 =?utf-8?B?QUlGamJQOXhveWdyTUp2SjU2RU0wUGZ6eklKK29PK1BGNHZiL2JKYVBlKzU4?=
 =?utf-8?B?VXpZcTA1TlZFNkxEZXpYMWtPRzNqZTJNV3p6bWx5VE1hRmJkdjRqZ0pNVCt4?=
 =?utf-8?B?VFhPaUFWbDRuSlNIcVo4R28wSVQyRkZjczVVU2I1dHJ3WDhCRVRHNm4xU3c0?=
 =?utf-8?B?VVpYVVNwYVc0QlJLRkF1TmZTc0YvcjRsYjVoRWhIeTVoNTc3ejdYZngxRnlp?=
 =?utf-8?B?b3lCbTlFQnVIcTF6QjlSYUJvTG9aanpzOVEyZFdHK3lJOU85QVFPR0JSdXJH?=
 =?utf-8?B?OVUwM0s2RVJWR3dDenVhNE01cnF2WnF6VVdjOXV0Y3IvVzFUSVNnQkxTbDlr?=
 =?utf-8?B?NWdWWEZEaDVPNkFFbnRpTmpPTnR1TTVmM01SMmp3RXFWZkpZMklTd1lWUDF3?=
 =?utf-8?B?bkV1dlB1Ri91WnZVTHZYOFM5cXpaVmRsb3gyV3IrWU9UZTUyQmlkQXZZQlRj?=
 =?utf-8?Q?WxI7TGoFfQt9UfoUUGBdV/8EYYaKaDNtW1Z7nPvt/c/B?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 325b9f48-efd8-430a-28d6-08dc6f56b969
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2024 12:02:24.7800 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aNkpEAclGwm+a7N4AVGe9szCg9YmC3aNd6jta30t4RpuvvjRVQJgqR5lbYHRxUegxFfAVa896vVZpRJGNHQ6Kg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8694
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

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IE5pa3VsYSwgSmFuaSA8amFu
aS5uaWt1bGFAaW50ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIE1heSA4LCAyMDI0IDU6MTgg
UE0NCj4gVG86IE11cnRoeSwgQXJ1biBSIDxhcnVuLnIubXVydGh5QGludGVsLmNvbT47IFZpbGxl
IFN5cmrDpGzDpA0KPiA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IENjOiBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFJFOiBbUEFUQ0hdIGRybS9p
OTE1L2Rpc3BsYXkvZHA6IFJlbW92ZSBVSEJSMTMuNSBmb3IgaWNsDQo+IA0KPiBPbiBXZWQsIDA4
IE1heSAyMDI0LCAiTXVydGh5LCBBcnVuIFIiIDxhcnVuLnIubXVydGh5QGludGVsLmNvbT4gd3Jv
dGU6DQo+ID4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4+IEZyb206IE5pa3VsYSwg
SmFuaSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiA+PiBTZW50OiBXZWRuZXNkYXksIE1heSA4
LCAyMDI0IDM6MjkgUE0NCj4gPj4gVG86IE11cnRoeSwgQXJ1biBSIDxhcnVuLnIubXVydGh5QGlu
dGVsLmNvbT47IFZpbGxlIFN5cmrDpGzDpA0KPiA+PiA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+DQo+ID4+IENjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4+IFN1
YmplY3Q6IFJFOiBbUEFUQ0hdIGRybS9pOTE1L2Rpc3BsYXkvZHA6IFJlbW92ZSBVSEJSMTMuNSBm
b3IgaWNsDQo+ID4+DQo+ID4+IE9uIFdlZCwgMDggTWF5IDIwMjQsICJNdXJ0aHksIEFydW4gUiIg
PGFydW4uci5tdXJ0aHlAaW50ZWwuY29tPiB3cm90ZToNCj4gPj4gPiBUaGlzIGlzIHRoZSBsaW1p
dGF0aW9uIGZyb20gdGhlIHJldGltZXIgaGFyZHdhcmUuDQo+ID4+DQo+ID4+IFRoZSBjb21taXQg
bWVzc2FnZSBuZWVkcyB0byByZWZsZWN0IHRoaXMuDQo+ID4+DQo+ID4+IERvIGFsbCB1bml0cyBo
YXZlIGEgcmV0aW1lciB3aXRoIHRoZSBsaW1pdGF0aW9uPyBPciBjb3VsZCB5b3UgaGF2ZSBhDQo+
ID4+IERHMiB3aXRob3V0IHRoZSBsaW1pdGF0aW9uPyBEbyB3ZSBuZWVkIHRvIGNoZWNrIGZvciB0
aGF0IGluc3RlYWQgb2YNCj4gPj4gYmxhbmtldCByZW1vdmFsIG9mIFVIQlIgMTMuNSBmb3IgREcy
Pw0KPiA+Pg0KPiA+IENoYW5nZWQgdGhlIGNvbW1pdCBtc2cgYXMgYmVsb3cNCj4gPg0KPiA+IERp
c3BsYXkgMTIrIGhhcmR3YXJlIHN1cHBvcnRzIFVIQlIxMy41DQo+IA0KPiBOb3QgdHJ1ZS4NCj4g
DQo+ID4gYnV0IGR1ZSB0byB0aGUgcmV0aW1lciBjb25zdHJhaW50cyBwbGF0Zm9ybSBkb2Vzbid0
IHN1cHBvcnQgVUhCUjEzLjUuDQo+IA0KPiBXaGljaCBwbGF0Zm9ybT8NCj4gDQo+ID4gVGhpcyBp
cyB0aGUgc2FtZSBmb3IgbXRsIGFuZCBVSEJSMTMuNSBpcyByZW1vdmVkIGFzIHBhcnQgb2YgdGhl
IGNvbW1pdA0KPiA+IGNhZjNkNzQ4ZjY0NiAoImRybS9pOTE1L2RwOiBSZW1vdmUgc3VwcG9ydCBm
b3IgVUhCUjEzLjUiKSBUaGlzIHBhdGNoDQo+IHJlbW92ZXMgVUhCUjEzLjUgc3VwcG9ydCBmb3Ig
aWNsL2RnMi4NCj4gDQo+IElDTCBkb2VzIG5vdCBzdXBwb3J0IFVIQlIgMTMuNS4NCj4gDQoNClBl
ciBic3BlYyBkaXNwbGF5MTIrIGhhcyB1aGJyMTMuNSBEdWUgdG8gdGhlIHJldGltZXIgY29uc3Ry
YWludCBub25lIG9mIHRoZSBJbnRlbCBwbGF0Zm9ybXMgc3VwcG9ydHMgVUhCUjEzLjUNClVoYnIx
NS4zIGlzIGFscmVhZHkgcmVtb3ZlZCBmb3IgbXRsIHBsYXRmb3JtIGFzIHBhcnQgb2YgY29tbWl0
IGNhZjNkNzQ4ZjY0NiAoImRybS9pOTE1L2RwOiBSZW1vdmUgc3VwcG9ydCBmb3IgVUhCUjEzLjUi
KSB0aGlzIHBhdGNoIHdpbGwgcmVtb3ZlIGZvciBkZzIuDQoNClRoYW5rcyBhbmQgUmVnYXJkcywN
CkFydW4gUiBNdXJ0aHkNCi0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+IEJSLA0KPiBKYW5pLg0KPiAN
Cj4gPg0KPiA+IFRoYW5rcyBhbmQgUmVnYXJkcywNCj4gPiBBcnVuIFIgTXVydGh5DQo+ID4gLS0t
LS0tLS0tLS0tLS0tLS0tLS0NCj4gPj4gQlIsDQo+ID4+IEphbmkuDQo+ID4+DQo+ID4+DQo+ID4+
IC0tDQo+ID4+IEphbmkgTmlrdWxhLCBJbnRlbA0KPiANCj4gLS0NCj4gSmFuaSBOaWt1bGEsIElu
dGVsDQo=
