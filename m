Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11BF6B8657E
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 19:59:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F347910E8DE;
	Thu, 18 Sep 2025 17:59:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O+DUJec6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D5FA10E324;
 Thu, 18 Sep 2025 17:59:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758218343; x=1789754343;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RIW0LGTuM5+Ga/ZTsZjxcH4NyZGUz8JVzdj+HgfEfDA=;
 b=O+DUJec6KeKIr2X91yoMVDeOwCwYEFM982K1S10iiQ098DgXbsmyANav
 98Puw9778awxKwAHM93a3mTHtEltDwjxlQ0b1DQLLqCGDX08xfUFMKcmU
 mfaDJaNA6BAzNcm3zh4DezgwXjdRXQIFSnNHevIyJEdBrTEjkDcyjBLhm
 5LYIBfKflpOOW8I35rICQC20k+SEwWsJSQXueaMUG1jNnT/0lfOgsb9fi
 IqjRsJItfD4ejJ56vPTKh+nuQE0rgMxP1KY5OPXG1678v/qftEpuc4g4v
 ehkXK9vjkWKbfXbpQsrzQGVTk2rKM7GR6VUa0Zp1JC217Bm8vDblAIwl8 A==;
X-CSE-ConnectionGUID: 5d1fGr7nTva6drs4+JjMzg==
X-CSE-MsgGUID: cAiEE0iKQueWJ+XQQakGPQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="78162790"
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; d="scan'208";a="78162790"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 10:59:02 -0700
X-CSE-ConnectionGUID: z3+VYpdASHKCjcruisxyLg==
X-CSE-MsgGUID: ZgY62SH+SoSk3/P9+4sJLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; d="scan'208";a="180722115"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 10:59:03 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 18 Sep 2025 10:59:01 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 18 Sep 2025 10:59:01 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.8) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 18 Sep 2025 10:59:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iBs7pjg3MIISHi09sLx0ZJ7Jef3kxaXBaWpyudEKU8ganGO1nE6OmAZVExFHE66OZcWmEKbGs1g2d+j/R5KnSET44ENk85X8ROHNBlu4l56E5GmDcX9Ny+0d9BHn4+tA07tVaISB+OWFGnt+LlWK9TsnkIYSvyzSzFfXYUZDriXkdqbGqK5FmF60Bfnu2nLHqXTl0GjmKR+oYmgIRSq4G2hL/1q+jGB+2biBteYIy2x+JTOQvSA9SP32YRVmErsWoM1idhPxmUlL7dZt5qMViP99Xp+J53GQIO4dqlq+zU3OTQrbtNVjiFycIfx43bQo0JE/rqunz2TmLTWkF9dvOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vjfJR1kD0tAl6uoW3x8xxV0X/evehS5mSEaq8uDyGWE=;
 b=VsFM8TR+vYYPfwRJUlRAkHnsiyR4gKHsgNNx509utk7vpcNVD/YOjxsjhTgdjXwY4Uc3UvR7yYuySEQxftBhzVkFM5qbbKZfwmLLrPUR8RlFqqoyVLFkHeSXqdVt4c7ElWdTOVfJy0sU6SoJu9/MtiHhtBIg5IPdev11SadiX9in0aWVP33jKh3x8zfeCeglBwhl0QCu23DUevwAAJS9peogBNEEOWWgzkVkrVn3thVInLOCwMiikTKNHfcoInIqqsXIqyPOgOQ+xWcFjUYIhPo4deUoAJ6PE0o8En0KDCx0F6+kwCj2mqIqLNhhtU74bJDQs1gdzDoNWVClI9j2zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB5772.namprd11.prod.outlook.com (2603:10b6:a03:422::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.13; Thu, 18 Sep
 2025 17:58:53 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.9115.020; Thu, 18 Sep 2025
 17:58:53 +0000
Message-ID: <753d2e9d-a94e-4e5c-a5f1-8a7a5a899134@intel.com>
Date: Thu, 18 Sep 2025 23:28:46 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] drm/i915/vrr: Move the TGL SCL manging of
 vmin/vmax/flipline deeper
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250917203446.14374-1-ville.syrjala@linux.intel.com>
 <20250917203446.14374-6-ville.syrjala@linux.intel.com>
 <79e9f1d5-0e23-4f2a-8961-925e1adc2788@intel.com> <aMv3uG3NnKPSpJE4@intel.com>
 <b29061f7-230e-43be-8e2d-1c3d51752f63@intel.com> <aMwUnwBizmieJHB-@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aMwUnwBizmieJHB-@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0029.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:17a::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB5772:EE_
