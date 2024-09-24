Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11E2F984C47
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 22:43:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1A0410E747;
	Tue, 24 Sep 2024 20:42:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NYP9GzMU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A82BB10E745;
 Tue, 24 Sep 2024 20:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727210579; x=1758746579;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=seIsQ/HX/Tycq8GRdGQFwnWNtaxFNd+VVdZHBg+KscY=;
 b=NYP9GzMUHsrb1Rf/PJKxBO9TA0/6Sw8ZZywzocPe4/zIp3KrXiIChqt2
 J5tiZW3wKGvNGyDCCxcG2nCglhqrRAJ+jaSyUux2TFZgCYF3Owb/2w3/4
 pf1PtyrAKyc5lFCIU9U4aGsSw+of9Rzsjr30cmOEe4+KWX6TvKjgJfpug
 P5V5I2IBCK7f+QgqwyeyRStIgaYtqlts7guMbkKHPe+ppm+pXeJhurVyS
 ntYekQg+p9SU5U0FmvWRAFtTAeAeGLeHW5djiAYubtR8EyPB3lljBVT1l
 VLQGhfaSl1iIdgwnUqkFqYaSnqxGAvO4B1P5M2ln8gjRRd+828bup4qH7 A==;
X-CSE-ConnectionGUID: VCV0Qkh1TCaJhoz3N9mVNw==
X-CSE-MsgGUID: YIP5soqLRsScYnX1lH+AlQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="43751480"
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="43751480"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 13:42:58 -0700
X-CSE-ConnectionGUID: Luv9eSUgSDGGwijHLq+CmQ==
X-CSE-MsgGUID: LfnnPu1mQ0mLxDnRxNjfFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="76298528"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2024 13:42:58 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:42:57 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 24 Sep 2024 13:42:57 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 24 Sep 2024 13:42:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yOs8jk81PMocvT1vK9ZH8bW/33HpE5GiAiCIfrSAT59jdtuarTp/nPMkLQ8xl9MqdxXelM4s9pSZ1eoyr2YZQMuDsb/fm8kA50PIapBP+QKU07x+JGEwxKDATqUrKaEnkU7zuZBQwv0b7J2qXPSRj6HFBKrpHX4nLGyZrL59WaK/HNmTU50Euw4AyOF0iALtogH64ajmuTFXcI0OiLbGZrfWwb7/RMKE53vcyfMZ97V/ft2yGSiQITWycq4ziT6OM/p4KtklBgzXQEDeV1KrHKVXjeZ2Cpa/OpYIB8zwV2/vjiitrpZhjGNme4e3+bTfBAiDRpvS+8/rM9QWA986qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CgPsbZIV787otqdca2s/ULTWWamoG9C7I97E6+FRagE=;
 b=OwFnkLPjZ6IFcEDUtDLPOT6AOwvp06+yMERO3cOGbbAK1wafnnh2YchRlevFb0rPrHlTWrB8JXOR2QdjqAj7YWZ6wtV+kcWT42AXhOlM5YARfaoTOyrTr2E9wkMrBZic6UFCn62XNlo6Pct1c20FfXN98A8LTRT1vdyk1GXyTm9kPw2VWoab4+QkkBjqhBwaIvJl3KmRDLXGFJKktt57l2z9Qaef/0QQlLwv/f+4uIBHffEDeDKnk4Iqas9c10XIxg5gcWH+I3Ew0g91Gka58/25fpTpUE7l94jHGoXS1xGqwylge/cTGGzJBWZQU5cmcmADKFCrrjQ/PrPQUsy4eg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH0PR11MB4965.namprd11.prod.outlook.com (2603:10b6:510:34::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.27; Tue, 24 Sep
 2024 20:42:55 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Tue, 24 Sep 2024
 20:42:55 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <imre.deak@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 07/31] drm/{i915,
 xe}/display: Move DP MST calls to display_driver
