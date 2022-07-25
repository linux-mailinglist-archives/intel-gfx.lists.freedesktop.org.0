Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B8A558081A
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jul 2022 01:23:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B00310EC2D;
	Mon, 25 Jul 2022 23:23:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FD0E10EC2D
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jul 2022 23:23:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658791411; x=1690327411;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=wrG03YjzdgBlMshOKgSALTeSF/XsCJUGeIpW8Z/VGMo=;
 b=aApK73oYoAoM5ukYsJ9FRgAbBMWmwOkvBWbRtQONX+2orTJ1ur+q1BzD
 8dno8DSRxCgFCTR91AhzJsxOs5Xy73SoxSfAojru9FWbd7OejW//91zUK
 K6522goqonfaqO/H7Cbc1KaWk/Eg5OwNgRfn9VvEBMUXA9TOQSBcKNHMX
 pt3JWsXLSgXMs3yv01Mjbo4xwpxuAxjrjuUIx/rTb6kryyycozvVj9qSN
 ONKXozCgJ49i0Ipw1JKSWjUPCbdVMFjOn25Xwo74raoXKH1lRxAwmHpql
 JeRe6wyWOsaun6gjmNKHjYU4T43q1EXCkWBFTd9Pk9MOsuXE5sU6MF6yo g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10419"; a="274682881"
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="274682881"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2022 16:23:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="845669144"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 25 Jul 2022 16:23:30 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 25 Jul 2022 16:23:29 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 25 Jul 2022 16:23:29 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Mon, 25 Jul 2022 16:23:29 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Mon, 25 Jul 2022 16:23:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jVtSgeLiVQ9JWjxmHh6JEN6p5JJ4q50og6ZDiLRqvIUcUuT1XU/ua2EQhzS4qfLUKASkgQiTwMiV+fEqpb0l2B9uBsR51ConUJM3E+egZ0qtrmdrTKrQDFhQ6lblL2yUXpHQVu3xGQivFRsVRR39FHRX3v2rpHpCbGXPvZGVDXufCa6PPp2ckSwMiOPCsLc8dtxbTwnlb+M3GfSBW2Pd152Mghfu9YOfhvZsL4RpzsSBVue57i1r2cm6OndOJW3KzC8vgVlTDQf17FPQYK5QWAH5dmc/0htfeuiX1Syxiy7NvMXooJtiqabxfwNFEB9L6tTYNkTqC4BBotgSoDGWgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XWDPcVLaD71DABIbEyiNAFMVSEmm6YlVaxuFask2aRQ=;
 b=HVQb/DrRRkCgzlGmyrvIW0Ge64smlxgAaRy5f2wQEuUpcrP61pztndEsKF7MzGGqilA/6DdCZgKS7h6qle9g7jZHXtrh4x+VGRQlVO5Iro9xZsF0Vcbnx0hpUPXxLY3Y4h2Yq512o57zoIlNT/Euz/8Y7kc6xNN/7rWisxpMGx8UGMMsEV7acdSf3cRgnFZ3UW0mJjthT+JivzJ6N0gpOUN8uvNPLlP54jodUy50LTFnlkkwLdAMy2XiloYC/2Y3UEOoNr8kU1ueom5lr3k4HdSfnOjoV87mInd6oJ+3GOhyACl6F7Jc9V59+Qk23CcSJCv+I9GWTSS9g2ilYgUkjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by CO1PR11MB4993.namprd11.prod.outlook.com (2603:10b6:303:6c::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.18; Mon, 25 Jul
 2022 23:23:27 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::4fe:1ef3:4c6c:4b68]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::4fe:1ef3:4c6c:4b68%10]) with mapi id 15.20.5458.020; Mon, 25 Jul 2022
 23:23:27 +0000
Date: Mon, 25 Jul 2022 16:23:24 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Message-ID: <Yt8l7CXf5y8lbzsa@mdroper-desk1.amr.corp.intel.com>
References: <20220630083508.223348-1-lionel.g.landwerlin@intel.com>
 <6bbebede-8e13-6e5c-75df-0e19c0bd51f0@intel.com>
 <ef543323-4341-77d8-d0b1-059331cf3ca4@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ef543323-4341-77d8-d0b1-059331cf3ca4@intel.com>
