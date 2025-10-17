Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CCDDBEC596
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Oct 2025 04:42:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AB3D10E025;
	Sat, 18 Oct 2025 02:42:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HULDJUDG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19D1C10E025;
 Sat, 18 Oct 2025 02:42:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760755363; x=1792291363;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=q9xDWvHxWJCNsM9ZDxcJVQcjSws8ROKQDhrCKh/EBNs=;
 b=HULDJUDGkU0OxDkA2SnvHTJFiW9bg1S0kQjCjhCDDpjCNjMP2mBeB/Cd
 CBj/F/SE5U9mVSdGNsjf8WF04YzYwY5oeoqCB/8ge6EHdQep38y2LZ2K4
 y8R0k9oZhxPlr7h7M9iLmNzoyK/x7JeLBmvfqJRFiqvfqCefx5F5FG9c1
 SvU4Boj2aceTmHXwA/8qjqO2Pdy0JsZxrfLT+fHqzKGzN4cTmI7tMpu+E
 vi9s1FFZCgOB5jrkjj9doHu2QPncZIVgm+S6l9gCDy70SVm0HNEOpTtZe
 dD7r3xQ8xJVF0eS4m7xidbnKeS3+iWFoPvIqT3g4lQGpArfvlNKWtxf5i w==;
X-CSE-ConnectionGUID: vuocuT6wQXu6Jp9CgBVxdQ==
X-CSE-MsgGUID: jGkreuW4QnWso6s4Jt1jzQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11585"; a="73643701"
X-IronPort-AV: E=Sophos;i="6.19,238,1754982000"; d="scan'208";a="73643701"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 19:42:43 -0700
X-CSE-ConnectionGUID: YS93XvVTSsaNXHqqYdO0hQ==
X-CSE-MsgGUID: OKi69hsjSTKRp+j1bhFp9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,238,1754982000"; d="scan'208";a="206579501"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 19:39:53 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 12:52:31 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 17 Oct 2025 12:52:31 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.52) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 12:52:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pFtoLSIlFKQqp/yMdPq1uy0XR1+LpuEfuvgwpE6/+dFWxURi0H0rg0HrTyPJbd4vKepojHxc8jf2ipcQYHsgzs8lnWiQfU93BaROe/aijJ38F/qXzO6eZLW7Z5h1QNDlntXjbcaQmP83rkcAyc+pHO5gWGqX8JAqxn0+RGPvfsUujNIvjtF0EzXi+CeOU9Xa7SL0UZ82OnHJT3TyXubZzqqJz5Ym25AfhNV47JhoXCa9cxxKgERdJ8DGz1GKxBHDGFFLVS1f2F8VoMKpOpic4pstFTvprHvykZzYUwE0ZJD3vS0PqB6iPXMkNlVIj+YKhOgntb4fC9tq3OOCwixOJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wir9OKTSc3O9bLac72oNz3oOo4hII9E8kkubJv9ItwY=;
 b=cNa1COR0ZVKGQT4jXjVcTSUrUIOvE+lS9C1wJ6801JzOWH6pSgEsY27la5yhJjdybp12K8VdJzqhNPosgsAsHobV0bD62aBWSr4tqC+vPQFU193n1LxCVd9jl/3G/f80u5tepWF1nUtTfC78GLs1InTvPZcrHk2llOQHy3+pkDhiZeKpUj167u0QZ6GEqcBVeTj3s8J4OUXYt1kuMN/6ZHndLuwxjwRznCStZmRBgT/0kQOaQD3Lj/l98oevbDscu7A1+rxY0n3XbC4rinC5Vn1vgdP4q8CIB6lnfXvYllCHsTptDDhZw2Yb+l3cf+YkEI/jHddyaOoKJOT9SmFPUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CO1PR11MB5139.namprd11.prod.outlook.com (2603:10b6:303:95::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.13; Fri, 17 Oct
 2025 19:52:29 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9228.011; Fri, 17 Oct 2025
 19:52:29 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <d04fa666b1ab4737aa2a927c897e0ee7062482d9@intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-27-d2d1e26520aa@intel.com>
 <d04fa666b1ab4737aa2a927c897e0ee7062482d9@intel.com>
Subject: Re: [PATCH 27/32] drm/i915/vbt: Add fields dedicated_external and
 dyn_port_over_tc
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Fri, 17 Oct 2025 16:52:24 -0300
Message-ID: <176073074493.2362.9794630315303321450@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR13CA0156.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::11) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CO1PR11MB5139:EE_
X-MS-Office365-Filtering-Correlation-Id: 48ba4741-482f-4e0f-2dbd-08de0db6b3e4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VXF6V3NONXl3QXlLNWs5SVdBd1RrWURCSlllNXNNSDh0elVaS1pXVmlaNUZk?=
 =?utf-8?B?NG1iWGs2dE1LSkxhS01LRm15dDd6TUtBU2pHWmxhbFh1Z2RjWUFGZFVSSGgz?=
 =?utf-8?B?b0Q4LzU4aUFLYU52QWRiRloycmZoRXFlZEpzc0pFV1l1emYzTUxIUHRrNEZG?=
 =?utf-8?B?b2NFeE9YRnNkTkdmaWI5MlVhYmdjdWlyYXdoWElQamw1UmhGdVU2VWgrd2J6?=
 =?utf-8?B?bWNGME1mY0hObHB6bjlHb3BCZXdxWW41YXRFVElOYWR1dlFnSzlwb0JQR2I4?=
 =?utf-8?B?Wnl2Qyt4NE82N3hzN09tNDJXMTlSVFNZK1pCMGlaZnk1Zk1KWnBXV1d5QVA3?=
 =?utf-8?B?QzRZSDgySTBVNi9Cc1h6N3RLLzExTFFQS01oc2ovdVByTXlnTkNpdGVYVzZs?=
 =?utf-8?B?WjErd3NxZGsyN2dDeWJ2Kys1bnM4MTNTcXhudmpIWDNMUVFnbVhnUUVLQktP?=
 =?utf-8?B?ekw0eEtxTjVIa1Y1VWJVMFc0ODVzUko0ME1JeHAyRFkvLzByQnNURW1xU1Z0?=
 =?utf-8?B?OVcvaEg5QWJHU1lacG04L3NnRytsdmh3UTJ3OG9ORlg3UGhGMlVmZUsrM3dk?=
 =?utf-8?B?VTNzTlNNZ3VPSWUybnZuS0h5TzlkM3JQVWxidi83ckE4ekNBcHdPcXFiUlJa?=
 =?utf-8?B?T1BuRUcrTWZnQzZrUTZKYjc4MFU0dVFMK1NvYmNsdkNsWGRJOEMraGwwby91?=
 =?utf-8?B?aWtKMUIraVpDOWd3SWNXUi9DMjFFRlU0SUtnNk9LNlp1MTZxT3Frck12eTZy?=
 =?utf-8?B?ZGFiNlJmbm5kUVZlTmtxVE9xL0lwMi9IRmtXSGxwYllaRnZMT0FvTXkyV2FH?=
 =?utf-8?B?c3U2RHRyUnlrTVhjQjZoTnN6RXpKbXc4cDRYWlBLaVJnS2JzYklhaHhkYzFa?=
 =?utf-8?B?SlBmVllEOEljd1hsM0RaQlBTdUNaTUhaTzQ2NTZVaHpyUldXRjg1c0x6M2l1?=
 =?utf-8?B?Q1BXS0ZlQ1ZPWDBET2tHQ2xQU1JTdytMVGRVT3VUcjRkQXBVNitLS2hKNHFo?=
 =?utf-8?B?Qnc5UGZZd1pQZTJ1OXJpVEw2cG9OQXlDeDFhczllVGVYVXZvRWZhRzM1SW1I?=
 =?utf-8?B?UFIyNHVqWnJ5RzZUaFN3OEdta290dzRsODVoRDB5aEtHeGZRRjBrZWw2aWNm?=
 =?utf-8?B?dmI2Tk9MSlBSVXRvamxvSWx0YW5rRWZVbUpaVDNOcWNlaTBaRGNoRnlENlY1?=
 =?utf-8?B?UVRQVXhPaDRrbVJLaW1weTNzMTNZVmY3aVVQNTU4WXNteDR1aHhwaWhKTnFM?=
 =?utf-8?B?ZnJmbTZQRXZwNjdqajk3bHgvL1ZNSE0rZ29GWkJ6VVh5NTZiYnVlNVVzZ1Fm?=
 =?utf-8?B?MWxWcG83NGN0anNYdTkweFZkVVhhZGYvelZDTUd6Y0dDZmt2TFhCT3Z4WExE?=
 =?utf-8?B?WXdtZDNKbk1aeVh0YWFwZnJKbEN5V29TaTk5cGtac0VHdlE2NStRU0VMWXBj?=
 =?utf-8?B?L05ybnN4UGpCL3lWRTdrZGlmRGcxQ3lQeDV5UVN4OFVXK0xCRHJBakFGS2VN?=
 =?utf-8?B?WTljb0hyRWZrQXJlRTRXdTZxVEtzUWc2VkJZRUxhTi9OUUR4U0N4WGV1bXVy?=
 =?utf-8?B?aXdMeWNORTZBbnBwOEI1TjVaajY2NldwRWtlbXQxS0hNZ0ZSUFJJMm9JSC95?=
 =?utf-8?B?bHhZWEZkNHhGaFNjU0IzTlVVWi8zaEVlK0dILzk3QkNtcnNON1RTZEMzbmto?=
 =?utf-8?B?TnZMNStVUitiMzBvb0xQVGxMamFqWUxMdXBqU2xESER6M0N2ZnhWTnBLMVRI?=
 =?utf-8?B?NmRJL1k0Ui94c3Q5OU95SVQvWjh3a3pyWGp4SWVXUVluM2ZKdXd2Sy8rVnBQ?=
 =?utf-8?B?UGRhNnpvcjZPZVo1bFp4aVNiUW01VEdZRHhuSVcxbDhtRlFyNllYUFJsNFZK?=
 =?utf-8?B?amJnUE05Z3Yva25ndlVNczVrUlVXYThWSk1pbkNhM0xjOGttSU13Y0RSR3V5?=
 =?utf-8?Q?nhuoNMD7k5jJGgXANvurvPttpU10nk/p?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SklVWGpoNkN2c0lqa05Ycm94Z0sySlNkZi9mYVJ3WnRJa1hla2E2dEE4amdk?=
 =?utf-8?B?RE1Ecy9BdFREeUdUY3RuMWdvZjhpczB6TXc0aWxJRUJCeE5kQnF4Ym1rMGhM?=
 =?utf-8?B?MExOcExKN09kd2lEVmxJcStGZ2luN21zK1AyamdmRENvWE5GUHF1NXBTbTBy?=
 =?utf-8?B?ay9LeVZDWFFjS2Y4NUdkb0VyZ2Z3WVVHSkg5eis0WHF2Vk5VVEYraWZzNGlj?=
 =?utf-8?B?eXllQi8xQ1Qvb3F1YmZXUFlFNFJoekw0TTVYSEJIOFVtbk90eFc0KzlnZnV3?=
 =?utf-8?B?alVqbjE3MC8rQVNnQ2krcjNiOFdWaEVyc3Y0QWlzcHZlODFiYmp6dmlWSUhZ?=
 =?utf-8?B?YW43bG9sRW5mWU00L0U0bU1XdHpic1BlbVRJclVKYTNEK3dqT0dmTEcyZUQv?=
 =?utf-8?B?Y1RJQWwwZ3pBM0grUElHZ1oyUlVoYU5tb0tUSU53UmJDYnNUWHJjUDlUVThX?=
 =?utf-8?B?UkNqWGdKTE9OenRoaEFKVXc4UVpUc2dtbXJOMmNVckorOUZpRzRwMUF1Y0hq?=
 =?utf-8?B?cWpDZk1LbldIY29STDZzMHhlWlBsRHhIc2hJMmhqbXNkbGJLY3JpREsySU05?=
 =?utf-8?B?UmticVFpYko2UmQrNzk5RGYvMHV3d0tTODVwZUloUkl5QWRsNTVvL0FCTEh0?=
 =?utf-8?B?R2JlYjdZNVNQVS9nWUJralUvalQ3bXl6SWFscC9WN2Z6VTdobnlaZHlSWEpt?=
 =?utf-8?B?SndUU1d3THBHbGYwQUFjTmxjY3RBeVVVWUFtaWdIS2YxMElYeHpYRExvMGFo?=
 =?utf-8?B?ZHVwWk5BeXcxUG1GYmVndHZoWEY0VHNWS2pKY0FNTDA1cGF0bnNvZFlOTnd5?=
 =?utf-8?B?enlhSXUwR2EyT3hoSlR2S3dFL0NJWVNDcmxBemlTTnVETk1LNEUvN0JCSGJl?=
 =?utf-8?B?aGd4TkpMQklOakpMVmx6OXlVTXV5UFRRSUh4aVo1YmMxcEVkM1ZuM3gyNmt3?=
 =?utf-8?B?ODRtYWZteGwzVnFJdTFxNXR0Q1o4ZDc2NmJxNjk4cTFnbUNuSzRhamxWUkVT?=
 =?utf-8?B?bC93UWhLUlBDUS9MZDVWUVdob1ppZ0RWODFXQSt1ang1QTV0VW54SXB4eFRI?=
 =?utf-8?B?cDZGM1JyUjlXaGMwaktrQXBRMFZRRmlMMERENVJtRmhiNmdPZmk1VlBZbnpL?=
 =?utf-8?B?djhLUnNJVTZLbSs0RmY0QnVncTRLSDN6STdFMGlJQkFCSEVkdkJjQ3NuallY?=
 =?utf-8?B?SWZMcjJORjdoVlBuUmNNMGh0cDV5SENPOUZaUEl3Q0JWVnBnOG8veGxXS3Z6?=
 =?utf-8?B?RFBLTFFoS3lEOEY4ZnNUZ21UcUJUaW1FdXVBMkdPTFJQUjhQRDhpTlRvcWNN?=
 =?utf-8?B?N1IyaUlac2dPRWMrMjF3MWgybXRocUFLNStFWkIyeUpZbHJLMFFKQ1I1ZHhO?=
 =?utf-8?B?Tms1RFNESW1IeDVENFh4dFpNOGRCc1NiMW05Q0gvcGpWUTZ5WlBzdy9Gbmw3?=
 =?utf-8?B?ejJUd0JpLzBuZDBKZHhpbHZ1NXZTVy81bWJEWTBEb1hTdVkyd2NoYmdSOVVJ?=
 =?utf-8?B?Mm1oa1FXN3IzOXErc3lZM0JKVjBsM012b1hOc2N4VEFkSUVtL0UxQjFzZzVo?=
 =?utf-8?B?Nk1uL21QdEI2VmxoUlJDWUVXZnQvTThZUGZRdUJSVExTNFMrOG5qOGpMVVh1?=
 =?utf-8?B?RVdNcTR1Zm9RZjgwdHFPNm1neGU1aVM4MDUySE1ER0s5QWZYNjhialVTTHlh?=
 =?utf-8?B?ZDdrOEVTL1Nmd0huVVloazYyV1ZlU01GcTRRaWJmK1QvWEtSNWs4aEJKRFM0?=
 =?utf-8?B?Vm5mRGlZNFBJL2hyaUNUYzZ4a3poN0ZNSitTUjFEWmdOMzRFQzJIOTNzV0cv?=
 =?utf-8?B?cFY3Z0U3U0ZyWmtZOCtwVzhaeHpJTUw1NTNIYXpkemsrS25hQUJBWEZIVkhW?=
 =?utf-8?B?WmgzT0p4REtZK1BzbGlyeTdLSXNlajlhOXAvWGNvMHZMeWpBKy95S2lmWjN2?=
 =?utf-8?B?ZTlBMHY3MWcxalEyeGNuNWdEUllyU2lrbDV1czM3SWJzRVl1ZUhYOFptUnB0?=
 =?utf-8?B?bGZpNTVtOEd2YUM2NEo0eEEwUE5wNWdyUVZZR3RPcC9pTS93TU85Mi9hcmZu?=
 =?utf-8?B?WTdlNW9lSExjWnR3dlZBdGM5cVFYbDJHTVgrVTRPNmlNOHo3MENvWkhiT3V3?=
 =?utf-8?B?UWFGVmhDUXdmclZ2MnhGY0dVenJNRy9OVkNrVWM4andCbWhJQjRhMnlQdmpp?=
 =?utf-8?B?VVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 48ba4741-482f-4e0f-2dbd-08de0db6b3e4
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2025 19:52:28.9590 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0GXP9If48m+YoOeSmMZNHhEniHCMdj1cJedKz91q9aoLnd9QLdHcVcl3c2nPeIocwHkwy7v5RGlFk9HYHwZdXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5139
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

