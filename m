Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 805E96FF37E
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 15:59:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DD1510E25C;
	Thu, 11 May 2023 13:59:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F20C710E25C
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 May 2023 13:59:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683813576; x=1715349576;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=JNNtPg0hlBft4XohXJhFwosBkB5agJKBwTSH8HWudEQ=;
 b=lfcbK9PWqXUxpMJnRGejllaP/OUKPfO2TWv7bgIHVoRodnf8pfFmIpXP
 VsIHL4CbNHVTmNCTPJA9svu5WrY9xW0TIQhcnNgvrD14ytJ8cm6ELLWF8
 31NCqtwwFgPV7a9ppAdQw/0Art5CWXrMscekBpFkUQroJwB1/H8E5TjrV
 4XBVRRlAaHYpjfYrX5CDJb9O3jfp1T1c6FUz2IYqbIEtyoHjtxhiwniPk
 J990UmVoYx4V2EJu0LEkeYxGril8QcyI4JTmm2qbB/x4U0TSX3bBS1hQl
 1kZT0I4mzlwcuxti/pILZ6S1FSA+vvuUeEFqnnGtjvT/No91UuIGOpDgP A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="347975082"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="347975082"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 06:59:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="843975787"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="843975787"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 11 May 2023 06:59:34 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 11 May 2023 06:59:33 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 11 May 2023 06:59:33 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 11 May 2023 06:59:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RnPKl9o58hc8GObeUnTwNC2ZSf0eFU+Kpw569F5B7UaNCKeY+jlR1YcZmIBy2AO9UsN9aWkSXl+uYQIQpr9vlSktYqRwusjQ+b67KWu7KbEgSo49wEM7dw7fjsqLs1ekjeg7in+KRaokOakKZF0vI8AN3qpuieJhQD4fB01ib+KQEcpwvkvN6OGByajqmoXvOWdraHfQz3tdmMzQ8FGsLsFR0gtzq4W+CGQAbgRQLXV+aWvm+Bkwu0cPfMBOMWC0jm2VcEGP6/lZZ/6Bp7i9Y3IvuNIGhtJtxhi+U/HWVdnOi8gmfaOFq4ZEh5+osh8X1MB0DfF9H087YVo0S+RByw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZNRuLreU9mOi7rl4aKBw01xcBDDO2THoaKPo0vNN7Y8=;
 b=ItAAAx8uWk5dfs+zQwRwTMObZABOFgXJxa8Q6UTMfsmaX3EW1PF7cUzupkIZJQcRgwJhpd1TtoQCx4w5sAgcN9LOlMeZxUO6WtBrJCZrUhYQUguEGbaU/5Qgkd4qvD+GztKhANCEq9uwrbbsKRNTNYT83Zr2ASvzfz6jwTPdTuEDE+p29e3f/u9VqXhAIK6R1LTChBRaJke3DrQSzn+1TD5ggHI1EdZ8RKF+tSgT9ujhAeUrRdKGA7OZR2zj5Ai0aGBO9iEZC2ASgT8G3B9816mOXRYqdDG4xoJOuYGY9XqhUn1VcDq7ApdPwi4uYQ+wBCe7q+Rqfl8uaoriE7eaiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by PH8PR11MB6755.namprd11.prod.outlook.com (2603:10b6:510:1ca::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.33; Thu, 11 May
 2023 13:59:31 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::28c6:f268:89bd:e45a]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::28c6:f268:89bd:e45a%7]) with mapi id 15.20.6363.033; Thu, 11 May 2023
 13:59:31 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230510223552.89656-2-radhakrishna.sripada@intel.com>
References: <20230510223552.89656-1-radhakrishna.sripada@intel.com>
 <20230510223552.89656-2-radhakrishna.sripada@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Thu, 11 May 2023 10:59:26 -0300
Message-ID: <168381356684.3768.17286452970047671991@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BY5PR13CA0007.namprd13.prod.outlook.com
 (2603:10b6:a03:180::20) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|PH8PR11MB6755:EE_
