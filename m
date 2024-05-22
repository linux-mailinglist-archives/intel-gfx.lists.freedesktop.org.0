Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C54EA8CC13A
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2024 14:26:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB20510ECD5;
	Wed, 22 May 2024 12:26:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IMsjENlr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E15510ECD5;
 Wed, 22 May 2024 12:26:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716380804; x=1747916804;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=qIpkTvvnHPCtsA+hXr9Q7juoknO/I9Cx8ZPIJFAzdPM=;
 b=IMsjENlrshltp5NU56MYWwB2u63kMGBgJm9YEqvGPi83RHEiQiNj3LyD
 XB1ZTC2bgMPJpwYgR8E/oUlHxjg4yLV5u38V824ydF0K6hv65M+buW4tn
 KjfsnteGgQDT+/Q2BQSWqvHNk0bxnuie+J+nGoFgMma/i3ORR8xXJ4MTS
 b/nKpcJSZ1AHhptDR59vg97FdV2HTV60+l42Ex+4jigsCm9cN6WkmYNSj
 94AFtZG7x6OHgfCgaXqyizLSyE5EJeVywzS7PPeyjWUuZ3bpHTjhZNgvz
 Xa9+CUYKscukIMWNG4ZrQn3uxfrUu29YeOxh+I73retlpsGRPvI3JHYes w==;
