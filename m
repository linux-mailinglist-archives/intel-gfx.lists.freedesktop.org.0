Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C41CE96BD54
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 14:58:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53A9210E7B0;
	Wed,  4 Sep 2024 12:58:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h+pnDoih";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D4C610E7B0
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2024 12:58:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725454684; x=1756990684;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9vMzQWZI543h29LasCGdP4zgwwC7QCdgFP4brIqcP3E=;
 b=h+pnDoihAax+oludEZZ46ecb45tttEPimRC2f65kpbH4coqoby3zuIV4
 KlnKnshEJItwJcJfKgd2xk7berSRNUSS1iBkyGKKL+cxaFIEP9V58F3EG
 7icULGCjWbt0kcX8pg+SKCxUp+sO0KIqC4i4jgaoYIlOjz/7SuJcBMQGM
 YVzDrfvXGa/Jz48GfaS9PpAKwRvHwgykS01LtUTGeEZepuTqPMzc31tjp
 1SnORRkkvfriI0EFwxaNzRfJLGRy1Xy6cxpIP8seLF3fBWtgrZRjO6riT
 BTNxGuUz2uIZYFb5NB8kQH93ULY10WwxwTAemG1J2Grqw37o6sFaWzxIm Q==;
X-CSE-ConnectionGUID: ND8acquER7e5NVAIAbKCvA==
X-CSE-MsgGUID: hsgBXz5TRcqy3sni75V/pg==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="27900951"
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="27900951"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 05:58:04 -0700
X-CSE-ConnectionGUID: vWgDpahyQserAvZEy8jkDw==
X-CSE-MsgGUID: +6Muaj9XRgCzCK7xuLGIkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="69889915"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Sep 2024 05:58:03 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 05:58:02 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 05:58:02 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Sep 2024 05:58:02 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Sep 2024 05:58:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vHZ8vVfHK+c4VN1v8kkBkuXaoTD/qVTcHQhTEVc+FaY12O341niVVotslEzoZYP8s4FMGmzCPeRVX3vYKT9BZiKdkLkpjFWjGVdk+GSX5Xmvvn3+KrKLuv+C/hBVlCzTC8H6UhYmq7YT51IsT831n/oxETk/hBqOorEVXjZ+8RNvs6Dcs8FHeZfjrgA6u/fE+GUTzdDakJLsqXZBrkNp1Nsp6lgSiOV6zbmYuVBt7OAA4njv6nbCPyUjkOAQ6+eVT/Tyy4LFOPNPARtsO31Bb9Jado6CuJ41X7D2wtUA6aAPRGq+vRSY06h3WoSAq+w6YQnYAMBoRLYewEsGTCg0QA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eQmZEPnJmnimkzkrcTBsAC/jHp8a3NTTpMY8vlkBHFs=;
 b=WGCssXgTwMgFp99Fii8bXUS8CRvt8rU4Kro3DKZxEPMXqSn+AflSYa3Uo8aQDSfoGPcjUkyGO8Hek2x7Gl1GCvtXo2Mm/ny2u2L/mLLKzuhGKNsy80H5quh2yVbqveSHIa75AQqDnU8MLUumhxb4GYk8etaooueBcf2/TOWJPUW5pTOUaJahYFKOaFowiS3Rkp0RVIocFkvcy38XWuJtGd5YDx9LO/4BClkgfmh9JSi84kBn6Xno1kAqGIqQ1LYvljbew1W1P/qDqMPUVhQvfUTDy/d2X5siOCWrw3N6VvmxwADu9f8RCccOE4wHBb0nF3QLA+cHhOKXoe6TqAbEqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW4PR11MB6689.namprd11.prod.outlook.com (2603:10b6:303:1e9::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.24; Wed, 4 Sep
 2024 12:57:53 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.7918.024; Wed, 4 Sep 2024
 12:57:53 +0000
Message-ID: <4c017155-e14c-4d37-af95-1b74379e3a03@intel.com>
Date: Wed, 4 Sep 2024 18:27:46 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/13] drm/i915/vrr: Avoid sending PUSH when VRR TG is
 used with Fixed refresh rate
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <jani.nikula@linux.intel.com>,
 <mitulkumar.ajitkumar.golani@intel.com>
