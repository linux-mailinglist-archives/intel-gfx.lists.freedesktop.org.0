Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A26C967A340
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 20:40:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CC1510E0EB;
	Tue, 24 Jan 2023 19:40:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96D4D10E0EB
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 19:40:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674589209; x=1706125209;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=fQalz1PfSe945Cew8b/Rk/0CinomtcoRhgovlBuaFIc=;
 b=R/MPbLJkTtekPcb95NVr9uUak++NCt30XT6odWJ1ZUn8iBw4Mt9Pcpwj
 fKNXdG3bTeEgj4ZZHs6nYQHMffRLBpPRKxrj5+6956Lc7F/PfFznXuGTB
 7wiXiYW3qqfuQHFoEkccy1J0rF5LQBuo9o5c91dnyBcaZl08nRxxf/0FA
 TjmweVJ+AgBIC9NJAuDoLtb/qE3xORCB6KsKZYK/5dpcRYvLBg9fDMov7
 JCikoE5BqdNZTVefWFV8XjD8wLY4NOyxGuwoPtQKaUkaauH/soChvLin/
 OP6FDb3/Hx+j9lTN3WcymNOIbJs5WWgtWuEahFD2FVfDcG8PCTAfGzmII A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="306741122"
X-IronPort-AV: E=Sophos;i="5.97,243,1669104000"; d="scan'208";a="306741122"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 11:40:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="694464908"
X-IronPort-AV: E=Sophos;i="5.97,243,1669104000"; d="scan'208";a="694464908"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 24 Jan 2023 11:40:08 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 24 Jan 2023 11:40:07 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 24 Jan 2023 11:40:07 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 24 Jan 2023 11:40:07 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 24 Jan 2023 11:40:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZTxAbx4sAzOPKM+/c37yJVJQkZXVkV9qddx/Kv/bZT8mejcC4yvIctnX2IQtDF65c8oXBlc1BMlt0U+giUmneSih0kDTX4Sydiyivx8Ndn0E7jlXNnL36VngoH5d+y2S8RuU90W97fRn7Y4EOSxJ6Yd4j1HfO+Boea71dITcfOqby8Vs6/EpH06pbj7zdbTfHgsiFFHVGYK/TR1g/aAymUIg+KX8hwKWxGNX93cl9PkhYI/hX/DjLvtUqMIASSAjBYdKhRzURxCKLX4QMmCfmcUi+eJjng37iqOsi8O0q7jeoUekFyL0d5nRXlgcwQ88DKgIls6dj8F9zjCk3q6xkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=obU52R9+CTgGtN0qAqYC/QeQQNbl6T2di8SYDccugQk=;
 b=Vvr1fEPg7SWvH4aXBuCHCRuQ82sVVss9PjgLVh04h2Mj9h9AjDNHG+aL0RqbcrUQpNbaR8bVLdvcxf22+B6gxkvPIAFkozp787YDNUNEV14SHeUmRxIpnPupZ7SaV9X0ATSctJhxoAZurVT1h3YX8WEa3ybwzaslwUj+JxFH4FWRPhnj4txsLi6llGf0mWonJ6RcjC/BwrZYv9qr1MXMBr/Mk28zZe3lTQR3YCekrSJd132ddglkXRZ7uWuXgJr79OB0WbV7ua7Puq5i2cGnQGfJo6SLgOjaYqZ4XDV+k7L1fQdO1SGrDggUI1iZkFCcIvCyM/naZMA+MsppjfNXmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CH0PR11MB5708.namprd11.prod.outlook.com (2603:10b6:610:111::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33; Tue, 24 Jan
 2023 19:40:03 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930%4]) with mapi id 15.20.6002.033; Tue, 24 Jan 2023
 19:40:03 +0000
