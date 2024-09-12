Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58DA6976F67
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 19:14:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9331D10EBEB;
	Thu, 12 Sep 2024 17:14:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PKjIJvRl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA8AC10EBEB;
 Thu, 12 Sep 2024 17:14:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726161277; x=1757697277;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=8C2p3GfUAttmpqu6/k45DLYTeUkcclMvW2QfL+KOKO0=;
 b=PKjIJvRltOux/EQoT3vToH7lU8k9qh24Jps7UeqQ6XHzeGjaXYdeqbUH
 oTI3DP/10JEGXOlOW3ze3GHv+elNgD8n07r7w2Ki12HxQPQI1VeX2g4sr
 HNQNL3v1ppEWY+dJGCBGDTasmRgPM9Dob+Rxm/0IOoIB/ipd1R6jx4PSi
 ay85A8/AP7voJOPQ8LkJ4X7nfFMAU/ZHdZR8sca4Va0cC5Pr/ZaGS+guy
 rhsA1RfMbUTHr2mkO/YK433Pyk5XymqLYNdMiFbsEaCH3vdCKF8VpfbP1
 3Lnm1lPzHp9NhqoSzC+Ea3Ssw8X2nanlNxnd2rUqQrRRu445fA2zMUSlZ w==;
X-CSE-ConnectionGUID: e/6/XrXqSOCNcxymYLB3PA==
X-CSE-MsgGUID: zSmiAY8uQ0Owj6rknzz0Mw==
X-IronPort-AV: E=McAfee;i="6700,10204,11193"; a="25161257"
X-IronPort-AV: E=Sophos;i="6.10,223,1719903600"; d="scan'208";a="25161257"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 10:14:37 -0700
X-CSE-ConnectionGUID: C8+WmZ2sTlG/9KwCOByhFg==
X-CSE-MsgGUID: bHr/6N2bTTGvkA/8CP7vHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,223,1719903600"; d="scan'208";a="72587503"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2024 10:14:36 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 10:14:35 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 12 Sep 2024 10:14:35 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 12 Sep 2024 10:14:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kkavGfqqRlcJ9TagVGVpwnooMY24wyrnbiWL0TFagZ4tY1r/VKzarDERek+w0OSpdTYa4KTMIW8kYMRtnsgru2BzCfToqOftBGpAZeJej86qwsiPWG6e2VinKjtbeRazJOkKyE8QMZxOFF5bR9fXfTp/1hCKeMiTl73nGpLXWXD6fEr8vGMDZ2nQKAUikfH90LV9UlajAjqkdHJ5MFHkSeaN3rKerVZtdAei7woSt5YODUL2mdk+/MWITa2Ed09ABWjZxGi/wJ6MblxCx3mVQtePK+qogKlMAcJvc6chzPWjykwcv9JCVkMgLcfI8maNQ/v/MN8W/QMOv9grFG5eWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7+j2RkDWhnb/d7kOiEKbKSUjqtXOOU4GZX6WydE1Y+M=;
 b=ZjvQ9vsDF3sQ4Pi2G6QkdKnUzhyHC0DRokX5Ypf5U1U81Fh+iSBCBbNm71r5bqhraUkFWJDUqIqDjniyLp1YDeH5ebXlZJr9usi7C4vRt/xvM2RlQXQ5NX1nICleruboVR0MW0Lun0XxHAGP2Mi2EFf3ytES/T0HMXIzjUQKWWQQo7qZaEEEOqAOAaQyCkltk935uAbkma6yXslRowJHQ/j6Yb23gVz/wmx3rTaUtBAMhxx12ohmDIsXG9QeTjdWZN+SS8qoRWIw5IfjNQ6eDt8+t6SknI+v9pulv+1zpZR0FtUIY3ZYVe5BeoRQGVBPiQrOVyY411XOQwoG70beCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by PH7PR11MB5768.namprd11.prod.outlook.com (2603:10b6:510:131::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.24; Thu, 12 Sep
 2024 17:14:28 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%7]) with mapi id 15.20.7962.017; Thu, 12 Sep 2024
 17:14:28 +0000
Date: Thu, 12 Sep 2024 12:14:26 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/display: Don't allow tile4 framebuffer to do
 hflip on Xe2
