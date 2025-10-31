Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB853C24B2A
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 12:08:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B67710EB58;
	Fri, 31 Oct 2025 11:08:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T8v+39xZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 740B710EBC5;
 Fri, 31 Oct 2025 11:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761908880; x=1793444880;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gi4Rbs4EGCqyfSpUVhAudiHGRrSiGVclzHbmwcsTFgQ=;
 b=T8v+39xZWs711vL7bTa0sgpBpxcZleoEk1NEIY8BfEFSZofHtzNLvJ15
 IiUn9qwrjUmB9Vosc74oQmdCnzQ1H//5hvHwIzQuPQpg8V8yRNYqAr0hx
 vIXwpiZHGwsfmGjYIBn9kewCmPRouDzrUty0M3Hrl9G5uWssUucSnGRBI
 zRyRvK2maNz5XwSnePRcutdEBTmePj346YsM0Uwpg15YomYcTtS1aHiQx
 9k2ShgRA3hr3FLeKKqZdCoypNWFgQhDuumsLMvgpz5S7NtGACGrbZ7f7a
 jVRNKrc+3lUigGBbxZcZxTremPcJCUfKgh6G6oMRJVnNrZ6I4wg9/eOg5 A==;
X-CSE-ConnectionGUID: Whd8xQMuSRCtT3Xge5xYdA==
X-CSE-MsgGUID: ovQcUyJGT7q8k2RdFA7R4w==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="64166878"
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="64166878"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 04:07:59 -0700
X-CSE-ConnectionGUID: mibEET/PQjajZ8HB0vYJXA==
X-CSE-MsgGUID: DsMHSYCiSHqWKM5ZQlPyMg==
X-ExtLoop1: 1
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 04:07:59 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 31 Oct 2025 04:07:58 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 31 Oct 2025 04:07:58 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.16) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 31 Oct 2025 04:07:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KhWDP/n8eO6ORIqyLZSXPGRs67z7WqV9Qw0fRvqyEJ+KByBUi7y5ojlVsJtlfV5cCojKkoSbZPwVwbcX4imy1jpXWE5FrWcc8t4+L0TDkfOcJ/sk6uBYr79OdZcuGMD2HP4d5SIYChN+GriGYN+y8J1IcmEMfEX4RFUh3bfgx5k6mZHARqgcJpbm4huqhTpTBCmbPXwyaGzNLoZpzypZHwfJRllFMERgwVMO2pdpNqW05Z7WcyhMCeAMCxxuYlcxIwHmmRy0EtIaTqV4VkiceGI9G8+XaYSkDTkclB9BXB2ZdyUEVawDYuplUfg178hNdqzYlNij3dGdgJLzR6eNWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IjHQnxyKJenX9MyTRJCvc7a9yvkkhglQoLXQSN68CIk=;
 b=NlnXdP+jgmbw1hyN2js4krudcgffkCkfZ6njunYAZ7/1A/69I8FFfBEGGNtyVEtLOojGR0JR9UK/uYX8zTSAoPq4VtX3mLe47dch7fh5sFVhnXxzQoTJIlb1DMz7L9gY8+eOPHvFj4qNJ6tFb7ZY1geSaIyXK8fOv9EZHssohc9tFrl7NiHgGGljUPLN2XjKXKhU+O62khFn/+7Qvf3W8afNY38b5paP82nneYGiBu3fzsVHVWXzezrBF7Fm/yV2nR6ShBAyBpcXLwSHkgksRnn0St+iDBnoT/LUeMmVyHSykc1DfixAk5olOLm4MEnBTFjfDUhHI0GwNx8NwUzO/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH0PR11MB8234.namprd11.prod.outlook.com (2603:10b6:610:190::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.14; Fri, 31 Oct
 2025 11:07:52 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.013; Fri, 31 Oct 2025
 11:07:52 +0000
Message-ID: <c7dc209b-58ce-4101-bc7e-47318a8a45af@intel.com>
Date: Fri, 31 Oct 2025 16:37:44 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 12/25] drm/i915/ltphy: Add function to calculate LT PHY
 port clock
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <arun.r.murthy@intel.com>, <uma.shankar@intel.com>,
 <gustavo.sousa@intel.com>, <lucas.demarchi@intel.com>, Nemesa Garg
 <nemesa.garg@intel.com>
