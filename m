Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EF9F984C44
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 22:42:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4656F10E744;
	Tue, 24 Sep 2024 20:42:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TKrVxdXG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 684FF10E742;
 Tue, 24 Sep 2024 20:42:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727210560; x=1758746560;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=lVQNSe9tkS4+ASTxMhSU8qds6uls0gG0AZHFsHsDm/Q=;
 b=TKrVxdXGd9jmTEGW3hoAzI78cs84Mh3sEG/7CfvNRq/FyRG8u+5OcBel
 IWWaHXheKPrW5iue1OQEOmn6epMdqcHVLLoHiKa1oqscgLgAc4PYTHXWB
 is5HZSqJZV4wuph90N9wp3eQW3RKyjttWf9Ugn85lwkYMZU/WKif2ZARF
 ILpOTmDtDjt/AWEqzH7oFHtb6KFeEW8DnEJHQbM4i2VAS4fRwBCk+HMfY
 5/PFNqdKpa5US+MlMWoWLCQVU+MEnLrus5XdSVNRLhM+NHI2Opq3pRyvQ
 0NmqTlRz75LE2xyeyaGvf3VF6qQNbxxq3jKY4/shxUgeeqpI3qkhk1Q4D A==;
X-CSE-ConnectionGUID: 6xTQnz6sS72GmlxUM8tAHQ==
X-CSE-MsgGUID: UrcxMJduTVSPIjIe0eq29A==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="26051734"
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="26051734"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 13:42:40 -0700
X-CSE-ConnectionGUID: mCKNqyV4RC+VTWE53AmKfQ==
X-CSE-MsgGUID: smPFM++3Qsuk/S5zZ8LMjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="71160319"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2024 13:42:40 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:42:38 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:42:38 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 24 Sep 2024 13:42:38 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 24 Sep 2024 13:42:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J5j68f8J8tidnKADCCuu8o7pXMocpvOwrJxn883WRuyU+6lKJXKvX3WhbBLMCFTSQ/W85WPurgPD5FklGGNPgmyavmAmlJCKHSwF/GFJXVgSAJotwiLNYWxLy9ozTGLntFPh4TEZ6Vlgp9sa4AUMZ5WZ3eQjMWUDiwcLkEm0SHXrDusrCtdEOsBEzDerkxx+IVJN6wsqBQ/fycSyNz2+YCwZQXmXak7lvnrY7CMsiTrDiXzEf6Z4eTrV2f0pwP6CiVl1nvGHPds6wY6vvb2ikRRo/fH2jPRHaWdsbvOs5cAYykugq11LOuQPEVlOBt7o0iGf89buJ8Wm1ZEPrPMj5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PpL4X9W48N25Dqanlfmb+czDikahABDwE+193sHPAyI=;
 b=txMCRAHz7LbpV/1rrTUu5vQPEgwo14si58M24CGw3BqHbKdDpMr7iEEr54aSTQkVqxrsu//ebaM0mYR/2npAD496601SBnZBZESI5Jr8KF9xUDi+aTd4PMMJzQ1sVJUSLmOrgqnBaGUXeNqBxonBJRmUvHA4DJrcW9T5WhLRFBhJo0gsXKfmzcMu+WCHFEJzpsdH4X/MXz2GkRFbU5YeQQdsObPtZSowZKmPIPY+cWozaMvDnLEB8RxmN/MeUxUQFqrdTWME3fktTnn8Frl+F3Foqlo7mR1NLa3k+oQdduUIH4aWllSUh8zTCT6TyHSPfGtSxKjBnjn4CugQiHj/Pg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by BY1PR11MB8127.namprd11.prod.outlook.com (2603:10b6:a03:531::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.23; Tue, 24 Sep
 2024 20:42:35 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Tue, 24 Sep 2024
 20:42:35 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <imre.deak@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Jesse Barnes
 <jbarnes@virtuousgeek.org>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 02/31] drm/i915/display: Convert i915_suspend into
 i9xx_display_sr
