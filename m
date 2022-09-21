Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5915C0020
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 16:42:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8656E10E417;
	Wed, 21 Sep 2022 14:42:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D43F210E417
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Sep 2022 14:42:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663771345; x=1695307345; h=from:to:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=tqMaWDdVH96aXq5KvrLEjEapBa8INTXlKmNrbRhzoiI=;
 b=m+EzstjtlUvHbwfDdDRvoR15W1c9vzdDysfWxPZdrSag4R9iBE3XLgj3
 9e5Q9dw4MSx/9+/MlBFBIgoXut17t7OVyObEWM6WB3vXBbp+wrvc44c9Q
 6JFMT8XI012s5pcQ+OKR/RbrEEuZoPgbR6jSun8Mgg/2wgaUGw0EQBvmc
 N2c2hgmH+p06hnwCx9Su5XyPHuFciTbRgQhep5OFnThnXkGf24+kTgZFN
 CJcb8ZQ+qvkzHQNYb/5TRZuyVpx44FE2hotCF6ETkW+DLZXddWBpg7QVB
 sEw/bgdSFbj8y/AkC6giT5Jzu4efCLf/te9KgoCZwS55LsgZNwisCryF9 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="326333151"
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="326333151"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 07:42:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="681794270"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 21 Sep 2022 07:42:24 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 21 Sep 2022 07:42:23 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 21 Sep 2022 07:42:23 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 21 Sep 2022 07:42:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cJNVCdsaMi9OzfHDWRKliWaZ8YeYbVYjXBTQUrIj7ET+ZuMMgmyCic6Z75Qky4H3b5w9u2HKpSbuOHA1p5e3gqLLy3qoFJ6WVK9mbJC7VZ5t4EMetEbEWmtwqictlW7fN4ZWReJ+CB6BvwpahPNYU/4MrsKPwaoMSQKZmHPEdxkQaFdZcpaequNDdFShFX27ZAnzpdxDhSHsjvN04BDFwUZu8UJEzNCkewAKYYXD8Roy4vqhrOo+y7y7J6tZPG1tDZD2pA/sGvevJiVsqAcKwPNMxkDfkaxnE2iftskBtgik/H71Iek6802LfGtr9awOjyXDvePEExS4I6OtiblYYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CuQfm7XvrrACSisBHl37lNduK0nsl6qtNTeo00PKtKo=;
 b=jDzcWybQSFrBa2QVgkqU3pAwpX8P1S3DsftowP8LC/9St1rCXfRmCfgetJpNkYSfJoGHhMk5QwDEOBFU2eifV+tHgvbda4EWBpwdGNmSD00fUDI1hKQ81yfiDbtNcAUTbUGR8/jiJXyzYDFOu1pqf+0koFfUpbTfcgcLC5snJX6aPsIecripNXBeUqjcUaNwiILWoDnf9pegdC5lPcMTgMbLrV9C+8ItyIsEixuh5v+ACsKIuT7fI+piByU9VPGCOzt1HqXCitshwd2Fzyg2DMmyo3pXNktwIu3HKrOrTS3DmdlMTlKb4LFaVLCVjyPlzl1yjf3jfZQmqf8HPOFQMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 DS0PR11MB7285.namprd11.prod.outlook.com (2603:10b6:8:13d::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5632.21; Wed, 21 Sep 2022 14:42:20 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::fc2f:babb:578c:f03e]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::fc2f:babb:578c:f03e%6]) with mapi id 15.20.5632.021; Wed, 21 Sep 2022
 14:42:20 +0000
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Wed, 21 Sep 2022 20:12:12 +0530
Message-ID: <20220921144212.125521-1-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: PN3PR01CA0175.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:de::20) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1897:EE_|DS0PR11MB7285:EE_
X-MS-Office365-Filtering-Correlation-Id: 282cb1f3-a681-4eb9-c0f7-08da9bdf7c9a
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Ej7EgSS2Oxnd+f4ZrpYldEeU8GQdKcnq4NiiLuUnobAilswDOc6+kdLD414am0VxqUPAQ5J/zB/HCAMs6alT/ryUQ7/1Fbc6blgeOs3zSCLED8Bjs5Rk/N97FHEd7MfRfEj3DN+m/MvQvNN8EcWDMcpy/YOfJqk9LgN6ixOXK6Bm8SpzAB0cC+fOey0TKwPMx1Af4hiCadL7Gi++FDZse7KXNLbxRb4dDlwOHyxjsaGc6HiW5LPBA23UsB8ZuYXcjaTHllcHJvkz0uBe9wqSX1UbeTJzsI/2FNFQJHnUkpGV3YVBq0700G31B7dCkIv9pFWiF3AmL2Qq1o38g94S3wPrC7UG5VxVkjp0El1SxKUYQ0pJsdXxjr1f+cpdNUV9E+hTc96kUIThm9Q18QY/pMQ/jOST+apHF8JB0R1zsoscW4Yb/JyIWYX4QGxjdsGE55nx0s8L1v41v197gsDFxOL5MA4AMYHJUDbhVrDwZyU3kIUNgL05ChIxOVlY6pfPr+CRNtJBUc/ABIVQaDhYa8088PNitVc+dgO63/Rx0PLJBVA7B80DjKKsWwz9KmpN4Z7f7M0rEXcRrR6vSn5oQWv1skLzYT9uAWQL7jeBfGjc22mtBwVgLeynh8E5yAcwHYILJqoCK9sIk0H+h9Z/e4laiaGKiu7qYEJBB1p9B9H6eQuxNHRB7Tm8SKX+XKUh2ACjx52hNfnq2T1s0BKvPQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(376002)(39860400002)(136003)(346002)(451199015)(26005)(2616005)(186003)(6506007)(83380400001)(6512007)(86362001)(30864003)(66476007)(66946007)(66556008)(8676002)(5660300002)(6666004)(478600001)(36756003)(41300700001)(316002)(44832011)(1076003)(8936002)(82960400001)(6486002)(38100700002)(6916009)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bOW920ONBsU5uJ3gqdzIDZhRXfYGsm9kBbWp2v53vUjx3zymZc92CLNNFzzB?=
 =?us-ascii?Q?3t+phEbZkhYdIc0absVe7MajlKNfbH7gEHsI8FU/SoWJPL24v/6vWlG07XSC?=
 =?us-ascii?Q?ni45s8bR4AvLbgnI9DPrFq8IBVsKzRYTMHyRr7+W7AbwDgkumKrRJu4HmfdQ?=
 =?us-ascii?Q?hcw3jgnGMLxeOPmLZsSPeG6W1Tu+n+Ni4dK5mEQZqBYP/tG5ruPaEZ3aZIis?=
 =?us-ascii?Q?9M2Q1XcsPWJDGjmNZqadsMdEiBJqBDW7ydzHt2KhBxXZvS1mKPzitkTStpoO?=
 =?us-ascii?Q?A80GS3Y/+qGVo3rduhQqXwPip/T5Rdaj8B+L8z6GQk95KbKmrmlsupCMPv0n?=
 =?us-ascii?Q?EIWcqgA2g44LKjOQYeo3aibl/752mq7DEjzNleJ51gy5/P71ot1iPHR1zaR5?=
 =?us-ascii?Q?otgv+wK9hNrCFak0V4HT6MoUHn7DkMjcK4t50hgpLGHuipfUdys2P4x4ZL5I?=
 =?us-ascii?Q?N5DqR5cbR8gTW5fSZ962PTJLyZkJnHPyBcUo2lXf4c8gKqX8XVzDFb8SRzX0?=
 =?us-ascii?Q?3VZPac6j5Isz4bQWOyEgDpwWAf+2to7Ib1v1UevMrd8ojFQR/etg9fMN2KtE?=
 =?us-ascii?Q?eygmNuCK3BISJZ278ZA5OFhgww3c6FdWsXPZOcFSDBvv3O4UOP1HQmAWCvpo?=
 =?us-ascii?Q?b7OrxrXllkpeijS+VzV4Xos9bJEeZISaGELJ2owUY1Uojc2gNxO8sZ5iTWHB?=
 =?us-ascii?Q?sapGpyY1CWd/9rsUVuj6GudYkLJB1FQTp1pNxMqyoqGQ3cr494Ud9s7Ebvax?=
 =?us-ascii?Q?af44rMs8aLBomPWh/ECtZP32ydEXxnh+WmlMUNW6f9SU4QpFZaKZ9eUSnY66?=
 =?us-ascii?Q?mmQfqR8YCHfhqxJjuooGnmHWdSJKmlaOWYPcKeGin3SG8H5OdagTkyWwk082?=
 =?us-ascii?Q?JxfsLZgSZyaX/EbI9GWni4R2ID0i5YotQoGntcSXjLVdTbczV3YjBYoNsu9C?=
 =?us-ascii?Q?l0ABDyf9u8qM5vEtD18mZE6+YpLDCn+Sd3tXG/uM/iy3vOHDShT/jowblvZX?=
 =?us-ascii?Q?IHbQyt06T83hRJMpgUqV83eVFu1c2Lx/BdYUPmF3kxaY5SACCo1/kKJONG2v?=
 =?us-ascii?Q?D/jh2OXdhamBg6dgRRHj3uxn80EZE/tve91Y87TK2ckAUvMM7vQsEneZLJl4?=
 =?us-ascii?Q?DeVPQ3S/mG3qNCjCF6X0z4zRhmUE+sIrNusr9hRLgJuP9m7g3fRFNnBejUl4?=
 =?us-ascii?Q?r1j/+GCDHh3QyBrnVqLQdbe9CgFHM53wMzVub7Sn7amBjAW47BPG3ikrTMWB?=
 =?us-ascii?Q?vgN4lcw8uRCPO/3o+Y6mpJCcftV2qyP2bpptci8+A3CxsUTPgd2sr8Qg/Kjy?=
 =?us-ascii?Q?ExrKoVhuPLCT3MmCEISR+ZvaUBfG4F1jjD/YiTTbXR2Opu3ieXZjHVxuZOir?=
 =?us-ascii?Q?c3GolZTIXdpyFafP2IEjJxxy4zuJlMwZyUVn3BtwzeenCEXnKJIHzR9p3xBZ?=
 =?us-ascii?Q?+5oMZ+jwXVMi4vyw76GnECTYRZaCp6r4y/FMKhV3K+ST4BP08kLqywh8wEah?=
 =?us-ascii?Q?zGV44wEU4dyoxWEJF8LscmjfNkzteRHwJ0yjU9TtrZqBb0ViM0gc5dsUEFKR?=
 =?us-ascii?Q?/AjddtreSIMPT2RlLevEUjXYbwbCmjzyrKD/NwuSA9Kd77+lfA88VUqpiFUA?=
 =?us-ascii?Q?3DlDE9ioDeELcs23DxRUDJY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 282cb1f3-a681-4eb9-c0f7-08da9bdf7c9a
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Sep 2022 14:42:20.0781 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SBRWCazXFr2ZVjs2x7FswmOPM3d7XiSjIltJP0H35MmPQYMhKVGOvHWG9N4jYGRfZ6/WiXDu3woj73gKnVxp6922zgWKLCAOqv+Fr5sgpW6LBG8n5Tj+yQX1E6gst4u8
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7285
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH] drm/i915/display: Don't use port enum as
 register offset
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

