Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF7C3C7C1C2
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Nov 2025 02:46:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA3E310E156;
	Sat, 22 Nov 2025 01:46:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hz5O/dSi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21DBB10E156;
 Sat, 22 Nov 2025 01:46:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763775981; x=1795311981;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=4fIVecUjlO9UzecZnOa2cE95DW/ZWynXPBYv8oY4dfM=;
 b=Hz5O/dSifClnfJuzhmiD/QlOQjg9RXDGxxrZ+l/ZPlf6ZWj5LjhhKjom
 OdkBoQJ24Rs/oXlXOrVTyO9uqLgiWbf1WfxILB+XZ7UDaYyBWsnI8icdr
 cxBOPwq3CyGbgEBIsyQHNg1i90CMF0OXZNdTaFJ61eccZRHec/2ytBypT
 Q0FQp51PyyiAT3shcJJptJopLkyyeWAqjqZXyXAsnFtXmKi9BH0ayrCI0
 eIhWls5yvAiqhKkRI8AG5xisqB+4DLe56m4fqtQ7pgc5Jqh+dKNAJ1hoH
 PmPqXAoHvDVYcPydoS4V01imC29oSunqTcSrA89pXeGFoFBRqylvpkFwp g==;
X-CSE-ConnectionGUID: an4BETWNQqGnU3l2Zljr7w==
X-CSE-MsgGUID: GOhwxqkEQ0O/iW2QH3o/vg==
X-IronPort-AV: E=McAfee;i="6800,10657,11620"; a="91354792"
X-IronPort-AV: E=Sophos;i="6.20,217,1758610800"; d="scan'208";a="91354792"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 17:46:16 -0800
X-CSE-ConnectionGUID: zEJQkr36QkOpiiLQmkZMqQ==
X-CSE-MsgGUID: ovemfV2WTzOUahM9IRidaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,217,1758610800"; d="scan'208";a="196309494"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 17:46:17 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 21 Nov 2025 17:46:15 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 21 Nov 2025 17:46:15 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.42) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 21 Nov 2025 17:46:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GBnGH7H4tksdIJQZevdlMsyZ68rw58ltmBT/52wYzYTmADkOOOFQoGiXFhEODiGfcfTE7CHI+SX4VafnwmGfpQFoUV3MBWSYKWufSv/Hp1yE05HfFPOhY5/vGga+d0bZKEKMkhQUc6W+nH4TCe5RO2fYJCn7smwUcAfYVoscbg0Jl1VFvBP7mO1OMxdW1wAknobZxD275U1VgjhHrxVNzoJZy1F9hhl/TC/Ip47VXXcsFiKc+LEju7lnoqVOy7yUIzqdxB/0bDVBoTnz4iuvWFOC+PypBHckVk0gwpk0M3eDnBKy8i7stLWiDgqGRJwQ5LXDYPQFcS40Euit+3pc2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qcB+HsBmdYnSU0i5IjlPqqCfqJlr/uM/v2Ln3VaNjRU=;
 b=AwwiumUopN0hrpUYQuTTJ6QFJ/c157WuPF6lRrvFYFbESBA827j12RAlE/IxLMNMbFwa8MVA/O1BuZs8FV9WHvvbMvUNWWP6mnoWtWSSHGU+0EIaqmA1DnCp0rAxN2mJD2b+cMSwtUpbqSUbTghn9Hd6R+Jnu/HvlbgRjIngMr2ZUquqJLjSEt97Z0FqYZznlp2qHXRbz/MNaMw1ZhekMV92fgz4CSJfUZPwo9CE6DtEyUIjYRwcvXu8/+OH3p/u8lkbDmrv5Qa9gugpK3zbP2jJD4dvUI+cg/Qnt1Mwks9DWyzPgb5REEcKffy6cK0MBTk9OKw+PrOITXd2baGduA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by BL1PR11MB6001.namprd11.prod.outlook.com (2603:10b6:208:385::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Sat, 22 Nov
 2025 01:46:09 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%6]) with mapi id 15.20.9343.011; Sat, 22 Nov 2025
 01:46:08 +0000
