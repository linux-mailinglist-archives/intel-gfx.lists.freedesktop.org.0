Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62A2BAF7C49
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jul 2025 17:33:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDE4810E89E;
	Thu,  3 Jul 2025 15:33:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F6gOLBMB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1A3210E896;
 Thu,  3 Jul 2025 15:33:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751556818; x=1783092818;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=BOGpbdAupK8DumkG0J4fMElSg6kE48nWeuxK43/ZSGE=;
 b=F6gOLBMBHt8eJhOru3pNJJbRa3KHgecFBp5o0Y+yBZJIlyb2Mq1+YcXs
 qSfwaAHsr34SXS7L16m8lGi6g9oK3pnE6Fy2AIGy9bGwhqJUmv+jcqGbT
 9GUI8K4gHRdXo+QVv5Stl8S++JClWK4vvTcRctlOgD6ev+t27urC1jpgj
 EhhoTCpu82pTHQFYdcnfhDKfXBgS1FFkFaX+uIIIVHO1qmF3zhaK3L0HV
 iThRATQXq463llEeNzhMWj3y99dMBM/n1++DQsjHtmX3RxmCQ4tvOFuM3
 8esZ5sF/a5Eb9VPDSMQB8TP/mrzSqi0uLGDeAcs7k1h47ZqMnL23BnnR+ A==;
X-CSE-ConnectionGUID: 21BiLkHGQiixeS7r6upkVA==
X-CSE-MsgGUID: 63mkHoMBRuiwJGoglXquxw==
X-IronPort-AV: E=McAfee;i="6800,10657,11483"; a="54028716"
X-IronPort-AV: E=Sophos;i="6.16,284,1744095600"; d="scan'208";a="54028716"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 08:33:38 -0700
X-CSE-ConnectionGUID: IfEKH2DSR3KJnePzNQVf6w==
X-CSE-MsgGUID: tmODaF5nSYWL485JtcXOFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,284,1744095600"; d="scan'208";a="154969171"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 08:33:37 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 3 Jul 2025 08:33:36 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 3 Jul 2025 08:33:36 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.61)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 3 Jul 2025 08:33:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cl6Lfg1NfNFvq72pHWqnDCa2cuf9I07RRQnm/xXaAHA6sC4lkzx70CtrtatDFZhstHHUIYIQLdMHzESfBkQA780in2NKZ6ZBYukryi46Yn6pjOOhqp5O/S0L+o3d+oHlKwEvL0fJGp0rDPVOHw/wU+kvNCSwvE8gkIFEzUD+8SmmGZagrAOjnlcfwBGKv1QZXxBLfq5zWA6FvDsP53jXjgyYuQC0qMOmtB1gPHBTc1jwe0O4E2IyHvZrAurLktADnIifw9Ipfh7hYZt4nbBwIENEF4kFoJP+tUOQIDULIMdLLHwOaT9P6VbH77SLWTMqax3ik5qDo0Xi7C9MzzgnUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fgWjjrOSP1DzbylhnI9CVxX7d2nQOWUz3RZ3WCsUBV4=;
 b=ckwK4zRca7YXAV9D51K1/Yv5wRy952E3kFiCNosHWk14ZJmC48MRg5PjFoBGuqhr/+7zlVgdkCOoRle7LEiCxWg34ajZOUgEUgdpUV7CM4JsE3wxVvCCOXVA3ZzIQ2+00ryLu/HKaNp4qIzEmHKlWSvzZrSUrc6gJThOAn7Rp4rqUSTzuH2rKCQkYAo7OaUFd581oERI5Nrr7G0DAmS66l+63BSXWhqiqaMeRvxqO67cocC15MXq8BF/4VnLuD3F7d3KOl1tFCfXTJPbZAxefUHPjqFGQZAvp5tcpsPDHGILnQb5nx8bZWhjkdKw7Y+ntkXm4Fr9qoD13/bcwodCyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by MW4PR11MB5933.namprd11.prod.outlook.com (2603:10b6:303:16a::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.20; Thu, 3 Jul
 2025 15:33:34 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%5]) with mapi id 15.20.8857.022; Thu, 3 Jul 2025
 15:33:34 +0000
Date: Thu, 3 Jul 2025 10:33:32 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <ryszard.knop@intel.com>
Subject: Re: [PATCH topic/core-for-CI] Revert "ftrace: Allow configuring
 global trace buffer size (for dump-on-oops)"