References: <20240902080635.2946858-1-ankit.k.nautiyal@intel.com>
 <20240902080635.2946858-11-ankit.k.nautiyal@intel.com>
 <ZtcI2_aTCVI9kAvy@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZtcI2_aTCVI9kAvy@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0P287CA0005.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:d9::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW4PR11MB6689:EE_
X-MS-Office365-Filtering-Correlation-Id: 456a1510-59d5-42dc-9b5e-08dccce1309f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Y2NOSFpUdkoyMmgwbVI3Y1hBNVc0c25LOCtoVWRGKzdmeE10Z1NLVHdsMXNN?=
 =?utf-8?B?M2ErNy9PTFlBS3ZTKzhqeXp1WTJtNzhtT1dZeDFLbkhVMHhXUGxTWTgzRGFW?=
 =?utf-8?B?NE1qS3l0Y0NYV0VBYXg4VlNvNHlWWDdGV1JUK2lyZklsMVBOTDVYZGdTa3NX?=
 =?utf-8?B?VlIvTGdtQWdNMnJKb1g0V0t6bm5JNGlVU0U5SDc3d043aHgzNjdUVmg5YW5N?=
 =?utf-8?B?VXMzT0pFd3B5KzJQV1JpMXRIRG9IbFR5N2hjQTdSVDk5TEp3bjZhOW9halQ4?=
 =?utf-8?B?a0NGUEJVaEdGTWlrRVVVMWgwbUE3blZTVXZHREJ6YWVkNTNMZFdKRytuakYw?=
 =?utf-8?B?d01GZGdrZ2d6MVg5QS9LcmFQVTYwNnlhc3V6QS95allFcU5XNFZ0MHh0ZlVi?=
 =?utf-8?B?eXRKSkpOeDBjbk1RUU9WMnNuZThZUDBuT0dQemVTWEkyelpOS0ZtcXE0QU5L?=
 =?utf-8?B?akRDcmM2d1QwWUJOL0RUbnlVNnZVZkhWMG9mQUgxVXVLSk15U08zN0F2dzQx?=
 =?utf-8?B?VFlqTlF6U2tRdHgvNHliSU5nRm5uTmpQbmhuakZ1dFV0eGJDV2ZzUTJ5SzlS?=
 =?utf-8?B?QzFENXdBR3hob0hvU2NpbmRMTk1qSDVvUWxtNmh1YmhUdUZxc2NEd2VUR1h0?=
 =?utf-8?B?cjBLTDA2TVFzN2ZtbzZYbEVmT3pwMVExaE0vSnE4aUM5czBtNmJZZll6RG82?=
 =?utf-8?B?UVhyQ3o0ZTIvZjdnS256NjFVRFo3N0xxWEdVb3JncnAwOWdmODBBYTBPOStm?=
 =?utf-8?B?QmdiaE9MZks3TzJQVmxmYzh2dE45UXlhMGdBZThOTjIrcDNqenc4NExtMktI?=
 =?utf-8?B?UlBkWDFTa01NZDd3SmhEblZzTm16L3JPZTVEazJOMjIrSXM1ZXpGNEVqRWJp?=
 =?utf-8?B?NE1TazQvekZpcmhVR3hIZ1I2OWN2b1lsYnlnSDJtRndkYWpiM0dVZlFoWHpH?=
 =?utf-8?B?ZzRFYTI4L3U2RjRkQkZvdXR6a1M2SkR4Ti9kOElzK3dmbnRweTIrV2t4d0Jt?=
 =?utf-8?B?QlE1U25pNFdWWGtTQmRvMno1alpNOWRnTkNVREJ6ekgyQXQ5UFJ3SHlTVVAy?=
 =?utf-8?B?R0o1TnphdkdnVzRVRDhQUGFUZ0QxdnBleUl0YUFVdEQyVzJhS2wzVlp3V2RD?=
 =?utf-8?B?cWVCSlduSlBjTXBoYkhzQk1DdUlCZXhMNUpRL2RmMG9oUk44TXZCSC9tSHM4?=
 =?utf-8?B?OHgxVDdsNld0dUlPTzlLVm1lN2paR1daUDJGZkpaeVRrTm0yTlJPNzNTckdL?=
 =?utf-8?B?Y29ySVJPNFdJVmJNbWp0aEZvV2czZVJzdm1PdHpjcGVUakVvMHpXR2ZOdHVv?=
 =?utf-8?B?QTNjZ0F6M2ExUDcrNDBrclpKbWg5Qm0rRnF5c3ZHeDlwWkpsVkhmd0NXZWs0?=
 =?utf-8?B?bWRvVEk0dWU3NEs0c1AwZ01tdzBMdHM3T01nMGg1S1dlY3VXbGZweDZSK2Nz?=
 =?utf-8?B?LzRtd2RpSkNuMmlDais3alpoN0w1MmVTTjFmKytrUlZ5ZWt3WUs2THNFc3JK?=
 =?utf-8?B?ak50aFVYaXhIREtnU1JtRGhrV0U1ZlBxQ3czanhqYUtnSDYwaHZxMDZzNzJX?=
 =?utf-8?B?QzY5bTVTNlVNbmdhQk85YWtjNjdFaDdSY3NlektZeFpoL3pDTGRjWkN1KzB4?=
 =?utf-8?B?NEV2YlRnZmtZMnBtaFFtZzZrQlo1cytmUnM4MUtnWlVWZU1Zc2x2NFF2OHc4?=
 =?utf-8?B?dDRsNlBlMmcrRVlVK3JjWnY4ZDUxR0EvaVRrNFhEYTcvaVI4aStoeUlmZDAr?=
 =?utf-8?B?OGZicFl0eVYwMEh4d2ZQRzB1SDhqTk91OUFpMkVpcDA1WmE2eG5DTm5VT3kw?=
 =?utf-8?B?VUNrK1JSU09XOC9lYXdIUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WkhBajhCbWJCdTdsblVOOVRhL2JULzFob2plNitVV3BQZVU5cks2Rk54djIz?=
 =?utf-8?B?QjhNR09QcHlVQ3Z4YjRCQ3FVSzhmd2I2RGpsUzdLQzZmVDdsMDBORFpPZTN0?=
 =?utf-8?B?VGY0ZkxQWEg5R25PNll4OGtVUTlrZGVEWktKclFocWlKRGJKUElkYW9xUitJ?=
 =?utf-8?B?bTU2aHNldTNIQTFIYkNKVHNmaFhWeFNncm1IbzRlbHp4SkZMN0dpak90a0FJ?=
 =?utf-8?B?ZGc2WTlzSnFmak1oNm4rakhhalJmeDRhQnMrM2hWVWRHc3hRS2ZaMXl5MHZi?=
 =?utf-8?B?T0xsck5OWG9MVmQwWllKaUthclJnY3FwUWVqZXdQWHdQdDlFUHoydWlPT3Bj?=
 =?utf-8?B?MUpEUjZNSFBnZ3BNcUkrMWJja3hFU3VWdzNSRTdoWVhWTHVlaTZyOHdEd3RV?=
 =?utf-8?B?MnFSN0JkZ2tqWnhjaUw1d0ZldWY0elcvY0dCUlU0RXVuRUsxazkycXNrRGZF?=
 =?utf-8?B?N1dVUUdnQk5FRzVSQVZzUlJ1K2lzekNBWkF5SE85eUh4aFMwb1RhUlIwcTU0?=
 =?utf-8?B?NXRUVmFiQk1OQVpISTZnSUdGQ09URlVzV1YvOStTL1QxclJFdDRKQkZ6aUVv?=
 =?utf-8?B?TzN4OUpXa3JrdlczdzQ1M0ZEV2xEOTZydGtCM1ltRmUxaGhDK3FaUkl5aVV1?=
 =?utf-8?B?UkxJVkF4RVdLdlNGR2dsYUlLSXVLcTR2eWFQMmtWc3poejBFSUtwZjlvbUlt?=
 =?utf-8?B?Q0VHZGtBMnBTeitkVmZTYkg1YjNKVHA1Nm9XS1VxK2hTbDBqdjhwRnpSM3E1?=
 =?utf-8?B?QVhjV1JYd1pEc3VOYXBCT3FlbUh2NWJzeUtoWkE4RkltOWkyR2xGWnc2ZkMw?=
 =?utf-8?B?NWxVQzFiK21PbXVxc1ZZZkNZTkhnUzNOdjMvQTJxOHRFM1pheVFueUxsc2Vl?=
 =?utf-8?B?eGFFUjJDaG5HSWE1TzY5aDE5OEhod2k0N2NiWmloaUdHQzUycnAvYzFLVFFy?=
 =?utf-8?B?Si9Qek1UN1RyVUZCcVByWnZId3F0SUZZMENJNWdKNEdyL2MwZ2UyekhSQ2JG?=
 =?utf-8?B?UVpRWTJhTThPalJGTTJNYk93bDllaDczSzNCUzZrV1FFTjNnT1dadnVyYWdk?=
 =?utf-8?B?ZXlnTHJMcTVNTXIvYmt6UTM5LzJwelgzQk44T1AwZWl5cmZqa3JVMkk1YWVK?=
 =?utf-8?B?Z1VPR1BYa3ZwOWhiYXkwbDNDMGxFRjlLK3V1MllwNWQ2OEZYczE3RmZEa3JE?=
 =?utf-8?B?cTRwWWxkbUdaRjNnSm9nV0trazhHSWhjc3VINlNXY0gvSFJlMzBycVRlY0Q0?=
 =?utf-8?B?cHd0bk8zU29TYm5MdmNGSDFnckhpYTJxQTRtSlY5a3BHYXhQRnJOdk9lZ20z?=
 =?utf-8?B?MXNwQW5teE93SXZzUFgwN3lSSEhodjRJa3l6RTlzSzdKdXAwQXJhUkZHcUJX?=
 =?utf-8?B?TmQ1SHJWbS96MVVLemd6aTZHaE45emlWNjIvZ3pSSDBXNXJ3RUIxU0hsSmVj?=
 =?utf-8?B?VzVta2c2bTFCQnJoSmd4NGlFc3ZmUStvVjFGZ0pQQVJKaWlYRlBkdlB5Z2FS?=
 =?utf-8?B?VzhyaWZZRFo2MXZBWUpXQldDSUFxRGh6c1U4WXc3L2Z4ekZEQlAwVUhHc0dq?=
 =?utf-8?B?V0NqTnJPNjZPYjQ1ZXpqQXFPWVJBT1lvQWVvbEFMWWowWlgra2dHbTdOamlZ?=
 =?utf-8?B?eElFRWs0TlpuT2c4Ry9NOS83U0R5ZzNiNUdtRDVXN2hpQm1iSFl3b0lJWVVi?=
 =?utf-8?B?YjZwSFN2Vit6dHh5M2JKcG5NQTZuY25QMmNqV0V5akR4VFZzT2I5NjVpdWh4?=
 =?utf-8?B?bXBXeVp2a2VjR2FnV2Vrc0JSNFVaWkxnRWRmUXF4dm1GR3c4N2Q5UUJyeTBk?=
 =?utf-8?B?VFh6MzVFZzcyK2QxTFByNEgwejBzUGp3d1RKc0p3ZFd4MDlyS3VYeWNmR0sz?=
 =?utf-8?B?RkdkSjVTVzdiSktGcEE4QktFWlFXcXllUGtLWDRSRmRQU0ZBM3lCQ0VlcVpV?=
 =?utf-8?B?RW1zYTk3Sm1KdW9oM216L0hRWTFGRWJyRnpEZ1VqalNmKzMvZ3oxRkE0eFlt?=
 =?utf-8?B?dFl6dUowUFM1MG91Y2Zkc0hacnNoWlNPcVE4clJLS1hEOTZDZytESVAwZERL?=
 =?utf-8?B?dnUwZTkxVUlXcjlKaU9DU1RjYlRVTmUybXVyT2dyMlZGTjUrbGthcjJSNGRS?=
 =?utf-8?B?R3RJV0JPOHZIbGRuUi9hNEpRd2ZmNCt3Mk5WZ1ZQeFVrdzdRMncybEVOS01J?=
 =?utf-8?B?U3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 456a1510-59d5-42dc-9b5e-08dccce1309f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Sep 2024 12:57:53.8471 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 21Z4ZPPHu+KShEZVXqSepNSgfk5DkGBfdKCH84HftAA4KIcAZY9vQGg8DK9/yOGXY7z87HL/4woChwXnizI5u6NipkWFswHqSArfXiL4cj8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6689
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