Date: Tue, 24 Sep 2024 16:35:23 -0400
Message-ID: <20240924204222.246862-3-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240924204222.246862-1-rodrigo.vivi@intel.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR04CA0136.namprd04.prod.outlook.com
 (2603:10b6:303:84::21) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|BY1PR11MB8127:EE_
X-MS-Office365-Filtering-Correlation-Id: 223bfa72-f830-4a6e-54fe-08dcdcd96b7f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aW5Yb2F6V3Z1UFFpaWlEc3VTRUNub1JpWEl6cUhocDBjWjVxZGZidnVybCti?=
 =?utf-8?B?QWRwa3RZOUxabWZZM09NWFAwZnRZR0NoQkJJYUhQWnZraTJJajYvYnEyZGZ3?=
 =?utf-8?B?UFhXWEgyMlZ0N2FUYUNKbTFjeUErSm9MK00vV2ZTbTRXUmc2RGxaTURmTzI1?=
 =?utf-8?B?TXdacEZaMnVPbnFXbTI3djlPZWJiTDJ2ZmdyNmduV3RNRE1GcllPbko3bE1k?=
 =?utf-8?B?bmhSMU9JSlR6bUxTTkdHdVMyeGpDMkFLT0toZjRNc2w4SkNONnNqbVRpdjIx?=
 =?utf-8?B?VzROL1ZYaWdDMjZFQXZzQ3ZGeFVLNWRRRkNENDlKYkkrTTFSNnNEekdveThm?=
 =?utf-8?B?WGRNcUk4UC8wQW5hNlJDWlhXV2h2SEpDTzNIQU00MTBEQWpXbEltNVF2UExx?=
 =?utf-8?B?UmJPOS90WHFtZWlZOVYrMUZrc0t2WkFaQ3ZodGVTa1RtUFVFdHVFSlE5RU40?=
 =?utf-8?B?WHh0dmFENzVUdGhaMFZMN3k0SUt3bDFOZldGTzE2dWwvb0NIOVlmb2lDdGFE?=
 =?utf-8?B?ZUhzQXFDTDZTWllvZDN6SjMzaVFSUFpuaDR6K2tHVExUckFHWlQ0Tmh4RTNY?=
 =?utf-8?B?OVV2QzdsOWhSbE8yZTF3M1NuaTUzMGtncnN2NFcrdUVvbG4rY0pNRTJmcVBX?=
 =?utf-8?B?SXM5RUpjS1JORFBKQkt1THQycXRaWm5hN2NjcTY4cVV0Y0U3VHZXc01OV1cz?=
 =?utf-8?B?UTFnZ2JwWGdsamdRZ095K1ZyMjFQRDU2Nm42WHBvMyt5bTRwaGZvU1RDVjVu?=
 =?utf-8?B?L2lVeEU2c0hnVitScHJLVnR6czlZbjFheFVJbGtNaTNPRkZTbXNtOHpXV1Jp?=
 =?utf-8?B?U0w0UWtYc2pkTVdLeC85RDFSczhHM2tMaXk3TGUwU1NHa1QvQW8rMGRubGt1?=
 =?utf-8?B?YW81NFdEb0d1cC9sL2t6UXpSYWdDSzVKemtocEM1cTV1ZFI3cVRuS2RpTnhB?=
 =?utf-8?B?NlN1YTdLeHBCeGU3U2J1OEc5N1ZTNjd3cXdwQ2Y4a2MrcWhDVkh2aWpPWWtz?=
 =?utf-8?B?TkZEMmhSeGFGR1RGdzc1N0tadjR4VC9KNUxaNVhGZi9ERVZheXJHM2NvdElE?=
 =?utf-8?B?VFpyZUg1Q2hHR29zbTlmRS9VQzVuaFQzRUp6cy9CTmJJRnZLQzVxREE4UjJK?=
 =?utf-8?B?alRpUFhUS2NFQ1A4ZHNKWHkyN29RcWRoYk9KdkZxUjlFeXVRbi8zTEZ5cXJB?=
 =?utf-8?B?WHZvQU54cmZnYmU3a2wzcTJURHAyaFV2WUJadk11UmlJbU1qY1YrbTV5cnEw?=
 =?utf-8?B?R1hjeVFmcVpJVGsyeE5Ka0tlUHByL2tzTXpObktSdXR5RjErbXpPMjFIa2dh?=
 =?utf-8?B?S1VLL1lwRGxEcGU4MEllQ2xoaU9TVGxMTWJvMGNWN2Ftc25mRzZ1ckQybjFD?=
 =?utf-8?B?blloZWFPN25GYkhNQWhBRWl5WVUrMTM5cDEzMEFjdzVGTFpTU2dJZnRHNEZ2?=
 =?utf-8?B?dHpTd1lBbEY1YXZTY2lqZkdZZFk4SG12ZWFCWEl2aTY5TUs5YWRmK3NhY1cx?=
 =?utf-8?B?RGsvMkJTcHdac0lmcGpLTWxyaGc5Tzl3MHhzMzlvUUlWRW1Vc3BoSnNMT01l?=
 =?utf-8?B?UkVxbUl1ajNjZFVZaWZ6N0hadjJwMzBWOENQdmNsVmZSTmpTTjdwZ292RVR5?=
 =?utf-8?B?REFkQzZFNHcvQkFCZXRObkdzbnlJNWQrNC9hMVhrTjFIMEtaYWI3dnVtUFdS?=
 =?utf-8?B?UnlpZkVkTmR3TzNBMFJEU00yU3RIT2FoaGxxak1uZkFONVd0SjVKeU1RPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UnFpaXZPaklTU3haOTE4Uk5SbGFlVlYxL08rTCtJeE5aUzlvNE5JRVBmY0hR?=
 =?utf-8?B?M2NEdWhWNFpaV3BPYU5GdERjRFkxeER6RllkUHVWNndYS2c3NE9SK3JHMXUw?=
 =?utf-8?B?T2U1aU5NTVE5QmdnSkR3bnRMVEMyMzJRMGFFZ1BUT094cmpBcnROWUFTNnkv?=
 =?utf-8?B?UGhuNGZVTnJnUzVxK2hNakVxUE4wNk5xZWl5RjdMUWJMQitGd1MzMmxYdUdN?=
 =?utf-8?B?VStZQmRWOTFKczlwZmRFMytXWnB1QjhuMkxkSGtxaDAyR2VNMTZORG0rdnFH?=
 =?utf-8?B?S0UvYnFkOEoxaEJtT3dkQjl1VVo0V053eldvQXVaWmY5bEtOQ042ZHdvaVF4?=
 =?utf-8?B?Zno3alhYUGZvRTFiT2dtWW9WRWJsdHE0N2o2am5WajUwYVJGbW9kSXBpN3dl?=
 =?utf-8?B?WEJDZ2N4cHRoUjZsRU1VMTZXMFdtWG9sbjVCYWpuamJ6TUFTUTRNN0ZDOTRG?=
 =?utf-8?B?cmxWbk1MOUdNTjlIYTZLZy9iSTcyekl1QlVHNFh5QmhMcG5QZVVhUjdScGNV?=
 =?utf-8?B?NzlNTklpcnNmNzh5UnRTS3hsRm41eEswWjNjblo2bkpQbFVFaFQyeHBBanl1?=
 =?utf-8?B?Q1NtWlFyVnpmUVBmQUx3VUk3bGdBdHgybTNNZGdoSDZZUEVJNWJZUnhMTm9r?=
 =?utf-8?B?YkpyWFdUVU5hSVVGVzB2VHBoUVBaYzl4UEJ0dXlIUHhVK1dnOHZWdXJXN1VO?=
 =?utf-8?B?MXMyWWFiNE15TXNDVHhLTW5VeXJMdnM3cHdaTGtMZGE2bE9SS0hRbXQvNXdW?=
 =?utf-8?B?bGp5OTF3ODh6Q1JPWmVya2lyaWlwNEVGaFZUS0NRZkNqcjNpV1g1S3BUdjdh?=
 =?utf-8?B?eUgxRVdwK1UrRkNveXVCVFRDSy9nU2t6TmFFNDByN3FvRTkvcnMxaWRaeWhy?=
 =?utf-8?B?aDFpWWhmV2dvUS9rOFIrRVRPUkdBODJWWGFCMS9qb2p2V1FMallJR1haTWxH?=
 =?utf-8?B?UU1nVHlCS3ZhNEE1SlBhbno3anU5bjRGZm5PZXZEQzdqNXRxWTMrenJaQ0ZH?=
 =?utf-8?B?UXRVVzkwY1ptTHhhQVI5dlFCSmZxbnNOQVdGYW9kN0xobnZuZDlsRUwrOE1U?=
 =?utf-8?B?MmI2ckdPQjg1cjBUUVFoYVkxUytRY2s3c1VZR0hUSHlzcGI5ZFl3alRlSVdI?=
 =?utf-8?B?c1gxa1R4QkJaZEtkSVlWWlVFaW9Ua2VpQlhrczNzK1kxK25VazdrdlFhSmho?=
 =?utf-8?B?OTNTN3gwWmRGOXNidmE4RWx3VlF1MjZDQ0wvekM5UzlRcW5GSUkxNWx6Sisy?=
 =?utf-8?B?RitPbzBuTVNXTzhNakh2VHdISmhCdHZFWXpsbG5ZbHU5R2NtZjVsT0gwQ0Jw?=
 =?utf-8?B?Y2hndnpsbTBRUHpoS29jQkQrUjQ4RklkZGJ2SkY0QktEUU5iUDZLQlpta21O?=
 =?utf-8?B?Skw3dUsxT1JNK0llVUN4TXo5WXRFcGJPL0t1VE5KY0RXUEVKQlRhQWI1NmUw?=
 =?utf-8?B?SWRrcUkyV0Fjb0srM0p4VnpTSFJxdFoxUzU1S2twK1QvUG9MOEwweFlVRkdE?=
 =?utf-8?B?VVZaczI1alliQXJrSVNUdlhYRVp4RWlTWVkwN2FiTFFYR2pMVWVteDNndmFa?=
 =?utf-8?B?ZDdPVUNqeUp2TG9YWS9iTjdyeTE4bnlYb0VpSS9jSHRkUFJkbldrZkdMWWJJ?=
 =?utf-8?B?emhXZHZsL0QxUmZ1TFdhNVZEcU1mMUFhOWJPWktaRHNYbEVvMHpySlZ1NFBT?=
 =?utf-8?B?c0x6U29KOHlVNDVVZndIYUhNUWZ6TWVLNDhRTzNiZFlDN1Y4ZkNYQ21wS2ha?=
 =?utf-8?B?U2Q5Zm5Fc0NzQkF6QmF2WHRyTk9FSS9sRXd5ZzJIVWZWR0hVNEFGZzJpK3lm?=
 =?utf-8?B?YmwydDZzUnI5VU9HZVE4V1ZvbEx1eVVPU0s2cW1EYVNZM0pub1FaY3ZXK1Ux?=
 =?utf-8?B?UU9XZnFvc0hTZm93Z2RsV3pheVlYcElrOGR5aG83cTFwYzJmWmtCYkJER0VH?=
 =?utf-8?B?QldMeXlIT1JudnkrakV2M3Ftc0dMY29LMkRoWEF6ZmNUenVtR2FqVGRTeXZ1?=
 =?utf-8?B?M0pxVjJXdGlIZXBFLzJ3d2wvSnBrb2hCK2d1YVdUcVorWU9UOVloMkNMcVha?=
 =?utf-8?B?K296RCtLNUVFYklNYlNjUUFlQml6NTUreGhQOGxYejVXeC91bEtmT2dWMC9G?=
 =?utf-8?B?Q2paTDJkd2w1YVpsMW5jbk1sQk0zOENUU2g2N2JyRmhmQ2wxRkE3ZkFnejk2?=
 =?utf-8?B?UUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 223bfa72-f830-4a6e-54fe-08dcdcd96b7f
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2024 20:42:35.0974 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rOWQoYhoGiW1M0B7OignAyN6gWCGZi4IwhH9eUbtJADx2cfacnD2TajIEAVGDLapJn803SjR2PJ6tkCRpPtaig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8127
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

