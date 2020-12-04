Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D23F42CF46E
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Dec 2020 19:56:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E90586E1F5;
	Fri,  4 Dec 2020 18:56:51 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 420DD6E1F5
 for <Intel-gfx@lists.freedesktop.org>; Fri,  4 Dec 2020 18:56:51 +0000 (UTC)
IronPort-SDR: kR+YYyfXdLvEqTvbyfkYThq0JAbzw52MxOu4CcXB7KHBWX7ORp1fk57DuaPtfrJ6uCsyqvjoqf
 aBBFYnwRRahg==
X-IronPort-AV: E=McAfee;i="6000,8403,9825"; a="173577601"
X-IronPort-AV: E=Sophos;i="5.78,393,1599548400"; d="scan'208";a="173577601"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 10:56:49 -0800
IronPort-SDR: KFxTGySOyXE2o+MH9iia4n/NaafEvc5LTNmWeNXpASvXTOMmzvYw5upKITiqvo7MYl3T8xjM8d
 uItolSiBJO7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,393,1599548400"; d="scan'208";a="435890799"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga001.fm.intel.com with ESMTP; 04 Dec 2020 10:56:49 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 4 Dec 2020 10:56:48 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 4 Dec 2020 10:56:48 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 4 Dec 2020 10:56:48 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Fri, 4 Dec 2020 10:56:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DkMzZtqQFB+d9hgBQyI1vYD53lZXIQplvow9BFYY05CJ2qDNW4Kzi9RlvI1GzAPPIq48BdKXg5/I0bGdaadT/vpByCUDCym1jcoTCmfCJRxGJiuKSKpERCEsNLAvju48/utTsWBPeq/mAj3tT7jnNkPMI2hQKJ8YiG3tjzDm+02HXwB2QHWJyrcvBmCt3J+2CqhPEr9LW7PhKLnYpCmmf/pAFPWphSLDry1nqKPa4L3Y3iNJMeQhZnI2Ra5csT8/9c4vcM6VYxmMyR6fKnYz7ky4PuA47f85vt1AvnUfz154GsWjvB0OJ3E7lNd4iE+rENudEee+TJGOsoboVoBy2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dB3dhDbTBCpR2yt/7LmkkYMLT1aOcAuSv0dDbfCLOss=;
 b=fqHXcoUoj7TGfksZ3aTVSMGR4KIOu8m+RCHE9a/ULjrLXTHZ48JNxMvufJQSDRzXtDBhvZpyANLbA77TdvP9Xo2Omd9dUIlBZ+FbvbVUXGzyzB6N3t1aESVNokXaEpASdKFsKZn2Sj44LXHCIFbSATS0CnEOxkWKYmKQRCXkGXpWj5uMRy2p5ZBHhq9YXq+YE6tUqhMOZwAdDqsMxUTFcAN/LoV0n4mQGu4RklXcXoBS04RxE8y3k6u2tcTuzDslvoa4piHGsqoRxC9mVfrCeniMoUCjBWW8VeDqxB9fZ1WMOpkXmIeu23fHr1QOOQV8JPW55Z7GAxABrkgOQcpCSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dB3dhDbTBCpR2yt/7LmkkYMLT1aOcAuSv0dDbfCLOss=;
 b=ybKYC/4ALLtDWvzjxHrs2DncmyxsiRjxHKHSVgIOjBhMSOPll9xwGEW2k4rh2xE46Acu8Kfpx8kjizyGCScqJ8dxFJyjXsvRIrKvdLu34PcKMmGCYTmw/mZBHgkjM4y40atoj1sbZHOovMRgnNzIyM1wsggF9GA+h63s07vVJVE=
