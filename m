Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BB0BA6E1FE
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 19:02:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A27B10E4AF;
	Mon, 24 Mar 2025 18:01:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VbJqWMTm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9217A10E4AF;
 Mon, 24 Mar 2025 18:01:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742839316; x=1774375316;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=wDu4gBygoITBvQwbXbhMQQ0/IRefMIP/JlJA951NItI=;
 b=VbJqWMTmqfY31ItnDoXzlhqYzJkW+y97PKUQgJ9pXWh2f2ppzUwhPu3L
 EsuH3BwA7yFnIz9qgm4X8GwjHWvJJKFVK0zn0Eg+bY4oi+Lo+xoYpV8Ee
 VyqRmDKM6V6/Ak4wOBMC+C/q6NEGYS7015LSM3zntAtNsrSSCrTxGbBi1
 6NaWT3i7/yEw1dJDnR+Zzt2ZnLbD2PEzzn5kpDMVl8GZqyjAs8cAPwyHn
 IAU0ribHL1TZKT/Fcwor8UXIG1eCJW3CDLsQoUQ8uOO1k70xLlBbuu7mj
 Xds7mrDxn/uQFIqrNCBkJ7tZqMIgUfcczcbR+sJHF35y/uZfln876HUmD Q==;
X-CSE-ConnectionGUID: VJJiG9YwStyuCGDFgxHo/w==
X-CSE-MsgGUID: 24sCsxD7TMG62rTvLZ7mQw==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="54726725"
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="54726725"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 11:01:55 -0700
X-CSE-ConnectionGUID: sjr+eglwTZ6V8laOJlkJ+g==
X-CSE-MsgGUID: egsjrqUvTTOiKYez3oG0lQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="124152082"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Mar 2025 11:01:56 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 24 Mar 2025 11:01:54 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 24 Mar 2025 11:01:54 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 24 Mar 2025 11:01:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xV3outZFs9xS1uyRQ9QtME+pRd2Nsl84uJ9JH0tlFTt5qAt9ubKQMQUK82qT/6H/k6DW+2lrWWoNGynLP6yrqgSHHJI0jMFfCE/r+pnG0TrL/BbrC96Igjkuk4cxt8mXBXhc6HQ4ZmMxx2wgMmU8x5xyAMLqra0bUOvQJ8UoWiFtE8LHKFqtQpiy5KDipLSrmXDtDIMRZDmmV2eCkj8TjXlKaYC4JCYYnOm4Z/V9QKR8Ls8fXsaCIl+ql3GksAb+92f0QhjzlDggZgh5HKSjx9dQFIXak4SFoiZT8J8Z9TpI+Qrtb440ij8Vtjc/pfli1jrow7mcl711bv0WU7WeiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z4Gk3XJwXcjuhNxUhJ8MmKwzddzVg3vJK6He2j9U91M=;
 b=iM4kGJ64O0J9yrkA3j3kG3mdQVLnHc6dR0+ceUgVfNW9yPb6lvS5TJLCVwuQWt859vZugVaqOCZNGiKiNY6XZyTQoPW0J5VDjspm7z+h4/4LSdb845WbdBLKyIANluh+0D/TtfYK4dmfqb+iOKlxb63Sv+bqzYrpiPONA+Od+px/Xs7xbjyfRXvrWDKW06K0eMimXl1ARPO0gxrnNP6exd+czYelWvKJIvLbV4ZiWqmpJN4FgsdVs9PQm6BNg0YoDhNUe5S0QnXzZ3LNbPpCZADtWNWF2OwjU3CfVR+W0pNGJK0pAzahrUuyo04x++/JEqzpf+JvSt5jvDXewPT0DA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ0PR11MB4782.namprd11.prod.outlook.com (2603:10b6:a03:2df::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.42; Mon, 24 Mar
 2025 18:01:49 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8534.040; Mon, 24 Mar 2025
 18:01:49 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 2/2] drm/i915/dp_mst: Fix side-band message timeouts due to
 long PPS delays
Date: Mon, 24 Mar 2025 20:01:45 +0200
Message-ID: <20250324180145.142884-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250324180145.142884-1-imre.deak@intel.com>
References: <20250324180145.142884-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: AS9PR06CA0225.eurprd06.prod.outlook.com
 (2603:10a6:20b:45e::13) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ0PR11MB4782:EE_
