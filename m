Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 746E986997D
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 15:58:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAC6B10E7AF;
	Tue, 27 Feb 2024 14:58:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UD01feVU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F2F410E7AF;
 Tue, 27 Feb 2024 14:58:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709045923; x=1740581923;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=XABrTomtfwUpcZ0Bm4L/4V6XGhcDWGxUstFqiYZFab0=;
 b=UD01feVUUiHkY/7nNJd2HjBjw+jSUXXiqOzZoX2Fh2ZHp/JohZkl/J0G
 OaWkeR9LXewo660LklbSRK8V1iIbktUZWme3fu+y6CzJqRsBdXn0M7hqq
 pJGFRJRJTGZcd8yDopCHPTK0qS7rG6e4vjZ0bgArzooc9/xH4AVHykSKy
 8qZM+yKd/L2p6uc9aDCIxVXa+pJSUr0fcePMXqvgc7VuaPMhreIn4y/Uw
 7dgeVO/ybMUvcGl+8NxRMME+eHAHlIfyUySWyuq+b1ix6HYFO25MhMN5V
 iKITBBTLw0rOfmwvG1yLsHuroKGs6YIUvTW0P2kCQ3/ur129W7fJRArYu w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="6337646"
X-IronPort-AV: E=Sophos;i="6.06,188,1705392000"; 
   d="scan'208";a="6337646"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 06:58:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,188,1705392000"; d="scan'208";a="37883382"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Feb 2024 06:58:41 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 27 Feb 2024 06:58:41 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 27 Feb 2024 06:58:41 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 27 Feb 2024 06:58:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SVnI60K8/XitVktugMyO45bNbjffcGnH+ETR0T1lhy6DxJnxKxVh2qdtTICyzKL96nANDpRZeeDrG7gophr3CElmUJin9rCx6PeC4ab1d8LeSRujk7zUXzCaRdVrBi1jRYl0w2sdTXAYOvSJGFpBgeuHdTsDgBdC5S/EYEhQ7yRLuqCfEQL6bMbwJBbHb020RdbEr81v3V3ZLJfF0kWLRrHN+aiyiGes4YuM6BGhYvxwmAQ9EthyY0/TYn5Vk0hRCdZIfD9YJh5YrfdGZp4IX478Vy2i/esA2Wa1lUu7OW+NtA0BJHtCzEiV6ZoJyuIbO2QabaUCEA0knIty4efiOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kiFdwJJwgIP88pDKG4wouGw3aazNfGEfhSDs7JIt2Bs=;
 b=NdAjd1i+ey8lpMVZ/Lb5b5prp4mUmgdlP6tlcS764Q7gZ6pNG0wM3TtE5k4P/a1InLPw6aVEts++5/+tUvTvTITpCes1u19YbFbCvZPePWcauRiTpdNW4/+QJXn1snkDSo4QSqlUka5Sfi6xGq3JsiuBFZkhcwEJ+kMu6oZ9ktanl7F6O5A7i2O4P/OOCz9n/UdX1f32UC3m6C4TI+rjOYMSgtgixCGhqz3RTv3QtSPyRTKQFOhz5ireeF6Nwa2pdrtkC+217OUZnPELpobzli4qWPK8ivig4JAfjYd8MrkqEYa7MCGE9nwzNZgjlmnMjnTRp1uVR4WtRbvkKwnmvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SJ2PR11MB7713.namprd11.prod.outlook.com (2603:10b6:a03:4f6::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.22; Tue, 27 Feb
 2024 14:58:37 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d%4]) with mapi id 15.20.7339.024; Tue, 27 Feb 2024
 14:58:37 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <vinay.belgaumkar@intel.com>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [RFC 0/3] Display experiment + GuC Display Metrics
