Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3581A22BFF
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 11:52:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FD1610E92B;
	Thu, 30 Jan 2025 10:52:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LZmWuplN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFA0E10E926;
 Thu, 30 Jan 2025 10:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738234374; x=1769770374;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9hb1SuVm+2VTlykeZDmTAINYDbIrZZjt8nFvQx/YzCc=;
 b=LZmWuplNhm153Q+QSA7YOXUrXAkMfTfhVM7CH3/OyctM81YHHUjK2hky
 aL5F67MXmIBcO2uVfp78JUQYbd6m9OYnckaxQ06OF/Jc5vuiVh/Hvb5iv
 haDBBj/C6a1Q9N8zXDRX/i19dnBc5QeyddUBME2aPocdQ3E/mbTs/3arf
 rbEH68M5EDJVoiPCM9879My0sEUEPewPKCHsBWVd1c3ESMs4HWhF+jZR1
 FB4nvxt8ShgiCy9bNfMh/pVkK6aRrkNGRdqdaMX1vUXAv6CM66aULzIXx
 FCXLXO2CQTTeV4vKH+3ebPVYaqOb7YTAnlzxTcT5mZWhiYKyzPayN8Tc7 g==;
X-CSE-ConnectionGUID: kkJXzH2rSLuTDYZejegYrg==
X-CSE-MsgGUID: zWV9sFP0TpyYlRIzbDfd4g==
X-IronPort-AV: E=McAfee;i="6700,10204,11330"; a="56197881"
X-IronPort-AV: E=Sophos;i="6.13,245,1732608000"; d="scan'208";a="56197881"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 02:52:54 -0800
X-CSE-ConnectionGUID: 6IQTHVPpSACQI8bVInX/9g==
X-CSE-MsgGUID: C13/zUh/SRqcTHuO5KuHbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="109743111"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2025 02:52:53 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 30 Jan 2025 02:52:53 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 30 Jan 2025 02:52:53 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 30 Jan 2025 02:52:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IycmDkToaVKvovLa2ezCnf7Xy4HFOQwkc30eZ/joA8e/eRoFgCNtKE0cRXGtMOKjQzn5O4xaNX0mxwHLWvVwopRRFpFn0ze/n2fnnCLf7UomdHs9VlYGU7LnnnuMEtVpxt4kuvCCZz9oU0Gzx7YmUDg/dikuMn7AZWoVb8EidrFk9IfMMiEB1fDGT7XA1+R6Lhyq6zpwfz0X2UtSpjd2DVzzdAardE7LDbJWQ3ODnFpmqEQVy3C6VxlY7pK7Ia4ThBqeAtivtfX59DsWhna2VOGEt4xMJihcTFbroY3IoZqs+ab2EkngOv7EQqnZAkPzi/L+oP5IxPszvBubsiGJMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=taQmcYimZfIZZvfdhFKBQWeqbef0psHYYvzrcIIrc4U=;
 b=t6cEa8Qyn4OtYtsug7FG4ZZxQSkjeoM77mkuDFnMA+F54IS+Z3MoDr5wZfjUXHK+Yrd5+7j1wVA1bWrG0TSPmmFYyLX3WJLe2dCj0nv6pFvGnRvecpJ1a+DRLhkMKtQgyjcqsUZnR/Ao/mMhEh2cNJ1ZVBbU30xcx7rYKJnYY1yEXEBO0XTCCrTspQZIqFCSKT1kzah7qGhTeoWeqDJwJiBIywVabl84hp5QbUXACN/Ac2qsW84MboCh1dkZnSq0htAjZSy8vJEXkm38AIolDVHPlBgCUBq0cvXNyitoKcayZffIxgYTe1fzivCzJkkt+vkuVZNoQ7CGzZE5bS1ErA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB4798.namprd11.prod.outlook.com (2603:10b6:a03:2d5::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.18; Thu, 30 Jan
 2025 10:52:11 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8398.017; Thu, 30 Jan 2025
 10:52:10 +0000
Message-ID: <96101eae-5a52-4b36-9665-ef61753b6582@intel.com>
Date: Thu, 30 Jan 2025 16:22:04 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/35] drm/i915/dp: Compute as_sdp.vtotal based on vrr
 timings
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
 <20250124150020.2271747-5-ankit.k.nautiyal@intel.com>
 <Z5P6-9mb7R0VpWLT@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z5P6-9mb7R0VpWLT@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0059.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:99::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB4798:EE_
