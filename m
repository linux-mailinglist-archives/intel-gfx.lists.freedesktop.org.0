Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C444643E17
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 09:09:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF2F610E2FD;
	Tue,  6 Dec 2022 08:09:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A82B610E300
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 08:09:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670314156; x=1701850156;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7RIMxxw4kysSFGF9bfnrnyO91xrqKjy993k2ENc4iww=;
 b=QoCVzuijC+/bGjLZnvfOcnp095Baz5+hyBNTWQSx1NNP0802cuEhDAkA
 ALZQdFNpeCubra83d43pl0toO+DxLydgk9SaYnjI+vpMYgEQ2PORhzTlJ
 Wnoa4LEIBgAlmkPm4rFdCEnrxdjCE44wS8Heg9Lb0i8Dug9ILtZFCh+2I
 k9YGRHSSWq15R63MHagF4M5g808wzlZ+ZYgfZdlcI6UC8u7xZ/j7Uhh6O
 e5YS7bGCB0wqAIa7d8o5UTSVHJGZQ2Gy0M/1PCnmMzJPqEtqYKQcvx8Q3
 Czz9E9SgBUxL1q+f7++Fdk91olTprcaeKya5BRdAH71yYLcTbwyszGhD6 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="318425333"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="318425333"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 00:09:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="623813111"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="623813111"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 06 Dec 2022 00:09:12 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 6 Dec 2022 00:09:12 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 6 Dec 2022 00:09:11 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 6 Dec 2022 00:09:11 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 6 Dec 2022 00:09:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TbJnGDJ4tFUfwWf0YoQkNlOOl+bdNTN/IE9GFSl7pzf4QlJj6zCBX1YIR+3grD9hQw0BCjiLHB0V5BIfX1es2wxuPG36wtiGw1Ytf4rvnEGenFe1/XKbB8Ln8qxKhcb8cEwZaxbiMrnoy/H68RR3B2vvW7Ofwote4w9KFEuqfq3Zt0v/G9Ms/PgKaDKHPUGVtyVfzqMtAhjy/E7RYnXjNZKGygbBQktrD5uILmZvwe4S+K2b5AyGf3t0l3035VMt/V8rzlVaJuwM+f8jGJA6S+t0L9CGFYRiFTi0B0BnccQ6BxI1X9wB0FX7rCVQWY0HmOrY8O8VyQC8D9Ww4Z0xcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f/c0qSqJOtiL8B3q3IExwiXrkncSSUlnu+LecRJOTwg=;
 b=gyEUOx51t2RDfvSm8yKLojIh8G3vrRcRzJeo70DcG8DoYrjfs+c2YTett+zZjPAbX1N7C2mp6BnmpnkD3lOkc55toQWu+d54fQAXHkWBJH5Spn6QudNH6wR/QsiQTkEw6jZK7nG2AFLCceiIa8pkm4VznWu2sClpupq2ad8en7CMO2wv/vZChQtfseSyMVSMRpfSUkml6uKwcsfG5vSCB6FN4U1Cq5ybJI52MkIi6lTDcdU1v4/hHdooP2mKxtCwvXXGu8nwHfGkpQShZP78p5EC9tUwtc10k9ckEctY0cJ+VXPPRe7FzRBHilV+jHu6J6xtNk82TDbH3fDfV4HgNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5474.namprd11.prod.outlook.com (2603:10b6:610:d5::8)
 by SJ0PR11MB5054.namprd11.prod.outlook.com (2603:10b6:a03:2d3::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Tue, 6 Dec
 2022 08:09:04 +0000
Received: from CH0PR11MB5474.namprd11.prod.outlook.com
 ([fe80::ef2e:ffc8:a4c7:7d64]) by CH0PR11MB5474.namprd11.prod.outlook.com
 ([fe80::ef2e:ffc8:a4c7:7d64%9]) with mapi id 15.20.5880.014; Tue, 6 Dec 2022
 08:09:04 +0000
Message-ID: <9f5e6b3a-5e03-a1fc-c9f7-16545b61658d@intel.com>
Date: Tue, 6 Dec 2022 13:38:53 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.5.0
Content-Language: en-US
From: "Iddamsetty, Aravind" <aravind.iddamsetty@intel.com>
To: <intel-gfx@lists.freedesktop.org>
References: <3a47d428e1929942374b9eaead5372bfaaefdeed.1669629369.git.aravind.iddamsetty@intel.com>
 <97b42ba0ae91b1ed6feb6e5c090bff2445719bf7.1670311877.git.aravind.iddamsetty@intel.com>
In-Reply-To: <97b42ba0ae91b1ed6feb6e5c090bff2445719bf7.1670311877.git.aravind.iddamsetty@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0098.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:27::13) To CH0PR11MB5474.namprd11.prod.outlook.com
 (2603:10b6:610:d5::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5474:EE_|SJ0PR11MB5054:EE_
X-MS-Office365-Filtering-Correlation-Id: 58eb0a76-a826-40f9-1f97-08dad76122fb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: omOPvjiFBfb2Imxwx6rhwhWFnOYXG4YgqP3TuqDMFpyInKBEgc1vMjm+TYahjub6eemhSl/TlI17e/VMYb3nXvleLEZZlQUBXZmukINpS15ceddp5M2VQReykinGXfcwHOhfdbIigjmM1m8wbYmRcU4hNzkmEEO4xJXQ2eKCPveigsjWOhHNTIPVGd3bEjTxDXsJQOl4wBmx+Itc7/lShbN+qq8NEpCaWjFEE1CMCcLVL1u55ap/gkhN3Ds9voQCvcOfBIbB8y0y4RuohySaJVUpAqi02z1fsR1d7inp7SA22ayBEd7Zuk0ddHzrY+b+e167K3u6+lljWEd5XQAK6LJuThdFyMsSMQ1MfwhN8wduuHt4L/aSU+PGwqplGT6L5YelNRqxlaBChUrf2aBsxDZkqEipexICrUIJO/Dvxmcl2VQzzPe4XJblhOlwimL0DvYW1gJ18KADXebq9DKYl4zwc7wu5qsz+DY7ef2gTfWgXOWtxExDFtKpKXOzdJoqJYrwKSTaygAqxrYL98q1ySWy3exOcKLPOGfci4CxOufZVscdk21g619KV9La647+UbJUoBAcdokQLs7Spft2NdVv5KT8cz0iayG5ZkUCpZg0w4ezS9eJRy1By8Ujl1rs7nKtpX4VKbJkxiU1pb8SWjWxsUi0JHk79IS5kRrjPLnq7m3ndZTv5Rmd8v3GM6OuRHCZdzYYoz7LaEpAEapSJdj2Bh9/Ghwyp5TA42IxTr4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5474.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(39860400002)(396003)(136003)(366004)(376002)(451199015)(36756003)(41300700001)(2616005)(2906002)(38100700002)(83380400001)(82960400001)(8936002)(5660300002)(31686004)(6486002)(478600001)(6666004)(107886003)(6512007)(316002)(6916009)(4326008)(66556008)(8676002)(66476007)(66946007)(53546011)(86362001)(6506007)(26005)(31696002)(186003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dDB4UU1Kc2NtNEY3anY1Y2RZYnJUQzNYeGRZZEhQYU5CQTh2MWUzSUppcGtl?=
 =?utf-8?B?OW8vT2lIeng2cDVmWUtKZGVaTFBlS3FybEV0RWhxdUZsQkdEcmxseENBZTFq?=
 =?utf-8?B?RllOcG5INTFsYTlHa0I4bm4yL0syL3NhNUp4ZUE0QSs2QnQyYlo0UW9sUkhu?=
 =?utf-8?B?YW8vVVpmOUVpM1g3QTF0K1dRZ2thREtWUmZ6MjhpbHJzd3BrVkxpKzFOWk0z?=
 =?utf-8?B?ZmFGbW9La0M0bFpjb1RDbDlvNFl2OGJxUjdMTHkrT2RxZ1ZwZ0ozcWxzVUN0?=
 =?utf-8?B?ZXRBZjFIblovRW5ZaHlVblJnb0JlY1dJZ1F4eHVWOFE0SGtnaG9YN1JVK0FM?=
 =?utf-8?B?Sk5KOVYxVzNpeUV1d05tV2loVTdCMjdGMkpTY2NmV1pHRFBMRC9Sd3E4WnVI?=
 =?utf-8?B?SWppeE43SjgxdlZMdk4rRHNIS1J3Q1oyVjlQRTF1ZWc4QkRzMThmU0tudjd6?=
 =?utf-8?B?RG5UVDVFY3VKeDYxT29LT201N3VWVTBJQWJLUkpHbldyMTRSVkEra2pac2V4?=
 =?utf-8?B?VWE3OHptU0JkSzRBbi9mV1RrVmRjYnZtS2ppTS83YXNsbW40N1Y2K3hiTTJS?=
 =?utf-8?B?cGptTGpDYTVrTGdNa2FBeDVSYzdsL1l6YVIxT2ZSOG1jWWtyWEh2eDN5dnhK?=
 =?utf-8?B?QzIxTytFQjVtKzBHQ3JUcTFWK2pvdXI3NjIxTlZHOURCdGJGam9JTy9abjdQ?=
 =?utf-8?B?N3ozbUhCMlhacTYxK01Pd3BCeldPQUtEUGVnWXdQZ2RaelVnR0JPU1F4alJ5?=
 =?utf-8?B?L0RYVEgyOHNiVTR6Nlh3ekVYL2NnZnRNSWNMaG4xNHkrV3VlaGZpdHFVV2Yy?=
 =?utf-8?B?ck5vTkE3aUNjcVgwZ041UHZlS21sMXVNeWJEdmVGMWpCOU92L0VtamlTaGF1?=
 =?utf-8?B?RjhuUHRxOVhMQ1N1OEYvVThaSTJyYmo1SXV5WXMrR1JJRG5nTkdRb2hBWmZL?=
 =?utf-8?B?cm00WXE5ekRYZUpGTTBZMU9lUGtNak9Cc0VYNDhLbHJWaVZrSjRlMWZKalMv?=
 =?utf-8?B?UGFyS2svTWdOcWxSeXl2SVNmQXhkak9HSWViT1pURjFSZWJ3Sm5GWkJVWHY5?=
 =?utf-8?B?NGswSjVaTXBET2ZzS0JoOGR2aDdOTm9Gdmh2bjYrV0dtNFdpZjJyMUNrMTUy?=
 =?utf-8?B?dzNybkoyZFZ0YUpMMTdqaFAyWTRqUDRFS2RjOGw5cGdhbXlWNDZxNGRZZGNC?=
 =?utf-8?B?V25BN3lYR1ZGYUIvellldnR1cXRuZ05HSjRIL3dEdzQ0TlBERlQxTC9rSmsx?=
 =?utf-8?B?SUVnQ0syeFNYREVaRWg1ZGE0dDFLQXRNTmtUU3IrcGQyZ2JlZ2luWm8xWWIw?=
 =?utf-8?B?Rm1JaGc3Q09oWTdYZ1Z2a0NpdXcrUm1IdXp1WjZzMGFlcWRHTVB1UWl5NSsy?=
 =?utf-8?B?QklBRTdSemN3aEd2QWUzeDlTSnoxWWJYUk1XVW1LYnF5RmNsYm83cG5KbXVY?=
 =?utf-8?B?Z21nYnc2L2JBbHVTdTFlOXU2bFVTOHRtTlEyZTZER2hGTm9jWXBaZlRxMjQ2?=
 =?utf-8?B?dG10cUowN2pDdmtjZ0hMa1BvTUJCT0xxZVJrTmhoUndicmFYTzNDai9sM1B0?=
 =?utf-8?B?aGRBN2l5OHhtMU12SEt0eTNleTZvR051TFg3KzhGU2xwMUxoNTZMWkJ6NDl4?=
 =?utf-8?B?dExFdW8rVEhJQjFaVUpXWnVjdXBiT3llUm5OSk9EcWpUakNpSkplVEIyVW5q?=
 =?utf-8?B?NWRQVlFwaEtyREdNTDdJZHVnd1dSdkd5bG0ra09WTlgycnp1QkR2SlJLVWwz?=
 =?utf-8?B?QUVNcVhrSTd3YnNrQloyY2lpZDJKbGhHWXBpd3VGRUJBNmtSdGxmT0RTZkNw?=
 =?utf-8?B?KytkMHdJVXhzdDNuL2VpM0w2MG94T2N0NGVrWlgwTW5NQmFTd3JacmNhK1Vm?=
 =?utf-8?B?Y0hMNDc0NjNscFJqdGxZRFlHK3VDQTdnQ25KYU1RUEZWMWJLWkxkWklaQW03?=
 =?utf-8?B?SGNmK1J1Z2FQRmdyVnRhSzU4ajY1K0VDWU52aXM1OUdIcXplR1oyMG5nTGRu?=
 =?utf-8?B?UmdYZUVJeTdkbjZ4YU9ZUUw3Vmp0b2FlS2Z4TTY5aE92VnFvL0FpeUxabXF2?=
 =?utf-8?B?di9pdUU0RnQxdFBiaHp1VG9sMUIwRExmc1pFaXgvUFUycmE5QUp0WkZCMi9H?=
 =?utf-8?B?eUNPTjF5cUJDbDNDMzFhQXBuRUwyMndlT01xRnpsU0RYSmlqSU9GS0Yvb25N?=
 =?utf-8?B?U3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 58eb0a76-a826-40f9-1f97-08dad76122fb
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5474.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Dec 2022 08:09:03.9113 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: thS/CgZNeV1/3OcFrmTp66KDTtG64tKHl2XXXKFgNeHVbWN9lHMMtXT4UgqmsmZ6Lh1pufStoEIDx3zF/FOET2wmJzDw/ndvvkCNoXcd5Ls=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5054
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/mtl: Define MOCS and PAT
 tables for MTL
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

please ignore this series will be sending a new one. some how patchwork
didn't pick up this neatly.

Thanks,
Aravind.

On 06-12-2022 13:07, Aravind Iddamsetty wrote:
> From: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
> 
> On MTL due to the introduction of L4 cache, coherency and cacheability
> selections are different and also GT can no longer allocate on LLC. The
> MOCS/PAT tables needs an update.
> 
> BSpec: 44509, 45101, 44235
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
> Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gtt.c     | 23 +++++++-
>  drivers/gpu/drm/i915/gt/intel_gtt.h     |  9 +++
>  drivers/gpu/drm/i915/gt/intel_mocs.c    | 76 +++++++++++++++++++++++--
>  drivers/gpu/drm/i915/gt/selftest_mocs.c |  2 +-
>  drivers/gpu/drm/i915/i915_pci.c         |  1 +
>  5 files changed, 105 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
> index e37164a60d37..428849248c34 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
> @@ -467,6 +467,25 @@ void gtt_write_workarounds(struct intel_gt *gt)
>  	}
>  }
>  
> +static void mtl_setup_private_ppat(struct intel_uncore *uncore)
> +{
> +	intel_uncore_write(uncore, GEN12_PAT_INDEX(0),
> +			   MTL_PPAT_L4_0_WB);
> +	intel_uncore_write(uncore, GEN12_PAT_INDEX(1),
> +			   MTL_PPAT_L4_1_WT | MTL_2_COH_1W);
> +	intel_uncore_write(uncore, GEN12_PAT_INDEX(2),
> +			   MTL_PPAT_L4_3_UC | MTL_2_COH_1W);
> +	intel_uncore_write(uncore, GEN12_PAT_INDEX(3),
> +			   MTL_PPAT_L4_0_WB | MTL_2_COH_1W);
> +	intel_uncore_write(uncore, GEN12_PAT_INDEX(4),
> +			   MTL_PPAT_L4_0_WB | MTL_3_COH_2W);
> +
> +	/*
> +	 * Remaining PAT entries are left at the hardware-default
> +	 * fully-cached setting
> +	 */
> +}
> +
>  static void tgl_setup_private_ppat(struct intel_uncore *uncore)
>  {
>  	/* TGL doesn't support LLC or AGE settings */
> @@ -602,7 +621,9 @@ void setup_private_pat(struct intel_gt *gt)
>  
>  	GEM_BUG_ON(GRAPHICS_VER(i915) < 8);
>  
> -	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50))
> +	if (IS_METEORLAKE(i915))
> +		mtl_setup_private_ppat(uncore);
> +	else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50))
>  		xehp_setup_private_ppat(gt);
>  	else if (GRAPHICS_VER(i915) >= 12)
>  		tgl_setup_private_ppat(uncore);
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
> index d1900fec6cd1..8a3e0a6793dd 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
> @@ -147,6 +147,15 @@ typedef u64 gen8_pte_t;
>  #define GEN8_PDE_IPS_64K BIT(11)
>  #define GEN8_PDE_PS_2M   BIT(7)
>  
> +#define MTL_PPAT_L4_CACHE_POLICY_MASK	REG_GENMASK(3, 2)
> +#define MTL_PAT_INDEX_COH_MODE_MASK	REG_GENMASK(1, 0)
> +#define MTL_PPAT_L4_3_UC	REG_FIELD_PREP(MTL_PPAT_L4_CACHE_POLICY_MASK, 3)
> +#define MTL_PPAT_L4_1_WT	REG_FIELD_PREP(MTL_PPAT_L4_CACHE_POLICY_MASK, 1)
> +#define MTL_PPAT_L4_0_WB	REG_FIELD_PREP(MTL_PPAT_L4_CACHE_POLICY_MASK, 0)
> +#define MTL_3_COH_2W	REG_FIELD_PREP(MTL_PAT_INDEX_COH_MODE_MASK, 3)
> +#define MTL_2_COH_1W	REG_FIELD_PREP(MTL_PAT_INDEX_COH_MODE_MASK, 2)
> +#define MTL_0_COH_NON	REG_FIELD_PREP(MTL_PAT_INDEX_COH_MODE_MASK, 0)
> +
>  enum i915_cache_level;
>  
>  struct drm_i915_gem_object;
> diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
> index 69b489e8dfed..89570f137b2c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
> @@ -40,6 +40,10 @@ struct drm_i915_mocs_table {
>  #define LE_COS(value)		((value) << 15)
>  #define LE_SSE(value)		((value) << 17)
>  
> +/* Defines for the tables (GLOB_MOCS_0 - GLOB_MOCS_16) */
> +#define _L4_CACHEABILITY(value)	((value) << 2)
> +#define IG_PAT(value)		((value) << 8)
> +
>  /* Defines for the tables (LNCFMOCS0 - LNCFMOCS31) - two entries per word */
>  #define L3_ESC(value)		((value) << 0)
>  #define L3_SCC(value)		((value) << 1)
> @@ -50,6 +54,7 @@ struct drm_i915_mocs_table {
>  /* Helper defines */
>  #define GEN9_NUM_MOCS_ENTRIES	64  /* 63-64 are reserved, but configured. */
>  #define PVC_NUM_MOCS_ENTRIES	3
> +#define MTL_NUM_MOCS_ENTRIES	16
>  
>  /* (e)LLC caching options */
>  /*
> @@ -73,6 +78,12 @@ struct drm_i915_mocs_table {
>  #define L3_2_RESERVED		_L3_CACHEABILITY(2)
>  #define L3_3_WB			_L3_CACHEABILITY(3)
>  
> +/* L4 caching options */
> +#define L4_0_WB			_L4_CACHEABILITY(0)
> +#define L4_1_WT			_L4_CACHEABILITY(1)
> +#define L4_2_RESERVED		_L4_CACHEABILITY(2)
> +#define L4_3_UC			_L4_CACHEABILITY(3)
> +
>  #define MOCS_ENTRY(__idx, __control_value, __l3cc_value) \
>  	[__idx] = { \
>  		.control_value = __control_value, \
> @@ -416,6 +427,57 @@ static const struct drm_i915_mocs_entry pvc_mocs_table[] = {
>  	MOCS_ENTRY(2, 0, L3_3_WB),
>  };
>  
> +static const struct drm_i915_mocs_entry mtl_mocs_table[] = {
> +	/* Error - Reserved for Non-Use */
> +	MOCS_ENTRY(0,
> +		   IG_PAT(0),
> +		   L3_LKUP(1) | L3_3_WB),
> +	/* Cached - L3 + L4 */
> +	MOCS_ENTRY(1,
> +		   IG_PAT(1),
> +		   L3_LKUP(1) | L3_3_WB),
> +	/* L4 - GO:L3 */
> +	MOCS_ENTRY(2,
> +		   IG_PAT(1),
> +		   L3_LKUP(1) | L3_1_UC),
> +	/* Uncached - GO:L3 */
> +	MOCS_ENTRY(3,
> +		   IG_PAT(1) | L4_3_UC,
> +		   L3_LKUP(1) | L3_1_UC),
> +	/* L4 - GO:Mem */
> +	MOCS_ENTRY(4,
> +		   IG_PAT(1),
> +		   L3_LKUP(1) | L3_GLBGO(1) | L3_1_UC),
> +	/* Uncached - GO:Mem */
> +	MOCS_ENTRY(5,
> +		   IG_PAT(1) | L4_3_UC,
> +		   L3_LKUP(1) | L3_GLBGO(1) | L3_1_UC),
> +	/* L4 - L3:NoLKUP; GO:L3 */
> +	MOCS_ENTRY(6,
> +		   IG_PAT(1),
> +		   L3_1_UC),
> +	/* Uncached - L3:NoLKUP; GO:L3 */
> +	MOCS_ENTRY(7,
> +		   IG_PAT(1) | L4_3_UC,
> +		   L3_1_UC),
> +	/* L4 - L3:NoLKUP; GO:Mem */
> +	MOCS_ENTRY(8,
> +		   IG_PAT(1),
> +		   L3_GLBGO(1) | L3_1_UC),
> +	/* Uncached - L3:NoLKUP; GO:Mem */
> +	MOCS_ENTRY(9,
> +		   IG_PAT(1) | L4_3_UC,
> +		   L3_GLBGO(1) | L3_1_UC),
> +	/* Display - L3; L4:WT */
> +	MOCS_ENTRY(14,
> +		   IG_PAT(1) | L4_1_WT,
> +		   L3_LKUP(1) | L3_3_WB),
> +	/* CCS - Non-Displayable */
> +	MOCS_ENTRY(15,
> +		   IG_PAT(1),
> +		   L3_GLBGO(1) | L3_1_UC),
> +};
> +
>  enum {
>  	HAS_GLOBAL_MOCS = BIT(0),
>  	HAS_ENGINE_MOCS = BIT(1),
> @@ -445,7 +507,13 @@ static unsigned int get_mocs_settings(const struct drm_i915_private *i915,
>  	memset(table, 0, sizeof(struct drm_i915_mocs_table));
>  
>  	table->unused_entries_index = I915_MOCS_PTE;
> -	if (IS_PONTEVECCHIO(i915)) {
> +	if (IS_METEORLAKE(i915)) {
> +		table->size = ARRAY_SIZE(mtl_mocs_table);
> +		table->table = mtl_mocs_table;
> +		table->n_entries = MTL_NUM_MOCS_ENTRIES;
> +		table->uc_index = 9;
> +		table->unused_entries_index = 1;
> +	} else if (IS_PONTEVECCHIO(i915)) {
>  		table->size = ARRAY_SIZE(pvc_mocs_table);
>  		table->table = pvc_mocs_table;
>  		table->n_entries = PVC_NUM_MOCS_ENTRIES;
> @@ -646,9 +714,9 @@ void intel_mocs_init_engine(struct intel_engine_cs *engine)
>  		init_l3cc_table(engine->gt, &table);
>  }
>  
> -static u32 global_mocs_offset(void)
> +static u32 global_mocs_offset(struct intel_gt *gt)
>  {
> -	return i915_mmio_reg_offset(GEN12_GLOBAL_MOCS(0));
> +	return i915_mmio_reg_offset(GEN12_GLOBAL_MOCS(0)) + gt->uncore->gsi_offset;
>  }
>  
>  void intel_set_mocs_index(struct intel_gt *gt)
> @@ -671,7 +739,7 @@ void intel_mocs_init(struct intel_gt *gt)
>  	 */
>  	flags = get_mocs_settings(gt->i915, &table);
>  	if (flags & HAS_GLOBAL_MOCS)
> -		__init_mocs_table(gt->uncore, &table, global_mocs_offset());
> +		__init_mocs_table(gt->uncore, &table, global_mocs_offset(gt));
>  
>  	/*
>  	 * Initialize the L3CC table as part of mocs initalization to make
> diff --git a/drivers/gpu/drm/i915/gt/selftest_mocs.c b/drivers/gpu/drm/i915/gt/selftest_mocs.c
> index f27cc28608d4..66b3c6fcf1f1 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_mocs.c
> @@ -137,7 +137,7 @@ static int read_mocs_table(struct i915_request *rq,
>  		return 0;
>  
>  	if (HAS_GLOBAL_MOCS_REGISTERS(rq->engine->i915))
> -		addr = global_mocs_offset();
> +		addr = global_mocs_offset(rq->engine->gt);
>  	else
>  		addr = mocs_offset(rq->engine);
>  
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 414b4bfd514b..8e872cb89169 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -1147,6 +1147,7 @@ static const struct intel_device_info mtl_info = {
>  	.has_flat_ccs = 0,
>  	.has_gmd_id = 1,
>  	.has_guc_deprivilege = 1,
> +	.has_llc = 0,
>  	.has_mslice_steering = 0,
>  	.has_snoop = 1,
>  	.__runtime.memory_regions = REGION_SMEM | REGION_STOLEN_LMEM,
