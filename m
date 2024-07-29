Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F310093FF91
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2024 22:33:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F1E910E482;
	Mon, 29 Jul 2024 20:33:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kquw3TTz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C377010E482
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2024 20:33:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722285235; x=1753821235;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=5juv4KWkkJOrqmS+cFNwi1+d+N6fMBZb+SsHPW3VgRs=;
 b=kquw3TTze0F64D3TnJyeY8QCk5AZNZ9WVP00BmmqbmpUCGod/WCb5vNG
 6YQYSxhP8fvsC7qqlgcIvf5rxdPJfOQz/q5RpLdSOwGZYUI/oCBqnRQHN
 /nzspzabwXijYsrxt3+jYoQ35CkoXXxhrDe0P2ENzvJsvKUzL3xac63Iw
 Jhpp0X5wa0W+ECiphMBB4d7ixUFrL07irbXZnbM+aycETUnjH5vEbusWQ
 pBZczzgyOWCNZEb21E07PkG5GdSa4Yo7I46DPenHaE3htdm3Ykofp8Jlu
 A7n4Dl7h/jVExe6jUiWbe+9EllPg51r+SE/rWFetPu6b2kxwd+5FDqRvE w==;
X-CSE-ConnectionGUID: SZKpj6H5RwmJtIwaONfxhw==
X-CSE-MsgGUID: 42YqhENfSV26mwJxGcmt5g==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="45486528"
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="45486528"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 13:33:54 -0700
X-CSE-ConnectionGUID: kFhHtlr7QTuJRsp/isNNMA==
X-CSE-MsgGUID: suobZmvqSRW7EyFbpgeGHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="53745076"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Jul 2024 13:33:54 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 29 Jul 2024 13:33:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 29 Jul 2024 13:33:52 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 29 Jul 2024 13:33:53 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 29 Jul 2024 13:33:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=owVPYACv8ospNMxHLuDusRH3gsVOnDS2EJMA9VuWXSj0BOZY9sCXwzJCkp75r7OK1A/f4q0SUFpbWgUM04/6+rgR6Q3p8egQeNoKLGiQiFWYSyuz0KdSx3WmO8tx2EFa4ChAqYQP4xukvJ7gpRSsaY4iCNnCXBau4Zxuthw602o6RBUBgmNT4FTfoYhX3LVVo6RNX+iAjezGd1fsq92zMcI0eLc3lbMatlyJ+HPGI7pLVjqXlG6LWDB3xDeJxV/A7EVvYniwiIU3DXydy4F5bu8lCMk2R+uDbEQRmSFiDrQ8O6IZJLY8lB87hCEmAvo72IRhbFVZqbD1mju9eHpt6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5juv4KWkkJOrqmS+cFNwi1+d+N6fMBZb+SsHPW3VgRs=;
 b=TuTQtzc0KSGfozNNs18Ieg3cHu4I7z8f/HiHPmKPxmf2aX1FQhbFJ44mE67Q6+wZyuyaxozb8/WeZISPoCRIHIXlVhwoYzzGP/ZcujNTew71WecnU2KRxScS9LAsLa8GDNtWpE3PilCj1zEbk9Cj82/N/bBWSnQ8ZlPxjZGDasIIkR4rXoj63XpjaqOIpmVQJofJv+gBx5uxRu44HZtPW1H8m7LKi2jChsCu3ltW9T0a5fd57gBXWBQ3Dbu3BkcfK0hTOJDr1nZff9ofbBGsq6N8kIx4tDKCz6Fob1uLMvTysp60sN9Mg5wAQKSzER2fXr9QNC8T5udnJbPJmPWAqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by PH7PR11MB8249.namprd11.prod.outlook.com (2603:10b6:510:1a7::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.16; Mon, 29 Jul
 2024 20:33:48 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb%7]) with mapi id 15.20.7807.026; Mon, 29 Jul 2024
 20:33:48 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] [CI] drm/i915/dmc: Hardcode path to MTL DMC v2.22
Thread-Topic: [PATCH] [CI] drm/i915/dmc: Hardcode path to MTL DMC v2.22
Thread-Index: AQHa4fI0uI+X2MsJgESNr+YetVbQnLIOI9uAgAAFRIA=
Date: Mon, 29 Jul 2024 20:33:48 +0000
Message-ID: <IA1PR11MB626644915C72CC425C3CF149E2B72@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20240729200441.2337924-1-dnyaneshwar.bhadane@intel.com>
 <172228405110.1863.7409031889530703019@gjsousa-mobl2>
