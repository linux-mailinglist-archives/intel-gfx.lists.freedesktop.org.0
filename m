Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0725F43A1
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 14:54:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 017A310E5E1;
	Tue,  4 Oct 2022 12:54:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0AA810E5E1
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 12:54:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664888044; x=1696424044;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=pRHK5vO/PwOmhnsvMWUiYBRyxrfj8LiJrAN6K1wdhIU=;
 b=JfOKTKoqDM1tzFLRvXA4HIbq5oyoTvytP7GDq9G0zaRaYH2YUTAOr+YR
 CtOUMorkNmw6GMzPXq/qwbY1sePnWu0vz9ebyO/qw3d+iNmnjURUn0OU6
 dCAwaTV/icxX69mRUzv3o0yzO3uAJoCXPo7/JtjQ0yzNv4J410nT49DAv
 07TH9so+DiF2R4XdYNFYtI9zvIX+2ZAxlTrZdkEx0boDoMbzoL1uFYu8y
 13W/7v+vDao0DjutBr1Qw1srXX4PH6D/pmqnhNvd8tZUSv1hrt4Geh4TC
 Jio27a5mYznXTaWAsiNYpbml5OOrGXsflfppn1c3FjG3q0fckxZPUGZNs A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="301620644"
X-IronPort-AV: E=Sophos;i="5.93,157,1654585200"; d="scan'208";a="301620644"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 05:54:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="692478092"
X-IronPort-AV: E=Sophos;i="5.93,157,1654585200"; d="scan'208";a="692478092"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP; 04 Oct 2022 05:54:04 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 4 Oct 2022 05:54:03 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 4 Oct 2022 05:54:03 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 4 Oct 2022 05:54:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Yk0H3VXf8aEQAQFP9gN1wGK76GevpNDCnRmFxTDRTJ4qdJsYyJF6aHFKbShjjxbj7viy8aOsjJSoOXN36uzs8P+KnrzCFZyIWsUukbpp0MQa4kSyvzIJtX4r5hV9gbWF71vIryvxSFvm6y24KMBUIjTGxCrdSK8QlaLzkX4H1lwVVNLJiR6R9I9B+S9C06cSE7AHD6fdDLIzN3vvqRmezYrNK3wE2TfNsOhWm0XPfqgAV6bjg10EgDS8dQUi3oITSGog4/9SHFe0Rp9OJwA52LyWx4vxotzQ/5f8WUIpa22FE4wzlCNej7GAOITr5AtpJKdfQetEci1fNtCzrrsMuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KhmdwEkC3ReYFZupqGWRqjCzUKtdikn44PGDSRK/+ng=;
 b=Q1Z4gAK5tFAizqgm/z2ESVBpMWWeY2nbO7qIp8nVlM3OV3erYokUXr/ePTi8UZM7wvKi2cCfqI/h2GGbuG+1ak3SolbuJtLZBW5zPRlDqVv+CE4hYQBv7MHFBkZp4DrE/xXSLl9mus75B6f+eeN2F91DdE9X97RCnmMy4oz9PPviLLaPvMDrvosXdDDBeH85KzBYqVzZl0BDO8wWUZAHUMwDvqWEychVPVi9MJBm6/mQ0zIfefeBok62Vr/XLc8O98o5sKJttIEvEdqs6fKDA43+XLHNVGS7EHc6NLcMEKGFFF3kxMUJp31wyueEXgbvKHY1qPM80YQdm6rZALiesg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 MN2PR11MB4645.namprd11.prod.outlook.com (2603:10b6:208:269::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.24; Tue, 4 Oct
 2022 12:54:01 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67%3]) with mapi id 15.20.5676.031; Tue, 4 Oct 2022
 12:54:01 +0000
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Tue, 4 Oct 2022 18:23:38 +0530
Message-ID: <20221004125344.228294-2-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221004125344.228294-1-balasubramani.vivekanandan@intel.com>
References: <20221004125344.228294-1-balasubramani.vivekanandan@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: PN3PR01CA0034.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:97::6) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1897:EE_|MN2PR11MB4645:EE_
X-MS-Office365-Filtering-Correlation-Id: 8e1df0c8-c0b3-4286-4311-08daa6078287
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3TmVuYJ8CoqaB3ibV6N9nIVa2wLCt7PdoPLBetA5qu1JDYlXjXLoNr/KmJDM2EQp++SDL6ueFSGy6Yf0j1N2nLZZWL2wxGPWYeqfKOfEk+yVhMadqQFegQE3rHGiSNXJmT1YDF03fG+6kd5OsMCLTQL4ampCguEdUDPXgGnbt41sJHW9fLyurnJdwzVqxCY+gw2pcvCcjsx8eIuwhm2/Na+FhHVv8q+SUsCjUMOBmBQDN6Kf9NLAlHOuUpe1D2n4m7Xdpa1HLGGvXtkS3OpDOFu3b7mH3tExEzotLmENtf/1OfSzbjWg7y+MhthaMrIVzM0KL+sSIA9UsBegLx4pTYiejLiU7QLMVzVwdCRfvteM6r0QbOcnYiUnL2ZqgWk7HI3O/93ASeyLstx5Fo2O/tS77ZOQJGxnjGjqS2L0BwJ0VEekzttHk+QzCy88W4pXBtBsQ5GAniavRpFEJq7Yctz1DI1CWzrzPYu2pP2J2clQ9mDRKUL1hQBp++oZAuq1DS3bCV6JHqzbnGST6RZroeVA6VgzIGDDM7XltcIn9pim0/pTFMhOXKal0Gd7CfDMZVc318Fv6/pgYQOWGEZTG4o4fIOPvDvbtqYr8xYT43AjdVOFVmfpwgOdPB0oVeRrGUrL0FfUzj4VKh+9QO+LTPvgholE5pvDaIdu0HOyFCKStUBhkmfEk7CiFW4VcpTNfeYoLrED3dY76lajvVyGIA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(346002)(396003)(136003)(366004)(39860400002)(451199015)(2906002)(38100700002)(30864003)(44832011)(478600001)(82960400001)(36756003)(86362001)(66556008)(83380400001)(6506007)(2616005)(6486002)(6666004)(26005)(6512007)(186003)(8676002)(4326008)(54906003)(5660300002)(41300700001)(1076003)(66476007)(8936002)(66946007)(316002)(6916009);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?UBksgLblfnIpElQOrXEeb7ZEHXEI9LZPsf9eJrc4p/WsTvr5XH/YTT2TY7ip?=
 =?us-ascii?Q?/DKirCC+JF9mjeGpIyViQdil8rWfLiwgFKNPyhZQqYzRvxFCen9GwYEJdwLy?=
 =?us-ascii?Q?09LaV1KBKDSvn6dzPvl5CjdrqY50TA3u9fa3BijAvaAqP+LEy4B4YDxX4vs7?=
 =?us-ascii?Q?7rVK8XEDMw9lRvCDtsXI1u8JB/HvhOwkI868RLPG6o9AFYWHgFFt6q6EaWj6?=
 =?us-ascii?Q?KFcRvNyirnEYGiPHcyOLrHNMAdT0zrEqcD9FXasG6kljPXYd6/+XvXvbJxLc?=
 =?us-ascii?Q?6uqaeUL0Qyc/0LMnfrt5iM++FqWkABvZUQRaTHay6rcvhgjwLHhyCFB4dL67?=
 =?us-ascii?Q?oD0MwnWFNHQawivhsStDZzxgqqRfTD606IABpAYpibNbjZaToRPtOs/tjGnU?=
 =?us-ascii?Q?evZVNFJgUOecBUTz/VeSR85oChlgJeyfhMHZS99mcmcW4oC5ry3SJeJUOuu2?=
 =?us-ascii?Q?YBW0nvxy6b2h36OU8BUppIWijOIcrZ4y7KdXk9uWYowdGxMSr6QgDHOP6wUS?=
 =?us-ascii?Q?ma0yaxYCWaJKRpkvtx8o+S21n66crRZ/1fxshzt427ZAKCwSdaN4PZF8AeX3?=
 =?us-ascii?Q?UMfZmPyL1qiZnEq6Y+kO5m3qPGcP/PgRlnUesm58StlHhUKl3HtRRhS3iWkS?=
 =?us-ascii?Q?FxnZfBlYKAb2kDi/7mzY2Coj2H0hXD03QvuPW7Fu70gtcsXOsa5EQyznRkBx?=
 =?us-ascii?Q?gqz/+B1FBHPbjFZts2toSN2wcHoAB/wI9tuGz9lpdT2YmrGblLCzWgG8blN1?=
 =?us-ascii?Q?t/fRr1RKkYqMFFqfgo6Xoz9LQ2rd1F4Lg8Piro0hUHhiMnd1DO5K+68kqS45?=
 =?us-ascii?Q?vCOzOBeaWoUVrhTkM9uPzZm1J7vskFl1MWBPlWJCd36omgPCCdvwWyLNqVid?=
 =?us-ascii?Q?dDgIbJmeQNJeNxMBGkFkdO5HvG6bzKABCkaagXJEN93YXZMUqjgLXsAqJ5DG?=
 =?us-ascii?Q?xhAx/gWxsSikB585ODzruYmi3YRq02/UCGuEAhY9rGsmoiD9eTFj25pR/f6Q?=
 =?us-ascii?Q?vO+72R99J1k/6DXOoXG1s3HKDTBnj0HTINHBIfhG7M1wlR2CtIuF0pPr3trq?=
 =?us-ascii?Q?3lw7kGvZvbNDW50FD/ciRzoA1mYIpl29GypA/GoPc7+bhz4tFTA7yhTD15Mp?=
 =?us-ascii?Q?vGgflnEb9Q86yAj3OgQRD3AAZQOR0F74ysCDTRT0+PAma1s2HuQ2CodakLnN?=
 =?us-ascii?Q?H9DEpZrbM6UxBVoAaGvIE8LIkvkyAKhtsLipCwKuJztfHHAlP8ChXsyby35P?=
 =?us-ascii?Q?A2MqcuBzyl5fLgF/rcyowvxhe1dli9hTK8VoeANfAWgJCfK3XOJ0C2Pdiya7?=
 =?us-ascii?Q?sdYvbd7BN18QUmqoOmRF0yVxt2qxZLusZbza+VgGH+yKtGm1MpApkwplYr4e?=
 =?us-ascii?Q?4lb6snV+y3VTy98aSvJQnIZvVsNdOxPmQQ3t9akz5ZRdry16FFfsGXoPMhOH?=
 =?us-ascii?Q?8/vUFE5PnOrbb8NI1ssNS0IfQj5wGelfxAU9P1gDk9B8HfUdFj5NhS8XDR82?=
 =?us-ascii?Q?2ZvWW28L7pQoiJiPrsLNbluVbre2AsVZUQLudoGuP0+NhaoKZ0hcA8MzJRYv?=
 =?us-ascii?Q?4C2MHHVLU9UbWEq5eqJVaPpnBy9Ysi3JzMuRiXBXqOvV5brlKHNIEgZNlcUN?=
 =?us-ascii?Q?YUPOqOTIu/8uNBITKjTtTOg=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e1df0c8-c0b3-4286-4311-08daa6078287
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2022 12:54:01.4824 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Bio+lbVEUq0K/SR2Q13Fv+edGAYD4PACPvr72N+A+mKR7bThRhoRYJjGCfAu2+T4msMSp29VV7usV8Nqw+rhiWydcQ23VD7fJs+EeUdD5mBeQjA8WcOIlJthm9gjKWwE
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4645
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH v6 1/7] drm/i915/display: Pass struct
 drm_i915_private to DDI_BUF_CTL macro
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