Quoting Jani Nikula (2025-10-15 12:24:12-03:00)
>On Wed, 15 Oct 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> VBT version 264 adds new fields associated to Xe3p_LPD's new ways of
>> configuring SoC for TC ports and PHYs.  Update the code to match the
>> updates in VBT.
>>
>> The new field dedicated_external is used to represent TC ports that are
>> connected to PHYs outside of the Type-C subsystem, meaning that they
>> behave like dedicated ports and don't require the extra Type-C
>> programming.  In an upcoming change, we will update the driver to take
>> this field into consideration when detecting the type of port.
>>
>> The new field dyn_port_over_tc is used to inform that the TC port can be
>> dynamically allocated for a legacy connector in the Type-C subsystem,
>> which is a new feature in Xe3p_LPD.  In upcoming changes, we will use
>> that field in order to handle the IOM resource management programming
>> required for that.
>>
>> Note that, when dedicated_external is set, the fields dp_usb_type_c and
>> tbt are tagged as "don't care" in the spec, so they should be ignored in
>> that case, so also make sure to update the accessor functions to take
>> that into consideration.
>>
>> Bspec: 20124, 68954, 74304
>> Cc: Shekhar Chauhan <shekhar.chauhan@intel.com>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bios.c     | 20 +++++++++++++++++++-
>>  drivers/gpu/drm/i915/display/intel_bios.h     |  2 ++
>>  drivers/gpu/drm/i915/display/intel_vbt_defs.h |  7 ++++++-
>>  3 files changed, 27 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm=
/i915/display/intel_bios.c
>> index 3596dce84c28..e466728ced0f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> @@ -2777,7 +2777,7 @@ static int child_device_expected_size(u16 version)
>>  {
>>          BUILD_BUG_ON(sizeof(struct child_device_config) < 40);
>> =20
>> -        if (version > 263)
>> +        if (version > 264)
>>                  return -ENOENT;
>>          else if (version >=3D 263)
>>                  return 44;
>> @@ -3714,14 +3714,32 @@ int intel_bios_hdmi_ddc_pin(const struct intel_b=
ios_encoder_data *devdata)
>> =20
>>  bool intel_bios_encoder_supports_typec_usb(const struct intel_bios_enco=
der_data *devdata)
>>  {
>> +        if (intel_bios_encoder_is_dedicated_external(devdata))
>> +                return false;
>> +
>
>We already have mechanisms for this. Please don't pollute the functions.
>
>dp_usb_type_c should just be set to 0 in a new sanitize_something()
>function at the end of parse_ddi_port()
>
>>          return devdata->display->vbt.version >=3D 195 && devdata->child=
.dp_usb_type_c;
>>  }
>> =20
>>  bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_da=
ta *devdata)
>>  {
>> +        if (intel_bios_encoder_is_dedicated_external(devdata))
>> +                return false;
>> +
>
>Ditto.
>
>tbt should just be set to 0 in a new sanitize_something() function at
>the end of parse_ddi_port()

Aren't sanitize_*() functions, at least in the context of intel_bios.c,
for actually fixing bogus information reported by the VBT?

Arguably, that wouldn't be the case for dedicated_external and the
related fields, since it is actually about a new way to interpret bits
for the new version of the VBT.

One of my concerns with the sanitize approach would be gotchas with
anything that tries to use the fields before they are sanitized (e.g.
another sanitization function gets added in the future that would use
one of the sanitized fields).  Perhaps that's never gonna happen?

--
Gustavo Sousa

>
>>          return devdata->display->vbt.version >=3D 209 && devdata->child=
.tbt;
>>  }
>> =20
>> +bool intel_bios_encoder_is_dedicated_external(const struct intel_bios_e=
ncoder_data *devdata)
>> +{
>> +        return devdata->display->vbt.version >=3D 264 &&
>> +                devdata->child.dedicated_external;
>> +}
>> +
>> +bool intel_bios_encoder_supports_dyn_port_over_tc(const struct intel_bi=
os_encoder_data *devdata)
>> +{
>> +        return devdata->display->vbt.version >=3D 264 &&
>> +                devdata->child.dyn_port_over_tc;
>> +}
>> +
>>  bool intel_bios_encoder_lane_reversal(const struct intel_bios_encoder_d=
ata *devdata)
>>  {
>>          return devdata && devdata->child.lane_reversal;
>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm=
/i915/display/intel_bios.h
>> index f9e438b2787b..75dff27b4228 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.h
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
>> @@ -79,6 +79,8 @@ bool intel_bios_encoder_supports_dp(const struct intel=
_bios_encoder_data *devdat
>>  bool intel_bios_encoder_supports_edp(const struct intel_bios_encoder_da=
ta *devdata);
>>  bool intel_bios_encoder_supports_typec_usb(const struct intel_bios_enco=
der_data *devdata);
>>  bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_da=
ta *devdata);
>> +bool intel_bios_encoder_is_dedicated_external(const struct intel_bios_e=
ncoder_data *devdata);
>> +bool intel_bios_encoder_supports_dyn_port_over_tc(const struct intel_bi=
os_encoder_data *devdata);
>>  bool intel_bios_encoder_supports_dsi(const struct intel_bios_encoder_da=
ta *devdata);
>>  bool intel_bios_encoder_supports_dp_dual_mode(const struct intel_bios_e=
ncoder_data *devdata);
>>  bool intel_bios_encoder_is_lspcon(const struct intel_bios_encoder_data =
*devdata);
>> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu=
/drm/i915/display/intel_vbt_defs.h
>> index 70e31520c560..f07ab64a8d97 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>> @@ -554,7 +554,12 @@ struct child_device_config {
>>          u8 dvo_function;
>>          u8 dp_usb_type_c:1;                                        /* 1=
95+ */
>>          u8 tbt:1;                                                /* 209=
+ */
>> -        u8 flags2_reserved:2;                                        /*=
 195+ */
>> +        /*
>> +         * Fields dp_usb_type_c and tbt must be ignored when
>> +         * dedicated_external is set.
>> +         */
>
>We can add that info in the sanitize function. We don't generally add a
>whole lot of explanatory text here, because if we did, the file would be
>10x consisting mostly of VBT quirk explanations.
>
>> +        u8 dedicated_external:1;                                /* 264+=
 */
>> +        u8 dyn_port_over_tc:1;                                        /=
* 264+ */
>>          u8 dp_port_trace_length:4;                                /* 20=
9+ */
>>          u8 dp_gpio_index;                                        /* 195=
+ */
>>          u16 dp_gpio_pin_num;                                        /* =
195+ */
>
>--=20
>Jani Nikula, Intel
