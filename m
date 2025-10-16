Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17291BE5CD6
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 01:36:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5FB110E35B;
	Thu, 16 Oct 2025 23:36:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="azZw/c3M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83E6C10E35B
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Oct 2025 23:36:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760657797; x=1792193797;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=hXeZDEXoXy2zQZU62IUM25pYo3Qj5Edm8nb1fjL5Xuc=;
 b=azZw/c3M5lG/Vrv7V2e46XPdNI1/AfeYc7qdmeceVz5CMEVuk3gDETug
 2rWGmej0rO0Rck1Of/7SCNuo7aBocjewGnfEA6zO4YvUHisx3xr0G8V8M
 JAZDnQHOKa+8VhXh6iP5+JyKw4NfjgnbQLsqJQZ7BOntfzm2Tt0AhTUm0
 vrv1SNxufZ82+NB+X0VK8bog+Ua1VlfxFFZfeHFb8iUZ+PYNmOm4Ano6g
 cPOCv/qXAga2Qz2yqMvpWAmyJfmdjueXshhJK08cshRVK49PEivj6e7Sf
 GmJ99uNhgDhYhMk4kaR+FdHpQmh9Iq23SiaTp7PitmlY9FsdTI3Td2wNe w==;
X-CSE-ConnectionGUID: 0WisKVqgSe6CCOM5EzaOzw==
X-CSE-MsgGUID: ItwhOOWJTBWi2uMvJnyIEA==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="62766889"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="62766889"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 16:36:37 -0700
X-CSE-ConnectionGUID: eAQKw/EwTJ2c2EU/3kL28A==
X-CSE-MsgGUID: Xyi1jiE1Sbuk2UksTnDwqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="206292324"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 16:36:37 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 16:36:36 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 16 Oct 2025 16:36:36 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.33) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 16:36:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NC/QGIZL9wT0T9hRWy5JAMFF/CzaeOA6uewznf3sjUu3G3ezx+ZfbVkOYOJztsyYg10OhxlM/rQZDRpX6vaIYTIg9t4SfTG7WKBpSR442hjZZiR0MZgcxxfHtiZ67+79eCObWv7FwmloAtQIWV3zTANXh7Cb+T251yW3+S30vHinayv2BDLkv/brH6z0IlHtyoMv2UTI5f55Ol9+FkEqG3fW6t4VC6X+TIDuL70oIbgn4WMtTkG5pMci0LQphwCKC9UExY4xCCbFJwSvwQkZEWxJ6qTwai4QpJ4qLiojbx/B37j3iYFYeqtAvjl4+VRxX3TJ6uqczq9sKThQzrw7hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pflpwfkWDiwSkzVTQ73hG/SbzzwGVj/3b62YMHWiJOQ=;
 b=xANpwJcG7grxWy9++KbA/ukC0XzGOjKCOFrYs3sdXpGbeVAbD83a2RZiKJSXuaeMLmWjOXVcS30QQqfioI2AOXlCn+ZtligZzpbf09vgftqLZcF+n2JBlrwlXPgV9ieMeTe4enQ/kwiN9jB0qFBq1haPcY1KJGjrn2kHvHZS+xnLyLfSNBfKPOFH9JgMULEyNUVdcf3Y2gxq5onzt2fUyiLC0qwJ8NeUB3S6eGspyb2DzUht/2bK8YFjV/WVDRGAEC8ZPuHPUgZU0TtpYQ4pQyO4TLQxlG8+uP5MDQbEkc+nJitod6YYDR0fXieDCTCG/4hBA6lJXR0yCE8tf5xJXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB7408.namprd11.prod.outlook.com (2603:10b6:8:136::15)
 by SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.9; Thu, 16 Oct
 2025 23:36:27 +0000
Received: from DS0PR11MB7408.namprd11.prod.outlook.com
 ([fe80::6387:4b73:8906:7543]) by DS0PR11MB7408.namprd11.prod.outlook.com
 ([fe80::6387:4b73:8906:7543%7]) with mapi id 15.20.9228.009; Thu, 16 Oct 2025
 23:36:26 +0000