Message-ID: <wo5js5qkjy35yx6smin5yel3cute2tox65y7dxtdvnmo3bdkgy@sdv7uq5nfjdr>
References: <20240912144606.862307-1-juhapekka.heikkila@gmail.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20240912144606.862307-1-juhapekka.heikkila@gmail.com>
X-ClientProxiedBy: SJ0PR05CA0007.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::12) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|PH7PR11MB5768:EE_
X-MS-Office365-Filtering-Correlation-Id: bca3e4d7-7005-491c-4fe5-08dcd34e5c14
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?luAjFG3bSuKh25pAnQ+8O7JZe4mjLAaMiFd/TUVxObkLTD5K71CwNhqUktlU?=
 =?us-ascii?Q?aWRuypyrTEO4XDhS1m36wpY1+s49MX4ZBusmR9n/hiOTnApN655EzrX/uCSM?=
 =?us-ascii?Q?RpOOwuIh2MaYYM7oW9mM/+TOsPdpiN+m3Q9cbvFnFyPzBgktl7CN5Azbv7S6?=
 =?us-ascii?Q?abSNdvVbDnKpC1ugOchuPgFn3+IT2GcxJjdNzwJCa6Yb6v+pkIK0eO/McH3z?=
 =?us-ascii?Q?4Z0fxqIJGT/++0rr1Azhik+9Cig9emGUqgQGyqxv8Tzk9xvAJn4+Fn8/JNFl?=
 =?us-ascii?Q?kCswrI0ODFwe2A3Eqz8GwPXe3i2Vh4T/VG+krz/MT8KhsjQ7NY3Fm6b6nToB?=
 =?us-ascii?Q?ipKZ1uTwH9YMOgMybgXpnBYxe7TUacS5cbifQRxK060njiLIP2CCFSmrTU5E?=
 =?us-ascii?Q?R+O4ypQidfKUv1Z3zQuwY4x/4YfCsLd1XfGKXnzan2WeXqL9LvIGcRtMPZdZ?=
 =?us-ascii?Q?uRo6A9B9RmNcaFNjJ+OgqY5WtUYkJGVnn9MAPDq+3z+znHmL2q5kbnJjfMf4?=
 =?us-ascii?Q?HNgOOay9JpaKx1tLIiTq7gR4XQprkdwLWBTWPETRv1bGr9kOaI8uFV1UubWn?=
 =?us-ascii?Q?nsjS7czpY53eMSzWwfSbnniFGWi9lvKhQpjR68Kr5v5SpN+3H6WYMwWZls8h?=
 =?us-ascii?Q?TcB0hGxG1IrA3QWsz8aZP4tRm9zFE/88LcVbfltWV1reBsDl43by06yfxUrv?=
 =?us-ascii?Q?spS/X2Y2VwWE9M4M836csIK0ZURJssnHeMs8/imb+606fHkuLskQ/2pB/RLr?=
 =?us-ascii?Q?gC8u9VLRpmhv4ZlQFM/E9FIuWZRqoBY2ugLnVZy3hqQ2Mi578vo0G0qE6QoQ?=
 =?us-ascii?Q?hzcCmV4odSVELXerNjo5PYG+pH5N5G0PbQwE38/9PElpaO2N+3uuhgl/KZo5?=
 =?us-ascii?Q?CBl1R+EPo4EG3+ijp/rY0ib3EKwB20ENG9AOHNRLl3QVduw8XY28R5VPGYyx?=
 =?us-ascii?Q?5CRN7yTmwhIvSc2WOO5suaUjyI78snYVNYmsyPpGC9M60y7JCyb/YSEPjn8C?=
 =?us-ascii?Q?s6yphKItIWdKXZYb4mkSwoJJw81sBhdcxGkX+EZHUHjmkocBBIPRC5iLA5NS?=
 =?us-ascii?Q?piUSutivftKAxqSGDBvESKah4xV56CT63xCoFpXi9zfT/xaOZpqUYKdbYZRE?=
 =?us-ascii?Q?JKuVKJK0OjMHP/33vbbcOQc0+gI6V2mpGKxd+YVnCLkYeSRdS3TN41+t+gh2?=
 =?us-ascii?Q?FFml04ciGMFc6/Ak7VI6rcPVPL6B2I/FGzjgmjXVWoKzoYkRU32um9fwgZA8?=
 =?us-ascii?Q?exOmtakrCoAZOmtAimMsdNblunUvxYG22wUwHJzP731qF9dGbx57lZCc2V3K?=
 =?us-ascii?Q?Zu+v2zLqGhEmO3k5memIFAEWyI7Xzgdjq7qD2YQ5k/xPkg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?D2vdfO8/raAGwbAIow7Q99slQ94+cSLOkwSrfU2aII6uvPEytcTbdzyrBo5e?=
 =?us-ascii?Q?ViW8mv2gT6JcAj0W4LZhWhWlQ/fAWraIS4XsoxX1ER0G0hGb+iVhx1tQOQHJ?=
 =?us-ascii?Q?Z8xULN73lXoQ9jHQ+Pye0ZIEbG28zTiMREw23QgAQ306E9iOe50O+7g5IydE?=
 =?us-ascii?Q?aQjlos4pvYvfArMQYbS8JU0qNw+0U6H2qelLi33ksAtu0aLVysjfQxUQMRTr?=
 =?us-ascii?Q?7sx4VGgVrrujiW78D5vS7tVGJA6pr3k94MOZJ6fGBT4pqAq2aJY/m1L2ZFg7?=
 =?us-ascii?Q?teM7PcxM576L4AcKGWZD0Kjm06li9wuo0SsnK47hz//qshwxh2Q64OV/EBM+?=
 =?us-ascii?Q?bgdDFd4LuYDhgRt1cNdnYBhRVJnT5rRRdxCiADaVxuYBHObKYVPf6wYCtqIi?=
 =?us-ascii?Q?DbA36aTPgPvM2DbLXnL2d0Ys0rmT10sJzOqFcPsIwYqNE2S25a9xhtRoFXSz?=
 =?us-ascii?Q?taW39nX2e5Yh5UmvomxoC/c2O4RvgTelDZAguZPDEjnVBHFxeKx1z9OQvo0s?=
 =?us-ascii?Q?YafPxrAJy+YELYIO8rbyvg26YiHKc9TnBOwfpEJBLqXQyB5xxq+sKR6OvPk+?=
 =?us-ascii?Q?1GtI2tSIsOzih30W52nxeRsuBZnQwJanns2wMsWZgmewzxZq2gjo6HAfAGeB?=
 =?us-ascii?Q?P2x9b2oxIu0dUuHTnJf9g3x7/UIi5l01KCCI58EvX1NZwfqSsIRToaQWcvh6?=
 =?us-ascii?Q?AImBxB0OZMe0+fLTwa3WiGyYqzLXUny7rKpT30B+NejnAaHuBF9y8at+GjGk?=
 =?us-ascii?Q?St0FdTeXBR5ksdojhFHR6qZRkw1kEyu+RpvGccwEOlQhXjn9V0I5br+4IhDf?=
 =?us-ascii?Q?MCcYLzelJxwX2zMbvh5SU1Q6OhKpYLFZSv+qFwT1YMiWhGZ35C2hzKn8LzKj?=
 =?us-ascii?Q?+6juCAzphLii1PYey6G1L/Tp8H6z4Ef5uLCSrP7AMIBo/mRS7WhSkEDZ8uTo?=
 =?us-ascii?Q?o7+BSDik7nznL2FhbPjlQmoOQSeLwahx0Kp5lBaL79yEiVzf6SfWO+0CS8/a?=
 =?us-ascii?Q?d+0Unraw5LjjFgVjcvtinALjc+f+z1fYfUkcQe2wt1yUucJ5HmR/WxAmprKu?=
 =?us-ascii?Q?3PBzE1oO6ooQ3andfCMNhN0eyyghLkGESqybaW/0UW0CDoPML5Q7jm9ovlXp?=
 =?us-ascii?Q?eeoxydbiiXsJG82dri5QVs5pveXK2l1Fz0et+35BE7/KRakvipeZocvTZ9NA?=
 =?us-ascii?Q?3kJs3G9KdfbwJ04OpzaomcgONsliUXuDQ2HSJhsReZVkimCkiiPWa+JLek4J?=
 =?us-ascii?Q?6FZDL5hyx2uP9nirPCKH615idS7G0Qwjiz0mvq8n5s0kWuDsDKsERumZdYVg?=
 =?us-ascii?Q?BlOXUPpmmcjA3+rCFpFWZ3sliN7fXvDTp4V+ziiJ+tZfmXKmOGaW++A4mYuG?=
 =?us-ascii?Q?+6mgNGKiacmQk0EJ/vrQYR+ou89WtsrrW+5ty8hlkmQx4cYtqLGoKBTudk8J?=
 =?us-ascii?Q?DBXhBtfK2Ohl9kHgD1I9jrW/YHAXTASzhjYntVf8uVVJSXz8FJWjASterBNE?=
 =?us-ascii?Q?z83A379VunqDarQF6hgHpmM4GJtXPWPKhc+GnGvc0ASOrAl78NcIvny8ewzi?=
 =?us-ascii?Q?BOM1bR5TO5lNDR8PEjRZgb/BpUw4ZsgkBwrZrOejDFTE8k/4CnBsW4tDrpZs?=
 =?us-ascii?Q?Yg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bca3e4d7-7005-491c-4fe5-08dcd34e5c14
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2024 17:14:28.7131 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NoVWXFBdjsIfP55r/WoeWQ2Ow+yoFeNM+78lDfJCGefIPiSsuX/HXdLBRY3NtASzF7mP08Q55RjPepgVkhvZqj0vxuWU45rZu17IyYdKMbg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5768
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

