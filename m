Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A927E5F43A6
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 14:54:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A796610E632;
	Tue,  4 Oct 2022 12:54:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86EE210E630
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 12:54:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664888078; x=1696424078;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=blzYfdVdEsh+y7T/s6U6QoD1mJkxgXqQtZX7ZOR8Rjc=;
 b=nGVS8RcaqtqOujJx5z0rBJhvq88Iwhigwz/+2bXeTiQ67VdpwWxT+PAV
 86Td+l52K2h9XUT0t69pwo+Q40gi3swH7AmaCheUwQNRzERZvgc3eTuZU
 /nj2V5GYwkDlxOe3bavmaAjY3vGksEMweu+niFCXszAWC9UfXlnyHRkRu
 Blg7SiMYtC4+D4Vl6n13senVtWRL83PhBacM3d8K0X0d5/eqOEs8y5R40
 h3XM4UPBcIqo2xCtW2whOKZNpGdts3mj8aUmWyThsi1b61bYysZ7Makvf
 KTeLVjGlH4ZkAHV31fq1oS8o8auyzTvVSFJnCTTpzhszUCM/JdEpfjRgv w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="301620760"
X-IronPort-AV: E=Sophos;i="5.93,157,1654585200"; d="scan'208";a="301620760"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 05:54:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="692478198"
X-IronPort-AV: E=Sophos;i="5.93,157,1654585200"; d="scan'208";a="692478198"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP; 04 Oct 2022 05:54:38 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 4 Oct 2022 05:54:37 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 4 Oct 2022 05:54:37 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 4 Oct 2022 05:54:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MskbmrfkSOjc1mZNl3qGaL+2XArKba+12+xU3HGKIySVroZk4ImExn5M2LPUoeZHysXUhFXFQO2GQSPGsf1NwNLhijwTjZmpygPQlmQ41g3sdoz72xiCOBJeRmeRstbwANjt+E37HLOLEFeJpZJalF8uEMQx/rCcWTQ5GxLoGazIICwJD8qWyhO/yrcJyctyusAbas2jk3MIe9jEKBgEh215FYgK14szqpuCX2lGyKbbB2yHUX0D2eaiDu9NGdW4zXX5zheAQBpBNdqlCReaX+ePJFXSnYZgKJJV6B5xEuCVioXYgcUfCfUhYQsuh/ILyUHu4RTa7+7+2TkHTHvn9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P/Bwfd26EuO4dlyvJlYcltCZHgCQ2qmQcuwLi46XgfE=;
 b=OOgZ4hwhaEscxglm+sYSPYSgj/sGTO0gnvDrMpAGn2yGRna/HNj2BetZIhRrFA8+SOaVg7OywPUHYfrfH0ibpstOjCX2BMP0pf2mIWzsIhxycqWKAe8PMoTMmERxwOrzgnqW6CeM+l0djH4B7ddCegyuJWMDUU1H7Bafh66Q+foPch8lxYM5r8T5W4X5E3+kkjam6mg71liM57Yy+rfbsc0rS02sK0FGO/oBT5A5IW1XHOg7A8BUUcVtuqksMp2NsZF5gGpJK3gBcEXD7rK4dYmQAZp0kiL7wPA7DDY30NwAMqxPIOcrmg+AVdPQU+vgFuYRVn2jHubKc+AqypLqGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 PH7PR11MB6053.namprd11.prod.outlook.com (2603:10b6:510:1d1::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5676.28; Tue, 4 Oct 2022 12:54:35 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67%3]) with mapi id 15.20.5676.031; Tue, 4 Oct 2022
 12:54:35 +0000
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Tue, 4 Oct 2022 18:23:42 +0530
Message-ID: <20221004125344.228294-6-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221004125344.228294-1-balasubramani.vivekanandan@intel.com>
References: <20221004125344.228294-1-balasubramani.vivekanandan@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: PN2PR01CA0151.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:26::6) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1897:EE_|PH7PR11MB6053:EE_
X-MS-Office365-Filtering-Correlation-Id: d1b14482-2dbb-46d4-a8d5-08daa6079666
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Z8DQARx/GN+bNE17YAngdM7Txwe/WfbcNmquErV6R9Mmd71F5fYUPwMu23Y6+sHzq11VcBtjAXndZCSfFmST4qZ0IPar3DC6CiwKpD0ZpatZt8ScvPaC0M/Btepn5HAZ1MFSsbRkY6f8Ju9UXtbDTlW3Aa2Mjtwac0xWeWqiKlHF1F42en8yMLsIopgVsy8gksiZ5W+alNECIUeHLczBZghvd6nJV1+EQ9dPI4HgcaXWW7AtBUMS/0vz5BJ5wIMMuj/0ax+1tcum+QVIyLxR5E+LAfwcc/ul8aMs00VQghEySxm+VfMiYuuEzlaij7rfA3yVzm0J9YiLBrM1cKcup/OhwUEHdahzf/pYLrRu4upgal4wmgzXFqghyyvtiG0/APtaO8G645OTZ2BqA/sHOoj8jvkR4mJMFCE+snsnQz86hJ0HychcwgwBy+uahr0vuYUPrRQsjjcOYhxxAyyxuj51SXkTQPqwytsy/UOLg4nOk/irpkDiIWOjSGoW6VxAo+Jonp9w7/Olh3y5aAwWOU5PZIuVVACAcfSS/Nm+rVQaJkojfjsuhoTJOu+CY5RWxdXBelGAJk4ncYgnJS3Cat4Km6IGz6SqKQig2VRtVhWnjLiYCzrZTBTwR95GtOSc+RqkwPZZKGUJn1RCOGU0hKWlynPUtqJzbtwq/uljS5qqb3YrUtawM85XNPbSer/MYL3e19fC14gvmRdfFZT2dw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(39860400002)(136003)(376002)(346002)(451199015)(186003)(38100700002)(6506007)(44832011)(26005)(2616005)(83380400001)(1076003)(82960400001)(5660300002)(2906002)(41300700001)(8936002)(478600001)(6512007)(4326008)(6666004)(8676002)(6486002)(66556008)(66476007)(66946007)(316002)(36756003)(6916009)(54906003)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?e0pmg4Jlzv0vzlavgwJS7QfzNaYdzxjYzAOhJs4ddYmZvmfCSBQXBY7nDPf2?=
 =?us-ascii?Q?fxxcZW31KWZ1dQe4bZuQaBwkfUvX+GiPoMY6LDEBrfBJi9kFAtqq++pwKugE?=
 =?us-ascii?Q?TznvIEksMlsUXBmRS4iFNQnJlFnrkn6Mgid62Gn7hbwoIHsgseTq3169Es/t?=
 =?us-ascii?Q?KCpcYeZAfi5meJq72qr886pZlZcbInyPsyil/RISsjZy1003icMzX5hd/vCJ?=
 =?us-ascii?Q?h2/87dap0uWWCw1gxwZgQiUngt9GdOfk1xj+2N6YUM6Wn4MCgrVFrkSLfvDW?=
 =?us-ascii?Q?ER9B2Q4IeofaPhu18OgmlbInKcFWSoB7BRMoGN2B/lAls05nR9wPEZe3FmBg?=
 =?us-ascii?Q?uX2QW9oyz5fb5/Ni+doVMOAunAHkYn/512J+dc/ozac5N/jPJOSsvdFkXkjl?=
 =?us-ascii?Q?p5mGbSgmygyuxl75fCRZtTTe5OdTMGm7NMA76t8AGOJsJIXfrLSE/W/c0N2z?=
 =?us-ascii?Q?dJ122Vm2gZ4OIplSzdHs54aUkLuAWCnc93NsfFSL0ionKw5kvSo1EZf55554?=
 =?us-ascii?Q?8LngoXmkrWy7wMSi1reasPZCWH2kIZzfgAHIwPvIg8Kd4jGoSgF1r+OOcqD+?=
 =?us-ascii?Q?7942tJo+ltujsIR4eT70/J+FXG16E24nSetox2NVYkORBfXhJDOY/BA9fu5R?=
 =?us-ascii?Q?4qjTJVTfj7KZ7XvqosCFm4vB/CSGqDFLUEudu93FqjNQY0HQVtcb/9l5XP4C?=
 =?us-ascii?Q?5si8m3fJJuTM7WBxGtDohqF7W35LLaxRYdujlH8N0KP6p/nm1oKhE69ctPyJ?=
 =?us-ascii?Q?mTkhIQafF9xyDHOEsEZ1i6cvBjoPUgF81Cr3Rpw0s5GFxMeEPD8tk+fMcA9u?=
 =?us-ascii?Q?4NeEwSpSYibglFptniOYkKo+zbrLBA+fZawZlmvNO4GpJBzBR4Uvhjidvz4N?=
 =?us-ascii?Q?vr6y7gBH5fIZ28qtbwW+a2aWON4o9svGbEs8wkkl7CGEx71bAmsj3t5fwRwg?=
 =?us-ascii?Q?uz1BW8AkoHatpIcN20lwzU+cWQ53ru84O+me0ZyXQ0cVw7la+FSD6wpKWttC?=
 =?us-ascii?Q?Yh3e+bYuy64tboZ9qtCOsFs6QpPm3FgFREmBlWNJxLOvdE0Tb+AjV0y+dngp?=
 =?us-ascii?Q?FFiRfrVA5HyDpGuDiY09CPIwnwsJhSzeNmUOf102J1MP/fiX8o/gWMv3AmPc?=
 =?us-ascii?Q?GordWTNS7KLe50CiQSOFjBQ2v46aLEiS5x6dE4lzvDc0VeuqAgYdmdi8v9XX?=
 =?us-ascii?Q?Z2XuSibLG4loKDB51oGcJgOkkaIUA6MHGzui/7AhS5Ll4xjwcVVP6c7s03y4?=
 =?us-ascii?Q?k/sDwd6gu4Wz2h3PV1WV0wg5QpcBx7HiJgm9ZWGN45V9VEXbtS8IJY+ZM3Ir?=
 =?us-ascii?Q?dkQ6JmUp/ieoMo58aNn3yBF4W/ZlU5TvxAi0o8HyRxX/SfkHkQMFdgFLslVP?=
 =?us-ascii?Q?ojBRyd289E17d0IMwoFPfPU7V4g7blysUB87Dh/OEEce59AQcfwh79BdyHON?=
 =?us-ascii?Q?pkUHR4algAoFhOI3RTlPrkShdp/tmBtWNTsAyq0LbopOl0L4G2F9vviSds5j?=
 =?us-ascii?Q?A7nk9apLyRBe+cZPXLbmK0cg8VQZdpUR9VFZjeaAvnZXY/wkpvTjNM5EytcB?=
 =?us-ascii?Q?ccvQ3jVBwUvhmYhNmhA4O/RvEvFNQ1+wgM6h8fHzuL0zlCzDPt/7HgLS3LtV?=
 =?us-ascii?Q?NtViY6aDvMJ4/jzSdstsf1E=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d1b14482-2dbb-46d4-a8d5-08daa6079666
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2022 12:54:35.1981 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6sWAhoi4kGUUyOVqTMtlrtefCiDu+ZIRfmnbg7Th2Jw7Wu5m9SCHNRFoR4akxDdO4ZoAvZzE5rpKYcv0ByaD4GQSw39E4p6bkE2NH0tHpBI3Erwde+7YVmNzHVje1FE6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6053
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH v6 5/7] drm/i915/display: Remove
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
 drivers/gpu/drm/i915/display/intel_ddi.c      | 23 +---------
 drivers/gpu/drm/i915/display/intel_display.c  |  6 +--
 drivers/gpu/drm/i915/display/intel_display.h  |  2 -
 .../drm/i915/display/intel_display_power.c    | 44 ++-----------------
 drivers/gpu/drm/i915/i915_pci.c               |  4 +-
 include/drm/i915_component.h                  |  2 +-
 7 files changed, 12 insertions(+), 73 deletions(-)

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
index 1e608b9e5055..d900d8051a82 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -2338,9 +2338,9 @@ static const struct intel_ddi_port_domains
 d12_port_domains[] = {
 	{
 		.port_start = PORT_A,
-		.port_end = PORT_C,
+		.port_end = PORT_E,
 		.aux_ch_start = AUX_CH_A,
-		.aux_ch_end = AUX_CH_C,
+		.aux_ch_end = AUX_CH_E,
 
 		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_A,
 		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_A,
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

