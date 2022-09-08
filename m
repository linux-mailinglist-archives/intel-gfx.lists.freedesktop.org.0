Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D1E5B29DF
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 01:04:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFAE810E7A4;
	Thu,  8 Sep 2022 23:04:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2880F10E73A
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Sep 2022 23:04:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662678288; x=1694214288;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=gwDDct3YLlBsa+iQMKgMAiUA3tGJBajDOBBlOw07OTc=;
 b=hCMFwiCq1KEqhLdJruXJbaKK9+rgTTiEQ6u4UOjfeAc5XqP7xo5DQyXV
 T1YVvCbvEJa1EIPzkcnyg+a0QlDYHXzuGLunrEREeofnkjgkM5W7iMjaa
 cRazjirLIs+NxQ6bvV6J6oRxHjpzCDnw59MfulpXapE9861bvV0dOEkdC
 rPv2Pwlsouhc/A/8kWqGLQobGeliQFoeyWw1+AFJ6JP3dKfRg7RocbRGU
 DUgbQ3CdnKK69UtT1JCQoVoxABkJtNQdDHu0+nkHVdBiADhah7nT1ORc8
 WfJaNu0DEtPuDgi+q7uA+npCoX5tIzsrMPEzA4iswCpo3IsUKgd/IVVsi A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="383639064"
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="383639064"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 16:04:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="617644289"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP; 08 Sep 2022 16:04:47 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 8 Sep 2022 16:04:47 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 8 Sep 2022 16:04:46 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 8 Sep 2022 16:04:46 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 8 Sep 2022 16:04:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YhamNBLw5Q8WqKfkQOKoA9xkoIBzUdblw2T+qezk4WcfeS1wsqjVMVCbbIFoJBj0cr4JSoahUjxZ2hEmLiPa4OCgpCX4pVuds2U0c2qHgsFnCklc6xn/30KMavs1Gv3cN00OUw46rPJT3sbfrb6rh5cv23gFH3Q7BwAZfb9egGBpOgJBOQzu1BNA+F6FO8qzzduqVyH/Q8L4LQMyUymh4f+9V8ttQBb4N36j0rYAQQ/YNnxljCV+XsnmmBDeDtdBYs+PlYBxAMj/H9B07lsQXN+qbwMNzDHnFj/62YqLX1Z8QLoojfVQdt2IPWn74jv6zDflle8y6TyqViNTYoOhJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nQqOu/JY1ThTRouTSBQO1SNwpLALc/ith4fmEzJr3t8=;
 b=NqoponbzdUce3QtE8apR+m+QX8CcRy712jRmeNKIxaskOCA/YLyzx1RWYIAoQLe7l/ckeOOPjvazH166aV4DyKrUgw9gddqR1m8UPSgAKi8pLfW8aw7gID/6FeaTyLR6zi7asaR+t3rxgFo0ymW/l2//eSVjY/UYY05tEJrTzCycH2CKqLu/AlbQJFGrKTxeKqc6HWvH445o8hzrgxeucJbaXKiz2JynK9LyBtPTsDBpusCQSGY1ywFK/EEFVf+dgrMpPsXM8VycJJ/9lU9gcQPB4qkkF4toHTnrLfmYJufabokh5BmkIvssLZui6zNajA/NP5sqLUNuOYN7JZfOIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 BY5PR11MB4323.namprd11.prod.outlook.com (2603:10b6:a03:1c2::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.14; Thu, 8 Sep
 2022 23:04:44 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc%6]) with mapi id 15.20.5588.018; Thu, 8 Sep 2022
 23:04:44 +0000
Date: Thu, 8 Sep 2022 16:04:42 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Message-ID: <Yxp1CtUFbHEB6IjV@unerlige-ril>
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
 <20220823204155.8178-5-umesh.nerlige.ramappa@intel.com>
 <00a6e452-9df1-04a0-1b91-056bf0bb1265@intel.com>
 <Yxeu+pUALbVBBL55@unerlige-ril>
 <04550b50-2168-959c-7603-0a1d413aa3a8@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <04550b50-2168-959c-7603-0a1d413aa3a8@intel.com>