Date: Tue, 27 Feb 2024 09:58:28 -0500
Message-ID: <20240227145833.490328-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.43.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR03CA0266.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::31) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SJ2PR11MB7713:EE_
X-MS-Office365-Filtering-Correlation-Id: 80245f07-f2d2-43ec-1291-08dc37a493e9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4dJ/54rzKzjyyL40EhGn5LUBq7jQOTiCbbHD/WX+/+ACzJQrMHgVSRsqaZw9Oz2mygyr4/zOkFlrF03AH2gcFDYDW7zobDfoZq+btNsbvIfC20VrQFlVZ9OJBiVHenmDwMaY4Z9kGkas5Ymxmz8F5d5VUJe0PEBCr40rfEOurx1gHnOxWOVKuY041Gxi/IdVa2ZhMHkbZJVA9Lu3kz+RPrfpCk53iHSYmbRia5+SaiyCFKLSvMcR6rdg90IJorvhVXZdJb1v7TeoyLNoRWllfiEypq967iOXLsZ0tb+qtqFKUG6wm7KdEZaiJfSJnXwBKdOWAkpFijvV1tdk/HtAK8XD7gcI7eErnrMtDqxLuYXXE8PbI+XiFBn86WkCZTouW5J4M/N7hAQoslMgKEZuyE7ln5mUGa/fTNRGmISjyeXZdpcJlMo3RPUk6T5t4v9+Z0e7Zk741euauyWvzu+mGLbb/fz6HBYR3DMk0EFMGFI8aBK/UCtK6fOrvcH0dskHDdG6WPbWZEwafpk1bZOUYdvRthCjakzCD3qOoudzt5wcGphK8y9rCdJE6n7BuYZUaiKspOqYxaNxxP3WdtOqp0ANYF8kZQS4YZwvQ/EkwF+7UOeuH0pMzssPt/lxVyFR
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1s7p6wmYOF2U7PSmxIaQNvFDv5NKI1AI740H2wGQ4AM7ZIVew+elFLC8KN2K?=
 =?us-ascii?Q?TiIk+XSsARqPNgUMpOuEcngPDYJBBpCgRzzGXkDQpu6rWJPlpesDi6lJGydP?=
 =?us-ascii?Q?mu/Ygxec1xCVdnhBGLOFJsDbX2hQaV76fjvwiNeauGYl3522CnkRV1RQ1GIc?=
 =?us-ascii?Q?i540Efx8T8ueUcveA03gYc61vH5CX1D4EcApwp+5MbRHBqFFcN+iMtLLdYWj?=
 =?us-ascii?Q?KLND00N39iFwgnLOB+U1+PmNhcLXCGdCPHVnW9QGiH2J7eMfbhV487UoWKOz?=
 =?us-ascii?Q?Hi8xK9r2wBftQkpbZU1k3BOjyTe0dmk5rwuT4q1yy622bhEGa5Xqq3FkWPch?=
 =?us-ascii?Q?JJZ5D6PbHGxF6OwYn4zkfHzDmvDlT4Vb6CQvaxZcE7DE7tuRdb6VkZ84ZW4d?=
 =?us-ascii?Q?YuWzK4Mphsra5N/E85nTL0PM0n+N3pB5vSPjtcSxs0LrTsVQXb8ZX1wlxtHx?=
 =?us-ascii?Q?rPsNV2+cEPfz4cjufKJLtiK+6LvASZ/TRE2Fv7nkdTJc6v61FGYumYJraWtH?=
 =?us-ascii?Q?Sy7u8LFrIRkJBCzl9ybuC/2Jf8XzZD+oj4y7zaylbs+y5sCGE5e8aq2bzkuM?=
 =?us-ascii?Q?UahfZekZV5ApnTUip9X8/IQhlbo05GZfnKCSJTctibAuDoIhQqlW/TWflcjU?=
 =?us-ascii?Q?nv53L8zcCbzzKX2lG9M/ECOC2xKAVZFckkhtKeIRe/ZhcfR1fqU9EkklgEeY?=
 =?us-ascii?Q?XhZAkmexQn+sWEhh6t9Z1ASA04qUyyr62JbMpNT+XuO1fz2ZIIiTbyHGkyCL?=
 =?us-ascii?Q?2QIxpYgMOGjK0uDzDikXacyu2W2Ibie9LXInPxR8KSs52O31E1VHnsd0tTP6?=
 =?us-ascii?Q?rDSmw1YuiJfyv5HLSdjxNOLOQyxS1nBlxYwNCr7Bn3/w98zI+AJo+Y7noYf1?=
 =?us-ascii?Q?O7P55/oaakxr96b6O2WfMbNQnarqifYPK8GMOXqBAr5TN+3zqICuyldCLAnO?=
 =?us-ascii?Q?59VJnWshMteGYWdpTTbTaCjnOcmdU7IwAsR1x7S+LaLMjySUKfQhK4/2S6Jn?=
 =?us-ascii?Q?KHW5BmfCD2Evoo97LuPkNXV2dm/l2/LrTeLQtA/0w8HfeklRfVb0PG+Y02/9?=
 =?us-ascii?Q?6l3YQT76TC+zpmFLyCL+H77VUdCXNgvZNEyWinXVHU2hYJe+jc8sIBLpblf2?=
 =?us-ascii?Q?vXrBV5xdOpT0axQNsJP9pVuLUKXwMTHh/JAE7MOr1RNJPvk/vIqaN9d4It1I?=
 =?us-ascii?Q?8LENfis181KOw0Yugx91xwKSMIo30fgFROrMWmZKZZIK6K6HhqcmYbxLe8RL?=
 =?us-ascii?Q?V/MjrKpGySc+rJSNXVhnjEOROzV0yApCg8K0nvXa4wF0auUhVpBvWRHYV+80?=
 =?us-ascii?Q?T0oRyYPPXbNRxw03V+apCIb/HIo0xaKlgodiPKAG+1OFSI2yhkkzOocQnTou?=
 =?us-ascii?Q?vVD9Ghs03tIepn6OODg5EbH0fg49Wban+41+oT5GyiR9Fy2D2yhxV1CgrQri?=
 =?us-ascii?Q?XSjlJUDinrK5GMrRd2VIv+PHmnV6A5INaotFyvWvs5W266Gqrm4zsq+2Kda/?=
 =?us-ascii?Q?obIxZ8LklVyQkTbAS9MC7BDB5NMZbBY9s2SLT2GTzLUYBBDnJyposNq04A7v?=
 =?us-ascii?Q?2TH6JCGcGHytmFoRiRhuic9RR6eMWAQo+iGCasIl?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 80245f07-f2d2-43ec-1291-08dc37a493e9
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2024 14:58:37.7391 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I5RmeYArljsRXWQV4noYug6E8V4XNh/vS+cZv5431cIxIog6Fkb91QQJwddcYwif7rX423e9XeRaIzTna1xDKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7713
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

