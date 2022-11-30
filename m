Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F2763CD5E
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Nov 2022 03:29:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDF9C10E0A4;
	Wed, 30 Nov 2022 02:29:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01D9010E0A4
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Nov 2022 02:29:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669775383; x=1701311383;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=88kaY5FNIOflbXWbzR1fAEDcAlDmIuZvnxxtlTwnO58=;
 b=cAPX7goTINLonFya9EI6fOA22XNI7JGIb8hOqBTltcTx2VHruEB336WJ
 I4AaVZl/OOoDV9R6PaO2ydj30Vr5+QkDEaTuWT4B7KFHNA+CMrBzkwE6K
 Q8LZKaUyKU9254f5kLlWTXIUyjT40EJtmhzX1JQK0a2WrOgLRAsiJea1n
 Ez5lVXxWqp4iRcaSWul5KzsFIE6MpT7uZ2gVOj1RGgLPaVRL7riLN2nBp
 DiJLlfPndn4lDMEden5b9SRycfkfZZ0kT8A4orSXmQZNAFMYUFyP1073L
 dSv5Uq8w9kbjfEo1MOn3GBTw6Zacq0/nMXfnGIS7lLz18y96LygYHrlHD g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="316439773"
X-IronPort-AV: E=Sophos;i="5.96,204,1665471600"; d="scan'208";a="316439773"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2022 18:29:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="637831149"
X-IronPort-AV: E=Sophos;i="5.96,204,1665471600"; d="scan'208";a="637831149"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP; 29 Nov 2022 18:29:42 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 29 Nov 2022 18:29:42 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 29 Nov 2022 18:29:41 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 29 Nov 2022 18:29:41 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 29 Nov 2022 18:29:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oFBzEA6JppkLFtj5g3S8TvsRDmU41jFBMuWXKwIsHVX4fWBgf2QglunsCJOXQ7OgNjxsh2ezqc39d5nRFcORF5XQUGDdkx7E21/SXyL8u1oedYYW6dXS5w55YLyR5u6ZxbrWTnMSVmfBHANxq03iKnJ/pw7adJpOLpdnirt4InpmxD/gKukgOQlh/WVzcP/5bOwS/gNDg04tFT4+GfeJk7uX6wCDygvoiebtaFtolnY6X6rH7YVY4pBtPxExOtULeUv6aU1sMUrdAh2lGcDG5TD3ViqzWrFeJ10D3whneDJwx/yRIf+7XwaFS6sBH9OjDAh2J0u6nmFv6Xa2gkXIig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BG8Lob9T3zGLWanaCwhA//QO13E97/UQQcXaX3/0fZA=;
 b=Kp8Ypa36aW6Qsj3Iv9LKO1lFDfiWP/RhcA5Bqj69nNEfhW9/W4C2K7zwROsh+FLHvZGKgbZtMsHkBhPEUK0eNvkFdSPjaOf52umTOvLnXFyXDIec/0TdhRQaueMuAqrwaPLJyUIHijFAKlNEqLW3j8HOzqbA0V/Y069R4f54UC4NqtOw2dQzpNc2Vr2JFKHec1Ep2rerSnyTkuIOkE1+F+jd8+rrbnEs0z6QonCl2u+CRJcjdDYzVFZtnrUseinfKnFmzeW9IpTP89bKmgw1TORSFmy0Y53jVE053lVJHyOm8j2JrU9ndU6Tfnpt3qC4KfOjP/W2+t1gPAABltuGhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by BL3PR11MB6530.namprd11.prod.outlook.com (2603:10b6:208:38d::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Wed, 30 Nov
 2022 02:29:34 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::f4b9:901c:6882:c286]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::f4b9:901c:6882:c286%4]) with mapi id 15.20.5857.023; Wed, 30 Nov 2022
 02:29:34 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Tue, 29 Nov 2022 21:29:28 -0500
Message-ID: <20221130022928.196982-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.38.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BYAPR07CA0064.namprd07.prod.outlook.com
 (2603:10b6:a03:60::41) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|BL3PR11MB6530:EE_
