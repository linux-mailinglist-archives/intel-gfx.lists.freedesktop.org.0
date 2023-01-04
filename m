Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A27F165DC68
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jan 2023 19:56:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 389DD10E46F;
	Wed,  4 Jan 2023 18:55:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90B1310E46A
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Jan 2023 18:55:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672858555; x=1704394555;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=9i2yyqjWZZjCDZckue6YbGZcEeP64aiO+5FQPavhevA=;
 b=imzIgUs2krJhxECEJ2TTfQ/bhvy9MDotXa3NdN6ZHnZJb+fX/Mp3VZSH
 J085UKK7koiQIG9pOxs1IU4nGav69Y+VvjFsKDvKsvZ2J5e5lMQVJ3/nr
 fMGLg/PpQjkuOOzTlbYaJ7XqhU4BYFj/ZniFEYkY8+OnoaZRsu55k93+X
 OI0in1LQ3uqPAWml2XJm8oVdwzPdHhpGqnalIaNcEUVT3ZeLnAOwSfUia
 JHYNIbi+BgEgCNZpxkO5pyPkvqlrS+xl4ldkHdYe2rd/COw87ZyT48Z9S
 LXxn40li7FuuiPuF3hIm5N5/rUmgz3espuA8W9/9VSv7b3AM50WIEoPp9 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="301707933"
X-IronPort-AV: E=Sophos;i="5.96,300,1665471600"; d="scan'208";a="301707933"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 10:55:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="718537566"
X-IronPort-AV: E=Sophos;i="5.96,300,1665471600"; d="scan'208";a="718537566"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 04 Jan 2023 10:55:55 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 4 Jan 2023 10:55:54 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 4 Jan 2023 10:55:53 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 4 Jan 2023 10:55:53 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 4 Jan 2023 10:55:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EMeACGcFPBehS97wm9wd1RZ7N6A5sytwhDwNYGJEn56wq+rRTtIdK2bO3WZs/H8hcHptHv9PDWn3RDykZgFrrNoFqrkcKwxdUZnifgV33d1V+IbU7CdWo3Q4Baa+ElBqzbY51T0dtgOkSsdA/05KcYrZTON0mnsf+/E3TjF52ylIoEIxJzXljw3/Hq4oHYDgQbsatArAgZEZ2DC5Dh5tKl1Wmrd4R2QbNsoi8JoOJx8Z65CxRrAqaBmdl0fjimqa8TgQIfKGNO96GAgo2dUHXXPDmq6T/gIjvSiXK2xELCX54xFtyjThlVmKmEwTJB4V+pLMeZ3BeuSEHFTP10oDIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Kn8R03eXZsDgULTDkK3CZa+AyG59S4YMluEk6+D119A=;
 b=BBF0GWMWJc784iNUhUqWqpwfruKL6PQdGXvirhLHy8FNOyEA5df/zeUwGeJ3RTLl6kA2BeCwe3DZVVWR0cJvb/At6wuVpiU8jbMVMOMbnrizJP2EgMz8OFf5008M1+v8FUJXtnG3blvlUyDJ85rsTiLJgA3+QVz4+QeSRBcaLgILVOND5n8pCrInJx601QckQY7mjCuwMHLk6LW9CYl5B1bofoRnK1g9FqOLa9IfNtVFTVgMM83WDH/upFrnE9zg510I42DUrhfu0YpvYGRIHgqtC4ACWkh72cUpyA4eiYrkIW04C3lH9y1e+9fxuhFt73oEK5CfPfPswpo7jorvoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by MN2PR11MB4518.namprd11.prod.outlook.com (2603:10b6:208:24f::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Wed, 4 Jan
 2023 18:55:51 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808%8]) with mapi id 15.20.5944.019; Wed, 4 Jan 2023
 18:55:51 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Wed, 4 Jan 2023 13:55:46 -0500
