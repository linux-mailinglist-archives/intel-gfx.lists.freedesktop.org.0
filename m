Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9792075B930
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jul 2023 23:04:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 363FC10E1B0;
	Thu, 20 Jul 2023 21:04:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C706D10E1B0
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jul 2023 21:04:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689887079; x=1721423079;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=lCUxLssVaNpbp84lPdhE6U50yP9YzyaQStCVpkM9GcY=;
 b=muLsOoLfO2xhbyTxXRAlvQx1QsxliCJkr9xgoI5DJzZ8ZSytStmOI3kS
 gWzmuYHQYA5dhKfu7n++/QohV0eFafv4dAKWZ7hk0VSSYcPCebhdJ0p/f
 50i7T6cJAfwtfEoc60qSxBJjdYaVPr5TzJcybeRfEPNVBFdpSZRDl6mFQ
 dk6hz1IAXE3dUJ7HHDthS446pxyTgnuy08yR5Pk/yPb/AmmgRFtf3Eznx
 WBoEdbBixVacZ8MHhBNUJ0wQe+7zi39R6qRKDzaW9iOwH/asrrt2KEeqo
 10z8h8/TLWc+RaTo4u+DA0BhIINtATW1UH8MKGfSuKdQBm1mWkkY/EAD1 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="364326776"
X-IronPort-AV: E=Sophos;i="6.01,219,1684825200"; d="scan'208";a="364326776"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 14:04:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="789966564"
X-IronPort-AV: E=Sophos;i="6.01,219,1684825200"; d="scan'208";a="789966564"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 20 Jul 2023 14:04:39 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 20 Jul 2023 14:04:38 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 20 Jul 2023 14:04:38 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 20 Jul 2023 14:04:38 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 20 Jul 2023 14:04:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gdHzVxPdEjKOKKpG/dcyvzSXku16pZSzNOX+vMxzoSdjHGaFDzPb0EZznlfwuLgupKTc4w7MbVUMpAhN7XgcQ2AU/tTsFzLMtazXVdpUCpv5yGtvzrp0Ed2jo7lqAy5yx/uYbDIdCGPE/0YJpU6lTf3ZoZDpIaZsaeKhbCqTT+Fth0WHxLBAWraCJco5Tg4vVIzY9cAA+0rfm/sUe/7nqaRKSb9NKwO+AtyfdZpAOkqBxBRVeNjPFLI/uAbO8W+VC8AmNABISQd7V4+lYwpvUAPlgn36BJZ8YjyNg7dGD+Bbdm9xB/xXwUf6ksVVgfeqc7fZC2qyjD7jz1TelKqxjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oq65BIqcoCzrGiQyGLlL8wAan0BtmdXnnPtnTxthgbI=;
 b=ABXfq34Y7OYw7i9plPG9PEehCl7zMa5Z92YeTQklwoDEG3T49ROyVGXmchwro9xvGBZ7KXJLUkGEAR9JTD26DhMVXysDkf2eRAaYcWvxJH/UBBiN6YXRd+DoqE5VWqFVKcihlQ95N6uxv7hOvh/LanY9mhzDGDCrnK07C3wWwnVgXebJbC/e1wCO+WhEouTxDWhXRS1SL2XfLEg3qq+kH5t+ddvFDSLyaDzKB/ltaYSPEBX8jd/dNtF2Zlsakvw78yQdDVhx9t4jtD5e4+25A3v08vQ1TSMKA0mXgxX05PZe/8pTtZ0N36uBAB1fG2PRF/v8lShYYUgNHQ4B8rbg0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CY8PR11MB6892.namprd11.prod.outlook.com (2603:10b6:930:5b::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.25; Thu, 20 Jul
 2023 21:04:05 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294%5]) with mapi id 15.20.6609.024; Thu, 20 Jul 2023
 21:04:05 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Thu, 20 Jul 2023 17:03:52 -0400
