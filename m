Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F9C2D3A2E
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Dec 2020 06:16:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F189A6E0EE;
	Wed,  9 Dec 2020 05:16:31 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DE746E0EE
 for <Intel-gfx@lists.freedesktop.org>; Wed,  9 Dec 2020 05:16:30 +0000 (UTC)
IronPort-SDR: 2t87406DJ2e1e9UwHGiqGxabBLBqpai9N5HwWJwpu4QgY5V3HUrA7mg/ukoJWZp2R2nYwVw4lk
 XdupLfTJuXAA==
X-IronPort-AV: E=McAfee;i="6000,8403,9829"; a="170510749"
X-IronPort-AV: E=Sophos;i="5.78,404,1599548400"; d="scan'208";a="170510749"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2020 21:16:30 -0800
IronPort-SDR: gR3F8AbNnJ1YzK6GVtqETWRFzQEfBBT4t9Jnmw3HkW5I+FrnFAzodESuCsQuIRtgjAX2WwAJ0f
 nOUpiK7EjK/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,404,1599548400"; d="scan'208";a="542268744"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 08 Dec 2020 21:16:30 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 8 Dec 2020 21:16:25 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 8 Dec 2020 21:16:25 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 8 Dec 2020 21:16:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=coeS7qKrKeZFYI7pUcyHk38Kx3uv0KVc2TaBpj5yZu9C4xC3sHoOL3MF/nUJ0QLIsjcF2T3XnmSES3+CVLhu024v7kqCFDwX4zHel9j/hHah5PzXCvVUUZetfhFrEvI7Ld2gLEPO9u6a2mBlS2HOvkQYMNmE4/hJXieOzYQnpPiJtkvYOIvkbnUcX4a5EVisMVGwTf7OH1VYbstnZXb3mlYHkVo4Hw9uUo1osrGhSNluzcX8e6gjTbniAUeSGXUixwBLjJx79FrRhsaSOWcIBPKd2ddKCEb3Xx1tmLaUAxtjKpSVibrF3izd3JYSaZfmAQmx2QFerYxxtg9DzIj4ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yH9w8igNIYzwdnipTYrfNje4nD5xrFH3JZ3OUfA1eNs=;
 b=kq2ampb9UL089mD8m1l/Q7QnW2GN3rgWp9tliX3dx3urrxfF4C+W0CBV1ReN3ai42XxvToObbZ8ckbsFti7y55Phf4YIaus5TGJhvFfEc1udUrWaotbKls7vms3oxYRQIq3s03yTUjFoNOkSC+iHA1zv127c+gNNfB5qLmdMijSfT/NXtoOrXyS0K8D2aSfoqLAOYMwdlwfqPG5FHrD7c6T1YHhlNy8s5egSg9nDZ4DZYmnCEvbUwDNwyRqXNtfrExY0zXnnIhqHUExu5HJvxb7MB2GEEVTTy1TROAxs1HOoUtA63ZHIOY4d12/PU1swAO3tjphpQlrs9DB4zhighg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yH9w8igNIYzwdnipTYrfNje4nD5xrFH3JZ3OUfA1eNs=;
 b=LMeLPqJG79S55sJYswC1Im+1AnkU0j71vgUt7B3Y7DGT+4rv7P5aoJP0N+tkGVqK6kM4ZdBxUXIoQETT5J3ItdsYVEVbN4HUB+57jZfdTYM0Ls1JJ8KQD72m0Y9DLagNSlRQ81aSxl7CNadD2ehbu2A9v68KjFbKSZ7ex5ZXFjo=
Received: from DM6PR11MB4531.namprd11.prod.outlook.com (2603:10b6:5:2a5::19)
 by DM5PR1101MB2331.namprd11.prod.outlook.com (2603:10b6:3:a2::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.17; Wed, 9 Dec
 2020 05:16:24 +0000
Received: from DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::78db:6406:7820:1071]) by DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::78db:6406:7820:1071%8]) with mapi id 15.20.3632.018; Wed, 9 Dec 2020
 05:16:24 +0000
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [RFC-v1 09/16] drm/i915/pxp: Func to send hardware
 session termination
Thread-Index: AQHWzJN2cuhZQAGO/0ObgmKQPYyf4KnuOo/g
Date: Wed, 9 Dec 2020 05:16:24 +0000
Message-ID: <DM6PR11MB45316FE2101CE65AC49EABE4D9CC0@DM6PR11MB4531.namprd11.prod.outlook.com>
References: <20201207002134.13731-1-sean.z.huang@intel.com>
 <20201207002134.13731-10-sean.z.huang@intel.com>
 <160734366944.9322.3216167551541536930@jlahtine-mobl.ger.corp.intel.com>
