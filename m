Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 670DE94D40D
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2024 17:58:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08E7210E97B;
	Fri,  9 Aug 2024 15:58:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZI0T7Dnf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA0D310E97D;
 Fri,  9 Aug 2024 15:58:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723219112; x=1754755112;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=n06ub93p/ckCNv7sV0zKqN8cBMttrC9LuozMMsOmK9Q=;
 b=ZI0T7Dnf4ZBesdLarqu2Tw9zEYBug8VyXZjmUv8/BU1uJXlUljC6z+ea
 xAr0GVysUuAVIoqWzUrgwuUQU/2nVBZVP2uxACOglZ2mExsjR9bIu8LTb
 IhudQAYweTS6PTCazlEK/kIXnlp5LuIG2KKCXlca1NxY5qcweaCZpkBA9
 OlwmARiN9vYVKLxqaMN14RWLztF07YrjZhw7EKqdJvR58IOv64Z2XiQla
 YhEmMvnuVTln5YxoEux67E9VLR/SfRSYHphqIRUErTH/OdMa7znl7yKRJ
 24UVKPbt+hpv/jvlZe+nndknr+s+C5C/bi6+icziXS1wTiJ196SPw20Ui w==;
X-CSE-ConnectionGUID: qNgCfJIXTFSzJ3QIXKOjkw==
X-CSE-MsgGUID: owl8sEGXRsiQTM/xxjymnQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11159"; a="46804775"
X-IronPort-AV: E=Sophos;i="6.09,276,1716274800"; d="scan'208";a="46804775"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2024 08:58:31 -0700
X-CSE-ConnectionGUID: btmh8VPWQOmLs2c782qgCg==
X-CSE-MsgGUID: jUyBPIfBSU6StCNskaBKzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,276,1716274800"; d="scan'208";a="58170654"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Aug 2024 08:58:32 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 9 Aug 2024 08:58:30 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 9 Aug 2024 08:58:30 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 9 Aug 2024 08:58:30 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 9 Aug 2024 08:58:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k/nXtOwLyZ84Vz+0iTQmsIhH/xY3/gd/gValcVrZFRolTRx1ft9jE4+mR3Eplw5mUCBjeGdPnUKTcDUS54KGAmK7FZU18VJa1J7UpeF8k+rGcs55rwlG7MOcYNnamh+WypaLZBiofre8V46Dha0JMyk2Evy0yvNKbCyH9ziML6PFMrFQ8jzynSz8VLns+mkEjFUx9XyeC/D86gak1kjRyxw4WnnZFOwpABqsRgOmcwNVoMQ1eQo+47lhAPE7LIwPuchpACRxcCvnz7YCZUDiCC1VrbkB15RelH/+P0hGK6uth6sx/Ohfk8wKHxdcFZLWftvalXE4GIh/Stllze5SKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c5DrGcPJLgJDQKkE1pPuj3rLJBLxcq9RAZT7zuie638=;
 b=mjet2bfQ8Sv+NpkCaBrHuIRyTZkVToypvOpd8awfZ68/7LMSe63NGg8b3vJMp2mW/+9YIS3ySa2CGRk3dCGan2u0pO1sFW8Qmiqt/MceM6u0lQKAG/5Z96LXU4t2XZc1suJ7PcQaIsoq02dDsd0y6Hk7nkWvz3lMEw67aTV7adgY5BMcQrZOL5xbO/uXGozEmwGltNCY0Q+3tU27KLvrvUrxIP7H04SUGB7cM7Zt8TivmvlTpc5dh4h5wsgL1ZfFDOEscEJ0nbw0APYi8UMFZx/wneX+sQDrLhGQWMlv80bzjJ/n86mVgf4ajyUWAXDTVUBS/E+/XvbQRNk66jh2yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by IA1PR11MB8152.namprd11.prod.outlook.com (2603:10b6:208:446::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.27; Fri, 9 Aug
 2024 15:58:27 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%7]) with mapi id 15.20.7828.023; Fri, 9 Aug 2024
 15:58:26 +0000
