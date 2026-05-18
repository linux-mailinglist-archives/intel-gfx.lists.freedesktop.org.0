Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QPOfLAf3CmpZ+QQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 13:24:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A5056B7C7
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 13:24:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C64D210E7BD;
	Mon, 18 May 2026 11:24:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Lko5bpXS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7161310E7BA;
 Mon, 18 May 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779103493; x=1810639493;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=SvrVMncaE4Xj+VGspcJpEBbSo3kWXOeyzOs0ZFDFNQQ=;
 b=Lko5bpXS8MzO/rfI8q0FUvIu7ATd4Qf+DUVO/flVQj5F7tT7luWNZOt5
 whSc5s/H+Y+jZBUatDSdgtbc+8RqCyJyg3hNHjXY4M+hYxk01OIg54Y5S
 2y2wiYoq40S5v/atfpBq9P5PkDxXaAW36ygFiLIVFDv//ihzZPA9uyC/i
 ZkzqTnz9tq8u+I+QY3AMXk+XPhPxp/OHtZ1ubcJuQQC2YjolTRItwodfp
 7VXK/xgnIO1DkwdnCNQP5OjIbmmHO0In618etwUoMRJryBJlG9W0jhuF1
 88ko2YMLjfSNaxmgYi/StaEVBYR3bm8VpfhAx+oMmpuCj80vVDzasK+KW g==;
X-CSE-ConnectionGUID: oXO0gmR+Rmms6/V2e1m5OQ==
X-CSE-MsgGUID: VQqISvGzThW4MXyPTjY/lQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11789"; a="67481845"
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="67481845"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 04:24:53 -0700
X-CSE-ConnectionGUID: 9gXNiBo5T+W8ObTSYlRlrQ==
X-CSE-MsgGUID: A1EaXevFRJWHLZan9tLgGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="269739359"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 04:24:54 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 04:24:52 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 18 May 2026 04:24:52 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.26) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 04:24:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AK/syKnjeZqBxXNT8J2V6JnFMzw2+s8oXwXHElUpQ7s5KFdTHWZgJSz+eG1s1CYqXIXfQdikoUXuxahFw/4GNDGl6hjQfrv2iEXIlPMRReI/i7HpAdeJiYI+pNfPYzpatfwaF5VszclOvF78DU0wrGbVvyCnxUmI5CU7sISStrqgZmR7UyM9cTEdQlfj+hrcaJeoUBnf5WePAaM9K5w8lv/P332Af9SZO+vvGg3Ir1Yjthw5k+azZh2kCtbf4uiV0R0WBwgO7LxhTKtLUYj8ZAC/A6y0pRx7D63gxz6XGEDZiKZ6bE58Ruc7n67MiY/vnsH6brY7ipS+muFrIjPU3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0j4KrMh2kukiKqQIi9YJX4w5N+0B5aiFdKjCxRwYbWQ=;
 b=DzbB51RBo5eqdGuCPBf2HCbm+I7V5nJG1SOKlPJOZNRIWNOayVSnHiJgHEWNDNtidxJTELAmO9fqez5yVbSzvcbtNN7KiJJxSGLXKzjPZOeHVz6sow+oyfy7nGuykUaVvNzqFqVi/JpfWK/Bb9eDudRZ1+icfvCK49IPAK50uHXMVAU6vS6Jd8jAmpemR0MIZijXRTBT5OfgczQ+SRMP638Ab+t6UpC3TnsI6fO0snAtkRt0AEPG9H7Kh/MoCdUpU2C+pQ0+1ryzhvTL0FD97SZQWAs54ywlZ7Jzd0/L78XnnqWfdA0LCHltklYGPxfIBg9ty2Uo2MGwTqKrx+kQ4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by CH8PR11MB9508.namprd11.prod.outlook.com (2603:10b6:610:2bc::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.24; Mon, 18 May
 2026 11:24:48 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.20.9913.009; Mon, 18 May 2026
 11:24:48 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 2/5] drm/i915/dp: Reset link params after a DPRX capability
 change
