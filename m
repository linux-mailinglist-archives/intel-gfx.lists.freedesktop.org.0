Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 587E4B1189A
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Jul 2025 08:45:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DE0310E147;
	Fri, 25 Jul 2025 06:44:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZpQNE5uv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1F3A10E146;
 Fri, 25 Jul 2025 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753425894; x=1784961894;
 h=message-id:date:from:subject:to:cc:
 content-transfer-encoding:mime-version;
 bh=Gh8AawacVRA8a8yKbp55XXyxVh0ZOtc/JMA1H+daj00=;
 b=ZpQNE5uvAntRz/D5KNxpbh9YSJ4OxEFv6OhcSmAGKOe8RajVF/101qX0
 VEj0NI+ODlV5OVv7aYgxyqCFQEC9toWOX/YnJwrezi5yAuBhF3g6+7uSy
 fqkxONDs9M7pCkvDplc4l3wffcVcwrKnscRb+TasSbKZKo9UR9ZB5JR6w
 69eeeF/j8VTj06EwTYbyz4Q89zr6m0/jIRh+9lRnetKNrW0Awm4iGvU3T
 Ffo+oXqdGTb3hzpfyiNF/XMMZAgSJlPPGs1xMVj0qcq14NyprylJclQ3t
 X7TABVdiwcN5DdzEaXyOGlfoyt3p28f8pdkxopYEBLuH9pWIcrPt1RCcE Q==;
X-CSE-ConnectionGUID: 6SOijpTHRZOQmvBMsoKipA==
X-CSE-MsgGUID: xkeTwa9WRgawDAiQHfHwdA==
X-IronPort-AV: E=McAfee;i="6800,10657,11501"; a="55905416"
X-IronPort-AV: E=Sophos;i="6.16,338,1744095600"; d="scan'208";a="55905416"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2025 23:44:52 -0700
X-CSE-ConnectionGUID: ntpzz0V4TEanS0HM2j5ApA==
X-CSE-MsgGUID: drIXD0niQii7fVEDgK30NA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,338,1744095600"; d="scan'208";a="184388056"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2025 23:44:51 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 24 Jul 2025 23:44:44 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 24 Jul 2025 23:44:44 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.58)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 24 Jul 2025 23:44:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gw7ICR16hVgS5PvdvUhvguZZNSjQulQNaaM6zLWlwzCOJb7TvZOKnpuTsv+uVODrkx+AGz+mLqK3FYjcGwozA1W0OFLMroqh04qlBrHOv/RpQ1/79bb3w13EvpNrkSnvyrAd5TeT+sBPY20lxmVMMULGfRds3w3B3t7JmURDFzLn8uE7AZj1Wq7IoCqEnFTXNqO4Z2DAGXbfUj0DgaKZ4PHx5YHK6pxBXo6rqXs7bNLaFphscPzFh88eelZZtHjLez3L2xkpkR3+uIeTcHr1t+HXD+kX72vVW6hoHvGRFYWmDQskGVtcY6AcRwfmDrZGEJb0iAzq8+XmWEU+YDR4CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VgbhqRn1O2CtT31ikGJzXvQopk+fWNYF4paEWUS+5i8=;
 b=ia0m0jm1X0r2bXIDbHYyMTZ8wA5QFI6+SKzqcJ9ybz4ZnOz8wrxT5ShrIjRXt4doJRnOLOA8r038BcfzWCvNHHU9oJbLhuEDZRsgB0xNQ81S9fUFPBEnD2PruXn2/Sl8KnhXXlLdwl9cmAN+vWOkTNGk6QXMpJDcJL4OY0tE3JjX+CvJxWAf5nDYryeGoeDdhGTQbCX2VUO/VcczfrB/FSYbbYNY0WZRZV0OOJYjMib195s4gEoSjbWzXuUZRzl+lOQ54YHq9V43MjenRfnc6z7gvG0zKsDHS92BkPSY/smqDfIsgaIhVUMNUGAtI0thS/Iahwgma9LUjwcqsO/5/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SJ0PR11MB6815.namprd11.prod.outlook.com (2603:10b6:a03:484::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.28; Fri, 25 Jul
 2025 06:43:55 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%6]) with mapi id 15.20.8964.023; Fri, 25 Jul 2025
 06:43:55 +0000