Date: Fri, 9 Aug 2024 10:58:24 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 Gustavo Sousa <gustavo.sousa@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
Subject: Re: [PATCH v2 00/10] drm/xe & drm/i915: drvdata usage changes
Message-ID: <7a6in4kafx2umpil7tmjxpbt55oumgovcgbyjawiihbjz4gm67@vidlbchuk6me>
References: <cover.1723129920.git.jani.nikula@intel.com>
 <2pep6oj5dd7ocei2a3egnm3agoa46nxad2e6e2riwby66khfpt@22g2ari2u4ps>
 <87mslm2hg0.fsf@intel.com> <87jzgp3k4c.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <87jzgp3k4c.fsf@intel.com>
X-ClientProxiedBy: MW4PR03CA0116.namprd03.prod.outlook.com
 (2603:10b6:303:b7::31) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|IA1PR11MB8152:EE_
X-MS-Office365-Filtering-Correlation-Id: 7f8df2a3-de40-48d8-6582-08dcb88c1af8
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ydTShuGHJScknE+TISY7us6r8D1unsKjoUnnyZlq7hlCs2ABOZRcyGR0u9fa?=
 =?us-ascii?Q?KXC58WPsmTUKaD0lbDanuWYVpsc+i8UuYaC6z+iJj4KPCd8piu9U8MkaZmsX?=
 =?us-ascii?Q?YK0VvXT6OZwe2FMaLYFyXhpVCm+xxNxVMxkransab1X98oGfGDzaKcEhY8uQ?=
 =?us-ascii?Q?QmTYdpzWMTvE21m5AokO0Yn/GERDYLgGX57ynvTcL8BcvI0zQ6cG/1d5ocLF?=
 =?us-ascii?Q?efh0bvouJLPVizyqW26M3sXHqCe6zGWds99EQdozgAe+Ao8s7PlMISH+paAy?=
 =?us-ascii?Q?/YDLyzhhGvDfIYChp+uLWkTtxDOzqGsA027e+gr0HorX6YuXcvZ7OlAInN8l?=
 =?us-ascii?Q?Ee8KdbULgKp4fM4vWhjWQBuhpMvMjw5woJlXcMTEoY+OLfX1tj6TAuUP7OBg?=
 =?us-ascii?Q?yu/kDJl8iMUoIs6FH1EkzScV7hT7ej/81663JAJua+fjQkBhcS5kftSAkqGM?=
 =?us-ascii?Q?e3RWSMELJjJIaLzNLTU3IgKC6Qar7ibQNaDJM1ItQv9Gm4gtXduNVQbr/jMB?=
 =?us-ascii?Q?nLRzcSrTZ8R44wPTfZX53DUgc3c87dvmUOZiTHA3X8s8puU7b+96VFuj5gGn?=
 =?us-ascii?Q?yn3pRIqPIxGSUZL0Wu0jZHcxFJXjWL22xxnmnFgcE/7suz8bnwI8CHjdqOOi?=
 =?us-ascii?Q?J5C/iDEUA4n8DH/KZBY1mMAadNjP1LRDN63f1aiAEpuvQMuEDlNcUgKX+zZA?=
 =?us-ascii?Q?GQFbPN8rs+Ym6NovaH7kpX3mc/J7F7RSfvhTyqYNVYmuWl3hsRPzdCSeyiAR?=
 =?us-ascii?Q?vEku/20Mr0rW+VzzqCYrmM/mRA+BalBHNI1JRhH7nJCExnuO6Qa11/uevZ71?=
 =?us-ascii?Q?vFJna7gnMPf1MEjyFMCBXjmaPLazZrMq/L7R5ZIINyy2bkhR/ds9LGYju9lB?=
 =?us-ascii?Q?m9fwu7csmwg8HuzkD35qM00YmCDsUIJjIhfz6AL7NozGDnvEkJsyJElhpSs7?=
 =?us-ascii?Q?mokpBRFldVK+x7utG+tJKVcvjXzUcX7UehVq4/P3xirhUnt3BWUyMzxvPYPI?=
 =?us-ascii?Q?b1ybL83vzNHMm735XyuEOPDNUJDgTZ2G+f15GgsGdVFRqLV3kIJiQQ0Wm8CR?=
 =?us-ascii?Q?rFv04NsWUYVeSV3qx1wuxRmG1x+kZixTgn98bUsA6go61Y1w9x154TM8WK4j?=
 =?us-ascii?Q?xGkG6f6lRlNRbUb5Z1oRs88PQ1rnUdydT6GTPGoA9tHwRNklgmdp6qreoYgh?=
 =?us-ascii?Q?fFODmK39SrtuGpaLqwtT2TyGmQdxTD3dWlrjBgusXpnE6cUKv4E+oaZbn5vT?=
 =?us-ascii?Q?3ggrxKQRvPnDQgBJ1nwKZhngk943Qpj2TjBLmgkkDMI2UQUVsLVEFlQHdUTQ?=
 =?us-ascii?Q?8tU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?89o0Hmbp+fJgPKU3Yr068hNXSR7vhCqu/zFFFdRJHrv5+yZUV0NkvWISu3e6?=
 =?us-ascii?Q?vViv10C6dh7gBViB6nM/qCmrLVXtNJ6VX2goJN9PX30j8cckvk+RndP5xQVg?=
 =?us-ascii?Q?A8pE+3kYCC441e0+Of2Q7Z7euB5D6YkImw2g0TynyyDQ0+7lXF5SiMo3s++L?=
 =?us-ascii?Q?71VUxi9giX2jtkjYD+sJ3B6OSQAjMu5H/OddxKRGizEwWH2IzUCiZCSR0PAZ?=
 =?us-ascii?Q?mT96vKHbmc1PtRdrIvqGwbBKWlNiDxnsxfRU/We4QnP3VT5baWcFEMGlC2J5?=
 =?us-ascii?Q?ehWzBRVInMUWvrmkX71ZUsKS4dCCp5R6LYTkAppbI4Fogqm6+gRJQFFlkCZH?=
 =?us-ascii?Q?TwEb9KiyiAc5BzoGUsG+OmWC+uHMrEW8tTSW9du6Cq1xEeNkLiiaHP8DkIAC?=
 =?us-ascii?Q?i8H8KGouh1LAF2LuqfOKi9dX6/yyBGvLLN1YKDqItEfhU1cAaLHYH8KRV6TZ?=
 =?us-ascii?Q?jUqqse2cSukISvkr5mynwClJ2s24rKtJALqEAc8wvUUUGY5LMrt+TUAqsTmh?=
 =?us-ascii?Q?4JxCLR+SRLW08LttTLmuFSlohLBs5Lhac/nXorpnMBxn0GUr49Je3Z1AdqMe?=
 =?us-ascii?Q?jre4Nt9a/Bm2Bzp7MB022h6PgUBrYrs4LDc6LmEDI5TbtAn6NZCPZqD1YLPF?=
 =?us-ascii?Q?iWEZBI89dMm9y/A2p5cy9oB1klATHBveiFY8TmQOhTM2T0VGlFqSNBmbVMIx?=
 =?us-ascii?Q?yOoDCyyxJuq96pcs4EcHaGoNXUttD7qjFIjoz/Amym/5+2koZnIdfvm/x+Ng?=
 =?us-ascii?Q?xy5zWH+3DMYELFLl+fWYaKB5a7k2O3iACRezs/iBy6XrT7QQh95qSphlg6X4?=
 =?us-ascii?Q?IlHEzWIBqx//r2K8NTTK5sL1ACLRojsfJshvNd2P6jtgZuyOwqxe0O5Qb8mh?=
 =?us-ascii?Q?x1aGpR0m2lgHlRQiE8g5Mfoz/qlmJa92+3WO2JbfpC/2R4g+KYLjVNA5uoZr?=
 =?us-ascii?Q?evtXHRSFEUF3gMnd7JSRpvFg+xoiu/RJhcPi7wHhJVRI3lGrkhzSsgCQSiqm?=
 =?us-ascii?Q?3h6rsH9ARo4KA7fHhk4fb8RjwVC43wK8XGQh7ffMnCs501wuLr9jl4p4tDvu?=
 =?us-ascii?Q?8ufSw+PWXtunNMu1lpRFhjBGoM2wQlMgKAN7XS8O01I4DZYwvMqIpDZrQ2NI?=
 =?us-ascii?Q?O9erx+I0aTpCYFMM/DguOir0fcctzG0bXZ4caGuUrER7230Jzkl8TMf4pAiE?=
 =?us-ascii?Q?8WKkVzP8KOHrICHUHoSBELDNkRYsAm0QvG2WfU5x4zkPqxe9eAUn2lUS4hGB?=
 =?us-ascii?Q?IxM01llf+3Sz9lrGxzSCwKqaOaXGScaUnM4f3kegbO/jYdtDMcp5GOzNyBO2?=
 =?us-ascii?Q?WA7UJ+wCnxPoTLuJkuBb2krdBnQU3JNZRlzxoJ8wP2pMkUIdbrtZdUEpCQZ3?=
 =?us-ascii?Q?lB77y0AUE8BZP6WXsEufNCj+WN1MuSf12/muBqjOa8bbrG5RoVl7NNG+vSxb?=
 =?us-ascii?Q?bPOI6TSmoqX4R0vcOaSc/P6Zzq4yPYIdofJoLXd2JVJ4n1vMnT7kgNtv5ZXO?=
 =?us-ascii?Q?NYim0whSAUYQj+sFFpcK/m7EnJe7NQHPVZ2saRY9Zczwpsh6LuwlzzkYmn4Y?=
 =?us-ascii?Q?o9TBEpKXu57mJAC7qButnm4z3PWEwaXmM7x6x5dBn/7O6ofgo/+p5mCA+hN8?=
 =?us-ascii?Q?Ew=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f8df2a3-de40-48d8-6582-08dcb88c1af8
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Aug 2024 15:58:26.9118 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ybcXtSLQQolz1EKRMiz8/mI8yZk1+FhktRsUPf1zuC44C3/R0kWuTmJ9AgT0GqWXoJ9jJXGuIjNlm2TfNVGGemSjI/H7TEOke2emx+IBIqQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8152
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