This is a prep patch for a patch series in which register offset of the
DDI ports are not calculated using the port enums but using a different
datastructure part of the device info.
So the device info is passed as a parameter to the macro DDI_BUF_CTL but
unused yet.

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c       | 12 +++---
 drivers/gpu/drm/i915/display/intel_ddi.c     | 39 +++++++++++---------
 drivers/gpu/drm/i915/display/intel_display.c |  6 ++-
 drivers/gpu/drm/i915/display/intel_fdi.c     | 14 +++----
 drivers/gpu/drm/i915/display/intel_tc.c      |  6 +--
 drivers/gpu/drm/i915/gvt/display.c           | 30 +++++++--------
 drivers/gpu/drm/i915/gvt/handlers.c          | 17 +++++----
 drivers/gpu/drm/i915/i915_reg.h              |  6 ++-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c  | 10 ++---
 9 files changed, 76 insertions(+), 64 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 47f13750f6fa..f7c1f6561423 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -548,11 +548,11 @@ static void gen11_dsi_enable_ddi_buffer(struct intel_encoder *encoder)
 	enum port port;
 
 	for_each_dsi_port(port, intel_dsi->ports) {
-		tmp = intel_de_read(dev_priv, DDI_BUF_CTL(port));
+		tmp = intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, port));
 		tmp |= DDI_BUF_CTL_ENABLE;
