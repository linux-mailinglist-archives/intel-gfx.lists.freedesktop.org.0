Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB55A9F2AA
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 15:47:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE99910E50B;
	Mon, 28 Apr 2025 13:47:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TWkqFq1V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CB1310E527;
 Mon, 28 Apr 2025 13:47:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745848052; x=1777384052;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=AtBbdBfcggxT/6B3Jk8n2QQQzJY8/N3kM/tctcRjPl8=;
 b=TWkqFq1VKJCJRDjk5G2cyLwGmN6FYNXzCsRtula+QYqnv6kSZsh8SkLf
 TAEZfYQHR7xIRnmzBB1yVNgGdHPp/kLP3cU/iwfR+Uo57LbEyO9ldgssl
 CbM20Y+G3He3Wufrxhrt/SJqcAzJ+kKV4RjjikzyJTiC2aji/GhtWQ+l5
 Ktsx97FmAHsTvxgGAM5Y+S2SGGy5Pd9HamnmtDRpodzoFlwikjx1gfTuY
 Qms03Lg4sXCOFjZr+cPzLtWgDhrdunRsCLb12v1HqKiUkPL14C21MkVdt
 ZAv5gtnPQrD/1D4fC7azaMaj9wv3OGEhVuojwqm5ZFfrsm+PDEAeU+RvA Q==;
X-CSE-ConnectionGUID: IHDQFQVuQdy+Etob4J924A==
X-CSE-MsgGUID: sqo/3SZ5S/WWfWi6l2fxrQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="72816690"
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="72816690"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 06:47:31 -0700
X-CSE-ConnectionGUID: QUACc3TOSvCMPmplK/rEgQ==
X-CSE-MsgGUID: 3P01cS8WSRSQrpDU0sf6Iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="134496702"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 06:47:32 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 28 Apr 2025 06:47:31 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 28 Apr 2025 06:47:31 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 28 Apr 2025 06:47:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h5HOlpUFRGWa96rFTp0HtMCDXAgKY7pK6JvNql/GQ/6O/AQBGrFzwUpJ4RTtH/J8JGLqLF+9SMhhAy1o2ftjT36CXjU05/vsotE07h8OshbiviIT+K90i/sSDjKv9MXxP6MB864wh2pz91Uzs6MpNOHXhDSEGBSfCIuqJ4jv2Eo1NiPgCLJhLXIlX8Ikth/GBZ1+mpvW8n3xnI0ZtzpwoeNc073ajE8zvj772SDF5e+VNDGSB+Nnqo3kr2TMZAjYPSmNG18gg5tMhLjMbvVQm2yzZhEykFmCdLipGTiEwzqo+IdhVHZBEiiJ0pfDn9zVzbIaUS08ve6ZpqIbq+zpPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hOiicIJQ1RfSk53hZiJFKetjAc0mBR+zA2tokYksylI=;
 b=owvLKEaMjcezsZD2DavPTP7tpiGnwVdVqsl8kuRrAwm+CgOzXN9f8nJolyg5RCJDiakBnl5wty+mwReqHnInS4wqrPEbn99TLbb2LvqtEyxgFA4je6xoslBLULSnoAnL+k/gWEr7LTwb+FtN7XDJvBQKzRmMq2hh2lfUiz1+ZssF8wlRodZJ3yKZggY9qQ/1vyUbVRhlK/pa41CHbBro3EhCMPUpbIpAJslXY1SAHvsas0qNaI8D4E2xveX+JP+fp2SxHCH6Wg1ILfvhtcijGfEglG+805UR9SAiK1YXsSeX2ty+/ygbSBnVg2gR0LZt3p4uXDgl34H5fXd1lnDmlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH7PR11MB6836.namprd11.prod.outlook.com (2603:10b6:510:1ef::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.29; Mon, 28 Apr
 2025 13:47:13 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8678.028; Mon, 28 Apr 2025
 13:47:12 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 2/2] drm/i915/hdmi: Use an intel_connector pointer everywhere