X-MS-Office365-Filtering-Correlation-Id: 5d108246-f8c4-4f70-3846-08dad27ab824
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GkNI4BMS0GSPREnt+kFUfEjv1mUfBNtWngyGGYl0gRwyZ3S+bw05bRbEQzMCdqrTi8YjaIN4FNLKEed/wBZv+JNaQhe6RbkydDYHR3XpKdJ1q+dNsXn/n2BLA8iLDrrWUU2taP856jibIzge2Y88DIYcWe9vTZj2BLeWh6Fl3w/FOquRSaOEcDELQqi6rlQhKqguaaNSrNO/WhSvRikbO4GJYC0Y+CFaKc9xae3TEnT8/4a+mN74cElkxN7S+ZWSlizTJOX35totAyVUnPTAzj447HXHjsLf6/G6WyICTojzf1CcL+dpJy66KaZ6Swh/QZe7edeWSBtnonXDT0tB2sOfBZhwGSGbcJwUv3EnY2zhay4IOF1vs60fIjVFdsU8wpJQZ7nSE8MUBjyecn9pEzWVBqoj2tdqT0h3JANuZQjfosaFopBfar6C1n0q4b+YluRAjJbNmfdWO3+oamR4TE2/qaDnlRuCP/y/sjfYRmAKVl2Die8eLCf609qyK2rgeF0TgeEsO82+G811n0s1W4ODof0c2I5VES0IJr8PmcHp3PZxuImXHZl6iMa+xhZ/VWgGAOjiBFJUfF38CBAhJfbrexSuSgN24f6VfiBmeT+1pawx0TvwOYzezOAT80p+QDqbu9IMn2CxYBs6Qu3KAw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(396003)(346002)(366004)(376002)(39860400002)(451199015)(82960400001)(6506007)(41300700001)(478600001)(6486002)(38100700002)(36756003)(316002)(54906003)(6666004)(8676002)(66476007)(66556008)(26005)(66946007)(6512007)(8936002)(4326008)(186003)(2906002)(44832011)(2616005)(1076003)(5660300002)(86362001)(83380400001)(6916009);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hsW/4yx4ZYMEy4sTarav2R2Za+XAu+F8EfDXVJm1dxO+6WmfUoxN8UV4oNqh?=
 =?us-ascii?Q?wwGr2YncT56ScyEDMCdrLk2ggUIC/hjL4endFr6PLqameG66MzT3pbvthHGf?=
 =?us-ascii?Q?akBJvfwEku2RLqX6X6NQuZCWcCdWqewpn2vcXbrvRX07MKo05QwWXLRmBcpU?=
 =?us-ascii?Q?yBvh3PkiQoZExvFdhvTBlKkSDIIJbvv1AR8J+xKH1lMbLpvDl/3/Pmqs7s5Z?=
 =?us-ascii?Q?Ox4FO3X6cNQIK6OpGkRa56GzEa9wxIdeXBDZGwIhGS2bHhY2CqYjvPdfLl0b?=
 =?us-ascii?Q?nVskBejp5r9f8iUF5zkKY1Eq2wV9zqBg3eIKdWOzV19ojCbqbK59lp8h6ja+?=
 =?us-ascii?Q?mmUPPNR1ZmfrfvAqpkuXNmL9s51ugSbCWvToCiiC8Fmj72wlBl9n6/PtprJS?=
 =?us-ascii?Q?ezDzUsczcE9WFbSJTpBIxMZk2r7GqldLTxTonruUL0Vo7SPnE5DmrvMd7JsN?=
 =?us-ascii?Q?+MYO8kysXu0KALeDoQAI2+czIR3nWxaFu+9W/SsU3bxkqySuoOdLfgp8q0ia?=
 =?us-ascii?Q?icHsfCYRljZlr8bYhTAz8TRDr7B2Jnqb/LIKeffqwKetfpl29dXbVCAv4XIj?=
 =?us-ascii?Q?J+OunMd6P2l5BCDSJLJBi63j4QI1HD43cYCF+UPNrIFouOiNBjZZaxOTdQKd?=
 =?us-ascii?Q?7eua/N8e/+Y8W9daylmXFX5sMq7rfSjBB9fm45dpzDxbE+fbTR/R4tPgXl4/?=
 =?us-ascii?Q?kUcWCEyiUVOYIbV/57FLAS0mwasrKUjUkXcCupc7heVg6bJrYHfLO8bAIraD?=
 =?us-ascii?Q?DwS9Vrd5rCmUO3lj2BjWCd4BrgxV/UWr2sEys0SgBIuY1x+AAq/tvf1/gBSJ?=
 =?us-ascii?Q?l4Sd+VlrVmPzjFspCAr6CtmOZ1FM+yplzLplaBTjqj2mbxRfl73ortpQZkPR?=
 =?us-ascii?Q?IfRcsVES7Dy/hGXcmuPeWUzjRpBztMRWADdDXbQUs1wqNv6QcYG6KPdrn18j?=
 =?us-ascii?Q?A36G1ARuMtHui1DL6xv9gSTNEj7TpJYj+FLrgGjbyYoelsaOHRA2VeHI9RHI?=
 =?us-ascii?Q?4Zme5ld5FnGy11ayW2Pj9P4ksXTDUPUdz8DvLm5hSpPLSXUfmPz/2gX9YkIt?=
 =?us-ascii?Q?qHHqpifFuxyg/4GbsH+nerx+flT7TMun6+EkiTwOAnSgjx0kTt6j3rD3zsrR?=
 =?us-ascii?Q?4XU9tIXN1/Bxqq83ugLNSTMYTHJ37eZkZZixpH+deubOLvZqqZRLX65DSU2I?=
 =?us-ascii?Q?Ip3mXrZWdo774vw8oyjVf3aVEKwnY1NL81UKZ12Mrb3qVOfTBSHl6evRFBke?=
 =?us-ascii?Q?uqw0UrI/BxyP0CFV/VLbBk1H4s2BoHUC6nt6hr8KmSDYDEHiep2Oe3g5PhXs?=
 =?us-ascii?Q?RKi8WzcclZDUlp7/0mnhbklc2AXzehhjnMhkvGenLz44040qt4nXr81bMvF4?=
 =?us-ascii?Q?5tegWFts0IEGsUCZvudvA27BnUQDrpNXuplF2JqFvhPTwd+HlypQGRGqQwEu?=
 =?us-ascii?Q?EsQFAqYCU56IbYVQDvcOQC/3zXlI0pT8GsnHH36crGUTCtU4f5h+fC1gZhDR?=
 =?us-ascii?Q?4JaDZIPYW/+Aj0E/w83La615cpsCS6YpfbZa4tEl4+nH9xqoxgsQb1RJaeKM?=
 =?us-ascii?Q?LZE2MlGw6SLm3Yq2EviWC3Er85HuhPh5ILDQdQWh?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d108246-f8c4-4f70-3846-08dad27ab824
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Nov 2022 02:29:34.5914 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +gRnqh0OVKLr1NBcxHWtLHgqPqSiRSmtObCoBwJH29PPZR67HdEaXa170uB9zlqd5WGlnj/zLSVTE+484IyF8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6530
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH] drm/i915: Remove CONFIG_PM dependency from RC6.
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
Cc: Paul Cercueil <paul@crapouillou.net>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RC6 is a sleep state that doesn't depend on the cpu sleep,
or any of the APM or ACPI or anything related to the
CONFIG_PM.

A long time ago we have removed the module parameter
that allows the RC6 disablement. We want that feature enabled
everywhere. However, for some reason this CONFIG_PM was long
forgotten behind.

If we end up needing knobs to disable RC6 we should create
individual ones, rather than relying on this master one.

Cc: Paul Cercueil <paul@crapouillou.net>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
index cf71305ad586..77327ede18ad 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
@@ -164,7 +164,6 @@ sysfs_gt_attribute_r_func(struct kobject *kobj, struct attribute *attr,
 								 NULL);			\
 	INTEL_GT_ATTR_RO(_name)
 
-#ifdef CONFIG_PM
 static u32 get_residency(struct intel_gt *gt, enum intel_rc6_res_type id)
 {
 	intel_wakeref_t wakeref;
@@ -329,11 +328,6 @@ static void intel_sysfs_rc6_init(struct intel_gt *gt, struct kobject *kobj)
 				 gt->info.id, ERR_PTR(ret));
 	}
 }
-#else
-static void intel_sysfs_rc6_init(struct intel_gt *gt, struct kobject *kobj)
-{
-}
-#endif /* CONFIG_PM */
 
 static u32 __act_freq_mhz_show(struct intel_gt *gt)
 {
-- 
2.38.1

