Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10421C04BCC
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 09:33:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 652B210E9F4;
	Fri, 24 Oct 2025 07:33:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jOwfW9a/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 671DC10E9F0;
 Fri, 24 Oct 2025 07:33:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761291221; x=1792827221;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DsGLZzYKiBGZ47f7EaSoijwNZiJ7ouED34xi3Bhipf8=;
 b=jOwfW9a/HNqFjG+gDHexLlDbPCN7nNH2FfeRYr9fxDOle2XwtN3fpHyo
 XlOp17xgl3F4t/9O+ZAlIDerLzKPEgrKPyGDeK2nmggNq2D23HJaP+q++
 /rRgzcysrfjatY5psD/Zdl6mblkL6+vgluPrj0kWWdCyEh3fWrnsQdENL
 8A6BuI8nNPtE9d9sXJj4BhZ0/FlRHD5bz/xThL0KhbfeAw/nLrJLQ0EJ4
 3dSIpAR3Cf3tw+ZrJOKOY+Uu+e51pq3idywIZ65XCVvsnF+x28uVj3Wb6
 sphTSdzC3YqDA7hk7/ZgOjsrwX2/L7qDAET+86BLZF3eSsCkYviEZTHTY w==;
X-CSE-ConnectionGUID: SawaZWndQvSPBglaxuuSXg==
X-CSE-MsgGUID: G5lhr15gQmyf+PV9dKmdKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="74590063"
X-IronPort-AV: E=Sophos;i="6.19,251,1754982000"; d="scan'208";a="74590063"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 00:33:40 -0700
X-CSE-ConnectionGUID: 7zXcZ8gHSKWwg+nd8cysnA==
X-CSE-MsgGUID: ij5O2W4AR8mu8yXmYwlRbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,251,1754982000"; d="scan'208";a="188755128"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 00:33:39 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 00:33:38 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 24 Oct 2025 00:33:38 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.58) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 00:33:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=C6aeSj1WXsMQUttLqZryhty8CuO7R0r+//Ror1lIX7D35zOtKHkQ8sMcx/CdKjMaAxQCnJamFkEW0r+fY2EE0HGnXJTCAOYYSfuX6FNWQQqoz9TjJYHZrsKRn5ao328Eyi/JXP5LXp7QCoJBlq0HjP6+8+iuYwJL0KIZIpppfXTPPEv4u4ieG2EdnGXAGrLGmXOWivxgHqfNM/DOy5deEWDuD3S+WF6zh96ZBtLXRGMBmjrsST+by/itOVYVTM/XCLlxcbvA/gvLDOP+6xaClTMKOLch9IfluH+33FIF1Sn5rvfYnfwkUf8Gr1uw5M138JlGAj8rCQ3gq9DS92BfuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Gg6xh1MvNNipbOAlEdcykhVpHYVJjW/i/61FptyXO7c=;
 b=FEQRQUcX144oDOHiEndMCFZkxvidEi2VpLXOqVaCca2JyfmVLQ8yZ4FNoJFG7X4TvzTRMpfYmNBQG+ibvqp3uzw2oHcojk63lu3c4jI/V6mfdbo1v3BQCPm9X1EMbVKM+eQDB4hK+z1bVApmrzMCYuHPq5U8iOXxXBxc3W6lOygDX+5T2D7feqeCvMeXLxVumWtscP5s1V9U5m7G5chnS7xt+Fa+KmFrr40zVolX6S6smYZKeC/8mVTrerY6iUJ9OaKpcP2q0dh8WSaeWrtoaAutFHcULRUamC9M+YYodaHrefb+ZbFN/hGdrU9jh65I+UIWn7gNnHan2AFL38puZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by CY8PR11MB7243.namprd11.prod.outlook.com (2603:10b6:930:96::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Fri, 24 Oct
 2025 07:33:35 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%6]) with mapi id 15.20.9253.011; Fri, 24 Oct 2025
 07:33:35 +0000
Message-ID: <3d614f91-201e-4022-883c-5d9d9ba58da2@intel.com>
Date: Fri, 24 Oct 2025 13:03:29 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 24/25] drm/i915/ltphy: Modify the step that need to by
 skipped
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>,
 <gustavo.sousa@intel.com>, <lucas.demarchi@intel.com>
References: <20251015040817.3431297-1-suraj.kandpal@intel.com>
 <20251015040817.3431297-25-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <20251015040817.3431297-25-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0093.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d4::19) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|CY8PR11MB7243:EE_