X-CSE-ConnectionGUID: ZuHkHZTJRQSw2Q2c4SpJKg==
X-CSE-MsgGUID: TEj8QpWDQ4ibdyDk4ChiOw==
X-IronPort-AV: E=McAfee;i="6600,9927,11079"; a="12411013"
X-IronPort-AV: E=Sophos;i="6.08,179,1712646000"; d="scan'208";a="12411013"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 05:26:43 -0700
X-CSE-ConnectionGUID: qM9QXIfoQWqrSaFaSCRsJQ==
X-CSE-MsgGUID: KhMpa7J+QlCL/g9SuHI/Fg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,179,1712646000"; d="scan'208";a="64497824"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 May 2024 05:26:43 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 22 May 2024 05:26:42 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 22 May 2024 05:26:42 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 22 May 2024 05:26:42 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 22 May 2024 05:26:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B8UY/CdFFM5//S5Ta8LxVjOSyk9jl/K8xn+xjBKYhhuZLI5OKWEcyN0Yk76t9aKj7MR1TRjDEFfHtw7Ux9wWtM3C82HIJW90HwLV2NK11HYCoLqZ9O9TF4NwMdDvaNJgg9K9NB7SLkUapmuXmX0OjPX0/8KFo+uC5bREnWlmjPBDp2vnyyz/GQ+nCxXFQH4sE2NhJsqnO5r68/U/yjIXBiHxe2oNj0Xg09h8n52gLQWQcIdJxOshlHl3cIUq7HSDnfriyYoXKS9XVytWaDNMmqDZBD/4J+XEfII5tWHyVhmvaKGCqZJX1RZmjCZ07jKDOeqVDOqlqRkeFThH3E1ErQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gtYzPaRuQe0us+jWE3wNA6ge+E0ZeHSQaxJUjvc5FM8=;
 b=HRg6h9ep1wkTNQ79C6R5B34/I+kJiP5WWIAgfHGx0QWmwxGjdIZZZ19ygZ5Brz+Y4jjecEDRlkRu6C/J1lC/oKOzGJtesVl25DIJsB321k6eNd6Q6ixroxjGCjFq+LnJ6fyshg9y361fRFa5Hdu/dZ6V1B1LIlj0OZDTlwXUmgEUjyYQnQsLCene5RP/ki2x9K4yRW6U19fIoZ4QzX5vHD06HpwFVzHNmNkzG+aK0Vk76nlCDo1mJYmjnDdt844I5JfjvVcyTRfoJXmk5d488nG2fa/PxHV3yldYiGXlky3o3q/tcTEOoTyFUcR3KOFxxUl3x8bXB7gOIGseGqH6Pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA0PR11MB8419.namprd11.prod.outlook.com (2603:10b6:208:48b::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.19; Wed, 22 May
 2024 12:26:40 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.7611.016; Wed, 22 May 2024
 12:26:40 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <IA1PR11MB6266FB8BDE79B6F054E8DC2FE2E22@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20240510140532.112352-2-gustavo.sousa@intel.com>
 <IA1PR11MB6266FB8BDE79B6F054E8DC2FE2E22@IA1PR11MB6266.namprd11.prod.outlook.com>
Subject: RE: [PATCH] drm/i915/bmg: Load DMC
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Wed, 22 May 2024 09:26:34 -0300
Message-ID: <171638079474.10417.16391787260985047685@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR11CA0039.namprd11.prod.outlook.com
 (2603:10b6:a03:80::16) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA0PR11MB8419:EE_
X-MS-Office365-Filtering-Correlation-Id: a1cf883d-8f97-4a27-6b1f-08dc7a5a6e70
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?L0JFNVF2Smk0SG5xRUJuUUs0bm1DS3VRL3ZhY1E2a2FkLzMyM0tLWGoxRDFT?=
 =?utf-8?B?UjVjQUZZUDRHd2pSVklmemY1ZUtDNHREYVVCaFVVZGt5VTNTdGN0K01yZzBY?=
 =?utf-8?B?cEY0Z1hqOEptRmpiWTBaVk5XdnluY1lxSXdpeVhnRUtWZ2s5K0Fhc1c1K3Rw?=
 =?utf-8?B?b2l1V2p6aUlkbUd6aXdaOVdGMzQvVUg3UFlKZCt4NFhMaC9YRHVTUWNhSnll?=
 =?utf-8?B?OEVDMXNCVUw5b3E4SlI1VFg1dzNDaHo0dDd5N1hEdGY4amwxYnpQT2ZUOWVw?=
 =?utf-8?B?MWc2SVdLMnUvN0t1OEFDYndwMWErRjdEalFWaHhCdXVmUHpYeU5oTXRqNi9s?=
 =?utf-8?B?aGd1V05GbTdLRWpGSCtCZ3l6UTVMUHc1NXBKSUc3dmtXTzJBb0U5OCtONjRT?=
 =?utf-8?B?cE54QkdGNStpb2pyYWJEUEN3ejVGTWdERFl5V0ZEbWpYS2R5OWNXQ3N0Si9C?=
 =?utf-8?B?WUErcm0wYk0yTzU1YzJrMXJXT3BHNVlwQlRQQUVHK3NHWnlHVDRDQUJMSUd2?=
 =?utf-8?B?bFQ0WThTb3ZZQ1Q2NGNTbnBaV0xsTnMxS1RTWWw1L0RNVXZQUkxDQ2xSNmtH?=
 =?utf-8?B?OTNvTVN0Q3BrQU5ZVWdRcnBOemJwVGdxc2ZHOWlBL1Z1d0V4Y0hUTlYvc1NC?=
 =?utf-8?B?aTI3YXFQb1hXd2VZZkJpQlNOQlY5U3NYOHVBSDFwZ3lIUDZOblJTV1NqbEox?=
 =?utf-8?B?dTlsRWFSUUdwUlBzZFhIZCt2TG9IK1dTZU1WSEtTNjhNZDF2aFhtNkZPWlZ2?=
 =?utf-8?B?SDBKZExEV0M4VUtLUmlFMzI5K2IwZkZ3WTNQbEVZaE45ejRVaUpEaXdMMnMw?=
 =?utf-8?B?WUZaQ0F3RTVyQ1J3cnp0d01Teng5cEdSVzVYMWhwbktmZGllZ0gzYjlGdita?=
 =?utf-8?B?RUhOR1lqU2xuUkZoYlNYdmJuaDlnWkI0QndLUFBIMThuYnhnTFp5a0hyNUJk?=
 =?utf-8?B?OTZsWUlKUHFZWVFQTVQ0MG5wbU1sN3BNYlBJK0RENzl3V1RiZ3JRZEVESXhw?=
 =?utf-8?B?dWN3R3BsWmhuNzJ3cktaLzVUL1YzbFNWNVpaLzRLL01EN1BmWDV1cXJmQXZw?=
 =?utf-8?B?NmtSTWcyYzlPZ1MrOGcxVDNaNloyV054TzV4bHMzQUZXVCs0eUd6WExWdzZL?=
 =?utf-8?B?N2l6NGRjL3JXVFA1cDcxT0N1RS9uODg0L1IzUWNiYlVKVDJ6b0RvcUlaUzdT?=
 =?utf-8?B?aVFRSlJTUnRmMzdrVTJiWlVKTXRucEZUNmNJNmljYy9sdHc5dTV5NTh5Ry9i?=
 =?utf-8?B?UUFIbktzOVQwVlRZQXpMYmdkY29oOVJiNUdZcGc2Z0ZKNWh3a3ZpZmZmZC9G?=
 =?utf-8?B?WkFHa1FMKzRvbDNLOGVvNGdXcUs4SndnUzAvSmgwSDc3ODFRZGNvUnBjSVJ1?=
 =?utf-8?B?T0dnSlI3MGV1TGRNQ0Z6ZDJYa2VTdkdpdk5jVFFYaHFXWVdjOVpncTRkemo4?=
 =?utf-8?B?K3J6dVc4RXNJaUowT2Z0bUVNYldOSFM3MFFRRUhPak5XcnFYTXl5UUJkQXFk?=
 =?utf-8?B?aks3bW9uSHp0QVd2TDlTZ2pRY1YxUnBRQ2lBcjQveXBwQWVhaXY4MlFwblV2?=
 =?utf-8?B?WHh2bG44NFdNYk54bjlvSXp6MWE5UkRkamNhbWpmMmExSmxMbUJqVGUxNURV?=
 =?utf-8?B?ckd6emE2ZSt5YTg4emlyaGZ0WEoraFBlSUFrRVVOR2J2M2ljZTBKSUtKYXZS?=
 =?utf-8?B?Lzl3Z0dSZHA3WjNuS1pzd2ZrMGZNQkVubzFIQXc4OVErcTZKNjU4V1l3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QlNpT1h2b1M0NmJWWmw3UlZxRUcvNStCbjFoYWJEUXJsMmUxOWVudEtCK0o2?=
 =?utf-8?B?UmhIK3RBTFpUZXgwMlJ3UUE3bytTSHM3TU5QYjA2M3NndW05TExNTWxycVJD?=
 =?utf-8?B?bXJldmpWS3hmelcvWWUvbjVrYWFOWHZhQnp6SzZwZ1FMWUdhVm4zRmVzTHFt?=
 =?utf-8?B?RUxPYVkreDA2dVpOajNBVXlrRVF2cGxmUmVFUEZpVkZraXFmMVltUjZSNmtx?=
 =?utf-8?B?dm5wU1c4alJDUlRPWWZ4Wk5qcTQxZ1Z4Ly9sNkZ4MUk4cGVlQnBHeWhrVGRZ?=
 =?utf-8?B?QUYveXlRb3hKMUQ3T01OeDZValRzeTBYV1VLNEtrMnJmTHQ4NEhBNzhScVRo?=
 =?utf-8?B?bWVTOWVBWEptNFlsY2loT0RIOFlZa2ZUcWRiTXFsakx4WlVzWUpyS0ZtYXNK?=
 =?utf-8?B?a3AvWnJPbE5wdWNtM2FzUlhyWnE3bkczT1l0YUNSVWx6RktZaEhGMFBTNE5Y?=
 =?utf-8?B?OHQ2TGZBUVY4cjRCZnNSZE93SGJPZFRwU1VkMlB0R0NQdjhxdUJhMERYRytO?=
 =?utf-8?B?aUtoQStGVTl0bWZOK1lLNzRLdWk2TTR3NDFoMmszSm1wVlNvNkV2Wk1WTklj?=
 =?utf-8?B?bUtoa1FKMXQ3OTZPK21maW5MWFZLVVVneGlIZkQrZnIrMjRiR2tHbTM4djE3?=
 =?utf-8?B?VTZ6a2FIRmIxWk1JaWIwOCthOVEwZnlFcmpXdE1QcU9qUk5YdG4rZzJ2eE1K?=
 =?utf-8?B?S244SnN5S1FSQU9ORkdvQk51aHluVUtpckNsZHl4UitmcHFtbXhBMnZoY2Nu?=
 =?utf-8?B?RG94WU9nRThjZ1ZDT2NLRXRQUEFLejlCcXl0NjZVUGpnaThzUyswa24yeTlO?=
 =?utf-8?B?bVdlbnpGbTJtdWdmTnh2TExjNm93dzVFVUc5REc4Qjg2eklSeGZIbDg0MDVr?=
 =?utf-8?B?T0UyMm1iQkVvaTYxTjhUT3UrK2sxUWlyb1hxZWtyUytwcVFDZTlNMlhEUzdk?=
 =?utf-8?B?SzhMREVxK2hhU3picWRKOXRCeUJjNnd0dUo0Smd2MFgwby9MbFh1WTZWQ252?=
 =?utf-8?B?OTNwUUZtSWJ2TERmQ0UrbndkWUJLYjhzbkxYS1plbUFMclp4dU4yZzlPa3Vq?=
 =?utf-8?B?c1JzblpjTSs3RUR0dnJPdlNPT2ZOQm5kb2t5TFpwN2wrR2M5bmZQaHNyU1ZT?=
 =?utf-8?B?TXdxa1R2b0dNZi9pVVlZdzhwREI0UEpLdzBTa0Eya2pSMXRPcVZacDhISWww?=
 =?utf-8?B?U3BvYmgyWCtnNmNBaE4xaDZaUWhsUTNIMHQwbEJQa1NhaTRvV25mYTdpUFlw?=
 =?utf-8?B?b1RIdVIzODNDczhkNkJuOTlucFZBN2dCb0VpUUxwdi81UzlseTBCQTd5NW1l?=
 =?utf-8?B?WGpzUHA4NmxhR2RoS0FKcVNwWm01WDdVbEMwWTBTZGRQNFJhc2hLbzY4aGFI?=
 =?utf-8?B?RXlleWYwOGZEM2dzZkJ5bG1Pa0o4L0dWdEd1WHdKOEFSL3VEYW83ZndqVDQv?=
 =?utf-8?B?dWNWdVBkbkhLVnNmaEMvMzdVNU56a2ZGVDRUcFErb2VvdW50YkZJV292aEZM?=
 =?utf-8?B?Y0diWk1Mc0UyTWE2V1RCRVg2ck5YaUhpb29qRmlkTDNMV0VtQVZGOUFmVzQv?=
 =?utf-8?B?L3k2WnE2Mk1pT05QM3VUZDFmam1YN3d2c3VDZEQ0Zms3RnB6Z0hhUXl5MWlB?=
 =?utf-8?B?ZUorbTBRU0VsblVBWVlWODV2aXM0OUhVSWZBVStQNk5XNlNBbnZqNTV1WFo5?=
 =?utf-8?B?OGpmN0xjTEhLUUdud0xCcHIrOUk3VjAvMWgzZlQyVk9hUFhzU1lmNUN5N2l6?=
 =?utf-8?B?eTVVQ1BBdENIaDlVUVF5a1FpU3RLcUQvaDZpQVhrbHdGbjltN0JhOTExT095?=
 =?utf-8?B?ejdVa2pNdzkrNzZXekk2YS83N2tiYldYSXRtdDVmL1dJR1RIelRDRklWdmhC?=
 =?utf-8?B?eWtJbXlEMVRhcWd0eFRJL3hGaVFZVUZSbXBKV0NJQllnKzVVOGpCdEhFMU1J?=
 =?utf-8?B?WE94QVlsTU5ZUHFHMzBGc3lXdVc1SXA2ZHJJRWpxN2lvaWJlbkFTb0Nsbnh6?=
 =?utf-8?B?SE9jMTBjc3JvUWUxTEZzU3BmbzdyNExIUXVVOXlFaVBSZ2V3Wjh0bEFyVFRP?=
 =?utf-8?B?VUE1UUkrQ2Z3b1lpYTl3VkJpb3lpN1dhOWMzT0NLYWVuZ2d3Z1RCZGpIWHBM?=
 =?utf-8?B?WllPLzFDVGZjNHppSVdEZC9VZjF6emZjZWU3U05PS1A5dnRIR1hOem5GUzgw?=
 =?utf-8?B?K2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a1cf883d-8f97-4a27-6b1f-08dc7a5a6e70
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2024 12:26:39.9976 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qHkzAXtsVchP3mH/pxBnY3b82sQpTFpcg2zfh2JdhueXAeluDBX5t2dNzEPZkrviVIsDYz7IgwSJT6BnVRABtg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8419
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

Quoting Bhadane, Dnyaneshwar (2024-05-13 08:21:31-03:00)
>
>
>> -----Original Message-----
>> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of
>> Gustavo Sousa
>> Sent: Friday, May 10, 2024 7:36 PM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Subject: [PATCH] drm/i915/bmg: Load DMC
>>=20
>> Load Battlemage's DMC. We re-use XELPDP_DMC_MAX_FW_SIZE since BMG's
>> display is a derivative of Xe_LPD+ and has the same MMIO offset limits.
>>=20
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>
>Some CI skips/failures are in the CI result and those are not related to t=
his change.
>LGTM.=20
>Reviewed-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

Yeah, CI failures are unrelated to this patch.

Pushed to drm-intel-next. Thanks for the review.

--
Gustavo Sousa

>
>>  drivers/gpu/drm/i915/display/intel_dmc.c | 6 ++++++
>>  1 file changed, 6 insertions(+)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
>> b/drivers/gpu/drm/i915/display/intel_dmc.c
>> index cbd2ac5671b1..63fccdda56c0 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>> @@ -115,6 +115,9 @@ static bool dmc_firmware_param_disabled(struct
>> drm_i915_private *i915)
>>  #define XE2LPD_DMC_PATH                        DMC_PATH(xe2lpd)
>>  MODULE_FIRMWARE(XE2LPD_DMC_PATH);
>>=20
>> +#define BMG_DMC_PATH                        DMC_PATH(bmg)
>> +MODULE_FIRMWARE(BMG_DMC_PATH);
>> +
>>  #define MTL_DMC_PATH                        DMC_PATH(mtl)
>>  MODULE_FIRMWARE(MTL_DMC_PATH);
>>=20
>> @@ -166,6 +169,9 @@ static const char *dmc_firmware_default(struct
>> drm_i915_private *i915, u32 *size
>>          if (DISPLAY_VER_FULL(i915) =3D=3D IP_VER(20, 0)) {
>>                  fw_path =3D XE2LPD_DMC_PATH;
>>                  max_fw_size =3D XE2LPD_DMC_MAX_FW_SIZE;
>> +        } else if (DISPLAY_VER_FULL(i915) =3D=3D IP_VER(14, 1)) {
>> +                fw_path =3D BMG_DMC_PATH;
>> +                max_fw_size =3D XELPDP_DMC_MAX_FW_SIZE;
>>          } else if (DISPLAY_VER_FULL(i915) =3D=3D IP_VER(14, 0)) {
>>                  fw_path =3D MTL_DMC_PATH;
>>                  max_fw_size =3D XELPDP_DMC_MAX_FW_SIZE;
>> --
>> 2.45.0
>
