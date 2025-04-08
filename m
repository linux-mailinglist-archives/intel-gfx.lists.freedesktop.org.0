Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA63A7F71B
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 09:55:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD84910E5F8;
	Tue,  8 Apr 2025 07:55:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nH/39jQz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01C6110E5F8;
 Tue,  8 Apr 2025 07:55:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744098919; x=1775634919;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=JAPOMZy3I/nxbXMUG0VGX7KM5gR2+ZZvHZEi2YXEsXk=;
 b=nH/39jQzlgc9MckhqsmzljT2c457SzjyItR+0Dxvas3fx8SWOf6DVHIf
 TCH0GCh2kFJMrwAwbgwKsrD9/M0hF+73qaBqUX51cIXcGJyjrMMBDKlPw
 jkq3kEE5Ev2s8t+AfOOwgnmwAzjTfZhZ83ywCwQ/EeUsh8BNDYiM/HWWF
 7/Pp024E2FEhvhfMwUMD+KBkKgK9E1t7jjZJZ2/OOosZzu25E6cyO7d2/
 ER4u1Wu8uiGMMc6+UWU1nhJSBDphiQvaKSkb2djF3qpC/s7yvFOY1zoyI
 ikAdmNeQE6kKUu9vljmdCZseizN+//46BQjP8zSiGI6gZO2LjwyCHbmBl g==;
X-CSE-ConnectionGUID: OATWVVjuQYmAWmhxITFYlA==
X-CSE-MsgGUID: QCVfEqNTTK2ZNGiXkZSGFQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45651112"
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="45651112"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 00:55:18 -0700
X-CSE-ConnectionGUID: T9akzA3OSpOVtHx+Skdc3w==
X-CSE-MsgGUID: vAhUNQKNTLaBocyLOaDO4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="128716277"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 00:55:19 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Tue, 8 Apr 2025 00:55:18 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 8 Apr 2025 00:55:18 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 8 Apr 2025 00:55:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bXnWl23Nc3+gosRvAxe15mNJdG3IdMG7KxksMG18XbwtUuZtOzGa9S7RgfxrpWhjpwZwTi1PcEZSCQmFiGjnAxTW9720p3dk8RRkSoM7Kri3vPRxOVEA68mAjWHRdGMY8ZKPB3LJrzf1cpZRwv6+4AoJ1Z6IlbllCSvasnGmW8lqyhG86AQEcLk3bl9LH/eZeAhfPh3RaEg35o1Dn39tWA0C4o1fUTjTLvEuhGH3AhE8FAPPssEl+qv8eF+Dp2aELV6czALrJU8dI/krQLJP17r479leV/doK/WLiITza//DhRZlKjatdN0lLPeUzQzsy4YjiCsB81eiGTy1r5kXqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JAPOMZy3I/nxbXMUG0VGX7KM5gR2+ZZvHZEi2YXEsXk=;
 b=JvHQSm0uAoO203CNJcNUS6wZ9qsfA73YAN8aBvdSvpHSowNXobLY8iHdu7W74jMDpGmMa6yW9AzyA+M6e+OgziUV8sjHg8vyc1tv6Ys56D1iutMLcATDqFlBqov205oEOyOhi2o5q7rXjp0Z1thyiLwUKPRfds/1TTnDW5R0Xfd1+vOLAUB3OV8MzsQdlEKAiM5xY21IQMH8F0DLdgcklWPIEMEtxjleKs11oryEW5o8tzdNoHLuM/K5D54FvHjIIgntEpdjsj4AmrAWgDPGLGBV/CDKzNQSeh1KjcGctFbcE4GGt6SVaYA531OT1FFg8fn5mo2CtcAHRGhKCByF8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ5PPF1FF629472.namprd11.prod.outlook.com (2603:10b6:a0f:fc02::818)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.34; Tue, 8 Apr
 2025 07:54:41 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8606.033; Tue, 8 Apr 2025
 07:54:41 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: Re: [PATCH v7 5/8] drm/i915/lobf: Update lobf if any change in
 dependent parameters
Thread-Topic: [PATCH v7 5/8] drm/i915/lobf: Update lobf if any change in
 dependent parameters
Thread-Index: AQHbpH35wWfO9UW0BUeQdZe0+SVaIrOZbfoA
Date: Tue, 8 Apr 2025 07:54:41 +0000
Message-ID: <f1269259cd440a03f0e7dc210d1fa76109c6fb85.camel@intel.com>
References: <20250403092825.484347-1-animesh.manna@intel.com>
 <20250403092825.484347-6-animesh.manna@intel.com>
