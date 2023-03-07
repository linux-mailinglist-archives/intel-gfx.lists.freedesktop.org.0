Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C7B6AE0B0
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Mar 2023 14:37:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF6FA10E498;
	Tue,  7 Mar 2023 13:37:05 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 513E410E498
 for <Intel-GFX@lists.freedesktop.org>; Tue,  7 Mar 2023 13:37:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678196224; x=1709732224;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=rl+BTM+ccq/r6/Gj5qZOWQbryVVRH/WhbliPjUI3i/A=;
 b=fp4aR7P1ZNMczXLLPOv3miYC3dQy2xyI0lGUSTENec5wSGIg6PHWHcLV
 aXg4gh/JV7BygT/jxNPtk6oRFWkVb5KWQC8t9TRILnhjIKWRQFSUNE4Zn
 Inz8aTx0q/nJO4LYSGK6NV5bD1h1G70+oc7YueEaeofSq3RfOh8pZcbgV
 LvIf3ZO4YWt5Zt2otxEl5Hj4KDwMusl9cBDtlB9P6175+ykXxBJjCLwWa
 psqWh5K7HEjvqSKelzvv8MxrIkYywC0NkikA1V+0poodETObwUW5c1xsG
 5PFTVxd4OBJ2B8TcHMYqgi5PJlY/YVnCI1zR7mJPMfa3yqP1ngoDQB9X+ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="334564540"
X-IronPort-AV: E=Sophos;i="5.98,241,1673942400"; d="scan'208";a="334564540"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 05:37:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="765643083"
X-IronPort-AV: E=Sophos;i="5.98,241,1673942400"; d="scan'208";a="765643083"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 07 Mar 2023 05:37:03 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 7 Mar 2023 05:37:03 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 7 Mar 2023 05:37:03 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 7 Mar 2023 05:37:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RmbNSIbKPlSLOV619grusaguwtX8vgk9u69n05W053wmyAt7u78XG/WN8Yz5Ls/DCgXH5avpARvIsu+AIvMoOSOYVf7RwN2Pj8OJZyO3wK+hox3ktZ5//x9GPa0xHGpbqqXc2k1gdKSpDF/qWft8tuCZXwqH7wrUl0J733jvs4DmfsPAi5f6T7ChFUB0BJvn4u/0VZ55vnMW4LdrCyUtfpVR/4xCjGKWEVxiVudvKuAVCkjgi5GlKPTv4USHEBjogWy606NAi0zXnH2fHZoZOGLKFpJihOo11qnGKbw4ry2xvAQ2ocAcFDSibqQ26E/WCEwTb2ie8B0zG63OZ8Qu6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uz+VLlUH9BP3OBv1WmZZklORGiw/Wp+j88xrcWaQiFA=;
 b=bSBuR6hmcFQmqlUJ5WL8L/Ns9Guvxazw5p3mKrCEKi7s0BZPpKuN000otZdpLo7ZDiveXGmFpFhgZPiUdDWJomHXaycA419G5uAOENbclwvRvhY+Ldb8dHv9mfx0QfaV9ZzZpv+52z2RCdyc+HaA/qrsyvhSe9D7JJkGMqZC8PXJGymdVXLEOSKh3OYv2kfy0eVI6Ozf5gPL6wEGwjqlGTLS036tufF/OvP9hc7C0qdE4Ptu+KWkOCq7DbBxtBXJzGsDvVFdr/AFkJQeSgduZIQ8q1wdZ+uYvw3dtuPE/xLDHlo0b8PFn4sW+ieGkMI/2CVDNNXkCvOd1FMjln5fGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA0PR11MB4527.namprd11.prod.outlook.com (2603:10b6:806:72::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.29; Tue, 7 Mar
 2023 13:37:00 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158%9]) with mapi id 15.20.6156.029; Tue, 7 Mar 2023
 13:37:00 +0000
Date: Tue, 7 Mar 2023 08:36:55 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Tejas Upadhyay <tejas.upadhyay@intel.com>
Message-ID: <ZAc998diJkqCJTz2@intel.com>
References: <20230307094643.532271-1-tejas.upadhyay@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230307094643.532271-1-tejas.upadhyay@intel.com>
X-ClientProxiedBy: SJ0PR05CA0110.namprd05.prod.outlook.com
 (2603:10b6:a03:334::25) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA0PR11MB4527:EE_