-		intel_de_write(dev_priv, DDI_BUF_CTL(port), tmp);
+		intel_de_write(dev_priv, DDI_BUF_CTL(dev_priv, port), tmp);
 
-		if (wait_for_us(!(intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
+		if (wait_for_us(!(intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, port)) &
 				  DDI_BUF_IS_IDLE),
 				  500))
 			drm_err(&dev_priv->drm, "DDI port:%c buffer idle\n",
@@ -1400,11 +1400,11 @@ static void gen11_dsi_disable_port(struct intel_encoder *encoder)
 
 	gen11_dsi_ungate_clocks(encoder);
 	for_each_dsi_port(port, intel_dsi->ports) {
-		tmp = intel_de_read(dev_priv, DDI_BUF_CTL(port));
+		tmp = intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, port));
 		tmp &= ~DDI_BUF_CTL_ENABLE;
-		intel_de_write(dev_priv, DDI_BUF_CTL(port), tmp);
+		intel_de_write(dev_priv, DDI_BUF_CTL(dev_priv, port), tmp);
 
-		if (wait_for_us((intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
+		if (wait_for_us((intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, port)) &
 				 DDI_BUF_IS_IDLE),
 				 8))
 			drm_err(&dev_priv->drm,
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 971356237eca..77a986696c76 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -172,7 +172,7 @@ void intel_wait_ddi_buf_idle(struct drm_i915_private *dev_priv,
 		return;
 	}
 
-	if (wait_for_us((intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
+	if (wait_for_us((intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, port)) &
 			 DDI_BUF_IS_IDLE), 8))
 		drm_err(&dev_priv->drm, "Timeout waiting for DDI BUF %c to get idle\n",
 			port_name(port));
@@ -189,7 +189,7 @@ static void intel_wait_ddi_buf_active(struct drm_i915_private *dev_priv,
 		return;
 	}
 
-	ret = _wait_for(!(intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
+	ret = _wait_for(!(intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, port)) &
 			  DDI_BUF_IS_IDLE), IS_DG2(dev_priv) ? 1200 : 500, 10, 10);
 
 	if (ret)
@@ -730,7 +730,7 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 	if (!wakeref)
 		return;
 
-	tmp = intel_de_read(dev_priv, DDI_BUF_CTL(port));
+	tmp = intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, port));
 	if (!(tmp & DDI_BUF_CTL_ENABLE))
 		goto out;
 
@@ -1397,8 +1397,8 @@ hsw_set_signal_levels(struct intel_encoder *encoder,
 	intel_dp->DP &= ~DDI_BUF_EMP_MASK;
 	intel_dp->DP |= signal_levels;
 
-	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
-	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
+	intel_de_write(dev_priv, DDI_BUF_CTL(dev_priv, port), intel_dp->DP);
+	intel_de_posting_read(dev_priv, DDI_BUF_CTL(dev_priv, port));
 }
 
 static void _icl_ddi_enable_clock(struct drm_i915_private *i915, i915_reg_t reg,
@@ -2577,10 +2577,10 @@ static void intel_disable_ddi_buf(struct intel_encoder *encoder,
 	bool wait = false;
 	u32 val;
 
-	val = intel_de_read(dev_priv, DDI_BUF_CTL(port));
+	val = intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, port));
 	if (val & DDI_BUF_CTL_ENABLE) {
 		val &= ~DDI_BUF_CTL_ENABLE;
-		intel_de_write(dev_priv, DDI_BUF_CTL(port), val);
+		intel_de_write(dev_priv, DDI_BUF_CTL(dev_priv, port), val);
 		wait = true;
 	}
 
@@ -2909,7 +2909,7 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
 		drm_WARN_ON(&dev_priv->drm, !intel_tc_port_in_legacy_mode(dig_port));
 		buf_ctl |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
 	}
-	intel_de_write(dev_priv, DDI_BUF_CTL(port), buf_ctl);
+	intel_de_write(dev_priv, DDI_BUF_CTL(dev_priv, port), buf_ctl);
 
 	intel_audio_codec_enable(encoder, crtc_state, conn_state);
 }