On Fri, Aug 09, 2024 at 04:23:47PM GMT, Jani Nikula wrote:
>On Fri, 09 Aug 2024, Jani Nikula <jani.nikula@intel.com> wrote:
>> On Thu, 08 Aug 2024, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>>> On Thu, Aug 08, 2024 at 06:15:45PM GMT, Jani Nikula wrote:
>>>>v2 of https://patchwork.freedesktop.org/series/136621/
>>>>
>>>>Removed "drm/xe/tests: fix drvdata usage" from v1 in favour of
>>>>"drm/xe/tests: remove unused leftover xe_call_for_each_device()" here.
>>>>
>>>>Due to the display dependency, I think it would be best to merge the
>>>>whole thing via drm-intel-next, and do the first drm-intel-next pull
>>>>request and backmerge from drm-next to drm-xe-next in fairly quick
>>>>succession.
>>>
>>> I was waiting the drm-intel-next pull to do a backmerge as we started to
>>> have some big divergences. I will try to review the missing patches to
>>> expedite that. Are you planning a pull this week?
>>
>> Rodrigo? I think it's your shift.
>
>In the mean time, ack for merging this via drm-intel-next?


Acked-by: Lucas De Marchi <lucas.demarchi@intel.com>

thanks
Lucas De Marchi

>
>BR,
>Jani.
>
>>
>> BR,
>> Jani.
>
>-- 
>Jani Nikula, Intel
