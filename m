Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB363BDF9DD
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 18:20:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10F2E10E885;
	Wed, 15 Oct 2025 16:20:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O6LAJiLa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D12310E87D;
 Wed, 15 Oct 2025 16:20:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760545213; x=1792081213;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=xQBDm3QiTWD+G/+a/T77lusej6vyZGwIRiHGHs5W3fo=;
 b=O6LAJiLa4CyfCvJVI5wBFNmAa1dkHpXpmA3PEWldwvMRT1tPimbQXo1p
 bKyNI3KM0WTLKYVS6kiGj9JkwFaWrUps+6XdCLi+9qED86tbncenq6ZD5
 Zt/R4F6uY5oS8AtwIuDe38slJwWlMLER94DDJXaumWAUTwMbgD7FQrUZ3
 roXk5ikdcwsguTDv+cZOoKDj5BgAKIePHcS7w6/Rciv2bWr85U9OsI21D
 0VYl16+QNDA9MGZOOsR2WcwwZfI6PzLJAnlBOdaNU/fxKhunGuCyxTkVq
 bnkVQrkBYPDAEJ6NiSZpzRAyDzol4YqQk9rAWeV2zxtA7Bjjn/UPLD/tQ Q==;
X-CSE-ConnectionGUID: L+LQsRu1Rty3uOSlrxDi0A==
X-CSE-MsgGUID: 2Tjix6QyRNSoUkay6GhshQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="66588951"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="66588951"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 09:20:12 -0700
X-CSE-ConnectionGUID: shVMVSQWSNmuSzmcLDb6QA==
X-CSE-MsgGUID: VH8ppoOwT26941SdL5XRUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="187313350"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 09:20:11 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 09:20:11 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 09:20:11 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.28) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 09:20:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dMVZJcNryW3YnD1DxHRg2nxFh3HQDH0Bchqh7K+HdCfl375KP35mWskXeZan+mdczB8XRO8iGbMQ+/xwM5ZXRIt6+ZYUSGmKpotyjQnTCFTtrN7W743Z3hy2kKOx4puiOloNOXH4YNordiDCek+DN69suLMHt8SvJzKPGwnyIY153YNFy4NowZ1YQonw+q4aa1X/UoJm5nrajIa41fqkoFrKlVsy/eC4yPmr2DFKY2MgWR4YbCljoN2Fz82ZOAyvVlhcOY5E6MTekB/Z5zkqvKP8oACNQpZB0JfPsQihBBf3Vi3MJLxCvM2Kt0CSAGnVklKV0NPizyJnOH/7kMU18g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iRth/cZKI9zPaJgZwEAm3wChM8cIanYET9U8l5jf4BU=;
 b=ms5hBBO585WSegke1mKFwjqb8FAXNbeNKjX7Oi7QQaGe1STOyjM14MfyM40xbrRAuQwIQKG95uiwQDBgf8hPKhph9eMPM3fwogJkXPGWm5KltC5UxtvGa2/adMfeoZWzdwBTnkuFYKjleLXnkNUncRfQ7sbFRZVgbvJJDgAkTnMfrLhJpY0xVCzvFJ0uy1c5fbB1NUzMdqm4+txhdSA1GFytec2YFTmrvKnVY183rzT1Yph6dR4a5I885+5OYgICaA8BaitxSR5Bc+XSc7CcL/4RGbHEb7nUFsIukdDCwPN6jUXZlSrot09AbZhwmWZDgGGY1adI4f/xXJqUiVCBAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH8PR11MB7046.namprd11.prod.outlook.com (2603:10b6:510:216::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.11; Wed, 15 Oct
 2025 16:20:06 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9228.010; Wed, 15 Oct 2025
 16:20:06 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 6/7] drm/i915/dp_mst: Recompute all MST link CRTCs if DSC
 gets enabled on the link
Date: Wed, 15 Oct 2025 19:19:33 +0300
Message-ID: <20251015161934.262108-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251015161934.262108-1-imre.deak@intel.com>
References: <20251015161934.262108-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DU2PR04CA0188.eurprd04.prod.outlook.com
 (2603:10a6:10:28d::13) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH8PR11MB7046:EE_
