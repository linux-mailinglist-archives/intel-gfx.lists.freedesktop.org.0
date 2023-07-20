Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4DFB75B92F
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jul 2023 23:04:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20AC310E1AB;
	Thu, 20 Jul 2023 21:04:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44BD210E1AB
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jul 2023 21:04:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689887064; x=1721423064;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=alIiAVRLZP+hPx+YEPuRluJyKOfuVNfzhq/DVTPkBnk=;
 b=VT5nNT6mfh4A/pV5iKx0b3UC4HYUEjzYP27Q1ojrYiEIEoqZMUG9xxrr
 /2L+eQR5EgTeWyV7P0lRTjrumMA/9qXuj37IVfoZ7bP18347PDH7FO+w5
 Tn5uWCRDmzecSXA+keNA/fRenQs2FQsj5XQcA+0BJnlKrxlGoSpPoG/gr
 LqS51uLf4MNAj+zUU0XBbznXYeoPcueTl0ifGWZWwRb8a2C163yL0smul
 oMgEhYYx0jSCdbVuEAnAJ4N6RI36HJK64dAigzpxP/CorHYZ78zNuM26Y
 zsJ8wx0Y8IbO4XU9r2PspmmFucTrCqhQUNmOFTZ1fr44Skwdl/tmpYM+3 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="397752276"
X-IronPort-AV: E=Sophos;i="6.01,219,1684825200"; d="scan'208";a="397752276"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 14:04:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="718580540"
X-IronPort-AV: E=Sophos;i="6.01,219,1684825200"; d="scan'208";a="718580540"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP; 20 Jul 2023 14:04:22 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 20 Jul 2023 14:04:21 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 20 Jul 2023 14:04:21 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 20 Jul 2023 14:04:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OUo+AEZuCDOggXa+6XxMFANiY4dkGZdmH2iXd+6OZYvd+ACJoYNfCucNEng6cmMLtYJHKQdjvmW8b3MMcbOF2M0hP/mea43VegsBOi4bsbFCiNexHRsk4cg613y3ntloRXrIV+wyvuCIsCNiVd74wnelpRd0mQhDC9mQ5+JDR+qDNrA8RFaWcgBvy+lgdf6VDWZd/JOEGsdUu18+TDwwqSzKXya7jz7Zm2o3jLa89xzM7bLJJjtsNoGlAHr35u4N8wauwGbCJw7gEXjLGupYkfXAPgxuNhuw3TF8UmHph7N9bCvsfaluKKaYv56g4i6FoQvbWjEH4dLHMsU8baOE1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g0FNAPHZzTnVrMoIcBoJxi711iGfLPNqJJPksAg8g2k=;
 b=Gd7wEUbmuJSMDfl88MiTGkz75MbDxMHVIJLkbXQc+kgkXBKmQrNpgqZ0y7d62QyP9RGUpoOXmcwxMBUcao2Pk49K6yCbKfbGT4LW13YQ5HlHtiq9ZHl5D1psFpVF+vi1ACRS91Hl8EHe7x1Gg0G1AR5EBBCQvLN3viho1cu9GGFcxOZm++SlWf5kGPYXYsNp4EcBg2ZqcfmfX9b9C1hwv2lUdNtxSNTRjMfXCjQziLS0eLG8rWUjLvW9yHl65ntAXCH4Rx2QCCH8dCCPWeqXE6UatNQC9bfNOynaalKyA07vIMSGxmY8siSnBjd28KZzh1OmU9C+kSyoJTwch4Ph3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CY8PR11MB6892.namprd11.prod.outlook.com (2603:10b6:930:5b::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.25; Thu, 20 Jul
 2023 21:04:02 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294%5]) with mapi id 15.20.6609.024; Thu, 20 Jul 2023
 21:04:02 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Thu, 20 Jul 2023 17:03:51 -0400
Message-ID: <20230720210353.214385-2-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230720210353.214385-1-rodrigo.vivi@intel.com>
References: <20230720210353.214385-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BYAPR07CA0040.namprd07.prod.outlook.com
 (2603:10b6:a03:60::17) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CY8PR11MB6892:EE_
