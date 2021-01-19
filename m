Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8042FB413
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 09:31:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 826046E04E;
	Tue, 19 Jan 2021 08:31:55 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3ADCF6E04E
 for <Intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 08:31:54 +0000 (UTC)
IronPort-SDR: NCQCqvmTeMHD259lRaSy5k1RNk/kdZ3qv6zIBiuOXAoms/xk1cq7E7jOEFpaZZKyi8aU5mdWvw
 TX7M0bApuGaA==
X-IronPort-AV: E=McAfee;i="6000,8403,9868"; a="263704035"
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="263704035"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 00:31:49 -0800
IronPort-SDR: 7BOxSZAgOcZ/uRJEUa6Cxqv3Y6VXfNsiOBEjZNPFBR8QcwDMD2F7UysK586F1/dUCbvkGkagQ5
 9VSFOoi8zNrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="355498007"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga008.fm.intel.com with ESMTP; 19 Jan 2021 00:31:48 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 19 Jan 2021 00:31:48 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 19 Jan 2021 00:31:48 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 19 Jan 2021 00:31:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FNTVZPxMB5gD9sayH8SOA1znqEylPAIS4Q2ypOnqYxyu3QvXfJ/D3iN0kwFtEr4YruHbKxqnPRoVUz8OUcaC9lxVAOsoIcimftrlB+O5VMfQS6zUTj4sP79E9nDYK2LhLtIZ9/utL9Stch8HSbgEEIIJa0d0ZCprQl2Zsfugg0FCZMxAY5oGzw0c5/71e6Z7+sYa0Do1m4jsUQu7JWi1whKMqxEkNoXPMbA6TQ/OX+G79Auoj5YysKnAOajhhKE/cviUpEIDAxvWk6HYg6MHpYjbxj6C2iZH0T+WBIkMIx07WSFR5y3skGt4LcOVHHW0bIni10TlwchpuYZOdeJiSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3hgNQtyjlFvB4bCdE4Q3QL2yLL+DDBZ4ygVngSseJ3Q=;
 b=dB3zInJV7kCa7O7fUyub1BaNf7UDJNu+5ZI/NdVSy9+8q8i4adST40ZjupKlizVQr8BqiTRURxaT7BmYVmZ6+nC8CQa7luwZLxD1bEjjq2D6DZ96iYIb3E1DeqNEySXVO/iGgwcORIyOIpRQKl4mgfKQ3EfRojlNLSbtOkoNvlhFhDZwLG9sSRJwyysO3sPk82wWaAsRAHA+5y7XtoudpjKLbQE04fkJxWst61TsflcHJEWSh8LDOdvaW9UVMu21x0Y76WcvWY3PgZSEqH9EONbjys9NdzMPH6uQQ2g4P6wAn68yp3nHmVpIW1A+azZImJ2gdWZ/YogFmLj8brSNFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3hgNQtyjlFvB4bCdE4Q3QL2yLL+DDBZ4ygVngSseJ3Q=;
 b=vwiOAnkogKDx7X0N011MUFQQbL0moVu6G3Y5I3hRsfeNvyVkVkuQbx9ynl19Uz4Rx092+cB05w/9rt0pGbUAXh6hLktcfIwdamOTBlj6IZFz99kxVKXK+VYb4WK6Yng1xtVmv+opAHoys5IMNiKgdqhSrcXreRex4ZAeLlZQ+Cg=
Received: from DM6PR11MB4531.namprd11.prod.outlook.com (2603:10b6:5:2a5::19)
 by DM6PR11MB2826.namprd11.prod.outlook.com (2603:10b6:5:c0::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.11; Tue, 19 Jan
 2021 08:31:46 +0000
Received: from DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::50ab:1cac:2a5a:7786]) by DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::50ab:1cac:2a5a:7786%7]) with mapi id 15.20.3763.014; Tue, 19 Jan 2021
 08:31:46 +0000
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "Intel-gfx@lists.freedesktop.org"
 <Intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [RFC-v4 05/21] drm/i915/pxp: Func to send hardware
 session termination
Thread-Index: AQHWztV7GmtowmmpqUKfbzC5BYWUoKou1IwA
Date: Tue, 19 Jan 2021 08:31:46 +0000
Message-ID: <DM6PR11MB4531D3B1BAE9DC96F42D57A7D9A30@DM6PR11MB4531.namprd11.prod.outlook.com>
References: <20201210072435.24066-1-sean.z.huang@intel.com>
 <20201210072435.24066-6-sean.z.huang@intel.com>
 <160759191903.595.11455610929447185588@build.alporthouse.com>