Received: from DM6PR11MB4531.namprd11.prod.outlook.com (2603:10b6:5:2a5::19)
 by DM6PR11MB3578.namprd11.prod.outlook.com (2603:10b6:5:143::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.21; Fri, 4 Dec
 2020 18:56:45 +0000
Received: from DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::78db:6406:7820:1071]) by DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::78db:6406:7820:1071%8]) with mapi id 15.20.3632.018; Fri, 4 Dec 2020
 18:56:45 +0000
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: "Landwerlin, Lionel G" <lionel.g.landwerlin@intel.com>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>, "Bommu,
 Krishnaiah" <krishnaiah.bommu@intel.com>
Thread-Topic: [Intel-gfx] [RFC-v4 24/26] drm/i915/pxp: User interface for
 Protected buffer
Thread-Index: AQHWyGA4Udn4ng0gHEevQ0oE2o6Wb6nnAYIAgABKaGA=
Date: Fri, 4 Dec 2020 18:56:45 +0000
Message-ID: <DM6PR11MB4531308FB6432A360F0AFCDED9F10@DM6PR11MB4531.namprd11.prod.outlook.com>
References: <20201202040341.31981-1-sean.z.huang@intel.com>
 <20201202040341.31981-25-sean.z.huang@intel.com>
 <74a9f7c8-2509-8d7b-771f-132dea1c4bb9@intel.com>
