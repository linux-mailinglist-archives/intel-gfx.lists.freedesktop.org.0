Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7402AAB1BE7
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 20:04:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 257D010E125;
	Fri,  9 May 2025 18:04:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dMhi8o4y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D17E10E067;
 Fri,  9 May 2025 18:03:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746813837; x=1778349837;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=Gbn5BSTb1G9LnXm6mn5MXPKDssjvYYpD6IYhkihVXyA=;
 b=dMhi8o4yi/YAW9sqJFqkE2gK07acKsOL+eLqSbr2K9B831glLnR8hQX1
 hVv1H8E2N1+kUfHkV7BZTbZV+GZPp+cCDQ5VVjtSUMOcFCCWVs6rKvXKq
 so9jK5QlAbEE1kgtzV5EjRtGY3/sIvLgZtmyNbYtuIn7ajndvNC471jqN
 /pFBuATXHqPVcA4azbR9IfQnBbxcuJGKRaEMXLgYajYdBtNmolVh8+CIL
 lLlAQStGMGJZ8eysI5udRnuBMnWYb8XQFtUnTWpoIiEzq8FZNynTJQ6cN
 jot9VeOByb5X31DBQRMBuixEHRkBHO8XzvQH/1knjTlT0THL8YTi5zAjs g==;
X-CSE-ConnectionGUID: iBiSpEuaTaC3GwXKSd4caQ==
X-CSE-MsgGUID: lgL+178WToSmJTRdFddc8A==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="48349984"
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="48349984"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 11:03:51 -0700
X-CSE-ConnectionGUID: oRI6H5G0SamgyN5fSusk4g==
X-CSE-MsgGUID: jJH2NMY9TiCWJg0xLM5BAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="141802945"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 11:03:51 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 9 May 2025 11:03:51 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 9 May 2025 11:03:51 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 9 May 2025 11:03:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=spVMZQBoLC9jZpYDS+OpY6yXE75X3v8tpx77NyzUTNE72sa/3CWGj2m5HfgvjeVgXTNJnCWEyfAZl6GU773F2JbAey+5wM4RznEPw2lyoFZjGS6Ri941NB7DVcNJPSKuuUobX4/DkluPKTzVkkdLe+fgBF+9rrhuS1JONMgyPmtkamofRZbapjy+acgX63MQgItOxoGp0te6Mh6qi4nu5KyPEG2ofMVNFMUryZX5XEconIxBZL7cNC8cut3xfBNHYSE2WBGdrWrMoHA6KeZHam9BPNMCS673AOW0i5Pwsk/k2KJ2r2vo6+p27U+stnrvYChcywRzNJgC5zEWxk7Ulg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KRfMQl9riTtad2CGtZW16uxhjWJTGByJOMnJSKXXUi8=;
 b=sdiU1CUi+I54JSGRJQ8W973xfH8NXSqQ6+B16a3IQQcT0pz1G6qpLGaeWa66g8VQDwT3IZF8wSioYT5F9H4649BSnJh4zE0/VAaTjjRtvy0q6oH4QD8IRPavl5jrjqeJn20b7l7OV5tgETzN2CZiiin1pCu7Bi5jCKzVFbNGjkGPBvMm5nuCGHlyrQkjmZZyQa5rzm7O1rduyujtEBA3XNr1theGqIJaS5ezWxaCT8knGcppyC7vxf4VjFk1ihAwz6RdM9pIzXRnxfIzAXegVhMTIbdRA6jzcHcgJZ+yec/+4Ms7Go7jJjNhWyzSWymlHSArXW3HdJXNtIQ5gVFoJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY8PR11MB7393.namprd11.prod.outlook.com (2603:10b6:930:84::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.25; Fri, 9 May
 2025 18:03:48 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8722.020; Fri, 9 May 2025
 18:03:47 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Luca Coelho <luciano.coelho@intel.com>, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>
Subject: [PATCH v3 07/12] drm/i915/dp: Limit max link bpp properly to a
 fractional value on SST
Date: Fri, 9 May 2025 21:03:34 +0300
Message-ID: <20250509180340.554867-8-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250509180340.554867-1-imre.deak@intel.com>
References: <20250509180340.554867-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO2P265CA0500.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:13b::7) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY8PR11MB7393:EE_
X-MS-Office365-Filtering-Correlation-Id: c11b4101-59ce-45e2-c99d-08dd8f23d814
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?4wHWlwybYkGWrs4J4nMVqUvYldL7amn+0CefGRC23hbwH6ygHAxSmCDoaZlo?=
 =?us-ascii?Q?U/f1tDW1B+cRZF1kqKVFiG8Zmcr0CXcPXhKACwKk/iz06aV2LytKlsoX+jfL?=
 =?us-ascii?Q?G/ucxrCkUySu6/gMo50X3QDTxTVuIC42SUyFIVqHOpDj6VKAcCghWlTIkYtE?=
 =?us-ascii?Q?gtg00JlHkGEB/AMLhs6F97DD4NtVy5FQmaWmwO0maibH//q9I/LJPZaVjmgK?=
 =?us-ascii?Q?u5DEasdgKoCeKvXVcCLyGz3RJzpjeLmoRU7E8puRruN3P2e+9qk4udVnVLhs?=
 =?us-ascii?Q?QbLWJ/GDrMKE8+kwhA1lMsAtZSpoKxkVM5Z/RFECHrNcIUCBPCynrYe4jDUo?=
 =?us-ascii?Q?97NC22V0PI+8X+rlKxCIG+ZQQAe9FRrM13yaWVfvKHen/D+9YoEIK6feqTEB?=
 =?us-ascii?Q?YMsZ00FgRdsLETZpHhqlZzpgi3j0JxTYui2P8UvPGYkKyw1ObqX6QJiUQdIs?=
 =?us-ascii?Q?c3Mv1CkxWjuNAB3zOfNMvzYmUsssWEkNo4GRa/VqdpGTTynxHkAl999qqe2i?=
 =?us-ascii?Q?zByR6X6eb69YteiNWEHaQxiHfrRb6uw49Jwp/hfaRiH6gwohcbT2leEX00e7?=
 =?us-ascii?Q?lrH0UqfH/KWYODYpwnkMuuberjgPQNBJmIwXA52+/TPe01tFUckSPMY09XoP?=
 =?us-ascii?Q?SXx2Amc1mHve2A2GUvYFlpYUdbwDEGOX5kmakd0eyAtCP0NoJR0C/vDgc2vU?=
 =?us-ascii?Q?+AlD5Su+6iUPvR+t4on1TkvniYgedwJ1zXnK2U7eV0dnePpw1YynFG/u475v?=
 =?us-ascii?Q?Hvo2HgSpVM8jBzap5GOMy3c1/hMu2Z76bkDIkGNwi5oIJp0RYghzMT6FRYnJ?=
 =?us-ascii?Q?vsF6bGKh/k6Jq8AL2+HBbFJHxeJyEbuGtVem5mVpPwaCuFs0WMFEGzFSpvrr?=
 =?us-ascii?Q?5vMydjrlPB4m5mzUdh1SkLqrebq8vg8xm19R9YIZq8eA+i8ursv5wzdctPQC?=
 =?us-ascii?Q?hMMKRcUxO3WqZWlMSWgOeHlJXdnob9HE7ImJza7YVMJwq72bIJphGxxZflAh?=
 =?us-ascii?Q?NI6Hzoa24iNZszR0ZB6w6A+FTDG//kqqXdj7rxt12bJiCU1s3g2pXYrB8DuR?=
 =?us-ascii?Q?+U1wZwKzDZKCq2yeNQf3zPxJ3V7ch/AjPMeUvu6zBbPUGtfNXptOV4kOhNP8?=
 =?us-ascii?Q?IHAsn5qSbq1Rx6TK/vtvQD7BugrsFYNYWeS8XVvXLMHZUclnZT/nC4DINQuw?=
 =?us-ascii?Q?cdWALpHCy29Rm2aEEF+vXSMETbmrRi6FgLuVBTzhjhSzn/xrK31vjJjIUvGU?=
 =?us-ascii?Q?6fp0rFJAtaQs62nAJi8udJxG67XyZAb8uneE6Ioly7nftkHJj3hmJp1ri9bt?=
 =?us-ascii?Q?KlXSRuqhvLyzstFMNuYsynf56/TYEvu4glVOEfX0P7D32zd7xjwmmh8PIDGB?=
 =?us-ascii?Q?gdoycKLVPc0uhoo+unnvpX9TTQBq9TKCPtsOATzeHNg5wU7qjA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ZP4N3wg900iAKaKJbxaCGR0jqVAS4ezjHuODvsIsaBiUyWeQwZNayzxk6m6A?=
 =?us-ascii?Q?QDi3ZX8ZDD7ldTgUjh98lxKry3FXPuzQuS2d+k4QSZPAKltzxe/4OeoINRWV?=
 =?us-ascii?Q?dLX0pcV4SSiYGZbVSU/oAZnzvIGzg8FdCCB64qTw0DDfj2AP/hj9uqFTNK7R?=
 =?us-ascii?Q?sdxlHtYs4rdEo4pjNZDDweUQCdOtXwnr1vWuT8Z3YWtFimK/qCSwOLG2duxz?=
 =?us-ascii?Q?Xe517DhkDamXzo2NrOlPn07fvd2uj41jzFNK0/jgJ+l2SFN8AHg7uozAzwL+?=
 =?us-ascii?Q?hbm51per8hP7TD9/q9II2zuGgHhztD/eg/hvRVDNGkaNx5KJKQPerR1eVmw5?=
 =?us-ascii?Q?K6vXFCQBU83X4PxM6vZeUatMGwshe0/+kdxkQi22DEwwPS/8cmspDhRz+2m4?=
 =?us-ascii?Q?Og+ZF+YpZ5s4pWqjWTOS8RNfanyZ9u9cx8Ongyc5sFCZHXzyRi7ZnhSm3XBE?=
 =?us-ascii?Q?LrNyv7XuzKuodxI0WQ9Yx5GWEQxsdRF1NX6RTr3dmFwNzDh2vOfjCmX+DluX?=
 =?us-ascii?Q?pQpnMWhTdyqbpvW15a0ymhkD201f/G9FiuCNCIoWXlTGmn3zeUBWEkAT4ece?=
 =?us-ascii?Q?7/D+rlf8nHoGZ77NZM87L9RRhUACiQ5whq+sKFW66ysAyJRUMuYrJTO0r/fr?=
 =?us-ascii?Q?d0p720ERATDdws+QDsZAeBzdBNcMuxreEcqKDtajhX7GbSNBo0yn3hMlTAD6?=
 =?us-ascii?Q?DwRBd018iK249Ws2ontwjBHUv3cGNlxFNnx2aXDObJRA2ruUlVC1kGykD8Jv?=
 =?us-ascii?Q?kjdt+eTzpe0fyHEropdMGpWUjCL/8Rwpy0QFLAHP16JKbxMpJifMEe0tQz2A?=
 =?us-ascii?Q?d+JY3ssIqmDX8/FS/RtrDtFP1ZChwvpsVWenoR19xeIZ2e3FFaCzXQ68uL8P?=
 =?us-ascii?Q?iqFbz9btiYJIxvCRrSEPyeJL/5Xfqe9dN0/EqJ61rHtlRw/Nh2E7+q/b/pQd?=
 =?us-ascii?Q?4MqvfNO1gM0isjXf43tdQosE2XXLAlUUAOfiVSYNF43qzifW6Wa+C4Iuvy/H?=
 =?us-ascii?Q?FLYaN0TFVCm5zUnvGAjS6Da3/JR13KZwf/IpogqcBibw5JgusvJaTLzYNFn4?=
 =?us-ascii?Q?or0FcBq4rboIk3gp1XdUp/0J0px0/qJZy0sk2K7t8xUaxa3YpV+HDrWWuKIM?=
 =?us-ascii?Q?s/HCAABl5inubefZXUOCh3P6Dgq+sak7BfGKaa/hCNzDsdYHKashWNR2GyFc?=
 =?us-ascii?Q?Geem6ZlcL/ddcKfTHKKVa7pT+avampRRvcpcHdtaX81A+aOwguNjhy5uqBID?=
 =?us-ascii?Q?FFTJUpG2RL9v7GrOj5gJwxgWcGmnnYUosESSkwTZDBXB5ZKyWOqH130XN86k?=
 =?us-ascii?Q?khceKMe3vAuI/lEA+SchuCGaFsCMLCYbL5EmRqXMNEq/PY4MqJt6GNAt6X4x?=
 =?us-ascii?Q?TlE2eYu+HpsfsaAoeAs/4RhCsQJNfd0LvCxe20buLj1+kILcvN5cQWPIwEG6?=
 =?us-ascii?Q?2TLxs1Zzhd8naRiXe7VzrWYb6zU89oRPADn18mjy4+xZS/jBBzjf87wT6isx?=
 =?us-ascii?Q?2bahMdF9Df1KEaVVTvqiI1lPwvbmfTHfJWi6uexvvrjAG3kuDBgXc6eRQYnQ?=
 =?us-ascii?Q?tfAiyh9vfSAHco4QqnjjGz9o93jeZgkZy6BJni2W?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c11b4101-59ce-45e2-c99d-08dd8f23d814
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2025 18:03:47.2062 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: J9NhwshRZpQ7HLeph0lB8yiCyS5m0NSPItEokowtJpwEHxSeQYWMrED5amedyeAa/KobTEyDkEDOKpoI9ysk0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7393
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