X-ClientProxiedBy: SJ0PR03CA0248.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::13) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9e9a9041-f05e-4ced-72c6-08da91ee84c6
X-MS-TrafficTypeDiagnostic: BY5PR11MB4323:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 12nzeP2MpTVRkUHu/QcAV+aVFHqE3GpZcJMFy6q9hAQTrrYZSahSUFwYeZ5OasuErCFGUhqz6cfkqnPWiM6dvbz6eNwg3tC7UDieUXJQwjbK/NKqQ4ZGAMRGc9oAVnLhia3Ym8Fwbp5OrSvzqSyDpcVeRUqEB0FoDJaE6M78K91V09RZD1/UnnGbprg8tEdkoSIyqN9ZjJXi7LAm3nKCqKqnXv6GO+9VOixMqeohnxK5dQNWJCF/KmDTW46tMb09E8zuhga2B9N7UJthsh9z/HXStFfkkagmxH2u4Cit/3IKb4VbFD7RYrNGKKS3eMdzFtmQzCMHiBHI2kxrwfG1F0mfOMxijEI8rUiKKn46qusk399T4LyJyL7GOQkoJqeXG1DsiUpB8+UEhcfMZrxDtFJjHyYO4dPHtVT0PExvORiOILX+p6FpVg0s1TqWr2DB42d1+07NpB6fxrkOAqlxfYDcqeqJrJAUB+R3twSK7UfCBScFRqRmkywB9vzuvdTPi4SZMPcn9mg35wBrJZIKQ0W/rfd8cP5aZzPPVpiy46orOz8jmeP5t/1FiWfl5u42/d7HDpUGhuCSc/1fnQHWEzqm79zCEN4G5rl88ZxhosT7ih29ku58alN7vB2bwYRkse8KvD+JM9Ma7REp/nHiSVrboDGnoRbVtMcFX64VrrReh3vl3SmBeaPlR3EeXb6yUTAVSE5BA0WebVcKWHPlsg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(7916004)(366004)(136003)(396003)(376002)(39860400002)(346002)(30864003)(5660300002)(2906002)(66476007)(4326008)(66556008)(66946007)(6862004)(8936002)(8676002)(107886003)(6506007)(33716001)(9686003)(26005)(6512007)(86362001)(478600001)(186003)(83380400001)(41300700001)(6486002)(82960400001)(316002)(6636002)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SDJSeHoyWXMxV1FsOGphYmlZbFpVdnk2R0NvR1lYNGVPMW9MTGV0UE9xRmFN?=
 =?utf-8?B?R1VSS2lUaEdScTg3bUp2dlpWOVNoME4rdUkxcDYxOHppTFl1akErU2lzNlRY?=
 =?utf-8?B?Unp0YXN4ekwxM1lQMUd0Vk9Nb09CNHdCR3lRelJKZVVIMzlVNUxwTE5KQkw5?=
 =?utf-8?B?QWxqY1JrWlloendhZTdLOWZWSmdwbEZvUDMzYkpxWUVPRElTbWhNZmppUmVj?=
 =?utf-8?B?elVXMFA3V2VlMjZBeUM4ZFhTZlhoUmVycFhMN09ROHZNNTRUeGVxQ3hMby9D?=
 =?utf-8?B?MXJWcU5VS084LzB5QjdNdHNldkY1YldTVkVyV0VIdmZtbVU3MHJtWkx0bHZO?=
 =?utf-8?B?aHowd01laDdmdVZjK3Zvd0dtNzRaT1B5RFhjcEgyd0szTGFBVkUwWVZ0NlJJ?=
 =?utf-8?B?NU9BcEhQeG9tbE1HdWpHMmFEZWtzM2RMUEVBSE5yeml4TFRGWGg2VFdCNDJ3?=
 =?utf-8?B?dDl6WjNpZGRINERodmZxcTNmcnA1b1BEaHNsMG00VEUreWlkZzJwcXBLaENo?=
 =?utf-8?B?RUpkU3EwalNiQmpwV2RGTisxREppRTQxRmxuM0J1TmUrVUNtK25jRnhvTWha?=
 =?utf-8?B?bHBRcWxKdHI0RzNZaW5HbE9TMjQ5QXQyVWd6dGI5NlVLL09rTGZmK3lSUVJR?=
 =?utf-8?B?cWxqZjB3UEdaYnhjaHhhY3NGUWYzYjhPdmkyaEtkcmYvc2luajNuaXVYNStr?=
 =?utf-8?B?S0x2T3pHQXlhWTNZTkI4UHM1OElqOW1kbE9LeE5kY3YxNkRYVWhhZXVmc3Zv?=
 =?utf-8?B?YytUZmhsVldIa080V0lBN1BzUzcvaGg5TjNDVnhNaWxWUHd4a2k1SmRndTRE?=
 =?utf-8?B?UEpxK2Jhbi93eDJZSmV0dUphNGgzSWk2YlJYV3Y2aEdCSzFqQ0ZqTGpBYlo0?=
 =?utf-8?B?QTlQREtkSE1jRTVUVStCV0l6UnFvZHBLOTB1WDZlS1hXRE9MRmVYRUxLZ0U0?=
 =?utf-8?B?Sk1Rc1FRcDhzUVhCYndlK1RYMjU1YXdIY25SVW82RW53c1FWWWpNd3RLcDhW?=
 =?utf-8?B?Q0lXY01qazhJQ1dySTJFdnJvZlRJVm5pa2hYbkJxc2c4ZkYvTlQyT1ZXR0Ez?=
 =?utf-8?B?Vk1heHNiNHRIU3J3TVBTSjZsSE9LdisyMUVTSWhYK1l4dDhRTS9rMGFWS0pW?=
 =?utf-8?B?aGV4UXdqRC9tQ3FTRmRnbloveWtndE4vdCsxRFcxRzduUjF1SW1xQWVwK1VR?=
 =?utf-8?B?TnQ3THU0SlBiVW5kb0Nld3B3TEE1SGw0NVA4MGpnVWVKR0Q3UTFuVGhwajQ2?=
 =?utf-8?B?YTFLdm01N1JEQTZ2dnpHUXZmTUZuRFMwYnlCallBSVJQNHVZK0dSa3pwTE8r?=
 =?utf-8?B?TmViVVFOQVQ5azE5Q3gzN1M2MStoK0ZNdi8yVVRiNVJZV0swWi9wMmJIeGJT?=
 =?utf-8?B?bFU5TlErSGVRSjg4WHRPS2MyRm1pOFQyOW14dnMxU1p6QXpHcHNpTHVncTAy?=
 =?utf-8?B?WHl4ZzI5M2pXM0RiZVJEbmgzaHU2TkNYeHkwYk55L1JZc2xPZjJQN0ZXeVU0?=
 =?utf-8?B?SGJQTjJHdXVkOFRvMFB1c2lnaGdSNjJUcWQzN25Qdys4dFp4Q0RPRmVQUHJl?=
 =?utf-8?B?TWFpUElPVStvOS9uei9uTlp5WS81QlBUVVZxbXRac2NsSXVmeGZGY3Y2Q1Qr?=
 =?utf-8?B?YkpvS0FyMjVmSnhjL0FmM1VGNk5kcHNUK3hUaGNzaFR0eHNEK2tZUUhBWDVZ?=
 =?utf-8?B?VnpaSkNYd2sxMVM0UWozVmJtWmdTUUhkS2N5NHg4a1pVbFBKU0VpZEh5Z1N6?=
 =?utf-8?B?NkprUDdkanF6YTVPUGc4eFFhYnhLb2FXaUowZXcyZG4xOW5FaS9HdTdRbExI?=
 =?utf-8?B?TEg2Q1d3YVVxd2liNjd4LzhTSS9Qc3d4RWpicGptc281VEpUMzZ5QkdJOU9q?=
 =?utf-8?B?K0lhWVEyVGg2SFJQT01rMnU1R1VQa3o5SjBPVW9kZ3lXaGVWV3UzeUROTVFa?=
 =?utf-8?B?NTZiQjVuY0N1WlRVZjdDWFpueWNkWUYrK1g4ZTM3emlhR3ptbXVwSCt0ZGRX?=
 =?utf-8?B?V00zK25Vb250WXU3eDExZ2JFUW9IMUlIZ09IbGVYSEhRbjhIY3p5bVpUOHF5?=
 =?utf-8?B?WU9IMFN4WTlCdmk5YzFBZXd2alZ4UHdtbjhEUXF2NlRjdGtoMC9kQXk5RUhI?=
 =?utf-8?B?TzJCQlF4Q0duamNORWV4aWdZTmdMN2VyUVp2NUpyZVZvNkhkODZqMXJxUXBk?=
 =?utf-8?Q?1GcC6sRjEaRbW6BMC/SCcfk=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e9a9041-f05e-4ced-72c6-08da91ee84c6
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2022 23:04:44.3907 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: B0VQDq0XAyyQzM3ydRcYCeO/18GyrFLwyD6B4Kdz98aqHugcP9xflTT5lRXFaCDfw5naNvMcaFuy3cOXGLNzpuyjd/ZRXP+fL63w9OBVUtE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4323
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