Display DDI ports are enumerated as PORT_A,PORT_B... . The enums are
also used as an index to access the DDI_BUF_CTL register for the port.

With the introduction of TypeC ports, new enums PORT_TC1,PORT_TC2.. were
added starting from enum value 4 to match the index position of the
DDI_BUF_CTL register of those ports. Because those early platforms had
only 3 non-TypeC ports PORT_A,PORT_B, PORT_C followed by TypeC ports.
So the enums PORT_D,PORT_E.. and PORT_TC1,PORT_TC2.. used the same enum
values.

Driver also used the condition `if (port > PORT_TC1)` to identify if a
port is a TypeC port or non-TypeC.

From XELPD, additional non-TypeC ports were added in the platform
calling them as PORT D, PORT E and the DDI registers for those ports
were positioned after TypeC ports.  So the enums PORT_D and PORT_E can't
be used as their values do not match with register position. It led to
creating new enums PORT_D_XELPD, PORT_E_XELPD for ports D and E.

The condition `if (port > PORT_TC1)` was no more valid for XELPD to
identify a TypeC port. Also it led to many additional special checks for
ports PORT_D_XELPD/PORT_E_XELPD.

With new platforms indicating that the DDI register positions of ports
can vary across platforms it makes no more feasible to maintain the port
enum values to match the DDI register position.

