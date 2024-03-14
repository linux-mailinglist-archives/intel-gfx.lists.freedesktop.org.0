Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDFD487BE97
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Mar 2024 15:11:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37BAA10FB7B;
	Thu, 14 Mar 2024 14:11:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ilkp0euF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F43D10FB86;
 Thu, 14 Mar 2024 14:11:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710425464; x=1741961464;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=t6hnniKLFnc8MiOANDdKmVvh6Rpu24RHSyWhEP3qIzs=;
 b=ilkp0euFvhDsO68hosHJaaVNT/fpoYrahTwE26wga1nlI75lP3y2Lr5R
 TqUSPBTkIh3deIJeS865zY0VUqQgurTReEk0hQYIRgBYktzuBey1axFT+
 vzGuJB4Y4xvLUp3d1HSm0TGpjzcBTChGIWszDhUjaLZ7mup5hKan4atoS
 8z+ob9TVmd4EIyEfADVlv+90nSupPpEH1BzW6JcWW1aIXVtkBFEyl73pW
 dsot2x429oRIETcY7t2Sg6xK34gmWUlOKjxvj/dgPru3Tf475+EbF3sqd
 AjSOHCASrxeR27KeP9SubSEHTcjkg8lj+K8sl3AYTw7xQwFMm3NfXSCyd g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11012"; a="15885152"
X-IronPort-AV: E=Sophos;i="6.07,125,1708416000"; d="scan'208";a="15885152"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2024 07:11:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,125,1708416000"; d="scan'208";a="16891863"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Mar 2024 07:11:00 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Mar 2024 07:11:00 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Mar 2024 07:10:59 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 14 Mar 2024 07:10:59 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 14 Mar 2024 07:10:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OcbyAOXI092sqQBbO2Ah2rx8knfd4C+RFAsxQoHnLgGJfq0Uo4ZuEY559DMHO0C85idvuY/7NFPu5Po5qz5U+onNBXw7YTGarZYJ42D7JUkEJr8b569Lh9Wklu4eoX12Rs/0JKJnBd1B0HTq/0nqJxYcDvL5TDVfuAmeicD3Gep1uYb5/KjcyshpsfrgdxwrtoaeLUG6of/y76p1ItHMUgZe37LczPx512jzc0sEPtfNKNXpOE8rWn+OT0Uc8Rq6C6tQfS5iJYdZAeNUht8FN0EXeeRnPRu0Q9JolzzTqQ9Ull47nAEOCc7kSWPtC7eIjvGI6IRoIfDtpdX+4elYVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Zrwu0Q/8WDj6hUAUoqbjHJHBHyz0gUEN78gUlS89aBk=;
 b=nk9I9az79TGR9fVhHFAG4tIHreWTTxOqBWb7ETv7IKajlEMtLeqfTId2kOFPLHTHqMv2r7jgryPGvz01rPREKCWM7deXk3/B9BbPgzpeTsc6DAnL7NJVcMx/CXTsJuJDjFolrYDtcXNm+lavpHN+z0MTFslAt4njfh+Ok84xLqsYbmt87DBZaCxhX/SdbvxCQC+D6RIjnQQ+7PvI8CeQQJfKjlV/+4AnIUJEfbdaMoIWjeZoHBIUpqGSnB7DeyitDSxmo4MzWKMR0588M8zw0xmF75Z9DUKN2si/rOiA37ZsbZWw62GgEwac+u9nMfJpMH2yqyuuhka9St5tpCakHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.18; Thu, 14 Mar
 2024 14:10:57 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189%4]) with mapi id 15.20.7386.017; Thu, 14 Mar 2024
 14:10:57 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <francois.dugast@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthew Auld <matthew.auld@intel.com>
Subject: [PATCH 09/11] drm/xe: Convert mem_access_if_ongoing to direct
 xe_pm_runtime_get_if_active
Date: Thu, 14 Mar 2024 10:10:19 -0400
Message-ID: <20240314141021.161009-9-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240314141021.161009-1-rodrigo.vivi@intel.com>
References: <20240314141021.161009-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BYAPR04CA0015.namprd04.prod.outlook.com
 (2603:10b6:a03:40::28) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH8PR11MB7965:EE_
