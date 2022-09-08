Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E1AD5B25CD
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 20:32:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75DF610EBB6;
	Thu,  8 Sep 2022 18:32:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70AE410EBB6
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Sep 2022 18:32:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662661957; x=1694197957;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=R+VMjgEMH/NgX0dRVcQt6WDMD+hP5LuUAA9G8m59w3U=;
 b=RFDYXYIJWYUbuQgKDryTXqcZugrnG+scYfdtmDtFROM3uLoR+gW+Y8So
 dSzBFVqlNgZi55FBWINU0Wa5SNMZRwRAiPFWFrvC+MN9mrbuDK70bVjnC
 0M8Q74ct0M2NE9z0iCJoF4GYSYFcfam1E3GUn5G/0ariM8fAfcgpILKlx
 HP2VO7pCUfnbRA5sE0ISshtsYPY5tKu9EUINM2uygJ081jVT+kfNzbBdv
 1HgVc+hvMnL7sb/HPKl6sAKmGQ3V19nXzKoXAHx7ZfKuXnIBOp4GoF04a
 VfsLvXlYqXvH2HjNUDj7NyGsZRuUPUvCAv0fS4usnaZ8hnd1/duz0JDkJ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="298091813"
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="298091813"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 11:32:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="566056983"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 08 Sep 2022 11:32:36 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 8 Sep 2022 11:32:36 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 8 Sep 2022 11:32:35 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 8 Sep 2022 11:32:35 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 8 Sep 2022 11:32:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R2acJNcvJLEoQtbitWwaRV3nAgNnEIp4wsEZsWjNB1AVdCWupSKxI/JntGsAERduQc2v/ZSY5g6Yjc5LaMXVTO0C1DRXJBwj/8X4QqulPq4gf7d9qEAnPRihFod4kLxDTqq83A3CbuqlNog/E8gun+j3DPXHa+pVbJUNFu/9W3+BiDE0YFE9MrJSV1s9X/7UkwtJnw821+D/VmP4e9KpVNtApS/1UF8u59HdIMKq0d0Q0B+eCINxaYRijESgxpW2FQyvdCDqIKlcgz9VPOhvNHR93Zt8zo532XhSMQKdCF2XJ/XKSGPjW5ZClMLPwN3NsbYOKVNdx+zixpuCoWckNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aGB7Na+mWUnRzR5qYYtp0xAN+mG5zjzGMbIBbXYuP+A=;
 b=VXGSg6gJ80iEhm3PEO3gx4dUn9ck2N99AIzG9Bfzs2bIcmsocYjnTQpU95dws9/TUXQ/7cVkSnubbsq8PYFl1tRUBzk2Gr1ZmOnFTzpndvQ3RK3zv6iu6TU+Q3PoZQwkI7GdJlWSQYqtZhajPv4p2xUWAtGu3aZeg9psiJY2a3VQG7k1wMz6D9j21IyFdHLkeKZPM6pqGo12vMm/6P9OsZ6CorFi5lMIZuPGtD28cfMXFG+jbwD5UPxWl+5+aXXwX7datqPNDqU9EE2Y6llOfW5SVpYuEIjuREG03Vh4/Z3p7cO3g7FcK/IY9MgJqWJAU7Cyc3ghhoAHvGJhh1RlGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1562.namprd11.prod.outlook.com (2603:10b6:4:6::15) by
 BYAPR11MB3109.namprd11.prod.outlook.com (2603:10b6:a03:8c::26) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5588.18; Thu, 8 Sep 2022 18:32:32 +0000
Received: from DM5PR11MB1562.namprd11.prod.outlook.com
 ([fe80::d1f5:4418:e2ae:40b6]) by DM5PR11MB1562.namprd11.prod.outlook.com
 ([fe80::d1f5:4418:e2ae:40b6%9]) with mapi id 15.20.5612.019; Thu, 8 Sep 2022
 18:32:32 +0000
Message-ID: <04550b50-2168-959c-7603-0a1d413aa3a8@intel.com>
Date: Thu, 8 Sep 2022 21:32:12 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
 <20220823204155.8178-5-umesh.nerlige.ramappa@intel.com>
 <00a6e452-9df1-04a0-1b91-056bf0bb1265@intel.com>
 <Yxeu+pUALbVBBL55@unerlige-ril>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