Date: Mon, 18 May 2026 14:24:23 +0300
Message-ID: <20260518112427.2460725-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260518112427.2460725-1-imre.deak@intel.com>
References: <20260518112427.2460725-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV2PEPF00023A11.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::214) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|CH8PR11MB9508:EE_
X-MS-Office365-Filtering-Correlation-Id: fe384071-a4eb-4af6-4ae7-08deb4d011c5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|22082099003|18002099003|56012099003|3023799003|11063799003;
X-Microsoft-Antispam-Message-Info: EDtHcoiLQT1fY2ESwNmbM2wkkLosM69f+G7zT9YiJPmo0W/FDEbA1mEmtIMmgL8fXuGEiFHsvDWO9ozBR73O54Z5uNx7YNd/1FUkQuej1mpCeBMCy9ySZpfei0fDbY5bEBBWjBBf9N97AuGDuUvFVESR3Toy9pM1Vr7CymuiNt4R/NU/Av2X+bZURFKcVHLsYzAYpQCnWfvtXTKslBhUe3MB+U5E6ar5HtGX3CXzxUnjAFBT0K20wwWdNzK1TVPk+L20IvlJ60ZoA8A57C1o/UD+KJOJPN4VHwHkt/csIw71pK+cFq8Uq0ov9XifLntjSMo+EZsVlYPwo57sv1pOEd40nWAabWAhGsrYi5UKFJxtD9oFXTFngp6prcBwoyefvHs1hNgDyPo1SuGMZh1VkJLpgzuWvJ7VYEUEyIx48W1ImtC582nAp+L64yBTv1WVKw18XKlo7rd4Bo4yq6wlusJTR4s5tuW+LZI3NrIdTsCa8+1sLsBl1n4BcQ/15zAw9tRCRzRJ5JVHCyws0nn6vwyH4ViMo4SYOwG67AaLpPusYCJ9aINQcJMBzJ1yATAptdnwgZeoDOovFmXkmb+Sih7mAxx8Uh3hXU5kuRwk1245XoYPxF+0MQT4RFaqfGTxoOJCgWcM2SNoCg2bCnBE8kD5/xzCKEBf6eaV+mIBT5n1lPfzyTt65pJS8aO2X4wX
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(22082099003)(18002099003)(56012099003)(3023799003)(11063799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+OINh5YiqiWRh8u4x0sLSOlV2DsPzDPX2Om+f3sx7z+L8sIrp5q8D9WTYV3W?=
 =?us-ascii?Q?KHKmUxTbvmFxBCoBHao3wgP1KrO2bnwpYjvMCBaHSEalFYXk3P06FWnEGwSl?=
 =?us-ascii?Q?XJeP2JYlyI/ciVu77GoZTtZCmkMhaTmKzFlUle22lyUlP8KcdUq9M9YLu3aw?=
 =?us-ascii?Q?lqyPoLkzs+GMrRAC/j953OVENgR38lOOgt7BO8gD/7AvWFu9vbrJ2F/A37y0?=
 =?us-ascii?Q?rxxuFXEN+gD4ehi4MC4ijKOjdV+FjTiGSY4Ug6TRNQwiAjoWu2pqSqPcmv3/?=
 =?us-ascii?Q?tMn21+px23ie/RL5Me2yHtx5E6XihRqM+dgk77bvMV5gXCJ6VmNqkr93tHAq?=
 =?us-ascii?Q?YTDqS4ajX1iks+uLCYhM8hUhdPWnfGWWAcdKpScbZ1kHKULZ/WhE+WF9O2mM?=
 =?us-ascii?Q?MxjBr2UDAhuJM21ui8/jN30wZx3gjpAJ16y5VnbZRyBalIzM3hFCYsE6WQjP?=
 =?us-ascii?Q?kGbvcxOfVYCQ+UdaxmjFQmzvdk3DXr4e5uf9IwgbSM2ZzNBzRiwR0OB82VOE?=
 =?us-ascii?Q?dbcqLhdgsqWZCh9L0GvLUxE7WjNDATdOfnrYmvZmgCUzhoG1AmjrNEKJ7Vvx?=
 =?us-ascii?Q?k+Tl+S3NhaL7Wf8CYdk4yEnnBxJPbBQlR8uZzTLkKwD3eo86e4hVB3biGAzG?=
 =?us-ascii?Q?/zBqLCP2BJbgrQ4/EX9koZyAOCV8uonSkRBul+I2IEBOLBGnfDkEdcKuVtke?=
 =?us-ascii?Q?yKVa83uJ3atCDdWRZ4W816ZfN9b2V4jO5J0ShqwtmCBZpGqIX9Nhl50NVvLW?=
 =?us-ascii?Q?SeE3isCFWbnA4BHH9AONBsd7eN4nL3G81HUaazW0vTj7+dk9HJ/RtZUDOP8e?=
 =?us-ascii?Q?NwJ028dR/xAhRjCYkaOtOpniDS/aVqRJaEFImi4ctzMlXeJtQFfVH3st0Fg/?=
 =?us-ascii?Q?Q4gRmJBgZCWaut80iWuahUnGNe19fXh3/81KCLpxHH4ZRlOEqAjFyMQq1vNx?=
 =?us-ascii?Q?k/AMn1GCKAI8Znn0ColxOsiGVr1Gs1syuDCM6UZAMByK2qVhxTDI2IpwZNiC?=
 =?us-ascii?Q?oYM+v7oUNXoMhpM73w+/6UaLGTnLacdyRdyrfairIf6TIagfgpxZPoI8uABd?=
 =?us-ascii?Q?LBiMWhwQHp1vttrnyu6/PQoEiGg9dRCeLRg9AANWMPh3/Ey5E0dm9drRN1pc?=
 =?us-ascii?Q?2GjMlZt1554f85YZO9WO8uCSdTDpPLymvm2liLsyoh7V0mtrdUqDuRSj05YA?=
 =?us-ascii?Q?Z/zlv2wbPO2F+yXM8BcJ1NjFng+vRX5tJ10vnbPOqeH66yFdTt8nubcOTsZA?=
 =?us-ascii?Q?Rt50zFQA4KKTC3Piv71C2HDGzghYFOGI0zOmY+vSLya3ooz/wVb7dRcdlA1S?=
 =?us-ascii?Q?0b85EoYLyKsi+txm8lVdpN+KP4Z2vhSMPr6mdvfsLarKM7zhcmxAy4B2m4dd?=
 =?us-ascii?Q?Iqc744hnS3Ecfs8Humk0IvQzD5LbnrVkBipbXaNzYrTxYLRc7XQIchOqf0qy?=
 =?us-ascii?Q?wTpC92OO/iwjGYx9HNF/yuJCYKxE2SBck8m/gewdH6nfnb6gZdLT+eiQrITp?=
 =?us-ascii?Q?U8O7sQ/PhlJOCKyHM51f115rhjjHiQbIp+d/1BTXImYLeoPcOcgRces7+C3I?=
 =?us-ascii?Q?hiGsZv9pgcUwlM/R2bRWORgDHubIWwlDvLS9MJuqvUQrT/Vm3tr/5Kg5PM9U?=
 =?us-ascii?Q?cRdej+wgD8SYIG7ODE4GgQtW3bAsOex2tYotq1jIqTwmgZPz2VRPfVlVW2UQ?=
 =?us-ascii?Q?wTtIit9hO2qZ5wv1bIiU3vjKSTxz65qNCK+JR1h7yLm+VdYoaN8RUo7MDVSI?=
 =?us-ascii?Q?4UnRScDZiw=3D=3D?=
X-Exchange-RoutingPolicyChecked: jaL1GywrA6fUPGuR6qBHPcSM+4IYZMkhJ/XDqDDh7KKnva30vylfeOzAxTgH2ohbBbBpgfOWHZ8ghh29Sh/kwJdbjexztliCxQ/23Xzppe2e3WdnMJ3SZmBBMddnYHjO06MzOJgaQxk/ZyT9PHmqmrP1NPSNLQzEVisVzmdMXwfYij0S04EeOx67EPVG3L3f5sbCf1s/N8r/8tz7K2nsPa2weZnFb4S9g2p1FHhLiQzzTyiREI61KxLVWL6jukng6FxpYpYhCvkXhITiwOkM/RQKrgXy8A6kj7JNX6nzBIGZjWjmJ8Ar6xLt1X4DG0vDqxijTpY4MZP+da6FAd+hgQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: fe384071-a4eb-4af6-4ae7-08deb4d011c5
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2026 11:24:47.9708 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vfRRU5liQ3lHJsf+1EIjrrejlKsBNHSPpC3QR8VMYSWo3xgs3NoX7MRsLvhHE2QK8sKs/n+2dU0Qh0iyx4f71Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH8PR11MB9508
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
X-Rspamd-Queue-Id: 67A5056B7C7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

There is no reason to distinguish between DPRX capability changes
signaled via a long HPD and via an RX_CAP_CHANGED HPD IRQ.

Both cases result in reading out the DPRX capabilities and updating the
corresponding sink and common capabilities cached in intel_dp, however
only the long HPD resets the link training/recovery state and MST link
probe parameters correspondingly. The link training/recovery state may
contain reduced maximum link rate/lane count values left over from a
previous link training failure.

Based on the above after an RX_CAP_CHANGED increased the link rate, lane
count parameters the maximum link rate/lane count in the link
training/recovery state may remain below these, leaving the newly added
valid configurations unavailable for subsequent modesets in an
inconsistent way.

Handle RX_CAP_CHANGED IRQs the same way as long HPDs and reset the link
recovery state and MST link probe parameters in that case as well.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 13163dd085e91..9c530ef12b7cc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6026,8 +6026,10 @@ static bool intel_dp_handle_link_service_irq(struct intel_dp *intel_dp, u8 irq_m
 	drm_WARN_ON(display->drm, irq_mask & ~(INTEL_DP_LINK_SERVICE_IRQ_MASK_SST |
 					       INTEL_DP_LINK_SERVICE_IRQ_MASK_MST));
 
-	if (irq_mask & RX_CAP_CHANGED)
+	if (irq_mask & RX_CAP_CHANGED) {
+		intel_dp_reset_link_params_defer(intel_dp);
 		reprobe_needed = true;
+	}
 
 	if (irq_mask & LINK_STATUS_CHANGED)
 		intel_dp_check_link_state(intel_dp);
-- 
2.49.1