Port DDI register position is now maintained in a separate datastructure
part of the  platform device info and ports are enumerated independently.
With enums for TypeC ports defined at the bottom, driver can easily
identify the TypeC ports.

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c        | 12 ++--
 drivers/gpu/drm/i915/display/intel_bios.c     |  4 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      | 62 +++++++----------
 drivers/gpu/drm/i915/display/intel_display.c  | 12 ++--
 drivers/gpu/drm/i915/display/intel_display.h  |  8 +--
 .../drm/i915/display/intel_display_power.c    | 40 +----------
 drivers/gpu/drm/i915/display/intel_fdi.c      | 14 ++--
 drivers/gpu/drm/i915/display/intel_tc.c       |  6 +-
 drivers/gpu/drm/i915/gvt/display.c            | 30 ++++-----
 drivers/gpu/drm/i915/gvt/handlers.c           | 17 +++--
 drivers/gpu/drm/i915/i915_pci.c               | 66 ++++++++++++++++---
 drivers/gpu/drm/i915/i915_reg.h               |  8 ++-
 drivers/gpu/drm/i915/intel_device_info.h      |  1 +
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   | 10 +--
 include/drm/i915_component.h                  |  2 +-
 15 files changed, 144 insertions(+), 148 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index ed4d93942dbd..70098b67149b 100644
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
index 643832d55c28..1e312685b930 100644
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
@@ -3805,13 +3805,15 @@ static struct intel_connector *
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
@@ -4043,12 +4045,13 @@ intel_ddi_init_hdmi_connector(struct intel_digital_port *dig_port)
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
@@ -4084,7 +4087,7 @@ intel_ddi_max_lanes(struct intel_digital_port *dig_port)
 		return max_lanes;
 
 	if (port == PORT_A || port == PORT_E) {
-		if (intel_de_read(dev_priv, DDI_BUF_CTL(PORT_A)) & DDI_A_4_LANES)
+		if (intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, PORT_A)) & DDI_A_4_LANES)
 			max_lanes = port == PORT_A ? 4 : 0;
 		else
 			/* Both A and E share 2 lanes */
