Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1EBCCBF882
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 20:24:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BEAA10E4F1;
	Mon, 15 Dec 2025 19:24:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nt5Z/A4J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2130610E500;
 Mon, 15 Dec 2025 19:24:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765826665; x=1797362665;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=aseEU40ttm9ztctCVuKYbBR4lUFi8yB3O9G/w1tnhPo=;
 b=Nt5Z/A4JR5+So2kY7JKQqvQ7JoTKekF7L9WblXFj551KFa6rdOBWrMmL
 C0uDu7hs5egZC1gBsEwrEHM9Gy9eVtL4fAeD1rcgNF2hJ2z8jzv8bsMkv
 hgayyqZvl7Yj4YwJOvSO62peTI3cKOEjFvASnLd34LvL3DTrnHeTPUvlt
 L9+RarmD6uDeWxihMC3RYx2MMkigZTZ/hwIMVoCQSE6FrIRfbNbgMZ6jt
 jR8xHD6PsUVGMGdIUYb0Q5lPLAE6CstlcqoOlQa1WwmBuagw4x2dAMq/C
 Zn1N/fE1pJVD9PLFCBuKekP04qYptFzgDznitYHVcUkwJ6EM9Sch+8vk8 A==;
X-CSE-ConnectionGUID: +A7BAwuWTGaSWi7pv9CGSg==
X-CSE-MsgGUID: +o08LB7sTB2RTVz+LSVm+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="66726635"
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="66726635"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 11:24:24 -0800
X-CSE-ConnectionGUID: tuL0K/L+Qae/tHt9UyTPMg==
X-CSE-MsgGUID: 6/gVcPi5RMalToDlmubn0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="202919575"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 11:24:24 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 11:24:23 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 15 Dec 2025 11:24:23 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.54) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 11:24:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pSduc+XcCobhURrJqQv05eI2QXko08aPKd0i3sizXASz8B2S/Jx+50b4no72B6Fx6lP1e+JlZpwKXJ4e88c29ml8azVIqyc5gtYnOP0nCZwmapQMhmXANk1FCnNuQ54X54JPEFLPWAQulHxdusxi1P9lKHbOt37SFliNupIQ5YhJxJ+IQiWWv9ZzYyl10Xnfq7pF1aIB2VF7jjnk9QiAhkuW5+iFwT3K4Q0HS1yV17mGmbgCNWC1R81D1yR6/qTXACtHoKn2rpiWQ59W3mlBStQbPep3AdV8ACErbA4e/JALdp3/ebdJQWmJCxINTKUkKhmFjKmryx0/0KBAiKZN8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3ZM/RV/3Xd/IVsJeKGSQ4MdkuzCIvMmdzeJ2sZjJCpw=;
 b=QNsh8Zy5vOySZpfmQfA5Vzca27eMGuR6lfxwNRnht2TKr0Eyfcptq4LBxIwKCunEc5/kxsTQCTa5IMl4EAo+2p8C2qXmMzSBp2zdXT94h4vBZq56aQ8OxhZSN0z+hsdrTIcxIMsDwdPnCF75juO4GbhbtCQZuZcccAnsS4ZuHqmkIPFuINbU1bx35DGZxYaN8X6H5Kl0vk27PpimTCx4iIaI2+TGONPshHILtcGjUHAnbjByzYCGV+C77BwK9rkvHykmUvPFTJUMs6Ggzpd78LHGo2KtWnwIVYIDKjEn3+on6qTBAUWZ5h0Sdl2rkgUSoMa+vpEl4a5Hy1VUYG6E0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH0PR11MB5112.namprd11.prod.outlook.com (2603:10b6:510:3b::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Mon, 15 Dec
 2025 19:24:20 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9412.011; Mon, 15 Dec 2025
 19:24:20 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH 12/16] drm/i915/dp: Account with pipe joiner max compressed
 BPP limit for DP-MST and eDP
