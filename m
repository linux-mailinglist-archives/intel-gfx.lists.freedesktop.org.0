Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D781BC3ACA3
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 13:08:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68B4510E8A9;
	Thu,  6 Nov 2025 12:08:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ybkxpprm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5270210E14A
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Nov 2025 12:08:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762430936; x=1793966936;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=nFARJmqZImn164O3KF9TM09rtyfwxbs3u9U+SXHpCww=;
 b=Ybkxpprm34qM/xSm0evsJJF3UiYljtNNUpPiRTSRzQEqWK2o99ql772q
 sSX8/WUoOcvVKnpGgfFtN2SfqZgsEP7oyZC267+mwvMqYwvF/c9k1bDbK
 G2rdM/WXA48bJHBBt5AtJWkiR0W9qIc9y2TzdQym7OpWtNwqlgE9pk575
 uLNouEMqXKRGxU47ZZKaM7X2J0qrkceSa11/K5MgvIFcmV+XNWuBBlxIQ
 NcauXQvR691A2/rFELJzgIMqnk4IRctLYrV1CEB8Wxea+/GiDfZTroMJq
 9/Ah0i9QWqTIQ3M5rM0+GbdOCJWJhvhyq8LLPnl6K9ZQG5OU2z7VRMl8J A==;
X-CSE-ConnectionGUID: DxTW0pwCT/iuXG4NFeF0hQ==
X-CSE-MsgGUID: x5ZERXCkRjye6Tnb8CfBqw==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="75915939"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="75915939"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 04:08:56 -0800
X-CSE-ConnectionGUID: XNidCs9qTJuSWI63/UuFFA==
X-CSE-MsgGUID: nEvLP0NtQ4SKqoGJPZ4Tqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="188186450"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 04:08:56 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 6 Nov 2025 04:08:55 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 6 Nov 2025 04:08:55 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.50) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 6 Nov 2025 04:08:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gz/tEMjukY7RVhsbjQBT6motAA9zgpupJC7Wkf7gH5AHmsaTC/xJTIt9M0omzOd1gR6B2pDXugJNsyc/BCZ48R45oTAXajfg+qJGIQ+CcuS0DJ3dw+TSl6dHJA0qy/tnhqkv7bsgtwvBYjJFWhmyN2L1mpCiA715L5PVLyiviPcDEaeJcZYV9KvKlprbDd+dSf8fB9/SXqhHraOZeBQStj6ZhzY/WqHTKk/XpQkxGfRjGauLlDC70ciuQAZg+n8qTruDA0McdePnmiRSSGz0aI1SCJb09y1Cq6Ytpvbivg7lH+7eKopx19CMjRDYqR41GH5uXKTOPVpq3hK+y+gRsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=86XMZc7PB7yzIHUnCD1e3575cK6NrnXIETpw2cxWyQ8=;
 b=cI8jQbeWElQ4Rj+EeZ2oz2ZTtEfiVaUd03VP58+tZG12gGQc3vBVmtol0++NvyM0ODzRstO84UqXDa4AkT9CZ5+Bxm4mc1G+mDWBIzfePMl2gTW+PQbHVs7CIyuSr0st82G57/uB62Ut+hPcDo07pxQf4EQG0l3LGgfJItvJf9X29J+JxpzmQPF0NWCeyqPg00dnGFNaLjZXPbXtvUilMrj7YMly9+46rusdJB1OJYRiOCsRqF2Hwjvz0RjFDZ0URiNCisR7oJHQq2YUocFdpd1j+aBgVHQaz6Rknzdmc7BSG7qXSSn9ggI2XQwmE+OcnlyQOM/iknoq1CVh9zRprg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by IA3PR11MB9135.namprd11.prod.outlook.com (2603:10b6:208:579::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.7; Thu, 6 Nov
 2025 12:08:53 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%3]) with mapi id 15.20.9298.010; Thu, 6 Nov 2025
 12:08:53 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH v4 0/2] drm: Miscellaneous fixes in drm code
