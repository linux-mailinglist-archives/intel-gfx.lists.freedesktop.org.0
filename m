Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72FD8AE5B8B
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jun 2025 06:41:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 066F610E13A;
	Tue, 24 Jun 2025 04:41:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="exCP0zAi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B18C10E009;
 Tue, 24 Jun 2025 04:41:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750740093; x=1782276093;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+i4gCF76AtqukIzCF/+S8lDyP0TbARj2jGTDjab5xbA=;
 b=exCP0zAim0J5V6xu/ZGw7dfpqztoSFt/zYykRsstc7Em7iNoXZMAOTWk
 6ipKLAfIMRqvfPl1xTgvsr9TbmMmFgBScgZm88BKIU4tXCyNLmZAV1YHb
 GGRb3fP48Xo3Mpeo7lkvBQidoPeOKK766s1cRCMXTfxz1uBjapsiOkF5s
 3KfGZdDcsohIocow1oweD9VxQou9ZVcRIbltvy0LLXVKJGcNdA0JlEGv9
 IVeo15ttQQL5WV7r5WpWPjGWr9wKoHbAcmJwS6gosHnHA74nPMSQsn2SM
 QO+v2tOPv60Z5GmEW+krwl102FJe1jwYgbBP0ojvKHwFGRhp9zQNj0Cjm w==;
X-CSE-ConnectionGUID: h7moRKTPSqaqXxl/DMntMA==
X-CSE-MsgGUID: rI+acnLRSs6UOnU12atWVQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="56768845"
X-IronPort-AV: E=Sophos;i="6.16,260,1744095600"; d="scan'208";a="56768845"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 21:41:33 -0700
X-CSE-ConnectionGUID: WWcMKDt/QVuQowl0D46xIw==
X-CSE-MsgGUID: PctShQUITmGQNluul5BZHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,260,1744095600"; d="scan'208";a="151281011"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 21:41:33 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 23 Jun 2025 21:41:32 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 23 Jun 2025 21:41:32 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.56)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 23 Jun 2025 21:41:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ov7n0aS27swOth5spwEdLB3rcJR1nT2cvmqRYl+WBGLSzDeabGHGawr9kvua2dtsLoXgu7Q5Pt4qTMpxLnk/rxzm9Hij0HZpjUdHhFLZpxEQTO1yfu6+AUceZuutDdrY/v24f/yvZ5AF84PbDRcxAPlQtOUYP3QQM/l6qjX7JPIjLZjq+nmrbUuKTbypRl4ddsq/wkf6ZSd9KIafBs7OsMH64PR2Wo3S2IUq2GG1c6VA0sSyrx+mSnqfWGLBeayeQa/ZHngBWXFsbUHMk1Gu5mhkYZgZU8yuVWewccNGV7x9oWtl4lxf9aUL/Q2CPr6Jn9K0RbiydCDBkxlZz5BZZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DCmPU8JI2JGN4wcPLCSF8oDsjAevIRYVAfo0p93hw/g=;
 b=xB3ZWaV7igdk/jVwL01p2+3bBvwKqP1T5VRHRe+yQhzIbhKqvNtocs5jgsNdkHj7uf9Mdv7LL8Ek2orUzPLM/gLyFFOQmHfJTUjBp2U3O0ZAjQysAGciq7eUHgtULqLUbpa1nS1TCayv1j0IbrDmXs7sw0t8veXe+FAe4ajzRDhUAG9LeWa8AfuD3PDEC7GkacxTTvfvvDa6vRZa3btfjzrjiuE5l6//3KsCf+NFhYxcgnjlhLIyI/Klf+Crg1umQPSINVARfMYzDPgDEJau55lc64uOTYfNSHJFr2U8ET9Cosjsoui+75GjEhsEeKNxAyr0GRtJASzwLetqia42Dw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB4822.namprd11.prod.outlook.com (2603:10b6:510:39::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.28; Tue, 24 Jun
 2025 04:41:01 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8880.015; Tue, 24 Jun 2025
 04:41:01 +0000
Message-ID: <5fe0cd00-291b-4e93-a93a-6f8e32db4541@intel.com>
Date: Tue, 24 Jun 2025 10:10:53 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] Revert "drm/i915/dp: Reject HBR3 when sink doesn't
 support TPS4"
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, Jani Nikula <jani.nikula@intel.com>
References: <20250620124417.2041233-1-ankit.k.nautiyal@intel.com>
 <20250620124417.2041233-2-ankit.k.nautiyal@intel.com>
 <aFlnzzW7HhtcqWs7@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aFlnzzW7HhtcqWs7@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0011.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:80::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB4822:EE_
