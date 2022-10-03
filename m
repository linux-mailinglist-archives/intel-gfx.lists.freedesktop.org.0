Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB545F340D
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 19:01:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 779B510E43D;
	Mon,  3 Oct 2022 17:01:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29CB710E43C
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 17:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664816486; x=1696352486;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=YHV4OalcSwVGUGNiAKGVQKC6txywL4ENTvWdQMBAbik=;
 b=aphu3Be/MDOmz2Tb3wiwhQsLq/tuHUZOLyeufY8nEh/Yz6iSJvwBzKd2
 WojVl+AvHQB00iRdfD0NNSsBYIywHzOt+3p1mpmMpGLI7HWkzQXicpkmC
 LFE2v9qxHUAwvAux7t8e+1ECkDsubnruuxdE204StgAxHGRQHcv6kKJe9
 9F1hSWwVdIX139AKWRJiuShppI9AmsrV3TkfqJpaAdPsa4pFrj1kQVEnJ
 lQ/VSI5tZckgJlMQE86uEF1wYdCEoZRhRETq1QHwSnD9uEGdIMHX2zfDn
 YwXNRKjqfcqFrMdZWjTxOYddqW8wtr5VRUEKXFyLySiHt8tYMnWpSM5ux g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="366758574"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="366758574"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 10:01:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="798801587"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="798801587"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP; 03 Oct 2022 10:01:13 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 3 Oct 2022 10:01:12 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 3 Oct 2022 10:01:12 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 3 Oct 2022 10:01:12 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 3 Oct 2022 10:01:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BzrfaV8B7mLBqQ5mud22HqvV2VSt+lZ2n7QvpaQqJoobk/i+GXZ3qSRAHJw8Ds3H4N65/WXZkDLxeOoMlhspZfIoV1zn1efqd7KKwHZke8GDU+XzS7pswAmgIZLEVKMMA27GerVilBhTMH31dH+h0vRTib0DhOs1q+BPjgts0ODx7fzriAjtU5PYxo0IRvGlUvBCpQahhDQ75UttZPM0Lx8UD0FcsHUIMnUkobAAEL3F6n9VmWBa/5X98z7xkzDhQo7WDagiFYDfqAqbnHQVcIbPplA8IuU18CQ8FPRo9e+y+QbsLwS3w9Ry063SeLV8qXEWcD7iO3fbvb+WlWsKdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PRLHO2THRlZlbpO1BExAEz13ALiGP59M7zBEe9Su678=;
 b=nWwDaWnfoAGVzk50Y6yNPEIPhpA3KFHXtbjK6pfVfce2R87Q8EcrhB6VHNuWqB+oq1BPFsQp+arTNaCjt4Wr73rCIeRnA6NGnRbtbg9zfPJYMIzb1v6/3umlZ2lhZZBKvXy8xzfJNLwm/D79hwu16HsbZDxXh+IluF2Pfg6IdEAwqPkjLEZy+WaUl/Qha51+EvJcpR/Nb5IQLuODMobL6a3GVDzzMPS1iFVNdA8HokFweWjZIZrIqv0lwa4NGmnHheSVTs/WM5XrJAHMbdiscMH4txu5v/BZrq/MwCDZZGKQZphPPSxPg7tinMKSVywIzJDeFU7WEpoRSD6i73XNqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 PH0PR11MB4870.namprd11.prod.outlook.com (2603:10b6:510:34::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5676.24; Mon, 3 Oct 2022 17:01:09 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67%3]) with mapi id 15.20.5676.028; Mon, 3 Oct 2022
 17:01:09 +0000
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Mon, 3 Oct 2022 22:30:22 +0530
Message-ID: <20221003170024.195223-6-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221003170024.195223-1-balasubramani.vivekanandan@intel.com>
References: <20221003170024.195223-1-balasubramani.vivekanandan@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: PN3PR01CA0172.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:de::16) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1897:EE_|PH0PR11MB4870:EE_
X-MS-Office365-Filtering-Correlation-Id: cc643ff6-948a-4a49-48d9-08daa560de2d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VExA7G4MB3B2YE+38Ke34IUipAad/B0+uBFwvops+cwjUSOVvwYntCYANXdLJ5iIQuol7bysoY/BRE8wD4KMRZTFaTO1TVa3K5qQcRpAEzInpnpkpyTtlCdJWG3X8viMaSZBQXoHNvl33Gxj+l2CTCDB3btDIFNpEWUeSIh2Xy5pl9zYWbL/j/Gmyl1vjm4xOQJlbxD9kl7O1HY97tG1LRFrsx4Tm/+AEjkW5nhHFy56JcEGj9ACKifWb8wCxRsPx5dsk7dSr+K0hIR/uKLeRjUi/W5iEbnT8+un9ITx+mwPgnVOV8x5w+tuns9kXAkvDC6jCUmRf7/gkkNzdCy7tGW6NbITQ0X8og+/JCkjuwguCwqMYR8yA94A0mFZPXXEH29JHQKJjNoxxK4NtSvi7Vh75ABd/VI2AsNq40HwcEeJ/CYCE4rZywJTuO8ARATgQc2M9u4tsgtrbUo69dYKqiFSXy/33BCTbdEphQREM9YJEClthhDBYqTN7W0vxlR7DLlqJs+L0mntKfGUsQF9iyT1ZU5jwYH4MXpvvJ7EGvv/GzGK6YeAf59Cy/idsr6CBgzzf75z+vc68OMYyZw9k9hSMOgl+Hx8HGTSYerUovEhX5tyUHcobB++IQMvZI1kw4sP6JkdeR9hyqDf5dHbZ5aDaq7Fo5CYjwcP8BrcZ+jis1bVAqwBc2Pr1Usk5BaEJb42lpVcmJQW/3U77+DaWg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(396003)(136003)(39860400002)(376002)(366004)(451199015)(26005)(6916009)(6666004)(6512007)(6506007)(41300700001)(54906003)(86362001)(66476007)(66556008)(66946007)(4326008)(83380400001)(36756003)(316002)(8676002)(1076003)(186003)(2616005)(8936002)(82960400001)(6486002)(44832011)(5660300002)(2906002)(478600001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?b0ljmZMHo4bpCzkxIn6THiA2wvnm/a1shbe7YFShlPcNQWZUkeOijsRM+Wdc?=
 =?us-ascii?Q?nhAqxT9cmNbGZHVb/MFwFnBlZeItuAVB3yKUxgG8mZB+/b3E8i0CG1lBFiG7?=
 =?us-ascii?Q?jfZPwyTIabbTz++j7WuJQaI3tO0EJJvxqBrklVBcVjdwGESWPitl4UbEs41N?=
 =?us-ascii?Q?yznpJSBn9A6pV3NyMKkSgr6b7mpyKpVpUvjjwrs28s9NbeDEYnaWcADkcJI/?=
 =?us-ascii?Q?itg/1SfNXU2Qcwet3la6gR399OapnL/hy28D5/KUh5qTeKhhHNXTurQzrTNg?=
 =?us-ascii?Q?rsv+2ZO8rxXarrKDPWbwJ02PWffGVFEh7Xz+WvLuIFCiQSM6LMdxva240avk?=
 =?us-ascii?Q?CbFWsT4Er7oS6KDPFeovJhQNK5Na9XjTMz6BDU+xFUH7FUOidYZ0LW0JspKx?=
 =?us-ascii?Q?XG1bbX47HDdRf5Hzddt3IvSzbpggkXOsWcWii/jhon3kAWQbt885Pp/Glryv?=
 =?us-ascii?Q?0U3sKClmPMAVejXJf0aeQdtuQ2icw7JEYoZfPz4ahiAnm/uKKnmJaLQ1tcnA?=
 =?us-ascii?Q?7MlMNm580lEW7D0N+nJqlVxiG2tc4ICJLsikZMbTNiy9pa/7lzHTdhLrZe2I?=
 =?us-ascii?Q?9roZwNLmrLmbvpE1cER0Z8oBWcHqz728YJlJ6Y+x1OowPFbhRZIIuRMUONlN?=
 =?us-ascii?Q?kxuv8E4a0ihpMKNlNGwNIqemokB0kZQIya5zKcqPK1cR4G5jR1Cj/9VWC9tV?=
 =?us-ascii?Q?99u+a2sxMrWxpFn4kAGZ4Nx2k8pBrdMplL/s+j1rAYWODTLkUVp+xOvGB9aa?=
 =?us-ascii?Q?CJC4C+obfEYB1JWFKZYvx5HGjP3QbDqRdzp26Vj4Q4NcjD/zoLMSvjUyqIzE?=
 =?us-ascii?Q?kDQ+KdSCKfKn10ttF4QY+Eooh36g+gzh8tCtYPz+creADl4w31B6vrd6y5PU?=
 =?us-ascii?Q?5mrTFj73ka919IvCU1NTGxGVfh9Fnr8vDO7vv1bzVKhckfAf61vIMR3yktrr?=
 =?us-ascii?Q?DmfWCGJ9XTb48vx4VSkkhAQmjRwrTVyyhUjgsA3JuInNpxeisQBb3XbDH1Zh?=
 =?us-ascii?Q?g8sqvQne+Oyh7sU2b0g+WC2SOiOro3aJSQf4Fur1cCrCPh3sJDwLymaOre9Z?=
 =?us-ascii?Q?80yBg8jNHq5qnDtV6oXfUAidi/pLQ2Ni7nSyotomS40m5t2ofkKp9GCYMVxR?=
 =?us-ascii?Q?7paDlmu3g+4duZrtdJr9B2C5uTfWLooBQXIiGPoNVXdXAQRO3mm7noHRByeS?=
 =?us-ascii?Q?R5Xniv9Qpup6i7Jhp0xfMvTe01cJCGh5ubS1eA92V91g6mMkxjfVLXdew3wH?=
 =?us-ascii?Q?ejRzfLIHn92jpaXcg1iDfp7rDeAqo3BOSOosexUugXPRmkleKPEn3DxTjsL/?=
 =?us-ascii?Q?B9ELRBZYxLR7Y1Ajk4WoMQ++gdiVNyMfu4vvQHig61jRovLlW/ZSUn7+7CQA?=
 =?us-ascii?Q?2rNDgSD+GmkMUdeC5/SnP7Ilrkatjh+mgdX82BrJGQ4FrCVQDtrffZPCkyft?=
 =?us-ascii?Q?wyu9VJr3ycKaPwdnvrpqiH0maI1uISYD2NRptCFBj1upnHM8L1fZW755CEMt?=
 =?us-ascii?Q?5YD8UM+CO/XX/D4woBmqdlFTyF/MZ7A3IVY0c5IZasdx+PQhZBk9iAn8HGH6?=
 =?us-ascii?Q?iBUWQ29apkWzmE0/Pu5N2z9N9rTDpFBeNNCxvTW5kAcUc/US5oRx07LdfbbC?=
 =?us-ascii?Q?422DBwfKTLsS/G4OXGMMKe4=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cc643ff6-948a-4a49-48d9-08daa560de2d
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2022 17:01:09.2580 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2AK86IzoHgCUAY7vSR2Ig8FJSDzNB+ZIW64GGZHuhMtduROupsCARtE1LO5f5k7zROfOsPwN+2Js+yW1emqDNMXe3t+iiE9qHbEncnGhCNxviwVDqDcfHnoW4+JHjv+M
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4870
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH v5 5/7] drm/i915/display: Remove
 PORT_D_XELPD/PORT_E_XELPD platform specific defintions
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

