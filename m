Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE61501F83
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Apr 2022 02:16:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4227010E5A8;
	Fri, 15 Apr 2022 00:16:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D58C10E5A1
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Apr 2022 00:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649981760; x=1681517760;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=YTHRzBpL0thekTDZDgqC6ESGDoPuCQBTlNpcSWeD0Fk=;
 b=X11wb3BodiI8xTkK11AHPEgvZ1ft6Nb2z6Tn1lsM1DKdX+1pgymYCoRb
 jBXhaG7ugAEZO4PKPM4pEgxE8Ydr/ofrqBkENztttgojsW248wHe/zcPJ
 G40IavvU5XV06Aty1MaytGBGe9scxbV8uKdSTit6fj1O3L7ZIJKPJa/az
 KR+c8inyxI0WPZvs8fQUDOaKU+Q40VRSXy6mzKrC6iXGsHJzc7WcNgFYA
 zqiV0tbSN1Ki6m1n2M+alyAHd3o+QuG+v0AWtdjacLnY2GLfOSBJuRTW3
 1ctVV0CpAkC5r0Prsrkp/Oh3MCCHzfQr1WVpOzdkPRkmX+5C6pilCvIzq w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="349496814"
X-IronPort-AV: E=Sophos;i="5.90,261,1643702400"; d="scan'208";a="349496814"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 17:15:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,261,1643702400"; d="scan'208";a="645819819"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Apr 2022 17:15:59 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 14 Apr 2022 17:15:59 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 14 Apr 2022 17:15:59 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 14 Apr 2022 17:15:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iWlW2vV1eVdgyDCdS2FQQXYywLJ9it9+59i+A9F0HBewyXBcQ3JgrYKgofDm5m3j1Ti+50C/GoNFvEQUuJ+r35+B5Q4oJ9oIG/jQms7DTRJ/i9CFiYi6rekaSC2yYtSwvJKbimhhQI6Z0kTt5lvUIi0NTOxYscmasFJBZgu9VUln/9rxb8BOikPiSdO/WC8HLGO/h8zsmGSit3FuDZF9UDAfB2QebaVL4dKXF9Qhgl1fU2oTMcE/stuGUE2BhtOloeK0JPwY5sCZby4/9sg1YRHNZ7VRiclTs1+hBRlnSWhcFE22J/dni2VfaI2mhDzrTfpEznRUT0/p42vjxN9bkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PYvz/zCghExhlpYokyfQxZuL0r2qwHv36T35nMLKNm0=;
 b=M1ND5UWKr4yuj9WkhWpiUIJMDp2sH5nC2m2yhumHr7Z2EL7R7Hc3eQITmIZo630Zt7nplTOzQuYBAzzG1Et+3+kbteG/rBr10tySHlihKqxktfXTUlyHClhrruxwelFWOomxPt2gLIxCr/kfxL1m3S4UfeIeW0+gnPb8JGjDdK/uq3i74f/KOyMDYyaa/rZE+BcLCk11K7Q3ii+YLcvfrVsfwfEUUoFzckR7mKoYb7OpuoBQNjVJSYKyEsKoCxTQBhuEiErkSXYYXXBo7SJNgevjRi1LssT88l2uHp/yM+Yd5kRkZ/ohEXoCChLhzlq9FHe8M8+NosLB2ixAqjviiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5144.29; Fri, 15 Apr
 2022 00:15:57 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::c87c:65c3:696c:7001]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::c87c:65c3:696c:7001%7]) with mapi id 15.20.5164.020; Fri, 15 Apr 2022
 00:15:57 +0000
Message-ID: <27f27d20-0136-b181-2f83-050093e68dd2@intel.com>
Date: Thu, 14 Apr 2022 17:15:55 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.8.0
Content-Language: en-GB
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 <intel-gfx@lists.freedesktop.org>, Matt Roper <matthew.d.roper@intel.com>,
 <daniele.ceraolospurio@intel.com>, <vinay.belgaumkar@intel.com>
