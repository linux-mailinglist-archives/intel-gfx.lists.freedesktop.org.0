Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BCABBE8B01
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 15:02:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EEA910EBDD;
	Fri, 17 Oct 2025 13:02:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nEJRZ/ou";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AD9010EBDA;
 Fri, 17 Oct 2025 13:02:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760706145; x=1792242145;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=2xYfJqXAEVjGN8q6fYx7/fOX+OAESvMv+MOHCDCAhEE=;
 b=nEJRZ/ouRL0cmBDA4wCmQpHXZ8/TbbehGYQeD9VntRMh7MP675T+2kik
 eCbgJoQd+1lRMpS06piKJEOrVLt8DICywukQMGLvYJXF9KzmEIwWq38Uh
 uT7VzwflH6utqvX48hHmtVsAffNfgC8vXK+K9koXpIYxO3CjawZiBZOOf
 7vfMdH6blxaHxun29W7Mk/zNXzl9cZnmOE1oYcDFlLQ2xKxEu333Um8cH
 s9pow7w3UzN3Yw1W4QyvakxjIid3310Yn1FK8E1Ut0Cg9Fm0ILfqaQtDx
 WfdU/c5IyeKZlzt76BerWht+oy11cbaqkQQztb2KnRY4SXIUJHpH58cWT Q==;
X-CSE-ConnectionGUID: hSbqiL+9QeGx+r8mLDoZOg==
X-CSE-MsgGUID: aidGDlTdT56kprDLjOZbUA==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="73587765"
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="73587765"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 06:02:24 -0700
X-CSE-ConnectionGUID: kjEqVymURUeC7f9nLajupw==
X-CSE-MsgGUID: c9EzQ1ZhQtKJUS16GnPdvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="183138853"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 06:02:24 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 06:02:23 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 17 Oct 2025 06:02:23 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.39) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 06:02:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AqH6QgBJM1w05ek+ya5ilYWns3BCgFp29YdiC3RmhFdTqnVwhIEBaIAJe6d9i8SXOVHMng1udXbqxUWBghDiVgcFsjm82JyNFyhI6UyphMhxAO8Qkt6brrpAmADmTf9mZ8I6y33MXaqBztYF0OhNjluSL2ZWCyX6T40Lvw9CD+AgCkMsJPAKgD7cV/JY/5+xjqBlLnLHdVC4VnLpvcYe68jVp7xgcEvxCZN5yIOh72jcwgqbViV2Vo89Ups2D40HdHWIbacTKGWKlw8DB19nbVxqRH1PAJbbA5oufd4tLD5jcMxSwvECRDHfIhznW+ewgG8LPw/vx70i/6GaElAvog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2xYfJqXAEVjGN8q6fYx7/fOX+OAESvMv+MOHCDCAhEE=;
 b=Z2FTwsUPgxZt2G1iZgTMEdLuPhePQAmQOiG2J7CVFYegyAVMMjqPXGhyRkYCZ3OW+f+6s0c3RJl0a3Wr6ZssQWyBhKcaue5lBBdqKrjtdY+Tkp5Nq/dP33HrteRjMFQaiqKxVEPAcn02LyyY5oBHA31uhWvU3wmwzMCRTrwWoeV/nC7StutIiGbw0de8PZmJRUsuSJN/6sBsdsAfXQqnJmq0VU5RpV4SMCPgBFFBrUJ76rhDLT70K1Sf9CKzcMV+Jlv5woU9FTuPXYTYvSSK65u3w6wYwmzoF4R1gvCoj/80t+YTghwDm2P7ESdul8AkeNasnQeZpwzhpucv6MmfeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH3PPF5AF05F6D9.namprd11.prod.outlook.com (2603:10b6:518:1::d24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.13; Fri, 17 Oct
 2025 13:02:21 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9228.011; Fri, 17 Oct 2025
 13:02:20 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 1/5] drm/i915/psr: Add helper to get min psr guardband
