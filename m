Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 863E5C8FC8F
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:51:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC49D10E88C;
	Thu, 27 Nov 2025 17:51:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PQ7VYpyJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6F4510E886;
 Thu, 27 Nov 2025 17:51:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265889; x=1795801889;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=mFwPkjVhsS+fcfeGa0RWA6HjNU6GUjDTOkhFkp2vIlU=;
 b=PQ7VYpyJfBALtowFvvuFFqJ6uEv5/sBw/wVn4/CtcTiPjD+Go97uUSJQ
 17nDRX5yPiwk/AQ+xoGisuk/mh1Eaj0h+Owpv4RHHlouzaSxr+Afaugdn
 sL3Nh9u2d5RW/ZdhQd+7f6SuEtDdFmologtxFPEXSqGAhM37O/IA1gOkB
 frf0d8Z2b4lERFfjzQKKZzgXcoQGfNjesVMy40VpuYNPrMHVJDKkhDgbe
 osjzuLDJqfzY/aDvDdSAaDVv6XdNJhXDqgHG1p4Ne1gFFit8bcQYL68Ud
 +Vty4HEj3wap+lbuv/SovbRyPjc/r8J37IhH2wqxURxxO7EAdql1h98zM Q==;
X-CSE-ConnectionGUID: 7076TZ+FSg683BgzQgknhg==
X-CSE-MsgGUID: /ac+nKM8T6qBAugWgkKczQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="77002994"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="77002994"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:28 -0800
X-CSE-ConnectionGUID: 8UKxpaNsRpahAoNH7izlxg==
X-CSE-MsgGUID: FQZ14DJpQVCZvPURi5fmbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="197453629"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:28 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:26 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:51:26 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.53) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xajenUKiR+pG9jKn7Cf9WW/vnoUrenjLcCShrXoUfJGsSwePLK6ipmblLFSfiyXfqyFempqVyCsHfsJ+Kb0LiCpQMmhsK+vIVCV+EbvRfq8bxqsJEl/crPbjmcegqD4Ucobkdvw9qZsahpZKeIFSpQ0EJ9XuqBL9ff/lq0vi3Iz/JDYAakOcpu/ZGZSox4AN7zRlxXZdSgCMn8D3r0glj16UiCIwkSHlcsH6zHtyr99n6d+BYwmwBXBxcS7FHXwXDRIgaLvAOsgRnlzcC6Ww58iKKhJIh0P0Q4JkAosR7Df2hmmJOS08fnEChgCGmwRwo34zhGb0B+4w1Udabwstaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9+y+XY26GF15j20EZUVSIcJW8nwuWeIeGAHtOGgHTJ8=;
 b=Vk4kGTIp9/Ky1uM7eYOyLkuauTvwB5yY3Kk7fTmiuaGeyaG43XysvVGyj88ayJIasYROCaDzSWzcCrcNzrmtPXLSqCxl7tzqyHZBM61CCQ1mWHYn2tMXA6fPVPFWZt2NvZ7kZvc1LQK4cwCp97ljae+Xxfv6JpADlcj6sd1ouCK67hzfNKYheLsxDIMKny0KVrif7x7k0W+pW1hmXXH9iwdgEg4LGTb9G3KwNhX25j+8tknWBR3xKaPRDA/ICjQPyM0SS+CUdhIk+A7nIdfyB01mPRmJayMmLcgNzldzAe59zD3TSMHBIueCh4na58lYtUCXdxf0jyHMzss1aOfO6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH7PR11MB8550.namprd11.prod.outlook.com (2603:10b6:510:30c::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Thu, 27 Nov
 2025 17:51:23 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:51:23 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 26/50] drm/i915/dp: Factor out compute_max_compressed_bpp_x16()