X-MS-Office365-Filtering-Correlation-Id: 4978b388-ecd2-47ed-54f4-08dd411c25ba
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Nk8wRlJZclJzTjZjOHNva0EyZzNqVTZWdHRLalNGdzlpNk1nbDd1MnM5Yi9q?=
 =?utf-8?B?eSs5R0Ftbys0R0VrNFFxN1ArRnRTM25XeEFORkdMSkZsYXkzOUl0bDhscUVz?=
 =?utf-8?B?Qm5ETzkwWXlpZ3B4VWUwbXNCRy9NUkpFNk5neFIyNXVsWGhNM3JyLzBKdjYw?=
 =?utf-8?B?ajI2bkNJMWJoN09tUURCVjF4QTd1NkVob2M0RFpZc3NoV3oyZStwdjFkUU1y?=
 =?utf-8?B?M2Jna3VnV2lPejl4aTJUbVpHekU0WHJOa0pGMDZtVEZXa0N0elRjMmpnQ3VM?=
 =?utf-8?B?dklOTFd3OThzMkZ4NmRuaytJRTgyRXkzY1YvSFJLV1pkWlNUSmhaSGF3QUg4?=
 =?utf-8?B?TjZuRG9JSDBRRXpQdmpxaURSNDBpcThlQm51ZkVISU1nY3M3aDhKb3V3SU1F?=
 =?utf-8?B?TkNkQkNmVWhocldWTmJvbCtJK3hPbjZtUUUxUDJNNFNVRzYxMFhpbWMzT05s?=
 =?utf-8?B?bExUWnlWT0c2cnJxczRlZUlLTG1IcUZCNU15Y2xRc1lTeWI3RjFmRXdQQ00y?=
 =?utf-8?B?YjIwZkJCSUJXVVVrRTdHRnNnSXhFdEZhZ3RMZGpqdDJURCtKVkFaa3plU05Y?=
 =?utf-8?B?UEpWZmpMMktxTHV3NHVuRnJDS2FjejY0eXh2eFgzVlZ4cUY3UVllV3c4WGt3?=
 =?utf-8?B?WGJLK3NmMjJyZVJ2Y2diM3BsWTB2UzVvUEFJNkszdm01d2RnT09tVFlpR0hM?=
 =?utf-8?B?Z1JpSG1FSHl5YU5BdU1wWks0MEl0Sk43VUg5bmVnNVhyVkpuYnJMY0JEKzZP?=
 =?utf-8?B?QkE2bnVtcURrQ1N2U0twUWFENkhKcVFBb0p0akduT29Qb2pxWlR3THBjRWMw?=
 =?utf-8?B?L3RNcGk0TzlDaXNmUXRTSzhncU44VWd0SnZ5dGJUOEIxaTFLdmVlNGEzU24x?=
 =?utf-8?B?Z2M5QWMvank3aWhFRjNuL2xCaG5ULzFzSzhqa2hVSE91SGc1SFhqYkcyLzlI?=
 =?utf-8?B?UG42cEdRVnVXY1RGQzBSQXNzbm1WU2VISklDYS94UmRhaFc1M2M2a2pyaGR4?=
 =?utf-8?B?aDhJT2MzaVFMSVp1WTQyU3RrOHg5WGdtTEIrZG9GMTVVUnppbGZiL2Q4VElp?=
 =?utf-8?B?NER0L2EwZFdXZDNHQzl1L1d3VWlqVUhMQUl4SmN1TmxmdmsvKzJvcmVUOExt?=
 =?utf-8?B?V2t5UzZVK0h6RnluMytNd1BnRnBjQVk3bG1VQzZyWXNMcjMvZGtnVmJlZEdO?=
 =?utf-8?B?WU5jaGJPOUs2WWliWkVZenc4MUFyRmE3U21HeWVnRDZrbk9FdnBvbUE0YUYr?=
 =?utf-8?B?MXhDMlJ4T1c3TkJhL3J3QW1tQ1NlMTBtcFIwV1Rmc3JKWU1oblVXMjJaTGpT?=
 =?utf-8?B?YkJPc2NZYzAxNnU4bDQ4Wlhwd0Mvd3Z3SDhLdkxHU2NIS1E0dVEyT2pTcUd1?=
 =?utf-8?B?ZWM5KzN5QlNZSlZpWXV1SFJhYURFN2FnQWlwTEl5bWdrNjQrV2NDb0JYNGNT?=
 =?utf-8?B?MUwrOGtwcG9hQ0pRY3JreDNuYnhmb0VteWJDU09sVFVNREREbmhqbG9pRHBx?=
 =?utf-8?B?WHRKYjlnNXRBTEtkR2JoYmZ0UjFaOGE1YUFSbXQ0ZjJFZ3d2V0RPcDhLYUVn?=
 =?utf-8?B?WkwvTHFGSWtxaTlINExybnNURUdqb3NYc3ZKR1o2aDZjbDFkeEJrSVByZzdJ?=
 =?utf-8?B?a0RJZEljb0QrQXZVRGViSnBwZ29ueVNONnNhWkw1UlFkRGx1TG1ORDloUEV3?=
 =?utf-8?B?ZkR3Z251MWpwVUF3bzZzb3M4TmxZc2dLaHVWbkdlb0hxbTJEZ3lWQkFJZ0dm?=
 =?utf-8?B?SC9IN25ydlkwdWVVNTBhOGN1L3JCRXBIbWJnVnd3Tk1KRlg1V1F3ZUhMeWRL?=
 =?utf-8?B?NXd1YVFOREZibmxBU250UT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Um4wbnZQK0FUbUZ1eUxXN0MxaytFbDhGYlBlQU5QU3FIaDRKOUpRRkFGbTB1?=
 =?utf-8?B?a3l6MHBBOWNHZEZsVGc1WldvdWJCeld4bUR3WmZBTFN5UW0vSFlHdFgzcnlN?=
 =?utf-8?B?U2N0cFl2TDVxN21qUVE5Tkg5ZkJISEp5eGNyOFcrdmNtVGtjdjFYNkJ4UFdw?=
 =?utf-8?B?SlVvS2w4UWlFODl1ZE8zbE1Fa2dwUllVMDVpdHdSQkgrRDk2eExnRkNwNVFJ?=
 =?utf-8?B?bEloRlRBUlFiQkRCcHpnZitQeXBZUnIrOEs1S284MXdJSmdISW5nVDMycThi?=
 =?utf-8?B?Y1RrTE5rRG9CNmYxYjdsaDJ2ZFdIU0YzTGduQnRveERQTFJORlZxdS9qZjk2?=
 =?utf-8?B?Y0c0Q2dRdjVrZDdjREh2NFdlL2wxVk5iT3U4aUNOZlNkTHVuYVpub0JlN1Bh?=
 =?utf-8?B?YU9YcDRxUThyUU1UYnViTEEyUTUwRDF1YTNuM1VTc25DRlN2UDhTSm1FS3cy?=
 =?utf-8?B?U09BdHkrU2hKcGp3Z2k5bUpkUzRJMGVqaGZyOU1XV0hjWkdnaVAza0krZ1ky?=
 =?utf-8?B?VTZyYllOQ0ZkR3NvK2VQdXZXWDNENmFHZVlIcHhkZlZETDcvV1pTbkdtUXYw?=
 =?utf-8?B?QnBoa1cxU0I5K0NONUZESHlrR2VITVVWTVlQdjVJTGFuaVFrN1FJOWllNHFF?=
 =?utf-8?B?ZXJ2ekJ3UzIySWdoVkZGZ08vTVY3WXM1QW9yUHpiZWFTNHF5UUV4ZElGV1hV?=
 =?utf-8?B?RHJ5Rk5hM2tzRDlodUh3NWw4Q1NBMlFKQVNCZHo2ZVU5WTkwbFBoY2V4ZlNG?=
 =?utf-8?B?WHJGWFU3bnhnMXV3NlRWSnI3RUdncUwvY2FyVnlmcWhxRE1YS1NISjVWSUp2?=
 =?utf-8?B?dERuWWNxeXI3YU9XZE5OSUk1QzRQalU5UUtQa2ZqWUs5bVp5UlJZeStEb2Nu?=
 =?utf-8?B?RDdjVFhsWDFDRkxDTVFIL0s3Mmc0bDdRaHFBUEN6SzFnWFg4TktzSWhrOFFo?=
 =?utf-8?B?eENCcGg5SmVTMHBDR0lnNUJxWWM1UXpMcHVmYWZFb0pFT2tkUTRlRFFXbUYw?=
 =?utf-8?B?aGhxcFpLaGhMN0liMEtRWHVjWFRET0tha0Ftd3l5N0NSWEkrS1lHblVLbm45?=
 =?utf-8?B?U0dVeC84UzQ3UXkvSytTdXRkSnNPdzl3OXlFenRwbnVDWTFpR29RNDN3VXRN?=
 =?utf-8?B?TjF5OEVmM3RtWHZ6SHkxWTJMTjhPV09SWXJYVTA3cXUxczFyRm11Y2VXOHFs?=
 =?utf-8?B?VnUzTjQ3SW9RQnFYVGZGT0NuTDEzelA0QnJGQmRPNEx2dnQ0VGFKZHNtZnhW?=
 =?utf-8?B?eEdFaDNiV2ZSaUpuVG5aSCtFUnpCbjlLOG1zNFBWNjV5cldseVVKQlUyZ3Vp?=
 =?utf-8?B?TzBmblN3T2pNcUF5NitBTXc0ejJZa2M5YzJtcTJ6MmdvdzNtOEE1a2lLRys5?=
 =?utf-8?B?YTBzZjk4UmV1SWxYVWh0WFY2RjNYOGlsWnZJdEdYZitsZ2orRlNFR1E4OWh4?=
 =?utf-8?B?dis1ZE9LZ3k1MTJ0UWFsZVhsNnhxQ0tqR3NtdldWb1JvNFhCQTBnKzRiNWM1?=
 =?utf-8?B?K1dGWi9xUmcrQTlOaFZuUHVpaFBKdmZmMjNiNXdBdHoybENOazkvZ3Q2Uk9I?=
 =?utf-8?B?OEE5UWppV1IwVlIvcGVhUmRyM2g0RjBLdjBUZU01N0ZRYVdTR2FqN3VZZnN3?=
 =?utf-8?B?SGh4Q0xVUzVkbWpyRFVZUkE4eXM0UDVsdVp5TGJLbEdiMmtDKzZtb2FHNEJa?=
 =?utf-8?B?MllpaGNaNWtmQTJBY1gyNzFuUUJxMFVBNmhJMUhTODlOUHUzYk9qRlVMdmJ0?=
 =?utf-8?B?akVtQmdWblpuM2gvWGhpeElXdzhLN1hYNVJJNFNvUmZONVRxblF6eFBodDk1?=
 =?utf-8?B?anRhamcvVzllbTRnMUVqSk01Mi9Lb2tDMmtKUkFtNitxaldyTWVkbzVvNmxD?=
 =?utf-8?B?dmd2MmIvSnQ3Z1lVUWFORUZoMHpzdTRxdzRicXVtcEJWeEZXOWpxUy8yZHZa?=
 =?utf-8?B?bHdMUXhGMjVQZXI0cFFGMlJXL0ZrY0liUG5xQ1pUSmVJK3hDMHlvMWdlMHl6?=
 =?utf-8?B?R0puR2pwa294M0J4NzFwUi9CV1ltK3FZclhaY2xFdkhkTVFaMnNXTDA4ZVhw?=
 =?utf-8?B?TFExdFdXOVhXL1JiYjFJc3c5blJQaXExY2ovSi85NGdQQktPSlhjRnBhTEpj?=
 =?utf-8?B?SmY5Njk2aWplMGYzVENlS1ozM0xrZHI1bGZDcTYwT25xVEJXWUdJNXgrVEx3?=
 =?utf-8?B?UWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4978b388-ecd2-47ed-54f4-08dd411c25ba
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2025 10:52:10.8922 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3xdURJZi9rWESnN5STTSNLPcK6g+IdMf0L0ViKcRDJpeVmiGnvikGioOXnuDPgOF7plbEZEs3ME932FgF0RcC0bgNC6rXlEX01KYXcAsFIE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4798
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


