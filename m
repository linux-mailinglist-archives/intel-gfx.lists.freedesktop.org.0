Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E59EBE801F
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 12:15:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DDA810EBA3;
	Fri, 17 Oct 2025 10:15:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RSmMZLNm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0E4910EBA3;
 Fri, 17 Oct 2025 10:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760696155; x=1792232155;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=o37dZCntBXUhbHZuv76gD6uCl6PadfmLDVu62gJyoVA=;
 b=RSmMZLNmVSd++jR9AqOHFbDlgZs1D18dpHl7Gs0uOSsajCqy1/bAF6UE
 076sKPP104hepOVUd6Z1NgYrTgp4dDi0uYmlajFFUiXEHLkbxyxX1IwmM
 7QwwH9jbCLPoqpNeLZDdyClGHsIQAI3V6UDOqJSAJftUr9PMrH2v9I/4r
 XAzbMTuT7az2fndmVzfE6C0l9yxqih7qJMlB5axJ5jXz53RyUfs+4zsjo
 tN2kQ38lV6ZSfC4cewAOFMymH4HOblWW20ehSgIYULZXq/mnhcx4eYlom
 Ko8Ecl0uKd3RdDdF4PouQIP0FZokVTxhj02IpEQfYnMWTcRM2XtZOavG2 A==;
X-CSE-ConnectionGUID: 1Ck9o/coT5WTx7sKTfKzyg==
X-CSE-MsgGUID: 0r1rSlvVSuGtQUWRkCXOwg==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="74347123"
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="74347123"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 03:15:54 -0700
X-CSE-ConnectionGUID: xeejVgrRQBeazIPyj1qROA==
X-CSE-MsgGUID: XFeT/mjeSaGm4982XocPmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="182385602"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 03:15:54 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 03:15:53 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 17 Oct 2025 03:15:53 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.33) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 03:15:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wz5vxxO0TLWlxWgI9wpX9LwJUIZFrV9pa1oKnicI9Hcuq+yg/Lpfy/4k5yOMV1CMfrcf5bVR83U4lPah/73JAqfzPe69szQHmRwYdp1eSQg+wBK4zN+6RQM880yf4rQzjDn2IpS9EPR0ucuTuDSD50sul9UAAaDS4FRAGfQ2Anb3E/PbvYRK2iBbbxSQBGBwNETeVXjBfmQteleWxg7OG3SZg0b+Vd6CBc3oK9fLkymKc3JntOYW/b4U6ZTlHAbWTTvuJK9TOJOPRzBS8iJVdE+JIg80AxZiimMk+lGBAsPfUFnbheNizEneuE8INqb8lYwTfiraFgIPMcltdGOHLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o37dZCntBXUhbHZuv76gD6uCl6PadfmLDVu62gJyoVA=;
 b=h/wFb4yP8neWKK4apPxzfaL15zx4E4F9nHK/zYzJELZj/H5LAcMVYBJF7QU2lRXbNTa29SKgM4ARqxoHtwlXXqFzGsk0dBG0+ICoQGQbnLVZO5rlLVK9nNs356V1DbwlNHAoy5tgonwKmYEQgZ3lioMpU97um4fg1cuHbv8v67csnfwH61p0/YLI4CFII+IoV0xtWEo0OE+zea9tZhT2GV1+3RDFM9Do147qfYNeUom5HLgTBcfKHirYMd3/IRZAhRZ7Ynv2HmTqLbsRhu3JamabVV5RbfoqapYaSe5FfH8FUmo1Zzc/mtJaqsZp0p7/yZ98mvcl5SgajAEa10EanA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH0PR11MB5157.namprd11.prod.outlook.com (2603:10b6:510:3d::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9228.12; Fri, 17 Oct 2025 10:15:52 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9228.011; Fri, 17 Oct 2025
 10:15:51 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 1/5] drm/i915/psr: Add helper to get min psr guardband
Thread-Topic: [PATCH 1/5] drm/i915/psr: Add helper to get min psr guardband
Thread-Index: AQHcPyUPz2Y/dnBy/UmpWoP/5QJAR7TGDIuAgAAIa4CAAAXlgIAABOAA
Date: Fri, 17 Oct 2025 10:15:51 +0000
Message-ID: <7faa7134eb0ef1a558bc71c5e9f30125132a55a1.camel@intel.com>
References: <20251017050202.2211985-1-ankit.k.nautiyal@intel.com>
 <20251017050202.2211985-2-ankit.k.nautiyal@intel.com>
 <4300808467d7a93f080b170faadee3748e7bb2e6.camel@intel.com>
 <ad6cd831-517a-4eb9-b812-1fb4dadea00d@intel.com>
 <043a61da1973f6bfd5cc9b45c84c1c13e038828e.camel@intel.com>