In-Reply-To: <160734366944.9322.3216167551541536930@jlahtine-mobl.ger.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [73.220.16.43]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c6c86932-8114-4bee-b7d9-08d89c0192ba
x-ms-traffictypediagnostic: DM5PR1101MB2331:
x-microsoft-antispam-prvs: <DM5PR1101MB23318774007924E966C70323D9CC0@DM5PR1101MB2331.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:357;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: T7E1ofWTdkwNNtsSUd1Z0++7Wj5jyjIUuERQQBa1Po5/Wz1ey5bp+JdxZe/DMl68X78B/PurYbdhvWESBEiZTTJiUkcO8P/ky9mVqN1gKTaf6eduNx+w6APfqFIBvxqWurI3q7kgxH5c7JMS9cw9vrPyofdpXReKeEEjg4J55g7Mf6kTJ+lxkxkJq4vbiLlk/aGAHfh3RasSIH+bh/OxGnd9OktpbBeUIPM7Kvf0t5sgn5U0d4lENw4y5AZCOFs6s7uxH0MbZqk04bmI1XoimBvoXB/EQhKsv271xPH/gCb1H6wEnWzL4F7lXUIVkyVW9phZuQmbAcJOIUxFRdWPngJhEKKH6BYZMrIQ8Q2T30w=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4531.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(136003)(346002)(366004)(186003)(9686003)(966005)(66476007)(6506007)(8936002)(2906002)(66946007)(66556008)(66446008)(76116006)(26005)(33656002)(110136005)(5660300002)(55016002)(71200400001)(7696005)(64756008)(86362001)(52536014)(83380400001)(8676002)(508600001)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?aTM3ZlFOZjVzSWkzV0d4UzlWVGh2UktadlJVazV0Qk9ZOTdXeFU0TGFGSzlh?=
 =?utf-8?B?aDF1L2lyUUpnSXZKbmd5ODFlQW80S2UxMlJmQ1V4MWZ5NzhyNGZVVUdDUkpt?=
 =?utf-8?B?WEdLQXlXVUlXd2plcWpYeHAyZWtta0htYndRdHZZQmY3N0krZ2VnRzhyeWpw?=
 =?utf-8?B?MHpxTk9RRThCcUpZNE04L2MyRXV2L2FmcmVoMW9BTk9JNEZpSDJFWGo1Zzcw?=
 =?utf-8?B?MmlzMjhMdXpQemFhY2FBUzRZVGFXdkpnL0kyeXc3VGJkdFNzTEFQM2l3UzZh?=
 =?utf-8?B?YXRadVpveDZDVkxsdjFVYUhTWlo3amxCUDJCT3lPNDFFeXd5VmllZUpGYnFU?=
 =?utf-8?B?OUN2Qkp2Wm1aVklEcVg4K3A0RXBCRVhLQVFmd3YxUWNlalJQRm1TRnBZZCtH?=
 =?utf-8?B?dmxiNnJjVnlYZVIwZitkSGFsRkY2M2tEQ3h3Yk05QUlSVm5uUTBFSEhxZGhx?=
 =?utf-8?B?VTFpRGMwNFE2MVZ6S1p4NkJmSGlYMHRneU5YQU55QU5PUkJNQW1VYTJmMWFK?=
 =?utf-8?B?MWdMeUNmSmc5YmphdTdaSUNkWHFpWE9nYm5sbjNFbndQT1djV1pNcGRhYXgz?=
 =?utf-8?B?T1FmNHJLUHhOdmU1SmNUMDBPb0hEMVQvWmtwUGdEVDlWVGRkaUFzQkE3MVdO?=
 =?utf-8?B?cGE1S3puWFJ2RU1Vb2Vqc1FEQ2JrWjNKcW55MWhVbFZkRkI3czlZUE9ybTJF?=
 =?utf-8?B?TkQ1enlsOWdST1ZMMXM4SGJ4ZFFReHZSOExDZGFvWFZXeDRNa29RNENreXVs?=
 =?utf-8?B?Tk5URStPK242Q3hxN1RtY0lTM21keE0xNEM2TzN4L2VGWmFyeFRyR0JZUU9R?=
 =?utf-8?B?azdiWk1ia1U2UkR2UTVUQmh1SmRRdURjeGVOYkxDb25HSkdRd2sySWh4WXpq?=
 =?utf-8?B?R1lvWFQ5WW5kM0hLOUplVlpxbGg2K0gyS0YyL2d2ZXpDQnUzK3JFNG9BOXJm?=
 =?utf-8?B?RHJ0THFNZkFkZkU1ai9qZmZXbUtxc1g2YW5PSllHcTJCa2NDVFFzTlRuQ3Fl?=
 =?utf-8?B?K3M4QVdqSVowU2pPSk5DeW13ME91SUZtVzBkc3gxcllaamxJTm41RjZGMEo0?=
 =?utf-8?B?ODlRM2hBNzRkbXk3LzlQbExLcTN0RzdMdWhJRG1JTk1weTJGdFpEdHIvL1gw?=
 =?utf-8?B?Q1F0NDRodC9XeXdITy8xb1lKb0d5ZVRpQnVVeVFZOU1hMXFFUFdscjV4WUpv?=
 =?utf-8?B?K1c0Y0dsQ2p1c1hHYzZ2a2VoTkdnckxOTDZxc2Zlb2N6WTFYbng0VlQvb0RY?=
 =?utf-8?B?R3g0cHpSa3crKzhaT0F4V1RLYnJGaUJrVkxoaW5CQkNkS2h0dTBBMUJ2Zlpi?=
 =?utf-8?Q?ML/eoj9mkYTf8=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4531.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c6c86932-8114-4bee-b7d9-08d89c0192ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2020 05:16:24.2430 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NmtqvHk/bOEO+PnjASHFnnH3cg9+KJ5JOucdWJl97qjZl5FFApfqnGQq6lhOeZ36e1uq61u259ul1Ecj5RauXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2331
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC-v1 09/16] drm/i915/pxp: Func to send hardware
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

