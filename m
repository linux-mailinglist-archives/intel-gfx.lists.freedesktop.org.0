Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C426FD188
	for <lists+intel-gfx@lfdr.de>; Tue,  9 May 2023 23:38:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B899B10E002;
	Tue,  9 May 2023 21:38:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AD4410E002
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 May 2023 21:38:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683668306; x=1715204306;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=mr7j7/1Owg5cOGSEp14SzgXp2jgYqQNWFhjt9+OK75U=;
 b=NpFSicfQaQDaUAw5pALGIfLnhc+PaS7IIZozJsvxKBXbrPD63NocSGys
 s3tQQB6pgPlxR7Hpm2IvvM9feXrU2w/NZyr6cnTaGJ/zpB3vvSgzF6By7
 EVHPug/F4tDZAP5KA366W5e4EtlRYglv5KO7b9YOzDxEz4NDN8H5KD0sG
 V29hnSwjAQQK3rCx+mNK9Jlqllcd0pVz5pYhzhjGnHGI6OUwuYhN2Jz4r
 Z/EmZCJhGKk29iS+Sswz3GNG4BWWG7la9HVC3K/sRtgSnwyxM/12jrIF3
 xApW9hF+Zn/SSXoxN6MxFqm2W5q1HChdcNFnFbMskrGMan2fVD4/SDSlo A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="348892797"