In-Reply-To: <74a9f7c8-2509-8d7b-771f-132dea1c4bb9@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [73.220.16.43]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e4f7cb02-23ab-4bf2-c861-08d8988658cb
x-ms-traffictypediagnostic: DM6PR11MB3578:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB35788D31098F010FE8F240B0D9F10@DM6PR11MB3578.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XudZG1MiGPSa8v0CCH9Euhtwd//VL2EjVZpNpMClq6xhYSb33CFz59t1Fn8Xl+n4M5VjMq99dWnC2JXQys2sH0xU0iqxJjuCnbdXvLTkTB7qZAVTI7B1MKDmc8GTWVRf93O+JefsNL1cwT9iZJV7jflhIKy0gaJOB73U5JZgHRtnGkSxOo9n+uX/TpEytVYopeTILbo+A7mDNoAPT8ZRaciXsgK30raqCzgHJ4RcZ/EdS4++5iOvcXo8YYt1ggt0e/O5UI0o9coSWn70C8WTRn8yfII8rSql+fCnmxkt4jQXbK6cT7cf2TxdLUpIIuym
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4531.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(346002)(366004)(39860400002)(136003)(396003)(33656002)(53546011)(6636002)(66556008)(66946007)(66476007)(8676002)(76116006)(6506007)(2906002)(86362001)(71200400001)(64756008)(26005)(316002)(478600001)(52536014)(110136005)(7696005)(4326008)(107886003)(55016002)(66446008)(8936002)(83380400001)(9686003)(186003)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?a0JINHh3VFVjcWlhVWp5Ynh1MWl5M1NjL3pKcDE5d3FRV1BOOUxVaUt6K0pP?=
 =?utf-8?B?czdpVHlVNm5vZE1yNGVtRzY1ZXRSOUl0REpjQ1NDcUptYVZrTjk5R1hyWDk0?=
 =?utf-8?B?SUpVbklaaFNoZ056dmFkbmozdjdaNXlBc3gwd3ZBd0t1aGZ0eTZjT2NITnZl?=
 =?utf-8?B?aTdmaGErREZYdHpyYi9ERERzREJ0T1hobjd3SmVObEVnam5ZanFqTzhuK28w?=
 =?utf-8?B?ZGpDK3pDcTFnYTg1MW5Id2pMajBqY2xSSjZiUmMrcHdZZlhtWFlFcmtYTWZo?=
 =?utf-8?B?dGtra3JLWnRwcC9tYzh3aExVdHlpRW52aXNKZEhHNGlsUy9FNnprVnR6ZURW?=
 =?utf-8?B?QUVxRER2WjVXTmF5cDJ0YTVTOERPcUsyV1RlNUhSQnhNZFZNQmt1R1JLOFdW?=
 =?utf-8?B?a2VGVWk1c04xektyd3IyQWpRSXlrU2N0ODNCMElZK1daN1E2eUlqbEtWRnU4?=
 =?utf-8?B?UklJZnFDc0swdU5KcS82c1ZSOXpNMnhpYTJ5Tkt4Y0tiZ0lXdHRFNzdLQTh0?=
 =?utf-8?B?b05HSUxHRUkvWnZ2c2FkU0lycmhXRStnKzFoaHdoMjc3UThWUHgrWVoyZ3h5?=
 =?utf-8?B?WkpDRCtzVHRMa2M5TFFSM0pwMEhIL29TS2hqbm01dUYxQUE0bWRvdk9mZ1ZZ?=
 =?utf-8?B?NEM5OHA4eWxVeXhtZVFaRXRyckVwWkFTdWVQTTZ3T0dLUVJrclJjVUZnTUky?=
 =?utf-8?B?NzNSMjdENlRFdnYvMHJtQnBUZ3lKd050TDg1RmhWcXVqVkdGT1JZeit3QnB3?=
 =?utf-8?B?aHhiYXJ0eDVHR2dZUE9KMzR1NGIrYy9obFB5UEY1bzl4dXJTamZMTlBjK2Vw?=
 =?utf-8?B?SlI5ZURsd25pK1E3NWxkemhleXBJTlN4V0JLa3l0cDZmTzg4UzY5Sno1cDFO?=
 =?utf-8?B?UGJ5dVFNYU0xU0VHd0U3UExzajMxalMxU01kWElEdzJHeVpRUmtLeUNZNUg0?=
 =?utf-8?B?TG9VYTJGSXF4aTBMK3cydDhVR1pCRTRwL09tdS9CQlAwQ05IWmRFQVpzaHE1?=
 =?utf-8?B?aFR1WFFaU3pvYk4weVRBallaMCtnT3V6dmZmdmc5UzJsRVh1Y21nZnRDVzZP?=
 =?utf-8?B?YjFWVk52RWYwMm5sQk5hZXVuOUpuaWhvWDBCR0pIeUplWEtzZHpsTEUzMWRk?=
 =?utf-8?B?emxSR0FCZ0NrOWZMcTRFeVpjQ0VCVnc2emN1eFhqQ0I1MWwxYkphUmZYWHpG?=
 =?utf-8?B?QW10eElYZGlGbTJSeDVwTzVZemlNMHdmZWhuMHNyaVFFREo3c3dpaEZhTFJs?=
 =?utf-8?B?MWdyT1VkQ0pDRTk3eVV0cEVUeHNBQTM1MzZxSytYSWZrOTFneFVzYU9PZlIx?=
 =?utf-8?Q?5Qkr+UAQscUaQ=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4531.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e4f7cb02-23ab-4bf2-c861-08d8988658cb
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2020 18:56:45.3942 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v7yH7lqEQRUc387NTw+bnbyeOA/bF5HPJ94sIJXbyjjBzQElg1wP2uTCe6IG4VYK1DREwYlAxhFsy3e+X34ELg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3578
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC-v4 24/26] drm/i915/pxp: User interface for
 Protected buffer
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
Cc: "Kondapally, Kalyan" <kalyan.kondapally@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Landwerlin,

Thanks for your feedback, Let me check with the commit owner. And I will upload another reversion once it's done.



Hi Krishnaiah,

May I have your comment for this? Please let me know if there is new revision path thanks.

Best regards,
Sean

-----Original Message-----
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com> 
Sent: Friday, December 4, 2020 6:24 AM
To: Huang, Sean Z <sean.z.huang@intel.com>; Intel-gfx@lists.freedesktop.org
Cc: Bommu, Krishnaiah <krishnaiah.bommu@intel.com>; Kondapally, Kalyan <kalyan.kondapally@intel.com>
Subject: Re: [Intel-gfx] [RFC-v4 24/26] drm/i915/pxp: User interface for Protected buffer

