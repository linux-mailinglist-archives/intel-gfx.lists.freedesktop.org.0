Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 573F8B0429E
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Jul 2025 17:08:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C24B810E4AE;
	Mon, 14 Jul 2025 15:08:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oJYlC4y+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CE8010E4AE;
 Mon, 14 Jul 2025 15:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752505679; x=1784041679;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=kFz+ZGp4WzNzodZDJIWs7q6NOZh8/ky/6V26CMOp6ag=;
 b=oJYlC4y++c+CwXAFgENfsd491FUhc2HQYdEZlTOZQPdjyOY0jocDNXEt
 JfqRyp7eMrvdhJkJFJvNlEXmPMGKnLTzSNfqs1ID95kPzmBBPV13gwubL
 Jhx3tWAYtwrmGWuoQkrKNcl0kb0TXpnrhjRxwZF97Fpc2tzE+BqWsTJHA
 jPXr76l9MqtLRFIy1XyJYr8+MeDP7UwQYYYKTEDtFcKjqBSQiDDrTjifL
 rYWu97DWY5m6zwvs68/rmJ73NvPjobojOU18ifgomTsxVLNYf+p1+fZvZ
 GlRrCIWo1cC7s6WtYrJmya3swrTmyEyhl0OpzDwSqv08k8qTgk9UEJ9G5 A==;
