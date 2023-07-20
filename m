Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B7A775B931
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jul 2023 23:04:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F9A010E1B1;
	Thu, 20 Jul 2023 21:04:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E87510E1B0
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jul 2023 21:04:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689887081; x=1721423081;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=VmBFqFqb3GpAN6uTipXqQYCeL6RvPBf1tihOIgBjIZ8=;
 b=FJ8qFBbZ3c4YQJoSbD7AZpm1BYMr6Q8s5jk5N6BT18aJJZuii5XwDlHR
 3MyF+kIcEa8WS+x5/erz30CZ4k4YSN6Pl1c3f6Tg3K2zZ96YZuWRNIron
 WCNL0V5kadoINwDIAvLjIldDYopEDigNiqFMADIY8SVvqPQAqIpWyvUDa
 hE9+pQxtAe+u/M6DBtutTuVZetr8CELvPrx1J3JesrId0JzTjpvBDJVct
 fJsMz+bPmk7TNBmj0yhdJaqDGuEhgIj6QqvdBtLdI7WdNb3fS/H73DlKD
 oWcOHgSaVAJrp4TRSCmGP35DY3v24PTevJgZYaPiVoGOgcAIYFRrA7V91 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="347166430"
X-IronPort-AV: E=Sophos;i="6.01,219,1684825200"; d="scan'208";a="347166430"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 14:04:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="754177397"
X-IronPort-AV: E=Sophos;i="6.01,219,1684825200"; d="scan'208";a="754177397"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 20 Jul 2023 14:04:40 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 20 Jul 2023 14:04:39 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 20 Jul 2023 14:04:39 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 20 Jul 2023 14:04:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iyDZjJ0rWpXiAuEZr/fP8gzPxTfbzCTjDWRU/ZqBlHkZJZKLrI+0MWaENjJYZn5PUDwZBAoQWYbMD7G1S+n/PLjzrucuCmJOHGjVhxvtMUJ58ijcgoilgF+47V3p3s+WSoDaHGsT6d0ttXIE/LHTGIHwvRSA/TS4LmbJ/gOQmUWopHFoGtb0VgxSmzxjmS3ySDWWZVA1krD/aCjIaDkd2TCYGJ5Wcs0ATaqVHCtZ8+3GBHqnhfPTv3kIdjp4x6Ft2AC7O1oBEDqSJUZ4KMjmssP09WwwQb+8it2t1Yqx+tXt8SvhRpjrBM1/G+lIsQgVbbUKg/4Rj3f3wJwRQ1pOfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l72OOg/p9mWTK41pPRlrY1cLibREztTh3jhJeu86ZpY=;
 b=foK3iS8m07yU6a6CBko4nUHaae41bXIBj6xOwN3jcQjeVkYRLxYK3O8henBnkKPjEJpTDHZybdEEsSm3WYrp0VPobkQp4ofM+LrymtyJjsZ33o9I6JRmojaTbinvI8ujkzlJ6WCoOrcGnV9bevBIb5lVbsF2617Vui3gNIQq/ZBLN86ilIxt8GQREFI5cap01CPtYc2Pl2KQ1SINwUetLoTVCtoKKh4a4l/S7i9X9cH1ytcE/0Thubw1Srqf/9PvPvBsf9z8Mt4yGeuZjqV/8gESRB4kglCDuWgzDehFvomLn0FJmgr5yreX1XfimO03L2mqsAKEaeGkBbQom4Q1lw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CY8PR11MB6892.namprd11.prod.outlook.com (2603:10b6:930:5b::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.25; Thu, 20 Jul
 2023 21:04:09 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294%5]) with mapi id 15.20.6609.024; Thu, 20 Jul 2023
 21:04:09 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Thu, 20 Jul 2023 17:03:53 -0400