@@ -3113,9 +3113,9 @@ static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 	dp_tp_ctl = intel_de_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
 
 	if (dp_tp_ctl & DP_TP_CTL_ENABLE) {
-		ddi_buf_ctl = intel_de_read(dev_priv, DDI_BUF_CTL(port));
+		ddi_buf_ctl = intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, port));
 		if (ddi_buf_ctl & DDI_BUF_CTL_ENABLE) {
-			intel_de_write(dev_priv, DDI_BUF_CTL(port),
+			intel_de_write(dev_priv, DDI_BUF_CTL(dev_priv, port),
 				       ddi_buf_ctl & ~DDI_BUF_CTL_ENABLE);
 			wait = true;
 		}
@@ -3145,8 +3145,8 @@ static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 		adlp_tbt_to_dp_alt_switch_wa(encoder);
 
 	intel_dp->DP |= DDI_BUF_CTL_ENABLE;
-	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
-	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
+	intel_de_write(dev_priv, DDI_BUF_CTL(dev_priv, port), intel_dp->DP);
+	intel_de_posting_read(dev_priv, DDI_BUF_CTL(dev_priv, port));
 
 	intel_wait_ddi_buf_active(dev_priv, port);
 }
@@ -3823,13 +3823,15 @@ static struct intel_connector *
 intel_ddi_init_dp_connector(struct intel_digital_port *dig_port)
 {
 	struct intel_connector *connector;
-	enum port port = dig_port->base.port;
+	struct intel_encoder *encoder = &dig_port->base;
+	enum port port = encoder->port;
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 
 	connector = intel_connector_alloc();
 	if (!connector)
 		return NULL;
 
-	dig_port->dp.output_reg = DDI_BUF_CTL(port);
+	dig_port->dp.output_reg = DDI_BUF_CTL(i915, port);
 	dig_port->dp.prepare_link_retrain = intel_ddi_prepare_link_retrain;
 	dig_port->dp.set_link_train = intel_ddi_set_link_train;
 	dig_port->dp.set_idle_link_train = intel_ddi_set_idle_link_train;
@@ -4061,12 +4063,13 @@ intel_ddi_init_hdmi_connector(struct intel_digital_port *dig_port)
 {
 	struct intel_connector *connector;
 	enum port port = dig_port->base.port;
+	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
 
 	connector = intel_connector_alloc();
 	if (!connector)
 		return NULL;
 
-	dig_port->hdmi.hdmi_reg = DDI_BUF_CTL(port);
+	dig_port->hdmi.hdmi_reg = DDI_BUF_CTL(dev_priv, port);
 	intel_hdmi_init_connector(dig_port, connector);
 
 	return connector;
@@ -4102,7 +4105,7 @@ intel_ddi_max_lanes(struct intel_digital_port *dig_port)
 		return max_lanes;
 
 	if (port == PORT_A || port == PORT_E) {
-		if (intel_de_read(dev_priv, DDI_BUF_CTL(PORT_A)) & DDI_A_4_LANES)
+		if (intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, PORT_A)) & DDI_A_4_LANES)
 			max_lanes = port == PORT_A ? 4 : 0;
 		else
 			/* Both A and E share 2 lanes */
@@ -4464,11 +4467,11 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 
 	if (DISPLAY_VER(dev_priv) >= 11)
 		dig_port->saved_port_bits =
-			intel_de_read(dev_priv, DDI_BUF_CTL(port))
+			intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, port))
 			& DDI_BUF_PORT_REVERSAL;
 	else
 		dig_port->saved_port_bits =