Date: Mon, 15 Dec 2025 21:23:52 +0200
Message-ID: <20251215192357.172201-13-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251215192357.172201-1-imre.deak@intel.com>
References: <20251215192357.172201-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P265CA0093.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2bc::18) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH0PR11MB5112:EE_
X-MS-Office365-Filtering-Correlation-Id: 1dc59f58-d549-41f2-3271-08de3c0f8bae
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|10070799003|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Ib0ugxnSNVIEa8HDyIKgT3r3bVJVtjByLO441Q9QZz7i4QWyY2sJEpPA39eY?=
 =?us-ascii?Q?btRXLNCPJ6vXPmaznR3di2KP7A5KTUebPb1j82ToISqLBIWmsBN9+R1Rmm7l?=
 =?us-ascii?Q?pLcFRmMsbRwTJ1rsA6GF/tzNRowYEMjAozFATuExxby3z+yXLRPd/AC52Xgs?=
 =?us-ascii?Q?srtWAOQfDKIIVIgdn0zFq1RCxHRijleLV4wcIerHLCEUN9CH/z61vZIeRLKS?=
 =?us-ascii?Q?j2UJz5R2K5KGYNQ/OnGoBNABYV7j8VDu9LHq+GPuFUmgImjpe27fh3fkxVbd?=
 =?us-ascii?Q?p6iSKEsUwhm7+k1qWHhXGlkzIZQsW+m7DGTUwOBxnAyfVPUG6mPCNIIzV0jx?=
 =?us-ascii?Q?gBCQ0SjdE4yzuiShOI85gg1GBblnmraBVWgH8nqTYIQxcrvSaWPES4gmgBpH?=
 =?us-ascii?Q?ku+SYddVWDRnJTT5qipxdTysb3BeRx/VkuTM5ekkBtQf99lAzCAtnwANK2Tx?=
 =?us-ascii?Q?pKQPsbpoexv+L2QTxZRgEwyvlHNV6L27sVTKU+kL2d9/H2+QRa54p31E/teZ?=
 =?us-ascii?Q?UNeYA46lkzd6m29uZ/4xMdd6EMQ/GuCmUDYXHiausgOSmf384427Vjc0ohFh?=
 =?us-ascii?Q?XIvGupYIg6PtUbGxxqfKIbJhJYOBvk+zOHQZhkL1U6B9pasiHa+hKTB/y8/u?=
 =?us-ascii?Q?gfF9wWPznHY5fgZD4naasE34kIP9dwI4Q7Xl2r65bmRzXqXDtLxnFRRGewTK?=
 =?us-ascii?Q?TVbC9IWNhrigW7UkCqyOB0fPS5bnIrRO97QF/mSQoA68+R8UZkjiOuhKe7Io?=
 =?us-ascii?Q?bfhXInMgBywhQ4w0Sm7Q/5C+Xl+XmcLSA5Z6jtnJnWpQkVe+bcubf8/o9nSh?=
 =?us-ascii?Q?o9xK37LFNkdIMC4pPToB5vp0e2Dt+9Ijs8u85fNr4plfZ0b4WPNZw9/GZXwD?=
 =?us-ascii?Q?z5r9O0EpgDjHs3832uCqFdqXrR0KliRr6FAbZJ4+TboPNyVEkQZEjZu8RucA?=
 =?us-ascii?Q?ecNVkcv/VdE+6f+aR0voniRmHgo5uMX0VTx2EpoeUYtUs3cyLvHnVFTgFS9V?=
 =?us-ascii?Q?3mtGHgTug4M7ry1ENBAdqVlMRBfYmPEJ/CGdNdvns+9nf+Sor0u8vCvjOgOE?=
 =?us-ascii?Q?Hx2E01C7L3ZtaENuDu+1jAydRPAk2oSoubvo0mBL9Rt71+qobGDPLusVTg+J?=
 =?us-ascii?Q?ePwKD3RJYlhiFEXQ4H66uGE6GLz+kExrUFGfoslnWD4y3JtbeML4kBWer4nX?=
 =?us-ascii?Q?tWzsQfAy4gjY3iUeaSPbEbImKOAH7ZWWgVlCmW7Ngw+NWLtJ/E9pmnjC3JUY?=
 =?us-ascii?Q?qOfpLpLR4KHinWu/l1Bymk6p2xOSJbub9WRIb0MvrMtmv/SNnmKJzYN9Sb8e?=
 =?us-ascii?Q?Z/DEclu8n2TZoRB1qa5CR2ljw4ITdftmZpqckpnYpGT6cQIRDZRVhZlb+BSu?=
 =?us-ascii?Q?bj+ZRsVwKY7oRiInAvKhjPlGd54BTmcwKceMftKLt+ELxLB0nX00cHfJk5Hp?=
 =?us-ascii?Q?PxwagSjD1P4qtBVGHv3TMRvO+1AyJpaF?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?58aQrirc67kiQ3Js/Dx2ALHCvJTR+drzkPJxd81xt8ysZ0D+i/4LI44vFjgv?=
 =?us-ascii?Q?iDnzkLFXP3Ys9Uip9tGjDuvmLcnKYn8z2FI8Km6H0Ht3ZVi+1iQsWvu3ntt2?=
 =?us-ascii?Q?Qj5uoyafn31IT2FyAp6F75SHQJ22AiYTZTWCaHe/h3uE5cDnOMmLhaNjrrOu?=
 =?us-ascii?Q?uDx6lJLLYlovTxywni3HT+AMTLWwJsMpwv65awXmihhwMofe5uNtmZQOf849?=
 =?us-ascii?Q?aw//EXiNJBsYa10nxThMAKrCjrGIe7vH/Kztg0DtzAloki0EIK578bbBh1Ot?=
 =?us-ascii?Q?5zzNHUhDeD8pjwOMYEZ4INb08waABIll6VRuX815wvLfAZdHpOJYyMt242oR?=
 =?us-ascii?Q?QBLbyvNS2xBrWmbG2f2kHGaxSn3MALWO5xQyxwFiS1Kk1UkYhtVGmYgiyiqH?=
 =?us-ascii?Q?I0lOOeCV9iVYNllMrgLICQ5F/IR+g3QG9+KtxGZB9ZNpljh9ggBatvP8f3lz?=
 =?us-ascii?Q?T/prIL8xuiDJvkHSkwdFd+SxA8ReZuI7lApmo/VhChG0wOZzAkeKeVKFS8dP?=
 =?us-ascii?Q?CU0eR/HOi0YMVG02qitCXT/l0zuv2X/TLkJcEEgxXjQ84wNuwJc/bxcviobC?=
 =?us-ascii?Q?ZNUnAaNp9xS12DDQ+N2UrVA4DmkLAml8EyT3+sIDumSfhc3tyFCdfBVG6C3t?=
 =?us-ascii?Q?kpcKGTVCJzpKH7MglTj1pHwzr3nddy1WG9cf+HnsXRZB9r7La1WVMTTBqazE?=
 =?us-ascii?Q?njjIDPmfpEKnGpji9zmQg7lb7r4uzDMLk9zrixWIRGDbIEsO6Id00B1v8Oq3?=
 =?us-ascii?Q?5sr7bUNZ1KAw++iO8Ih5U0bRO4Q1Up5jfrJfax5QgeBUjPG6Gx247BNswXTP?=
 =?us-ascii?Q?xPtuSOIzpECCZXlV/ubyueoagSq1hYr/HVXlXM3e9v4NK/HDLaf8IOnWcyHd?=
 =?us-ascii?Q?BgnoocRQSI0F4gXhT2Vt0eLdAUzb5RLsCw3igibKBIC5bP26x+hwyX6Icfxj?=
 =?us-ascii?Q?7f0woEaU7RcAPg09f1F/AFuj8xwIqkiwXC16VhH2JM1TxTHBOvp4fxqEq4uA?=
 =?us-ascii?Q?xWcPuZgkUsWdMBybNbjGDAy+q/rIVULKc7QlPlYLuEb9sIKkPEFYkQZ7s6s/?=
 =?us-ascii?Q?5PmEVZKQBrXkCdhtys/KXkLpcd3qNuNnVi4ilrArxM6SIuTXVgLR8reANvgO?=
 =?us-ascii?Q?MBRnPmDMp+giCDnlY5Sk0iqOVQZOJu2IByIjbleqe4+aXjhh7qb7DURnom5f?=
 =?us-ascii?Q?n0rliet4Do9OMosZYu8X6dfZoiTdO5Zoyl/Txnb0kd/h7qkMcAfvH3Jzz0f5?=
 =?us-ascii?Q?2KyhySxF3hN0QUuFixWCF17yf2zsAaGH1jmsqdpz4087jLT7mbI+Vxtzw9Zn?=
 =?us-ascii?Q?wNJS4dQAvRRfpIvn22bvHuTFdY9hmtC3p70304YcXn1gGXjdSKgdsywO6z9n?=
 =?us-ascii?Q?HnBKGS8UvuhAfUPO25pQiDNvj6qQAG3pIhgFR2gaSqFY+VugemZo4dYhI4tV?=
 =?us-ascii?Q?JvYxdhSbUmzkJRi6KEF101G3oDc8BMTq1jN4Qjz8EF8JdUmgxEiOOP0O65Ll?=
 =?us-ascii?Q?UnubXr5HD9Hey9z6mqRwvmV0rk0w4RaSFhKBGtU+uXsxJSQQtBTZ8GNFZExP?=
 =?us-ascii?Q?jtuuHOgMSjz8qQWgFx7tjTlSqsAXYxCAcRn3AX+QYX3nKR7xtumy3TGmyYDC?=
 =?us-ascii?Q?CHjIIxzsaMO7tmU83SizyJjI5NBny8ifMpmQBwaN3y3O?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1dc59f58-d549-41f2-3271-08de3c0f8bae
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2025 19:24:20.1082 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: r95UZ3Z0lyh137mJLV501XSecncS3IRPKpNvntu/5/111wdGo7haNhu0/e02TAMfaNqgFtjiWQprcQOPzs+wag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5112
X-OriginatorOrg: intel.com
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