X-MS-Office365-Filtering-Correlation-Id: c04b3b45-2b4e-46bf-b671-08db1f11072e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aQpwREW6zlz47JaAhQsrvI3D2nOQjkUF6AddcNdTEbYQ1f92IQ0duvqxIAzHXOrVGPtcQNHimRfZgQZ5F5yvdMF6TE8zgSWWmJ2tKFGzlgLPB6X+aN1nQfeKwj0UiDTFb1mNW3pdNj97Gh17OCjXPn7HTVYq1DGsALRyDIe854/j2rARvG+2QNVYG7U+4QrYBR2j+smsWBG3fZGZeVd0wYqkYHWVGHyp38sikBitqsAk+nY9ppYajsbMIjmNwQ4mbodh7byEHyO3kEA37OMQ+DwF6rAHIjG2i4SadcqPenyZJVyu3aLbOxujBe2w5sViCoErBP9nxz7D3BB7/oFyTa51/nhIDsReIZAQ8VxERty++nvGkmeCak3qbWnb2mhx/1AQuXsbqXX9y/k88zxaL9gNoMh+Bh3EJkscOcrblDCiFRpURMLPV75DpNYeR7mqfzpfih3v+MDJKTyiPIelaUgcsduqsREw+SwEmjHXkecQeZv7ZFMNgJz5spVxo7bzqD2WzZFwvqFvE9RTqbFNZhhr1aSLuUmsL5OaTEj8Aoyn5LZCHcW3nsJYIrznp8kqR/YbSjjLsMwKvK27U5061gMnJwSqdE5xny/g5PqtyeTU8j4GCkeGy1aBA0yqFlpLIP6paQk4l8lgoXE/oS/xQA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(366004)(346002)(376002)(136003)(396003)(451199018)(44832011)(6862004)(5660300002)(2906002)(8936002)(41300700001)(66946007)(8676002)(83380400001)(66556008)(37006003)(316002)(6636002)(6666004)(478600001)(6486002)(66476007)(4326008)(6506007)(2616005)(86362001)(186003)(6512007)(38100700002)(26005)(36756003)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?IMKQ5aL7DO2FTzjCO2KfjQ7SvKCcxSPKPPFD/uoHr5iGk2JcINY9b4R3e1RF?=
 =?us-ascii?Q?IeczDnWWfEYjbwkM4j10cKhGr/Jwrf2ooFtYKR8XL2FuaukbzeBrmlIiM6xP?=
 =?us-ascii?Q?ovvUdiS4Ib3PJo6IUuaHN6DG6nqSEu5lm3mWSZiKASzPy4L6z8vd2J1mBWDI?=
 =?us-ascii?Q?ZdUJgtkcxWFDGfSriszwgKC7ecCe2AaxHHFxKAGP49nhI2YH7pqSJYXPzExQ?=
 =?us-ascii?Q?TKUAZm66QBbTXw2alIDUHG40a8MfvQn5BdO2QoLta+VgE4GGWWH6EGLlqRnl?=
 =?us-ascii?Q?xt/iUbG16yUom3VoSB48dJVzTB27yZiL268PFnwGj1e3YsxPganWMGNsvRHR?=
 =?us-ascii?Q?gWUC164IYwICHTb5JXbYpd9j4VI4ffuTBh/K88hgdebRmoKPhL11x7T5WA7W?=
 =?us-ascii?Q?gpv2Lr5BCdMEwkp+ScoPmIX62vY/NuxyEDgMgHoS6pwSdH77JRSjKZhDGU6M?=
 =?us-ascii?Q?ovYE2v14931A8hE3dY7ygrNfS6nhO7PIamwAXC5j5GvtK+RuKUUHjYgJAVF9?=
 =?us-ascii?Q?/FKbZIz+8aYL6qlila+A47ADSCTxSnK982u0dfz4lgKHsbnxHUnWLETEEikB?=
 =?us-ascii?Q?cb9Ps6rWE8WmNT7TtNc5LYHcJDrn+HfLeVVR9LLY5RAD5ny91XsN6YNpw5XH?=
 =?us-ascii?Q?vCFD+8o8JIcvcBJxLNNIaczNVi/WYGajreT6CKhrFOHoKA6bPFCM+HBjmddE?=
 =?us-ascii?Q?53f21EigyvF+gFT/L+Qi8NR97+XnYc457xIU4MiggGb9qTIzoV/dN9Fj+vCB?=
 =?us-ascii?Q?6aJ0ELVFvKM22HUsPgS4Zl79oFA9TvtL6lZ6mnkNTUpYAm3rvGrPaG6Hv8he?=
 =?us-ascii?Q?BsyoNOZzZZ9RnM3lSmWYKPYFHn5BkN9VcGE4CGG0YPohYyWE1xDM2VUqYqvM?=
 =?us-ascii?Q?lqm6adbSC4HuTblLDlfYPVXE0gVcFtyjdD+p7bXCdaJtLH3XE3xwsHmBYuFC?=
 =?us-ascii?Q?MBPPhgbHmlFKHxrGnOyaYv15vjICoxvOUP470hJLYVQtgOiF9pPZevL8B4w0?=
 =?us-ascii?Q?M7DDEROngoo6sXDBLw5izF/HOrUkXrxBIg4FjIJ6/ELwjoEP5lH5uXOq9djd?=
 =?us-ascii?Q?KL363DF5SpGWcxMhiRl1r9TQfYk/GTXXkQX59DNCdXtgPIE6ZohwCvQdXLB+?=
 =?us-ascii?Q?EYlal8ZwCUEBBrlcKn7SsXfJK2yjd8pMLIrQVWcdpzYJ/4mIfASa5vYDb93+?=
 =?us-ascii?Q?p3Fm2o05sg0MEmNysb8kGr/fqOCMrg8dfRcX9clx5K9/oaRHCrR9lVvMIDYR?=
 =?us-ascii?Q?otXGbt+B4NSQIKiCWtm885mV0E/9WzgJzzvmzz8nzV3SuDT5qgVUDtwPaeft?=
 =?us-ascii?Q?kb1oGRcKWoGYtbzwL+5WNTfCSW5x1005qGcxYlzdaXzbLI04A43PpPHk1v91?=
 =?us-ascii?Q?hG0nwYMFB3uIjWaGX6rI0kyP8BYe0jKUpF9S3fBwHehqh0fw/yigVGlC3qVt?=
 =?us-ascii?Q?xqAkYkukI2vwhuxKuPywn+CY/qfsHdgMXzEoSvAbVP+wObVTXk4KWGVCA4ue?=
 =?us-ascii?Q?5cjWLdrkeDRkqwCHu2anyTkIiOjE9P7PWtX8eqNzaqmWH7UXPgYzBBrX37K6?=
 =?us-ascii?Q?qpKHAkV1ceh3o4tKYh/oIaQE3yHmc4oRoyE95N6hEz/QpZYggm2wp9RcEWkO?=
 =?us-ascii?Q?wg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c04b3b45-2b4e-46bf-b671-08db1f11072e
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2023 13:37:00.4088 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aWHWSqEeErY/3tBhXBFsElJv4VLZouh4uhz1QiCvFFs0L7N1NmKm7+HxFwbU5YCiMwrw/CaaM+RgOVPwQ8Jkig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4527
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] drm/i915/selftest: Remove avoidable init assignment
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
Cc: Intel-GFX@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 07, 2023 at 03:16:43PM +0530, Tejas Upadhyay wrote:
> We can skip the assignment and i915 variable
> altogether and use refernce directly. Also used at
> single place only.
> 
> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>

trusting the compiler,

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/selftests/i915_request.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
> index 7a27aba3da8a..a9b79888c193 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_request.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_request.c
> @@ -1117,9 +1117,8 @@ static int live_empty_request(void *arg)
>  
>  static struct i915_vma *recursive_batch(struct intel_gt *gt)
>  {
> -	struct drm_i915_private *i915 = gt->i915;
>  	struct drm_i915_gem_object *obj;
> -	const int ver = GRAPHICS_VER(i915);
> +	const int ver = GRAPHICS_VER(gt->i915);
>  	struct i915_vma *vma;
>  	u32 *cmd;
>  	int err;
> -- 
> 2.25.1
> 
