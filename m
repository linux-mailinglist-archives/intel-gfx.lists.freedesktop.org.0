Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 184B9A7C024
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Apr 2025 17:03:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77ACB10EBE5;
	Fri,  4 Apr 2025 15:03:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XRqlrt2j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5016C10EBE4;
 Fri,  4 Apr 2025 15:03:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743779020; x=1775315020;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=jv1Ab5mHnTIHsAsLPdK9vemjFfhV2n6l8xjSDJRShds=;
 b=XRqlrt2jf34IGURwrCtSc+6ljghR8DzUDJCvMBWo/gmdd4SKBZ0E0XzN
 s31/I3l6zgscMDC7MnmLvhBJgscwXu9lF3rRXfZoBCL+hGdfRvpjePuAo
 wLWiGpeIaaaKUX9eEeQ51vV9TInYkfEyIc2LEbPornP8qveWKEuIntjLt
 FEJDoGW5xwOw3cOn0b2fWs/1alzhJMcHxCq1+PjNk3IgvRK3ow7BGjRiK
 EhxKz430mszVNE/lCnWF7g92SwnF1FfD+uOjvjrAKMWxFu/PRELEb2Nhi
 zUcbSFmjSS7pMtqqH0xZ9kOk5UZtErUIwhnUKb0KRYKknEQupsh4FenA3 Q==;
X-CSE-ConnectionGUID: rMfkYIoATxSKlqhgUvCaPQ==
X-CSE-MsgGUID: wXemgI7uTHiV/IQwoTRCIQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11394"; a="45112258"
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="45112258"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2025 08:03:40 -0700
X-CSE-ConnectionGUID: 66RqYXS4QieZERc+iWgMmg==
X-CSE-MsgGUID: kqLL4DCbSkaQzprKPdejXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="127089544"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Apr 2025 08:03:40 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 4 Apr 2025 08:03:39 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 4 Apr 2025 08:03:39 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 4 Apr 2025 08:03:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=By+BZ4f1++07UYsS314OCOdgRffinV8Y+1zh1RrX5AOSy7Q/VwAgiF/bDio83Ps21UZxETDI4NjSy1JBm7W8By+OFW4cc4QALMXaNLogmYZ89HafM30MWKcmbkunW2TEJpLBLxD/fxKn7I772pBSrK0S25zI9N+y056PCRJus/bvUTuEMlEwu/WTsA6R9xiBvBOTpIs4qocPkZ4UbMGjnHwKqvPgaImiZjHmF2r8K5jJOKVPatf3ovvbkI6rKfS5MNSTqkJWXk7/4yikx4DURep7otbKYnXfQMHR30NaggINBJAmdnOebnp8SIG5qYRUG67VqAWXj02SHMG5aIDCXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q/Lt9IWVNSS0Xm77EjJLNit0WQAJS8KwDO9mfHmZ/Sk=;
 b=yv+eyfuyPtojAcUJY1Ioq7NKPFzpbDaiC20UMpUPV5MKpg8eccJP5jnZpVeUbYxxiUjr5lyr+Zk1Z2Qmw+PBlfqW0iD5obJzQCW2kQScdqj0P+bG7heXWJtDxxvHRuWoHNsr8mM/sqQ+jSC5fGBurMa2Bxo3T7F71mTIoik6d/G7Uz/0vkoJ+XIrHf/B3Nk8W/3DweUbNcdaEJhSvNN7eI5yYXwozkocCOfAF7wALahKBteUm/6XgHVOCrnPYlOw76yVsw78O1shSjzE4UR3yC6XMWQ7wS3C64n1CQBHRtthtqKX+0i5jKVuEcf3RSEtyYAhD5hMKQFtAh0tIbH+Dw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MN6PR11MB8219.namprd11.prod.outlook.com (2603:10b6:208:471::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Fri, 4 Apr
 2025 15:03:09 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8534.048; Fri, 4 Apr 2025
 15:03:09 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 0/6] drm/i915/dp_mst: Clean up active stream count tracking
Date: Fri, 4 Apr 2025 18:03:04 +0300
Message-ID: <20250404150310.1156696-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DU2PR04CA0054.eurprd04.prod.outlook.com
 (2603:10a6:10:234::29) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MN6PR11MB8219:EE_
