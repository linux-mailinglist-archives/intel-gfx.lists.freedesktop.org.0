Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD205F43A4
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 14:54:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D83D10E622;
	Tue,  4 Oct 2022 12:54:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F8D610E62F
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 12:54:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664888070; x=1696424070;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=Oo2+pv38yQhIDSiN5SEyT/ElBKthbFDnsuWJhvP+kZ4=;
 b=C1OGheSj2hSJmd7uIp8+5BgCsSxz00X28Z70Ctpejceb3/54Ogi7pKGz
 VriQmipA3XsGjfi/362tkP101yqPGbllp5d7+qR6o+F4pjMOFdO+LhAaZ
 +fFChHVcD47yhBnrW2+fnjaIxX9yCKv5+Gz5m+zRDcNyHvvDmZ1FsLr5v
 zg6wC/DHGmXOBZjBzjqJT8AOLIvCMM71JC67FDivzUV+KmKRX0reEesDe
 Osd+GbgHZ0eVN817fbBKKtvJeGlFoa4eGm2LY7tkrvph3qLYqZy+yRHsr
 htZJmda+6KLBl/UEi1TRICC+5rDaN8ParKba5lw4MwQtUx7TQ5GRm4BV1 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="366996596"
X-IronPort-AV: E=Sophos;i="5.93,157,1654585200"; d="scan'208";a="366996596"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 05:54:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="749361669"
X-IronPort-AV: E=Sophos;i="5.93,157,1654585200"; d="scan'208";a="749361669"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 04 Oct 2022 05:54:29 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 4 Oct 2022 05:54:29 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 4 Oct 2022 05:54:29 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 4 Oct 2022 05:54:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y5Grn1FrVwTxG36JuY0MxJx1rYk8YOgq/0PNxu23/dBg3iHaT9gbIfwyD3rCtGLMdo2nalzdaFfHDPkY2egLeWn+iLH3EmxLfpnlU8//ATC67U7lBdcNqke5pvDzlmXDwnSRAnb1cJRw/G5qjbGANglvwVf2kYirU8mAx5TrR3UyEjMorIJg3n0YMGVI8GDaYS8TA41YU5MXQci/7KyoPvfm5CiH0XI6Vvgwm3PTxaSJ8d1/v2Ue4lco0cmNvB99cVItso6WWCYENCxhsos4br4gaj9BoWUQ2YohuHXPVIaWj+72OkOXvaGl6vwoN8F0U4gQ8nLbdAN3toqh4ZCvcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FhaYfzQYMpV+2NtFhwq0Ey/kCymRb2+q/DKL+9CfaqE=;
 b=fvg20qmX9rH2eNVQRGvpA5fI07wxUtRVSmzfScUis5Ut95zSjEBUx6rakzWcosclPAQzrwp1SK4L2ZOXGxhfrCe14Jc8dU5C7cXwHprsOOMGQ+HVOGacHJzatogIaO35jBFc3N4PkZ1OYJfUoZxn/MsogLgQ4J5evGhDAUDhKWjqwL3MoW+Qi+rvrNjkJqpnMhQ9JL1r4Yu6JpBZd9v969jnTND4v14z7QyKybRGplCq46j+p3PkKPvWbTHVTuJB0I/qA6TnN3I+xuDTaihZk2kqbmMk6iVkCMMrp2/Lnc2NzHs6whJ8KPnLuZuR/aQYkjJR3iUqrCMWl1BeU9WhEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 PH7PR11MB6053.namprd11.prod.outlook.com (2603:10b6:510:1d1::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5676.28; Tue, 4 Oct 2022 12:54:26 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67%3]) with mapi id 15.20.5676.031; Tue, 4 Oct 2022
 12:54:26 +0000
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Tue, 4 Oct 2022 18:23:41 +0530
Message-ID: <20221004125344.228294-5-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221004125344.228294-1-balasubramani.vivekanandan@intel.com>
References: <20221004125344.228294-1-balasubramani.vivekanandan@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: PN2PR01CA0082.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:23::27) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1897:EE_|PH7PR11MB6053:EE_
X-MS-Office365-Filtering-Correlation-Id: 2256335c-474b-4509-c747-08daa6079155
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nalLjS9fvC2y2w/UeBLdWtzsXLVbExVeBTJtXKBQpRyZw3WMo2MP1HZaooiq4uS5SlDxiHHXrZmv1c6KGlOWP1+MaZo8tE7Sz/9Tv+58upnmNzCtikau8lKVOKwg0Nan8AKQ/FDc0so07ORApZWcBQVNkws1j4aGyaOjNIDKn2fW5btvAqOPeLgyeiH49VCO74QvU/Qo1rZn2O5cxsU49N1skihORaHsfCtjV8JewLXowNR0JiSIqYwIocsam5qLZU0XnwoFG7kwKkxLETUGnWLHQ1lXFwChNOIsJNHLtDK1fZkbgG5OL7ZXUa/SOtN289CrkLrg5p0G4gcuW4wMCdQcJyZasdmBWhJbbVstfKJR+B3FN92ECMOLjaxjkcJV7+M6smfB9/uyJ4IVDNc2q6aNxhtM5uefGPozup3tnnzkNC2lD57FeF+mh+d/ccFi8jic1gfNM6X0gwFTkb5i6+R3njyqXbhhMlEk4FMBs3kolHVc0XX4ewPVB79De6A4hoZ4jwRb1uAdGXebh7b6XiyR9F532XCJWgIrrAAHkk/nv+PW/unsqnWDML8ly5LaCKtfbrgTzyn79qtU7mWsqIvEXeSa4mPaDnN3IA/1+n0WARgF0iGGbMzPtBXzGmPTQrCgjZHC99ydTmhAOjG9PE5WOR5hoyGESV2caOjiBqUB75+4xT88Wxvuof5oq0PXqXPR/zFfrpdFJi0rQnhSUw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(39860400002)(136003)(376002)(346002)(451199015)(186003)(38100700002)(6506007)(44832011)(26005)(2616005)(83380400001)(1076003)(82960400001)(5660300002)(2906002)(41300700001)(8936002)(478600001)(6512007)(4326008)(6666004)(8676002)(6486002)(66556008)(66476007)(66946007)(316002)(36756003)(6916009)(54906003)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BDsDD3nmz+YXC8wPH+YMvdOAf5uZ36Nn/DkYxAEsrx/WIM9blowEBiPoCDwD?=
 =?us-ascii?Q?xF6IeE5sNantZaqdfriY2Ui8LcJga3Fm1HTGKCKsxphH0il5itjBl9GkzSBv?=
 =?us-ascii?Q?vXmCsnqAYGGerqwzCh6b16ZZKzZOXNOMO5naPgGIFf1KBWMOMQMDpIhT9bLA?=
 =?us-ascii?Q?UAFnOXRKPksmsKkHv5ZnRL+cYyusc3cuCwVzAsHNC4GBYnDA2ipSXjThO82p?=
 =?us-ascii?Q?q5eCtZKMKJOKHJLH73VnHBQy+YUxp441Hn9QUAewqkmBNEUf+dMvrQXbnJDT?=
 =?us-ascii?Q?Nri4nxJltH4vzbXCM+L2wQWRHTttWAcRNhyG3ps3M/BPObJ7UuqV/HGnbpl8?=
 =?us-ascii?Q?kkRlAL+WCUZ+sBDFYOw3AAKQWmYVvwJbYxCoaN73C6vjBzPJgddo3iPHVvpD?=
 =?us-ascii?Q?QLj0hUrE5e3NegM8GuMsytsVA8d1NFH9SbSf6wGLl7K+oExxEbpDHrwvQiId?=
 =?us-ascii?Q?oj6npVeSIvbO71B9VeP2g/A4kP1YtVUMNS0bPNG1PImte6YeYb0TTWW+KZC+?=
 =?us-ascii?Q?/c+DOWlKADStyX8AFQXyxDVp6wvw2AEfpM7rkEbqQb5YlsUbWcbxzY1lPl9n?=
 =?us-ascii?Q?LgdoVHU59wmNdhiFd7zdDtG4/+FvZBVX5xCbsaOg13fmfFlWJ+PT7bqYezpZ?=
 =?us-ascii?Q?IqLh6iysBKOO/qCK3mELp0gKGYZ3hTN39vKnlH90LA/z9EVGfoCPAyfmp2Mw?=
 =?us-ascii?Q?psj/aMjySPysnxXCQjOzEJG76t1kr+EDs0pyEYYEz8JIC/comatv3Pwf1Njx?=
 =?us-ascii?Q?4GgSixmoRQXAYIDCN6y28YgUL95sbZER+pS+YuFfAjv8bOGJteThxZJIjnTw?=
 =?us-ascii?Q?lUJzUaLOJPyunqRegQ6Z8AS6dOcmKxelfzpdF6unoLcStUjy4FCaHJZvruyc?=
 =?us-ascii?Q?5tMJkki6RQaBgH7uhz13+7a/VX/DM3BZZMN4/SI7HUzm0rbJkYoqBgOpahcG?=
 =?us-ascii?Q?9QtUkWlmTUngSkfSkTAHyy1kAPQIxLs26pw2rqOTX+bWw4yCzEtEyMamS1Qg?=
 =?us-ascii?Q?kMDo53/ySATrFldF8ZtyMbzE6h2tq6T7mICQ0a+Qb8ogOR6YsIRf0SgmBObe?=
 =?us-ascii?Q?pTKHI3XidYZYY+YL4s4F9jVjnh1A5S5scyTjDG17+lnm/wuPBlhJoZ3YiAAi?=
 =?us-ascii?Q?CXgB9q42zsme6h8aDTgSxnDoey70Et6ur6OyIgZME+oc4QMN0X8kdLXrdL0r?=
 =?us-ascii?Q?z/ZQfiv3w2xs+X6q8AVw5MlHKek3Pf5KYPKIYB9GIJFwYrpUdOCNbVM/jbdt?=
 =?us-ascii?Q?It4BDAvm49QfPB4RONHnIYFskVAuDB+/rl0+j+YgUFHOsN5bPGMuOSqHu/WQ?=
 =?us-ascii?Q?hSzRCrP6yt/rSngselx+Qx6vYT/UArHBQ8Yrs7Yn8Rw+TB+iO8O7S8XXslK0?=
 =?us-ascii?Q?Q0ultygUznbYPfY9/RGeEDSRQWfv/r83SRQh1b9v9ZWpjMRdG26gyzQQik8E?=
 =?us-ascii?Q?qBfrm5IZ8LoTIQcukkgHQYnlKJxj5TK6jF9L5DmFgxRvepe2gTqDm8ZF0PG2?=
 =?us-ascii?Q?k762zTWzQ4hWiU9DYl+Iv8iTkwEdtVrSJ255NMPDDG7zNvf2mdpG38bFnniy?=
 =?us-ascii?Q?jocDvSghS5culnJ2GblZgch5JvUIggbrOEGJVzY/G34GIiCJTfaO79qTdHb1?=
 =?us-ascii?Q?ILI4MIaIXN4MeMiQeK7Z0iQ=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2256335c-474b-4509-c747-08daa6079155
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2022 12:54:26.3239 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dqK85Q8NYFMAf56yvj3Af2EaN9vAcZkAc0OFUg1F9/9xFX8iwWnUa1Z7UJk+JSj25+Elogem8lZ4mqjtRGkRBpatVM8lhr8XKRLnynPV/4Eyz0sRDqeAfRlqFYshLyGP
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6053
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH v6 4/7] drm/i915/display: Free port enums from
 tied to register offset
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

