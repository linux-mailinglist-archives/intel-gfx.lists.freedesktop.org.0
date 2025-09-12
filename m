Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AF19B5526F
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Sep 2025 16:55:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26E3C10EC82;
	Fri, 12 Sep 2025 14:55:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hg7t5wLH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56BB010EC82
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Sep 2025 14:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757688908; x=1789224908;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=siT3Op/mO+pMa1cfFlGUb6Xr9Xi/NdOP9xG9025ZW+E=;
 b=Hg7t5wLHCDoqTPhesBD2AFoGIPqzHGwS10evJEK003wKtmrTPt0AUpDJ
 QF55D3x4oqgCQQzDx0W2tQqXXStnjXFNCz58GFHGuWtmlcGG8jNImLKpc
 7A3+XiJP4bKjWgGYgoz0ff6JNsl7vviOypJoO5/sZX2PINopzfbLwrbc4
 Kiibb6rtT3SAZ6376kAYwsO4Sb0Pf9/VKRKDdzC+CcpYgVfhIViESkY/B
 9IESMC0GAI82RB07vOjh6hgGMzUG/694l54yLMA6ZbQkHm3Pjp/FVwKo2
 3rPK0dniuS6AWx1rXpldxdtlGCVQCeNYBbsIL5Jkdj3juKvyluF/Kd0uN A==;
X-CSE-ConnectionGUID: XSO78w58SyOHLt/LznyWOw==
X-CSE-MsgGUID: M2sQhn6lTeGDDPSPyoIzHg==
X-IronPort-AV: E=McAfee;i="6800,10657,11551"; a="70658701"
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="70658701"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 07:55:08 -0700
X-CSE-ConnectionGUID: PxKOAkWCSvO06XqfZlwTQg==
X-CSE-MsgGUID: PxbWRfeBT4+mn6YJPhQ0PQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="204758402"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 07:55:08 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 12 Sep 2025 07:55:07 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 12 Sep 2025 07:55:07 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.83) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 12 Sep 2025 07:55:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vgq6l+7MeKoiUXtqOW+rObXQpgFWYLWBkkfiEH/jquzU18YWb+yXsr9xIFoIB9dT7CikocalXf+ch7xcLfq7rXnQbvGAzh0btfTvegYxKWgdhVG2O+ip8igtWK8+tFkz7zk8eUn192cohgpOzZde0FnohrHY+Qidmubjjmez5iBVtHiA4zhr6vcZmnb6kdEAH/lOQ7oqEF+o+yMg9Gbk5VkEMbeSt1vsJL4WArVopl2rvqGiNMK+9TgMjY67cCbED/eWVBkplpvJvkH6hTdE+fQFv3PfADzd/WTtWT6l7Q/9GSJe+Id6LJnGhwB8uQ46HMk1ulwVFklohcASXn+qAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g4aIJ6NrspADZmIXOCYQ55fdjXMqirE9wTwMF/cFWII=;
 b=kP6/6vejaVG67y3Fzj/1xfcWtgNSQ1MmRET5NFUBeBzzM3ENv1QnJ/aqv06kw613mR3aslP1q7MHWK9Oif6Oh4aKwA/g+tJdiKytb9Ns6VvSskOlJPGvpCDbcedLEBfEumURro4uH4e+rK6XYBwDOBkglllPIJY2UaTJcxM6Af6nUddgwqolf8ArjGn+e3rN/BT0NnwuGmYgFL4VzAio1iwqtm+9aHzM0o4XkuQ3U9c/3AkuAw7NKBJB8Ka3F0kDqXh3m3xco8wTFWtP2yIUoE3p62+WvndduXL0e9rLS9bSMqAKXG65etWaLolGG2a9zp55IYkJdZCRDOi4Zr4P2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5)
 by SJ2PR11MB8402.namprd11.prod.outlook.com (2603:10b6:a03:545::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Fri, 12 Sep
 2025 14:55:04 +0000
Received: from PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::48d7:f2a6:b18:1b87]) by PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::48d7:f2a6:b18:1b87%5]) with mapi id 15.20.9115.018; Fri, 12 Sep 2025
 14:55:04 +0000
