Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 758AB87BE93
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Mar 2024 15:10:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 896AC10FB7F;
	Thu, 14 Mar 2024 14:10:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="erqTFITx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 232FA10FB79;
 Thu, 14 Mar 2024 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710425453; x=1741961453;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=5kbhf1xbAIctSZ8eqpCnNc4Fe/rt3++0NZGwxm7kKJY=;
 b=erqTFITxupQw3vhx1sGTmDFl/uB/V5BthKW8qcbAs+v+tp9c+1cQltwa
 V3nE2BxoAib3b2n/2FaQYLfD/DeeUamvQOvbE41hJ9ymvbREG/UqN8hGx
 VSetoEhoFe+DRuS7qqM3M5qfvfVFs2MBiQRcbo2VrNHpxsn5iNNDP3Ck+
 cFgly31Z4VAzgXC1p3nT78g/MLMXN7trqNtyElgisMbz3KWYdhtdCplLg
 U4SlFnDlyZhzCF22tzLZDm/KEwJRAwHOYPtRQi22G9NFhlIculppDOTDz
 RT8/X3rLMSlduZcEhQIIP4eH6jRVyQQvoXsJSkENcyTYxpdn0z+8GTtW+ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11012"; a="8182623"
X-IronPort-AV: E=Sophos;i="6.07,125,1708416000"; 
   d="scan'208";a="8182623"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2024 07:10:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,125,1708416000"; d="scan'208";a="12369344"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Mar 2024 07:10:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Mar 2024 07:10:52 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Mar 2024 07:10:51 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 14 Mar 2024 07:10:51 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 14 Mar 2024 07:10:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D6ucT7Vctc9kgn5HwrB48aoSWDzW7/N70TF7DG3uPuPDs0qNy3UQWPbf4lYJ3e15GoNWrnVWTyBgTFDVr/b2EosKPIN7Yu883vt6UREJnKFwhbCiUOqADvAcdjvOq1+9Ep5vwmNKtTq0CjCuILgFE6Jbsd5kpy80l1CAej2A86Ls5/dx4/PwtvhM1gmpKi26+og00zYsWT9cY7DeDs9U4RH1Ie0q37y44ImQHYe/II7SxlzDfDiXqlkhcNH5qV6GybYgYknY+hcqVUTKTLqjcHOvOkDtQ4tJZ7vp8dks2Go9iS67Oo4R0MEXJ0Yg9y6VtRwo0jB5/1W+NqTPWVFRbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eEgnDhXMzqO3WTV37HUuAMsl+sCzS5xhJh1fZhnSdyo=;
 b=cyl6r0hpF/KsHNZsG8hRNBcM7Tp+D/OcFoNi0eGW17JP4HM/LanOu3Aott5YdMzkKGbmpgpZJ18G3x/z8XkQXZNuTOiGe7hAMgyQGUX4+NZQtui8s1Db0b2VRoPXR67IeyrlGRAZwmXc18gaXrlqeS9hj3wkXnhHyVM1L5I450zdYYTBEnfiGDaZrMnJNLxS+b2u1IWqGBzplhfT5WzN0OYxMwpFaYntxKas7HxoxoWAwN4ggaFoK9nclhDyP6pTbYR9SXVTa/9FmpgXwDegXSv8id3Wzt/gaYCIhb/q6slOyq1uyZAOd2BJunHvR8rxNfJT4Ilt7WivTzRXcuDxLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.18; Thu, 14 Mar
 2024 14:10:44 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189%4]) with mapi id 15.20.7386.017; Thu, 14 Mar 2024
 14:10:44 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <francois.dugast@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 05/11] drm/xe: Convert GSC HDCP from mem_access to direct
 xe_pm_runtime calls
Date: Thu, 14 Mar 2024 10:10:15 -0400
Message-ID: <20240314141021.161009-5-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240314141021.161009-1-rodrigo.vivi@intel.com>
References: <20240314141021.161009-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BYAPR01CA0033.prod.exchangelabs.com (2603:10b6:a02:80::46)
 To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH8PR11MB7965:EE_
