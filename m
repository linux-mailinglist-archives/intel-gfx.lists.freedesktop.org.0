Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A50A817C2
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 23:44:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2A9910E76D;
	Tue,  8 Apr 2025 21:44:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kb6k8puD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBCEA10E769;
 Tue,  8 Apr 2025 21:44:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744148657; x=1775684657;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=vdQeU8Ygxnxa1/T/dXYtNIjOpTaRg4LlbfyGvTCJYeM=;
 b=kb6k8puDj4XYwpp0Fri27t+pSVhCJJ2eCcdCpBIYefHHUsPSHCr70BAP
 1Oy4lT86HrSpJVDRT5WZ7S/nMdelrrq8xTrDUkr41H8lf9AOQEwa9NoPV
 1NDLqPzD8Tb1kL18HejIA5yX12Yld65qjkgsLwwKIOkf1hA1mk4X3WXQ5
 seVm7outlftNlusUTe5RQEajAaSaVPRZZ4jQPFBUTns6vtKmtKzePSwlN
 9AH5+NBTUXWu5IdFnZKllcSs2Kdp3LJ/EyVQlY+Qpnp6enyLhs35s/BLe
 nMT9RZKk9hfkp7Rg3ay9dcQCIC7RpEPWvT7eCJ5lQiQEhRAO1ynWiJxOJ g==;
X-CSE-ConnectionGUID: EaMRPhUhROOGWrUm+QZPIA==
X-CSE-MsgGUID: AKLq30t5QQyX0yFgQneB1g==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="44746762"
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="44746762"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 14:44:16 -0700
X-CSE-ConnectionGUID: /g4LO0ssSiip78ihCMJGXw==
X-CSE-MsgGUID: yoMIR89uQRqmhLpdqwxMGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="128381232"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 14:44:16 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Tue, 8 Apr 2025 14:44:15 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 8 Apr 2025 14:44:15 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 8 Apr 2025 14:44:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=c/k6Ucd3SLqK1meXRnU3Af1k3z3OE/9Aoklpc3fIUSDtOX2JhWyffeW1lM8bDbo0KznI+ev9utgX0HfzbSPZ2dtddSa28XXWTUK9Iu5plubfStSHJv9Lc+6Bx1rkod9NKRdTj7Th5XG1Fh8Z7ggKNKrSOlVo1+U945SXWnbZxqUb6EMDLeo9TF0agg+WjRwdXzmgiC9SM7vcdEvcmraB2uQSsTuu8MF7sDwN7/LYHpT4oUUUhhBtVqi2kQIZo68IxTmqY3sOIkml71Qez/x4EnzA0if5X454K4ev3ftY7UKBI8m8zWp9shB2v9I+fW7eSHQX6lW36D4kn7Mx8EV0cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h8R7YRNE3HEuY0v5n8JEUnqV9XRtSHEd8h37jZfGyI0=;
 b=N6DrxhVNnotmljqAogZQA0AbqRR9wbD49tnr6Lfj9mdj1GYBx9r8KdFnUFQmi0x6Mu0ldLpB8YJlkSbru+7XKGrRd1xrEoPl4DEFH3ZwfzTuxT7KApBm0sCTu5iBtiDS/nfbKu2jXPLFwiw94owyCX6M+PCrOGy3/EmvUgNSMjndh5tuOBKVmbpfIDi0/tDjxdOixyC5hiDExuBQLKhMgiyZ6ym7vU8RVnYSkZzZ6Zqtlq0MY55dwaFR49BMCVuGNvJkbc9eneIgXWfn2yCdrAyiCDkoQjiJ17W/Zzf6ewsb2Co8Z9MIy3zT09+CSctczixDrmcg3+IHeSPMfhF5xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB7101.namprd11.prod.outlook.com (2603:10b6:303:219::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.27; Tue, 8 Apr
 2025 21:43:58 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8606.033; Tue, 8 Apr 2025
 21:43:58 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 08/10] drm/i915/hdmi: Use an intel_connector pointer everywhere