With the index required for DDI register offset calculation available in
the device info, the macros which used port enums to calculate the DDI
register offsets i.e. DDI_BUF_CTL and DDI_CLK_SEL are updated to make
use of the index rather than enum directly.
Any new macros access that DDI registers should follow the same
procedure.
This would free the port enums from tied to the register offset of DDI
registers. We can remove all the enum aliases and clean up the enum
definitions.
The key target of the patch series to remove platform specific
definitions of ports like PORT_D_XELPD, PORT_E_XELPD is not yet covered
here.
The definitions are still retained and will be handled in the follow
patch.

Removed a WARN_ON as it is no longer valid. The WARN was added in the
commit "327f8d8c336d drm/i915: simplify setting of ddi_io_power_domain"
The ddi_io_power_domain calculation has changed completely since the
commit and doesn't need this WARN_ON anymore.

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     |  1 -
 drivers/gpu/drm/i915/display/intel_display.h |  8 +++-----
 drivers/gpu/drm/i915/i915_reg.h              | 12 ++++--------
 include/drm/i915_component.h                 |  2 +-
 4 files changed, 8 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index e7beafafb857..74b4271063d1 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4493,7 +4493,6 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 		encoder->update_complete = intel_ddi_update_complete;
 	}
 
-	drm_WARN_ON(&dev_priv->drm, port > PORT_I);
 	dig_port->ddi_io_power_domain = intel_display_power_ddi_io_domain(dev_priv, port);
 
 	if (init_dp) {
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 2af4a1925063..9112833b39eb 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -212,18 +212,16 @@ enum port {
 	PORT_H,
 	PORT_I,
 
-	/* tgl+ */
-	PORT_TC1 = PORT_D,
+	/* Non-TypeC ports must be defined above */
+	PORT_TC1,
 	PORT_TC2,
 	PORT_TC3,
 	PORT_TC4,
 	PORT_TC5,
 	PORT_TC6,
 
-	/* XE_LPD repositions D/E offsets and bitfields */
-	PORT_D_XELPD = PORT_TC5,
+	PORT_D_XELPD,
 	PORT_E_XELPD,
-
 	I915_MAX_PORTS
 };
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index acb764755338..15e6b9482ee8 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -170,6 +170,7 @@
 #define _MMIO_CURSOR2(pipe, reg)	_MMIO(INTEL_INFO(dev_priv)->display.cursor_offsets[(pipe)] - \
 					      INTEL_INFO(dev_priv)->display.cursor_offsets[PIPE_A] + \
 					      DISPLAY_MMIO_BASE(dev_priv) + (reg))
