Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F4B19A9F3A
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 11:53:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2018810E649;
	Tue, 22 Oct 2024 09:53:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XOQ5iQqu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93CAE10E661
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2024 09:53:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729590830; x=1761126830;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gazMqRf5dm0eRsoFh8Q3gXQcuEU3ZqEaRA5hJlEwtwE=;
 b=XOQ5iQquvFwfm5JMXOvTDT2qSDgc2TnvhXrcTol0f6oR77RwWFHL0iV5
 2S2nvpIbuhKRfEv/BCd4ISSOQ/Kz5pUfwaDc7XbQrL/2WIu4wKCNxkDJR
 vNNpp/UTD8FHgVm/Afr0EiTOovPPxUM8GlKst/CRDD7tBATUVO7dxFyi5
 HeFVf2Zg4cGxa3pTQ+Lx8DN8UQgVF92l+nV0px0rOxo0FGZ6ogzS3s/a2
 DAdbiIlBE3HM7TooecVd3j9ZaN5DywdeYFv5zw70U3kfwgy/b3cIcgFIx
 qYYV+UNpJeKFcBO+XM+0JnBm8uxPlJ84M8zThhCnFI77TIAuiLvJFLp9q g==;
X-CSE-ConnectionGUID: XS3xGL73SBmx0UDr3E8BWQ==
X-CSE-MsgGUID: CL9ddKwRTASBOwg3jAK0bQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="28571173"
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="28571173"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 02:53:50 -0700
X-CSE-ConnectionGUID: ygyuq1cmRr2iFYfsBNrZCQ==
X-CSE-MsgGUID: FJJBPgafSyaSvvS/cfLjAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="103115108"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Oct 2024 02:53:50 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 02:53:48 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 22 Oct 2024 02:53:48 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 22 Oct 2024 02:53:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Vmn144u2hk3l/sozXZ6UUlKkd3MW5XaopxygFDkHsEaL1OYjP2Nl5ppmp6miBRtNrZXOHDcDOw/7PKzubuUhXXcQb0Ej9AkeGLxGxbHyQBxm6mZoi7vNWqPeDrcZNf6pJrmmHYJVBzcxbaJu3WZVXfDcxJCnuzX1q/+3dEs9CXXAHULE4ZqdC0S9bUPzFw6AwBzrG4+yJzTran1T4Y+tazYS761qnaeZvgn+tH9DdrEwekEc5cFrpkR2PDGalmftrdynKMmdZm1/WtQ+CLxp47L/sdospln4UvCGwm3jFKoyuJezpB0/7QBZrJTfiNUSlW7DuYeIsk5m7dXP41NhfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C4vVQEzE+wAmvRzWJm68YBZD89ddTztTLxnf9dDVa3M=;
 b=ZduKVEM+e0ukglvEPsm40h18HRIhWCnjdhMuUnWQ85pelmaX0Wq3AwtPENRMJzH5PLpf7TYCWKJVeHBjLGTx5/JxlMsVTHpXmc6iVmIpiq5fTUKsPMoY5fPCu/fOoczi25zRalBHgn6Ot1Qm07JhHsXF8ogs8ixuZ8YspLmUHBQIQvqJCD5nIQv2kZa4mQUFtUqAL9RSAhvhGwjdou7kbAp1TYqiiws42m4pQeST50p7OmRgiuOcANNFFx1x+kux94uInYCsTTzNcjHBTKCI39D11nbK/v+jdoTog/4q0ZB2eNBEgUr6NDPBD6+oJYfpEnaDOJvg2AuLQOjEriO3/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB7958.namprd11.prod.outlook.com (2603:10b6:8:f9::19) by
 SA2PR11MB5068.namprd11.prod.outlook.com (2603:10b6:806:116::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.27; Tue, 22 Oct
 2024 09:53:46 +0000
Received: from DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::a255:8030:603f:7245]) by DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::a255:8030:603f:7245%4]) with mapi id 15.20.8069.027; Tue, 22 Oct 2024
 09:53:45 +0000
Message-ID: <06c7fee7-49e4-4238-a7bd-50f787677bd7@intel.com>
Date: Tue, 22 Oct 2024 15:23:36 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] drm/i915/wa: Introduce intel_wa_cpu.c for CPU
 specific workarounds
To: Raag Jadav <raag.jadav@intel.com>
CC: <jani.nikula@linux.intel.com>, <joonas.lahtinen@linux.intel.com>,
 <rodrigo.vivi@intel.com>, <matthew.d.roper@intel.com>,
 <andi.shyti@linux.intel.com>, <intel-gfx@lists.freedesktop.org>,
 <anshuman.gupta@intel.com>, <badal.nilawar@intel.com>