Date: Fri, 21 Nov 2025 19:46:05 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/display: Stop touching vga on post enable
Message-ID: <udz3nrp4b4fe3jnpoc2fhg7sy3oh5thtzany25yc5zjcva33ey@vh4hh2sdrivy>
References: <20251119-ioport-v1-1-ec43f1e12c49@intel.com>
 <aR4zAKLW0CZttPfi@intel.com>
 <p5nf5oxagtpoil4iv4xdwria22v5kg5lwkuy3hhzpvm5xd6pdc@ggzlv6v2kyvi>
 <aSD0DpGKeOCF1LUZ@intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aSD0DpGKeOCF1LUZ@intel.com>
X-ClientProxiedBy: BYAPR06CA0031.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::44) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|BL1PR11MB6001:EE_
X-MS-Office365-Filtering-Correlation-Id: bffb6e2f-c164-47c3-ef9a-08de2968e7f4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?WFwdNvGlrZ3moeOKVGM5IMtN9q3WttHZkueA65agwb8EIHreMu9Vh1JDUu?=
 =?iso-8859-1?Q?rwlQp6LfdT+qbdUnSaCtB/QFtqFdwkJiIwfPHt0ERPTbDXKxwHMbkteG17?=
 =?iso-8859-1?Q?YHvyB/u/8dOQWk4moIG3pgS1lTwKEDtHPli6CgPJR2y1qI8HdtCBrc3Et1?=
 =?iso-8859-1?Q?Y8NRlGvW5XCY2gEbCr2UJiC+bX8N2XpJZvHyRl3mnhjj0+u0Svr117L75e?=
 =?iso-8859-1?Q?aZjY7OUeAH1x9AIaKMIWnjitwvF+Vp0JGo4f8oXvflQjH78o3at32XLWe+?=
 =?iso-8859-1?Q?fnaoPqlRKctjzfqFDsBUHTgylxm6tT6qWnfT7VPQY77aGH3sG0ZJUAMmU1?=
 =?iso-8859-1?Q?Z9YGlxmvsEYJ/ANt0flU1OToSlsNb8net04pwG92oh30RFjAQLEJtG2oJU?=
 =?iso-8859-1?Q?X3DAPcsDioqK3hoAXbgkxzQJeAjsXOQ5Ig+yiEGkRv1mtIgjk8YK1NSE1g?=
 =?iso-8859-1?Q?jBYrYt6eLAKbpZ1g5HLkaYUPJrlzNcZJArW+M73DDJYpS6HRXL6PzQOclj?=
 =?iso-8859-1?Q?d4fA1Y+BY7rwO/OV5lVRXRywajm/0zHhO1L33iKIzC9ZRyNI/PCIbqONik?=
 =?iso-8859-1?Q?Jd0xbH6xRm/UQ5HqSjzRkh3I/SC4i0I0hdzq4LuGG0aPsAHpdC93tGGZr0?=
 =?iso-8859-1?Q?tiQODtw8KUST0yUhhy0TTD7uYs4U//4X4RKZ8Q8wgJnu1qTt3cUGv2CJgL?=
 =?iso-8859-1?Q?gkKE7D5ik7O9iV3D/RGwtqVLG439XveySCCcETGJtnrjMrIUnR4AOsxm5d?=
 =?iso-8859-1?Q?+geP505W3vGSUakIWcMr7anqOkiHkycjkG6cs+0i0R91tNAiuzM2zr1bze?=
 =?iso-8859-1?Q?r59K6oGRCKxh9/TsSYk93raXYyW59A1E93GUAiv+p4OqdC9JEqM8TtLFXy?=
 =?iso-8859-1?Q?2oq+aVXHKGUg2rfD1L7PhwsBPyzX+yq4jM9XUY7fK6LqjWfKgCM9i9v0oR?=
 =?iso-8859-1?Q?Mcdi/sc61UFofI4ui7j43t++hR1EwwByqRWeZoQrqTNzpjxqErzUb4M5sH?=
 =?iso-8859-1?Q?63WWqeMDKQgkFJN4TDxEuhX5dqw4kUIapPeqynatG1PnSuixs7as6qqV/v?=
 =?iso-8859-1?Q?OABO6hQTjylLocjNhgZQBbr6EIiV30ArXKz+4u2CXdGRQf+RBcMEq2tb3w?=
 =?iso-8859-1?Q?/Xc21Pyv+tS5SeAviF4cBVwRwm4g7pE8xdfYFrBVVKt5DscDBsR+YfC+lZ?=
 =?iso-8859-1?Q?8d6H2wj5/f0hQCfMO0KBKyxsqZ3Ao9ff8t17ysuIJxJ20++wjOB6Hr5Smu?=
 =?iso-8859-1?Q?WKDd4rzspnBahwFxpbo2bsfVgLqfS2nYtH3e8vP8TDg+GB4miHyZO8z9z/?=
 =?iso-8859-1?Q?NSAlWU+sOQ3Ii6lnHmVwnNrRQY3gjYm6TTFwcuDL+XfY28Ix9uehb9j//A?=
 =?iso-8859-1?Q?e/Jwg6+TzS18VzHS1r9MpmAXUY3wZ7o0KEJSOIz9H5yBqiKRLVHyStHQxF?=
 =?iso-8859-1?Q?Wp8AhHjJ2tvxozplnH2Vo7ZxYgE4RLaGxkzsNuypcR8fKIo3PAMCe0OD1F?=
 =?iso-8859-1?Q?isVkuhD3qp3hbJdbiDKA4+?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?dzF7K2Fqt7YJfXAYjkmj56ZU/8a5k7SDhg2fZiw05sQi3dviBBWBfIQ6xv?=
 =?iso-8859-1?Q?USbuqRixex+m6wzqdpaulKzDOtX2UYCUwAGWH6fCe9jcJ0K7sePYUmBvP2?=
 =?iso-8859-1?Q?GmXx2OAh7/Ds60NicOaRNzrhNKmuGdr5HgPuYY4OP6GTErfzsJVowAeyCb?=
 =?iso-8859-1?Q?ik2XpjCfIxB/opmRIr+FWxOIEo0IRtOg4esPOMtEJ03CpoB1920FgMWSFA?=
 =?iso-8859-1?Q?C2ubxQ8d3004Wv5XxHa2cM4MOLIwvkO15s0IumTdinyex0npTRpaah5v5C?=
 =?iso-8859-1?Q?YGv6GRduYTFnaLG54NsSF3udvAhjxPjZ/+Sn87bJ6JeiIwgUP0s5Ms5D9t?=
 =?iso-8859-1?Q?W6dFOwc9O9OhzHWe9F8dEqSGSEw3hpYonqIXVfeQWiEYSbKeo8mkzwebxx?=
 =?iso-8859-1?Q?KWoTk2RiI11iCj9bnvkF9UNl7wyN/w3sG8srDnYccMQFIbOOVdvvkamflp?=
 =?iso-8859-1?Q?fT9Uq887KVv5wX2ms9mMQSs2mcyEmYYUma+wt9/uDx98x8Z0ZzbGuGyGyQ?=
 =?iso-8859-1?Q?PjMr6FfaYAwBcu2AQh1B6WCMOHIgcW66zF7kzaeMjg2V/27Wp5/V2vJNlh?=
 =?iso-8859-1?Q?PUqPD3wXR3T0kQQcE1j8BGBiewGnj3xulQykP+A1dvVYwTvf9eb75zvTjj?=
 =?iso-8859-1?Q?7ODOkfRr+0sDmcenAWbyKqg3mm1eUkLqf+wA+FlIudDMUmVBRTS3U0hIjF?=
 =?iso-8859-1?Q?o/PlxEcCpQ0puWUV1PFiRStRPMkMzVxvEno9VOeunmWhccCUJfhhw7RhMA?=
 =?iso-8859-1?Q?sdpdBY9qVsyUo7KlBf5HGIVKyjRZm+VT/jU12PWSCm0rzDl4WJpokxvQRP?=
 =?iso-8859-1?Q?QQWTO6oI9fycl0fb0vNL2AReMm6j3009PzTPCkQ3d4RKa34SMU5b2M0E75?=
 =?iso-8859-1?Q?n2hq3IT+SD9Ug/RDta1S4+EzYze95O/u93Oz6ViT6k31FiDYN/lc/VUeCs?=
 =?iso-8859-1?Q?5JXK8dFcbwtm5Yl470Kl1yW0ESmwful3M4hIVQEM84u3mnBzE8hFtAqg/H?=
 =?iso-8859-1?Q?5Vf3jfnHc7wfFi9BrTj9hFiBL3YrJqGqmuyM7m/1wcTgHQ6pWD/AgckRkW?=
 =?iso-8859-1?Q?aeNEsRhizC9ceSSs4XN/vXRcU/4NA7hhxxM2t7FzEMgNOtKNaFTBFEsY9Q?=
 =?iso-8859-1?Q?FkaUns7eIyLp/y+gekdj9909SkVcKlNj0EFov9Hzs0O4EkRyllptQfjqvs?=
 =?iso-8859-1?Q?aez7WwoSHOZm+envTt0t1Pg7ekiiZbYU9pVB6ro88w+IgarGnceKP/D2oO?=
 =?iso-8859-1?Q?MJDQ9d8T3GvLsDL4xSMzaR45WdCSZVxXEHJEUekLIs7iAvLN5T4ECvdfwc?=
 =?iso-8859-1?Q?4Y1zTSPYvxOf/sFw7mvkEnISphSFKYfys8lzz7xGZklqVyhJFgWk1IRSqq?=
 =?iso-8859-1?Q?Dk1ifLKZ4W7v8MMeRiECAOcSdKo7QNZf/0oGK8BtZfgbGIGs38bM+UFhwo?=
 =?iso-8859-1?Q?dfZ7zfjDkc6ZPxliq7BZazmmbM4B5nkLzlLUyV+81Tt2AIKMFHSVx2G5W6?=
 =?iso-8859-1?Q?oYKpg6IiOQw+ZfHJu8Zezg3ls7mY5JzhZoFMhMZ3uRtjWT0dpCJDKmtOiB?=
 =?iso-8859-1?Q?wzx6fQP7umMaTU+jPFOfuwvAB9nDNikTnptD4kd85dnrFs1LjN63iWyc0s?=
 =?iso-8859-1?Q?4+cIpSLl8lXDqAycZ1QIxni0AQEXKsdtNnz3ynJeiq4W+rw3gFBsCTSg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bffb6e2f-c164-47c3-ef9a-08de2968e7f4
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Nov 2025 01:46:08.0613 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: L2EBpOby7lTWT5LGSnavAUJPVM5fjpl9SOx+bSyhiLLXr7Mvc4BrYrEQ5yZmV6pFgjalbf2/rHm3v5ecN92hmnbDCWdBiiypFdnTbeYxY7c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6001
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

