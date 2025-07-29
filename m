Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB39B14C5F
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jul 2025 12:39:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66DFF10E60E;
	Tue, 29 Jul 2025 10:39:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KCvaTFba";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D73110E60E
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Jul 2025 10:39:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753785554; x=1785321554;
 h=content-transfer-encoding:date:message-id:cc:subject:
 from:to:references:in-reply-to:mime-version;
 bh=S0Qbvu15Qay4A+wMwoUDj0jmH7VXLcL7ZSHyBEvojIc=;
 b=KCvaTFbasYFwcdldox5of2oxh+GSBN12h5A4ogbbPpad5XYZOdWgx7Ps
 YZSFMBskVH3IImenlHCbMgUJJHeydXRqT7C2Ppqvh+L1qoau0apWjkOy2
 ns4+2CEdDdmmdm2PIu5/SxmQAdHm0z8bFOfrt0KjdTEi9ulj1iQ85uNuQ
 xx/iVjvzSWk7+KaLYEPzTYeWF97eUek/IsbBABNypeaaJ31ibjF8mrSQg
 puvjZIH0v1Lvuf29jlfaxAYRpUB+nfXG3jKH2LGBPImW82OYCfxSCQ/SS
 gjrxYFKbcCVvqHdvVtYWUkS6TMw9WdyB98sSyXhtU/DH0CUVCMG+kN1EU g==;
X-CSE-ConnectionGUID: D2H2GbpuQjOdU4xuwzjHnQ==
X-CSE-MsgGUID: PFpfq7MQSCmABQaTd/vqBA==
X-IronPort-AV: E=McAfee;i="6800,10657,11505"; a="73635368"
X-IronPort-AV: E=Sophos;i="6.16,348,1744095600"; d="scan'208";a="73635368"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 03:39:14 -0700
X-CSE-ConnectionGUID: LFIQYtSRTb+mSVGxGTQ6Zg==
X-CSE-MsgGUID: LYDJeDQxQLqRWHztc+JmeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,348,1744095600"; d="scan'208";a="162379072"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 03:39:13 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 29 Jul 2025 03:39:13 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 29 Jul 2025 03:39:13 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.42)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 29 Jul 2025 03:39:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VaO0TXn7MikAGrMvU81S+FHFHW2rRwov9UBUs5RaAGsPb2kgMP4vNH2AQztbTT+fm5skJYO2I1glwz1TVPnAMJS/J2DyKUs44dvJ65DUxjosjaLkjxjQDn3rzEpiS/557jz3QAqJZI/P4PjNDHJctPtdoJXVB7TyVcN+gKRtRCrgeE28VZYmov09YHuGbWHdt37MuLjvNXAEvoHg6BIyG0MYzj2ld1kK3zfT5gtB5ZSznWXn94arNckGO3FpNKBnyRRSFJTu4L+r6EsyKak60bFcaez+8RbCv+Ln80OCdG6sgPEkDlomkw25HOZtrwPUm/1DNVUcmLtsoq8YKaW6Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S0Qbvu15Qay4A+wMwoUDj0jmH7VXLcL7ZSHyBEvojIc=;
 b=yK2TWV0OolYN4MCddoCtIDKg2BlsIm/PvqKfRgNsOsedLziDKNRbF4OX9eWNWPp05I7OiakqkvLPnzhZeEFn7rjUlMQNKx10Z7xqs7eL98etOxH1YLZWxdAV0UmNrCmaDeK4rg64j2YsYecNyRp1dml0locwEUvkxrP8pQiubgNoh3C5B3rdwFYGoAe8Gvr58rr/ydvaHllAidtZ73RvSqzuNUJG+BHB7r7lJv448ieVTwwy7bFjLYOctpoCqGY3Ghuezs2ysH9eOPj9e0rZ6brUF1oy2ZH+GWcACLiDmqJ0CtJ9rwpkF5Rbd2VuTBz3oxBba3PsMCeq8ZlM7DdvuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by CH8PR11MB9457.namprd11.prod.outlook.com (2603:10b6:610:2c3::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.27; Tue, 29 Jul
 2025 10:39:11 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%5]) with mapi id 15.20.8989.010; Tue, 29 Jul 2025
 10:39:10 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Tue, 29 Jul 2025 10:39:06 +0000
Message-ID: <DBOH39F72CAQ.2W4C75XLH9QOC@intel.com>
CC: Matthew Auld <matthew.auld@intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, Krzysztof Niemiec <krzysztof.niemiec@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/selftests: Do not overwrite error code
 after intel_context_migrate_clear() call
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>,
 <intel-gfx@lists.freedesktop.org>