References: <20220413192730.3608660-1-umesh.nerlige.ramappa@intel.com>
 <20220413192730.3608660-9-umesh.nerlige.ramappa@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20220413192730.3608660-9-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR07CA0018.namprd07.prod.outlook.com
 (2603:10b6:a02:bc::31) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8eeff253-45ed-4c1f-64ac-08da1e751ccd
X-MS-TrafficTypeDiagnostic: DM6PR11MB2538:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <DM6PR11MB2538E3BABBF090341D08E590BDEE9@DM6PR11MB2538.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1Txt+4J67eBJasEW24Ibb7hPoJSfmKyZApnMz0xPM96lYK63b6EToFZelB6QGas5mOFaVuzzD9ZV55Lfq3s1UzB2qsQ3QyFG9YO2Q9tbROwGj6dBdQEPpCljXYcRsKFmCogWA2pApIm/Q2TpWNKp5PIm4ToyuQlS2al4g8oqPVNPLycygTH36DBQHr0AvL18tpu7c3Za+a+JqkdlbpWuaPNCgKOXqpd3emMD4kfMcObhPyXqm0HPNe/9XFl2akNTMsYIPoo0OlNfbEXJcog3twR3vmaysoLDQv4JUEte+eupneeSZUlUWgYillGaPfbvCtdUL+Y6jGLB9mwuTzd0XIF4v4gOxojyVcBm6fKN52BQrlSGY286jRJdfcCpA/CwigPP95YAPh3jbZrjt3/mnxJMKDM6w5i+5WP4K9Bj2yeBogbU6tCbhiJeIdrU62byBy8DbM42PncDDQtdY1pJdSeU2OdUHssZETBWX8NkUWzoabNcOKsrH3Blbt6SNMIZtPhHYwoiWK7jyQtNDkwlh34GnYnRGK+Xy6A6elo9Lqr3lMeEXL6WHgKp0TbIp36kRVApt1ahFRTE/zi7+mJnluaGmY4k+8LnurB8AKVRRYe5fTRGyiFbq+QiPAACWRkb+FXHwPt4AWhwU0oumlOsU+5jmweuiWZ1mHA3sQk9wivNqIlJdjUmEUx8mofYgI9lywBWdb8h5lYWro21AZbFMeWR3WXgUZPvf5IRTzBjjdA1htoGgz5EE7PA0yMsJK4g
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(186003)(508600001)(2906002)(53546011)(26005)(2616005)(6506007)(8936002)(31696002)(86362001)(38100700002)(82960400001)(6512007)(31686004)(316002)(66556008)(66946007)(66476007)(110136005)(8676002)(5660300002)(6486002)(36756003)(6636002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ck11VjlRTVhCRk5RSlRyRElNSVYxVHZsRFJVdmVWYWdqZGVPSFBoWmhhZWlV?=
 =?utf-8?B?bTRvNUs1bTJSUkRhV0FBd3QzOXdoOUd5a2Z1T0t5WlFBNmVSZ1hsNzRiOFBW?=
 =?utf-8?B?dWdUM0prbUJUTEhVZitFTE5ncjZmRkNJWVB6T0NKMjdFQ2QyajBxL253eTVw?=
 =?utf-8?B?ME00ekhSWXplL3o3WnJkRkFYMmlzUjBFSEIyRC9OeGtkbFh0QUJEM0hCejRH?=
 =?utf-8?B?UmtiTENZQlFucDh2S1FiZXROZVRqTWxZdHhINzlNVzVwWCtOM3hxWThTVzJo?=
 =?utf-8?B?REZweDhrWGFadjJQbFR5RkMyWTk2dVlFTlF3SFlwek9pL3ZkTkh1MkdWLzhp?=
 =?utf-8?B?UlJaL25UUXpuZi9VMU1ORnBrQTN3OEt2bHllZE5iSDhqbHI3bkFlUXIwcTE5?=
 =?utf-8?B?UFk3NnZqU3lWaitodTB3TXFaS25ueU5wdlphODQwcVJqdEoxRUxZYUVaKzU2?=
 =?utf-8?B?a3M3bURUOUtLa1lxRndEK3dlM21pVjlHd1pJQjhKQnJaUVJIOGR0Y2xNZ1dP?=
 =?utf-8?B?VW0yaWNacHBBN0p1UEVtRGNiSHlKVEJiWUEyb0FuOHRrVTZvR2hXaHNraFJ3?=
 =?utf-8?B?eUlZNWVPYUtWL0tEQnZCWE14NGxEUDZMR1owbGVpTGlDME1yY0V2cmNzd2tt?=
 =?utf-8?B?TXZ2Nko5cFVDM0N5akdudXpKU2xiMVNHTElGSHN1UXpBanpra1hXOEtKeVNn?=
 =?utf-8?B?R2JwS0t4dGR6WkZ0Sjk3N3J3NzEwTkFMZXlMa0krRGJURitMemE4ZmtnVGw1?=
 =?utf-8?B?em9SbTJYWmlCV1ZMQjdvdE15NGJnZ0pwa3lrVXE4UUR4UUQvZnlMcGppYzVB?=
 =?utf-8?B?TlFYRTRmU04xNXN1dVdVUm1Vb1hEVEZYc3B4L2VZYVhBbXF4clVrbWc3QW9I?=
 =?utf-8?B?TG9ralgyR2VKWUJvcTFNSXgwaVExV3ZYRWVwYUtZeG9nL2FNdWNTb051VGhr?=
 =?utf-8?B?R3FmY3FwekxSVFBISFAvbm1oNmZnaXgvakptdThId0NsdFZ3MU1QNlk2aW16?=
 =?utf-8?B?SFNmUHVPNUFZOVZ1cWV3SmRkRlFCOXpFbXJjZzAwUXg3ZHp6VW5tUS92VTln?=
 =?utf-8?B?MkhYc1RxN1NvMzFHcXlZZHJPeERXZ08rVkNsV3NRMUV1LzVTUXc1QWJrZUpv?=
 =?utf-8?B?TEVLbytWRjcrWUxmcFd4WEtrMld2WVh0emRMUE5ETXdZM2NBUDNDbk5aL3Iw?=
 =?utf-8?B?d0RiRzhPWGloSGh1Rk51a3VjVnI5Umd3RWZpWVZzUlNxbEwrZEczZGUrMm9U?=
 =?utf-8?B?Z2lObmZsL3I0SndrRWMzem5EY0pVd29STGc5Y0p1US9TYlJXUC9YdlpPZndK?=
 =?utf-8?B?MmdycUlWOVBRSnFjaERZZEhoRlFoY21RSDNTOUNmRXhhUGhKMXFtT21OdWJW?=
 =?utf-8?B?Ym1VSGNpL05BbnVLNnRxZlNhZHlKU0R1b2VBbFY0Z0hRY3RlRXhsWTBPSlcx?=
 =?utf-8?B?WWNCVVZmUmM0UmE4SE5Zako2QVhwYzRBVi95cGdFSVg4b2FPVUFWcVZZUWsx?=
 =?utf-8?B?MDJxOXFmUzduL1ZlVlczakFoZ0RMajNqb1VDM3hQRjdvMk1WdENYQVRTd1FD?=
 =?utf-8?B?VGt1OTVGQVJlWjV6d0VWay9nMkhyYllCUXl0OSt5OTRFVHVTV3N3M3dIN0VM?=
 =?utf-8?B?cXJQRmM2czhmYmhYVFhaTkUyL0dkTURyOUczK2FicTI5OUN5YmIzUlRmczJh?=
 =?utf-8?B?Q2Q0RWVLTER3WjJxZFByOTZmWFZDWitDckw5SWVCZVZqMHR5V2RZdUdybC9C?=
 =?utf-8?B?Zzh5RXJKUHVSQXhUQjNsZHVBcUVGanhNUm1QeTU4ZzE4N2NDTnRKcUZCRkFm?=
 =?utf-8?B?bHN1UUd1Mmw4OHpyZ1FkbUdTbGJkdkNzWUtReDRtK3NCUmJEb2llYjlVblZ2?=
 =?utf-8?B?TEZOQXpoeGoyQjBDUGN0L0t2Z1JyeTIra1RlQ2kwaWhVTlh1RFdMQVFMcHBN?=
 =?utf-8?B?RVlieEQ1aXZTMVBvb2JlVm5teWVqWE83Tkkva3VEQUJJUkUvMC80dThyeFh5?=
 =?utf-8?B?dW4wSzljdlBOU0hNc2N5WkN1VmlBRGZYekhBS0RwVEVUZ292ZmpTTHU1a1A3?=
 =?utf-8?B?anc3aUFHK2xPcmFlSkdmYk9CWDVoZVpsMExidkxQK0Q1Y0RHYlN1OG5Vdklo?=
 =?utf-8?B?bWI2LzZlK1pkak8vSzdnRWdCQzZyMmhyR0pFY0xEeDZRU0JUQ29JR3c5Zlp3?=
 =?utf-8?B?ajcyTXVRUm5kZ3BhbUdwb0NOLzlvdVBJQWI5d1lTSmhwcU5HNjkvSzhvYjJ1?=
 =?utf-8?B?Q3M5WlZ3T2VoV2NNRk84aG1XV3NLajV0ZjJnYU9nL2syeW11WlBzNVhSeUI2?=
 =?utf-8?B?c2JQSzlLV1pGMDJGTFNsN3R6N0hDVG9ObHpySWhjYUtKU3ZTcVFhUG1UZjVn?=
 =?utf-8?Q?O1i20uOP8jbnRAsE=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8eeff253-45ed-4c1f-64ac-08da1e751ccd
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2022 00:15:57.0823 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ksogr5wzPUmpIfK+REox9Y0VMkMpXHweaO8ifOAfi1TJfgj6xKe1FFAsmHB8iBGvTz5QXgBxmQnjptF4cRyNCu7Nr4uyQej0/g4KGWGEoM0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2538
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 08/10] drm/i915/guc: Apply Wa_16011777198
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

