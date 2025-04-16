Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 258F3A8B21C
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Apr 2025 09:28:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 833CB10E86B;
	Wed, 16 Apr 2025 07:28:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CZ58FP2G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9B0710E86A;
 Wed, 16 Apr 2025 07:28:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744788518; x=1776324518;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nFvWXPitwe9mD6YJO95lZ5GZoaXMGFt8wuP0Zfw/ui4=;
 b=CZ58FP2GO0kQiPDT+tvAfl5HBhZ4DnHIalrzjLu6xXBgqPrn3TkmBfne
 fBbVno1f4u3CNhuGXg866QJlFuhqYWehn5MpPtgWmLuFc8R4S/oyAOdE9
 F4B12HaYpi6m88oLHflpJ+MocyMsyuhdoLw9CP8kme6SpYtaqz14aLat8
 G1itGq6+DzM0KevPyQJ9NLiVqrB9uqwCQ+oU54BNEC9ZMuIga3EN3ChC9
 8CeqsGA9Ox6qsUe3fBl+ZGskdgkV20IEWsr8LhI6kMl2nkDfIsES7kZ9A
 6WJ1W0CeftbNsP1r0LwGSaMxfIYW71r86wXfzyvjRkSLJo5gGKYw9zvHM g==;
X-CSE-ConnectionGUID: N5OALEC+SF24Wi08UvZG0w==
X-CSE-MsgGUID: VDOCd1jVSxyn3NIDn9LlDQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="57711480"
X-IronPort-AV: E=Sophos;i="6.15,215,1739865600"; d="scan'208";a="57711480"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 00:28:38 -0700
X-CSE-ConnectionGUID: OslgaKJzSgaYBazGMXPejw==
X-CSE-MsgGUID: dfoVfKtARfSdbFaWD38+0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,215,1739865600"; d="scan'208";a="135421307"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 00:28:39 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 16 Apr 2025 00:28:37 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 16 Apr 2025 00:28:37 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 16 Apr 2025 00:28:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WQE4yOXvR0l8+pC63MVXeiOdhI1n1XvwP4EnwMQEAQV8ZAmC3C1Sqdz5YsYCfE2vAfFOLEydEmxAQ81cZcqW0e6A6yoqP/nVbmPYm6PX5kUMJYujx5pZFUAJmrQfGU2KOwfv9zoZKsVHe5zBNRA1SQeVyIghwrgQWYaeAcr53X3f+G7M4DQRqxGXLdTSQ5ONBo/Tt2Br+eL8S1OtnUSc2x80ptv7rSsijYC12TzFmmXvyDlcbIRF6lyqn6mqLoXmrzlyhyfVSEhjEMZG0xstfkD9W3ry0q+xoK4MoK/7EL/FS9UCRvSgSlj4X6uo73WeU/PNrjorZS3UX6pU+EtPpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nFvWXPitwe9mD6YJO95lZ5GZoaXMGFt8wuP0Zfw/ui4=;
 b=wWgqHG9NIYc9i5yEqqwDAqwczSFso3b4YxOp4G2cpPJ63jgFVCt80EqP6PrJXZZltmkkbHbhsO3qGZxf/4VAa/mi+iKOPsa2waFVeeAmLFbWWbyCmDFql5ID00Rmf2Dw1ZUtCc8Qywt/ENIi2hKmV3vnkCchl+vrpF25Q1tW+68ywvvmfUvYV0ci+y8Fec3NOW+QeWakwrzDvKXLafplzTPulzsZmY0sg6RWuU+/LowhlKTij/NMRSwDXIyev1BNYblvS3uDVuJ2VSnvw0HTUDzA01x3b4zs92QA52YYMJR9Wv4Mbb1kTUWFKgSjlk8pLHDUgmof5GHpW91ZAtpGGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9)
 by PH8PR11MB8013.namprd11.prod.outlook.com (2603:10b6:510:239::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.34; Wed, 16 Apr
 2025 07:28:01 +0000
Received: from BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372]) by BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372%5]) with mapi id 15.20.8632.025; Wed, 16 Apr 2025
 07:28:01 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Shankar, 
 Uma" <uma.shankar@intel.com>