References: <20241011103250.1035316-1-raag.jadav@intel.com>
 <20241011103250.1035316-4-raag.jadav@intel.com>
 <e5b7b830-2c7b-4e64-bf5f-9fa06a61a78b@intel.com>
 <Zw-A2Ej-5FWaWukj@black.fi.intel.com>
Content-Language: en-US
From: Riana Tauro <riana.tauro@intel.com>
In-Reply-To: <Zw-A2Ej-5FWaWukj@black.fi.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0112.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:11d::15) To DS0PR11MB7958.namprd11.prod.outlook.com
 (2603:10b6:8:f9::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7958:EE_|SA2PR11MB5068:EE_
X-MS-Office365-Filtering-Correlation-Id: 55447968-651d-4728-d47f-08dcf27f6b3e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?T0ozcWtaN3ZjUHdGMjFYaVFlUFN4OXk3OTlKNW8wU1lXUndzeUdMWlNxb0wz?=
 =?utf-8?B?cytEUDB4elFuU3pwTlRNa1NjRGdrV2wyOWtWUDBPamp4UFJ4RnJWRkJ3RW45?=
 =?utf-8?B?Z1NGN0JIZjRoWDdGcmdPQ1dwVTErOFVJRWZCSjNuR0tvdlE2UDNlbGVJalhU?=
 =?utf-8?B?WXViUFpCMDJMZmgxNGk0OXBCcmdJNi9RSlpKc25aV25yTGdRdXZ6WHN6UlI5?=
 =?utf-8?B?bWlHSlk1VjNyK2lVekw5MUI3cm1wbDFManBEeFcxeEZmWnpUQllOeVdrUlpN?=
 =?utf-8?B?azVSL05QOWtxanJLTGd3UmtkV3pqSHAwck5lUEl3YzEwc0ZvK3FYRDRpZEJy?=
 =?utf-8?B?SHg5eXBPbVA2TlhTbVpSTnhzYkRhQ3pIcS9YTU9EYjV5ck41blZGSzUrTFo4?=
 =?utf-8?B?SG9zR2gvWVh1bkxPbmF5anNnN1dVLzh6MEdBSkFiVFZ4UC8vbVR5U0grNkVI?=
 =?utf-8?B?SHNlTkhsSTl3UGRyU3JmUlhXc0VQNFlvVnhrNzRrUk5LS2JjZDd2YTVIY29z?=
 =?utf-8?B?KzdHQjZNTnArU2gzMUl2bXlKTDdsZnpubThhS0pMc3V4ekhGOWUySnczeW1I?=
 =?utf-8?B?T2ZaR1UvTEdFTUNpWFJUZ3NLdFQ1eC9SY1g3cjZnbGVGcnQraktnTm8vS0tD?=
 =?utf-8?B?VDJqOUVRMDM0dGo0ckxVcnlFUjlZQ1JUTXUwbzZYL2xDNHhmMk8xZXljemV3?=
 =?utf-8?B?aFRmS0JVejVVS3h4Yis1Ty81Qm50UVovVTd5UVd0OHJqcnorQmpjUGZ3Ulo2?=
 =?utf-8?B?bS9aQmJGTkVjaVFtZXhCOHFZenlRd3VDZi91L0pVdTlKV01WaGpQWFJTNmc0?=
 =?utf-8?B?YkFkY3dpMUMwbEtVMmVZbms5VXVKb2JZbGYycFh2VXRiUHZaNFFFMWcyT0Y3?=
 =?utf-8?B?dHhnUDdUV0VlZ1dVZW91cy9pMnJTYTRzS2kycHpqM0QveE9LclNDM2E5azFC?=
 =?utf-8?B?V2Z1d2hWMitzMFVXT21BdVdBMEo3WDBKaFpnVXFOUGdqTlh1eFdRWkl2WDhO?=
 =?utf-8?B?U1dHTHMydmltWmxkZVF1VDZteFd5R095YjZocnpTMXo2Zkt2WGZ2V1ZDeXFm?=
 =?utf-8?B?SU1Gb01oZ1l5WitiaHEzWURUd0RoaXl1NEprNm52cnM5YXVEMWhPek45dTB6?=
 =?utf-8?B?YXh5bTBkbVd1SERwMzIyUHRvcHlqOURWSDZEMTVXMld4L1dueURjTFA5aGZC?=
 =?utf-8?B?ZGZyNXM4VnhHakEweFdFSlRLeGZLNXM3eDlDWE9hRldEQ1ZGanZuNnd1TTZa?=
 =?utf-8?B?by9Ldk5mRE5kL2d0VlJJVnF4SGFMVkFrbFdNWDdKcC9MNWlaQ0RYbEdzSU8v?=
 =?utf-8?B?Q1NFdkloTFQ3T2NTQWZjcVArNUxScDdKTms4R3hLdEwwekd0MmpEU3pkMy9D?=
 =?utf-8?B?cmNGUTM0OTI0eTlKRUF2ZERka0tkWUZOWEVMWjZtYk1QUWxETk43S2JCRXdB?=
 =?utf-8?B?TXo3d0sza3FWNHphN0UyYVRMbUxCc250Q0tEUmVQUlc1K01sRExQZExJL0ZQ?=
 =?utf-8?B?bS9JZHRwQ25ITUEyMEs3ZGpJb1M4SW9ZVkVEcUVCOUNQd3g4aG12WStNRGxW?=
 =?utf-8?B?cEpKUmcrMmpNNlZkWUR3eWtMc2hMLzN3UmpKUW02RDBKOTh6Qko4ZmNMZnlN?=
 =?utf-8?B?dHVlMHVtU2lJci9YUXd4WnhXUndWak13cEVtK09JbFZyZ29DVEpzdFE1Y3ZT?=
 =?utf-8?B?V2tyK3ZtcllFYms1cndIOGpTeG5DY2FoV2huQnU0Qmd0ZHlUS0U4cFlsZFJQ?=
 =?utf-8?Q?rqtlUFZ2WzY50RejFQiloPav3w++K/Id0ZU0MBM?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7958.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VVVjVHpmQzBuazNtZTZYT2x1U25SQ2MzTFBLQ1grSDNkbXhtV2tNZzRHTE41?=
 =?utf-8?B?SXhNMkJGNzlLOGI4d3JGR1g2bmxGcFUxVlhXckFlekJ3TUlRR1JSNzBPMXp2?=
 =?utf-8?B?NzlGaXdCRGUvY1VXZmwrV2l4TVREU0pDQ0pVME9IWmpXYmFHWUN0R1VTbnJ0?=
 =?utf-8?B?NlgzTzlxMGdCYkJqMmxPWU9CYmNjU2F6ZjV3Mkk3YisxNHRYWkRQelZYV3FK?=
 =?utf-8?B?WXpOTWc4a2ZvbVBCUFl4Y0NDM0wwNlE1alFtOVNXaUFKZUkycVRxVEdRRTJJ?=
 =?utf-8?B?T3N0VERnRllKNlVZTkE2NStzQjNMek5lb0NWL0FKWTBPVVorc1ovMHJ3QVVo?=
 =?utf-8?B?eERzamZpdTcwdnBWNDFkY1IvR3ZHYi8zYjZvVG1MeDlDQUtHczhMeStiaklQ?=
 =?utf-8?B?S3d4Y2owRXczRXphWXBrOTJCUi96cytSOUtHS2FZSlI1d2tPeWFRbmNaSVBW?=
 =?utf-8?B?NTNrb1phWHQrRGR3VEtneGtJeitXMkQ3S0xoRVR1RVREbjFyWWh2Z05JYStI?=
 =?utf-8?B?Nzl6cE1oTXFjdWJIcTNRbkd2Z2tYVlU0WVlhUFZuaFBEWHBSRGNRRy96OHlS?=
 =?utf-8?B?TlMvNnB3S1BUU2ZJTnU5WWMxd1d6Z0Y0Zk16MmVpd1pSVkdBMXFkeGFUbzJN?=
 =?utf-8?B?VjBYaGlEN29wb3doblNoYjQzUHBuY3lqeHBUNjBwOXMyL0VWZ2dhWnRDZ2kx?=
 =?utf-8?B?MldXRzF5Mk1vMTFLRlB0V3U1WHN1UXoyT1dpZllOSyt3bmo5b3RlbXdPYktT?=
 =?utf-8?B?bHNkRWJFcTNKc3I2M0lNZGlFOGpvempqNGlUSDNORmREWHRycTZteEx2bE01?=
 =?utf-8?B?TmFaVVZZWHZlbjFQbCs0K09mQWRZTmM2UlBGR2RjYVhzdFA0N1ZGNmkxbmRV?=
 =?utf-8?B?ZVVRbjBTcGFWNTYwTTN2dVM0MmFoVjVPdjlDR2t1SjlpOExveGszVnd1QlRN?=
 =?utf-8?B?WXFKWXdjbFhiY2VqQ25zT1R2aHd5b1ZZanRWTHlhQ3ZFT2hhRFNDdk1pc1oz?=
 =?utf-8?B?TTYxdUFIU1V3cGlXaFFmeDhBenBOT1VLN0FzbktkTG9sSlViQjhRb3JYdjEw?=
 =?utf-8?B?cnVyTTk2OGQwOFR1bkhFcG5vOWlpd2c1S3JiWUZZTk10KytsdzJLSUJycnVt?=
 =?utf-8?B?RVkrN2cwOFpSMDFnMWRhZ0dpWWdMWHRnTG1IaWtrcFBpNi9yQ0srVWhZcVJo?=
 =?utf-8?B?SkZEb1EwSHZsMXNTL3Nnb01jRVkrYUs5MmtscUU4WktnaEFYZlNXdXp1aW1h?=
 =?utf-8?B?K0JCaEQ2a2ZVWGM1WThPWXBjMFU2NlA1UXBPMnM4aFZqUEZPaklQSE9scHdm?=
 =?utf-8?B?THFxdzduMFlnRUJuYS9CLytFYkYxdHJSWk5hdHlYMkhJczFoQitFVjFjb3FS?=
 =?utf-8?B?UFE2T1BqRksvRzFVaW9IQk9haWREcUpXbTViMGpCTGRJYzU2Y0JWZG1TUVJE?=
 =?utf-8?B?djRyeXdTeXhkdzRhdHRsTVdYZ2JIUVpkdFlyRFpiVE9PT2dTS1I3RGsvL0hQ?=
 =?utf-8?B?TUFJQkNZVUk1TEpweFlRWlFqNVQrcUlsTGd6VklOVlNjYXlGTHZPeW9BR1RN?=
 =?utf-8?B?MjMrQzRLZnAwTDYwQ0ZKaFFYb2paN2FRK3NIelpGRFlvdE9UanpSeUViRDVD?=
 =?utf-8?B?L2JLZ1h4TkVOYkJPTkt4Nkl4dUhBNWRJZmpsdmhUNnByNkw4M1lYWUhkaTd1?=
 =?utf-8?B?VktlR09QeklORmZuTXg5d0x2TXlMdENnTGlqdjF2QVdHZkdYTDhnMVNDeXRu?=
 =?utf-8?B?ajhZUWZ1VC9DNzhBakk3NmdLdER5enJ3TVFyOHBZRmtGL29LS0ZjM3JQeTBr?=
 =?utf-8?B?ZTdHbmtkZkZyYkl6T01GYkpxeWhzMkJrTlo0RlBVUWs4NUtIanFHcWpWalZs?=
 =?utf-8?B?U3ZmT2UvemtKWkoyZG1zbm1IYzNJN1J2RzdYdE9JZklpaEQ0bFQ2b1JhclY4?=
 =?utf-8?B?bFRReGhCZS9sTU1tSXZac3k0VHFwQ3BsK3JqOTZSNnZxdGZEMXd6WmNURzRw?=
 =?utf-8?B?VENCQytwRDFsSTBlTWNTczk5eXBIMEo0a0VYdXhxVDFLT0ZHMlhUZHIwUjQ2?=
 =?utf-8?B?VTQwOFRzTmx4RXB2b2Z2ZW5UNlFZZGw0bUd3b1VRV3l5QVIvRCtJbUViSjk1?=
 =?utf-8?Q?TN1WCDaYv5wp0L5j6jnAqaBlM?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 55447968-651d-4728-d47f-08dcf27f6b3e
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7958.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2024 09:53:45.7889 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +kJDrG7nj6J5hNSSIvhtL+b7+nU/mV6n0PrQ771vC1IQqOw+pUdsbCR1bntvEIBE05Lg+Zo22d1dmPgc1uuleg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5068
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


Hi Raag

On 10/16/2024 2:31 PM, Raag Jadav wrote:
> On Tue, Oct 15, 2024 at 03:56:10PM +0530, Riana Tauro wrote:
>> Hi Raag
>>
>> On 10/11/2024 4:02 PM, Raag Jadav wrote:
>>> Having similar naming convention in intel-family.h and intel_device_info.h
>>> results in redefinition of a few platforms. Define CPU IDs in its own file
>>> to avoid this.
>>>
>>> Signed-off-by: Raag Jadav <raag.jadav@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/Makefile               |  1 +
>>>    drivers/gpu/drm/i915/gt/intel_wa_cpu.c      | 34 +++++++++++++++++++++
>>>    drivers/gpu/drm/i915/gt/intel_workarounds.h |  2 ++
>>>    3 files changed, 37 insertions(+)
>>>    create mode 100644 drivers/gpu/drm/i915/gt/intel_wa_cpu.c
>>>
>>> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
>>> index c63fa2133ccb..1f9b503ab976 100644
>>> --- a/drivers/gpu/drm/i915/Makefile
>>> +++ b/drivers/gpu/drm/i915/Makefile
>>> @@ -121,6 +121,7 @@ gt-y += \
>>>    	gt/intel_timeline.o \
>>>    	gt/intel_tlb.o \
>>>    	gt/intel_wopcm.o \
>>> +	gt/intel_wa_cpu.o \
>> Why is this file under gt/ ? Doesn't seem to be gt specific
> 
> The idea is to couple it with intel_workarounds.c
This doesn't use any gt specific data. IMO should be out of gt, but upto you
> Any other place it'd rather be?
> 
>>>    	gt/intel_workarounds.o \
>>>    	gt/shmem_utils.o \
>>>    	gt/sysfs_engines.o
> 
> Raag