Message-ID: <20230104185546.1568277-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <87tu16y6yi.fsf@intel.com>
References: <87tu16y6yi.fsf@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR05CA0148.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::33) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|MN2PR11MB4518:EE_
X-MS-Office365-Filtering-Correlation-Id: 52ee5fde-1419-4c93-7e55-08daee854c70
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: eyx3TiAdpY8Wm/rB2ky8iOVPu6FzP3ORWGbmFbDgSIAx7oCbabzTGW1PdTreZ1++DNvJWLu4vIM7mfgfoeUGJiWFu0zORIILR1olQV6S6Shpg+iSTiIqdRvjsDplD5ufooGm6JfEnA+L6Ve/OOW7wL3qICRbUzaAxPxBafuFUyS/plULJ2jsl/3blrQJDLkag9/YtiH4uxDNEPVA/ki71Rn3YeLfwODWvhqS2Lsx/9viqMqWnkfRWVafc1KSC3+HYI4NKfrrW3XHZu2xz1NInPTSu1qW9kH8bTzp4kbg/+0peCXge01G0sqD9eDbE+s4XEapJZKgWKGo+QM/uJ9AmePN8fuyBWN+E6Q34gJosBP7FKF846xUGs38FYAy6bQStVXonKNT4ppghF5Z8tHLFPTmKCmJ1OZG06yfgZdg83c88MVXi1HsiQ7BaOJLR57UX201XpPUGHAX7nUdtxZzaeeJovDw9qwpWzf3lBosW2UDbxuQD4W7KCQ9BCG4o/Hub7wOj5nVIhSs/aFdqLCjGPqdxVNzo1EI1n9H3cxcai6JnkCWVdH5FhfOpXonT0X7mpOMvB0eIT+GfQ7gCXjWHytmLi2FElI3bZNY9X3HSuNS+K1kUP6VV52jhRs4r8oPlWAbzQqk/ICHULELUsOp6g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(376002)(136003)(396003)(39860400002)(366004)(451199015)(83380400001)(1076003)(6512007)(26005)(6666004)(107886003)(6506007)(86362001)(36756003)(82960400001)(2616005)(38100700002)(186003)(316002)(478600001)(4326008)(41300700001)(8676002)(2906002)(5660300002)(8936002)(44832011)(66556008)(6486002)(66946007)(66476007)(54906003)(6916009);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?u5wyQ4JBwT4kd6i8a2g3sb02PQBXyP4fcCAnO0DZ75Vl04LI+MW4p9fKqdtR?=
 =?us-ascii?Q?eBRUVJ5saRtjhradRcOUTwrGCBV1655vf9W99DRGhcIc93sD32WPScFmU6pV?=
 =?us-ascii?Q?NaXpTHfrS+OYlofxCVVL5MjmRG8mNKi9sYTrgAQtevwVIKqCIpW6ghLrq6pU?=
 =?us-ascii?Q?UmwcsIJUVQ3C4xoBb1+6M0lSy5wqzCEdXpP/2WDqG+gf98uN+mHZjYfds/ND?=
 =?us-ascii?Q?WymUGB9rRozcpNSZeJGh3kerjvCx3xTeOPgmrk20Jd60SkSZSwieUW0pf188?=
 =?us-ascii?Q?ipZmCeiZJ72N/nSy8ZPzdinM0vQGBvZ2CRFeLkMgJGf4SDCs6uHD+UpWiw3M?=
 =?us-ascii?Q?9ZTtyzTkXIiclc3q7pJy44F3oKFUffU9mqiAf4cpHQ8PAFCW6ufzoGwm2zmq?=
 =?us-ascii?Q?PGTTIgoowhR9jc++G8yOBCskhhoknD7vpKSCkd6A+bnKIKDiSyi3gIV8ypDS?=
 =?us-ascii?Q?JGQRjxBC9jnvuk3+gg3z8vpAWWrupw7MX5KVjB0Bpz4/5v8hAAUVRhHj+Tnm?=
 =?us-ascii?Q?DpSpjgPWFwy1qvqGZOJL/vHU4e4dtn8N4su/EUV1nJKNPHHCkVRU7rslF8pO?=
 =?us-ascii?Q?mThQg/l2Q0FKUN54I3MorzPR4TSgDb+aX7TEsHPISMGO0Q22/Dox/s4MFcCH?=
 =?us-ascii?Q?w7nhTerWtiEdgrugyoEC65RodISvjtYSlfkss3KMEYSHSX45/b5XTaXNmDcV?=
 =?us-ascii?Q?FtMchrIHE7zVFtsSzVfWFuHkCDO/hCBna9pg4HP7LEcj6j3ijSK44CseFp7j?=
 =?us-ascii?Q?Iy3p7oerDyCmzSZYo/eCmipWoIl2zbw3pFQQgM7VWUjB9KTm0ulgD+4hE3Ar?=
 =?us-ascii?Q?BE2pHQWv4ugJ0gXzUmTXE0zkQ4Y7i4+yQmbJX6v1wssBwLibjTy0tQdpcrD3?=
 =?us-ascii?Q?8Df6Bib3cjisWGrxxXhMuEaF5mZ/UbeeRKdG6dnNHWGLzUbPW1nagK8ml3cx?=
 =?us-ascii?Q?n7fjkAFGnvybFh8ib0kIT4Age01NoDuU7s3kX9/0F1ER8hlcifX2bBtVyUOF?=
 =?us-ascii?Q?aWLUx8aZ1uLX/VCMdxbLaS+a+9FuXQDD/isjkBS+Fs8N8CqgS2HN5ZiztRTd?=
 =?us-ascii?Q?r3VdvuDcJF8mXVxETQm/pBRxiqqU6PXD7Yb9SWj/yInKKWobGY4G/yp2O9TY?=
 =?us-ascii?Q?QBcdbUV/NsaVZwWRqalljH4P6baVlIDIqsxAN7jFqZLSL/ToYqxgWmf0llN5?=
 =?us-ascii?Q?32W2L9oNUj7qn4QjGqVTTeKaNnYJQG2WV59ulJNnI3L35Xn4ZhcpQ/5Pb1rs?=
 =?us-ascii?Q?aUfqb5f37ppOQe00lZJjT9GLznNxabS39mGHM6MelmrIeNAJCOuLPEZaXT/B?=
 =?us-ascii?Q?v7EnshFes+E0o+Apb6AwChZqBvwdqmbdtdGlsy7XS4ihVI5sA68QLFrr6Pbb?=
 =?us-ascii?Q?+3usvdoR46sWc7p11HqTvr9lZeuEoHYnImP9gfyyrVM5vM/Ft0hkYsn34GL5?=
 =?us-ascii?Q?//qjrjBZLPYWhf2kVp/G15ml26ra0aQ1P3UdntNowu62hKhmkFmhWUIY4lVZ?=
 =?us-ascii?Q?tYVOlnR6NBCqxyL/Jr4ektRKfRkJMP+iLKVgDgvCT+2NBix8S/Ud/c6FXk3R?=
 =?us-ascii?Q?XJPLvyxaF+tmVH8X0mM5llUnWP7fTe7L4Ol4FBJNUkQN/Rh6btqfRCQA5Fj+?=
 =?us-ascii?Q?Ag=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 52ee5fde-1419-4c93-7e55-08daee854c70
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jan 2023 18:55:50.9972 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VfKskJ7HpQVCOBnFqV1mpIT9JHh0Wt9z4ODsZ5rJvwOYwlYHnyV/SfmaY4QiEm0kXMf1DSb0TdDYWxg0BQTylQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4518
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH] drm/i915: Expand force_probe to block probe of
 devices as well.
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
Cc: Jani Nikula <jani.nikula@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There are new cases where we want to block i915 probe, such
as when experimenting or developing the new Xe driver.