> As we only have a singleton session support in this series, maybe this patch is not needed?
We still need this patch even for single session. The reason is during the power event or teardown event hardware will lost all the encryption key.
During this flow we need to gracefully send out the GPU command to terminate the session and recreate the arb session again.

> I don't think we should add functions to arbitarily inject commands to VCS0 from another driver. We should add proper functions for the commands in i915 and call them on demand and add EXPORT_SYMBOL for them.
Please share some source code or example commit doing so if it's necessary. Thanks.

Best regards,
Sean

-----Original Message-----
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com> 
Sent: Monday, December 7, 2020 4:21 AM
To: Huang, Sean Z <sean.z.huang@intel.com>; Intel-gfx@lists.freedesktop.org
Subject: Re: [Intel-gfx] [RFC-v1 09/16] drm/i915/pxp: Func to send hardware session termination

Quoting Huang, Sean Z (2020-12-07 02:21:27)
> Implement the functions to allow PXP to send a GPU command, in order 
> to terminate the hardware session, so hardware can recycle this 
> session slot for the next usage.
> 
> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>

As we only have a singleton session support in this series, maybe this patch is not needed?

I don't think we should add functions to arbitarily inject commands to VCS0 from another driver. We should add proper functions for the commands in i915 and call them on demand and add EXPORT_SYMBOL for them.

Regards, Joonas