X-MS-Office365-Filtering-Correlation-Id: a930f14c-313b-4615-7413-08de0c06b424
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|10070799003|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?3/5uhjblXpQmBK9XAmJGVJqpxD4HcEdhRh9EtVIFx9iqm0ABFTH+pPX6qJG4?=
 =?us-ascii?Q?FbRqzqPvkdegpAcWB1bc3952lnE9roYCMEvCYxHpaJtMr8TWOJUdNrgDWO7t?=
 =?us-ascii?Q?BTAAL+IjhKu+gL+cs8v3tZlTbFYiD+NCL0oCqA0yM7GlUjhNUVZqeBN2Ghu1?=
 =?us-ascii?Q?5UqPhfxuhvot/EPRpjgJfPdMgTA3d2p5REvzZ8VPNEnxv7pGqepTgoytvCxv?=
 =?us-ascii?Q?7wai3GHpdaJxuLo/DIAgvX6QMGBF2OHeUI4enxLngnobMt7FadEMsfNe6ncl?=
 =?us-ascii?Q?Zer3VGqpI0+sLINVvlgtbOYXStpG2sNBnF9N72nOweYNICd+dZ+kgTbpfyjk?=
 =?us-ascii?Q?/4XoJoLRlaR22IaQRUbnBP9uy5CD8R0P+Fqs166k2mbXMbQh/IHmGgYWBs0F?=
 =?us-ascii?Q?EaHZpukyIyFdbhA8I1jApD1tZUHTbGJZDxlVEYgaZkXRQlatR7m8V00uCaYB?=
 =?us-ascii?Q?ySBsnWt1QtWRrNQtySwYUq/8czdzX9tzF1nBqFdmuLTArhga8+Cj0K4uNTqs?=
 =?us-ascii?Q?8wfvfJ7VF8m2qLorEaQTGAFCNZpUe25SszN4Q1PjRjxVv8ORZGurTl9LC9pG?=
 =?us-ascii?Q?eueqnIpS/qcxXc9NVilZOITrJiwcVcRkUZxb1msMIl/czyyKrC1HbzHaFl0E?=
 =?us-ascii?Q?vEfNYpxoLuZsN/Ugoi3HGto7r4NJYRvW/Z+KI0bPyZBTObBQTKChzQh2uUqO?=
 =?us-ascii?Q?Cq5SuKN6XarPCzjrqBP0dw2I+lD8G9VYjGEyls0NKb6OkvjG7U2Iahuyd1tT?=
 =?us-ascii?Q?hg211ChtbiO3+GRTDxsBsIW81hvkH2sX7YlMkyrqB1VHJYdKpe6FxovEogeH?=
 =?us-ascii?Q?Qyy2MQ4yZLVvh4tD9y2A84AFugScBezoHdR+rFGV5b99ZOa2KgVdH5V5iW7G?=
 =?us-ascii?Q?hqIqACqRB9BAMJCfpnzyagNMAs65E0ETV+eRXdZ21mS4ksLD5tGtFgMIWOSV?=
 =?us-ascii?Q?uRafyS8Sps86TK4IidEtzMda89XN6p4AH31Hq0bODV4Vy6llQEqFW0EMnD7S?=
 =?us-ascii?Q?cGRxr/D7o/xKH9ZCtJu0zRjWZ/fEkTeXlPgBZNBYLb536bp0NG21zW0FdUg2?=
 =?us-ascii?Q?ylNp9z6KmxZrNJvH4z2aVGb0P9l6GGKgGiXQoWUJSZoVnkodIel1JLclb779?=
 =?us-ascii?Q?7EHaicD83GsBF5BzYKjbySMKUnXvM3KVpwBzx6Cy45ubSYQ55nh5Mh98MDrV?=
 =?us-ascii?Q?Qhro8L2IwRifMSCA/evNrepNHynDzhVM2N59miZZkkoC7CCKHwGma3+hrPKj?=
 =?us-ascii?Q?jGVIBWIf+Ie644FwguM9pgx+OtOcJVJzvcwQAwOubVQo/Iugn5uig/fJJFCz?=
 =?us-ascii?Q?trY7P8rv/f8QSAXgnqPVYYiz4Qb6C29vAiu+8MF0PMsrt+60QXdsst6gXjIX?=
 =?us-ascii?Q?wunszbXJFBtvgikSOik/H2uYNkH72H5Jfx0K+iRl5yi2KjvhGAJjMWW7218M?=
 =?us-ascii?Q?b6L5Y8tmTrovEwU521OKQPrk640Fol5D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?SpwRUxLIKNPuK+y5bW+UiDfZRrozL8MpM80F23XIbmo+3KJpwLVs9/2GrID0?=
 =?us-ascii?Q?FInaVr+QQSDAiaywwHZh3aFlcoCwFS9X4N+Ii/JBJNn2bi8dKxB5ebU5FxXZ?=
 =?us-ascii?Q?JY/viIzNNVVk1uI+5UsUDIXMwspjHDgNm0N3YF/Wi8sHhysgvlg5qmNrufb5?=
 =?us-ascii?Q?LR+HWCOdKdkKwf81EbqVVis9GsilDh7jAp5zN+Avpkl7sA3teugWF4dFLWGk?=
 =?us-ascii?Q?OktNP3PdeckFk7yII7LbOmdOKTqQdXx7tC/e9JU2bY+UMBYmBSoXy1RFom3B?=
 =?us-ascii?Q?3voWuIvBxp2VjNiEcvPKBqUZc7KHZFGlxCEBkJrnzpvjSPGRwkUsCKjvRGYO?=
 =?us-ascii?Q?+1B3VvioWiA6Vfr6QHva7N1Wj6STf+i+KjFpWikngMTEuAo63Kc+XjZWhKM7?=
 =?us-ascii?Q?sMJJEiTLiO6e8M6cRF8vY/Vu2Sy9pWpCAKZESIj5bORNRfMSfE/hpOXRcROX?=
 =?us-ascii?Q?3ABJ9VCjGxTFTk4R1Rmx1WWkszrCN5QAE1cAS0iafr/3zhfglDz7EmjEryjb?=
 =?us-ascii?Q?Ja/vnsBROV7CN0KynyZ8ABREXyD+t3IXmoP6StqFSFI9LWvgS4uaQcS1j8An?=
 =?us-ascii?Q?UqKRHs6IwzJOHypKfoDMiivpMTAt7qZ0kLmH9tMJ4cfZtqEiKsBD1mU8NUh5?=
 =?us-ascii?Q?oyOLmMAmqeYdqEJz5Hs6DDyiGyEkJ0ZzrzkyuhzGl7SgjUFmdZUgljiTp0rh?=
 =?us-ascii?Q?HvR4Nsa370DJsp0r17RwJVm/azSokwhXEHFu1m3aSyk8v8lECnwBUI9wfyYj?=
 =?us-ascii?Q?b+3s0mb32Otlo3l5L7JahGOtip8BGvjMeH6ssF4PGEU4YiPL0SmOZEUl3Ynn?=
 =?us-ascii?Q?lsd2sJ6c098CeLD+Y3APATx4THR2nVJlpAzJj0ZfiErtg2ANfPVArBDyFh9x?=
 =?us-ascii?Q?xsasvScQctbybHX6EkSuaXMXCutHNoqAnRk3BkfdjQaLeTOF2i6YSFn3iHq7?=
 =?us-ascii?Q?XiqLtvpCyR3DnSiH79VaMds9cNn7c7lXtX/gE8RgcaNkxo6/TBKreBKnNp/Q?=
 =?us-ascii?Q?2dikFHCq5LjrgIEioGG7cU4oMWJeCCPxlHTQZMJHQOxBwMJYTnpOjuBc2jZd?=
 =?us-ascii?Q?sdn74k7Ff39aws4tKUDS3730HYJgzERiOMh7xsr1g4zySgLfs6/p3j38XKbr?=
 =?us-ascii?Q?u8HzS1LomGFvXIKQqv6bWoepBoUMkcDMQXvoEg5H55kovRY4vvbhdTVExy7z?=
 =?us-ascii?Q?/j03JIpgBiz9GJDxIanyP9QK20oqKXPp9F2vJw0iMgdnJl1tTiklCZpTlYb6?=
 =?us-ascii?Q?mFnZRLDQjgdQZXNt0aHUIQPSN9f1FlcI77n87vh/vng/SVWqejY3rs1SMadF?=
 =?us-ascii?Q?bkU27vh097ZX+s8O3Mxc057fo5Y1jty8J+3GfT6Q9L2wnfVilEC0pgz5g1um?=
 =?us-ascii?Q?jpxNXSqj6M3W0aWbpKImTu6keFPd/thUD6YqJRsLwLRoE7ag/kxykkhtj2bh?=
 =?us-ascii?Q?apfgjw5tkf6jjQ599a3sGjy5vh1/vjME1E8T74h2IV43Rw1uw/80MyGv1QdX?=
 =?us-ascii?Q?pBBEQF5Akb3BCWlyM+jcMSQGCIJmm0HoSV2YrspDicDO+/OlYuz3idvEWnms?=
 =?us-ascii?Q?ZMBzAf/4njHvsYdTJyS4KUriX3uxE6p/sppf6mJzfQs5CvArYn/erI4BnM+5?=
 =?us-ascii?Q?V/fz9bZ3IjaxRSXmpBc7HQFWctAxc6wVJ4FDm8BT3Qdv?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a930f14c-313b-4615-7413-08de0c06b424
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2025 16:20:06.7006 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IoNyizJteQIO0rcZx9nNTqhwIhAzBjeKGsMDzvaxt+fMK+zRVREEKzacLv/jYjpQvpV+QEyOgxxdKEiiBNJZGg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7046
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

