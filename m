Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F709978D4
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 01:05:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82DE210E831;
	Wed,  9 Oct 2024 23:05:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V26h9Ui8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AA1D10E831;
 Wed,  9 Oct 2024 23:05:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728515135; x=1760051135;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=PaIKlIL0g8Jnc+eYBrgkYZ2J7lCx5yFBVvChJMSLVzk=;
 b=V26h9Ui8AGaHmShy3Q/mclTiUihPA+sOmh70GXpnlZvVVrhj15fnWmMJ
 SgUH/T9l1vcdGfmzxlW46KqPd6qf2T+aQKRnqYlrgVCoWJq0BQFPqRJhl
 fpzqArPsvGmrw6so1x6Tgar5XD8Kpwab2h2lrAuW5P3BxN4dMu5AkxAuy
 DRzoZQpX3SR6fMXhuhSvHR/v8EHtqTqAO85UMJliOCvdagfg2AmjlDKIc
 D+k8liz4c9S8ZYHjrlyjU1ic2KI/lny4HKtQoDfriyD22wsAzJwmHeApn
 PDoX6f3dRs7QdZdu3yymuGObM8vMqte5ojH5JY6PVCfTuvR6D7+utNRZb g==;
X-CSE-ConnectionGUID: NLDq0zxcSt6xcRn/q9t5YA==
X-CSE-MsgGUID: 160dhGaNTBmOJ38XzKFGZw==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="38492573"
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; d="scan'208";a="38492573"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 16:05:34 -0700
X-CSE-ConnectionGUID: C9ESh2LfTQSCbSwGIBL7dQ==
X-CSE-MsgGUID: UoTb0kxSSYWlAD9YV5efJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; d="scan'208";a="76395642"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2024 16:05:34 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 16:05:34 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 16:05:34 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 9 Oct 2024 16:05:34 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 9 Oct 2024 16:05:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uZ1PxszsQdyi7FBoK+b9nvfvtRaSQxpYlJ4Ov7HQiaetyduKI2Iey+CnZ0EoH/Gr2QoAi0ARf7QYwYH8gRbFSzACnCwzmuaG8qdGkLdM6f1pJa5BeLH3q4gRlJ612AQqB03LDt5EU2ucsBsAcxdT2DOX7zPpXse0DANKqgh4wMjIRtNHARSOgaPbUMlnDZ+4iAWs6FAVBQ/anrHxp5vrm0Yd2stCwU7jcekArIdR9GTFXqft8ugHftnl/eUWnacsYjh9Kw6cnkyddX1sbPDSdNWU/ZxJplUZIifuslYjzHjzkKExwLI993a2jfl5soMGv+ghXutKvVX2gqwrtu4kyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S17Y7QeJhQYJG7O7eP6kJj7R14qyhFXeW4J3Sivpcvg=;
 b=c87DrinIAxZYCiWNATHGiToc0IU1wPhLGQcUrin74GVzO/7KtcOjDgdUCG6CfX7osF7CJi2zw1XwCdnXhDso0ZvpPAotUNOhM3F6b0o7lejcF75AcxMgbc7oWRk/bE7JLbepGTr3ieuCPBs/6G1gHbjRlCCgFFFDJ+P1Ipr2nzXprEjTrnw5wj6MJyaVcx+uAThbpMu+C1+eiOzuocduuSm2FT2O2JAOcZDmqfB7XdJW0XUovAstobw1W9xrY0RzJi1jePGxjO1R94J+i56PWmXVJdqKZH4eJtOAZ02eQqtowGHHrLBIj/9wVTdUqhTVMxVeTn5pMWg7ONiEzW7U0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6738.namprd11.prod.outlook.com (2603:10b6:303:20c::13)
 by DM6PR11MB4738.namprd11.prod.outlook.com (2603:10b6:5:2a3::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.16; Wed, 9 Oct
 2024 23:05:30 +0000
Received: from MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::f174:29be:e20c:113f]) by MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::f174:29be:e20c:113f%4]) with mapi id 15.20.8026.020; Wed, 9 Oct 2024
 23:05:30 +0000
Date: Wed, 9 Oct 2024 16:05:24 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: <suraj.kandpal@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, Suraj
 Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH 10/10] drm/i915/xe3lpd: Add powerdown value of eDP over
 type c
Message-ID: <ZwcMNCKqy2OwTuyx@msatwood-mobl>
References: <20241008223741.82790-1-matthew.s.atwood@intel.com>
 <20241008223741.82790-11-matthew.s.atwood@intel.com>
 <87h69lbtf4.fsf@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <87h69lbtf4.fsf@intel.com>