Message-ID: <07563042-6576-41cd-9a95-de83cfc95de1@intel.com>
Date: Fri, 25 Jul 2025 12:13:48 +0530
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Subject: Regression on linux-next (next-20250708)
To: <dlemoal@kernel.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 <linux-ide@vger.kernel.org>, <mika.westerberg@intel.com>,
 <anshuman.gupta@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani" <jani.saarinen@intel.com>,
 <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0017.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:80::12) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|SJ0PR11MB6815:EE_
X-MS-Office365-Filtering-Correlation-Id: fd5cf1ef-91be-4a60-dad2-08ddcb46a027
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?enRGS2Y4OThGSnF5ODZDZktsRGk2cytEelFvRzlrRDFtdlQ2M3RVVFRmRmxx?=
 =?utf-8?B?WklhWGo5UElPcnRUYnlCekJqbUVzT0NLdEZ1UFcrZGhjQnFWSEdMNHZZMzUv?=
 =?utf-8?B?dVNSdk1DVmRTTkZZamc1d1NVYUtUbndxaTVVZi9XTE1US1grSklKSWtyYXJx?=
 =?utf-8?B?L2RJRTRnTVNaQkc1Y1NDelVZblM5YjhBTS9OWDF0VnYvOXhQOERVbDRCSTVo?=
 =?utf-8?B?YnBsWnJkQ1pEK0ViNFFMQ0M2R0E5UWJreVFyS1dlY0tHR09YK1JPRFA2TGEx?=
 =?utf-8?B?cmlnekdWOG9NTVlkZCsrOXByL1BrdFREWmtwWmd2eUEycEZ2SnZsa0h4S2Y1?=
 =?utf-8?B?U2tXVzhEd2R5cUhrSlFza2hHSHF2Y0FwWExpUmY3RzNyTk9SZStDWU1NZWRC?=
 =?utf-8?B?a2JiSDZVdUp4V0pZVlBZSUplTkNNaG9icTlFbEEwdFU0K1lOMG03VkR0Qmwy?=
 =?utf-8?B?ZlR5YThXckdnK1V5RHhsV1dkWVBpa0JDTnRJRllibm1mM2h1NzlKNnhOYUNz?=
 =?utf-8?B?RXdQTkVCbERtSFBJdm1xYXBUdWNWVitQdXlUOWdUdXFGRUo4L05oVWpsdld4?=
 =?utf-8?B?aWdCYkxBVFpRSzVHckxneTBBZXJQa3R3MGJWR0hibmtUaGRkQnhWYkhZWWsr?=
 =?utf-8?B?UkpWWkZGRURoUi8yZTVPdWVVMjVrV1YrUGwvaDVaRWl3TjJ0WFNlU0o2bWx5?=
 =?utf-8?B?M3p4MSs3bStSNitua0xrMHBOSWcxZDlldVlFeldwanZVQTdpWkgrRm0wUXdQ?=
 =?utf-8?B?bXlZeEV4RUJjOHlTejU0anFTWU5xUURUb000NHVsZHBsRlVxWWZDY0hjWDlm?=
 =?utf-8?B?aUM3Z1dIKy9QQVdPbWlQUGdWRnBLVDE1MzlEenRTRjNuOTQwTmt2cFh2ZXpX?=
 =?utf-8?B?SThoZmJDK0R5Uzh4cjJSckQ2U2RzMDVoa25WUXROdktYTGlqY2pZbGl5clJO?=
 =?utf-8?B?UmhhaWd5b3l0aUROdnd1dXZOTmsxcjNRaEhzN1ZJSFk1bmV5bjhSNTQ3WDFv?=
 =?utf-8?B?eHhTVGZlOWJRQU4wOFRPTllHZFQxQjBlTUlqOURadHdEY3kycEcweWJrMXpy?=
 =?utf-8?B?amdFZ2dDSVJWNGhEc2FWaE1OL3hDVVZaYktvWnRlWThUM0t4OEV5NVY4Z2dU?=
 =?utf-8?B?WmI1MkVKaFJrSVR5OUUybzQ4SWhGR2M1TmpDMHdpOFR1dzM4Y2w3SFNrTXQz?=
 =?utf-8?B?YW9zb2ptVTc3b0x1VG94UG5oVnBrYXBiK0VaT3E0VSsyNDIrTUZ4eTlxRUI3?=
 =?utf-8?B?MGJCRk95Uk9wc1hWcjZ3TmZYbUdrK2M4Tmg2ci9XOTFJOVgzcUpwUUFZRE9E?=
 =?utf-8?B?UHE3Y3VvTWxWZUNSTWdhRkZQMStLME1LSzRYUEVRdUtad01JTEROc3dSVlZR?=
 =?utf-8?B?QzVqdnpKbmxWSUVIUVFoM3BMWU80UFliakVqQmF6TEdMVTB1UWFBN01YakM0?=
 =?utf-8?B?eThiWnRFdS9MbHdSUVVBUGtsQXRUQVUzZGNXYXh0cVJOVGVXNUd3a3NSemds?=
 =?utf-8?B?VUpaOEk1amkxOHJ0Ukl6R1o2QStYL3NaSHN2a3FNbHEzNE5kak9UcEV0cnFD?=
 =?utf-8?B?ay9hZGgvbmF1OWNZa3M5dGN3bkhlU2I4UDJycSt4RlhTdlQ3ZmxXS3gxNkl0?=
 =?utf-8?B?OFNwYUhrQVV6SmR5bWVOZFczNTFnY2NUQlQzWUpodGdSMVYrUlY3UEZaWWFj?=
 =?utf-8?B?am5OYzhIbkExMlg5ckJwallIdE1JNkM3WFZKcE5UQVRjVnJ0bmw0VW9tU05r?=
 =?utf-8?B?WjNqUWF6RnRkS0pTbHM3ZG1hTHkwZU9xdnEyVnJJcUY3TmRWYnkrb2RXdXEx?=
 =?utf-8?B?ekpYTldCOXdVaTRWUG9meFdEdFBDSFVPZjdkQXRpcm9LdUJRZ0NjNktQOTFz?=
 =?utf-8?Q?CGbPpsBIyeTDY?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WU5ZWkRiYkw2Yk9nWExKbXMzVlQzaCtoQW0vREpUTXFYT2IrUHJJUU52MUx1?=
 =?utf-8?B?SCtSSEQvVTFEK051cGZTSU9Vc2NDdGZUa3d2Vjlic1ZpcXpkVEd1RFlqSW9o?=
 =?utf-8?B?VXNpYlhXUWRKdEJnYUc5RHR3Tno5MWRlU0IzYXhpYiswM0cxOFpVd3paTzU3?=
 =?utf-8?B?Nm9OaWw1L0d6NmVlL3VsOEkvdjVlRno0NWtudE04aWhxSkRJNHdQUHZxZk9x?=
 =?utf-8?B?aHRSNEJxTW94S2Q0T21IWWNMNlVhSmphbDZwcjh3c05jWmd1ZUZaVmlNN3Z5?=
 =?utf-8?B?RmtvK2FuKzB2ckt0MUZiZTIyN2ZJa1RzcFQ2NlZHN3VhV2NaekFNOE9LUXo4?=
 =?utf-8?B?ZFo0YmxvMjY2aDhYQWZWeDh3cnNCL1B1WGFaWmRsQTNra1V6REdNdDZrSWc3?=
 =?utf-8?B?ZUgxdk1oU3A2SkZ0Vk1xcVlnNVF0QWFud1lxeW1Bc0Zzb1BXOTFGeTNOTFNP?=
 =?utf-8?B?Mm5DRkIvN3dzQzk0ZzB3UEt0OUl5R3QxU2xGME5NWTJmV3NrSmYyM29jakRk?=
 =?utf-8?B?NjZnbG1MQktyWm8wK3I1OGtZTU8xbncyVVA2UXNwZTVVL24zZTkrSHVxYjl3?=
 =?utf-8?B?RUIxaWZ5bS82TEt4cHNVUkhnb3ZOcC84YlBDKzJVcllFRXkyRi9tT29PSzNU?=
 =?utf-8?B?MUp4eGtQSkp0dUt0WVo4MmZ2NG5FcWhoY0dWa291T3kzUUFkY0FRckxJb21y?=
 =?utf-8?B?WDN1cmxzVU1FOHJMRHJZODlGVmdMWFZGYXl2b2M1K2JkZDY2WU5kZGhOR1g4?=
 =?utf-8?B?N1RkZmp4VHN2SStKdjkxS2l1Z3hBQnorQmcrNnQzRVVwMDR1VnZqSXE5Z1Fu?=
 =?utf-8?B?N0RiMVRMaU5PaU5aaC9EZCtkTkh0ZXZiMjU3QjZxdDNhMTduWmE0WTdnVmhj?=
 =?utf-8?B?UVh0dllyTk05UkUvbTc3U2FZU0wzbEpHUmp0SFE1ZEpBeE9GaG96aGVYb1pG?=
 =?utf-8?B?djd6VTZRdGJUOHpheE1VMjVzQkx4SnVzUS9RMUlxVXlIWlpISmlvd0VEMW1j?=
 =?utf-8?B?dDlFWGlqTjAvdzIwUDNaelJJRGpPV24yQ2Z4bFhkZGdESzFRWVRxNExQSFcw?=
 =?utf-8?B?bXFjbFpKVnpYT0V6ZlgyQWhkcW94a0k2UkNmM2E4aXpwQVM4Q3pNZlJpOCtz?=
 =?utf-8?B?b3JySlNkdFRMSUdOSlUzV0F2Rm9iQ1BvMTkycDRHQmttVmFySWREbFRXQmdM?=
 =?utf-8?B?NkJNTUpjYnZuSzJ3QmkxaEpkc0FrYkJKaStaTzR0NmVFVlRueXNpa28zK3Fm?=
 =?utf-8?B?MWR3WHkzUndQdUxoWStwUS82ZXMvL29hZk5NcndSNXpMYzRPYXVlL0VrNlpp?=
 =?utf-8?B?Mk9aVjczL2x4R0ZqL1YwS1ZNbGZBQzBZYmMwVTMxUU1sN1pzcHNUT2s5aVBz?=
 =?utf-8?B?SDJZL1EzZmpZYWVib20yVDN6dzd0eUNNSWdpV1hEUjZ5MS9jYStNSm9NbmdG?=
 =?utf-8?B?ZG8zWVVlOVZ6ejNBNGZSalNjMXZveVZIaUh0S0s5Z28xNTFhcE1taUF2OFV3?=
 =?utf-8?B?ZmRlb1BBTmhyck8vQkhYMFlzemRmN1QwOGQxWHBjbVhYb3pVV21IRFZ1Mklv?=
 =?utf-8?B?dmoybjNxM0cyTHNlVkQ3eGp3VVlLWDZEMmxoTXhGRTdPZ0tHTEJhSFV3dmdm?=
 =?utf-8?B?ZFVFczVQQ2F5TWhUSDBjMTZoeDZBaFRlc3p0a2p1L1dnUWlIQmw4b3FCTG9i?=
 =?utf-8?B?Qm8rMEtVNXZIKzhqVTdMbjJhbFYrRk5FUHAxNG81WjM3V3ExejRkc1R0OUg3?=
 =?utf-8?B?NFM5NStxZWpwQWszSExsYk1BeUlsK3JxdS9CNUxId3czUWdxRnR1NlBoNUtX?=
 =?utf-8?B?VDZqRDdRS2toKzNHRkNnWU9iakM4MnZ6Ni9uTHErcTBTMWdET1cwV0VwWVF4?=
 =?utf-8?B?VFQ3WVhERUd4cjBqVWs2UHg2VjA4aVNscGJXNklFWVFjU25jR255NzBVYjZR?=
 =?utf-8?B?WG9sMXFkenlyN3pkWmtHZlZwT1hXeVZnUURMQlJPRlhkSTdlbVZhTGJNaVhm?=
 =?utf-8?B?d3JGSXRSVDI5TUhnQVhRbWc3SW5JY29TaFZNV0cwOHoydUI5c2JiekE5QU85?=
 =?utf-8?B?UEhCTVNtWW84VFN1ZU5pTmZFU2VaNnZBakJ4U3h5OVk3d3dGYzg2aWxNeEVX?=
 =?utf-8?B?b3JyRGQxNWlKRXBLMkFnV0w3NmpZSlFxOUNQdlJJb1E0bEtHL3ppZDR1OHU1?=
 =?utf-8?Q?8M4WWYJS7Tt5MFZDLhilrP8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fd5cf1ef-91be-4a60-dad2-08ddcb46a027
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jul 2025 06:43:55.4812 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0+QzLzWnNSYTLj0hqCNmYN6NSwFSwGcDwuijjrR0gxkTtVBPzLGBUC8kYfY9Z7K9Jv5DJcB+K43KtYUSkNZJQQWhB/7KqtSEMcsyQqKe0Jo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6815
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