The state of all the CRTCs on an MST link must be recomputed, if DSC
gets enabled on any of the CRTCs on the link. For instance an MST
docking station's Panel Replay capability may depend on whether DSC is
enabled on any of the dock's streams (aka CRTCs). To assist the Panel
Replay state computation for a CRTC based on the above, track in the
CRTC state if DSC is enabled on any CRTC on an MST link.

The intel_link_bw_limits::force_fec_pipes mask is used for a reason
similar to the above: enable FEC on all CRTCs of a non-UHBR (8b10b) MST
link if DSC is enabled on any of the link's CRTCs. The FEC enabled state
for a CRTC doesn't indicate if DSC is enabled on a UHBR MST link (FEC is
always enabled by the HW for UHBR, hence it's not tracked by the
intel_crtc_state::fec_enable flag for such links, where this flag is
always false).

Based on the above, to be able to determine the DSC state on both
non-UHBR and UHBR MST links, track the more generic DSC-enabled-on-link
state (instead of the FEC-enabled-on-link state) for each CRTC in
intel_link_bw_limits.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c  | 16 ++++++++--------
 drivers/gpu/drm/i915/display/intel_link_bw.c | 17 +++++++++--------
 drivers/gpu/drm/i915/display/intel_link_bw.h |  2 +-
 4 files changed, 19 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d5b2612d4ec25..64c0cf34b7af3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4601,7 +4601,7 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 	if (ret)
 		return ret;
 