Date: Mon, 28 Apr 2025 16:47:16 +0300
Message-ID: <20250428134716.3396802-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250428134716.3396802-1-imre.deak@intel.com>
References: <20250428134716.3396802-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DU7P195CA0027.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:10:54d::20) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH7PR11MB6836:EE_
X-MS-Office365-Filtering-Correlation-Id: ec245a6e-61bb-48ef-ba4d-08dd865b2dcc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?qMwjiuDspsQdLtXj3H/M2IpRIOgh+eCt5neaGnwglDs0cq0bjBBCz+O22ZZ6?=
 =?us-ascii?Q?9WUiteyRKHQDsgxKHxG9GD7PE5Aa+PR0t0+xqH/VLgjyCBEhwE6kKgcvlnvr?=
 =?us-ascii?Q?T5f0Gu+zKdkxR2tk3/dI04WPZznXKnu+lfe2R2YnhrkA+MaDjCZBYqa/R/B3?=
 =?us-ascii?Q?350dOo+JUhuu/d/8LDBJ1/d7y0oGI9e0hW5DYXuoFOCbYr0VTZ/LHv9RFBYs?=
 =?us-ascii?Q?9grMbTeL1I+OBcQnvIu6Twcp16PiW3JNryCIMXQdB4fqXz7nat+DPgOo7KSH?=
 =?us-ascii?Q?KOHtDYHpms0r5HLZS0NnBgnNL4Tvzv8Zm3aSe0L4oAZ6IG1V1lnNg/48aVQc?=
 =?us-ascii?Q?xGeH6vlIF9+qCugO/KuPLeGsUGfaPLuEc0Gi49/pqzxu/1mnFt7y1x+EHHCl?=
 =?us-ascii?Q?OvDbyVUg8EG4dfFZoo2I/A0y0xZtfaA4DpAUzlyhY860e/iPnIobtMZRoWFs?=
 =?us-ascii?Q?FjLWgB98OCbPnXiVtNlsVgOCe4xgJgZMoto+gyojfA9jD749TgdO3m1o+vi5?=
 =?us-ascii?Q?RtgrC0mtzHEKWvNcJQnRAFR3qs1Xr43oJQiku9s0zL8x9onx4e8gsPGz+XmM?=
 =?us-ascii?Q?q3AcSQl4VXKcjC7alOw9OJVJ3lNh0DDPEdZ49eys0TbJ1yXUj+MaMN9fOsML?=
 =?us-ascii?Q?i4kWPVos5j4mrciInHVxJwCR939fvztidJxhQX4CMTr24IVsgHXnqjFNhfqU?=
 =?us-ascii?Q?CqcOfPhExCVzSTm1k6TAus+JRxYaKfe5V+XKrHfzhrVGEc6MTiufx1UwUPZN?=
 =?us-ascii?Q?loOsqYsxhmtixMnZeC1EsI6T3bEyQnrIVbkOBUs1B88GEQJskr1WVkckkcq9?=
 =?us-ascii?Q?Jpl49p6NwL16aQlVhBRfiz2xuVERbqCQjlAVBibp+vD46Ee1TUWi0sAsfuCd?=
 =?us-ascii?Q?1sSlRbRc2f3wbrYpqzIbWT954Jmwl23f9ypaule6IiMxNQSsCK7CbdJICkGf?=
 =?us-ascii?Q?C8dA9kixMCA+AJG8Kc1cAwfmso7qrjKaoXa/vmBryRbALxRNfGAHD+T9wOrK?=
 =?us-ascii?Q?i06MENU6LWOyecKk04O3ZV4hqPnQiHk2lNhtm++uAol3Vasdavutj028r+ay?=
 =?us-ascii?Q?BQ64EqvXZ3bSrBi4HOZ57CRrm30wzxvsaXJ5dWPQzzySR+z6SG5GymPTeRXP?=
 =?us-ascii?Q?/96QjlpWNe+9mi0wz24LqFiip0yIAo52O3pYOFFkwaLL8ax4MFDbzQsCsXEc?=
 =?us-ascii?Q?CyT4KMLv/f1gQI0gyMR2b67WPYRQzZhfsA53c2H/lFXJnnu75CVMHab1jV1j?=
 =?us-ascii?Q?f5MELnNIm46Q5naxmI4wqRzbHCJAFNtd1I0AeKod40g1pQY5PtwOinY151xV?=
 =?us-ascii?Q?wZ0wFZSyvzr6eIsX4Gw0eCvccx64bBMQt0EcNnZRK1/Z4+mS+vxyseftNyBc?=
 =?us-ascii?Q?BZsc0HwyPEBdWxNGyRx+ePB8LJcqPl9pUORt5YnSVvOHVcwIL/cBJiEH6saJ?=
 =?us-ascii?Q?jYVHCMHlvFk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qZXTcmUbNsNG/8mKGLOGPseJZJSfTg4xpDunv4/lacGSygqudvzR0vipbvYB?=
 =?us-ascii?Q?pd5BRbgAu7Zndyrw3wBz25PvQPZr15bko8k3Xb4+bGJBJroNE4mIoVN+NeWY?=
 =?us-ascii?Q?6lfDjJzwUDP5MjGsDgCdx1ngxpzfu0Og/eWPygS3M6aq5V+dnANx2tWz8BFg?=
 =?us-ascii?Q?7MWVCbFLHkYmLdriSCMNf2UhiPnj6IMZ50KtaYNXRZObj8jiIUhZWVaUw7SP?=
 =?us-ascii?Q?hdzFVRCd5AVKGpUw4n95AfUyIby2EhIxddc1TqzUl50mrSObDM3k+mNOlYND?=
 =?us-ascii?Q?8l0PVtyBXolqwuueFC5bdZ6RrkXYoZYWPHutwA+g4xphLwuHSArnbyGf3Vpn?=
 =?us-ascii?Q?gASQIZdictFzyu45eXDnaVjJMiKtXit6pmiPdUoZHfKUYzQo/FgxslseXEYp?=
 =?us-ascii?Q?Yb0Pm/7RMpMShE6qJPDrkZ4h1G4ML6c6/gwIjX/vLgLcaLI3ik4RoTJI6rSY?=
 =?us-ascii?Q?1tUtQL6Q3Brl+Jdek2CCgznuNpbMthOwKIHsou8muUJbevDaxfR9Sci8BJjG?=
 =?us-ascii?Q?5TAwDW5usgcYkUpKTvocAO05oJaK4WWuvNSLOs2Jsvru3TTYjzgOwnJILssO?=
 =?us-ascii?Q?TG5/klLQ81t6nEDjKVaPodRkp1Jm6nHyV0rvP8OpQ1nRaGlHU86HoAhq8qSR?=
 =?us-ascii?Q?AB6Bwt8nRQwjgyiBGU4y1nt0TcHqPmxgBjhs37i09JRC7lIz1almb+2mLH6a?=
 =?us-ascii?Q?Ov/3xn3ri+6dASoc7eBmhgjkemTlHRw5x98uUYHfhxmQRDLmYvDttOsl2bGU?=
 =?us-ascii?Q?zzDEZOOFYUpJ8tAlesjzuImsaj87BBtwLBSUxjcABZK3Q1XnwOMunPyBvZno?=
 =?us-ascii?Q?hMGCJeWVcbVGw0HFDHUl3DyUJLuEUGS3pfEVttWipYWr+4lreuc65dezfRPL?=
 =?us-ascii?Q?layqHIQXd33AEBpqdqZIzZ864VZEWGH3t+UjZoawBZvCcNV7c1b0Db/2w3N9?=
 =?us-ascii?Q?dBv2uark7Wm9g8WBfjGdacOeazzkm/HZoznxDjUjR1c9q4dXyXMynqrIAFhX?=
 =?us-ascii?Q?1zYJAdJlYmZPmm72rnnnOfGPjl/7/xZRWVyrP2/Tmfl5ZxGkVRZITB3+8QwZ?=
 =?us-ascii?Q?/OzN5HUPb0r36nWnSubKqg6ZoSzTFrhUF+M/wofMJGuj9NaKt7u0wVZjTcZb?=
 =?us-ascii?Q?AbafRkmiLIdpj4TimyvHLODXO0Dvn7sqzBOrPNb0kHBbRG3sCAc4rtoxQXh9?=
 =?us-ascii?Q?BElj24CBmNN86GxcNTHE2lkura7dJO70fmbrR8bshSzGSfyJtwJmU5PJBVL6?=
 =?us-ascii?Q?lEMiS0oapXDBl4I4+duGiqOzhzVuVajF3C+8e/Yp0NwteWhpzhRiPNjB/5BX?=
 =?us-ascii?Q?44zY+oe3PMjvL1GGKAusZ2aIfzp5N4XgXJi2FTIowjzbnLvZua/4oSxTo9GS?=
 =?us-ascii?Q?igAHiRfwfuDOLtHTSqYAcGG1YW5QiUzDltRrdxHTDGN4vBAV+M/WmeY0lQRm?=
 =?us-ascii?Q?1CnKXfvInPrRhOrvIKCUKixUN2Ve5DChQxgCMnmYI3GOfgOzx0o2RMx/FzJ2?=
 =?us-ascii?Q?lJGxIrvUn1HlBXE4D8QFNBGs0e414GNp0quUFjW70bjJld43uvDE6GhFQJxV?=
 =?us-ascii?Q?p/BfYRh17WM8aFqtxYAnJLP2kiLuoSonTKDzXtj7?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ec245a6e-61bb-48ef-ba4d-08dd865b2dcc
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2025 13:47:12.8739 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9XlFdxzg6zHVADNFTVJzW/pSil/dC0K3pTNW4zLsmVmdwY/Wd/rwDXyBnmpxKrJWTUKWcndbBG3iAc1GdNfzeg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6836
X-OriginatorOrg: intel.com
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

