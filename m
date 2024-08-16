Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 149D9954401
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2024 10:23:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4C5A10E5D6;
	Fri, 16 Aug 2024 08:23:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T4OiRP1l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01EB910E5D6
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2024 08:23:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723796612; x=1755332612;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=T73K5uo+Uk9/wVjidAKhUCERmvlyaYttoBeyt4Y1SYk=;
 b=T4OiRP1l4B4vY7pe5COf7x0MzGqQBONdq6LlyhK56eK+kQo6GBIHag+s
 XhJmov6+C8wge/KVxebezG9ifOrmJ2AgxCRP+DVSKbTX8/DJt5ivZJVGt
 7w7PSFPaaT+GBQfKcuwtdNzmQYDuP3fm1JJpZG6vF+FpsegXx5VZZAmmv
 m6SbF3dgBCrHAit1W7sNT1UuLV0qRvIGjOhtpwlhTnxDDlIBnV0WLD+wl
 ZgkUtPNYE4uR4WDdAAbObE6pxx7ixETbGaQFQQ6D0KDxvEPbF9FdN6SPl
 wFaBAzTSTMM27Hj/0K2frK44lTad0yPBaDJ5d9WQLWwgOB8o7XTn4rB8Q A==;
X-CSE-ConnectionGUID: ChS2EzTvT3GwSAPX3yOrSg==
X-CSE-MsgGUID: /QGwlBtKQC2Jts+E6mOyWQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11165"; a="33473589"
X-IronPort-AV: E=Sophos;i="6.10,151,1719903600"; d="scan'208";a="33473589"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2024 01:23:31 -0700
X-CSE-ConnectionGUID: HwOCSB98RtatuZLa8Wdj2g==
X-CSE-MsgGUID: Fi15FivfT5+wVIvuMpsnXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,151,1719903600"; d="scan'208";a="64017114"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Aug 2024 01:23:31 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 16 Aug 2024 01:23:30 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 16 Aug 2024 01:23:30 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 16 Aug 2024 01:23:30 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 16 Aug 2024 01:23:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=f/mzoxR80FWjG8oznh/HsgmrUj+OlkSKRqXK5cuo6GT6qiOhYBHKdr+Wj0fZodr2v9h0m1k6y159bMtF0XB6sO2crxKkayZ5IDgnl2SG80pWV9ya3uw6090c1NXmh98M4leD2p4JiKBdNkW+MAfJt9tE7KN/spyGybParD4/cM87gKdfJosZZrR61Rl/bjJGXs5H8uocbjlqhcKZR8SyRfJpKZ/XNWWGLWqIrBKpsgxpUQ4v+M1pwvkXI+hFKtWd+G6HG4LFRGNJzWsMFLCagdvdq+uBSuprP6CcnUT9n/U3BAd8JAikFdKKcQCBVBNuNTWlkOg4JmVa2iEbLmeAoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kXB4Va0SZjkTZm3KqSJ6IOHrxRmC8BDKWkNzryP4bp8=;
 b=GbATXe90p59+aOZ7hypGEkZGmGmiyfAS7PyG46Rc5ep1S9FCZax9smDdlgz3pzebzRcMZJjLWKUuOoa7lCEfIGkI6xe7lnbR6wwse+AiVGZdt2dmpsA02KsC58QFo4y444SWSmO9mrnR20bq+2H3YbTzoveUjWMY3hDLR98DDnXpa4waiOPEpkUbAi3g8ogabejeL45/lHvECtRXiOEUCTrgAv2t28OHAjaKr9BNm2fAUpzKW+0KQS4L9+DWFWm+B26FY/wWx+u0J7jWJ5eLsHTRZajnKQllexRnm5Fg7iLH4ffX1AU4oJ7x4WFtiapzpc1Ju/AQBjjgaC1PPQcahw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5332.namprd11.prod.outlook.com (2603:10b6:610:bf::17)
 by DM4PR11MB5277.namprd11.prod.outlook.com (2603:10b6:5:388::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.20; Fri, 16 Aug
 2024 08:23:28 +0000
Received: from CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::b398:8ab5:cd4b:a2ff]) by CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::b398:8ab5:cd4b:a2ff%7]) with mapi id 15.20.7875.018; Fri, 16 Aug 2024
 08:23:28 +0000