Thread-Topic: [PATCH 1/5] drm/i915/psr: Add helper to get min psr guardband
Thread-Index: AQHcP2RUYwCx4Bpe80SViHE4XO4z3rTGTcGA
Date: Fri, 17 Oct 2025 13:02:20 +0000
Message-ID: <08ea51b6dc7bbce01253379953903a5baf429196.camel@intel.com>
References: <20251017123504.2247954-1-ankit.k.nautiyal@intel.com>
 <20251017123504.2247954-2-ankit.k.nautiyal@intel.com>
In-Reply-To: <20251017123504.2247954-2-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH3PPF5AF05F6D9:EE_
x-ms-office365-filtering-correlation-id: 7c154033-edd8-4606-92e8-08de0d7d688a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|10070799003|376014|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?TzJvdFdQeDFsSFlRVVVmNmc0UUdpSjcrY29wQ1lqKzJCVUM3cHU4ZWtrbUNM?=
 =?utf-8?B?Yi9SRUo3WWFXL0VhRUlwNTRuYS9XdmFLL2xteTFrQzh3dWxoUmJzT0o4WU01?=
 =?utf-8?B?QkxreTczYTBIR3F5MDZEdTFBeTRlK01UQjRjTEFFODlmWHVDZ09zZjZqZDlx?=
 =?utf-8?B?bDZmbWZUVTNjbGR1NEtRaEdGMHpneWpKUGQrcmd1eldCeVJiMmcwSjJpRndo?=
 =?utf-8?B?SWRVRHhCUDJIYmJpdlVWOFdTSnZkQjJzQ2N2ZVh1cGJMeENDMnM2b3FyT3pn?=
 =?utf-8?B?aGJsem51a1ViSkNoVW1jYTNONEtrYk5YM1NGd2sxRlVGVXBQVml1bDZvQWFY?=
 =?utf-8?B?T1kwV3MvSUtScEh6TW1mai90eE8raWhkajVEY1d0VmI3aTRBRUpySUdiVjkr?=
 =?utf-8?B?SHRuQllrdE5ENmZhOHcwQXVGN0xsd2ZVY3JXcGlTMlgwWmNjQWQwNWFzVDRW?=
 =?utf-8?B?UTJnT3N6Y3l0T2l1a2tPR1FIczZtN2dXbVFJUGFaQzJKeDlJVnJxakdWRWZR?=
 =?utf-8?B?QkJJa3ZoOVdkNGRkdnBZRzcxNWYzN0hYR2tqNlR3R1NZYms1bHQ2VHYvdmcr?=
 =?utf-8?B?eUlNNjJoblhWTzRGckpEYmZVY0o3SEdNQlpHVHlHcWNUNVUwTExnZ29SMjg0?=
 =?utf-8?B?bVZNREhVdm81cE1YbVgvNlVDTFQxa0xNRHFPSi92YkJndXJ0dmpjZW1sUlRN?=
 =?utf-8?B?dmZBdnQzbWJIeG1hMmVwT3JrZEJEWjQ1anlzbHYrQTZwQUtFV3NIaTV3YTZW?=
 =?utf-8?B?RTU2YnYvSmdHM3hzYXVFa2gvQWJuMmthV1FaQ1hKTlRxeVBicm9LWDlDN0NC?=
 =?utf-8?B?TWV2WDlMUWRrYUJYRE5ZUHJIK2o0TmJXTWxrQm9EQm41RmhYVW0wUWFhaWFL?=
 =?utf-8?B?YUIxeW5KUDlldG00bTNrWEhjT1BvUjlvVlFkZWZ3VHhpUk9nelpuZ01SNFhU?=
 =?utf-8?B?d2k5RWZwcjJKWUVneDlhbzcyZVhYQU1kalNYOXFFVW04eWxhUUVIWmdxS0E2?=
 =?utf-8?B?cG1IeW1RT3RTVFRkcHlTUEtUZlRuSFVLSG1ockh0TGNEQlBRQktmU0hBKzFx?=
 =?utf-8?B?c21vN2NQQlFzeDlzem1Vc0VSbHV2WXVoajcyektGWGxsbkd6eEFOeDRpRjdx?=
 =?utf-8?B?aHZYL2lWUng1Y1Zqd05tU2p1Qzh6d3lGdmJvQTJGTkp5Tzlmby9vV3N2T2JZ?=
 =?utf-8?B?MlViUkZndnpDTzJuNkl3ZGIyTFluTUR4Q3lVT2t1Z2tJcSt6cWlnNFZicVZC?=
 =?utf-8?B?YkdydVJwZXlzTU1XV1RMMzlMdk1ndFVDU0E5UDY1U1JrVkQrK0VzOStJbEt2?=
 =?utf-8?B?WmdaS3hRLytXRC9zMHQyTmJYZmQ5ZjFZWGRNZVJVaDF0UHN6Z2dnSzEzbmVY?=
 =?utf-8?B?RjRYc3d0MmVVZTA3K3JycVZJMzh3QzN2bDZDQmxKU3NuaDIvTzhyVndmRHdv?=
 =?utf-8?B?Vkk4NjFvRVE4b3IzS0l1R2xtbGkzSU5tc1JaVjhvMVM0cmpYeEI3U3ZZRXhH?=
 =?utf-8?B?Z0NVZ2J0cDA2K0ptSFNlSTIrZGJ1bTZrdHFRdlI5NHJSTWVlUzF3MytvSlV4?=
 =?utf-8?B?eE9aWGJlVXJMTjBoU1hmekhtMk9UMkl6SUlSK3RTQUJ1SmtIRnVJekdkcWd5?=
 =?utf-8?B?VWs3OUd6Yk5BL05jN0hka1dHYVZYN2t3T25CdFk4WUZSdG50S2g5ampPS1BW?=
 =?utf-8?B?Z0MwVmVQTUxKSjdPbThjL1hSaTRycXhVM3dxQnFueGlRMk9yNXBVSEhEZWFp?=
 =?utf-8?B?VXg4MXNvNmN2WVpUcUU4OEF6Z0pGSGxIN3doa1hUdWFhdi9MTnZHMzdHcUZ5?=
 =?utf-8?B?dWVlS1ZSRy9DYWdkcjhudWk4NkRxL1NrZ0Rkb1dtTEo2M2hGSWM2WjIrSWRW?=
 =?utf-8?B?c1FaaW14NzZpRk5LM1Y2TWdKZER6SHJoY0RMdzNSL1hVblNMQ2l5R3pUNnVG?=
 =?utf-8?B?eE1wckZDdVZ1MGRsNDl3UzJyWnNCdlFsWVovTHpiTmhWWkFrSHdJTThjMGgw?=
 =?utf-8?B?Y042MUc3bU5GWlFVdjE0VkJOenp2SFY3NmJYN1YrSlpqTmc5amxWK0lJSzZa?=
 =?utf-8?Q?K9EUhE?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(376014)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eXF6dnFrQnhSRHhUTjd2SjE3MzJoYVBZekpsckUyM2NmNzNzcCtYaTAxVU9G?=
 =?utf-8?B?N0hYbjVQQW4vQnVoZ0dJbFVCbVNJdDhTZncyQytWaCs5YTQ1QW9SZWlHVDVz?=
 =?utf-8?B?U3llVVkrOHFjUURtN3RIT2dsbm9CTjRHS05NY2RCVlZSNGs0ZXZyb3Y3V2U2?=
 =?utf-8?B?eE04S3ZtSVd4VStqd3FLUkEwcEtMc2NnU2pWMWlMQkphd2ZSRzF5RWR3RG9E?=
 =?utf-8?B?SitYdTR0Vk03QjB2OEdSaWV5cmF4UHNZeVhvV3g2ZTQ0b1NSbWZYNG5XVUV6?=
 =?utf-8?B?SDlTMzV0Zk1lTEVRRzRLK3hXbk9jU2hlNTR2WWIrRVBwcWlzNi8wNEorV2lO?=
 =?utf-8?B?bUEzTFJzL0Z4Nlo5SzV2R1YrdHBSQVZ1V2g3RlV6Ry9ha011eU5KMVptZjJp?=
 =?utf-8?B?cC9qY0VHcGJNYnM2SWVpelpqWnhrVmtpZGt6Sk9OTGV5bnlieGxRTkFnZ2pt?=
 =?utf-8?B?cGRyelRmSWtqYkYvZ2o2N3orUy83K2xwWWZmRGY2dXBkUjNQKzlrMEJjNmp3?=
 =?utf-8?B?MVEydEQxUTN5T0JkUURXbVJmNVBXUEhLTkVIYk1GdW5FSDBpVmNKT0VjdEtM?=
 =?utf-8?B?SmVFWmpJdG5Mc01ad091TTJMVWpieEt1cnNURm5ZekNPVHNTbzlBZ21UY3pu?=
 =?utf-8?B?V0pCMWswbEEvK0tBVTRXcDFrZjBtRVVtLzlXSjJ4QTg1enZFcHFQdWFLM3Zy?=
 =?utf-8?B?dnJpOC94TW8zMk1jeis1cUJ4K2gwUWtLWU5kSnBEa0pISVlvNnpmUnB5S2pP?=
 =?utf-8?B?aThLZzBMOEJVcEg0eTV1d3EzVzdyKzJ4dFhiUHhOQ3BKaEtVRXloUVR1Vmo4?=
 =?utf-8?B?WHdWaEVIWE80UlAvS0l4d0V5am9ycGs0OHRwNlNqM3VZdTJWKzZJa1NZaHE0?=
 =?utf-8?B?cVhjeFZ5KzgvOGN0M01ZR29WdzlqcHQvYmoyZ2tXblhEaEM5N1NxNDlBbXNh?=
 =?utf-8?B?VkwxWXJvMWZXN2VOazBSWGgyL3pwYlprSjhvakhhZzhQUGZFcFRoc0NqcmFP?=
 =?utf-8?B?R1RUcFFIU2p2UlFVZWQyTG9ka3FuWjlqQ1IrdWR5bjZnY2RlYm15SVZ4TmV1?=
 =?utf-8?B?Z3RjVUlsK1BsYkxUSlh3MSt6bHVMbGxiTUQ2QXRjTnBZdXVPb2Z1YkJ5VWcv?=
 =?utf-8?B?MDdrMkdKN1o5WUdpVm5TcFBSZzkydFhJbTBKZnE2Wml5eEZYRzhnVVZLU2V1?=
 =?utf-8?B?K2o5azhTd1JjajVHRUtFcTYyTTVXWVNITGRXLzQzaHZBTHNEZzc1REF0Vmly?=
 =?utf-8?B?VkQ0UTl0VGtWSGJOcDBVVU5qeUFXWEE2Nmg3ODBSemhIcEp3QU9IN3hTS3di?=
 =?utf-8?B?dC9mUm9GNHlOL1pkUW5uMG5vV0FQQm9MRzlDeURFU0tiQnlLQkZtUnNJZGYy?=
 =?utf-8?B?bW5OY3JlR1JCT1ROV3JEN2tQamNRa3A0aU1tb2RHd0FRODNuM2tZbExURlRV?=
 =?utf-8?B?Y1Nrd0gyM0c2Y3NRRzc5U1p3UDZhS0RmenZ5anRpSm1mR0pYNGNqUEhJbmlx?=
 =?utf-8?B?MWcza2FTWHlJdWNFS1BCQ05tYU1sN1lYbTN5SXkzLzRhT1pSSzhWVVFqWEJ0?=
 =?utf-8?B?bS9mVFpwZ085NDZZNG5sVElQR3dlUzBDYVVNNGlIb0RpSFN3RHZsTU1ZVVRr?=
 =?utf-8?B?RjNYQVk3SG53ZHcrcHhha0tzSk1ldlJIand4ODFMQXIvb1kwUjAxeWlFOXh5?=
 =?utf-8?B?T0VILy9la0Nud0F3T3hGNXpMeFVqZG5JRVJTaHV2ajFHVmkvNDNPSlkrL2pn?=
 =?utf-8?B?Y0orTWkveEc3b0FrU1QxVDFFaWI0L2xFcW9kVHRiQ3FVU2txOFByemZWUkZh?=
 =?utf-8?B?LzNDR0ZkbU9iZi8rUmhYTCtrWmJOOHBHaFhQOWJablZxUVJ1aTI1WmZITm9K?=
 =?utf-8?B?SUhJMlF5TkFObFRubDJYbFZFdkg3TyszYW82dUNHS0hLbDd3Y0pTQTJvMm9M?=
 =?utf-8?B?VDVpUnFRZytpeUk0L2Uvc1pHOURiczlzNUtKMFZ5eU1iaUQ0U2c0WmZWZldI?=
 =?utf-8?B?Mk81ZlJjOXR2VFVCQXpZRHBWbHBKY3VHL1FFaDk3WEwrSUs5RUtKblhBbzNL?=
 =?utf-8?B?VHdESHVOSTJ5MVNna0k1UEVLVkNnRWVkeWJ1amUxSHB3TWRzOXh1azdnK04r?=
 =?utf-8?B?NDZhc2xDaCt0TjB2aFZGbGEzWFVSbUM3Y1JiMUJ0NW55aFg2RHAvdUEzaFdF?=
 =?utf-8?B?bW55YWtvTEtMUDJEQjlyWWRJeDhRZjlJRE1HUjkzMFIvR0Z1VE5NMnpPWkxL?=
 =?utf-8?B?Mld5SENyQm9McSt6WXZLRitDM1p3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E197520EA9202E4B81BA85B5ABA54707@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c154033-edd8-4606-92e8-08de0d7d688a
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2025 13:02:20.9041 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UbbbgJ778XnnuGgLEH7sDrMuovq4Ck5XT42zDrOSMnjaJZf2EtaxjIv2ROK+kW2OGQINElTaZQA+ripquBdiI2e60iy6Gz82cJWSxgVVSnc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF5AF05F6D9
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

