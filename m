Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A389B992F
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2024 21:08:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CE8C10E201;
	Fri,  1 Nov 2024 20:08:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B/F5l855";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E94910E201
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Nov 2024 20:08:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730491733; x=1762027733;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=Q8srzDckw275AXFaGoXMHqiFivOtlXGSeqHoEfYGPOA=;
 b=B/F5l855l62UTxFrasOcPdgr69Auwiujf3rsF2S1RqXDYLEiWcAlFv6y
 8KsqDsWS+p55EYTAvd/QHg4mBO+cdwEb3ceYjdx33m1cH5n6FNLHjV7s4
 iHj9e8GK62H1lgLZb7dEVlFivPgSHvuSEJ4USN6L440GVHjwEIv+8ieFl
 +6mM1YS5HEf79KEtHG82fGvbRQTatrQo39RWyapDsvTWJdOeWrdF6URHP
 LvhdvtcFtqz+rHSMRlRvvedaHrGXkfmkhsoTsXgKcZ1tcf6wh19BLiQXk
 YcoTkyKmcj8WN37RB4pxiDV5gddXgSCg8iM9RCIu3RPCoivXICXjQkj+B g==;
X-CSE-ConnectionGUID: e83kOLmIRUuoecQ8iK2+Aw==
X-CSE-MsgGUID: F9F4Vi46QSGiZdTFWrEKMQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11243"; a="30379144"
X-IronPort-AV: E=Sophos;i="6.11,250,1725346800"; d="scan'208";a="30379144"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2024 13:08:52 -0700
X-CSE-ConnectionGUID: oNPd/ks1R0KGEPueJ+e1uQ==
X-CSE-MsgGUID: XvDbrLGDSCiaesVRFuK37A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,250,1725346800"; d="scan'208";a="82936607"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Nov 2024 13:08:52 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 1 Nov 2024 13:08:51 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 1 Nov 2024 13:08:51 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 1 Nov 2024 13:08:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qApfHWPl3k2SL0vYBInCbEYCNBN4JZn4Y09bfn33KP2jfnL4EGwv960EGHFDd4PHaxHgj3ZP6kSWJjDOqBGpzOkZXb7Wa7n6IF+aI7unfpYLskewMS2QoWk5HgepbVf+r4v3/Z6dWzBxk4emRUENy3uU9cEmTiBlYp1SOcto1KgBRGV/AZoPur9+s17LPWClSSuXoCOv+LuFGOD7ZbzXdHfeMGY6WxtK5MouzPhaz9Eq/7vMEoo1N7RjlWI3z7vejvcYc5XjBK7+AkmU7i9DwV5Y+BWjAYvqXBVh6Ek6EuHL9i22inRWy9k6mXSaVwGXUMIIB6pZU9NCaDRSazJzQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FXAYslyWQvCvqvCZhu/QLbejjpORssQy3IbiehaYWLM=;
 b=mQMbEeTjP9rJLNaQvNBAbJYl3zN1o5xkPes6W6SuJivcoVnBFTQuSGxYiTWWE/zf56CjRZdSnMP51FEZvYCBPpkU0CBK+EhkwMbbvkxuNkrM/NvShF91t4lzS+jgNor7YqmptznAlKU8jHHCPL+i9UpC/aGS7q1xlfNqUBEBnvk0btJzIh3YrfeWxEZT2iACS73O3vETrsffruDIucN7y+1AnZ3VFo60XpoYJ7xSQON8iR20gaKfU/L0v/KrTR1D+fnSap6BYhginxqUT3v6IffnvAU40/N0GX2dCuUXtR/7KDv02ZrH+i3PICA/qZHeQ3ztJJEJMKId4W1y5Z0G5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SA1PR11MB6710.namprd11.prod.outlook.com (2603:10b6:806:25a::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.25; Fri, 1 Nov
 2024 20:08:45 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Fri, 1 Nov 2024
 20:08:44 +0000
Date: Fri, 1 Nov 2024 16:08:41 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Alexander Coffin <alex@cyberialabs.net>
CC: <intel-gfx@lists.freedesktop.org>, Jani Nikula
 <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>
Subject: Re: i915 potential deadlock
Message-ID: <ZyU1SQjAfUQBgbPF@intel.com>
References: <50b67f9f-e615-414d-abf5-4ee82e35a353@cyberialabs.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <50b67f9f-e615-414d-abf5-4ee82e35a353@cyberialabs.net>
X-ClientProxiedBy: MW4PR04CA0305.namprd04.prod.outlook.com
 (2603:10b6:303:82::10) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SA1PR11MB6710:EE_
X-MS-Office365-Filtering-Correlation-Id: e5b25789-c817-4741-e3f7-08dcfab0fd03
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?3vLWnxXxwhAeTEya2nmudeOzSbUiaRjyzF044+whwtCfMgX95L4jhlyVIy?=
 =?iso-8859-1?Q?vn6G41Z4MUwJmdh/F2KRMIEgmNMchvba7slMGdZYxeHK5srd6cH/DsNx94?=
 =?iso-8859-1?Q?ECnSBTFC2KE6iElajJlach3FfbTh4kLS9HjO6XN+2GWnbpBkk5/6/FiP7m?=
 =?iso-8859-1?Q?ol7r/jaB3LQ1p3CSiFekthaWVeirPVaVelBFB35RDcZo4b87OegYZTK6yY?=
 =?iso-8859-1?Q?wSw89/oX+NzXtSiLLpo9d4p7jYYy2pPX2w/MrCjFZDHKNBBDehKtoXMBQ/?=
 =?iso-8859-1?Q?zoUsK0XrEM8eVwPQ+nZ1pNn2xBvAr3eL0JzX7RUNG7aoUliGsxddtBMM46?=
 =?iso-8859-1?Q?yqm0/AfM98oQQU0gPyVya5xRCdSLL/uoggmEFdFmToWBeCIZwC3O77oqmv?=
 =?iso-8859-1?Q?bVTjElx9OCWHdP6eB0lnImSKTCrNQauezCQV+uIE9LzmKiM2AtmfIhEo/1?=
 =?iso-8859-1?Q?jThQCcOSutUbjLbrt/dJb/f6Yo+beVZAZuxudKkDIpJFwmuloO+XrtBSe/?=
 =?iso-8859-1?Q?V1nHN9HRItPfHTC3/ZQRNMadwthuW370O0+y/ppvTSXq9byKekjVCRcNzn?=
 =?iso-8859-1?Q?1ThUlua2YoZ87nsVXeH8PVjbIaFFto1/POo1pCUF5NQS7ryniafxs0/jI2?=
 =?iso-8859-1?Q?lkOjuWFzZxOLIE+hc2KGo7BEMjgjbKOjYhkpRDsafxBEVcRVHzrouQf5Hz?=
 =?iso-8859-1?Q?wdfnE2CNOEAomIypqL31B2NQ+U/SYsRsMQaNQaXptUri81RZgrHzSFFhtN?=
 =?iso-8859-1?Q?/FQ1m46MeNHKI3d3SXJbbbndUYz/Gm+oOy4ReH/EXBwdEi5Vpgbd13wVSd?=
 =?iso-8859-1?Q?5Egak5wR97dm0qUyHC+67Aeu0Znd/OLQ6GiHDLXXneuiKubC0Oy6wZCLp9?=
 =?iso-8859-1?Q?aFqkb15IWXN2tddkr1NlNJ4UxJhx2TKkbYIxaF8UerhLB5o2B7KsWH+k/O?=
 =?iso-8859-1?Q?ImV/dw+R0RJ/xp4TP3iFyJi+QAtndH+FPyczRCzBseRrau2wwadrpJ7yit?=
 =?iso-8859-1?Q?n1+YfUzJQGUwZfL39Ji6f9bvBWJqdIg6h3L4ZghEJsWU0T0VIhA/VuHn9v?=
 =?iso-8859-1?Q?7YRCp5lpB9yzJzABj6z/wsQUPoCjmjdg3+BkyxiWt5dyfs2+RHoRYJK2oH?=
 =?iso-8859-1?Q?H7Fn5dHdMOtZOVBPMllSa3zZtc7gv3o8Z9dSZP8ODsL5kYDVXN1rvJcgRE?=
 =?iso-8859-1?Q?wZuF4liMGGaEG7+CKe3Iv0NAODVfVoYQBtbfhI589M8PAZzSkUrpQB4BXF?=
 =?iso-8859-1?Q?LUChj6zBagoLy2X6XHwexN784JVu/QTbbg8OjT1k+J3I+qoFYRr/43Pwxy?=
 =?iso-8859-1?Q?qpWK?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?LzuqS/caxNGQxM8vgNcQHbIYpZTuP3m050POnE2j3fYXzfnW9mRLRnDiRs?=
 =?iso-8859-1?Q?Z34vNIS2HUQc6ESzUboqQXeyeK8FKc8zq1T3VQ3IiEohEiwEOfuRquYiH4?=
 =?iso-8859-1?Q?TLRqdOG8PyRX3He4IEq6qnZtRfzCjwzstaHR3l15tpdF0A9SFF32TAhO8u?=
 =?iso-8859-1?Q?8f6a4xxwZwlMTB5Luz1al6cboIw9ZF8IBP+mxc1ARnqQOnKlU0x/58QS/6?=
 =?iso-8859-1?Q?3HL8aP317Iq4fYP9AkjXmD2uNVs18xWL6aTtF1UHJmC0BO9O2t5HnEKFGj?=
 =?iso-8859-1?Q?BQsk9K/nUfppbToMxZGs3QTIv6yFxnZFyVYRB+b4f16nUQX1aRzk+hPSCB?=
 =?iso-8859-1?Q?SJkpVWS7Q+fa5y2SWhFeOHmAnm0tlEfg5zaImRNW4iaEkDyf/A66RHNCha?=
 =?iso-8859-1?Q?m8yabbwj4tX4X7/ve8Q4B/+vxvUIIAqFoUqwHgU+V4H6fSeiF+uOkYIKlJ?=
 =?iso-8859-1?Q?Pwjl5bLHTyvpOT2cN3y2dwyDDU46Y+6zg2BrAr+qOsJeVzdlPA8Mt6UDdh?=
 =?iso-8859-1?Q?zF+WpzCCoRMF/8YxGxzRXyQzOhDYmrEDMv+3FYT0JxRJcasG1GlGk+gq20?=
 =?iso-8859-1?Q?1A8FIYKUI9V3Kay1bHbXh1YqBvi9Fwld1dsUOGd12mA3lEVQIYGSYAcNvd?=
 =?iso-8859-1?Q?ih6tJh/llca2+eRT6cb5NLlei/ZzEX7f3lvT9uCsd2hjpJP2I5UHryPnCO?=
 =?iso-8859-1?Q?Ix1nXXK16fEafKykbkhBqVpEGlLxtP5XmfJpWw5cl8Y6UOkd580jSLfd+U?=
 =?iso-8859-1?Q?NjFJ/HhDk2vEGdbDyF8n1NbA9d7ath9jUK6YCUPTiN6ltIPhFEeQzC7L3c?=
 =?iso-8859-1?Q?8kTNZo2DMK0ofMiW1GUmBgFKW1Xw/1P5NI15juZLh7PBrsRX1KhhSAD+ko?=
 =?iso-8859-1?Q?CToNLIRbe9KSBqyMy48Un96D4/yG0cWizV1yxFA8baHjp3T5iPg7Y2qETM?=
 =?iso-8859-1?Q?774H5gcoZMUaMqQ0G1UzizpNg7To+Ep7WIl/mxct0V7RV9pMNm5HsAsD9y?=
 =?iso-8859-1?Q?j1zJEV2Mfs5fbX64i6xUqmPIRJLSKlkw5cEhsLamh96orzNp7Sh5lsF0Fi?=
 =?iso-8859-1?Q?5NnqPFgHPalFCEeNdX5IzzNxaH+GHyXUfcPGobDSxHphWYXFWFODIdU4e6?=
 =?iso-8859-1?Q?2V4nvw/Yyh2smpokrdqwc2CKq4SOLxmN/DIdpqt7T9BAJA4ZcsT2zG1qAs?=
 =?iso-8859-1?Q?YClMb69KcM2tmWaLppkmctZEgw32SAuE6WL62+D0FmnaoqVuZcbIsLSIpI?=
 =?iso-8859-1?Q?H9e3IGRKPBLL46/7FdzXLOhY6D+NEC+LJReaddp9+ANHRtx+UPLZnaI9Q0?=
 =?iso-8859-1?Q?CpQDY3TR05rW+bFr88vPk92oCok90z3O5uzok21Sat1xqBCM4oMsksVT/T?=
 =?iso-8859-1?Q?/85iOf5Kmr8Xs9KaY8sLUmsCLG5zxGKV14vCAgcz7ITG8AMwD/f4T8BZm2?=
 =?iso-8859-1?Q?dtXhS6AQZTcvSu5C7KW2XX31AjBRcXFkMNbDnJnL1KynDy+sGIP4bzi0vG?=
 =?iso-8859-1?Q?pmQHYk42KlHqJelSDQbp9S7153wHoNknLvI8xf0fY4IQlJsZ0Y5GHObJKT?=
 =?iso-8859-1?Q?CgSNIfpi9Su17m4nkeNDKTGDYL/rGBUE8dr4fUej/5afA7juj0HTTM6sJZ?=
 =?iso-8859-1?Q?gc9rcLl2E8fW8wkRQyU+bgfj6xxr87BJkSguq+LjtOIlsm5F2ycL4hxA?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e5b25789-c817-4741-e3f7-08dcfab0fd03
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Nov 2024 20:08:44.9581 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 24Upk6b5enD/r5L+tAWuyEgB5i6hCxpq8Q/53mz6Fm+PMAyseJu+sSTnszNkpacSe+VqJZhuTF2yrD1gUm/o1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6710
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

On Thu, Oct 31, 2024 at 10:24:45AM -0700, Alexander Coffin wrote:
> 
>    Hello again, 

Hi Alexander,

>     I attempted to send a potential deadlock issue from my work email (acoffin@sfcompute.com) and suspect that using gmail with a very long email was causing issues as it didn't seem to show up from what I can see on the mailing list. I am retrying from my personal email now. Apologizes to anyone who receives this message twice. 

I'm sorry for that. Our list is moderated for non-subscribers because of the
amount of spams we receive daily. But I eventually got to your msg and
allowed it to go through.

>     I was attempting to investigate an issue that I believe may be related to iwlwifi, but managed to stumble across this lockdep report first when I was attempting to debug the kernel in general. This is from Linux Kernel version v6.1.112 (technically the Debian patched version, but I don't think that is relevant to this issue). 

Could you please file a bug in our gitlab?
https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html

The report in the emails are easily ignored and lost.

>    
> 
>    
> 
>     I haven't had a chance to read this code yet, but I thought that I would report it so that someone more familiar with this code base could have a chance to investigate before I do (if I have time). As far as I can see there weren't any changes to i915 after 6.1.112 that were relevant (I only see "drm/i915/gem: fix bitwise and logical AND mixup") so unless a backport is missing I believe that this issue would also affect mainline version, but as I don't know the steps to reproduce this issue I can't easily test the mainline version.

Well, so many things changed from 6.1... Is it possible to test with a drm-tip
kernel and see if it is still reproduced?

https://gitlab.freedesktop.org/drm/tip

With a more recent from your distro at least, it would be already better
than this old 6.1.

Thanks,
Rodrigo.

 
>    
> 
>    
> 
>     I am including 2 text snippets. 
>    
> 
>     1. A releveant log snippet from `journalctl -k` 
>    
> 
>     2. An annotated version of the prior relevant portion (passed through `./scripts/decode_stacktrace.sh -r 6.1.112`). 
>    
> 
>    
> 
>     Please let me know if anyone wants the full dmesg log and I will attempt to figure out how to send it without making email clients angry. 
>    
> 
>    
> 
>     File 1: 
>    
> 
>    
> 
>     ``` 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: ====================================================== 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: WARNING: possible circular locking dependency detected 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: 6.1.112 #2 Not tainted 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: ------------------------------------------------------ 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: Xorg/1263 is trying to acquire lock: 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: ffffffff871e3380 (fs_reclaim){+.+.}-{0:0}, at: __kmem_cache_alloc_node+0x4a/0x290 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: 
>    
> 
>                                             but task is already holding lock: 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: ffff9e0694bdc810 (wakeref.mutex#2/1){+.+.}-{3:3}, at: __intel_wakeref_get_first+0x1f/0x90 [i915] 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: 
>    
> 
>                                             which lock already depends on the new lock. 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: 
>    
> 
>                                             the existing dependency chain (in reverse order) is: 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: 
>    
> 
>                                             -> #2 (wakeref.mutex#2/1){+.+.}-{3:3}: 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        __mutex_lock+0xbe/0xb90 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        __intel_wakeref_get_first+0x1f/0x90 [i915] 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        __i915_vma_active+0xa3/0xb0 [i915] 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        i915_active_acquire+0x56/0xd0 [i915] 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        i915_vma_pin_ww+0x1b2/0x9c0 [i915] 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        intel_pin_fb_obj_dpt.constprop.0+0x209/0x350 [i915] 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        intel_plane_pin_fb+0xb2/0x100 [i915] 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        intel_prepare_plane_fb+0xf5/0x2f0 [i915] 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        drm_atomic_helper_prepare_planes+0x71/0x160 [drm_kms_helper] 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        intel_atomic_commit+0x8e/0x3c0 [i915] 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        drm_atomic_helper_page_flip+0x5f/0xd0 [drm_kms_helper] 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        drm_mode_page_flip_ioctl+0x604/0x6d0 [drm] 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        drm_ioctl_kernel+0xcd/0x170 [drm] 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        drm_ioctl+0x22f/0x410 [drm] 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        __x64_sys_ioctl+0x8d/0xd0 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        do_syscall_64+0x55/0xb0 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        entry_SYSCALL_64_after_hwframe+0x6e/0xd8 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: 
>    
> 
>                                             -> #1 (i915_active){+.+.}-{3:3}: 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        i915_vma_instance+0x13c/0x580 [i915] 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        intel_alloc_initial_plane_obj.isra.0+0x15d/0x520 [i915] 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        intel_crtc_initial_plane_config+0x86/0x2d0 [i915] 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        intel_modeset_init_nogem+0x359/0xeb0 [i915] 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        i915_driver_probe+0x604/0xe60 [i915] 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        local_pci_probe+0x3e/0x80 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        pci_device_probe+0xc3/0x240 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        really_probe+0xdb/0x380 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        __driver_probe_device+0x78/0x120 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        driver_probe_device+0x1f/0x90 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        __driver_attach+0xd2/0x1c0 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        bus_for_each_dev+0x87/0xd0 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        bus_add_driver+0x1b1/0x200 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        driver_register+0x89/0xe0 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        get_max_energy_counter+0x1f/0x50 [intel_rapl_common] 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        do_one_initcall+0x6d/0x280 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        do_init_module+0x4a/0x1f0 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        __do_sys_finit_module+0xac/0x120 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        do_syscall_64+0x55/0xb0 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        entry_SYSCALL_64_after_hwframe+0x6e/0xd8 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: 
>    
> 
>                                             -> #0 (fs_reclaim){+.+.}-{0:0}: 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        __lock_acquire+0x12f4/0x2000 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        lock_acquire+0xc4/0x2a0 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        fs_reclaim_acquire+0xa2/0xe0 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        __kmem_cache_alloc_node+0x4a/0x290 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        __kmalloc+0x4d/0x150 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        acpi_ns_internalize_name+0x93/0xf0 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        acpi_ns_get_node_unlocked+0x80/0x110 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        acpi_ns_get_node+0x3a/0x60 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        acpi_get_handle+0x57/0xb0 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        acpi_has_method+0x29/0x50 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        acpi_pci_set_power_state+0x44/0x110 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        pci_power_up+0x2e/0x180 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        pci_pm_runtime_resume+0x2f/0xe0 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        __rpm_callback+0x41/0x170 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        rpm_callback+0x5d/0x70 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        rpm_resume+0x5e7/0x830 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        __pm_runtime_resume+0x47/0x90 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        intel_runtime_pm_get+0x1a/0x80 [i915] 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        __intel_wakeref_get_first+0x31/0x90 [i915] 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        i915_gem_do_execbuffer+0x2417/0x2cc0 [i915] 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        i915_gem_execbuffer2_ioctl+0x11a/0x2b0 [i915] 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        drm_ioctl_kernel+0xcd/0x170 [drm] 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        drm_ioctl+0x22f/0x410 [drm] 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        __x64_sys_ioctl+0x8d/0xd0 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        do_syscall_64+0x55/0xb0 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        entry_SYSCALL_64_after_hwframe+0x6e/0xd8 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: 
>    
> 
>                                             other info that might help us debug this: 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: Chain exists of: 
>    
> 
>                                               fs_reclaim --> i915_active --> wakeref.mutex#2/1 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  Possible unsafe locking scenario: 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        CPU0                    CPU1 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        ----                    ---- 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:   lock(wakeref.mutex#2/1); 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:                                lock(i915_active); 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:                                lock(wakeref.mutex#2/1); 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:   lock(fs_reclaim); 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: 
>    
> 
>                                              *** DEADLOCK *** 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: 1 lock held by Xorg/1263: 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  #0: ffff9e0694bdc810 (wakeref.mutex#2/1){+.+.}-{3:3}, at: __intel_wakeref_get_first+0x1f/0x90 [i915] 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: 
>    
> 
>                                             stack backtrace: 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: CPU: 8 PID: 1263 Comm: Xorg Not tainted 6.1.112 #2 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: Hardware name: Dell Inc. XPS 15 9530/013F3N, BIOS 1.15.0 07/08/2024 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: Call Trace: 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  <TASK> 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  dump_stack_lvl+0x5b/0x77 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  check_noncircular+0x11c/0x130 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  __lock_acquire+0x12f4/0x2000 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  lock_acquire+0xc4/0x2a0 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  ? __kmem_cache_alloc_node+0x4a/0x290 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  ? save_trace+0x3e/0x2c0 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  fs_reclaim_acquire+0xa2/0xe0 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  ? __kmem_cache_alloc_node+0x4a/0x290 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  __kmem_cache_alloc_node+0x4a/0x290 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  ? acpi_ns_internalize_name+0x93/0xf0 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  ? acpi_ns_internalize_name+0x93/0xf0 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  __kmalloc+0x4d/0x150 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  acpi_ns_internalize_name+0x93/0xf0 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  ? lock_acquire+0xc4/0x2a0 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  acpi_ns_get_node_unlocked+0x80/0x110 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  ? down_timeout+0x4b/0x70 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  ? acpi_ns_get_node+0x3a/0x60 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  acpi_ns_get_node+0x3a/0x60 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  acpi_get_handle+0x57/0xb0 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  acpi_has_method+0x29/0x50 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  acpi_pci_set_power_state+0x44/0x110 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  pci_power_up+0x2e/0x180 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  pci_pm_runtime_resume+0x2f/0xe0 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  ? pci_pm_restore_noirq+0xc0/0xc0 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  __rpm_callback+0x41/0x170 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  ? pci_pm_restore_noirq+0xc0/0xc0 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  rpm_callback+0x5d/0x70 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  ? pci_pm_restore_noirq+0xc0/0xc0 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  rpm_resume+0x5e7/0x830 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  __pm_runtime_resume+0x47/0x90 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  intel_runtime_pm_get+0x1a/0x80 [i915] 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  __intel_wakeref_get_first+0x31/0x90 [i915] 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  i915_gem_do_execbuffer+0x2417/0x2cc0 [i915] 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  i915_gem_execbuffer2_ioctl+0x11a/0x2b0 [i915] 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  ? i915_gem_do_execbuffer+0x2cc0/0x2cc0 [i915] 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  drm_ioctl_kernel+0xcd/0x170 [drm] 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  drm_ioctl+0x22f/0x410 [drm] 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  ? i915_gem_do_execbuffer+0x2cc0/0x2cc0 [i915] 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  __x64_sys_ioctl+0x8d/0xd0 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  do_syscall_64+0x55/0xb0 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  ? kfree+0x107/0x140 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  ? ___sys_recvmsg+0x9c/0xe0 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  ? __sys_recvmsg+0xa7/0xc0 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  ? exit_to_user_mode_prepare+0x19e/0x250 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  ? lockdep_hardirqs_on_prepare+0xdc/0x190 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  ? do_syscall_64+0x61/0xb0 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  entry_SYSCALL_64_after_hwframe+0x6e/0xd8 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: RIP: 0033:0x7f258ef06c5b 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: Code: 00 48 89 44 24 18 31 c0 48 8d 44 24 60 c7 04 24 10 00 00 00 48 89 44 24 08 48 8d 44 24 20 48 89 44 24 10 b8 10 00 00 00 0f 05 <89> c2 3d 00 f0 ff ff 77 1c 48 8b 44 24 18 64 48 2b 04 25 28 00 00 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: RSP: 002b:00007ffcd0ee2350 EFLAGS: 00000246 ORIG_RAX: 0000000000000010 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: RAX: ffffffffffffffda RBX: 0000557019e70950 RCX: 00007f258ef06c5b 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: RDX: 00007ffcd0ee2400 RSI: 0000000040406469 RDI: 0000000000000012 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: RBP: 00007ffcd0ee2490 R08: 0000000000000007 R09: 000055701b5d64f0 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: R10: 3002f0996e1d00f9 R11: 0000000000000246 R12: 0000000000000000 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: R13: 00007ffcd0ee2400 R14: 0000000000000012 R15: 000055701b743fd0 
>    
> 
>     ``` 
>    
> 
>    
> 
>     File 2: 
>    
> 
>    
> 
>     ``` 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: ====================================================== 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: WARNING: possible circular locking dependency detected 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: 6.1.112 #2 Not tainted 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: ------------------------------------------------------ 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: Xorg/1263 is trying to acquire lock: 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: ffffffff871e3380 (fs_reclaim){+.+.}-{0:0}, at: __kmem_cache_alloc_node (./include/linux/sched/mm.h:272 mm/slab.h:710 mm/slub.c:3318 mm/slub.c:3437) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: 
>    
> 
>     but task is already holding lock: 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: ffff9e0694bdc810 (wakeref.mutex#2/1){+.+.}-{3:3}, at: __intel_wakeref_get_first (./arch/x86/include/asm/atomic.h:29 ./include/linux/atomic/atomic-instrumented.h:28 drivers/gpu/drm/i915/intel_wakeref.c:34) i915 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: 
>    
> 
>     which lock already depends on the new lock. 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: 
>    
> 
>     the existing dependency chain (in reverse order) is: 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: 
>    
> 
>     -> #2 (wakeref.mutex#2/1){+.+.}-{3:3}: 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: __mutex_lock (./arch/x86/include/asm/jump_label.h:27 ./include/linux/jump_label.h:207 ./include/trace/events/lock.h:95 kernel/locking/mutex.c:605 kernel/locking/mutex.c:747) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: __intel_wakeref_get_first (./arch/x86/include/asm/atomic.h:29 ./include/linux/atomic/atomic-instrumented.h:28 drivers/gpu/drm/i915/intel_wakeref.c:34) i915 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: __i915_vma_active (./drivers/gpu/drm/i915/intel_wakeref.h:85 drivers/gpu/drm/i915/gt/intel_gt_pm.h:21 drivers/gpu/drm/i915/i915_vma.c:112) i915 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: i915_active_acquire (drivers/gpu/drm/i915/i915_active.c:520 drivers/gpu/drm/i915/i915_active.c:503) i915 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: i915_vma_pin_ww (drivers/gpu/drm/i915/i915_vma.c:1506) i915 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: intel_pin_fb_obj_dpt.constprop.0 (drivers/gpu/drm/i915/display/intel_fb_pin.c:85) i915 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: intel_plane_pin_fb (drivers/gpu/drm/i915/display/intel_fb_pin.c:269) i915 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: intel_prepare_plane_fb (drivers/gpu/drm/i915/display/intel_atomic_plane.c:1032) i915 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: drm_atomic_helper_prepare_planes (drivers/gpu/drm/drm_atomic_helper.c:2571 drivers/gpu/drm/drm_atomic_helper.c:2547) drm_kms_helper 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: intel_atomic_commit (drivers/gpu/drm/i915/display/intel_display.c:6964 drivers/gpu/drm/i915/display/intel_display.c:7757) i915 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: drm_atomic_helper_page_flip (drivers/gpu/drm/drm_atomic_helper.c:3596) drm_kms_helper 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: drm_mode_page_flip_ioctl (drivers/gpu/drm/drm_plane.c:1368) drm 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: drm_ioctl_kernel (drivers/gpu/drm/drm_ioctl.c:788) drm 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: drm_ioctl (./include/linux/thread_info.h:199 ./include/linux/thread_info.h:235 ./include/linux/uaccess.h:168 drivers/gpu/drm/drm_ioctl.c:892) drm 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: __x64_sys_ioctl (fs/ioctl.c:51 fs/ioctl.c:870 fs/ioctl.c:856 fs/ioctl.c:856) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: do_syscall_64 (arch/x86/entry/common.c:51 arch/x86/entry/common.c:81) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: entry_SYSCALL_64_after_hwframe (arch/x86/entry/entry_64.S:121) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: 
>    
> 
>     -> #1 (i915_active){+.+.}-{3:3}: 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: i915_vma_instance (drivers/gpu/drm/i915/i915_vma.c:159 drivers/gpu/drm/i915/i915_vma.c:325) i915 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: intel_alloc_initial_plane_obj.isra.0 (drivers/gpu/drm/i915/display/intel_plane_initial.c:139 drivers/gpu/drm/i915/display/intel_plane_initial.c:183) i915 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: intel_crtc_initial_plane_config (drivers/gpu/drm/i915/display/intel_plane_initial.c:229 drivers/gpu/drm/i915/display/intel_plane_initial.c:320) i915 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: intel_modeset_init_nogem (drivers/gpu/drm/i915/display/intel_display.c:8794 (discriminator 2)) i915 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: i915_driver_probe (drivers/gpu/drm/i915/i915_driver.c:951) i915 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: local_pci_probe (drivers/pci/pci-driver.c:324) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: pci_device_probe (drivers/pci/pci-driver.c:392 drivers/pci/pci-driver.c:417 drivers/pci/pci-driver.c:460) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: really_probe (drivers/base/dd.c:560 drivers/base/dd.c:639) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: __driver_probe_device (drivers/base/dd.c:785) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: driver_probe_device (drivers/base/dd.c:815) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: __driver_attach (drivers/base/dd.c:1202) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: bus_for_each_dev (drivers/base/bus.c:301) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: bus_add_driver (drivers/base/bus.c:618) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: driver_register (drivers/base/driver.c:246) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: get_max_energy_counter (drivers/powercap/intel_rapl_common.c:643 drivers/powercap/intel_rapl_common.c:194) intel_rapl_common 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: do_one_initcall (init/main.c:1298) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: do_init_module (kernel/module/main.c:2469) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: __do_sys_finit_module (kernel/module/main.c:2978) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: do_syscall_64 (arch/x86/entry/common.c:51 arch/x86/entry/common.c:81) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: entry_SYSCALL_64_after_hwframe (arch/x86/entry/entry_64.S:121) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: 
>    
> 
>     -> #0 (fs_reclaim){+.+.}-{0:0}: 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: __lock_acquire (kernel/locking/lockdep.c:3091 kernel/locking/lockdep.c:3209 kernel/locking/lockdep.c:3825 kernel/locking/lockdep.c:5049) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: lock_acquire (kernel/locking/lockdep.c:467 kernel/locking/lockdep.c:5664 kernel/locking/lockdep.c:5627) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: fs_reclaim_acquire (mm/page_alloc.c:4682 mm/page_alloc.c:4695) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: __kmem_cache_alloc_node (./include/linux/sched/mm.h:272 mm/slab.h:710 mm/slub.c:3318 mm/slub.c:3437) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: __kmalloc (mm/slab_common.c:937 mm/slab_common.c:949) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: acpi_ns_internalize_name (./include/linux/slab.h:562 ./include/linux/slab.h:693 ./include/acpi/platform/aclinuxex.h:57 drivers/acpi/acpica/nsutils.c:331) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: acpi_ns_get_node_unlocked (drivers/acpi/acpica/nsutils.c:666) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: acpi_ns_get_node (drivers/acpi/acpica/nsutils.c:729) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: acpi_get_handle (drivers/acpi/acpica/nsxfname.c:99) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: acpi_has_method (drivers/acpi/utils.c:591) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: acpi_pci_set_power_state (drivers/pci/pci-acpi.c:1069 (discriminator 1)) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: pci_power_up (drivers/pci/pci.c:1212) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: pci_pm_runtime_resume (drivers/pci/pci-driver.c:570 (discriminator 4) drivers/pci/pci-driver.c:575 (discriminator 4) drivers/pci/pci-driver.c:1349 (discriminator 4)) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: __rpm_callback (drivers/base/power/runtime.c:395) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: rpm_callback (drivers/base/power/runtime.c:532) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: rpm_resume (drivers/base/power/runtime.c:912) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: __pm_runtime_resume (./include/linux/spinlock.h:406 drivers/base/power/runtime.c:1171) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: intel_runtime_pm_get (drivers/gpu/drm/i915/intel_runtime_pm.c:358 drivers/gpu/drm/i915/intel_runtime_pm.c:402) i915 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: __intel_wakeref_get_first (drivers/gpu/drm/i915/intel_wakeref.c:39) i915 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: i915_gem_do_execbuffer (./drivers/gpu/drm/i915/intel_wakeref.h:85 ./drivers/gpu/drm/i915/gt/intel_gt_pm.h:21 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2710 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:3430) i915 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: i915_gem_execbuffer2_ioctl (drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:3580) i915 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: drm_ioctl_kernel (drivers/gpu/drm/drm_ioctl.c:788) drm 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: drm_ioctl (./include/linux/thread_info.h:199 ./include/linux/thread_info.h:235 ./include/linux/uaccess.h:168 drivers/gpu/drm/drm_ioctl.c:892) drm 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: __x64_sys_ioctl (fs/ioctl.c:51 fs/ioctl.c:870 fs/ioctl.c:856 fs/ioctl.c:856) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: do_syscall_64 (arch/x86/entry/common.c:51 arch/x86/entry/common.c:81) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: entry_SYSCALL_64_after_hwframe (arch/x86/entry/entry_64.S:121) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: 
>    
> 
>     other info that might help us debug this: 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: Chain exists of: 
>    
> 
>     fs_reclaim --> i915_active --> wakeref.mutex#2/1 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  Possible unsafe locking scenario: 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        CPU0                    CPU1 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:        ----                    ---- 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:   lock(wakeref.mutex#2/1); 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:                                lock(i915_active); 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:                                lock(wakeref.mutex#2/1); 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:   lock(fs_reclaim); 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: 
>    
> 
>     *** DEADLOCK *** 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: 1 lock held by Xorg/1263: 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: #0: ffff9e0694bdc810 (wakeref.mutex#2/1){+.+.}-{3:3}, at: __intel_wakeref_get_first (./arch/x86/include/asm/atomic.h:29 ./include/linux/atomic/atomic-instrumented.h:28 drivers/gpu/drm/i915/intel_wakeref.c:34) i915 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: 
>    
> 
>     stack backtrace: 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: CPU: 8 PID: 1263 Comm: Xorg Not tainted 6.1.112 #2 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: Hardware name: Dell Inc. XPS 15 9530/013F3N, BIOS 1.15.0 07/08/2024 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: Call Trace: 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel:  <TASK> 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: dump_stack_lvl (lib/dump_stack.c:110 (discriminator 4)) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: check_noncircular (kernel/locking/lockdep.c:2173) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: __lock_acquire (kernel/locking/lockdep.c:3091 kernel/locking/lockdep.c:3209 kernel/locking/lockdep.c:3825 kernel/locking/lockdep.c:5049) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: lock_acquire (kernel/locking/lockdep.c:467 kernel/locking/lockdep.c:5664 kernel/locking/lockdep.c:5627) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: ? __kmem_cache_alloc_node (./include/linux/sched/mm.h:272 mm/slab.h:710 mm/slub.c:3318 mm/slub.c:3437) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: ? save_trace (kernel/locking/lockdep.c:584) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: fs_reclaim_acquire (mm/page_alloc.c:4682 mm/page_alloc.c:4695) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: ? __kmem_cache_alloc_node (./include/linux/sched/mm.h:272 mm/slab.h:710 mm/slub.c:3318 mm/slub.c:3437) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: __kmem_cache_alloc_node (./include/linux/sched/mm.h:272 mm/slab.h:710 mm/slub.c:3318 mm/slub.c:3437) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: ? acpi_ns_internalize_name (./include/linux/slab.h:562 ./include/linux/slab.h:693 ./include/acpi/platform/aclinuxex.h:57 drivers/acpi/acpica/nsutils.c:331) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: ? acpi_ns_internalize_name (./include/linux/slab.h:562 ./include/linux/slab.h:693 ./include/acpi/platform/aclinuxex.h:57 drivers/acpi/acpica/nsutils.c:331) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: __kmalloc (mm/slab_common.c:937 mm/slab_common.c:949) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: acpi_ns_internalize_name (./include/linux/slab.h:562 ./include/linux/slab.h:693 ./include/acpi/platform/aclinuxex.h:57 drivers/acpi/acpica/nsutils.c:331) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: ? lock_acquire (kernel/locking/lockdep.c:467 kernel/locking/lockdep.c:5664 kernel/locking/lockdep.c:5627) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: acpi_ns_get_node_unlocked (drivers/acpi/acpica/nsutils.c:666) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: ? down_timeout (kernel/locking/semaphore.c:173) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: ? acpi_ns_get_node (drivers/acpi/acpica/nsutils.c:729) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: acpi_ns_get_node (drivers/acpi/acpica/nsutils.c:729) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: acpi_get_handle (drivers/acpi/acpica/nsxfname.c:99) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: acpi_has_method (drivers/acpi/utils.c:591) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: acpi_pci_set_power_state (drivers/pci/pci-acpi.c:1069 (discriminator 1)) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: pci_power_up (drivers/pci/pci.c:1212) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: pci_pm_runtime_resume (drivers/pci/pci-driver.c:570 (discriminator 4) drivers/pci/pci-driver.c:575 (discriminator 4) drivers/pci/pci-driver.c:1349 (discriminator 4)) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: ? pci_pm_restore_noirq (drivers/pci/pci-driver.c:1338) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: __rpm_callback (drivers/base/power/runtime.c:395) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: ? pci_pm_restore_noirq (drivers/pci/pci-driver.c:1338) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: rpm_callback (drivers/base/power/runtime.c:532) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: ? pci_pm_restore_noirq (drivers/pci/pci-driver.c:1338) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: rpm_resume (drivers/base/power/runtime.c:912) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: __pm_runtime_resume (./include/linux/spinlock.h:406 drivers/base/power/runtime.c:1171) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: intel_runtime_pm_get (drivers/gpu/drm/i915/intel_runtime_pm.c:358 drivers/gpu/drm/i915/intel_runtime_pm.c:402) i915 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: __intel_wakeref_get_first (drivers/gpu/drm/i915/intel_wakeref.c:39) i915 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: i915_gem_do_execbuffer (./drivers/gpu/drm/i915/intel_wakeref.h:85 ./drivers/gpu/drm/i915/gt/intel_gt_pm.h:21 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2710 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:3430) i915 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: i915_gem_execbuffer2_ioctl (drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:3580) i915 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: ? i915_gem_do_execbuffer (drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:3548) i915 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: drm_ioctl_kernel (drivers/gpu/drm/drm_ioctl.c:788) drm 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: drm_ioctl (./include/linux/thread_info.h:199 ./include/linux/thread_info.h:235 ./include/linux/uaccess.h:168 drivers/gpu/drm/drm_ioctl.c:892) drm 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: ? i915_gem_do_execbuffer (drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:3548) i915 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: __x64_sys_ioctl (fs/ioctl.c:51 fs/ioctl.c:870 fs/ioctl.c:856 fs/ioctl.c:856) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: do_syscall_64 (arch/x86/entry/common.c:51 arch/x86/entry/common.c:81) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: ? kfree (./include/trace/events/kmem.h:94 mm/slab_common.c:975) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: ? ___sys_recvmsg (net/socket.c:2778) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: ? __sys_recvmsg (./include/linux/file.h:33 net/socket.c:2807) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: ? exit_to_user_mode_prepare (./arch/x86/include/asm/entry-common.h:57 kernel/entry/common.c:212) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: ? lockdep_hardirqs_on_prepare (kernel/locking/lockdep.c:4256 kernel/locking/lockdep.c:4315 kernel/locking/lockdep.c:4267) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: ? do_syscall_64 (arch/x86/entry/common.c:88) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: entry_SYSCALL_64_after_hwframe (arch/x86/entry/entry_64.S:121) 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: RIP: 0033:0x7f258ef06c5b 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: Code: 00 48 89 44 24 18 31 c0 48 8d 44 24 60 c7 04 24 10 00 00 00 48 89 44 24 08 48 8d 44 24 20 48 89 44 24 10 b8 10 00 00 00 0f 05 <89> c2 3d 00 f0 ff ff 77 1c 48 8b 44 24 18 64 48 2b 04 25 28 00 00 
>    
> 
>     All code 
>    
> 
>     ======== 
>    
> 
>         0:  00 48 89                add    %cl,-0x77(%rax) 
>    
> 
>         3:  44 24 18                rex.R and $0x18,%al 
>    
> 
>         6:  31 c0                   xor    %eax,%eax 
>    
> 
>         8:  48 8d 44 24 60          lea    0x60(%rsp),%rax 
>    
> 
>         d:  c7 04 24 10 00 00 00    movl   $0x10,(%rsp) 
>    
> 
>        14:  48 89 44 24 08          mov    %rax,0x8(%rsp) 
>    
> 
>        19:  48 8d 44 24 20          lea    0x20(%rsp),%rax 
>    
> 
>        1e:  48 89 44 24 10          mov    %rax,0x10(%rsp) 
>    
> 
>        23:  b8 10 00 00 00          mov    $0x10,%eax 
>    
> 
>        28:  0f 05                   syscall 
>    
> 
>        2a:* 89 c2                   mov    %eax,%edx        <-- trapping instruction 
>    
> 
>        2c:  3d 00 f0 ff ff          cmp    $0xfffff000,%eax 
>    
> 
>        31:  77 1c                   ja     0x4f 
>    
> 
>        33:  48 8b 44 24 18          mov    0x18(%rsp),%rax 
>    
> 
>        38:  64                      fs 
>    
> 
>        39:  48                      rex.W 
>    
> 
>        3a:  2b                      .byte 0x2b 
>    
> 
>        3b:  04 25                   add    $0x25,%al 
>    
> 
>        3d:  28 00                   sub    %al,(%rax) 
>    
> 
>         ... 
>    
> 
>    
> 
>     Code starting with the faulting instruction 
>    
> 
>     =========================================== 
>    
> 
>         0:  89 c2                   mov    %eax,%edx 
>    
> 
>         2:  3d 00 f0 ff ff          cmp    $0xfffff000,%eax 
>    
> 
>         7:  77 1c                   ja     0x25 
>    
> 
>         9:  48 8b 44 24 18          mov    0x18(%rsp),%rax 
>    
> 
>         e:  64                      fs 
>    
> 
>         f:  48                      rex.W 
>    
> 
>        10:  2b                      .byte 0x2b 
>    
> 
>        11:  04 25                   add    $0x25,%al 
>    
> 
>        13:  28 00                   sub    %al,(%rax) 
>    
> 
>         ... 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: RSP: 002b:00007ffcd0ee2350 EFLAGS: 00000246 ORIG_RAX: 0000000000000010 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: RAX: ffffffffffffffda RBX: 0000557019e70950 RCX: 00007f258ef06c5b 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: RDX: 00007ffcd0ee2400 RSI: 0000000040406469 RDI: 0000000000000012 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: RBP: 00007ffcd0ee2490 R08: 0000000000000007 R09: 000055701b5d64f0 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: R10: 3002f0996e1d00f9 R11: 0000000000000246 R12: 0000000000000000 
>    
> 
>     Oct 30 12:06:41 acoffin-xps-15 kernel: R13: 00007ffcd0ee2400 R14: 0000000000000012 R15: 000055701b743fd0 
>    
> 
>     ``` 
>    
> 
>    
> 
>     Regards, 
>    
> 
>    
> 
>     Alex Coffin 
>    
> 
>   
