Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A494971249
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 10:41:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69C3710E32C;
	Mon,  9 Sep 2024 08:41:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DEMkmLCx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3EFE10E32C
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2024 08:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725871259; x=1757407259;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qWSzTScZpZ1pzDNt58k+7VUCvLDmUi0V9a/K8+kr9Ig=;
 b=DEMkmLCxIHdVcuXVTFlE9n9PlPYyQT2qEnDgCLv7PtcAzwmCZxueoTR7
 9UVcLX5EXcHDFbfRp78LUn7DAP4aoyduebEe4OAwDpZFMCjnsYYUYENAY
 VXNkPoNauvt0dkRcjD44nuO3S/uhMZGhyiSOLtUViXa1jK7BI6pwBiMFK
 cy0wSY0P2XRWmuWXczjj5zWv4YOh1QoP1VbGL5GeYkSudi/Hrs14WCljE
 ket1OKi/+U8lfs+ntDQ7uRmgqw0HfDZscXBj0UyiqU225f6AUQxQ1PlFa
 UfJdScBFcg2TRwWVi0cTK6uUeq7wXP4mrTaYagBR2UfkpC3PlnNM5PrVG Q==;
X-CSE-ConnectionGUID: p2gryti0SsGqaTBLsNMuwQ==
X-CSE-MsgGUID: cKnhbKN/Tyinc9nARn0CYA==
X-IronPort-AV: E=McAfee;i="6700,10204,11189"; a="35147421"
X-IronPort-AV: E=Sophos;i="6.10,213,1719903600"; d="scan'208";a="35147421"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 01:40:58 -0700
X-CSE-ConnectionGUID: DpX2xqPPQN2VHAtZkea7IA==
X-CSE-MsgGUID: +LAvepktSASGPVB/A0QAMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,213,1719903600"; d="scan'208";a="66648741"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Sep 2024 01:40:58 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 9 Sep 2024 01:40:58 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 9 Sep 2024 01:40:58 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 9 Sep 2024 01:40:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=p6d00kMJqYDCfYYfLhKBN9cx3X3/RrbZc2Pi1IVAv63lt4sU1+HxJoVLQdTz9nURC6koiwpcMHNkDCkAlbIFAF7Wb5LK8POk3GIrkDrdhTZ02zuyAtX98a/oqx0EBcWdf0mP8w/cJhY9zdH5H5+jY4s30k8fLiaQS8axNGgaWg2AXvEjqMAn3CSINzc9InVzAaihSrrnk20Tdq8k+7GVlBDYySMglb2n6Jm6QQMxN/OeVbr/P3qC2VRO750CVRcLdbJxMcaLoNRqYkL/qU9k1Da+7hPWzeqxIAnCauF/jS9uJH/s2+Frt9EZH+/gsFf/AJ3TECR1ZcYPwcjRBgnUFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F0+vRW7mkyj7JyRScthMvfas+ifMi4+mW6UvzJBPnqA=;
 b=sJXkACj92zXYYGVaLwfrw3ypZlBrlPG2etQo6UB6av0M/Twm3HcBN6uxbnhQyuFRHRJzkvUfpHgR8w+eoxjhs2sYtRaZ8I7JSHMHD1ZR3i2AdzdzWpVrCXQ1OBUTxv/kTplyz5P0cnRCCMid5rDDNLVe9+ec5JJe1Sb49RraxZmgOXVPsXdGzTqzqhap+/XAMmYUD6EHsIuOjyH6tWLYaBN9wK6H41T/l3aDmWb2cz52437Ya98LrjB+Yny+2oeHrn0Y1L/69+SMqcMkJpMQXdgk3XtEJotCUMn4ctqVNgqEtWa+lVgTfv6w+eaa3ARK6k10sjiKMLNLPTH6eOiRFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN2PR11MB4599.namprd11.prod.outlook.com (2603:10b6:208:26d::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Mon, 9 Sep
 2024 08:40:55 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.7918.024; Mon, 9 Sep 2024
 08:40:55 +0000
Message-ID: <095ec771-381b-4074-93ce-97a259d4f510@intel.com>
Date: Mon, 9 Sep 2024 14:10:48 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/14] drm/i915: Add bigjoiner and uncompressed joiner hw
 readout sanity checks
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <jani.saarinen@intel.com>
References: <20240906125807.3960642-1-ankit.k.nautiyal@intel.com>
 <20240906125807.3960642-8-ankit.k.nautiyal@intel.com>
 <ZtsiFvgj6_GAu26S@intel.com> <fa3186d3-a275-4475-9f02-e219503f954e@intel.com>