X-CSE-ConnectionGUID: 2WIlXHtvQXaIN52y9YIAOQ==
X-CSE-MsgGUID: puTjk0lUShSmJTkaA46o5g==
X-IronPort-AV: E=McAfee;i="6800,10657,11491"; a="53922379"
X-IronPort-AV: E=Sophos;i="6.16,311,1744095600"; d="scan'208";a="53922379"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2025 08:07:59 -0700
X-CSE-ConnectionGUID: wYo4W7mRRrGBKDBocwuoaQ==
X-CSE-MsgGUID: Ri6JzMKITE675jGh8a+0fg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,311,1744095600"; d="scan'208";a="161261720"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2025 08:07:59 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 14 Jul 2025 08:07:58 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 14 Jul 2025 08:07:58 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.57)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 14 Jul 2025 08:07:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q237kYxISqiQo7zTH+EGqkBzFK91w2OljqEMBQlt6WvjIZ+UM+8o0HMJHQXNHc+FYGtf9yitTC8cRayyZ8SmSmJjRng1vEohBWJIsjXFT5VDNz+cNpur4rAkxRD5cTumUgkwLgbBCagWcWlbYZXEx7UEE8cG3dksQTgsTqVhKL+nPflhdMM1q+luiKcPWKkW8WG+lm0GqjsCqxmgenukbRtAyIOnC3c1xZeD8aq1/VXxlFR9eV/w1tWNE7a+An5WNIRoZJ1ZwgBv6qcXrobz0jydJHPR8q0dHZxL47ldk5rr2i0NI/KrpAEfN8WvPrWt2Ri0/OxxU3oDt5FWeXiVew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KiI6AMBXyWvFFZtPG4BxK1UnCXmgzWeu9EMIfigZF/Q=;
 b=E2I4dLuciGFkQeYL5mMZPJZx6pCBNKRTzpxS19kSAWkPUWYcTsFPQApySnzVoBNpjwnVpMexmMt1jN+K+8+e0aYRSvGkpHkv3bE14/Ltu8rL4clOG9S5SAUkYBxcgUrz599ksxGYvb0dX7wsle2t7PWa8+9O7diZSfGVwkpY3H4ryK6KvgSjKaGEh3KsO+FMSr2DTm5puMwtb4KKY2Gx/uqxDtW+VcCYP1LA7pfSxfF5WZ31I7OOVzYMK96htzYrJvTKh1PDyg3hFbcXW9K3SQMC9AOuokzJyaQ45R1J9QOmFOde9vn/8rVpteov0BIOX+PLgHOtM9HqyNXU3+CuXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS0PR11MB8181.namprd11.prod.outlook.com (2603:10b6:8:159::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.35; Mon, 14 Jul
 2025 15:07:56 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8835.026; Mon, 14 Jul 2025
 15:07:56 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250714055344.3825881-1-chaitanya.kumar.borah@intel.com>
References: <20250714055344.3825881-1-chaitanya.kumar.borah@intel.com>
Subject: Re: [PATCH] drm/i915/display: Add power well mapping for WCL
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <matthew.d.roper@intel.com>, <dnyaneshwar.bhadane@intel.com>,
 <dibin.moolakadan.subrahmanian@intel.com>, <imre.deak@intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Mon, 14 Jul 2025 12:07:50 -0300
Message-ID: <175250567065.1809.3544809721458903787@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4P223CA0025.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::30) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS0PR11MB8181:EE_
X-MS-Office365-Filtering-Correlation-Id: ca9e6be5-6956-4d66-bf6a-08ddc2e8364b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cjZnWHBORngxcCttOUdlL2Y5V1lmaWJtS0Evc3BlL2FCUG9sQTRRMHJzQzBT?=
 =?utf-8?B?Y2JTKzFFbm5tQWdJd0x3Vm9IejkyTUtPejZxSy96ZHV2VzFxa0hIdjRFNWtL?=
 =?utf-8?B?TUQrTVJodU5uYVo1UVk2a2V6YUt5R1YwcDJKNFZ4RU1hSmIzSVBrN3F3ZDMr?=
 =?utf-8?B?bWptKzlLY0dDQUYxLzJIS1dqbUdWTGlHVTVaRUl0TXVtT3BabmhqNURPRnpm?=
 =?utf-8?B?aGJ1UEtiSTFqb3d1YXYzOU52bjdkR2hhSk1seXJMQWtJd245T1I4U2tqcTkr?=
 =?utf-8?B?VTBxVzU3SDA5Z1A3eTdLRnVVKzA3bXlDOUVDSjQyK0pKbFFMNWhCVTJLUGJY?=
 =?utf-8?B?WlFoZWlnTks4KzB4TWptZ05YK2dGNUFQNUtVQ3dmZFFnWi9QV21NR29kWUl6?=
 =?utf-8?B?SVYzZzA2NEF1dzI3NzdwVmMrSlVmUk1XWnRSV1NIOEc0ekFSU21VWlNLcTdB?=
 =?utf-8?B?TFhFamI1RjNzMTE1NytoNFpTOWxrRE5EbUlEbDNUSVdEMHNrT2p4REMycGZr?=
 =?utf-8?B?TGdKenBLWmxPYmhucVBRN2FlNVUvdDJ1eFl5bS9hRzU5MnRiNWtxazRDdTN5?=
 =?utf-8?B?NTRmMHhISTJnT3BwQzlGc3NLa0Q5S1RLVC90WXR5bTNKSVBSamdxdTF4UEpQ?=
 =?utf-8?B?QVNQbFFZOHBMd1phWGppQXA1bjdQNG43NmN1cFBWdnk5QTVraEttRnJ4eWtl?=
 =?utf-8?B?RzJ3VjVEbnczbXZpajZqRzBaU1dqOUtnNTJITlBrSW0zK1dLMUQ0bVYxNDV3?=
 =?utf-8?B?cyt3cXIvazBXSHU2bG11RlFndW13SEI2aXE1UnZVSGxaMFpMVERNMG9abzRO?=
 =?utf-8?B?a0pocEp6Y2ozWkM0UVN6NTZWak9BNU5UME1xNnZsSExxcmtEcjM0MVRMZWpT?=
 =?utf-8?B?aDFRNHBtK01pZ2RvQ2ZiQTlSbEFuMi9uK1lOdGNVV0t3dkh4TWF1TGNrNDY4?=
 =?utf-8?B?WTdhczJsZnpyaHExR0tORk1ROEs2S2ZmNFAzWmppUXJRaWxLWllLR2U5Z3Jw?=
 =?utf-8?B?YzlYa1F1Mko4TEt0WlkzK2xidG8yd0VBekIrZzkwYjFaTm91NEQwSVhRTVI0?=
 =?utf-8?B?ekk4TS9DNmtKRkRvTHpIZnhrVnRydUl1cm10cVZERmd5c3YyU2JLZG9ESWR0?=
 =?utf-8?B?SnFZQWFwQWpDM0pLRjBTclFWUkprUnhJZ1FaRjIxcFkrQzQvR1hkN1VBdUk2?=
 =?utf-8?B?T3pYWVROYlBxVCtUTVE1OFNXcWtDcDNGNnczbEM5N3lhZGkvWnMrK2xYV0Iy?=
 =?utf-8?B?VEZKbHpMb1cyTFU1UzFZSHhpeE9MTCtwZHc1YnJKTHBxeWJObk0zZXNsQlpD?=
 =?utf-8?B?SnoycXlRTzZ4Q2o3Qzc3M3M3WE5jOXkrTnRpTVNNK3NtL0VYRlJBKy9TQ1pR?=
 =?utf-8?B?ZDJCN2N6TEJIUjNlN2VzOVJnUGpabGJoOFF2Zks1UWZ5MGN1OEVJemdkY09t?=
 =?utf-8?B?NWdHWENVSXpqeVcrN2dYRG9DUHVzaVVHZ3RxZVdlRCs4NVphK1NIRURNWjBJ?=
 =?utf-8?B?c1ZNNzIveThMNEo4eEJQSnUzNHRrOWhuSzBzZUpDRUxUVTMraFQyNmdXNGxT?=
 =?utf-8?B?T2JaLysyMk1ad2NUanhOMjM3dVJRbTVPQVoyWHhvWHJVMEFONmVkaWtjWGwr?=
 =?utf-8?B?RFA5Q05lRlhGdFVHR3R2T2tSNURVVE1QRTJ6OGh4OWh1aWlVTDcvb0FVaCsw?=
 =?utf-8?B?ZFRzTXZTS3k4MnYyTWVUdWt2OEZxeGpHenlKOEhPWVFabko1VFZnYUtFeEFk?=
 =?utf-8?B?alVXUzRweEl5Y0h0a3Y3MmExT0FKZmk3c1BSQ1dKUUhtMmJaWGprbVl6d3BR?=
 =?utf-8?B?dWlmNzVtd2N4aStuaXBBejh4dTJUSGhUZXNVT2xVQUlGVWtPTXJQZWN3VWdI?=
 =?utf-8?B?Y0FWSHBYOXBCdWcvb3E3eklMQ05WdmdqT3MvT0o5alNUQ3c9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eTFRbTN3WVJlYmMwMFBnNTBPbmlRVzRXS0ZqZ3RpcFlRZnkrZWxrbHppMEto?=
 =?utf-8?B?UTQ3MEZHN1pJUTBvWkRXQm81YVFVZnNlSld5NGttcGczRkgvcVBRcTRiZXdS?=
 =?utf-8?B?dzdyaVlPUEMrdTFocWd1dXVuaG1odUNFUjhJb3F6akIvUU91WXl2Qk90ZUdj?=
 =?utf-8?B?d0Vpa2ttT0xlZFh2eGtjWExlOE10MzZINXhhYm9xVFBUKzJyQnBMOHRGcFVq?=
 =?utf-8?B?VDN6M0J4cFNpWHI3dDgxU1RGRHlXM2RVQnNJaExSWVViRWplRVF5M21wckUy?=
 =?utf-8?B?aGlTNkt4N1V6KzExNWhJSjI1ZzVUT3Q2VW1SVVZKQ2FkOSt3dGZEZGxRbDgz?=
 =?utf-8?B?TlVBYk5HK0JiWm8zS3NaQ2hHR1FPQ3hwQlUzWFU0VFZWYUNtd0ZLNkQwaXdu?=
 =?utf-8?B?TFFWRzRXNDFGU1MwbFJENVlMMXNHbnl6YWV5aHNha1BLNUNidVI1ZHNCbUVa?=
 =?utf-8?B?UldXUGRKRGhkY2EvekxIemFYVWtiTDdhK2l3ZUdha3NRVmowSzByVkVmRmlu?=
 =?utf-8?B?d244dFk2VmhWUTIraUMrVE1Xa09oTUltUklmYWMydGE2T3QrRk15SzBuME14?=
 =?utf-8?B?NlpOQlMyUzZKWGR2UjExU0QwNnlSRG9OcGpybE1KR0NxdFJhcnFkMmVUeHoz?=
 =?utf-8?B?S0VWaEtSK3JYTm9qdEcxcUVEUXFzTEg1SEhIWEJyZHJ5SmZBclRFSXYxczZs?=
 =?utf-8?B?YkxMV2tRa0tnWXgrdEw1aGdxNEh0bXJXdmRjZy9CR2JXQU0waHJna2hrdmRw?=
 =?utf-8?B?WTE0N3pKYWVCRnc3Z2M3ZExGR1B4ZGIxTUZkNi8vS1JuM09KajlVQzQ1U3lF?=
 =?utf-8?B?ZW5VMzhUK25hVVdPN1RXbUJTclNLcHlrSVcyRHdEOTNWS0JrYkdMK3hIeDc1?=
 =?utf-8?B?TGRocWZrRE8xQkdPYnlCRXJVTHBnbVZqQmFVOWx6MHhtcVBnaFF3cmVvTUc3?=
 =?utf-8?B?R0syZXl4Qk5nTWxzeW95ZWU1VTZCVXp5czkva1RTS3J5c01QbTZhc0tsbDBD?=
 =?utf-8?B?ODVjUEdYQ3NHS29TS0tDTmMvK2tSVTR5V0FCaHNGQ0NVVWY2dEFvRE1kS29T?=
 =?utf-8?B?VmUyQk9PNEpUWkhjRG9ueGlvaU1FSWVYVk0xT3lSUUt1WHgzSW1iNnpwbzBS?=
 =?utf-8?B?VGpVM3lWTWZIS3pPZVVoU3RZMGt2dDVyeFFoV1BJdkxHQ3hBdUpycU9Obld4?=
 =?utf-8?B?TUdGeFd6NXdHOWcyL1p1RVFFMndOUVhjcHRaYzJ3cmRMNlgvNEtRS1IyY1hi?=
 =?utf-8?B?MC9CWkxSVkJvaG1SWVgrZGYvbXlGK1JMQ2FJTjdiTHZTVEJ5TTNGc21nYk56?=
 =?utf-8?B?dVZMd0swSkRaeGlxWXZMOXRCcnlsbXMrTUJBVnkrUExxRXZQZkhLbTdnN3B5?=
 =?utf-8?B?bVVBRW1ySDNmZkVRMnkyU0dMSFk3dmZPbVorUEJMV3JUdXZ2cUdvNk9MdnNZ?=
 =?utf-8?B?bjlNOHovZVRLNGlSWDh0enZKWU1HM0lsamdwa3lmTkdJSFhxd29yRGhCaEwv?=
 =?utf-8?B?Y3FpdWdTRW9PeFovRmJGY0IwQmdZcVZqMy9mV1VacFlPQ3FPUW5pcFVBbmF6?=
 =?utf-8?B?djY5WWhmWm9yRHZXdVBtOEwzek5YVTA3Uzczd00reDhhdytsNVRoU2g1SlE0?=
 =?utf-8?B?QVVHK1hCZk5jN1hEa3RvUmJsVjZXZzdaNUgzSlk0aXRpb1BZUS8xM1pYTE4r?=
 =?utf-8?B?ais2anFHSk9UU2hjME52amlkbWYvaFVGY3krdUlpYXFHTVdjd2dCYTJMcklI?=
 =?utf-8?B?M0Q0WUdwaG45cW43VU5nZzhVSE5rZ0ZPVFBzS0plMHBnaSs1bUFtbzlxd0Zx?=
 =?utf-8?B?MlArQ203aFNCSU5FMHgrYWh2ek9iK3VQdmtRVEVOR2JjUTdBWWxOYmN1Mm5D?=
 =?utf-8?B?b2lFd200VFlNd3loaUl1dFVKR2RiZGUwREl1bG1iZGhvMGlRT2RZNmg0OXhN?=
 =?utf-8?B?WmZRNGlqSHJkMDJRRmkrUUFtakhSMzdxRlBjb1lPc2pIL2hidU94allnRXZK?=
 =?utf-8?B?aGR5bXJnSUtHMEpEL2djdllkaXJZM1JjaFhuZ0RtUTVRSWIwdmZzMHZBLzNG?=
 =?utf-8?B?Q0J5bGFWOHpyaWp5eDAyKzRDQlo4S0EwUXNFQmNVY3VCYUZLeVVVZjFmNzVC?=
 =?utf-8?B?NHA1MWVBSTNjZ1RGUHJoa2hIdVIrdjVJeTQ2WmNUY2xrRXV0d0ozS21SK0dl?=
 =?utf-8?B?aVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ca9e6be5-6956-4d66-bf6a-08ddc2e8364b
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2025 15:07:55.9023 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VxPBigT6K0pcW1RLBjiI1cKS+XZ/gYNKu26UfzASDUSHpEK/nCqKecLh86d0dDdICTNAKozOMFc+oMzyksG7Hw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8181
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