Date: Tue, 24 Sep 2024 16:35:28 -0400
Message-ID: <20240924204222.246862-8-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240924204222.246862-1-rodrigo.vivi@intel.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4P223CA0011.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::16) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH0PR11MB4965:EE_
X-MS-Office365-Filtering-Correlation-Id: de2e7e5d-66af-4620-ba32-08dcdcd977ad
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?2A0XG2Rb3lRGb3snsxH2LMg7kTIL9B8JCF71PX4o4Qbq5QsNXgdKKrStNDh7?=
 =?us-ascii?Q?O59n7d6VZZyxnv12tSVP68ojW709kYiZOPIcWzJ8XAm//21MBm/SY6O7ellm?=
 =?us-ascii?Q?+QxTHtuLzhhxWLTkSanl5FsktUEQ2PIL9uhTBV6LVc1jPPmzemHuhGXVgc8R?=
 =?us-ascii?Q?oL4zlurn552PKn4bqZoHcobzBKr9ulSJ79ThJ4Dd7KMrTnW5xP3W1Fe08jcu?=
 =?us-ascii?Q?UDalsds9VokajvNF/ixp2o+BE1z9rT5L1su8cLTtL7LilOUJ4x/ezc09u+e2?=
 =?us-ascii?Q?tMGEfVpWlxZx0PFROzVQc38gI0ZR0TDk+EumuNA5v2jcCGw/cwdI9RN6MFTb?=
 =?us-ascii?Q?3VAL2LD8ca33QLej15pRZcMbSBD35Y8aUuR1Pw6Zxzgj5mQLpZQCt1ejymCr?=
 =?us-ascii?Q?k7jc+JrfuNBm/iL0eikRanabWfJey4T0QY00ZF7AnHuyTxQZ+ncj0ggFLwMC?=
 =?us-ascii?Q?+6lWwPbZx2RZ/j6b4q/pFNPzQQFWlQ/gKuQZcWpeNOxmtxd/RRyZhYn3Pyeu?=
 =?us-ascii?Q?XgxBVdmVgNacWWt6T/V+Jo92x87lIJRq4hJ5vD2Nop94iZlQIYhwaxxFy4wJ?=
 =?us-ascii?Q?AWfNYQmdGUBjLPnmFufH80Pb6U0y9bIXTuytn5N25fkphVPY/NvxY+ENh/b8?=
 =?us-ascii?Q?j+TCLWAqByDT9L3gtTIKIDSyUxnA8Ubo2XLV3tc3OaCe1iMbX+Z5rstv1yyT?=
 =?us-ascii?Q?BNU1rjZvbT7uo3KWmqB+QRnCGSENo5trSfb1trenQN4dVo3GR+u3s15uoPbK?=
 =?us-ascii?Q?XyhfETP5PTIvZ70bRjAfOBsMqNt8Shzb2jWM7O7RJjwWjpvs0xxu5YCRRAGz?=
 =?us-ascii?Q?81+ciqLTIOdC9i+xYzsJivr/Nt5amvAfY3hnUeeN+YfWRsCOEf6TgDi56yik?=
 =?us-ascii?Q?QAVM9/cNz/BzDsbjyjE+xkO08U9HZmzwHiO6CMV8mki2sB2lef2aQUNSu30V?=
 =?us-ascii?Q?uDcfvInvkTrL2P5qUWr7PX4P0UabuOlh/bujdaYDQa9XjuB1CsZzXsclAcXa?=
 =?us-ascii?Q?ynK0rmsRYFoMkKE6mMojmvxcyJEg1IrRntQx9mh8q4Mcunc+p4NB8LoNcXUC?=
 =?us-ascii?Q?GFC1hsXK1sNxVnsRfZ4c7e8uRtx/Hm6CWieOQsf9LmUT7AYlJdloPuawwuL5?=
 =?us-ascii?Q?yIdSyU5hApc7yLyphetF7hadQSv/jqz3Ce25YsyMoeO+ghYQDl/Evr5vF8vk?=
 =?us-ascii?Q?dH754ixoxIyVUQMEvuWjFvFCxVALPFjT+9PnjW4VUGTxPNz46Q8PfMX5iZHZ?=
 =?us-ascii?Q?h4ocBUEZx82sNXnfDlct9Pf8EK5ySANQg3Yw3ImAWQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fIw1aDyZq5mbhbugfbey+62GX5+PGtxVulcRkisHSjwfvKyzQfPxE1h+izCs?=
 =?us-ascii?Q?BlwHJV5S01K51nhygr+/afzxsRU52PTVRc6U5R5XFqm4idrm17DNNFNLs7ZP?=
 =?us-ascii?Q?SccE+zCmfDBd/Rz6XzGG1TEwcm+oTLK+bPnojI6k5ZjVk3et1Fk1GWIKvsnr?=
 =?us-ascii?Q?VOP07s6roLPKAtZGvjAjwpYRX3RkxxX8ilKByJvYKU/CeyFA5wA8Nrhtptwn?=
 =?us-ascii?Q?ts0NJFmzsHpdrqNU9DTtovWWbILa/pvMRmizp7q4qYc4c5qBRgXjWqJMy7Fh?=
 =?us-ascii?Q?aQ9MPEpD+NezHIYb6zfH1zL45X13jh04Hp7+eDD99HT2ucEuWr4hS0TJnq08?=
 =?us-ascii?Q?mpr3Eebf0j08oIzMKsk0NSOEV/G7W0PpZrIagmz0Jk0YanySM5C2N5n/44EI?=
 =?us-ascii?Q?60y2cq1nAarYdKf8M52URyLYVucY76KGMhZLi7bTd2gl5G/+MS+QJCCPrdqC?=
 =?us-ascii?Q?KZONUIV910zTCYe+2qe0dsEVhmaVH0b91E/62/SuIzTSy/hyqIr9R68ZGc59?=
 =?us-ascii?Q?kcxvlkdySUejl1YXUHIJGeNZibdo2B42BtOEjQ1SDX0+z73sgjViu6op5Bgj?=
 =?us-ascii?Q?X0tDhZ4lpU9fjQ0oJ7aRMYeyQNev858bjcppNJxQedhALzLclRYJ+DQobqB7?=
 =?us-ascii?Q?hbj3dad8OkynLC2qTYEk41XXQ8irrggHq3Ezlcv7t5Fw7yw5sh5i3RceJX6F?=
 =?us-ascii?Q?O0TmIQMy0OKUJOPYO9MWM1XTigzLPG6c0Qm7Th6pro9XyE548p0TYtiBAcpM?=
 =?us-ascii?Q?AKACoelndq9mCLljXBIOKZRB3Do9hq5u2pusMIjOVWWpEQ1ZNu5/iTHURM4J?=
 =?us-ascii?Q?n3yh9E9eI3+Tb4+98VjYwJLmYz6ByDczD1Z7Hiv378yqDCUz5yq6dmA1LzHR?=
 =?us-ascii?Q?UrCY26GK7AGCrQTNgOurHm2jQyibn8D51eAPb58uOjyL/6YaMf77B3EYfQPe?=
 =?us-ascii?Q?nCTOPYzJb8N7C+1Z9G1hNRdx6qHtzZufsobOXyDu8qThvWS26qGOt+ytLNvJ?=
 =?us-ascii?Q?q0eimE2nwrgH4x+ftMBr+rc+eTypmS8ZvIn50Sul70tulP7XfLhbstwJGy6F?=
 =?us-ascii?Q?TJ0Ogv70IJ4eoF/TjnTW6Sze8XFPQoRWsYBeLM+VMpkOL9eR7CereaPkxGWS?=
 =?us-ascii?Q?jvIFgRzf0I61vow7eVMffsGhlLvnHmAITwsOLuHty8xUhlMJX7CDTPPXiUIR?=
 =?us-ascii?Q?32EQrtk1LokvyB7N8pvaEEZunXbhMFVBMDESixA1sf1RlUw7vIUy2NbUErav?=
 =?us-ascii?Q?CkvHspRCKRZ2N2ZCaUqqSLTGs/1ET85/Eqc2i/kOjebtNwNesNSRmP12P2Wy?=
 =?us-ascii?Q?WfNDb+78k7pzHy1ocdlqdrH5DEWJxNBPiwh6Ea8VTfGPmJfgpjGior2FefU/?=
 =?us-ascii?Q?B87uGdkfB3E34dOhdoKGkTQQEOvkkDYibCnJ19bPTv9Y6T4lTsduSwqdY2at?=
 =?us-ascii?Q?k7rINZIduM5UbNNDt3vLBUPImQzcSewi3Vchoh//Yox2DQoPPmOWbGDQ3Eup?=
 =?us-ascii?Q?lMxpHKa1GOW4Yu8O9d4fKaJjOS0cmuesqEd72V6OPoZ73sglWOqsjnT+lsGZ?=
 =?us-ascii?Q?dkyCfe4W027xu/7PLQNjaHXHAQ2UnkLtJgGjoXqazRCk/w0Rc+tkDUtGZkeQ?=
 =?us-ascii?Q?kA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: de2e7e5d-66af-4620-ba32-08dcdcd977ad
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2024 20:42:55.5668 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8c/tgXkB8APZJGT0nIdC1z2OOI321n5SIBm6pFmkwzSTm5EFtnaX5v/PVNZzGmGSWWYiRxf2MDffMiKIgNLRKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4965
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