On 1/25/2025 2:11 AM, Ville Syrjälä wrote:
> On Fri, Jan 24, 2025 at 08:29:49PM +0530, Ankit Nautiyal wrote:
>> From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>>
>> Compute as_sdp.vtotal based on minimum vtotal calculated
>> during vrr computation.
>>
>> --v2:
>>   - make a separate patch and update to vmin only [Ankit].
>>
>> --v3:
>>   - Update vtotal to vmin for cmrr case as well [Ankit].
>>
>> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 3 +--
>>   1 file changed, 1 insertion(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 591e4fa20c16..ddfc79b1ee10 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -2834,15 +2834,14 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>>   	as_sdp->sdp_type = DP_SDP_ADAPTIVE_SYNC;
>>   	as_sdp->length = 0x9;
>>   	as_sdp->duration_incr_ms = 0;
>> +	as_sdp->vtotal = crtc_state->vrr.vmin;
> Should probably be intel_vrr_vmin_vtotal().

Right. This is changed as suggested in the next version of the original 
series:

https://patchwork.freedesktop.org/series/137035/

Regards,

Ankit

>
>>   
>>   	if (crtc_state->cmrr.enable) {
>>   		as_sdp->mode = DP_AS_SDP_FAVT_TRR_REACHED;
>> -		as_sdp->vtotal = adjusted_mode->vtotal;
>>   		as_sdp->target_rr = drm_mode_vrefresh(adjusted_mode);
>>   		as_sdp->target_rr_divider = true;
>>   	} else {
>>   		as_sdp->mode = DP_AS_SDP_AVT_DYNAMIC_VTOTAL;
>> -		as_sdp->vtotal = adjusted_mode->vtotal;
>>   		as_sdp->target_rr = 0;
>>   	}
>>   }
>> -- 
>> 2.45.2