Following the convention, convert intel_hdmi.c to use an intel_connector
pointer everywhere, calling this pointer connector. If the intel
connector must be casted from a drm_connector, call this pointer
_connector and use this pointer only for the casting.

v2: Use for_each_new_intel_connector_in_state(). (Jani)

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 189 ++++++++++++----------
 1 file changed, 103 insertions(+), 86 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index e08c01e5b9d3c..37f0fbaf31459 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -715,7 +715,7 @@ intel_hdmi_compute_avi_infoframe(struct intel_encoder *encoder,
 	struct hdmi_avi_infoframe *frame = &crtc_state->infoframes.avi.avi;
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
-	struct drm_connector *connector = conn_state->connector;
+	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	int ret;
 
 	if (!crtc_state->has_infoframe)
@@ -724,7 +724,7 @@ intel_hdmi_compute_avi_infoframe(struct intel_encoder *encoder,
 	crtc_state->infoframes.enable |=
 		intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_AVI);
 
-	ret = drm_hdmi_avi_infoframe_from_display_mode(frame, connector,
+	ret = drm_hdmi_avi_infoframe_from_display_mode(frame, &connector->base,
 						       adjusted_mode);
 	if (ret)
 		return false;
@@ -743,7 +743,7 @@ intel_hdmi_compute_avi_infoframe(struct intel_encoder *encoder,
 		    crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB);
 
 	if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_RGB) {
-		drm_hdmi_avi_infoframe_quant_range(frame, connector,
+		drm_hdmi_avi_infoframe_quant_range(frame, &connector->base,
 						   adjusted_mode,
 						   crtc_state->limited_color_range ?
 						   HDMI_QUANTIZATION_RANGE_LIMITED :
@@ -1938,11 +1938,12 @@ static bool intel_hdmi_source_bpc_possible(struct intel_display *display, int bp
 	}
 }
 
-static bool intel_hdmi_sink_bpc_possible(struct drm_connector *connector,
+static bool intel_hdmi_sink_bpc_possible(struct drm_connector *_connector,
 					 int bpc, bool has_hdmi_sink,
 					 enum intel_output_format sink_format)
 {
-	const struct drm_display_info *info = &connector->display_info;
+	struct intel_connector *connector = to_intel_connector(_connector);
+	const struct drm_display_info *info = &connector->base.display_info;
 	const struct drm_hdmi_info *hdmi = &info->hdmi;
 
 	switch (bpc) {
@@ -1971,12 +1972,13 @@ static bool intel_hdmi_sink_bpc_possible(struct drm_connector *connector,
 }
 
 static enum drm_mode_status
-intel_hdmi_mode_clock_valid(struct drm_connector *connector, int clock,
+intel_hdmi_mode_clock_valid(struct drm_connector *_connector, int clock,
 			    bool has_hdmi_sink,
 			    enum intel_output_format sink_format)
 {
-	struct intel_display *display = to_intel_display(connector->dev);
-	struct intel_hdmi *hdmi = intel_attached_hdmi(to_intel_connector(connector));
+	struct intel_connector *connector = to_intel_connector(_connector);
+	struct intel_display *display = to_intel_display(connector);
+	struct intel_hdmi *hdmi = intel_attached_hdmi(connector);
 	enum drm_mode_status status = MODE_OK;
 	int bpc;
 
@@ -1991,7 +1993,8 @@ intel_hdmi_mode_clock_valid(struct drm_connector *connector, int clock,
 		if (!intel_hdmi_source_bpc_possible(display, bpc))
 			continue;
 
-		if (!intel_hdmi_sink_bpc_possible(connector, bpc, has_hdmi_sink, sink_format))
+		if (!intel_hdmi_sink_bpc_possible(&connector->base, bpc, has_hdmi_sink,
+						  sink_format))
 			continue;
 
 		status = hdmi_port_clock_valid(hdmi, tmds_clock, true, has_hdmi_sink);
@@ -2006,15 +2009,16 @@ intel_hdmi_mode_clock_valid(struct drm_connector *connector, int clock,
 }
 
 static enum drm_mode_status
-intel_hdmi_mode_valid(struct drm_connector *connector,
+intel_hdmi_mode_valid(struct drm_connector *_connector,
 		      const struct drm_display_mode *mode)
 {
-	struct intel_display *display = to_intel_display(connector->dev);
-	struct intel_hdmi *hdmi = intel_attached_hdmi(to_intel_connector(connector));
+	struct intel_connector *connector = to_intel_connector(_connector);
+	struct intel_display *display = to_intel_display(connector);
+	struct intel_hdmi *hdmi = intel_attached_hdmi(connector);
 	enum drm_mode_status status;
 	int clock = mode->clock;
-	int max_dotclk = to_i915(connector->dev)->display.cdclk.max_dotclk_freq;
-	bool has_hdmi_sink = intel_has_hdmi_sink(hdmi, connector->state);
+	int max_dotclk = display->cdclk.max_dotclk_freq;
+	bool has_hdmi_sink = intel_has_hdmi_sink(hdmi, connector->base.state);
 	bool ycbcr_420_only;
 	enum intel_output_format sink_format;
 
@@ -2043,22 +2047,23 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
 	if (clock > 600000)
 		return MODE_CLOCK_HIGH;
 
-	ycbcr_420_only = drm_mode_is_420_only(&connector->display_info, mode);
+	ycbcr_420_only = drm_mode_is_420_only(&connector->base.display_info, mode);
 
 	if (ycbcr_420_only)
 		sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
 	else
 		sink_format = INTEL_OUTPUT_FORMAT_RGB;
 
-	status = intel_hdmi_mode_clock_valid(connector, clock, has_hdmi_sink, sink_format);
+	status = intel_hdmi_mode_clock_valid(&connector->base, clock, has_hdmi_sink, sink_format);
 	if (status != MODE_OK) {
 		if (ycbcr_420_only ||
-		    !connector->ycbcr_420_allowed ||
-		    !drm_mode_is_420_also(&connector->display_info, mode))
+		    !connector->base.ycbcr_420_allowed ||
+		    !drm_mode_is_420_also(&connector->base.display_info, mode))
 			return status;
 
 		sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
-		status = intel_hdmi_mode_clock_valid(connector, clock, has_hdmi_sink, sink_format);
+		status = intel_hdmi_mode_clock_valid(&connector->base, clock, has_hdmi_sink,
+						     sink_format);
 		if (status != MODE_OK)
 			return status;
 	}
@@ -2069,16 +2074,16 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
 bool intel_hdmi_bpc_possible(const struct intel_crtc_state *crtc_state,
 			     int bpc, bool has_hdmi_sink)
 {
-	struct drm_atomic_state *state = crtc_state->uapi.state;
-	struct drm_connector_state *connector_state;
-	struct drm_connector *connector;
+	struct intel_atomic_state *state = to_intel_atomic_state(crtc_state->uapi.state);
+	struct intel_digital_connector_state *connector_state;
+	struct intel_connector *connector;
 	int i;
 
-	for_each_new_connector_in_state(state, connector, connector_state, i) {
-		if (connector_state->crtc != crtc_state->uapi.crtc)
+	for_each_new_intel_connector_in_state(state, connector, connector_state, i) {
+		if (connector_state->base.crtc != crtc_state->uapi.crtc)
 			continue;
 
-		if (!intel_hdmi_sink_bpc_possible(connector, bpc, has_hdmi_sink,
+		if (!intel_hdmi_sink_bpc_possible(&connector->base, bpc, has_hdmi_sink,
 						  crtc_state->sink_format))
 			return false;
 	}
@@ -2206,7 +2211,7 @@ static bool intel_hdmi_has_audio(struct intel_encoder *encoder,
 				 const struct intel_crtc_state *crtc_state,
 				 const struct drm_connector_state *conn_state)
 {
-	struct drm_connector *connector = conn_state->connector;
+	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	const struct intel_digital_connector_state *intel_conn_state =
 		to_intel_digital_connector_state(conn_state);
 
@@ -2214,7 +2219,7 @@ static bool intel_hdmi_has_audio(struct intel_encoder *encoder,
 		return false;
 
 	if (intel_conn_state->force_audio == HDMI_AUDIO_AUTO)
-		return connector->display_info.has_audio;
+		return connector->base.display_info.has_audio;
 	else
 		return intel_conn_state->force_audio == HDMI_AUDIO_ON;
 }
@@ -2318,14 +2323,14 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 {
 	struct intel_display *display = to_intel_display(encoder);
 	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
-	struct drm_connector *connector = conn_state->connector;
-	struct drm_scdc *scdc = &connector->display_info.hdmi.scdc;
+	struct intel_connector *connector = to_intel_connector(conn_state->connector);
+	struct drm_scdc *scdc = &connector->base.display_info.hdmi.scdc;
 	int ret;
 
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
 
-	if (!connector->interlace_allowed &&
+	if (!connector->base.interlace_allowed &&
 	    adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
 		return -EINVAL;
 
@@ -2420,24 +2425,26 @@ void intel_hdmi_encoder_shutdown(struct intel_encoder *encoder)
 }
 
 static void
-intel_hdmi_unset_edid(struct drm_connector *connector)
+intel_hdmi_unset_edid(struct drm_connector *_connector)
 {
-	struct intel_hdmi *intel_hdmi = intel_attached_hdmi(to_intel_connector(connector));
+	struct intel_connector *connector = to_intel_connector(_connector);
+	struct intel_hdmi *intel_hdmi = intel_attached_hdmi(connector);
 
 	intel_hdmi->dp_dual_mode.type = DRM_DP_DUAL_MODE_NONE;
 	intel_hdmi->dp_dual_mode.max_tmds_clock = 0;
 
-	drm_edid_free(to_intel_connector(connector)->detect_edid);
-	to_intel_connector(connector)->detect_edid = NULL;
+	drm_edid_free(connector->detect_edid);
+	connector->detect_edid = NULL;
 }
 
 static void
-intel_hdmi_dp_dual_mode_detect(struct drm_connector *connector)
+intel_hdmi_dp_dual_mode_detect(struct drm_connector *_connector)
 {
-	struct intel_display *display = to_intel_display(connector->dev);
-	struct intel_hdmi *hdmi = intel_attached_hdmi(to_intel_connector(connector));
+	struct intel_connector *connector = to_intel_connector(_connector);
+	struct intel_display *display = to_intel_display(connector);
+	struct intel_hdmi *hdmi = intel_attached_hdmi(connector);
 	struct intel_encoder *encoder = &hdmi_to_dig_port(hdmi)->base;
-	struct i2c_adapter *ddc = connector->ddc;
+	struct i2c_adapter *ddc = connector->base.ddc;
 	enum drm_dp_dual_mode_type type;
 
 	type = drm_dp_dual_mode_detect(display->drm, ddc);
@@ -2452,7 +2459,7 @@ intel_hdmi_dp_dual_mode_detect(struct drm_connector *connector)
 	 * if the port is a dual mode capable DP port.
 	 */
 	if (type == DRM_DP_DUAL_MODE_UNKNOWN) {
-		if (!connector->force &&
+		if (!connector->base.force &&
 		    intel_bios_encoder_supports_dp_dual_mode(encoder->devdata)) {
 			drm_dbg_kms(display->drm,
 				    "Assuming DP dual mode adaptor presence based on VBT\n");
@@ -2484,34 +2491,35 @@ intel_hdmi_dp_dual_mode_detect(struct drm_connector *connector)
 }
 
 static bool
-intel_hdmi_set_edid(struct drm_connector *connector)
+intel_hdmi_set_edid(struct drm_connector *_connector)
 {
-	struct intel_display *display = to_intel_display(connector->dev);
-	struct intel_hdmi *intel_hdmi = intel_attached_hdmi(to_intel_connector(connector));
-	struct i2c_adapter *ddc = connector->ddc;
+	struct intel_connector *connector = to_intel_connector(_connector);
+	struct intel_display *display = to_intel_display(connector);
+	struct intel_hdmi *intel_hdmi = intel_attached_hdmi(connector);
+	struct i2c_adapter *ddc = connector->base.ddc;
 	intel_wakeref_t wakeref;
 	const struct drm_edid *drm_edid;
 	bool connected = false;
 
 	wakeref = intel_display_power_get(display, POWER_DOMAIN_GMBUS);
 
-	drm_edid = drm_edid_read_ddc(connector, ddc);
+	drm_edid = drm_edid_read_ddc(&connector->base, ddc);
 
 	if (!drm_edid && !intel_gmbus_is_forced_bit(ddc)) {
 		drm_dbg_kms(display->drm,
 			    "HDMI GMBUS EDID read failed, retry using GPIO bit-banging\n");
 		intel_gmbus_force_bit(ddc, true);
-		drm_edid = drm_edid_read_ddc(connector, ddc);
+		drm_edid = drm_edid_read_ddc(&connector->base, ddc);
 		intel_gmbus_force_bit(ddc, false);
 	}
 
 	/* Below we depend on display info having been updated */
-	drm_edid_connector_update(connector, drm_edid);
+	drm_edid_connector_update(&connector->base, drm_edid);
 
-	to_intel_connector(connector)->detect_edid = drm_edid;
+	connector->detect_edid = drm_edid;
 
 	if (drm_edid_is_digital(drm_edid)) {
-		intel_hdmi_dp_dual_mode_detect(connector);
+		intel_hdmi_dp_dual_mode_detect(&connector->base);
 
 		connected = true;
 	}
@@ -2519,28 +2527,29 @@ intel_hdmi_set_edid(struct drm_connector *connector)
 	intel_display_power_put(display, POWER_DOMAIN_GMBUS, wakeref);
 
 	cec_notifier_set_phys_addr(intel_hdmi->cec_notifier,
-				   connector->display_info.source_physical_address);
+				   connector->base.display_info.source_physical_address);
 
 	return connected;
 }
 
 static enum drm_connector_status
-intel_hdmi_detect(struct drm_connector *connector, bool force)
+intel_hdmi_detect(struct drm_connector *_connector, bool force)
 {
-	struct intel_display *display = to_intel_display(connector->dev);
+	struct intel_connector *connector = to_intel_connector(_connector);
+	struct intel_display *display = to_intel_display(connector);
 	enum drm_connector_status status = connector_status_disconnected;
-	struct intel_hdmi *intel_hdmi = intel_attached_hdmi(to_intel_connector(connector));
+	struct intel_hdmi *intel_hdmi = intel_attached_hdmi(connector);
 	struct intel_encoder *encoder = &hdmi_to_dig_port(intel_hdmi)->base;
 	intel_wakeref_t wakeref;
 
 	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s]\n",
-		    connector->base.id, connector->name);
+		    connector->base.base.id, connector->base.name);
 
 	if (!intel_display_device_enabled(display))
 		return connector_status_disconnected;
 
 	if (!intel_display_driver_check_access(display))
-		return connector->status;
+		return connector->base.status;
 
 	wakeref = intel_display_power_get(display, POWER_DOMAIN_GMBUS);
 
@@ -2548,9 +2557,9 @@ intel_hdmi_detect(struct drm_connector *connector, bool force)
 	    !intel_digital_port_connected(encoder))
 		goto out;
 
-	intel_hdmi_unset_edid(connector);
+	intel_hdmi_unset_edid(&connector->base);
 
-	if (intel_hdmi_set_edid(connector))
+	if (intel_hdmi_set_edid(&connector->base))
 		status = connector_status_connected;
 
 out:
@@ -2563,49 +2572,54 @@ intel_hdmi_detect(struct drm_connector *connector, bool force)
 }
 
 static void
-intel_hdmi_force(struct drm_connector *connector)
+intel_hdmi_force(struct drm_connector *_connector)
 {
-	struct intel_display *display = to_intel_display(connector->dev);
+	struct intel_connector *connector = to_intel_connector(_connector);
+	struct intel_display *display = to_intel_display(connector);
 
 	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s]\n",
-		    connector->base.id, connector->name);
+		    connector->base.base.id, connector->base.name);
 
 	if (!intel_display_driver_check_access(display))
 		return;
 
-	intel_hdmi_unset_edid(connector);
+	intel_hdmi_unset_edid(&connector->base);
 
-	if (connector->status != connector_status_connected)
+	if (connector->base.status != connector_status_connected)
 		return;
 
-	intel_hdmi_set_edid(connector);
+	intel_hdmi_set_edid(&connector->base);
 }
 
-static int intel_hdmi_get_modes(struct drm_connector *connector)
+static int intel_hdmi_get_modes(struct drm_connector *_connector)
 {
+	struct intel_connector *connector = to_intel_connector(_connector);
+
 	/* drm_edid_connector_update() done in ->detect() or ->force() */
-	return drm_edid_connector_add_modes(connector);
+	return drm_edid_connector_add_modes(&connector->base);
 }
 
 static int
-intel_hdmi_connector_register(struct drm_connector *connector)
+intel_hdmi_connector_register(struct drm_connector *_connector)
 {
+	struct intel_connector *connector = to_intel_connector(_connector);
 	int ret;
 
-	ret = intel_connector_register(connector);
+	ret = intel_connector_register(&connector->base);
 	if (ret)
 		return ret;
 
 	return ret;
 }
 
-static void intel_hdmi_connector_unregister(struct drm_connector *connector)
+static void intel_hdmi_connector_unregister(struct drm_connector *_connector)
 {
-	struct cec_notifier *n = intel_attached_hdmi(to_intel_connector(connector))->cec_notifier;
+	struct intel_connector *connector = to_intel_connector(_connector);
+	struct cec_notifier *n = intel_attached_hdmi(connector)->cec_notifier;
 
 	cec_notifier_conn_unregister(n);
 
-	intel_connector_unregister(connector);
+	intel_connector_unregister(&connector->base);
 }
 
 static const struct drm_connector_funcs intel_hdmi_connector_funcs = {
@@ -2621,15 +2635,16 @@ static const struct drm_connector_funcs intel_hdmi_connector_funcs = {
 	.atomic_duplicate_state = intel_digital_connector_duplicate_state,
 };
 
-static int intel_hdmi_connector_atomic_check(struct drm_connector *connector,
+static int intel_hdmi_connector_atomic_check(struct drm_connector *_connector,
 					     struct drm_atomic_state *state)
 {
-	struct intel_display *display = to_intel_display(connector->dev);
+	struct intel_connector *connector = to_intel_connector(_connector);
+	struct intel_display *display = to_intel_display(connector);
 
 	if (HAS_DDI(display))
-		return intel_digital_connector_atomic_check(connector, state);
+		return intel_digital_connector_atomic_check(&connector->base, state);
 	else
-		return g4x_hdmi_connector_atomic_check(connector, state);
+		return g4x_hdmi_connector_atomic_check(&connector->base, state);
 }
 
 static const struct drm_connector_helper_funcs intel_hdmi_connector_helper_funcs = {
@@ -2639,22 +2654,23 @@ static const struct drm_connector_helper_funcs intel_hdmi_connector_helper_funcs
 };
 
 static void
-intel_hdmi_add_properties(struct intel_hdmi *intel_hdmi, struct drm_connector *connector)
+intel_hdmi_add_properties(struct intel_hdmi *intel_hdmi, struct drm_connector *_connector)
 {
+	struct intel_connector *connector = to_intel_connector(_connector);
 	struct intel_display *display = to_intel_display(intel_hdmi);
 
-	intel_attach_force_audio_property(connector);
-	intel_attach_broadcast_rgb_property(connector);
-	intel_attach_aspect_ratio_property(connector);
+	intel_attach_force_audio_property(&connector->base);
+	intel_attach_broadcast_rgb_property(&connector->base);
+	intel_attach_aspect_ratio_property(&connector->base);
 
-	intel_attach_hdmi_colorspace_property(connector);
-	drm_connector_attach_content_type_property(connector);
+	intel_attach_hdmi_colorspace_property(&connector->base);
+	drm_connector_attach_content_type_property(&connector->base);
 
 	if (DISPLAY_VER(display) >= 10)
-		drm_connector_attach_hdr_output_metadata_property(connector);
+		drm_connector_attach_hdr_output_metadata_property(&connector->base);
 
 	if (!HAS_GMCH(display))
-		drm_connector_attach_max_bpc_property(connector, 8, 12);
+		drm_connector_attach_max_bpc_property(&connector->base, 8, 12);
 }
 
 /*
@@ -2676,25 +2692,26 @@ intel_hdmi_add_properties(struct intel_hdmi *intel_hdmi, struct drm_connector *c
  * True on success, false on failure.
  */
 bool intel_hdmi_handle_sink_scrambling(struct intel_encoder *encoder,
-				       struct drm_connector *connector,
+				       struct drm_connector *_connector,
 				       bool high_tmds_clock_ratio,
 				       bool scrambling)
 {
+	struct intel_connector *connector = to_intel_connector(_connector);
 	struct intel_display *display = to_intel_display(encoder);
 	struct drm_scrambling *sink_scrambling =
-		&connector->display_info.hdmi.scdc.scrambling;
+		&connector->base.display_info.hdmi.scdc.scrambling;
 
 	if (!sink_scrambling->supported)
 		return true;
 
 	drm_dbg_kms(display->drm,
 		    "[CONNECTOR:%d:%s] scrambling=%s, TMDS bit clock ratio=1/%d\n",
-		    connector->base.id, connector->name,
+		    connector->base.base.id, connector->base.name,
 		    str_yes_no(scrambling), high_tmds_clock_ratio ? 40 : 10);
 
 	/* Set TMDS bit clock ratio to 1/40 or 1/10, and enable/disable scrambling */
-	return drm_scdc_set_high_tmds_clock_ratio(connector, high_tmds_clock_ratio) &&
-		drm_scdc_set_scrambling(connector, scrambling);
+	return drm_scdc_set_high_tmds_clock_ratio(&connector->base, high_tmds_clock_ratio) &&
+		drm_scdc_set_scrambling(&connector->base, scrambling);
 }
 
 static u8 chv_encoder_to_ddc_pin(struct intel_encoder *encoder)
-- 
2.44.2

