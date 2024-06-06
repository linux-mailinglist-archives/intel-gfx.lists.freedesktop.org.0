Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D7D8FEFA9
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 16:59:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA81410E0B1;
	Thu,  6 Jun 2024 14:58:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K3gQugwo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A6DD10E0B1
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 14:58:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717685937; x=1749221937;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UosAMUJM5WiOy+b66RfHwHDfo+NfKEI8uc+FUNfrBos=;
 b=K3gQugwoqs4NZqOpG03CFjj2tZLMxKmb7oWyjfuuxKJ0HMB8UqWDJKLt
 M2jSZrudPTSZxHEiRigHCx9INho6GrUyOU/WFsPyOpugPRRMsr4tHe6G8
 g32He59yxPjAK6ewWvGUuxgUnTM+ER7/d9LI4FzruPWY2p3yD2qM+VY3r
 nEFF9yt5k4605YC8mFnK8xtbNpyQB0w9vkjC2lb0qYyer4Y8yD8rCagWZ
 GK8UKGqXVzAkn4X4xqE1BPQLfsf4Ps6FwshXwR2gsRqYtbn8QtmE1g4r2
 Vy7s6rufq96FWIy/ORY+ir1KJWP4ECNaXmG/T6vmSCCqvkjmVjEv1RrRx A==;
X-CSE-ConnectionGUID: 4v83QBRhTgKGlfXWQVO+eA==
X-CSE-MsgGUID: oUnA8KDNSvqXxEWq5MBvyQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="18205638"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="18205638"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 07:58:56 -0700
X-CSE-ConnectionGUID: VgUe2lDcTsGnYcIItompcA==
X-CSE-MsgGUID: jnbGCh1BTm+Ss+DzgUhpTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="42429162"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 07:58:56 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 07:58:56 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 07:58:56 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 07:58:56 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 07:58:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WNnz1loMuQL6NLsNuT6mdf9pQ+HFrhmnBb3q/dmSslTcvRFkd2TMsskGSFRrAC487U0ABMdA3UPfoa33+cVCiGvoV/SEiCrrbEU1XJ5tMuC4aqRl3sud43odI6ZVT2e1IbiNAJ6lG9IRIP4PHqHmhpH8VXm0mGHzOoOMpzLXNH9362xFF5nZSfHImBbZvlmeUiExl1w6lvS/subdtZxwm/us+zCWtM0/m0WFAjyKJ8JU08Q1jklFAB4c+DcYfEZ/QgSSbnfWqyUo0fizwVKlzeL/p0uVdoVRKv/oK9lSQYvtP5xPaWySwl1coBW58TbBXnBZwDQ1UtttzQgCbdYdtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UosAMUJM5WiOy+b66RfHwHDfo+NfKEI8uc+FUNfrBos=;
 b=BifUZktS5zkP2OjdtQR5aoKztQdhVMydLHHeembEhhKiWdHWFP/3UbolPUw0/L/3T5KrVqe1YemQvGup6b5yltISFIdynuADF9Ll3tiKysCklLCbKgoLKoed3CBsO6oOM6FR7M4/bCV56/GlgoQ7AAMcXGoAxZcu5knKJfs02/ak6ZnKFH6GNswXGQBv7EdDnzJkUx3SJnXZZ6CEtEzrT1Ha4dSsgVYX9zv83e1+sB3fgSWNWiPyg5WBtkFp01MtEx+fa/YMdvPz73Q/iJfrIRE4xorP7IdNccoHDXbnSJGc5rmSinJ9U89x8dDTV73TIyIDeBugEOe0avGcsR8lmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by CH3PR11MB8751.namprd11.prod.outlook.com (2603:10b6:610:1c1::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.33; Thu, 6 Jun
 2024 14:58:53 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7633.018; Thu, 6 Jun 2024
 14:58:53 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v6 11/26] drm/i915/psr: Move vblank length check to
 separate function
Thread-Topic: [PATCH v6 11/26] drm/i915/psr: Move vblank length check to
 separate function
Thread-Index: AQHatzLfjZnqCTCJKUGBbT5kOPeAmLG6xY2A
Date: Thu, 6 Jun 2024 14:58:52 +0000
Message-ID: <PH7PR11MB59814F6E88C3E874C2BC89EDF9FA2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240605102553.187309-1-jouni.hogander@intel.com>
 <20240605102553.187309-12-jouni.hogander@intel.com>