X-MS-Office365-Filtering-Correlation-Id: 70e0cc99-26b5-4e86-7077-08ddf6dd077c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dnJkdW1EejBFWXBBMTY1c3MrQ2N6OXBvdjdGd09UM3Q5aVE4cUc2eXNGZTJU?=
 =?utf-8?B?c25uQmNPQ29PaWQ5b3cwZWUvcnIxNmdra0ZPTjhkQTkzMEhqWDZLWnd0ajF1?=
 =?utf-8?B?M1BvZGUrK05ocDNKRnk4MHhlMXE0a2I4Nlk2bTl5OWR4Q3VNZitYdExmT2RZ?=
 =?utf-8?B?UGg2OWc5VkRhamwwRDR0NkhGNXdTVkoxVDFyNkdUaVpjZS9SN0t0TzVoLzBx?=
 =?utf-8?B?YkgxSXA3a1RxN2h6ejcweis1ditUdTF4eEY5YWxKOVBLWjlsTFVVU1dsa25E?=
 =?utf-8?B?VXIzZ3NvT21uWTRJYzhDTzJrV2tXdmtjMHVaeWM2dkhwZmFMYzlONHNMeVlw?=
 =?utf-8?B?T2ZreS9iRjJlVGhRZm9zRytPaUZQd002Qzc3K1d6RjIzaVdkSUFJSjFDVTVJ?=
 =?utf-8?B?OFFaNy9RaGpsVGsxM0EwTWtWZ1NJZFdpUEVUKzNEbm1ocTdUaG5YUGpPMDFV?=
 =?utf-8?B?bkRaS3hialVieEdNUkZXbjlkMFZWdVVPalhaWnVaMnIrRWtVVkZXaXZIdTVl?=
 =?utf-8?B?empLbTRWSU12aXpWYmdaNWhhSmJWcEdHUTFLTkVxM3NpbTladVBvNmtRR1Ri?=
 =?utf-8?B?RUt0STNSOE5WeDFRemhiT3dVTVd1MGJKUUVzdUdhSU0wbmdRNWtwR1Y3VG1H?=
 =?utf-8?B?OTJRdnRJUEd3Rk9VWThuK1RSNkdQcjVnU1dFS2NWalVybkFBc0VQaHNQNFZ0?=
 =?utf-8?B?Y0czOFg1ODJuRnIrYUZJRlpjNW56YTB5WHB3TncvMDBNRTBNbUpUbW40WEpW?=
 =?utf-8?B?ZU9wOTlKa1VLSHIyS1A1ZzRKQkZ6cEx1NU41Yk5IVGRmd1F5QVQzdkkvVmxk?=
 =?utf-8?B?RGgreEp6UWVBY1FVMzh0b2wzUmxJUzNBTFRVakVWbjE4RE9PY1Z5dVRNUi96?=
 =?utf-8?B?WDczOUJkNE90OEh1Kzh0dW0xbnM4dXBQSkNGWUw0VjRKQlZtVUhhZmpBbHVu?=
 =?utf-8?B?b3Q3S3hkb04zTW90TjcvUVpvOWYxNmJKYXdoS3pFQlgzMEZPU0NqblFrY0Jw?=
 =?utf-8?B?L0lYZHVxQUpucUtnYk0xei94OHNaaXZzRW41aDd1ZHg1MkU1U3l4Wm44ekpa?=
 =?utf-8?B?bEMxanZVclU1MWVMSjVKT0N0dml6UWZZYU9VU2w1SFBraUc4Rnh6bWZlbUNK?=
 =?utf-8?B?T1hiYkdRM0tQWVRuNFAxRGlSZWFJZGsza1ZiMkNkMUZRL21YaVpUTUJQbG1I?=
 =?utf-8?B?QnN6NzFET0c1bUsvdXBSMktocnB0L0kzRnpxYjBZZU9MVHZXb0pwMHg0dWZT?=
 =?utf-8?B?OUVUL2RHTGV3ZkVmZCtBRkErVEVBUUV3TkpidXNFckNWTWlpSW5xVG95Y0hQ?=
 =?utf-8?B?UDZsUWM1dTh2VjZjSXdVMmRmVGZZREdGV2lBMk11dWpWcHl3YXc4VWI3YW5E?=
 =?utf-8?B?L2xoeFllbWtUSHo2d3g5VGFpWjVzcEp5R0lZelpOMXN6RW55a2JiaC9iaVd2?=
 =?utf-8?B?T3d5Zi9DYXdqNi9lT1RtY0JZNkQrUng2WVM5azVTZVZ1dDRuVDRUZ2N4SFdI?=
 =?utf-8?B?YVQ1NVp0LzJYclB0SnAwTXAxTWZyK1hlR3BNTXZuc3hHb1FlYVlySU14RlpX?=
 =?utf-8?B?d29kaGR1cENoTjZobnQvdmFqTHAyTTlLOGpsUWxwTXZ1cmtaSGlSTVRlL0F5?=
 =?utf-8?B?STJDemlSSzduMnRRbytRWnNZcmRFMitHelJHNUhETHV0UWtCWHBOVm9vbHNK?=
 =?utf-8?B?ODQzYXhvNDV0M3A4ajlnZVcyc3hxRWNZWVZMTHJGRitiMENMNS9od3A3aFlU?=
 =?utf-8?B?UjB1dHlIeXhwdDh2dWJwODlQY3BueXdIc1JjK3dxN2JmQkxEaGFmaGxVWGlS?=
 =?utf-8?B?Zng2dThORVZLVWltTlg5dmlrSW90VjdKTjVLbndZZHZFd0twdWVSRUVIRTVB?=
 =?utf-8?B?NkdIcVNwVWwrUmpFQTByNVBEY2IwcFBRZmh6c3NYWitQRDhOU3hORnhMR281?=
 =?utf-8?Q?65EtlBQ5sYg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MU1oSGFMaGNHS3lqcW13cXNEMUppS2NZZitPL2JFWm8xRGtBanI0b3hBc2xl?=
 =?utf-8?B?cklOM1dTVEdYQ1J2clFXUklhcElNZ1VUUEFPZHFYeTFBZStHUENGNFpqY2tj?=
 =?utf-8?B?RHByVmhWb2gyclFpV3Z0NTNVMy9QM0pMUUZndnROTjNqWlJ0WG83NGI2U3k3?=
 =?utf-8?B?UzdNb3RXWDhIQWtLTmx3QzhLU0gwdXZkQzIwZ2c4cDBEd1pjV003UFN0RDNL?=
 =?utf-8?B?QjBuQjdkcHVpekxYanlrZ1JKYnNabUFuNC91QnJhYmdiWURPU0tId3E5bHd6?=
 =?utf-8?B?THJSWVpkM1lhZmgvYlpGeEZCUSt3azVVNWxDQks2RlcyZGJuMjZXaDRiWTRI?=
 =?utf-8?B?VFNnYXY0KzhhVFNWM3diQmVGeC9VWUlYNTR4amZiZjBzSjZwbVNRejVqUHND?=
 =?utf-8?B?dHdBc1IxSnVoU3Z2eExDemlYTWxNTmYrS21IMlprQW5RZFl6djhXRTZrWDJz?=
 =?utf-8?B?UURDWXhrOTdWK1hhR1BvY2pvZlNKZFkwWHlFSjFqZkFnSzhsR2pxZWJldUUv?=
 =?utf-8?B?ck4rWEVqR2pzK2Y5MHlpZFpJb294d283VGpTWVBwQkI5WVRLZ0w3Q1Fra0xV?=
 =?utf-8?B?Mmo5RE1nUVQ0OVlsb1FrVVFJaGFNNG55Zk4wZnpaU3Q2SVRkR1ZINzZlVTlw?=
 =?utf-8?B?YWY1N1BxeGpKVjFxRnhROUk0VDYzOXVQUE96ZFNtUG9ZeEVHSk5uaWhvY1Np?=
 =?utf-8?B?c0lpYUVoc1Q0WE0wTFpCRnd5YWhqWHNuTGpkWEVkZmljV2ZDUXA5VFVzb2l3?=
 =?utf-8?B?YzNOWFRoSllDbXJtMHJrQUMzSmN3VTRIR2tQeEN0djFCUXg4YnRmMVdMU3N5?=
 =?utf-8?B?VHNtSmpEUWRkR0ZGTkhnclV2WFNCVkNZUmQwbVpBWnA0bk5KZFB1SXh4WG5i?=
 =?utf-8?B?aWN0TWQwb3Q2d3JJZUxiRkZZR2Vzd29QQ2tKcXNOYURnSWNaMG1oV3ZEUmpw?=
 =?utf-8?B?VlZpbkpxUFMzdnhDcVFJdTVRdkFHZ3hXSzV1c2VRRVJ0Tzd6VWtWaDFWbzlS?=
 =?utf-8?B?eFN6U0hGeGxUR094YWxMaHdnR0xqWVMvOENMYWhwK21pdGE1NVV2N2NibnZX?=
 =?utf-8?B?M2xzWUZmbmJvSFJXMnltMzU1cU5KMjNGb2xCSUZ6RE9zRWhweXBPZDQrMzlo?=
 =?utf-8?B?Z2RFVG16bzZRR1U0V1Y1UXNudWhHcVpWSG9KeE1vbEp6a3Nac1NmLzVNRzMr?=
 =?utf-8?B?WjZjV2ExMHdYSUI1OGlpV2x1WU5EdW5mdnQrZDJYMk9GR2dWL2lkZFBuUEJ5?=
 =?utf-8?B?YVg1WUxzNnFaZmVIUFVFSTR4NjhaQ0dNcE5zL04xdUtWdWFuSDlDa29GYTJB?=
 =?utf-8?B?R0E4aloyeVc3MnpTek9memgrcUppeEs0TTM5S0hzSWYrVWlVaks3TmRVaUlo?=
 =?utf-8?B?dTl5Z1M0K3VDbEd3SCtpM1RJcmhYejJ2eVVCVkFXTGhWNHp2VEpPejhtNHZZ?=
 =?utf-8?B?enhNVzZrRm1sUlZCR01lbGlnMXFLV3dudWxIWjZEZ21Na0s5WndKcjlvdlpl?=
 =?utf-8?B?YWh1OU1IcjFmdHhiSExpckREcERDdEhoRTQvSytMU1pucHFZVFVia1NUSHZx?=
 =?utf-8?B?NnlzM285OGRBWHpvRlBJUFNKc0lBQ3FIejJjMmgrejlBaWJpYXJ4OUdkaVBp?=
 =?utf-8?B?TzhuQ05Xb1lUT0w5clJ6Vy8yS0dMdDZjQXV0NlFObWdUUnJpQXBaYUhVS2Ux?=
 =?utf-8?B?Mm5wQnRDemUxKzBXNmZTdnhYSW80K04yN1hYYUFuc3NFaUI5c3pnNTk5dFZW?=
 =?utf-8?B?T0pkbFZMR0FGOXhUS2gxRjU5WHhmUFo5YXVIL2EwZzhydUpmbjJDMU85SlRE?=
 =?utf-8?B?UEZHWk9hSW1ZK0VmdXVrd1BhcHhpODhhTm5LZ0R4eHlQb2JPK2pRUDg0Q3A3?=
 =?utf-8?B?RFR4NHBJVnBjQjAwczZGdFNGcXR1UFZIeWkyemhVakdzL0xweEpoOHpyWEVB?=
 =?utf-8?B?SFNrcktjSFcvU1g4ZEhyNU9sUmpjMXYzbG41bDZlTkt3bWNGdzFBNWw3bDk4?=
 =?utf-8?B?RlIySDBpdGlGeWxuc1ZvQ2hDY3lOMFZmQkxKRzJMMnY2QktscFpvUjI0M1Zk?=
 =?utf-8?B?S1psVDdxcGpKRDgrSXhRa2lRbHhIRjU3cmx1U3VHcGg5QlJxc0FBb0k3NDY0?=
 =?utf-8?B?SGIzZHJIUGxLaUhRWDVJL3MzeXVJNXI0SjZYTW5FTEk3TTJXVTJQUG5FU3lu?=
 =?utf-8?B?d2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 70e0cc99-26b5-4e86-7077-08ddf6dd077c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2025 17:58:53.3797 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: y7pB4NhBNKOfRAkHtODnlzRmGttKt0VU8g3pHT0ZxsPSKApOLg8P71z19r3uZby2a5jZBaFAzj/WimqxlhFu11mjTG+pI1mN2AOijd7esbY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5772
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