References: <20251031103643.4147868-1-suraj.kandpal@intel.com>
 <20251031103643.4147868-13-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251031103643.4147868-13-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MAXP287CA0015.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:49::27) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH0PR11MB8234:EE_
X-MS-Office365-Filtering-Correlation-Id: 2e5b6366-5d2a-42a1-14dc-08de186dbbdb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UFBEZGRmTlJXYWJIS0RzSDFheWtaMVVOeTlpclgxSkNmampaRWJjelhXb0Y3?=
 =?utf-8?B?U3kxKzFKbEx1Zytvb0JENE51Z3d3VkRkZVJYVTRjdEhyajNTSk9XRDNmeW9P?=
 =?utf-8?B?WHFsTWZzeHJJci94RHRhV2xXVzJ5MGgxUXhuTGM2SCt1Mk5uSzMvV3A1d2hP?=
 =?utf-8?B?UHFzcEord1QvalFmWXA5QzhTY25Zc0Y3TE9ZWUFIZmRZT1FmVlZVcTFGOS9U?=
 =?utf-8?B?UyttSVkvNGlMWWJwSGdOMk5RSGZObTFlRkJZTnpaNjBmaU9DcmRVWWR3QUJG?=
 =?utf-8?B?a3NqZnkveXlLWXkva2g1T05DWmljVmdDQkN6MldtelBjcjBsalVLcFBmZW1n?=
 =?utf-8?B?ckp3eHdZWmFyV0JjbGh4M0h1THVMR2JmZ2xWU3hZV1VXVldFUHIxckpscEhj?=
 =?utf-8?B?OCtmZkw2R1V2cWY2S1BzTG4zZVBsOHBRUW03cXFidzRRVTVXdUw2d3RTdEts?=
 =?utf-8?B?MzJpMHMxU1VMaTVkUThGa1Bnb2Z1WnhpNWhtRUcwempLTU1vWWsrcHkrYUZo?=
 =?utf-8?B?NmNVU1BlckJsYU5qeW1UZTJwOWNoaWJ6ZWRmTzZMQkQ4NmM3ZDI5YStNUzND?=
 =?utf-8?B?bnlXT3I5MzNONVY3aGZYWXhRRzAyTHpaWVNxa2luS2tueFlKTkg4S0s5K0hu?=
 =?utf-8?B?b0NLNFJ2M2FyOG1zTDRQaWRVcVZuRVl4OEp2T0luTm1aZmt5RlpBQkQ0NjVF?=
 =?utf-8?B?K3BmWElUUFhYVE9iRnJVQmdoZ0lWc3ByY050QXdWQlg1NDhKa3VXdTZBTDh4?=
 =?utf-8?B?SFdvVFFyZ1NnTEtpa3k1WnlxQ1pkUml5L2FXSmlaV1hEYVBvVFNmVHhteHFn?=
 =?utf-8?B?TnlNTnFXWDdpWW91MmM1VjIvdmZMMUg4eXhxRXhmbnp3STdBbFhNdm5HR3Mr?=
 =?utf-8?B?a2gvZlJZQXNiOFdIaUF5cGtaeEt4OEJlNkd4b1MxMStwUzl2b1pTT2FzQ1hv?=
 =?utf-8?B?RllIckt6TjBCM2FmTDJJM3h5N2NDeXpHUDRBUTlXV21MMGJHOXNCVmdDcFcr?=
 =?utf-8?B?cTh3MHBJVkhMWUJRdDFQSE5BWmc2eDZnekJZZDhVckJoVzNlbTgvTTBBTFdZ?=
 =?utf-8?B?alEyK01GVEdsYUVTTmlpUmN1bWxmQkVaS2o5Z1AvUmY3Uk1tWjNoYURZN2hh?=
 =?utf-8?B?R3A0UUxBVC9pbzdxVm9BQkZYR2V2QTVxZWZDZytRakRIcXFEU1lRcGFPYkZ5?=
 =?utf-8?B?bDMxZWF3RjFHcmZKU241NTA2M2NDM0QrN0hBZHBTWmtWbFZqcldMa01CbUth?=
 =?utf-8?B?NmVhYm9rQS9XSFBaakFSbHoxUEFnOVRlL0YwbGpGcGJSSGJxeENlZG56VUsv?=
 =?utf-8?B?SlVCdDNDSjlTYkFqU2piV094Y3NsaXNrdUw5QlllYkpGWkpvaDBkOGh2NXlE?=
 =?utf-8?B?K1VRV25LUTNmUmlXMDRYZktwYS8vNngybktxK1BzMXFXb1YvUDJwRUY0aFQ5?=
 =?utf-8?B?eDdmWTJEMFdBK3VzSFVVVTUwV3hiR1RoYWhvbHJlc0ZEZHNVZVRzQlpoUkFu?=
 =?utf-8?B?a0didkhsVTlnWlhCeUd1OEFJMUI0YkgrVkFiZ3ZNS2l0M2t2ZEdVN1p5ZC9C?=
 =?utf-8?B?K25EcXdFSm5XWWdtbkNEUUNyQnNMTVhFVDRwZTNzcnUrSnVtdjlQRE9kSyt6?=
 =?utf-8?B?U2NORFdOZTlxR05JN2JKeWtOM0laV1ZmMzM5YnQ1ODRMdFNGaGRTQjBoS3ho?=
 =?utf-8?B?cFRseTB3NFp6QkpiNnA3WUZMckkwWnNqQmlGeE0zLzc4U0tBT3RXT3orZmtt?=
 =?utf-8?B?bFVrOEI0b3BTOXBQL0ZGeThYWW1JOGdGVUNoZU12emNHUFlXbldYR3laTEFl?=
 =?utf-8?B?alpSb2tic0QxZlBqMFZVc2lnM1ZaOUVBK0FyKzcyY2s1b01kK0xHZlJSZmJq?=
 =?utf-8?B?eEQxdm9zUmlUdTNoNnQ0OXdjMGRMYm5ScS92VDNja0UwdE1yL3VkcUtJeHY5?=
 =?utf-8?Q?hsaVTfWmfnL+GCmFB8RXyZHv5mnvx9E/?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TlFHNDlucFlLZzRabXkwNlFHSUZQOHVROGxTMnRHSVNhdXJzYWUrUUFvTHNu?=
 =?utf-8?B?RHB2L2gvZHo1WVlrZWVrWHREQzAxL3d0SjgydmFrNUFXdXpmeWFoZnh2V2hZ?=
 =?utf-8?B?NzhrazhPTjcxQUhjS1cwWnlmVGM0aUs0NFhwbjRiQVFOOTJHOWdMUXpGMDJ4?=
 =?utf-8?B?eG9LRHV6UEl2NzB2YU9lTUpwOTFzTlZ2bDk4L28yVVJxMzcxMUpSN1NYTWFv?=
 =?utf-8?B?cjBNWFF2SktraFJ5dDN2T1EzZWtNSFBFcFVvamZjdFpuZ241N3hGMnNOd09h?=
 =?utf-8?B?N2JFcVRvVzg5ZlJqdjByTEVEcks4NDNrTktSM0xkbkhoYW56RkVlZncwOWNY?=
 =?utf-8?B?T2QrcXZIR3lhT0cwbHNmYzEvYjkzd1ZxUDdmbXE0WktQd1ZORmhoY3ZTejU2?=
 =?utf-8?B?cGZ2SWhyMFJaVFhMSFoyWHJOQzZ0MCsxenA4M3c1VWNZNVd3YXY0OU5QWlpM?=
 =?utf-8?B?bzc1dVlHVlhCcC9WWXpDbUZ6d0cyZzh0aWZMblIzMEdJT1NLNDhIOXdkTi9K?=
 =?utf-8?B?eUowV1daVkhlKy93K1RLTndhWnVxa3VoaURWMUx4NVVLOGpoSjlZYnNiRnAv?=
 =?utf-8?B?bWgwbDJ3SHc4Z2Z3Z01lTmtUckFIc05PSXZYb2w5N1gzM0w2cm51eUNteGQy?=
 =?utf-8?B?UjhMbzUvVFFVU0NsMlRmUTUvOXNqZXhOeThWa3Rrb0QvZjFtZWtVMVZDTEJp?=
 =?utf-8?B?cGxkUkxOYzhUWEt4QU5qN3JiL29VQkhIT0RzS2E3WmwydnFlOFZtSkxBWG81?=
 =?utf-8?B?MWV1VzZ2UmpVRkljVm4vNjNSUDRYZkJVU1FIRmVlWlZibWVUc255ZlBZQVVK?=
 =?utf-8?B?YlpQaThBSFRBWGZYZkkzK1BhR0NpUGo3dWJRQ2tnamN1S1JiL1NXMnU5ZTFK?=
 =?utf-8?B?amJQUG5Mc1g3VWIvakVVY0htOUtiVXBNZVdNNytlaWRxZ1EwajlnVFFldWtS?=
 =?utf-8?B?c2hIVUI4dEhZVmkrYS9SemtvdC8vcmsrRXJiV2d5S2pVbHlacE9lZUV4UlBJ?=
 =?utf-8?B?a2p6RER0aGlHN3QrcWZjaE9QNjlVWGc2dmVUWDYvWm52ZnNQNkIzWEdMOWMx?=
 =?utf-8?B?QktqVXVQOFY3WHR6WnhCRnpTRkplSU5Xb3h1R1FXck9kcDR2cVFqUXBpS1pG?=
 =?utf-8?B?am5NMmJCQ1gyWVROclJPWFJyd1lTM2ZWd29QYk02dlBNcXVUU2x0d3gvNzZY?=
 =?utf-8?B?elkrU0JYVGxGc1RwM2ZtN3FkajJ6ZUhXcm1Mby9WTU00R3VnM3RTTCtJbWxl?=
 =?utf-8?B?eTdoNmdUa3BQUkR2YmJmcTBlT0xSUmhUL2loU085VzVFeUp0TTh0M2tKSXBa?=
 =?utf-8?B?SEdtdmJ3NXNYQW5JMmhLM250UG9QbklkcmUzbXJPSTN6SEJKbGpRdy9NYitj?=
 =?utf-8?B?cVErWjIzMjRlNk1naU83UFR2OUlsRzRIcHgwL1VxMktPdzFxelpkT0dVdytZ?=
 =?utf-8?B?SkFHWUR5aEN3ZTZCVEpPNit4TnNBNzZFK2Y1TVJyQkZSZmY3QWhpOWFtR1BP?=
 =?utf-8?B?N2JBWHVzWW9adGlQajMvVVpUZ2xxOURTMWNsWGF2U2JCWithOTdER09kTWNT?=
 =?utf-8?B?SURjeGltRDBGTjRTaEV1Z1VoaXFodVBNd3JnL2NqdkpUUUJ6NEJMNnQ1ZzFj?=
 =?utf-8?B?YTVjTUF5bkdBY05kR3JqWExtM2ROTG1iT1JpYThibXc0UmRXRWtGVUtTZlNw?=
 =?utf-8?B?YnJJSzMvMFd1RFBmaVEreDdKVklrcVdhZk5Vc1NNaTA0OTFjbFZnc0NNUG1y?=
 =?utf-8?B?VjNpRExUOXpUdjgrdmlVSS9RaThSOGJRY0xiYjFKdk1WelhkK3IzZzc5UHdi?=
 =?utf-8?B?KzEybVczMllkOW1wMHJZd1ZFVm0xOW9hUzdsM1poMGNhZXh4Mk5KU2hLVk5j?=
 =?utf-8?B?ZkwwQnFkVUI1VlZkOWdrWFlRcVZabThZeUx5ZnlJQkl4clN1SmwyK1pqQXZ0?=
 =?utf-8?B?ZGhEc1ZMQWxnZURtUnl1c3dTcUxXUU5Fb2tCMGY3ZzArNHpRV05TSFRtYmp3?=
 =?utf-8?B?Uy9lQjdLL1dlR0lvMXJSdmcxQWxqaGUzWVdVZ0xuUUtrQTU1cWpjN3BzVlJ0?=
 =?utf-8?B?cmhmZW51Z2VqMU5qWFlLUjVUekhOcjZMQitWSUFhYkc4M1JRYW1Dalo1ODlN?=
 =?utf-8?B?WXpZejB4ekhDWStIcnJFcFYwTURFVGJITmtsYldGOFhLeGtRaS9XNmcyRlJE?=
 =?utf-8?B?cHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e5b6366-5d2a-42a1-14dc-08de186dbbdb
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Oct 2025 11:07:51.9493 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kNmnAeNMPLeQyQ+loR359314hPOF5n1hB9cGd6IAlt9+Y/cm0YLzNhjmBvEGarza1qTKXLBljlqoMUyGEZAJdbjmfJj2ABeu938uiR7n1vo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8234
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