These save & restore functions inside i915_suspend are old display
functions to save and restore a bunch of display related registers.

Move it under display and rename accordantly. Just don't move it
entirely towards intel_display struct yet because it depends
on drm_i915_private for the IS_MOBILE.

While doing this conversion also update the MIT header using
the new SPDX ones.

v2: Fix Makefile and include (Jani)
    Removed vga and gmbus (Jani, Ville)

Cc: Jesse Barnes <jbarnes@virtuousgeek.org>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   2 +-
 .../gpu/drm/i915/display/i9xx_display_sr.c    |  95 ++++++++++++
 .../gpu/drm/i915/display/i9xx_display_sr.h    |  14 ++
 drivers/gpu/drm/i915/i915_driver.c            |   6 +-
 drivers/gpu/drm/i915/i915_suspend.c           | 135 ------------------
 drivers/gpu/drm/i915/i915_suspend.h           |  14 --
 6 files changed, 113 insertions(+), 153 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/i9xx_display_sr.c
 create mode 100644 drivers/gpu/drm/i915/display/i9xx_display_sr.h
 delete mode 100644 drivers/gpu/drm/i915/i915_suspend.c
 delete mode 100644 drivers/gpu/drm/i915/i915_suspend.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 70771e521b1c..f21c28d471e7 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -30,7 +30,6 @@ i915-y += \
 	i915_params.o \
 	i915_pci.o \
 	i915_scatterlist.o \