Message-ID: <bmczk4yc73vfefuvvvqfrlzefhc5gk7af5om7ljtrj3nildliw@rwdijxz6u4o4>
References: <20250630151728.316208-2-lucas.demarchi@intel.com>
 <bad8ddb51d688adef738973cdc12916f7c022aae@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <bad8ddb51d688adef738973cdc12916f7c022aae@intel.com>
X-ClientProxiedBy: BYAPR07CA0056.namprd07.prod.outlook.com
 (2603:10b6:a03:60::33) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|MW4PR11MB5933:EE_
X-MS-Office365-Filtering-Correlation-Id: 1eee75ea-7b3c-44c0-ef42-08ddba46f90e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?s+wxiERxGGRmdN12Fmt7lY3EPy8J9sz3oWeaKMiaOwHdBOGM2G3HofUexnCO?=
 =?us-ascii?Q?7BlfCBuz8Vu6ZxmgwJWCkYCQt8Hkpufs8X2FBc9+SNZflnpobvJDf+mBGT2x?=
 =?us-ascii?Q?AtQkvCmR/9Cqk2fJWDGhvf6eXlrXrl8Pk3GebNh/25OhC925g5BYxJnkPhkS?=
 =?us-ascii?Q?y/skBFBoa7OyGZazHIjxVcXtVrOcNGJuenhOdHs8sJfhz0pqJKVJfQoZKZss?=
 =?us-ascii?Q?1gmlc+JUk67uSmgwgcTBIVVlAkw+Xdr61/7tShJUkN5Q3l2rOfaadw1cNgpl?=
 =?us-ascii?Q?C/vaZMtI+pivBE1SLd16sZT+FGUmucmG6kfJTFAOGtxU3VuHUSC+9ZrhFLdn?=
 =?us-ascii?Q?Xuiwf6x6ZznxF1gRiMxl84NBLJ+Th6Eh3GPOOgpWwviaYrIG/XZDd50DveBk?=
 =?us-ascii?Q?TOf7Y6IMC6u96jQiQSNAiQSmiulpTVRAWdk/y1Y9soJO7p5NP/pNE02cXVPa?=
 =?us-ascii?Q?DN2w6RwX0m2SC7XMXNLsy+f3PCtvnuiaFx3PvJWUqWzPnoa4y4xiLVf89bxj?=
 =?us-ascii?Q?KVrQ1VANrM6RsRt6bfTnSFGER8L7gMKKvlpZSi/X8En6b7ARgpsFxrKl2Vb1?=
 =?us-ascii?Q?uFDHX6ePC+DulrftV1evQXYF2ugLw9unnnQ63KFx5ZL18xnAPo/DZWljAJCP?=
 =?us-ascii?Q?xHoJPjtkyqNOd/UKu7nTJCn2buzHw3XxRi8sGIYdPlu+Gcz5Furtx2Ehf4Y6?=
 =?us-ascii?Q?4w5etrktQSHXCnRQR8/xKaUw9BAF5yiDkbsIS4OV23PuhXubYrwAwD1m+cwu?=
 =?us-ascii?Q?KofLnz/+P+BoqQz8vZuunVDO0EfEMaxLmNcKf66/TsDNg6Jqn+h11lUn4B2z?=
 =?us-ascii?Q?q5RAgJ39Ldxf51zYMK55FKn9MWKdDdZPiEp+j7sshc6lY6A2Zhi2wigXR40v?=
 =?us-ascii?Q?EyVzEoouaYk7YBfhIHzwEE5wqf2368RyBa2ZyfZwRFBYKph0/uSjwSxYp4Lq?=
 =?us-ascii?Q?rQDNJz7u+iYe+U+TXnlIj42Nggti8OWBvgINBQK6i3+hR1O8H0mLqJ6lj/gO?=
 =?us-ascii?Q?rNp7u5QlJ6OBdixnkuFWLTBVUNutcG9cTe+hPqYpvJ2fJNYoVEkxdiSCGkWP?=
 =?us-ascii?Q?DTDHM86HtJqP1pmE809h2IX/Wk4/dyApFKeGBO53r6sTb23yuGqE9GqPlUiR?=
 =?us-ascii?Q?iqoVs8mejrXGnAwDmBaXKybY/e+//AQGWYPKnXgjFu/gQ9AjbVAec637yG69?=
 =?us-ascii?Q?Yt8prLzXyJSzQ5wVgwDCXSmJGt7GcyOi/MkGr0z34fiiwJLquaM3bXf52NMi?=
 =?us-ascii?Q?HyQvEpwlcGDeyBLX4La24WYBQ3CNUK0tqsXQutm+abI4XEd024khJVaUE2lm?=
 =?us-ascii?Q?ofh2aMNUz+O23BhnmzaEvSkO2uwVesjratcNdT2m/v8FUsT4d/GhUWFOxiAg?=
 =?us-ascii?Q?uXAOm93etHx9VF5Uex335yrlN0GC5YMMcxtNw4Eccfd/OA+kg0X+ByoB6f1M?=
 =?us-ascii?Q?7bw5hHCgKQg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?untsawtkSEs3xIXbvgW1LafJ0CFXeAO8tLF6/yGDKVF9GNJJI9GaxP7PNCg8?=
 =?us-ascii?Q?ywsu05cM60t0whklLLvmXjgcnpmvHnwnQ9XQ2Sig5AySm+ruMgKKjj15eVzS?=
 =?us-ascii?Q?emZtV/2KJVCc9A7XdVncmTDBBrSkUG7j6BLAXwX3G5tzORwwaaYdAEum5OO6?=
 =?us-ascii?Q?OeAbK44MVvpsFZ2HUKCtaB3iozmh2pO7va7ywJP4mEfSf44vmgEaAE7hf4BG?=
 =?us-ascii?Q?7C31DRShuMErXhrIP5J60fNkfqSZlccURINYp0JUJhUBR7rZT0/OdgqWR1q1?=
 =?us-ascii?Q?ZDmy3d2HcfiNN3F4fDrDa17ecMfq6XeMl3v61tnxDqf9TfddBRkwmxeRLAfM?=
 =?us-ascii?Q?40HCBLs59TtifnxaO7hwyWXUo1A3Lv9hGDx4TYlKB/EYpzQGEBkNi19xbqvt?=
 =?us-ascii?Q?RKEO27nPQRRIFxrIeW4JVp5Hb9t9HZSjOklLP3jKnO084w1EgoLk6RAkbJ07?=
 =?us-ascii?Q?YE0XSR/PmUg6OTYcWFaDuHf1oEsCewpcOpl6a6q8zovBG/j4J3VQ+2xup3hl?=
 =?us-ascii?Q?ToXUnEXrvmSEPew3xtUJ2WIsrFLlddtmQbThni1OKsafC44evjyDQIb+aJpc?=
 =?us-ascii?Q?8i92yqGC8RojxagLXBVeekxd68ctCy8xsWq0g2CxekYkY1RVq5dsMEh87FJz?=
 =?us-ascii?Q?AgZJE6kyAgb592j1jQFlc7x2udz51p0au7tWpOC8gaPFmwEfnWQ6XNLPWb17?=
 =?us-ascii?Q?PZlmoP1XugVe1DQ3DH5eFu0fO/NDbr0V/wV7aq4z5qeUJMqAK6X+x7n4B07F?=
 =?us-ascii?Q?ntbrBFM3R9rpcOQnpQDbUJbUPA5ceiBSaztw+U+u3LVRKmzBfTkLbHAKiaga?=
 =?us-ascii?Q?xnJAKr79kTgfV2lZjQMXJqWpP7c1SfUhxM/7sfmC87GJb15D0q8gTET3xLnL?=
 =?us-ascii?Q?QLWtN37UoG+yTCSRbJN7A7rNlw8q9EmkfoPUuMkg5H1jm8Z5puJHk4vKFCg2?=
 =?us-ascii?Q?TZnHk71gfqJs/BQmXgwtelCHxXs6GFuwqBllfdM1Bil7Xe2/ylzAoDhioazw?=
 =?us-ascii?Q?RnE3rnEdHd40yCR9O4vdrJ4lIrJi5mjW81JjwLxw+cBnBDR9x8O03B+7Z8rl?=
 =?us-ascii?Q?qnMFvafmluvVxTJbJLtZhdccaeEd21kX5WjrEqhkeEOnKflOXiCpiBGVeJfz?=
 =?us-ascii?Q?6sorR5q7PUzIkYL6qVmqcIza0+EN4hvDR+vHBDaY22XVJxJcAoFPLyjy3t8I?=
 =?us-ascii?Q?V+Gzyw3BE7UsRrk0ct6KWfqEgGHxzt03l9d96cWfCwRD9v10JI7PGLhkZ0/N?=
 =?us-ascii?Q?M6g2jdL26qcOGatC8Boh60HCYhFRSM5xd3aKur9QPwjlrgivX6ic/fgepwQX?=
 =?us-ascii?Q?KoQWFzcZZyNR4FGm6l19i5lQ67I7GgmX0f7zaKF8AkXWVUXpVeP3h8uLF608?=
 =?us-ascii?Q?JCScnddG1R38t0GQnQWTZe+oHOf0AYexEACVotqn+aSxMzBCKu/sHVdcr4U/?=
 =?us-ascii?Q?zUhu8Wc7aR3Mu44xRURjBkJHlqj6Qbxv85MmSfmKwDsYLo3MvG7gUV7gKfPO?=
 =?us-ascii?Q?hbB7DZpjOocs3xIJ13PhtWWZrpzdgIpoejP5YZpqyCMEMa3TvaO3/6sEeUOa?=
 =?us-ascii?Q?nIxS5nricux3s6VnKTJGoSryy/iz4h6khVBmDM+DRRLJeQcdBdLcUeZ3y5s/?=
 =?us-ascii?Q?aw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1eee75ea-7b3c-44c0-ef42-08ddba46f90e
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jul 2025 15:33:34.7287 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E8b7oq6IvX6HSVI5IG+wVwZbFUg+wsC6MIB+c0yYw1oxRtjPJ79KH0/h21ypBL3licXtrkHbCKk5MSqFJu8T0ij/FTBYehWFXQdRQI6JZXo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5933
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

