Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84FD88C3351
	for <lists+intel-gfx@lfdr.de>; Sat, 11 May 2024 21:00:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC16810E1C5;
	Sat, 11 May 2024 19:00:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KjUIfsOu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FA6410E143;
 Sat, 11 May 2024 19:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715454035; x=1746990035;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=o3Rl4gFDmhOrKD2IoxH2eoQmTalEeZIUhJtxBbIL75U=;
 b=KjUIfsOuDyl2HzCb94SMD6JzcNENNlbJLnmGzAZC1hG0hQwppuDsR802
 kVbWdvg6EcOgNjJRTqUytsUPcrwc3i6nDPmf3vqTDnEQ9qjNChGsjd3c6
 yh9CKg7rm3SLvAu6nRly7U8YWg8Bqk13aRsFoJaVlGk3/8mHN/9m/Eyte
 OeZZXcArFRUMqzLP5z4yTaA795MIKl4iKaWCj0A0Ir7qblWje8v3VECzX
 4d4gHovs5huV8Eid8b4H9/vuuY+trO2LI+Y9Z1HRVikd6wGgTUgPYLvGR
 zj07ZNz9waCvaEie7kSIrGFzWuXREfsUIvajnx6UUR0r5i1CMekpHmRqi w==;
X-CSE-ConnectionGUID: rXBKc0YBTnShMhFSkmixnw==
X-CSE-MsgGUID: RxEFwSZWSDGrFoW4myGzdQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11070"; a="11295220"
X-IronPort-AV: E=Sophos;i="6.08,154,1712646000"; d="scan'208";a="11295220"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2024 12:00:34 -0700
X-CSE-ConnectionGUID: /sP4hHvJRfWs/KOcwi8BHg==
X-CSE-MsgGUID: zYDasPtAQruMHb1cN07g8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,154,1712646000"; d="scan'208";a="29895371"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 May 2024 12:00:34 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sat, 11 May 2024 12:00:29 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sat, 11 May 2024 12:00:24 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sat, 11 May 2024 12:00:24 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sat, 11 May 2024 12:00:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HUSS4ph58cQ7vNXAcnpsZqMYH6ViWr14cGncMig4uXdMUsM4t1SYyubyI2ES4ViF1PTJVYbPXM0jXoh5oAz2ITbOJBA9U5QkRwWPFaZ6gTOhaZP+a3eRvltXVXWKwlmgQ28Ks0xdv+E1Y4T+95qrbAmDPXwAYpPH21UBfRCNttdK9dTYtfK1YCW5ZL2pqH9BnDZ6s/ZacWmXyTe45Fo1wLXzILrKpT/VJJw3s5byc24W1feTk+SsM0GdX/NFt/C+ov3cBW3mm3J8Y+tHp2aCsmU6a1pL5XpMcBxJ+8bUC4u26yH1uADdu0WVa/LyQzxkHbJ2+jGS9LzcAw0DuacdoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AJ9pFwZ9Id9/PSS2D8OIN9h7AoZ1God0t8KQ5SCLCPE=;
 b=UuRARdC0LlPo+yQOoprHuqXMvzjs0tE9Vrl98UZ8VwAbH7i0kIwemb22YWxMODgLwDmH+OsiOTT+TFpf7dCV04e3UJ6ZahJFOA6OANiOorCuZ1tZdG01ucwVkl7ZsCs+BEoVA4IUlnD89TKX/5koeMX7qrqhjqll21a6b9pMiV5fztgN1bnxr4JosTldjByinVgu4ezy3bjrGk51TG5SrmGrd12qq+MDnN67Bimo9N26D0Rao7+Fs1cOgVuvWQtB0cgil4qbg+a674tByegNlVOYNELOPfs+lfUYAJl9c88DTWEmNor3U0piPuSpbqVcH56ZXqnPFjHuVCqzxGQmbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SA2PR11MB4795.namprd11.prod.outlook.com (2603:10b6:806:118::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.32; Sat, 11 May
 2024 19:00:21 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%5]) with mapi id 15.20.7544.052; Sat, 11 May 2024
 19:00:21 +0000