Content-Language: en-US
In-Reply-To: <fa3186d3-a275-4475-9f02-e219503f954e@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0111.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:11d::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN2PR11MB4599:EE_
X-MS-Office365-Filtering-Correlation-Id: 523d4aaf-a4f1-410b-b20c-08dcd0ab1ef6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RTVRMkZsUkxCMXJiNTVKNE5yQm5OdUNHTlNzWi9qRENUVUNLZ21QeEo5a2ZC?=
 =?utf-8?B?ZHRnQzA4bFpkdlJhQlhiaHIrdzB5Zlp3YXdUekI1bXllTkNacWVuNjV1SzlP?=
 =?utf-8?B?ZkYrZkVjdWVTczgvT2pwMWJtdXJuMmpoOG1wQU9neVQ1RVRPUk9OQ1JteDVK?=
 =?utf-8?B?V052TmFvbGhsSmtlUXFKRUpGa2dnbC91OXRkS051S29CdW5wYllKRjducFg1?=
 =?utf-8?B?TWJINEF2cWhwUm42RWlXR2ZIODRpRG5WbFNRNHpuZ1V3WVdkalRJYlJZS1po?=
 =?utf-8?B?RWJYdE5iaFpwKy9nbW44ZmJJN0QrUEh4MFFoZkZzdzMzbDVkNkNOY2Z2dDlC?=
 =?utf-8?B?NXF2Vnoyc0pxckJ2V1FUZ2FGSkxuNlVsblZ3NGhGU2NvMUFnQ29lbEVjL1Zv?=
 =?utf-8?B?SGYwUUIrSGRuZ05PWW1TYlQwR3BtUFdIU2QzNkdMS3pBMWVaRXBlMWZGQ0cr?=
 =?utf-8?B?bnhEWlRwRzkxb2lENzJhWEFSQ1RmMGY0RVI1QXYzVUxJSWgxM0VVekFBT01B?=
 =?utf-8?B?N0NSNEx6bnd0dGtRVVd6YWo1SERmVCtzQzdVYVg4R2hOY3dBVE1UOG1pVVov?=
 =?utf-8?B?aThLK0NVZUxRTmNpdnJ2K1RLVlB4dk9xUTk4Mk9rTUFyWmg0d29HOWFVeEwz?=
 =?utf-8?B?c2UrQXFVY1ZCc09hcVRrdmpaWWw4ODhBdG1rVlBKYTIxT3FhSDlSSFlIRUhO?=
 =?utf-8?B?ZE9JNlIvbGt6UWc2SzhlNW9iSHpjdEtaMXhsRCtTaUNTeDhYRlB1a1dsZzdJ?=
 =?utf-8?B?a1ppZDdhUGFXeWI4eXBiNkxIZUY3WnFGcWlXRXVESTZ0Y25SbHZtK2NkY2NT?=
 =?utf-8?B?aTZEZGVHcmhpOEY2RXkrM2JybnpsTXFSejFmZGtvTU1lWTFRZTdsRnlqN2ZV?=
 =?utf-8?B?WkdiSmUzT2NjQzJMWk9Qay9YZ1pFRndhcElHK2MyUjlMa09TbEZZeVVTakhW?=
 =?utf-8?B?elFTanR5MTFsMzF4KzUwU25XdWZjOXJzZFpaVWt5RTgyamgvTnQ4Y1dwSGRu?=
 =?utf-8?B?eDdvcVJMWTQ0ak1DMlpCOEk4aFVYRHE4L3BNZUhmU1pvMDR3aFhzTmNoZU55?=
 =?utf-8?B?MXFJVnA3VmJodzlUc3JQTUhYN00wRmIyMXZ0bXMxL0VuNUpwUDhKU2tiNWhk?=
 =?utf-8?B?ZSsrT25JL1pkbXU2U2x4cmE2RmxwWURkNnhPRUdialkrWFlyWXF5YU1rZW1S?=
 =?utf-8?B?UkZLYkY0WFY2c0o2MXduM1lUWjgyRTZBdWZCNmpwZFRpaTVGRVdpZ1R2SzNu?=
 =?utf-8?B?bDl2MDZmZXZxK3hXa2lNS2ttK2RhRDBYT29oUkNvQ3BMUDYvWkNJVUl5VHhx?=
 =?utf-8?B?ZFV4SGtQdlVjNUtJRUFQRzBBb0k2b1lINGllZmo4eFdYVFc3UUk5ZVlZaVFx?=
 =?utf-8?B?Ym5mVG1qbEdBMmt0dEIrUm5xTiswOVZLUHhnL0FzRGZmd0EzV0t3allLaXRP?=
 =?utf-8?B?dVo4cWtHQ0FFNHJQT3JRNTNuU1RlL1ZBc0lpZWRld1FwOEp6cGxnb2s5Yitt?=
 =?utf-8?B?S2wrcWdiQkJLMU1tZmdXTzdNRVlRNk9Zbk5xZnJuWUFFeG9JZk5MT0Qwdys5?=
 =?utf-8?B?eVA0eG9uNUlaQmM3TW9taEkxdjkwaTRxVVFjcWNqUXE3eW83TzYyN0lYbjA4?=
 =?utf-8?B?OExNM0xhTExZL1lUSDNtRHVMQXBpVjFaY09yWlpmM25hYzZYL2dCdWtoSHdp?=
 =?utf-8?B?Y3NFZGQxZ0d6SjZ2T2FDNFVIVWtWVzhLT3ZTNzFJV0QxMnBjVzk1cWU4bXI0?=
 =?utf-8?B?TlBaSWJOUmhrOW1TZ2lUUTRDdnBnanlkUXRvSnk2MXg2cTZLZEovWFdSODlo?=
 =?utf-8?B?cFg5aDhIZy9HNUN0OWt2dz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SVUrUDZQajRVanhuRU4zQTVOaFBMUnl3SFppdFowZE5XQ0NTQ1pmOEFHM2dp?=
 =?utf-8?B?cnBYMVpFZElzbTI3b3BZRzI4b2pqYkR4M2hWeXppV3dmMU02c01tdEl4VWl6?=
 =?utf-8?B?VG43TXNraXNaWXRHNzJwMHorOGlyWmViT0psU3NNQ2ttdExzRmdCY2JKeG9J?=
 =?utf-8?B?bWMvRDFNeUhVd0cwNUI4MlNUc1ZFR3pMd2Qxb3pxZW1TLzhFbHgvS3BVb0w1?=
 =?utf-8?B?emhVb3lnUmpKVjdOdjdsM0JxWk5FK2JMbFoyV1FSM1pSL2dXZmcxWWtCcFly?=
 =?utf-8?B?ZmZPZi84VlNGd0NUQjJLeVhZUUQySysxQjh5WHpMSVYybGRjVnJHUjR0cm5L?=
 =?utf-8?B?UHNzU0xOUXVuUklIeDUxTDc0VElRUEVPUzdjbS9HL0FXQ3hGSzFvMGcxY0Iz?=
 =?utf-8?B?bFdLdHBxWnZYcXphMlN4STdqRm5uc2l6YTJvQ3djZDdOd1ZvclVzZ2pRSWcx?=
 =?utf-8?B?QXNGMXBIMlc2RTR5WC93SHZGeTZqTDNrOWpXSUNYMCtzVnBnRlJHRVlpU2Fp?=
 =?utf-8?B?OGwrUTJCZHVBYjA2Q2N4T2dQZmRnK0xXKzhUZUozd1pDYWh6bEVIZGtUQ2h5?=
 =?utf-8?B?dUlvenVCeTJ6eU8wYTkyblVVZU5KR0t3b2dwRXdtRmoxc3E4d1hlQ1NnY1BQ?=
 =?utf-8?B?ZVBGeXZYYlhWalNnd283K1FheDJrQjRsbFk4ajNqSWdUem1NZkVqV2t2K3JN?=
 =?utf-8?B?TThxM2hzVGFMSGt6cEtFRXVuamswS1VRbjhkU0F4bGhaSVlCeHBxOHhXMWtI?=
 =?utf-8?B?NExkTDEyZTIwUWtCMklsY1JtTHNabGN0bkJWbHBkZWtHejJlTkd3Qnp1ZHJu?=
 =?utf-8?B?TGtoY211KzY2UGZrL1l1NkN1Mk03cUVwVEkwZVlKSG1YWWFGaDFraHZNeVhs?=
 =?utf-8?B?WUQ3Yy8wdG9GWmprcXR6UjJrRDAwaGFmZUF0MGZwUjhnUzluc2F5aXRYaXd4?=
 =?utf-8?B?b1dyODVtY3JnOHh2UEQrSE5XWDgrY0N4SU5DaTdNTnNqWUVKTktRZ0l0VjV4?=
 =?utf-8?B?aGRWT1h4dThmRmpXRnBSVXZINmVSTjF5R1NTOUtIL1BaSXc3eHVjZ0FzbUwv?=
 =?utf-8?B?Q1M0dnlZNFNKSkZjWnRmZC8xeW9LR2xtaU94YWthSWFhWTdoSGZpeCtsSDJz?=
 =?utf-8?B?WDhOK0VQMmplcGdFaVNEVXpJNjMzejNNeUZMRTNKTzlpUi96SUZoMXBNU0dY?=
 =?utf-8?B?dGZyWVZmbDF1bFNkUkt1ZnU1TFpwVzZxMkcyQ3ZqUStNRFZUU0NGcTBGbklv?=
 =?utf-8?B?d29xY2d3MllLTG96L21nUGd2VjAwblc2OUZBTmFINWJqRlRzNDhvNXhFU2Jj?=
 =?utf-8?B?L3dHdC9nM2R3ZE5icFA3OWxCUUdXS1Bnck9NbXgveDBlelBEdjQyeEVPUTNW?=
 =?utf-8?B?YzJhb0xGT1lMRnlTNHZ1RWt6dER3bDFzNnVuc3ZRc28zU0tGTm45anBXMzFW?=
 =?utf-8?B?djVXcnJXeVpuZEoyVC96TWh0aFh1ZnI3RHFrOEFWK09pSGszN3VlRm4zMzda?=
 =?utf-8?B?TnZJWlQxd29jWk5LeVBBdnNEMGU5bm84QXdEVmh5UzlTRXBvaWg5b2tKSllD?=
 =?utf-8?B?dXVXdjcwQmwrdkdmRzVCUGtzSkJxVWpJd20rL2pwYVlHVGNnYlBEN3dVR1dE?=
 =?utf-8?B?VG5VanB1bmdjRkk4MzdMODB3b3dJYXdZY1VqY3dkZXlRUFdwZ0Zub2IyVWto?=
 =?utf-8?B?Wlk5OGMyU3B5MVRRa05kOXJPRDd6RFVwcUdWY0FwWDF3NVNISWtqSEREMmFJ?=
 =?utf-8?B?VmhweS8ybHg2N0xuV2YzZENGU1NvSTZhOXp1NWhxSU9QMkxmVndTRnpqT3lj?=
 =?utf-8?B?QWtSeXhFTmpuWDk5bkdvRDFMUHpMa2VybU5jL2d1S0VqS2IxNWhDbEZhSDJL?=
 =?utf-8?B?a0NxSVFkemRrVWpERDNJSXUrSUxNeTJnS3p6U0IxcjFKT1M4RlBJV1N6OWFs?=
 =?utf-8?B?NHJrUk1nbDJJdHczY0s4aGxhdDdhR0xIS0Rpa0RnWDczYjNmT2U3M0w3WTY0?=
 =?utf-8?B?MHlocTN4RTl1OWtWRVpGN0trZHI4clFUdWdERnRuaGlmK2d1TjVvQWFNUDlk?=
 =?utf-8?B?dStSb0lwUEg3alNVeGVjWXNBSWtvbnQ1SFA5UzZwS2x2RmJYT0dSNFRhL3Bi?=
 =?utf-8?B?cWZRSHg0MFRpRDNKb1JiaVU1dE5JS1FqNGN0dFUxRkljYmFXVUhjTkNweThl?=
 =?utf-8?B?bWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 523d4aaf-a4f1-410b-b20c-08dcd0ab1ef6
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2024 08:40:55.8211 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1iTy9He9Bd3VEkZOd3fH4Uaw/BMpb1GV0K/drgnHaFs+N494mWmGvQkcqpYevdvwKlrMiXmSZBu0wkLdtWyo07q/11PkpPhtK4Hqu12uFqM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4599
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