-			intel_de_read(dev_priv, DDI_BUF_CTL(port))
+			intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, port))
 			& (DDI_BUF_PORT_REVERSAL | DDI_A_4_LANES);
 
 	if (intel_bios_is_lane_reversal_needed(dev_priv, port))
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3ffd8fc0b05c..8681055843f0 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7884,7 +7884,7 @@ static bool intel_ddi_crt_present(struct drm_i915_private *dev_priv)
 		return false;
 
 	/* DDI E can't be used if DDI A requires 4 lanes */
-	if (intel_de_read(dev_priv, DDI_BUF_CTL(PORT_A)) & DDI_A_4_LANES)
+	if (intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, PORT_A)) & DDI_A_4_LANES)
 		return false;
 
 	if (!dev_priv->display.vbt.int_crt_support)
@@ -7970,7 +7970,9 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 			intel_crt_init(dev_priv);
 
 		/* Haswell uses DDI functions to detect digital outputs. */
-		found = intel_de_read(dev_priv, DDI_BUF_CTL(PORT_A)) & DDI_INIT_DISPLAY_DETECTED;
+		found = intel_de_read(dev_priv,
+				      DDI_BUF_CTL(dev_priv, PORT_A)) &
+				      DDI_INIT_DISPLAY_DETECTED;
 		if (found)
 			intel_ddi_init(dev_priv, PORT_A);
 
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index 7f47e5c85c81..d3d92ac26099 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -818,9 +818,9 @@ void hsw_fdi_link_train(struct intel_encoder *encoder,
 		 * DDI E does not support port reversal, the functionality is
 		 * achieved on the PCH side in FDI_RX_CTL, so no need to set the
 		 * port reversal bit */
-		intel_de_write(dev_priv, DDI_BUF_CTL(PORT_E),
+		intel_de_write(dev_priv, DDI_BUF_CTL(dev_priv, PORT_E),
 			       DDI_BUF_CTL_ENABLE | ((crtc_state->fdi_lanes - 1) << 1) | DDI_BUF_TRANS_SELECT(i / 2));
-		intel_de_posting_read(dev_priv, DDI_BUF_CTL(PORT_E));
+		intel_de_posting_read(dev_priv, DDI_BUF_CTL(dev_priv, PORT_E));
 
 		udelay(600);
 
@@ -864,10 +864,10 @@ void hsw_fdi_link_train(struct intel_encoder *encoder,
 		intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), rx_ctl_val);
 		intel_de_posting_read(dev_priv, FDI_RX_CTL(PIPE_A));
 
-		temp = intel_de_read(dev_priv, DDI_BUF_CTL(PORT_E));
+		temp = intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, PORT_E));
 		temp &= ~DDI_BUF_CTL_ENABLE;