X-Mailer: aerc 0.18.2-107-g4f7f5d40b602
References: <uqnll276k7txpz2ldwxfmd6ay7px23xlx643geu2jij54vj6u5@pgmiswyhemok>
In-Reply-To: <uqnll276k7txpz2ldwxfmd6ay7px23xlx643geu2jij54vj6u5@pgmiswyhemok>
X-ClientProxiedBy: DU6P191CA0031.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:53f::10) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|CH8PR11MB9457:EE_
X-MS-Office365-Filtering-Correlation-Id: b2f34c4a-81c9-48d7-d0a3-08ddce8c2718
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WHFpVlF2QXcvaTFOTzIwem1Hazc1UmlrQlhCUlRJaVpudFA0VDd2TklmQm5P?=
 =?utf-8?B?TDRyVC9KSUFWQVJod1dKWnlvaVZtL2piajdTTjZ5d2g4bW5YN0kzWm91dXgw?=
 =?utf-8?B?Skp5UVZ4VEV1WnNMR28yU2o3SVFnN0dhczRkcWxNOVlySjhCYnNsV3lDN00w?=
 =?utf-8?B?Yjk1bEhZVFRoeDQ3alA2VVVSTEpCUnZBcXdDTGNORjB3aHVFRU1RNkVROStx?=
 =?utf-8?B?Z3hwbUFGNm9FbHg1ZkxoSWU3RHNpRE0vdDBhRkQ3QWZJMlZ5ZU4zOFRWd2pW?=
 =?utf-8?B?b3VWWkFiWFhCcTE3ZzZWTWZSMDFhV0JTMkNzY2dOTjJSU1BENnRwMFNZREwr?=
 =?utf-8?B?M1Q4T1piZkZGWFZia0IrNmhQamI2THdxbGR4MVk4d3Vxa0NSM1lRK0RTcU1T?=
 =?utf-8?B?dEttTWVVdlBKTnNsc1RRdE5nNlNhSUlGSkNlZllSaVZrWldNSG1URDVSMExV?=
 =?utf-8?B?TFZ3dnhwK3hwdGxUdFdubzIreDd5ZlduTEdkbS9nbEhFb2dYMWFRR0NUTDAz?=
 =?utf-8?B?VkFnclgyRzRKTjBsajFrc0FBcXQ4djVrcUN2L3dXckNKOGFqOHdFcVFEd2dp?=
 =?utf-8?B?VGxkVWo4Z2hkejJLTWVhaGFyaXN1V1NvQi9uOEMyNGpHN1hubTQ5WVgzK1pu?=
 =?utf-8?B?aTdwSXlzTTdzaEpyQll6N0h1V0FaRFVUNkRXTnhMWkhZMWRFbjJVVjdCa3h4?=
 =?utf-8?B?cnZSTks5T0VQb2JVTGNFQWRVenQ5QTQzeVRGbkVxL0RDQUp4VlpBekpRdXRH?=
 =?utf-8?B?VE1pclBPNGZBOVU1NlllcTlWLy9XSDFrVnFxeEtCenBqU2NIRERadGxBNDUw?=
 =?utf-8?B?WEdLbTkrelg4VS9waGJBRGgyMHZGcjd1Qlk0Qyt0eXk4cFkyd3pSOE12c2o5?=
 =?utf-8?B?WHJ5WEFwK1N5Y28zNy9mblRkQVIza1pwenU1SHR6aTlkZHhTTXVGZlRMN3hF?=
 =?utf-8?B?MGJzUVltUHAwSWh2Qis4RUt0bWlxN2VZY3owcURlc2NhSHYvMDBVVWRPblll?=
 =?utf-8?B?bnk1SlNxOXdscEtBd2xRdGlyNUYyTTdja1pURDBsYnhaamUrNTc4RmVHbXAz?=
 =?utf-8?B?ckcweDUzVEVOaVZTUDBpL2k2L2FSYWJhNDlCbTBJeWE0d3BlckhmK2xxUVBW?=
 =?utf-8?B?a3BUNnpSZytxbktXYWhSK2ZERngzRnBzbSsydU9pUFY3UStHbUkwM1ZQWlA1?=
 =?utf-8?B?eVFjcnR3UDMzSzFsTXJncjZobWhTR2ZwcFVGVkZOeW11NGp6b3JFd3hPZzVm?=
 =?utf-8?B?b2E1dWJXcUsyMXQxek44QVl6ZGI1cXJ3ZUlYdWNaMURuZDlFVGEzU3lQRGZp?=
 =?utf-8?B?WDNYVjRrU0w4ZEpBUVM0TkswR3MwMmZHVmJmWkpUNXBLWjBFMSt0bmsvZXJv?=
 =?utf-8?B?ak5WTVkrYTc2YytwOWIwbE8wcXdUblZiVlN5TU5CYmpMNkN0MUIrUTR4THI3?=
 =?utf-8?B?VHU4RWxOTjFPQzlOZ3RhMnNnWDM1QjNLOGhwYzdvVWVURG4wWC9XYVBHWjVq?=
 =?utf-8?B?SU9XNjk0SjFrOTEwZDQ3ZnpyNlI1SVBlY2VkNWxqcVZ0YVlJc0YrNWxGbU5B?=
 =?utf-8?B?SlVwczRwSThydE5QMjcxSWdLZHgvTml0RjJDbjRHVzlwK0JqdjNBM0xIZ1dq?=
 =?utf-8?B?MzBxZ1ZwU0JFM3lFeUhxRkFod1FoUTE0Vm1US1hFUlp1TXdoK3dWWWt5R3pP?=
 =?utf-8?B?R0xhWi9yRzEvOC9aZFhlSzIxZHErSGtIblVrMXNSVEZrRkZFVVhDRHJaOTJp?=
 =?utf-8?B?WUxvMGhYNnMyVkxYQmNKUHJKZlUwbkVEK3ZSWml4VkxNWHBpYWFUL0sycXJE?=
 =?utf-8?B?QzhRVCsrRTNZZGtzWVBMUUhCYTlleC92NUxxRk45bUVsVFV0dGhrSlVGVktx?=
 =?utf-8?B?VHkvaS9PdnZJWVI2Um0zRXBKYWpTR282UXM5c2RaOVVwaWc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MHdGZlN3WHJES3p4OVQ1VTRhRnNTbVJUQnBLNGJEZTNiL0t5eVVSdnVVS1B3?=
 =?utf-8?B?cVB4NE02eWtBY2xaeU5kWVh0T3NCRUkwU3ZOSk1yL2hrdjNPdTQ5bm1aaUpt?=
 =?utf-8?B?WWZtUmpjVmE2bHlPbnZ2bC9nOTRqSU4rdmRlNmY0TGcza0tUbHQzajFhTlJw?=
 =?utf-8?B?SzAwaHo3TTA2NFhlRWcxUkprc1VvTUlYcnhBZUphSGNCWERMcjJCVEVpMCtO?=
 =?utf-8?B?S1lWcUZ3SWRISnBoUUswT2gxQldvWTU5RjhoOWUxdkk2U3g3YWMrdW1SWkxz?=
 =?utf-8?B?Qy83eHlyYkg0YVltcU9DRlI2SGJ5L3JjZ1d0QjJCNmZkWXpzS3RibmlEcmJR?=
 =?utf-8?B?cGxSaG1vRUxDeFg0NzJ1WnVlcC9XSENvcExHYW9RVHFLL0l6YWdTUGx6R3lX?=
 =?utf-8?B?eTVxVm04MWthSGZHczZZb1FxbzdZRGhNWVpwSDFSYWMrTzgwd241U01PUUFJ?=
 =?utf-8?B?a0I0R3FwaVFpL3AveUNncDNWRTA4WElPdUFpdnYyUjFSUzFyZnJBRlpSalJv?=
 =?utf-8?B?S3lMMnVJZjBjeW14TkNyUE9IZ1lhMEptem5ISWNBQU5Cd0oxdUR5ZThML0Yw?=
 =?utf-8?B?bnBxQ0s2YW8xMWE0aDhINUxTZ0E1emt2SXoxZG5XdTlaemcrbHBvT1d1R2Vk?=
 =?utf-8?B?aGFuT3RUR1E4cXlkamM3SE90ajA5MGZoWlN3OEt2cXpOTXVuV25DS3NGeGdi?=
 =?utf-8?B?NHFKcnRlYjZhdE9nWlR0WGN2V2xSWkRuanc5R3p2QUh3RlVsYlFCSkMxRUZx?=
 =?utf-8?B?aU1ocjdMUVlmZm5HR2x5NVpnOWdvNWpLUzdWWGlpL2lJTHRSaWNRZnA4VDl4?=
 =?utf-8?B?T2E0N082bkVEdUo0bDg1aGJ5YUxBcDFJTmhoMk1zbVYzWng3amZqZ0ljMkFO?=
 =?utf-8?B?YjFDQm9Ec3R0a2xNbm1CV1MwaTlHMTJZSTZaYURZa2N4eExReE5lcWVlNVZH?=
 =?utf-8?B?K29IUG1tNHRMTndidjBBOEI2eUhkZXU1RFh6a3VJdjBLNTZQSWczNWNXOTFl?=
 =?utf-8?B?ck1oT2EwUFBJZzVCY1lmNU9YUXVPZXVIZXNaUCs2dFE0dmtVN1RFazYvZ09k?=
 =?utf-8?B?RnJ2YkRmdjNCV0FuNVNleFhiM2dkeSsrMjFUK1pFT3poenRMbnlobUV5UU1H?=
 =?utf-8?B?Y2tQTWM5c0FBc0NEd0JXSTU5VDIvOTlIcFgrVFlHR0RFK25oK1ZFMGhIT2g4?=
 =?utf-8?B?ajR3d01uaFI1ci9XVXZzZHRPM2R3cmxxK2ZKMHVpZ1NiUng2WHJpY1lUeTUr?=
 =?utf-8?B?TGx6L2RjTmNpMTVVVCt6SmkxNjc5bXRZZk4vRHRoUS82QmdLQWVNMFUxcXhj?=
 =?utf-8?B?WGhMQjZCMERVcDdsZEUxMnQ3Y2svK1BpZDkrQkJmOGhZSnRMbUNCWEwvUUZQ?=
 =?utf-8?B?V0xQU3RIbzN1ZlRMa2piREtMNjYyU3J5MWd5eTNaRzI0KzVQRzVWSGdqRWEy?=
 =?utf-8?B?NW92NlhPSWFNNUxvRkcyL2tQTlBMa1VwZW51US9hQlUwU2gvZkhIMUUyM2VK?=
 =?utf-8?B?TFFoZksvbW9rUi9zYTdJVE9Sa3gweWZycVFPZWRFamxmUDU3UDJYTElqZFNV?=
 =?utf-8?B?MDNsUlF5dEo5Z2piVldGNDJiR2tpdDZ2Z280dUJMSCtBNHcrQUx1RVUyUUtG?=
 =?utf-8?B?Smthejd3R0pvTVVSZ3ZramdGM3VGR0dUdVNrWEI2SzFEMVNoRGxZWXN5SlpG?=
 =?utf-8?B?bmNsaXlkaHY4U00xdlJVQjlnelBMWEdiMEpMRE1OdmJ5TXliZ3VTdGdFSnVF?=
 =?utf-8?B?RmptdTZUOXROcWlGS1EzV0dpdDlvb3BkVWpPV3REdlR3eVR4UzZ5VEdkZ0cw?=
 =?utf-8?B?MHJ4M3lBZnRWdnFJVExtbUtieVNMZElaZWNGeXpsemQyUzVmdWpBUk81TWJ0?=
 =?utf-8?B?c3dobHo5WmUyemRFR3VMOUc4UGxhd3ZOc2pzWFVyVEhVRTVrd3ZBZU9hSURX?=
 =?utf-8?B?Y0p4ejdDeGliOERvcWpuNkNHMWMxRmVZYm9laTMzVmlLdkt2ZW92YWttckRL?=
 =?utf-8?B?eERDNmlheDdZU3A3NEk2aFNsTUNRMytRdWRpSU1ReXhoV2YwaHVoaHN1czlW?=
 =?utf-8?B?djhOcTk3WkRRZmEzN2xvNjFtejJqVSt3NVFMMXNqSEpidDJXTlY5cTJKS3dt?=
 =?utf-8?B?Nkc0NU5jc1pGdjZkSGp2NnhiTzRhMjVZaHZPYi9VMU5WRDAwdTVvK29Cam1s?=
 =?utf-8?B?VWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b2f34c4a-81c9-48d7-d0a3-08ddce8c2718
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2025 10:39:10.4158 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mS+KKPBfwE0z/qjyAbkmHY3aVC65hJlaObfHpawHdCClcP6RfrWSKYZ7aWpiCJGhL7NLNPf0DJNL8Z+QcjtAj7etWWrSoTTSKybHga2Ea8c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH8PR11MB9457
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

Hi Krzysztof

On Tue Jul 29, 2025 at 10:17 AM UTC, Krzysztof Karas wrote:
> Currently this function's error code is stored in err variable,
> which, if a i915_request is present, will be immediately
Just a small nit, I think 'an i915_request' is the right form.

Reviewed-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>

--=20
Best regards,
Sebastian

