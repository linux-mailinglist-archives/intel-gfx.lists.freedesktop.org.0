Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B22F4BDF9DA
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 18:20:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF75E10E87D;
	Wed, 15 Oct 2025 16:20:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W/PSFyOO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 163ED10E873;
 Wed, 15 Oct 2025 16:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760545209; x=1792081209;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=2VV4tZBjQwb1odVDVS3vx1UoEEj8xUmekDMJ2D8AnMM=;
 b=W/PSFyOOpcPre/MGTDf15eOvxK9j7oY/UBFdmGLOz5pofLGLUzOPAnSu
 JB6VmEiTgPqMUsL0vUr8fv4dUfeSgPdOUOUDziPjHA2wSzqmZwcheAGJf
 5IOOnJsaSxHVPHD6BUWp4+f/MHqoLC+vUtPTImuzKUPUScYaIoNkVFTxX
 /chqJFb9qtYaKe0knXd/PwBNYSStEizv/pxkwHW6Gd/SKRsNrBmPWdFEE
 KuaDInV6JpqY5AT5SyAJcQ73FLMaoLkoisW0JYefU2D0NW0Hw9hiO9tfS
 crqqeVafPmzD/7x4P0IF5PDg1bZijmUih7wmK+VVSHCo7EixPrd9VsuLV Q==;
X-CSE-ConnectionGUID: W5f8YUI2RaeSgcmcSKuyeQ==
X-CSE-MsgGUID: MeKooWl7QNOM4Av3pEpVsQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="73837271"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="73837271"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 09:20:09 -0700
X-CSE-ConnectionGUID: ZVpZY3jER9mRTEyFFiTRIg==
X-CSE-MsgGUID: TNlvPiFyRU+IdQzLXKEioA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="181344509"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 09:20:09 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 09:20:08 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 09:20:08 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.28) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 09:20:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=shhkrG7uPnk3NKRSI702Vu2bvoBFeiBYuSh/kDHf1Lgjmm4SJIbpzDxpv/kHwhusMCTzMsBDDiMRx2oc47P3ziKluqUNiAeXy7TQj6SHLfKeNKm0p6RuYDPP3x6ZV32MVkMgaw9zQ8H+E9CMEqoX5V3BSlVUqsdumWru095yKGf3kO8sMYQPuBN7uKlYPJbgKGA6Xs2n+wXhgMmsIeuBYgBctT3aQE/BEm0NVvaPhZDoVIIqlVPy4LNIJvKO+crn4su5HOyc55fSO091CRBEScHC8UOs/oZxL3djO0G8C3fwKG3ikfbsgmwINqpXrwtUsnw0P7Hjw9wf1FLNAqIJ/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VrzLZ4zSyRZmUD+bLBojvbBs/0HGxGVgio/R/yD4DzQ=;
 b=MShFx2RUiIyFKGm3hH5zsRbl3W7CriDrMbDGK54yxrKiSKnZaR3ZgX7LUxhDnMdz04IdbdUBE1J/7WZJ/59olUCHqa7jVN0KuGll7eq0vJ5Nz2rd6Z7EAHcnz+r9MALU0H5tOPaEu9Y+2U26QZwnMdROGxrTSWS1r6mU43/aIS8Z19tEY22dOQj2oO1ih3yr3aA7qYXz4FVD7OyAmM0I0EJDpj7rxPU3wBpE/FGui0u2kRKzSsn5EkoNNaRpqdQ2t8OeAuAulyAiLi7AXmE7tDWkyJi4qNjFJOsU3WlalvX//ycFOdNOdi5AOEBzkhp2XbkwJnoLMomukAVLROYNUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH8PR11MB7046.namprd11.prod.outlook.com (2603:10b6:510:216::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.11; Wed, 15 Oct
 2025 16:20:02 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9228.010; Wed, 15 Oct 2025
 16:20:02 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 2/7] drm/i915/dp: Ensure the FEC state stays disabled for
 UHBR links