On 10/31/2025 4:06 PM, Suraj Kandpal wrote:
> Create a reverse algorithm which is used to find port clock
> from the LT PHY state is provided which is used for
> comparision & verification functions.
>
> Bspec: 74667
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>
> V1 -> V2:
> -Correct comment grammar
>
> V2 -> V3:
> -Update commit mesage (Ankit)
> -Update & add a more refined comment (Ankit)
>
>   drivers/gpu/drm/i915/display/intel_dpll.c   |  2 +
>   drivers/gpu/drm/i915/display/intel_lt_phy.c | 89 +++++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_lt_phy.h |  3 +
>   3 files changed, 94 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
> index 8c3ef5867a12..2e1f67be8eda 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -1247,6 +1247,8 @@ static int xe3plpd_crtc_compute_clock(struct intel_atomic_state *state,
>   		return ret;
>   
>   	/* TODO: Do the readback via intel_compute_shared_dplls() */
> +	crtc_state->port_clock =
> +			intel_lt_phy_calc_port_clock(encoder, crtc_state);
>   
>   	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 1b7d92fff834..22c0ee91d23f 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -1235,6 +1235,95 @@ intel_lt_phy_pll_is_ssc_enabled(struct intel_crtc_state *crtc_state,
>   	return false;
>   }
>   
> +static int
> +intel_lt_phy_calc_hdmi_port_clock(const struct intel_lt_phy_pll_state *lt_state)
> +{
> +#define REF_CLK_KHZ 38400
> +#define REGVAL(i) (				\
> +	(lt_state->data[i][3])		|	\
> +	(lt_state->data[i][2] << 8)	|	\
> +	(lt_state->data[i][1] << 16)	|	\
> +	(lt_state->data[i][0] << 24)		\
> +)
> +
> +	int clk = 0;
> +	u32 d8, pll_reg_5, pll_reg_3, pll_reg_57, m2div_frac, m2div_int;
> +	u64 temp0, temp1;
> +	/*
> +	 * The algorithm uses '+' to combine bitfields when
> +	 * constructing PLL_reg3 and PLL_reg57:
> +	 * PLL_reg57 = (D7 << 24) + (postdiv << 15) + (D8 << 7) + D6_new;
> +	 * PLL_reg3 = (D4 << 21) + (D3 << 18) + (D1 << 15) + (m2div_int << 5);
A line here will make it easier to read.
> +	 * However, this is likely intended to be a bitwise OR operation,
> +	 * as each field occupies distinct, non-overlapping bits in the register.
Ditto
> +	 * PLL_reg57 is composed of following fields packed into a 32-bit value:
> +	 * - D7: max value 10 -> fits in 4 bits -> placed at bits 24-27
> +	 * - postdiv: max value 9 -> fits in 4 bits -> placed at bits 15-18
> +	 * - D8: derived from loop_cnt / 2, max 127 -> fits in 7 bits
> +	 *	(though 8 bits are given to it) -> placed at bits 7-14
> +	 * - D6_new: fits in lower 7 bits -> placed at bits 0-6
> +	 * PLL_reg57 = (D7 << 24) | (postdiv << 15) | (D8 << 7) | D6_new;

Ditto.

Otherwise LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> +	 * Similarly, PLL_reg3 is packed as:
> +	 * - D4: max value 256 -> fits in 9 bits -> placed at bits 21-29
> +	 * - D3: max value 9 -> fits in 4 bits -> placed at bits 18-21
> +	 * - D1: max value 2 -> fits in 2 bits -> placed at bits 15-16
> +	 * - m2div_int: max value 511 -> fits in 9 bits (10 bits allocated)
> +	 *   -> placed at bits 5-14
> +	 * PLL_reg3 = (D4 << 21) | (D3 << 18) | (D1 << 15) | (m2div_int << 5);
> +	 */
> +	pll_reg_5 = REGVAL(2);
> +	pll_reg_3 = REGVAL(1);
> +	pll_reg_57 = REGVAL(3);
> +	m2div_frac = pll_reg_5;
> +
> +	/*
> +	 * From forward algorithm we know
> +	 * m2div = 2 * m2
> +	 * val = y * frequency * 5
> +	 * So now,
> +	 * frequency = (m2 * 2 * refclk_khz / (d8 * 10))
> +	 * frequency = (m2div * refclk_khz / (d8 * 10))
> +	 */
> +	d8 = (pll_reg_57 & REG_GENMASK(14, 7)) >> 7;
> +	m2div_int = (pll_reg_3  & REG_GENMASK(14, 5)) >> 5;
> +	temp0 = ((u64)m2div_frac * REF_CLK_KHZ) >> 32;
> +	temp1 = (u64)m2div_int * REF_CLK_KHZ;
> +	if (d8 == 0)
> +		return 0;
> +
> +	clk = div_u64((temp1 + temp0), d8 * 10);
> +
> +	return clk;
> +}
> +
> +int
> +intel_lt_phy_calc_port_clock(struct intel_encoder *encoder,
> +			     const struct intel_crtc_state *crtc_state)
> +{
> +	int clk;
> +	const struct intel_lt_phy_pll_state *lt_state =
> +		&crtc_state->dpll_hw_state.ltpll;
> +	u8 mode, rate;
> +
> +	mode = REG_FIELD_GET8(LT_PHY_VDR_MODE_ENCODING_MASK,
> +			      lt_state->config[0]);
> +	/*
> +	 * For edp/dp read the clock value from the tables
> +	 * and return the clock as the algorithm used for
> +	 * calculating the port clock does not exactly matches
> +	 * with edp/dp clock.
> +	 */
> +	if (mode == MODE_DP) {
> +		rate = REG_FIELD_GET8(LT_PHY_VDR_RATE_ENCODING_MASK,
> +				      lt_state->config[0]);
> +		clk = intel_lt_phy_get_dp_clock(rate);
> +	} else {
> +		clk = intel_lt_phy_calc_hdmi_port_clock(lt_state);
> +	}
> +
> +	return clk;
> +}
> +
>   int
>   intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
>   			    struct intel_encoder *encoder)
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> index 3f255c9b0f96..5b4e0d9c940f 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> @@ -10,12 +10,15 @@
>   
>   struct intel_encoder;
>   struct intel_crtc_state;
> +struct intel_lt_phy_pll_state;
>   
>   void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
>   			     const struct intel_crtc_state *crtc_state);
>   int
>   intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
>   			    struct intel_encoder *encoder);
> +int intel_lt_phy_calc_port_clock(struct intel_encoder *encoder,
> +				 const struct intel_crtc_state *crtc_state);
>   
>   #define HAS_LT_PHY(display) (DISPLAY_VER(display) >= 35)
>   