The maximum link bpp - determined by the link BW for instance - can be
fractional, handle this properly during computing the link bpp on SST.

This keeps the pipe joiner specific maximum link bpp as a rounded-down
integer value still, changing that to a fractional value is left for
later.

v2: Align the min/max bpp value to the bpp step.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f8de29d8a4da4..b91c1e43051a1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -27,6 +27,8 @@
 
 #include <linux/export.h>
 #include <linux/i2c.h>
+#include <linux/log2.h>
+#include <linux/math.h>
 #include <linux/notifier.h>
 #include <linux/seq_buf.h>
 #include <linux/slab.h>
@@ -939,6 +941,7 @@ static u32 ultrajoiner_ram_max_bpp(u32 mode_hdisplay)
 	return ultrajoiner_ram_bits() / mode_hdisplay;
 }
 
+/* TODO: return a bpp_x16 value */
 static
 u32 get_max_compressed_bpp_with_joiner(struct intel_display *display,
 				       u32 mode_clock, u32 mode_hdisplay,
@@ -2153,24 +2156,16 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 	const struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	int output_bpp;
-	int dsc_min_bpp;
-	int dsc_max_bpp;
 	int min_bpp_x16, max_bpp_x16, bpp_step_x16;
 	int dsc_joiner_max_bpp;
 	int num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
 	int bpp_x16;
 	int ret;
 
-	dsc_min_bpp = fxp_q4_to_int_roundup(limits->link.min_bpp_x16);
-
 	dsc_joiner_max_bpp = get_max_compressed_bpp_with_joiner(display, adjusted_mode->clock,
 								adjusted_mode->hdisplay,
 								num_joined_pipes);
-	dsc_max_bpp = min(dsc_joiner_max_bpp, fxp_q4_to_int(limits->link.max_bpp_x16));
-
-	/* FIXME: remove the round trip via integers */
-	min_bpp_x16 = fxp_q4_from_int(dsc_min_bpp);
-	max_bpp_x16 = fxp_q4_from_int(dsc_max_bpp);
+	max_bpp_x16 = min(fxp_q4_from_int(dsc_joiner_max_bpp), limits->link.max_bpp_x16);
 
 	bpp_step_x16 = intel_dp_dsc_bpp_step_x16(connector);
 
@@ -2178,6 +2173,10 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 	output_bpp = intel_dp_output_bpp(pipe_config->output_format, pipe_bpp);
 	max_bpp_x16 = min(max_bpp_x16, fxp_q4_from_int(output_bpp) - bpp_step_x16);
 
+	drm_WARN_ON(display->drm, !is_power_of_2(bpp_step_x16));
+	min_bpp_x16 = round_up(limits->link.min_bpp_x16, bpp_step_x16);
+	max_bpp_x16 = round_down(max_bpp_x16, bpp_step_x16);
+
 	for (bpp_x16 = max_bpp_x16; bpp_x16 >= min_bpp_x16; bpp_x16 -= bpp_step_x16) {
 		if (!intel_dp_dsc_valid_compressed_bpp(intel_dp, bpp_x16))
 			continue;
-- 
2.44.2