Move dp_mst suspend/resume functions from the drivers towards
intel_display_driver to continue with the unification.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_driver.c | 6 ++++++
 drivers/gpu/drm/i915/i915_driver.c                  | 4 ----
 drivers/gpu/drm/xe/display/xe_display.c             | 7 -------
 3 files changed, 6 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index e40b1105168e..51fc1c148283 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -676,6 +676,9 @@ int intel_display_driver_suspend(struct drm_i915_private *i915)
 			ret);
 	else
 		i915->display.restore.modeset_state = state;
+
+	intel_dp_mst_suspend(i915);
+
 	return ret;
 }
 
@@ -729,6 +732,9 @@ void intel_display_driver_resume(struct drm_i915_private *i915)
 	if (!HAS_DISPLAY(i915))
 		return;
 
+	/* MST sideband requires HPD interrupts enabled */
+	intel_dp_mst_resume(i915);
+
 	i915->display.restore.modeset_state = NULL;
 	if (state)
 		state->acquire_ctx = &ctx;
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 38c845ad86e5..d166a8164b42 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1013,8 +1013,6 @@ static int i915_drm_suspend(struct drm_device *dev)
 
 	intel_display_driver_suspend(dev_priv);
 
-	intel_dp_mst_suspend(dev_priv);
-
 	intel_irq_suspend(dev_priv);
 	intel_hpd_cancel_work(dev_priv);
 