On 02/12/2020 06:03, Huang, Sean Z wrote:
> From: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
>
> This api allow user mode to create Protected buffer and context creation.
>
> Signed-off-by: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> Cc: Telukuntla Sreedhar <sreedhar.telukuntla@intel.com>
> Cc: Kondapally Kalyan <kalyan.kondapally@intel.com>
> Cc: Gupta Anshuman <Anshuman.Gupta@intel.com>
> Cc: Huang Sean Z <sean.z.huang@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_context.c   | 15 ++++++++++--
>   drivers/gpu/drm/i915/gem/i915_gem_context.h   | 10 ++++++++
>   .../gpu/drm/i915/gem/i915_gem_context_types.h |  2 +-
>   .../gpu/drm/i915/gem/i915_gem_object_types.h  |  5 ++++
>   drivers/gpu/drm/i915/i915_gem.c               | 23 +++++++++++++++----
>   include/uapi/drm/i915_drm.h                   | 19 +++++++++++++++
>   6 files changed, 67 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c 
> b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index a6299da64de4..dd5d24a13cb9 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -2060,12 +2060,23 @@ static int ctx_setparam(struct drm_i915_file_private *fpriv,
>   	case I915_CONTEXT_PARAM_RECOVERABLE:
>   		if (args->size)
>   			ret = -EINVAL;
> -		else if (args->value)
> -			i915_gem_context_set_recoverable(ctx);
> +		else if (args->value) {
> +			if (!i915_gem_context_is_protected(ctx))
> +				i915_gem_context_set_recoverable(ctx);
> +			else
> +				ret = -EPERM;
> +			}
>   		else
>   			i915_gem_context_clear_recoverable(ctx);
>   		break;
>   
> +	case I915_CONTEXT_PARAM_PROTECTED_CONTENT:
> +		if (args->size)
> +			ret = -EINVAL;
> +		else if (args->value)
> +			i915_gem_context_set_protected(ctx);
> +		break;
> +
>   	case I915_CONTEXT_PARAM_PRIORITY:
>   		ret = set_priority(ctx, args);
>   		break;
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.h 
> b/drivers/gpu/drm/i915/gem/i915_gem_context.h
> index a133f92bbedb..5897e7ca11a8 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.h
> @@ -70,6 +70,16 @@ static inline void i915_gem_context_set_recoverable(struct i915_gem_context *ctx
>   	set_bit(UCONTEXT_RECOVERABLE, &ctx->user_flags);
>   }
>   
> +static inline void i915_gem_context_set_protected(struct 
> +i915_gem_context *ctx) {
> +	set_bit(UCONTEXT_PROTECTED, &ctx->user_flags); }
> +
> +static inline bool i915_gem_context_is_protected(struct 
> +i915_gem_context *ctx) {
> +	return test_bit(UCONTEXT_PROTECTED, &ctx->user_flags); }
> +
>   static inline void i915_gem_context_clear_recoverable(struct i915_gem_context *ctx)
>   {
>   	clear_bit(UCONTEXT_RECOVERABLE, &ctx->user_flags); diff --git 
> a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h 
> b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> index ae14ca24a11f..81ae94c2be86 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> @@ -135,7 +135,7 @@ struct i915_gem_context {
>   #define UCONTEXT_BANNABLE		2
>   #define UCONTEXT_RECOVERABLE		3
>   #define UCONTEXT_PERSISTENCE		4
> -
> +#define UCONTEXT_PROTECTED		5
>   	/**
>   	 * @flags: small set of booleans
>   	 */
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h 
> b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> index e2d9b7e1e152..90ac955463f4 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> @@ -161,6 +161,11 @@ struct drm_i915_gem_object {
>   	} mmo;
>   
>   	I915_SELFTEST_DECLARE(struct list_head st_link);
> +	/**
> +	 * @user_flags: small set of booleans set by the user
> +	 */
> +	unsigned long user_flags;
> +#define I915_BO_PROTECTED     BIT(0)
>   
>   	unsigned long flags;
>   #define I915_BO_ALLOC_CONTIGUOUS BIT(0) diff --git 
> a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c 
> index 41698a823737..6a791fd24eaa 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -184,7 +184,8 @@ static int
>   i915_gem_create(struct drm_file *file,
>   		struct intel_memory_region *mr,
>   		u64 *size_p,
> -		u32 *handle_p)
> +		u32 *handle_p,
> +		u64 user_flags)
>   {
>   	struct drm_i915_gem_object *obj;
>   	u32 handle;
> @@ -204,6 +205,8 @@ i915_gem_create(struct drm_file *file,
>   	if (IS_ERR(obj))
>   		return PTR_ERR(obj);
>   
> +	obj->user_flags = user_flags;
> +
>   	ret = drm_gem_handle_create(file, &obj->base, &handle);
>   	/* drop reference from allocate - handle holds it now */
>   	i915_gem_object_put(obj);
> @@ -258,11 +261,12 @@ i915_gem_dumb_create(struct drm_file *file,
>   	return i915_gem_create(file,
>   			       intel_memory_region_by_type(to_i915(dev),
>   							   mem_type),
> -			       &args->size, &args->handle);
> +			       &args->size, &args->handle, 0);
>   }
>   
>   struct create_ext {
> -        struct drm_i915_private *i915;
> +	struct drm_i915_private *i915;
> +	unsigned long user_flags;
>   };
>   
>   static int __create_setparam(struct drm_i915_gem_object_param *args, 
> @@ -273,6 +277,17 @@ static int __create_setparam(struct drm_i915_gem_object_param *args,
>   		return -EINVAL;
>   	}
>   
> +	switch (lower_32_bits(args->param)) {
> +	case I915_PARAM_PROTECTED_CONTENT:
> +		if (args->size) {
> +			return -EINVAL;
> +		} else if (args->data) {
> +			ext_data->user_flags = args->data;
> +			return 0;
> +		}
> +	break;
> +	}
> +
>   	return -EINVAL;
>   }
>   
> @@ -318,7 +333,7 @@ i915_gem_create_ioctl(struct drm_device *dev, void *data,
>   	return i915_gem_create(file,
>   			       intel_memory_region_by_type(i915,
>   							   INTEL_MEMORY_SYSTEM),
> -			       &args->size, &args->handle);
> +			       &args->size, &args->handle, ext_data.user_flags);
>   }
>   
>   static int
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h 
> index 2c1ce2761d55..fab00bfbbdee 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -1715,6 +1715,15 @@ struct drm_i915_gem_context_param {
>    * Default is 16 KiB.
>    */
>   #define I915_CONTEXT_PARAM_RINGSIZE	0xc
> +
> +/*
> + * I915_CONTEXT_PARAM_PROTECTED_CONTENT:
> + *
> + * If set to true (1) PAVP content protection is enabled.
> + * When enabled, the context is marked unrecoverable and may
> + * become invalid due to PAVP teardown event or other error.
> + */
> +#define I915_CONTEXT_PARAM_PROTECTED_CONTENT    0xd


This is about protected contexts. It should probably go into its own patch along with the code for the gem_context object.


-Lionel


>   /* Must be kept compact -- no holes and well documented */
>   
>   	__u64 value;
> @@ -1734,6 +1743,16 @@ struct drm_i915_gem_object_param {
>    */
>   #define I915_OBJECT_PARAM  (1ull<<32)
>   
> +/*
> + * I915_PARAM_PROTECTED_CONTENT:
> + *
> + * If set to true (1) buffer contents is expected to be protected by
> + * PAVP encryption and requires decryption for scan out and processing.
> + * Protected buffers can only be used in PAVP protected contexts.
> + * A protected buffer may become invalid as a result of PAVP teardown.
> + */
> +#define I915_PARAM_PROTECTED_CONTENT  0x1
> +
>   	__u64 param;
>   
>   	/* Data value or pointer */


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