But also, with the new hybrid cards, users or developers might
want to use i915 only on integrated and fully block the probe
of the i915 for the discrete. Or vice versa.

There are even older development and validation reasons,
like when you use some distro where the modprobe.blacklist is
not present.

But in any case, let's introduce a more granular control, but without
introducing yet another parameter, but using the existent force_probe
one.

Just by adding a ! in the begin of the id in the force_probe, like
in this case where we would block the probe for Alder Lake:

$ insmod i915.ko force_probe='!46a6'

v2: Take care of '*' and  '!*' cases as pointed out by
    Gustavo and Jani.
v3: Information message improvements by Michal.
    Documentation improvements by Jani.

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com> #v2
Acked-by: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
---
 drivers/gpu/drm/i915/Kconfig       | 21 ++++++++++++++++---
 drivers/gpu/drm/i915/i915_params.c |  2 +-
 drivers/gpu/drm/i915/i915_pci.c    | 33 +++++++++++++++++++++++++-----
 3 files changed, 47 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
index 3efce05d7b57..3dfc1f5ce4de 100644
--- a/drivers/gpu/drm/i915/Kconfig
+++ b/drivers/gpu/drm/i915/Kconfig
@@ -54,24 +54,39 @@ config DRM_I915
 	  If "M" is selected, the module will be called i915.
 
 config DRM_I915_FORCE_PROBE
-	string "Force probe driver for selected new Intel hardware"
+	string "Force probe i915 for selected Intel hardware IDs"
 	depends on DRM_I915
 	help
 	  This is the default value for the i915.force_probe module
 	  parameter. Using the module parameter overrides this option.
 
-	  Force probe the driver for new Intel graphics devices that are
+	  Force probe the i915 for Intel graphics devices that are
 	  recognized but not properly supported by this kernel version. It is
 	  recommended to upgrade to a kernel version with proper support as soon
 	  as it is available.
 
+	  It can also be used to block the probe of recognized and fully
+	  supported devices.
+
 	  Use "" to disable force probe. If in doubt, use this.
 