Date: Thu, 27 Nov 2025 19:49:59 +0200
Message-ID: <20251127175023.1522538-27-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251127175023.1522538-1-imre.deak@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P265CA0255.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:37c::20) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH7PR11MB8550:EE_
X-MS-Office365-Filtering-Correlation-Id: 8e301bb3-1d92-4f60-f948-08de2ddd940b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?bTrsyAUwenQqJzwhmyxcQdcaUs02i0vOlHB6Xv7SVF0Y728XobpyWj6JQ4q5?=
 =?us-ascii?Q?RD4TWM7vdYc/lYKQw4meJQQY3CPfnTtqtytxQkHUdaCpPiZYIB8rtUy8v038?=
 =?us-ascii?Q?/WRplbGUIp5xfiEedkgM6Nm/61IaBfJTN48TboyeqwOMr2LbbwDI/XjAApt1?=
 =?us-ascii?Q?IlQiqqBTcrWKwlHoCyoTK7ozHVUOyM8Yr1vVPjPRSnJiMOvRKlirMR2r/grv?=
 =?us-ascii?Q?glZ+QBBMw7pI5vb/VyeAWt7TxAmJBiKUTND24ZnLXk4gstTmPgUjD5GEmnd5?=
 =?us-ascii?Q?qbwV9rpEFAjVbqrp7qTP6LV6GQzBbnkFIsVKiZFy05/WQmQZ4rL6plFzQNaE?=
 =?us-ascii?Q?tnIgxQRhxWGCqRVb0hwIycYoR7LjfnYLATIF6B0dmWKrubZLlNR1KT2+4Qlh?=
 =?us-ascii?Q?K7OWaDVXL4pU2y1vkXihM9rlUd9o0cPI1G/R2bQboFMRZY3/i+HNfWNS2qk8?=
 =?us-ascii?Q?kM6XzjFM1J3BiVhTGLre40AnXDdVtmlyNTMmce1dB29l2OnC4/JFh1jwaIfm?=
 =?us-ascii?Q?O2RUZWCIWd2x2ya4vHieTEr2HSbXQIhNqTbsRJ9nI/UP5wlsoj/s31cx72Sl?=
 =?us-ascii?Q?271jpDFxMYSbI2t21gXcrLofRaVhFkutywmYF9dFin51+EZx6C2OXyNs++je?=
 =?us-ascii?Q?9yPzbZO8NsSAZGHUWQJ6KeRpvmw1X3adLtEsPPvl4LmZ+UT/FJL0LHpX3Irn?=
 =?us-ascii?Q?tGQ14XFqwvMLxFL6sg+2O0gdGO6a9wH9kx+mypkPVNjB0uL+VgyyTJltbddo?=
 =?us-ascii?Q?bHPT+g0jXtXT+Be1ydXpXw49juj66NTmdmmPvRV1ebIYuHuRM3R7T/rd/5u/?=
 =?us-ascii?Q?BogGr06dBzSENwPCpsGpEITx7pL2CNXb9qTTfKcYwYJygER+em2Ksr+elKbo?=
 =?us-ascii?Q?2Kk7wX6JQdsWKA9kI0oAzE7vUgj5+ewj4Jv41p1nCcXZDuBvYKBmHIC+NUSh?=
 =?us-ascii?Q?HAAz1FDck2SQzchk2618mxkbHIX12bnLTtJdT2uEyz5pZF9emmWIDaHEbRss?=
 =?us-ascii?Q?1rH8rNSrDTS5JrDjCKVrkMsXT4NbvdVm+FoCBSbUIOcolrEeEC7cPL5Ij1xt?=
 =?us-ascii?Q?lreSD2Pz/jNDgwgDWnov4ycnCwI6SaWIS3AmBn0h3tpL/nqyb6klCyeeO9d5?=
 =?us-ascii?Q?RrsopBMYqtcvxlYcw0LLgDXvTq6/5vWj/PKlSlWX9aAlx+NCdpcDRy7WVWUQ?=
 =?us-ascii?Q?AXl8xYRTbZZPdYzUE6cYd8nVnA14sbXerBVA0Z9TGyjzPQiIZwKX98crwJ4G?=
 =?us-ascii?Q?gHccTzaY8S5gfucX4eZNqE4iVu59I+Wfdbv+aS81xIU8wSDMxVM0E1wnVILR?=
 =?us-ascii?Q?GEIkrdoH6OdrKCbZlZIce5Ewa/4psBZMPAhKwyCsYKCB1OjCD8yMzBeoaMdC?=
 =?us-ascii?Q?sqy/ikbQueGUSi8ArsOJ0R9j60crwwt721VuH9fVT9xsX7RjG7GFl3dPVMm9?=
 =?us-ascii?Q?qIq1nK2ve9WLKyoJN1DR8S45wqvNpDpR?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?I+od84kBOA5moMglsGRmP6ks9J/ZcDSfu3oAxqAgF5qDXdn1/SnSDmkuwuev?=
 =?us-ascii?Q?W9gHigb13FpBgZC4Gv48sXhHKtvafhQweHHzVJvOsBU69mgawMXGXU2FHbCM?=
 =?us-ascii?Q?sEHibzfRI7V0ISBudkhMQlMpyixxkpq7GJhtMUJCP80Y2aBHmo5mI5V+c4Dp?=
 =?us-ascii?Q?pjeghU9SEPdh0BdGw3JnljXaYuYPx0GJjMEoZHvaSruc0xRAwZZKEHQurS0d?=
 =?us-ascii?Q?duL0dTtXtsMw5IJb4UxpyJNqm31pvYwGZ16w1QB4BClCFV6C0ywcErf9MIuy?=
 =?us-ascii?Q?Y2vLdKVHOluijWUyP7aHvGzh5HH3gs7dPgivnBdv95FjThehylPVLKbQ2LIH?=
 =?us-ascii?Q?7z11Pc6Lo962wGTJMvJJciYg2se4WNHlxxvsJIyiwiRgZz8Ja8gs62wb1hJj?=
 =?us-ascii?Q?Grl7lSZnuueIaCKggVsxZ/otap0jPemZkrPfgVcB9mw7XG84qmDbfP4EoFQL?=
 =?us-ascii?Q?vwGQWKvKFNEGcHFOVcEC86vRioZvJvhaYGwZqLo9TxfB/QcDRhAvq9eR1ePM?=
 =?us-ascii?Q?UhMZqKGfmv2CSIq3w/4rJ4iNa+1BcYwgjMI3lsTpNjwfVWkr1sg1pvns2d6N?=
 =?us-ascii?Q?LaSeuXk3B2QBXZzldmKd3F/bErKJuuup93Ss8kUZS3k3Gm4NSu4Qm2mp1nwX?=
 =?us-ascii?Q?Nqt2ck1ObkI00EfIOfuWGnlzD9a8TTdahM+Oj4E1TlJzAAFgcWrdmdAiZdAw?=
 =?us-ascii?Q?ajJdy00zgfp+NalJQj+JM8m3YvyKqJyM6GHqJZA/Fp70px3JWqMXn7p8FCEq?=
 =?us-ascii?Q?Vj9oBnOTYDWiCwbQIMS4NDAp7lqkjzM3T/gUYeu3X6yUbbAD42SEt8DrNual?=
 =?us-ascii?Q?Qr8VtaurjXsnKkDdsLMXXkGqdaswxk1wVG27F/E6+Q04DpbcRXo4my++xlqV?=
 =?us-ascii?Q?fNjhpJ34K1waqRGTOxpDRLYOPX85z7UzxRyo8gNXa1tY9g8zZrNNMfSVCP/U?=
 =?us-ascii?Q?OMk/F5Q2EyXojleaFyyXBrNjroeDSXkvqkKbfpVS2Z1LTkNOjabMWLy+uwNl?=
 =?us-ascii?Q?IZVEIm2FHa9ihdJB/Mf0b9P8DjvwhxasteQsfJTUKLt96y4WBO8NnAt0zHOL?=
 =?us-ascii?Q?UOvFr+w8rqTAmrZMltz5jjzgWn0DWN7PnPUtkjseKrg6If4Cj+PxjHfxRn8a?=
 =?us-ascii?Q?ZfKUdQ7S2DMKDSvjnegpdNJm5/xzGU1z/3ZLdtVe0VvnlGhwFFN0TlxANEBF?=
 =?us-ascii?Q?JZ5XPllZ+OWZ3PPzvxOYGzG0qhcXP2puchdZh+IPXlGF/DKobP9YS8eYdP+R?=
 =?us-ascii?Q?4EZ1sRtFaAMp9wLfbLEcjvcjkSZrpE1bBGD1vw/JhAl5iLen3Vy76sBooSVj?=
 =?us-ascii?Q?jbeY43jXr9B72qJWiD0yKvQR7EdLrDacpj6uJhKWSxg+CkMIG71WZdaAzAjU?=
 =?us-ascii?Q?elL++u8SoBxHSIAPLZwilVJ/BNjkzK0ZcCp2gzSGKDxrVjAahKMHwm8lfF30?=
 =?us-ascii?Q?el9rYTs7z9mQ5wfPQUd8tmmGG0Lp+T7RsIRgtnXUFDtrp+fM3GtzqGEs4o3o?=
 =?us-ascii?Q?eahDuOtA0q6DLT119cS2bZdIGFVPDaShZZbf23qi9CRVf35IruLpu00KmS80?=
 =?us-ascii?Q?C9Bh5vWrdB5eDX8Yy7vydOKqDYfo2EnYJOrcEkogLBrm1q8ukO21IJWzt3bH?=
 =?us-ascii?Q?7Ua0NL94SX9ZezGVFKuc2BKNKOa6/SInJ7uRt4I4eOHR?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e301bb3-1d92-4f60-f948-08de2ddd940b
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:51:23.2359 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JpCI1/qUHdsiPpSIvxYJ5u1mMJg9HXG68K7hEKS5NUK+iMdIZtAG0W955u2pYV+gKyxJE9QzM2yZYIy0ympudQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8550
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