The pipe joiner maximum compressed BPP must be limited based on the pipe
joiner memory size and BW, do that for all DP outputs by adjusting the
max compressed BPP value already in
intel_dp_compute_config_link_bpp_limits() (which is used by all output
types).

This way the BPP doesn't need to be adjusted in
dsc_compute_compressed_bpp() (called for DP-SST after the above limits
were computed already), so remove the adjustment from there.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 05cf283b220a2..9453447905d21 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2245,19 +2245,12 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	const struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	int min_bpp_x16, max_bpp_x16, bpp_step_x16;
-	int dsc_joiner_max_bpp;
-	int num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
 	int link_bpp_x16;
 	int bpp_x16;
 	int ret;
 
-	dsc_joiner_max_bpp = get_max_compressed_bpp_with_joiner(display, adjusted_mode->crtc_clock,
-								adjusted_mode->hdisplay,
-								num_joined_pipes);
-	max_bpp_x16 = min(fxp_q4_from_int(dsc_joiner_max_bpp), limits->link.max_bpp_x16);
-
+	max_bpp_x16 = limits->link.max_bpp_x16;
 	bpp_step_x16 = intel_dp_dsc_bpp_step_x16(connector);
 
 	/* Compressed BPP should be less than the Input DSC bpp */
@@ -2613,6 +2606,7 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 		int dsc_src_min_bpp, dsc_sink_min_bpp, dsc_min_bpp;
 		int dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
 		int throughput_max_bpp_x16;