In-Reply-To: <160759191903.595.11455610929447185588@build.alporthouse.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: chris-wilson.co.uk; dkim=none (message not signed)
 header.d=none;chris-wilson.co.uk; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [73.220.16.43]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2e467dc8-6978-40f9-b140-08d8bc54a871
x-ms-traffictypediagnostic: DM6PR11MB2826:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB2826AE2295FC3D73A736D425D9A39@DM6PR11MB2826.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ph6Zfo6aF+gLW0PzcWBsr1XToXi2M4zu9vB9FCUvJ9Bpt+4AEdK/o6/c7DRjBAs1/Q08EQZuP0b+Hilq5jrpIovC24oz2cbv7Plam0ukFRDyds2bHrdcWSWrULgEMFIes8r/hL0BaLq0CvIu+GauEoskJIbrf0uZb2sscw3wW4Jx+MgD7fXM6yLwhr4j5IGZg3vzqRuhF/tJ+ER0iCqbbSZ7/6FinHfQQVNe4gglw2paIwN353/mr2ivgLBD1CbyjS5AiLv1qCdOOrOK+gRVdSEA+K1uM31FevKtZWv80wm117wI1DuWXH6GLrwlCH1DDzxeJeidqJrjUM+PIu02+v8TrrZyLIufgnT8TFwbLRYDH6+c4chx7+pO60R/2PHu26mxJKxp1WCauUm57eq04GXCOjXBePJ2Nqcc5tAEzui4LAOHG0FKM9BVg2vlq7cqyVk7NzS+NZEJifGid6/EuA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4531.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(346002)(39860400002)(366004)(376002)(396003)(2906002)(83380400001)(4001150100001)(478600001)(966005)(52536014)(7696005)(5660300002)(316002)(186003)(110136005)(26005)(6506007)(53546011)(71200400001)(8936002)(9686003)(55016002)(33656002)(4326008)(66446008)(64756008)(66556008)(86362001)(66946007)(8676002)(107886003)(66476007)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?UzVKREZVTmZwODR2Rkx2dEE4YXBJWHhURmQ3ZFIwVEVDWUQydUlJQ3Q1RWlw?=
 =?utf-8?B?K1JVQXFta2lpTlNNSWRWVzk3dlZVaXhBMXlPWmlSOWFmMEdXclVhNTB1Z21J?=
 =?utf-8?B?TWxSa1JBQlBnODhMc0xTYUpWRHkrOHJBWnJjdzlyWEhSQ292WmQ4akxkNmRT?=
 =?utf-8?B?SGRKWmcwZDlxamNTanJBVjNzZTJ1YUUxcUgxaG50WWtldG8reExpcXViRFZD?=
 =?utf-8?B?dldzSVlVZ3lZMnV0TzdrU0x5THdtTnFkaEI0WXlmaWRDQ1VMTHdDVVZXU0hQ?=
 =?utf-8?B?WmdJSU5LVS9pcllIYnRaOFN1WU1Dbk1JVE1IeDJVbkpuQlM0akViSU9YWHNL?=
 =?utf-8?B?dUFXT1cvTVNkdWJOQ3Z1d3kvaUd0OXJmQWRHV1dpZXRxbUVnQWVWT1V4YUVV?=
 =?utf-8?B?YmlEQkVKRFVxaHZWUmNKVmc4M011d0Exc0FkN08yMWFubjcxck1pUUtScllt?=
 =?utf-8?B?aTRrU1crTndpY2RQVXBvM2FMRk5DelExVmppaVk2RmZzV3JKL1djRzdjc1kv?=
 =?utf-8?B?Nk56d3JKTjkwQy9rcTRpUlpBdC9tMmpHMTJNYUkwMFI0QWdoeEpJL1RySTlj?=
 =?utf-8?B?Njh5V1pkLzdrblBFdFRMb05XdFptSVAraEJYM2ZVR1NtOEx5WjAxdWl1bU5y?=
 =?utf-8?B?dDBpdVJudmRtb1llRENOcXVUeVFpUzdDa3E4bnE3VllNV00yZEZFN3VrQnJ4?=
 =?utf-8?B?L2xVMDdJSEwyV0hNVEVsNnJjMHpJRUhObTdYclRCZmZOMGJhNFJNekVGdEEw?=
 =?utf-8?B?WGRTWStRZG83Q1Y3WnpiRDBPSmlZTnVURno1eEc4T21BWjZzYzNpQ1FQTWh4?=
 =?utf-8?B?ZjZubHlRNGRPUHdZSXdWSElaN0doaWtjWXdXZEpYanlOcG1ySmNaMFRVZWlm?=
 =?utf-8?B?TTlhMFF6K2FNOXVjclNrTXdDTEhEelpVR0syNkFPc2JHa2E2c1JSVnJKaEcw?=
 =?utf-8?B?NG9ialZwVXI5ek1aUldEbDlzVnlpdnZhTEdmbnFGcEdyWjJYdFh0cGJVQVlt?=
 =?utf-8?B?bG9SQTIxcmpkaWdwNDVST21xNUl3RkxJS2g1REI3bmVST3ZjdHBqVGVpZ0hE?=
 =?utf-8?B?Q0lPdHY4VktDeCt2M1ZUdUk4bEpHMmZ2Vk5teGx2ZTh4eXJWN1Nmd0tsTEFU?=
 =?utf-8?B?dzlyOTE3d0Yxc1hITW5rZ0NtamhMWExBK0w1cFVRb3BuRE9waTVLMUZUSk9k?=
 =?utf-8?B?R2J6ZnRQV2hDLzdodkR0ZDBHVHVKbXB4WlNGV3R1NXlPa1dlL04wKzFHdi9J?=
 =?utf-8?B?R1YyL3hYaW1NeXBsY2w1Z01LSHBhMVJhRURQMElvdU1TQkdXeWRlcVAvTXhw?=
 =?utf-8?Q?DLLEH7BlAQRbM=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4531.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e467dc8-6978-40f9-b140-08d8bc54a871
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jan 2021 08:31:46.1257 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cWu4jCaj1vwjV/1bQY9MOZnt8yuJX6SQXDko7gwLmrQPctq/+zHN0NVN/XdUF7Gef9gg2PnTP1lBAHtrMbmK0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2826
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC-v4 05/21] drm/i915/pxp: Func to send hardware
 session termination
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