First of all, I'm sorry if this is hitting your inbox twice.
I could swear that I had sent this 2 weeks ago, but I couldn't
find the lore or patchwork, so let me try again.

This series is a double experiment that I would like to get
some help.

1. Display - shared display between i915 and xe without a
need for the compat-layer. With this registration method
with a void * to the device driver we can at least start
to get rid of the compat layer and the nasty
-Ddrm_i915_private=xe_device
And perhaps move from this to a more standalone solution
later.

So, thoughts?

2. GuC SLPC display metrics. On this I need some help to
check the functionality of SLPC, debug GuC and some eyes
to see if the place of the display side is the best one.

From what I could see with the debugfs view added in this
patch, the shared buffer gets properly updated with the
display metrics and that is in sync with the display
refresh rate and the fame per second information that I
get to see in the screen. However for the workloads that
I used here I didn't like the end result. The extra
register read in the middle of the display critical areas
seems to cause more harm then good for the cases I got.

So, with this I need help with guc-debug, reviews, ideas.

Thanks in advance,
Rodrigo.

Rodrigo Vivi (3):
  drm/i915/display: Introduce intel_display_guc_metrics
  drm/i915: Add experimental GuC SLPC display metrics
  drm/xe: Add GuC SLPC Display Metrics

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_display.c  |  14 +-
 .../gpu/drm/i915/display/intel_display_core.h |   2 +
 .../i915/display/intel_display_guc_metrics.c  | 153 ++++++++
 .../i915/display/intel_display_guc_metrics.h  |  26 ++
 .../display/intel_display_guc_metrics_types.h |  32 ++
 .../gpu/drm/i915/display/intel_display_irq.c  |   3 +
 .../drm/i915/display/skl_universal_plane.c    |   3 +
 drivers/gpu/drm/i915/gt/intel_rps.c           |   9 +
 .../drm/i915/gt/uc/abi/guc_actions_slpc_abi.h |  59 +++
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   | 271 +++++++++++++-
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h   |   6 +
 .../gpu/drm/i915/gt/uc/intel_guc_slpc_types.h |   4 +
 drivers/gpu/drm/i915/i915_params.c            |   2 +-
 drivers/gpu/drm/i915/i915_params.h            |   4 +-
 drivers/gpu/drm/xe/Makefile                   |   1 +
 drivers/gpu/drm/xe/abi/guc_actions_slpc_abi.h |  59 +++
 drivers/gpu/drm/xe/xe_gt_debugfs.c            |  11 +
 drivers/gpu/drm/xe/xe_guc_pc.c                | 343 +++++++++++++++++-
 drivers/gpu/drm/xe/xe_guc_pc.h                |   3 +
 drivers/gpu/drm/xe/xe_guc_pc_types.h          |   2 +
 21 files changed, 991 insertions(+), 17 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_guc_metrics.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_guc_metrics.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_guc_metrics_types.h

-- 
2.43.2