+#define _MMIO_DDI(i915, port, a, b)	_MMIO_PORT(INTEL_INFO(i915)->display.ddi_index[port], a, b)
 
 #define __MASKED_FIELD(mask, value) ((mask) << 16 | (value))
 #define _MASKED_FIELD(mask, value) ({					   \
@@ -6936,10 +6937,7 @@ enum skl_power_gate {
 /* DDI Buffer Control */
 #define _DDI_BUF_CTL_A				0x64000
 #define _DDI_BUF_CTL_B				0x64100
-#define DDI_BUF_CTL(i915, port) ({ \
-					(void)i915; /* Suppress unused variable warning */ \
-					_MMIO_PORT(port, _DDI_BUF_CTL_A, _DDI_BUF_CTL_B); \
-				 })
+#define DDI_BUF_CTL(i915, port) _MMIO_DDI(i915, port, _DDI_BUF_CTL_A, _DDI_BUF_CTL_B)
 
 #define  DDI_BUF_CTL_ENABLE			(1 << 31)
 #define  DDI_BUF_TRANS_SELECT(n)	((n) << 24)
@@ -7075,10 +7073,8 @@ enum skl_power_gate {
 #define  PORT_CLK_SEL_NONE		REG_FIELD_PREP(PORT_CLK_SEL_MASK, 7)
 
 /* On ICL+ this is the same as PORT_CLK_SEL, but all bits change. */
-#define DDI_CLK_SEL(i915, port)		({ \
-						(void)i915; /* Suppress unused variable warning */ \
-						PORT_CLK_SEL(port); \
-					})
+#define DDI_CLK_SEL(i915, port)		_MMIO_DDI(i915, port, _PORT_CLK_SEL_A, _PORT_CLK_SEL_B)
+
 #define  DDI_CLK_SEL_MASK		REG_GENMASK(31, 28)
 #define  DDI_CLK_SEL_NONE		REG_FIELD_PREP(DDI_CLK_SEL_MASK, 0x0)
 #define  DDI_CLK_SEL_MG			REG_FIELD_PREP(DDI_CLK_SEL_MASK, 0x8)
diff --git a/include/drm/i915_component.h b/include/drm/i915_component.h
index c1e2a43d2d1e..f95ff82c3b4a 100644
--- a/include/drm/i915_component.h
+++ b/include/drm/i915_component.h
@@ -35,7 +35,7 @@ enum i915_component_type {
 /* MAX_PORT is the number of port
  * It must be sync with I915_MAX_PORTS defined i915_drv.h
  */
-#define MAX_PORTS 9
+#define MAX_PORTS 17
 
 /**
  * struct i915_audio_component - Used for direct communication between i915 and hda drivers
-- 
2.34.1