X-MS-Office365-Filtering-Correlation-Id: a352b430-fc04-43e6-0c4b-08dd6afdf2c3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?O3GLPdyiLhK/W29meetNm4++wF72pI9Q3XEenOknXZYVw7pYoeGgY8Gthc2h?=
 =?us-ascii?Q?fANPpqq2nUGTVOWHpqD3c6BsajcN4lH0cUeqNF29t4HopPwy35g8ukr/WqZ5?=
 =?us-ascii?Q?CI0Avom6MNrqPA/npi7dD/iSrzIBCy4T5dA1316YhqsxL2b8eCqUcwcrW27K?=
 =?us-ascii?Q?It3MwM5z399HPBvsD1Co6VN77p1vh5lz4gn4dsUKgOjrPjd+JXBwOLWBrFDY?=
 =?us-ascii?Q?Rn8s7nhUDPA8ra81JQywpzMASLj4swCf9alXh/uJMOnOzVNKthWSmHAPuskD?=
 =?us-ascii?Q?NaqfR2q64zsmKEbdYCxgI6vo+TEdagfHD5eMsCiK5UreZ+X4AgZaxZPXGa6t?=
 =?us-ascii?Q?N67NtIS0ImOudLMxzP2hfR5eLSyrrBEaKFzSrBS7dTB1JqM54sKmj2NxfLCk?=
 =?us-ascii?Q?qydqMzc7Ufmq4I/NeM124lw3qIKQ4m1wSA7a6qdUuzPzQW+3nMDC6LKQ6BFt?=
 =?us-ascii?Q?wVmmTme6zwV1pKTASwZfrFy82uQAEqF0m2eKfrs/DZm9t4dWoWK1D1+aa8yx?=
 =?us-ascii?Q?6JC5vwMq/vD78b2/JZrlX3Hhi06mrglA4wbj/YwQMSczrXSCdo2v92aIVqsp?=
 =?us-ascii?Q?eIB7j4R7lN6w4zGEJrN6ZDQ8aVOM9ukMLkF90o4BmuFq8GssF2vH/hYOO5a6?=
 =?us-ascii?Q?Ngsy4y+derNvz9BoGdSPkzHkM83BLdzSZYxcSlM8qpVv7RWker9Qu8tdVB1J?=
 =?us-ascii?Q?g7hvAGvwUFKSIqKRAEFQUfhxdmoA2VOcBvopuenu4ctD0q09L8BCqKi5salv?=
 =?us-ascii?Q?v5I2L8rBilfM2ZMDlg3faX168lnwWpho1rsabGCiVOUQN4hiEv0FYDq9zd94?=
 =?us-ascii?Q?pveU/agypAk2mLXAyjwRcmySHrBMKeiT7Pi8eL0I2kAA7fPp8yBnoD829qTR?=
 =?us-ascii?Q?xQv+1tY/b0/2QRu+Z23gPxtb0Jc295GpYqQMuU/TSdxzztG1s5IrMGvBprkc?=
 =?us-ascii?Q?tsdPraZ0O4D5jnhrOo7tD2lbbAPb/dRhbsFrIwW8JSzeMRMItusERIIfXjHk?=
 =?us-ascii?Q?IBraDQaDNhFpdd1OlPNbjrBOTUx5RTPwsgaMnt97FWReYL9JuXBVT1Np8NRq?=
 =?us-ascii?Q?zZNpUvU4VvEEgt/KP4E0QBq4UPtR6faelU1tqjeSXK/9bW2dASI1Ea6WjLdS?=
 =?us-ascii?Q?bL2sqTbXmqY8b5yVY589IxbibEx4t/yeRmUyM1fMmXBmKYHpr8qDex/fmh/S?=
 =?us-ascii?Q?5QI66zrE4UlJcpplP7uQjlyVKAjZM3H97u+BqadLkBAzVSuuUHc9etXeTVnR?=
 =?us-ascii?Q?jdAJcV3CmhLTgVXhogqwcxGkwWgnqwMclLYXBFsARFvzgsy7bNUtY9umEFSI?=
 =?us-ascii?Q?XtgEhNIl1Xn4YBFDCXjphuDDbNUd1He1OJj6Fs9TNuF7n6/2x8pdSo8UsDno?=
 =?us-ascii?Q?Uxaf4DXFGPmqy2sLky8pbGwRLP9hrQS3RwVkf+cGZQBV/6GuMw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Ankn+RFSpKZMjaWA23zenD48rNzpE3HsI7ZlUO56SCwxhAotvP15fX4dclJh?=
 =?us-ascii?Q?XYUCCaIXS7yi7eMPY3r79t+dR0qm7shW5HGgDbPkEixg34JELNjwOMWu1hBH?=
 =?us-ascii?Q?uWtyoszjvTbRHF4byfUJ9zIL3xMejYEZ9WZ+lDpTtUFEmOi204GRs3l4mJjr?=
 =?us-ascii?Q?e/LD9US39zU0Q+dhSLoWNeYFEl8PrCbNTAG6iFmvBlmHIMr35XMRJ9ytJ/JN?=
 =?us-ascii?Q?FC2WEPKjv6kGbFLtnfzO+hBxHhNQCyVcjWWpFhxiq2+GXMW1rjHf8TrJHv79?=
 =?us-ascii?Q?nTVf/KHELtOGuNfCxvuGK2O1eA1JFu0IfOoVqtBgKC2OJQcfQuAp04rRPsZq?=
 =?us-ascii?Q?trshstqo7pmQ1aq43uDAauidP1sYfs3r/NzBJzU13sNpe6rWrCPNbK38pTfp?=
 =?us-ascii?Q?n0ti7jKsOq5+C4/hhmJwygfxrxl1Xzaonu0vx5oa8R8d5PFQZS1/FQU7Abm5?=
 =?us-ascii?Q?aAK0HblQiNEVMoBRxZLStRhsMjXGLJD9ep8AphwA+9iA2cSMC8bncgnNCdsW?=
 =?us-ascii?Q?aBI0aI/fSbXxniF42IDsgcM+suFGAeBah56ZbuqIqVmfGY3zGt1d6WjDwIUB?=
 =?us-ascii?Q?NUcanNLq/cXEI0ib6sTLcg0Ch7kUrukEto0bRmWq99SPrHp1ccLNA2HbWean?=
 =?us-ascii?Q?ik6+0Lcn6bsBpDqL9io6OFWBCa0eveShn6sGIa4FUhpwCoZXmG9cSQYEWj/L?=
 =?us-ascii?Q?zL89ElpQJIAAy+KBwfhQKvVd+t0B8Wuzf1N7C0QQCagW75jZSb45t4R/Z/HG?=
 =?us-ascii?Q?HgocDD83q4W7mtSRBL6TmAbLh79WfXr4LEQJOwHSy2/ZQSyLXA5VyXGjAC+7?=
 =?us-ascii?Q?DH2zn7FEvlw4H7SzEhwKY8zxXT0Y0LDB9WKhqv3edc5RraqdkRt7+5rgCcj5?=
 =?us-ascii?Q?W71HpLcuw5YGUggVlRL9q5NfLFw2xMh/Lu/L1LtBgPEYhd5YzvMSr9c9z/Tr?=
 =?us-ascii?Q?IUbpgCdDSaon23gKiNciHri9zoamMQsbWshc2XffW2VQBwxXz4flp6N2dHFG?=
 =?us-ascii?Q?lWG/2YCt5zk1PYG8AAKSmsHly2CJz7RLqjeRDrwfrQkJF6dQNtsGPq1l3oe8?=
 =?us-ascii?Q?yp75bDJT82+Hvxwq5zNwi3paZjerWVQvhTNXb+fCcLUl9uaNowAzWiWCTIe6?=
 =?us-ascii?Q?v4I4AIpxgZwTHxQh6PQ5OFc9DPFwEM78jqxDb5Atp3ZKNgu/rGX/dVz8flwR?=
 =?us-ascii?Q?mfFoBrZWrLum47HH1yBGEAd+7QSdubqaO30fS14O8eaSwY16qYkgiSlkIVfe?=
 =?us-ascii?Q?CbohfC3+3oeNEEGtdgjfS6pK/tq+mim5reYDu6w1yLMZGQ3xtUwOX5xihKin?=
 =?us-ascii?Q?oamhAXh+8TeW3Y7E6lky4ObGMo86DCp3qgB1218SpNqpOS/RWSocKpsJlwSD?=
 =?us-ascii?Q?fnhcS0uwX4omkoo0G92la5pMZDCtOSo5fXpImCJZFRITTynu5+/oufK574KS?=
 =?us-ascii?Q?M9fcRQAvwkQAQ/5tgkm/nZ21oO+f84/NbMj3POJtSvxAtdvUi4y0/7ss8NRy?=
 =?us-ascii?Q?qSUW0lfr35ltRrEma79wIeIL9xMGN+37EC+wyikGygmzTNcd1YtPhDrsnTd3?=
 =?us-ascii?Q?lQtZuGw0IEn9eUwr4F0PwvPx0nAP8V3hjz7YV99j?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a352b430-fc04-43e6-0c4b-08dd6afdf2c3
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2025 18:01:49.1620 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cHNUzquzghQNpSq5ph5Kteh51p6269LDPjx0CsKn3uOkBaFINgM2Xx50rxH+g3srzhOhE4uzhoNdT/hL8we3Bg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4782
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

