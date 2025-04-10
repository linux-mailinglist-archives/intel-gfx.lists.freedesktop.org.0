Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78428A835B7
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Apr 2025 03:24:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0D3A10E347;
	Thu, 10 Apr 2025 01:24:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FSNAxhaY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 436E910E347;
 Thu, 10 Apr 2025 01:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744248273; x=1775784273;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=dsMKAJ4BO71/8iejzxvheYu8DOxfA18iBotHRj08P7E=;
 b=FSNAxhaYjfr6GTO6Eg4eHH2BYYWGeKQJRYoRIy0SEgpMOJH6TPHE0Kmb
 oRGFIojcaKoR1nGVSVUNN7N+2Cq9fNTSRiTihl09HyoDwo+7leUP3RhMW
 p2qqEqapUvQ992GJca8s2c5LVcmZBiV95WdJktlxEKAg36H6S9HFaL311
 deeRu95bHKpgeZFPk3bLiV2dVHEyXi+K+CeYMr58EUUgozVGJkt+AIrw6
 1CnlVRzQwAUctxJqLaxA6DW/dna2H+/Vaw5CXDKR0caYaYydZYgwu6nqo
 zKWdg4f3M45v9qvm76jsRybMB/OFCUezAkRPDneiYa1x6EZNuHWxLOPR1 w==;
X-CSE-ConnectionGUID: VJLnPZlYT4yHIXt7dajIjQ==
X-CSE-MsgGUID: 7ci36/kcQtG7APlovY1gXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="45874658"
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="45874658"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 18:24:33 -0700
X-CSE-ConnectionGUID: iKTelpzZRpiilOMfp43tzQ==
X-CSE-MsgGUID: dOxKWwTlQZKw7XU8JF/GfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="128710027"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 18:24:32 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 9 Apr 2025 18:24:32 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 9 Apr 2025 18:24:32 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 9 Apr 2025 18:24:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NE52omzWQwsBzZICw6urxZ5gx00J/e7QvpuzNdtBTTkP6obVWaZvweM0rPFJVwbe24sCe5/LLAGkrjV6ymgIG0CuHsEbXslU4haRar7iArWGn9JW9uQFmNQkx7v+pI1iwSi517E3/7ISBFqKjnuZ6Fe9kSfmrQBxiS/IwZ1PQ0UengOzwdqHycVOklIeA7kdHQ12VirZIE0Ij6ReWtSV4l0WeDwHUdKzhcMpZbdLNC8noCz1PccZ1Gq+IGAETl4C2e9rrqRfbplkqOK63/qmnohDEKTaP8Cul9p3/U1UErAHdQqluAKm/Z7T8/7k7QkTqsZiaqExL9phl9SL2zydSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NDCMEw3wIMKHJW26tC/QC5bKH85/CG0HSegonDNSQ3g=;
 b=VKI/d69f3VobMYg0YtgECQ4/lapcuXbLeqwDA23HX68MkA6Qt0v0G9YO3s2Msvmem6agsjpc5xeMrmqHolkrVIDXtqbH7lGyoswGE2GljRN5kVdj69VE7i1aJml6jZfotYLo9dOqtAcGht0Rt3E7tLwSpGWVgF6P4wCHGZtCOltB0Z2wUjLpJ6jubL0/X3H8dpC/YvvVn9bT1p1nB+jBzwjT1elue4Zie3cV7hgbRo43Vi2izOxHlCt8qf+wK+hvZMA0599su2BGZA66BdJyx2WbGJolfgRhleBT70pXaf36JwP2up94W3lSJV34oigxnYlOM8RzXvY34QRtxzg8VQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7757.namprd11.prod.outlook.com (2603:10b6:8:103::22)
 by IA0PR11MB7186.namprd11.prod.outlook.com (2603:10b6:208:442::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.32; Thu, 10 Apr
 2025 01:24:29 +0000
Received: from DM4PR11MB7757.namprd11.prod.outlook.com
 ([fe80::60c9:10e5:60f0:13a1]) by DM4PR11MB7757.namprd11.prod.outlook.com
 ([fe80::60c9:10e5:60f0:13a1%5]) with mapi id 15.20.8606.029; Thu, 10 Apr 2025
 01:24:29 +0000
Message-ID: <8ac99fe1-909b-4ffc-87b9-0070d22c9afa@intel.com>
Date: Wed, 9 Apr 2025 18:24:22 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH i-g-t 1/2] lib/xe_gt: Move get/set GT freq utils to lib
To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <igt-dev@lists.freedesktop.org>, "Riana
 Tauro" <riana.tauro@intel.com>
References: <20250407234406.4084642-1-vinay.belgaumkar@intel.com>
 <20250407234406.4084642-2-vinay.belgaumkar@intel.com>
 <20250409111306.p5zba3pmq2kkllad@kamilkon-DESK.igk.intel.com>
