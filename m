Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED838A46094
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 14:20:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C71F10E8F4;
	Wed, 26 Feb 2025 13:20:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TeOx9AVT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6DB610E8F4
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2025 13:20:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740576018; x=1772112018;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=pecspFAsIDYIKMrAktBiYhV4uAYhusKWruMw0VmYPtI=;
 b=TeOx9AVTPDqbjN+BfC3a0rAkmB4QMiRD2DaGEI26n7bPXR4b2YD/ZTv5
 3LL7i7iu7c4ZWYwkueLsSQKlDKDIpZgFpsCBdJlsKxmfx/u4nhL03MmWB
 W5t7cEOnSs9CIlcXHOOowfO0o49knot3bUglSFP1R51wvZjvBEgMFlJQ0
 nqWe3mFbYoesn7rr6ZirtKwV/rhGCJS4RseFfsoBLrKc61DgDdGHm6khf
 cTC6QG7uYrXhaezM4jNH5viuZMGUpTIL8/KCD3pJoJeP/GuRXQq3gpTIj
 O0Kg5dIF/UYNU2t3+o5dxNTFqt815vfleW2RXTNQkOQfOf75NsPirkAD8 A==;
X-CSE-ConnectionGUID: DO8ScMlLTcqliYE9GDK0vg==
X-CSE-MsgGUID: 9WT6OqM9RYG2B2Xncu/cCw==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="41263661"
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="41263661"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 05:20:14 -0800
X-CSE-ConnectionGUID: hlGs53R8SYuGpZ3kxnAUaw==
X-CSE-MsgGUID: +nNl7irySPyg+uGlD83bHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="139916183"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 05:20:12 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 26 Feb 2025 05:20:11 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 26 Feb 2025 05:20:11 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 26 Feb 2025 05:20:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wT0gT32ocIyJMfMsGTwJ+ca7+WTvumdgDfeNDgr6gYuxZXp/VnTeZ/dw0c7di+TVMF4TVBA/CWGTsRsdzCl3q5o+U6OFSpg9oyuOTivobxxiVmiEs6X9x6oON66EpZejYA4RpHLc++1espdAjlF2j/ie/Waxuz73BRQVr5VWrvErbNxFYuUL++Re8JjGbmzNHJ8NJHu3lKbWWi9ddUWDlLK+EXQaHPnlu7TL2yC0tIdplerNaGloTCtZ6sacVJ3vexp3x6BCbSJV3n+2DdTnSUJpjSOED4D3R2uYC0SkZBbD9pQDavAgVyXlnz2I5QP7Pa1rwRJYnA7II8VR7qJBuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wJqGpKHbNaWq+5gNYMxXTJZPd2Kiv20+Aoww4/z+Sxw=;
 b=gH0rCMCA+J8HYXu3OjIqRUetqfJs23/mYurC7DsDDcMLsOWUZeJnKfMlxlLH3Zi78+bsL889FOLccBhUXLmUHV5ST/IrNtbuX+qHOdDY0keyhcaI8984EXlO5MQQDkr65nMb1YXyotiGBW6n467++LR7fzWsj9TJOCeNSB10zoMMLRcPdN6YeqTUz8oPKtz2Kp6xWE0SibfjFpZZ/fU87pS3OvGdUvhnABpoKUyBpxWLWdBECOt1mzWVFxAAR3pHpQb6VBIaw2poBOhrmCb6aEz2KT4nqQmd00VDzAVapsyOpkmKFsBjNj3nutSBMWY1sJ4v8/Oi1H5lnnzefNzrBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8019.namprd11.prod.outlook.com (2603:10b6:8:12e::18)
 by SJ0PR11MB5867.namprd11.prod.outlook.com (2603:10b6:a03:42a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.20; Wed, 26 Feb
 2025 13:19:28 +0000
Received: from DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695]) by DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695%6]) with mapi id 15.20.8466.016; Wed, 26 Feb 2025
 13:19:27 +0000
Date: Wed, 26 Feb 2025 14:19:11 +0100
From: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
To: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <krzysztof.karas@intel.com>,
 <andi.shyti@intel.com>, <janusz.krzysztofik@intel.com>,
 <eugene.kobyak@intel.com>
Subject: Re: [PATCH] i915/selftest/igt_mmap: let mmap tests run in kthread
Message-ID: <lsq36q5evklxolvodhvkev2p2qdghzg4pysaf5cspjgdf2zeb6@yxmf2qh5o35d>
References: <mqzn3acyfarzlst3tt3mh5r4bvz4ntjkz5a66pip7qmm6hslb2@qc7g7j7q4z3y>
 <th33hxf2nabfsjfdo7opte3mv3rkkasmqajguxgwcluvpvwkzq@mtoxcubwzopp>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <th33hxf2nabfsjfdo7opte3mv3rkkasmqajguxgwcluvpvwkzq@mtoxcubwzopp>
