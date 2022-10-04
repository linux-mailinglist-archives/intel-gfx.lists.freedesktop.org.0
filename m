Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 34FF65F43AB
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 14:55:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3905E10E5E1;
	Tue,  4 Oct 2022 12:55:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EAEB10E630
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 12:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664888095; x=1696424095;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=BAU0gC84rvBXkJYWMsECUTKbK8VQt8/4996dACIVH1k=;
 b=GBVraQ9PC+ECMmv9DbMFl9Cqe8Q986THxf7/D/9jx4TvqUAh+O7USSlH
 M8fzPBgC1NtGUIN+Tqzuej9j/RZX5RtIOddSdB87OKpCYkJuw6KHmSg1D
 BEMQVfRcHyQcuTsJ35DBs8kZEm7hbBHb/EJb/2RjO0eCzbpR1bA9UaQhm
 dyS3Q7SCDs6YstJTvpuDkaa1n73L9NIGSZOl+fepOvA2izCiNJiADsi6Q
 59CLum07UuOT+JON/43kd9NCECfLkjI+8yaw8dGB6+hnd0zB9vbwRYIyv
 csbfQfEOkoH/hFHpD6h2gWOSm3N2bnM1RGvMcMzll1X9kg0Dow6b1Y+XO Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="304444187"
X-IronPort-AV: E=Sophos;i="5.93,157,1654585200"; d="scan'208";a="304444187"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 05:54:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="692478261"
X-IronPort-AV: E=Sophos;i="5.93,157,1654585200"; d="scan'208";a="692478261"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP; 04 Oct 2022 05:54:54 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 4 Oct 2022 05:54:54 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 4 Oct 2022 05:54:53 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 4 Oct 2022 05:54:53 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.49) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 4 Oct 2022 05:54:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S0IdNI3j/jvY6awx0MSS0axY334N6bhCLsgt1EolGEwOUIEcA7rwbmGH+j3KdribCELpE/dqWj/g9kz3DzzKXqjOiL0uQGYK2yQlUcwq57XI6EEGWg3PBlTLQLjfUajrRCX4IE/NZTThHQX7wqiqIyTOKZY+IfMjC16A25acdDraZ17Y1FFVY8CBhy557WTE34U+Xywp9WRxc4UaCj+8CRnsoA2kRI3Yve3odM6rJ23EfMlB6iwFdV98CBvYW+o1uHZBrK40YlH+bmjHmwzYvXDp/rO9wUogXAm4Q00jdVHTXowwUfBKBDj1oRXUBX6a3SqSYQVVhOSARYHGPW8NwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=thsGNY98TalJdJjyzlld9eBpipGT3bNbNJrRl6mwyXQ=;
 b=C6nxX0/bXdrmZhBiTk9+GBeQ1KaxUSpTAp6PV62DW27Tk7dkr4ngkM/VN9R0UCnK5g/nE/5qFUYTbm0SxbUpp7I/9EQU8jBHbKE9FK1U6Wvt0fn+ec9UBK4P2RSP7iDzq4O2mFoA4YkX+YEFH1KSoa+AR+nCGBP9o35o8eV7w6EwgRPR3G2q5gpioeh0SRvJb0AS6ga7F91v71v9JvtdfvM21gsq3oDnZW+aVDO0QGqWvhaihl1AJLstOc5S24rbcqD/2WjW9nNjqu3xlPpG37FqOwNHNON3nlvcgtuMjBtAMPBiIwIynE2Xvpf9jC5Z1qD9Qts025QVfAB2YtTaVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 PH7PR11MB6053.namprd11.prod.outlook.com (2603:10b6:510:1d1::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5676.28; Tue, 4 Oct 2022 12:54:51 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67%3]) with mapi id 15.20.5676.031; Tue, 4 Oct 2022
 12:54:51 +0000
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Tue, 4 Oct 2022 18:23:44 +0530
Message-ID: <20221004125344.228294-8-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221004125344.228294-1-balasubramani.vivekanandan@intel.com>
References: <20221004125344.228294-1-balasubramani.vivekanandan@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: PN3PR01CA0062.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:99::11) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1897:EE_|PH7PR11MB6053:EE_
X-MS-Office365-Filtering-Correlation-Id: 0d66fc8f-23b6-4e66-f540-08daa607a091
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: j9N9zHe37/JrJgEo95lpsV1utWi6siwa/BTpaVfF6GbpF6W4qYF6QVRuUpHbajoAsFf+fDbDHOMDD3atV1YkOrVp3TJbop1lfGXOoKVYZ/LVZynTmtP7rCibkhUkEv2uYK4a5FzA0UZu4G1IQKN/9YwX3ulY2ygU/XBpLF1oqmHvYiLBC93k9O8Y+qZO3uV/YQUUv7JcU/vZ15b4Zaxkf8GTKUCQfDWUhC5Mi3whmrM+I41qD+U8Vn8wKggMxRLHJvFta2DM4Uf+vF0ce9m8C8XvpvbZFqQSWG0a0GIc9e1CDopG2XyuQcSb8B7FOuvQie9CkLDhuaN/cVLsJc6fVFIefdJMYMszvkCyTIIBh5qF6CfUBCx8HxU4b2md5RQd0RRyrIcES54loSH1QJ4+jGEcuTVSpLiF3OQdlBcvZ2wOslrkb9tQUPswJ1FxJww0TPUDKPfd1JcZ9HKD6yX4BreO8wliEj4zCJtt9vMFB2M0COe5Q3UzMlFv1VXYLM9gKM3lJbMvNzqj9auYGEned33Us+7chNgSkHUXssfJRvDe96v91O4gIyok/jzail+54dfzZrlm2CkJ6uXFnNK4m8z6Dw5r4qIa83t4PZ50RyYO8a61SMITzGkZsE3lAlbN0vTHnaIwSL/B9Wkc76d4l8uvrykv7YoidgIp2eGznbMB8nq6Y+jkzaaLuEAIQM6XaJuoCjG5MF0xda2NM6p0og==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(39860400002)(136003)(376002)(346002)(451199015)(186003)(38100700002)(6506007)(44832011)(26005)(2616005)(83380400001)(1076003)(82960400001)(5660300002)(2906002)(41300700001)(8936002)(478600001)(6512007)(4326008)(6666004)(8676002)(6486002)(66556008)(66476007)(66946007)(316002)(36756003)(6916009)(54906003)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?v4Zon6oXWbDb4RkqJDFu/T0WB0eeo64tG48NaHTkWVuTCvrBwACl4vmrdJx4?=
 =?us-ascii?Q?SjKg+7EthQCnTG1jfQlKv47rtJUGTYrK8SuwIkrRHhahilUHh/TuL3QnStko?=
 =?us-ascii?Q?FYDrC5aM9JagyZ5/mfxxccczUENkLtIYW/fAv9OAUou9RziKoudCeUvwAB6M?=
 =?us-ascii?Q?zV0GNZA2FYNRP5hocHoQFXN9QHgao1x4K7EePAqxKx5EiHTdGkVLS0RpUIY0?=
 =?us-ascii?Q?lNyBzzDAYjGksaRAWIXK5IlOR4tdJi65vNRUIzQ3JSQzgTjHVpjVSgvgJZD2?=
 =?us-ascii?Q?zpB3EbZeZkOPx7ltVZ+AVSeln27htPsVPajPCVgn5jZCQ5HtznCXyWJBIwEC?=
 =?us-ascii?Q?rU1c6nCMiePJgv6cquj0Xg8sXrP8eQFq49fGxOb6JPiehf4O9ThcCri91Pz+?=
 =?us-ascii?Q?YRE1NXCwXsup0cvg0qgchIcOfXs1kS59mSxPCKhXH1VuMwsqnpbSAzDHF9yN?=
 =?us-ascii?Q?7RB5SguUr2eB8moCQuLwFk4Eb3TgKlH24otDPN1PXhdqEfRjp99Gl7TLoOCp?=
 =?us-ascii?Q?8FzvkmYnaOH4c6NUaD84LqPsURzQemH1Wl3mMxANwtdrMt2e+CudgLjqDYSs?=
 =?us-ascii?Q?tkQirQ4Szop9hPKE+DxCoclbPH5JHUMP184hymBZgAZ0T32L4voGE2E5Iu/4?=
 =?us-ascii?Q?ncBhViO2suSnW9v5uiS9vJs12fEJ/L1mxHGzVHrNDvFyoegXA1ZzQ6alQG7q?=
 =?us-ascii?Q?ZwmBnaYiiTm9pRvQNHfl4xr/B0VwN4cgd72I/rjzbgrX2y/I23roYT9F8x2b?=
 =?us-ascii?Q?fG66QIXJj2i3EoTegS4dmK7WhUhXNPKkO1+JTc+IwS/gbX8Ou85Ir/J/VC79?=
 =?us-ascii?Q?DTbqKJqaBBXZFgu/FuPlCh9uJbax2m0Iu/w/bw3zGqWOHMPPV3pscoabSIpz?=
 =?us-ascii?Q?L9bAWKok5T5YoHQtUzf+ZZC6ye7iGlbuzh4fl/nF7iwUY9tZLBDaC9P//DNb?=
 =?us-ascii?Q?4Qc9fWozM2klnhaBpeY0OqLpoYSSPXmWe88bow0kw2EeJr0gI89hQIFVFPOd?=
 =?us-ascii?Q?7l3ufkxPZX6SUxwYn8XtRtwug99e32h019aXaxRsAMBKKX0MDK46tDAJqtHD?=
 =?us-ascii?Q?fErBjSv9M1A/f/H3oZy1mzYWBkibnNZfqAnRzNFZVSuVf3cTyIK9whM+5Rre?=
 =?us-ascii?Q?iIB3IHaHAJIdEZWUgc4gmF1Hye5vLMk76QqDOn2jpGuaifQnEC+3Gkfw/Wl5?=
 =?us-ascii?Q?YgLrR3thTjOUWjTDxjDDTjziP8cfYK+pPkoDojBZPUArU3iSh1X5jrL+0/ON?=
 =?us-ascii?Q?MshqH7iFXVZHJZmtOmKwjyrR0OJWflou0Rtx08GL5ZUkMGKNG9JSH8b3gGH5?=
 =?us-ascii?Q?4MjfRYpAQ1WGCgNjVbVV5gycLW9koqQzz9f0lPy2FA+ZKSZoVZ3tJuN545A9?=
 =?us-ascii?Q?i8XIAREqpipl4Rjk8XCxkcmaPpIYI8vnbBqYSxiuwNIlC4y5KUjXix1pjOPi?=
 =?us-ascii?Q?Fhq8hNZH92PBizFAMHGHDL9lEq3Y83HON55L0nOPXWW/2EVadv8iOMvYWDzG?=
 =?us-ascii?Q?hXKSVR02MIwCoIU4DWFwGhEa19PXGoJy1WnfhIiSy68c89ff5/sv4gUa24/4?=
 =?us-ascii?Q?rTguCjM9wef/LGdkXSKRN8ijcBuuQMZl875ycfyV0Skut9isQWS+3zmPMlqx?=
 =?us-ascii?Q?YLzqpU+AyaJtUfc6CVw9O/k=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d66fc8f-23b6-4e66-f540-08daa607a091
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2022 12:54:51.6654 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K/UdOYx6EfDYlGooEdwNbvqC3NAxdtNQd9dCcGtB7mx9o1tvOJ+zWZgmx9mKWPCpUgsSJSAyBL1Yb2HyKYSugHc36sLYMyI1NmxtVKK11hHDWJuB3KhVM49nPnreC/B1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6053
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH v6 7/7] drm/i915/display: cleanup unused DDI
 port enums
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