Subject: RE: [PATCH 04/11] drm/i915/dsb: Implement intel_dsb_gosub()
Thread-Topic: [PATCH 04/11] drm/i915/dsb: Implement intel_dsb_gosub()
Thread-Index: AQHbqHedbRKfUGRekECzO/8UJvQ09bOl7XTg
Date: Wed, 16 Apr 2025 07:28:01 +0000
Message-ID: <BL1PR11MB5979EB5E371958B1C34A9F74F9BD2@BL1PR11MB5979.namprd11.prod.outlook.com>
References: <20250408110022.1907802-1-chaitanya.kumar.borah@intel.com>
 <20250408110022.1907802-5-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20250408110022.1907802-5-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5979:EE_|PH8PR11MB8013:EE_
x-ms-office365-filtering-correlation-id: 7f031faf-4af0-4e49-1f85-08dd7cb83830
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?amowSU5PTFdhVjVKbXBoZHRoWDBYR0htRnNrQTNNMmtYWnFaeG4vOFdHdnNv?=
 =?utf-8?B?TFpuTW85U3pGTmpHVloweTdSVTZlN01sRWRyS2dUazVoanZEQllJTHpHaE1U?=
 =?utf-8?B?cXA2emk1RkY0RlJCQk1VL2F4dHVoVHNjeVY1Ylg4Q05jQnRTY2xFaHRYdWtR?=
 =?utf-8?B?THJlNFFRbEc0c21kQ2lCaEliZVVheU5PbVVLbkR3YzgxL2RrTUlLSHoyQUll?=
 =?utf-8?B?VDEvWjRidWsvcElpK1M2R2lLZkRmUHVFMEhCZUxMTVZaMW95aEtPWkg1RXhi?=
 =?utf-8?B?THprWmorMFd0WnJRekRWRmozVlBveTBqbjNNdGpZcVBMTklpeGRCSzFBYkVq?=
 =?utf-8?B?VGxrNE5rWDlvOUJqL2JMbmxMcjc0T0xpTml2Yjc5OFQzTHZqSkZiNVVydmkv?=
 =?utf-8?B?YzJYREJZRzNVMFB6V2VFZ1NSRW82TmhKVTVoYWRmeGxrallDTDk1VndBUkxP?=
 =?utf-8?B?eTFkTEwwdjYxaVlyZjZLR2cyZVJNZjg0QjNpYXFEY3dTUm4rWHNPNE0weVEx?=
 =?utf-8?B?dVA3eE9pck1scnVvbFlobnhVQlJ0QitOUU9hSXJ3WW1lT0w5RzczdG56dGgz?=
 =?utf-8?B?dkgxYnJDbHpsSXdFSndWZm9weEg1cjc5QmxLeVFoeHN3WFQ3WHpIaStlWUtO?=
 =?utf-8?B?enZWYVFSOXNuaG9uR3VTYm1pTVM4TGlsUmNaQ2YvMVdwUkVlVUpsaUc2WkYr?=
 =?utf-8?B?Ry9KZC9HcFFQazA3QTdraWpmNDZHMUlkbDVsS1dJVXN6WXMza3Y4YTBOZDRT?=
 =?utf-8?B?RGFiNmU1dGZiaUZyd0hCRFNqVVRnNlNkbGxkbExTRzd5Q0orOTY0aGthQWsz?=
 =?utf-8?B?dVpkb1E1WElZTGJJV0NEajFYcnA1WlhXUmkzbWVUR1ViRDlDdDBnY0NTQXVG?=
 =?utf-8?B?VnZvZXh1SEhSSjZ1b00xa1JpRDBjNUsvSTVUNjNtVUhYN1JKZk9JSEZvQ29V?=
 =?utf-8?B?MndNUFZvTGkxTUJLTVNuZisyWjE2SWVLeVZVcThjNm95TDJ1eVlqdjBkckdy?=
 =?utf-8?B?VjNvbDZ6YllMdkRUdnYydStHVmNXd3EyaGx3WmdVWWZJb0VFUHBYNEJxblFo?=
 =?utf-8?B?R1V0VGFpUkg0bmRQTVNsc0sxNWNzdEZLaWZUaWVNOGw5NzNlM3c5L0FlQ1NS?=
 =?utf-8?B?MitZWkJWTGtXRmNtUFRQZUY1cTVpa3VmTmRRckgzSkw0WHlXVjVWdWc2amtv?=
 =?utf-8?B?V1ExMnZqUUVWQUd3RkVPOWg2bFF5NkM4am40U0hZazRsbCs4MlhqcDVRTWpm?=
 =?utf-8?B?TXJhSmR0UEpFb1BPSU5FVzZ1ZWFrSmRNL2o2Q3Zxc2xtUDlwL0xiQ2lhTFhs?=
 =?utf-8?B?c1g4QllnY3hGMjc3WG9tNEVmUkZDaW1tZ2Erc1FYNlU1Ym8zYU9nWm5lS01E?=
 =?utf-8?B?OW4vUzI3OXQ1RHNENmVVeVdCM05pREZpK0RIVzdJa3BmamxPZUJwK2ZRblNV?=
 =?utf-8?B?Z3NLWG9lZFRsd0QxQWpqdVJ1UktkOVVPb25HOGVqQzMvQlMwTjRrdzlueHQ5?=
 =?utf-8?B?bnFSU1NObVBnRW9NNXJxa2JmaitVSU45SWtvWVJvSmhKSDBsZHZ4TCtHVXBK?=
 =?utf-8?B?YnpnQ3Jyc3ZuWUFZUUwwemxYU2xUaERuMzFTZUx4VU9VZ05UakpxTllsM1V0?=
 =?utf-8?B?eEdVZk1wRGlCTVlUdWc4NmJ0c2NHUC84YlRwR3RhYmU0b3FBZmJzYXlGYnIz?=
 =?utf-8?B?ZGUxemdXaTdHK3VxTHhNc29QVjdNTXIyQTExQy9wZllYd3BZL0dhOHJhcXVm?=
 =?utf-8?B?UEEzNlN2d1NvVzdibkhVZlZOOVBLcTZtb3dacUhmVE1hbStRZ3JzMUwrYUxY?=
 =?utf-8?B?M0RUaXVkQU8vTXIzTTdObVRHeEk1RW55YXRycncwbkNKVENlMkt0WmlabUda?=
 =?utf-8?B?eHd1VnBYTkMvdTBCc2hFNVFNMDNEMndPQk1UZWZReVVnTUE0U0pQcVl3bEVQ?=
 =?utf-8?B?T0dXN1lzMWpmbVpiTVI1d1NpK3FHdDBnOEd6WWFNQUtyb2xmdm43VTk3eFdE?=
 =?utf-8?Q?POZNTIhEHUWjWSJ1FN7H3V5FTLmbfo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5979.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?amxRakg1bW9ZMzhNSXJjMFdid1BsVG1vRUpXWWVtZU8zVUtVeDZVOVJHK3JP?=
 =?utf-8?B?UUpYQjd4aTE0K1hydjRJTjRqVkplRjJiS3ByOG80SGhld1A1NmlpZHRlenV6?=
 =?utf-8?B?dFBkbzNsQm1HVjZyOStVM0hpWS93QVNBWjFndUZjYnJtS3VqRlVZUVNKRE1w?=
 =?utf-8?B?M090S3hpdzBFWnpPMk1NbVd4Q1FiTVg5NU51a3VTTWxldjlqUFlPblkyY0pK?=
 =?utf-8?B?UGpPU2hpZWZxY2F0UGF3b1kzcUJQWmZnTVNJQmwrQnY5MERzV1JyeCs2cmhO?=
 =?utf-8?B?MHpNOGZKZzNjZ0FVOVZLR2p3Y3BOYStvK29TZVFmZlJCUnkzM3BycjlIeG4y?=
 =?utf-8?B?UGE4c1hGb3dUUXk5bCtvUEFraG9FdENqQ2FQa0FGOUg5VTlsWXhTUVRMVGla?=
 =?utf-8?B?T1RpUTdhRnZRYVBwQzJWdkxvOVFCekxIQjJNb1lHWXZSaDFJZ2t1dzFwSThM?=
 =?utf-8?B?RVJHOGNzaFBCQ1FtdFV6Mjc4QUV3Y2ZPMXVJWDZldHlHRVBkYTE4V01VV0JL?=
 =?utf-8?B?WklSMlJRanZUbEN0RlFxK2FyVDRBeU4rSC9MazgrdGh4MCtlQ0tSNnpiYnVo?=
 =?utf-8?B?Q1NEV0VNYkNOcjFFanpYdUVhNkV1VHViemhXMFV5RGdvYlVUbUJjajc5RmZG?=
 =?utf-8?B?aGM3ZUN5OVZYNXR2SHk2eDNZZE00QmpGbjVJUUFaUW9UbHB2am9LQk1qdU94?=
 =?utf-8?B?UGlxbys1Z1hFNWtQd0hia2NiUlF5YUpvV3RndzFkd3dKWS8raktVZUxOU0d1?=
 =?utf-8?B?bzMrK0Fhb1Q1RjllYXEyM24zSEw5d0paT09XM0JhNXZqNVFpUkdBdXJBNDg5?=
 =?utf-8?B?ZVRVdHh6RE1kT3FLMHFuVWVjeHZDaER6T1ZZM3N1cU54SEgva1pDRmFWcUFN?=
 =?utf-8?B?anpWMmVYU3BJRHY4QWVnTTdVcVYxWnh0VlZRNHdJdGl6RGhnYWc3L3RqcEo3?=
 =?utf-8?B?REVSRnlFYk9EWVorNHdCd3VtYVdvZWhoU2QwWEM1VzRQRjNLa2lycEtNd0FN?=
 =?utf-8?B?d3p0eExzcnZoWkJxZEhDMFRud1NOK2pJQ1c2enVMRmlsSWhOK1kva2ZjbjFy?=
 =?utf-8?B?aUJnOVp0alZmdW1nQ2lnNWczTVROMmllNFpmNUM1ei9ZZGRuUDlDdmtzc1hU?=
 =?utf-8?B?WVVFU2NRQUdhekl0UStvN0FNSGZXOVFLZFJJTDZVY0Fxc0cvUHYyV0dOMVVC?=
 =?utf-8?B?Z3JPTzUvc2tCNlVEYVFlT1NkUTNjQVduNWFyN2lrMUF1L09mR2tlUGt5RzJ5?=
 =?utf-8?B?QUllVjExTUFvc3QwMW1MaFp0TGV0ZEhHTjVZU3pOeEJ3eER2cGdZN29XQzRy?=
 =?utf-8?B?VWtMY0ZjTWM3MEJEQUErVGthblhxc2RCNlovN0o4dEVNYzBQd1drTmJEdzE2?=
 =?utf-8?B?R2cwSi8xM01WRHV0em1uMjJZdlVnbFBMUmJxMGRIN3IyeExiZUNXSjBManla?=
 =?utf-8?B?MWFMWWUvSmdpcFlDVUVKQ1pBZkVjUkhsekgxV1ZMdXZDL2IyL2srU2VJMk5o?=
 =?utf-8?B?YlVpSlFBUlRTeGFQdVhYYjgwSE9UWXMvVDJlYlhZQUJhT2xQS1pGb0U1aUZs?=
 =?utf-8?B?b2QvUkRFVUpsRzR4NHV5T1VRb2h5d1dxdGxydTkyRUxEbTZJaHJ2N2RVQWVz?=
 =?utf-8?B?ZUl3U09QekJ3dkpkeFRPYlQ5Vkdjdk45L3NGdUpEeDRKYzhIVENjdHJVSEgx?=
 =?utf-8?B?TEkyVXlDYllwR09KV2pJUFZZSTdMRzRMQm9mZmJTS3EyZU55VGZSNktGUi91?=
 =?utf-8?B?STJNdW8rYmloano0bSt6UEQvVDlXdFBBdnU5M1FKODBCZXpjNVd6SzViM0Ru?=
 =?utf-8?B?d0JsQkVDWE9ZejZVZkE3Y3htNTR0cXI3Vkp6UTA5ODk3OHhVa1FMYWhKeUs1?=
 =?utf-8?B?SjU1UDkzRC95ZjNGaWFqLzlBVG5TREpzZ1BsUUtJTTZjYzM4bHpob2VDclh3?=
 =?utf-8?B?R3VkS1FsQWxwa00rb1VnYVk0Y3hvb3hHMEpNUVY0Q2RybDd5QVN0TzQzQjY1?=
 =?utf-8?B?azJNQTVtdEJpSkhjN2dSRWx0QjNvRjdrWHFRNDc2WmR5VFVpbW90QUorME9L?=
 =?utf-8?B?VC9jc29kcEk5Vy9hWXBHWlNBRGZROEU1OXNaa1EveVk1T0twTDlYK2xFMW1l?=
 =?utf-8?Q?xhZyIm9RHx+WpDneHUO5cXzT7?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5979.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f031faf-4af0-4e49-1f85-08dd7cb83830
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Apr 2025 07:28:01.4869 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hWD/6Ux9T3e9rt0sYSb/JZHoE1Mn4XqfsUmvb5vXlqrjKCwKQfnb+Pp+Xp3CqHDVDPHDzqWPz7TgMKBIxGFIAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8013
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
YSBLdW1hciA8Y2hhaXRhbnlhLmt1bWFyLmJvcmFoQGludGVsLmNvbT4NCj4gU2VudDogVHVlc2Rh
eSwgQXByaWwgOCwgMjAyNSA0OjMwIFBNDQo+IFRvOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3Rv
cC5vcmc7IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tOyBTaGFua2FyLCBVbWEgPHVtYS5zaGFua2FyQGludGVsLmNvbT47
DQo+IEJvcmFoLCBDaGFpdGFueWEgS3VtYXIgPGNoYWl0YW55YS5rdW1hci5ib3JhaEBpbnRlbC5j
b20+OyBNYW5uYSwNCj4gQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQo+IFN1Ympl
Y3Q6IFtQQVRDSCAwNC8xMV0gZHJtL2k5MTUvZHNiOiBJbXBsZW1lbnQgaW50ZWxfZHNiX2dvc3Vi
KCkNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+DQo+IA0KPiBBZGQgc3VwcG9ydCBmb3IgdGhlIG5ldyBHT1NVQiBEU0IgaW5zdHJ1Y3Rp
b24gKGF2YWlsYWJsZSBvbiBwdGwrKSwgd2hpY2gNCj4gaW5zdHJ1Y3RzIHRoZSBEU0IgdG8ganVt
cCB0byBhIGRpZmZlcmVudCBidWZmZXIsIGV4ZWN1dGllIHRoZSBjb21tYW5kcyB0aGVyZSwNCj4g
YW5kIHRoZW4gcmV0dXJuIGV4ZWN1dGlvbiB0byB0aGUgbmV4dCBpbnN0cnVjdGlvbiBpbiB0aGUg
b3JpZ2luYWwgYnVmZmVyLg0KPiANCj4gVGhlcmUgYXJlIGEgZmV3IGFsaWdubWVudCByZWxhdGVk
IHdvcmthcm91bmRzIHRoYXQgbmVlZCB0byBiZSBkZWFsdCB3aXRoDQo+IHdoZW4gZW1pdHRpbmcg
R09TVUIgaW5zdHJ1Y3Rpb24uDQo+IA0KPiB2MjogUmlnaHQgc2hpZnQgaGVhZCBhbmQgdGFpbCBw
b2ludGVyIHBhc3NlZCB0byBnb3N1YiBjb21tYW5kIChjaGFpdGFueWEpDQo+IA0KPiBTaWduZWQt
b2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMgfCA1MiAr
KysrKysrKysrKysrKysrKysrKysrKysNCj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kc2IuaCB8ICAyICsNCj4gIDIgZmlsZXMgY2hhbmdlZCwgNTQgaW5zZXJ0aW9ucygrKQ0K
PiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNi
LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+IGluZGV4
IDBkZTE1ZTNhOWE1Ni4uMmNkYTZmYzc4NTdiIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gQEAgLTkzLDYgKzkzLDkgQEAgc3RydWN0IGludGVsX2Rz
YiB7DQo+ICAvKiBzZWUgRFNCX1JFR19WQUxVRV9NQVNLICovDQo+ICAjZGVmaW5lIERTQl9PUENP
REVfUE9MTAkJCTB4QQ0KPiAgLyogc2VlIERTQl9SRUdfVkFMVUVfTUFTSyAqLw0KPiArI2RlZmlu
ZSBEU0JfT1BDT0RFX0dPU1VCCQkweEMgLyogcHRsKyAqLw0KPiArI2RlZmluZSAgIERTQl9HT1NV
Ql9IRUFEX1NISUZUCQkyNg0KPiArI2RlZmluZSAgIERTQl9HT1NVQl9UQUlMX1NISUZUCQkwDQo+
IA0KPiAgc3RhdGljIGJvb2wgcHJlX2NvbW1pdF9pc192cnJfYWN0aXZlKHN0cnVjdCBpbnRlbF9h
dG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCQkJCSAgICAgc3RydWN0IGludGVsX2NydGMgKmNydGMp
DQo+IEBAIC01MzMsNiArNTM2LDU1IEBAIHN0YXRpYyB2b2lkIGludGVsX2RzYl9hbGlnbl90YWls
KHN0cnVjdCBpbnRlbF9kc2INCj4gKmRzYikNCj4gIAlkc2ItPmZyZWVfcG9zID0gYWxpZ25lZF90
YWlsIC8gNDsNCj4gIH0NCj4gDQo+ICtzdGF0aWMgdm9pZCBpbnRlbF9kc2JfZ29zdWJfYWxpZ24o
c3RydWN0IGludGVsX2RzYiAqZHNiKSB7DQo+ICsJdTMyIGFsaWduZWRfdGFpbCwgdGFpbDsNCj4g
Kw0KPiArCWludGVsX2RzYl9pbnNfYWxpZ24oZHNiKTsNCj4gKw0KPiArCXRhaWwgPSBkc2ItPmZy
ZWVfcG9zICogNDsNCj4gKwlhbGlnbmVkX3RhaWwgPSBBTElHTih0YWlsLCBDQUNIRUxJTkVfQllU
RVMpOw0KPiArDQo+ICsJLyoNCj4gKwkgKiAiVGhlIEdPU1VCIGluc3RydWN0aW9uIGNhbm5vdCBi
ZSBwbGFjZWQgaW4NCj4gKwkgKiAgY2FjaGVsaW5lIFFXIHNsb3QgNiBvciA3IChudW1iZXJlZCAw
LTcpIg0KPiArCSAqLw0KPiArCWlmIChhbGlnbmVkX3RhaWwgLSB0YWlsIDw9IDIgKiA4KQ0KPiAr
CQlpbnRlbF9kc2JfYnVmZmVyX21lbXNldCgmZHNiLT5kc2JfYnVmLCBkc2ItPmZyZWVfcG9zLCAw
LA0KPiArCQkJCQlhbGlnbmVkX3RhaWwgLSB0YWlsKTsNCj4gKw0KPiArCWRzYi0+ZnJlZV9wb3Mg
PSBhbGlnbmVkX3RhaWwgLyA0Ow0KPiArfQ0KPiArDQo+ICt2b2lkIGludGVsX2RzYl9nb3N1Yihz
dHJ1Y3QgaW50ZWxfZHNiICpkc2IsDQo+ICsJCSAgICAgc3RydWN0IGludGVsX2RzYiAqc3ViX2Rz
YikNCj4gK3sNCj4gKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IGRzYi0+Y3J0YzsNCj4gKwlz
dHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoY3J0Yy0+YmFz
ZS5kZXYpOw0KPiArCXU2NCBoZWFkX3RhaWw7DQo+ICsNCj4gKwlpZiAoZHJtX1dBUk5fT04oZGlz
cGxheS0+ZHJtLCBkc2ItPmlkICE9IHN1Yl9kc2ItPmlkKSkNCj4gKwkJcmV0dXJuOw0KPiArDQo+
ICsJaWYgKCFhc3NlcnRfZHNiX3RhaWxfaXNfYWxpZ25lZChzdWJfZHNiKSkNCj4gKwkJcmV0dXJu
Ow0KPiArDQo+ICsJaW50ZWxfZHNiX2dvc3ViX2FsaWduKGRzYik7DQo+ICsNCj4gKwloZWFkX3Rh
aWwgPSAoKHU2NCkoaW50ZWxfZHNiX2hlYWQoc3ViX2RzYikgPj4gNikgPDwNCj4gRFNCX0dPU1VC
X0hFQURfU0hJRlQpIHwNCj4gKwkJKCh1NjQpKGludGVsX2RzYl90YWlsKHN1Yl9kc2IpID4+IDYp
IDw8DQo+IERTQl9HT1NVQl9UQUlMX1NISUZUKTsNCg0KQmV0dGVyIHRvIGFkZCBhIGNvZGUgY29t
bWVudCBleHBsYWluaW5nIHdoeSByaWdodCBzaGlmdCBuZWVkZWQgYnkgNi4NCkluc3RlYWQgb2Yg
ZGlyZWN0bHkgdXNpbmcgYSBtYWdpYyBudW1iZXIgaW4gdGhlIGNvZGUgYSBtYWNybyBjYW4gYmUg
YWRkZWQgbGlrZSBiZWxvdywNCkNPTlZFUlRfR09TVUJfQUREUih4KQkoeCA+PiA2KQ0KDQpSZWdh
cmRzLA0KQW5pbWVzaCANCj4gKw0KPiArCWludGVsX2RzYl9lbWl0KGRzYiwgbG93ZXJfMzJfYml0
cyhoZWFkX3RhaWwpLA0KPiArCQkgICAgICAgKERTQl9PUENPREVfR09TVUIgPDwgRFNCX09QQ09E
RV9TSElGVCkgfA0KPiArCQkgICAgICAgdXBwZXJfMzJfYml0cyhoZWFkX3RhaWwpKTsNCj4gKw0K
PiArCS8qDQo+ICsJICogIk5PVEU6IHRoZSBpbnN0cnVjdGlvbnMgd2l0aGluIHRoZSBjYWNoZWxp
bmUNCj4gKwkgKiAgRk9MTE9XSU5HIHRoZSBHT1NVQiBpbnN0cnVjdGlvbiBtdXN0IGJlIE5PUHMu
Ig0KPiArCSAqLw0KPiArCWludGVsX2RzYl9hbGlnbl90YWlsKGRzYik7DQo+ICt9DQo+ICsNCj4g
IHZvaWQgaW50ZWxfZHNiX2ZpbmlzaChzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpICB7DQo+ICAJc3Ry
dWN0IGludGVsX2NydGMgKmNydGMgPSBkc2ItPmNydGM7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kc2IuaA0KPiBpbmRleCBlODQzYzUyYmY5N2MuLjhiMmNmMGE3Yjdl
NiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2Iu
aA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oDQo+IEBA
IC01Nyw2ICs1Nyw4IEBAIHZvaWQgaW50ZWxfZHNiX3ZibGFua19ldmFkZShzdHJ1Y3QgaW50ZWxf
YXRvbWljX3N0YXRlDQo+ICpzdGF0ZSwgIHZvaWQgaW50ZWxfZHNiX3BvbGwoc3RydWN0IGludGVs
X2RzYiAqZHNiLA0KPiAgCQkgICAgaTkxNV9yZWdfdCByZWcsIHUzMiBtYXNrLCB1MzIgdmFsLA0K
PiAgCQkgICAgaW50IHdhaXRfdXMsIGludCBjb3VudCk7DQo+ICt2b2lkIGludGVsX2RzYl9nb3N1
YihzdHJ1Y3QgaW50ZWxfZHNiICpkc2IsDQo+ICsJCSAgICAgc3RydWN0IGludGVsX2RzYiAqc3Vi
X2RzYik7DQo+ICB2b2lkIGludGVsX2RzYl9jaGFpbihzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRl
ICpzdGF0ZSwNCj4gIAkJICAgICBzdHJ1Y3QgaW50ZWxfZHNiICpkc2IsDQo+ICAJCSAgICAgc3Ry
dWN0IGludGVsX2RzYiAqY2hhaW5lZF9kc2IsDQo+IC0tDQo+IDIuMjUuMQ0KDQo=