X-MS-Office365-Filtering-Correlation-Id: 1ff11d53-af1a-4419-4779-08db8964d818
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mN4bgnqzZAKrrWDN07rwTsvbawks5rGzwzB7ZP2EgOyM7Oi6J/2gTMQ0Dr4oMiFAoSXPjO1zVug7K8XzvwjqkjFD1v4xUzmReuX4GPjuKtOLOhLiIWUmwvXWMSJLsV1YvjSPU4r8e78Bz45zZOPFskZuj99R+ab+r36kfwsUhKtNBRp6xacI2Fj4b/oCtEfdHp4PJZI+XNAVDYhbQCHFJrhZ4us8nEsQXzRNA8jWhU1ipQ2gTUV7e5qCqVZ4MWokAoxqm7T0jxWMxkSOeuN3xYOrlRiku02tqGcqsNhmN8XmFXnhC8Wb7veo7t0WFwrzX65QpXcKU7j0c31K0PaL1qxsk4nRkBX82juSoHYzQS9FmhjnMbfRqD5q7cRqPjgqz0ouVMoW+yZzpPCQ2sZ1+SrUO66lJAYJLa758lfiIX0ZwSngBAMGMgbmTVbT3anx8ikCTgjh4Gylb9RiWEbSWwkDkBVNBWSxNxI2IDmx/8pqMDp2q/0ntCGe9dbx8HHg5CjGkpFNUigpwIpRRdxchEMBMkZi4ysPcEUYeBe24NAezxImpKg6qrfrwpJG1Tq1
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(39860400002)(396003)(376002)(136003)(451199021)(38100700002)(2616005)(1076003)(26005)(186003)(107886003)(6506007)(8936002)(83380400001)(66946007)(66476007)(316002)(6916009)(4326008)(66556008)(8676002)(5660300002)(41300700001)(6512007)(6486002)(6666004)(478600001)(54906003)(2906002)(82960400001)(36756003)(86362001)(44832011);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?K3J0c1BLdMoeLLxz9A55Q1dPoeR/9kgfInnN3l0zfAZGJclIjyvs1yHTmvBe?=
 =?us-ascii?Q?Kem9MrtBOzFWmqSd/G1EJ+Q4/qcbsnWehZk4vm0q/yOPJL0WBtJeT7kFKnU6?=
 =?us-ascii?Q?BINFcOTHpGOPOwC3Pe0Hdn/gjkO2m9uRqzrHTZjrDlCHsn7XIog8p2PiFBZN?=
 =?us-ascii?Q?RAHzF/LT5v32KPi0r6AIGjttEJk7+fBe3pInbyrDnQYI4/Wg83f4liLoNRQ7?=
 =?us-ascii?Q?rYAojWvbfsiD7z2g+lBNRd36TM3Re8cyuZfhNiRsWZCa1LiO4Q3y3Dr/dV2R?=
 =?us-ascii?Q?ohD3oFIEQyy4vPRx3RacindDsFC2OaHuvtU4OPec8ClJzUe9BRhLgzWCoF0j?=
 =?us-ascii?Q?Nj5WZJEzdc0O/P2/ilwWXCjQuDtzaaFN9GBxm6m8LGf7OUw3sLTXCMTbONRE?=
 =?us-ascii?Q?Xrb/p/ByBmBTsmuCnzncEVh/4Sn+mZi35y2GH/R7oXJDazUXPXgmVRyaSA4G?=
 =?us-ascii?Q?ygyByDsp6ltU75xovM1UgGWk+5T4LGCRaQwvK7BAKkqtvqmte3PDyA9DWsoK?=
 =?us-ascii?Q?fcfwdO5JCcS/ENHquOgqvTGbZYuQPX37vlTdlYRpRV6zLV/W5SValNH+eAg9?=
 =?us-ascii?Q?StOrM2SsFVf84EwtEJhINQhanXDL0it+qehvADMLEST2SbxALIi8U1zUA45n?=
 =?us-ascii?Q?eNGdk4Xs1L+sL3BxA/d/QZFrRnZubhXN/kDA9OX2c8vNhzl3BTbaJKuml+30?=
 =?us-ascii?Q?RznUIAoVuAejykjbzmJwrtahaxCizRAy1WlmnlBYPBvv34ZpXj+UFmZUAEgF?=
 =?us-ascii?Q?XvGV+aTV5xo/xicbhXuLMvGwZURxHGrNRNzcQm4OoIQf3q1KvgUvgzdbCa+j?=
 =?us-ascii?Q?B3Y2ReGhJpL80coRaK7kAciseZhNRk/8Y1Eufr47/6dnyENcyl+EtfmXaOyM?=
 =?us-ascii?Q?CryjPatsQ89I0HsWu+fzmoF1AS6IKyNYb+z6Fn4YDlUT4wh9mp5axhqdywlg?=
 =?us-ascii?Q?fd2O6JVmX+C9+eukDutZAAB/Ale2GYv+MspTf/tCi4YrhlhTd+NawEWcOljT?=
 =?us-ascii?Q?AEbNmuGgMruj4mrslBPDBIQt4/JbDYR4CXT4ePs+J29Npu1r+LQYb9bDGPQA?=
 =?us-ascii?Q?HtpryAbBcde3wZ836+1Dn2bMJOnRyN23GiYdT+cCvd/PmEkx2KaDA9kJ3ghn?=
 =?us-ascii?Q?W+uyBSbCghlT3tUrQRm5pfmKwC6z6nT1KZ1TkDhEwQGDK44HfRo92bfai/Ot?=
 =?us-ascii?Q?qAXPNgQWRf+EccOiTacsal8q3azI8ITDeUXU5orqpG/JYOhLwsYy/F2qOZCp?=
 =?us-ascii?Q?QbZE51hJrBXCpApvlZYP1jF1uoB5k3gKCLRPMJZqTtWnph24OTANomGNyle+?=
 =?us-ascii?Q?R1zc6LNdvaTx3P5VjgKQXCBHktpQLpFMpvnQR8Houyio18RidkwH7TeYfnZe?=
 =?us-ascii?Q?viEZKM8ofSiJgN2yXgVktMk7ol6uusdMXX5vWRndZ4f4WvY2YaM4DQzYTcti?=
 =?us-ascii?Q?aKuT9mfc8irZkdskr6mTZFzP6IE7VyzMEC2S3CDrVjV7/1sY2qelAyQkfaWB?=
 =?us-ascii?Q?2zxl9ohvrOz4J+PNfU1DAzsfgRV297P31wBt8OnzIqI+hWpJtHgoHjZwksP6?=
 =?us-ascii?Q?36CdiU9dQlKpd/Raj4vJaCIFC9ikLMk8mhyh4PvfQdUnoZvcJzQHYWOOh6Nk?=
 =?us-ascii?Q?/A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ff11d53-af1a-4419-4779-08db8964d818
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jul 2023 21:04:02.0158 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BnZWkYhRAyhCnaTUZpjsXMYPf/NZiE8Ey2hX2Sz+EkxWH1QRK94BvIHZhPeiPOoZjrrOX4Rk1hdTL9XOCeUnIw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6892
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH 2/4] drm/xe: Move d3cold_allowed decision all
 together.
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