-	crtc_state->fec_enable = limits->force_fec_pipes & BIT(crtc->pipe);
+	crtc_state->dsc.compression_enabled_on_link = limits->link_dsc_pipes & BIT(crtc->pipe);
 	crtc_state->max_link_bpp_x16 = limits->max_bpp_x16[crtc->pipe];
 
 	if (crtc_state->pipe_bpp > fxp_q4_to_int(crtc_state->max_link_bpp_x16)) {
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 0cbb4c3a8e22f..a845b2612a3fa 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -814,14 +814,14 @@ static u8 get_pipes_downstream_of_mst_port(struct intel_atomic_state *state,
 	return mask;
 }
 
-static int intel_dp_mst_check_fec_change(struct intel_atomic_state *state,
+static int intel_dp_mst_check_dsc_change(struct intel_atomic_state *state,
 					 struct drm_dp_mst_topology_mgr *mst_mgr,
 					 struct intel_link_bw_limits *limits)
 {
 	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc *crtc;
 	u8 mst_pipe_mask;
-	u8 fec_pipe_mask = 0;
+	u8 dsc_pipe_mask = 0;
 	int ret;
 
 	mst_pipe_mask = get_pipes_downstream_of_mst_port(state, mst_mgr, NULL);
@@ -834,16 +834,16 @@ static int intel_dp_mst_check_fec_change(struct intel_atomic_state *state,
 		if (drm_WARN_ON(display->drm, !crtc_state))
 			return -EINVAL;
 
-		if (crtc_state->fec_enable)
-			fec_pipe_mask |= BIT(crtc->pipe);
+		if (intel_dsc_enabled_on_link(crtc_state))
+			dsc_pipe_mask |= BIT(crtc->pipe);
 	}
 
-	if (!fec_pipe_mask || mst_pipe_mask == fec_pipe_mask)
+	if (!dsc_pipe_mask || mst_pipe_mask == dsc_pipe_mask)
 		return 0;
 
-	limits->force_fec_pipes |= mst_pipe_mask;
+	limits->link_dsc_pipes |= mst_pipe_mask;
 
-	ret = intel_modeset_pipes_in_mask_early(state, "MST FEC",
+	ret = intel_modeset_pipes_in_mask_early(state, "MST DSC",
 						mst_pipe_mask);
 
 	return ret ? : -EAGAIN;
@@ -897,7 +897,7 @@ int intel_dp_mst_atomic_check_link(struct intel_atomic_state *state,
 	int i;
 
 	for_each_new_mst_mgr_in_state(&state->base, mgr, mst_state, i) {
-		ret = intel_dp_mst_check_fec_change(state, mgr, limits);
+		ret = intel_dp_mst_check_dsc_change(state, mgr, limits);
 		if (ret)
 			return ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_link_bw.c b/drivers/gpu/drm/i915/display/intel_link_bw.c
index f52dee0ea412f..d2862de894fa7 100644
--- a/drivers/gpu/drm/i915/display/intel_link_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_link_bw.c
@@ -20,6 +20,7 @@
 #include "intel_dp_tunnel.h"
 #include "intel_fdi.h"
 #include "intel_link_bw.h"
+#include "intel_vdsc.h"
 
 static int get_forced_link_bpp_x16(struct intel_atomic_state *state,
 				   const struct intel_crtc *crtc)
@@ -55,7 +56,7 @@ void intel_link_bw_init_limits(struct intel_atomic_state *state,
 	struct intel_display *display = to_intel_display(state);
 	enum pipe pipe;
 
-	limits->force_fec_pipes = 0;
+	limits->link_dsc_pipes = 0;
 	limits->bpp_limit_reached_pipes = 0;
 	for_each_pipe(display, pipe) {
 		struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
@@ -65,8 +66,8 @@ void intel_link_bw_init_limits(struct intel_atomic_state *state,
 
 		if (state->base.duplicated && crtc_state) {
 			limits->max_bpp_x16[pipe] = crtc_state->max_link_bpp_x16;
-			if (crtc_state->fec_enable)
-				limits->force_fec_pipes |= BIT(pipe);
+			if (intel_dsc_enabled_on_link(crtc_state))
+				limits->link_dsc_pipes |= BIT(pipe);
 		} else {
 			limits->max_bpp_x16[pipe] = INT_MAX;
 		}
@@ -265,10 +266,10 @@ assert_link_limit_change_valid(struct intel_display *display,
 	bool bpps_changed = false;
 	enum pipe pipe;
 
-	/* FEC can't be forced off after it was forced on. */
+	/* DSC can't be disabled after it was enabled. */
 	if (drm_WARN_ON(display->drm,
-			(old_limits->force_fec_pipes & new_limits->force_fec_pipes) !=
-			old_limits->force_fec_pipes))
+			(old_limits->link_dsc_pipes & new_limits->link_dsc_pipes) !=
+			old_limits->link_dsc_pipes))
 		return false;
 
 	for_each_pipe(display, pipe) {
@@ -286,8 +287,8 @@ assert_link_limit_change_valid(struct intel_display *display,
 	/* At least one limit must change. */
 	if (drm_WARN_ON(display->drm,
 			!bpps_changed &&
-			new_limits->force_fec_pipes ==
-			old_limits->force_fec_pipes))
+			new_limits->link_dsc_pipes ==
+			old_limits->link_dsc_pipes))
 		return false;
 
 	return true;
diff --git a/drivers/gpu/drm/i915/display/intel_link_bw.h b/drivers/gpu/drm/i915/display/intel_link_bw.h
index 95ab7c50c61d0..cb18e171037cf 100644
--- a/drivers/gpu/drm/i915/display/intel_link_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_link_bw.h
@@ -15,7 +15,7 @@ struct intel_connector;
 struct intel_crtc_state;
 
 struct intel_link_bw_limits {
-	u8 force_fec_pipes;
+	u8 link_dsc_pipes;
 	u8 bpp_limit_reached_pipes;
 	/* in 1/16 bpp units */
 	int max_bpp_x16[I915_MAX_PIPES];
-- 
2.49.1