X-MS-Office365-Filtering-Correlation-Id: 045a86c9-5391-4619-58f3-08dc443091b7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: m4DFfi8KawD/UkYwK8KJCMuFeVAvix6Y2u21RP0VYTBeLCNMY1naJLSdKqkF4eg8pQb+xbHdIUEA8u4bOq4czq0lI+AQ28tTqJ+LSsV7wuEJG0V5wzF0tWwUXceZn5iJs6C+kmVX6DU7fjX0XiPkFb9qOYd3tYVajOOuN14Gj/1Yus6f4RLZ4+I9jPmDuOJAnIQ2P1QIZ/E7wmTREbzkIg6/2EJbDo80hUqwSmLxTPlIBifh2GLiKWI/U5egN2sZqAFw99saG4zYiGPWsJl+z90HVJ5SPnq27E9pdNx8qikwj252A8bTNBkLMNNkDbC7rSSZ366NwSMWxISsEnos1Z09ZNH4Lb0sqQzu8jyzl04mK+1t1Fi4jBNzZ52Q9LLkSumuXO5e3mr4mMCzJG17nD1JpcV+Th/rqXmpwB+/bymfU5tpSNXS+WYaAyMe/ukH88/UQ0vv0oRYyF1FMjuwKkT0qCz8ASPINkpRQusXdS/0hrBSacg2hlr1/YjOTVm1Ped7Mj/ebO+9sLvQp4L3IcS53rnfrXsJSabvNNMzzPSO353o9mR42klbwh4ffh29Cq+Ue5FJ5bdKwTxm5PYVJDJD/YUniE7/XEDz7RD9oUI6XpiyRVfT3mTi5kdLhbjbZMIqxBWcrah6WyFfKnUsCs4fZER1jq/0uXlQ9DJZueM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Ls/B4jbaRNGkXYq1YG5hkn2zaKCNwAJTie3Ej6ZKprKsOnP2kJpvqBiMiohO?=
 =?us-ascii?Q?J4mNcKPMijYAmxIP9enA3lsX7+LSiyLbuNFF6yzartpr76YCpsRDbXHlXI3a?=
 =?us-ascii?Q?ibEhUhxftZcfQa/YkkBFTxNDsAFzEBcBf7MSQKGc62LTNByxSG0f9n3C2PCk?=
 =?us-ascii?Q?Qjs7BAr8zzw/E2IdEfoU2TnRqRH0JEnLC0J3vHWR6GwoS+iZeELrichus867?=
 =?us-ascii?Q?tWEiyzWKuhV3n0RaMZPjgNgH5v3zIlZxqPByXzRZRIa6Bqqkthx6dmPW9Cvw?=
 =?us-ascii?Q?XlEPB/IXtFh3RZClD0Jya7DsGmh7oKbXplCoVaq8FyI1VeHCiWzcFLuOzTyO?=
 =?us-ascii?Q?EN+M11Wvjc3WJUlohVRBWt+utkqXHhRgvy0tUS/OYPLHFDXG5cE+qKpwHCgC?=
 =?us-ascii?Q?rb7c1RJN43C1t5ApqWo2/8KP9jDB/fqaldd7pSW4MKdAl6Fs2/3HqPf0udtT?=
 =?us-ascii?Q?YdNHfLkYUdIjeuyVNgw7UAxCc26RJMH68eKcEbI9zPWc5XUFXi326MXNE/No?=
 =?us-ascii?Q?+tlcGOJIbTPxACOydebsf2qaxKEq4GnjeoXWRVe4Nbt599nsSZEybOKnX379?=
 =?us-ascii?Q?RcTRjMA8Cure7mHgFVZtvUJ1o4zjgKUkI2QntHpzEWSEWSKPRITqt3x7t45u?=
 =?us-ascii?Q?U5hhySLjhvkzu7Tm6/rBtUNMlhWxuEoaAKOOx/DkEmRdyo6Y9zNRNQ6wefzM?=
 =?us-ascii?Q?I2RUAQ27c5yBTTMfeuXlz3oktfByp/AAsDjrZlWJ7CiYLT9+LwHKoZ6lp81D?=
 =?us-ascii?Q?+RRc3sKnhc3bOyQEEj34Pgp80Q7H9dAw3xEM+Rsn6FzJq6uMcinlzFHkh9LP?=
 =?us-ascii?Q?PQlB9V0Z5q1V499CCKuoNX1xeKe1v78h4h+ot03KXgZxsq3EipaSehAv3Rz3?=
 =?us-ascii?Q?CP9xfd/zIrncNU3LUuL0XWQ4tWwaSVre1YGRfQCixJIGg2Oqz19u8/Lq+L3L?=
 =?us-ascii?Q?70JEiVBmCjAAc+1175t/NpRT+fl0+P1DTImbkNY7xEFki1el1gBASxCuWcxK?=
 =?us-ascii?Q?SfilyQ3O37EX5/8CtdihVk6D6ru9ZGjFHznaBzCgMugTxf3cQIQ6dmiqWL7Z?=
 =?us-ascii?Q?l2WkI5C9Hj7ETXka8tZMlCif9lGi+jNkyBRcdz4gk4gfmm4EzMOma64OxmoA?=
 =?us-ascii?Q?nKUEgzsjcVxY+jP6ROx1dKOrgYP2kfUo2WysQuagEAhZ6B0DCZnr1lcFsWk0?=
 =?us-ascii?Q?kBUR/kiYwcGvCG7HIApy9I7Tej/J/CFvOyT7ycdim953rMGnOSXe0bQwyzjs?=
 =?us-ascii?Q?UpaQwzx9kMGnomjnsjStuUQxcTJ+fiYcaTfmTgNPkM8PVpXAWo/JoADhjcVo?=
 =?us-ascii?Q?eBhh4cJ4VATDuEJlCCFVGHPsx0HF3kqsLjhlkB0vg1kZlOjbLjyntpTaRUTH?=
 =?us-ascii?Q?BPYuMMMQPOrnkWJLdUW8ORyML9Y8Tu/DBwuKjplNLZ2P08OI+LkJgygHwHYl?=
 =?us-ascii?Q?UWNIOFxbqFKg98w++Ri0+QxyTkKt52/zPmfnxCEj93ef4Z88JGvWwj4eZmqV?=
 =?us-ascii?Q?nVVyYzZl2BI9vLyS4NtSmrwoBq3G0nkUR+TvJpgFTNAoZ/SGav2PWYtL6Uo6?=
 =?us-ascii?Q?imbFFcsovQdZ7FvkErVfsDOOZWW8fmDsBMWERA1xp0QpExD0cedDfKZFox6D?=
 =?us-ascii?Q?uw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 045a86c9-5391-4619-58f3-08dc443091b7
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2024 14:10:57.5385 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1iYzmE0Wh9/VWyaFwzqw3TYHf6igjZQ7fz56ttY+l3neeT/eLnQK8+jOKBwwylA4BOu4Eqqj0do4TP9RmIr8YA==
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

