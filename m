Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 156855F2F4D
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 13:08:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3124610E30A;
	Mon,  3 Oct 2022 11:08:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1C2010E30A
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 11:08:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664795323; x=1696331323;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=dxERvTr0ZR8F/h+T9foUqxaY2PtSQQNGzzKf/R69MCs=;
 b=ACxQONgfjK/OrVnIENQiGtd6asyc8PohKKuqpfGwkjIRWZfRY8dix1Sk
 Xgq7rebmjL2x8MpZYgRfk0ZiWln/X2FmiyR9O3HMZJ/JoeTElC4WBhLW0
 wa7f7WDhco95O7E5pp5GR8kufudDzhWrLE4VS/gz2WiyiH3aErVFH3mww
 Pnlhiq9wNsP/UJPGdhqqSnXc97Fk2KG1bl4y+SK7ef4BKjsDyoPzXx687
 ovZCULRsa6kTUWhlNgBKFoNE22Y6dGNb+fUs1Ll1MrmP+Gs1PxYMvZBwf
 EGs+VAl06VpyFUqMySpAh98bd+WxxMntTOn2ROMiqO3ifoUpaxIhdpCIS A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="289769902"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="289769902"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 04:08:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="727716136"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="727716136"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 03 Oct 2022 04:08:42 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 3 Oct 2022 04:08:42 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 3 Oct 2022 04:08:41 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 3 Oct 2022 04:08:41 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 3 Oct 2022 04:08:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SvxHY/Zf+6Na4l/+St1yh3JRintMGszDLOCRKqB86BuzVyJ4GbFoDnXuJcec1adz9CBJ/mOJNN4Km231fLEDJCtd5YKYlPOHuP6Mz7HTqWBPPGEKgfoFOjVLy+KBtfkVzPyaLA1v5XVu2VMWapPHGnsMPNA3CcvBN5MGhodkg9zUzbhywJXvNBgoptZ4L4lQo8oeHO7QGJE5ua2nmjjPSsdLf5bdfP+CH9tABwPW3xuPbtlWmIDarxLnYUYIHg3ein/wKUdOzOEYKnRwaJW+AH7Tkj9AO701rQEWbiykyZFTfj9oPXscSKJXVzde6MpJJaQ8fpKTNbSZgq04XHf6sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VDzMdNw/nbJG0pxLvdifysR2H3L457n4rdtnkZorO40=;
 b=Yfpic9EDtfKhy61FaU1BuKWKAVoan83vP5Q61D/AcQwYCC7Fd7ShMEZze6j3jwQZJNj41f6KFwSw7CnfLE+B74/pqlxB+d2uCYk8k5553a/686ZMBDidq/JC5Zu8KZCVCon6MXsGVR4KoaSLeEWWVvYCcHDTKg7CN61jfwQZwNux/PZA1A/QicQIKcyCvgXeUeHOtBBXwMSxaecHZbzfxSdHLtwI3X1IlGr0RbVOGQeo5M0abt5ZR4XPV6/dhYrODw4bbYSZZwSEx8AuKBMvUa/OmusSwZWGhqEGsIKfiSdZWTrj8dOvC5aqgbcggA3MiMK+lwNE/o/1wCOUwCEekg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 PH7PR11MB6476.namprd11.prod.outlook.com (2603:10b6:510:1f0::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.28; Mon, 3 Oct
 2022 11:08:40 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67%3]) with mapi id 15.20.5676.028; Mon, 3 Oct 2022
 11:08:40 +0000
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Mon, 3 Oct 2022 16:37:56 +0530
Message-ID: <20221003110759.140398-4-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221003110759.140398-1-balasubramani.vivekanandan@intel.com>
References: <20221003110759.140398-1-balasubramani.vivekanandan@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BM1P287CA0023.INDP287.PROD.OUTLOOK.COM
 (2603:1096:b00:40::28) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1897:EE_|PH7PR11MB6476:EE_