And let's use the VRAM threshold to keep d3cold temporarily disabled.

With this we have the ability to run D3Cold experiments just by
touching the vram_d3cold_threshold sysfs entry.

Cc: Anshuman Gupta <anshuman.gupta@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/xe_pci.c | 15 +--------------
 drivers/gpu/drm/xe/xe_pm.c  |  5 +++++
 drivers/gpu/drm/xe/xe_pm.h  |  7 ++++++-
 3 files changed, 12 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
index 0c4051f4f746..06759afb4224 100644
--- a/drivers/gpu/drm/xe/xe_pci.c
+++ b/drivers/gpu/drm/xe/xe_pci.c
@@ -834,20 +834,7 @@ static int xe_pci_runtime_idle(struct device *dev)
 	struct pci_dev *pdev = to_pci_dev(dev);
 	struct xe_device *xe = pdev_to_xe_device(pdev);
 
-	if (!xe->d3cold.capable) {
-		xe->d3cold.allowed = false;
-	} else {
-		xe_pm_d3cold_allowed_toggle(xe);
-
-		/*
-		 * TODO: d3cold should be allowed (true) if
-		 * (IS_DGFX(xe) && !xe_device_mem_access_ongoing(xe))
-		 * but maybe include some other conditions. So, before
-		 * we can re-enable the D3cold, we need to:
-		 * 1. rewrite the VRAM save / restore to avoid buffer object locks
-		 */
-		xe->d3cold.allowed = false;
-	}
+	xe_pm_d3cold_allowed_toggle(xe);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/xe/xe_pm.c b/drivers/gpu/drm/xe/xe_pm.c
index 17a69b7af155..a6459df2599e 100644
--- a/drivers/gpu/drm/xe/xe_pm.c
+++ b/drivers/gpu/drm/xe/xe_pm.c
@@ -326,6 +326,11 @@ void xe_pm_d3cold_allowed_toggle(struct xe_device *xe)
 	u64 vram_used;
 	int i;
 
+	if (!xe->d3cold.capable) {
+		xe->d3cold.allowed = false;
+		return;
+	}
+
 	for (i = XE_PL_VRAM0; i <= XE_PL_VRAM1; ++i) {
 		man = ttm_manager_type(&xe->ttm, i);
 		if (man) {
diff --git a/drivers/gpu/drm/xe/xe_pm.h b/drivers/gpu/drm/xe/xe_pm.h
index 08a633ce5145..6b9031f7af24 100644
--- a/drivers/gpu/drm/xe/xe_pm.h
+++ b/drivers/gpu/drm/xe/xe_pm.h
@@ -8,7 +8,12 @@
 
 #include <linux/pm_runtime.h>
 
-#define DEFAULT_VRAM_THRESHOLD 300 /* in MB */
+/*
+ * TODO: Threshold = 0 will block D3Cold.
+ *       Before we can move this to a higher value (like 300), we need to:
+ *           1. rewrite the VRAM save / restore to avoid buffer object locks
+ */
+#define DEFAULT_VRAM_THRESHOLD 0 /* in MB */
 
 struct xe_device;
 
-- 
2.41.0