-		intel_de_write(dev_priv, DDI_BUF_CTL(PORT_E), temp);
-		intel_de_posting_read(dev_priv, DDI_BUF_CTL(PORT_E));
+		intel_de_write(dev_priv, DDI_BUF_CTL(dev_priv, PORT_E), temp);
+		intel_de_posting_read(dev_priv, DDI_BUF_CTL(dev_priv, PORT_E));
 
 		/* Disable DP_TP_CTL and FDI_RX_CTL and retry */
 		temp = intel_de_read(dev_priv, DP_TP_CTL(PORT_E));
@@ -909,9 +909,9 @@ void hsw_fdi_disable(struct intel_encoder *encoder)
 	val &= ~FDI_RX_ENABLE;
 	intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), val);
 
-	val = intel_de_read(dev_priv, DDI_BUF_CTL(PORT_E));
+	val = intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, PORT_E));
 	val &= ~DDI_BUF_CTL_ENABLE;
-	intel_de_write(dev_priv, DDI_BUF_CTL(PORT_E), val);
+	intel_de_write(dev_priv, DDI_BUF_CTL(dev_priv, PORT_E), val);
 
 	intel_wait_ddi_buf_idle(dev_priv, PORT_E);
 
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index b0aa1edd8302..a308665340d4 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -410,12 +410,12 @@ static bool adl_tc_phy_take_ownership(struct intel_digital_port *dig_port,
 	enum port port = dig_port->base.port;
 	u32 val;
 
-	val = intel_uncore_read(uncore, DDI_BUF_CTL(port));
+	val = intel_uncore_read(uncore, DDI_BUF_CTL(i915, port));
 	if (take)
 		val |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
 	else
 		val &= ~DDI_BUF_CTL_TC_PHY_OWNERSHIP;
-	intel_uncore_write(uncore, DDI_BUF_CTL(port), val);
+	intel_uncore_write(uncore, DDI_BUF_CTL(i915, port), val);
 
 	return true;
 }
@@ -455,7 +455,7 @@ static bool adl_tc_phy_is_owned(struct intel_digital_port *dig_port)
 	enum port port = dig_port->base.port;
 	u32 val;
 
-	val = intel_uncore_read(uncore, DDI_BUF_CTL(port));
+	val = intel_uncore_read(uncore, DDI_BUF_CTL(i915, port));
 	return val & DDI_BUF_CTL_TC_PHY_OWNERSHIP;
 }
 
diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt/display.c
index c7722c818b4d..5e3cd306c41d 100644
--- a/drivers/gpu/drm/i915/gvt/display.c
+++ b/drivers/gpu/drm/i915/gvt/display.c
@@ -213,10 +213,10 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 				  PORT_PLL_REF_SEL | PORT_PLL_LOCK |
 				  PORT_PLL_ENABLE);
 
-			vgpu_vreg_t(vgpu, DDI_BUF_CTL(port)) &=
+			vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, port)) &=
 				~(DDI_INIT_DISPLAY_DETECTED |
 				  DDI_BUF_CTL_ENABLE);
-			vgpu_vreg_t(vgpu, DDI_BUF_CTL(port)) |= DDI_BUF_IS_IDLE;
+			vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, port)) |= DDI_BUF_IS_IDLE;
 		}
 		vgpu_vreg_t(vgpu, PCH_PORT_HOTPLUG) &=
 			~(PORTA_HOTPLUG_ENABLE | PORTA_HOTPLUG_STATUS_MASK);
@@ -276,9 +276,9 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 				(PORT_PLL_POWER_STATE | PORT_PLL_POWER_ENABLE |
 				 PORT_PLL_REF_SEL | PORT_PLL_LOCK |
 				 PORT_PLL_ENABLE);
-			vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_A)) |=
+			vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_A)) |=
 				(DDI_BUF_CTL_ENABLE | DDI_INIT_DISPLAY_DETECTED);
-			vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_A)) &=
+			vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_A)) &=
 				~DDI_BUF_IS_IDLE;
 			vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(TRANSCODER_EDP)) |=
 				(TRANS_DDI_BPC_8 | TRANS_DDI_MODE_SELECT_DP_SST |
@@ -305,9 +305,9 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 				(PORT_PLL_POWER_STATE | PORT_PLL_POWER_ENABLE |
 				 PORT_PLL_REF_SEL | PORT_PLL_LOCK |
 				 PORT_PLL_ENABLE);
-			vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_B)) |=
+			vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_B)) |=
 				DDI_BUF_CTL_ENABLE;