X-ClientProxiedBy: BYAPR07CA0080.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::21) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c081bccb-da1d-43ad-56ce-08da6e94ad97
X-MS-TrafficTypeDiagnostic: CO1PR11MB4993:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +T74iYiULNeF0CxkZYaQ4gqYrzwZOJZIwlimkcNCGQZveprZlit1gh+wbpK/eSzcfgFYaHiroAHcaGvWnvE7m5Qt6jYjxJN5AexBM7CrNYYIk5L3btyB+reCTDIUJUnbgO5p1fpuNP+JotuF37etGqGgQV1/bgjQz7sJK6H4Jvp5SoBiuL/06SetIASECw4U8vdtIiU71Q0tZelKywh6RwjQUBFXsK47hL0q0Y2zh6peBdSL3FsZdDozUiUmdHNo2m1npsRe2GTDVZHo7UMgJcO3oydCKOP8mSYqCMnF5v+QFpWo5+DhiCFJaSPPixpImdQrEi7+W62WnzYZe0zF5rTdqVpqIfBc/5i4B5dwlGDu34qiJgf4BVN35vrmHMqCEh926CqX7F0EoKnnRqF/fZ8hLEaQERps0h29t+mkGRwUp0QDRmX9gUprCTguDk4h3ttUb214lkN2kFj+5nhrH7ZVnxIRX2qXhCnxZ3krqvt4/KXITn2dSfHmpFnfpUARL7/eT4UOTxTxnSiITXufa2UmZbcQ5Js0n3ng+CJOLXCLrMaXwiC5NX0cdHYpVqme7thRn9r0YcOCVCN3lMrTQN0AjhH/H+O43MiNW3eYtCLJoAevsyWenAATM4S8Cze7Ss9IhrA4va/6nqbgwVEvq1Gi/tm500gUncTDAbEmYz6HLvN1roQprVo7UqKALbmp
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(366004)(39860400002)(346002)(136003)(376002)(86362001)(6636002)(38100700002)(5660300002)(2906002)(8936002)(6862004)(82960400001)(66946007)(66556008)(8676002)(4326008)(478600001)(66476007)(53546011)(26005)(6512007)(186003)(316002)(966005)(6486002)(6506007)(41300700001)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?gkL0i9eo8lbj/iBdj7kQXLBWqI4X2mzMnjgs/YygfhmIx5qkOglL03lY0N?=
 =?iso-8859-1?Q?5olqs1tRISp2ViAvWo2OmNwxMvAMuYVWuiexAbv4eIpE+fn8ynFhqSa0Rp?=
 =?iso-8859-1?Q?96WPGQqZugNNb/yD+dBgTMlQA9lRCRei+X61LzUobtgUgGlh/PLmzsJk/h?=
 =?iso-8859-1?Q?TxJZHnzP2+nU9uRYqtbXILtcmXTNMCi/qtdvM3Sanz/4rKh9E5XlvrzNqQ?=
 =?iso-8859-1?Q?uUjgYOeHTbgkJQG5Be6xjM8FF+u5+bG2Yt5CUN0ld/WSwbMXrHUo/VeNOG?=
 =?iso-8859-1?Q?wtZmcjeg+Z8B0WuSbNDiDmM7Ljh/iKTKVdcyytdmeXmkuhPziP6PAnHPfY?=
 =?iso-8859-1?Q?mZx/pq1YbIpKl5Ue6CbBf2Xn3wWo3YR04CAtIqkG/rbfmJBSxrB/a8oET7?=
 =?iso-8859-1?Q?F8r252W4hVPe9+eKyl+TSRhx8Ys92goFO+F/Aa75i7gyhTMgANOq9U13Kt?=
 =?iso-8859-1?Q?xFTqIf9/hcUNFX6wH8NmsMStdqTr5CkJZGihLErrtX0FKDis4bIv987DdG?=
 =?iso-8859-1?Q?xJkzdRcWyAoIjyH99sNF+OEamxpbhobdfVpFZY93t0aJew4FQbZsCpHfLY?=
 =?iso-8859-1?Q?YDalLS4BAGyunKJkZ5WOTf8atHbVHWM4uVVAECqLW5Js8dPaKM7+jZo4RT?=
 =?iso-8859-1?Q?xem/vxhEoiCaqIC2AWUAkp+0fPuRTUKpevHexQxs9HjUmee8JcWwbVRR7I?=
 =?iso-8859-1?Q?NzKkMbtzlFZh2bCWzkeyF5MCp1ltDFL25cbX/YPf8V9A1M5Mzu7rRhDXV9?=
 =?iso-8859-1?Q?lOI3dVL3d1fVy0i8Lv00RQWgpNe2uR9zjsHwg6hpJX/QTfzFGAJ/IhglU2?=
 =?iso-8859-1?Q?FQU7eWVpJC8jDTML/0+XUtpQS++5VsHQn5qBTA2sTtis5VKL4niklEnaUp?=
 =?iso-8859-1?Q?sONXCYv6VADUieAgKQNsPlU3zODQVfkBghRjXBL5HkPHPjLIVu4IWhv/3b?=
 =?iso-8859-1?Q?kV7ucAdztWxCLh/pHhG/6E1MWSDleTFq2oLsV9rRtl/wsquJ5mMVGJjf0c?=
 =?iso-8859-1?Q?KTa2HaWKL/gYRPRZzWBl2r69pQ8DXiGGycWti80d4ccRogwgPB0PlFBKYm?=
 =?iso-8859-1?Q?izjcjeScgS8smXa890AGII7/EJT0t4ERmFrV43dhCAt6TP+KFdWqM2Uxzf?=
 =?iso-8859-1?Q?SNBJhS+pe18Rn0GYPqT1/cgq4vRNEtePJqwfyGjw0sMR6JmpRP5znmXnej?=
 =?iso-8859-1?Q?rqfBYGBtt9q8/JHNnBCZlQuiciwwFVlcHNG7Df5jqfNMFZ4xZcN8h0gwkC?=
 =?iso-8859-1?Q?L9e3yWYj5yfx3DT8LKZhqmmFdZNHG6lBcgvc/CIkACa6oVzt8bnXgrzMaf?=
 =?iso-8859-1?Q?XcFNs2wToFqz08n3Onz2bx3cUb9sN8+fMeyHal7qNHoxKf5hnRGGmAH/jy?=
 =?iso-8859-1?Q?Xgte3fzmzKxdvLVIoJrGJlMBBFyxAwhV9GS4VSDEtSfZHGsNnk82V9AUZ1?=
 =?iso-8859-1?Q?naiexeYowqThbqMv5jvtjCTkcC/oK0bdLmigx6/whPGtCT3ITk2z9nHSBv?=
 =?iso-8859-1?Q?jIvv0JrF1+zemxn9ApBODdIGYKf3mZFGC4qagpvrmYxcENOt1f54UByFpW?=
 =?iso-8859-1?Q?+U9IsNVnWIBIYTF2g7xzGLaj8V5yxEIjgKpoGpBNIqnuqpQsrePQHAxJaB?=
 =?iso-8859-1?Q?2GpjxmkgtHoQ6GhzDZ9MAkQy/kFeOHC3vKU3uXeLU9dje4MtO5nClgdA?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c081bccb-da1d-43ad-56ce-08da6e94ad97
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jul 2022 23:23:27.4188 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aPT2ma61dhEjqDTrAMBi8oxra2FxwGJvHCRMCBWRLI9wE4+aMum2Nx3tfpAKVTWtYsFqXxpQipLwqxKn69GV/L6YlywQ9MZicqoIHpsLuwM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4993
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/dg2: Add performance workaround
 18019455067
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