On Thu, Sep 12, 2024 at 05:46:06PM GMT, Juha-Pekka Heikkila wrote:
>On Intel Xe2 hw tile4 is not supported with horizontal flip
>
>bspec 69853

Usual spelling is: "Bspec: 69853" and as part of the trailers below.

>
>Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
>---
> drivers/gpu/drm/i915/display/intel_fb.c            | 13 +++++++++++++
> drivers/gpu/drm/i915/display/intel_fb.h            |  1 +
> drivers/gpu/drm/i915/display/skl_universal_plane.c | 12 ++++++++++++
> 3 files changed, 26 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
>index d2ff21e98545..c9038d239eb2 100644
>--- a/drivers/gpu/drm/i915/display/intel_fb.c
>+++ b/drivers/gpu/drm/i915/display/intel_fb.c
>@@ -439,6 +439,19 @@ bool intel_fb_needs_64k_phys(u64 modifier)
> 				      INTEL_PLANE_CAP_NEED64K_PHYS);
> }
>
>+/**
>+ * intel_fb_is_tile4_modifier: Check if a modifier is a tile4 modifier type
>+ * @modifier: Modifier to check
>+ *
>+ * Returns:
>+ * Returns %true if @modifier is a tile4 modifier.

double Returns

>+ */
>+bool intel_fb_is_tile4_modifier(u64 modifier)
>+{
>+	return plane_caps_contain_any(lookup_modifier(modifier)->plane_caps,
>+				      INTEL_PLANE_CAP_TILING_4);
>+}
>+
> static bool check_modifier_display_ver_range(const struct intel_modifier_desc *md,
> 					     u8 display_ver_from, u8 display_ver_until)
> {
>diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
>index 068f3aee99aa..bff87994cf2c 100644
>--- a/drivers/gpu/drm/i915/display/intel_fb.h
>+++ b/drivers/gpu/drm/i915/display/intel_fb.h
>@@ -35,6 +35,7 @@ bool intel_fb_is_ccs_modifier(u64 modifier);
> bool intel_fb_is_rc_ccs_cc_modifier(u64 modifier);
> bool intel_fb_is_mc_ccs_modifier(u64 modifier);
> bool intel_fb_needs_64k_phys(u64 modifier);
>+bool intel_fb_is_tile4_modifier(u64 modifier);
>
> bool intel_fb_is_ccs_aux_plane(const struct drm_framebuffer *fb, int color_plane);
> int intel_fb_rc_ccs_cc_plane(const struct drm_framebuffer *fb);
>diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>index 17d4c880ecc4..4de41ab5060a 100644
>--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>@@ -1591,6 +1591,18 @@ static int skl_plane_check_fb(const struct intel_crtc_state *crtc_state,
> 		return -EINVAL;
> 	}
>
>+	/*
>+	 * Starting with LNL and BMG tile4 hflip is not supported
>+	 */
>+	if (rotation & DRM_MODE_REFLECT_X &&
>+	    intel_fb_is_tile4_modifier(fb->modifier) &&
>+	    ((DISPLAY_VER(dev_priv) >= 14 && IS_DGFX(dev_priv)) ||
>+	     (DISPLAY_VER(dev_priv) >= 20 && !IS_DGFX(dev_priv)))) {

the correct bspec for BMG is 50387 where the only documented restriction is
on linear surface formats. This can rather be simplified with:

	if (rotation & DRM_MODE_REFLECT_X &&
	    intel_fb_is_tile4_modifier(fb->modifier) &&
	    DISPLAY_VER(dev_priv) >= 20)

Lucas De Marchi

>+		drm_dbg_kms(&dev_priv->drm,
>+			    "horizontal flip is not supported with tile4 surface formats\n");
>+		return -EINVAL;
>+	}
>+
> 	if (drm_rotation_90_or_270(rotation)) {
> 		if (!intel_fb_supports_90_270_rotation(to_intel_framebuffer(fb))) {
> 			drm_dbg_kms(&dev_priv->drm,
>-- 
>2.45.2
>