Message-ID: <20230720210353.214385-4-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230720210353.214385-1-rodrigo.vivi@intel.com>
References: <20230720210353.214385-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR03CA0202.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::27) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CY8PR11MB6892:EE_
X-MS-Office365-Filtering-Correlation-Id: e9ede7b3-9dbd-4776-b6ff-08db8964dc8b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xl6t5khNKDxjev1PWHIVLDi30XDx4jYzFAcuyKSizyYV/bU0TGOX7Tn2SY8ESHZP8Uja6q1ARdwv2zas3m1B+dK123IxtByItlCewN5TRDv0b9W7uBKzD6+L8ke5YWjM3z270wxgVXmrGmgG8kCc1P9w8bP6CgoOX6P5rBt7Htcrh9wAN5ew8KVe8Ztpa5Ed7jDAgoEPf28FcUnDok8BCY/Aoq/N2GWTf6ONJhSuY4aHhrdQf53Mn2mGbWfNP4L4cKo6B64acyR4VrQCIYdhczNDBZv+xv/FYGu/9Dus/oALrEtaRmKAYkujYUnPMMKr+mp/RSJdSabungvQlaK6OjwTdL5eWHLKKFLduRUh6gyzu9MRV4/u9EulB3hUBg6mW3A9Xc2YN8utpoudF2QLzMy8sMCDe75yphAtOuCUmATlBy/RkUfzn2AFYPS+4JZujrKjMw5c3T37wyOOT5RngMEMOHPnP6MFOS7dZcOwaAyJDFH1F0pRtMBVxL2e1qOWvd8XmLPHMGrhxVKg/H9ycvrxgSagKsDSENILG4AdomD9Jtz8PgdD5zwUmljME9khpLbsJITNe+3V7PD3iEyeFvyU56ln/zzcHiWtIkK6fWQcSr5i8fA0sHSIbSSkmlW7uQPBQVz1Hoq169w8/oP4hQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(39860400002)(396003)(376002)(136003)(451199021)(38100700002)(2616005)(1076003)(26005)(186003)(107886003)(6506007)(8936002)(83380400001)(66946007)(66476007)(316002)(6916009)(4326008)(66556008)(8676002)(5660300002)(41300700001)(6512007)(6486002)(6666004)(4744005)(478600001)(54906003)(2906002)(82960400001)(36756003)(86362001)(44832011)(42413004)(32563001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?62d8RlbMVGEWZaZ74N4iVdfBiNaCbZiI4s3oRfJ5ZP+8TKxWl8xGQLuMbTqb?=
 =?us-ascii?Q?ZYodAmTZRlRL/tk5kNHh4r07snmg7gapK8+xyJPkspSdG9rve3zwpcraO30L?=
 =?us-ascii?Q?8PGJHBtQ8xbmT0ChLVrfax+dAUekFhgMgv7iQ9PdxB5XdBQ5x2l91VFpuTKy?=
 =?us-ascii?Q?q1mqOlbA5YrAwLaL67CE+fMam+mVaUlKWRhHztFKJi59hGbtQkiswMPLhdhF?=
 =?us-ascii?Q?2RciTL2al1R36OBjyiyES+7w9fZpg7LBv+CEDzbFCOPaPRd9D79HqrnQT5gK?=
 =?us-ascii?Q?d7aQ7UCZZBvaqKls4dUV8x6eML8jy0yDCszwyXPv3iam91BbW/Vf9JMakd2s?=
 =?us-ascii?Q?4o2YcDBI/QY685GPHvIltT2xyyPuJK2cT/CxtwVXI+5prMqj3seISuMP/S5A?=
 =?us-ascii?Q?4P5jhy+UUrU3OatoI7JUQaYSt+03trTS+vwFyh4SWeq3b8H+rNVxsNKfFwNR?=
 =?us-ascii?Q?e1xvq7OVrfadWvYU8RkoOC/qNaLgWiH7JmRnOplIjNzqXijwxzz7xloLDwOu?=
 =?us-ascii?Q?ORMddUdjeyJzt/uW03lYLWq2b//H5I1UwZo0BFvsgY26hnRtFiAGZ8qMMPaG?=
 =?us-ascii?Q?mx5sYotCL3Whd9rB7Pcno/3VAq7Z+iC3dSTerpGCTic0vzZlY1/YyiSkvfn6?=
 =?us-ascii?Q?UvYvmXIBipBqt0pMj04AWLa30vlUPek2N8E1h8nAuVTHrBgCijiMdkpM7tma?=
 =?us-ascii?Q?I11sqxCS/N/e/QXI8JYMQMdjOrW/7d182IN1dL7J9FzzSwAQEyP8TTpF/Viv?=
 =?us-ascii?Q?flZNQ03ef1ZNJxHUfKYcJUoYjXjo3g1uQdwtv77l3GRW1vImazyEnptV99aI?=
 =?us-ascii?Q?mWSvLrnwVjka/g6LiG1qxAL+Bi27c/kWdRa5+ICbJeF/Ralr25vgPE0pvk+v?=
 =?us-ascii?Q?cg9ShQPtSLLUTSeTTYlqOiKdsN6+E0tdLR/EbaCYPuZiTETRbknPdD2cfTBO?=
 =?us-ascii?Q?UUexhGpusdhqYbJxkpgmC4xmj+218UYGsLRG/MZiSkdshA0giextBpATQOeQ?=
 =?us-ascii?Q?0O2uIhVhxFufvmQIK/8dWEKG9T94ghrjcWD55dCzo1xLKYPjOSOyDpc+Sw26?=
 =?us-ascii?Q?S0YMbjImCI9c6Icrjk7Yfw6vCMpka0eLRYZy0HRKljJWdJ0Ee5axjPeYnhrw?=
 =?us-ascii?Q?OCGP9I0sL1j+zUp3Q8M0JVYxGZL0hvOIfpQdsZmwVp8xdbcA2tUAGVwyGcsY?=
 =?us-ascii?Q?BGRJ1c7UoZP7ToN4Y4HI2qBpL31atfP8K+ExFURKarMn3t5LzV6LHhc3mI5X?=
 =?us-ascii?Q?AdrqVrkv7Q4LioVyryvcaynBl64S5aQscAafpSUW20DSOLTuHpd0eF84balO?=
 =?us-ascii?Q?T5ddTokrJ6KWRRtiF53uGgl4Oke3lVCZJYjlQME5ML/5fR/ZRhM3yJ5uw6Qc?=
 =?us-ascii?Q?ax3Wh2gKQgwvSmoGJYTqAv5icHSvm3KOraVfecvnokZ8B4O85VKk+7Gu9mlA?=
 =?us-ascii?Q?KEUUo/SId/DXyu7RcUUClpQCewZniGKWgcSGWH+h88FBeQ1yonKxkRdZss74?=
 =?us-ascii?Q?j3G0PU1tSO74RqjYQReXvKkaolSaxV5HmCwITb0uTp/q5qyFnh9R5GM11QDf?=
 =?us-ascii?Q?WCbc38Lk1rCS5D5MwDoJ/y6iZJKiEPElt4VRlGJ/w5Osbq9W/Yg1XmGNWhfe?=
 =?us-ascii?Q?jw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e9ede7b3-9dbd-4776-b6ff-08db8964dc8b
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jul 2023 21:04:09.4127 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9tVtY8SB9sWwRVTsVjznfIR6EoZSCBieOFk0XuSNzVfnPLqU/oArhnHwIt+YlBWZixHZ/6WRmkgFFzjc5e2IqQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6892
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH 4/4] drm/xe: Only init runtime PM after all
 d3cold config is in place.
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

We cannot allow runtime pm suspend after we configured the
d3cold capable and threshold.

Cc: Anshuman Gupta <anshuman.gupta@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/xe_pm.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/xe_pm.c b/drivers/gpu/drm/xe/xe_pm.c
index 73bcb76c2d42..366ee446af38 100644
--- a/drivers/gpu/drm/xe/xe_pm.c
+++ b/drivers/gpu/drm/xe/xe_pm.c
@@ -152,10 +152,12 @@ void xe_pm_init(struct xe_device *xe)
 	struct pci_dev *pdev = to_pci_dev(xe->drm.dev);
 
 	drmm_mutex_init(&xe->drm, &xe->d3cold.lock);
-	xe_pm_runtime_init(xe);
+
 	xe->d3cold.capable = xe_pm_pci_d3cold_capable(pdev);
 	xe_device_sysfs_init(xe);
 	xe_pm_set_vram_threshold(xe, DEFAULT_VRAM_THRESHOLD);
+
+	xe_pm_runtime_init(xe);
 }
 
 void xe_pm_runtime_fini(struct xe_device *xe)
-- 
2.41.0