X-MS-Office365-Filtering-Correlation-Id: 6d31e9fd-a114-4103-54e2-08dc443089ad
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Qa1Mxujfg/9YyVy0LIg9jaL/1THSHtjgFg4n2LRwa6HtFCt4500+9zi2f+dErs7v86zpzjJAHQ7SP/0H9f+3S4vb0XMe88otly/3EBMCkteI4g4X0UsTNWsDOBsg6jNDN37ZIT4jXT/LQal/VSfpLuw3hTG6Z4gfUX4utT3vAuQJyWFevf5+KgD/6YJkWF13pzRVd6jdDJMZWiBNQQganlI5EEb5U7NF9pJB+7oj3Ou06y9HnxI2o5GB+otgh2slL5JBDGrZmOzVu673/b1g7gfkIj8RqEKmb3+RVuAXOuFjADJ1faw6uQUpZKWprf/VKPajrhh8EX0U0iTz8vHhcemPpHc/fjcB5LIpdk3AqLlZ1ST7fOeZP1RYqSNaVUNFPMzj7Vnui1OZu5w4wu9cxeTQxhSPehMx4YDZflH9ODZvyyToMiA7hxmRgOYTmZ5KBnEssVk0TdfJrO0/4lcTM3fE9AlApJi4nAZSp+l70PxDZrbuXATAW02xrhxssqEx0N5pfz+5Ns0GlXKKgmGgC+5iVe5jev4n9Q2BnpRDGEaLWr7NRVVc1C3euLYbw4cKukjWE5jozyTdDrNMZsSfzfuMcKvtE7zqfokBYZIRFZSlhR7DTSHfIQF1enY+3FXSvB8wMGpRPeOuTH9opdpBXJRO8dWnNbMPL7gjYQNWFGc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?uiQYZVyKI8qr7vk1mw+sU6WgobYkKI6QEWkf+fxXup3oEWPkGodBXI8frMZq?=
 =?us-ascii?Q?fBnBRplXI2XZsHFQtd4CInDO2eUl7O5CUE4OmRsB8keZcGxTE/qtjo8GUwiM?=
 =?us-ascii?Q?MIS+rQCOgv6TX5Pmv4hzqzp/BdgelwkLsnmUeN4zVyCE/kS6P/hoIyg/sbAI?=
 =?us-ascii?Q?t9xd5+VuP25P/MsjJzEbdI+AviAZCCdRSBWX4vLBMyJZ6RDqXN4agRzwC5zl?=
 =?us-ascii?Q?sflgpISp2AyYBe5UA4Sc0f299MjKHsLYTf7sDy0Gc6NnvmRiKvu7zncM0paN?=
 =?us-ascii?Q?NmhFRcyPW6BL8PBv3md/0pH8AUkXJ8bwFAgmpYshuGG9ZlM0KNDUtg7EVjq9?=
 =?us-ascii?Q?qKRP4Ugtwrk4KU9G3uk3M0strJ/SOp5y64j9OR78UkUy/mnHloD5eZ8XYNpk?=
 =?us-ascii?Q?FbLOQdW6XqUyNWmdAVqRHqkK03GWh5g2YTbPbrGTnj1W6XH8z/IWUbxT+yfg?=
 =?us-ascii?Q?s9AsLvXeO7Yb0IXcDRCAu6nRLWiGNi5qScOswhr/HCS5Qz3pYdc+ERyI+OgA?=
 =?us-ascii?Q?gXywIAm8/0g0kG+751BqRyMJcj1pN6C4w0cOsiI6NIhNQG7Vz7uIatAbkCxP?=
 =?us-ascii?Q?yHch5OCJnvwJtdv3RuYpsevh4v0yCdsvznMg8vk55YXrwSwrfs5BCTgAOe3Q?=
 =?us-ascii?Q?Zm2Z3vgBXnaYuoucbObPC4zOe26Jdiwmg6ueaf5Ag7iWRkHgz3Dd7CiUGe2+?=
 =?us-ascii?Q?va2JmnmN4E+dFeOha37mdb/7LnCSXU4LbaVmy1oLAGGreyOORkh6U6UgWdkj?=
 =?us-ascii?Q?Xrh9k8A+iQMWtDnkK+i7XkGIkVqW2fGMsV7xKNaulSXiu+CYjgsIgP1GOWOo?=
 =?us-ascii?Q?+oMpKAAk/KZxieGsGWIFSufwEUI/J8bgD1uLChUu+lcRu0/S1FwMARYs9BSV?=
 =?us-ascii?Q?/31N/W2vnDCAnotAkqT/gh8hZoyCSa2+ovSwk0byVQUpT+4clRHMSE+vE0mG?=
 =?us-ascii?Q?ptFcNi2ivy3F4AYv0AFRPAnavIAnb8VYtqb9Y+rmvwS5cDywPbQjLIqOn9Ru?=
 =?us-ascii?Q?F0DVYc6ksHq6IUtjs1cLjykhIgXfaSkLNBSQGC+/TvYdOQdiP0WpxuriHc3G?=
 =?us-ascii?Q?XvA2mvZnfoAfINrO03WDYbFsN2DySlNzXyNgkGfwUCjcGt5tx4c97c9usV9+?=
 =?us-ascii?Q?8U4NbL7M0kCpJiduTC02k8gzOjF4FMYC0hAHGPa2sCnVthLZMsS3qIw4KaHA?=
 =?us-ascii?Q?L1ajBghEx7Yf3iZdiLgnBa651HhYwHoOMttQpVdyfDQcxFRKtpUIjzGopEGv?=
 =?us-ascii?Q?fFlkbuXMt33zXYTcmFIUKhWvOV65PolmI+KKkGfZwVWtUbBzJI5/mBjTAwz+?=
 =?us-ascii?Q?3e0JRSXKV06mXtU3GfuNmqpZrUYGjuQwvMNc/e/BkHX9CL9IZq56ZH537K2V?=
 =?us-ascii?Q?otCvOqROMgvCDRd+SNLSy4xN2BHTSKsBYqcitG966Kkm3YLv26Xrf5cOZZNr?=
 =?us-ascii?Q?Ag47bx5YW1rs1KnDO7qjNNnjU8SgmrGGFzb1dccLiDv+hgstFn3XO28+FQEe?=
 =?us-ascii?Q?hbjBgEXiFJtMwM4YnQCANnvgo/F18JgEskmkT3uQqq0OX1kEnQt/pAgFIAzY?=
 =?us-ascii?Q?pbNCRb5Gzr3FbWAk2lCJELAQAqC4FNcmAqDHkYh5iKAZNZNXvlScwx7s1nk9?=
 =?us-ascii?Q?5A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d31e9fd-a114-4103-54e2-08dc443089ad
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2024 14:10:44.1267 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: L8Mn0/65xFWZBRbD839gme2NyBrZXgF/YTYvhDNvKJE+94nnbaPjQAMSkPGbJGEt/s/95n9XWWHLRCNR0MCZyw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7965
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

We need to convert so we can continue to kill the mem_access.

At this point we should be protected by the display wakerefs already,
so let's use the noresume variant.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
index 25c73602ef55..a221f0cf4bac 100644
--- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
+++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
@@ -217,7 +217,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct xe_device *xe, u8 *msg_in,
 	addr_out_off = PAGE_SIZE;
 
 	host_session_id = xe_gsc_create_host_session_id();
-	xe_device_mem_access_get(xe);
+	xe_pm_runtime_get_noresume(xe);
 	addr_in_wr_off = xe_gsc_emit_header(xe, &hdcp_message->hdcp_bo->vmap,
 					    addr_in_wr_off, HECI_MEADDRESS_HDCP,
 					    host_session_id, msg_in_len);
@@ -249,6 +249,6 @@ ssize_t intel_hdcp_gsc_msg_send(struct xe_device *xe, u8 *msg_in,
 			   msg_out_len);
 
 out:
-	xe_device_mem_access_put(xe);
+	xe_pm_runtime_put(xe);
 	return ret;
 }
-- 
2.44.0