Date: Sat, 11 May 2024 14:00:17 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 0/9] drm/i915: Plane fb refactoring
Message-ID: <utvoij55zjtp6hujxl3luidq7whrjvte64wv5r46pib6xkspvn@asptafecjvyf>
References: <20240506125718.26001-1-ville.syrjala@linux.intel.com>
 <Zj5Rc5cMrcfnV-aI@intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Zj5Rc5cMrcfnV-aI@intel.com>
X-ClientProxiedBy: MW3PR05CA0003.namprd05.prod.outlook.com
 (2603:10b6:303:2b::8) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SA2PR11MB4795:EE_
X-MS-Office365-Filtering-Correlation-Id: 36a875f5-85fc-49e3-4260-08dc71ec9b5f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007|27256008;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?CslTgfyI1eI8EPUTNtHl1buNSuyuEjIZyEhYX7Z1UlCiqop2up2zt3nCd/?=
 =?iso-8859-1?Q?r1GiQQzM3o5EjsRBsuCvbmj0RaRuYoZjcMCMwWiTHGAZ/A+oCLp9teYEvH?=
 =?iso-8859-1?Q?x5GSaR79I4SkU5gWmsNMVlVSx1XSef8eMREmd3N2Un7q6TsYvDCLmK8vQn?=
 =?iso-8859-1?Q?4yZ09ZxxsE7hd5bugDOsjodSVoWdZjGdrfhTtCF8Z+hG387KpmGPW40MqO?=
 =?iso-8859-1?Q?LGc6yCor6LG0BO3dTeFj8BuCiRWIZnhfZluodanJLgl/Y9FFBn/jQKMv9N?=
 =?iso-8859-1?Q?jurWtzEp2UUD0zFDmPJZdQy5Qz1Z3OTVaduL5XLlKpgDJuRLL4d8Jj6FyI?=
 =?iso-8859-1?Q?KNaPYJyVhzLZmC2h+J8oESdxODwRqHmmAM5FLSiAJQwV79TIchtt6ldgh2?=
 =?iso-8859-1?Q?V1VdP8AdiFKFy2x04T0cjIoAgEKrwYWPIx1X/EuELFi0M3pIzk1YtVYjM1?=
 =?iso-8859-1?Q?1rzj7yYCBk3lRXJVYYWNZYRRjq5MKYW/gwhV25YrwFnp0bWvfsYrFmtTpt?=
 =?iso-8859-1?Q?dxaFKCFNPnluNv41XVHTRy6mVa/DsdUx/I/aNj9D7NXROzi3kdbLp0iMjM?=
 =?iso-8859-1?Q?/TORNvS2EZPDVv1eROfwn3gYpUUbBxwOFCn6dnsc8LzxfuDL7JVTDpq9Zq?=
 =?iso-8859-1?Q?U8I0ZA3cXXWL9MOKqBU9DsoivNJjHsN24hZVejOEjaUWxlJI2zqyPrinXO?=
 =?iso-8859-1?Q?PAwHcYUSDZ70wWImMhKMONQsqW/aw0SXK99hrhkfSExbP8InPK8MsXdIQv?=
 =?iso-8859-1?Q?QMvlnaTIjLKNMJk4lEo8FpG6yzZPrgEaXIqn+NjJ9IrqerKONsfgnWiNmI?=
 =?iso-8859-1?Q?eAyZb/4/sMD9G4zE4wcWaaeKdw3RWUBXFj8Wr/Dqe8ZgpfJW04lU9PuFN3?=
 =?iso-8859-1?Q?nJkxlSas6Lwnk1j9PrgfRiNBEqDpO1cDV+qgx5ZVLll6RdRlKHQGsS9a7E?=
 =?iso-8859-1?Q?z1K4vZPgEVhxl7QS6Vbrm6tx1K2ON5eM44PQIQxDJczVpRw4fUT1YBAzuD?=
 =?iso-8859-1?Q?s+L5T1D2n/5KjnfqkQSPmEi12jxFDMGgXegMd891Ms8FY0I2a/9OJA/ySU?=
 =?iso-8859-1?Q?FtiTkSSi332Ga5khkn1o5xwVyCEZA57mee45tBO/3TFUFCSZkHeawUPfAC?=
 =?iso-8859-1?Q?0WdI+67K9cmnQmdSJXVMB6pxlJmx8G0rcmK5ZwXZ7xNydz9aA210VYn2zV?=
 =?iso-8859-1?Q?8fyDM6BX4y879Hbrq2K5EwZUUdfFJt53XN+x27p4tQzLX5C5IrWKZW54G2?=
 =?iso-8859-1?Q?aERraEm3ROFGXm/wb6ej//k+Mpp4CJRkSiaX5Hs9WVdtkVA2/bNZeztAMZ?=
 =?iso-8859-1?Q?isSwETOToe8VfOPDTODLXPRLWcG4jOKsnsj2nPwPzQajpt0gfxXCd+0eJE?=
 =?iso-8859-1?Q?OVfozLDt769jI7iK8ZUef22jkIxvSzMA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(27256008); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?nyV6ooZhXXQhU/Te6SPdMpGpjCVx5UwKzyG2zaUn20h2hr2/qUv6EtHYp8?=
 =?iso-8859-1?Q?TNecYtp/YbgA9L2kxXQz06jLYaQfP/4OwETTFjWvu+1zQFJCGUmpGm2LUI?=
 =?iso-8859-1?Q?Kqo6CyLP31pLDmdyiTGCH6uUHX3N5Wvd1w+qTVUAxEamErkvSn0Q/Nm+Jh?=
 =?iso-8859-1?Q?2oDQfeVZpoqMjMSBf1gMteQCadMxLg00QA0aOwrRnuJYnEewNc8QH57Okx?=
 =?iso-8859-1?Q?8AH42Y0wpa5kJazIopxH3LrW//seXa05/deBPZPEaDAy5kfa9WOrIO9WvZ?=
 =?iso-8859-1?Q?+EDoNJIYi3YHRBNiMNmBavUmWOFLD9a8tqs7tEOFWSs4D6U3Dqgw0zxX7R?=
 =?iso-8859-1?Q?JegMZHP0vUVt3enBGsrS7C7zKLw9k891jNLOETV+fR+OuFwR8AvakF2zAq?=
 =?iso-8859-1?Q?1oTBKlJQ6TvXE8cHYBqPMUcF88HhIgY8Xkz2ola9P5QHXR8iWjtwDaCttP?=
 =?iso-8859-1?Q?0p7gC7xLNouf2fGg9y4kvmkhNMSZ9vcOMJ+KBEfvPF88ZjYSGrd9Ozc3C9?=
 =?iso-8859-1?Q?B7Peko37yGUnOPBRxtG5JvCmnGFpwN9Q5FvDQJjIaggM22H4kOCXvcMcYY?=
 =?iso-8859-1?Q?KyyXg9yUGMbFcUvtyS/L2u0+WSZlqX2mzrGuLKHR7+8ySvMPlG992mqxED?=
 =?iso-8859-1?Q?3ebKhG2f8KWjtPRXteHbXAD3CUJ2ophcsq4gyWGP/As0oG+v8JHPwH1Vvw?=
 =?iso-8859-1?Q?2QoMLd2qjr4jnF/QEF+wlQmyBu6FzFaoxjhrwMpuiGGmEjMXYxgDcmiaOy?=
 =?iso-8859-1?Q?iXr75Me3sleQ2ZiIZvm5iJ10DD1GqLYXtsjFwJNZeb2F1LAS+nmcokU1HY?=
 =?iso-8859-1?Q?qABDrF2LZ3mLMzth29MEISoopikGp0+gkRlVZCHDJnVsYpR7ELJynxT1Fz?=
 =?iso-8859-1?Q?Xwn01Dzbk9Jy8XwyZCFhcXKuucH+cn3R0mTypRhARa3iDO0HRPtE620dk5?=
 =?iso-8859-1?Q?oWEjnMRY4/wO25Zf1N8PoKje00P0Dd3rU+Za45kWw3M93iTcSHlRQv1eaV?=
 =?iso-8859-1?Q?hRzdN5kVOVz6ovhsTnqWfttNDP+QpeTKpNKpCmhvwQF9iMdi0lyqakharr?=
 =?iso-8859-1?Q?j5JgIM7kO9FMTiLVL+GncywXTVJCkU7RMK0q9SKD6dee6ov6mDkah6zG0c?=
 =?iso-8859-1?Q?xqnr7gIWgifs/npgduEVs+rCOGhCOR1yIu3bUDa2g5u2e1nSU8LcrPlLlL?=
 =?iso-8859-1?Q?aMZamhgYI9RiUpUZ3CGUC4Yh8IP4KGb++QB7S+i+lVsVl5PiB8CnXvlqul?=
 =?iso-8859-1?Q?mzgC6dYO4SRubaKfV+zlCupW6mqdr9A+sxCWQ4ndFSITyodWYbJLRZIl6w?=
 =?iso-8859-1?Q?bpVTRdpCdNQlfxEx59Eu7Or5MM0EI9Cl34MRGqCX/OiFXeYrH2gLDlASfz?=
 =?iso-8859-1?Q?p6L3rk/8O3m2CuxqbF3qD6mlefnpGvb/ZE5FVcbm5++bXHjOsK/yoPWc1n?=
 =?iso-8859-1?Q?zXwMn8K78QQLG2ESMeFzcXKCxETvL5kYMfSAxE0AThr0TN0oONgulSzTpW?=
 =?iso-8859-1?Q?bsl4wL7DULiQxutUifqZJIQuLM7+8SfZRRZdBJpasI9uH5UzgiHX38pYbI?=
 =?iso-8859-1?Q?3Gp0KDWdcqADf524MORq3M05Zzs+CmpCC8bOW/45BpQUmabYIdQy7ZnmTJ?=
 =?iso-8859-1?Q?EiJL4zchogKBw5xXfOKNeZ7mYD3BPZWmYjX9N2weON34TGpwvcZncm8g?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 36a875f5-85fc-49e3-4260-08dc71ec9b5f
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2024 19:00:21.3983 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pY4GOivgUI+6UnYjXoGUzqpVQ19neupo4nlLXLH/KxbWCTJ8KwQKO+13NjIG9y3A++Zj3pHFmfxd6n38ofr3wxpdtTTUL1QYdOK59mhxfhY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4795
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