X-MS-Office365-Filtering-Correlation-Id: e13ab685-1b83-4bc8-0bfd-08daa52fa05d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aQjnSnmPCO+SjdZvCBtQYgcMLfCWtLSAULxT7Hwk5gkM6CaE8h/AQ5geSjH/MuXXRrNxbC1OUVEcRJ3C2LqZZfeY4p9tZfFNPVD2Yu7ttyI1yq97VVidrCxmD/AWj8kPJ48x+9xjOrgvH2FPDfcOku/JIN1vb03uEk8/q5Vw8zcKv2hQ/UdUfJCDkts3SMOW1jxAtI6bGl/NPbi14nPmlxbdcsTLCyLYtQriPrJoaNARicL1TPFyxUpYjUnyneBLtqsmvDYC8HZTVqPezuQcUQ7evGDNsS2Jk/NWrjeeMZqQJmSn1hYMqQqtko433gobYHH0446GxZADrcsJE/m13KTAy7A9iROp8I3QL7tq04fHV6rNkWCMvOb4Uxyfw/je2xFyHYDC/oyCj8N+4g/GSP7fJeRLlfKZCmnTkT2HaIvbwfMASLV/uZZEKo+seyjSAXoPx5TRQ2xVZ9IiCtRPe2AWfJ/Vd5++dcj9rrTzCgAlfGygvFw4n5lqDaxxUp1uhoO+vivzsHoqNYqSUcubOUFeAyCMj5l80OrGcgW3CMqb7VD6lSCZKzYpKUjWvkvGZoZkkBKVma2hRYZF/Hd58jCyjVb/Mo2WDeDhfR5zT5VWygL6Gg/BLTJLvxWSUzS1nFrwT09R3EAPetxZ25G6ptfr/BBBji5W++Zz6UtaTYH0xNqaUXjKv09kJfXOKx/+ZHfuxTQ0h6aT47/Eu9ZXyg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(136003)(346002)(376002)(39860400002)(451199015)(26005)(54906003)(36756003)(6666004)(8936002)(5660300002)(44832011)(6512007)(6506007)(478600001)(6486002)(2906002)(82960400001)(38100700002)(2616005)(1076003)(186003)(86362001)(83380400001)(4326008)(316002)(8676002)(66946007)(66476007)(66556008)(41300700001)(6916009);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?w4+8anl8G2px5hozN/nnjCGE0WZdGCtrWOJ1/yMvg6/SgHO1gZvAM7Jf/f5s?=
 =?us-ascii?Q?+7DjP49mxBlDostz1BaxvktQaI7AWN0mlDWEbEqZMi4JDEyWUbI6GMUC1WIU?=
 =?us-ascii?Q?Dpp8C4rywBBXAThXjdpIVkzDZC0Vwfqqyvh0dEMZznq2vIIqrgHKiHTnQvYZ?=
 =?us-ascii?Q?kEEeXZKvts17neb7Zyp87jRNmgDSeIxoV3Kf6VRkxN+oFD2IUlA3AOzJh5Uy?=
 =?us-ascii?Q?RzXCoY7cO4XYPVXE4piiE1apGPBiUYumEv7hE8v28KTBiVXuKLw3B9EXwZjy?=
 =?us-ascii?Q?EBVDTpdRtVRMMQhHzz1+VQ0GobJ5o9XWV2dJmGTod8Lrx3iv0mUSs79C/DeC?=
 =?us-ascii?Q?aA+40kwOVAGBTnJchm08HVOmTTEaxJNLvLruDVtw/w05IDwPImkEyMUd/TsO?=
 =?us-ascii?Q?bTLnFpGa1vWZPI+WhzhHW+0DuhIneHwmBIQn4g3ipfL4R2ljrye+5cv8whXP?=
 =?us-ascii?Q?kdTIhhC7K7Y5HqNXjv7o0mgBVOeP82VRV3eLgixaec6Wqp77SMXuBwh7smGB?=
 =?us-ascii?Q?/AMAFlw7gn7wZneMoEWGJYc42AVQHQk//bKKFsBMyzQTuepV9mPY/TJECTIT?=
 =?us-ascii?Q?1xL3LQ4LxdeLw7E4OK50wcM79MCnjrqGNpIcLQdg98YB/8we9/js3uIPuN8O?=
 =?us-ascii?Q?2CPbp/gWd8noZ/NHBiogj2Oae9oWKclrcv+4Ho7UWBSyoG0zalkoGiLcXBq2?=
 =?us-ascii?Q?uvtNkdORmuzi2AojHo4xCZpeEmpqeHm4eN2JFVPwhVeYNYpF2oy2D2b7DXsq?=
 =?us-ascii?Q?th/czHBRK+T4kxjeNgIuIY2akQajYy0B4tYQ65Z2x59m81ziWqP1XsgAvDn6?=
 =?us-ascii?Q?hN0dh8CJUArY+AuYRTacvahVBzqzyei2GbS/A4Lhv9TFlHdXS9DUjc2l9bsj?=
 =?us-ascii?Q?eSALR8J8OFTJZTp/GO0gjdiAHPzLfzw8o/qjw2/9nP+44XOH2m/AqcluWK+M?=
 =?us-ascii?Q?Ia54ElRDnsnJs5lsbnlD/VnqooabMhX4zZ026l+GfSEN+KZsVxNFXseQZaKk?=
 =?us-ascii?Q?FWqFbKqHxR+E/sNx39muuuMQjGouv0IL2iLJzJLgsCs3tm7Xy9XjS5W9p1An?=
 =?us-ascii?Q?CpngvdWYTo1e5Z/ui6mUty1YWilfow9IkgHFeDY0sCbNpDDpv82wvTvgWBpo?=
 =?us-ascii?Q?Q+wkENsauGPDAfITsm8wb09GZkeA1SuU4PtpNJEDU+vLzSo3TTHbLQY+tpIc?=
 =?us-ascii?Q?tpJBc+fjJ1S6A08QYLCa+xv3bbKtlS2OlDWJvmUcH8t1JhDNf97mY8tWTeC3?=
 =?us-ascii?Q?4qZhcCM9V5/0IP3cg+EVxmiFXk2k9nYuPPY4M4FXEdbwEOMhDnz7OZt3zwCu?=
 =?us-ascii?Q?GM/+ljjh75HZDGRqBZkDz/HdbN2X2Ans1rVntmm26JDszS1FxuuGo0ZCilak?=
 =?us-ascii?Q?fHrHShzvytIL2RUbmDpwm3v1HhWO7ymsEeU3ynaBI7EW76qyOYyhanKN0WFh?=
 =?us-ascii?Q?O5itw+9NFxB382Gs5/5i3s+cpcEvBoSP8BWZ/uK4LsNN4dD6HSsXyoTGzd+y?=
 =?us-ascii?Q?wdhU/DMBbTpy3mnDse6soiouRzqlK6YjjHGPnGYcyWDcWH5r7phpuCq/bxPh?=
 =?us-ascii?Q?nZevMjB2tiTw/kfaiWLp3a7AmAXGG9wEGMcPPBM/ahq/lG2MwfoDx3iK+RBg?=
 =?us-ascii?Q?cWGnW3HJh7BT6v7XvnM+jrs=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e13ab685-1b83-4bc8-0bfd-08daa52fa05d
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2022 11:08:39.9938 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 53gaIOPxkqYzZi0s2g8H1rTZsV9ibcSfelXV8dHIhmoyW1jfiFsc9rRxTM5LlNOTsCqEGKXNuFQxYT14GYxGIbrbERFJV3Zu8/D6xuj+ZjsWkCAYD8gY/EVhSmaMgL5l
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6476
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH v4 3/6] drm/i915/display: Free port enums from
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
the device info, DDI_BUF_CTL macro updated to make use of it.
Any new macros to access the DDI registers should follow the same
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
 drivers/gpu/drm/i915/display/intel_ddi.c     | 1 -
 drivers/gpu/drm/i915/display/intel_display.h | 8 +++-----
 drivers/gpu/drm/i915/i915_reg.h              | 6 ++----
 include/drm/i915_component.h                 | 2 +-
 4 files changed, 6 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 77a986696c76..7dd6d108a26f 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4492,7 +4492,6 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
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
index a91bbc6e1255..cae48786c5a3 100644
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