-			vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_B)) &=
+			vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_B)) &=
 				~DDI_BUF_IS_IDLE;
 			vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(TRANSCODER_A)) |=
 				(TRANS_DDI_BPC_8 | TRANS_DDI_MODE_SELECT_DP_SST |
@@ -335,9 +335,9 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 				(PORT_PLL_POWER_STATE | PORT_PLL_POWER_ENABLE |
 				 PORT_PLL_REF_SEL | PORT_PLL_LOCK |
 				 PORT_PLL_ENABLE);
-			vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_C)) |=
+			vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_C)) |=
 				DDI_BUF_CTL_ENABLE;
-			vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_C)) &=
+			vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_C)) &=
 				~DDI_BUF_IS_IDLE;
 			vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(TRANSCODER_A)) |=
 				(TRANS_DDI_BPC_8 | TRANS_DDI_MODE_SELECT_DP_SST |
@@ -416,8 +416,8 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 			vgpu_vreg_t(vgpu, PORT_CLK_SEL(PORT_B)) |=
 				PORT_CLK_SEL_LCPLL_810;
 		}
-		vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_B)) |= DDI_BUF_CTL_ENABLE;
-		vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_B)) &= ~DDI_BUF_IS_IDLE;
+		vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_B)) |= DDI_BUF_CTL_ENABLE;
+		vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_B)) &= ~DDI_BUF_IS_IDLE;
 		vgpu_vreg_t(vgpu, SDEISR) |= SDE_PORTB_HOTPLUG_CPT;
 	}
 
@@ -442,8 +442,8 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 			vgpu_vreg_t(vgpu, PORT_CLK_SEL(PORT_C)) |=
 				PORT_CLK_SEL_LCPLL_810;
 		}
-		vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_C)) |= DDI_BUF_CTL_ENABLE;
-		vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_C)) &= ~DDI_BUF_IS_IDLE;
+		vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_C)) |= DDI_BUF_CTL_ENABLE;
+		vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_C)) &= ~DDI_BUF_IS_IDLE;
 		vgpu_vreg_t(vgpu, SFUSE_STRAP) |= SFUSE_STRAP_DDIC_DETECTED;
 	}
 
@@ -468,8 +468,8 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 			vgpu_vreg_t(vgpu, PORT_CLK_SEL(PORT_D)) |=
 				PORT_CLK_SEL_LCPLL_810;
 		}
-		vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_D)) |= DDI_BUF_CTL_ENABLE;
-		vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_D)) &= ~DDI_BUF_IS_IDLE;
+		vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_D)) |= DDI_BUF_CTL_ENABLE;
+		vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_D)) &= ~DDI_BUF_IS_IDLE;
 		vgpu_vreg_t(vgpu, SFUSE_STRAP) |= SFUSE_STRAP_DDID_DETECTED;
 	}
 
@@ -488,7 +488,7 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 		else
 			vgpu_vreg_t(vgpu, SDEISR) |= SDE_PORTA_HOTPLUG_SPT;
 