In-Reply-To: <20250403092825.484347-6-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ5PPF1FF629472:EE_
x-ms-office365-filtering-correlation-id: 61fe96ea-0b7c-4498-928a-08dd76729ebb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|1800799024|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?NkdZWlROTlRRbjhwMXpXTEtqN2cxRzBxZVptUGQvajcxeHNaWEl3WmR3dnBI?=
 =?utf-8?B?dzdBNWpBT1UxaU53U3RFd20wVG0zdUNqUE1hdnYvUHhvY2hQMVFSSUVESXA0?=
 =?utf-8?B?MHVqall1d2JCUUo5NS80bWVEcXVqSmdsQ0tvME95eUhWWk8wR1lsS1pJWGRV?=
 =?utf-8?B?RVFXaXhDaXZ5dUIwNHU3WS9uRjN6QXFWOUxYQ3o4eEw5ajB1bWt4cWhva3R0?=
 =?utf-8?B?L09Hb0VTS251TTdwc1hHZjRRU0JKR3Y4Q3EyWVhjV25hb3NuNWtCUU5CeE40?=
 =?utf-8?B?YUhacmVZRHRBdU5JMWY0MGJBYjNvamh0bXdJTUpMbWd4bGxHVEZEMzB5NXVR?=
 =?utf-8?B?cCtvZEIyN0xZSmxjbHdIQ3pXdk80TUZtSHJSZFJDK0pBb29hRmlqNzRlMkxR?=
 =?utf-8?B?KzJOTThteEdKb296ZEIxTStRaHhiWmI1dGJ0dTR0NlVJSFBHY0pJQUk5MHpV?=
 =?utf-8?B?QWk2dWd2M3NqeDlaWHI0V0QwVXZ2dlYvdnZDQmFzQXFsaHRHSThpcmQybnlL?=
 =?utf-8?B?U21Bb2VjOVpzbmo1bDM0V2tCVkIvR0lhOXNlL1ZNMlR0b2crMjlyNWFBU241?=
 =?utf-8?B?UnBUdWgzSEU4MWxuNGtpdDROclN2L3Q4bU5iOFdqdzFJUkp3YWF0Z0YyRW5j?=
 =?utf-8?B?clFmVTFsMzdFWmZkb2NHVDNJR2RRSThqakl1elZ4ZmpFYXpzKzJ5TVBwZllt?=
 =?utf-8?B?M1JkaGp2T0wrSzlGWDVHdGRsa0hlTXJLbWVCeEJBMVNoaDlIQlo4bUtqQ0RH?=
 =?utf-8?B?WnNvclFYdFgzSkh0bU1rQzg0UEtacnlWeG90dytjYWRwZDZ2Y0FXWXNKR2tz?=
 =?utf-8?B?Ym9WaFlBRjFxbFdjdHVwdE9iNGlkQnJ5YkxQeUlFRTVwK1kxR0Jac0EvTFZv?=
 =?utf-8?B?TldyTmg1eVRSMWw4YU9QV0ZrTzRIOVVVTXdDODVSL01oK0U0bUlLTjZOb09D?=
 =?utf-8?B?SmxuV0RVMmZMMlp1TmMzVXU0Ni9JRzl1SkNCT3poVFZMUEZHSm5tU01FdVUr?=
 =?utf-8?B?RHcxY1RHaGhaYkhyN2QzQ1BUNTVYMlFZRldWb3JFR3I0c1RUb2J5am9maXpY?=
 =?utf-8?B?MGZXUzY3eGV5UTRhQ21iU24rZmFnSDVBaHpGcHBWenJwRUdRM0YzVE8yOTR2?=
 =?utf-8?B?dU5pT05XRDNvWmNvQ0dhWUVyM0d2V1kreTUyTmJ0eEJUTUQ3MWxubWZYQVVG?=
 =?utf-8?B?amwyRG1QZUw3bStyZFhtVnBFYUVHdXpDSzNWZzJlTFJGTkZMMVRBSGJEdlhw?=
 =?utf-8?B?bzVidzUrVVlNTmJ0RTBBRnJHOHhMVGRCTXZHWkFBdWp3YkxYWWlzamVpbG1t?=
 =?utf-8?B?TG5MSnE2SW9Kc3lEMFpQbEJweUJHd2VHZ0J2ejJ0MW03KzIrWnlSZ2k5bUdJ?=
 =?utf-8?B?WW5NV0Z4Wk5iclJQY1I5Qy8rRWg0YW1ydnpEbXlLc2tuV1hMazlYUkU5UG42?=
 =?utf-8?B?ODRhLytSV2lhYVJXeGRmeTBnblZYcTNad1lnZVgxTVRoTThIY0U3NXp0aEx2?=
 =?utf-8?B?Vkt1NmwxNlFrTHRFOVN2U2o3enJyZ3lOUlB2STZiTVR1bzAzRFFGdXRZbWwr?=
 =?utf-8?B?SWtjOCs3dDdZbm5iZ25xbHpCYlZvaFptUnF5cmczeUF1bkZGRXlTUVQrKzdX?=
 =?utf-8?B?NnpCcWMydjZiR0x6MUpQU05QYldqY1pzSGtiN0Q2d0s3SWZHd3VnSlhOYmlt?=
 =?utf-8?B?UXhRTlNlV1F0QXI1VW1VeW5iQ2xwTlJ6a040RS9qWlBvRit2UnB6LzY5T200?=
 =?utf-8?B?WTNUUDFsbUk3bmhvRktDR1FreHNGOFluZWtNUFRneHVXVWI1d0hHZEFIS3hn?=
 =?utf-8?B?Q1MxQXZKVVRiU1ZkbVYvYlc0d0dPM045d1ZGa1JhUGZ6TkNhWEljMy96QjVu?=
 =?utf-8?B?dWp2OU9mWW5hNnpYWEFKOHliQWVKS2duTTJSTFpxU3F0ekRJd1FNTzllN1B1?=
 =?utf-8?B?VzhYanFvcnV1TkhnUE1TcjFyVEtmbjZtdDlWSnZIdjBlVmJaaHIrTWozYnh1?=
 =?utf-8?Q?vIAUhOdd0tKdHwAYAoPLiAfRGETszc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NU9ZWUY4aTlld2p3QjBQNUVqMnJTRWJUelAwdEpNVHZDTjJPVS93amxtelVx?=
 =?utf-8?B?TW8zZFYyKzNDem82ZnNBdWhpRGdpQjhoeHJ1eCt0ZUVONEs5STJnaEVJb3pM?=
 =?utf-8?B?R3lhMi9xN1RuM2pSemp4dU1oNlNOOFZxMndrYkZtK1MzeEorZ1I0WGtFREJC?=
 =?utf-8?B?MzY5Yi9aTjNPY0RjSEQ4ZkFyMUhXTDdvajRDeGIzNUdPUC9NVm9vcW5IWG9k?=
 =?utf-8?B?VUVRWFY3eC9weHAyQXZsQ1BhQVJQQXpZWldJTmFkZ1EyZk8yYmRLWDRVZHRi?=
 =?utf-8?B?c3FoK3RnWWJNZ3Z0eVFqUnB6eGJRSGxnLy9UcG1ZVkFHYWZOS1NuL3JmMGpS?=
 =?utf-8?B?T0Y2b05lMm5BUnRzaU1ZbjlRTU1KbFJIVTkya0taOXJoYWdNNTRTalZRUzdi?=
 =?utf-8?B?c1ppWXR5U0ZPbzA5U1daT3RUS0NyK0VKcTlkbHkzdGZwS1BmeEd6Q2Y4RmxI?=
 =?utf-8?B?SHZQT0pHbzdLNmV6aStmU0VSQ2M5TUk1RlVEZmlsbE1uY0l3V3RueXF3a09n?=
 =?utf-8?B?YnBlZlB6bkdrV1FJdzFMS2poNVZMRU9tTTE5b0hwT2VpbmJjVHFaNGI3WWZO?=
 =?utf-8?B?TU04YlRZd0JpVEgyTGEyUXdUN0ZrRXBxMjB6bjloNllJSzdKMUR2L2hxeGYw?=
 =?utf-8?B?eVdpR3N3VEk0Y3Q0U1hoQVJSZXlDRUdnL2x2d3MvR3hNQy9sWDNNTlJMTWpF?=
 =?utf-8?B?R1hZSzZ5Q1dQN3JPYUZTeVB0YnBqY1FvWFZhUytVeEN4aWtDMUk2c0g1eTQ1?=
 =?utf-8?B?ODh6OVh3UDNPcU5IY09PZ2d2bUFJVWVvdjNKTlRUc3ZTeHNicytNWFdkVkMv?=
 =?utf-8?B?QnhEYnFwdFUyRGlkZW5VRzBJOFNTTEFyV0RuMmYrdG0zMEF4S0IwbVJicG8y?=
 =?utf-8?B?YVBrMUZFRFBaVmZJUmV2eHg2YWRCOWgrYUZ5Nm9OanFFQkFsOFhMd0h5a3Y3?=
 =?utf-8?B?K1FwYWVnNlo0WjhnQ0tpRGN2S2tmN1NNQlFvMTM1bXh4VklYbE1rRzVEcllD?=
 =?utf-8?B?M3d5QTFCWS84bnF2U0p1WE9iR0l6aTI2cXhpK0lrM2xOdGlMdnB1S3R2Tytq?=
 =?utf-8?B?ZkxILzJSZkhTNk5HdERPOW9vb2IyQm96S1lsSDQyM0VmQmszVlZtdlNWZkhZ?=
 =?utf-8?B?L2NyaVUvZ3B5YTZNL0orZXpnRGV2aWZweEdYR1BuSGh2ck45WFN5QVF0K0wz?=
 =?utf-8?B?SEZQV2dQVEVJUmswUVRvbExSRnNhbTkyOW04S1RpZUYzQ1Y2UkxPaUpGN2Mw?=
 =?utf-8?B?QjAvZEx1UHAva0dzMHBjdmdDTVFiYVBkZHlRUGwwanl0Sk5jUUZiUldVc1lN?=
 =?utf-8?B?Y3ZxOWdabWd1SjVINmRrRUFnTGtwMWRpTmRTR1cwdWRyZVR4aGU1N1BQZThJ?=
 =?utf-8?B?SWNPamJpS1JkKzE0azVSUWRxaUgwVmpRVlIvSHRadng3aVJBdHJtbXgxMWFp?=
 =?utf-8?B?WGEybGxvTklzSjg5cExrbC9ldGtwM0llNlZXV3Q2VUwxaTloOVB5Y0Rjbloy?=
 =?utf-8?B?TE1RRXNCYWlZTWYyakxTc01oRHdOaFlOcFBkTEowYVgzRW1OMkhLWVFHY21l?=
 =?utf-8?B?V0E0YnkwdDkydXJhUVRybUk3a1VzQXNFOU1KYnNyM1R2Ykd6bEoyZWE5d2Zj?=
 =?utf-8?B?UHlIRHdNVWlqSko1aE0rMlBXaU04OG9RL0p4MlcxejFZSnpjdjErRkdaVU1u?=
 =?utf-8?B?ZnpwZE1ZdHhMZ2FxcFZmSGJXQ01LeWNYVFp3L2hBcHdFVDdsWG1iRXcwTXJm?=
 =?utf-8?B?RFZ3TWNVdTZ1blVLWmVNeVdaeGlUdUl3QVZDSFAwSU4rcWx0VWt5V2xEcE5I?=
 =?utf-8?B?R2ZPVFYwdWlQRVViNnk5N041NzJWL3VhTmpPMFpVWTJCSEp5eUtUUXJ1WEdp?=
 =?utf-8?B?WWFSRHZtN0Nvb253UW5ENlRqZElPT3BiWVFaN1B2aWZWcXBIN3FURjRJMlRE?=
 =?utf-8?B?VlpuUExvaTVuc1BlNWVwdU9QSlZQVmkvcE12UXI3c0huUHVrLzB6dTdTSFp1?=
 =?utf-8?B?U2NSaEl5eDJSeFBxVzd2WWRQdmtDYXhNa1Rmb1hrbHEyWEQyQmdJQ3Y1cktv?=
 =?utf-8?B?ZFZxb0lrL0liUmp5VE4wVnFIWGJhRklXY2pudkNObEduTkxaRlhhZmd4NklO?=
 =?utf-8?B?YzdqYzF5RzdtNVpITWw1aytNeWRQdGVGS1ZiUklxa0sySW9hWGJYWVVrZm1R?=
 =?utf-8?B?bjVrNjZOYXJ6TmF1N0lNdUJtT1pBazBmYWc2U2dWeWdqQUsxY25DeDhJRk5Q?=
 =?utf-8?B?OEMzc2NyZmxkQ0lZK3hPM3JtZ2N3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <60DD4F755F03E44788FCE0E56630738F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61fe96ea-0b7c-4498-928a-08dd76729ebb
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2025 07:54:41.7544 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yQGsvCOfQB/4anc12URO6uaPzyi2rTBLw8itYKxl/APseD/qTHC4Qk/+HCCYRkKajampsMXX62z4wC7UQDbM81rhGQKHn1rxVDTtFb7zJss=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF1FF629472
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