X-MS-Office365-Filtering-Correlation-Id: 497fd449-7070-4a9d-2ca4-08de12cfa412
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eVRjaXUzMWRkVFVOY3ROdDQ4dVZJN09vWkFvalByLzlYZ3pqUCt3M2F6VU5K?=
 =?utf-8?B?bUw2dFRQcXl1dzRuTEpqbFZXY0w4ZklXcDAvT3FHdmZiYW90SDVwd2NuOW1V?=
 =?utf-8?B?WlV4RE15bVIzOGFUdHU5RW45RUJrVjlFWURucEFRMzVBTWN0QmlSVXlnNXRJ?=
 =?utf-8?B?aDNNeXcwb1pQYnBhSk5XRWJGeWIzTXBYRHpLZDFrRlN2eUJObzI2amZwUzJa?=
 =?utf-8?B?ZUsrUU16M3JuY3gxeHdsUG5sdWY2VnlKb3VRNFBWWTB6S3JvUGtzTlNaZ1Ju?=
 =?utf-8?B?L1QvaC9yK0NjNVZnY1ZTSXhzZ3FhSENSR1ovYWVjNzlRZFpJZXJ6YnVlZWdu?=
 =?utf-8?B?cXczRTJYMEMxbXNNRnlkdEI4Vk54MmNOQ2hEOWFhaUFaV2dKS1JrR2lDYkIr?=
 =?utf-8?B?dng3ZUhiczhNRFAxUng3MllGMkthRFB5a2RzQVBzMXovWE5mNzAreTJVWXBm?=
 =?utf-8?B?VWp5WE1MNUtoelRoNWFPQnhkc3JtYVQ0YU9kVkxtNm5VeXBrc3hlTXZURDcw?=
 =?utf-8?B?d0hRNXRoektjS3VLMEVqYWVjVnJrdlA0UHdZR3c1a3BDQ2cva0NXdWxzQlQx?=
 =?utf-8?B?UFFKZnprWDAxcHptTjJjUDhEMHBncFY0d0FDU1VCMVB5aVhTbXc4MHJNS0tq?=
 =?utf-8?B?c3N4bEtZQytqQ3VpVkJYK1FJWVZxTm15T3BJYld6ZjFmb1lFZGh0YVJTbFVo?=
 =?utf-8?B?RjhCNTZUemMzZTc3YzBGZXZQaWdrN1dacGgxTG5rNFVBQ1hoZ2RnWGtyQjZm?=
 =?utf-8?B?eFZucWs3M1dqMzZpbmdJbE9GTHVSdmh3TUlHdmZlUGlQNWcvZkx4RTJZdlZC?=
 =?utf-8?B?RDUwWTVLRVFSSGJNbDZRYVpsSG5vK1I0Wk1GYVg5aXgwbStxa0hadWRTVElM?=
 =?utf-8?B?RUY4U2FGU3QvT1ptc2FCUlFRWDlGd2xsS25BMG9PZ1JMZEV6YUxxWWl6ZlN4?=
 =?utf-8?B?VTdRbWtZMENsSnFWY1VWWEVvSW9BN1RvY0JPa3V6UEVaTkltNXI1UWdraXVo?=
 =?utf-8?B?czZDK3pCYytpRUZCT3c0RDN4M3BVVjFwMmlGZTJ4Qk43dVdjZFZ3bE1wU0ps?=
 =?utf-8?B?K0hBWCtHdEJ5em1OL3J4OG9QYXROZkRzbVZvb1h1clRKVjdsTG1UdzJhS2Nv?=
 =?utf-8?B?a0R1T3hjZkZGbDhRZWNXL0FTeEhtQ3hOb24xNHFoY05oNVU4cndsRGhXdVoz?=
 =?utf-8?B?NzdOMDBjWDQzZDI5WVdqQ2k4cEpKVy9yRjJER1RQR25aNmNzc2xVWFNiMXVS?=
 =?utf-8?B?cFlxV1RKNGhSV1BXRnRlT29HekhEWDVzcTZ6aytmNVE4cHlZZE9wNHZXM2RE?=
 =?utf-8?B?UEhkVDhHVFRZQWdLeWpiaC9mMWdXU0pOa3d2SXpwNHZ3M3lOd1g2bDArbVVj?=
 =?utf-8?B?VngrSXRWSjVYNlpXeDQwYzl0UnFjbjdPcG50SCsyYnJNN1AwMElTam5nL0JL?=
 =?utf-8?B?YnR5aUJMZUpxNURWeFhxVTUxOXU0MVd5VWZtb2U1UCs5anVtOGRlcTc4SENR?=
 =?utf-8?B?VjdpWVhxalBGbnRhdjF3UnAvd096T29pdC9YVmlpVE1QNnZmUXFyT0dnemQ2?=
 =?utf-8?B?WkNocjZZZGM4S3ltQnhPTitpQ3VjRHNJZExlSzFMRG1JVitGb1pLaXdEV3ps?=
 =?utf-8?B?QTk1V05yb2xTTEpyRkg3eXp0RFRHUjBJNCs2cExBaDdpa1VpNzdjZFB4NUhN?=
 =?utf-8?B?YjNGdVRPdWhrcEk1b0NJV1hHOGpqaDBOUy9HdTlOSFFpMU14UEh4WHZIZHB4?=
 =?utf-8?B?ai9xdVdDSnBYSXJHa3dKRE5IdkxhRzA4SXVKdklTTFZEYklrNmV6OTJvekZ5?=
 =?utf-8?B?bm14amhxTTlwQ1VjdUdNMHpxQTlZYTFPcTNtWUpMR1lVd1E0czllbXRmSUpp?=
 =?utf-8?B?S2VEV0ZaQkZxdlhSWU91aitCcFlmaDZSZEFXMkphUzNmVTMxU1VzWDl6YkZx?=
 =?utf-8?Q?fxuta0OsGZomHF0pyj+LwwvHYII/LkU1?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UWRXc0NnS3R6WXF2UGRtdmVlL3Q5Yk5OanRRMnhqZCs0aUliMVBSR253R3pZ?=
 =?utf-8?B?QmJVWXNxbUQ1U0ZHZWhpYVNsRitmR1NhelF3NmlGRnNIbWFGb3RqOVFXZTJr?=
 =?utf-8?B?RnpFYTdWaGhidXJpSjgvRGQ5WVphVElrQTNIR3MyVHNxTFp0V2huT2lybXRn?=
 =?utf-8?B?c292NG01aXBWWmJDNFEyUDQ5dy9Cc2Nuc3A4cG9Pb24xSTVqOUlyOHFLektU?=
 =?utf-8?B?WTdYSGtJWWZvMjB2QklaaldmKys5Q2NqbXdsNWVURVdNNXpQYVVSUVhiZEo0?=
 =?utf-8?B?Q0ZrQ2pva01XbytUTW1CT3N4RS8rRmdmZng3VG5kZ1JmZFpIK3RoUkJnTDhN?=
 =?utf-8?B?NEYyWGZBQ0ZLa3VvNGlmZU91bTdyZU1FYnlKLzI2MlRKZW85Q0hHU1VtYmRr?=
 =?utf-8?B?ektZMFFrOWhLdkk2aU1DUmlCb1ZRaWxHejg2d2xVaXJGYnhwT2tHWFdMdVpI?=
 =?utf-8?B?YnZBc0pkaWU5NHU3S3JEdUlrZVhmb0orcmJ6OStXaWdBdkhzWEJQdE5MdFlp?=
 =?utf-8?B?L2UrWi93ZlFOeXN5cHBibGN6YXl6MWI3Z1RxaHBNeWJmQ3NSM3lnSUszRjIr?=
 =?utf-8?B?NkVYbHZwUkZoZjZ0RE1nRGF4WDNYWHlyZ1pJbEdZYTM1a1hTTG9GRkZMZ3NN?=
 =?utf-8?B?ZWhqZUo5MG9OVS90YmJodFhzVnVFZGdYTEI5VWMrdzdQM0x6Qm4xQ1g1bFVV?=
 =?utf-8?B?aE5DdGxBeEExTXhQT2N0WGhjQUZVa1lZbzZqanBHT005UWZUbWMvZlJKRkgy?=
 =?utf-8?B?Sk5LL0tjLzdIUFh4REhBN0JBaCtiRjZ3eTR2N0pBTVBDbi9iZWRJTEhhbmdS?=
 =?utf-8?B?dFVGUHEwd3RybmlxSXBxclNEYWpacEovdjJYY3ZGODRNTHEwdm1nSUllYzFn?=
 =?utf-8?B?Q1BocHdXUUhhbUg3Z1RybUZ1WWJhenRFeVhBWmdUblZXaFVyNDhFek0vVU5i?=
 =?utf-8?B?SjBYY0F1bDRoRml2amZvMExmZjFpajdmNW1LU0JDbU84NTFGQm9OSmowRUFB?=
 =?utf-8?B?YWhRNXNUdFU3aEY3elNmcE1tYmNZQ0RiSzBVN0JIaGlRZHRxcTlIUnlEdThv?=
 =?utf-8?B?OGFDZUFhNDlIQlA5WmhpR2RRVUkycU9OR0QvQ09DelNrUGtIaTNEdTdOaWlq?=
 =?utf-8?B?U3UyY3pHdVpJYytjUENFNS9oaEJUSTRuY3NkNU5uL1YwYmVsdmUvTlZxemNH?=
 =?utf-8?B?ajRYYkd6WmdUVW9MMUtFZ3h5Zkt4MnUybFB3Y1g4WjdUdHZQQnZKa1dPRWZU?=
 =?utf-8?B?R2N0UHdiMVpKei96T1NPaG5pQ0VMSUNhR0xMSEFlb0dVbTBBOTVrSlNaS0dX?=
 =?utf-8?B?dkZHSjBwalJ0N3gyL3RmeUcydm9mTjZtVXBULzFNOXFseDd4VGVJRnFIZHEx?=
 =?utf-8?B?dmdXTWUxTlh5TEh4eS9SeXRXamVJMStSSzBUdmM3WStSVWo4bEk4VWo5amJq?=
 =?utf-8?B?UEUrODR3UDhvc0JwWXNQSzhLWW9Ra3phVG9ETDRYU3JKRXVSWTJrTmFKT2lL?=
 =?utf-8?B?aFc2VTlpKzdZTkFSOXJrZEhac0Njc3NqeEMwd2FMNzhsT25RZ21Zczg1RU1k?=
 =?utf-8?B?ekNsS1J1Q3lPcWxiOHl1c1F5YUErbThkUVFuZ1daT2Nad3JBY24wNVgxYTJq?=
 =?utf-8?B?OTJEVVVBeWdrT3huRFNWbTlXM3IrWG1lYXkwYmtNMUVhenRjQ3FZNitvOUg0?=
 =?utf-8?B?SG81cHJsNmQxQXVWWU8yTVdxb1dkdGQ1ZmxITzQyUmNmVGFwWW42RUhteEJi?=
 =?utf-8?B?NXhNMno1anI2Vm42YmdodnFPSkhVKyt0RTR5cmxJb0xQeks3TmhFRXduTU8r?=
 =?utf-8?B?R3BzekN4dU1DRmV4VnpWT2lqR1hrZGRWL2piLzdmU01WSFd0T3dKSEREbEJo?=
 =?utf-8?B?S1hQTTYwTUtSZmxDN2YvQnhnQUtiMW96MkJCYWJNeGk3MEd0Yk04c1BpN2tm?=
 =?utf-8?B?WllVMXZweHIyOHlSdHBNenAxaG1halFmak5Uc082Zk9zSlMxVWpPYWlzbnl4?=
 =?utf-8?B?YkpkcUlhYjIyMzhGM0xhcGZVb1JOMUtDQ3BlRU1sRVVtSXpiOURHMGhoM3BL?=
 =?utf-8?B?TmxzenBuSjc4M3IwS0V6VjRiQ081UXhvRG1OL3g2ck5tQW5tVzVuY29odFkz?=
 =?utf-8?B?alhIZnRkQXVzc1F6M1NxYUFLcEVrb1FneTNCQjhuV1k2YnB3ZWVZY0l6SFpN?=
 =?utf-8?B?VWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 497fd449-7070-4a9d-2ca4-08de12cfa412
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2025 07:33:35.7539 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VTizEDNh24EENi9GOs2e4G0m1cfeZ0wTP0GzyqkeYCnwgXBPxINKnwxe6RuGgVkpykTsf7LXOrK/mH+8JYFvmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7243
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