@@ -4112,17 +4115,6 @@ static bool hti_uses_phy(struct drm_i915_private *i915, enum phy phy)
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
@@ -4291,13 +4283,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
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
@@ -4427,9 +4413,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 
 	intel_ddi_buf_trans_init(encoder);
 
-	if (DISPLAY_VER(dev_priv) >= 13)
-		encoder->hpd_pin = xelpd_hpd_pin(dev_priv, port);
-	else if (IS_DG1(dev_priv))
+	if (IS_DG1(dev_priv))
 		encoder->hpd_pin = dg1_hpd_pin(dev_priv, port);
 	else if (IS_ROCKETLAKE(dev_priv))
 		encoder->hpd_pin = rkl_hpd_pin(dev_priv, port);
@@ -4446,11 +4430,11 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 
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
index dd008ba8afe3..caf81f4b7f2a 100644
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
@@ -7880,7 +7878,7 @@ static bool intel_ddi_crt_present(struct drm_i915_private *dev_priv)
 		return false;
 
 	/* DDI E can't be used if DDI A requires 4 lanes */
-	if (intel_de_read(dev_priv, DDI_BUF_CTL(PORT_A)) & DDI_A_4_LANES)
+	if (intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, PORT_A)) & DDI_A_4_LANES)
 		return false;
 
 	if (!dev_priv->display.vbt.int_crt_support)