DDI port enums PORT_G/H/I were added in the commit -
"6c8337dafaa9 drm/i915/tgl: Add additional ports for Tiger Lake" to
identify new ports added in the platform.
In the subsequent commits those ports were identified by new enums
PORT_TC1/TC2/TC3.. to differentiate TypeC ports from non-TypeC.
However, the enum definitions PORT_G/H/I and few usages of these enums
were left as it is.
These enums are unused as of today and can be removed.

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c    | 3 ---
 drivers/gpu/drm/i915/display/intel_display.h | 9 ---------
 include/drm/i915_component.h                 | 2 +-
 3 files changed, 1 insertion(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index ab472fa757d8..b0dfb37e402a 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2404,9 +2404,6 @@ static enum port dvo_port_to_port(struct drm_i915_private *i915,
 		[PORT_D] = { DVO_PORT_HDMID, DVO_PORT_DPD, -1 },
 		[PORT_E] = { DVO_PORT_HDMIE, DVO_PORT_DPE, DVO_PORT_CRT },
 		[PORT_F] = { DVO_PORT_HDMIF, DVO_PORT_DPF, -1 },
-		[PORT_G] = { DVO_PORT_HDMIG, DVO_PORT_DPG, -1 },
-		[PORT_H] = { DVO_PORT_HDMIH, DVO_PORT_DPH, -1 },
-		[PORT_I] = { DVO_PORT_HDMII, DVO_PORT_DPI, -1 },
 	};
 	/*
 	 * RKL VBT uses PHY based mapping. Combo PHYs A,B,C,D
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 4a5f7df7492b..5a55b9f43ce3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -208,9 +208,6 @@ enum port {
 	PORT_D,
 	PORT_E,
 	PORT_F,
-	PORT_G,
-	PORT_H,
-	PORT_I,
 
 	/* Non-TypeC ports must be defined above */
 	PORT_TC1,
@@ -244,12 +241,6 @@ static inline const char *port_identifier(enum port port)
 		return "Port E";
 	case PORT_F:
 		return "Port F";
-	case PORT_G:
-		return "Port G";
-	case PORT_H:
-		return "Port H";
-	case PORT_I:
-		return "Port I";
 	case PORT_TC1:
 		return "Port TC1";
 	case PORT_TC2:
diff --git a/include/drm/i915_component.h b/include/drm/i915_component.h
index 4b31bab5533a..335822d6960a 100644
--- a/include/drm/i915_component.h
+++ b/include/drm/i915_component.h
@@ -35,7 +35,7 @@ enum i915_component_type {
 /* MAX_PORT is the number of port
  * It must be sync with I915_MAX_PORTS defined i915_drv.h
  */
-#define MAX_PORTS 15
+#define MAX_PORTS 12
 
 /**
  * struct i915_audio_component - Used for direct communication between i915 and hda drivers
-- 
2.34.1