Date: Thu, 16 Oct 2025 16:36:23 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <andi.shyti@kernel.org>,
 <rodrigo.vivi@intel.com>, <lucas.demarchi@intel.com>
Subject: Re: [PATCH] drm/i915: Fix conversion between clock ticks and
 nanoseconds
Message-ID: <aPGBd4PvOGN+MjqR@soc-5CG1426VCC.clients.intel.com>
References: <20251016000350.1152382-2-umesh.nerlige.ramappa@intel.com>
 <87bjm6ipai.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87bjm6ipai.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: MW4PR03CA0034.namprd03.prod.outlook.com
 (2603:10b6:303:8e::9) To DS0PR11MB7408.namprd11.prod.outlook.com
 (2603:10b6:8:136::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7408:EE_|SJ1PR11MB6297:EE_
X-MS-Office365-Filtering-Correlation-Id: 44f0e9bb-c811-4c8e-2e60-08de0d0cd324
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NUMveFhyNnVIQzBpeVJ0bzQyTEk3UVJzeHZ6dVB3citFbjBGSUdmMlRZbGJT?=
 =?utf-8?B?MnY0cmg4cnVHQ0tKSFdBNnBWSThlK1dTOFA1RlJ3MUFNQUpVVUlGaUNKNUJy?=
 =?utf-8?B?R2syS3JaYXNJTDVvVVYyMVNMNktmRmw1bnM4djY3N0hwTURLbHlvSi9lYWpn?=
 =?utf-8?B?T0dkTjhoZ2NxaHlValpqOWJ4cUw0bzNDTEtHY2lLb09Md21mWHlKVmlLTUNH?=
 =?utf-8?B?aGpZSTFKdXZ3aXoyU24vUW1oWE1PZWpoSzVqaGNUUDZvdjdCSzh3K1BJeGlu?=
 =?utf-8?B?aG5JTFJwQXVqc2tqMFA4NVJsWVZwbDFkV3k3WXdERVgzYmN1RDNsdHo3dUh3?=
 =?utf-8?B?K05oRVRKNllSWUdEbTRabmVCd3BRVkFsYmxQbnNBSXllekh5Z25KUnM2RmJF?=
 =?utf-8?B?MEdLclBiNlRhZzdzaUYyMzVTczBUanE4bitoakRUenZCbW1tNU8rMWw2VU81?=
 =?utf-8?B?a1hzQm9nS3F1RXBwUUx0TWswSUhFRk1oUVJPOU53dlY5aHF4Z0JzczRnVU01?=
 =?utf-8?B?aU9rS1ozNUtNWlBGbXcrSnlKdEtiTXFaTGFWYUVvcnFwRkFGaThqQzFWMWVE?=
 =?utf-8?B?SW9PNzlTVWo1L2pUaFU1c2pjVmdSV2FzaTZ0aEJtNFl4RERMR2V0aVJQZW1F?=
 =?utf-8?B?OHMra0xtTS9yYkNEZzU5U3plbEQzRTdVNUtJOUxkMWtGS09iRUw3Njd5WGxo?=
 =?utf-8?B?emVmZTkrbEkvL21rUmpzUDR0RDBEQVlTc2tZc284bVJaQXhlVW9sQURXT1c0?=
 =?utf-8?B?WFJhU1REQnljYUZWTTYwUDQ5OVN4Z1ZsZkNqaW4zWHNkdCtIODc0TjhEcDJW?=
 =?utf-8?B?SlhYcVg0ZEtaeXFUcG43a2lHVFVLNFdJSXEwQk5SQmJzeGVCNEZodXhHclB3?=
 =?utf-8?B?UnR3aHB5RFlPODBCRDdKcjMwRUtzQW1qMndYK1NuSkVhYi9yY2RkQzZjalRI?=
 =?utf-8?B?Qm9ZNEF5RWlJQ3NXUUk3TmRtSDFaUFhxMmMreTc2VmwwMm52cDNBd2ZDOFNQ?=
 =?utf-8?B?d0U1TWpXNWlUc0xjR1dENGtrNE0zYjUvaWoxdWdlank5d0d5YnBMeHRqNExF?=
 =?utf-8?B?eUlLNE5heU93aDdycXdvTy9yZ2NIbzVQTFBpbll4YnVJU1ZLZXdacm9EQW1m?=
 =?utf-8?B?azFBMWwwaUt1RkpDaW1zSktDaUdkNlY3Ym1MTGZERFRsQ20zcVBvZkxpSVBM?=
 =?utf-8?B?VEhiRmZhSExtdUxkb0hIdk9JRW04UTI2Q21ndUtBeGUvdlY2aDFEL2IwR0hH?=
 =?utf-8?B?OG5IQlA4VUJrTUZuZlArV0JnczB0Z3p4OENWLzhoK1dEdlJ4d0JaT3pJbUhw?=
 =?utf-8?B?ZEVBdmRRWEZNYm5BQUR0NGcyenlvZEtDSFU1M01mcUZqN3hETDBGYWM5QUNU?=
 =?utf-8?B?Q1ppNkYzV1JuUzhIM1diQnNJVmlMQTN4RXdFdUNpanlRVGIrTFd5UlNYclZO?=
 =?utf-8?B?dWllN2xKNUpON01JRXR3TnhBUGtETkt4WVRWSEVXaElVR3pJcktJbmNvejF2?=
 =?utf-8?B?UzByK3Y2ZEFwUCtzWEZBakJkUE44TndqQm0xeTd0dmFGUlQxT09FaGp2MkQw?=
 =?utf-8?B?S2hqcDY0UXFTcU1tdG1lSVExQTFJMkdDakNvMW53Y24ybDFqYlllZlE3SnFE?=
 =?utf-8?B?M1RzS3ROMC8zS2hrUHNmd2ZHdXFVbUpLNFQweWFHczVuWE5TVTI3TkNQYkl2?=
 =?utf-8?B?WkMyMGl4MGNYeG5GMWxBa2gzWjFjVk9zOEFJVjBuMWxQVzF5UkRpRnUyVUdV?=
 =?utf-8?B?MVZKc2dYNVV1S2NrSitoL0xweHhFVHVzcGV4bGpKMERCalYvZjNMUG1yYmdj?=
 =?utf-8?B?d0lCMHdIcE05RVBMbnlOdXJxNXhEamg0VWQ1ajY4cEUrTkpsZWp0NDdXWWFk?=
 =?utf-8?B?Q3ltK1Y1Y1V4d2w0TUkxV2tnNUc0UEZ3anphYkRPbXJ4Q0E9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7408.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K2dVSVpreVpFbkU3T1UyQ2R6WE11Mit2SFQyTjdsRHkyek1RMjZoMmhuUFNh?=
 =?utf-8?B?OHc3VXQyQ21TSWpNNkZLTXhmVi95U3JmNGxjdTFLSVZudUJGL01zQ29IS04z?=
 =?utf-8?B?TTJycktSZHVlK1hHSyt6aFNVbTY2bDBiN0FoeG9aZUx4eXhWbUVYQ2Fram4w?=
 =?utf-8?B?T3d1TU5Ta3VGc1Nkb2d0cy9aTFJnajJPVXNqQmw3YVhzdUFuK0pHOFE3dWtG?=
 =?utf-8?B?VG9PdWVsUE41UU9XbmV6WVAzazUxc1p1dnd6S3R2NnFFZXZETjVNRkwzQ29C?=
 =?utf-8?B?YWlRYWpFUXZhaVpON1ZubVBWR0Y0WjY1L09nd21HdFNGeXBtbWtXbFkrdDZZ?=
 =?utf-8?B?Tkh4eExzNHlhSWxod1BKdjVHc0Y0UXd0RUFyOEFEWHBDVUNGTGF6eDVCeWw0?=
 =?utf-8?B?T3RlZHMzTkJJdi9mSEd2dEl1Y0lMc2ZSMmpEc2psSDZ3dEpxNVFRbGdYS0NR?=
 =?utf-8?B?UTVIUVgyeitHQW1UdC9kbTJhRGlRWDAzcWgrcDQvRGdiUkE4Q3gybTBNZEYx?=
 =?utf-8?B?T0pwOUtxTUVGK0ZnZFNCalJ3bXVRblc5Umc1bStjMXgyU3VuK2J4K1J0YlAv?=
 =?utf-8?B?Z1g5QUNPdVZLamloWGF1VTJTRWJTMjFrSFJMalp2dDExZnUzTkJKc1V4dHdj?=
 =?utf-8?B?ZlAzcm9xTUdoSk0yd0phWm1wcTF0ZHBkaVVBSlFuMVB2ZUN0YVRPK2xGSzl6?=
 =?utf-8?B?Y3pKdU91enEvcENzVE9DejY5Qy9yWVowVDcrcDJ0YVhaOEIxdHNadkVVeVBW?=
 =?utf-8?B?SkFxT2xocDRxTHNiRU1KTnliWDhUVi8ySHh2blM0RUdEdXF3Z1hFKzFrMUpw?=
 =?utf-8?B?MHRhQnNIQWNMR2VPOCtqU0toZEEwbG9hbktWeC9VYVFXazJZMGN6M0ZtcHg0?=
 =?utf-8?B?ck9IaFNhWDBocFBkZStiTzA1UkJQbkplZnFwNExoaTVGZFg5TEhINDk2WlE2?=
 =?utf-8?B?c3k2NlN6eDdGS1FPZkZUZWFvOG5wZTlsalZtSFNYdzlhUWxaVkRpNTU4eEQ4?=
 =?utf-8?B?ZzBmN3ZvMGRYSlBPY1g1bmNLM255VkQ2MHFWMnhQeWxFY1Q3T2NsZ1hSb1Jx?=
 =?utf-8?B?ejJWNUMwRzE0Smo0RXg4RGd1NTNaUjRLeVRxZ1RSd1NXNkxPWHpQSFYxT1BZ?=
 =?utf-8?B?Wm1Rang4dnB4ZStmb0VQRDgvQlliUThBSGp3a0tac2p6Z1JUQUg4SXZSRy9X?=
 =?utf-8?B?Z3ppWDJpSkVYVXA1dm5yK1ZhMjlTNzJjNW5RQWVZWkMzSENTdkp2ZHZxYUgy?=
 =?utf-8?B?aE5jZmtIalFXUk1iaDRhUGlRbnFhN1BEelVYaWJ2SndFbk1JNEIyZ0pkMER5?=
 =?utf-8?B?N0QrdU4zcytMR25rMlhsRzZqQmVIczZIaFdEbUdQWjhzQTBoNSs0Q1Z2QkJ2?=
 =?utf-8?B?VDZSelZzc1JEN0hxWjFFeE11Z0RkMzFaVDdGWFJWNVhVUDhrdWxucS9IY0lT?=
 =?utf-8?B?cFZlY0VpejhtZ2VPbmZLYVZaVVVXQWhxN09BRlh5Y0lYZnEzZ1JCVUcrTCtG?=
 =?utf-8?B?V1c2aVFWTDArTUlFNTFBZ1MvTndVYzZaWkhJSUJtaVV1ZHpneWZ3WjBpUnVR?=
 =?utf-8?B?MVN6NDIxL2lZYloyVkdMU3kvTDNaQ3N1cUZnb3dROW13YUpJMkE1K2ZISzEr?=
 =?utf-8?B?R29DYVZKYW5wOWdtcUNvdjhraUpZaXJhVzNtUGZ1NGhCK0FSekZVeFEwVjZZ?=
 =?utf-8?B?cmx4ZWFiMlcxUGZSU0h6V1c0MjBucEVZdDZnK282ckFCd2phZjhTbnhsSWhq?=
 =?utf-8?B?alJOOXlLMFBwcENhM05MdklGODRGU3JUTVRaQisyd1NPR2psRmlnK3J4VWtO?=
 =?utf-8?B?Q0RlS2ZBQ1FNT3ZMY1UxT085cHV4V3VKckVmTklwUXR5dGd1UGc2NmhmcGVR?=
 =?utf-8?B?a1pyWDZsU2hVbk1OL21vOHpwaXF1MFZGNzhJUG5vZjBpRWRRMXBVYk1OZlZZ?=
 =?utf-8?B?MVJoZWNOY1o1bndyUkZ3aWp6NWozQXZmTHdzc2hDVmFpZWpQcVBqNUJMVkZi?=
 =?utf-8?B?M0I1Nm90OVVlSXQxdGR5VDIxMFh3Rm94NjZUZGcwUUszbU16WHR1T0dUcnR4?=
 =?utf-8?B?UUtmemM5YVJVN1JTSFNZVXRBV1dnNjhSbUU0SnNtVmg4TEtwU1RPVGZ2L25i?=
 =?utf-8?B?OFZTd3ZOVWlzaktPbkpXSkJKdkNLZDdPaEhBcUFQbFdFTEU0Q3MvRHBidTlG?=
 =?utf-8?Q?9qpusdH1B95ZptfU0Yrzc18=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 44f0e9bb-c811-4c8e-2e60-08de0d0cd324
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7408.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2025 23:36:26.8433 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BeOE4VwyEI2VSgCwxrPWPe0MfrOltvHGChJIQee0QmcBRvZAaKpJBsuv6BkDxsDk3N0vsNmdakMNNsMUkaBdk9yiWZROE5jeXkkOK2+UOWE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6297
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

On Thu, Oct 16, 2025 at 01:07:17PM -0700, Dixit, Ashutosh wrote:
>On Wed, 15 Oct 2025 17:03:51 -0700, Umesh Nerlige Ramappa wrote:
>>
>> When tick values are large, the multiplication by NSEC_PER_SEC is larger
>> than 64 bits and results in bad conversions.
>>
>> The issue is seen in PMU busyness counters that look like they have
>> wrapped around due to bad conversion. i915 PMU implementation returns
>> monotonically increasing counters. If a count is lesser than previous
>> one, it will only return the larger value until the smaller value
>> catches up. The user will see this as zero delta between two
>> measurements even though the engines are busy.
>>
>> Fix it by using mul_u64_u32_div()
>
>Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>

Thanks, Pushed it.

@Lucas, @Rodrigo

fyi,

I was working on drm-intel-gt-next and did a dim ub at some point and it 
automatically switched to drm-xe-next. Instead of pushing 
drm-intel-gt-next, I accidentally pushed drm-xe-next without any 
changes. Hope that does not cause any issues.

I later pushed the right branch.

Regards,
Umesh
>
>> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14955
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> ---
>> v2:
>> - Fix divide by zero for Gen11 (Andi)
>> - Update commit message
>>
>> v3:
>> - Drop GCD and use mul_u64_u32_div() instead (Ashutosh)
>> ---
>>  drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
>> index 88b147fa5cb1..c90b35881a26 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
>> @@ -205,7 +205,7 @@ static u64 div_u64_roundup(u64 nom, u32 den)
>>
>>  u64 intel_gt_clock_interval_to_ns(const struct intel_gt *gt, u64 count)
>>  {
>> -	return div_u64_roundup(count * NSEC_PER_SEC, gt->clock_frequency);
>> +	return mul_u64_u32_div(count, NSEC_PER_SEC, gt->clock_frequency);
>>  }
>>
>>  u64 intel_gt_pm_interval_to_ns(const struct intel_gt *gt, u64 count)
>> @@ -215,7 +215,7 @@ u64 intel_gt_pm_interval_to_ns(const struct intel_gt *gt, u64 count)
>>
>>  u64 intel_gt_ns_to_clock_interval(const struct intel_gt *gt, u64 ns)
>>  {
>> -	return div_u64_roundup(gt->clock_frequency * ns, NSEC_PER_SEC);
>> +	return mul_u64_u32_div(ns, gt->clock_frequency, NSEC_PER_SEC);
>>  }
>>
>>  u64 intel_gt_ns_to_pm_interval(const struct intel_gt *gt, u64 ns)
>> --
>> 2.43.0
>>