Port enums are no more used in the DDI register offset caculcation. We
can remove the platform specific port redefinitions. Along with it we
also get rid of the code required for handling these special
definitions.

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     |  4 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      | 23 +----------
 drivers/gpu/drm/i915/display/intel_display.c  |  6 +--
 drivers/gpu/drm/i915/display/intel_display.h  |  2 -
 .../drm/i915/display/intel_display_power.c    | 40 +------------------
 drivers/gpu/drm/i915/i915_pci.c               |  4 +-
 include/drm/i915_component.h                  |  2 +-
 7 files changed, 10 insertions(+), 71 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 4c543e8205ca..ab472fa757d8 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2436,8 +2436,8 @@ static enum port dvo_port_to_port(struct drm_i915_private *i915,
 		[PORT_A] = { DVO_PORT_HDMIA, DVO_PORT_DPA, -1 },
 		[PORT_B] = { DVO_PORT_HDMIB, DVO_PORT_DPB, -1 },
 		[PORT_C] = { DVO_PORT_HDMIC, DVO_PORT_DPC, -1 },
-		[PORT_D_XELPD] = { DVO_PORT_HDMID, DVO_PORT_DPD, -1 },
-		[PORT_E_XELPD] = { DVO_PORT_HDMIE, DVO_PORT_DPE, -1 },
+		[PORT_D] = { DVO_PORT_HDMID, DVO_PORT_DPD, -1 },
+		[PORT_E] = { DVO_PORT_HDMIE, DVO_PORT_DPE, -1 },
 		[PORT_TC1] = { DVO_PORT_HDMIF, DVO_PORT_DPF, -1 },
 		[PORT_TC2] = { DVO_PORT_HDMIG, DVO_PORT_DPG, -1 },
 		[PORT_TC3] = { DVO_PORT_HDMIH, DVO_PORT_DPH, -1 },
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 74b4271063d1..0b6f884650d3 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4134,17 +4134,6 @@ static bool hti_uses_phy(struct drm_i915_private *i915, enum phy phy)
 	       i915->hti_state & HDPORT_DDI_USED(phy);
 }
 