Message-ID: <20230720210353.214385-3-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230720210353.214385-1-rodrigo.vivi@intel.com>
References: <20230720210353.214385-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BYAPR06CA0050.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::27) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CY8PR11MB6892:EE_
X-MS-Office365-Filtering-Correlation-Id: 0e439f66-04c6-4816-25fc-08db8964da59
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: b1bvKvw6N9qoL3ASNU92YJn8Prl4/rrtjDwmNwMw9S2tcXeP550fSkQgyPO26gzEhpmsp6MC2Z8EDw7xrYZGewB5MvUI2QviBfXhwYEvrQpYniLoNm2JFZSeX9+rYtjOJ0rZwu8U86no46wTLEbyvPS0dadYNBVxfqGjz9OIF7qxu0+KJy6r3i5krzoLHCSLmjHjvF92BplZZ7LGaWrsunDuA8Tx5nySC9MqCtqcAMt/jdww6O6/oWUMmuQB7fBdTpOBDncKNBOHR85x5UJG4EsXMGPzySewt+xHbHcu0zhDdxPQ4Y1TGRqGwa3ZSsuyQv23+4XDVOa14n2x6QEu19Jb51PO1vC6OCTJs47I/mZRTQUdG9MTkDNv6a8bz8Kiez5MTBUCa0EzzKC6PWS+NeLvT4UqnHMpPrPUkNcvse0BYtju7bIDqisVtqby13CcGSpOTkboc5RqPthjDBYVN9TmHGanxJdfnjkFvZWdbKoqVwltjoiDzqEMLwYEXLck/rmZMBo4Ej8rSzRJRzibjcKqGxrxKmXlZ/qxKTurIxroxNTA9pLl9pyyDDwBoBz1iMtMN94pdgXod8Tz42z9EYT/TAdld68fvrMlMnamMwQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(39860400002)(396003)(376002)(136003)(451199021)(38100700002)(2616005)(1076003)(26005)(186003)(107886003)(6506007)(8936002)(83380400001)(66946007)(66476007)(316002)(6916009)(4326008)(66556008)(8676002)(5660300002)(41300700001)(6512007)(6486002)(6666004)(478600001)(54906003)(2906002)(82960400001)(36756003)(86362001)(44832011)(32563001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qCApA15TZ8upSf8Nmd/3EECvFf7V/ghPs8iFleh/wrBW9/TdxfsVD0ankJX6?=
 =?us-ascii?Q?9nWjgUbPpMY91G2qiK0iHbI2jPKAixYaooYMYZ1wmZ8xE/lIHfJxHUY+pa73?=
 =?us-ascii?Q?SQJf6m0LL3ohNxesaLfZgz5RvUnsz33PXiAsxU60FPXgU4O14vKCbCMD3Ouj?=
 =?us-ascii?Q?k4hbaLw59P2rc14Uq3GgN3z5Qvkm3z1VCJfdukWBTlTMZnOYKacbMQ2hjeen?=
 =?us-ascii?Q?+nVkxNCD8jStH40CIBzsCwoQk7QQ6pTVVRWz559+aPnAzeH3zTOa6nYpkzFf?=
 =?us-ascii?Q?5XsbSwJhL0GBLV0bVnTKndwvWUTKnibxl5wmxWqkTzX2oehhFO1N10Or1MuF?=
 =?us-ascii?Q?9YzMmL2MKR0KWijbt/8NJiJDlAGQwUT3wFkVdAR3V2QZj9YuY4c+YHL8GiTT?=
 =?us-ascii?Q?LzF15+4yOvh9qd9qRMem6t4m5gRd854M5u1DiU+v+w6bfHRKyjOeyUB2g3tw?=
 =?us-ascii?Q?ba20r625k1UP3ILonyVGiFO+ytLz07HvYcXgEyTB5nyMPAw/aOKU8jQfYGiL?=
 =?us-ascii?Q?8SxKsquUaDHLB5EapxNqHojzXzNYO39ynzzUuj83mTnUFHjw+Bw4HA721kk5?=
 =?us-ascii?Q?V2zb6/+SSi+giziz/7W5RmRjEP/3bND/UbElqZHtAIDtLtK54yQb3nw6xWje?=
 =?us-ascii?Q?dvsqQqq6dVpC/Kc9GudqijeQibGJ2IgKqHZ4qT9q8/dvkGuhxD8F6vcsqc8Q?=
 =?us-ascii?Q?TV7TTRGOLkXOlJvnNKulznob49a7PkBftEO6USv4EP8IdfWBhyJkOqROZlKP?=
 =?us-ascii?Q?pkEu6Gpj7JtDTSYTNifpAwaBv0TNBDExelIewMmxBOufvUSh21VDbvIKo6ER?=
 =?us-ascii?Q?R0pUKZ1Gx4i8C/3ftn+xCkgfqHrr3Atpi8RU9FMLsCMvtcsQXdY1xmUPwPn4?=
 =?us-ascii?Q?Cdtji9zqF+BYO0OlQ1ZepRvnF72SSAv4qWb3aKerMIl483k1IFt5baLkQaVv?=
 =?us-ascii?Q?4LfDKUOvEgmxw2duURGeVOKppNOXuZ5p7zCrbHIPaYEVFXs/hbv4iloL5Rgv?=
 =?us-ascii?Q?19Pqeyc0tfXOk//3BMoggNDRtlv1UEW/SSyqxyuETBNhcX8wv6738izmjif4?=
 =?us-ascii?Q?7RjSnz3oE08tSyRvsoSMfos98RpotsSx2QXpDeWkHHv/wKMakVgn5ecEkOR5?=
 =?us-ascii?Q?wEhfFZppQfnylzVNDTwXyuRxKRVcRrIhXLJTL4iQ0NZzdN3S+TFFzd0MZ83p?=
 =?us-ascii?Q?xivtuqFqtxfEDwlqKmN8IiEpkzyjBVEE6KhHcVlwpITaQxfv4t7hN/hCf5l8?=
 =?us-ascii?Q?0x2WgJbK3PNqV/yGBR7YsVaqdZUhICNu/o+EDi2wK5uS9bRPBd1JyhN2vQP/?=
 =?us-ascii?Q?SLlq60u3WJbRojCyafRBnMBZLNwhrHcDf4vyKPnUaIlcRPnFLUguoWkLNarv?=
 =?us-ascii?Q?NDO3o9W6eAiCJ75rdDcxyKyYRgnmx/kjNdOsj7uU2kUPJI/Cpkh86X7Vvfb3?=
 =?us-ascii?Q?uSr3o/rHNiOwsN74i5brc6To7rb3ML7XnR68eEAT6vCksIZaiyz+os90Ycl/?=
 =?us-ascii?Q?qG+Xz6wXQedTAr/2yjUZdQ5HWos+oDg3218sPp+SfHxWSssTn8yvVfq/nAdj?=
 =?us-ascii?Q?5TmHIWUjwiDk/55+6L5JBPvr5Yt+5w7JrDTev+0+R5CtIjPaB9oFfu6cz4MA?=
 =?us-ascii?Q?bg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e439f66-04c6-4816-25fc-08db8964da59
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jul 2023 21:04:05.8404 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 06IhNu8p1tx1az0dk6ByGHBhBizkYRssg5uZD7X9DMu483ObMqd2Q/yDrIpN01bsRhGQmBLp1FTGTqQDeDEwtw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6892
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH 3/4] drm/xe: Fix the runtime_idle call and
 d3cold.allowed decision.
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