-	  Use "<pci-id>[,<pci-id>,...]" to force probe the driver for listed
+	  Use "<pci-id>[,<pci-id>,...]" to force probe the i915 for listed
 	  devices. For example, "4500" or "4500,4571".
 
 	  Use "*" to force probe the driver for all known devices.
 
+	  Use "!" right before the ID to block the probe of the device. For
+	  example, "4500,!4571" forces the probe of 4500 and blocks the probe of
+	  4571.
+
+	  Use "!*" to block the probe of the driver for all known devices.
+
+	  Please be aware that '*' cannot be combined with IDs. For example,
+	  "1234,!*" will result in the global block, even for "1234".
+
+	  Also, the '!' case supersedes the regular case. For example,
+	  "1234,!1234" and "!1234,1234" both block 1234.
+
 config DRM_I915_CAPTURE_ERROR
 	bool "Enable capturing GPU state following a hang"
 	depends on DRM_I915
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index 61578f2860cd..d634bd3f641a 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -122,7 +122,7 @@ i915_param_named_unsafe(enable_psr2_sel_fetch, bool, 0400,
 	"Default: 0");
 
 i915_param_named_unsafe(force_probe, charp, 0400,
-	"Force probe the driver for specified devices. "
+	"Force probe options for specified supported devices. "
 	"See CONFIG_DRM_I915_FORCE_PROBE for details.");
 
 i915_param_named_unsafe(disable_power_well, int, 0400,
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 7fd74cc28c0a..1bcbca38ce5c 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1253,7 +1253,7 @@ static void i915_pci_remove(struct pci_dev *pdev)
 }
 
 /* is device_id present in comma separated list of ids */
-static bool force_probe(u16 device_id, const char *devices)
+static bool device_id_in_list(u16 device_id, const char *devices, bool negative)
 {
 	char *s, *p, *tok;
 	bool ret;
@@ -1262,7 +1262,9 @@ static bool force_probe(u16 device_id, const char *devices)
 		return false;
 
 	/* match everything */
-	if (strcmp(devices, "*") == 0)
+	if (negative && strcmp(devices, "!*") == 0)
+		return true;
+	if (!negative && strcmp(devices, "*") == 0)
 		return true;
 
 	s = kstrdup(devices, GFP_KERNEL);
@@ -1272,6 +1274,12 @@ static bool force_probe(u16 device_id, const char *devices)
 	for (p = s, ret = false; (tok = strsep(&p, ",")) != NULL; ) {
 		u16 val;
 
+		if (negative && tok[0] == '!')
+			tok++;
+		else if ((negative && tok[0] != '!') ||
+			 (!negative && tok[0] == '!'))
+			continue;
+
 		if (kstrtou16(tok, 16, &val) == 0 && val == device_id) {
 			ret = true;
 			break;
@@ -1283,6 +1291,16 @@ static bool force_probe(u16 device_id, const char *devices)
 	return ret;
 }
 
+static bool id_forced(u16 device_id)
+{
+	return device_id_in_list(device_id, i915_modparams.force_probe, false);
+}
+
+static bool id_blocked(u16 device_id)
+{
+	return device_id_in_list(device_id, i915_modparams.force_probe, true);
+}
+
 bool i915_pci_resource_valid(struct pci_dev *pdev, int bar)
 {
 	if (!pci_resource_flags(pdev, bar))
@@ -1308,10 +1326,9 @@ static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		(struct intel_device_info *) ent->driver_data;
 	int err;
 
-	if (intel_info->require_force_probe &&
-	    !force_probe(pdev->device, i915_modparams.force_probe)) {
+	if (intel_info->require_force_probe && !id_forced(pdev->device)) {
 		dev_info(&pdev->dev,
-			 "Your graphics device %04x is not properly supported by the driver in this\n"
+			 "Your graphics device %04x is not properly supported by i915 in this\n"
 			 "kernel version. To force driver probe anyway, use i915.force_probe=%04x\n"
 			 "module parameter or CONFIG_DRM_I915_FORCE_PROBE=%04x configuration option,\n"
 			 "or (recommended) check for kernel updates.\n",
@@ -1319,6 +1336,12 @@ static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		return -ENODEV;
 	}
 
+	if (id_blocked(pdev->device)) {
+		dev_info(&pdev->dev, "Probe blocked for device [%04x:%04x].\n",
+			 pdev->vendor, pdev->device);
+		return -ENODEV;
+	}
+
 	/* Only bind to function 0 of the device. Early generations
 	 * used function 1 as a placeholder for multi-head. This causes
 	 * us confusion instead, especially on the systems where both
-- 
2.38.1