The Panel Power Sequencer lock held on an eDP port (a) blocks a DP AUX
transfer on another port (b), since the PPS lock is device global, thus
shared by all ports. The PPS lock can be held on port (a) for a longer
period due to the various PPS delays (panel/backlight on/off,
power-cycle delays). This in turn can cause an MST down-message request
on port (b) time out, if the above PPS delay defers the handling of the
reply to the request by more than 100ms: the MST branch device sending
the reply (signaling this via the DP_DOWN_REP_MSG_RDY flag in the
DP_DEVICE_SERVICE_IRQ_VECTOR DPCD register) may cancel the reply
(clearing DP_DOWN_REP_MSG_RDY and the reply message buffer) after 110
ms, if the reply is not processed by that time.

Avoid MST down-message timeouts described above, by locking the PPS
state for AUX transfers only if this is actually required: on eDP ports,
where the VDD power depends on the PPS state and on all DP and eDP ports
on VLV/CHV, where the PPS is a pipe instance and hence a modeset on any
port possibly affecting the PPS state.

v2: Don't move PPS locking/VDD enabling to a separate function. (Jani)

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 21 ++++++++++++++++++---
 1 file changed, 18 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index ec27bbd70bcf0..0496061203fbf 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -247,7 +247,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 	u32 aux_clock_divider;
 	enum intel_display_power_domain aux_domain;
 	intel_wakeref_t aux_wakeref;