In-Reply-To: <172228405110.1863.7409031889530703019@gjsousa-mobl2>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|PH7PR11MB8249:EE_
x-ms-office365-filtering-correlation-id: 5d772047-85a0-4f72-fbec-08dcb00dc004
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?VWFXWit4aHc4Ulc4bEY2QlV4WjdoNG9hSXhmWTZ1RHpqTjJNcDcrMEJ1VGww?=
 =?utf-8?B?R2oxSTdPK2ZoNnZ0NkN0ZjZPSGtKTUFreUd2MUg1ZUl0SzNKYzkvcVlCVWd0?=
 =?utf-8?B?ZW5ud2R3QUhwVzk0V0M2dXVLQXhzMTNORU9nSW9sWjVrRStVVzN2Zk5zYThx?=
 =?utf-8?B?N3dob0x6ak8xU0d6SStBaE42VkkyNko1L011bXd5c05pN3hkRzJJbUVRa3Y3?=
 =?utf-8?B?TFJRSjJORWJXYzlZenROclMyb2RnYVV5L0NiMlBJa2x1YWt1end2cndiSTdV?=
 =?utf-8?B?bnBveWVRMW1OZUxjQXYrNG1KYWs5OFNzMVFKM1RsZjBTa0hnZE42Tm5pbEFT?=
 =?utf-8?B?VHhDTXJ0VnBGRU52dmZvNHhOVWszNDBNRmRZYzNxRnprTTdJZUkyZ0dkTmtT?=
 =?utf-8?B?OXdNUVZQUmhvME9ZY1J0dmF2YUpXS3FFNkFhUHZlSWhBMmRabUtYMzNIUEZK?=
 =?utf-8?B?dVozZEZQbENOS1hOT1k5bFhUMzk5a3VvSWN0R1RLMmxmTmp2STZHaGtDYzBM?=
 =?utf-8?B?WjAyb2hESzhMRUk0cDlNVDhuZEY2MGZRZ0FWU2EvNkliU0ZaU0hjNWU3Umdu?=
 =?utf-8?B?MndRL2c4M1F6L3lMUStJUUphS2lMMS9QUGw1Y1VpTlJqUUo3T1RCRjdxT2Vs?=
 =?utf-8?B?d1RHWlRpMnNyYWhjbFkzWGlMcVZsd3NSenJuTlFJa0JmczVONS9DVkZ0Nm82?=
 =?utf-8?B?SGRmSjl5Y01WTlhpQlk1bXU0dlZqYW44V2d1ckxtbno1TVlUb1Rjd1Vxa1lM?=
 =?utf-8?B?UGpwem9oSkVhVE9OOTlEQ2JNckg5TEdCb3A3azExeHFxd1ArK1ZDaWtIdzZM?=
 =?utf-8?B?eTNQZVVDeUtjblRwWkJpU1ZyRmRSVGw1YU9Od2FPOXpsQWpneW9OSUhyZGdU?=
 =?utf-8?B?Q2orQitMNlNJTjBoWkUrY0xuNGVoblFJRnVkby9HZ01NZC9henZXM3RwbUdn?=
 =?utf-8?B?QWhRc1htVkhuQjdnOEhIcXFKZWFPRmoyZld3QnJsM29YMTJpSmdKSEdrajVo?=
 =?utf-8?B?akcrYnRhazU1WllabDFaTzVMRDNLaE1sbEVhbDJMbGR5bG9PeVlWdE4wZWFE?=
 =?utf-8?B?NG1LdEp3K0pJYUNUT0hkWFE2YmNzdXJrUVpubGZiNjNrUDhBVy9VWThQWmZV?=
 =?utf-8?B?cEZXL05GU3dwWXNyck9DL3ZIVkRaSmNmUmw5SmM0dVF5dWZ6NVU0R3FOTEpn?=
 =?utf-8?B?TExoTHZRNktLZmM4cGJ3bW5aR3o4SE8vb2VCcCs3Q1IyL3J0QnlxVjFPNmF5?=
 =?utf-8?B?R0VXZFpoU1Izd2YwZXg1RmF2MklpRXJWTGpQY1ZHamg1NTNnL0dSclcvWEhQ?=
 =?utf-8?B?K2FOZDVyTzB6WUZJMU5DUSs1T1c4VEJBQ1RVeStSaWdzSXFPNDdkY2t2ZmdN?=
 =?utf-8?B?c2lUSzcybGtQU2gybjVIZ3Q2NXB6QUxwMThFQlZQZjI4d2NJRVpneXJ1WGk0?=
 =?utf-8?B?WmJMdXpGUzBrQ0FuelN4L3hoMDVuczBvZzR0N3FHV2x1RURpYnFxK2xlK29N?=
 =?utf-8?B?WGNuWjA5WUkrYUY0SEpNdG1Hc0pTaTVheHRHLzhVR3lYMzI4d21iakQ2ZDRl?=
 =?utf-8?B?N0RUZXhROTlrVFl6WFBoZ28zVVRJNEZzR2QzQkxPRlRWUWJId1U5Q0pZU2Vt?=
 =?utf-8?B?NmpZV2J5SXppMEk1K1NhWlNjdTkzcUtZOGVyZmh1djNrbEFzRG9jRlRFcFZV?=
 =?utf-8?B?UUoxRXc5VDhnL0NJNlM1OXJ3VVMzQnJyTkxuTWZ1c3JhSitOR2k3bU5hS2Vu?=
 =?utf-8?B?QTdSYVJwRWczYUZZUWR6bGVkNkRKQktRYSs1aTNGWVpsTWlUUVNBYjBkQmNz?=
 =?utf-8?B?azFyM3lsSWpsSHZHZDhHYVRHcWQyc2Uzak9rMDFoNFhHaVN1SW9lVElsNmkv?=
 =?utf-8?B?U1FVZTZCbmpkU3Z3azl3WjVXaElybFh4THFzbmtudDhQdXc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RmlyNVNjampDOURMdHU3NGQvTkV6SU5XdXVoL0ZFcE9vTGRuT2YrUnhzc3Fs?=
 =?utf-8?B?SGQ0ZU1kcGhWeXBQZzdjMXdVZXNlSUVoQnFvZVllSzRCOTRnZFVEczRkamZG?=
 =?utf-8?B?T1lDMjRpaUVnNEJWdXFXUXpOQkdBblE5bTFoaTRXMUVnLzFBb25pcmZDZWtR?=
 =?utf-8?B?U0Z3Z0o1bGNKbUpEWEZsTGtrYmkrSkVwdTNvVE4vbHorQzJoQm1IQ2pWWXBr?=
 =?utf-8?B?b2M0SHMzMkdxK2lIR1pPRWhTQ0NoNVRzWW1LUmR3Q1FtWDl5bmtBMUw1ZVNj?=
 =?utf-8?B?cjlYdnRIVU5vZTdmUzQwRC9OOHpWMmRncGlGOW9ldW82SlFPR25VSGkrQWs5?=
 =?utf-8?B?RDB6RXM3alY0bFZPLzAyWUpyRU1WSjcyQzJQNFhIYUduejQwRmh6WE16akF0?=
 =?utf-8?B?SVlIRndMU1UrdDYwYStud3U5cVZ5bDBIeHQ0Ujd6NFF5TTA4cVNUSHQxMmNt?=
 =?utf-8?B?Ty9IanBCc25PUG1IU3ByTVJHS0x3Wk1ocnFlLzN4QXJlbUNFb1NvcmpPSGRm?=
 =?utf-8?B?OTQ5SjhORFFEMk15eFhTeXJLSjcxdG9Lc2wwWnZGU1lXTWE2MCtDa3VkVDdU?=
 =?utf-8?B?U3lkSGdmUGNVTlZtYzVVUGliSy96OTdoeW9nYVlpRnFjcU1zYm5RMmY4d0tB?=
 =?utf-8?B?cCtUWGJXWXdNL0ZUbVE1V0dYTHVUMjZJakJxeUZHRWROeHpMUmh3TkJaeXNt?=
 =?utf-8?B?SUJLZHBFQ0gzSU93aURxK2J1c3N5cWo5bHRwWmlYbmMvNFcxSzVUeGRYN1Uz?=
 =?utf-8?B?Vlo1clExaWhadmFtUzFSM3ZHTjNzOTVTVE12U05XYzNiQXBXZGlZcGQrc3RM?=
 =?utf-8?B?ejJVbkFpOWdoYXBTSmlkb3JKSlVVSmhBVGRpdldMQ0sxT1N2VEpQRHVRUzVI?=
 =?utf-8?B?WkNKdCtwL1VLUXJNUmdGcUpnTGkvTGZpakthc0M2Wkhwejkza3hqSDk0aHNU?=
 =?utf-8?B?dTBXY1lFY2hQVW0vdzJidi9nT3UraHdQU3RCU3E4WW1XM3Z0QTdwRWVKckFn?=
 =?utf-8?B?dW45UVQxT3ZRSnZUQUVBV0praHFxK1YwdmMrRDQvV2krZ3cxZE9jRVJMYzM2?=
 =?utf-8?B?aHd0cGYycU1HTGV5clZWTGJXNzlBcXpiTjNyNkZSSkJ4UU5GV21RclhOc0ZN?=
 =?utf-8?B?eUlRa0dndWZteGVmbzd4VHBMcXJpc1VGU2pDVFBuNzR0a2tFOFk0TDZQNGl4?=
 =?utf-8?B?cnFFd0NHN1l5djgrQnZVMGNzMStjb3F4NUtVcUpoNGtIQ3NJM1Y0UWQwNHhi?=
 =?utf-8?B?d3IrNlJTY3p1cTlBYmpvbGRLbEMvdEp0ZGNVNlpJN1JHN3NhNk9QZUw5aEU2?=
 =?utf-8?B?bXVBTk1sRXVJUHBHZGdxYUIybllueFJEL1I3RCt2d3NUSFowVFlrdGpET0Fz?=
 =?utf-8?B?WnVLenYyM3pDWnFCUkJoREYvZ0NSdVJEN2VyOVU0eFdUek9qaTVvT2RyanUy?=
 =?utf-8?B?YlFwZi82UDhPbzMrS05TMXAxVTlEV2tmVEh2UDdxUXhEVWZ4OXJwZzR4V0t0?=
 =?utf-8?B?dExpUVpnOG52ZjJ2Q2wwT3dZZlloUGJZQWRSREFhOHYyKzdCWnNkd0Z4UVVZ?=
 =?utf-8?B?SzAwaXplRFZQMldTMnhGWmZrMmJ4U3c3ZFlhb0lRR1gxb3g2OGgva3hIS2lV?=
 =?utf-8?B?QWVMQmljM2pwdlRBbGZqaXVza3FvVkZ3MUVybFJjYjZCM21VbFdyNDBYeTJD?=
 =?utf-8?B?dEc2N1NhZ1pOeGlHM2pYNHhnUWppRG54aWFNTmx3VXhjQ3hNZmM1eklUWThN?=
 =?utf-8?B?eEs4MFVOWkhJWTRVbnBTdnJqdzQvZVdudzd2S0VBSjErN3dFalkreXJvblFj?=
 =?utf-8?B?NFB2NHpJRDVBblVRZmJFZVhsTm9yTFowbDUzLzdDNzdxeFViNXVpeldUS2tR?=
 =?utf-8?B?em9zT0VnQUx1emo1Q1JDcWlseEwyY3VqUlJ2RGp5bjFTSlA4ZnNlaUd2YkQ5?=
 =?utf-8?B?Q05kcXBPaHdkS0JQR1d5a3lna1ZtWHpLeTR3UzJ0a0pCNEtJSVR6amVSQ2tZ?=
 =?utf-8?B?RW9Ua3JkRkFqWkUyallEZzJiOUNpeU0vakhXS0JlazkwMlhEZVNZcXBPUkJk?=
 =?utf-8?B?OEs1cFNvVnRzaUt1b3dOSzJ6QWNXbzNRWDd1ZXp0Wm9zeE9VWk10QmppNEtE?=
 =?utf-8?B?RmlqREQzZDNBTThQRGVGKzkxV3JlcXhBUVZmd0dQTGtmeGZ0WTRLb3Bvb2Vh?=
 =?utf-8?B?WFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d772047-85a0-4f72-fbec-08dcb00dc004
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2024 20:33:48.1952 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XYVmmJlf9y2A/9yatTsWKFmeY+Oh4fXQQkzEan3+wv2Zil2BlkbtAhwF6zLA+I2EmYY7AtNON4ZpiBh4yW8dMkf0PnCObz+li94U0NvCa/w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8249
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU291c2EsIEd1c3Rhdm8g
PGd1c3Rhdm8uc291c2FAaW50ZWwuY29tPg0KPiBTZW50OiBUdWVzZGF5LCBKdWx5IDMwLCAyMDI0
IDE6NDQgQU0NCj4gVG86IEJoYWRhbmUsIERueWFuZXNod2FyIDxkbnlhbmVzaHdhci5iaGFkYW5l
QGludGVsLmNvbT47IGludGVsLQ0KPiBnZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBC
aGFkYW5lLCBEbnlhbmVzaHdhciA8ZG55YW5lc2h3YXIuYmhhZGFuZUBpbnRlbC5jb20+DQo+IFN1
YmplY3Q6IFJlOiBbUEFUQ0hdIFtDSV0gZHJtL2k5MTUvZG1jOiBIYXJkY29kZSBwYXRoIHRvIE1U
TCBETUMgdjIuMjINCj4gDQo+IFF1b3RpbmcgRG55YW5lc2h3YXIgQmhhZGFuZSAoMjAyNC0wNy0y
OSAxNzowNDo0MS0wMzowMCkNCj4gPk5PVCBUTyBCRSBSRVZJRVdFRC9NRVJHRUQNCj4gPkhhcmRj
b2RlIHBhdGggdG8gRE1DIGZpcm13YXJlIGZvciBDSSBwdXJwb3NlcyBvbmx5Lg0KPiA+DQo+ID5T
aWduZWQtb2ZmLWJ5OiBEbnlhbmVzaHdhciBCaGFkYW5lIDxkbnlhbmVzaHdhci5iaGFkYW5lQGlu
dGVsLmNvbT4NCj4gPi0tLQ0KPiA+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZG1jLmMgfCAyICstDQo+ID4gMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0
aW9uKC0pDQo+ID4NCj4gPmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RtYy5jDQo+ID5iL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZG1j
LmMNCj4gPmluZGV4IDczOTc3YjE3Mzg5OC4uNWVmMjJhNzZjMTFlIDEwMDY0NA0KPiA+LS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuYw0KPiA+KysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuYw0KPiA+QEAgLTExOSw3ICsxMTksNyBA
QCBNT0RVTEVfRklSTVdBUkUoWEUyTFBEX0RNQ19QQVRIKTsNCj4gPiAjZGVmaW5lIEJNR19ETUNf
UEFUSCAgICAgICAgICAgICAgICAgICAgICAgIERNQ19QQVRIKGJtZykNCj4gPiBNT0RVTEVfRklS
TVdBUkUoQk1HX0RNQ19QQVRIKTsNCj4gPg0KPiA+LSNkZWZpbmUgTVRMX0RNQ19QQVRIICAgICAg
ICAgICAgICAgICAgICAgICAgRE1DX1BBVEgobXRsKQ0KPiA+KyNkZWZpbmUgTVRMX0RNQ19QQVRI
ICAgICAgICAgICAgICAgICAgICAgICAgRE1DX0xFR0FDWV9QQVRIKG10bCwgMiwgMjIpDQo+IA0K
PiBUaGlzIHdpbGwgbm90IHdvcmsgYmVjYXVzZSB0aGUgYmxvYiBpcyB1bmRlciAiaW50ZWwtY2kv
Ii4NCj4gDQo+IEJldHRlciB0byB1c2UgdGhlIHBhdGggZGlyZWN0bHkgaGVyZSwgaS5lLiwgImlu
dGVsLWNpL2k5MTUvbXRsX2RtY192ZXIyXzIyLmJpbiIuDQpUaGFuayB5b3UgR3VzdGF2bywgVXBk
YXRlZCB0aGUgcGF0aCBpbiBWMi4NCkRueWFuZXNod2FyDQo+IA0KPiAtLQ0KPiBHdXN0YXZvIFNv
dXNhDQo+IA0KPiA+IE1PRFVMRV9GSVJNV0FSRShNVExfRE1DX1BBVEgpOw0KPiA+DQo+ID4gI2Rl
ZmluZSBERzJfRE1DX1BBVEggICAgICAgICAgICAgICAgICAgICAgICBETUNfTEVHQUNZX1BBVEgo
ZGcyLCAyLCAwOCkNCj4gPi0tDQo+ID4yLjM0LjENCj4gPg0K