X-ClientProxiedBy: MW4PR02CA0024.namprd02.prod.outlook.com
 (2603:10b6:303:16d::9) To MW4PR11MB6738.namprd11.prod.outlook.com
 (2603:10b6:303:20c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6738:EE_|DM6PR11MB4738:EE_
X-MS-Office365-Filtering-Correlation-Id: 020f7dc8-848a-45a6-1200-08dce8b6defd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZzByQk5zWmZzNXFNTVd5ZGl5aFZpMlhWd0hQbXhjbm5BSzJKQWFHbXJYMUNS?=
 =?utf-8?B?a0hkMTY0WTNrTk5oYjZlMEVSQjJLMHU1WnkvSkUwc0hXaGdOWldJWnlpcVZi?=
 =?utf-8?B?K2F2Q3UxdkQ1K0pOZlE0NGEwYXhjTTVxaHcvOHZmbEJrK0NiT3p2T0RQeG05?=
 =?utf-8?B?OXRDY2U3ZlFBdkFxNFRGWkhGaEFLK1Q4RloweTcxL0VoSjVlYlRtTmYxbThE?=
 =?utf-8?B?dXkxYU9WdVJ6dXd4UmhudnpBVHJVUm9qYkRHUXN1bUZ5Tlhaakx6S25LUi9G?=
 =?utf-8?B?d0RCMTdaQkJmV1YzVmRwSE1DeWRMb0I3SGxReXMyQk4vcFlZZHJtd04xb0dR?=
 =?utf-8?B?Q0I2TGRwL0ord3QrTUM0ak5pWmN0R0gvMHk4aTJoVFUreTN6d1phdW9BQlZY?=
 =?utf-8?B?VE9SaFVMbVNka1krbTJSb0lDLzg1R1g0eXNsbHp3Zit1bWVZWi8zZjNNQVpy?=
 =?utf-8?B?ZTh4aGpvdGJuTzgydWFmOEFZc0xsdVlkM1VFaFJSRDl1NXZ2blpSZTBqUmNP?=
 =?utf-8?B?dEVUSnEzVHlMYzFyRFdIZno3a29wc3RiWkEzUUwyREEvd0JUOURTVzJ0cklp?=
 =?utf-8?B?NXczZEZ1MUxuUjlFZjg4Yi9vWUtIVTlWeEh6Ri9tNzV0MEFEenVJWmJxQVFT?=
 =?utf-8?B?dXVWbEJVcld0RC9kUWxTSmw3RWFBekwvWGVIbkdTT0MrLzBVdThkb3BPaEdO?=
 =?utf-8?B?cFltZTU5d1grSjNtOThaR1kyV1crcjhuQWFxSHd3TXJ6MzVoeGgvYlM0ZUsw?=
 =?utf-8?B?TTV0c3ppUllYTXBVYkRnT0p2MmdjZUFDUkJZbFFnTDhMd1dHOTMvQnNqaTdw?=
 =?utf-8?B?TGw5NjVPV0JmVnpudHM3ZVlIY3JRTytQK0xoL2lDalRHb3BOOTJLSCtVYTI2?=
 =?utf-8?B?NzNCSmYrc2g2NThTRW5GUkk0V1FHR0ZWOHIremtoR3c0Y2x6RWw4eURZT3hh?=
 =?utf-8?B?Uy9scFFBV1F6dnVPTURvRVJQWHlJYkJGbHBibVQyODFsZjIrbCtROFkzLy9F?=
 =?utf-8?B?WG9uN2NkVEVTMEUzbDBHc2hhZTI1cDQzUUIyZ0Q3bUdSOGVTZUJwRzhiem9h?=
 =?utf-8?B?NWYzckd3NEdxV3lidXpkdjB3NDdZbE54dldXMm1leE1EZVZsd3huYmdsRTVu?=
 =?utf-8?B?VzMrdU9JN0Qxcy9CZFptdmUveThQMjNZT1RoR1pMWGdJWjhMQnlqc3hEZFNT?=
 =?utf-8?B?citCdkFXbDJZMWttYnNGWXhiOEhNTEFEVDMvU080dkw1VEtMTFJwQ1UxTyth?=
 =?utf-8?B?NUhXMU5BcE9yYXNHalVvd3ZXa2RBV2toOWFXa0Fnak5FZUtsNWtYMk5zUWdI?=
 =?utf-8?B?anMrYnROelFHWTBkbmlZbk1vOThyWmp4azdUcmE1QVpNa3F5dlBaRWpoclhV?=
 =?utf-8?B?RWQ4c1IwWVVYNUtiYlJSL0JzMmxNTjI4V1Q2TTIvd3Z0bjEzdzVaU3cvSS8v?=
 =?utf-8?B?YW9EUjlIOHBjVXFHMnkwbUkwVjhQSXVmRnNhcE82RHJYL1ZORnBFMndnMzNB?=
 =?utf-8?B?MnJReWxMWmtGSy80OUlVZGlzYzkxYmE2UTVVZ2lTckpYOWtiRWlLQktjTG5i?=
 =?utf-8?B?czViRjVJVVM4TldxclhXdlFscC9RK1JiRzFZU3lJbUp6NDhVWW51bzZpRjFa?=
 =?utf-8?B?cGlTaWd0Y29kSkNrd09WTzIzYlcrUDRyUFRhb3FwMVEzYjBnNkMwOEdYNFR3?=
 =?utf-8?B?VDRJVGpPMitaRml2MFF3cHA2dG1tTTJ3WmlQWmxBRTNTUTF2bXo2TFFRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6738.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZUUySEtMcGk3ZHN1RHRvTyttU3UrRFBxcjVuWkhhQkkyZkIyQ2VjNEtrMEw5?=
 =?utf-8?B?dVlCMmNsbm1RalRrd1M2YlluRzZScXhOMWpyRlRRV2NIbGUvV3krM1pUVnJ2?=
 =?utf-8?B?dnZhamNrMno0YlBlNktPQjU4YkVBVTJPd1grZGQrT2I1aHYxamcwVXJJdzlB?=
 =?utf-8?B?ZlVOR2txdHB0N1dGNmpNeEFBNnV2eE1sTVNueFNLRXIwb2htSXNBT2tBTklx?=
 =?utf-8?B?ZFFaQUY0ZnZKUXJhbFN6SnpTanhSa1ZSZE5Ud21NU2JsSFdlazcwL2RSdk5L?=
 =?utf-8?B?SDRRRGtQYldwYW42b3JtajlRaSt3T1cvb1c4ZUZaVlZBb1RGRnplZS9wSUp3?=
 =?utf-8?B?ZG9uVWQ4YWdjMytjUHpTckozNy9UaTdsSlNyVmNzWUEyZk9EeFJxTmVOeWl2?=
 =?utf-8?B?NXBicG9HRjR2aXFxQmlxWnkzM0dhQVdNSEV5dzFBL2FvRjFYQ1drWFZhYlBR?=
 =?utf-8?B?OWFkaHhPOTlkbDlkRmJWcTFHeE1nRm5Vdi9LMWdwY1d3ZWxocnpOUmlCSUVm?=
 =?utf-8?B?YUg5b3ZJbzl0UzNzL3RGYkxSQmFHNCt0UjVybjZxbEVVZG9DVytRM2Zrb3U5?=
 =?utf-8?B?SWlQZ2dWdWRzVWl0MGZxVkU2d2FzUFQ4U0lURUpXVVhlTUlaTXltcUtrcHcv?=
 =?utf-8?B?djM5UTAxRE9IVXFKNTE1QzZJNUhrZU1xekxobnZaY3g3clhaWFdibU91R0lE?=
 =?utf-8?B?Z0FYWTNnenpxMnNCKzN5SzdqQThtdUZxb0ZWdkJhU2lGcmw5dGVQbnFITlZT?=
 =?utf-8?B?WGxuczgySmdwbnEvT09BZTh3YVl2RGdjSXdrbU42L1NPOHhrbXh3RWVrbS8z?=
 =?utf-8?B?R2ovM1VLUzVmK0xpd2xyT280ZVBtQ3JGZTZyTU85T1FISnBjY0lCL3AxNllC?=
 =?utf-8?B?UmdCdEhHQm9SaFY0SDB6TUlMR0hVUzhCdmtSRHN4bUkyY0pXUExaN3VBV2Y1?=
 =?utf-8?B?M09pb0JkcmlXczA2SzY0YnVadEdsSzhQOWJOSWEyNDJHUmNXS2k1QVYyajdY?=
 =?utf-8?B?b3JSZXNvUGFuWkd4TlBoUmJRb1p0RVVkMDZtWTNzbWVraDR4RGhzaGg4UDFO?=
 =?utf-8?B?c003WW1UQWhINnRleERXMENMMVE5MW9pb2NmdGtjc1BQdHpxVzZhcmxtRVBs?=
 =?utf-8?B?ZXlNM1JuVEcrSUlBVDE5cTBmMUN1UXRJWjNuNGtBYVlkRUNhVnBTOG1nQ3ZN?=
 =?utf-8?B?VUFrVWVadjRKWjVYS2xyKzJ1NHVFYk9xSFY4TU5pZ29zZnZzc2sxY0NLRldN?=
 =?utf-8?B?SllJbmx4OWkwVVlsV2xMU0Z5V25ENGFVODRoNk9KeC9iYkxmc1FybkpqVUxH?=
 =?utf-8?B?L29PckFsZjFPME9LTzA3NDNqSXUvLzN5ZnhMN1lNYzBsdnEyRUNnMjNRbDY3?=
 =?utf-8?B?VkU3ejZ0LzJDcjdMZFQ4Q3l3NEdlc05TZE9KT3RhSEt3VjllU0h5aGJZS2p5?=
 =?utf-8?B?cnBjNjZGakJPSi83Q2JtWmI2TFNzSEJkTDN0Rm9QRXUxblEzUnRzZVZpUnRa?=
 =?utf-8?B?V2R5aFk2RXFyNk8zTGFKcURZZlpXMlgvREw0OFRyQy93Qi93WmhESWxBK3NY?=
 =?utf-8?B?dVV4M0sxbmhRSXZDOW1oOExMeHJzTXJWUlM1SmxuZFR6ejUzdDNjVnd3Ymxt?=
 =?utf-8?B?YXNnRWI3RkZiaFdrSHM5VTdzSEdYZ0ZpOW0zS0pjeFAwbkYydDlUcXRXaGlx?=
 =?utf-8?B?eDR0MmdTRU55WkN4SWJySDU2eFRhNk9iSTNLOXZIWVdMT21TOVQ3VCtXcFFy?=
 =?utf-8?B?QUV5Rk5KamlCQUFXRnNsN1pHTTA4NEpucmwxaDR6VExlcUlIUGU2djh6akpK?=
 =?utf-8?B?ck9RQXRqTEtSbTZncDhMdGJRUUcyZFFQQlMxSU9vYzhqQ3E4eEgzeWVOVWRK?=
 =?utf-8?B?UWpLK0pLbGhwNjJrNG9Lb0htc2JZRGdRVXB4b1diNE9FbHlJbTg1ZVpxODFt?=
 =?utf-8?B?UHJzOXRnSzR1cUIwVFowNXJ6QW0wdTdJNWp4WFE5YWZaNjU1ZkQrL3JBeTN3?=
 =?utf-8?B?NmFwNzVkdlNFQTEweVdxZU52MTRxRytIS1FTcFU5OFJyZU9RUXJjdUEyblV3?=
 =?utf-8?B?R2p0eEg1S2VEei9DUHFzSk1kZ2VmWllaUlZoZG93NlBXeVA3TDRQS1U3VzRB?=
 =?utf-8?B?bTZpaUZCRk43TGVSU0NtRFdlK0xTdkt2VjVFajlaL1JMRmMxN3R6d0tIVEsr?=
 =?utf-8?B?ZVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 020f7dc8-848a-45a6-1200-08dce8b6defd
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6738.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2024 23:05:30.4088 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SZ7tH5/wNkMA1qh26N0AMfjWlftQgST/uAgb8Z2USafDSInjmoO51gD5vpykXjplrn88BRdTWOIoElZrSzFirWqijtOs9lTEtPN31Kbcu2I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4738
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

On Wed, Oct 09, 2024 at 10:57:03AM +0300, Jani Nikula wrote:
> On Tue, 08 Oct 2024, Matt Atwood <matthew.s.atwood@intel.com> wrote:
> > From: Suraj Kandpal <suraj.kandpal@intel.com>
> >
> > Add condition for P2.PG power down value.
> >
> > Bspec: 74494
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > index 1c8c2a2b05e1..3d95ee65a9f1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > @@ -3144,7 +3144,8 @@ static u8 cx0_power_control_disable_val(struct intel_encoder *encoder)
> >  	if (intel_encoder_is_c10phy(encoder))
> >  		return CX0_P2PG_STATE_DISABLE;
> >  
> > -	if (IS_BATTLEMAGE(i915) && encoder->port == PORT_A)
> > +	if ((IS_BATTLEMAGE(i915) && encoder->port == PORT_A) ||
> > +	    (DISPLAY_VER(i915) >= 30 && encoder->type == INTEL_OUTPUT_EDP))
> >  		return CX0_P2PG_STATE_DISABLE;
> 
> Does this match what the subject says?
Please address Jani's comments
> 
> BR,
> Jani.
> 
> >  
> >  	return CX0_P4PG_STATE_DISABLE;
> 
> -- 
> Jani Nikula, Intel