Message-ID: <a1d82f03-960f-412c-b693-6e2ace5e9a55@intel.com>
Date: Fri, 16 Aug 2024 13:53:20 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/12] drm/i915: Add some essential functionality for
 joiners
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: <stanislav.lisovskiy@intel.com>, <jani.saarinen@intel.com>,
 <ville.syrjala@linux.intel.com>
References: <20240718081803.3338564-1-ankit.k.nautiyal@intel.com>
 <20240718081803.3338564-6-ankit.k.nautiyal@intel.com>
Content-Language: en-US
In-Reply-To: <20240718081803.3338564-6-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0003.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:80::16) To CH0PR11MB5332.namprd11.prod.outlook.com
 (2603:10b6:610:bf::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5332:EE_|DM4PR11MB5277:EE_
X-MS-Office365-Filtering-Correlation-Id: f203f960-af59-46ba-bc07-08dcbdccb46d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?b0p5OHF0NDlkNWcxRm4vdG90WTRaTGxxNkR4SnJYdDZlTG9jWE9xK1hjTHFu?=
 =?utf-8?B?aFpDb2trRFZJOVlDZWYrOFhNK1JHUTRTWmkvOHp2akJmWDVFV09Kb1NlWW13?=
 =?utf-8?B?YXVjMHduYWs4ZEtjSXNvMFUxRnRTT1lDcHFHRUFJWFlTeE9PODVKN0pXYWJa?=
 =?utf-8?B?WUQ0LzNBbGJqcUJ4N0JrazhwdHZaZkNHQU1vUnFPSnRDQlhEWEEycFBBSDZP?=
 =?utf-8?B?SitmSjJreStWY0g4dGlKc3h6ZGVDZENFa3h1UG0xQ0xNbVBxeE5UMDBUYStN?=
 =?utf-8?B?cHB6MmRycmsxTVVDYzFtcUJINStVQm45K3NHZHFnTDVUVlEyMlA3VDlNTXlS?=
 =?utf-8?B?YXdXSHZSN25sc3l5WXlNamVvaHRLTnJ4MDFiTDhDSkorWnE0Vzk4NHpJRFkv?=
 =?utf-8?B?RGVYSHhEWFpYWFVEdS8yWkJkUnpMZklubmV5TjNZRTUxakt2OTFvaGZtenIx?=
 =?utf-8?B?N0drME9RMnNNYkxNbGw5NDRHS005d1pGU3RiWGdsdnA3QjBkREE2SWwvc2RX?=
 =?utf-8?B?RWRsaGs2ODJZZEtnTEFUbGxrZ1VvaXFYUHdqMEtFN0hNTTBMdkJPQ2Q1TWtn?=
 =?utf-8?B?VC9zKytWbXR1bEFYNHJQWS9yUWpVaXdaQjNKbE1WcHhPZ1hsRUkvRzFlNG00?=
 =?utf-8?B?Smk3M3hyQnNXSUJJM1pKSGNIcjhBTEd4Z3BJbEgyRHNuenY5M3lnMU1TTGgv?=
 =?utf-8?B?aFQ1L2d6b3FRbG1QeVNPMERESklhREh2bnJFam5tSVgxVE1GS2FubVA4UzVa?=
 =?utf-8?B?ZnZCd2N1Y25oRWJVUy9MUUtESVJuNnNTWmQwNXRHbEVHeExuZzVwQkZXODhG?=
 =?utf-8?B?c2RyQnhjcHNaS201VFRDb3VDMmhTMnROcm5DR3lkQVI1TVl1K2JrOEs4NHhu?=
 =?utf-8?B?S2NIWXNOR2xKTzZEZ1YyeDh0RVVJTUZrVHpHVStOeTdueXZoWmlveXJwZkg1?=
 =?utf-8?B?ejVMaWdsUGZuS3Q1MTVxenFONzFhclFER1VnRitYNlQyWVBTbEk5OElsT1dv?=
 =?utf-8?B?Y0dIRFBYY2RMcVR1V0tWNUdjZno4RlBSNnBVdUZ3S2FZOWs1VmRHc3ByT2NI?=
 =?utf-8?B?WU14RGJ6RHljTFVuU1hmT0hkTTZVd09UT1RCTmZSNjZvdmxVVi9IcTE5NjlG?=
 =?utf-8?B?eDZTVkpyMlJpSFRZSUZhemY0Q2p2SVdtMis0cEdxdlFFbjRZOVVNL1BHbHow?=
 =?utf-8?B?UDdWbXFZSjR4WUpSb2lBY0hCWjM5S09BV2lvc3JhTmFRU0Q4cktaMCtxN3VC?=
 =?utf-8?B?a25URzIvaStkWk5EZ1Fwa28vam15VGZPbXhXeXFoUFJBSi95UmtmNmVsRVhT?=
 =?utf-8?B?SmZBUHRnM0o5MGQ0KzN0dUdINFp2cEsxcVJhUmR4R1FwZkxPSjQ3ZjRkd1Fs?=
 =?utf-8?B?RUdsNDgwVit1TlhTbXRuQmh1ZjJxVkh4SG5OMDV3UnBCNTF2YVJzWVRPcDdx?=
 =?utf-8?B?ZVVhMjFIQ3JuL1VTNVE4cW53Q3kyeGdYSzRiQ3F2bmpkU0tOQ1R3SXBqSlFq?=
 =?utf-8?B?djFLcEk5djRmWEx2aEZpbUN3VzZxTzl5a0Uyc084VE4vU09QbFhqckg1WVJW?=
 =?utf-8?B?UDBmOTEyNE9KZzA5YWpQa3JQNzdyck41ZWRCN3NnSU1mQTk5YzlZcmFTMDA4?=
 =?utf-8?B?TGhiR3dqNUpwa1Z3U0hzUHkvVkFHemgvR212M2VpQ3h2cDdGUVQyNEczMlRk?=
 =?utf-8?B?R0tyaW5GL2x3RWswUlJUelRYVFIzQ09tUTUzdjVscWpBQTJvM1F5Yy9ObGtM?=
 =?utf-8?B?aTJ0OGl6Y25kZ2pXdk5DRzNZT0g2K1Y3NVo4WnBKN0ZjMWtxTldiOHJRZXpz?=
 =?utf-8?B?MFg2SGdtbGs4cHdIYlQ5UT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5332.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bzFxTElTdUkvd1dxcmJhWFRSOVZBdmhSK0FoNm9WWWJybmYwYTlJcXdSdjZj?=
 =?utf-8?B?eS91K2gxd1JSa1BrS202dnJid0YzQTJUY2FXK21rUXhFVXJDczFQMFFBbThl?=
 =?utf-8?B?QTNCUVRsVDV4V3dxY3BoOGFVVnJva2FIM1BVb2NkTlczbVJoMEI3WmZ0RmlC?=
 =?utf-8?B?SGJxRmpVVUh1QlFvTWZrdS92KzF2RGgwS1A2amhxUzVCKzJWSDhxbUQ4S21k?=
 =?utf-8?B?NEFMajBBelNreUFiUEs2d2tjMDRSMUVVZ2VyakpDeDhaZ01Zclp6U3ZZNDQw?=
 =?utf-8?B?SlhBb3RRdWhoQXBLdDcrT1YwTUxYUE1IcUFCOGZaOWFua3Q4K2Y4bXpQN0FD?=
 =?utf-8?B?MHNoNEtKdkNQb2lPQzY5UTNlQ1ZYUFBXcHJwZHQwaHdtVGtuNWJkNUlKL0FL?=
 =?utf-8?B?Uk52b0dvc3p6WDlpajdrR1JVQ0ozNG0zay9acHg1anNBMG4zWGRTWkswTnZs?=
 =?utf-8?B?OW85ejh4aWpDZUNpT1ROcnREWE9nRTliVXZQMzF4bzBOVHAzNjVGVjhDR3Zv?=
 =?utf-8?B?OVpYUWNHSU9oMkw5WTUwNmQvSnFhMGJwVFpDaktYQnRkWTd0MkhkVkJJcTlS?=
 =?utf-8?B?bzlQZ0pyYXdaVVdjOTE3T0F1ZjU2OGJpbjJMVGJHVGNDdGdYbDduRlRnMmt5?=
 =?utf-8?B?YjNzY05vVWpjejNXbTVSVVJHaXYvN05lV3pkRHVaZk1WOVo1bzM4d3IybWN6?=
 =?utf-8?B?OXFXRUp4WUFSZllORjhnSzh5U1lzNDRZRE11QXFkOGduQ25sWkNlV3JXeFQv?=
 =?utf-8?B?OUJrdDdTTnJPR2diV1UyOWJkaXZCc1J3enN0ZFdhdmkzK2ZrWXJmS3FEbkJN?=
 =?utf-8?B?UUZYUGMvWS95VWRZNjBJenFsaTRoQVhsb3ZwcXJ2Umg2V1JQdXF0dFZjUEdt?=
 =?utf-8?B?WlNnSGFWNThiREZOY2JpcE9wczhUeG1xNlZrakQ1dDBJVnZzdDk0QXovSnYx?=
 =?utf-8?B?TzFjcUQwMDViSWtlcmFsdGhRRmVzaWdDdlJXbDNNYlc5ekc0U200OEs1ZmxL?=
 =?utf-8?B?MnZVMWc1M1J0VUx3ZndEZkc3UEdSalFKVjdrTXRRUEp5WisvSGdqNkRyaFhl?=
 =?utf-8?B?NW5kOGZLWWVYdjkrV1RQK0pvZ2hiZWx1YWE2K3RYUFlDWmh1WWxXbmZoZkU1?=
 =?utf-8?B?dVdTSTIxZlhwSUhZUlFvbFBSSEpTdU5yQk5FbmxKNk5aS0pUWDVvRlFnSWJV?=
 =?utf-8?B?N2cvLzdLb1pnL2ZxSDA5eHBJbmFHazR6ZHUxVklHbkJubUU4SzJIaFhoVXBn?=
 =?utf-8?B?dk94czI4QW5yWWJyUUxzcGxvSFBGc0pYRWZZTnJxaTdJLzI1THZiNTFQS2E2?=
 =?utf-8?B?bFh2UHp0WXBrUGwvektxb2xQYXNKSk42a2NtYXB4a3E4MkdnYjlweFBQakcv?=
 =?utf-8?B?aEpJU0ZYUmNPdGJqVXBHd29MNEhYamJ2RWg2UjRPNzRmTWRLcDZ1TDh2eFN0?=
 =?utf-8?B?U09OakY5TGYydHRscWExSUdoRUFKU2JlNmhkOURoVlNkN2lkRUtZL3JxV3pC?=
 =?utf-8?B?Rm8zUThHaDZ5SVNCNFR4ZHRUSTg2KzRCSEZBUkorYTNCTWE5QkNnclJaS1ZK?=
 =?utf-8?B?SEdQdlFoR1dVV0lhREhjSlR6ODdzcDZOWHoxM1dTV1Rid1hnSEY0Q0c1VFNW?=
 =?utf-8?B?Njd5RC9DZkxOa25hOFhabXJlR0dreHFVTTRkajVLTTNXMGhGMkgxNXBrdjJz?=
 =?utf-8?B?UitKT01qVk1tTDRhZlpPUVY2VnRIb0FCTlNobEh2a1N6Rkp6dVIvZ25KTWhF?=
 =?utf-8?B?OHZ3RDlKQlpsVFMzY3hLNmFTQzAwVHdIb2xPRXRjZVBiY1VtdFRFY1hMdEFo?=
 =?utf-8?B?MnhiZmM5c255VEFLN1pQSzlTd2wrbHhVY3VPb056RGVaS3czeVJzaEp0dHVn?=
 =?utf-8?B?bERySjFiRnBEZDl0amxFaVl2dUxnOVBJVHlEQ2k3eS9nSWxBak1HNE8wNUwy?=
 =?utf-8?B?VTBlWUVPQUhJbmRyMEpVS0dnTDU0OHVLWjJ2MWFOMEpEWk1ISzVHRVZEdkM2?=
 =?utf-8?B?WURnRC83QTkwZ3BXNWp5Y0ZvcDAyd3dyZVdWYi9iNDZPN3dsU1ZJL2MxYTFw?=
 =?utf-8?B?LzY5VUZYaFBSckVsNnRVVWJ2YytSd1cvRXV0RmVjSGVYU2Nxa0prL1l5REww?=
 =?utf-8?B?YUNxMWZSckNmNzZZZ2RybGxrdVpaZUlVNzJBUGI5Qys1SU5HTkxQYUJodkxp?=
 =?utf-8?B?bEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f203f960-af59-46ba-bc07-08dcbdccb46d
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5332.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2024 08:23:27.9724 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oxXtwaQQd7SDkFXk6TY6Z+qFr0sqrRCixHMcL9ixGAtjh5KFMYKvcX+JEkE8CPDOVu0n6JvMX5BLWGoWwHdE+m7qGwMEzo++QvNKrBevdTc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5277
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


On 7/18/2024 1:47 PM, Ankit Nautiyal wrote:
> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>
> In most of the cases we now try to avoid mentioning things like
> "bigjoiner" or "ultrajoiner" trying to unify the API and refer
> mostly to all this functionality as "joiner".
> In majority cases that should be way to go.
> However in some cases we still need to distinguish between
> bigjoiner primaries and secondaries(such as DSC register programming).
>
> Create correspondent helper functions and start using them,
> in order be prepared for adding ultrajoiner functionality.
>
> v2: Fixed checkpatch warnings (Ankit)
>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>   .../gpu/drm/i915/display/intel_atomic_plane.c |  2 +-
>   drivers/gpu/drm/i915/display/intel_display.c  | 75 ++++++++++++++++---
>   drivers/gpu/drm/i915/display/intel_display.h  |  8 +-
>   .../drm/i915/display/intel_modeset_verify.c   |  2 +-
>   drivers/gpu/drm/i915/display/intel_vdsc.c     |  4 +-
>   5 files changed, 76 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index e979786aa5cf..9862d0339e6a 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -724,7 +724,7 @@ int intel_plane_atomic_check(struct intel_atomic_state *state,
>   
>   	if (new_crtc_state && intel_crtc_is_joiner_secondary(new_crtc_state)) {
>   		struct intel_crtc *primary_crtc =
> -			intel_primary_crtc(new_crtc_state);
> +			intel_joiner_primary_crtc(new_crtc_state);
>   		struct intel_plane *primary_crtc_plane =
>   			intel_crtc_get_plane(primary_crtc, plane->id);
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 26e4b0c2e9f7..38e7c6811bf3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -252,6 +252,68 @@ static enum pipe joiner_primary_pipe(const struct intel_crtc_state *crtc_state)
>   	return ffs(crtc_state->joiner_pipes) - 1;
>   }
>   
> +int intel_joiner_num_pipes(const struct intel_crtc_state *crtc_state)
> +{
> +	return hweight8(crtc_state->joiner_pipes);
> +}
> +
> +bool intel_crtc_is_ultrajoiner(const struct intel_crtc_state *crtc_state)
> +{
> +	return intel_joiner_num_pipes(crtc_state) == 4;


On having a re-look, I think we need to change this. Currently there is 
no way of knowing if its 2 set of bigjoiners or 1 ultrajoiner.

Perhaps need one more bit for ultrajoiner or a different flag altogether.

Regards,

Ankit

> +}
> +
> +static bool intel_is_joiner(const struct intel_crtc_state *crtc_state)
> +{
> +	return intel_joiner_num_pipes(crtc_state) > 1;
> +}
> +
> +static u8 bigjoiner_primary_pipes(const struct intel_crtc_state *crtc_state)
> +{
> +	int lsb = ffs(crtc_state->joiner_pipes) - 1;
> +	int msb = fls(crtc_state->joiner_pipes) - 1;
> +	int i;
> +	u8 bigjoiner_primary_mask = 0;
> +
> +	for (i = lsb; i < msb; i += 4) {
> +		/*
> +		 * Regardless of how joiner_pipes mask is set, currently
> +		 * we always assume, that primary pipe bit goes before secondary
> +		 * pipe bit. So in each set of 2 bits, least significant bit is
> +		 * bigjoiner primary pipe and most significant bit is secondary pipe.
> +		 */
> +		bigjoiner_primary_mask |=
> +			((BIT(0) | BIT(2)) << i) & crtc_state->joiner_pipes;
> +	}
> +
> +	return bigjoiner_primary_mask;
> +}
> +
> +bool intel_crtc_is_bigjoiner_primary(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +
> +	if (!intel_is_joiner(crtc_state))
> +		return false;
> +
> +	return BIT(crtc->pipe) & bigjoiner_primary_pipes(crtc_state);
> +}
> +
> +bool intel_crtc_is_bigjoiner_secondary(const struct intel_crtc_state *crtc_state)
> +{
> +	if (!intel_is_joiner(crtc_state))
> +		return false;
> +
> +	return !intel_crtc_is_bigjoiner_primary(crtc_state);
> +}
> +
> +bool intel_crtc_is_ultrajoiner_primary(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +
> +	return intel_crtc_is_ultrajoiner(crtc_state) &&
> +		(crtc->pipe == joiner_primary_pipe(crtc_state));
> +}
> +
>   u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state)
>   {
>   	if (crtc_state->joiner_pipes)
> @@ -276,11 +338,6 @@ bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state)
>   		crtc->pipe == joiner_primary_pipe(crtc_state);
>   }
>   
> -int intel_joiner_num_pipes(const struct intel_crtc_state *crtc_state)
> -{
> -	return hweight8(crtc_state->joiner_pipes);
> -}
> -
>   u8 intel_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> @@ -288,7 +345,7 @@ u8 intel_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state)
>   	return BIT(crtc->pipe) | crtc_state->joiner_pipes;
>   }
>   
> -struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc_state)
> +struct intel_crtc *intel_joiner_primary_crtc(const struct intel_crtc_state *crtc_state)
>   {
>   	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
>   
> @@ -808,7 +865,7 @@ intel_get_crtc_new_encoder(const struct intel_atomic_state *state,
>   	int num_encoders = 0;
>   	int i;
>   
> -	primary_crtc = intel_primary_crtc(crtc_state);
> +	primary_crtc = intel_joiner_primary_crtc(crtc_state);
>   
>   	for_each_new_connector_in_state(&state->base, connector, connector_state, i) {
>   		if (connector_state->crtc != &primary_crtc->base)
> @@ -4527,7 +4584,7 @@ copy_joiner_crtc_state_nomodeset(struct intel_atomic_state *state,
>   {
>   	struct intel_crtc_state *secondary_crtc_state =
>   		intel_atomic_get_new_crtc_state(state, secondary_crtc);
> -	struct intel_crtc *primary_crtc = intel_primary_crtc(secondary_crtc_state);
> +	struct intel_crtc *primary_crtc = intel_joiner_primary_crtc(secondary_crtc_state);
>   	const struct intel_crtc_state *primary_crtc_state =
>   		intel_atomic_get_new_crtc_state(state, primary_crtc);
>   
> @@ -4547,7 +4604,7 @@ copy_joiner_crtc_state_modeset(struct intel_atomic_state *state,
>   {
>   	struct intel_crtc_state *secondary_crtc_state =
>   		intel_atomic_get_new_crtc_state(state, secondary_crtc);
> -	struct intel_crtc *primary_crtc = intel_primary_crtc(secondary_crtc_state);
> +	struct intel_crtc *primary_crtc = intel_joiner_primary_crtc(secondary_crtc_state);
>   	const struct intel_crtc_state *primary_crtc_state =
>   		intel_atomic_get_new_crtc_state(state, primary_crtc);
>   	struct intel_crtc_state *saved_state;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index bf665f947b97..35e68e4cc712 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -424,10 +424,14 @@ enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port);
>   bool is_trans_port_sync_mode(const struct intel_crtc_state *state);
>   bool is_trans_port_sync_master(const struct intel_crtc_state *state);
>   u8 intel_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state);
> -bool intel_crtc_is_joiner_secondary(const struct intel_crtc_state *crtc_state);
>   bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state);
> +bool intel_crtc_is_joiner_secondary(const struct intel_crtc_state *crtc_state);
> +bool intel_crtc_is_bigjoiner_primary(const struct intel_crtc_state *crtc_state);
> +bool intel_crtc_is_bigjoiner_secondary(const struct intel_crtc_state *crtc_state);
> +bool intel_crtc_is_ultrajoiner(const struct intel_crtc_state *crtc_state);
> +bool intel_crtc_is_ultrajoiner_primary(const struct intel_crtc_state *crtc_state);
>   u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state);
> -struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc_state);
> +struct intel_crtc *intel_joiner_primary_crtc(const struct intel_crtc_state *crtc_state);
>   bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
>   bool intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>   			       const struct intel_crtc_state *pipe_config,
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> index 3491db5cad31..b53b810c6470 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> @@ -193,7 +193,7 @@ verify_crtc_state(struct intel_atomic_state *state,
>   			"transitional active state does not match atomic hw state (expected %i, found %i)\n",
>   			sw_crtc_state->hw.active, crtc->active);
>   
> -	primary_crtc = intel_primary_crtc(sw_crtc_state);
> +	primary_crtc = intel_joiner_primary_crtc(sw_crtc_state);
>   
>   	for_each_encoder_on_crtc(dev, &primary_crtc->base, encoder) {
>   		enum pipe pipe;
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index b9687b7692b8..11058bb37d5a 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -761,7 +761,7 @@ void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state)
>   	u32 dss_ctl1_val = 0;
>   
>   	if (crtc_state->joiner_pipes && !crtc_state->dsc.compression_enable) {
> -		if (intel_crtc_is_joiner_secondary(crtc_state))
> +		if (intel_crtc_is_bigjoiner_secondary(crtc_state))
>   			dss_ctl1_val |= UNCOMPRESSED_JOINER_SECONDARY;
>   		else
>   			dss_ctl1_val |= UNCOMPRESSED_JOINER_PRIMARY;
> @@ -790,7 +790,7 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
>   	}
>   	if (crtc_state->joiner_pipes) {
>   		dss_ctl1_val |= BIG_JOINER_ENABLE;
> -		if (!intel_crtc_is_joiner_secondary(crtc_state))
> +		if (intel_crtc_is_bigjoiner_primary(crtc_state))
>   			dss_ctl1_val |= PRIMARY_BIG_JOINER_ENABLE;
>   	}
>   	intel_de_write(dev_priv, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder), dss_ctl1_val);