Date: Wed, 15 Oct 2025 19:19:29 +0300
Message-ID: <20251015161934.262108-3-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: c8ac2bad-8ea7-4a96-9c29-08de0c06b174
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|10070799003|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?oW/smiKf6rxqMV9Nb1NYwSRSVeGITY8vDMBsb2O0dTeqrXnV7TzaE+/l8Da/?=
 =?us-ascii?Q?3JrRFD2Ut55tdPReR+Ev8iQHdTb3iPaTTP17BABl3suu65hOkYujeumQ025W?=
 =?us-ascii?Q?m+QeDV8nw//8moxoTZ9U5pKj5EujzdqCaOy7pLD4wafPSz15hqadRcuel4JN?=
 =?us-ascii?Q?qhlsOQla8B+1QsPxIv0l00SpWNfeSsU0KtFZPEhn9K0cOqqWqzd56CKja0NU?=
 =?us-ascii?Q?rQjlGMmI1hYhroEG7G0Cdd9b1sP+m1glkE70Dr5kEhbvFluJoyZpxnF7cEBu?=
 =?us-ascii?Q?dWFqptNKdK03Xbu+r3JklYbP1LERo5O9Q1HRMRu0o1CddFw+q4apOMuBp/1o?=
 =?us-ascii?Q?wN0NZ4SHC4CdREM+SSXrKqQZ3gllRcPxZE2XM1K43dYbYhpm+O2DnRfAholj?=
 =?us-ascii?Q?ZtPhQD0yktollXDJ29J5ZE8OA0zO0qeB/jhMLaAmGfVSPO6QKCuyrXPBMaaE?=
 =?us-ascii?Q?eOrEnAIPeSVgmJfYWfJY9fTQ/Fm9LMs7LqH4srk2cO5pk7buOyr/3BfWNHjV?=
 =?us-ascii?Q?BsxnB9WiMzExzmQEBetmxaMUERAnceGM+HiYoi3EmJMsuXa2r+cw2HVUGJY1?=
 =?us-ascii?Q?SdQjmI7LcTlyHi1hqu/UDPa5YAVDJJhAPmkIopEJkVzhAiu4XOetoGoOa3Nk?=
 =?us-ascii?Q?mSvnnvrfneVka051QXBCzfbL/csYpIqLGkL00pZ+ZEUzGl1cHEvsfbjHI92N?=
 =?us-ascii?Q?iSV/Rm9kARMvmeERRKmAazIM3F3zJa4xLYkMos/7CFLMqm3XZx4ecvyRuT4i?=
 =?us-ascii?Q?Bmbu9lhePoUYeLqhJrokRp+ErQGCJVT2EQ2r7h5BFk1J6Lz7lItU6qbzo6YD?=
 =?us-ascii?Q?L9f8wGTEczrN8IJu9wKlBYX/9WHQ2OVjJ6m8spY2VmgfuQeCAjL1l//TNd68?=
 =?us-ascii?Q?vN8yZK5oTcDrSK3EgQAWzAJvIK9rbnrF5WzQS4nOLB9pUzOv+DOe8Ozo9N8H?=
 =?us-ascii?Q?cCE8KCB5nWZ15QbHwrZnKL866mcSpkKziPn425WQL6vtKvMtxdnw/Wd+7Prd?=
 =?us-ascii?Q?xQJDrMRYaZ8G/YNWGJGpjLPsr460J1AcGg+SbENh7YsRnzDFZnOGBoIAM+MP?=
 =?us-ascii?Q?JR+4fM7iNrHX4P8abs/GjyxpZGH1RoMUy/z9gaN/YtOmlEwMKWPqASqBeDEZ?=
 =?us-ascii?Q?qkr574qr/68xLhXm0OJueSdIcaUhJtYYx/Tvknltf1n6ENamqiniOTyIoKUT?=
 =?us-ascii?Q?BgeBIVERHA7WD8v1KmTRwPnNPvHNhls8bfhfX3NgNINQ/4/zaKVy31HJ2AQU?=
 =?us-ascii?Q?TXCZZCZ9AmQIt++dXBRwXPPbaUT5QfgRW4TTByFCyDYuG/nGRrF5OTNHdiaK?=
 =?us-ascii?Q?scLLrvuI++ThAkl2LVdYBCqOBb3HKwWXCMvaGMC8Wuna4kIMPMWgYOvOUUzF?=
 =?us-ascii?Q?IVRj6NIAbeyGtKWGWv5NwPeXHPDRoNZtw2pqcQm5FFYlqfhIgUR+aUxkoHIU?=
 =?us-ascii?Q?nKjPChJslDMVGfToHfGnx3czCN8JDjRQ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?gp4pkfmmB85RnaZbG43rBiILMul3Inu1Ed/h5Z8qtj3KjOkJQVxcbYDl8BT1?=
 =?us-ascii?Q?obuItCbBFXJjAzrynG4IXfANRNaC37ZLNxMxrFapq/rKGuIST67jJdcAG8Dq?=
 =?us-ascii?Q?5ePYnNpvMPgYE2frf5coI3XPj6WuGxwBdmR/72Xlvh87NQGsAR7W7Ny3q93g?=
 =?us-ascii?Q?O7+rwCEgCsZRPHbBVTeayAixq/OMUijcKfHzEEDVjclvudAf8KO7gsKIUOd2?=
 =?us-ascii?Q?NS/ot6SDa2XoA6DlmwvuMwGwqEl5JFgVnVNROn5zfd66RuO6KkfMByBS4L3k?=
 =?us-ascii?Q?qwatGnpFkM2gz1lOQtSvTFyeACw+GIycFaorIhAH7NeMQLfNSgBvmHa0IeMb?=
 =?us-ascii?Q?ogKWhKDoigEdk9xx/bYFdPSMw/LZGOOt/0fANMpjI2uqfi9W9m4zpiPe82zk?=
 =?us-ascii?Q?km0CpelcZCJtLjuRPoUtAFRWHpZhHgPwZYPkAs6uWPBqt/W/OtkRP5Sas85h?=
 =?us-ascii?Q?2J5K8JyEJrcVX8U6YGyt+6HXUhAUnuUz8DswaXnteLvvemq2fRNp9Vk/asZc?=
 =?us-ascii?Q?R/BzIz/29yeOx4+YKC01uqKMaavuTbbd7hVGWzC5Yfmh6tu0NC56VALsXVWP?=
 =?us-ascii?Q?Uc6KMwsIo5/xhHefirk6JuAdVXI98SEyiHgSSUQVSJ28ObHbA8A+V31D/HE0?=
 =?us-ascii?Q?Lnqr6tUFtkYONG4URU1mrEhZAy404P5JKHJIauP7btQCGjNEz39QOheoZIqo?=
 =?us-ascii?Q?TbVdJDKjs+47T9iCQ8ij2Cs/CX67vfdOe3f4EnBeXxy8/8sDyzMrh97ILtHL?=
 =?us-ascii?Q?ZISSAL30Y7MsFbBNmxRQQIK6ralTbTAWpDJMDBmAM6fgshkr8H0OZ/HpuT3U?=
 =?us-ascii?Q?G9tiTBcPhEF8BP7QAy8svF4w07EfUrdejhmHPUaB2lvFpa4CKUsZYF+5Rydq?=
 =?us-ascii?Q?+x56aoee8i1nW1YjX0pvW7an+PTSzKU3TVaKbTjb0F98eytWLyT/bknwLs2A?=
 =?us-ascii?Q?ghMI1eEmGKuf0keSVsiyZ7FCnOEc2KpROfsoKh2QRk0CTORpJLmMryyJlKnd?=
 =?us-ascii?Q?Rn9F4El5CzqJf4cPkxijOBhWKLbZejFZZPXiBCkO3wJuwM+TZ1M8cPFxQoyp?=
 =?us-ascii?Q?tciEVSE0YYoH4gG5ZoXCPS+K0fkBmBIGaZ9JwcrgLb0vHRB+BhPQg6RqAOjg?=
 =?us-ascii?Q?ZSLBrt7JdUKZLe1ROgQOekt8ErdYeBbl3O2cQwdpILTlalOZ8Hy9vdIFVERY?=
 =?us-ascii?Q?6QTWVWhpzK/1dSm/I4bLI957EzqidDNd+A74gy+hXR8f66jR8ESnHS0d0TN+?=
 =?us-ascii?Q?I1FWmm6iA1Y4ok+xbZRQyOkfBtvzS0x+cIxafXxAD13GoiSKg+6ge5gmyWkW?=
 =?us-ascii?Q?H8YLAA3vgao7uG6xRLpb5bvCYkWqgdtE8lIOpisJt9x5T1XmpNt3SoWeNoGj?=
 =?us-ascii?Q?M9rEbHUbqUgxtBdDEb+o5QgjxLR0LmVYU1mNembzSr6/m0KSjqO/l/1ffnLD?=
 =?us-ascii?Q?PJ4ea+zEjBoj20GtvfIViBnUQfzjVnrN2xmgrv3wpz2CKFA79CdsndzmxUm4?=
 =?us-ascii?Q?KpVa7ChrKdkRPE5M5dUQ607jlnmzuCQQXXOG+K5Ahzn3dvjRY+Y/AG5DaGFp?=
 =?us-ascii?Q?zEpmIrzWCmBLyc1BDQ83hTHtiBvqiEr3qR87bbmL2dvGFYzM6A/QbSckxYjK?=
 =?us-ascii?Q?zBo7tMegckmUrY4QQbwoy/a+0g15ljPIItlgJYHL1U0b?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c8ac2bad-8ea7-4a96-9c29-08de0c06b174
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2025 16:20:02.0656 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6nOrZOt7KOx9HndErXzMyeV8s7xha6KdhKL8Ovl+26IIANrfzEfrbQ8cHmlRZ44vsQP7H39y2c7o9dRVKusuSA==
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