In-Reply-To: <043a61da1973f6bfd5cc9b45c84c1c13e038828e.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH0PR11MB5157:EE_
x-ms-office365-filtering-correlation-id: c4c19e93-7cff-4378-674b-08de0d662694
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|10070799003|376014|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?czEwYXdnMFQ4dnFBK0IwTU5xblVveUVYQXhZNEpGamVJenhkcSt6blhBK1BG?=
 =?utf-8?B?ekI4aERTbUVIL2dlV2p1Y3Yzb2V0dWVyTmcweDA4cWZxY25mdHh3UDRBa1JY?=
 =?utf-8?B?dWN1OHhQRElpem8rZ1J0K2s2NGdOOFV4OXJXM0QreEM4a1dtaStDVU9sWkwz?=
 =?utf-8?B?ajJPaktEQ2VCNDFIT1FXdy8vYzNqS2M0Nkp5N2tOU3VrT0NEc0w5R01qK3FK?=
 =?utf-8?B?aUlwNFRsMFg3MlRYdmVWUzl3RVVXdDExaks0VXBLY29kOXVKUkxjSWF4T2pv?=
 =?utf-8?B?bi9lRG9qYXNseFhZSWJZN3JUaFozSVFpd2IrdTFKRVdzbjFWZHI1UHU4L09Q?=
 =?utf-8?B?R3JMSEw1S09raHFUVUw4Wnl3YUgxRm9RREYyT2M5VkNZVGxGMTFhK1Y0TVZL?=
 =?utf-8?B?Rnp1YW9nRDZEN2R6UTNzM1gyVHpBK2lESndndUtad3E1RGw5MzFpZnpVdlNz?=
 =?utf-8?B?WFBBRkNzclI3N2FBRjM5SDZLT0NQSFBMMHNmbmFMNms1UU9ZYVZjbDVrR21E?=
 =?utf-8?B?RHBzZXlIVDhhSjd5V3phbW1ySWx0SjR6SXlVWXZIRTYxZHplUWhPVG1Ja0R2?=
 =?utf-8?B?NnRHcFNZWXZYMDluM1Rrck1KVXdwR3hoRU10c3d6NHROU0JiQUhSL1NXK2hl?=
 =?utf-8?B?VTdBWFY3bjRtOWFoQUswM2thMkVQS25JeVBUQTh3ZHlnWlNNVng1bU9tRWJz?=
 =?utf-8?B?NUowcEJQSzJWOUF3Skw0eEE0Mk56OUQ1Zk1CbHdjNkFPMVRyN3VFVkVycFlE?=
 =?utf-8?B?djdYODJmOXhpYjJCWlZXZXZoN3Q4L2RnT0pWWFNyeWMzYVo5dTE2L0FyczJD?=
 =?utf-8?B?aFdVdTVXYWNUU3dkTnJaZDVrVDRTV0JXODQ5Ui91Qnd3YzJtQ2tQRW10OVNC?=
 =?utf-8?B?WVJkVGNhOVFIVXFBY09kVTY0QmlobTQ5TmZoZlUxR2pteHFGRkxnME1HUkZI?=
 =?utf-8?B?TThWZHVJak1rejI1azlaZzMyaCtENEZYYjY3dmxOOVN0aTBSQms5YzduY1JT?=
 =?utf-8?B?OExVM2UvbVEvbVgzc0NDRkM3cWFnR29LNW5veXhlbjF2V2wxOGlLMDlrRXl5?=
 =?utf-8?B?OFl5MUtYcEN6d0hNN3RQMm5LODJHc0hUWXpXaTFXdVZybmRsSGl1dkdsdjkr?=
 =?utf-8?B?VVBlSFJjdjJqU1RDZlZVbzNwTklKMzlKRDJoa1JCTVBHOW9pME00a3VzTElS?=
 =?utf-8?B?Mm1NT3NzZlUrNThVRGp2SEF3SnF1OUo0U0JEeEgxSk1RN1ZDdHYvZFB3WGZF?=
 =?utf-8?B?NU03R3BnQkJ4Wjk1MTYwT2tFLzZDcjE5YTJwQ0M5L0EzSitMdFNhUkJCalpv?=
 =?utf-8?B?elpORk1ITXRvMGY2UXJiU2kvUEtoQ28vYUlpSnFXK1IySnlBK1dSVDd2Qktk?=
 =?utf-8?B?ZjBnbTFXc1NWOUM5T1dDRlYvTmgrUnlnZ01FWFJiem1ucGVXK3M3aWJGN1FH?=
 =?utf-8?B?bm0yZTN6c2NCaUxZYjFmVGV1czE1RFNQT0pnRkM3TkFxK1dpblRBNDhjNitk?=
 =?utf-8?B?Y3Z3Mm9vRWI1eXVjUWZVYXBEcEZtb003M2VhRlRlOVMyYTk5cm9Rb1Rmd0NF?=
 =?utf-8?B?SUdVZEltMWpidWdEMGlKRlBjMXA5MlhKZ0ZPUEtLc3N0NDJWTHNtZWZvaUpu?=
 =?utf-8?B?dlVQMHQ4NDFvdDJkTWlXY2JEbjZ0L251Z1lyc21UZzIzc2JTRUlaMFk0Z1dj?=
 =?utf-8?B?YWNYMzlEcUVJTkdWV3laU3hhd3o1SjY2K2l1bjU3ZW45anFGSEMwWTlkeXNN?=
 =?utf-8?B?TVdJQXJTZEJYVnVMbW1ybXphMzF5TW4rcTFWTjFmNHpHZEQyd3JrRGs0Y3hY?=
 =?utf-8?B?ZUZyVXU4aVZNSzQwQWdLTTRULzhoMldiZ2g2ZnRGQ0ZkTFJwMFVINHh1d3Q0?=
 =?utf-8?B?TlJueUk0eWRYVjh2QUc1RCtQQnFFNXh0NE9sR095eXplM1ZuaStscy9qdjZa?=
 =?utf-8?B?Q3dXNXAzdzlCV01mbVc3dUxxUEx1NzZTQjRhNnpMQVZWeEFRTmIrNk5Pd1JH?=
 =?utf-8?B?WEtzcHdTOHFhM25Wc3BFWng5M1NvTTVWZjRIMGZpcnhhUG0vRXA1K1dhN2Fu?=
 =?utf-8?Q?hbwdrb?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(10070799003)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N0oyWFlXenZyWUlaUDhjVTVlNm1TWEh4TE5EQ2pTLzVrMkRjbHB2MSs4aERa?=
 =?utf-8?B?U1JPNndzcm4wRlJLSFVhQXVvMHdyUGJ3US80UW1vNENyZ2Q3SDZlVWpTVnFS?=
 =?utf-8?B?dnZvUTAxMVFHSWdhaUVMejg3eGZ2elBJOHkwUkRNZ3Z4MTZndW5IclI1OW0y?=
 =?utf-8?B?dWlLa3VLVmpoTFR2eG9aSlc1eGUraHRWdTQwTFZGUVAvRG1qbkJ5Ynp0a3V3?=
 =?utf-8?B?Z0ZkWHV4eWFrbWtMVVdEb2ZaSUZpdFdsa09CZHd2MjYvSHp0YmdTRkN2ZEd2?=
 =?utf-8?B?WjJDcExnM2hvb05QZFVybEx5eVFSMnF4K1BnRkVMRHJEWkxDT3VqNkVNVDN5?=
 =?utf-8?B?ekt3YmllZ0VDVk9zYkd0U2Z2U3Z1Z1VsdjNKMTFPbXd2VTZHWTJkcUg1OXMx?=
 =?utf-8?B?emZEVlZTV0ZPMUlkY3ZqbUZhaHQ4Rm9RMEZQUGNSUGh0WnhwL2k2ZUwzeUox?=
 =?utf-8?B?ams4WXp2cnBzZk11MFJKeFM0RGNjY0REQzQrUTV3TEdHaTVhWnNML21DR0lO?=
 =?utf-8?B?MUo2L2JLbGx1TFRWci84cFMxQ3JxRUswUFFUbFI3eEw1cytvK3d5czczOGlN?=
 =?utf-8?B?UEpmaWR1dUlGcWlQUUIyTHltMThmUDdFWHcwZHhMUDVKQ2R1M1pnYjFPTFNS?=
 =?utf-8?B?U1BmcitweU43S2R1ZnRHYTRwUVRWTFg3eXpwTlF4WmlrRlB6aGQzeEJWK2JP?=
 =?utf-8?B?NG5rVFFhbGNaSEJXUlFpSHp1a0tkRVdGZGlqODI5RTh4djlUUmpPZzdjeHd2?=
 =?utf-8?B?YW5qSzYwQ2VESTN6S2V1R2lQdzNFWURKZFBZMGhIYklGK0RwTnFuaGpzRkll?=
 =?utf-8?B?eHRxcDB2NUF5Z1AzVFVzZndma1JCempHc2t5d3FkU1BLUUtBZUt4aTJkeFNB?=
 =?utf-8?B?T2hKTGpOako4aGlWRVNvOTZES0U1UDlocHRlN2w5VWNRazEzNVZHcWppeG1E?=
 =?utf-8?B?SWMrK3NmbnBUTndYa0FyWHZRazJ2ZWR1MEJtbmViSWx4dUp1UDRDc0xtTENM?=
 =?utf-8?B?R3VUWDQvcFQ2M2x5NnR5LzFqNmZVUUpVdUxYNGRCWU5MZlg0RENIMlBKRGpw?=
 =?utf-8?B?ajdBcDZscnUycUwvVmdNTVdCSmpQTmtwY1pvR0VKdWNOVzJqR3ZsdlZrQkt0?=
 =?utf-8?B?Nm5vTzhkcXNoZGxMaVkrR3AxdFNQMm9HZ29wSXV1ZWJjQTVPSmNMWjFWVEpM?=
 =?utf-8?B?VU4rMFd4QUh3RCsxNXo2UmNLUytiSi9ZY2RpYXU5RlNtQ01ibEpOa3FSYnZw?=
 =?utf-8?B?b2JmUGN0UXNJYlZGU09RRXRDQ3Bjd0hjWXhENjN1UitKOFRVU0VjTjlETFpy?=
 =?utf-8?B?YWVsV0swT1hhQ3BoRmtSNG8xL3dEVWVqVkdRcWFlWXlSWU1Ma3pKMEI4MEZ2?=
 =?utf-8?B?T000OGNEY0hEeS9YSEVJQjEzUUZGQUNTVGs5VWdzZGszWURQN090bERtMGdQ?=
 =?utf-8?B?WDhsWksvR2FiSW5JbmJYaUZWRHAyWlJFMzVkOFZuWDdTOFljNFJteU52Tlhs?=
 =?utf-8?B?cHg5ek13bVBsNDBnQVBXVVNINDExeEVnTzc0RzVIS3llVllSNXZvcU9ydTA2?=
 =?utf-8?B?N3Q4RXVBQjhKUWo1WHZ4QmU2VG9OV0NxU0xmczMrMFZvZndhRzk0bXp3T3Y0?=
 =?utf-8?B?eHh5NFY0OHNJQXdBOVZPS0xCMkhVR2JMNHluTTk5NkFmZlVQZjdVOXJydlAw?=
 =?utf-8?B?QUpRZURIVU5yU3R3ckp6K1hZK0RZOFpsQTkvZ09zY25MT2NJdGlORk03RE5I?=
 =?utf-8?B?MlJCNVZnekg0VkdkWVlVRG43aE9LRTZQUmRWRC9kZWpkQ21XYlUrOEg5RmFG?=
 =?utf-8?B?WEtaUldKWEU5dGlkVHd4SHdzRFJ1VmNCa1FEcU5paWw4bGYwL2ZJUk9saEkx?=
 =?utf-8?B?SVFwTWE2VTl0VGpwUzM5TytFVS9SSWtBQUZ3VnBlWFlWT2t0VjVpMWs5SDBG?=
 =?utf-8?B?V1ZMMmtZak9sNlpaOFY0UVIrVnRtbEpVamZreFVSQUdhSGRTTW9QU1BGS2gr?=
 =?utf-8?B?bk5NWGhWZ0Jtd0UrWjJ2a0V2dlNSZm5heVdRM3IwRXE3R0dOZzlHM0dOZ2xk?=
 =?utf-8?B?WU04MVlwV1A1bkhnOG9nbzVhcktnanRadVZCeXROOXdRelpVYzVnRmM2SEVa?=
 =?utf-8?B?ZFFQdmFSTGlRYmdsT2o5RmxiWWJTOWxmRmhYT3J6ajlyeWtaYjgvRDlTdnhY?=
 =?utf-8?B?UWVPaklWWVBNalJDQXR0UXQrcHlnU1U5QXVEMXZhZmpoZEhiN0pHSmxSZTA3?=
 =?utf-8?B?MTl3c0Rna0h5L0kxZ2FhOHFXdzlRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F0DDADDE9D1B4B498ECAC86F1A74A00D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c4c19e93-7cff-4378-674b-08de0d662694
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2025 10:15:51.7752 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DS0J2vNj4Adqg3b4linWNLx0Q3nIhAseIpWS8WMK1OstNDREGX7bWA8IjMsRILiAoTeedNlmaOlUCczfGoJiGEP0mEsDcbU1B3I4OvajE0Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5157
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