I think you may have missed Lucas' reply to your v3:

https://lists.freedesktop.org/archives/intel-gfx/2022-June/300712.html

Also, here's the reply to v2 that he's referring to:

https://lists.freedesktop.org/archives/intel-gfx/2022-June/300646.html

I.e., he wants this to be called from a new 'tuning_init' function that
is itself called from general_render_compute_wa_init, since we expect
more of these things to show up in the future so it makes sense to have
a dedicated place for them.


Matt

On Wed, Jul 20, 2022 at 11:19:18AM +0300, Lionel Landwerlin wrote:
> Ping?
> 
> On 11/07/2022 14:30, Lionel Landwerlin wrote:
> > Ping?
> > 
> > On 30/06/2022 11:35, Lionel Landwerlin wrote:
> > > The recommended number of stackIDs for Ray Tracing subsystem is 512
> > > rather than 2048 (default HW programming).
> > > 
> > > v2: Move the programming to dg2_ctx_gt_tuning_init() (Lucas)
> > > 
> > > v3: Move programming to general_render_compute_wa_init() (Matt)
> > > 
> > > Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> > > ---
> > >   drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 4 ++++
> > >   drivers/gpu/drm/i915/gt/intel_workarounds.c | 9 +++++++++
> > >   2 files changed, 13 insertions(+)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > > b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > > index 07ef111947b8c..12fc87b957425 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > > +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > > @@ -1112,6 +1112,10 @@
> > >   #define   GEN12_PUSH_CONST_DEREF_HOLD_DIS    REG_BIT(8)
> > >     #define RT_CTRL                    _MMIO(0xe530)
> > > +#define   RT_CTRL_NUMBER_OF_STACKIDS_MASK    REG_GENMASK(6, 5)
> > > +#define   NUMBER_OF_STACKIDS_512        2
> > > +#define   NUMBER_OF_STACKIDS_1024        1
> > > +#define   NUMBER_OF_STACKIDS_2048        0
> > >   #define   DIS_NULL_QUERY            REG_BIT(10)
> > >     #define EU_PERF_CNTL1                _MMIO(0xe558)
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > index 3213c593a55f4..ea674e456cd76 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > @@ -2737,6 +2737,15 @@ general_render_compute_wa_init(struct
> > > intel_engine_cs *engine, struct i915_wa_li
> > >           wa_write_or(wal, VDBX_MOD_CTRL, FORCE_MISS_FTLB);
> > >           wa_write_or(wal, VEBX_MOD_CTRL, FORCE_MISS_FTLB);
> > >       }
> > > +
> > > +    if (IS_DG2(i915)) {
> > > +        /* Performance tuning for Ray-tracing */
> > > +        wa_write_clr_set(wal,
> > > +                 RT_CTRL,
> > > +                 RT_CTRL_NUMBER_OF_STACKIDS_MASK,
> > > + REG_FIELD_PREP(RT_CTRL_NUMBER_OF_STACKIDS_MASK,
> > > +                        NUMBER_OF_STACKIDS_512));
> > > +    }
> > >   }
> > >     static void
> > 
> > 
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