X-MS-Office365-Filtering-Correlation-Id: c5428695-f4c2-4102-66d3-08db5227f125
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yOwMPv8k+UY4fouNQK8HM6jJLvXmLqYeX6ZuIPjvOyKiXTL8o6uNjmPDO/qVIrhLlNjB1U0DDWGmf95VT3SJEVXE7AfOK+fpK8igDn6/VjwNpKMJYAj8c3J0GLnTrQA3blXUuQeZSeGC0qfV/QO7es5EqJeTuYFFk8XqS9o+lCwz5TlAh1XiWKLLApimMXTBYOhUG1+Km7s91bv+csMGJUjc53BY4eoaDnZG/ZYUBPDqjUhZ/jsEjMFsbFvNe4tSt8CTT5YcQ7LKChyd/l6Dxr/io2C2awyQuk3ncJDDjp5FuttyGRGgtDqDGzN4KWZwJ8u9H2IehKwaZTHkKBwkMl+n7eBUnzj6v/ZwN93EjL2PUcd4UU7JWGju70KNNMVvKKEjECvuYZzozvYWanrL81xGmv7ykfYfjp+FwsKZUt5DdPoF+aPFy80gkqAUOmxutZhKjXc0MP/bRDetw9pSW1y9IuBLFdSKYlewvH286N9uNG1s+zspG30k5bGthU2nh3FUoioKGoMA+jsxg9VAkV/rTYgW3nTTPsa7S/EtWvC26dyNlg7WjS/3KZNJsmIq
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(346002)(366004)(136003)(396003)(39860400002)(376002)(451199021)(107886003)(26005)(6512007)(6506007)(38100700002)(9686003)(6666004)(6486002)(186003)(33716001)(83380400001)(41300700001)(4326008)(44832011)(2906002)(8676002)(66946007)(66556008)(478600001)(54906003)(5660300002)(86362001)(316002)(66476007)(8936002)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b0d1WjBCVW9jdHJVVU55S3ZzaFN2UHljWmk0cVBEM2k0UlJCUkJyNHBJa204?=
 =?utf-8?B?eW0zckVYMWp0dzdibWRTNS9oQkJEbEpVdktUU3pxc21ESDJBRHVJbVNWaUNT?=
 =?utf-8?B?SWdGQWk5akxOblN2LzJqYXJjQTJmYWdQSmp1TlpwR3VYZitqaGxXTWtZNTE0?=
 =?utf-8?B?OVM0YWdVNXJBazhZK2NMY2tlSkFqdmRmdnFVbHRQaFZDKzJiajUzN1o5clJW?=
 =?utf-8?B?MUtrT0gzaE50Nm5vaFRGd0d6dkJJelZDTm8yMGFsb21ZM0ZkcUsxNUJNbkVw?=
 =?utf-8?B?QXh6Z3BXNTNLa1RMblJzUnFYNmgxWkQ2dUNrb0Qxb1BUY0RualUzNnZvQ2VU?=
 =?utf-8?B?V052aHFtSld4aHpKRTVoQU0wV3c2Y0ZLWjZZZWZsYlBZRmxobWw5YXpaSG1Q?=
 =?utf-8?B?bEtzMHk5d3hJTkRHb0RWN0tWUC8wQTFTWXBQeVA1OE40N0pxTDlUcEZxb2hk?=
 =?utf-8?B?eC9sYXpsdlhqb3hLeTk5MDRvWU82K3FKY3BpMUprTEZxVEVzV1I4TEpNRTJR?=
 =?utf-8?B?dGFCQzNhZVFtZGZlc0YwT0tFazlSVFBoYmNkVE1VWUhIalRMekpzRUtNVWtx?=
 =?utf-8?B?VDM5UmE0QkFBT3NZbldpUkVValRSZ0czd3l4dzVYTWxCdFJtQjBCeXRwZVIx?=
 =?utf-8?B?Tk9GK0ZnRk5EbGwwb1Z0Y25aV2JPUWJxT0c4ZFJpekZxanZHU095NWt3Y3Ru?=
 =?utf-8?B?djgwWGl3Nmo1RjEvOWo0aS90MzllUG1ZLzJIMGJscGdjcWxmOEFzYWlFOE91?=
 =?utf-8?B?SWYzZldHNUc0WVoxTU9UdWNiUDVHd0ozcC82NVFDeTYwbldRRUk5U0RuVVpz?=
 =?utf-8?B?Rnl4am5lNUdRb000bE91NG1kL0ZrY3hJNWxEVytwbVNvU1BBeEFFTmtpT3Vo?=
 =?utf-8?B?b2s5MENJMWxmR0R2KzRTT0llQXZ5WFpNS3QrYVI3QmQyUjZ4bUNkbTFpTVFD?=
 =?utf-8?B?ZTIyQ2RHVi9UOVBpc0ljVGJjOWNsK0tSYytVbTI4cWFZYVdVMDFkdnVxN2la?=
 =?utf-8?B?RW1nK1MvUmRmc2M1VGFVMkVOYnBHSDhnUHNhZEpJY08xaklPbzE4UFlKRHFl?=
 =?utf-8?B?dFBSVXA2WGJvd216Yjc2M3lPeWFBVjJYWlBVRHZQRGt5OUVLdG9QRHRYd2M2?=
 =?utf-8?B?R0RhTjJleVFVOEtVRDR3OHR6Z05MYVoxTEU5b1o1KzcxTTVIWHF6UWdaWTRh?=
 =?utf-8?B?M0pJVFdENW5aMzNVRXNOakN0YjhmSWhsOXd0UVJVZjREUzl5Z0x3cGpuaWgv?=
 =?utf-8?B?L3ptazVCcXlyblV3bVdOeHBqY2ZpamxmNWZQU0tKUkxMc0NVc0RET3hxUW9r?=
 =?utf-8?B?ZG9naExkcG5RbUlqWDJsN3JUYllFMlNOeUtxdmhXTTc0UVl4M3V6eElpWXB5?=
 =?utf-8?B?UjY0ZXlsajZ0Yml3U1kvL2poeWxGQWdEOUxFYXNJOTQ0cWpKREpocHpzSlo5?=
 =?utf-8?B?QzNlOFQwdlVaT2NiYlJtcU9YUE1Kc0t4VmVkTVljK29Vek1sY3NaQmtRMVov?=
 =?utf-8?B?T2VjSFcrZFZvUHd0WU9ITkdZTk40c1FSTUVLamFtQzJiOEVYMk5nd3IyTHFt?=
 =?utf-8?B?TlowUTBnOXBVMVRINWhOWC9seTA0Uno3VWVjV2IySTVGTEdsR0krMTlQL1Nr?=
 =?utf-8?B?ZDZjSXMzN1BFRFJBZDhSZmxXODd6WVRRbDdXRi9MTzRDUWs2MWd0eWxXMWxn?=
 =?utf-8?B?b1A2ckZWaGFNRWEzbmgvdUVLWGp3SjZxQzFGRXEySTBlenpkamkzYW1MV0tD?=
 =?utf-8?B?cFNGZ0RwVmNkTS9GRXFjalBzTk1udjJ3SlpydVE1RXVoNE9ZVk91WFN5elZk?=
 =?utf-8?B?ZkdqVFVETkdlcThmR01JUi9qYUR5ZVRQSzBxUjFFTjlmLzNxZ21JYXRMYVlV?=
 =?utf-8?B?NVk4djlHL29LcHdzaTdROGFwdC91U05jR1Q3SVlvbURneXVTV3QyNFF0c1ND?=
 =?utf-8?B?Z1VRVWV1MXpZNXRGcFd4MHU1MGs3ZW5GcEpJTzY2SFpFZFh0eU1OZ3A2QVVZ?=
 =?utf-8?B?SEdvYXliTmxLY0Q4eGo3U0U1WXVxVmQvVFV3UVBIVGlTSzBtTlJ6OHlyNW1v?=
 =?utf-8?B?d3RJeXN2WDc2NHpPVXdlYk1LNktPMVVxbTA4MXh0L1pEckptczF3YVNCZUdS?=
 =?utf-8?B?S25wUWZSdS9YczByL0RwQXlBMml4TEd0NGRXL1lXS0pXdVJ1SDZCN3NYU1RN?=
 =?utf-8?B?VUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c5428695-f4c2-4102-66d3-08db5227f125
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2023 13:59:30.9100 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: o3QmJTPmfBNOLLn5h/FKNqce1pWR3NzsbkwAmKxeT4IUj8O662/XWUMgxtL2Ema6jLhpaPOzR3df0doMSpMu2w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6755
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/mtl: Add MTL performance
 tuning changes
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
Cc: Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Radhakrishna Sripada (2023-05-10 19:35:52)
>MTL reuses the tuning parameters for DG2. Extend the dg2
>performance tuning parameters to MTL.
>
>Bspec: 68331
>Cc: Matt Roper <matthew.d.roper@intel.com>
>Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

