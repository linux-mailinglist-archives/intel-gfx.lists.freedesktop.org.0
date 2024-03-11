Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1448788CE
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Mar 2024 20:23:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62FC2112C1E;
	Mon, 11 Mar 2024 19:23:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aQ/cSzDl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5813112C1E
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Mar 2024 19:23:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710184998; x=1741720998;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=gqEA83ZtOOxqEONLvEk7CGKvhrmdpjQWtSvD7fl5C9s=;
 b=aQ/cSzDl+H2mWbudEfxnsj7owHGgZLMHX4UTwfAFnXQqPC2I24aDpqf3
 gcuhu47vTEIUclNglr1TT/CUkhy507lIs0+fmcOM/YZxaQ5BgaaFmE8bJ
 ku3Tysvd/BhA9DrbG2Y3AhoAWqAUzXKRp1+B3BVTLDofqZygBCSFVVY1i
 SGYkwW8fRc3LBFW6gOM/dcBjSH4AEwFnliLZjS5T8Pyh5v3qhAWUADYat
 Z64wRDIxiFTyIm26b/v+u+zZw3gabHFXFWImeFdDZByK6K2lbbDrrlJeh
 +dcT2wD7gNiZtJuYrh1w15s4C4pgR7jGTqK5k2UzTAn+F2/R/gUqQj0en g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11010"; a="8686261"
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; 
   d="scan'208";a="8686261"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2024 12:23:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; d="scan'208";a="11338452"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Mar 2024 12:23:16 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Mar 2024 12:23:15 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 11 Mar 2024 12:23:15 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 11 Mar 2024 12:23:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CKdEB+cBxTvgvYPk0WBIskNmzHl/f8HWWinrNHqUpn6r3i9bRwSDSlq/B8lA/W2uavMSCSHvlOP/6Mx/OdHeJAJrWl8ZptJfZ/mGc5lm65mrCqAozu6TDOltDaR4cW+wYjprHtly8IhFJjNAf1qpEw5anYnQUPVrunxT83H67rmttmpM5kR8asjEvrRTI0M359axyPcfDIWVct7c+FNNVufdDR+lPRw4HBljzldmZBwrrs2+LxVd9+W0/7IfgBo7gnTIDsvnfvZEdhbwCkKpxDp6ahAruMJDGIYXIVuOqLTczjuCEFOLE5F506fuS/7w9/eVNtPoJfvvGRN683No4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EB238jmxX46Y4UddB2n9Ix5zgvjmCsEbNTlpNKAZz1w=;
 b=E+TbkGHZoNsKVlExXsiMAWBL4FdJNvvcPmqP1o+MAURjuNAGMPeoqHMoZltt5OwY/N8LbfU9C7Fw3MbJ/wTbe9JlEX+MaFUVnyaMG4aYuhBhrtQe+7y4Mn3KTmHLk+qncAfoVIGxxhWfkPClQJz1tFV+gZuy+y2V7ud+9KgmoI+7PrfwI4UvUC5kj4Fk0xkfSCmNVQ2ii5sj8Fj0zlIb3FFV9aRLTONDWg6FHZb4fKE6m8HFr+relrPRQnwcfa9AQRmnEHLAWsAhba4zBaOEaAEKVsCEb6KAlx/zU+BP0MfM55J5VOD0gsFV073FXVBFE3ZyEE7YtCRJvTiGnKZ7uA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA0PR11MB4526.namprd11.prod.outlook.com (2603:10b6:806:96::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.16; Mon, 11 Mar
 2024 19:23:11 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189%4]) with mapi id 15.20.7386.016; Mon, 11 Mar 2024
 19:23:11 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 02/11] drm/xe: Introduce intel_runtime_pm_get_noresume at
 compat-i915-headers for display