X-MS-Office365-Filtering-Correlation-Id: f79e227a-03f6-4099-423e-08dd7389cfa6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?rg2X0Cv6fM56Qj8cGzhkM3VP7bCM0okWBSwYUsX38H+i+CVNj5jGmyeWmJwC?=
 =?us-ascii?Q?qvszDkeYrkEyyNowPjIFSQpsGkTAsobG9a+mdE17BxoZMX9Y4G34SkY3ts10?=
 =?us-ascii?Q?c6+X95BzF2L72dSLeeLnuxSPXwW0hunTZbDONGGKxL8OsTTe+zGlvWl6TTZ/?=
 =?us-ascii?Q?17wAKQmH2JqOMfuobHtw0/8gvzgRhjSmWO9fr9Kdji/OFfkFMI7CXD3+/1gk?=
 =?us-ascii?Q?eqxpd/IPoCh4HfCNolpqrFaLdj+s7uOywjAVSuqkIDW2PlfFurIBbvSr/PaB?=
 =?us-ascii?Q?tY5RG2WzY42F4k1cPHM8RuR/SaJpj/Blczic814AfQhu42IKtBA7nqRxb5Ob?=
 =?us-ascii?Q?SXyJAsvAK/fbiKsiO0jr+IyXp69Pz49kyzjvg3VFNaMrLnzChXHqIeiVYTMU?=
 =?us-ascii?Q?yNyFmANt7DZmqWuBE3fbdNGU9RunTENiMPy3wOs/SqRAXFfXPdFKs2xFQ8/p?=
 =?us-ascii?Q?SGDsatTnGrZd+6KTczFOxEOWrV21X/YsTnWlJ+C0Fw86vmydbyyasb6UxroJ?=
 =?us-ascii?Q?DnDV5dc2QTezPoK9MZ6nB/r3HTBrBpdviTnf878aBHsk3XXR6/lEQq5wbRdl?=
 =?us-ascii?Q?9W26tybpajQcfIjFHTAxIUp8CNFoSArH164ZjYJAQXtnvSqYaujwC/P8sq0m?=
 =?us-ascii?Q?VERBbwkiRyk/jgySKEVXJc8dDVyQgj5ZEAi9URGPGyFj2R2UDXkpCAW+H3sz?=
 =?us-ascii?Q?c9xXiH2NYmlPUfY01ll/5e1hzg81JRtS347/gh7ynwVeLv29uom7vNLS/7VY?=
 =?us-ascii?Q?LgUqxab8eevgQGPJ7RboK/PUqAfOwsTksQm2JNZ3gMDp883PnYmvhZ03a36c?=
 =?us-ascii?Q?SzUpBS2ztvOmQYC14tkfPM5sNGsZmyv+d1oTqX9bq//ASFgIB9fl9r+Yx/8g?=
 =?us-ascii?Q?+/woQ4dJD4bCIUFgS6lqxsodFiEO0kZg0HGSy9LUHwArl6KAeHiF2hS5hKL5?=
 =?us-ascii?Q?TMGEWWfJyo9GHeB3sNy/CCNRuqp7k+gbtd/92GP9pXrX+LxNE3rfi834tNvn?=
 =?us-ascii?Q?afm6qQ/jIMMARB3kd7uxmfqf7yZAQx7hQ+Gx8kLNjcKFW3LpYIPSYE1J9rs6?=
 =?us-ascii?Q?mjKtSl57ucMBKjAkAepPOYcQ0cyer2o/IIX5xrgMEDmtJ8KrDXKN36BIgCrs?=
 =?us-ascii?Q?YOjTkQJTHdiZkqEnmqN+ob9P5kYA1mPiPPIIwhv4N1AgW8zKk7KY16T6V1wx?=
 =?us-ascii?Q?2bNjaSq1VudDh/m+hhZ12/XHlAxUnJsXWrBf8UnZyV/G2QKGin8GEBwhS5rZ?=
 =?us-ascii?Q?QpzwE3U/4F3Cg+upgQbH83ahb2aKEsT6b9u6WitjF3JsNPWfxZF2gftQcjkC?=
 =?us-ascii?Q?Ji8CtCqXbUwDEae9oLR5FrBz+kotBwvLtAZfdwEOyhCygzIxyZ8gjQMpfJJS?=
 =?us-ascii?Q?QnD/F83PC6sM8Ys+PI/SPCZj2rCC?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hXrtWU8aak5ta+7t4ZWi8VE7ntrwub5HIucfMhB2gau0ywm8tED8/aLJmb1L?=
 =?us-ascii?Q?XoOVlNaxjQmfYHmXba28teEHyYiuYg4iWVA4qqg1LHrNCg52/JlVrJsEBfVG?=
 =?us-ascii?Q?h8QD0yCmFCULwiRhHjOqZwUEAm1cp1mPNzLvzEfMJJUrqzED5jCXcD/3cbBD?=
 =?us-ascii?Q?oUnl5ukt73RoCneTea4pw6FlYbdf3t38fu6LjHQVjR9Q4wcOIStuV+r00zVG?=
 =?us-ascii?Q?ahGFPTZRybexEgAXvt/l3QaZ8TqpBR88MqYTnlLhRi/JEZqqAq9Kf6dNM2Pj?=
 =?us-ascii?Q?TM06+A2GlwHLDPbET7KcrgXU6c9nnAWad2B5+CuypYYE1iTco9vPrB5X6AI8?=
 =?us-ascii?Q?VRHdUfsol2piQ4JnrrBNwzwlDXheSdfEHrzXWIrGDElq8AsjwzU2Jys/uOA7?=
 =?us-ascii?Q?4Xtxl3c+laWg0ePF/JSQhtmM9o8jI1pdc6VZuuttR5hIxUd7KwI7GwJLSAvP?=
 =?us-ascii?Q?nQPCS+ViemxK+3ioMJz/4fixYY+w0lmSf6Js9OpL2cyMLxwpkNV7cz7FMIVB?=
 =?us-ascii?Q?IomVcZsFQsSwl/yWM/2nr9bEsy8ID1P2ztnMnoEJHW5tm4epx5YujcoQXrJI?=
 =?us-ascii?Q?t0de+gSZ/ncoMxdqiguq0ATEPc6w4e76lZo209ze3ER/r7GZ6OYHPI1gJrGj?=
 =?us-ascii?Q?gAzM4LVF2DWu+b2qZ1S+lOSIyIW3eDILbE4O/ApXTMUYqYQ3cEUd71YoOPaB?=
 =?us-ascii?Q?5toNmZCakg7bjn6HUeywpH91H9f5Pn1LLeRDLxrxyyYsAxLqbeXrsXdEdhcW?=
 =?us-ascii?Q?oU/r/v2sSlpCkny3qZPuj0C3QeBPm7Dl9PMG3eCofzx8zgV0VuhKbd4u5XYm?=
 =?us-ascii?Q?sm0WmSKI2YiQdDqBLXAnJNxRARGBK1W5hR0DoE5uLxyBD/FX8tP8QViWw6Zv?=
 =?us-ascii?Q?/IuOlvh7howWvQpRW19wIjsVaEmFBfgIytHZWwp9AiUK9DsXTnpNCyvq0V1g?=
 =?us-ascii?Q?loyIipYIc/hnOmu2KK75gzQsGw9ce5F9+h7z05fARFR0pxTfJd+QmEgj9gNA?=
 =?us-ascii?Q?E9aCC/LAqilKmRcq+q/mbhOkAshOQMjGlePl3+o+0E0+e8V28ntTwuAPiBN3?=
 =?us-ascii?Q?YtPRaJOjvN24hN/zBgS2ad2j1i4yqsR1drHW+219UuMVfNYr5ncwuP8BXRXZ?=
 =?us-ascii?Q?J3I8YJRq0v8/c5Og4CSOiq210qAQ03AEeJyhswTFRZePtugax3cyWRtRiua1?=
 =?us-ascii?Q?nN+Dx0ebB79KJvCsoNmgGIf4PwMxAz1M7qSHMHI1GZQVlvzb6LcZr8NAqv2r?=
 =?us-ascii?Q?RSd+r7BzofErT7F+z8nAoljsaYjLoItPB4uYvl8UueAaV6ssIBsDNN7l6jvP?=
 =?us-ascii?Q?xU4zn26oGnRhrH2/l83bxgf1nCWwUTsMLR6C2ZICGsHxrVcTyCFgq2unHp3V?=
 =?us-ascii?Q?+1HBq4zrJjmZNyivJWR0ugmXGMmjgYD8RXeWlZRfEbEK0Hvi3qNfHjCNVQXB?=
 =?us-ascii?Q?MX3GlRlHDo3TA46jnMVcWcN6tAGBnyfzV8QhxOn7BF8WKhUtMiCksYJ+nKxK?=
 =?us-ascii?Q?sS0dTAccIdke0c+K8psaYpNSf6xp7hUtSAZpKncBx6bDZ6pES2K7srQhInVa?=
 =?us-ascii?Q?Q/rPD3u1FkO1SSmHN4NxE61pJ1vPI9RGTwWfPjmc?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f79e227a-03f6-4099-423e-08dd7389cfa6
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Apr 2025 15:03:09.1333 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jn+HZN4Sx21y6V6kOSJCcM8wVOPreOY43HWri58WkuyvKpGzEseN/c5Ux9f263qK6PXAJmb55b6T2vVFk8mHgw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8219
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