T24gRnJpLCAyMDI1LTEwLTE3IGF0IDE4OjA1ICswNTMwLCBBbmtpdCBOYXV0aXlhbCB3cm90ZToN
Cj4gSW50cm9kdWNlIGEgaGVscGVyIHRvIGNvbXB1dGUgdGhlIG1heCBsaW5rIHdha2UgbGF0ZW5j
eSB3aGVuIHVzaW5nDQo+IEF1eGxlc3MvQXV4IHdha2UgbWVjaGFuaXNtIGZvciBQU1IvUGFuZWwg
UmVwbGF5L0xPQkYgZmVhdHVyZXMuDQo+IA0KPiBUaGlzIHdpbGwgYmUgdXNlZCB0byBjb21wdXRl
IHRoZSBtaW5pbXVtIGd1YXJkYmFuZCBzbyB0aGF0IHRoZSBsaW5rDQo+IHdha2UNCj4gbGF0ZW5j
aWVzIGFyZSBhY2NvdW50ZWQgYW5kIHRoZXNlIGZlYXR1cmVzIHdvcmsgc21vb3RobHkgZm9yIGhp
Z2hlcg0KPiByZWZyZXNoIHJhdGUgcGFuZWxzLg0KPiANCj4gdjI6DQo+IC0gQWNjb3VudCBmb3Ig
ZmxhZyBgcmVxX3BzcjJfc2RwX3ByaW9yX3NjYW5saW5lYCBhbmQgc2NsIGxpbmVzIHdoaWxlDQo+
IMKgIGNvbXB1dGluZyBtaW4gZ3VhcmRiYW5kLiAoSm91bmkpDQo+IC0gVXNlIHdha2UgbGluZXMg
b25seSBmb3IgZURQIHdpdGggcGFuZWxfcmVwbGF5IGFuZCBzZWxfdXBkYXRlIGZsYWdzDQo+IMKg
IHNldC4gKEpvdW5pKQ0KPiANCj4gQnNwZWM6IDcwMTUxLCA3MTQ3Nw0KPiBTaWduZWQtb2ZmLWJ5
OiBBbmtpdCBOYXV0aXlhbCA8YW5raXQuay5uYXV0aXlhbEBpbnRlbC5jb20+DQoNClJldmlld2Vk
LWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gLS0tDQo+
IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDI3DQo+ICsrKysr
KysrKysrKysrKysrKysrKysrKw0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmggfMKgIDEgKw0KPiDCoDIgZmlsZXMgY2hhbmdlZCwgMjggaW5zZXJ0aW9ucygrKQ0K
PiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4
IDcwM2U1ZjZhZjA0Yy4uM2NjYTQ4YTRhNWQzIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTQ0MTYsMyArNDQxNiwzMCBAQCB2b2lkIGludGVs
X3Bzcl9jb21wdXRlX2NvbmZpZ19sYXRlKHN0cnVjdA0KPiBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+
IMKgDQo+IMKgCWludGVsX3Bzcl9zZXRfbm9uX3Bzcl9waXBlcyhpbnRlbF9kcCwgY3J0Y19zdGF0
ZSk7DQo+IMKgfQ0KPiArDQo+ICtpbnQgaW50ZWxfcHNyX21pbl9ndWFyZGJhbmQoc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ICt7DQo+ICsJc3RydWN0IGludGVsX2Rpc3Bs
YXkgKmRpc3BsYXkgPQ0KPiB0b19pbnRlbF9kaXNwbGF5KGNydGNfc3RhdGUpOw0KPiArCWludCBw
c3JfbWluX2d1YXJkYmFuZDsNCj4gKwlpbnQgd2FrZV9saW5lczsNCj4gKw0KPiArCWlmICghaW50
ZWxfY3J0Y19oYXNfdHlwZShjcnRjX3N0YXRlLCBJTlRFTF9PVVRQVVRfRURQKSkNCj4gKwkJcmV0
dXJuIDA7DQo+ICsNCj4gKwlpZiAoY3J0Y19zdGF0ZS0+aGFzX3BhbmVsX3JlcGxheSkNCj4gKwkJ
d2FrZV9saW5lcyA9IGNydGNfc3RhdGUtDQo+ID5hbHBtX3N0YXRlLmF1eF9sZXNzX3dha2VfbGlu
ZXM7DQo+ICsJZWxzZSBpZiAoY3J0Y19zdGF0ZS0+aGFzX3NlbF91cGRhdGUpDQo+ICsJCXdha2Vf
bGluZXMgPSBESVNQTEFZX1ZFUihkaXNwbGF5KSA8IDIwID8NCj4gKwkJCcKgwqDCoMKgIHBzcjJf
YmxvY2tfY291bnRfbGluZXMoY3J0Y19zdGF0ZS0NCj4gPmFscG1fc3RhdGUuaW9fd2FrZV9saW5l
cywNCj4gKwkJCQkJCcKgwqDCoCBjcnRjX3N0YXRlLQ0KPiA+YWxwbV9zdGF0ZS5mYXN0X3dha2Vf
bGluZXMpIDoNCj4gKwkJCcKgwqDCoMKgIGNydGNfc3RhdGUtPmFscG1fc3RhdGUuaW9fd2FrZV9s
aW5lczsNCj4gKwllbHNlDQo+ICsJCXJldHVybiAwOw0KPiArDQo+ICsJcHNyX21pbl9ndWFyZGJh
bmQgPSB3YWtlX2xpbmVzICsgY3J0Y19zdGF0ZS0NCj4gPnNldF9jb250ZXh0X2xhdGVuY3k7DQo+
ICsNCj4gKwlpZiAoY3J0Y19zdGF0ZS0+cmVxX3BzcjJfc2RwX3ByaW9yX3NjYW5saW5lKQ0KPiAr
CQlwc3JfbWluX2d1YXJkYmFuZCsrOw0KPiArDQo+ICsJcmV0dXJuIHBzcl9taW5fZ3VhcmRiYW5k
Ow0KPiArfQ0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmgNCj4g
aW5kZXggYjE3Y2UzMTJkYzM3Li42MjBiMzU5Mjg4MzIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaA0KPiBAQCAtODUsNSArODUsNiBAQCBib29sIGludGVs
X3Bzcl9uZWVkc19hbHBtX2F1eF9sZXNzKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHAsDQo+
IMKgCQkJCcKgwqAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKmNydGNfc3RhdGUp
Ow0KPiDCoHZvaWQgaW50ZWxfcHNyX2NvbXB1dGVfY29uZmlnX2xhdGUoc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCwNCj4gwqAJCQkJwqDCoCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0
Y19zdGF0ZSk7DQo+ICtpbnQgaW50ZWxfcHNyX21pbl9ndWFyZGJhbmQoc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUpOw0KPiDCoA0KPiDCoCNlbmRpZiAvKiBfX0lOVEVMX1BTUl9I
X18gKi8NCg0K