On 9/9/2024 2:01 PM, Nautiyal, Ankit K wrote:
>
> On 9/6/2024 9:09 PM, Ville Syrjälä wrote:
>> On Fri, Sep 06, 2024 at 06:28:00PM +0530, Ankit Nautiyal wrote:
>>> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>>>
>>> Adding sanity checks for primary and secondary bigjoiner/uncompressed
>>> bitmasks, should make it easier to spot possible issues.
>>>
>>> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>>> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_display.c | 24 
>>> ++++++++++++++++++++
>>>   1 file changed, 24 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c 
>>> b/drivers/gpu/drm/i915/display/intel_display.c
>>> index cdc7531311fc..6f098383479f 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>> @@ -3638,11 +3638,17 @@ static void enabled_bigjoiner_pipes(struct 
>>> drm_i915_private *dev_priv,
>>>       }
>>>   }
>>>   +static u8 expected_secondary_pipes(u8 primary_pipes)
>>> +{
>>> +    return primary_pipes << 1;
>>> +}
>> Extracting this should be a separate patch really since it
>> was already in the code until the previous patch erroneously
>> removed it.
>
> Sure, will move this to another patch.
>
>
>>
>>> +
>>>   static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
>>>                    u8 *primary_pipes, u8 *secondary_pipes)
>>>   {
>>>       u8 primary_uncompressed_joiner_pipes, primary_bigjoiner_pipes;
>>>       u8 secondary_uncompressed_joiner_pipes, 
>>> secondary_bigjoiner_pipes;
>>> +    u8 uncompressed_joiner_pipes, bigjoiner_pipes;
>>>         enabled_uncompressed_joiner_pipes(dev_priv, 
>>> &primary_uncompressed_joiner_pipes,
>>> &secondary_uncompressed_joiner_pipes);
>>> @@ -3650,6 +3656,24 @@ static void enabled_joiner_pipes(struct 
>>> drm_i915_private *dev_priv,
>>>       enabled_bigjoiner_pipes(dev_priv, &primary_bigjoiner_pipes,
>>>                   &secondary_bigjoiner_pipes);
>>>   +    uncompressed_joiner_pipes = primary_uncompressed_joiner_pipes |
>>> +                    secondary_uncompressed_joiner_pipes;
>>> +    bigjoiner_pipes = primary_bigjoiner_pipes | 
>>> secondary_bigjoiner_pipes;
>>> +
>>> +    drm_WARN(&dev_priv->drm, (uncompressed_joiner_pipes & 
>>> bigjoiner_pipes) != 0,
>>> +         "Uncomressed joiner pipes(%x) and bigjoiner pipes(%x) 
>>> can't intersect\n",
>>> +         uncompressed_joiner_pipes, bigjoiner_pipes);
>> Please use 0x%x for printing hex numbers
>>
>> Side note: maybe we should switch to the standard %#x instead?
>> Though we'd need to double check whether prink() follows the
>> idiotic C standard or not:
>>   printf("%#x", 1) -> 0x1, for any non-zero value
>>   bs.
>>   printf("%#x", 0) -> 0 (sigh)
>>
>> If printk() behaves the same way then I want to see %#x anywhere
>> (pretty sure we do use it in a few places already though).
>
> I will check how %#x behaves with 0 with printk, accordingly will use 
> 0x%x or %x#x, (we do use it in some places).

Just checked, with printk(), %x#x with 0, prints 0x0 unlike printf() 
which prints 0, so %x#x it is then.


>
> Regards,
>
> Ankit
>
>>
>>
>>> +    drm_WARN(&dev_priv->drm, secondary_bigjoiner_pipes !=
>>> +         expected_secondary_pipes(primary_bigjoiner_pipes),
>>> +         "Wrong secondary bigjoiner pipes(expected %x, current %x)\n",
>>> +         expected_secondary_pipes(primary_bigjoiner_pipes),
>>> +         secondary_bigjoiner_pipes);
>>> +    drm_WARN(&dev_priv->drm, secondary_uncompressed_joiner_pipes !=
>>> + expected_secondary_pipes(primary_uncompressed_joiner_pipes),
>>> +         "Wrong secondary uncompressed joiner pipes(expected %x, 
>>> current %x)\n",
>>> + expected_secondary_pipes(primary_uncompressed_joiner_pipes),
>>> +         secondary_uncompressed_joiner_pipes);
>>> +
>>>       *primary_pipes = 0;
>>>       *secondary_pipes = 0;
>>>   --
>>> 2.45.2