Atm, in the DP SST case the FEC state is computed before
intel_crtc_state::port_clock is initialized, hence intel_dp_is_uhbr()
will always return false and the FEC state will be always computed
assuming a non-UHBR link.

This happens to work, since the FEC state is recomputed later in
intel_dp_mtp_tu_compute_config(), where port_clock will be set already,
so intel_crtc_state::fec_enable will be reset as expected for UHBR. This
also depends on link rates being tried in an increasing order (i.e. from
non-UHBR -> UHBR link rates) in dsc_compute_link_config(), thus
intel_crtc_state::fec_enable being set for the non-UHBR rates and
getting reset for the first UHBR rate as expected.

A follow-up change will reuse intel_dp_fec_compute_config() for the DP
MST state computation, prepare for that here, making sure that the
function determines the correct intel_crtc_state::fec_enable=false state
for UHBR link rates based on the above.

The DP SST and MST state computation should be further unified to avoid
computing/setting the intel_crtc_state::fec_enable state multiple times,
but that's left for a follow-up change. For now add only code comments
about this.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 10 +++++++---
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  5 +++++
 2 files changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1d3ca1970f25f..b523c4e661412 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2368,6 +2368,9 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 static void intel_dp_fec_compute_config(struct intel_dp *intel_dp,
 					struct intel_crtc_state *crtc_state)
 {
+	if (intel_dp_is_uhbr(crtc_state))
+		return;
+
 	if (crtc_state->fec_enable)
 		return;
 
@@ -2379,9 +2382,6 @@ static void intel_dp_fec_compute_config(struct intel_dp *intel_dp,
 	if (intel_dp_is_edp(intel_dp))
 		return;
 
-	if (intel_dp_is_uhbr(crtc_state))
-		return;
-
 	crtc_state->fec_enable = true;
 }
 
@@ -2400,6 +2400,10 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	bool is_mst = intel_crtc_has_type(pipe_config, INTEL_OUTPUT_DP_MST);
 	int ret;
 
+	/*
+	 * FIXME: set the FEC enabled state once pipe_config->port_clock is
+	 * already known, so the UHBR/non-UHBR mode can be determined.
+	 */
 	intel_dp_fec_compute_config(intel_dp, pipe_config);
 
 	if (!intel_dp_dsc_supports_format(connector, pipe_config->output_format))
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index f2266b2653046..27e952a67c343 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -293,6 +293,11 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
 		mst_stream_update_slots(crtc_state, mst_state);
 	}
 
+	/*
+	 * NOTE: The following must reset crtc_state->fec_enable for UHBR/DSC
+	 * after it was set by intel_dp_dsc_compute_config() ->
+	 * intel_dp_fec_compute_config().
+	 */
 	if (dsc) {
 		if (!intel_dp_supports_fec(intel_dp, connector, crtc_state))
 			return -EINVAL;
-- 
2.49.1

