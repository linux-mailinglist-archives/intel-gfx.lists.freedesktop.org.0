Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9660B6C133E
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 14:27:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 061B510E424;
	Mon, 20 Mar 2023 13:27:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D900910E03B
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 13:27:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679318824; x=1710854824;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1xFCVVTSa+4uXEavc0OCAKXbNvpeBsO9DDENmjc4wAY=;
 b=kxLQmv8cOv2/5Rd4KOn9hZk3/3aP4rtISLsN7VDQeYbfjcWGFzRwLLy3
 nOl2rGCBZHL73m6XJsh3e6MgrAZ0WgpaIm3yupeDooS8o1FJOpUuep0L2
 ysv5Kr95J8WyLEma2W9Iy+V74Nho/34cJfndbRnISJhg7ZYN2p51CJ3sx
 aTGQ3agsP9F4ABTHY8F9IWSqeULQS/o5WbTKjtFy15v4KpsLsw3fc383G
 QxtWFKB7ph9P8hx8k0BW1DeS6M5W50Y2Tdecnutk7yG40yvOr90BeBgJu
 mp8jwnTa7PRp/TVh3VIjJfIrVdqCjQMuQsN5x5Lmb5HED5tZqlKfU94gd g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="401233698"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="401233698"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 06:27:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="631121018"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="631121018"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 20 Mar 2023 06:26:59 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 20 Mar 2023 06:26:59 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 20 Mar 2023 06:26:59 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 20 Mar 2023 06:26:59 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 20 Mar 2023 06:26:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RZuuvxAKlnlhOIjngO3/6zuvX7WVBaqOOt537yRMg/NSoEZJLYtcLUfrwsoKcdOIYnO9Wkw0NpkkG7gwQHzssoG56vTBF/YIiDAONwe5c4UUIXvIUqxGk9xurzhKDzUcIAguXCmK/ub742rixarzIpiuLbohWcTbaaU2PPiYFiLOO5/6ZvLmV+MSyZvMwcpHavCfFqkVrpPEhQIx5fCmx//PnQMURfapYCUCbM2dnt3m1Y3GHNWyECMDXgw7SSZmqKjqBo5RG3MLF35rJKfWE6tyTrLi53iv16dPbluDzqYUBz8BMlM+ElIjl2N3flWXCfMFeWrCRl2vfehnjGWSKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7n6BG+/m3Plut06aQQO4YleglLA8YD2wAOgaemVFTqw=;
 b=D1Vl/KjRiUVOfpXe4DwU92U60WtipPY35u4IkFRU7/RG/QTEkmD43FJSrDp9VLVne/nF8Sh+TsJZdNbXGSnXJWFVSreF1LCH4LikGy/MhGL3UyNWgsRSaVBMZsYqarY7bqOLHmVi2ZnjOWfC8I+4YrTsKibyYS4amvfA8QdBu+a3BnWRKszKhTOpylP6bbP+4r70KAckbL92DZXYaOpiSIyid60xe+LYo/32XW6THvrYpA0zF9hPcVExH31G5kwPfaG7/GP0oxL1RxsfAsigk4esvqZBGUFgoZ5htTW3jGE7uve81nt8/ck1QePvQUey5qvgerF899jwj8SBIbaSFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM8PR11MB5719.namprd11.prod.outlook.com (2603:10b6:8:10::6) by
 IA1PR11MB6265.namprd11.prod.outlook.com (2603:10b6:208:3e7::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6178.37; Mon, 20 Mar 2023 13:26:55 +0000
Received: from DM8PR11MB5719.namprd11.prod.outlook.com
 ([fe80::fadf:936a:329c:20f5]) by DM8PR11MB5719.namprd11.prod.outlook.com
 ([fe80::fadf:936a:329c:20f5%5]) with mapi id 15.20.6178.037; Mon, 20 Mar 2023
 13:26:55 +0000
Message-ID: <dc5ded98-7cb9-23f9-999b-341ee0e03e54@intel.com>
Date: Mon, 20 Mar 2023 18:56:40 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230320124429.786985-1-jani.nikula@intel.com>
 <20230320124429.786985-2-jani.nikula@intel.com>
From: "Modem, Bhanuprakash" <bhanuprakash.modem@intel.com>
In-Reply-To: <20230320124429.786985-2-jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SGXP274CA0015.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b8::27)
 To DM8PR11MB5719.namprd11.prod.outlook.com
 (2603:10b6:8:10::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM8PR11MB5719:EE_|IA1PR11MB6265:EE_
X-MS-Office365-Filtering-Correlation-Id: 6dcc0f36-ea05-4565-85fc-08db2946c62f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dkNXlo9Cjm1vTa0RuoIno3/UWJTiV1INo6Osi/v5qB/B7D9E0Yw0J30ffeMEc40UVQzgdIDuD4LHDCy57AITD2icgP0rJrNKtZeH4iFh0fUp7OTPQ2Bi/pU6F1mNUaqBkhZI5Uk57K6gWujJ2216HethybMLE3pviOaqfNYQilvUen1krb8hGp2eCCWLqn98Y/YSKEs0p0F8sPhcXFYDNF2PbDHuoobW7WGZEWxozH3iqC4V90UazgUIuy5DCm0h6VM+87hidd9PGhwrBB9yqGt8c1YDI7soFOLxslSWiZnDRsOIljkw+IBS7V+pEoQRbVAnhEWcYEe+7ylLLTOKhtcxAt0zyQb93CyoW5WMqhhIHlgtfSAOVtoQGvycfqCopADRJ1jLxXF8bM1C3bjM0h2Zcytvs5vgA1JH5hXedEG2VrwtP8HM0yo6/FU4I9qukA8QY48Z5QjAQfh0iKHqE2t5567AW4dmmPpBEA4WYiEU+DzLBYWrfLEezmu9OZdxXGlRNMXBhT2cF5oTn5tL1/HiYZ0HYppkYkO0Taa9ArGj0N59/14yvlSJ2RSpfqW5Cyjao2HgI1sCf8c1wk07BXTX9Anoi+yubNt1oM//HhL/jcVYWu/KFHRvyRTeUr+gNlwT2dhRXlage5IElCLgdkPU2ROhwv1k5/EKbO3H/z5Ek1xZHQPHyVGDKzgr8D/3
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5719.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(396003)(136003)(376002)(39860400002)(366004)(451199018)(2906002)(82960400001)(31696002)(86362001)(186003)(6666004)(8936002)(38100700002)(5660300002)(2616005)(41300700001)(26005)(6506007)(6512007)(316002)(478600001)(31686004)(36756003)(966005)(4326008)(8676002)(6486002)(66556008)(66476007)(66946007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NFo2R1p5cGMyb3ZDQ0FzMXRqQ0prZ2c3TEVCdUt3R1hDVzRHQlMyb1YxaUJv?=
 =?utf-8?B?dUlwbUVLNmV1cVlZTTVmWTM1L0RZUFdsZHlpRksxYVp1eVVKbEgxT3FhWTBT?=
 =?utf-8?B?TXFlQkF5WWxTa3lkcCtndHp0MUI2U3VzbDVnYzVNWGc4ZTV2eFpqRGQyZlNK?=
 =?utf-8?B?VkxTWHo3WnhPNUhCM3lWaGNkWGhkSk9MY0oweWVPdkZBSUkyNENSOTViUEV3?=
 =?utf-8?B?bXFRV2lydXdUUDFEQ1lOMkVBVjV2WGVDaTQ1TGVqV2pWbnZtUENkNWVXRXlu?=
 =?utf-8?B?cFhQQkh6M2VQUm91U1B1MVMrbW1Fditrc0VUU2hWVHlNMzlrOC9FVStUN1dE?=
 =?utf-8?B?WDhkamMzc1N6NHJsaEh0NTFLVm9hS3BkbzFrWTErTmFJUHExNjFwNmpGdnBl?=
 =?utf-8?B?SnZxai9JbUZLTDRqQlJ1V01MOXZrSWkvUHR1SDhyaWVMWmdCUFUyYVZyQzYx?=
 =?utf-8?B?c1k1S0RvQmxQdG9iVVFHbFptTDZja0hvL2ZxVWdUMG4vUWJreEZwRlVHKzV6?=
 =?utf-8?B?bTIrN3hZTHJGV244S1g4aDZvTExDV213cmdOU2NHWHp2Z2REaVFlMjNYSEh6?=
 =?utf-8?B?Wjh5Z1dNZEkwZmkwWENybHF0dDFGbkQ2dWRvRzVjT1ZCUkVwNWtVOVBuTjRX?=
 =?utf-8?B?YVMrMUVmVTExeGx3SHpLaGFRVVdUa2EvbEZlelZ2Uk5lQ1hic0JCZDd0dndm?=
 =?utf-8?B?VExkajdLb3lBUGdNUUExQ3dISllDWXJaNkswMnhoUVdNbTcweG9qMlZlR2NI?=
 =?utf-8?B?UmFxc1lRUVhuMWIrY0hjeUJlWVBWeEM2S1o1Nm9tQXlMamhjUUVQV3dvMmNU?=
 =?utf-8?B?NCtZTEdZa1F5Mnh6b2FsaC9RR1JKYmR5WjBlWVd4UVZRRURQQ1MyVTk3V1Ev?=
 =?utf-8?B?NU9FTnFoanU5ZUNUbTBUc0xaYlBYY3lSSXNUU1dTRlcrT0VLQTJZU0wxcU4w?=
 =?utf-8?B?TWowMlRySmkrZ0dBbFM0bEtMQ1FyTysvYnZFVjlwaDZ1K0hXcGpUSXhna3hv?=
 =?utf-8?B?ZTdobXEydTRxck43R084WThxUWp3Y00xZjRIUWVsL0FsRTJXdlZZdkJCa3J5?=
 =?utf-8?B?OFZTL0ZNODVtMXZNbkhVV0tXUlgzSXVRYXQzOU1CaHFaMTc3SjFQWG1sVkEv?=
 =?utf-8?B?WDQvOGdVbGU5OFl5cUpNdHBQbUZCZGhiQ0p3elprN2FxcHVjenFuOHQwWHBM?=
 =?utf-8?B?c2orTEpreEVEYTNNTTNTUjJzYlZuRkthNUNSeWJVbVpVNnFYeGNnYmtoQjl4?=
 =?utf-8?B?QkRnZFlxcC92eUZoVVErdXVSUjBYbUR4aGp4QVpyVkRNMmpsaU1nc1p6VWto?=
 =?utf-8?B?VE9scWQrN1l5Y0M5M29KeSsyaG1JR09WUTZrTy9FMFdGcjljcWEwOHZtY05D?=
 =?utf-8?B?MXJtbDVPRHhTWm82d29rQ0lFaFcydWY5ZjA1bjFBeERYVGdaUWdYd2Rla05y?=
 =?utf-8?B?d2ZjeVlCQmZFSnQvQkVsK0FBc0llcTd6YWtiZnJTRDlDTnAvQlBKSWxLaExZ?=
 =?utf-8?B?RUp1Z0dkeklXcHZVMTRDcFpRenMxVzVrS05ZUFMxT3ZBWW1SSzl0aGU3R2d6?=
 =?utf-8?B?c2dNYUpaT0RsSHp1SURBdDlMV1AzbFJ4VGFNTlp4ZlFjSkJTS1Yyb1FTdlFZ?=
 =?utf-8?B?ZUNUMlNKOWpQVmYra1VESTFYRDVLWEcxQXZocTQwWWorREY3N05iQ0VORWw1?=
 =?utf-8?B?Qm4xNWFybGs1bjNPSllndDFpeFNaM0lRaWlabWYvVXhhaHJtN3ZZZGpTdWFh?=
 =?utf-8?B?ZXBCcjV5QnAvMlR1YW1PUnpoTGYzZTR0SldDVlRITmJWYWZzNUtLVUcwOEJ1?=
 =?utf-8?B?TS9jTkwxNHh2cmZyZDFoTW56V0FwdTJjcU4rTG1ncHJFRm1yRnhCa0JmQ3Fx?=
 =?utf-8?B?NWpla2M1N2dJQUxCb0h3ZE9pMGd0L2UyNUhxcy9TaWdCdzRIZWxxVENiSnps?=
 =?utf-8?B?U0o3RGxHbkNHMEFWdXdQc3ppd3NPVTBuWWlBYWVuVnlrVS9YY0RVS1pBZ29T?=
 =?utf-8?B?VlV1SWhQQlJ6eHNyWG9tYmFJTStyV2FNcyt5Rk9abWdhaUthUk9HMVpodEVa?=
 =?utf-8?B?cXN0YWFHUUhMN29pUy9Tczh4dytDL3V4bURRNGZuRGR3V0ZFbVlhTURSWnM4?=
 =?utf-8?B?bVpObXZmT1dwSXRFd25ISG8zcWFvcEM0VUV1aWpBM2J6enBDL1J0V3dWODZN?=
 =?utf-8?Q?p/1LjSCwAJTtn8Q4L+f5Uns=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6dcc0f36-ea05-4565-85fc-08db2946c62f
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5719.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2023 13:26:55.6415 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E0uUuXUW+KzpIsRK1LdsbJ2A5ePBADU9b0N7yPHTKnW4mp3jh8avXCTEoIBQwzpwyMbyXchOZpPGG3qve+5kxMdubebeMvt2FOksPBl29A4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6265
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/debugfs: add crtc i915_pipe
 debugfs file
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



On Mon-20-03-2023 06:14 pm, Jani Nikula wrote:
> The pipe may differ from crtc index if pipes are fused off. For testing
> purposes, IGT needs to know the pipe.
> 
> There's already a I915_GET_PIPE_FROM_CRTC_ID IOCTL for this. However,
> the upcoming Xe driver won't have that IOCTL, and going forward, we'll
> want a unified interface for testing i915 and Xe, as they share the
> display code. Thus add the debugfs for i915 display.
> 
> v2: User letters for pipe names (Ville)
> 
> Cc: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

With IGT [1], this patch is

Tested-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>

[1]: 
https://patchwork.freedesktop.org/patch/msgid/20230320131342.2980032-1-bhanuprakash.modem@intel.com

- Bhanu

> ---
>   .../gpu/drm/i915/display/intel_display_debugfs.c    | 13 +++++++++++++
>   1 file changed, 13 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 3c76e718b951..cc5026272558 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -1383,6 +1383,17 @@ static int i915_current_bpc_show(struct seq_file *m, void *data)
>   }
>   DEFINE_SHOW_ATTRIBUTE(i915_current_bpc);
>   
> +/* Pipe may differ from crtc index if pipes are fused off */
> +static int intel_crtc_pipe_show(struct seq_file *m, void *unused)
> +{
> +	struct intel_crtc *crtc = m->private;
> +
> +	seq_printf(m, "%c\n", pipe_name(crtc->pipe));
> +
> +	return 0;
> +}
> +DEFINE_SHOW_ATTRIBUTE(intel_crtc_pipe);
> +
>   /**
>    * intel_connector_debugfs_add - add i915 specific connector debugfs files
>    * @connector: pointer to a registered drm_connector
> @@ -1453,4 +1464,6 @@ void intel_crtc_debugfs_add(struct intel_crtc *crtc)
>   
>   	debugfs_create_file("i915_current_bpc", 0444, root, crtc,
>   			    &i915_current_bpc_fops);
> +	debugfs_create_file("i915_pipe", 0444, root, crtc,
> +			    &intel_crtc_pipe_fops);
>   }