Hello Damien,

Hope you are doing well. I am Chaitanya from the linux graphics team in 
Intel.

This mail is regarding a regression we are seeing in our CI runs[1] on
linux-next repository.

Since the version next-20250708 [2], we are seeing the following regression

`````````````````````````````````````````````````````````````````````````````````
(kms_pm_rpm:5821) igt_pm-CRITICAL: Test assertion failure function 
__igt_pm_enable_sata_link_power_management, file ../lib/igt_pm.c:392:

(kms_pm_rpm:5821) igt_pm-CRITICAL: Failed assertion: write(fd, 
"min_power\n", strlen("min_power\n")) == strlen("min_power\n")

(kms_pm_rpm:5821) igt_pm-CRITICAL: Last errno: 95, Operation not supported

(kms_pm_rpm:5821) igt_pm-CRITICAL: error: -1 != 10

Test kms_pm_rpm failed.
`````````````````````````````````````````````````````````````````````````````````
Details log can be found in [3].

After bisecting the tree, the following patch [4] seems to be the first 
"bad" commit

`````````````````````````````````````````````````````````````````````````````````````````````````````````
commit 4edf1505b76d30e1e1e283d431e4f84ad01ddcef

Author: Damien Le Moal dlemoal@kernel.org

Date:   Tue Jul 1 21:53:18 2025 +0900


     ata: ahci: Disallow LPM policy control for external ports
`````````````````````````````````````````````````````````````````````````````````````````````````````````