On Sat, Nov 22, 2025 at 01:21:50AM +0200, Ville Syrjälä wrote:
>On Wed, Nov 19, 2025 at 10:28:20PM -0600, Lucas De Marchi wrote:
>> On Thu, Nov 20, 2025 at 02:41:22AM +0200, Ville Syrjälä wrote:
>> >On Wed, Nov 19, 2025 at 12:04:38PM -0800, Lucas De Marchi wrote:
>> >> Touching VGA_MIS_W goes back to commit f9dcb0dfee98 ("drm/i915: touch
>> >> VGA MSR after we enable the power well"). That case doesn't seem to be
>> >> reproduced anymore, even considering that the unclaimed accesses are now
>> >> printed with debug log level. Also note that the original issue was
>> >> reproduced with vgacon, but that is not used anymore on x86 when booted
>> >> with EFI.
>> >>
>> >> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> >> ---
>> >> WIP to drop the VGA accesses and allow xe driver to be used with
>> >> non-x86 platforms. There are multiple patches floating around, some
>> >> disabling code for non-x86, some disabling for !CONFIG_VGA_CONSOLE.
>> >>
>> >> For this v1, I think the entire workaround can be removed. Sending it
>> >> for CI while I look into the other cases.
>> >
>> >I think this would need to be tested on a machine that has a
>> >second VGA card in it to make the the iGPU doesn't end up eating
>> >the VGA memory accesses when they should be going to the other
>> >card.
>> >
>> >I was perusing the CPU/chipset docs for this a bit, in the hopes
>> >of finding some sane way to turn off VGA decoding for the iGPU.
>> >Alas no such luck. According to the docs the iGPU always has the
>> >highest decode priority, and the accesses won't get forwarded
>> >to PCIe/DMI/PCI if the iGPU grabs them.
>> >
>> >IIRC the docs say that the reset state for the VGA memory decode
>> >should be "off". But I don't think that's quite true given that
>> >we had to add this workaround.
>>
>> confused... What are you are saying seems to be something about
>> the vga accesses in intel_vga_disable().
>>
>> commit f9dcb0dfee98 ("drm/i915: touch VGA MSR after we enable the power well")
>> describes it as:
>>
>> 	- 1 igpu with eDP + HDMI
>> 	- after power well is enabled/disabled, drop the drm, and unbind
>> 	  vtcon (note it's not unbinding the module). Note that it's not
>> 	  about unbinding the module.
>>
>> And that was caused by our printk from inside the irq handler causing
>> things to be printed via vgacon and that generating an interrupt that
>> print something again, creating a loop. I'm not sure what platform that
>> was about back in 2013, but looking around at the code I suppose it was
>> Ironlake and in the irq handler calling intel_uncore_check_errors().
>
>It was hsw or bdw. Earlier platforms don't have power wells.
>
>>
>> 12 years later we have a few different things:
>>
>> 	- I don't see us handling intel_uncore_check_errors() the way we
>> 	  were before, inside the irq handler. It seems commit
>> 	  7571494004d8 ("drm/i915: Do one shot unclaimed mmio detection
>> 	  less frequently") moved it out from the irq path (it makes
>> 	  sense not printing to the console from inside the irq handler)
>
>On some platforms there is an actual error interrupt that
>gets triggered by unclaimed mmio acceses.
>
>> 	- vgacon is not really used anymore. If it was only this, we
>> 	  could add a check and do it conditionally, but to me it seems
>> 	  we can completely drop this
>
>It's not really only about vgacon. If anyone actually wants VGA
>memory accesses to go to some external GPU then the iGPU has to
>be told to not claim them. And that can only be done by poking
>that particular VGA register.

but here we are *not* disabling the decoding. We are reading the
register and writing the same value back:

	outb(inb(VGA_MIS_R), VGA_MIS_W);

I guess you're talking about bit 1? If that is needed on a platform
we are supposed to enable/disable it on the callback from the vgaarb
rather than here. That would make vga_get(pdev, ...) to actually select
the device.  So for igpu it would write 0 to that bit when disabling.

This specific path was added in the commit mentioned above to allow
access to register 0x3D5, that is used by vgacon, without causing
unclaimed registers. To me that indicates more a bug in the unclaimed
register detection on that platform rather than something we need to carry
forward. Particularly because on later platforms we actually don't
have an interrupt on unclaimed registers.

An alternative to not break anything would be to check for dgfx or
a suitable gen that doesn't have such interrupt. From bspec 4248 it
seems to be since BDW. Would that be better?

Lucas De Marchi