-static enum hpd_pin xelpd_hpd_pin(struct drm_i915_private *dev_priv,
-				  enum port port)
-{
-	if (port >= PORT_D_XELPD)
-		return HPD_PORT_D + port - PORT_D_XELPD;
-	else if (port >= PORT_TC1)
-		return HPD_PORT_TC1 + port - PORT_TC1;
-	else
-		return HPD_PORT_A + port - PORT_A;
-}
-
 static enum hpd_pin dg1_hpd_pin(struct drm_i915_private *dev_priv,
 				enum port port)
 {
@@ -4313,13 +4302,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 	encoder = &dig_port->base;
 	encoder->devdata = devdata;
 
-	if (DISPLAY_VER(dev_priv) >= 13 && port >= PORT_D_XELPD) {
-		drm_encoder_init(&dev_priv->drm, &encoder->base, &intel_ddi_funcs,
-				 DRM_MODE_ENCODER_TMDS,
-				 "DDI %c/PHY %c",
-				 port_name(port - PORT_D_XELPD + PORT_D),
-				 phy_name(phy));
-	} else if (DISPLAY_VER(dev_priv) >= 12) {
+	if (DISPLAY_VER(dev_priv) >= 12) {
 		enum tc_port tc_port = intel_port_to_tc(dev_priv, port);
 
 		drm_encoder_init(&dev_priv->drm, &encoder->base, &intel_ddi_funcs,
@@ -4449,9 +4432,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 
 	intel_ddi_buf_trans_init(encoder);
 
-	if (DISPLAY_VER(dev_priv) >= 13)
-		encoder->hpd_pin = xelpd_hpd_pin(dev_priv, port);
-	else if (IS_DG1(dev_priv))
+	if (IS_DG1(dev_priv))
 		encoder->hpd_pin = dg1_hpd_pin(dev_priv, port);
 	else if (IS_ROCKETLAKE(dev_priv))
 		encoder->hpd_pin = rkl_hpd_pin(dev_priv, port);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8681055843f0..febe85a8a9c8 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2135,9 +2135,7 @@ bool intel_phy_is_snps(struct drm_i915_private *dev_priv, enum phy phy)
 
 enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port)
 {
-	if (DISPLAY_VER(i915) >= 13 && port >= PORT_D_XELPD)
-		return PHY_D + port - PORT_D_XELPD;
-	else if (DISPLAY_VER(i915) >= 13 && port >= PORT_TC1)
+	if (DISPLAY_VER(i915) >= 13 && port >= PORT_TC1)
 		return PHY_F + port - PORT_TC1;
 	else if (IS_ALDERLAKE_S(i915) && port >= PORT_TC1)
 		return PHY_B + port - PORT_TC1;
@@ -7907,7 +7905,7 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 		intel_ddi_init(dev_priv, PORT_A);
 		intel_ddi_init(dev_priv, PORT_B);
 		intel_ddi_init(dev_priv, PORT_C);
-		intel_ddi_init(dev_priv, PORT_D_XELPD);
+		intel_ddi_init(dev_priv, PORT_D);
 		intel_ddi_init(dev_priv, PORT_TC1);
 	} else if (IS_ALDERLAKE_P(dev_priv)) {
 		intel_ddi_init(dev_priv, PORT_A);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 9112833b39eb..62604cadf0b8 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -220,8 +220,6 @@ enum port {
 	PORT_TC5,
 	PORT_TC6,
 
-	PORT_D_XELPD,
-	PORT_E_XELPD,
 	I915_MAX_PORTS
 };
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 1e608b9e5055..494821711775 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -2359,50 +2359,12 @@ d12_port_domains[] = {
 	},
 };
 
-static const struct intel_ddi_port_domains
-d13_port_domains[] = {
-	{
-		.port_start = PORT_A,
-		.port_end = PORT_C,
-		.aux_ch_start = AUX_CH_A,
-		.aux_ch_end = AUX_CH_C,
-
-		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_A,
-		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_A,
-		.aux_legacy_usbc = POWER_DOMAIN_AUX_A,
-		.aux_tbt = POWER_DOMAIN_INVALID,
-	}, {
-		.port_start = PORT_TC1,
-		.port_end = PORT_TC4,
-		.aux_ch_start = AUX_CH_USBC1,
-		.aux_ch_end = AUX_CH_USBC4,
-
-		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_TC1,
-		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_TC1,
-		.aux_legacy_usbc = POWER_DOMAIN_AUX_USBC1,
-		.aux_tbt = POWER_DOMAIN_AUX_TBT1,
-	}, {
-		.port_start = PORT_D_XELPD,
-		.port_end = PORT_E_XELPD,
-		.aux_ch_start = AUX_CH_D_XELPD,
-		.aux_ch_end = AUX_CH_E_XELPD,
-
-		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_D,
-		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_D,
-		.aux_legacy_usbc = POWER_DOMAIN_AUX_D,
-		.aux_tbt = POWER_DOMAIN_INVALID,
-	},
-};
-
 static void
 intel_port_domains_for_platform(struct drm_i915_private *i915,
 				const struct intel_ddi_port_domains **domains,
 				int *domains_size)
 {
-	if (DISPLAY_VER(i915) >= 13) {
-		*domains = d13_port_domains;
-		*domains_size = ARRAY_SIZE(d13_port_domains);
-	} else if (DISPLAY_VER(i915) >= 12) {
+	if (DISPLAY_VER(i915) >= 12) {
 		*domains = d12_port_domains;
 		*domains_size = ARRAY_SIZE(d12_port_domains);
 	} else if (DISPLAY_VER(i915) >= 11) {
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index b37a95755b77..45eafe447546 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -164,8 +164,8 @@
 		[PORT_TC2] = 4, \
 		[PORT_TC3] = 5, \
 		[PORT_TC4] = 6, \
-		[PORT_D_XELPD] = 7, \
-		[PORT_E_XELPD] = 8, \
+		[PORT_D] = 7, \
+		[PORT_E] = 8, \
 	}
 
 #define I9XX_COLORS \
diff --git a/include/drm/i915_component.h b/include/drm/i915_component.h
index f95ff82c3b4a..4b31bab5533a 100644
--- a/include/drm/i915_component.h
+++ b/include/drm/i915_component.h
@@ -35,7 +35,7 @@ enum i915_component_type {
 /* MAX_PORT is the number of port
  * It must be sync with I915_MAX_PORTS defined i915_drv.h
  */
-#define MAX_PORTS 17
+#define MAX_PORTS 15
 
 /**
  * struct i915_audio_component - Used for direct communication between i915 and hda drivers
-- 
2.34.1