-	intel_wakeref_t pps_wakeref;
+	intel_wakeref_t pps_wakeref = NULL;
 	int i, ret, recv_bytes;
 	int try, clock = 0;
 	u32 status;
@@ -272,7 +272,20 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 	aux_domain = intel_aux_power_domain(dig_port);
 
 	aux_wakeref = intel_display_power_get(display, aux_domain);
-	pps_wakeref = intel_pps_lock(intel_dp);
+
+	/*
+	 * The PPS state needs to be locked for:
+	 * - eDP on all platforms, since AUX transfers on eDP need VDD power
+	 *   (either forced or via panel power) which depends on the PPS
+	 *   state.
+	 * - non-eDP on platforms where the PPS is a pipe instance (VLV/CHV),
+	 *   since changing the PPS state (via a parallel modeset for
+	 *   instance) may interfere with the AUX transfers on a non-eDP
+	 *   output as well.
+	 */
+	if (intel_dp_is_edp(intel_dp) ||
+	    display->platform.valleyview || display->platform.cherryview)
+		pps_wakeref = intel_pps_lock(intel_dp);
 
 	/*
 	 * We will be called with VDD already enabled for dpcd/edid/oui reads.
@@ -430,7 +443,9 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 	if (vdd)
 		intel_pps_vdd_off_unlocked(intel_dp, false);
 
-	intel_pps_unlock(intel_dp, pps_wakeref);
+	if (pps_wakeref)
+		intel_pps_unlock(intel_dp, pps_wakeref);
+
 	intel_display_power_put_async(display, aux_domain, aux_wakeref);
 out_unlock:
 	intel_digital_port_unlock(encoder);
-- 
2.44.2