T24gVGh1LCAyMDI1LTA0LTAzIGF0IDE0OjU4ICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiBGb3IgZXZlcnkgY29tbWl0IHRoZSBkZXBlbmRlbnQgY29uZGl0aW9uIGZvciBMT0JGIGlzIGNo
ZWNrZWQNCj4gYW5kIGFjY29yZGluZ2x5IHVwZGF0ZSBoYXNfbG9iZiBmbGFnIHdoaWNoIHdpbGwg
YmUgdXNlZA0KPiB0byB1cGRhdGUgdGhlIEFMUE1fQ1RMIHJlZ2lzdGVyIGR1cmluZyBjb21taXQu
DQo+IA0KPiB2MTogSW5pdGlhbCB2ZXJzaW9uLg0KPiB2MjogQXZvaWQgcmVhZGluZyBoL3cgcmVn
aXN0ZXIgd2l0aG91dCBoYXNfbG9iZiBjaGVjay4gW0phbmldDQo+IHYzOiBVcGRhdGUgTE9CRiBp
biBwb3N0IHBsYW5lIHVwZGF0ZSBpbnN0ZWFkIG9mIHNlcGFyYXRlIGZ1bmN0aW9uLg0KPiBbSm91
bmldDQo+IHY0Og0KPiAtIEFkZCBsb2JmIGRpc2FibGUgcHJpbnQuIFtKb3VuaV0NCj4gLSBTaW1w
bGlmeSBjb25kaXRpb24gY2hlY2sgZm9yIGVuYWJsaW5nL2Rpc2FibGluZyBsb2JmLiBbSm91bmld
DQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVs
LmNvbT4NCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBt
LmMgfCA3ICsrKysrKy0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAxIGRl
bGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9hbHBtLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Fs
cG0uYw0KPiBpbmRleCBhYWUyYzMyMmJhYTcuLjdhYjI5YzVmZWYzOCAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gQEAgLTM2MCw2ICszNjAsOCBA
QCBzdGF0aWMgdm9pZCBsbmxfYWxwbV9jb25maWd1cmUoc3RydWN0IGludGVsX2RwDQo+ICppbnRl
bF9kcCwNCj4gwqAJaWYgKGNydGNfc3RhdGUtPmhhc19sb2JmKSB7DQo+IMKgCQlhbHBtX2N0bCB8
PSBBTFBNX0NUTF9MT0JGX0VOQUJMRTsNCj4gwqAJCWRybV9kYmdfa21zKGRpc3BsYXktPmRybSwg
Ikxpbmsgb2ZmIGJldHdlZW4gZnJhbWVzDQo+IChMT0JGKSBlbmFibGVkXG4iKTsNCj4gKwl9IGVs
c2Ugew0KPiArCQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sICJMaW5rIG9mZiBiZXR3ZWVuIGZy
YW1lcw0KPiAoTE9CRikgZGlzYWJsZWRcbiIpOw0KPiDCoAl9DQo+IMKgDQo+IMKgCWFscG1fY3Rs
IHw9IEFMUE1fQ1RMX0FMUE1fRU5UUllfQ0hFQ0soaW50ZWxfZHAtDQo+ID5hbHBtX3BhcmFtZXRl
cnMuY2hlY2tfZW50cnlfbGluZXMpOw0KPiBAQCAtMzgwLDkgKzM4MiwxMiBAQCB2b2lkIGludGVs
X2FscG1fcG9zdF9wbGFuZV91cGRhdGUoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3Rh
dGUsDQo+IMKgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxh
eShzdGF0ZSk7DQo+IMKgCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
ID0NCj4gwqAJCWludGVsX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOw0K
PiArCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0ZSA9DQo+ICsJ
CWludGVsX2F0b21pY19nZXRfb2xkX2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOw0KPiDCoAlzdHJ1
Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcjsNCj4gwqANCj4gLQlpZiAoIWNydGNfc3RhdGUtPmhh
c19sb2JmICYmICFjcnRjX3N0YXRlLT5oYXNfcHNyKQ0KPiArCWlmICghKGNydGNfc3RhdGUtPmhh
c19sb2JmICE9IG9sZF9jcnRjX3N0YXRlLT5oYXNfbG9iZikgJiYNCg0KSSB1c3VhbGx5IHN1cHBv
cnQgYXJ0aXN0aWMgZnJlZWRvbS4uLiBJIHRoaW5rIGhlcmUgeW91IHNob3VsZCByZWFsbHkgZG8N
CsKgDQpjcnRjX3N0YXRlLT5oYXNfbG9iZiA9PSBvbGRfY3J0Y19zdGF0ZS0+aGFzX2xvYmYNCg0K
QlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KDQoNCj4gKwnCoMKgwqAgIWNydGNfc3RhdGUtPmhhc19w
c3IpDQo+IMKgCQlyZXR1cm47DQo+IMKgDQo+IMKgCWZvcl9lYWNoX2ludGVsX2VuY29kZXJfbWFz
ayhkaXNwbGF5LT5kcm0sIGVuY29kZXIsDQoNCg==