Content-Language: en-US
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <20250409111306.p5zba3pmq2kkllad@kamilkon-DESK.igk.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0017.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::22) To DM4PR11MB7757.namprd11.prod.outlook.com
 (2603:10b6:8:103::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7757:EE_|IA0PR11MB7186:EE_
X-MS-Office365-Filtering-Correlation-Id: 93b949ec-e49e-45a4-85e1-08dd77ce7065
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?T0JCdG9KS2pSVzEycE5UU0lXWmh0Z3M2aHM5YTFGMXcwVWRUaVUxTHV0MGQ3?=
 =?utf-8?B?U2VkMTdJNFFtbk9BNThFOFBLMStmQVFsaWtrY2VBVEVWdEU0ZjBoVDRoV0pD?=
 =?utf-8?B?NW04TklJaSt3STN5NFkwU3NCRWxUVUM2SzBoblczcExhWHZ5a2xXMC91OWxF?=
 =?utf-8?B?RWdNOHFOcHhWUGl4ODdoWW9Pd00xcE1wWjVYOTJwUUJySzdacm8wYS8xUCtx?=
 =?utf-8?B?aXhPRWk4R1hybHprTGc1RnVlNitSZ3RLTDBPeDFrclg1OWdGMFZ1ZFFtaFNV?=
 =?utf-8?B?VjFYVlhjYUUzQVlFekVkRDh3bllJdjlMNHZLbDNiaXczdjl0cHovcXlzQlY4?=
 =?utf-8?B?WXYvdjFUU1RWOEZqQm0za0JXVi9HaDJnWU1pSTkwdWpzRU45RGtGdUZLY2ZH?=
 =?utf-8?B?bE4veURtSmFQakdyc3BwZTR0aXI2V05sNktpOEpDSlBpK0h0WDFIZW16SXpM?=
 =?utf-8?B?dThFdGZlR1dtSVpJVkE0Z0RPZmdSUEl3RVU1dDRJak8vTDl3ZlhWRSsxNWQ4?=
 =?utf-8?B?bE9hY2ZyeEhsWEV6L2tKcll2WTk1cHlGc09ocUpWbHJzK0VzMFF3NDU3Y1Ay?=
 =?utf-8?B?ZUVpYS9MeWdBTTMvY2tWMVk3TGJ5eU9uMFE2dGFhYlgxcmhvUG0rS0RCUzNM?=
 =?utf-8?B?MXVyUDlORFllMnY3cFlFcURLeDBNeVBtQWE2SVg4QnpJVU5FbG9kUStzWUhx?=
 =?utf-8?B?SHl2V0pBVHFTY2Nxa1ltUkgvU1RES3dUc2tWNWY5bkRlZDlud0JjY2NGR0RR?=
 =?utf-8?B?VFdtR0Y4eUFjSzMwR2JxYWpCd0ZSV08xRUo4Z2VseVBPell6eENSV2RVMVBm?=
 =?utf-8?B?MEZGTUtyVzVQZFkraHZScFFBdW9XQStmQmN4T01LeHZBZ3V2dUc5SVUzUGFr?=
 =?utf-8?B?NnBLRldvVUxMZnBMSEdpeUYyVERkTE9Ma3B1U3I1YlcyRnFIaUo0NGhEUVhy?=
 =?utf-8?B?cjZOSEd2aHA5SVMrSml6YzlQakp0dWExaFZTeFRLTU5pRXByckJJYXdHNnJO?=
 =?utf-8?B?UklyV2p6YXd6REpVOUZSdzRwWDJVeDhhRnFPSWZkWFpIOU4vVEEvNHhHaXZH?=
 =?utf-8?B?NS9jRlpndkJLV09EcCtBMm9QdXhiS0VNam1XejdKcVA2c2ZYa1FJaDV2YTRE?=
 =?utf-8?B?V3UwbVVtN1RQZ25sV2lRNUtBZlhXN0xXeFI1bUkwbjUwZDFHQW5uY3gxVE5w?=
 =?utf-8?B?MmFyTy8xRzNlQWsvekhlQWVxdk42N0hzcmVlNDNiNzZtb3Rrak44RzJmUWZV?=
 =?utf-8?B?cEhkMGlFUkx0ZFVoWkN1dUIwOWpxa3hSV1lOWTN6LzNIdURIeVlhblFGczk0?=
 =?utf-8?B?ZHBGR2xoRHdyaTl5dFdYRTFjL0tpb3dTeVB1MjlUZkJpUzZwS2hjTEg0MUlI?=
 =?utf-8?B?cmRkMkVKMGNta0Rib2xLa3RBS21GMVVIWHBVdFhTSjlBK0RGcHBmR2hkV2ZO?=
 =?utf-8?B?aWMxNit3ZFBXdHROVTJhN0I4RU9Ec0dDaXg5YzI2ejBpRVRibnpzWU1QME1w?=
 =?utf-8?B?WGdkaXZnUTd4T29aTnZxb2tkL0YyM1djbWtHS3ByemhkU1lTN25nWjEyanJs?=
 =?utf-8?B?OTJXSzJDM1ordVc0ZkRGMVpvTkovNE1waS96VXBOY3JzYTVnQmlBT0pmdFhs?=
 =?utf-8?B?d3R5MGdxYlJPS2R3d0dXa05lT1FYMkRsclNsMFYyZ1BYNFZYRFlRMjM1STZa?=
 =?utf-8?B?STZtTDhZcWxTOW8rTzU4N1NyQUszVkR0azljRmlXZnF0dHBRMjhlbXc2WGd4?=
 =?utf-8?B?NGIrc3dKVXpqa0d5OW93NENobThrckJoRzhHaWlJY1c4VVhMblAvWHZOVUhC?=
 =?utf-8?B?UWhmWFlxaHJoSGN4TzErR1EyWXhaKzVjVEJEMjdNRU1XQjVxTVdqUm1iWkJx?=
 =?utf-8?Q?CDUIHIySEtOex?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7757.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WURtekFVZGxLdlFoR2RKeWhGNm1pU0xTWnVYeTlZK00zcVZMQXp1YXdOWmtK?=
 =?utf-8?B?cnJvTHB0c3VOTE50dEh1NUliWTVTb0FVaEx5TnhZWFZRUlR5NGZkZjJMa0VS?=
 =?utf-8?B?c0J1ZE14Nm56dWllU3p0QXFTbFNVUE5IVkw0WlBGYXlWNlFIZStuZUczNDRo?=
 =?utf-8?B?cFRGYm1SblNTNTdUMHJNdkRMWFR4ais4SVpQdXlVV2dScmRXcytSbFhWS2JK?=
 =?utf-8?B?QzVOVE5QM2d6T29LV0xsa3o4KzJoZW85aEtEeStNQ1RnSWhOQzVOSDVjK2Nt?=
 =?utf-8?B?K3VUaEZOWk1FMytycERjb1JDWlpSeUpMaFBqd0N1cCsvZXBSSnlaQmNqVVc1?=
 =?utf-8?B?SXBvUUUrZ1IyYjh5Zml2bmV4MlVHUVhjQi9yU3R3VlNHVnhIN2hVMnVjUS9r?=
 =?utf-8?B?aGFRWUN3VmhVMERtWGJteU5ocHc3dUhHZXllbVBidXJwNTFYcVZiM0hKNnF0?=
 =?utf-8?B?ZDhjbnJRTUhpSk1uQms4bi9RbkJBQ2R5Y0xoQ015Z0tWbmhtVmh0VnJRN0V6?=
 =?utf-8?B?a290bjdpSGhmRHRzSzdCSHVBSGtLVXAveGJIYmNYUkFkMTlVL2MxMTRRZkJV?=
 =?utf-8?B?SHhDeDRqMy9vL25peWJ1KzkxQVZrVGRzMmIvQjA5cU1HM25hUCtwYWlwZTFB?=
 =?utf-8?B?NEFpS2g3UllhWWZBbnNESzJDbUR0UVlvWURFeFJtNU8yNE9abXgrK2lDamlL?=
 =?utf-8?B?M3dWZ0hkbDBHdWV5L2ZBR0dEQTdtZlp6eGRBU1Z1blBKd0hpbVFvWHpZSGhh?=
 =?utf-8?B?Wnl6RXJKQ0dNZ2NmUjI3MmlBNG5LRlhXU2FsT0dxamQva1VPQjcrVGtTZG9U?=
 =?utf-8?B?TW5ITjAyUjN6QkZvWEg0QVlpUmp4NUZUM1JMVTl5TzZ5N2paSnpxWTdYNzNF?=
 =?utf-8?B?d0VGZllQcUJtUTA0eVJBcWZyb0RNamVsaUdsRzJiZnBnTUlYdEswMk9KVjd5?=
 =?utf-8?B?WmxYME1GdjFDeGtqMXNWTndPaVlmU0cvUDdoMmgxaG9kRyt5bmF5bEpMVmtu?=
 =?utf-8?B?WUNDZVNXVTREcVR5N3RkR0hJRDhaQlhQZ0M0dmpPT2IzT3EyVjQwWW1aZjVn?=
 =?utf-8?B?YWpVcUk1TXNCZGZrbHFMMGI2TGNDWjREU3Btd2lPVU9DZ3h1QkZEejZtTTVK?=
 =?utf-8?B?Z2FJTlVJSmhGQWtmVkVSTlpMYkhERlBxeW5ZK1lSbDBGZCtSclhIZTNpQlIv?=
 =?utf-8?B?dmdZcTZFU0JON2M4d2hYbGdZS1lkajVwSGxWNDlqWk52Z3NFVFFrUWdPRXNI?=
 =?utf-8?B?UnQrS2FUa05VS3Yxb1BKaE9CU0tsWm44eEpLVmY5aW1qMTIwYzdZOWhEbXNt?=
 =?utf-8?B?MXk2UUZJVHd1TXcyeWRKOGl2UHhZRWhJbDRnaHpDL3NTY3dRQnVHblcyQTlZ?=
 =?utf-8?B?dlZyNVdCejM2aEVoTXFaYUZnVGRkOTJONVJ2ZkI1MGY1V0gxdldaRTJSOCtI?=
 =?utf-8?B?Q2w2VEprNktiSkJKaHdyOVY5QzU2YVJnVUZGMXE1V2dkUEhQQWowcVllNXVX?=
 =?utf-8?B?THdvcWtQWFNtd05BNy80M1ZqQlZNSnh0VS9IZWZqWlk5c3NKVjhjeVNzOEhw?=
 =?utf-8?B?bzl1UGhnQkoxUytYMHhZb2V2VUZYNXhBZVpWaDU2OHJwY2V1MHhjdXNHZ0ZE?=
 =?utf-8?B?aGJwdFhKUUd3TUc4ZFZWanVCN1ozc0FsSTFJU1NId3pvak9VcmVpaG1BanRh?=
 =?utf-8?B?bVZ6c0NIUTJlaVRwRm9QWnhjZy9Jb1JpZnZrSURreHN5eUxQZGVEVkRONVlT?=
 =?utf-8?B?dS91QXRMSmxFNEN1WHpGeEI5NVUvUmM0bTNVcnJXS0tzUWZ1bjB6MlkyeWZj?=
 =?utf-8?B?TkZXZUx5Q2RQMGg1T2ZGZVd4U3g0bHJDclhIbDFKbDBsbzhidGliWlVFeVo3?=
 =?utf-8?B?Nmo3K25jbG5EWmtFWjNLZG9oZmcrTXd5Q0FIOURkZEQ4VEFQMkhjUGFQN09V?=
 =?utf-8?B?TVhTUjJ6Yk9LaEh5R0NIRlZBZlBPcEJtaTdmbFRuZ04zK05uZk5oSmI4NTQ0?=
 =?utf-8?B?c2w2dDA5Q2JCVHNYcGR1anNZYXdYT2psTGdqTVFHNERRZzBNV1RnZ1I5OGY3?=
 =?utf-8?B?cGNtaFE4cVdOOVpRQmNuSk9xNG1veTJVTFBTZ3EwRkMva2ErM1oxUlZwTHpo?=
 =?utf-8?B?NG13UWtnZ3ZhSkxMUi9TNTMxU0ZwS2RWTWlpRWpTTjdadk81d09zRXFJcEdE?=
 =?utf-8?B?SkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 93b949ec-e49e-45a4-85e1-08dd77ce7065
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7757.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2025 01:24:29.2715 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: C/XHnt48bu6OtqMTRq4CMxBMD/MLGtMswEJMzim9YdgjIc5wF/5aGSMYi7NWbziEVVmZSxzULoQJvNQ5gLbmaNIB29xeJ53S9Mtx4tKz3dI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7186
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


On 4/9/2025 4:13 AM, Kamil Konieczny wrote:
> Hi Vinay,
> On 2025-04-07 at 16:44:05 -0700, Vinay Belgaumkar wrote:
>> Add utils to get/set GT frequency attributes. These ar per GT
> s/ar/are/
ok.
>
>> and exposed via sysfs already.
>>
>> Reviewed-by: Riana Tauro <riana.tauro@intel.com>
>> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>> ---
>>   lib/xe/xe_gt.c           |  59 ++++++++++++++
>>   lib/xe/xe_gt.h           |   2 +
>>   tests/intel/xe_gt_freq.c | 164 +++++++++++++++------------------------
>>   3 files changed, 125 insertions(+), 100 deletions(-)
>>
>> diff --git a/lib/xe/xe_gt.c b/lib/xe/xe_gt.c
>> index 6f1475be0..bd6d1800b 100644
>> --- a/lib/xe/xe_gt.c
>> +++ b/lib/xe/xe_gt.c
>> @@ -4,6 +4,7 @@
>>    */
>>   
>>   #include <fcntl.h>
>> +#include <limits.h>
>>   #include <sys/stat.h>
>>   
>>   #include "igt_core.h"
>> @@ -241,3 +242,61 @@ int xe_gt_count_engines_by_class(int fd, int gt, int class)
>>   
>>   	return n;
>>   }
>> +
>> +/**
>> + * xe_gt_set_freq:
>> + * @fd: pointer to xe drm fd
>> + * @gt_id: GT id
>> + * @freq_name: which GT freq(min, max) to change
>> + * @freq: value of freq to set
>> + *
>> + * Set GT min/max frequency
> Add a note about an assert in case of unsuccesfull open.
ok.
>
>> + *
>> + * Return: success or failure
>> + */
>> +int xe_gt_set_freq(int fd, int gt_id, const char *freq_name, uint32_t freq)
>> +{
>> +	int ret = -EAGAIN;
>> +	char freq_attr[NAME_MAX];
>> +	int gt_fd;
>> +
>> +	snprintf(freq_attr, sizeof(freq_attr), "freq0/%s_freq", freq_name);
>> +	gt_fd = xe_sysfs_gt_open(fd, gt_id);
>> +	igt_assert_lte(0, gt_fd);
>> +
>> +	while (ret == -EAGAIN)
>> +		ret = igt_sysfs_printf(gt_fd, freq_attr, "%u", freq);
>> +
>> +	close(gt_fd);
>> +	return ret;
>> +}
>> +
>> +/**
>> + * xe_gt_get_freq:
>> + * @fd: pointer to xe drm fd
>> + * @gt_id: GT id
>> + * @freq_name: which GT freq(min, max, act, cur) to read
>> + *
>> + * Read the min/max/act/cur/rp0/rpn/rpe GT frequencies
> Add a note about an assert in case of unsuccesfull open.
ok.
>
>> + *
>> + * Return: GT frequency value
>> + */
>> +uint32_t xe_gt_get_freq(int fd, int gt_id, const char *freq_name)
>> +{
>> +	uint32_t freq;
>> +	int err = -EAGAIN;
>> +	char freq_attr[NAME_MAX];
>> +	int gt_fd;
>> +
>> +	snprintf(freq_attr, sizeof(freq_attr), "freq0/%s_freq", freq_name);
>> +	gt_fd = xe_sysfs_gt_open(fd, gt_id);
>> +	igt_assert_lte(0, gt_fd);
>> +
>> +	while (err == -EAGAIN)
>> +		err = igt_sysfs_scanf(gt_fd, freq_attr, "%u", &freq);
>> +
>> +	igt_debug("gt%d: %s freq %u\n", gt_id, freq_name, freq);
>> +
>> +	close(gt_fd);
>> +	return freq;
>> +}
>> diff --git a/lib/xe/xe_gt.h b/lib/xe/xe_gt.h
>> index 511b31149..06a59281c 100644
>> --- a/lib/xe/xe_gt.h
>> +++ b/lib/xe/xe_gt.h
>> @@ -23,4 +23,6 @@ int xe_gt_fill_engines_by_class(int fd, int gt, int class,
>>   				struct drm_xe_engine_class_instance eci[static XE_MAX_ENGINE_INSTANCE]);
>>   int xe_gt_count_engines_by_class(int fd, int gt, int class);
>>   
>> +int xe_gt_set_freq(int fd, int gt_id, const char *freq_name, uint32_t freq);
>> +uint32_t xe_gt_get_freq(int fd, int gt_id, const char *freq_name);
>>   #endif
>> diff --git a/tests/intel/xe_gt_freq.c b/tests/intel/xe_gt_freq.c
>> index 843144ad2..4adb205c9 100644
>> --- a/tests/intel/xe_gt_freq.c
>> +++ b/tests/intel/xe_gt_freq.c
>> @@ -14,6 +14,7 @@
>>   
>>   #include "igt.h"
>>   #include "lib/igt_syncobj.h"
>> +#include "lib/xe/xe_gt.h"
> While it is here could you move both includes 'lib/'
> after 'igt_sysfs.h'? So they will be sorted.