As requested by Jani, this patchset cleans up the MST active stream
count tracking, using the logical name for the counter (stream vs.
link) and adding helpers to simplify the functions where the counter is
queried.

Cc: Jani Nikula <jani.nikula@intel.com>

Imre Deak (6):
  drm/i915/dp: Rename intel_dp::link_trained to link.active
  drm/i915/dp_mst: Add intel_dp_mst_{inc,dec}_active_streams()
  drm/i915/dp_mst: Remove stream count assert from
    intel_dp_check_mst_status()
  drm/i915/dp_mst: Rename intel_dp_mst_encoder_active_links() to
    intel_dp_mst_active_streams()
  drm/i915/dp_mst: Use intel_dp_mst_active_streams() instead of
    open-coding it
  drm/i915/dp_mst: Rename intel_dp::mst.active_links to
    mst.active_streams

 drivers/gpu/drm/i915/display/g4x_dp.c         |  2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      | 10 +--
 .../drm/i915/display/intel_display_types.h    |  4 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 10 ++-
 .../drm/i915/display/intel_dp_link_training.c |  8 +--
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 66 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_dp_mst.h   |  2 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  3 +-
 drivers/gpu/drm/i915/display/intel_tc.c       | 20 +++---
 9 files changed, 67 insertions(+), 58 deletions(-)

-- 
2.44.2