@@ -1182,8 +1180,6 @@ static int i915_drm_resume(struct drm_device *dev)
 
 	intel_hpd_init(dev_priv);
 
-	/* MST sideband requires HPD interrupts enabled */
-	intel_dp_mst_resume(dev_priv);
 	intel_display_driver_resume(dev_priv);
 
 	if (HAS_DISPLAY(dev_priv)) {
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index b5a2a09e7a71..bc5c00437ab3 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -332,9 +332,6 @@ static void __xe_display_pm_suspend(struct xe_device *xe, bool runtime)
 
 	xe_display_flush_cleanup_work(xe);
 
-	if (!runtime)
-		intel_dp_mst_suspend(xe);
-
 	intel_hpd_cancel_work(xe);
 
 	if (!runtime && has_display(xe)) {
@@ -426,10 +423,6 @@ static void __xe_display_pm_resume(struct xe_device *xe, bool runtime)
 	if (!runtime && has_display(xe))
 		intel_display_driver_resume_access(xe);
 
-	/* MST sideband requires HPD interrupts enabled */
-	if (!runtime)
-		intel_dp_mst_resume(xe);
-
 	if (!runtime && has_display(xe)) {
 		intel_display_driver_resume(xe);
 		drm_kms_helper_poll_enable(&xe->drm);
-- 
2.46.0