X-MS-Office365-Filtering-Correlation-Id: cd64f151-e2ec-4bde-d26d-08ddb2d9523c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SGEvQnVxdFFaWjhUanNBd0JZUW9uZDg1T00zdUtlc0dJK2hYNXhUaWNVWkdN?=
 =?utf-8?B?WGY1WFVOdFBwNGRmMHZoZlZxeTkxU3FGS3l5YnMzTzNpd0hvU2VtQ1JyQXRI?=
 =?utf-8?B?SkJNNU9ZcGZ6TGdWSGdhYm0waTNiWjRqU2trL3R1bDMwZ00wQitFMm9IbGtE?=
 =?utf-8?B?MkdQOFF0dU5BZnI2ZmtQOE1HUVVlaDV4OWRPU3JCdC9HM25FVkRtaEdXT2Vq?=
 =?utf-8?B?bFhhYjdHeGpZVGVKUDRCdWlQZU1VR2EvaExqWEo2WDFqeTZmWFBRd2RIYVIz?=
 =?utf-8?B?QjB5cjVwc09CMVR1VmxzVVdqcnM5NXpKYUZ5cjhPc0hOaEZFWTFIZnlpRUFP?=
 =?utf-8?B?NmdkTk96S2F2dW9RMXFxa3JXeWxDdmx4NFV2eFFMWVZlZUgrSnJjZi9WeDBt?=
 =?utf-8?B?UTB1Q0lqNFZMRUJ3bkJiZkVMeDhwZ3ZZQVNnTTlxaUw3dy9rSjhlSm00VVk4?=
 =?utf-8?B?SXdLNDJFNlZRbFA4OWhHcVNUbDlYbmgyUk8wWXpoYWxGbTZ1QnRibzN1WTFF?=
 =?utf-8?B?NDAzaHpkK1RKUjlJZWFQalk2WW9xdHpJMjdSTFM4MVYwaTRWSmNaaTIyalBw?=
 =?utf-8?B?aWw4UTQ1bkxQQzdxenNOTEtKeXBFS3U4Qmp3ZERTM0F0N2owWnlRbEdYeWVY?=
 =?utf-8?B?UnZPSjQ1Y09TRUlZUkFmMldSb25QeDNndDZubkZSVHVlbWlmZDdSM2taQlV5?=
 =?utf-8?B?RkJwaU1aYTBPM3hwemVFRWVwekoyWE1GR3BIZjJkSmFia0ZaSm91WkxEVEhK?=
 =?utf-8?B?dWovSVJ0WXd0ZjZ2emViYXBmTjgyU2RLY3lxVFJ5NzRXNWd4Q2VWZnBCZDNn?=
 =?utf-8?B?bHV5VDhlM3BrWTdhM0pUUXpiRTFONXpyVm80MktPc3A4RGZJdDJkeWpJdmZi?=
 =?utf-8?B?WmNOa0RISit5UnN0Q2xFV2Y0eGNld1NpQjd4bTRRRnJYT0pvdU9BTVAyYk1S?=
 =?utf-8?B?dVliVDZtYjBWYzVGaTJ4Q3BlcWNScU54U2IwcWpwRzJReHRzVkhzUnNUWloz?=
 =?utf-8?B?Y2pxLzRqZ1E5MHhCaTdyUW9pbW80aC9ySzBnaGxlVlFvMWc4R2JMYmMyMWdK?=
 =?utf-8?B?bWhtd0JMREU0YWkyajhMaFNNZ1didnJRbFc3ZzB6TTlPd3V5R0NwZUNjdFg1?=
 =?utf-8?B?SG9WRTFBUGxDWlVzWW9CcWVwRkowTU5VL3VVeTRxNGpvSDUrSHZPZ2EvV1hZ?=
 =?utf-8?B?Qko5ODM2a0lDL2I4SEF4Yy9SdzFVVklQTWxWRHprUWNjUlJGenZ5THI3blR5?=
 =?utf-8?B?QVVLejRKbnZ4bU4zakZ4YlNGbmE0Z3NhM0VTRGp3YlczTWRxVWFyeDhXQnZi?=
 =?utf-8?B?SmVteEVTWFhBNDYyVC8wWTlQNGs3VFNUN2VsTHJuNnRaRUxDRjArRE5iY2tY?=
 =?utf-8?B?elJqVnFkenNXY2lUeENPUWNHSEJFSXp6NnBwUGxaQlV2QkxuaFpBYXNMMEFx?=
 =?utf-8?B?dTV0QWU4V2h2c2dZQlNnTVl3OG5kS0pmOUVyK043TG11T2x4SzR3T3Z1U2d3?=
 =?utf-8?B?bG4zMkJmYWFucCtnOGU5Mmx1V2wyNWdmSUVyaFFYaDRaV1NvOEJMWVhDMFJR?=
 =?utf-8?B?VUc1dlQvVWFWYnlMSFJLbEs1NDNMMnl0d2NWT0ttMUVRSlFBS1ovUjFiakd0?=
 =?utf-8?B?UGtFUTNMVDlDK2lDQ2ptMUl1Um1KTW0xSUVNd3JVNWMweitZZUdHeitEZVIw?=
 =?utf-8?B?RTRkdStDVTdYNTloUHJFY3dOZnJPYnYyb2t1YnZpNXpUTW8vYUdQa25hWnFw?=
 =?utf-8?B?NkJUbnRJQzlnbEQ4RkV5UjhwY3AvbXRGb3YraDBxQllIK203L05CQ3RDbVVW?=
 =?utf-8?Q?niubwBsVwf+d0qRxpyXWt0Mo+UZMZhtMeSeJ8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T1psMnNaZFRSQkNPL0NwQUxtSFBWZ1RvNFFPeExNdzVnQXJBV2J4RXZnc2k3?=
 =?utf-8?B?WGc0OUlVdUFCdmdiamc4TzRQb1AyK1pGbUFHUVl2NkpLNDZub2NSMDdsS0Q4?=
 =?utf-8?B?OVhNdzVjRGRQMnRncU15cFIrWklMRnFnYlRkY1ZYQVdJekVVSEh5SUJqMlRV?=
 =?utf-8?B?UDlPS0N1ZWUrRDNSSll3NEMrek5QT0RleG1GbEJVdHdFV3F2WGJ2T2xNTnp0?=
 =?utf-8?B?U3V2bkgyaWhKaGpiQkRya3ExaWdjYkhIdTh3dnpEcEw5QkV1OHJ5MGNUSTJw?=
 =?utf-8?B?YVNKSE9Id2FSNndFdVRaN2VYNnY4L2FLYkJhSFhNVWxGRWZuem5EMWd2RzNu?=
 =?utf-8?B?Rkk3d0ZkRFVaZUFHRHJSZzREM0IxbzUyUDBPM3pWVkVOcmtVeC80UUpDbVZH?=
 =?utf-8?B?b2RGSlIxTVNyMUM2THp2WTJMMnlreWxCQTRpWFBnanF0V2JhM093eEtYMnd3?=
 =?utf-8?B?UGs1eXBRYnhxRmZOa0ZrUmhwZ2R2ZWQrZnZtYWk3Z3ZpZzVRMDc5cWZyWEdF?=
 =?utf-8?B?UnpzcFZoTzF3Mkl2VEhRYzRSUGs1Uk1rOU1DVUJIZzU1Z0dJQ1BiNkZPazY0?=
 =?utf-8?B?WFZLYlpkSmFGUkR3b0RnY3ByVE5MQVRtbVFKWTlsMnEwT1g0MEVoY1N4SmVN?=
 =?utf-8?B?TTR6TjF3b2U1Q3NqejlTeEZITFFVUDd2L2tJR3lRYVJic3hwTFRLbE0yODE1?=
 =?utf-8?B?ZGFmVytrR3RQb1A1L01oVnEzNWlBNHo4WlJTVEN4NDBXSlVBOHRtVDZXVDZX?=
 =?utf-8?B?ME56QUswSElaQi8wK0RCMDFDV1B0TEdqbUd5S3VKVmxUNFEvZFFwRm1DeWZC?=
 =?utf-8?B?MjcwNFNqYnRCUFJ2TUtWYXZIMWthSkh1cUp1cXhxZ2ZXY2ttQm1FbUNoU1VK?=
 =?utf-8?B?SmNXNld0MWJicmoyTWxqcnlQNDFCZVREV2Fha0FReDRCeDhaWC9sOTJCMDJa?=
 =?utf-8?B?K2FIZzlvZ2RRWW9VVW5IK1Iyc1ZtcGptK2p6QWY2UzhhS2NRV0RjM1AvOVR6?=
 =?utf-8?B?dFUvRWtYSmxBbEtGemlHdGlLSHFXUkhSNm13WDdYbnJvYkE3Yzl1NWprdHZa?=
 =?utf-8?B?OE1MNDVHaHU3YzIzQmdMWExPUTZWZGQrWjJEdWc1MytPeUxvcGVvUHhLVngx?=
 =?utf-8?B?aEdsbmtubU1kMHdkODlTNTFwbW5hL2VUUkEwTnYzbU8yZlhyaUpEU2NxamNX?=
 =?utf-8?B?WjdSWGZBTGcwQmVrUDBBVEZVV0I0NGxLbjNrZy9nL2YwcU1DQVMweHBkNjU5?=
 =?utf-8?B?QndUV0E3aWpJU3didnVmNllmNEM3R2JuMURyQ3NPMnlhQm81WkxocitOOE1N?=
 =?utf-8?B?d3RXeWtSV0RCY05kRXpza3JCcXlvZDdMaDRCZXBNd2Nuc050TWY3aUR6NFNa?=
 =?utf-8?B?SlVIV242QytVcjRJTHBFQmV6TnRTazUzWHRSK3VDditXcnhXamNaTXc5VVZI?=
 =?utf-8?B?U1hVWlUzV2JSVlQ3ZmtSMVo1Z1Q1MlRCcjF3cUZ0ZXBLYkxVdEIrQUo5ckNa?=
 =?utf-8?B?cXRCQ0ZBSU95bkZkSDg1dEoyOFhwaTZoZ0JhSVI0eGdZVk80TjAwMkhwQkFh?=
 =?utf-8?B?cVRPMVROeTNySVpDRTZxNTVjeVNKNUZzZFBrTGZtS0pab01VMjN5SkFwVkZt?=
 =?utf-8?B?a25TTjI0Q1JkUTFlUkhsTHRvWEdCdkdiL2xjOVo4cFpSWm4yWU9FUlB6aEFQ?=
 =?utf-8?B?cC8rZ1NJZDN1K0NhRE1jUGEzTE9hZ3NCNmpYVVByWjVKdExIQjEzT0ZDSEtF?=
 =?utf-8?B?cDVDSFBBTUhMYmVSMzR6K1J6NC9Rb0tRdW1zdjJQR1hoRFpEa0ZDRC9iZ2Ro?=
 =?utf-8?B?ekhScVJmaVhBVTFRSDNMS0pEajVSSmRwWTRwTGhGY01OdGNKcVJrZTV4MEt2?=
 =?utf-8?B?cmErNC9SSTQxaFg1SlFnMDVzQWdvSmRZblJYV0pYdUI0eFd5Q25wSlhwaHNw?=
 =?utf-8?B?a09Vd0F4RWxFN291NDFmUUp2bE1hVjBHVjVuK29hZVdEangxMGI4OE1RbWFK?=
 =?utf-8?B?UTEzOThVZUtwU2JJbUdiTlNGU3pMSloyMnBvVnRvWlBnRDNqbXdFNjJTSzE3?=
 =?utf-8?B?UWNHZEEzNjBsQVhvNnpma3dlZ0RQekprVUFsUjEzdUNSUWREQUZ3UWJqeEMr?=
 =?utf-8?B?SXhEL0VQZTE5UjUwbmVkL1NHeFI4dnYwKzlWL3d0ejJYeDloa0Q3bHh6eTdB?=
 =?utf-8?B?UHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cd64f151-e2ec-4bde-d26d-08ddb2d9523c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jun 2025 04:41:01.5429 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2YvxwuCoheu0Z9KauD/JaDb2Bk8PhvTByaTdUDGQBTqDEbUwU50uXfa4wr1vWsOPNbvELzDKqv1hfxH6y38QnL2uX8fLD+/xSi8q4dNLS6Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4822
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