Message-ID: <fb4a23fb-c4a8-474d-8edb-e2f347805132@intel.com>
Date: Fri, 12 Sep 2025 07:55:03 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] mei: me: Add exported function to get the PCI ID
 list
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
CC: <intel-gfx@lists.freedesktop.org>, Alexander Usyskin
 <alexander.usyskin@intel.com>
References: <20250911175021.19513-4-daniele.ceraolospurio@intel.com>
 <20250911175021.19513-5-daniele.ceraolospurio@intel.com>
 <2025091228-chewable-amusable-5d2e@gregkh>
Content-Language: en-US
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <2025091228-chewable-amusable-5d2e@gregkh>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY5PR17CA0017.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::30) To PH7PR11MB7605.namprd11.prod.outlook.com
 (2603:10b6:510:277::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7605:EE_|SJ2PR11MB8402:EE_
X-MS-Office365-Filtering-Correlation-Id: 576bf8a1-3f71-40bc-df88-08ddf20c5b16
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ODl2Y2NtWVFVRk1uUXhoSDJJUHhkc2pDcjVpNk55YzZkM24xdzNPb003blE2?=
 =?utf-8?B?S3dmWmlBYUljakwzNTRiQ1NyM0xNaG8xVW9rOWdXZTBmd2JXbzVtVWZhVHFW?=
 =?utf-8?B?amI4M0N2VkxBaUZpOXVwSGZ6NmZxZUJEMjR3RkNMeVdjY0Z0SDZaWit6a0NE?=
 =?utf-8?B?NXRERXc1aXdGY1l6NUFtOGJkSjh4K3pyT2JBT3Y5eU5QTGNnVy9EUld2TkYz?=
 =?utf-8?B?UkxZUlM4VmdxZWoyQjZkZi9LRm9sQTZ6bkw0RlpkeXM5NmQyc3RzTXkwemhS?=
 =?utf-8?B?UUFQeEU5UkFSWmZ4d1pvSGdNcDJ3aU1BQ0pMOVd5YTZyN3BnQlNQODFOSUZw?=
 =?utf-8?B?SXMzd2tXTkRiQ2tnOU02MEZweTk2YURKSUhUYzRLZTlDNlBBT200UDgxNnVk?=
 =?utf-8?B?MjAwb2xIT1Q0L0NvMERUZ2lWVlp0VXJ4RGI3VFdWaWhBWmxMWFo2K21VeWJ3?=
 =?utf-8?B?Nk1pVXQ0ZXByV1dyNU1uVExIQ0hRWVVVYU51ZGc0V29MdncxWWFKWGFZdzJZ?=
 =?utf-8?B?NExOT3NOb2V1OUh3Q0VTZWpSbEtzV1JrcUhqc2l5d3JReEJLclB2VWlJNXpI?=
 =?utf-8?B?WXVGR1E0NkZvcGN6QUlkRVladnlYZi91c2xETXhqd2JxMjZJY1AyMVArR3Yv?=
 =?utf-8?B?ZEVVeEtqUG9YNXRRZnF5VTNQREwvdEVTUEgzY3cvWUovZy9wZG4xRkpqcXBY?=
 =?utf-8?B?N2NRTmFjRHM3YVRuUHRNUW4ycE8xbHRCakdMczcyWHpmY0VYeXBRdDY4VXg4?=
 =?utf-8?B?Zk9GdkNrWURKOXRWbEZTcFhXSm1iMjAyb29SZnprNmhlYUNrbkJTZm5sU3dZ?=
 =?utf-8?B?Wlh1bWZPTDltcXREcjU3RzhFZ2RLL2N0WUxydnZHS2RneFMrcVFYMW11SUtH?=
 =?utf-8?B?Q0ZUNGZMZlFTZ1NhZEZ6ZUk2K28rODA1anU4dXh1cTRIblBXc0JKeHdadXYy?=
 =?utf-8?B?Q3dwa0RJMEtDUTBJc05KcmZRYnZ2V1VuajJYaHhsT2M2Mlh2NlJuTUlTZ0Fv?=
 =?utf-8?B?MSsrcVZ0OGpjRWlNc2NTNnVvU3lSNEJrQWVhQjJGREx4YlB2M1JSbFFyOC8y?=
 =?utf-8?B?TzhvUml2dmx3Nzd5d01CVUM3VWNNU09rWnEyZWZXVklUNGNwUXZBWWMzbm5m?=
 =?utf-8?B?aUJTYzdxNkN4bGF1ZXlsVVdVM1pRR1lmTWlJSkYwOVJDNnNhRXFOWEtFK0Q4?=
 =?utf-8?B?dzNWMHQ1Wjh5eWJVUnNPZHdZSzV5ZTdxTjhXWnB0M3lwVkMzN0xaak9WRzBp?=
 =?utf-8?B?cXNxejBDeS8vRVpPbmt6Y1h1Ny9WZ1VlakNkdzU1U1E2bHBidTMyMHI3c3Rt?=
 =?utf-8?B?NG9uUjdzUnR3T1ArNk4yVys0aUd1bElqMEVzWmlmSXhiSEcwaW5SbVo2U2RI?=
 =?utf-8?B?SUdhb2JZMzBFTnpNcWY5ak8zY3lmMVhaSHcrYW8zbTZSVE5va0U5cVI2OGE5?=
 =?utf-8?B?azBaSHBFRnZ5UDlqZ2Y1ZEkzVXpSYTNpWVU2eGt4MmtQQ25ER2JEdXMrcDVS?=
 =?utf-8?B?YTRpV01lTkpKV1ozSk1zNjBJNGpQN2RFNzJiRkRYRFFoY2pBUWJoQVBubnlF?=
 =?utf-8?B?YjJNbi9XZzlacElzd1dsVVJnVEMzUEtDMjI3WStFMGxuMlZqREI1dEQ4YURY?=
 =?utf-8?B?Rzh0akd1TmpqNVphdHdJRkZkQnB5OUNmb3pjbWRzWnM3ZG5mcFFlWVpBdGhQ?=
 =?utf-8?B?OHp4STdRRGU0Sjd6R25JZEpCUTlqbkx3dGEvM1NwTGVuby80eHlmMkdxWTBj?=
 =?utf-8?B?QTVjaWs2SjlIaUh3aVhoQ3dtbDd4L2tJOGFxcm9mWnhHS21SL1oxMEQ1Y3Bm?=
 =?utf-8?B?Mi9KK2k1NzE2Sll4eVhJc3J4cEtEOXg5d1FyRXE0OExYbFo2ZHpPWlR5Syt2?=
 =?utf-8?B?TEZQblVrcHc1b1RlNlgwTE1pM0Q3c3FDOVVld2NabWplNzN1OS9Lak1tY0dT?=
 =?utf-8?Q?Z6HdWN8ARiA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7605.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SzM1d3R4ZkVSY3BiZE5rd3V3VGlDWU4yVWFlZ1pjdnNkL09iQTcyWFpwQmgz?=
 =?utf-8?B?aWs2U1VnMmVpMElkc3A5MUoveFNWaFNKTFYxQzIyL050WlpvejZJU0lTYjk4?=
 =?utf-8?B?S0lEU0VCV1Q2WFNWemxtRzVQa21pcGJzNlhieTdNWVdqYU1lMGNleVBHdFVr?=
 =?utf-8?B?N3hvZU41TDdieFovK0NoSUNTUzdQN011OGJEdDdkRGdKMFdlVkdRTDhBZkVi?=
 =?utf-8?B?aXh4MHAvcEo5aWpGOXpjTXdvTlN5b2pMaENQK1FqTGNRTzVRVHBWNVRZeUc1?=
 =?utf-8?B?enpnSFVCUytacWR5YndJQjV0VmI4ZXQ1bEZpQzV3QVFkVnZ0MVhFNGlHSVgx?=
 =?utf-8?B?Tnhob3lESlNsZGlWSDFhOSthYnBMQUcxMXNWOEtrUklNaGZZeGlKUWR0bSsx?=
 =?utf-8?B?b005VG5rejdLM0RuaWl6cWdhRWR4ck9RRDdmNktDM2hGYVFrZC8rM3BoYTVZ?=
 =?utf-8?B?TDdZK3FKZk5wU0EvZUF1MEZocHZ1TE8yQ0N2MzVNdG9wUENXdEFKN3RKQlRq?=
 =?utf-8?B?TEhqSUpGVWxyYWNZQkxTeTRQNnBDRkNiZEJrcEtaYmQyVUNOeTNWNG10WVBz?=
 =?utf-8?B?UUEzMURvRGZsZEEyMEZBTVZ1aVNKTVFvcUQ4RE9mZXk0Z2hnRUtnRjlLKzZz?=
 =?utf-8?B?M2VSRy9ZYTBtYUpMN2RwRFN6NVBxTTJSVTN2R3pVRDVUU0lscjBQR1BEdk4v?=
 =?utf-8?B?cG0xYWxiOUZIcHJNd3hnU2IvVVpNVzErT3FBUFUwcVVhR3lSSTB2NXFsQkNZ?=
 =?utf-8?B?bllKRXNZOGZnOSt4Rkh4OEtKWW1sVTk4VjFFcVk3T1RmRnQvUFdhZzZ0YzhG?=
 =?utf-8?B?NWNRcGI1VUQ5OHRFZmJNUGw4WkF5NjZoMTIyUW1pbmhiclc1MDc3ODloUlNk?=
 =?utf-8?B?Rmp6SmVNZWRDZTdUNjFCWjlvampwU0lzRXUwc3RnbEJnSmdqRFk5WjMwdDZ5?=
 =?utf-8?B?ZUZTQlcxaGZadkVjWWlGSGdFNmVlNXdIQm1WOC92eHVLOVU3MC9EYUtSNTQy?=
 =?utf-8?B?TWx0dmxqWE5iZ3gwRVdYKys2dmMyN0paMjQxM3pjSHFPWS9HWFlBWEJneW9S?=
 =?utf-8?B?czNWOTNkc1YrKy9KNy9VTmJSZUdjNjZxc2ovcnR1TU5GVldKenlhNE13RndY?=
 =?utf-8?B?dFIxTkthRThUdmRheEgrWlhUcnJvVDYxaGhwb2xpa2w1K2xGWk1ydEZrSUwy?=
 =?utf-8?B?STE5QXdTdHpPM2FteDI0Y0Q0MnBkd1ZqRTJHcWVyNW50RCt3OEd0cm4veTBa?=
 =?utf-8?B?dEdEVWR6NGJWbnV4N3hpbnBWSlk1Q1RRMHI1Y3Q4SzVoT1hYK09wUUlmbTVB?=
 =?utf-8?B?d0NldzhaZC80MVFMalhaMnZLeVhERXRlczZQQ3BXMVZQVExYc2JNMGxDdVBL?=
 =?utf-8?B?aFpTTWM5SXdWU04vYmI4SmxCZ2pCR3JWeWpGNjBnc0IvS25zQmIyd3YybXg1?=
 =?utf-8?B?YzZtUmRsbzJoVE1OZmhWMnhzQ2Q3NmJSQzhGR0lia1FDOHh1S003NXkzeW5Q?=
 =?utf-8?B?ZHovMEZFb3BMRUs0eFRKOXg2L2RpL084LzdUUm9GaG93K2ZDZTNPZkk4aXY5?=
 =?utf-8?B?ZWlaVXRMeUdXRkZnUE1Ec2xmQloxcFlYQWxkdzQ5WEVmUmo3Mm95WFRhaFpZ?=
 =?utf-8?B?c1NnNTJCM2x1OGMwelVqNnc5dEpicmo1aDRjWittSmFFbVU1cGFnS0IxanBN?=
 =?utf-8?B?RkZWNEZPdXVmVmtTQjU3T1lXODJKUC9UZDhlZ2h4cnh4VVRKbTkzdWNPNGJM?=
 =?utf-8?B?bzU3ZG5kYmc3OGRYTHRWM2pKaFlBdGhKbHFCSmxNYWNEUVViWnZHVWkyM0M5?=
 =?utf-8?B?NlFDMzlLL28wNGdqSGJSM0JsRXBHa1hUV3E1UnpVMU9pOVc0RmNkRTJHTzNu?=
 =?utf-8?B?NERadENZdXY5L285TEwxM0NSVnBWeGNhYTQ4MmJrR2pZQ2R0SnBvM3Y5c0RZ?=
 =?utf-8?B?R1pIN3hkd1B5SDUzVGJBanZ4dGpIakEwRURmVW4wdDF1emh1RjZFaDRKSzVB?=
 =?utf-8?B?eTRUYWpyaklZeVVoOFc5NCtrU3h0Yldma281aXZoZUNlYldVK0UyVHAwOFps?=
 =?utf-8?B?L2h5eFA4ODZKVDA1WVFxUW8zTkRONkx3N28zcWVRdWpLbVRrWjlTNnhJVkZr?=
 =?utf-8?B?bTlYQnVhQXJVQ3NKSldqZWExd0dmWEJMVmxObndLS1VJRFBMdDRaYkM3ekFk?=
 =?utf-8?B?eWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 576bf8a1-3f71-40bc-df88-08ddf20c5b16
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7605.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2025 14:55:03.9898 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1rt1gal/tXfl0aM4zMvpgVE6enWt1dfXVddoUO/Cfcz91oAaEUoegWiJ8iJq9ooCDzzcEUisUzYpa73eWx5GTX+xea/0TGmS0MApt1LcNE8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8402
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



On 9/12/2025 6:44 AM, Greg Kroah-Hartman wrote:
> On Thu, Sep 11, 2025 at 10:50:23AM -0700, Daniele Ceraolo Spurio wrote:
>> The intel GFX drivers (i915/xe) interface with the ME device for some of
>> their features (e.g. PXP, HDCP) via the component interface. Given that
>> the ME device can be hidden by BIOS/Coreboot, the GFX drivers need a
>> way to check if the device is available before attempting to bind the
>> component, otherwise they'll go ahead and initialize features that will
>> never work.
>> The simplest way to check if the device is available is to check the
>> available devices against the PCI ID list of the mei_me driver. To avoid
>> duplication, this patch adds an exported function that the GFX driver
>> can call to obtain the list. Locking around the checks, if required,
>> is left to the caller.
>>
>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> Cc: Alexander Usyskin <alexander.usyskin@intel.com>
>> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>> ---
>>   drivers/misc/mei/pci-me.c | 22 ++++++++++++++++++++++
>>   include/linux/mei_me.h    | 20 ++++++++++++++++++++
>>   2 files changed, 42 insertions(+)
>>   create mode 100644 include/linux/mei_me.h
>>
>> diff --git a/drivers/misc/mei/pci-me.c b/drivers/misc/mei/pci-me.c
>> index 3f9c60b579ae..147e79b4ae1f 100644
>> --- a/drivers/misc/mei/pci-me.c
>> +++ b/drivers/misc/mei/pci-me.c
>> @@ -18,6 +18,7 @@
>>   #include <linux/pm_runtime.h>
>>   
>>   #include <linux/mei.h>
>> +#include <linux/mei_me.h>
>>   
>>   #include "mei_dev.h"
>>   #include "client.h"
>> @@ -133,6 +134,27 @@ static const struct pci_device_id mei_me_pci_tbl[] = {
>>   
>>   MODULE_DEVICE_TABLE(pci, mei_me_pci_tbl);
>>   
>> +/**
>> + * mei_me_get_device_id_table - get the list of ME pci device IDs
>> + *
>> + * Other drivers (e.g., i915, xe) interface with the ME device for some of their
>> + * features (e.g., PXP, HDCP). However, the ME device can be unplugged via the
>> + * pci subsystem or hidden by BIOS/coreboot, so those drivers might want to
>> + * check if the device is available before initializing those features. This
>> + * function offers a way for those drivers to get the list of ME device IDs,
>> + * so they can check if one of them is available before attempting to
>> + * interface with it. Locking around the availability check, if required,
>> + * is left to the caller.
>> + *
>> + * Return: An array of struct pci_device_id entries containing the IDs of
>> + * the ME devices.
>> + */
>> +const struct pci_device_id *mei_me_get_device_id_table(void)
>> +{
>> +	return mei_me_pci_tbl;
>> +}
>> +EXPORT_SYMBOL_GPL(mei_me_get_device_id_table);
> Why not just do:
>
> 	EXPORT_SYMBOL_GPL(mei_me_pci_tbl);
>
> instead?
>
> Much simpler :)

Good point! :P
I'll update.

Thanks,
Daniele

>
> thanks,
>
> greg k-h

