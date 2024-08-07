Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 622D4949E02
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2024 05:05:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99D7610E0DB;
	Wed,  7 Aug 2024 03:05:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KXG1KZFG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1959B10E0DB;
 Wed,  7 Aug 2024 03:05:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722999938; x=1754535938;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=XH+5/iqqw0gh6FzxkF+5tWoafWSrEjJ0hO8PdKfjz4U=;
 b=KXG1KZFG+B/rgnmcNfkKDv9UWV5nDg46VPi8erk6mw2mfYr3XOAbRQNW
 zhOoJhDiVrxF/0feYxNHhaBNbdp4Sd50xoVOID3u31yJ8f+s2LBqgOzXL
 C69EzcXZPxorIF+hz4rPbKL2ldZkUDdiE/ivAXnaEfFPr0HNv77XYNLCN
 MiFUG/JiLhUXZSv4d1Cpm+wr95i64FKXr+GcbAqSiaGmZ35DfKDbQgx9p
 J9mW6chcZgw84pXK3SL92TzEryH3b2aHoJJBhgH455DYn5O9zeBz/1z6q
 IRgsShbLCrwYvrMrHi3eF/fIH6unrE7HaeCjZcF6uT8mGgsXzqcjSa7k6 w==;
X-CSE-ConnectionGUID: +bkaPwb2Rpuk9kIisic+IA==
X-CSE-MsgGUID: CovQAoyMR+y0dxEmNia/vQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="20906357"
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="20906357"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 20:05:36 -0700
X-CSE-ConnectionGUID: jbXe4b+yQV+HcF22NykaxQ==
X-CSE-MsgGUID: Xt3xftyySQKK9bCqT7qqXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="56397297"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Aug 2024 20:05:35 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 6 Aug 2024 20:05:34 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 6 Aug 2024 20:05:34 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 6 Aug 2024 20:05:34 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 6 Aug 2024 20:05:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tbrEjRtanr4ajwH0iJCQB85OZnycV0oPy2EW7t/YFA/1Tw92niBdpNG740ed5Yac5tMW/nvRgYGx37nwrW/4fNlcsYaq6txCT8nmyOt7ZeCCLOHPx3AINuKEy6X4vlQALlNSFHJsKu2TcX/KR7TJuO3xXoMKT5uGvu3BZd63SLGqm4Tu+HUzPAiplso2wzMQIgGOCK9sqPS1sHYJg4otTyB4ViroDDCkBale7Tk2/RkUjUEscFUSLmJO8F/9cdVwfTcUIuInGcJ9KDrnnviNRQu0ktCiTkIsZMJ4K6fv9t1ygxRrdzRVHfzBnLKIA6bjLZvz8uDJtNuR/kAJoXb34g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gG0aJaAmF6vbBUF8HU5oq2mLrD+NMCIxZ8n2+gSaCQw=;
 b=uc/kZPuiKIgyfV2bW5xT5c6a5Ln2+gXvwZ6bwotBUYVtG0uTf3vYMQ/b///McJ8zHgwI2Kc5VTeeq+9QPu6w92mRE/8nxyP2a2pB69dCbXzeB/I3W6uuuy1C8eIQkzUc9c9awe4GF2N26RgFTrZ0Kdlk7HXERucNqxr1J4U7oJrf/M40NXpLcMGf9N82IONs7ADnDN9ECG7uQNZLML6g2eijBR7YBgMwSjGcUYjGpCvHaTW5340Pihby3MQgn0p/7JHmQfC0N4IUFm5s3ObTSOBkRwEO1uGIu6mSSqhBG1uXV3ZpzVw+8ein4KTGkYUmAQlUX2zMDXXgo3z41updBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by LV3PR11MB8727.namprd11.prod.outlook.com (2603:10b6:408:20d::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.26; Wed, 7 Aug
 2024 03:05:28 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.7828.023; Wed, 7 Aug 2024
 03:05:28 +0000
Message-ID: <762e5a76-95c1-484a-b537-0a110521d5ac@intel.com>
Date: Wed, 7 Aug 2024 08:35:20 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] drm/i915/pll_algorithm: Compute C10 HDMI PLLs with
 algorithm
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20240806125827.2183899-1-ankit.k.nautiyal@intel.com>
 <20240806125827.2183899-5-ankit.k.nautiyal@intel.com>
 <87bk2569cl.fsf@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <87bk2569cl.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1PR01CA0143.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|LV3PR11MB8727:EE_