On 9/18/2025 7:48 PM, Ville Syrjälä wrote:
> On Thu, Sep 18, 2025 at 07:12:40PM +0530, Nautiyal, Ankit K wrote:
>> On 9/18/2025 5:44 PM, Ville Syrjälä wrote:
>>> On Thu, Sep 18, 2025 at 03:03:02PM +0530, Nautiyal, Ankit K wrote:
>>>> On 9/18/2025 2:04 AM, Ville Syrjala wrote:
>>>>> From: Ville Syrjälä<ville.syrjala@linux.intel.com>
>>>>>
>>>>> Currently our crtc_state->vrr.{vmin.vmax,flipline} are mangled on
>>>>> TGL to account for the SCL delay (the hardware requires this mangling
>>>>> or the actual vtotals will become incorrect).
>>>> Please correct me if I am wrong:
>>>>
>>>> For display < 13  VRR hardware inserts one extra scanline just after
>>>> vactive. So we need to have flipline, vmax, vmin vtotal shifted by 1.
>>>> This is computed in intel_vrr_extra_vblank_delay()
>>> vmin/vmax/flipline stay put, but we need to account for that extra
>>> scanline when calculating the guadband/pipeline_full.
>>>
>>>> For display < 13 hardware expects flipline >= vmin (so we add flipline +
>>>> 1, not related to vblank delay.
>>>>
>>>> For some platforms intel_psr_min_vblank_delay() of 1 is required so that
>>>> moves the vblank start with this amount. we can account for this delay
>>>> by intel_vrr_real_vblank_delay().
>>> That 1 scaline is just the minimum size for SCL. And once we start
>>> tracking the SCL explicitly then AFAICS pretty much all
>>> intel_vrr_real_vblank_delay() calls can just be replaced with
>>> crtc_state->set_context_latency.
>>>
>>>> So for the SCL delay mentioned here should'nt we
>>>> use intel_vrr_extra_vblank_delay() in the computation below?
>>> I think we should be able to get rid of intel_vrr_extra_vblank_delay()
>>> for the most part. As state we just need to account for it when
>>> calculating the guardband/pipeline_full.
>> Hmm do you mean something like below:
>>
>> void intel_vrr_compute_scl(struct intel_crtc_state *crtc_state)
> I'd probably s/scl/set_context_latency/ to use consistent spelling
> everywhere.

Sure.


>
>> {
>>           struct intel_display *display = to_intel_display(crtc_state);
>>           int scl = 0; /*lines before delayed vblank */
>>
>>           if (!HAS_DSB(display))
>>                   return 0;
>>
>>           /*Account for 1 scanline thing for ICL/TGL */
>>           scl = intel_vrr_extra_vblank_delay(display);
> We don't want to account for that here. It needs to be part
> of the guardband calculation instead.
>
> So basically the max guardband is actually
> vblank_len-SCL-extra_vblank_delay.

Alright, I think I got some idea now.


>
>>           scl = max(scl, intel_psr_min_vblank_delay(crtc_state));
> That PSR thing should probably also be renamed to ..._set_context_latency()
>
> We might want to redesign that PSR part a bit at some point since
> IIRC you don't actually need to use SCL here, and instead you can
> just make sure the guardband doesn't take up the whole vblank,
> when using the VRR timing generator. For the legacy timing generator
> using SCL is the only option though. So I suppose we could avoid using
> SCL here at least for the always_use_vrr_tg()==true cases. But we can
> stick to SCL for now and revisit this later.

Thanks for the clarification.

Patch looks good to me.

nitpick: typo in subject s/manging/mangling

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


>
>>           crtc_state->vrr.set_context_latency = scl;
>> }
>>
>> And then in place of intel_vrr_real_vblank_delay() we can use the
>> crtc_state->vrr.set_context_latency.
>>
>> Regards,
>>
>> Ankit
>>
>>
>>>> Regards,
>>>>
>>>> Ankit
>>>>
>>>>
>>>>
>>>>> Unfortunately this
>>>>> means that one can't simply use these values directly in many places,
>>>>> and instead we always have to go through functions that undo the
>>>>> damage first. This is all rather fragile.
>>>>>
>>>>> Simplify our lives a bit by hiding this mangling deeper inside
>>>>> the low level VRR code, leaving the number stored in the crtc
>>>>> state actually something that humans can use.
>>>>>
>>>>> This does introduce a dependdency as intel_vrr_get_config()
>>>>> will now need to know the SCL value, which is read out in
>>>>> intel_get_transcoder_timings(). I suppose we could simply
>>>>> duplicate the SCL readout in both places should this become
>>>>> a real hinderance. For now just leave a note around the
>>>>> intel_get_transcoder_timings() call to remind us.
>>>>>
>>>>> Signed-off-by: Ville Syrjälä<ville.syrjala@linux.intel.com>
>>>>> ---
>>>>>     drivers/gpu/drm/i915/display/intel_display.c |  4 ++
>>>>>     drivers/gpu/drm/i915/display/intel_vrr.c     | 76 +++++++++++---------
>>>>>     2 files changed, 47 insertions(+), 33 deletions(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>>>>> index f4124c79bc83..18b9baa96241 100644
>>>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>>>> @@ -3901,6 +3901,10 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
>>>>>     		pipe_config->framestart_delay = 1;
>>>>>     	}
>>>>>     
>>>>> +	/*
>>>>> +	 * intel_vrr_get_config() depends on TRANS_SET_CONTEXT_LATENCY
>>>>> +	 * readout done by intel_get_transcoder_timings().
>>>>> +	 */
>>>>>     	if (!transcoder_is_dsi(pipe_config->cpu_transcoder) ||
>>>>>     	    DISPLAY_VER(display) >= 11)
>>>>>     		intel_get_transcoder_timings(crtc, pipe_config);
>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>>>>> index 71fb64c92165..71a985d00604 100644
>>>>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>>>>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>>>>> @@ -156,25 +156,13 @@ static int intel_vrr_vblank_exit_length(const struct intel_crtc_state *crtc_stat
>>>>>     
>>>>>     int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state)
>>>>>     {
>>>>> -	struct intel_display *display = to_intel_display(crtc_state);
>>>>> -
>>>>>     	/* Min vblank actually determined by flipline */
>>>>> -	if (DISPLAY_VER(display) >= 13)
>>>>> -		return intel_vrr_vmin_flipline(crtc_state);
>>>>> -	else
>>>>> -		return intel_vrr_vmin_flipline(crtc_state) +
>>>>> -			intel_vrr_real_vblank_delay(crtc_state);
>>>>> +	return intel_vrr_vmin_flipline(crtc_state);
>>>>>     }
>>>>>     
>>>>>     int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state)
>>>>>     {
>>>>> -	struct intel_display *display = to_intel_display(crtc_state);
>>>>> -
>>>>> -	if (DISPLAY_VER(display) >= 13)
>>>>> -		return crtc_state->vrr.vmax;
>>>>> -	else
>>>>> -		return crtc_state->vrr.vmax +
>>>>> -			intel_vrr_real_vblank_delay(crtc_state);
>>>>> +	return crtc_state->vrr.vmax;
>>>>>     }
>>>>>     
>>>>>     int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state)
>>>>> @@ -258,6 +246,21 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
>>>>>     	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>>>>>     }
>>>>>     
>>>>> +static int intel_vrr_hw_value(const struct intel_crtc_state *crtc_state,
>>>>> +			      int value)
>>>>> +{
>>>>> +	struct intel_display *display = to_intel_display(crtc_state);
>>>>> +
>>>>> +	/*
>>>>> +	 * On TGL vmin/vmax/flipline also need to be
>>>>> +	 * adjusted by the SCL to maintain correct vtotals.
>>>>> +	 */
>>>>> +	if (DISPLAY_VER(display) >= 13)
>>>>> +		return value;
>>>>> +	else
>>>>> +		return value - intel_vrr_real_vblank_delay(crtc_state);
>>>>> +}
>>>>> +
>>>>>     /*
>>>>>      * For fixed refresh rate mode Vmin, Vmax and Flipline all are set to
>>>>>      * Vtotal value.
>>>>> @@ -265,14 +268,7 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
>>>>>     static
>>>>>     int intel_vrr_fixed_rr_hw_vtotal(const struct intel_crtc_state *crtc_state)
>>>>>     {
>>>>> -	struct intel_display *display = to_intel_display(crtc_state);
>>>>> -	int crtc_vtotal = crtc_state->hw.adjusted_mode.crtc_vtotal;
>>>>> -
>>>>> -	if (DISPLAY_VER(display) >= 13)
>>>>> -		return crtc_vtotal;
>>>>> -	else
>>>>> -		return crtc_vtotal -
>>>>> -			intel_vrr_real_vblank_delay(crtc_state);
>>>>> +	return intel_vrr_hw_value(crtc_state, crtc_state->hw.adjusted_mode.crtc_vtotal);
>>>>>     }
>>>>>     
>>>>>     static
>>>>> @@ -441,14 +437,6 @@ void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
>>>>>     		crtc_state->vrr.pipeline_full =
>>>>>     			intel_vrr_guardband_to_pipeline_full(crtc_state,
>>>>>     							     crtc_state->vrr.guardband);
>>>>> -
>>>>> -		/*
>>>>> -		 * vmin/vmax/flipline also need to be adjusted by
>>>>> -		 * the vblank delay to maintain correct vtotals.
>>>>> -		 */
>>>>> -		crtc_state->vrr.vmin -= intel_vrr_real_vblank_delay(crtc_state);
>>>>> -		crtc_state->vrr.vmax -= intel_vrr_real_vblank_delay(crtc_state);
>>>>> -		crtc_state->vrr.flipline -= intel_vrr_real_vblank_delay(crtc_state);
>>>>>     	}
>>>>>     }
>>>>>     
>>>>> @@ -607,6 +595,21 @@ void intel_vrr_set_db_point_and_transmission_line(const struct intel_crtc_state
>>>>>     			       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
>>>>>     }
>>>>>     
>>>>> +static int intel_vrr_hw_vmin(const struct intel_crtc_state *crtc_state)
>>>>> +{
>>>>> +	return intel_vrr_hw_value(crtc_state, crtc_state->vrr.vmin);
>>>>> +}
>>>>> +
>>>>> +static int intel_vrr_hw_vmax(const struct intel_crtc_state *crtc_state)
>>>>> +{
>>>>> +	return intel_vrr_hw_value(crtc_state, crtc_state->vrr.vmax);
>>>>> +}
>>>>> +
>>>>> +static int intel_vrr_hw_flipline(const struct intel_crtc_state *crtc_state)
>>>>> +{
>>>>> +	return intel_vrr_hw_value(crtc_state, crtc_state->vrr.flipline);
>>>>> +}
>>>>> +
>>>>>     void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>>>>>     {
>>>>>     	struct intel_display *display = to_intel_display(crtc_state);
>>>>> @@ -616,11 +619,11 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>>>>>     		return;
>>>>>     
>>>>>     	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
>>>>> -		       crtc_state->vrr.vmin - 1);
>>>>> +		       intel_vrr_hw_vmin(crtc_state) - 1);
>>>>>     	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
>>>>> -		       crtc_state->vrr.vmax - 1);
>>>>> +		       intel_vrr_hw_vmax(crtc_state) - 1);
>>>>>     	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
>>>>> -		       crtc_state->vrr.flipline - 1);
>>>>> +		       intel_vrr_hw_flipline(crtc_state) - 1);
>>>>>     
>>>>>     	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
>>>>>     		       TRANS_PUSH_EN);
>>>>> @@ -754,6 +757,13 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>>>>>     		crtc_state->vrr.vmin = intel_de_read(display,
>>>>>     						     TRANS_VRR_VMIN(display, cpu_transcoder)) + 1;
>>>>>     
>>>>> +		if (DISPLAY_VER(display) < 13) {
>>>>> +			/* undo what intel_vrr_hw_value() does when writing the values */
>>>>> +			crtc_state->vrr.flipline += intel_vrr_real_vblank_delay(crtc_state);
>>>>> +			crtc_state->vrr.vmax += intel_vrr_real_vblank_delay(crtc_state);
>>>>> +			crtc_state->vrr.vmin += intel_vrr_real_vblank_delay(crtc_state);
>>>>> +		}
>>>>> +
>>>>>     		/*
>>>>>     		 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
>>>>>     		 * bits are not filled. Since for these platforms TRAN_VMIN is always