+		int joiner_max_bpp;
 
 		dsc_src_min_bpp = intel_dp_dsc_min_src_compressed_bpp();
 		dsc_sink_min_bpp = intel_dp_dsc_sink_min_compressed_bpp(crtc_state);
@@ -2620,11 +2614,17 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 		limits->link.min_bpp_x16 = fxp_q4_from_int(dsc_min_bpp);
 
 		dsc_src_max_bpp = dsc_src_max_compressed_bpp(intel_dp);
+		joiner_max_bpp =
+			get_max_compressed_bpp_with_joiner(display,
+							   adjusted_mode->crtc_clock,
+							   adjusted_mode->hdisplay,
+							   intel_crtc_num_joined_pipes(crtc_state));
 		dsc_sink_max_bpp = intel_dp_dsc_sink_max_compressed_bpp(connector,
 									crtc_state,
 									limits->pipe.max_bpp / 3);
 		dsc_max_bpp = dsc_sink_max_bpp ?
 			      min(dsc_sink_max_bpp, dsc_src_max_bpp) : dsc_src_max_bpp;
+		dsc_max_bpp = min(dsc_max_bpp, joiner_max_bpp);
 
 		max_link_bpp_x16 = min(max_link_bpp_x16, fxp_q4_from_int(dsc_max_bpp));
 
-- 
2.49.1