-	i915_suspend.o \
 	i915_switcheroo.o \
 	i915_sysfs.o \
 	i915_utils.o \
@@ -219,6 +218,7 @@ i915-$(CONFIG_HWMON) += \
 i915-y += \
 	display/hsw_ips.o \
 	display/i9xx_plane.o \
+	display/i9xx_display_sr.o \
 	display/i9xx_wm.o \
 	display/intel_alpm.o \
 	display/intel_atomic.o \
diff --git a/drivers/gpu/drm/i915/display/i9xx_display_sr.c b/drivers/gpu/drm/i915/display/i9xx_display_sr.c
new file mode 100644
index 000000000000..4dd0ce267994
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/i9xx_display_sr.c
@@ -0,0 +1,95 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2024 Intel Corporation
+ */
+
+#include "i915_drv.h"
+#include "i915_reg.h"
+#include "i9xx_display_sr.h"
+#include "intel_de.h"
+#include "intel_gmbus.h"
+#include "intel_pci_config.h"
+
+static void i9xx_display_save_swf(struct drm_i915_private *i915)
+{
+	int i;
+
+	/* Scratch space */
+	if (GRAPHICS_VER(i915) == 2 && IS_MOBILE(i915)) {
+		for (i = 0; i < 7; i++) {
+			i915->regfile.saveSWF0[i] = intel_de_read(i915, SWF0(i915, i));
+			i915->regfile.saveSWF1[i] = intel_de_read(i915, SWF1(i915, i));
+		}
+		for (i = 0; i < 3; i++)
+			i915->regfile.saveSWF3[i] = intel_de_read(i915, SWF3(i915, i));
+	} else if (GRAPHICS_VER(i915) == 2) {
+		for (i = 0; i < 7; i++)
+			i915->regfile.saveSWF1[i] = intel_de_read(i915, SWF1(i915, i));
+	} else if (HAS_GMCH(i915)) {
+		for (i = 0; i < 16; i++) {
+			i915->regfile.saveSWF0[i] = intel_de_read(i915, SWF0(i915, i));
+			i915->regfile.saveSWF1[i] = intel_de_read(i915, SWF1(i915, i));
+		}
+		for (i = 0; i < 3; i++)
+			i915->regfile.saveSWF3[i] = intel_de_read(i915, SWF3(i915, i));
+	}
+}
+
+static void i9xx_display_restore_swf(struct drm_i915_private *i915)
+{
+	int i;
+
+	/* Scratch space */
+	if (GRAPHICS_VER(i915) == 2 && IS_MOBILE(i915)) {
+		for (i = 0; i < 7; i++) {
+			intel_de_write(i915, SWF0(i915, i), i915->regfile.saveSWF0[i]);
+			intel_de_write(i915, SWF1(i915, i), i915->regfile.saveSWF1[i]);
+		}
+		for (i = 0; i < 3; i++)
+			intel_de_write(i915, SWF3(i915, i), i915->regfile.saveSWF3[i]);
+	} else if (GRAPHICS_VER(i915) == 2) {
+		for (i = 0; i < 7; i++)
+			intel_de_write(i915, SWF1(i915, i), i915->regfile.saveSWF1[i]);
+	} else if (HAS_GMCH(i915)) {
+		for (i = 0; i < 16; i++) {
+			intel_de_write(i915, SWF0(i915, i), i915->regfile.saveSWF0[i]);
+			intel_de_write(i915, SWF1(i915, i), i915->regfile.saveSWF1[i]);
+		}
+		for (i = 0; i < 3; i++)
+			intel_de_write(i915, SWF3(i915, i), i915->regfile.saveSWF3[i]);
+	}
+}
+
+void i9xx_display_sr_save(struct drm_i915_private *i915)
+{
+	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
+
+	if (!HAS_DISPLAY(i915))
+		return;
+
+	/* Display arbitration control */
+	if (GRAPHICS_VER(i915) <= 4)
+		i915->regfile.saveDSPARB = intel_de_read(i915, DSPARB(i915));
+
+	if (GRAPHICS_VER(i915) == 4)
+		pci_read_config_word(pdev, GCDGMBUS, &i915->regfile.saveGCDGMBUS);
+
+	i9xx_display_save_swf(i915);
+}
+
+void i9xx_display_sr_restore(struct drm_i915_private *i915)
+{
+	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
+
+	if (!HAS_DISPLAY(i915))
+		return;
+
+	i9xx_display_restore_swf(i915);
+
+	if (GRAPHICS_VER(i915) == 4)
+		pci_write_config_word(pdev, GCDGMBUS, i915->regfile.saveGCDGMBUS);
+
+	/* Display arbitration */
+	if (GRAPHICS_VER(i915) <= 4)
+		intel_de_write(i915, DSPARB(i915), i915->regfile.saveDSPARB);
+}
diff --git a/drivers/gpu/drm/i915/display/i9xx_display_sr.h b/drivers/gpu/drm/i915/display/i9xx_display_sr.h
new file mode 100644
index 000000000000..30383758f97e
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/i9xx_display_sr.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2024 Intel Corporation
+ */
+
+#ifndef __I9XX_DISPLAY_SR_H__
+#define __I9XX_DISPLAY_SR_H__
+
+struct drm_i915_private;
+
+void i9xx_display_sr_save(struct drm_i915_private *i915);
+void i9xx_display_sr_restore(struct drm_i915_private *i915);
+
+#endif
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index c5ffcf229f42..ae5906885359 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -45,6 +45,7 @@
 #include <drm/drm_managed.h>
 #include <drm/drm_probe_helper.h>
 