Commit cebc13de7e70 ("drm/i915: Whitelist COMMON_SLICE_CHICKEN3 for UMD
access") already whitelisted one of the registers supposed to be tweaked by=
 UMD
and I did check that all remaining registers from the performance tuning li=
st
are now covered by this patch.

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/gt/intel_workarounds.c | 6 ++++--
> 1 file changed, 4 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm=
/i915/gt/intel_workarounds.c
>index 786349e95487..b222a3d367c9 100644
>--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>@@ -817,6 +817,8 @@ static void mtl_ctx_workarounds_init(struct intel_engi=
ne_cs *engine,
> {
>         struct drm_i915_private *i915 =3D engine->i915;
>=20
>+        dg2_ctx_gt_tuning_init(engine, wal);
>+
>         if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>             IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
>                 /* Wa_14014947963 */
>@@ -1754,7 +1756,7 @@ static void gt_tuning_settings(struct intel_gt *gt, =
struct i915_wa_list *wal)
>                 wa_mcr_masked_en(wal, XEHPC_LNCFMISCCFGREG0, XEHPC_HOSTCA=
CHEEN);
>         }
>=20
>-        if (IS_DG2(gt->i915)) {
>+        if (IS_DG2(gt->i915) || IS_METEORLAKE(gt->i915)) {
>                 wa_mcr_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_O=
PT_DIS);
>                 wa_mcr_write_or(wal, XEHP_SQCM, EN_32B_ACCESS);
>         }
>@@ -2944,7 +2946,7 @@ static void
> add_render_compute_tuning_settings(struct drm_i915_private *i915,
>                                    struct i915_wa_list *wal)
> {
>-        if (IS_DG2(i915))
>+        if (IS_DG2(i915) || IS_METEORLAKE(i915))
>                 wa_mcr_write_clr_set(wal, RT_CTRL, STACKID_CTRL, STACKID_=
CTRL_512);
>=20
>         /*
>--=20
>2.34.1
>