Date: Mon, 11 Mar 2024 15:22:54 -0400
Message-ID: <20240311192303.33961-2-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240311192303.33961-1-rodrigo.vivi@intel.com>
References: <20240311192303.33961-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BYAPR08CA0025.namprd08.prod.outlook.com
 (2603:10b6:a03:100::38) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA0PR11MB4526:EE_
X-MS-Office365-Filtering-Correlation-Id: 1d0423d1-fef7-4a8b-aa2b-08dc4200b072
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ViooXs1jZQiNKVd4lU32cLFUrsX1BIj3oEqE0YO9AgSpSXmiKgQfA53KXHY5RicoZeAPOZtSYN9/UZNqOXk/9Vu0ADLVHnFG5eZIAcVW+qM0XEpMrodjjhC/3Ot9ahNitbWniFdAJt3sZsy2V+D5QD1CM2QDWbdYcjM6EfHG+dZqAZCAke/hsW1iM8ihagcowGM7PuUYd3AMikTXuol7oq3k/t0AfGp4btoIKRXC7E4CC64C4v17CYGNlZGCh8JcLtXTrvY/bJZ/UfzHbSswEB9eRHhrnd1yn8pSaaLyvOG74HY0uGe8yon0teIW0nAL4keJF+ANfoBT5Faq3qYtfNSFopKU6KQWR0AsIm11piMoHSTlNMuz29tfzSeDJHR6duEUrKvzl/ZhSxufVjJ46ewdHjS2enRrTK+fV0dMHCcqgO2TZpekcF3azPBgn+k4hN+TY9TdDJnKEGuhFIY21F5Dpw8OZ9OZRgQ0TQRv9WEp+bmKBxwNEM267YAdRUS11dW+TKdXmKNqxF+HktffkBjWXISR5owh2CMIOaxfca8yPgqPPDOkMsCKgAXUame3ueMcHTXkk+wXh0gmbjkuCPVjyoERaZ0R9N56sBIK7/BAZfo/SCwPyL/ca+RQbCRDf2iIYylCZRQsXnKpZcEn+XK/6MrTKWfOfHFHEnnig00=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?nFxxmYdaNixsecyImS/GZoehbpCRJ1f5uy8JxPI0I0vd6f2GHM7w+9m0iqAZ?=
 =?us-ascii?Q?N/vm22U6/Z1pBvBn1Dijwz1jTydD6pPjOYlF9rUtMs1gKPi5moWcurzyzSqC?=
 =?us-ascii?Q?by25mD6fnLQ5RYscQVz4Ji9Ly2CwAlk66Oahcn+1n+nSOQO/n8Kdbv4l9nHq?=
 =?us-ascii?Q?MklFcFZY3meenVEAnXII/TxbYWQs4FKDAl79FgSATho8xerklOjT+kAzongP?=
 =?us-ascii?Q?ASgkOVDqK+R7soVQeCmcYob0frZVQNR+ZYWt1TexDEt3qehbwJ+yFcwPWSlq?=
 =?us-ascii?Q?NmtTZdbNp6LRPx7HBC0HfCWJc6zOqUnhKZ/cBeBbrlLiNBkyrzhpwH4r9ylG?=
 =?us-ascii?Q?DNYA5MH/86CB7aytwHPbwZy3zBwkYO7/mt0SXYkG15X4PNW4vJLylDnWBMp/?=
 =?us-ascii?Q?KvapG/KZwZMvC/oU4x8m8SWK3EUhZGgWA8ZePc9U6c5d3BZNV6RznZ1CwpMb?=
 =?us-ascii?Q?yrIaEy+AA9bQc/He7eJA68g62UARujEA/UwDzKgnX7sJLHwJYJ+oMm2SJLt3?=
 =?us-ascii?Q?g4dgrUZKQ2rOP+vIelZwzxUv8CFqkhVoAxpDiGSLN5c2JwQtHrTgKGLv7zPH?=
 =?us-ascii?Q?D2sfcqB33ASrdGjOMtnYQdyr8Nx2SreqZjSC2GbR+MV8b8sQWkzs493J/LAR?=
 =?us-ascii?Q?wlZENSBtVWlUIQzGJ2gUPuonO1xRNBQNkPlots/rXwvmWQOdwJMQBRS/byiK?=
 =?us-ascii?Q?yHagOYojnapAFzpyDXCLv/iY1leQnwflxoYtGkqDl8bGPTj5IZytQgFggetM?=
 =?us-ascii?Q?uio3R0IhLJ3O0tOaVFisDEIZ62fKtflP3nNMZOQLcvQXwpqrJzsOB4ZP4CeZ?=
 =?us-ascii?Q?MZFpfBa4l48Vjq0+GFOiz1wyLqNCsnUpIyuJlzIU+VRkVnlspvzv/v7TQHT9?=
 =?us-ascii?Q?GAsNggy/SbFtbCqIkh7jaNw28xYGXh20Csp/GOp8I6i7l/GdomOAL3hJ9rXf?=
 =?us-ascii?Q?8exUW733seCXxtaabwlQRIPkYITBt1Ubw44gHauSMr5RN49yo/8hrUXCdNt3?=
 =?us-ascii?Q?hb8673kztlNjtbeyN5K8ipFbRLUqgXXLoQgS5t6Ocgo13FxDTCipkns9ZJMm?=
 =?us-ascii?Q?9UzFiZgjlNukFtXDWW60V3TwdflYbAwRAQfvQWBldCLGRygXdMHQScVXhh8t?=
 =?us-ascii?Q?9lHicyaxv06471WrmotNaPhVtkmCWGeG0BdIJS0U8oCs0EGdpWLFBu6y6Vvz?=
 =?us-ascii?Q?H+GeBSYhiRaEsw5Rien4KCMtyW4s7ToZMdDDwvSGoN3GQBYvmb7JnCPXHZNV?=
 =?us-ascii?Q?wKYbFFheeMifuNkRmLMTF5QYm4z+Djqjl+hA11d+74asZcRqtC/0DyVJSm4/?=
 =?us-ascii?Q?i5qSd/LgFJxQAMSwrU/ZSqxirEEcC4HQ+9pnCMa3Te4IMKqFXLXiw6iO83pj?=
 =?us-ascii?Q?YvlbKD+B9W+C9HVKzoEMkxq53CRt8FvDhgOFuhvcA4jM8tsVq9mVfEcobTPE?=
 =?us-ascii?Q?k7jimn7fWTt6STIJs/m1jiOg8EFfstWEBBrbZlTgDGVIMZma4oZbOg0MsGwp?=
 =?us-ascii?Q?I2yL/GrYPf4tmVpgpsGqKOoraQwCielAKucnlu+FDq6dakjOZC5bPdkorgMU?=
 =?us-ascii?Q?n2cNkQruyQyvRopJXfqK8pJ4yjF9wX25M252n01Ia+9R2m+WjJFXGU5nQYit?=
 =?us-ascii?Q?8Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d0423d1-fef7-4a8b-aa2b-08dc4200b072
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2024 19:23:11.1040 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iSvZiOTsx+cv5KyF0/PbyU7R49sFc+B8ImiA8H41TBZksjXh0VCiifGP74UXaLOFJagV4ajLdRMYluO7txK0nA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4526
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

The i915-display will start using the intel_runtime_pm_noresume.
So we need to add the compat header before it.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index fef969112b1d..84fda436faab 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -176,6 +176,13 @@ static inline intel_wakeref_t intel_runtime_pm_get_if_in_use(struct xe_runtime_p
 	return xe_pm_runtime_get_if_in_use(xe);
 }
 
+static inline intel_wakeref_t intel_runtime_pm_get_noresume(struct xe_runtime_pm *pm)
+{
+	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
+	xe_pm_runtime_get_noresume(xe);
+	return true;
+}
+
 static inline void intel_runtime_pm_put_unchecked(struct xe_runtime_pm *pm)
 {
 	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
-- 
2.44.0