+Rodrigo,


Hi Chris,

Thanks for your feedback. Replied inline below, and have made several modifications according to your feedback.
May I know if you still have concern regarding the latest rev23? https://patchwork.freedesktop.org/series/84620/#rev23

Regarding the concern about 915->pxp_tee_comp_mutex in https://patchwork.freedesktop.org/patch/406639/?series=84620&rev=4 
The pxp_tee_comp_mutex is to protect pxp_tee_comp_added to prevent the race condition that intel_pxp_tee_component_init() and intel_pxp_tee_component_fini() are called at the same time.

We can see the similar usage case for HDCP, but please educate me if there is something I miss.
https://elixir.bootlin.com/linux/v5.11-rc3/source/drivers/gpu/drm/i915/display/intel_hdcp.c#L2025
https://elixir.bootlin.com/linux/v5.11-rc3/source/drivers/gpu/drm/i915/display/intel_hdcp.c#L2232 

Best regards,
Sean

-----Original Message-----
From: Chris Wilson <chris@chris-wilson.co.uk> 
Sent: Thursday, December 10, 2020 1:19 AM
To: Huang, Sean Z <sean.z.huang@intel.com>; Intel-gfx@lists.freedesktop.org
Subject: Re: [Intel-gfx] [RFC-v4 05/21] drm/i915/pxp: Func to send hardware session termination