On 9/3/2024 6:32 PM, Ville Syrjälä wrote:
> On Mon, Sep 02, 2024 at 01:36:31PM +0530, Ankit Nautiyal wrote:
>> As per Bspec:68925: Push enable must be set if not configuring for a
>> fixed refresh rate (i.e Vmin == Flipline == Vmax is not true).
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_vrr.c | 9 +++++----
>>   1 file changed, 5 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 03af50b9f9eb..5e947465c6e0 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -313,7 +313,7 @@ void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
>>   	struct intel_display *display = to_intel_display(crtc_state);
>>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>   
>> -	if (!crtc_state->vrr.enable)
>> +	if (!crtc_state->vrr.enable || crtc_state->vrr.fixed_rr)
> Hmm. I wonder if we should keep vrr.enable meaning VRR actually
> enabled... Maybe not as that would complicate the readout/check
> a bit too much perhaps.

I agree this perhaps need to be streamline.

Currently with this patch series vrr.enable
represents whether VRR timing generator is enabled or not.

When VRR timing generator is enabled we can be in one of 3 modes:
1. Acutal variable refresh rate modes    (vrr.enable = true; 
vrr.fixed_rr = false)
2. Fixed refresh rate modes                (vrr.enable = true; 
vrr.fixed_rr = true)
3. Content matched refresh rate mode.    (vrr.enable = true; vrr.cmrr = 
true)

I am open regarding any modification to this or have a new scheme 
(perhaps an enum vrr.mode for the above 3)


>
> But we could have some kind of helper for these "do we need to use
> push?" checks (eg. intel_vrr_use_push()).

Makes sense. I will add these helpers.


Regards,

Ankit

>>   		return;
>>   
>>   	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
>> @@ -325,7 +325,7 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
>>   	struct intel_display *display = to_intel_display(crtc_state);
>>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>   
>> -	if (!crtc_state->vrr.enable)
>> +	if (!crtc_state->vrr.enable || crtc_state->vrr.fixed_rr)
>>   		return false;
>>   
>>   	return intel_de_read(display, TRANS_PUSH(display, cpu_transcoder)) & TRANS_PUSH_SEND;
>> @@ -339,8 +339,9 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>>   	if (!crtc_state->vrr.enable)
>>   		return;
>>   
>> -	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
>> -		       TRANS_PUSH_EN);
>> +	if (!crtc_state->vrr.fixed_rr)
>> +		intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
>> +			       TRANS_PUSH_EN);
>>   
>>   	if (HAS_AS_SDP(display))
>>   		intel_de_write(display,
>> -- 
>> 2.45.2