On 4/13/2022 12:27, Umesh Nerlige Ramappa wrote:
> From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>
> Enable GuC Wa to reset RCS/CCS before it goes into RC6.
>
> v2: Comments from Matt R.
>
> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc.c      | 5 +++++
>   drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h | 1 +
>   2 files changed, 6 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> index fd04c4cd9d44..830889349756 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> @@ -310,6 +310,11 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
>   	if (GRAPHICS_VER(gt->i915) == 12)
>   		flags |= GUC_WA_PRE_PARSER;
>   
> +	/* Wa_16011777198:dg2 */
> +	if (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0) ||
> +	    IS_DG2_GRAPHICS_STEP(gt->i915, G11, STEP_A0, STEP_B0))
> +		flags |= GUC_WA_RCS_RESET_BEFORE_RC6;
> +
>   	return flags;
>   }
>   
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> index fe5751f67b19..126e67ea1619 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> @@ -100,6 +100,7 @@
>   #define GUC_CTL_WA			1
>   #define   GUC_WA_GAM_CREDITS		BIT(10)
>   #define   GUC_WA_DUAL_QUEUE		BIT(11)
> +#define   GUC_WA_RCS_RESET_BEFORE_RC6	BIT(13)
>   #define   GUC_WA_PRE_PARSER		BIT(14)
>   #define   GUC_WA_POLLCS			BIT(18)
>   