For some context in our kms_pm_rpm tests, we enable min_power policy for 
SATA so that we can reach deep runtime power states and restore the 
original policy after finishing. [5][6]

IIUC, the above change is based on spec and not something which can be 
reverted. So as I see it, we have to drop this code path for external 
ports. However I am not sure if we can achieve deep power states without 
enforcing it through the sysfs entry.

Atleast for the basic-rte subtest, the test passes if we comment out the 
functions controlling the SATA ports. We will need more testing to 
determine if this approach work. Any thoughts on it?

Also, are there other ways to detect a port is external other than 
receiving EOPNOTSUPP on the sysfs write?


Thank you.

Regards

Chaitanya

[1] https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
[2] 
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20250708
[3] 
https://gfx-ci.igk.intel.com/tree/linux-next/next-20250703/fi-ilk-650/igt@kms_pm_rpm@basic-pci-d3-state.html
[4] 
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20250708&id=4edf1505b76d30e1e1e283d431e4f84ad01ddcef
[5] 
https://gitlab.freedesktop.org/drm/igt-gpu-tools/-/blob/master/tests/intel/i915_pm_rpm.c?ref_type=heads
[6] 
https://gitlab.freedesktop.org/drm/igt-gpu-tools/-/blob/master/lib/igt_pm.c?ref_type=heads#L457