-		vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_A)) |= DDI_INIT_DISPLAY_DETECTED;
+		vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_A)) |= DDI_INIT_DISPLAY_DETECTED;
 	}
 
 	/* Clear host CRT status, so guest couldn't detect this host CRT. */
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index daac2050d77d..15393c861721 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -787,13 +787,15 @@ static int force_nonpriv_write(struct intel_vgpu *vgpu,
 static int ddi_buf_ctl_mmio_write(struct intel_vgpu *vgpu, unsigned int offset,
 		void *p_data, unsigned int bytes)
 {
+	struct drm_i915_private *i915 = vgpu->gvt->gt->i915;
+
 	write_vreg(vgpu, offset, p_data, bytes);
 
 	if (vgpu_vreg(vgpu, offset) & DDI_BUF_CTL_ENABLE) {
 		vgpu_vreg(vgpu, offset) &= ~DDI_BUF_IS_IDLE;
 	} else {
 		vgpu_vreg(vgpu, offset) |= DDI_BUF_IS_IDLE;
-		if (offset == i915_mmio_reg_offset(DDI_BUF_CTL(PORT_E)))
+		if (offset == i915_mmio_reg_offset(DDI_BUF_CTL(i915, PORT_E)))
 			vgpu_vreg_t(vgpu, DP_TP_STATUS(PORT_E))
 				&= ~DP_TP_STATUS_AUTOTRAIN_DONE;
 	}
@@ -812,7 +814,8 @@ static int fdi_rx_iir_mmio_write(struct intel_vgpu *vgpu,
 
 static int fdi_auto_training_started(struct intel_vgpu *vgpu)
 {
-	u32 ddi_buf_ctl = vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_E));
+	struct drm_i915_private *i915 = vgpu->gvt->gt->i915;
+	u32 ddi_buf_ctl = vgpu_vreg_t(vgpu, DDI_BUF_CTL(i915, PORT_E));
 	u32 rx_ctl = vgpu_vreg(vgpu, _FDI_RXA_CTL);
 	u32 tx_ctl = vgpu_vreg_t(vgpu, DP_TP_CTL(PORT_E));
 
@@ -2333,11 +2336,11 @@ static int init_generic_mmio_info(struct intel_gvt *gvt)
 	MMIO_F(_MMIO(_DPA_AUX_CH_CTL), 6 * 4, 0, 0, 0, D_ALL, NULL,
 		dp_aux_ch_ctl_mmio_write);
 
-	MMIO_DH(DDI_BUF_CTL(PORT_A), D_ALL, NULL, ddi_buf_ctl_mmio_write);
-	MMIO_DH(DDI_BUF_CTL(PORT_B), D_ALL, NULL, ddi_buf_ctl_mmio_write);
-	MMIO_DH(DDI_BUF_CTL(PORT_C), D_ALL, NULL, ddi_buf_ctl_mmio_write);
-	MMIO_DH(DDI_BUF_CTL(PORT_D), D_ALL, NULL, ddi_buf_ctl_mmio_write);
-	MMIO_DH(DDI_BUF_CTL(PORT_E), D_ALL, NULL, ddi_buf_ctl_mmio_write);
+	MMIO_DH(DDI_BUF_CTL(dev_priv, PORT_A), D_ALL, NULL, ddi_buf_ctl_mmio_write);
+	MMIO_DH(DDI_BUF_CTL(dev_priv, PORT_B), D_ALL, NULL, ddi_buf_ctl_mmio_write);
+	MMIO_DH(DDI_BUF_CTL(dev_priv, PORT_C), D_ALL, NULL, ddi_buf_ctl_mmio_write);
+	MMIO_DH(DDI_BUF_CTL(dev_priv, PORT_D), D_ALL, NULL, ddi_buf_ctl_mmio_write);
+	MMIO_DH(DDI_BUF_CTL(dev_priv, PORT_E), D_ALL, NULL, ddi_buf_ctl_mmio_write);
 
 	MMIO_DH(DP_TP_CTL(PORT_A), D_ALL, NULL, dp_tp_ctl_mmio_write);
 	MMIO_DH(DP_TP_CTL(PORT_B), D_ALL, NULL, dp_tp_ctl_mmio_write);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 2126e441199d..a91bbc6e1255 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6936,7 +6936,11 @@ enum skl_power_gate {
 /* DDI Buffer Control */
 #define _DDI_BUF_CTL_A				0x64000
 #define _DDI_BUF_CTL_B				0x64100
-#define DDI_BUF_CTL(port) _MMIO_PORT(port, _DDI_BUF_CTL_A, _DDI_BUF_CTL_B)
+#define DDI_BUF_CTL(i915, port) ({ \
+					(void)i915; /* Suppress unused variable warning */ \
+					_MMIO_PORT(port, _DDI_BUF_CTL_A, _DDI_BUF_CTL_B); \
+				 })
+
 #define  DDI_BUF_CTL_ENABLE			(1 << 31)
 #define  DDI_BUF_TRANS_SELECT(n)	((n) << 24)
 #define  DDI_BUF_EMP_MASK			(0xf << 24)
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 8279dc580a3e..b55bdc2cdd84 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -503,11 +503,11 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(SBI_CTL_STAT);
 	MMIO_D(PIXCLK_GATE);
 	MMIO_F(_MMIO(_DPA_AUX_CH_CTL), 6 * 4);
-	MMIO_D(DDI_BUF_CTL(PORT_A));
-	MMIO_D(DDI_BUF_CTL(PORT_B));
-	MMIO_D(DDI_BUF_CTL(PORT_C));
-	MMIO_D(DDI_BUF_CTL(PORT_D));
-	MMIO_D(DDI_BUF_CTL(PORT_E));
+	MMIO_D(DDI_BUF_CTL(dev_priv, PORT_A));
+	MMIO_D(DDI_BUF_CTL(dev_priv, PORT_B));
+	MMIO_D(DDI_BUF_CTL(dev_priv, PORT_C));
+	MMIO_D(DDI_BUF_CTL(dev_priv, PORT_D));
+	MMIO_D(DDI_BUF_CTL(dev_priv, PORT_E));
 	MMIO_D(DP_TP_CTL(PORT_A));
 	MMIO_D(DP_TP_CTL(PORT_B));
 	MMIO_D(DP_TP_CTL(PORT_C));
-- 
2.34.1