Factor out compute_max_compressed_bpp_x16() also used during mode
validation in a follow-up change.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 82 +++++++++++++++----------
 1 file changed, 49 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2a5f5f1b4b128..9deb99eda8813 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2662,6 +2662,48 @@ static int compute_min_compressed_bpp_x16(struct intel_connector *connector,
 	return min_bpp_x16;
 }
 
+static int compute_max_compressed_bpp_x16(struct intel_connector *connector,
+					  int mode_clock, int mode_hdisplay,
+					  int num_joined_pipes,
+					  enum intel_output_format output_format,
+					  int pipe_max_bpp, int max_link_bpp_x16)
+{
+	struct intel_display *display = to_intel_display(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	int dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
+	int throughput_max_bpp_x16;
+	int joiner_max_bpp;
+
+	dsc_src_max_bpp = dsc_src_max_compressed_bpp(intel_dp);
+	joiner_max_bpp = get_max_compressed_bpp_with_joiner(display,
+							    mode_clock,
+							    mode_hdisplay,
+							    num_joined_pipes);
+	dsc_sink_max_bpp = intel_dp_dsc_sink_max_compressed_bpp(connector,
+								output_format,
+								pipe_max_bpp / 3);
+	dsc_max_bpp = min(dsc_sink_max_bpp, dsc_src_max_bpp);
+	dsc_max_bpp = min(dsc_max_bpp, joiner_max_bpp);
+
+	max_link_bpp_x16 = min(max_link_bpp_x16, fxp_q4_from_int(dsc_max_bpp));
+
+	throughput_max_bpp_x16 = dsc_throughput_quirk_max_bpp_x16(connector,
+								  mode_clock);
+	if (throughput_max_bpp_x16 < max_link_bpp_x16) {
+		max_link_bpp_x16 = throughput_max_bpp_x16;
+
+		drm_dbg_kms(display->drm,
+			    "[CONNECTOR:%d:%s] Decreasing link max bpp to " FXP_Q4_FMT " due to DSC throughput quirk\n",
+			    connector->base.base.id, connector->base.name,
+			    FXP_Q4_ARGS(max_link_bpp_x16));
+	}
+
+	max_link_bpp_x16 = align_max_compressed_bpp_x16(connector, output_format,
+							pipe_max_bpp, max_link_bpp_x16);
+
+	return max_link_bpp_x16;
+}
+
 /*
  * Calculate the output link min, max bpp values in limits based on the pipe bpp
  * range, crtc_state and dsc mode. Return true on success.
@@ -2691,43 +2733,17 @@ intel_dp_compute_config_link_bpp_limits(struct intel_connector *connector,
 
 		limits->link.min_bpp_x16 = fxp_q4_from_int(limits->pipe.min_bpp);
 	} else {
-		int dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
-		int throughput_max_bpp_x16;
-		int joiner_max_bpp;
 		limits->link.min_bpp_x16 =
 			compute_min_compressed_bpp_x16(connector, crtc_state->output_format);
 
-		dsc_src_max_bpp = dsc_src_max_compressed_bpp(intel_dp);
-		joiner_max_bpp =
-			get_max_compressed_bpp_with_joiner(display,
-							   adjusted_mode->crtc_clock,
-							   adjusted_mode->hdisplay,
-							   intel_crtc_num_joined_pipes(crtc_state));
-		dsc_sink_max_bpp = intel_dp_dsc_sink_max_compressed_bpp(connector,
-									crtc_state->output_format,
-									limits->pipe.max_bpp / 3);
-		dsc_max_bpp = min(dsc_sink_max_bpp, dsc_src_max_bpp);
-		dsc_max_bpp = min(dsc_max_bpp, joiner_max_bpp);
-
-		max_link_bpp_x16 = min(max_link_bpp_x16, fxp_q4_from_int(dsc_max_bpp));
-
-		throughput_max_bpp_x16 =
-			dsc_throughput_quirk_max_bpp_x16(connector, adjusted_mode->crtc_clock);
-		if (throughput_max_bpp_x16 < max_link_bpp_x16) {
-			max_link_bpp_x16 = throughput_max_bpp_x16;
-
-			drm_dbg_kms(display->drm,
-				    "[CRTC:%d:%s][CONNECTOR:%d:%s] Decreasing link max bpp to " FXP_Q4_FMT " due to DSC throughput quirk\n",
-				    crtc->base.base.id, crtc->base.name,
-				    connector->base.base.id, connector->base.name,
-				    FXP_Q4_ARGS(max_link_bpp_x16));
-		}
-
 		max_link_bpp_x16 =
-			align_max_compressed_bpp_x16(connector,
-						     crtc_state->output_format,
-						     limits->pipe.max_bpp,
-						     max_link_bpp_x16);
+			compute_max_compressed_bpp_x16(connector,
+						       adjusted_mode->crtc_clock,
+						       adjusted_mode->hdisplay,
+						       intel_crtc_num_joined_pipes(crtc_state),
+						       crtc_state->output_format,
+						       limits->pipe.max_bpp,
+						       max_link_bpp_x16);
 	}
 
 	limits->link.max_bpp_x16 = max_link_bpp_x16;
-- 
2.49.1