On Thu, Jul 03, 2025 at 10:35:13AM +0300, Jani Nikula wrote:
>On Mon, 30 Jun 2025, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>> This reverts commit 41e750b906022da3e4fb9dc57bc17670a340ad23.
>>
>> It's not used in CI anymore, probably for a very long time. So we don't
>> need maintain this in topic/core-for-CI.
>>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>
>Acked-by: Jani Nikula <jani.nikula@intel.com>

thanks. Commit dropped from topic/core-for-CI

Lucas De Marchi

>
>> ---
>>  kernel/trace/Kconfig | 7 -------
>>  kernel/trace/trace.c | 4 +++-
>>  2 files changed, 3 insertions(+), 8 deletions(-)
>>
>> diff --git a/kernel/trace/Kconfig b/kernel/trace/Kconfig
>> index 012db82731e29..a3f35c7d83b6c 100644
>> --- a/kernel/trace/Kconfig
>> +++ b/kernel/trace/Kconfig
>> @@ -176,13 +176,6 @@ config TRACING
>>  	select TRACE_CLOCK
>>  	select NEED_TASKS_RCU
>>
>> -config GLOBAL_TRACE_BUF_SIZE
>> -	int
>> -	prompt "Global ftrace buffer size (for trace_printk)" if EXPERT
>> -	range 0 4194034
>> -	default 1441792 # 16384 * 88 (sizeof(struct print_entry))
>> -	depends on TRACING
>> -
>>  config GENERIC_TRACER
>>  	bool
>>  	select TRACING
>> diff --git a/kernel/trace/trace.c b/kernel/trace/trace.c
>> index dc8ac10db04f2..95ae7c4e58357 100644
>> --- a/kernel/trace/trace.c
>> +++ b/kernel/trace/trace.c
>> @@ -950,7 +950,9 @@ int tracing_is_enabled(void)
>>   * to not have to wait for all that output. Anyway this can be
>>   * boot time and run time configurable.
>>   */
>> -static unsigned long		trace_buf_size = CONFIG_GLOBAL_TRACE_BUF_SIZE;
>> +#define TRACE_BUF_SIZE_DEFAULT	1441792UL /* 16384 * 88 (sizeof(entry)) */
>> +
>> +static unsigned long		trace_buf_size = TRACE_BUF_SIZE_DEFAULT;
>>
>>  /* trace_types holds a link list of available tracers. */
>>  static struct tracer		*trace_types __read_mostly;
>
>-- 
>Jani Nikula, Intel