On Fri, May 10, 2024 at 07:55:15PM GMT, Ville Syrjälä wrote:
>On Mon, May 06, 2024 at 03:57:09PM +0300, Ville Syrjala wrote:
>> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>
>> A bit of cleanup/refactoring around plane fb stuff.
>> This is mainly prep work for a slightly bigger rework
>> of alignment handling.
>>
>> Ville Syrjälä (9):
>>   drm/i915: Split gen2 vs. gen3 .max_stride()
>>   drm/i915: Clean up skl+ plane stride limits
>>   drm/i915: Drop 'uses_fence' parameter from intel_pin_fb_obj_dpt()
>>   drm/i915: Extract intel_plane_needs_physical()
>>   drm/i915: Polish types in fb calculations
>
>Pushed up to here. Thanks for the review.
>
>>   drm/i915: Constify 'fb' in during pinning
>>   drm/i915: Change intel_fbdev_fb_alloc() reuturn type
>>   drm/i915: Cleanup fbdev fb setup
>>   drm/i915: Rename the fb pinning functions to indicate the address
>>     space
>
>Some of the rest touch xe as well.
>
>Lucas, can you toss me an ack to merge via drm-intel-next?



Acked-by: Lucas De Marchi <lucas.demarchi@intel.com>

thanks
Lucas De Marchi