sure,

Thanks,

Vinay.

>
> Regards,
> Kamil
>
>>   #include "igt_sysfs.h"
>>   
>>   #include "xe_drm.h"
>> @@ -36,43 +37,6 @@
>>    */
>>   #define SLPC_FREQ_LATENCY_US 100000
>>   
>> -static int set_freq(int fd, int gt_id, const char *freq_name, uint32_t freq)
>> -{
>> -	int ret = -EAGAIN;
>> -	char freq_attr[22];
>> -	int gt_fd;
>> -
>> -	snprintf(freq_attr, sizeof(freq_attr), "freq0/%s_freq", freq_name);
>> -	gt_fd = xe_sysfs_gt_open(fd, gt_id);
>> -	igt_assert_lte(0, gt_fd);
>> -
>> -	while (ret == -EAGAIN)
>> -		ret = igt_sysfs_printf(gt_fd, freq_attr, "%u", freq);
>> -
>> -	close(gt_fd);
>> -	return ret;
>> -}
>> -
>> -static uint32_t get_freq(int fd, int gt_id, const char *freq_name)
>> -{
>> -	uint32_t freq;
>> -	int err = -EAGAIN;
>> -	char freq_attr[22];
>> -	int gt_fd;
>> -
>> -	snprintf(freq_attr, sizeof(freq_attr), "freq0/%s_freq", freq_name);
>> -	gt_fd = xe_sysfs_gt_open(fd, gt_id);
>> -	igt_assert_lte(0, gt_fd);
>> -
>> -	while (err == -EAGAIN)
>> -		err = igt_sysfs_scanf(gt_fd, freq_attr, "%u", &freq);
>> -
>> -	igt_debug("gt%d: %s freq %u\n", gt_id, freq_name, freq);
>> -
>> -	close(gt_fd);
>> -	return freq;
>> -}
>> -
>>   static bool within_expected_range(uint32_t freq, uint32_t val)
>>   {
>>   	/*
>> @@ -134,8 +98,8 @@ static void test_throttle_basic_api(int fd, int gt_id)
>>   
>>   static void test_freq_basic_api(int fd, int gt_id)
>>   {
>> -	uint32_t rpn = get_freq(fd, gt_id, "rpn");
>> -	uint32_t rp0 = get_freq(fd, gt_id, "rp0");
>> +	uint32_t rpn = xe_gt_get_freq(fd, gt_id, "rpn");
>> +	uint32_t rp0 = xe_gt_get_freq(fd, gt_id, "rp0");
>>   	uint32_t rpmid = (rp0 + rpn) / 2;
>>   	uint32_t min_freq, max_freq;
>>   
>> @@ -144,29 +108,29 @@ static void test_freq_basic_api(int fd, int gt_id)
>>   	 * RPn is the floor
>>   	 * RP0 is the ceiling
>>   	 */
>> -	igt_assert_lt(set_freq(fd, gt_id, "min", rpn - 1), 0);
>> -	igt_assert_lt(set_freq(fd, gt_id, "min", rp0 + 1), 0);
>> -	igt_assert_lt(set_freq(fd, gt_id, "max", rpn - 1), 0);
>> -	igt_assert_lt(set_freq(fd, gt_id, "max", rp0 + 1), 0);
>> +	igt_assert_lt(xe_gt_set_freq(fd, gt_id, "min", rpn - 1), 0);
>> +	igt_assert_lt(xe_gt_set_freq(fd, gt_id, "min", rp0 + 1), 0);
>> +	igt_assert_lt(xe_gt_set_freq(fd, gt_id, "max", rpn - 1), 0);
>> +	igt_assert_lt(xe_gt_set_freq(fd, gt_id, "max", rp0 + 1), 0);
>>   
>>   	/* Assert min requests are respected from rp0 to rpn */
>> -	igt_assert_lt(0, set_freq(fd, gt_id, "min", rp0));
>> -	igt_assert_eq_u32(get_freq(fd, gt_id, "min"), rp0);
>> -	igt_assert_lt(0, set_freq(fd, gt_id, "min", rpmid));
>> -	min_freq = get_freq(fd, gt_id, "min");
>> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "min", rp0));
>> +	igt_assert_eq_u32(xe_gt_get_freq(fd, gt_id, "min"), rp0);
>> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "min", rpmid));
>> +	min_freq = xe_gt_get_freq(fd, gt_id, "min");
>>   	/* SLPC can set min higher than rpmid - as it follows RPe */
>>   	igt_assert_lte_u32((rpmid - FREQ_UNIT_MHZ), min_freq);
>> -	igt_assert_lt(0, set_freq(fd, gt_id, "min", rpn));
>> -	igt_assert_eq_u32(get_freq(fd, gt_id, "min"), rpn);
>> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "min", rpn));
>> +	igt_assert_eq_u32(xe_gt_get_freq(fd, gt_id, "min"), rpn);
>>   
>>   	/* Assert max requests are respected from rpn to rp0 */
>> -	igt_assert_lt(0, set_freq(fd, gt_id, "max", rpn));
>> -	igt_assert_eq_u32(get_freq(fd, gt_id, "max"), rpn);
>> -	igt_assert_lt(0, set_freq(fd, gt_id, "max", rpmid));
>> -	max_freq = get_freq(fd, gt_id, "max");
>> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "max", rpn));
>> +	igt_assert_eq_u32(xe_gt_get_freq(fd, gt_id, "max"), rpn);
>> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "max", rpmid));
>> +	max_freq = xe_gt_get_freq(fd, gt_id, "max");
>>   	igt_assert(within_expected_range(max_freq, rpmid));
>> -	igt_assert_lt(0, set_freq(fd, gt_id, "max", rp0));
>> -	igt_assert_eq_u32(get_freq(fd, gt_id, "max"), rp0);
>> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "max", rp0));
>> +	igt_assert_eq_u32(xe_gt_get_freq(fd, gt_id, "max"), rp0);
>>   }
>>   
>>   /**
>> @@ -179,8 +143,8 @@ static void test_freq_basic_api(int fd, int gt_id)
>>   
>>   static void test_freq_fixed(int fd, int gt_id, bool gt_idle)
>>   {
>> -	uint32_t rpn = get_freq(fd, gt_id, "rpn");
>> -	uint32_t rp0 = get_freq(fd, gt_id, "rp0");
>> +	uint32_t rpn = xe_gt_get_freq(fd, gt_id, "rpn");
>> +	uint32_t rp0 = xe_gt_get_freq(fd, gt_id, "rp0");
>>   	uint32_t rpmid = (rp0 + rpn) / 2;
>>   	uint32_t cur_freq, act_freq;
>>   
>> @@ -192,50 +156,50 @@ static void test_freq_fixed(int fd, int gt_id, bool gt_idle)
>>   	 * And let's do this for all the 2 known Render Performance (RP) values
>>   	 * RP0 and RPn and something in between.
>>   	 */
>> -	igt_assert_lt(0, set_freq(fd, gt_id, "min", rpn));
>> -	igt_assert_lt(0, set_freq(fd, gt_id, "max", rpn));
>> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "min", rpn));
>> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "max", rpn));
>>   	usleep(SLPC_FREQ_LATENCY_US);
>> -	igt_assert_eq_u32(get_freq(fd, gt_id, "cur"), rpn);
>> +	igt_assert_eq_u32(xe_gt_get_freq(fd, gt_id, "cur"), rpn);
>>   
>>   	if (gt_idle) {
>> -		/* Wait for GT to go in C6 as previous get_freq wakes up GT*/
>> +		/* Wait for GT to go in C6 as previous xe_gt_get_freq wakes up GT*/
>>   		igt_assert_f(igt_wait(xe_gt_is_in_c6(fd, gt_id), 1000, 10),
>>   			     "GT %d should be in C6\n", gt_id);
>> -		igt_assert(get_freq(fd, gt_id, "act") == 0);
>> +		igt_assert(xe_gt_get_freq(fd, gt_id, "act") == 0);
>>   	} else {
>> -		igt_assert_eq_u32(get_freq(fd, gt_id, "act"), rpn);
>> +		igt_assert_eq_u32(xe_gt_get_freq(fd, gt_id, "act"), rpn);
>>   	}
>>   
>> -	igt_assert_lt(0, set_freq(fd, gt_id, "min", rpmid));
>> -	igt_assert_lt(0, set_freq(fd, gt_id, "max", rpmid));
>> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "min", rpmid));
>> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "max", rpmid));
>>   	usleep(SLPC_FREQ_LATENCY_US);
>> -	cur_freq = get_freq(fd, gt_id, "cur");
>> +	cur_freq = xe_gt_get_freq(fd, gt_id, "cur");
>>   	/* If rpmid is around RPe, we could see SLPC follow it */
>>   	igt_assert_lte_u32((rpmid - FREQ_UNIT_MHZ), cur_freq);
>>   
>>   	if (gt_idle) {
>>   		igt_assert_f(igt_wait(xe_gt_is_in_c6(fd, gt_id), 1000, 10),
>>   			     "GT %d should be in C6\n", gt_id);
>> -		igt_assert(get_freq(fd, gt_id, "act") == 0);
>> +		igt_assert(xe_gt_get_freq(fd, gt_id, "act") == 0);
>>   	} else {
>> -		act_freq = get_freq(fd, gt_id, "act");
>> +		act_freq = xe_gt_get_freq(fd, gt_id, "act");
>>   		igt_assert_lte_u32(act_freq, cur_freq + FREQ_UNIT_MHZ);
>>   	}
>>   
>> -	igt_assert_lt(0, set_freq(fd, gt_id, "min", rp0));
>> -	igt_assert_lt(0, set_freq(fd, gt_id, "max", rp0));
>> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "min", rp0));
>> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "max", rp0));
>>   	usleep(SLPC_FREQ_LATENCY_US);
>>   	/*
>>   	 * It is unlikely that PCODE will *always* respect any request above RPe
>>   	 * So for this level let's only check if GuC PC is doing its job
>>   	 * and respecting our request, by propagating it to the hardware.
>>   	 */
>> -	igt_assert_eq_u32(get_freq(fd, gt_id, "cur"), rp0);
>> +	igt_assert_eq_u32(xe_gt_get_freq(fd, gt_id, "cur"), rp0);
>>   
>>   	if (gt_idle) {
>>   		igt_assert_f(igt_wait(xe_gt_is_in_c6(fd, gt_id), 1000, 10),
>>   			     "GT %d should be in C6\n", gt_id);
>> -		igt_assert(get_freq(fd, gt_id, "act") == 0);
>> +		igt_assert(xe_gt_get_freq(fd, gt_id, "act") == 0);
>>   	}
>>   
>>   	igt_debug("Finished testing fixed request\n");
>> @@ -250,25 +214,25 @@ static void test_freq_fixed(int fd, int gt_id, bool gt_idle)
>>    */
>>   static void test_freq_range(int fd, int gt_id, bool gt_idle)
>>   {
>> -	uint32_t rpn = get_freq(fd, gt_id, "rpn");
>> -	uint32_t rp0 = get_freq(fd, gt_id, "rp0");
>> +	uint32_t rpn = xe_gt_get_freq(fd, gt_id, "rpn");
>> +	uint32_t rp0 = xe_gt_get_freq(fd, gt_id, "rp0");
>>   	uint32_t rpmid = (rp0 + rpn) / 2;
>>   	uint32_t cur, act;
>>   
>>   	igt_debug("Starting testing range request\n");
>>   
>> -	igt_assert_lt(0, set_freq(fd, gt_id, "min", rpn));
>> -	igt_assert_lt(0, set_freq(fd, gt_id, "max", rpmid));
>> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "min", rpn));
>> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "max", rpmid));
>>   	usleep(SLPC_FREQ_LATENCY_US);
>> -	cur = get_freq(fd, gt_id, "cur");
>> +	cur = xe_gt_get_freq(fd, gt_id, "cur");
>>   	igt_assert(rpn <= cur && cur <= rpmid + FREQ_UNIT_MHZ);
>>   
>>   	if (gt_idle) {
>>   		igt_assert_f(igt_wait(xe_gt_is_in_c6(fd, gt_id), 1000, 10),
>>   			     "GT %d should be in C6\n", gt_id);
>> -		igt_assert(get_freq(fd, gt_id, "act") == 0);
>> +		igt_assert(xe_gt_get_freq(fd, gt_id, "act") == 0);
>>   	} else {
>> -		act = get_freq(fd, gt_id, "act");
>> +		act = xe_gt_get_freq(fd, gt_id, "act");
>>   		igt_assert((rpn <= act) && (act <= cur + FREQ_UNIT_MHZ));
>>   	}
>>   
>> @@ -282,21 +246,21 @@ static void test_freq_range(int fd, int gt_id, bool gt_idle)
>>   
>>   static void test_freq_low_max(int fd, int gt_id)
>>   {
>> -	uint32_t rpn = get_freq(fd, gt_id, "rpn");
>> -	uint32_t rp0 = get_freq(fd, gt_id, "rp0");
>> +	uint32_t rpn = xe_gt_get_freq(fd, gt_id, "rpn");
>> +	uint32_t rp0 = xe_gt_get_freq(fd, gt_id, "rp0");
>>   	uint32_t rpmid = (rp0 + rpn) / 2;
>>   
>>   	/*
>>   	 *  When max request < min request, max is ignored and min works like
>>   	 * a fixed one. Let's assert this assumption
>>   	 */
>> -	igt_assert_lt(0, set_freq(fd, gt_id, "min", rpmid));
>> -	igt_assert_lt(0, set_freq(fd, gt_id, "max", rpn));
>> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "min", rpmid));
>> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "max", rpn));
>>   	usleep(SLPC_FREQ_LATENCY_US);
>>   
>>   	/* Cur freq will follow RPe, which could be higher than min freq */
>>   	igt_assert_lte_u32((rpmid - FREQ_UNIT_MHZ),
>> -			   get_freq(fd, gt_id, "cur"));
>> +			   xe_gt_get_freq(fd, gt_id, "cur"));
>>   }
>>   
>>   /**
>> @@ -306,18 +270,18 @@ static void test_freq_low_max(int fd, int gt_id)
>>   
>>   static void test_suspend(int fd, int gt_id)
>>   {
>> -	uint32_t rpn = get_freq(fd, gt_id, "rpn");
>> +	uint32_t rpn = xe_gt_get_freq(fd, gt_id, "rpn");
>>   
>> -	igt_assert_lt(0, set_freq(fd, gt_id, "min", rpn));
>> -	igt_assert_lt(0, set_freq(fd, gt_id, "max", rpn));
>> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "min", rpn));
>> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "max", rpn));
>>   	usleep(SLPC_FREQ_LATENCY_US);
>> -	igt_assert_eq_u32(get_freq(fd, gt_id, "cur"), rpn);
>> +	igt_assert_eq_u32(xe_gt_get_freq(fd, gt_id, "cur"), rpn);
>>   
>>   	igt_system_suspend_autoresume(SUSPEND_STATE_S3,
>>   				      SUSPEND_TEST_NONE);
>>   
>> -	igt_assert_eq_u32(get_freq(fd, gt_id, "min"), rpn);
>> -	igt_assert_eq_u32(get_freq(fd, gt_id, "max"), rpn);
>> +	igt_assert_eq_u32(xe_gt_get_freq(fd, gt_id, "min"), rpn);
>> +	igt_assert_eq_u32(xe_gt_get_freq(fd, gt_id, "max"), rpn);
>>   }
>>   
>>   /**
>> @@ -330,24 +294,24 @@ static void test_suspend(int fd, int gt_id)
>>   
>>   static void test_reset(int fd, int gt_id, int cycles)
>>   {
>> -	uint32_t rpn = get_freq(fd, gt_id, "rpn");
>> +	uint32_t rpn = xe_gt_get_freq(fd, gt_id, "rpn");
>>   
>>   	for (int i = 0; i < cycles; i++) {
>> -		igt_assert_f(set_freq(fd, gt_id, "min", rpn) > 0,
>> +		igt_assert_f(xe_gt_set_freq(fd, gt_id, "min", rpn) > 0,
>>   			     "Failed after %d good cycles\n", i);
>> -		igt_assert_f(set_freq(fd, gt_id, "max", rpn) > 0,
>> +		igt_assert_f(xe_gt_set_freq(fd, gt_id, "max", rpn) > 0,
>>   			     "Failed after %d good cycles\n", i);
>>   		usleep(SLPC_FREQ_LATENCY_US);
>> -		igt_assert_f(get_freq(fd, gt_id, "cur") == rpn,
>> +		igt_assert_f(xe_gt_get_freq(fd, gt_id, "cur") == rpn,
>>   			     "Failed after %d good cycles\n", i);
>>   
>>   		xe_force_gt_reset_sync(fd, gt_id);
>>   
>>   		usleep(SLPC_FREQ_LATENCY_US);
>>   
>> -		igt_assert_f(get_freq(fd, gt_id, "min") == rpn,
>> +		igt_assert_f(xe_gt_get_freq(fd, gt_id, "min") == rpn,
>>   			     "Failed after %d good cycles\n", i);
>> -		igt_assert_f(get_freq(fd, gt_id, "max") == rpn,
>> +		igt_assert_f(xe_gt_get_freq(fd, gt_id, "max") == rpn,
>>   			     "Failed after %d good cycles\n", i);
>>   	}
>>   }
>> @@ -448,8 +412,8 @@ igt_main
>>   		stash_max = (uint32_t *) malloc(sizeof(uint32_t) * num_gts);
>>   
>>   		xe_for_each_gt(fd, gt) {
>> -			stash_min[gt] = get_freq(fd, gt, "min");
>> -			stash_max[gt] = get_freq(fd, gt, "max");
>> +			stash_min[gt] = xe_gt_get_freq(fd, gt, "min");
>> +			stash_max[gt] = xe_gt_get_freq(fd, gt, "max");
>>   		}
>>   	}
>>   
>> @@ -525,8 +489,8 @@ igt_main
>>   
>>   	igt_fixture {
>>   		xe_for_each_gt(fd, gt) {
>> -			set_freq(fd, gt, "max", stash_max[gt]);
>> -			set_freq(fd, gt, "min", stash_min[gt]);
>> +			xe_gt_set_freq(fd, gt, "max", stash_max[gt]);
>> +			xe_gt_set_freq(fd, gt, "min", stash_min[gt]);
>>   		}
>>   		free(stash_min);
>>   		free(stash_max);
>> -- 
>> 2.38.1
>>