In-Reply-To: <20240605102553.187309-12-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|CH3PR11MB8751:EE_
x-ms-office365-filtering-correlation-id: 6e0cd0d6-6b65-4fc6-bf59-08dc86392e6a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?MFk3NkJUaloyVi96dWdjcmc3cG05Y2lIV2pwL3d5bW5JeHJMU0ZOMmJ5a3lt?=
 =?utf-8?B?VjJXT3p3eGt3RFZiSW92L09sZ3lwdkp6TkdOQW9ranlCWXFaOEs4bG1nbHIv?=
 =?utf-8?B?VUZpZmNiQmJ0KzhJVCtSYnRJZW94TXI0QXBSVjhlRGRpT0wyVkd4bmZjSHdn?=
 =?utf-8?B?WWd5aDJZTHIzTG9POVFHRkV5S1p1ekFzTURNNzllZEZTMEJRUVpma0YyeHRM?=
 =?utf-8?B?WTBaRUpuQnVsTVplTkRRUnZFWkhRejZ2WHloSjZETmFnUXN0TE9iNVpoMHdr?=
 =?utf-8?B?VUlwOVYvMndyV2RXWE9hNkVKY2Y4aENEL01KUDJLSjVqK1FHdkttVmZNdm5P?=
 =?utf-8?B?M0ltTU10WEhQd0FQamR5ZjFvRnVSZ1dKc3lhS1ZvWVk0MHBLZjBoWGUwZ00w?=
 =?utf-8?B?YkFCTWMydnI2SnBOYzVEN3dTTFo0K1VJdlN5VU9odGR1a04xRlNiS2RUUkI1?=
 =?utf-8?B?Z3ZGc2NJQy9TYjVGTmFJUzFxWDZHK1RTUDlGdzRpWHEvcUtwcjMvUWRKTCty?=
 =?utf-8?B?L01VNFEvelM1NXZzNzMwWEh1ZDYwMFBia2lJU29RUm44V1MvQTVTL0tUd0Js?=
 =?utf-8?B?ZXRrS2tlbEgrSHpuMmRRNjFHeEd4WWNpVXZBRjVHMGg1cVFZdGZZSVNtT2Nk?=
 =?utf-8?B?RFBTNHJPTWI1TnFmdmxRV2RUY2U2UG0vT3FnY0MyNzNXSlNzRy9lZ1BnWXhT?=
 =?utf-8?B?TXNCOVNuZVlOQ2ZGRTZ4Y3AzVGYrME4vZzNVTmRMWWI5WXlJOHJwWTZ2Vkxi?=
 =?utf-8?B?VFUrOUFLU044VmRkWkZmVmIzUzdFYmlhREJ1eFQzN0svYlFwR1lBSjVXcERO?=
 =?utf-8?B?TDg1VXBTaHhUQTVpbjM5ajhvVFJUS09ycjcrZEFjaDYybnFOSUxMWE9veFJC?=
 =?utf-8?B?N2FybEc3dWVTOVkwMEhnSXQ1b1Y2Ty9Od3Y1bnZ5NVhQN3cwYzZhdmR0QjV0?=
 =?utf-8?B?dFc0b2ppVVNNbEZ4a21yait5YitXRWRBT2s2RU9QZTQ0V2NJN01tYTVyOGNZ?=
 =?utf-8?B?WTdKclpGZGFCR3l5QzlKSDVhZ3d6cUpTTExPNW9wdUhQWGxDMzZRd0dZOStC?=
 =?utf-8?B?bDJwUUYzNUxDNmsyN2hKcTVQZDFDKzF6aTE0Tk8xWHV6Y3hyVkZnbHhqWmxj?=
 =?utf-8?B?NEtLQUozZ0N1QnV0WVpuYTNOM1VEYjZlRHlVMFBGQ1F1S1dWY3FsV0xMSyta?=
 =?utf-8?B?TUpIalNMRjdCSlFsUHh5L1dmRFg4cGhWSmtiNFMreklnamZWR3I4MklHT0g1?=
 =?utf-8?B?OExxZmRGREhQMUg4NW9WL0hWL2cvSmJ0Z0JZM2F3V2VjVkJBRUhJcWdDaHhO?=
 =?utf-8?B?YmJMUFA5WW5iT01mVUxqNzRNaU8zNVE4N2pOd0V6dzhBd0M0TlRZUFdWQm9w?=
 =?utf-8?B?WUowTjg3ODdZeWNHbXZ1TmpHb0c5MHIwZnFTK09Ob2lORGNFRCtLYjRaSzBu?=
 =?utf-8?B?MkY2a1ZZRjBJdTBVNDd4NjFVR29TY2FTWHo2UlpmL3ZGT2ZSQ2VUQWkxbFZB?=
 =?utf-8?B?d1VseU0yZEZqSjNYbE5lNURCVHpNb3hIWWV0UEk0eEF6Y0t0bjZLdEJ2SWNh?=
 =?utf-8?B?ZnBYSTVJWDhsRFlhS1JIMlVnSXR2QlZoTXdhL2ptcjNGZVJnVWVUZ05iNDJP?=
 =?utf-8?B?UEhjcGpXekl3Qy9uYXI0NXI1c3hyUkhadlJWaDhqbVEveWwvSnNWNmdkbmps?=
 =?utf-8?B?YzZiNDcwSTVveEtZbEdMalc2OTdMTU9yOXE3R21mUUJjT2cvMEpuZENleS9X?=
 =?utf-8?B?bTI2a2xablliK1NKU3ZpNlc1K2NlTDRWcFZFbWRUVy9yb1FGUmcrQmRtb1A1?=
 =?utf-8?Q?i71jfefSqYy7aGcGAYDssNl4RMQUCb8qP3q3s=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eVEzaFh0bDBXQXlEN092RzhOb2F0dXowSmg2b0xsaUxrQkwxNnQ1L0R3MDJ1?=
 =?utf-8?B?SmNYR3l5T3RPRitKcW9WQ0ZwaVlReHFTUEMvWndGclN3WHZSL2pYV2Z1RWI4?=
 =?utf-8?B?RVJaZXIyQTlRa2praVRsVEExTzYrK2ZxSFJkQi90UnRWY3RqMkIxRDNrbVpS?=
 =?utf-8?B?Yk0vcE5icmlvUDZHUDZHblI1Ny93a3VpWWNYMjMwUEFqVmdRQkhlQkttVkdM?=
 =?utf-8?B?MFlWOW1FbVdhMzlYK0NmSzVlTkYwUWd0NlFjK2J6eHVwV2xHVkdkRVFiOStD?=
 =?utf-8?B?OE0rbnE3akJQM2FZdjk2Ymp3dmk3SFZPc1kwTkVwMWNkaWphanpQdGlTdDRr?=
 =?utf-8?B?NWNiOEhablZVQ1BxKzJuZzZwbXkyMlZWNkRwSjJZS0ZoNkR1cGQzWFVGMXFy?=
 =?utf-8?B?V0pYeWt5amszb2tVQVRqOVBpQ0NWZ3NOZUtKUDQ2K0ZKcHByTndwYjVMTGlx?=
 =?utf-8?B?UnV6Z25HcFFHdzRPbUhELytnUjF4ZDNjNWk4R3d3S1hkZUhHL3pRSnFLVHVv?=
 =?utf-8?B?NjJxYjcwU1VtL05HWnJUcjNlTmw1L0RoNGQ2UStubXcrQW1mRnlkZENocHAv?=
 =?utf-8?B?RXE2ZWJmdzRkNjRzUTRzV3FxMmJ0aCtMVzdWRklHbVVlUzJoeHJQVVhrZU0v?=
 =?utf-8?B?NXdXSTd2Z1hqVXhJQldvY2crQWpZTHRhaGR0bDFEajJWUGxVR0VtUE1YNW1X?=
 =?utf-8?B?b2ZuTUE1ZmVZUXVHZW84MHkwQnFKbE5jOWl6cjVhcHU5MTROWnlHWnFhMmMz?=
 =?utf-8?B?d0g2VVhVejh0QUFmM0dFcmFpQlUrZlpkMm9hSGpLRytHdkR2OXhsOXQvcDkv?=
 =?utf-8?B?aFhtb3VMRS9XeW5lQzB6bzVETUtNRFlCUEJPS3JZTXZBVmg3MC9oSkg4aTRU?=
 =?utf-8?B?MVB1Z0hwWkExMUIwZmpqRUVZQmJkK3BJYjFhMHp4bVMxai9PSWJBSWFzcFgr?=
 =?utf-8?B?THIvWmtNVFJSUDB4TThtMng4UDNjbjU3Z05Wb1YxRmdxQjRLZDZoMVVEWnFE?=
 =?utf-8?B?SDJJYjdTWFlpcU4wM1Mvc3A3Q3RQb290TE0wcEtqYlprNGVqZ1BuY2dKWk5S?=
 =?utf-8?B?NksvaGplOXYreEN5ZWQ5Y0NGaHJrTUZDVnhMWjEyV0JBM21SVWRtNnhBc0M3?=
 =?utf-8?B?ZDFOaExsZm5nb3B4eW5QbmR1MlhUcXBZbUNJa3ZYcDdCUW9DT0hrZEs1SFpK?=
 =?utf-8?B?WitRMUdEdTlvbDJnQTVSRjNpR1VXNURiZ2VPYVZtNzdIMVROeUJZakpxMVlz?=
 =?utf-8?B?V21yTms2YnRyQVBYdnpLSTJsRTJieHRhL3hZVWpRZ0c1MGNhbEJxTmt5Zy9T?=
 =?utf-8?B?KythUGxyN0pXSWVXOUI2ZURkUVh2bHpDdkpZdENKT2hmSUtQMWdKZGZ0OVBB?=
 =?utf-8?B?a1dWbHdmeVkvMWtRb0tCMnRBOHlBZ25vc3B6d1VKMXlTV0thVkV2dzVmQnFO?=
 =?utf-8?B?dThMcGczVEgyMU9OZUdHQnRoTDNQNjFnbXRKdWFzWURRVzhiYktSWkc5VG8x?=
 =?utf-8?B?WWJ5ZnRFZmUzUDdTZkdWR25LRVhkdmxNQmU0dVIvOU5XWkQ3L3dBSHZsc3hs?=
 =?utf-8?B?ZDN3RHBlcmp1L0pmRzVRNklXL2xEdnNJelhFaHZpVzNKV0hlTWhubC9hQzhw?=
 =?utf-8?B?RVRMVmFmRHMvS3FWOUc0bWxFVXhUN28wYTUxTU02OXNWVzUwYmJtbzdRVGN2?=
 =?utf-8?B?RGN4WWd2SENnaVJaUFd5NHBPb1FranJ1L2RpbHBLUms3M1pFRU9melZYR2FX?=
 =?utf-8?B?QWkyeHp1Y2hLUitiU00vY3BPbDA2bjMxN3N1Q1dwRnFWUWdmZDRHNTBNNzVQ?=
 =?utf-8?B?a2YrVVNGWmRPRGp2V1RBSjcrdEZuTjZnc3RzWnNUdGlJWm9MdjM0NUU4ZDEz?=
 =?utf-8?B?WXFJc0xRa25XY2EzZllmZnd2V3FCeUV6dzR5VHJiTW56NWtheWtsRjVQc2RL?=
 =?utf-8?B?aHBLcGRzb0RLdStuRmszbTloV0wwaEN1TzlobE9jRFRWUXBLQldiRDVvOG1I?=
 =?utf-8?B?ZEdvL0F2elFTZkxycFZKcnZZK1FRNHNTSlJKeGNWYmljRVpMUnhhSE9zN1pO?=
 =?utf-8?B?S1d1K1NKUGFCM2ZXMERmVVRlOGJLNkM0d05GVUEvRHNSdTZBR0NyOWVySHl1?=
 =?utf-8?Q?H7iUSoovlpIKgIuWpGs+6hIQE?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e0cd0d6-6b65-4fc6-bf59-08dc86392e6a
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2024 14:58:52.9640 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YIW/UTP9SxIpWFRa6Ha9UprbLreu+oa3Bfk/qZ7kvgVwykPboDihnla0nxe9BNN6Wt3hcdirF1Xpvj7qWN5yYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8751
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgSnVuZSA1LCAy
MDI0IDM6NTYgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6
IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEthaG9sYSwgTWlrYQ0K
PiA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2NiAxMS8yNl0gZHJtL2k5MTUvcHNyOiBN
b3ZlIHZibGFuayBsZW5ndGggY2hlY2sgdG8NCj4gc2VwYXJhdGUgZnVuY3Rpb24NCj4gDQo+IFdl
IGFyZSBhYm91dCB0byBhZGQgbW9yZSBjb21wbGV4aXR5IHRvIHZibGFuayBsZW5ndGggY2hlY2su
IEl0IG1ha2VzIHNlbnNlDQo+IHRvIG1vdmUgaXQgdG8gc2VwYXJhdGUgZnVuY3Rpb24gZm9yIHNh
a2Ugb2YgY2xhcml0eS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91
bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMgfCAxOCArKysrKysrKysrKysrKystLS0NCj4gIDEgZmlsZSBjaGFu
Z2VkLCAxNSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IDM1MzBlNWY0NDA5Ni4uMjNj
M2ZlZDFmOTgzIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMNCj4gQEAgLTEyNDMsNiArMTI0MywyMCBAQCBzdGF0aWMgaW50IGludGVsX3Bzcl9lbnRyeV9z
ZXR1cF9mcmFtZXMoc3RydWN0DQo+IGludGVsX2RwICppbnRlbF9kcCwNCj4gIAlyZXR1cm4gZW50
cnlfc2V0dXBfZnJhbWVzOw0KPiAgfQ0KPiANCj4gK3N0YXRpYyBib29sIHZibGFua19sZW5ndGhf
dmFsaWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gKwkJCQljb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkgew0KDQpBcyB0aGlzIGZ1bmN0aW9uIHNwZWNpZmlj
IHRvIHBzcjIsIG1heWJlIGdvb2QgdG8gaGF2ZSBuYW1lIGFzIHBzcjJfdmJsYW5rX2xlbmd0aF92
YWxpZCgpLiBPdGhlcndpc2UgdGhlIGNoYW5nZXMgbG9va3Mgb2sgdG8gbWUuDQoNClJlZ2FyZHMs
DQpBbmltZXNoDQo+ICsJaW50IHZibGFuayA9IGNydGNfc3RhdGUtPmh3LmFkanVzdGVkX21vZGUu
Y3J0Y192YmxhbmtfZW5kIC0NCj4gKwkJY3J0Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZS5jcnRj
X3ZibGFua19zdGFydDsNCj4gKwlpbnQgd2FrZV9saW5lcyA9IHBzcjJfYmxvY2tfY291bnRfbGlu
ZXMoaW50ZWxfZHApOw0KPiArDQo+ICsJLyogVmJsYW5rID49IFBTUjJfQ1RMIEJsb2NrIENvdW50
IE51bWJlciBtYXhpbXVtIGxpbmUgY291bnQgKi8NCj4gKwlpZiAodmJsYW5rIDwgd2FrZV9saW5l
cykNCj4gKwkJcmV0dXJuIGZhbHNlOw0KPiArDQo+ICsJcmV0dXJuIHRydWU7DQo+ICt9DQo+ICsN
Cj4gIHN0YXRpYyBib29sIGludGVsX3BzcjJfY29uZmlnX3ZhbGlkKHN0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHAsDQo+ICAJCQkJICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
KSAgeyBAQCAtDQo+IDEzMzMsOSArMTM0Nyw3IEBAIHN0YXRpYyBib29sIGludGVsX3BzcjJfY29u
ZmlnX3ZhbGlkKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHAsDQo+ICAJfQ0KPiANCj4gIAkv
KiBWYmxhbmsgPj0gUFNSMl9DVEwgQmxvY2sgQ291bnQgTnVtYmVyIG1heGltdW0gbGluZSBjb3Vu
dCAqLw0KPiAtCWlmIChjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlLmNydGNfdmJsYW5rX2Vu
ZCAtDQo+IC0JICAgIGNydGNfc3RhdGUtPmh3LmFkanVzdGVkX21vZGUuY3J0Y192Ymxhbmtfc3Rh
cnQgPA0KPiAtCSAgICBwc3IyX2Jsb2NrX2NvdW50X2xpbmVzKGludGVsX2RwKSkgew0KPiArCWlm
ICghdmJsYW5rX2xlbmd0aF92YWxpZChpbnRlbF9kcCwgY3J0Y19zdGF0ZSkpIHsNCj4gIAkJZHJt
X2RiZ19rbXMoJmRldl9wcml2LT5kcm0sDQo+ICAJCQkgICAgIlBTUjIgbm90IGVuYWJsZWQsIHRv
byBzaG9ydCB2YmxhbmsgdGltZVxuIik7DQo+ICAJCXJldHVybiBmYWxzZTsNCj4gLS0NCj4gMi4z
NC4xDQoNCg==