X-ClientProxiedBy: VI1PR0102CA0082.eurprd01.prod.exchangelabs.com
 (2603:10a6:803:15::23) To DS0PR11MB8019.namprd11.prod.outlook.com
 (2603:10b6:8:12e::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8019:EE_|SJ0PR11MB5867:EE_
X-MS-Office365-Filtering-Correlation-Id: ea9f802f-9f83-4c38-08f2-08dd5668325a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?T3crc1lueXoyc3FqcG9lVTdwbHdMampZUlRvZE5INTc2UGJXUGVTNWZkOURk?=
 =?utf-8?B?dWwwVXNjRzluT29QNDR3L0YzMm9abmpWMlB1aXNoUHhOZ3NrSnhWWWJFZ3Yy?=
 =?utf-8?B?N3hYT3hTMGt0Vnc0akJ0WWR6RmlGakUwWnQ5V0hnQUlFbWRRRXFFRkVOK0pV?=
 =?utf-8?B?bkM2eVNqemxKbVZwUGxvRlJkeU84T2ozWGdWNUo2b1U4MVl1WjBOeDJTanBH?=
 =?utf-8?B?OGpRQ1hJNFZPMTM5UFlFdm1qVnNNeDZ2bEFLYTk5QlYzUjNRT09admhxQzd3?=
 =?utf-8?B?M0c3cmxGdzkrVXRTdzNOMm1mL0cvYUxab3Y4aytVZjRIc2ZNVk9jaUdiUm5z?=
 =?utf-8?B?OWhtTEZDKzNBb1J3K2VXSW9udzd0WTViVlVCNU5Xa0dRVjF4cGs4eFhtM1l3?=
 =?utf-8?B?ZHAvS3J4TnlSeVdvcThzVVQzWmRLSVBYc2RpOTI1elpqekFTcDlyRmJ1K1FV?=
 =?utf-8?B?NFhseFVxbSttR0dmTUlsM2s1S1ByQXBaTFBiUjlKS25TV1dlMk9nbmI5WnZv?=
 =?utf-8?B?ckxZdkUwa0RITWxwbmxUamZEb3FiVGlmbVMvS1lrZExNaU9JSlNGVkNzM2k0?=
 =?utf-8?B?OEJQbHpxRzd3T084L2VtQXF3ZGo4SlBHZi8rRnovVlQzM2lrQ3BXMmwxVEo2?=
 =?utf-8?B?U2RjZ0JhWEYzVjNYazI1Z2E3RnBVczVzaDF2Q1JOQXBGMW0vMUs2U2I4REwv?=
 =?utf-8?B?dVN0dkQxaXpib2J3S3dPcUhxdVNCazNzZldSaTdqSmFBZWtzTmh4L2xoajJt?=
 =?utf-8?B?VmIzQmtDQmlNVDVtcS9FdXlkT1Rvc09SbTY1YVBJVTE5NUYxcFBkcHpGenlU?=
 =?utf-8?B?UnJsL1hDOW1xRHU0cXpDdCt0R1lwY3lKY0FUQ0t4QWhFdzBjbFNSWFRuMUVU?=
 =?utf-8?B?c1EwVmNMVXFHODVLWFpqTnNDamdvVXFoRHRCNlNBWG9RcDRGbnk5NGlWWldq?=
 =?utf-8?B?N29UQ0Z3RzVGbFBYYm1SZUhIWmxQOStoNTJSVHhRYVE1d05ObjBvelZ4c2xp?=
 =?utf-8?B?RDc5NW12WVJMQ1ovQWZWU3BOTDZZSWprOWxodGFHekhRYmxmdWVEQ1hCTkZP?=
 =?utf-8?B?T2FyazkzTzM2ejhzZ2tmMDJUaEV1NjZ6VjRSbWQvbjNNMmV1WDMwOXJkMEhu?=
 =?utf-8?B?aHV1SHhoYzJGbTJrV2pSN1BTQkNySzJzTHkxRnRIaDVkZlJBamZpYS82YkdZ?=
 =?utf-8?B?Mk0wN1lnMGd2UFYxejNPaVZwaEd4WTYwTnNxZFNqK29VRjZhN0w1UXVwclpW?=
 =?utf-8?B?VlhsdnhaeTVhUXBKU0taeDFndnVIRkJEWUM4SElzMHh0UDRpZlk1MkxQQnlG?=
 =?utf-8?B?M0xxck8vOWRFVWE0ZU5uRzRDeGxXampuV0xqL0RZZ0ZScmpjWTVLL0RQWVo3?=
 =?utf-8?B?bU45d2JkeFpiNUIyUkZUeG1ZZ3BMUmltN2hrWk54WWtvT3JVeTN1bzNCbXZz?=
 =?utf-8?B?U3ljNXAzZDRRTHBWTk5DdlB3bVVKancwaTJBVy9SblQ0SlFhMTNLTGhabmkz?=
 =?utf-8?B?bUlIY2dKQmRiMjVhTUxZaG9GS1FHUG5jcnltZXY2cU5TSVF0SzhkdkU1SVpH?=
 =?utf-8?B?alpncE5qT0pORmpkYlREeldJZWdycjZRMlRoMllScTdhdW16N2JNam1rY1hD?=
 =?utf-8?B?ZEV4ZFBqaGR3Z2xhSVJWQ1ZxRWNVNVM5L1V2Mk5EeTZpUjdTMzBzRVYvcHh3?=
 =?utf-8?B?dHd4Wjk1WXY5ZklJRVpERWM3WTQ1bS9tckE4S0RkL1JSeHUzc1huQWdOWk96?=
 =?utf-8?B?bEpmSkNGdTJBbHIzM052VFlRdjBrK1l5bEJOMEw5UklIRi9PL0swUlRIaWJu?=
 =?utf-8?B?Tmt6aThXNzZMN3Ywa3R6MVFsYXI2TlVidERIalV4TWdhb3o4djRZYXpMVjFB?=
 =?utf-8?Q?s5drKPQfKzJ+y?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cm1MRE00bFBLWExSelAzb1RKc2lXTVBlMmRIc0xGdGVhRjJGY25MbFBvTDBk?=
 =?utf-8?B?dkZyZDhVTXUxYXJSaVFCZVg3MHZRRGJEMVYwYTJNUEZ6dG9pYmlqTm9Dd0hk?=
 =?utf-8?B?UjAySXg1UGpXdk9EUFh0WTZrK0MwVUFjQjNZWGt5RXJtRFJxbHFlTC9HVENR?=
 =?utf-8?B?dlNsV2tIZ3hDSG9NbklRNFlDblU1QUZJS3h0ZE9KZGhQWnhIZ0FnS28vUVZM?=
 =?utf-8?B?b2YraUU1RkpRMkF3cXI1dEs1Y29tdXQ0S2dUdmI0TG1xRU1kZ09wTGVuVDIz?=
 =?utf-8?B?eWRsTnBad0FvUnIrbTI3NnJXOXZnWEcvclNxaW1kcFYycmQ5SjFJMmFXeU5L?=
 =?utf-8?B?Y1BxejVBemMxU2RHeVJDQnBvKzRwYndQaWNtcGdjNVFGUWNKanhhQmI4dmlW?=
 =?utf-8?B?VzU5YUoxY3JXVmZSS2FudU8yNVd3SlBGY2lQZFphaEkrU3AvN0w3NEtoSDUw?=
 =?utf-8?B?SThnbDdyVy93Q0lEb2FmMDNIMnFZZ045aTNhcWVIQ3QwL2N1YjNieHNqUXQ3?=
 =?utf-8?B?c09iRTVkdDNTZWFYZkpEckd6U3RYbjFpV0tsLzNveFpMUzBNcnEySkdBdFhF?=
 =?utf-8?B?VGpJNHVoTW5EbkNiRUk0UnRYdm9vZHozNkxrYjQxNm5UQ0VxeHhzVUoyL25t?=
 =?utf-8?B?QWZyeDd2UGhVRzNSOG5SUjhKUENFelVrbnZZSW54VkRSMzA5cnpXMjNwVmlY?=
 =?utf-8?B?VUVNYVBFa3Q5b3JwMzhQUDNaWHFLbXFoSWlnV1oycVVmWWpFcGlWM204MXVJ?=
 =?utf-8?B?cExrdmsxUW1FZ3Z6enhma2RtVnd3TVN1WVVHZ1BBcUUwQzYxQWh4d0Y1c1NY?=
 =?utf-8?B?TFlxYnpPWTViSU93dG9LWWkzV1liWC9JWE02akR6M1lGY2lobVNmNHJjSmo5?=
 =?utf-8?B?SEJlblV5VDI4UDdlRWYxSDBSM0tPK3RkNUhqU2RnSlF1QVRJeXNoZnJQWEgv?=
 =?utf-8?B?SmRzSmRGOTJJQ2hUUUxlbjFtT1NYd3ZHd2FvaHR2THVUS2dtVERPZ2dJQmUx?=
 =?utf-8?B?eDQ3cnFlSnUzU3pER1ZBUllORXJEMjZlcDVKZEtZcUo3MVJWWU9FZFN3Q1NS?=
 =?utf-8?B?ZFRsUzExTDM2VVRxNm5HTCtLYXVJNy9HMjRNaTVJZ1BxVTRLR0JpUWJCRStZ?=
 =?utf-8?B?amxGckRwbE9XY1owaWlDb2UxcXAveVptNE1QNExkTFJ5SFNpREc2WWpjL0lQ?=
 =?utf-8?B?djJFbEZVT2k4K1NQeGhmcWJ0cEtwcitkYk4zUnhqR0FINmpJU2ZzQ2EycGc3?=
 =?utf-8?B?OE5aK1JRY2NWcENubkw4MXZ4Q2gyUEJtSEozUGhYMnZhVmhOVkhuMkJNZUdt?=
 =?utf-8?B?ZkU2cXFwSnNQRlJTc0VmZlZueXpsSER4YkZWai94dENIamxxMEpSNU16UENV?=
 =?utf-8?B?ZzZwQmJGZzlDd1dTa2Naei9DTkZjS3gwQlNLb2xRcDVvb2JYS0VPa3Y2c3BM?=
 =?utf-8?B?Z2F1aXlqMXY1WmdZVjY2aU0yRnB4bVlCdHR0WVQvSU9JTmtEdldlcityNmVk?=
 =?utf-8?B?N3d2TW5XYlcrWjQrdWFCSnl5ZDdwbXl3cW1UT1NsaHFQVlRhbWc2UnJTZ2F3?=
 =?utf-8?B?ei8yOGh5eW44TGY2MDV6T1JRcjcvMUFUaGZTSTNrYUtRK2ZEcm51WVdKenRG?=
 =?utf-8?B?NkNEQkVXNXNqNmpnUEpHQjlxK0VHcHJGZEFuUjBRa0xzdlp5SHpNcFpqTjBL?=
 =?utf-8?B?cEJycldKMEVqMENmOGxGaDFaekkycDd2eGZSYlVwemNYMFhwT2ZndjNlUTg2?=
 =?utf-8?B?WDllWmtSMFVGbjlWOVNkYzdJQ3dzb25GTVNMK2pnWWJnOGhqVyswYnFtVEMx?=
 =?utf-8?B?OEc5TTR3QitHdjNZaWpqZ2U4ZDhTTGlQa0dJY2dnUkVvVU02ZUVHNytaUFJX?=
 =?utf-8?B?ZTBWSDdHWmZzc0NuTEFSWkhadHNjTHgzRlBTd0R2aHJJYmZIZm9USXpXM2F0?=
 =?utf-8?B?cG5pcXV1bGhJM2wrWmhVZkFEaVp4dzJ1aHJLY0FOdms0TDYvN2c1dk40ZVdi?=
 =?utf-8?B?V2R3eW9kRUhLRnExWUlMbHpQSDh2R3FEZTNqb2xzYjFZeW92cHk0WkhvZWpl?=
 =?utf-8?B?aXQrSzdIRlp3YzErMzEydjFzUk5jQUUwSk9tOGxCdFlaL2EwWkxmajRUaHNL?=
 =?utf-8?B?aHdnZjExQWt6Zk9rVXhWbnNpRzJrMDZUY2F5ZjRtRUxyaDZMdHliZ0hkSkFv?=
 =?utf-8?B?Umc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ea9f802f-9f83-4c38-08f2-08dd5668325a
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2025 13:19:27.8905 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1We5Gm1euHFFamTNJplYAqvGo+3ZGH1ksue0/OvBC1aFpySDH+I+Av+kgmiZnXWf0KionpMKgDqHBWPqlF0/ccUEL1uMslEBwcaVDiWJwf8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5867
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

On 2025-02-26 at 13:41:34 GMT, Krzysztof Niemiec wrote:
> On 2025-02-25 at 11:41:56 GMT, Mikolaj Wasiak wrote:
> > When driver is loaded on system with numa nodes it might be run in kthread.
> > This makes it impossible to use current->mm in selftests which currently
> > creates null pointer exception.
> > This patch allows selftest to use current->mm by using active_mm.
> > 
> > Signed-off-by: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
> > ---
> > 
> > This patch is mostly damage control. By using active_mm we expose our
> > test to foreign memory mapping, which sometimes makes the test fail.
> > That is still better than just having null pointer exception in driver
> > code.
> > 
> 
> We talked about this offline a bit, I'll recount what we determined here
> just for the record.
> 
> On NUMA systems, the driver might be probed via a kthread consuming a
> workqueue. This shouldn't be a problem as long as we don't rely on
> current->mm (i915 usually doesn't, unless it's ioctls where it's fair
> game) - but this test wasn't written with that in mind, hence the
> derefs.
> 
> We can't just use current->active_mm in place of current->mm inside of
> the test code, because one of the functions that the test uses
> (vma_lookup to be exact)

I meant vm_mmap() (called by igt_mmap_offset() in the test). Slip of
tongue :')
