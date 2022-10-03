Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C21075F2F52
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 13:09:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DBFF10E2FB;
	Mon,  3 Oct 2022 11:09:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9502910E2E7
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 11:09:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664795383; x=1696331383;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=mmahyaKvy8hAs8Fzi16KLFVrANGU0AYhjN2nLcjKZWQ=;
 b=LB3Mewss6vPk4ogg9XCHdZEH4CSw/hbdaG/5HU50orQJhUKnpAstjU/5
 cjrdUZqD94cAhHnzIaDhAbYGA7TSk6xwY+pACv3MQSdtqjlRuJutA0eHk
 91JOvffwIMfZsJNhxk5k9NsF8FJupAJDlTPH9iwIoJMAouzglndAzxDOs
 663MuY277z3XzvryC5WdojmJSgpBU+y6VtdPvPffo4TIhYNWgU0+bvbm9
 d9nLKSLHt4s2pw5CioEbiXFSlKDY2jaq3ORbKf4d/1upEcxc9RSjLy94A
 oMHdhexRpQ8LjwWiN/LxGqngiqsPnaNsHN3HoQIPrDP2GV9VFzhI2Asy5 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="302584491"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="302584491"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 04:09:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="868549244"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="868549244"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 03 Oct 2022 04:09:42 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 3 Oct 2022 04:09:42 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 3 Oct 2022 04:09:42 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 3 Oct 2022 04:09:42 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 3 Oct 2022 04:08:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dDNlbN3mFgM7yHk5FaKCV9p6ZC9RGH/pHhPXGYEKsa+xc/0DjSOqdwuSEasXJrFDrkEnlW3XlUTk+9eZhJU9Ul28C89oppKy1gJfLWBoGPRyxemR2kxXHxnerpp1Ijri0RdXWEXz0+SQ52MbfpwKDGLJ0VISHOCDGZwnfoZFiFioPQWoN7kLKROVLZn8UmkiQaYWtOhQQ8u/iWlvM8Ix8A1ZPJ3IGj5jlZ9cBqn1dA9OWptVizbilP7l0gnHL4OJr1dF4rlWjYWAoxFv3BELg6klZ8qjjHpI136Qdw1plc7Mhq5E9D92ZmtJPo9pJCH/SudfuPgoAeG4/QMbvnLthw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dphufgokhtp3Kw+IpF/bj8kYkhJiQwFpnMSrTtkb5Hw=;
 b=JSGRSedrwhdWmBjke9A+4GittzYoC/Rw1+5IWqgo2NCJVSLD4vN2+qoBScOZOlbc2ASEjG5hOAsuaqhukcg+lAUMfEm0m4Afn0AQeQNOCVoRxdivGehXrscy56xy5w98Rt8wPZNoo85z/98SC/3oq9Q+76X1+2sB8h7/27G24obN7N6gOOQ9ftqMsgA3CHSt0KhIWhNf/y417u3Gqdyp7079DonKYfQeyBcM8NVm0lxybQjRSMEaCdeAoya7JN0Ly3w4S2Rf9vNVdG9Qg588c5W7Mb/t3bsN+9HlQpAKMeh5+uBpGsKQvzDUAK6C6YKVJONwX3KzKrM03DdF2JCVmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 PH7PR11MB6476.namprd11.prod.outlook.com (2603:10b6:510:1f0::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.28; Mon, 3 Oct
 2022 11:08:47 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67%3]) with mapi id 15.20.5676.028; Mon, 3 Oct 2022
 11:08:47 +0000
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Mon, 3 Oct 2022 16:37:57 +0530
Message-ID: <20221003110759.140398-5-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221003110759.140398-1-balasubramani.vivekanandan@intel.com>
References: <20221003110759.140398-1-balasubramani.vivekanandan@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: PN3PR01CA0127.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:bf::17) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1897:EE_|PH7PR11MB6476:EE_
X-MS-Office365-Filtering-Correlation-Id: 721f4e0a-a375-49fb-acde-08daa52fa4a5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tVxFADL+tiycLX4lFJsWVvhg8C1njRXS6a2Ik7PQGFDYJFTTv+XFbJ0fXkRa0XjDmJ9m3lRjsd0bTPxmpc9drI2ip5x6ggKXlwAOcSVe1aDPofdzEKHSlAP7gXZeKENSL1csGQrQq13ISWNYEU2b+g98BNinf8Xy07ZLfV8jhITUigDCLG32rVINRat3MLi0F3NlHZZFQXSmbOgRqhoFKh5wh8MR6Rsa2ahDZbfoQIG00ufN0AbB/GJJAqApXVjnF6SZ+9RnQx9WjJqUnDXEc4XUR8b/jS0OU2LwRQ7pme63Mcj0GLrNZ49Q8Y4ShKRmF0klS+MDF7zc3wawpIPHKxsiCunR7oyELfeqZTBR8oovBYm36OfdMzap+R1wF2J1mDKHD6YjWXKBJykR3ZirHMBp2/jIed6cdPW9k8d3+z7EpPcvmC0ACwPbYHoumisSIDQ5V0pICPo9nGSsRRgCniU93a7wJWq40HmhIaQ3wvCww1nFq213IekhSgGNwQCFBGD/LJvHMvkQ643vC97MBjW3F4uNyIhWvwly6qEDtp5Pvt+Y8Rb45yzhuQcqZJKzHhEgIHgVNlPoLHiaXLE+p3uiJIdHHNx/KlpptLMDAbYUJHUlcGQP1ppEjvVnlJd7tezcE7OtI5lTCblfVwgARWA8+RbZX0NljwWI/wImLqMlun66elUEXO2aQmwPrDgI3nXuO5z5H/e/sNYATcKyNw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(136003)(346002)(376002)(39860400002)(451199015)(26005)(54906003)(36756003)(6666004)(8936002)(5660300002)(44832011)(6512007)(6506007)(478600001)(6486002)(2906002)(82960400001)(38100700002)(2616005)(1076003)(186003)(86362001)(83380400001)(4326008)(316002)(8676002)(66946007)(66476007)(66556008)(41300700001)(6916009);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?mTPhV/BMOqxPhS9MI/4JeiZ2dfks5h/Eom9exISJ8wh9oBg0krYOlmmB29U8?=
 =?us-ascii?Q?QfDUvAK/kFxjdYc8ypPrvkbL47A9gzzhAu03JKDb8gdx4EsyEdl3erzQNMtW?=
 =?us-ascii?Q?Gw7tDq78r4cT4KyZJTuwuxS0rkxBnw348h2N9/Vl7VEl4FMFNPGzAnD1WPOs?=
 =?us-ascii?Q?fyEGdjqrE4e1BnhxuyupwTewU380XSEtXf0WdPNsZ8XZI5l2F1hg8OJOCZAc?=
 =?us-ascii?Q?dkdKp+MOyhU2n2eptXCXn76kvMG3gwC9HoXBdIi0/fbjmFMhthsOc93gD/Dy?=
 =?us-ascii?Q?uui8xXOPV3p8FehOYAKeqjuU06HHg6sLFUz2MgClyFBqc+vWzVDONveEWrjC?=
 =?us-ascii?Q?mtjtf6TYe6tZSZL+5jcB91uJBg+xthU1J8Gr8XvSJ+SGTTloB2zFq+yCaO8/?=
 =?us-ascii?Q?tKp823i46gLRZLshSwOj6GLEWPpGCd8nwGfUQvC0o+8DNbl9D3LOF4w3aFQG?=
 =?us-ascii?Q?4N5t08aX8FEpon1L9Cna0yqZAKhfnNxMZFlm0C7XAITI84f+uy/dGqHI/Au9?=
 =?us-ascii?Q?J43Qx9ilALEDHSkC0snxrxSMLXwtW1jP4yYxbePbO+ovw7BeqL16urC9M3eE?=
 =?us-ascii?Q?CniMMYXy6qobwygmtie99fKAX+aHJQLLbgqyLRnt5gbStMdoH2zk50rqhr1Z?=
 =?us-ascii?Q?0yjf9eFetxg4n2mk9Mn2Rbv4Xri1E+gpCqbxu4vZjbTf3z+SEpNLTLz6+1rU?=
 =?us-ascii?Q?YSCRkQUO1WZxz1OmpixjKN5itnd9dnDur2d0fXX8xEwwrlmKNoT6bnRQDPvs?=
 =?us-ascii?Q?1puoGk3NQINHUPCjjKrmHQXlk9wHkoJ4CHVCRwcgyrjLqn+zNkMO2a7hjpfa?=
 =?us-ascii?Q?aKhZ4wbsoVCIYdBoh94gJhcWXCiTbLxbey7In0qS5p/ubucNu5uWINDD/F0J?=
 =?us-ascii?Q?MkiV7EsS5v3ZOWu32KM1aGbv3xivmmSizmgWUEtJ+mBRJuogrGrS+Rt29dh9?=
 =?us-ascii?Q?66LNqwhVncEPhWiGyBibyntNu0Fc8qnuj3/y7Ty+QPaZ0e2MCV3iG0hmC6qH?=
 =?us-ascii?Q?V8A+ysDvEhQnMU9Wi9wRIv7Bsbfve+VCiD39aECv0n6hF8uq5ts9xxEw5lzk?=
 =?us-ascii?Q?VOeFAvgCXbSkjxk2tAQhuna3VzdXCTxnSIfGHDN+cQgVLMMxfAR+fro1AOpq?=
 =?us-ascii?Q?cBolsoUCPeWXlKTnco0I/caU7+lakdHhmJK/3hnLHwk5nCvlucGd+MTp2qBr?=
 =?us-ascii?Q?4onBmLKnR1pR9lzEfPfLhC+Rd0lshLzIx8KLyDgIrywnrlo9w/Wwa4YHEJSk?=
 =?us-ascii?Q?y+GSoZiD7ruqiIPpJfXW3cc+G+Wp/g7hpLefT1cAYf2dtCJheuTUpaVyjt5x?=
 =?us-ascii?Q?izCCW+kVve1LuvN12Hy92wNES0GLWvY52ZWEFT1f7hhFesrBjs93KSSQKZlv?=
 =?us-ascii?Q?05UOCc8mnBokW6AV1FaBD+DwG4JDtAHxQRoBKlLOpCtNNkPJ/EKL6Ez9JV5o?=
 =?us-ascii?Q?fxBPonbPRG63fk4CP9lDkP16yC4b5myq3Q7qJGSg8Cm70rVo8q0f4MUBtyCN?=
 =?us-ascii?Q?0M+LSd2guLkgHryqkTLZG1TxC0rLrMT2ZvQzlkXcZTdZTR6/XWoiJ1IO0Prs?=
 =?us-ascii?Q?UMzDKekxmtWGUAccNhyyBXr3fFwTtuvKA4RU5RYMFPKPTAAW7knr5ilDSS1U?=
 =?us-ascii?Q?XpvLwRLrgmj6B63m4l4TxM4=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 721f4e0a-a375-49fb-acde-08daa52fa4a5
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2022 11:08:47.4619 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P4C28WDG4dooAwYWtxMCgAcpY9+WpUrmpEFFtv/IOQeXfaDXq8LV12OubyCun2y9QZIhCA8RmPPDI2T5K6t65CaNahUs91e86cU63awWYayf/M7I6aEzbD8YT6oby4Gh
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6476
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH v4 4/6] drm/i915/display: Remove
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
index 7dd6d108a26f..b95124c4fe74 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4133,17 +4133,6 @@ static bool hti_uses_phy(struct drm_i915_private *i915, enum phy phy)
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
@@ -4312,13 +4301,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
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
@@ -4448,9 +4431,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 
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