> ---
>  drivers/gpu/drm/i915/pxp/intel_pxp_sm.c | 150 
> ++++++++++++++++++++++++
>  1 file changed, 150 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c 
> b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
> index 056f65fbaf4e..c88243e02a3c 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
> @@ -3,13 +3,163 @@
>   * Copyright(c) 2020, Intel Corporation. All rights reserved.
>   */
>  
> +#include "gt/intel_gpu_commands.h"
> +#include "gt/intel_gt.h"
>  #include "gt/intel_context.h"
> +#include "gt/intel_gt_buffer_pool.h"
>  #include "gt/intel_engine_pm.h"
>  
>  #include "intel_pxp.h"
>  #include "intel_pxp_sm.h"
>  #include "intel_pxp_context.h"
>  
> +static struct i915_vma *pxp_get_batch(struct drm_i915_private *i915,
> +                                     struct intel_context *ce,
> +                                     struct intel_gt_buffer_pool_node *pool,
> +                                     u32 *cmd_buf, int 
> +cmd_size_in_dw) {
> +       struct i915_vma *batch = ERR_PTR(-EINVAL);
> +       u32 *cmd;
> +
> +       if (!ce || !ce->engine || !cmd_buf)
> +               return ERR_PTR(-EINVAL);
> +
> +       if (cmd_size_in_dw * 4 > PAGE_SIZE) {
> +               drm_err(&i915->drm, "Failed to %s, invalid cmd_size_id_dw=[%d]\n",
> +                       __func__, cmd_size_in_dw);
> +               return ERR_PTR(-EINVAL);
> +       }
> +
> +       cmd = i915_gem_object_pin_map(pool->obj, I915_MAP_FORCE_WC);
> +       if (IS_ERR(cmd)) {
> +               drm_err(&i915->drm, "Failed to i915_gem_object_pin_map()\n");
> +               return ERR_PTR(-EINVAL);
> +       }
> +
> +       memcpy(cmd, cmd_buf, cmd_size_in_dw * 4);
> +
> +       if (drm_debug_enabled(DRM_UT_DRIVER)) {
> +               print_hex_dump(KERN_DEBUG, "cmd binaries:",
> +                              DUMP_PREFIX_OFFSET, 4, 4, cmd, cmd_size_in_dw * 4, true);
> +       }
> +
> +       i915_gem_object_unpin_map(pool->obj);
> +
> +       batch = i915_vma_instance(pool->obj, ce->vm, NULL);
> +       if (IS_ERR(batch)) {
> +               drm_err(&i915->drm, "Failed to i915_vma_instance()\n");
> +               return batch;
> +       }
> +
> +       return batch;
> +}
> +
> +static int pxp_submit_cmd(struct drm_i915_private *i915, u32 *cmd, 
> +int cmd_size_in_dw) {
> +       int err = -EINVAL;
> +       struct i915_vma *batch;
> +       struct i915_request *rq;
> +       struct intel_context *ce = NULL;
> +       bool is_engine_pm_get = false;
> +       bool is_batch_vma_pin = false;
> +       bool is_skip_req_on_err = false;
> +       bool is_engine_get_pool = false;
> +       struct intel_gt_buffer_pool_node *pool = NULL;
> +       struct intel_gt *gt = NULL;
> +
> +       if (!i915 || !HAS_ENGINE(&i915->gt, VCS0) ||
> +           !i915->gt.engine[VCS0]->kernel_context) {
> +               err = -EINVAL;
> +               goto end;
> +       }
> +
> +       if (!cmd || (cmd_size_in_dw * 4) > PAGE_SIZE) {
> +               drm_err(&i915->drm, "Failed to %s bad params\n", __func__);
> +               return -EINVAL;
> +       }
> +
> +       gt = &i915->gt;
> +       ce = i915->gt.engine[VCS0]->kernel_context;
> +
> +       intel_engine_pm_get(ce->engine);
> +       is_engine_pm_get = true;
> +
> +       pool = intel_gt_get_buffer_pool(gt, PAGE_SIZE);
> +       if (IS_ERR(pool)) {
> +               drm_err(&i915->drm, "Failed to intel_engine_get_pool()\n");
> +               goto end;
> +       }
> +       is_engine_get_pool = true;
> +
> +       batch = pxp_get_batch(i915, ce, pool, cmd, cmd_size_in_dw);
> +       if (IS_ERR(batch)) {
> +               drm_err(&i915->drm, "Failed to pxp_get_batch()\n");
> +               goto end;
> +       }
> +
> +       err = i915_vma_pin(batch, 0, 0, PIN_USER);
> +       if (err) {
> +               drm_err(&i915->drm, "Failed to i915_vma_pin()\n");
> +               goto end;
> +       }
> +       is_batch_vma_pin = true;
> +
> +       rq = intel_context_create_request(ce);
> +       if (IS_ERR(rq)) {
> +               drm_err(&i915->drm, "Failed to intel_context_create_request()\n");
> +               goto end;
> +       }
> +       is_skip_req_on_err = true;
> +
> +       err = intel_gt_buffer_pool_mark_active(pool, rq);
> +       if (err) {
> +               drm_err(&i915->drm, "Failed to intel_engine_pool_mark_active()\n");
> +               goto end;
> +       }
> +
> +       i915_vma_lock(batch);
> +       err = i915_request_await_object(rq, batch->obj, false);
> +       if (!err)
> +               err = i915_vma_move_to_active(batch, rq, 0);
> +       i915_vma_unlock(batch);
> +       if (err) {
> +               drm_err(&i915->drm, "Failed to i915_request_await_object()\n");
> +               goto end;
> +       }
> +
> +       if (ce->engine->emit_init_breadcrumb) {
> +               err = ce->engine->emit_init_breadcrumb(rq);
> +               if (err) {
> +                       drm_err(&i915->drm, "Failed to emit_init_breadcrumb()\n");
> +                       goto end;
> +               }
> +       }
> +
> +       err = ce->engine->emit_bb_start(rq, batch->node.start,
> +               batch->node.size, 0);
> +       if (err) {
> +               drm_err(&i915->drm, "Failed to emit_bb_start()\n");
> +               goto end;
> +       }
> +
> +       i915_request_add(rq);
> +
> +end:
> +       if (unlikely(err) && is_skip_req_on_err)
> +               i915_request_set_error_once(rq, err);
> +
> +       if (is_batch_vma_pin)
> +               i915_vma_unpin(batch);
> +
> +       if (is_engine_get_pool)
> +               intel_gt_buffer_pool_put(pool);
> +
> +       if (is_engine_pm_get)
> +               intel_engine_pm_put(ce->engine);
> +
> +       return err;
> +}
> +
>  static int pxp_sm_reg_read(struct drm_i915_private *i915, u32 offset, 
> u32 *regval)  {
>         intel_wakeref_t wakeref;
> --
> 2.17.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