@@ -7903,7 +7901,7 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 		intel_ddi_init(dev_priv, PORT_A);
 		intel_ddi_init(dev_priv, PORT_B);
 		intel_ddi_init(dev_priv, PORT_C);
-		intel_ddi_init(dev_priv, PORT_D_XELPD);
+		intel_ddi_init(dev_priv, PORT_D);
 		intel_ddi_init(dev_priv, PORT_TC1);
 	} else if (IS_ALDERLAKE_P(dev_priv)) {
 		intel_ddi_init(dev_priv, PORT_A);
@@ -7966,7 +7964,9 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 			intel_crt_init(dev_priv);
 
 		/* Haswell uses DDI functions to detect digital outputs. */
-		found = intel_de_read(dev_priv, DDI_BUF_CTL(PORT_A)) & DDI_INIT_DISPLAY_DETECTED;
+		found = intel_de_read(dev_priv,
+				      DDI_BUF_CTL(dev_priv, PORT_A)) &
+				      DDI_INIT_DISPLAY_DETECTED;
 		if (found)
 			intel_ddi_init(dev_priv, PORT_A);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 884e8e67b17c..e3aa8080b79f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -212,18 +212,14 @@ enum port {
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
-	PORT_E_XELPD,
-
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
index e5af955b5600..8baee1f19d89 100644
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
index daac2050d77d..50fe7799e096 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -787,13 +787,15 @@ static int force_nonpriv_write(struct intel_vgpu *vgpu,
 static int ddi_buf_ctl_mmio_write(struct intel_vgpu *vgpu, unsigned int offset,
 		void *p_data, unsigned int bytes)
 {
+	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
+
 	write_vreg(vgpu, offset, p_data, bytes);
 
 	if (vgpu_vreg(vgpu, offset) & DDI_BUF_CTL_ENABLE) {
 		vgpu_vreg(vgpu, offset) &= ~DDI_BUF_IS_IDLE;
 	} else {
 		vgpu_vreg(vgpu, offset) |= DDI_BUF_IS_IDLE;
-		if (offset == i915_mmio_reg_offset(DDI_BUF_CTL(PORT_E)))
+		if (offset == i915_mmio_reg_offset(DDI_BUF_CTL(dev_priv, PORT_E)))
 			vgpu_vreg_t(vgpu, DP_TP_STATUS(PORT_E))
 				&= ~DP_TP_STATUS_AUTOTRAIN_DONE;
 	}
@@ -812,7 +814,8 @@ static int fdi_rx_iir_mmio_write(struct intel_vgpu *vgpu,
 
 static int fdi_auto_training_started(struct intel_vgpu *vgpu)
 {
-	u32 ddi_buf_ctl = vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_E));
+	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
+	u32 ddi_buf_ctl = vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_E));
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
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 77e7df21f539..e0687f5d0a72 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -130,6 +130,42 @@
 		[PIPE_D] = TGL_CURSOR_D_OFFSET, \
 	}
 
+#define GENX_DDI_OFFSETS \
+	.display.ddi_offsets = { \
+		[PORT_A] = 0, \
+		[PORT_B] = 1, \
+		[PORT_C] = 2, \
+		[PORT_D] = 3, \
+		[PORT_E] = 4, \
+		[PORT_F] = 5, \
+	}
+
+#define GEN12_DDI_OFFSETS \
+	.display.ddi_offsets = { \
+		[PORT_A] = 0, \
+		[PORT_B] = 1, \
+		[PORT_C] = 2, \
+		[PORT_TC1] = 3, \
+		[PORT_TC2] = 4, \
+		[PORT_TC3] = 5, \
+		[PORT_TC4] = 6, \
+		[PORT_TC5] = 7, \
+		[PORT_TC6] = 8, \
+	}
+
+#define XE_LPD_DDI_OFFSETS \
+	.display.ddi_offsets = { \
+		[PORT_A] = 0, \
+		[PORT_B] = 1, \
+		[PORT_C] = 2, \
+		[PORT_TC1] = 3, \
+		[PORT_TC2] = 4, \
+		[PORT_TC3] = 5, \
+		[PORT_TC4] = 6, \
+		[PORT_D] = 7, \
+		[PORT_E] = 8, \
+	}
+
 #define I9XX_COLORS \
 	.display.color = { .gamma_lut_size = 256 }
 #define I965_COLORS \
@@ -189,7 +225,8 @@
 	I9XX_CURSOR_OFFSETS, \
 	I9XX_COLORS, \
 	GEN_DEFAULT_PAGE_SIZES, \
-	GEN_DEFAULT_REGIONS
+	GEN_DEFAULT_REGIONS, \
+	GENX_DDI_OFFSETS
 
 #define I845_FEATURES \
 	GEN(2), \
@@ -210,7 +247,8 @@
 	I845_CURSOR_OFFSETS, \
 	I9XX_COLORS, \
 	GEN_DEFAULT_PAGE_SIZES, \
-	GEN_DEFAULT_REGIONS
+	GEN_DEFAULT_REGIONS, \
+	GENX_DDI_OFFSETS
 
 static const struct intel_device_info i830_info = {
 	I830_FEATURES,
@@ -249,7 +287,8 @@ static const struct intel_device_info i865g_info = {
 	I9XX_CURSOR_OFFSETS, \
 	I9XX_COLORS, \
 	GEN_DEFAULT_PAGE_SIZES, \
-	GEN_DEFAULT_REGIONS
+	GEN_DEFAULT_REGIONS, \
+	GENX_DDI_OFFSETS
 
 static const struct intel_device_info i915g_info = {
 	GEN3_FEATURES,
@@ -341,7 +380,8 @@ static const struct intel_device_info pnv_m_info = {
 	I9XX_CURSOR_OFFSETS, \
 	I965_COLORS, \
 	GEN_DEFAULT_PAGE_SIZES, \
-	GEN_DEFAULT_REGIONS
+	GEN_DEFAULT_REGIONS, \
+	GENX_DDI_OFFSETS
 
 static const struct intel_device_info i965g_info = {
 	GEN4_FEATURES,
@@ -395,7 +435,8 @@ static const struct intel_device_info gm45_info = {
 	I9XX_CURSOR_OFFSETS, \
 	ILK_COLORS, \
 	GEN_DEFAULT_PAGE_SIZES, \
-	GEN_DEFAULT_REGIONS
+	GEN_DEFAULT_REGIONS, \
+	GENX_DDI_OFFSETS
 
 static const struct intel_device_info ilk_d_info = {
 	GEN5_FEATURES,
@@ -430,7 +471,8 @@ static const struct intel_device_info ilk_m_info = {
 	I9XX_CURSOR_OFFSETS, \
 	ILK_COLORS, \
 	GEN_DEFAULT_PAGE_SIZES, \
-	GEN_DEFAULT_REGIONS
+	GEN_DEFAULT_REGIONS, \
+	GENX_DDI_OFFSETS
 
 #define SNB_D_PLATFORM \
 	GEN6_FEATURES, \
@@ -483,7 +525,8 @@ static const struct intel_device_info snb_m_gt2_info = {
 	IVB_CURSOR_OFFSETS, \
 	IVB_COLORS, \
 	GEN_DEFAULT_PAGE_SIZES, \
-	GEN_DEFAULT_REGIONS
+	GEN_DEFAULT_REGIONS, \
+	GENX_DDI_OFFSETS
 
 #define IVB_D_PLATFORM \
 	GEN7_FEATURES, \
@@ -549,6 +592,7 @@ static const struct intel_device_info vlv_info = {
 	I965_COLORS,
 	GEN_DEFAULT_PAGE_SIZES,
 	GEN_DEFAULT_REGIONS,
+	GENX_DDI_OFFSETS
 };
 
 #define G75_FEATURES  \
@@ -647,6 +691,7 @@ static const struct intel_device_info chv_info = {
 	CHV_COLORS,
 	GEN_DEFAULT_PAGE_SIZES,
 	GEN_DEFAULT_REGIONS,
+	GENX_DDI_OFFSETS
 };
 
 #define GEN9_DEFAULT_PAGE_SIZES \
@@ -732,7 +777,8 @@ static const struct intel_device_info skl_gt4_info = {
 	IVB_CURSOR_OFFSETS, \
 	IVB_COLORS, \
 	GEN9_DEFAULT_PAGE_SIZES, \
-	GEN_DEFAULT_REGIONS
+	GEN_DEFAULT_REGIONS, \
+	GENX_DDI_OFFSETS
 
 static const struct intel_device_info bxt_info = {
 	GEN9_LP_FEATURES,
@@ -886,6 +932,7 @@ static const struct intel_device_info jsl_info = {
 		[TRANSCODER_DSI_1] = TRANSCODER_DSI1_OFFSET, \
 	}, \
 	TGL_CURSOR_OFFSETS, \
+	GEN12_DDI_OFFSETS, \
 	.has_global_mocs = 1, \
 	.has_pxp = 1, \
 	.display.has_dsb = 0 /* FIXME: LUT load is broken with DSB */
@@ -983,7 +1030,8 @@ static const struct intel_device_info adl_s_info = {
 		[TRANSCODER_DSI_0] = TRANSCODER_DSI0_OFFSET,			\
 		[TRANSCODER_DSI_1] = TRANSCODER_DSI1_OFFSET,			\
 	},									\
-	TGL_CURSOR_OFFSETS
+	TGL_CURSOR_OFFSETS,							\
+	XE_LPD_DDI_OFFSETS
 
 static const struct intel_device_info adl_p_info = {
 	GEN12_FEATURES,
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 78038f48ddf2..ea63f921f222 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6929,9 +6929,11 @@ enum skl_power_gate {
 #define  DP_TP_STATUS_PAYLOAD_MAPPING_VC0	(3 << 0)
 
 /* DDI Buffer Control */
-#define _DDI_BUF_CTL_A				0x64000
-#define _DDI_BUF_CTL_B				0x64100
-#define DDI_BUF_CTL(port) _MMIO_PORT(port, _DDI_BUF_CTL_A, _DDI_BUF_CTL_B)
+#define _DDI_BUF_CTL_A			0x64000
+#define _DDI_BUF_CTL_B			0x64100
+#define  DDI_BUF_CTL(dev, port)		_MMIO_PORT(INTEL_INFO(dev)->display.ddi_offsets[port], \
+						   _DDI_BUF_CTL_A, \
+						   _DDI_BUF_CTL_B)
 #define  DDI_BUF_CTL_ENABLE			(1 << 31)
 #define  DDI_BUF_TRANS_SELECT(n)	((n) << 24)
 #define  DDI_BUF_EMP_MASK			(0xf << 24)
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index d638235e1d26..44ca739d7bfa 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -286,6 +286,7 @@ struct intel_device_info {
 		u32 pipe_offsets[I915_MAX_TRANSCODERS];
 		u32 trans_offsets[I915_MAX_TRANSCODERS];
 		u32 cursor_offsets[I915_MAX_PIPES];
+		u32 ddi_offsets[I915_MAX_PORTS];
 
 		struct {
 			u32 degamma_lut_size;
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
diff --git a/include/drm/i915_component.h b/include/drm/i915_component.h
index c1e2a43d2d1e..4b31bab5533a 100644
--- a/include/drm/i915_component.h
+++ b/include/drm/i915_component.h
@@ -35,7 +35,7 @@ enum i915_component_type {
 /* MAX_PORT is the number of port
  * It must be sync with I915_MAX_PORTS defined i915_drv.h
  */
-#define MAX_PORTS 9
+#define MAX_PORTS 15
 
 /**
  * struct i915_audio_component - Used for direct communication between i915 and hda drivers
-- 
2.34.1