Date: Thu, 6 Nov 2025 12:08:43 +0000
Message-ID: <20251106120845.2821499-1-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO2P265CA0094.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:8::34) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|IA3PR11MB9135:EE_
X-MS-Office365-Filtering-Correlation-Id: d9382069-71f2-4b08-7f3a-08de1d2d40cc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?QF/+Keh8H+W8XLgmlvE/m+Nnp5Ts9PBB9T4PW1JLA6bhTfyFJybruZVs8eff?=
 =?us-ascii?Q?T5n8Ou+2MRNxR3xcCWSko2OXk2Bwqvj/Lmd0gyucGhA3rlR680qd2gJWERto?=
 =?us-ascii?Q?sxVGfIxdssl1e0ye5fTXZNOeyxGT9RCKP3BeNc1gvr0tiGcaYKmd2Pdg2izw?=
 =?us-ascii?Q?ggj0gmVqn/ubSvxmvlrgCyN9F1xJUONoakkcaI4JBwAYnzcHUlIwWpsjx6fg?=
 =?us-ascii?Q?OphQfi6V7y62Nrmn0+aB/ZolkQV7v6VCyiZ/AZqdeLH/As0547yDHSkVPUYQ?=
 =?us-ascii?Q?E0m9Zihh1SrGjUdRc6l64EfNzx1fCBTzWDQvPUVw9AIF+21WmQ1r8rOYd89Z?=
 =?us-ascii?Q?ZVeKcvkhR1xhB502fhMcUdCgsnjbMFWjQ97DkhuSAZefZfxiWld6+v6WGYx0?=
 =?us-ascii?Q?U2CyGst3c64e0c5s3Tvjg8gGGn7zYspk8X6ercg5AaOTZaqyd8UUGJqD1wx+?=
 =?us-ascii?Q?yAwiXQifhBLSaCXNdD1ZlYDnXB6kjTnCDXDT/mVpesg6azSAWCxXdyQE3Cl4?=
 =?us-ascii?Q?bMnplDqrlmgO+GoNHXuMDHj7HQr6zzmXVJQv/7pLnX6xrreZ46QZrwleG29E?=
 =?us-ascii?Q?cb7mhKwgLHxh1T7QVcCUUKgSLIopRO0UwHLNC8PhdJ2EkmYOR5IaJuglQ+9e?=
 =?us-ascii?Q?Wk67OR+Qym1bswTcyWU0Xfz3DnA0qL+zJ0FnwMrdv2Q4uK5yjva3R02xOIa7?=
 =?us-ascii?Q?8LeDIjaUZZXJqYgLKVJYdArBZC+2ZK7h1T3gKqVmdk/jPR3yLJ3m5DJlT7ls?=
 =?us-ascii?Q?B+EVITCsu/3Y6yqqN6OTWRMuM6Dxxg9du+crX99XqS9OZ+2a0ANtNeVgeG5O?=
 =?us-ascii?Q?IwrDVJ4f8wi/PHz1vun4QradxyUcnCfHxrBdj3RcSGuMzfUG4H3N4vznFl9C?=
 =?us-ascii?Q?5pbvpRyk7yWQXRp5RA5ZOBh9n5H296xcqsOOJv0rn+1O3jcRkpGegYH9g5xF?=
 =?us-ascii?Q?mOQqjDIJR08mlACe7LAC9gxJjcMk+8cgWvaouu1AfZJLQ71nodmVxm08hfTj?=
 =?us-ascii?Q?V0LxviZ7paJfw2U31OVAeNYHvauQOB+b/Kl9Hfwc14Jvghg7Ks0pOvQSCxzm?=
 =?us-ascii?Q?qVm/A5YaMv8Goy8nIo3VybzfqN+2cJS95Bl9P0udA/KXtfYHiWS8R3f0BIz7?=
 =?us-ascii?Q?yrgAFqU5J9UPZ2P+SfodSszv7b5hH2/xEAzNO1XmEsD/I60TkSH4bp7MfE8p?=
 =?us-ascii?Q?aWxsmq4pfme2cD/pEGU6NtpU2hs/ooveaYcnBFaWv2G2zwF0I9c0buT5kj/l?=
 =?us-ascii?Q?JY5bGQBROCrCeSS8gYsX5qXu9t8R0DBLb/2sKx5dFmmuDt4tCH4GWFUVzCPH?=
 =?us-ascii?Q?k1MqvuTlIohsUgcC4b1DZE8ea22nGSF4LPIHQFY64zCOnaP98s/PdST6KVfy?=
 =?us-ascii?Q?ojc8IKjkULl/x5ExYkoBOI4/glQPTh2kvoucQGeuaOgYhweFZMA8unM0Pe7Z?=
 =?us-ascii?Q?oyqNDsWc1/2QvtG1WDUXvuvy6QqKtWIG?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cG6IqHLTkZRvBDlC/wxyV4g5Dtt8AhgQNyYhUGc2sIkyHc++v7La3poy2y74?=
 =?us-ascii?Q?OGoakQYF0T19tQ2f+DCjsc4VIX17C6ZldUMh1Knu7pVcHQ4AMYhsZYIjrM94?=
 =?us-ascii?Q?3kmg0K7BVkkCXJV6qNYIsYSEK2oNMnJka340gnZ0VCGWawYroO1sExvNoJsi?=
 =?us-ascii?Q?DhQ9+FPr31UojlZsnJM2Kla+ljyOiNTxAP7/KR6mjg5pgxrOmJsoLTNzyfyL?=
 =?us-ascii?Q?Xkml/Rxcv+tUdm1fd0UxKFAW7GsmffC/3X+4rYcDzJpuhJyAFX0zzJarCMfu?=
 =?us-ascii?Q?XIhRz/ZpmCYliAdeRk3fl149q38V2K+132MkkhJaZVqRtMs1qA847vO9RTwi?=
 =?us-ascii?Q?lPkyJBvURQECEhLGAXJ4uIXE8/gZZ1sp70HxvZ/cH83BDY/75YI/xJT3zgPU?=
 =?us-ascii?Q?puOrcA4f+/EfIdrvKzmnCaqw4RUOwblei5yAroAtfDLaU2E7cZJAWSeLStxM?=
 =?us-ascii?Q?vWyvJM79n6jpZOL/DZqeRCIzdidBR1ao0fm8BzL60xiD8nR+PHAyyldS5d5F?=
 =?us-ascii?Q?fZTDovOwFWlhZU/CKrwJpPUHs/Jx2e2eAzEARp9vy0Xhf4Sj1yig8D2Sn1U6?=
 =?us-ascii?Q?S23A2YhA/43S9Nttewv64UnTStk4qKRQHQY/MMnQvNTA1AugNgbl7vDMhwyb?=
 =?us-ascii?Q?zRE+d7zWV4UpGCzH4DShJhzbCWh4Cgd8Nvf8pJ5sCWhmBemsU2FNEBtat+vq?=
 =?us-ascii?Q?5Szj0bf7ywRnkUToNUGupXy0IQ7uYzCDOxJcmN+bQcaHK222Fp109iFZPxjt?=
 =?us-ascii?Q?MhSUeL9AjFMxfX+lNJoXV8npPgS+qP3NA2BW0aveX+px+ZgkqGBAWdbmpPox?=
 =?us-ascii?Q?gcd4o5EwCjBVOj0V+O2hr6MSDK8voVF+Gzn1Of9LtQyd4gJtsEacWallEH6u?=
 =?us-ascii?Q?T/iRXTSHgCwGnSmxUxoqAZeSvTMewEfqJgFaQtxJN3tdYkeQq5IqNXeGQE+t?=
 =?us-ascii?Q?3wuKhsv/DYuUBtHl+us7uimxCMtsdC8YjtdahCJQtrZsnDLYNsyvx1ntgCyt?=
 =?us-ascii?Q?g7BHKoGoDtVFLyMcO2jk9rHUA9p9T5F9OG72u7OGtiHfRngYQFUuRfsOoAHZ?=
 =?us-ascii?Q?Uz1cX0y2qRRLfRoNNUtoG0CkX7r1LJraJA4PAmIRODwJDfHvexHwLz0pmo3V?=
 =?us-ascii?Q?LQd/9WIS122qMa9S+t9z+p4vtaRT8c9A3Vnxyt5t1FihqRYv1Ge3G7t6OUcK?=
 =?us-ascii?Q?13gbfAo8/UHYat/Q6cW13EtG/pIi7x8wkEld2nxGChwQPRLjD7eb10/iFjQ2?=
 =?us-ascii?Q?nTO6yhP+OdUi0YExeNy8yAIZFzeMvH8YoC2VFTDmwNJrbJjAT7LuhfaMCCtk?=
 =?us-ascii?Q?LVI+cRkDsegdAX/ze1kXjdt9WqsWvt/FAXh/Jyrju4cd4UoTDACXlH+JdH3r?=
 =?us-ascii?Q?XBpmmhNPCYgkOlwO7D7Wbi5kUMHWTEhL3kYriVx67CidDDyPpWnNU7WfaZr6?=
 =?us-ascii?Q?enrTz8vG1BYU3ZxIqqfu1Q2OMYjdxhOlIUbf4GVX2PKdUngMr+1zrfBGL64z?=
 =?us-ascii?Q?GfXJ+fTG8M8PbzsR3AsT24EnzBx3fQiKXEbgpMEH9dleiJSEZ99CxKVPClJ3?=
 =?us-ascii?Q?Bzfv+HOeEduEe5Ki9miAvJHdAtHcTkDCq9VYGjtsQPaxRei2Nj50ggU4Is0s?=
 =?us-ascii?Q?mQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d9382069-71f2-4b08-7f3a-08de1d2d40cc
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Nov 2025 12:08:53.4085 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u2musWJuxLoknDgQnziFQhP0QuYKXvtOYr9pBdu5cDJJkWF9N4uwh+Y1f8BFF/Dx3vm3LFlQUmSzxksBzeLbA1BUaAImZpPtO0LxT6W9cIs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9135
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

v3:
 * Change the casts in the last patch in the series.

v2 (Jani Nikula):
 * Remove i915 patches from drm series.
 * Split the last patch into 3 separate changes.

v4:
 * Rebase and remove unnecessary patches.

Krzysztof Karas (2):
  drm: Avoid suspicious operations in drm_fb_dma_get_gem_addr()
  drm: Avoid undefined behavior on u16 multiplication in 
    drm_crtc_vblank_helper_get_vblank_timestamp_internal()

 drivers/gpu/drm/drm_fb_dma_helper.c | 6 ++++--
 drivers/gpu/drm/drm_vblank.c        | 2 +-
 2 files changed, 5 insertions(+), 3 deletions(-)

-- 
2.34.1