Now that assert_mem_access is relying directly on the pm_runtime state
instead of the counters, there's no reason why we cannot use
the pm_runtime functions directly.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/xe/xe_device.c | 17 -----------------
 drivers/gpu/drm/xe/xe_device.h |  1 -
 drivers/gpu/drm/xe/xe_guc_ct.c |  8 ++++----
 3 files changed, 4 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_device.c
index 4754da58c112..0a51eddd264b 100644
--- a/drivers/gpu/drm/xe/xe_device.c
+++ b/drivers/gpu/drm/xe/xe_device.c
@@ -655,23 +655,6 @@ void xe_device_assert_mem_access(struct xe_device *xe)
 	xe_assert(xe, !xe_pm_runtime_suspended(xe));
 }
 
-bool xe_device_mem_access_get_if_ongoing(struct xe_device *xe)
-{
-	bool active;
-
-	if (xe_pm_read_callback_task(xe) == current)
-		return true;
-
-	active = xe_pm_runtime_get_if_active(xe);
-	if (active) {
-		int ref = atomic_inc_return(&xe->mem_access.ref);
-
-		xe_assert(xe, ref != S32_MAX);
-	}
-
-	return active;
-}
-
 void xe_device_mem_access_get(struct xe_device *xe)
 {
 	int ref;
diff --git a/drivers/gpu/drm/xe/xe_device.h b/drivers/gpu/drm/xe/xe_device.h
index 2327b6c0ae6a..b45592b0bf19 100644
--- a/drivers/gpu/drm/xe/xe_device.h
+++ b/drivers/gpu/drm/xe/xe_device.h
@@ -134,7 +134,6 @@ static inline struct xe_force_wake *gt_to_fw(struct xe_gt *gt)
 }
 
 void xe_device_mem_access_get(struct xe_device *xe);
-bool xe_device_mem_access_get_if_ongoing(struct xe_device *xe);
 void xe_device_mem_access_put(struct xe_device *xe);
 
 void xe_device_assert_mem_access(struct xe_device *xe);
diff --git a/drivers/gpu/drm/xe/xe_guc_ct.c b/drivers/gpu/drm/xe/xe_guc_ct.c
index 355edd4d758a..8d7b1b42b2e6 100644
--- a/drivers/gpu/drm/xe/xe_guc_ct.c
+++ b/drivers/gpu/drm/xe/xe_guc_ct.c
@@ -1203,7 +1203,7 @@ void xe_guc_ct_fast_path(struct xe_guc_ct *ct)
 	bool ongoing;
 	int len;
 
-	ongoing = xe_device_mem_access_get_if_ongoing(ct_to_xe(ct));
+	ongoing = xe_pm_runtime_get_if_active(ct_to_xe(ct));
 	if (!ongoing && xe_pm_read_callback_task(ct_to_xe(ct)) == NULL)
 		return;
 
@@ -1216,7 +1216,7 @@ void xe_guc_ct_fast_path(struct xe_guc_ct *ct)
 	spin_unlock(&ct->fast_lock);
 
 	if (ongoing)
-		xe_device_mem_access_put(xe);
+		xe_pm_runtime_put(xe);
 }
 
 /* Returns less than zero on error, 0 on done, 1 on more available */
@@ -1273,7 +1273,7 @@ static void g2h_worker_func(struct work_struct *w)
 	 * responses, if the worker here is blocked on those callbacks
 	 * completing, creating a deadlock.
 	 */
-	ongoing = xe_device_mem_access_get_if_ongoing(ct_to_xe(ct));
+	ongoing = xe_pm_runtime_get_if_active(ct_to_xe(ct));
 	if (!ongoing && xe_pm_read_callback_task(ct_to_xe(ct)) == NULL)
 		return;
 
@@ -1292,7 +1292,7 @@ static void g2h_worker_func(struct work_struct *w)
 	} while (ret == 1);
 
 	if (ongoing)
-		xe_device_mem_access_put(ct_to_xe(ct));
+		xe_pm_runtime_put(ct_to_xe(ct));
 }
 
 static void guc_ctb_snapshot_capture(struct xe_device *xe, struct guc_ctb *ctb,
-- 
2.44.0