T24gRnJpLCAyMDI1LTEwLTE3IGF0IDEyOjU4ICswMzAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
DQo+IE9uIEZyaSwgMjAyNS0xMC0xNyBhdCAxNTowNyArMDUzMCwgTmF1dGl5YWwsIEFua2l0IEsg
d3JvdGU6DQo+ID4gDQo+ID4gT24gMTAvMTcvMjAyNSAyOjM3IFBNLCBIb2dhbmRlciwgSm91bmkg
d3JvdGU6DQo+ID4gPiBPbiBGcmksIDIwMjUtMTAtMTcgYXQgMTA6MzEgKzA1MzAsIEFua2l0IE5h
dXRpeWFsIHdyb3RlOg0KPiA+ID4gPiBJbnRyb2R1Y2UgYSBoZWxwZXIgdG8gY29tcHV0ZSB0aGUg
bWF4IGxpbmsgd2FrZSBsYXRlbmN5IHdoZW4NCj4gPiA+ID4gdXNpbmcNCj4gPiA+ID4gQXV4bGVz
cy9BdXggd2FrZSBtZWNoYW5pc20gZm9yIFBTUi9QYW5lbCBSZXBsYXkvTE9CRiBmZWF0dXJlcy4N
Cj4gPiA+ID4gDQo+ID4gPiA+IFRoaXMgd2lsbCBiZSB1c2VkIHRvIGNvbXB1dGUgdGhlIG1pbmlt
dW0gZ3VhcmRiYW5kIHNvIHRoYXQgdGhlDQo+ID4gPiA+IGxpbmsNCj4gPiA+ID4gd2FrZQ0KPiA+
ID4gPiBsYXRlbmNpZXMgYXJlIGFjY291bnRlZCBhbmQgdGhlc2UgZmVhdHVyZXMgd29yayBzbW9v
dGhseSBmb3INCj4gPiA+ID4gaGlnaGVyDQo+ID4gPiA+IHJlZnJlc2ggcmF0ZSBwYW5lbHMuDQo+
ID4gPiA+IA0KPiA+ID4gPiBCc3BlYzogNzAxNTEsIDcxNDc3DQo+ID4gPiA+IFNpZ25lZC1vZmYt
Ynk6IEFua2l0IE5hdXRpeWFsIDxhbmtpdC5rLm5hdXRpeWFsQGludGVsLmNvbT4NCj4gPiA+ID4g
LS0tDQo+ID4gPiA+IMKgwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
IHwgMTIgKysrKysrKysrKysrDQo+ID4gPiA+IMKgwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5oIHzCoCAxICsNCj4gPiA+ID4gwqDCoDIgZmlsZXMgY2hhbmdlZCwgMTMg
aW5zZXJ0aW9ucygrKQ0KPiA+ID4gPiANCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiA+IGluZGV4IDcwM2U1ZjZhZjA0Yy4uYTgz
MDNiNjY5ODUzIDEwMDY0NA0KPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jDQo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMNCj4gPiA+ID4gQEAgLTQ0MTYsMyArNDQxNiwxNSBAQCB2b2lkDQo+ID4g
PiA+IGludGVsX3Bzcl9jb21wdXRlX2NvbmZpZ19sYXRlKHN0cnVjdA0KPiA+ID4gPiBpbnRlbF9k
cCAqaW50ZWxfZHAsDQo+ID4gPiA+IMKgIA0KPiA+ID4gPiDCoMKgCWludGVsX3Bzcl9zZXRfbm9u
X3Bzcl9waXBlcyhpbnRlbF9kcCwgY3J0Y19zdGF0ZSk7DQo+ID4gPiA+IMKgwqB9DQo+ID4gPiA+
ICsNCj4gPiA+ID4gK2ludCBpbnRlbF9wc3JfbWluX2d1YXJkYmFuZChzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZQ0KPiA+ID4gPiAqY3J0Y19zdGF0ZSkNCj4gPiA+ID4gK3sNCj4gPiA+ID4gKwlzdHJ1
Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9DQo+ID4gPiA+IHRvX2ludGVsX2Rpc3BsYXkoY3J0
Y19zdGF0ZSk7DQo+ID4gPiA+ICsJaW50IGF1eGxlc3Nfd2FrZV9saW5lcyA9IGNydGNfc3RhdGUt
DQo+ID4gPiA+ID4gYWxwbV9zdGF0ZS5hdXhfbGVzc193YWtlX2xpbmVzOw0KPiA+ID4gPiArCWlu
dCB3YWtlX2xpbmVzID0gRElTUExBWV9WRVIoZGlzcGxheSkgPCAyMCA/DQo+ID4gPiA+ICsJCQkg
cHNyMl9ibG9ja19jb3VudF9saW5lcyhjcnRjX3N0YXRlLQ0KPiA+ID4gPiA+IGFscG1fc3RhdGUu
aW9fd2FrZV9saW5lcywNCj4gPiA+ID4gKwkJCQkJCWNydGNfc3RhdGUtDQo+ID4gPiA+ID4gYWxw
bV9zdGF0ZS5mYXN0X3dha2VfbGluZXMpIDoNCj4gPiA+ID4gKwkJCSBjcnRjX3N0YXRlLT5hbHBt
X3N0YXRlLmlvX3dha2VfbGluZXM7DQo+ID4gPiA+ICsNCj4gPiA+ID4gKwlyZXR1cm4gbWF4KGF1
eGxlc3Nfd2FrZV9saW5lcywgd2FrZV9saW5lcyk7DQo+ID4gPiBobW0sIG5vdyBpZiB5b3UgYWRk
Og0KPiA+ID4gDQo+ID4gPiBpZiAoY3J0Y19zdGF0ZS0+cmVxX3BzcjJfc2RwX3ByaW9yX3NjYW5s
aW5lKQ0KPiA+ID4gCQlwc3JfbWluX2d1YXJkYmFuZCsrOw0KPiA+IA0KPiA+IEkgZGlkIG5vdCBn
ZXQgdGhpcyBwYXJ0LsKgRG8gd2UgbmVlZCB0byBhY2NvdW50IGZvciAxIG1vcmUgd2FrZWxpbmVz
DQo+ID4gaWYgDQo+ID4gdGhpcyBmbGFnIGlzIHNldD8NCj4gDQo+IElmIHlvdSBsb29rIGF0IGhv
dyB0aGF0IGZsYWcgYWZmZWN0cyB2YmxhbmsgY2hlY2sgaW4gDQo+IGludGVsX3Bzcl9jb21wdXRl
X2NvbmZpZ19sYXRlOg0KPiANCj4gLi4uDQo+IHN0YXRpYyBib29sIF93YWtlX2xpbmVzX2ZpdF9p
bnRvX3ZibGFuayhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSwN
Cj4gCQkJCQlpbnQgdmJsYW5rLA0KPiAJCQkJCWludCB3YWtlX2xpbmVzKQ0KPiB7DQo+IAlpZiAo
Y3J0Y19zdGF0ZS0+cmVxX3BzcjJfc2RwX3ByaW9yX3NjYW5saW5lKQ0KPiAJCXZibGFuayAtPSAx
Ow0KPiAuLi4NCj4gDQo+IFNvIHRvIHRha2UgdGhhdCBpbnRvIGFjY291bnQgd2hlbiBjYWxjdWxh
dGluZyBtaW5pbXVtIGd1YXJkYmFuZA0KPiBuZWVkZWQNCj4gYnkgUFNSIHlvdSBuZWVkIHRvIGlu
Y3JlYXNlIGJ5IG9uZS4gU2FtZSBnb2VzIHdpdGggU0NMOg0KPiANCj4gLi4uDQo+IAlpbnQgc2Ns
ID0gX2ludGVsX3Bzcl9taW5fc2V0X2NvbnRleHRfbGF0ZW5jeShjcnRjX3N0YXRlLA0KPiAJCQkJ
CQnCoMKgwqDCoA0KPiBuZWVkc19wYW5lbF9yZXBsYXksDQo+IAkJCQkJCcKgwqDCoMKgDQo+IG5l
ZWRzX3NlbF91cGRhdGUpOw0KPiAJdmJsYW5rIC09IHNjbDsNCj4gLi4uDQo+IA0KPiBZb3UgYXJl
IGFscmVhZHkgcGFydGlhbGx5IHRha2luZyBpbnRvIGFjY291bnQgUFNSIG5lZWRzIHdoZW4NCj4g
Y2FsY3VsYXRpbmcgb3B0aW1pemVkIGd1YXJkYmFuZCBleGNlcHQgdGhlc2UgdHdvIGxpbmVzIHdo
aWNoIGFyZQ0KPiBuZWVkZWQNCj4gY29uZGl0aW9uYWxseS4NCj4gDQo+IEFsc28gaW50ZWxfcHNy
X2NvbXB1dGVfY29uZmlnIGlzIHJ1biBhdCB0aGlzIHBvaW50IC0+IHlvdSBrbm93IHdoaWNoDQo+
IG9uZSB0byB1c2U6IGF1eGxlc3Mgd2FrZSB0aW1lIG9yIGF1eCB3YWtlIHRpbWUuIG5vIG5lZWQg
dG8gdXNlIG1heCgpDQo+IHdpdGggdGhlbS4gSnVzdCBjaG9vc2UgdGhlIG9uZSB3aGljaCBpcyBy
ZWxldmFudC4NCj4gDQo+IFdpdGggdGhlc2UgY2hhbmdlcyB5b3UgY291bGQgZHJvcCBpbnRlbF9w
c3JfY29tcHV0ZV9jb25maWdfbGF0ZSBhcw0KPiB2Ymxhbmsgd291bGQgYmUgbG9uZyBlbm91Z2gg
Zm9yIFBTUiBtb2RlIGNvbXB1dGVkIGJ5DQo+IGludGVsX3Bzcl9jb21wdXRlX2NvbmZpZywgbm8/
DQoNCk9rLCBub3RpY2VkIG5vdyB0aGlzIGluIHRoZSBsYXN0IHBhdGNoOg0KDQouLi4NCmNydGNf
c3RhdGUtPnZyci5ndWFyZGJhbmQgPSBtaW4oZ3VhcmRiYW5kLCBpbnRlbF92cnJfbWF4X2d1YXJk
YmFuZChjcnRjX3N0YXRlKSk7DQouLi4NCg0KU28gaWYgd2UgbmVlZCB0byBmYWxsIGJhY2sgdG8g
aW50ZWxfdnJyX21heF9ndWFyZGJhbmQgd2UgbmVlZCB0byBoYXZlDQp0aGF0IGludGVsX3Bzcl9j
b21wdXRlX2NvbmZpZ19sYXRlLg0KDQpBbnl3YXlzIEkgdGhpbmsgeW91IG5lZWQgdG8gdGFrZSBp
bnRvIGFjY291bnQgdGhhdA0KcmVxX3BzcjJfc2RwX3ByaW9yX3NjYW5saW5lIGFuZCBfaW50ZWxf
cHNyX21pbl9zZXRfY29udGV4dF9sYXRlbmN5IGluDQppbnRlbF9wc3JfbWluX2d1YXJkYmFuZC4N
Cg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KPiANCj4gQlIsDQo+IA0KPiBKb3VuaSBIw7ZnYW5k
ZXINCj4gDQo+IA0KPiA+IA0KPiA+IFdoYXQgd2Ugd2FudCB0byBkbyBpcyB0byBjaGVjayBmb3Ig
bWluIGd1YXJkYmFuZCBmb3IgDQo+ID4gcGFuZWxfcmVwbGF5L3NlbF91cGRhdGUgYmFzZWQgb24g
dGhlIHJlcXVpcmVkIHdha2VsaW5lcy4NCj4gPiANCj4gPiBXaGV0aGVyIHdlIGNhbiB1c2UgdGhl
IGF1eGxlc3Nfd2FrZV9saW5lcyBhbmQgd2FrZV9saW5lcyBhcw0KPiA+IGNvbXB1dGVkIA0KPiA+
IGFib3ZlIHRvIGVzdGltYXRlIHRoZSBtYXggd2FrZWxpbmVzIG9yIGluc3RlYWQgd2Ugc2hvdWxk
IHVzZQ0KPiA+IGZ1bmN0aW9ucyANCj4gPiBmcm9tIGFscG0uYyA6DQo+ID4gDQo+ID4gaW9fYnVm
ZmVyX3dha2VfdGltZSgpIGFuZCBfbG5sX2NvbXB1dGVfYXV4X2xlc3Nfd2FrZV90aW1lKCkgdG8g
Z2V0DQo+ID4gdGhlIA0KPiA+IHdvcnN0IGNhc2Ugd2FrZWxpbmVzLg0KPiA+IA0KPiA+IA0KPiA+
ID4gDQo+ID4gPiBXaGF0ZXZlciBpcyB0aGUgUFNSIG1vZGUgaXQgY2FuIGJlIGVuYWJsZWQgd2hh
dCBjb21lcyB0byB2YmxhbmsNCj4gPiA+IHJlc3RyaWN0aW9ucyBhbmQgeW91IGNhbiBkcm9wIHBz
cl9jb21wdXRlX2NvbmZpZ19sYXRlPw0KPiA+IA0KPiA+IA0KPiA+IEkgdGhpbmsgd2UgY2Fubm90
IGRyb3AgdGhlIHBzcl9jb21wdXRlX2NvbmZpZ19sYXRlIGFzIGl0IGNoZWNrcw0KPiA+IHdoZXRo
ZXIgDQo+ID4gdGhlIGFjdHVhbCBndWFyZGJhbmQgaXMgZW5vdWdoIGZvciBQU1IgZmVhdHVyZXMu
DQo+ID4gDQo+ID4gaW50ZWxfcHNyX21pbl9ndWFyZGJhbmQoKSBpcyB1c2VkIGFsb25nIHdpdGgg
b3RoZXIgZmVhdHVyZXMgdG8gaGF2ZQ0KPiA+IGFuIGVzdGltYXRlIG9uIHRoZSBndWFyZGJhbmQg
dGhhdCB3b3JrcyBmb3IgYWxsIGNhc2VzLCB3aXRob3V0IGENCj4gPiBuZWVkDQo+ID4gdG8gY2hh
bmdlIHRoZSBndWFyZGJhbmQuDQo+ID4gSXQgaXMgYm91bmRlZCBieSB0aGUgdmJsYW5rIGxlbmd0
aCBhdmFpbGFibGUNCj4gPiANCj4gPiBSZWdhcmRzLA0KPiA+IA0KPiA+IEFua2l0DQo+ID4gDQo+
ID4gPiANCj4gPiA+IEJSLA0KPiA+ID4gDQo+ID4gPiBKb3VuaSBIw7ZnYW5kZXINCj4gPiA+IA0K
PiA+ID4gPiArfQ0KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuaA0KPiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmgNCj4gPiA+ID4gaW5kZXggYjE3Y2UzMTJkYzM3Li42MjBiMzU5Mjg4MzIgMTAw
NjQ0DQo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmgNCj4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
aA0KPiA+ID4gPiBAQCAtODUsNSArODUsNiBAQCBib29sIGludGVsX3Bzcl9uZWVkc19hbHBtX2F1
eF9sZXNzKHN0cnVjdA0KPiA+ID4gPiBpbnRlbF9kcA0KPiA+ID4gPiAqaW50ZWxfZHAsDQo+ID4g
PiA+IMKgwqAJCQkJwqDCoCBjb25zdCBzdHJ1Y3QNCj4gPiA+ID4gaW50ZWxfY3J0Y19zdGF0ZQ0K
PiA+ID4gPiAqY3J0Y19zdGF0ZSk7DQo+ID4gPiA+IMKgwqB2b2lkIGludGVsX3Bzcl9jb21wdXRl
X2NvbmZpZ19sYXRlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gPiA+IMKgwqAJCQkJ
wqDCoCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ID4gPiAqY3J0Y19zdGF0ZSk7DQo+ID4g
PiA+ICtpbnQgaW50ZWxfcHNyX21pbl9ndWFyZGJhbmQoc3RydWN0IGludGVsX2NydGNfc3RhdGUN
Cj4gPiA+ID4gKmNydGNfc3RhdGUpOw0KPiA+ID4gPiDCoCANCj4gPiA+ID4gwqDCoCNlbmRpZiAv
KiBfX0lOVEVMX1BTUl9IX18gKi8NCj4gDQoNCg==