In-Reply-To: <Yxeu+pUALbVBBL55@unerlige-ril>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: AS8P189CA0010.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:31f::9) To DM5PR11MB1562.namprd11.prod.outlook.com
 (2603:10b6:4:6::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1562:EE_|BYAPR11MB3109:EE_
X-MS-Office365-Filtering-Correlation-Id: 4276e4c4-c56a-4650-d01b-08da91c87e11
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: U8je+EmEQH4J8bYMUV0/JSV4z4Z3R3/CUzmoVYEK2/OpvODar8lVFOqVMG1EdMOMxEqUJ1nL51xTozcek6ex8QwIgjGsOkV+e4TAfMMXV/YHgNXYMOHWV332Tv7yxCLI4eo8lWc1B9QY38Pgj7qltMMZrfm4jIFm5LlUPWo4Wu6yChB8dHCqTakf9cRF65NhiqWa7hIvMIql9L/RsbdYEOJ3lbHpVKfNMqI9VpfqPnuJU6Wkk5Fl4T95nmCiJITeHHIUdhLtDtz0RPfPsCMr7RgqiFkTOxlABqydFVpaNTkbOrNp8eMYFL5fYTI0mnYO/RcApFp0N32uWACaLNdg5KWOBb9pDrbrIk7R0QSnpasc1ZyI34EJLcq9pXn3DA7GZOMguwrYdWxnIwjEXowSQRclWCx3uWIN2RN0xwLUkZ2XQ+Y7VU0FP07Bz+Gq8/+C1xm/LMh+s7FKytoLwsv7hwqc/9f1UXChHShO6HWKqPpcPxkKQjYszUaoqzbIeqqYD6l16g/cdCsZwAhGunVk/dTdrT5yJTPp5fihMelnFA/MktNQeCBJG30mqW6IYm8Hh4DiVZ4k5Uah9ytHtYurcd0WiAu7Lf+BwwHbkmCZ1A4/U6XtqARha+tSWPF4cx3tg58PLjAb3SgytBhRg1pex74EQA29V8fxIkvr15vveMIrHB983pw+/IC52ysz0MZrEKmOq6AImP7p1+YGrELGC7HS6cs6qxOF9VKSeR0YxuT0+0k5Mwzxn9S23KvSB4EoDf2JRTGObuqEvTTE5fvZGYjoJU66XHyc4I/p5lh3g9E=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1562.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(376002)(136003)(346002)(366004)(39860400002)(36756003)(4326008)(82960400001)(31686004)(6486002)(6636002)(316002)(37006003)(8676002)(478600001)(66946007)(66476007)(66556008)(5660300002)(8936002)(83380400001)(53546011)(31696002)(6666004)(6506007)(30864003)(26005)(6862004)(6512007)(107886003)(2906002)(41300700001)(38100700002)(2616005)(86362001)(186003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OWsxK3JjTHhxUCsrcG9BcEpJNFZ2QmlLQzJPOVJYWWhkdXRaOXBHY242ZjlG?=
 =?utf-8?B?QTYwekVkRDFxcmFQbGdZMDdkT2JycFVtM2h3Nmx0VjFvWDF2VnFrR1RoSUFT?=
 =?utf-8?B?M3lCTEY3TFB5ZzVxQjVuR1c4eXVWK3hUWXcwK3hXOTNXQXE0YmI4c2VsbThT?=
 =?utf-8?B?RXB0RUFaRU1Jc2hvQUp4RDY5cHJIWHZCcVZNYy9sdnV4blpPUXYya0RXT2NU?=
 =?utf-8?B?M2d5aFI0RG1uTG91RmVkeGhhdGRUdkN3ZElnMEx6NXhQUlBNUzdxQU53Vi8v?=
 =?utf-8?B?VlFZa2NVNHNGZ0F5ekVmQmZnU3lLdGFsYk9YY2IxbW5sVEtQZnZQdEZ1Q0tm?=
 =?utf-8?B?RzM0emVjdHh2VjZhTkIyRXJJQnBvanhiVWZpVExlNHRvSkZ5Q1h2V2hKdDFh?=
 =?utf-8?B?Qk1PK3VpYmliSmo2WUcrZkttREQvci85UkgvcTFQQmxwSzJFYmlnUEFTeWp6?=
 =?utf-8?B?UFA5dWlhSzlHSnprcmxRem41aktnSEw3Yjd0eU5ZcnZMVzVHL2FQSEo1Y3NT?=
 =?utf-8?B?ODBqRzF2dFpHNjR4MUI2dEtqeFlKNzczaTF1TGVIMDNoRjMrSEh6c3hKQTdx?=
 =?utf-8?B?a0FDK0piUCs4Z0owekF4MWJoNHg3bSt4OWsyWUJzSi9kWGhVbjdER2N6VHhI?=
 =?utf-8?B?RmJoT2wreDVSYjlqSDhrSmZxTTV4bkJYcVN4cXNtMms1d3R4V1RuS2Jndkwx?=
 =?utf-8?B?MTc4KzBOZGxPTjBMeHVackt3TW01dzVqbFZXU3o1djl4SlUvRkhuYnlVSGxV?=
 =?utf-8?B?Z0dYcmd2RVpuZ2xvb2IyN1dTMkRMRm5pZHJ4alQ5TWpjcWhlT0MxcXNmZ0Rh?=
 =?utf-8?B?NnAvU21obWgvWUl1OC9uaDFqTnhCMFhJbTR6Y2ZSYzB4WExPdUhQOXdLVFVL?=
 =?utf-8?B?TjZieVdIMXBlY0xjRVVabUYzazhnVE1jdVUzZU5MWWNwVVkvMjdpV0lEM1lM?=
 =?utf-8?B?RUkybWxYNHRDNXIyWmJQdWt3eVd3S1U4ckx5NUpUbHczMEd4TUNYVzhnR2Yr?=
 =?utf-8?B?U0I4NWVvUTM5WjNsbkZwMUhPRTFLM3hoTXd2cmpKT2J1S0Faa0tJbXBWbS9U?=
 =?utf-8?B?VHFTL0RtUjVFS0NTUkNHb2Q1WTZjb0N5UkZMSkFRdU9IY1NhbFBLcUk3S3pQ?=
 =?utf-8?B?ZTNJa3U0aEtxZDd6a3BMNmxNT1NrMkNWb3paNXhIdDRpVDFUTU54Ukp1Nlo0?=
 =?utf-8?B?aTFnbEN4VC9lc0RKaGpWOFlGN2FkRkhqZlRKYmt3R2IySFJsRlN5b3NuYmRH?=
 =?utf-8?B?Sko4STZrK2dYSTIvMTMwN3FYZTRDSVVVa0E4Ymcxd0FRUW1NOWdla2hXTTU1?=
 =?utf-8?B?dXJuc0ZFeUFMNTBQVVE3dDJYTFdTTmxFTnAyOXZQdlZ0Q0dQZ0xsZE5ZR2xm?=
 =?utf-8?B?R2lzbWZwTTVmYlVBaDFXd3BSUkZGSXFxWHhkTWMzRzlidWlkNjZpSFlQUUZr?=
 =?utf-8?B?MVFydy9raGhON3NENlhJa2lOVEdBcHRqdGdOY2xpQmx1L21sMDRkSTZOR0hG?=
 =?utf-8?B?VEdDc3NOa2lHLy9SdCtEaWJ0ZEh5Q2Q2bWRZK09paFdUbGJPYXZYZ2Z0U3M5?=
 =?utf-8?B?TEdEVCtIK3YvcW93YS9xZVI3OFFLeU5maWNqVnhCZjNnRVNsWndFZjgwMXRj?=
 =?utf-8?B?MTZkNE9kYWEwVlNqRkRRNHZaRThiVFBCVk1zSU5xK3RlL0VIa015NkZLc1py?=
 =?utf-8?B?RDhOcWRRL0VsK3lLb1p1K0Z1SlBRNzRXSGxPK3YxZVA5Q1d2Vlp6Q1lnaHR1?=
 =?utf-8?B?cGFPeUZyL09CN0pvV0hEUnd0WUl1NExMM3dDbVRiRVRXTDhIcUJtVEd0MFFy?=
 =?utf-8?B?T2IvTlNKSktTR3BnejFocVdjUmtMZ2U1RlU0Zm9BS1hMZldnT2tZa3lCUy8v?=
 =?utf-8?B?cklpUXBHSWVkN0V1SVNORElvRXFMUk5zRndacFloQ2M1SkNiV09pWXI1b0tn?=
 =?utf-8?B?UENPa0hDaXRDNnF0SGZpSXBaWjJUV3Rram10Mm42NW5GaXNjSzNWdG9nK09F?=
 =?utf-8?B?UUJ2TmNONmlEZXNYSnkzZkRObFhQTHltZENadCsyQytpZWovYTJ4OVlidnln?=
 =?utf-8?B?ZEtveVJmZFpXdXp5L3cvZlNCd1VUNHlFRTJVZ3NXdGhkUHE3bEhiOTdxU2lY?=
 =?utf-8?B?TXBWUlhteTJrTjJ5UDdHSFRxem1HdzM5Q2k5OTZXREJEeFRqTFdZVmFELzRX?=
 =?utf-8?B?UEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4276e4c4-c56a-4650-d01b-08da91c87e11
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1562.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2022 18:32:32.4054 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AoukiUmMM4HEtUZN/Y8pHAXlobDeStEaZoPk1qX6OmPME6r/9h8Eod8V5E19QwaHFoU64nU0WWwUE0Z+9nlAIbu1pbvP2oCA0qkeNWelz+E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3109
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 04/19] drm/i915/perf: Determine gen12 oa ctx
 offset at runtime
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 06/09/2022 23:35, Umesh Nerlige Ramappa wrote:
> On Tue, Sep 06, 2022 at 10:48:50PM +0300, Lionel Landwerlin wrote:
>> On 23/08/2022 23:41, Umesh Nerlige Ramappa wrote:
>>> Some SKUs of same gen12 platform may have different oactxctrl
>>> offsets. For gen12, determine oactxctrl offsets at runtime.
>>>
>>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/i915_perf.c         | 149 ++++++++++++++++++-----
>>>  drivers/gpu/drm/i915/i915_perf_oa_regs.h |   2 +-
>>>  2 files changed, 120 insertions(+), 31 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_perf.c 
>>> b/drivers/gpu/drm/i915/i915_perf.c
>>> index 3526693d64fa..efa7eda83edd 100644
>>> --- a/drivers/gpu/drm/i915/i915_perf.c
>>> +++ b/drivers/gpu/drm/i915/i915_perf.c
>>> @@ -1363,6 +1363,67 @@ static int gen12_get_render_context_id(struct 
>>> i915_perf_stream *stream)
>>>      return 0;
>>>  }
>>> +#define MI_OPCODE(x) (((x) >> 23) & 0x3f)
>>> +#define IS_MI_LRI_CMD(x) (MI_OPCODE(x) == MI_OPCODE(MI_INSTR(0x22, 
>>> 0)))
>>> +#define MI_LRI_LEN(x) (((x) & 0xff) + 1)
>>
>>
>> Maybe you want to put this in intel_gpu_commands.h
>>
>>
>>> +#define __valid_oactxctrl_offset(x) ((x) && (x) != U32_MAX)
>>> +static bool __find_reg_in_lri(u32 *state, u32 reg, u32 *offset)
>>> +{
>>> +    u32 idx = *offset;
>>> +    u32 len = MI_LRI_LEN(state[idx]) + idx;
>>> +
>>> +    idx++;
>>> +    for (; idx < len; idx += 2)
>>> +        if (state[idx] == reg)
>>> +            break;
>>> +
>>> +    *offset = idx;
>>> +    return state[idx] == reg;
>>> +}
>>> +
>>> +static u32 __context_image_offset(struct intel_context *ce, u32 reg)
>>> +{
>>> +    u32 offset, len = (ce->engine->context_size - PAGE_SIZE) / 4;
>>> +    u32 *state = ce->lrc_reg_state;
>>> +
>>> +    for (offset = 0; offset < len; ) {
>>> +        if (IS_MI_LRI_CMD(state[offset])) {
>>
>> I'm a bit concerned you might find other matches with this.
>>
>> Because let's say you run into a 3DSTATE_SUBSLICE_HASH_TABLE 
>> instruction, you'll iterate the instruction dword by dword because 
>> you don't know how to read its length and skip to the next one.
>>
>> Now some of the fields can be programmed from userspace to look like 
>> an MI_LRI header, so you start to read data in the wrong way.
>>
>>
>> Unfortunately I don't have a better solution. My only ask is that you 
>> make __find_reg_in_lri() take the context image size in parameter so 
>> it NEVER goes over the the context image.
>>
>>
>> To limit the risk you should run this function only one at driver 
>> initialization and store the found offset.
>>
>
> Hmm, didn't know that there may be non-LRI commands in the context 
> image or user could add to the context image somehow. Does using the 
> context image size alone address these issues?
>
> Even after including the size in the logic, any reason you think we 
> would be much more safer to do this from init? Is it because context 
> image is not touched by user yet?


The format of the image (commands in there and their offset) is fixed 
per HW generation.

Only the date in each of the commands will vary per context.

In the case of MI_LRI, the register offsets are the same for all 
context, but the value programmed will vary per context.

So executing once should be enough to find the right offset, rather 
than  every time we open the i915-perf stream.


I think once you have the logic to make sure you never read outside the 
image it should be alright.


-Lionel


>
> Thanks,
> Umesh
>
>>
>> Thanks,
>>
>>
>> -Lionel
>>
>>
>>> +            if (__find_reg_in_lri(state, reg, &offset))
>>> +                break;
>>> +        } else {
>>> +            offset++;
>>> +        }
>>> +    }
>>> +
>>> +    return offset < len ? offset : U32_MAX;
>>> +}
>>> +
>>> +static int __set_oa_ctx_ctrl_offset(struct intel_context *ce)
>>> +{
>>> +    i915_reg_t reg = GEN12_OACTXCONTROL(ce->engine->mmio_base);
>>> +    struct i915_perf *perf = &ce->engine->i915->perf;
>>> +    u32 saved_offset = perf->ctx_oactxctrl_offset;
>>> +    u32 offset;
>>> +
>>> +    /* Do this only once. Failure is stored as offset of U32_MAX */
>>> +    if (saved_offset)
>>> +        return 0;
>>> +
>>> +    offset = __context_image_offset(ce, i915_mmio_reg_offset(reg));
>>> +    perf->ctx_oactxctrl_offset = offset;
>>> +
>>> +    drm_dbg(&ce->engine->i915->drm,
>>> +        "%s oa ctx control at 0x%08x dword offset\n",
>>> +        ce->engine->name, offset);
>>> +
>>> +    return __valid_oactxctrl_offset(offset) ? 0 : -ENODEV;
>>> +}
>>> +
>>> +static bool engine_supports_mi_query(struct intel_engine_cs *engine)
>>> +{
>>> +    return engine->class == RENDER_CLASS;
>>> +}
>>> +
>>>  /**
>>>   * oa_get_render_ctx_id - determine and hold ctx hw id
>>>   * @stream: An i915-perf stream opened for OA metrics
>>> @@ -1382,6 +1443,17 @@ static int oa_get_render_ctx_id(struct 
>>> i915_perf_stream *stream)
>>>      if (IS_ERR(ce))
>>>          return PTR_ERR(ce);
>>> +    if (engine_supports_mi_query(stream->engine)) {
>>> +        ret = __set_oa_ctx_ctrl_offset(ce);
>>> +        if (ret && !(stream->sample_flags & SAMPLE_OA_REPORT)) {
>>> +            intel_context_unpin(ce);
>>> +            drm_err(&stream->perf->i915->drm,
>>> +                "Enabling perf query failed for %s\n",
>>> +                stream->engine->name);
>>> +            return ret;
>>> +        }
>>> +    }
>>> +
>>>      switch (GRAPHICS_VER(ce->engine->i915)) {
>>>      case 7: {
>>>          /*
>>> @@ -2412,10 +2484,11 @@ static int 
>>> gen12_configure_oar_context(struct i915_perf_stream *stream,
>>>      int err;
>>>      struct intel_context *ce = stream->pinned_ctx;
>>>      u32 format = stream->oa_buffer.format;
>>> +    u32 offset = stream->perf->ctx_oactxctrl_offset;
>>>      struct flex regs_context[] = {
>>>          {
>>>              GEN8_OACTXCONTROL,
>>> -            stream->perf->ctx_oactxctrl_offset + 1,
>>> +            offset + 1,
>>>              active ? GEN8_OA_COUNTER_RESUME : 0,
>>>          },
>>>      };
>>> @@ -2440,15 +2513,18 @@ static int 
>>> gen12_configure_oar_context(struct i915_perf_stream *stream,
>>>          },
>>>      };
>>> -    /* Modify the context image of pinned context with regs_context*/
>>> -    err = intel_context_lock_pinned(ce);
>>> -    if (err)
>>> -        return err;
>>> +    /* Modify the context image of pinned context with regs_context */
>>> +    if (__valid_oactxctrl_offset(offset)) {
>>> +        err = intel_context_lock_pinned(ce);
>>> +        if (err)
>>> +            return err;
>>> -    err = gen8_modify_context(ce, regs_context, 
>>> ARRAY_SIZE(regs_context));
>>> -    intel_context_unlock_pinned(ce);
>>> -    if (err)
>>> -        return err;
>>> +        err = gen8_modify_context(ce, regs_context,
>>> +                      ARRAY_SIZE(regs_context));
>>> +        intel_context_unlock_pinned(ce);
>>> +        if (err)
>>> +            return err;
>>> +    }
>>>      /* Apply regs_lri using LRI with pinned context */
>>>      return gen8_modify_self(ce, regs_lri, ARRAY_SIZE(regs_lri), 
>>> active);
>>> @@ -2570,6 +2646,7 @@ lrc_configure_all_contexts(struct 
>>> i915_perf_stream *stream,
>>>                 const struct i915_oa_config *oa_config,
>>>                 struct i915_active *active)
>>>  {
>>> +    u32 ctx_oactxctrl = stream->perf->ctx_oactxctrl_offset;
>>>      /* The MMIO offsets for Flex EU registers aren't contiguous */
>>>      const u32 ctx_flexeu0 = stream->perf->ctx_flexeu0_offset;
>>>  #define ctx_flexeuN(N) (ctx_flexeu0 + 2 * (N) + 1)
>>> @@ -2580,7 +2657,7 @@ lrc_configure_all_contexts(struct 
>>> i915_perf_stream *stream,
>>>          },
>>>          {
>>>              GEN8_OACTXCONTROL,
>>> -            stream->perf->ctx_oactxctrl_offset + 1,
>>> +            ctx_oactxctrl + 1,
>>>          },
>>>          { EU_PERF_CNTL0, ctx_flexeuN(0) },
>>>          { EU_PERF_CNTL1, ctx_flexeuN(1) },
>>> @@ -4551,6 +4628,37 @@ static void oa_init_supported_formats(struct 
>>> i915_perf *perf)
>>>      }
>>>  }
>>> +static void i915_perf_init_info(struct drm_i915_private *i915)
>>> +{
>>> +    struct i915_perf *perf = &i915->perf;
>>> +
>>> +    switch (GRAPHICS_VER(i915)) {
>>> +    case 8:
>>> +        perf->ctx_oactxctrl_offset = 0x120;
>>> +        perf->ctx_flexeu0_offset = 0x2ce;
>>> +        perf->gen8_valid_ctx_bit = BIT(25);
>>> +        break;
>>> +    case 9:
>>> +        perf->ctx_oactxctrl_offset = 0x128;
>>> +        perf->ctx_flexeu0_offset = 0x3de;
>>> +        perf->gen8_valid_ctx_bit = BIT(16);
>>> +        break;
>>> +    case 11:
>>> +        perf->ctx_oactxctrl_offset = 0x124;
>>> +        perf->ctx_flexeu0_offset = 0x78e;
>>> +        perf->gen8_valid_ctx_bit = BIT(16);
>>> +        break;
>>> +    case 12:
>>> +        /*
>>> +         * Calculate offset at runtime in oa_pin_context for gen12 and
>>> +         * cache the value in perf->ctx_oactxctrl_offset.
>>> +         */
>>> +        break;
>>> +    default:
>>> +        MISSING_CASE(GRAPHICS_VER(i915));
>>> +    }
>>> +}
>>> +
>>>  /**
>>>   * i915_perf_init - initialize i915-perf state on module bind
>>>   * @i915: i915 device instance
>>> @@ -4589,6 +4697,7 @@ void i915_perf_init(struct drm_i915_private 
>>> *i915)
>>>           * execlist mode by default.
>>>           */
>>>          perf->ops.read = gen8_oa_read;
>>> +        i915_perf_init_info(i915);
>>>          if (IS_GRAPHICS_VER(i915, 8, 9)) {
>>>              perf->ops.is_valid_b_counter_reg =
>>> @@ -4608,18 +4717,6 @@ void i915_perf_init(struct drm_i915_private 
>>> *i915)
>>>              perf->ops.enable_metric_set = gen8_enable_metric_set;
>>>              perf->ops.disable_metric_set = gen8_disable_metric_set;
>>>              perf->ops.oa_hw_tail_read = gen8_oa_hw_tail_read;
>>> -
>>> -            if (GRAPHICS_VER(i915) == 8) {
>>> -                perf->ctx_oactxctrl_offset = 0x120;
>>> -                perf->ctx_flexeu0_offset = 0x2ce;
>>> -
>>> -                perf->gen8_valid_ctx_bit = BIT(25);
>>> -            } else {
>>> -                perf->ctx_oactxctrl_offset = 0x128;
>>> -                perf->ctx_flexeu0_offset = 0x3de;
>>> -
>>> -                perf->gen8_valid_ctx_bit = BIT(16);
>>> -            }
>>>          } else if (GRAPHICS_VER(i915) == 11) {
>>>              perf->ops.is_valid_b_counter_reg =
>>>                  gen7_is_valid_b_counter_addr;
>>> @@ -4633,11 +4730,6 @@ void i915_perf_init(struct drm_i915_private 
>>> *i915)
>>>              perf->ops.enable_metric_set = gen8_enable_metric_set;
>>>              perf->ops.disable_metric_set = gen11_disable_metric_set;
>>>              perf->ops.oa_hw_tail_read = gen8_oa_hw_tail_read;
>>> -
>>> -            perf->ctx_oactxctrl_offset = 0x124;
>>> -            perf->ctx_flexeu0_offset = 0x78e;
>>> -
>>> -            perf->gen8_valid_ctx_bit = BIT(16);
>>>          } else if (GRAPHICS_VER(i915) == 12) {
>>>              perf->ops.is_valid_b_counter_reg =
>>>                  gen12_is_valid_b_counter_addr;
>>> @@ -4651,9 +4743,6 @@ void i915_perf_init(struct drm_i915_private 
>>> *i915)
>>>              perf->ops.enable_metric_set = gen12_enable_metric_set;
>>>              perf->ops.disable_metric_set = gen12_disable_metric_set;
>>>              perf->ops.oa_hw_tail_read = gen12_oa_hw_tail_read;
>>> -
>>> -            perf->ctx_flexeu0_offset = 0;
>>> -            perf->ctx_oactxctrl_offset = 0x144;
>>>          }
>>>      }
>>> diff --git a/drivers/gpu/drm/i915/i915_perf_oa_regs.h 
>>> b/drivers/gpu/drm/i915/i915_perf_oa_regs.h
>>> index f31c9f13a9fc..0ef3562ff4aa 100644
>>> --- a/drivers/gpu/drm/i915/i915_perf_oa_regs.h
>>> +++ b/drivers/gpu/drm/i915/i915_perf_oa_regs.h
>>> @@ -97,7 +97,7 @@
>>>  #define  GEN12_OAR_OACONTROL_COUNTER_FORMAT_SHIFT 1
>>>  #define  GEN12_OAR_OACONTROL_COUNTER_ENABLE       (1 << 0)
>>> -#define GEN12_OACTXCONTROL _MMIO(0x2360)
>>> +#define GEN12_OACTXCONTROL(base) _MMIO((base) + 0x360)
>>>  #define GEN12_OAR_OASTATUS _MMIO(0x2968)
>>>  /* Gen12 OAG unit */
>>
>>