Quoting Chaitanya Kumar Borah (2025-07-14 02:53:44-03:00)
>WCL has 3 pipes, create power well mapping to reflect

I believe display fuses should reflect that, right? I don't have a WCL
handy to check that, but I believe so.

In that case, I believe a better solution would be to filter out the
power well mapping during initialization (__set_power_wells) based on
the availability of the associated hardware resource (display pipes in
this case).

That way, we do not need to hardcode different mappings for different
variations of a display arch.

--
Gustavo Sousa

>HW. Rest remains similar to Xe3 power well configuration.
>
>Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
>---
> .../i915/display/intel_display_power_map.c    | 58 ++++++++++++++++++-
> 1 file changed, 57 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/driv=
ers/gpu/drm/i915/display/intel_display_power_map.c
>index 77268802b55e..23c59b587f78 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
>@@ -1717,6 +1717,60 @@ static const struct i915_power_well_desc_list xe3lp=
d_power_wells[] =3D {
>         I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
> };
>=20
>+static const struct i915_power_well_desc wcl_power_wells_main[] =3D {
>+        {
>+                .instances =3D &I915_PW_INSTANCES(
>+                        I915_PW("PW_2", &xe3lpd_pwdoms_pw_2,
>+                                .hsw.idx =3D ICL_PW_CTL_IDX_PW_2,
>+                                .id =3D SKL_DISP_PW_2),
>+                ),
>+                .ops =3D &hsw_power_well_ops,
>+                .has_vga =3D true,
>+                .has_fuses =3D true,
>+        }, {
>+                .instances =3D &I915_PW_INSTANCES(
>+                        I915_PW("PW_A", &xelpd_pwdoms_pw_a,
>+                                .hsw.idx =3D XELPD_PW_CTL_IDX_PW_A),
>+                ),
>+                .ops =3D &hsw_power_well_ops,
>+                .irq_pipe_mask =3D BIT(PIPE_A),
>+                .has_fuses =3D true,
>+        }, {
>+                .instances =3D &I915_PW_INSTANCES(
>+                        I915_PW("PW_B", &xe3lpd_pwdoms_pw_b,
>+                                .hsw.idx =3D XELPD_PW_CTL_IDX_PW_B),
>+                ),
>+                .ops =3D &hsw_power_well_ops,
>+                .irq_pipe_mask =3D BIT(PIPE_B),
>+                .has_fuses =3D true,
>+        }, {
>+                .instances =3D &I915_PW_INSTANCES(
>+                        I915_PW("PW_C", &xe3lpd_pwdoms_pw_c,
>+                                .hsw.idx =3D XELPD_PW_CTL_IDX_PW_C),
>+                ),
>+                .ops =3D &hsw_power_well_ops,
>+                .irq_pipe_mask =3D BIT(PIPE_C),
>+                .has_fuses =3D true,
>+        }, {
>+                .instances =3D &I915_PW_INSTANCES(
>+                        I915_PW("AUX_A", &icl_pwdoms_aux_a, .xelpdp.aux_c=
h =3D AUX_CH_A),
>+                        I915_PW("AUX_B", &icl_pwdoms_aux_b, .xelpdp.aux_c=
h =3D AUX_CH_B),
>+                        I915_PW("AUX_TC1", &xelpdp_pwdoms_aux_tc1, .xelpd=
p.aux_ch =3D AUX_CH_USBC1),
>+                        I915_PW("AUX_TC2", &xelpdp_pwdoms_aux_tc2, .xelpd=
p.aux_ch =3D AUX_CH_USBC2),
>+                        I915_PW("AUX_TC3", &xelpdp_pwdoms_aux_tc3, .xelpd=
p.aux_ch =3D AUX_CH_USBC3),
>+                        I915_PW("AUX_TC4", &xelpdp_pwdoms_aux_tc4, .xelpd=
p.aux_ch =3D AUX_CH_USBC4),
>+                ),
>+                .ops =3D &xelpdp_aux_power_well_ops,
>+        },
>+};
>+static const struct i915_power_well_desc_list wcl_power_wells[] =3D {
>+        I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
>+        I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
>+        I915_PW_DESCRIPTORS(xe3lpd_power_wells_dcoff),
>+        I915_PW_DESCRIPTORS(wcl_power_wells_main),
>+        I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
>+};
>+
> static void init_power_well_domains(const struct i915_power_well_instance=
 *inst,
>                                     struct i915_power_well *power_well)
> {
>@@ -1824,7 +1878,9 @@ int intel_display_power_map_init(struct i915_power_d=
omains *power_domains)
>                 return 0;
>         }
>=20
>-        if (DISPLAY_VER(display) >=3D 30)
>+        if (DISPLAY_VERx100(display) =3D=3D 3002)
>+                return set_power_wells(power_domains, wcl_power_wells);
>+        else if (DISPLAY_VER(display) >=3D 30)
>                 return set_power_wells(power_domains, xe3lpd_power_wells)=
;
>         else if (DISPLAY_VER(display) >=3D 20)
>                 return set_power_wells(power_domains, xe2lpd_power_wells)=
;
>--=20
>2.25.1
>