+#include "display/i9xx_display_sr.h"
 #include "display/intel_acpi.h"
 #include "display/intel_bw.h"
 #include "display/intel_cdclk.h"
@@ -94,7 +95,6 @@
 #include "i915_memcpy.h"
 #include "i915_perf.h"
 #include "i915_query.h"
-#include "i915_suspend.h"
 #include "i915_switcheroo.h"
 #include "i915_sysfs.h"
 #include "i915_utils.h"
@@ -1048,7 +1048,7 @@ static int i915_drm_suspend(struct drm_device *dev)
 	intel_dpt_suspend(dev_priv);
 	i915_ggtt_suspend(to_gt(dev_priv)->ggtt);
 
-	i915_save_display(dev_priv);
+	i9xx_display_sr_save(dev_priv);
 
 	opregion_target_state = suspend_to_idle(dev_priv) ? PCI_D1 : PCI_D3cold;
 	intel_opregion_suspend(display, opregion_target_state);
@@ -1167,7 +1167,7 @@ static int i915_drm_resume(struct drm_device *dev)
 
 	intel_dmc_resume(display);
 
-	i915_restore_display(dev_priv);
+	i9xx_display_sr_restore(dev_priv);
 
 	intel_vga_redisable(display);
 
diff --git a/drivers/gpu/drm/i915/i915_suspend.c b/drivers/gpu/drm/i915/i915_suspend.c
deleted file mode 100644
index fb67b05cd864..000000000000
--- a/drivers/gpu/drm/i915/i915_suspend.c
+++ /dev/null
@@ -1,135 +0,0 @@
-/*
- *
- * Copyright 2008 (c) Intel Corporation
- *   Jesse Barnes <jbarnes@virtuousgeek.org>
- *
- * Permission is hereby granted, free of charge, to any person obtaining a
- * copy of this software and associated documentation files (the
- * "Software"), to deal in the Software without restriction, including
- * without limitation the rights to use, copy, modify, merge, publish,
- * distribute, sub license, and/or sell copies of the Software, and to
- * permit persons to whom the Software is furnished to do so, subject to
- * the following conditions:
- *
- * The above copyright notice and this permission notice (including the
- * next paragraph) shall be included in all copies or substantial portions
- * of the Software.
- *
- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
- * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
- * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT.
- * IN NO EVENT SHALL TUNGSTEN GRAPHICS AND/OR ITS SUPPLIERS BE LIABLE FOR
- * ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
- * TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
- * SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
- */
-
-#include "display/intel_de.h"
-#include "display/intel_gmbus.h"
-
-#include "i915_drv.h"
-#include "i915_reg.h"
-#include "i915_suspend.h"
-#include "intel_pci_config.h"
-
-static void intel_save_swf(struct drm_i915_private *dev_priv)
-{
-	int i;
-
-	/* Scratch space */
-	if (GRAPHICS_VER(dev_priv) == 2 && IS_MOBILE(dev_priv)) {
-		for (i = 0; i < 7; i++) {
-			dev_priv->regfile.saveSWF0[i] = intel_de_read(dev_priv,
-								      SWF0(dev_priv, i));
-			dev_priv->regfile.saveSWF1[i] = intel_de_read(dev_priv,
-								      SWF1(dev_priv, i));
-		}
-		for (i = 0; i < 3; i++)
-			dev_priv->regfile.saveSWF3[i] = intel_de_read(dev_priv,
-								      SWF3(dev_priv, i));
-	} else if (GRAPHICS_VER(dev_priv) == 2) {
-		for (i = 0; i < 7; i++)
-			dev_priv->regfile.saveSWF1[i] = intel_de_read(dev_priv,
-								      SWF1(dev_priv, i));
-	} else if (HAS_GMCH(dev_priv)) {
-		for (i = 0; i < 16; i++) {
-			dev_priv->regfile.saveSWF0[i] = intel_de_read(dev_priv,
-								      SWF0(dev_priv, i));
-			dev_priv->regfile.saveSWF1[i] = intel_de_read(dev_priv,
-								      SWF1(dev_priv, i));
-		}
-		for (i = 0; i < 3; i++)
-			dev_priv->regfile.saveSWF3[i] = intel_de_read(dev_priv,
-								      SWF3(dev_priv, i));
-	}
-}
-
-static void intel_restore_swf(struct drm_i915_private *dev_priv)
-{
-	int i;
-
-	/* Scratch space */
-	if (GRAPHICS_VER(dev_priv) == 2 && IS_MOBILE(dev_priv)) {
-		for (i = 0; i < 7; i++) {
-			intel_de_write(dev_priv, SWF0(dev_priv, i),
-				       dev_priv->regfile.saveSWF0[i]);
-			intel_de_write(dev_priv, SWF1(dev_priv, i),
-				       dev_priv->regfile.saveSWF1[i]);
-		}
-		for (i = 0; i < 3; i++)
-			intel_de_write(dev_priv, SWF3(dev_priv, i),
-				       dev_priv->regfile.saveSWF3[i]);
-	} else if (GRAPHICS_VER(dev_priv) == 2) {
-		for (i = 0; i < 7; i++)
-			intel_de_write(dev_priv, SWF1(dev_priv, i),
-				       dev_priv->regfile.saveSWF1[i]);
-	} else if (HAS_GMCH(dev_priv)) {
-		for (i = 0; i < 16; i++) {
-			intel_de_write(dev_priv, SWF0(dev_priv, i),
-				       dev_priv->regfile.saveSWF0[i]);
-			intel_de_write(dev_priv, SWF1(dev_priv, i),
-				       dev_priv->regfile.saveSWF1[i]);
-		}
-		for (i = 0; i < 3; i++)
-			intel_de_write(dev_priv, SWF3(dev_priv, i),
-				       dev_priv->regfile.saveSWF3[i]);
-	}
-}
-
-void i915_save_display(struct drm_i915_private *dev_priv)
-{
-	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
-
-	if (!HAS_DISPLAY(dev_priv))
-		return;
-
-	/* Display arbitration control */
-	if (GRAPHICS_VER(dev_priv) <= 4)
-		dev_priv->regfile.saveDSPARB = intel_de_read(dev_priv,
-							     DSPARB(dev_priv));
-
-	if (GRAPHICS_VER(dev_priv) == 4)
-		pci_read_config_word(pdev, GCDGMBUS,
-				     &dev_priv->regfile.saveGCDGMBUS);
-
-	intel_save_swf(dev_priv);
-}
-
-void i915_restore_display(struct drm_i915_private *dev_priv)
-{
-	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
-
-	if (!HAS_DISPLAY(dev_priv))
-		return;
-
-	intel_restore_swf(dev_priv);
-
-	if (GRAPHICS_VER(dev_priv) == 4)
-		pci_write_config_word(pdev, GCDGMBUS,
-				      dev_priv->regfile.saveGCDGMBUS);
-
-	/* Display arbitration */
-	if (GRAPHICS_VER(dev_priv) <= 4)
-		intel_de_write(dev_priv, DSPARB(dev_priv),
-			       dev_priv->regfile.saveDSPARB);
-}
diff --git a/drivers/gpu/drm/i915/i915_suspend.h b/drivers/gpu/drm/i915/i915_suspend.h
deleted file mode 100644
index e5a611ee3d15..000000000000
--- a/drivers/gpu/drm/i915/i915_suspend.h
+++ /dev/null
@@ -1,14 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2019 Intel Corporation
- */
-
-#ifndef __I915_SUSPEND_H__
-#define __I915_SUSPEND_H__
-
-struct drm_i915_private;
-
-void i915_save_display(struct drm_i915_private *i915);
-void i915_restore_display(struct drm_i915_private *i915);
-
-#endif /* __I915_SUSPEND_H__ */
-- 
2.46.0