X-MS-Office365-Filtering-Correlation-Id: 4f93933b-5007-461e-f002-08dcb68dcaa4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cVFkSVp4alZhS2FBS2pzMkZ3Wjh5NkpTcmxiMDA4VGcrVytkZGE5Mm9GVnJJ?=
 =?utf-8?B?Y1YxOE1IZ3lUKy9hV01lSjhEOXRJS0JDN25TY0YzcVBabEhjTHEySjFLa1c3?=
 =?utf-8?B?c0UzOEJ5RU5TYXo0V3R4QmpQeDBRNkJ3OFlKaGVLMnlmN043b0VVR3dNaFA3?=
 =?utf-8?B?Y1lpTUhYSlZSNHozVk1SVWtKU0I0eWR6S2NPT2Q3OWltM2pJNGM3TDBlQ09x?=
 =?utf-8?B?cm9PT0hUWThEY1BMOUZvcGZLSHFwTXZwZXRvaWNlNjVtNklyRFB4YTNGUFln?=
 =?utf-8?B?aDZQMm1PMnRNV3g4ekhjQ0RGYTRpV0xEK0tPUFI2dVZGVytrY1dVUFA5Q3U3?=
 =?utf-8?B?aVBzc2cxTzhFb3JxV2pyajdoK0FHcnZDeSt0RWtaR3I4N2ltaEU3UFhPUHVN?=
 =?utf-8?B?eW9OaWVEbTcvYXRqYUJNbCtMUnlNeEh4Y1ZScy9LQ3F0UWNONTdCQW91ando?=
 =?utf-8?B?UzJQYVNDSVVBNmQxUnFkcVNHS3VFaG5UcFJGNlVTSk91T3pYSDFySC9pc0Zx?=
 =?utf-8?B?YVMzT2gwdHBzMXlPalNtRUhrZm9ybW1wWUJuZGJlTTQzQUxZWEl2TWE1eUp4?=
 =?utf-8?B?YlZKcVpjcy95b0NmNEVwai8zNGxCbk5MKzBvSi9MNzg3RnNXNituZUlHa0Z4?=
 =?utf-8?B?dWVETTJjcVlQWk1WZ2Q1QUZqOWYzeE1HQ2didStGeXhMYXZXRTBPSENORmpk?=
 =?utf-8?B?WjA0Z2g5MDMyL1g2SjRpaWpqK0MycXlhU0hYaEtJUjROOE5uZVozTW1Xckl5?=
 =?utf-8?B?eVJJaTdYUXVMQW0yUnJIcnRRNTd5d1p3cmJwT1k2RlhqOVJFcytzb3d3Z2kx?=
 =?utf-8?B?Rk5uL3hnYUdTcEtVTGNyY0daSWEzNXZycDdxV0ZiZjUyb3FDbGVxZVNpekpo?=
 =?utf-8?B?QjlsQnZvbFJqSEVjMk1XQWNDeUpxNUR1QUl0UjhMK24wUm81L244WjJOMDFT?=
 =?utf-8?B?SUhYaFVTMjdkNFJtYWd3Q3c5NFhVWnoxYTM1RjFmWHhkWnNlMnEybkFyOE5s?=
 =?utf-8?B?UGxpVFk5OTQwU29lbUxldmFta2hLSFFXZEtwOHBnYy9NNEh0QTMveW05OFNs?=
 =?utf-8?B?dE5RSGVSRVRQZURwR2h4OGlYMzFDUjhNeGlFZjZqUTdLbFhaNWlvMnNsUG41?=
 =?utf-8?B?c3RyNDFiZ3diaUZQSWFTZlFHN2ZxcmlsM2tVZDhIUUhqNjJOTGtrMFNUR1cy?=
 =?utf-8?B?YjJ0aXFKYlZxdEtuQUQxeGY3QzJDanlnTVE4Mko1NFNMZjk5S1VyajJINll2?=
 =?utf-8?B?WG0yTkFtM2xia1I4Y2hQR1hYMWw1RitLaU41NHlycENwSjZtVGlSSGNhdVJM?=
 =?utf-8?B?bW1Tc0IyS1RPOSsreVdTRVZneVFVdTIzMVZmeEsyUTVmN2EwSjhON0pqVGps?=
 =?utf-8?B?cE94OGd3Lys2NFUzbVd6emhxSG14VUlaaEFrdncxMUMzdWhvWnNoTk5Ha25t?=
 =?utf-8?B?Q1RkdFk3U3B4V3ZDMFZUMTdLZ2x2WnJNZ29nU2VkNEZXTDVHVnFTd3BWY2Fi?=
 =?utf-8?B?YnFtMXJjZGpTRU1kUEhqbG5LMXZ1SDdnL1NxWlpGSDVWR3lwMHJJYm5jQXJo?=
 =?utf-8?B?UDlHaDNhMVVHMmltRjJPaWd2L2htZXFKK1h5L09PK2UyZUpSeEszbTM1UFYz?=
 =?utf-8?B?a092UWI3LzdubmpkUUZxekhTenZQWkR5bk5NSEVIVnlHdmxFaXUzYVZYZDc1?=
 =?utf-8?B?ZlZ4aENBTDhQTFRldGt4MEtCQkpEdC9LRG55czcxRGt6RERURnU4bkF4eThM?=
 =?utf-8?B?NUFnUTFRUWphZWQvZFlONE83NnhzZ3lQQWZUZ0FmNTVZZ1FIVzZQQ1J6WXkv?=
 =?utf-8?B?WjdlRkc0Z2UxeW1IbWx5dz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QTF5cUFMK1VDNWV3a2dLZnlTUUJOQzZrVER6d210L05Lc1hKamdscUdkQmZU?=
 =?utf-8?B?R1NPZ1hkUHl5elJCVXViaGthM0JEb0NxRnl0dEdpV0kwbHlRTEU5QjIrRVFL?=
 =?utf-8?B?Rm9UQTZSdVkvbGRiS2xnTi9TS08vbysvNFhxUnRKMUZOZ2tYRUY1cDhMOFhq?=
 =?utf-8?B?Sm84LzNBYjFUejRnczVnanphUnJoOWtnQnBZRzFySDlScHdMMXBXeUNWTlBq?=
 =?utf-8?B?b2x5RzlBdVh3TVhXUWZneTRvYU95VVhDRFVoSU9zTlpZT0tPcHJuZnprQnR3?=
 =?utf-8?B?U1k4K3Vnckk1clcyU0ZaU2xSQ2ZVbHRJdGVyN3dwS0ZEdFFWbjFWWUJIeTI1?=
 =?utf-8?B?OEx4aEs1TTNMRHdTckpRa1lYdXBpMTFWN3NJSkcyK0NySnJSM0NXTm1mTGls?=
 =?utf-8?B?cElabkZIWDYyOVdvbTFURkYwY3RpcG5BT2QyVG1jNjJ4SnVWK0RVOVV4QWJv?=
 =?utf-8?B?WFFXTU9JSGZKYlRMZkNxN0NBaFQ1SXhqUXBBTGk2SUJCM1VKbVdkbUsxVWU0?=
 =?utf-8?B?Q3JHaW9hQUNIeTV0WUg2aXp4bE55MnJPRU9yc0RvRGRKbEl1eXVQQy9DTXJ0?=
 =?utf-8?B?QmprK0hiZ1NHYnZ2dG03K1RKblpBeHUzelFtZHcyMUFmY3VPZ3JtTElmZ3Ry?=
 =?utf-8?B?aDNnNm14SVZJR0UzUTZ4eG82U21ZNUdWTUh4cURKb01PMzBhU2RqQ3J1TUdk?=
 =?utf-8?B?Q2ZXSmNMUm1DdzZ6NWlSQjV3VXBkL3hxWWJsOHBidC95Y2hUbldET0p3NWlD?=
 =?utf-8?B?VzQ2VUVnYTIzQlRxcnA3SzRXR3hlU0lCblVrWWVUV1l2aEZSS3VKZU1tc05K?=
 =?utf-8?B?Wmk1Z3NQeXZkR3ovUzZPd29TL0tQa0lEQUQrbW9kZU5NbFNuVGdITWpiMlJX?=
 =?utf-8?B?TXZ2anNPaWZCdmpqdVpPYi91RlNzZXF0ejJUcDZMdysxd2dUM1k5NjBHRnhB?=
 =?utf-8?B?Uy94WGV2akcxQUd3cC9UcW9MVVl3WGdYTTJibmdra3pyT05oaTduRXVJelRp?=
 =?utf-8?B?OURNY1VMcEtNS09CL1NEemNVbDErRFMvd3FVYkd3ZkFmUGVmRkxOY3AzOCsy?=
 =?utf-8?B?VTYzUmJNcGgwTWxCQUQrTEttaUpaMzJHa2dZUXVnWW5zendDS2VUL3NocGd1?=
 =?utf-8?B?aU1Hak9GZEw1M2htaGhrdmNNbHg4YVBVcHhCbzZ4N2d6akt0Um5vbHJWVmZU?=
 =?utf-8?B?a25ycUUrOUMzZzI5ajdrUkVaTFJDTWlKV1Vic2tRSmRteFRpQ1FzR0ptVXdy?=
 =?utf-8?B?RVF5QTR4eFNWcnczQ0pQT1RvbW8rYXR1a3FvZko2TitIWjNMVnUrbHA3V3Nz?=
 =?utf-8?B?VklZaHJKekwvTjFtOXhjZ2dJY0t4NmlJeVNJdktEd1RldkFWQTlobGZobElG?=
 =?utf-8?B?RW5nY0tzQitzL1pOMUNSSUd3UzBvZ2l2YWRwK2JJcDhucUYxYThBUzJrUW5W?=
 =?utf-8?B?dFhiazVGSzEyWkgycnJ5RmtNbnZuS2NhQkVvRmFyREE3Q3pxOFRMTUcwR2Zl?=
 =?utf-8?B?dXZPRlltVm5DaUY0SmdjTnZkWUxBRDF0cnFvbG44b0pEMmVNLzJhWmlLbnJ6?=
 =?utf-8?B?dUptSGgzM2RISktjTnZCdzQyVlMwS3prTks5cDFPMmZOWGcydnY0TkYrN3Va?=
 =?utf-8?B?RlZrS3VtZy90NWRqQ0dTMGRjb0kxbVBBclJiT2E1R0dXNElXV2tlNFZBSlNv?=
 =?utf-8?B?dWdVNndmSkVtdE5wTEh6cDQ2d1QzSHB0Q0JsQmo1TzNjVWkxbUJlSmVndGcr?=
 =?utf-8?B?Q2hVVjlWNXJtTUJTM3FKSE14NEhnc3lieHhpTktzeVhyU2ovaWEvV3djMjNF?=
 =?utf-8?B?K3RHaEYyeUZlUUgybGROSkdaWmI3dWx2T2pSd3RDTXhIZ3VlN2hGZUpjczJS?=
 =?utf-8?B?d3NzaVEwOWVQMkZFd01lUWp6NXpIM3RhMHVObDEyMzd2SVk3K3NQQjQyaWhv?=
 =?utf-8?B?aVFKaGxFR2MwOG43cmt2QlloSnN5aERWc3QzV0d2RFdFWU81dGV6Rk5KcXg2?=
 =?utf-8?B?U0s2dlR5M0ovdWY0bXlVVE4vcjhrMVN3UXZyWjhDVjRnaVZiMG9EZmZteWEv?=
 =?utf-8?B?eFptUklZVVhEVFFNMVlXRUE0V2R4NlJPdzJ3dktNTytwZFl3bnlDd2xockVi?=
 =?utf-8?B?V0FIVEoxcVp4WGtHK1UvZkpjRm9WSlRwLytiSDl5UWJ1SXZDWURMWEluNVRY?=
 =?utf-8?B?dXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f93933b-5007-461e-f002-08dcb68dcaa4
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2024 03:05:28.7544 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Zvt085sneLqJB+eAefo5uUdrKuUGpoIXW/w7/nkBGcVQeVSZL0fTxFupaGZPDmQ+TyOyanU4UdNbfuJk76ZujE2TOI8VOhJxLhzuEXgoMP8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8727
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


On 8/6/2024 7:29 PM, Jani Nikula wrote:
> On Tue, 06 Aug 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> diff --git a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.h b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.h
>> index 9f60bd9bacbe..288289ec593f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.h
>> +++ b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.h
>> @@ -8,8 +8,10 @@
>>   
>>   #include <linux/types.h>
>>   
>> +struct intel_c10pll_state;
>>   struct intel_mpllb_state;
>>   
>>   void intel_snps_phy_compute_hdmi_tmds_pll(struct intel_mpllb_state *pll_state, u64 pixel_clock);
>> +void intel_c10_phy_compute_hdmi_tmds_pll(struct intel_c10pll_state *pll_state, u64 pixel_clock);
> If you have a file intel_snps_hdmi_pll.[ch], the functions should be
> named intel_snps_hdmi_pll_*().


Makes sense. I am considering having:

intel_snps_hdmi_compute_mpllb(), intel_snps_hdmi_compute_c10pll().

Also realized that the subject prefix also need to align with new names.

Will fix these in next version of the patch.


Thanks & Regard,

Ankit


>
> Or you need to rename the file.
>
> BR,
> Jani.
>
>>   
>>   #endif /* __INTEL_SNPS_HDMI_PLL_H__ */