Quoting Huang, Sean Z (2020-12-10 07:24:19)
> Implement the functions to allow PXP to send a GPU command, in order 
> to terminate the hardware session, so hardware can recycle this 
> session slot for the next usage.
> 
> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile            |   1 +
>  drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c | 156 
> +++++++++++++++++++++++  drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h |  
> 18 +++
>  3 files changed, 175 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h
> 
> diff --git a/drivers/gpu/drm/i915/Makefile 
> b/drivers/gpu/drm/i915/Makefile index 0710cc522f38..2da904cda49f 
> 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -258,6 +258,7 @@ i915-y += i915_perf.o
>  i915-$(CONFIG_DRM_I915_PXP) += \
>         pxp/intel_pxp.o \
>         pxp/intel_pxp_arb.o \
> +       pxp/intel_pxp_cmd.o \
>         pxp/intel_pxp_context.o \
>         pxp/intel_pxp_tee.o
>  
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c 
> b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
> new file mode 100644
> index 000000000000..e531ea9f3cdc
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
> @@ -0,0 +1,156 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
> + */
> +
> +#include "intel_pxp_cmd.h"
> +#include "i915_drv.h"
> +#include "gt/intel_context.h"
> +#include "gt/intel_engine_pm.h"
> +
> +struct i915_vma *intel_pxp_cmd_get_batch(struct intel_pxp *pxp,
> +                                        struct intel_context *ce,
> +                                        struct intel_gt_buffer_pool_node *pool,
> +                                        u32 *cmd_buf, int 
> +cmd_size_in_dw) {
> +       struct i915_vma *batch = ERR_PTR(-EINVAL);
> +       struct intel_gt *gt = container_of(pxp, struct intel_gt, pxp);
> +       u32 *cmd;
> +
> +       if (!ce || !ce->engine || !cmd_buf)
> +               return ERR_PTR(-EINVAL);

Really?

> +       if (cmd_size_in_dw * 4 > PAGE_SIZE) {

Pardon?
//sean: remove the check 

> +               drm_err(&gt->i915->drm, "Failed to %s, invalid cmd_size_id_dw=[%d]\n",
> +                       __func__, cmd_size_in_dw);
> +               return ERR_PTR(-EINVAL);
> +       }
> +
> +       cmd = i915_gem_object_pin_map(pool->obj, I915_MAP_FORCE_WC);
> +       if (IS_ERR(cmd)) {
> +               drm_err(&gt->i915->drm, "Failed to i915_gem_object_pin_map()\n");
> +               return ERR_PTR(-EINVAL);
> +       }
> +
> +       memcpy(cmd, cmd_buf, cmd_size_in_dw * 4);

Why did you bother creating a temporary?
[memcpy32]
//sean: because when this function was called, the PXP caller has completed the GPU command programming in cmd_buf so here is to copy the cmd_buf to cmd which is mapped to graphics address.

> +       if (drm_debug_enabled(DRM_UT_DRIVER)) {
> +               print_hex_dump(KERN_DEBUG, "cmd binaries:",
> +                              DUMP_PREFIX_OFFSET, 4, 4, cmd, 
> + cmd_size_in_dw * 4, true);

More sillyness again.

> +       }
> +

Flush the map after a write
// sean, yes apply the change accordingly in rev23

> +       i915_gem_object_unpin_map(pool->obj);
> +
> +       batch = i915_vma_instance(pool->obj, ce->vm, NULL);
> +       if (IS_ERR(batch)) {
> +               drm_err(&gt->i915->drm, "Failed to i915_vma_instance()\n");
> +               return batch;
> +       }
> +
> +       return batch;
> +}
> +
> +int intel_pxp_cmd_submit(struct intel_pxp *pxp, u32 *cmd, int 
> +cmd_size_in_dw) {
> +       int err = -EINVAL;
> +       struct i915_vma *batch;
> +       struct i915_request *rq;
> +       struct intel_context *ce = NULL;
> +       bool is_engine_pm_get = false;
> +       bool is_batch_vma_pin = false;
> +       bool is_skip_req_on_err = false;
> +       bool is_engine_get_pool = false;

//sean: I have remove those bool and use label at rev23, thanks.
Please implement onion unwind correctly.

And a general plea to be consistent with the rest of the code in laying out locals.

> +       struct intel_gt_buffer_pool_node *pool = NULL;
> +       struct intel_gt *gt = container_of(pxp, struct intel_gt, pxp);
> +
> +       if (!HAS_ENGINE(gt, VCS0) ||
> +           !gt->engine[VCS0]->kernel_context) {

What are you doing here if you don't have a VCS? Surely you should not have even bothered to bind PXP in that case?

Don't assume the first available VCS engine has the HW instance id of 0.

The kernel_context exists if the engine exists.

// sean: Yes at rev23 I no long assume VCS0 exists.

> +               err = -EINVAL;
> +               goto end;
> +       }
> +
> +       if (!cmd || (cmd_size_in_dw * 4) > PAGE_SIZE) {

Fix your debug code.
//sean: okay, I removed the log print.

> +               drm_err(&gt->i915->drm, "Failed to %s bad params\n", __func__);
> +               return -EINVAL;
> +       }
> +
> +       ce = gt->engine[VCS0]->kernel_context;

DO NOT USE THE KERNEL CONTEXT. Unless you really know what you are doing and can guarantee that under no circumstances does it break.
// I need access the context for submit the GPU command to VCS.

> +       intel_engine_pm_get(ce->engine);
> +       is_engine_pm_get = true;
> +
> +       pool = intel_gt_get_buffer_pool(gt, PAGE_SIZE);

If only you knew what the desired size actually was.

> +       if (IS_ERR(pool)) {
> +               drm_err(&gt->i915->drm, "Failed to intel_engine_get_pool()\n");
> +               goto end;
> +       }
> +       is_engine_get_pool = true;
> +
> +       batch = intel_pxp_cmd_get_batch(pxp, ce, pool, cmd, cmd_size_in_dw);
> +       if (IS_ERR(batch)) {
> +               drm_err(&gt->i915->drm, "Failed to intel_pxp_cmd_get_batch()\n");
> +               goto end;
> +       }
> +
> +       err = i915_vma_pin(batch, 0, 0, PIN_USER);
> +       if (err) {
> +               drm_err(&gt->i915->drm, "Failed to i915_vma_pin()\n");
> +               goto end;
> +       }
> +       is_batch_vma_pin = true;
> +
> +       rq = intel_context_create_request(ce);
> +       if (IS_ERR(rq)) {
> +               drm_err(&gt->i915->drm, "Failed to intel_context_create_request()\n");
> +               goto end;
> +       }
> +       is_skip_req_on_err = true;
> +
> +       err = intel_gt_buffer_pool_mark_active(pool, rq);
> +       if (err) {
> +               drm_err(&gt->i915->drm, "Failed to intel_engine_pool_mark_active()\n");
> +               goto end;
> +       }
> +
> +       i915_vma_lock(batch);
> +       err = i915_request_await_object(rq, batch->obj, false);
> +       if (!err)
> +               err = i915_vma_move_to_active(batch, rq, 0);
> +       i915_vma_unlock(batch);
> +       if (err) {
> +               drm_err(&gt->i915->drm, "Failed to i915_request_await_object()\n");
> +               goto end;
> +       }
> +
> +       if (ce->engine->emit_init_breadcrumb) {
> +               err = ce->engine->emit_init_breadcrumb(rq);
> +               if (err) {
> +                       drm_err(&gt->i915->drm, "Failed to emit_init_breadcrumb()\n");
> +                       goto end;
> +               }
> +       }
> +
> +       err = ce->engine->emit_bb_start(rq, batch->node.start,
> +               batch->node.size, 0);

If this is not privileged, why is it done in the kernel? What prevents everyone else from issuing the very same commands to give themselves control?
// According to our design, the PXP default session is owned by kernel space so it's the reason we need to submit this command, to terminate the PXP default session, from kernel instead of user space.

> +       if (err) {
> +               drm_err(&gt->i915->drm, "Failed to emit_bb_start()\n");
> +               goto end;
> +       }
> +
> +       i915_request_add(rq);
> +
> +end:

Consistency would be to use out:

> +       if (unlikely(err) && is_skip_req_on_err)
> +               i915_request_set_error_once(rq, err);

Why?
// sean: I think you're correct, I should just return the err not just for once.

> +       if (is_batch_vma_pin)
> +               i915_vma_unpin(batch);
> +
> +       if (is_engine_get_pool)
> +               intel_gt_buffer_pool_put(pool);
> +
> +       if (is_engine_pm_get)
> +               intel_engine_pm_put(ce->engine);

Style wise, highly inconsistent. Just use labels, spare the locals.
// sean: Changed accordingly, now we use label at rev23. 

> +       return err;
> +}
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h 
> b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h
> new file mode 100644
> index 000000000000..d04463962421
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h
> @@ -0,0 +1,18 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
> + */
> +
> +#ifndef __INTEL_PXP_CMD_H__
> +#define __INTEL_PXP_CMD_H__
> +
> +#include "gt/intel_gt_buffer_pool.h"
> +#include "intel_pxp.h"
> +
> +struct i915_vma *intel_pxp_cmd_get_batch(struct intel_pxp *pxp,
> +                                        struct intel_context *ce,
> +                                        struct intel_gt_buffer_pool_node *pool,
> +                                        u32 *cmd_buf, int 
> +cmd_size_in_dw);
> +
> +int intel_pxp_cmd_submit(struct intel_pxp *pxp, u32 *cmd, int 
> +cmd_size_in_dw); #endif /* __INTEL_PXP_SM_H__ */
> --
> 2.17.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