According to Documentation/power/runtime_pm.txt:

int pm_runtime_put(struct device *dev);
    - decrement the device's usage counter; if the result is 0 then run
      pm_request_idle(dev) and return its result

int pm_runtime_put_autosuspend(struct device *dev);
    - decrement the device's usage counter; if the result is 0 then run
      pm_request_autosuspend(dev) and return its result

We need to ensure that the idle function is called before suspending
so we take the right d3cold.allowed decision and respect the values
set on vram_d3cold_threshold sysfs. So we need pm_runtime_put()
instead of pm_runtime_put_autosuspend().

Cc: Anshuman Gupta <anshuman.gupta@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/xe_pm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_pm.c b/drivers/gpu/drm/xe/xe_pm.c
index a6459df2599e..73bcb76c2d42 100644
--- a/drivers/gpu/drm/xe/xe_pm.c
+++ b/drivers/gpu/drm/xe/xe_pm.c
@@ -144,7 +144,7 @@ static void xe_pm_runtime_init(struct xe_device *xe)
 	pm_runtime_set_active(dev);
 	pm_runtime_allow(dev);
 	pm_runtime_mark_last_busy(dev);
-	pm_runtime_put_autosuspend(dev);
+	pm_runtime_put(dev);
 }
 
 void xe_pm_init(struct xe_device *xe)
@@ -273,7 +273,7 @@ int xe_pm_runtime_get(struct xe_device *xe)
 int xe_pm_runtime_put(struct xe_device *xe)
 {
 	pm_runtime_mark_last_busy(xe->drm.dev);
-	return pm_runtime_put_autosuspend(xe->drm.dev);
+	return pm_runtime_put(xe->drm.dev);
 }
 
 int xe_pm_runtime_get_if_active(struct xe_device *xe)
-- 
2.41.0