On Thu, Sep 08, 2022 at 09:32:12PM +0300, Lionel Landwerlin wrote:
>On 06/09/2022 23:35, Umesh Nerlige Ramappa wrote:
>>On Tue, Sep 06, 2022 at 10:48:50PM +0300, Lionel Landwerlin wrote:
>>>On 23/08/2022 23:41, Umesh Nerlige Ramappa wrote:
>>>>Some SKUs of same gen12 platform may have different oactxctrl
>>>>offsets. For gen12, determine oactxctrl offsets at runtime.
>>>>
>>>>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>>>---
>>>> drivers/gpu/drm/i915/i915_perf.c         | 149 ++++++++++++++++++-----
>>>> drivers/gpu/drm/i915/i915_perf_oa_regs.h |   2 +-
>>>> 2 files changed, 120 insertions(+), 31 deletions(-)
>>>>
>>>>diff --git a/drivers/gpu/drm/i915/i915_perf.c 
>>>>b/drivers/gpu/drm/i915/i915_perf.c
>>>>index 3526693d64fa..efa7eda83edd 100644
>>>>--- a/drivers/gpu/drm/i915/i915_perf.c
>>>>+++ b/drivers/gpu/drm/i915/i915_perf.c
>>>>@@ -1363,6 +1363,67 @@ static int 
>>>>gen12_get_render_context_id(struct i915_perf_stream *stream)
>>>>     return 0;
>>>> }
>>>>+#define MI_OPCODE(x) (((x) >> 23) & 0x3f)
>>>>+#define IS_MI_LRI_CMD(x) (MI_OPCODE(x) == 
>>>>MI_OPCODE(MI_INSTR(0x22, 0)))
>>>>+#define MI_LRI_LEN(x) (((x) & 0xff) + 1)
>>>
>>>
>>>Maybe you want to put this in intel_gpu_commands.h
>>>
>>>
>>>>+#define __valid_oactxctrl_offset(x) ((x) && (x) != U32_MAX)
>>>>+static bool __find_reg_in_lri(u32 *state, u32 reg, u32 *offset)
>>>>+{
>>>>+    u32 idx = *offset;
>>>>+    u32 len = MI_LRI_LEN(state[idx]) + idx;
>>>>+
>>>>+    idx++;
>>>>+    for (; idx < len; idx += 2)
>>>>+        if (state[idx] == reg)
>>>>+            break;
>>>>+
>>>>+    *offset = idx;
>>>>+    return state[idx] == reg;
>>>>+}
>>>>+
>>>>+static u32 __context_image_offset(struct intel_context *ce, u32 reg)
>>>>+{
>>>>+    u32 offset, len = (ce->engine->context_size - PAGE_SIZE) / 4;
>>>>+    u32 *state = ce->lrc_reg_state;
>>>>+
>>>>+    for (offset = 0; offset < len; ) {
>>>>+        if (IS_MI_LRI_CMD(state[offset])) {
>>>
>>>I'm a bit concerned you might find other matches with this.
>>>
>>>Because let's say you run into a 3DSTATE_SUBSLICE_HASH_TABLE 
>>>instruction, you'll iterate the instruction dword by dword because 
>>>you don't know how to read its length and skip to the next one.
>>>
>>>Now some of the fields can be programmed from userspace to look 
>>>like an MI_LRI header, so you start to read data in the wrong way.
>>>
>>>
>>>Unfortunately I don't have a better solution. My only ask is that 
>>>you make __find_reg_in_lri() take the context image size in 
>>>parameter so it NEVER goes over the the context image.
>>>
>>>
>>>To limit the risk you should run this function only one at driver 
>>>initialization and store the found offset.
>>>
>>
>>Hmm, didn't know that there may be non-LRI commands in the context 
>>image or user could add to the context image somehow. Does using the 
>>context image size alone address these issues?
>>
>>Even after including the size in the logic, any reason you think we 
>>would be much more safer to do this from init? Is it because context 
>>image is not touched by user yet?
>
>
>The format of the image (commands in there and their offset) is fixed 
>per HW generation.
>
>Only the date in each of the commands will vary per context.
>
>In the case of MI_LRI, the register offsets are the same for all 
>context, but the value programmed will vary per context.
>
>So executing once should be enough to find the right offset, rather 
>than  every time we open the i915-perf stream.
>

In the current logic, the context image is traversed only once per 
driver load (even though the first time it happens is when a stream is 
opened). see saved_offset below.

>
>I think once you have the logic to make sure you never read outside 
>the image it should be alright.

ok, I will check that __find_reg_in_lri() does not go over the context 
image size.

Thanks,
Umesh

>
>
>-Lionel
>
>
>>
>>Thanks,
>>Umesh
>>
>>>
>>>Thanks,
>>>
>>>
>>>-Lionel
>>>
>>>
>>>>+            if (__find_reg_in_lri(state, reg, &offset))
>>>>+                break;
>>>>+        } else {
>>>>+            offset++;
>>>>+        }
>>>>+    }
>>>>+
>>>>+    return offset < len ? offset : U32_MAX;
>>>>+}
>>>>+
>>>>+static int __set_oa_ctx_ctrl_offset(struct intel_context *ce)
>>>>+{
>>>>+    i915_reg_t reg = GEN12_OACTXCONTROL(ce->engine->mmio_base);
>>>>+    struct i915_perf *perf = &ce->engine->i915->perf;
>>>>+    u32 saved_offset = perf->ctx_oactxctrl_offset;
>>>>+    u32 offset;
>>>>+
>>>>+    /* Do this only once. Failure is stored as offset of U32_MAX */
>>>>+    if (saved_offset)
>>>>+        return 0;
>>>>+
>>>>+    offset = __context_image_offset(ce, i915_mmio_reg_offset(reg));
>>>>+    perf->ctx_oactxctrl_offset = offset;
>>>>+
>>>>+    drm_dbg(&ce->engine->i915->drm,
>>>>+        "%s oa ctx control at 0x%08x dword offset\n",
>>>>+        ce->engine->name, offset);
>>>>+
>>>>+    return __valid_oactxctrl_offset(offset) ? 0 : -ENODEV;
>>>>+}
>>>>+
>>>>+static bool engine_supports_mi_query(struct intel_engine_cs *engine)
>>>>+{
>>>>+    return engine->class == RENDER_CLASS;
>>>>+}
>>>>+
>>>> /**
>>>>  * oa_get_render_ctx_id - determine and hold ctx hw id
>>>>  * @stream: An i915-perf stream opened for OA metrics
>>>>@@ -1382,6 +1443,17 @@ static int oa_get_render_ctx_id(struct 
>>>>i915_perf_stream *stream)
>>>>     if (IS_ERR(ce))
>>>>         return PTR_ERR(ce);
>>>>+    if (engine_supports_mi_query(stream->engine)) {
>>>>+        ret = __set_oa_ctx_ctrl_offset(ce);
>>>>+        if (ret && !(stream->sample_flags & SAMPLE_OA_REPORT)) {
>>>>+            intel_context_unpin(ce);
>>>>+            drm_err(&stream->perf->i915->drm,
>>>>+                "Enabling perf query failed for %s\n",
>>>>+                stream->engine->name);
>>>>+            return ret;
>>>>+        }
>>>>+    }
>>>>+
>>>>     switch (GRAPHICS_VER(ce->engine->i915)) {
>>>>     case 7: {
>>>>         /*
>>>>@@ -2412,10 +2484,11 @@ static int 
>>>>gen12_configure_oar_context(struct i915_perf_stream *stream,
>>>>     int err;
>>>>     struct intel_context *ce = stream->pinned_ctx;
>>>>     u32 format = stream->oa_buffer.format;
>>>>+    u32 offset = stream->perf->ctx_oactxctrl_offset;
>>>>     struct flex regs_context[] = {
>>>>         {
>>>>             GEN8_OACTXCONTROL,
>>>>-            stream->perf->ctx_oactxctrl_offset + 1,
>>>>+            offset + 1,
>>>>             active ? GEN8_OA_COUNTER_RESUME : 0,
>>>>         },
>>>>     };
>>>>@@ -2440,15 +2513,18 @@ static int 
>>>>gen12_configure_oar_context(struct i915_perf_stream *stream,
>>>>         },
>>>>     };
>>>>-    /* Modify the context image of pinned context with regs_context*/
>>>>-    err = intel_context_lock_pinned(ce);
>>>>-    if (err)
>>>>-        return err;
>>>>+    /* Modify the context image of pinned context with regs_context */
>>>>+    if (__valid_oactxctrl_offset(offset)) {
>>>>+        err = intel_context_lock_pinned(ce);
>>>>+        if (err)
>>>>+            return err;
>>>>-    err = gen8_modify_context(ce, regs_context, 
>>>>ARRAY_SIZE(regs_context));
>>>>-    intel_context_unlock_pinned(ce);
>>>>-    if (err)
>>>>-        return err;
>>>>+        err = gen8_modify_context(ce, regs_context,
>>>>+                      ARRAY_SIZE(regs_context));
>>>>+        intel_context_unlock_pinned(ce);
>>>>+        if (err)
>>>>+            return err;
>>>>+    }
>>>>     /* Apply regs_lri using LRI with pinned context */
>>>>     return gen8_modify_self(ce, regs_lri, ARRAY_SIZE(regs_lri), 
>>>>active);
>>>>@@ -2570,6 +2646,7 @@ lrc_configure_all_contexts(struct 
>>>>i915_perf_stream *stream,
>>>>                const struct i915_oa_config *oa_config,
>>>>                struct i915_active *active)
>>>> {
>>>>+    u32 ctx_oactxctrl = stream->perf->ctx_oactxctrl_offset;
>>>>     /* The MMIO offsets for Flex EU registers aren't contiguous */
>>>>     const u32 ctx_flexeu0 = stream->perf->ctx_flexeu0_offset;
>>>> #define ctx_flexeuN(N) (ctx_flexeu0 + 2 * (N) + 1)
>>>>@@ -2580,7 +2657,7 @@ lrc_configure_all_contexts(struct 
>>>>i915_perf_stream *stream,
>>>>         },
>>>>         {
>>>>             GEN8_OACTXCONTROL,
>>>>-            stream->perf->ctx_oactxctrl_offset + 1,
>>>>+            ctx_oactxctrl + 1,
>>>>         },
>>>>         { EU_PERF_CNTL0, ctx_flexeuN(0) },
>>>>         { EU_PERF_CNTL1, ctx_flexeuN(1) },
>>>>@@ -4551,6 +4628,37 @@ static void 
>>>>oa_init_supported_formats(struct i915_perf *perf)
>>>>     }
>>>> }
>>>>+static void i915_perf_init_info(struct drm_i915_private *i915)
>>>>+{
>>>>+    struct i915_perf *perf = &i915->perf;
>>>>+
>>>>+    switch (GRAPHICS_VER(i915)) {
>>>>+    case 8:
>>>>+        perf->ctx_oactxctrl_offset = 0x120;
>>>>+        perf->ctx_flexeu0_offset = 0x2ce;
>>>>+        perf->gen8_valid_ctx_bit = BIT(25);
>>>>+        break;
>>>>+    case 9:
>>>>+        perf->ctx_oactxctrl_offset = 0x128;
>>>>+        perf->ctx_flexeu0_offset = 0x3de;
>>>>+        perf->gen8_valid_ctx_bit = BIT(16);
>>>>+        break;
>>>>+    case 11:
>>>>+        perf->ctx_oactxctrl_offset = 0x124;
>>>>+        perf->ctx_flexeu0_offset = 0x78e;
>>>>+        perf->gen8_valid_ctx_bit = BIT(16);
>>>>+        break;
>>>>+    case 12:
>>>>+        /*
>>>>+         * Calculate offset at runtime in oa_pin_context for gen12 and
>>>>+         * cache the value in perf->ctx_oactxctrl_offset.
>>>>+         */
>>>>+        break;
>>>>+    default:
>>>>+        MISSING_CASE(GRAPHICS_VER(i915));
>>>>+    }
>>>>+}
>>>>+
>>>> /**
>>>>  * i915_perf_init - initialize i915-perf state on module bind
>>>>  * @i915: i915 device instance
>>>>@@ -4589,6 +4697,7 @@ void i915_perf_init(struct 
>>>>drm_i915_private *i915)
>>>>          * execlist mode by default.
>>>>          */
>>>>         perf->ops.read = gen8_oa_read;
>>>>+        i915_perf_init_info(i915);
>>>>         if (IS_GRAPHICS_VER(i915, 8, 9)) {
>>>>             perf->ops.is_valid_b_counter_reg =
>>>>@@ -4608,18 +4717,6 @@ void i915_perf_init(struct 
>>>>drm_i915_private *i915)
>>>>             perf->ops.enable_metric_set = gen8_enable_metric_set;
>>>>             perf->ops.disable_metric_set = gen8_disable_metric_set;
>>>>             perf->ops.oa_hw_tail_read = gen8_oa_hw_tail_read;
>>>>-
>>>>-            if (GRAPHICS_VER(i915) == 8) {
>>>>-                perf->ctx_oactxctrl_offset = 0x120;
>>>>-                perf->ctx_flexeu0_offset = 0x2ce;
>>>>-
>>>>-                perf->gen8_valid_ctx_bit = BIT(25);
>>>>-            } else {
>>>>-                perf->ctx_oactxctrl_offset = 0x128;
>>>>-                perf->ctx_flexeu0_offset = 0x3de;
>>>>-
>>>>-                perf->gen8_valid_ctx_bit = BIT(16);
>>>>-            }
>>>>         } else if (GRAPHICS_VER(i915) == 11) {
>>>>             perf->ops.is_valid_b_counter_reg =
>>>>                 gen7_is_valid_b_counter_addr;
>>>>@@ -4633,11 +4730,6 @@ void i915_perf_init(struct 
>>>>drm_i915_private *i915)
>>>>             perf->ops.enable_metric_set = gen8_enable_metric_set;
>>>>             perf->ops.disable_metric_set = gen11_disable_metric_set;
>>>>             perf->ops.oa_hw_tail_read = gen8_oa_hw_tail_read;
>>>>-
>>>>-            perf->ctx_oactxctrl_offset = 0x124;
>>>>-            perf->ctx_flexeu0_offset = 0x78e;
>>>>-
>>>>-            perf->gen8_valid_ctx_bit = BIT(16);
>>>>         } else if (GRAPHICS_VER(i915) == 12) {
>>>>             perf->ops.is_valid_b_counter_reg =
>>>>                 gen12_is_valid_b_counter_addr;
>>>>@@ -4651,9 +4743,6 @@ void i915_perf_init(struct 
>>>>drm_i915_private *i915)
>>>>             perf->ops.enable_metric_set = gen12_enable_metric_set;
>>>>             perf->ops.disable_metric_set = gen12_disable_metric_set;
>>>>             perf->ops.oa_hw_tail_read = gen12_oa_hw_tail_read;
>>>>-
>>>>-            perf->ctx_flexeu0_offset = 0;
>>>>-            perf->ctx_oactxctrl_offset = 0x144;
>>>>         }
>>>>     }
>>>>diff --git a/drivers/gpu/drm/i915/i915_perf_oa_regs.h 
>>>>b/drivers/gpu/drm/i915/i915_perf_oa_regs.h
>>>>index f31c9f13a9fc..0ef3562ff4aa 100644
>>>>--- a/drivers/gpu/drm/i915/i915_perf_oa_regs.h
>>>>+++ b/drivers/gpu/drm/i915/i915_perf_oa_regs.h
>>>>@@ -97,7 +97,7 @@
>>>> #define  GEN12_OAR_OACONTROL_COUNTER_FORMAT_SHIFT 1
>>>> #define  GEN12_OAR_OACONTROL_COUNTER_ENABLE       (1 << 0)
>>>>-#define GEN12_OACTXCONTROL _MMIO(0x2360)
>>>>+#define GEN12_OACTXCONTROL(base) _MMIO((base) + 0x360)
>>>> #define GEN12_OAR_OASTATUS _MMIO(0x2968)
>>>> /* Gen12 OAG unit */
>>>
>>>
>