On 6/23/2025 8:12 PM, Ville Syrjälä wrote:
> On Fri, Jun 20, 2025 at 06:14:16PM +0530, Ankit Nautiyal wrote:
>> This reverts commit 584cf613c24a4250d9be4819efc841aa2624d5b6.
>> Commit 584cf613c24a ("drm/i915/dp: Reject HBR3 when sink doesn't support
>> TPS4") introduced a blanket rejection of HBR3 link rate when the sink does
>> not support TPS4. While this was intended to address instability observed
>> on certain eDP panels [1], the TPS4 requirement is only mandated for DPRX
>> and not for eDPRX.
> I see no exception given for eDP regarding this rule. The only exception
> allowed is that eDP can say DPCD_REV=1.4 + TPS4_SUPPORTED=0. So I still
> claim that these eDP sinks are violating the spec.

Hmm.. Yes the spec allows eDP sinks to report DPCD_REV=1.4 and 
TPS4_SUPPORTED, so perhaps eDPs claiming HBR3 with DPCD rev other than 
rev 1.4 and not supporting TPS4 are indeed violating the spec.

Would it make sense to add a condition that checks for DPCD_REV=1.4.

Specifically:

if DPCD_REV=1.4 and TPS4_SUPPORTED = 0, then do not prune the HBR3 rate?

Or otherway if DPCD_REV!=1.4 and TPS4_SUPPORTER = 0, prune the HBR3 rate

This way the patch need not be reverted, but modified to address 
instability issues for eDP panels that are not aligned with the spec.

That said, the gitlab issue#5969 [1] will still need another solution 
since it seems to have DPCD rev 14 as per logs:

DPCD: 14 1e 44 41 00 00 01 80 02 00 02 00 00 0b 80


Regards,

Ankit

>
>> This change inadvertently causes blank screens on some eDP panels that do
>> not advertise TPS4 support, and require HBR3 to operate at their fixed
>> native resolution.
>>
>> Revert the commit to restore functionality for such panels.
>>
>> [1] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5969
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Acked-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 49 ++++---------------------
>>   1 file changed, 7 insertions(+), 42 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 277b40b13948..74f331ae97ff 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -173,28 +173,10 @@ int intel_dp_link_symbol_clock(int rate)
>>   
>>   static int max_dprx_rate(struct intel_dp *intel_dp)
>>   {
>> -	struct intel_display *display = to_intel_display(intel_dp);
>> -	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
>> -	int max_rate;
>> -
>>   	if (intel_dp_tunnel_bw_alloc_is_enabled(intel_dp))
>> -		max_rate = drm_dp_tunnel_max_dprx_rate(intel_dp->tunnel);
>> -	else
>> -		max_rate = drm_dp_bw_code_to_link_rate(intel_dp->dpcd[DP_MAX_LINK_RATE]);
>> +		return drm_dp_tunnel_max_dprx_rate(intel_dp->tunnel);
>>   
>> -	/*
>> -	 * Some broken eDP sinks illegally declare support for
>> -	 * HBR3 without TPS4, and are unable to produce a stable
>> -	 * output. Reject HBR3 when TPS4 is not available.
>> -	 */
>> -	if (max_rate >= 810000 && !drm_dp_tps4_supported(intel_dp->dpcd)) {
>> -		drm_dbg_kms(display->drm,
>> -			    "[ENCODER:%d:%s] Rejecting HBR3 due to missing TPS4 support\n",
>> -			    encoder->base.base.id, encoder->base.name);
>> -		max_rate = 540000;
>> -	}
>> -
>> -	return max_rate;
>> +	return drm_dp_bw_code_to_link_rate(intel_dp->dpcd[DP_MAX_LINK_RATE]);
>>   }
>>   
>>   static int max_dprx_lane_count(struct intel_dp *intel_dp)
>> @@ -4270,9 +4252,6 @@ static void intel_edp_mso_init(struct intel_dp *intel_dp)
>>   static void
>>   intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>>   {
>> -	struct intel_display *display = to_intel_display(intel_dp);
>> -	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
>> -
>>   	intel_dp->num_sink_rates = 0;
>>   
>>   	if (intel_dp->edp_dpcd[0] >= DP_EDP_14) {
>> @@ -4283,7 +4262,10 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>>   				 sink_rates, sizeof(sink_rates));
>>   
>>   		for (i = 0; i < ARRAY_SIZE(sink_rates); i++) {
>> -			int rate;
>> +			int val = le16_to_cpu(sink_rates[i]);
>> +
>> +			if (val == 0)
>> +				break;
>>   
>>   			/* Value read multiplied by 200kHz gives the per-lane
>>   			 * link rate in kHz. The source rates are, however,
>> @@ -4291,24 +4273,7 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>>   			 * back to symbols is
>>   			 * (val * 200kHz)*(8/10 ch. encoding)*(1/8 bit to Byte)
>>   			 */
>> -			rate = le16_to_cpu(sink_rates[i]) * 200 / 10;
>> -
>> -			if (rate == 0)
>> -				break;
>> -
>> -			/*
>> -			 * Some broken eDP sinks illegally declare support for
>> -			 * HBR3 without TPS4, and are unable to produce a stable
>> -			 * output. Reject HBR3 when TPS4 is not available.
>> -			 */
>> -			if (rate >= 810000 && !drm_dp_tps4_supported(intel_dp->dpcd)) {
>> -				drm_dbg_kms(display->drm,
>> -					    "[ENCODER:%d:%s] Rejecting HBR3 due to missing TPS4 support\n",
>> -					    encoder->base.base.id, encoder->base.name);
>> -				break;
>> -			}
>> -
>> -			intel_dp->sink_rates[i] = rate;
>> +			intel_dp->sink_rates[i] = (val * 200) / 10;
>>   		}
>>   		intel_dp->num_sink_rates = i;
>>   	}
>> -- 
>> 2.45.2