X-IronPort-AV: E=Sophos;i="5.99,262,1677571200"; d="scan'208";a="348892797"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2023 14:38:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="945448322"
X-IronPort-AV: E=Sophos;i="5.99,262,1677571200"; d="scan'208";a="945448322"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP; 09 May 2023 14:38:23 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 9 May 2023 14:38:22 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 9 May 2023 14:38:22 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 9 May 2023 14:38:22 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 9 May 2023 14:38:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b+W6mBvi5cRdQOtb0HknlXeQuO9jJuBdkGDGXvDwH3YePtWQzfAwEYMwC2e9LtL9+WmyYLFT4hinwOgXwsi2KDFdSKlU40FiJyC9b2yFv9zM18HZaqY3QaG90uxAEYzhZGn8slwOHQjCQT7eb2v0c26busZg2O2I0k8tgnEcivR6nCIBxNLP0Cgn/E5tSl+r8KJHQq+1WgoWk227t3piU3FzniiPJrGCphFueRFlGJ1pweVwzC93tTI5MttjnJojKPPskDGSyg6Elg2ChgZxlGr17cJ0krm+7XSSxRJP0aoQ7A5PnRxW2r7QGFgbsuA9GFU1Sc5+6SsDMwjkGdDhBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7bqv6sGn5h/q6BX+XiAK0YpOeySXgkeqsR8nnOmuEtw=;
 b=MkpWAcCjfM9FiAPPuSeye0B79BdZGE0npN4yRBIqq6YtvDU6fctziCo5SW6Wo8hJ32bXQj4lwvs2Go+12lywq3ay0OQSjeHOeYAQg+V7an/9VFoLIx+QnaCHVc0e9NGTEi7fIVWNu+HgkFelk3sCCA6URNJAYuAvwbpDUtYZ8J5zNyJmmlmL01locfs2c4KxQf82OeGOW7+O9tfxfZnFl6uL2t5abKh44/RzahemUoHYV5RBm0rOyd20tO717l6bzXP+xywZuo0b7DQ97IEdv/zg2gA21ZWFO0lgXwoXVnpBWWSGlr5ch4wOmvDQlUojK5NtxocsOgbv9wQ81TDBlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1372.namprd11.prod.outlook.com (2603:10b6:3:11::14) by
 SA0PR11MB4606.namprd11.prod.outlook.com (2603:10b6:806:71::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6363.32; Tue, 9 May 2023 21:38:21 +0000
Received: from DM5PR11MB1372.namprd11.prod.outlook.com
 ([fe80::ddcc:18a2:6830:7625]) by DM5PR11MB1372.namprd11.prod.outlook.com
 ([fe80::ddcc:18a2:6830:7625%6]) with mapi id 15.20.6363.033; Tue, 9 May 2023
 21:38:20 +0000
Date: Tue, 9 May 2023 23:38:16 +0200
From: Piotr =?utf-8?Q?Pi=C3=B3rkowski?= <piotr.piorkowski@intel.com>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <20230509213816.iqe7daibapgzfjgv@intel.com>
References: <20230509201103.538-1-michal.wajdeczko@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230509201103.538-1-michal.wajdeczko@intel.com>
X-ClientProxiedBy: FR3P281CA0022.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1c::10) To DM5PR11MB1372.namprd11.prod.outlook.com
 (2603:10b6:3:11::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1372:EE_|SA0PR11MB4606:EE_
X-MS-Office365-Filtering-Correlation-Id: bc8e8eb8-ecaa-4a47-c42c-08db50d5b4e4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /Jowo2fy7ZxE7VD8N1XDuL2dIPNUv57NoP9mWh82BbUYGO+EQFW/owu7ho0nosMkRPYa00Js5Vizb4asI9/Vz6+rIiTJpHYnVMer3V587GMN1e8xehTxLheadjTRtBZdrt4gvdaa7nObJjWcdZMMghkDhLgMBOHetDdbP3ZWrSLPNCkcI0bOlVjpMqFU199vZiufqZAICAUs+GZlcqxm0qbcwdVybgufiZAsDjCAk+J09RMdLWL65JwCdM8DavRMVFHAT+9aK/dcDmfXxjlvAfSQSpZeaB20YbMtZhz0IAlCT4imFUh6QKo9SPjKf3G9/E6yh0D99l6F71ATQCwvh3hk0tXzxGX10I693x30FTKzkMbyyz9a6qss4q9saBcaLb8XBGsw97yVF0MLvQz8jzvTjNKo3MU/iWDhGaj6/zsP+iVoBAeCtf/ctyYQNTKOIMqzu1oJQdFBuAN2JQm6fm50UWN2Y0RDpZUsah/ZuauX98+WVh2LJR0J52spIrNtTaF8MMS8/yzS32iNhPSdvxlyLveFwu2f35ciKc1O4CqRW6oZyvW1C5cPDYv4FVXg
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1372.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(376002)(346002)(396003)(39860400002)(366004)(451199021)(8676002)(8936002)(41300700001)(316002)(6862004)(478600001)(37006003)(2906002)(6666004)(66476007)(5660300002)(66556008)(66946007)(4326008)(6636002)(6486002)(6512007)(107886003)(6506007)(1076003)(26005)(186003)(82960400001)(83380400001)(66574015)(2616005)(36756003)(38100700002)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c1JudWsxOXFBZmF0M0phclQwSW5qcTRaaWR6SFRsY0hZT0wrM2FmbG15WnA5?=
 =?utf-8?B?MzFrQVh6aGljb3oxQXhVVUxRU09LbGFoUHVsU1VnL0Zsb3lVcW11MmNaOEo0?=
 =?utf-8?B?TEsyQjZoN3JJcTU3UnpCZTliVkJNNm0wbzZtT29WV3dRblVma2dYQ3lRaHFq?=
 =?utf-8?B?K0FlSW5Jb0k1ZmVDTXBNOEVQNEt2a0JmYXE1SmNPcHpqYVZJY01MNEM3UGZW?=
 =?utf-8?B?bTk3THJmSTBxZTVqSWxoLythMkI3WmtUY29rQ3ZnbmgyWTNCSExPYitQQTBD?=
 =?utf-8?B?VHBRdVhERDZ5NUhXNGxxTHhDc1RSZWd3L2VSSnc3MEMrV2RlN0gxRlF3T0R0?=
 =?utf-8?B?OEY3M0tXQ0xQMkRBYlV0aFJlellTcXRuOXlTRlBaYTUvOEhpWUdSNEtEbk1E?=
 =?utf-8?B?WGZYcTRBQklUUGo4dlZtMzd5Uy8yYVl0ZW1RK0dQSncwbUl4aWVOQWpDUC92?=
 =?utf-8?B?Q2dwTG1uVHRsUnVYM21VZ3F0K01NcXoxeDFZRnMwc1lSSXhYenVrWHVzWC9q?=
 =?utf-8?B?eFZ4OUVad25EczJjdjdDRE5VZjRjT0tlK3A3dE1uQ1hxOGtoc1h2bnhHc3JR?=
 =?utf-8?B?ZGxFVzlxYzNWb3pmRW41d1RlWnNYSTBkQ2hEZ3RQZVNxU0VaRml3K2tqVHB4?=
 =?utf-8?B?TTJ2RFpCNjI1TCtmdUJadlppZC9VVjlBM2pwc2NqOWdWZTNwblFTS0ExRDNB?=
 =?utf-8?B?R0NuNkh6dmI2b2tobWxnbHJnV1JybW9FbG9KQ0hTR3lwcHRsS2Z3a2xkR3Nr?=
 =?utf-8?B?N3Z3RVdSRzI2MzhTUmovUXVheXRSa0pUVUlPa0U2QjdXMk53UE94alBSQ0lG?=
 =?utf-8?B?bHFEdUFLL0lQL2NZaTlnRThlUEN4WldCTElSM1JZbWpMZ1pqdnVMYUN0cGFu?=
 =?utf-8?B?WkpWWGVvVkVNYUxjQjlXVzJhY2huVmhqTmJLTG1tVUNKWFhJU3RHYXdYNzR0?=
 =?utf-8?B?dnA2NlhpVFdQSHI2S2pNc0tnd2RIcHJwUmFWTURoaTZUWVNDWEJSWmlFWWlv?=
 =?utf-8?B?THVic2RLbGZaMVRiUTdpdXNaMm5IMC9XNzhCMFpUL1N1YzQyK3ZwTTZPNzZa?=
 =?utf-8?B?aTREMWVsWUlvWFlhbmszOVF5ZHZPeVVSRU4wbHd3WTNEcEhrazJWcjlpTG1P?=
 =?utf-8?B?Ykx2WjRFcnRtL2w5SjlBTE5hSjV6eDFhNjNzL3V6c3BCbVduaVptTkJkcVcx?=
 =?utf-8?B?emNrL1R0VDJCb28wenNMeVU4SmJmWElEU21nQXRqSU4rS1lheExMTFNnNTlu?=
 =?utf-8?B?dGEzWnFvdVE2TjdQbXR4QTl5dlNROU9HdXZING03SGUvQjEvcDdVQ2ZBbzk4?=
 =?utf-8?B?d25ZY3J6SDh2U1g3MFlwZ2czZVIyOGRqMm9IcER0YUVjOFpMZFRRZHdpa3A3?=
 =?utf-8?B?b1JDSVdIS2hnY1JZSFNhYnZFZWFuenlIYitFL25GUkZrSnZ0bnk2SjVBMXR1?=
 =?utf-8?B?U3JLajRpWmhVUTA2TDA2WmZwdjRSMGhkaXRaYkNIZ0VxaGh6ZVdDcm5RSEJL?=
 =?utf-8?B?dXJKWXhteVBnQUNZL1FYMERWWVFta0w2RTR0ZXlDV2FEUmNPUlpQa21nV1VB?=
 =?utf-8?B?NEV4OWNZdWl6YzRtcVRxNXpDOEEwcTZRZTBuTkErZG1maXZtOFJieUJ0QUhD?=
 =?utf-8?B?RCtjY3A1SnpEd0dPelFVMERnWkdESnhjK3JDTkl0aC9ESW5KV0t2c1d4YUJx?=
 =?utf-8?B?aVUzU2U0WVRSVUMwcTYzQ1greG9NcFZTOE9aR3VJNGltVUV3MlBDazI5ZVo4?=
 =?utf-8?B?aWRlY2syTmdyOGRBbTFIYmcwSWxUenJlSVV1anhuVUhCUSt6aE9pU3luZkxB?=
 =?utf-8?B?TmZvRUVtTGFvdUxUaVRzZ1JRVGNZQ3M0eEQ1dDc5Q0tKQytqYWt5NHl1bXZ4?=
 =?utf-8?B?bW4vMUxIQnM4alBQVDFiMWloUU5HOEFKZ1QzaWNBV2E3dXcvRVB2M3RRZU41?=
 =?utf-8?B?Q2ZqRTRNRkJxWG4wR0lUYSs3T3FJMlE2SnF4QVJOUWFNZm1vOW9sYkViemhU?=
 =?utf-8?B?bzVXUmJGNDNtQisvTU1IYkpnOUVQZ0pJWWFjVGdxV3dPTGtNUnRsc0FGWVJp?=
 =?utf-8?B?QkFwczJ3R1E0bnQxbVRiLzBYU2taQXNJbVBhSFBTY3c3NXYvZnVXNy9vMk5M?=
 =?utf-8?B?QVE0YnJET1A1LytEVHRkekljZFN5ek9wc1dib0ZZL0dEbTNFM0ZYT0h1TkJt?=
 =?utf-8?B?eXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bc8e8eb8-ecaa-4a47-c42c-08db50d5b4e4
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1372.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2023 21:38:20.0169 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 51WzxhcpA3X9fd8dnCDxztN3z+o90F74QkEzxewSXRiu98TC8+aHuOZszKb6V53RYNXxXhQkt79fcLM5ZCF+9+8H6tTzgsvvnRnrBG3cfkI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4606
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Drop legacy CTB definitions
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

Michal Wajdeczko <michal.wajdeczko@intel.com> wrote on wto [2023-maj-09 22:11:03 +0200]:
> We've already switched to new HXG definitions some time ago,
> drop legacy CTB definitions to avoid mistakes.
> 
> Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Cc: Piotr Piórkowski <piotr.piorkowski@intel.com>
> Cc: John Harrison <John.C.Harrison@Intel.com>
> ---
>  .../gt/uc/abi/guc_communication_ctb_abi.h     | 21 -------------------
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |  2 +-
>  2 files changed, 1 insertion(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
> index 28b8387f97b7..f7d70db16d76 100644
> --- a/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
> +++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
> @@ -167,25 +167,4 @@ static_assert(sizeof(struct guc_ct_buffer_desc) == 64);
>   * - **flags**, holds various bits to control message handling
>   */
>  
> -/*
> - * Definition of the command transport message header (DW0)
> - *
> - * bit[4..0]	message len (in dwords)
> - * bit[7..5]	reserved
> - * bit[8]	response (G2H only)
> - * bit[8]	write fence to desc (H2G only)
> - * bit[9]	write status to H2G buff (H2G only)
> - * bit[10]	send status back via G2H (H2G only)
> - * bit[15..11]	reserved
> - * bit[31..16]	action code
> - */
> -#define GUC_CT_MSG_LEN_SHIFT			0
> -#define GUC_CT_MSG_LEN_MASK			0x1F
> -#define GUC_CT_MSG_IS_RESPONSE			(1 << 8)
> -#define GUC_CT_MSG_WRITE_FENCE_TO_DESC		(1 << 8)
> -#define GUC_CT_MSG_WRITE_STATUS_TO_BUFF		(1 << 9)
> -#define GUC_CT_MSG_SEND_STATUS			(1 << 10)
> -#define GUC_CT_MSG_ACTION_SHIFT			16
> -#define GUC_CT_MSG_ACTION_MASK			0xFFFF
> -
>  #endif /* _ABI_GUC_COMMUNICATION_CTB_ABI_H */
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> index 99a0a89091e7..fe355f316d37 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> @@ -640,7 +640,7 @@ static int ct_send(struct intel_guc_ct *ct,
>  
>  	GEM_BUG_ON(!ct->enabled);
>  	GEM_BUG_ON(!len);
> -	GEM_BUG_ON(len & ~GUC_CT_MSG_LEN_MASK);
> +	GEM_BUG_ON(len > GUC_CTB_HXG_MSG_MAX_LEN - GUC_CTB_HDR_LEN);
>  	GEM_BUG_ON(!response_buf && response_buf_size);
>  	might_sleep();
>  


It seems that these legacy definitions, after the update of this GEM_BUG_ON,
are no longer actually needed anywhere. It is time to remove them.
As for me, this patch looks fine.

Reviewed-by: Piotr Piórkowski <piotr.piorkowski@intel.com>
> -- 
> 2.25.1
> 

-- 