Date: Tue, 24 Jan 2023 14:39:59 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, <mchehab@kernel.org>
Message-ID: <Y9A0Dz4TtLB4a4Wn@intel.com>
References: <20230121190853.18722-1-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230121190853.18722-1-gustavo.sousa@intel.com>
X-ClientProxiedBy: SJ0PR13CA0076.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::21) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CH0PR11MB5708:EE_
X-MS-Office365-Filtering-Correlation-Id: 131ea7b8-2178-43ad-0abd-08dafe42c9cf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Mv3ngKf1QGpWaOZpmDbzDrDl38HV6+Z9e9hpOBsbuIW23zT5hPKG8v5Iq/E68xxYm4GkYuORIjppPkw4fClR2DhUpicXcQki5za7BSBnGlW5a4C7fK5FSllkhVU56c6Sa5r96QKe1RaucAF1rsi8WSE/sM/so82QqVlz82YGizEET4VObrURgorJSW3iYOQ/QqBhdv6QVOvC6iRVUPnWA8juYeFoVFhKeow4ERTZp+M1adiIlKkxiaJcQph2t6vuHF9Hnp2ywPZQnE4OPrPLe1Yl91GcO2wtu4uga+eE1VTMhHBppPeakR3EoGoqFzi+mMla5WR49crjlwsTB/Oq0csl2oqjY46IuzbimiJUDxA7It0BAokrXl56sog+TfaQiXz8DjzrJD4+f8Bu8iH17kRJR5t6CubGly6oBBTFtzEw2eiF/XvjcSm9rDPaukUYoQxuo7PWnrg/21hwe6M6CNAYy2sRyS1e9FM9kpShiPseMgx73Rbwwk+AD6nhsDLnsiR6NAsKygO+BAVxgzMPhfPrMd/XxbX1Jjg4oY3aJCfdJWcgUjHK1D08pNPxzXNWUR7tMK8aknuieoQRU39b61/BQUeZK9M0+4/Diq9XxdOaCOBBDpuvAou2vj87blJLFPLcyOYRukhhprXziLWEsw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(376002)(39860400002)(396003)(346002)(366004)(451199018)(83380400001)(186003)(6512007)(2616005)(44832011)(8936002)(2906002)(66476007)(5660300002)(478600001)(66556008)(316002)(8676002)(6486002)(4326008)(66946007)(26005)(36756003)(6666004)(86362001)(6506007)(41300700001)(82960400001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?g6xJcUzZDT1VwmYohzfRydio49zzt55ag5KggDB2TLSZnI47E16BLAztvagO?=
 =?us-ascii?Q?A7TnSqg/CR6Lbhieo/N6lgi5GMGeDUXpES95mdWKe5pZlaTsJQSuMO0dwi72?=
 =?us-ascii?Q?y4O4A+zeWxF74zU9vQ4/L/l6HDeUH6br6gHn4gs1ye02xpa6nnuJczfpN3VE?=
 =?us-ascii?Q?MwuGTn0iQgv4GPUkdcsiFLga5wseaJ6oPMsVt/pXHyLlOcXnnE9gNEIe3flw?=
 =?us-ascii?Q?oclj0ibyW8sPeGvmzUYf4qbORyrZm57QHU3WUQdaFlK42Ok2h5Tc3T/XLpHc?=
 =?us-ascii?Q?dnj3Mp1V0ouIgo7ZesFeVocTDqlJDNld9cJRMJecolUIGyAfPvrfywQBkdBU?=
 =?us-ascii?Q?W6d0sq6x2OD54xEGzW/mk992Xg+jSyv5jqf1ne36MVmEzB9XUndoOXpDyPMA?=
 =?us-ascii?Q?N82/ANB1JKsLt0vCGJa7ObxlVYANQnMSMWJv/6YOLxu7aZ+c73iL/UaFwcSs?=
 =?us-ascii?Q?qYz9yJPqsYfP1ZHHZ+oNDSjPF9ohZofiCGY0YpfJJyOW1sP87k10EazMDTNm?=
 =?us-ascii?Q?+Yqt3LEcjT7QtP2POCMjs4MqQAnjoVTQefx9xcpP+iLiNxpcQV5Jbw0P6wxS?=
 =?us-ascii?Q?kyhMi4xtJUjZ5kEO1dkIEznTHaUyYKsdDhjwZGRv82i0CyQpA4HXetj8y/X4?=
 =?us-ascii?Q?j8FCO4crBJ3OyLUBkgxnG+xjDeeb1QXvkhIKaaW6oVggUhFpY6YY8Ok81i52?=
 =?us-ascii?Q?cV32BLR5h31jqoi1Y4FtIMPdw3EPD2gdQwAtbcMBgM2y+G/TzNntWSDE8tvi?=
 =?us-ascii?Q?6P0A4p8fWJKmZTu3bF6LCDaz8hbS5L8u/aq6Z+FNM9hb22yM3G0Z58h6cPOi?=
 =?us-ascii?Q?GmnkpJKbCG4u4la6FwJ58sxdjNwHDOYKr3DluFeYtuKBgCrbKsYQMAyrGX5E?=
 =?us-ascii?Q?1nn4CYbOZFVgPeMZQpJJ9ilX1bR22f7iCbFfRbLBWOTV9EeItaNDVeB3NKha?=
 =?us-ascii?Q?UttRFwC8i2dyX6uKn19cTpdBODfbXov2t+tNW6HFIoAQRkGP/9c0g6N6Ip7f?=
 =?us-ascii?Q?/+sjEgYYI1w2IsIGt3bUMy3tzDW0a8Le84VYxtbjbwyeAPYATljjM7D+7thC?=
 =?us-ascii?Q?d0vKlqsHbSQlu7yzUd+IvexovkTMtwV/SagckRtMoC4iUM59RGXprbmKRiNV?=
 =?us-ascii?Q?dz3WBHhye+W5IfZgj2mghhAe1S7eFL8frdoqMtzT6VMRvkl+FyQbd12vMETO?=
 =?us-ascii?Q?G4UOxxGuPzAIwG9mWNA5+7HW0h2wdoN8BXOf5c0IOSdzYdeH0iEsD3zIhwUz?=
 =?us-ascii?Q?8m61Yw05xDS0HPiT7kltgO3TilBpHCT2U8XyQMt687xMyxm0irWNqfxZs6g4?=
 =?us-ascii?Q?4NnxvAQ7VNmfRQRdy4lHRhESNhPqB9JvYdEmfI7dBoAoV+K1W5B6yraotwmH?=
 =?us-ascii?Q?wfkDQ+bkY/5wH/RPwBfhWjQoZzEkNQGGP7jkWl0iUJxP0dCn7kLMRkwzbBxU?=
 =?us-ascii?Q?vG5W2NhYZ9kmQJwz/czmkoZ1ZIrn/ol+TXluZR7JrJKOuSV+lQDGwkPYgfOC?=
 =?us-ascii?Q?xjddinopnfCOaGaesP4ar1a/3d5HjpvFERzz/8wrjb3D/Ix3RMpbGBje1bRB?=
 =?us-ascii?Q?7VnJN3CCEQrVfr0m1xZQHH3p20mMKZ4FpQ3xnbOzNyJLvfx69p1w2C/Hds8I?=
 =?us-ascii?Q?+A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 131ea7b8-2178-43ad-0abd-08dafe42c9cf
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2023 19:40:03.6400 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fBYplmACxmX+qpa8jRZyvJ1fxLZD9bR1W9/xkA13Exnn5KN9ZtaHDewHrUzQxwZ5pxpg4KDcBlA2/qlBWWLugQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5708
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Fix sphinx warnings for
 workarounds documentation
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

On Sat, Jan 21, 2023 at 04:08:53PM -0300, Gustavo Sousa wrote:
> The wildchar ("*") used in the function name patterns in the
> documentation was taken as a start of an "emphasis" inline markup. Wrap
> the patterns with the inline literal markup and, for consistency, do the
> same for the other function names mentioned.
> 
> Fixes: 0c3064cf33fb ("drm/i915/doc: Document where to implement register workarounds")
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Cc: Mauro Carvalho Chehab <mchehab@kernel.org>

just in case he sees some better alternative for the escaping the '*'

My fear is that this ``*_fn_name()`` could create invalid links in the doc...


> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 918a271447e2..e849035d8dc5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -30,8 +30,8 @@
>   *   creation to have a "primed golden context", i.e. a context image that
>   *   already contains the changes needed to all the registers.
>   *
> - *   Context workarounds should be implemented in the *_ctx_workarounds_init()
> - *   variants respective to the targeted platforms.
> + *   Context workarounds should be implemented in the
> + *   ``*_ctx_workarounds_init()`` variants respective to the targeted platforms.
>   *
>   * - Engine workarounds: the list of these WAs is applied whenever the specific
>   *   engine is reset. It's also possible that a set of engine classes share a
> @@ -46,16 +46,16 @@
>   *   ``drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c`` for reference.
>   *
>   *   Workarounds for registers specific to RCS and CCS should be implemented in
> - *   rcs_engine_wa_init() and ccs_engine_wa_init(), respectively; those for
> - *   registers belonging to BCS, VCS or VECS should be implemented in
> - *   xcs_engine_wa_init(). Workarounds for registers not belonging to a specific
> - *   engine's MMIO range but that are part of of the common RCS/CCS reset domain
> - *   should be implemented in general_render_compute_wa_init().
> + *   ``rcs_engine_wa_init()`` and ``ccs_engine_wa_init()``, respectively; those
> + *   for registers belonging to BCS, VCS or VECS should be implemented in
> + *   ``xcs_engine_wa_init()``. Workarounds for registers not belonging to a
> + *   specific engine's MMIO range but that are part of of the common RCS/CCS
> + *   reset domain should be implemented in ``general_render_compute_wa_init()``.
>   *
>   * - GT workarounds: the list of these WAs is applied whenever these registers
>   *   revert to their default values: on GPU reset, suspend/resume [1]_, etc.
>   *
> - *   GT workarounds should be implemented in the *_gt_workarounds_init()
> + *   GT workarounds should be implemented in the ``*_gt_workarounds_init()``
>   *   variants respective to the targeted platforms.
>   *
>   * - Register whitelist: some workarounds need to be implemented in userspace,
> @@ -64,8 +64,8 @@
>   *   this is just a special case of a MMIO workaround (as we write the list of
>   *   these to/be-whitelisted registers to some special HW registers).
>   *
> - *   Register whitelisting should be done in the *_whitelist_build() variants
> - *   respective to the targeted platforms.
> + *   Register whitelisting should be done in the ``*_whitelist_build()``
> + *   variants respective to the targeted platforms.
>   *
>   * - Workaround batchbuffers: buffers that get executed automatically by the
>   *   hardware on every HW context restore. These buffers are created and
> -- 
> 2.39.0
> 