Date: Wed, 9 Apr 2025 00:43:38 +0300
Message-ID: <20250408214342.1953197-9-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250408214342.1953197-1-imre.deak@intel.com>
References: <20250408214342.1953197-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DU2PR04CA0060.eurprd04.prod.outlook.com
 (2603:10a6:10:234::35) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW4PR11MB7101:EE_
X-MS-Office365-Filtering-Correlation-Id: 5ee6dc8e-a826-4e43-8d28-08dd76e67698
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?wHCtSt5vwpPaw+wPjrPp/Bfe9B6QuaOtS9zTosy9w7Sk2yf5aiV5xlddgpEx?=
 =?us-ascii?Q?rffhvZHyQloVrOqvWvqnmtOpJp7i7HzK/uDKKDQdrifpAbSLDZxH8EAO+JFQ?=
 =?us-ascii?Q?MfIPjVBAh3Ji99dclMpqpvzt5PUswg/V921EXyQ6V4gx9h71B+U31fzudPog?=
 =?us-ascii?Q?bv16pjc5M5jy2TEIELhjqmsrGTOIvVyeMwTeb8UslIIAcqZkTJrjdo80MWMA?=
 =?us-ascii?Q?YenZJCARguc0sqSBwoItilRmRKd1C9Y8axhjFeOj5LBQMf+dOQCSey9ErIK6?=
 =?us-ascii?Q?nDG4/hUwvvgHdnH/8qLDYonOCsCJaS29wx8Z97kGb6y1OQHrqF4c7oBaYHDB?=
 =?us-ascii?Q?w66fP0EMaa0Ow2U6BZ8DnRCLJOHrzTCzKaLdhg42jw61hvbNAXSItBxWTNil?=
 =?us-ascii?Q?g83cgQt++7H9nk9krw4YGrAgBdsHYgOfYt2N3vkKSNeXES8cgOur5lE+D7ar?=
 =?us-ascii?Q?0nFQNtSuCssyPscX0iHMc8DrqeAkyI4kWufwhwbYQ2Y7XRax5oa0VTFV1iwr?=
 =?us-ascii?Q?a8LKBIJXeLbPiUnxFJM32O5HYWSInQ3nqcp4fz/+ltF094u2Gcf0GjXUwJWh?=
 =?us-ascii?Q?F6TnfQC+1NsQAQ/RFuHjhdBbY6N9z8inXIRgzsJYnHvZkjMlX+HUV9hKHGCE?=
 =?us-ascii?Q?YAWpoSnfxwLTJmaLgsHiVMvvnsxwwK4kVL6IrY8egR50nzfu5g13vvmRyrmP?=
 =?us-ascii?Q?HppTRJxfoqfD5Eys3+cNeI1X/A95+LBEwX6pvTLuU9BVdlup+VKAu9QqQWwS?=
 =?us-ascii?Q?rF+GX/LFN/Yg2zvPBwTN+Yjzw6mJToSrvKEV1JC/hcQbM5Gi3u7o7K21fC51?=
 =?us-ascii?Q?X1TEE2xQgLj9DcKsOBRZVH6Ad+UW0DgWBHIocaZ2/yP/HZeiWEUCQTnWgVT7?=
 =?us-ascii?Q?revDGGmCpcgOT7fEijkZqjGCZKkvBpXRBYJb47luxFR0lbqIPbC4ZLhjFRoH?=
 =?us-ascii?Q?R6Q1mUbvQNPGvtrTIxNlC/elTXDS3IJVPYvho6fICQIEYAr320Nr8p1n9ZJF?=
 =?us-ascii?Q?ujZkeGWG0/4VyetzGfcGzYJQU3tLXCZhGI8fqEBpWimdyGbQJXur1p4dvJJF?=
 =?us-ascii?Q?fBHZe1r67Z29bG0WzowNLbtTz0ZtGsrHDHHxzC4V2AFi3Qz2xsDQrXSXdrwy?=
 =?us-ascii?Q?JHVmb7Yg4i+p0HjIWXngHtbay0HsKM82xj68F5nxnpn+mr6M10Gmag9sfZ66?=
 =?us-ascii?Q?grJdj0cKDvMy2LRl3U5lIriJFVdRTIVZeqfNXm25XSYW9X3kXrzT4s1faw2x?=
 =?us-ascii?Q?AX+RVjuSsqcs9Ak3SFf5sl/SXqsCz8tQ0/84sJ31QeMSGWq/0IvnwZfiR/Bc?=
 =?us-ascii?Q?Ri7aVaTybwhwZ0EzJKaucayM627pje+V48wO8lBz4Qn0Xzo6sPfPV9x95kXX?=
 =?us-ascii?Q?H40/m9RbybDCiZ7Q7Gh1Gym3ZCnZ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?yFYjdVALuKf5KsLrGmgKhFsdgmVm7hwALMZYo6IU3D0/k5HxYROi9v3wr55o?=
 =?us-ascii?Q?+6AsKWv/McGfrgUwmjybRtVKLka4eUKD3iQYYo6UIeL26FOT/ynJlwBWj0wf?=
 =?us-ascii?Q?PKLhgZpoNVx6tfgJBpdZfIx2LDWm+rWRtKnpjstqsqPLxxVzFuyH2xUC1Owm?=
 =?us-ascii?Q?rTmak8NhbdASrplbt+Kr2PtXAxzff+eppr1W725hmuUkW/tUCU+5iSFhI+zh?=
 =?us-ascii?Q?SfeEyAR8hpiqV8E7xLKT5aJzC7JYN5KptRutL/0moVLRyUygpIVrl+MSGEOw?=
 =?us-ascii?Q?2c8upnIIAcMXjaDqLtttxtjOIMhaUcY8CzgjHGgJki8LhY6m/QCImkqkNJV4?=
 =?us-ascii?Q?xY1Dt9dU8uDxaSTcUHAYGWp+5JNfGJY9/ldZ/r6m7NlWqWzVsF5RINDAOGpR?=
 =?us-ascii?Q?tzwEVgyqjvenYPTYqc9Qyj64Rp9uMML3po2WO7GXclhNyxZsZoOKAavl2Ts8?=
 =?us-ascii?Q?Mf2LXiiRVhYy6MXEWv7ASSx3nIrNtKm9WJVJ0SUAvc123kEclRmFMT3ckMEH?=
 =?us-ascii?Q?05MCM70wM+xQlb0p0OA4Duol6VSlCmoay5NopVVhesbm3sZhzIzDEBBpeFn9?=
 =?us-ascii?Q?W0KxG25V+dZV7AwH7TPISjk/RR7UERZ9NAD4kbx/FTNpQAPZ5gGkyzJslGOw?=
 =?us-ascii?Q?BLQPdj4KJAHhAFfZxyiIM5scdaaEPKKxk7uVGy/ya6hp6xZ/p2qObFLqxKOC?=
 =?us-ascii?Q?ZayA8bKeo24fY8bGXSG/18euuAdnnjueO6FPiIjqyAu1dCGwlGurMrkWbs+5?=
 =?us-ascii?Q?0ZXmAz1PCs4J4fq/rFyuVUIWJ/3wx0/1NNso3SCwc1eu8PDCpJgsJ0wjUfJN?=
 =?us-ascii?Q?owVM0XQ8EeacSLRr7+XkBGBYjeVWWx9paKrCiPk7uQLKJcQzDxcWrWZORTMb?=
 =?us-ascii?Q?NtNsFvGtV9nMSQrVL+VKEWes8vK6MCqHyijw3fEt772xAyAY08ceuBopNpr5?=
 =?us-ascii?Q?UOULEuoDjqERXpVbzxnvTFx9xIt+R3PFV/55c+RyqYPxwSOHn8IAIV/Zlo8d?=
 =?us-ascii?Q?YqVhkoNEq04xE+PCfVWLqqR8wCOLXVgZRyfRcU84DEQiXeqB3hIUxCM0otFw?=
 =?us-ascii?Q?6j8gtpAP1mVmACRifntDh7LZqz2V1jYLJv4KsxIb+7DljjSlQEs40SCicSyE?=
 =?us-ascii?Q?02mwuDnlznootU5ubeIkt5P3HZlrinKicNyJrwZ2W1qgIBz5z93WFKqCDVlh?=
 =?us-ascii?Q?2MFxxKo7IB7VfoPxmpt5oPVgMNXiW/cj/fNOpJWMKo85q6Rq3r5ixDqiSdUg?=
 =?us-ascii?Q?yPHxDqpr9yGqOav4uTnzJ5dxqstqirRgfaHtsqYUQmJt3oT/3w9yB5pHQHt6?=
 =?us-ascii?Q?2RzAi/ewx5sjGeXgKQimlAn7MzFwWvssIJgCMfDTDuQyTjixC/6FI2MQ5h2I?=
 =?us-ascii?Q?LV790R5L7H7zLqb5ZmZ0rkcFGWsh7uP89I3KflY5FgSGLeUzNip/vCFNnIE3?=
 =?us-ascii?Q?AFIouFdlelFY364yK/tVEqwRFUu3VuefsGP6ysVi0BGJ3aw13YcZvQD4+9dz?=
 =?us-ascii?Q?KMphpO0yY0zmwTjMSPW/O/s4noqzfAdOoB2WAr8ZET7vInrpHUjZ8C4FLOYb?=
 =?us-ascii?Q?N8o+OF2woLrQ1CAW28bPlpMTSv3Cyt9ckbC/zqz/?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ee6dc8e-a826-4e43-8d28-08dd76e67698
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2025 21:43:58.0896 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YdTPpeiSmpUJEJRRlohHzmM9gEL1Uzhlji00CNmYNxZNqaPse/BaDg0z/mMyTQNEfsxRdfprsLkQIHKPyqMP4w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7101
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

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 187 ++++++++++++----------
 1 file changed, 103 insertions(+), 84 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index f9fa17e1f584b..8f2cef36bdf79 100644
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
@@ -1943,11 +1943,12 @@ static bool intel_hdmi_source_bpc_possible(struct intel_display *display, int bp
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
@@ -1976,12 +1977,13 @@ static bool intel_hdmi_sink_bpc_possible(struct drm_connector *connector,
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
 
@@ -1996,7 +1998,8 @@ intel_hdmi_mode_clock_valid(struct drm_connector *connector, int clock,
 		if (!intel_hdmi_source_bpc_possible(display, bpc))
 			continue;
 
-		if (!intel_hdmi_sink_bpc_possible(connector, bpc, has_hdmi_sink, sink_format))
+		if (!intel_hdmi_sink_bpc_possible(&connector->base, bpc, has_hdmi_sink,
+						  sink_format))
 			continue;
 
 		status = hdmi_port_clock_valid(hdmi, tmds_clock, true, has_hdmi_sink);
@@ -2011,15 +2014,16 @@ intel_hdmi_mode_clock_valid(struct drm_connector *connector, int clock,
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
 
@@ -2048,22 +2052,23 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
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
@@ -2076,14 +2081,16 @@ bool intel_hdmi_bpc_possible(const struct intel_crtc_state *crtc_state,
 {
 	struct drm_atomic_state *state = crtc_state->uapi.state;
 	struct drm_connector_state *connector_state;
-	struct drm_connector *connector;
+	struct drm_connector *_connector;
 	int i;
 
-	for_each_new_connector_in_state(state, connector, connector_state, i) {
+	for_each_new_connector_in_state(state, _connector, connector_state, i) {
+		struct intel_connector *connector = to_intel_connector(_connector);
+
 		if (connector_state->crtc != crtc_state->uapi.crtc)
 			continue;
 
-		if (!intel_hdmi_sink_bpc_possible(connector, bpc, has_hdmi_sink,
+		if (!intel_hdmi_sink_bpc_possible(&connector->base, bpc, has_hdmi_sink,
 						  crtc_state->sink_format))
 			return false;
 	}
@@ -2211,7 +2218,7 @@ static bool intel_hdmi_has_audio(struct intel_encoder *encoder,
 				 const struct intel_crtc_state *crtc_state,
 				 const struct drm_connector_state *conn_state)
 {
-	struct drm_connector *connector = conn_state->connector;
+	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	const struct intel_digital_connector_state *intel_conn_state =
 		to_intel_digital_connector_state(conn_state);
 
@@ -2219,7 +2226,7 @@ static bool intel_hdmi_has_audio(struct intel_encoder *encoder,
 		return false;
 
 	if (intel_conn_state->force_audio == HDMI_AUDIO_AUTO)
-		return connector->display_info.has_audio;
+		return connector->base.display_info.has_audio;
 	else
 		return intel_conn_state->force_audio == HDMI_AUDIO_ON;
 }
@@ -2323,14 +2330,14 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
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
 
@@ -2425,25 +2432,27 @@ void intel_hdmi_encoder_shutdown(struct intel_encoder *encoder)
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
-	struct drm_i915_private *dev_priv = to_i915(connector->dev);
-	struct intel_hdmi *hdmi = intel_attached_hdmi(to_intel_connector(connector));
+	struct intel_connector *connector = to_intel_connector(_connector);
+	struct intel_display *display = to_intel_display(connector);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+	struct intel_hdmi *hdmi = intel_attached_hdmi(connector);
 	struct intel_encoder *encoder = &hdmi_to_dig_port(hdmi)->base;
-	struct i2c_adapter *ddc = connector->ddc;
+	struct i2c_adapter *ddc = connector->base.ddc;
 	enum drm_dp_dual_mode_type type;
 
 	type = drm_dp_dual_mode_detect(display->drm, ddc);
@@ -2458,7 +2467,7 @@ intel_hdmi_dp_dual_mode_detect(struct drm_connector *connector)
 	 * if the port is a dual mode capable DP port.
 	 */
 	if (type == DRM_DP_DUAL_MODE_UNKNOWN) {
-		if (!connector->force &&
+		if (!connector->base.force &&
 		    intel_bios_encoder_supports_dp_dual_mode(encoder->devdata)) {
 			drm_dbg_kms(display->drm,
 				    "Assuming DP dual mode adaptor presence based on VBT\n");
@@ -2490,34 +2499,35 @@ intel_hdmi_dp_dual_mode_detect(struct drm_connector *connector)
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
@@ -2525,28 +2535,29 @@ intel_hdmi_set_edid(struct drm_connector *connector)
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
 
@@ -2554,9 +2565,9 @@ intel_hdmi_detect(struct drm_connector *connector, bool force)
 	    !intel_digital_port_connected(encoder))
 		goto out;
 
-	intel_hdmi_unset_edid(connector);
+	intel_hdmi_unset_edid(&connector->base);
 
-	if (intel_hdmi_set_edid(connector))
+	if (intel_hdmi_set_edid(&connector->base))
 		status = connector_status_connected;
 
 out:
@@ -2569,49 +2580,54 @@ intel_hdmi_detect(struct drm_connector *connector, bool force)
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
@@ -2627,15 +2643,16 @@ static const struct drm_connector_funcs intel_hdmi_connector_funcs = {
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
@@ -2645,22 +2662,23 @@ static const struct drm_connector_helper_funcs intel_hdmi_connector_helper_funcs
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
@@ -2682,25 +2700,26 @@ intel_hdmi_add_properties(struct intel_hdmi *intel_hdmi, struct drm_connector *c
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