On 15-10-2025 09:38, Suraj Kandpal wrote:
> Bspec has changed the non tbt pll enable sequence now we skip
> steps 5-17 if no config change has occurred.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------

>   drivers/gpu/drm/i915/display/intel_lt_phy.c | 63 +++++++++++----------
>   1 file changed, 33 insertions(+), 30 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 72c3ba787e2a..0262c3a97020 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -1664,40 +1664,43 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
>   					 XE3PLPD_MACCLK_TURNON_LATENCY_US, 2, NULL))
>   			drm_warn(display->drm, "PHY %c PLL MacCLK Ack assertion Timeout after %dus.\n",
>   				 phy_name(phy), XE3PLPD_MACCLK_TURNON_LATENCY_US);
> +
> +		/*
> +		 * 13. Ungate the forward clock by setting
> +		 * PORT_CLOCK_CTL[Forward Clock Ungate] = 1.
> +		 */
> +		intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, port),
> +			     XELPDP_FORWARD_CLOCK_UNGATE,
> +			     XELPDP_FORWARD_CLOCK_UNGATE);
> +
> +		/* 14. SW clears PORT_BUF_CTL2 [PHY Pulse Status]. */
> +		intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port),
> +			     lane_phy_pulse_status,
> +			     lane_phy_pulse_status);
> +		/*
> +		 * 15. Clear the PHY VDR register 0xCC4[Rate Control VDR Update] over
> +		 * PHY message bus for Owned PHY Lanes.
> +		 */
> +		rate_update = intel_lt_phy_read(encoder, INTEL_LT_PHY_LANE0, LT_PHY_RATE_UPDATE);
> +		rate_update &= ~LT_PHY_RATE_CONTROL_VDR_UPDATE;
> +		intel_lt_phy_write(encoder, owned_lane_mask, LT_PHY_RATE_UPDATE,
> +				   rate_update, MB_WRITE_COMMITTED);
> +
> +		/* 16. Poll for PORT_BUF_CTL2 register PHY Pulse Status = 1 for Owned PHY Lanes. */
> +		if (intel_de_wait_custom(display, XELPDP_PORT_BUF_CTL2(display, port),
> +					 lane_phy_pulse_status, lane_phy_pulse_status,
> +					 XE3PLPD_RATE_CALIB_DONE_LATENCY_US, 2, NULL))
> +			drm_warn(display->drm, "PHY %c PLL rate not changed after %dus.\n",
> +				 phy_name(phy), XE3PLPD_RATE_CALIB_DONE_LATENCY_US);
> +
> +		/* 17. SW clears PORT_BUF_CTL2 [PHY Pulse Status]. */
> +		intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port),
> +			     lane_phy_pulse_status,
> +			     lane_phy_pulse_status);
>   	} else {
>   		intel_de_write(display, DDI_CLK_VALFREQ(encoder->port), crtc_state->port_clock);
>   	}
>   
> -	/* 13. Ungate the forward clock by setting PORT_CLOCK_CTL[Forward Clock Ungate] = 1. */
> -	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, port),
> -		     XELPDP_FORWARD_CLOCK_UNGATE,
> -		     XELPDP_FORWARD_CLOCK_UNGATE);
> -
> -	/* 14. SW clears PORT_BUF_CTL2 [PHY Pulse Status]. */
> -	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port),
> -		     lane_phy_pulse_status,
> -		     lane_phy_pulse_status);
> -	/*
> -	 * 15. Clear the PHY VDR register 0xCC4[Rate Control VDR Update] over PHY message bus for
> -	 * Owned PHY Lanes.
> -	 */
> -	rate_update = intel_lt_phy_read(encoder, INTEL_LT_PHY_LANE0, LT_PHY_RATE_UPDATE);
> -	rate_update &= ~LT_PHY_RATE_CONTROL_VDR_UPDATE;
> -	intel_lt_phy_write(encoder, owned_lane_mask, LT_PHY_RATE_UPDATE,
> -			   rate_update, MB_WRITE_COMMITTED);
> -
> -	/* 16. Poll for PORT_BUF_CTL2 register PHY Pulse Status = 1 for Owned PHY Lanes. */
> -	if (intel_de_wait_custom(display, XELPDP_PORT_BUF_CTL2(display, port),
> -				 lane_phy_pulse_status, lane_phy_pulse_status,
> -				 XE3PLPD_RATE_CALIB_DONE_LATENCY_US, 2, NULL))
> -		drm_warn(display->drm, "PHY %c PLL rate not changed after %dus.\n",
> -			 phy_name(phy), XE3PLPD_RATE_CALIB_DONE_LATENCY_US);
> -
> -	/* 17. SW clears PORT_BUF_CTL2 [PHY Pulse Status]. */
> -	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port),
> -		     lane_phy_pulse_status,
> -		     lane_phy_pulse_status);
> -
>   	/*
>   	 * 18. Follow the Display Voltage Frequency Switching - Sequence After Frequency Change.
>   	 * We handle this step in bxt_set_cdclk()
