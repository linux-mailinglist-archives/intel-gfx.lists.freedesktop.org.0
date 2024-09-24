Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15076984C59
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 22:44:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA68B10E751;
	Tue, 24 Sep 2024 20:43:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ASu/SpDC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A831E10E75B;
 Tue, 24 Sep 2024 20:43:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727210625; x=1758746625;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=PtHFhyPW+zIzLVcQj7w+URJv3iWOJf0anJ01i/A4j1o=;
 b=ASu/SpDC307bgEVU4FnJcET8M/YkJRhD9FAd8AoHLPjIq4twQ5cbV+Hw
 vRvzvxn8uNHcJhxlnD6iyhuWNGCspz6Gd9y4GRxn1sM4kz4bsyP7yj+vY
 J5Ue51RLXLvpPFvgDXgB+gkhaw816qOD8aoXr1K7Ewg+LqSXW0+u16o4i
 k4rFV0p5o248gR1nzy9Trvvfl+0AUN9IwUHlc3oCm70mGbqZ2rpSxqYGt
 eNO9zSVS8bKTBZ6zje0cC5PKKKwNcjEEy507xPjs0dON3mst6oLDYxLtE
 h6nOu8N03LbopWJdoyqsqBuAgIX9F0ALdeId5TjrcmnR+OLH3GkVWEhVw w==;
X-CSE-ConnectionGUID: O1LCJWoqQyuKLrVWPKdWbw==
X-CSE-MsgGUID: c2kt1WzQRaiuEqXPSoJo9g==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="43751572"
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="43751572"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 13:43:45 -0700
X-CSE-ConnectionGUID: 1YJSOrh+Q0ucKNp7VBtGbg==
X-CSE-MsgGUID: ZJBbrn41RfaQkCifCfjjDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="76298862"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2024 13:43:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:44 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:44 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 24 Sep 2024 13:43:44 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cnYEvs1Ilcnnrogf9EqNgVhtD6LcN4YdH5Gdyh5TdX9sBHShMIR16EnV8HLrxnW+kfuINJ33UAUcMvE9ce1UDRIdN2Xg+R6hHYJ1uWlWAbaya252Zoqc30JnNigHKgsyTAZremOfNDxhJFabzxGneWlgWGkjRae5MFG0+rlNdGbM74O3vWl+lFkPVAwD66bwm0OJPOSNNBiGOUaJDkQ1LhiJfxDd0Zvi7No9kYgoezt1Eh6KGVYSfLR3kiyiulqWwFbxOVE6ia9xAyjM62kiRdzV8SUnWjxBQFwKa6e2LbSC9OY2tIFf6Gae93kxyJuKJ9BP4J4lwP5NiTvKuvOlBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6USX93cQAz+Kl+0qJVnMMwLzsbQMETntkaHrlJm1I3Y=;
 b=V+7OprrSTFcPTaEIZaAgW9mcotyn/VyhdQL4Ftq2CJrgFHU1ydAaw/hNMV0pcXlK5Xslpnx2GkUD3KDKoOXrI9jiyg0g+VNb+8bU3Y439Rnx9E0PzJwzOJ7P0faj3F6wWIYMKd3NvKqzKYs4EttE2mmp0gnfp8zn/n9yEDJuwf8+PF013G77gewXLjRXMxWQTfkRXfwd7BYMpThiwIoose/AvvjosBCSLVD9/xAz/A0J9KbK9j42tyNzal8HbJkkoGDxz7YjRrzU6veYIeXCho25zJguWk4XaVfd3Vt/UuVolJO/XPH3Wvu1kzDsnkYFW122VR5cdzFaIBik8Rlz0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ2PR11MB7425.namprd11.prod.outlook.com (2603:10b6:a03:4c0::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Tue, 24 Sep
 2024 20:43:41 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Tue, 24 Sep 2024
 20:43:41 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <imre.deak@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 23/31] drm/xe/display: Prepare runtime pm functions
Date: Tue, 24 Sep 2024 16:35:44 -0400
Message-ID: <20240924204222.246862-24-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240924204222.246862-1-rodrigo.vivi@intel.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR04CA0360.namprd04.prod.outlook.com
 (2603:10b6:303:8a::35) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ2PR11MB7425:EE_
X-MS-Office365-Filtering-Correlation-Id: 045bd30d-f1f5-41d6-402e-08dcdcd99311
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?dK7HMkRMmX/2JzcAmtHmxf0hynoM6GOvTRxhYz8TZioNEJkc8OMzTUewA66N?=
 =?us-ascii?Q?xdY2paCqp/VhyCUsbDiQdPs7Ic9Io+UV8lzmremD681kVdJBMjIhYN/srA+S?=
 =?us-ascii?Q?xKhT1Io2vo2gL/L/E2XEpCbrgI+1ftk03lK4x6I/gtt8AeMstzH+Ff8bmIpl?=
 =?us-ascii?Q?S/36oT8aJxzEarMDHhlhv7CNQuIwZWGv9JonZMgLJhho5GbTTXTcpOI5kQ2P?=
 =?us-ascii?Q?3kMmRokMnkRHJiJOIWfJewqoyzNk7sXDm0jDlQui9/Ze5yr+XRgpn7UFKBUb?=
 =?us-ascii?Q?vbtxbDzbD2WwIRdXN4EUltfDm7lPJogI1NNnESXln9HGVsPudUoM+IFpWGmO?=
 =?us-ascii?Q?WX2L0qK1hWGvDrKLU0ecQM7Q6m4JBelS15xstbBz5TzNY5zjIUU+ftzOr/UK?=
 =?us-ascii?Q?fhu998jjVO0DfaYRy5ToQZAXgP5Cn7JYwfAvU/tQxhqz7iafM+EaEOXVKq1p?=
 =?us-ascii?Q?MRIljKozrDajE+NEmYffGHSndP4ziuSOHiJqGF1yCEXQAg9pgYCG246dNKmQ?=
 =?us-ascii?Q?NseW4MU54U3SRgBsJffF3cJGs4J21ffiGMBkhJ02sJ3R5jw5Fo6td/socE+S?=
 =?us-ascii?Q?IMa1v7oQiBJidJBAFLzi8VBzZIWhfXhxv7sEOuI7GCMzo7qOKRqmvsO4Cd6K?=
 =?us-ascii?Q?aYN+ztI6WETCynwcyOOX0Oy9IhZ0fLB5HFCpBibQLgyja1PKQ12bEBMT7YzQ?=
 =?us-ascii?Q?9D2vOtadOj+QZNOAp4xWluESO8xJpiMLESNeIgw0apEpC2IXdqcLofvzevUI?=
 =?us-ascii?Q?lsXvOtJ9N94oS9dJpEed8lpmKmSYAyQOEzV1VuWzwk2Fx9gt94UVKvZWFmwD?=
 =?us-ascii?Q?CDM8FyU0XLOYUUSXB7KyZlaFe6Tw5fdNCVboz+gLour1wMMHpzQwxqsv8no3?=
 =?us-ascii?Q?Hw0R7UlQST7jRhmp966F3J7By+2UlD0+K8bAQJxIJLzMx3yOO7xEFJQaiN98?=
 =?us-ascii?Q?G0QOOVJDTvh0Vb2n0TzsgDLMjy8N5L+0/E7tKhtQf/acIsBlz7RRRVXHl2k/?=
 =?us-ascii?Q?fVp2Yfk4/PPMWkJnWG/MaaXuFddIVN11OWEqTWHWqAUKT95qpd0pXfGijd6v?=
 =?us-ascii?Q?tTig9i3KAH0mpGYMnQpcx/XkufyOHmxSXbnFTK+CdovI7CXpgLbbj5xJFcd2?=
 =?us-ascii?Q?pIzZ+5M8ipfRaM2Ytv5R7Hz9Kbf2iHPFY7eqS53dSJKkyJKCcSUdTta+2uoe?=
 =?us-ascii?Q?Z20+6Cz/yiedSLjS24cWKJw9eLYuqDzM01awLkJBzGZdC32AHF3/AAUF6Opk?=
 =?us-ascii?Q?0KhITD28NKg7B0u8Q57lxnA780G+x+5TjqhdJGGk8MOUqHb4aBA7YvJqJsF2?=
 =?us-ascii?Q?H3k0nBUrwtx1wKaHTLOJ+YpPh/qDQWiiaToEN+y0qprTEA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Sxk7lI1cC5yK8hk84+q+X7nFnMRe+Serez7TjUf9T8EjeAi0OFEsEx+3kjE+?=
 =?us-ascii?Q?e+J7uLJJ+6UsOYXvWu3+CxBPcJ6r2uM3AWkFIb0xh5vB5W+li4+NEu1U5SeS?=
 =?us-ascii?Q?uDh/jGmymqtpoMQu5C8T+3O0ZzK8sFGlWRQSCY7D8L7I6DJGb39KAWlfDeOk?=
 =?us-ascii?Q?RGgzKspnL6bKe20ZBylT5e5ub8dDstSgJzgTQHyUpe8ZO5hp8YAMY5nY12cB?=
 =?us-ascii?Q?STe5k883h8SgzqDEdpvWe2kotMWctjTeJhIB7isdWufrkIhaitoOnhp0fN42?=
 =?us-ascii?Q?24zJ+iCccClQH5ST8fXcD9KpwVffhd3A95GXiDAybNM3sGZEfOd2cJzq06ff?=
 =?us-ascii?Q?e5OWh83V/TgQSa+EfprihxZl5Q0xzPF4+kooB3qhCPJ8aYB+gW/KxGIaycXD?=
 =?us-ascii?Q?QSpNEYLlj0wTntmbkASqi5Mo/A3fdzcFnoymlLkO4+kfP9zs2pqhFexZ+VO/?=
 =?us-ascii?Q?J38tLBVJnI1Rf+zuQ0PeOW0Ji1X8DYTSGg6jDEzA7BQiflXBA83fyXc7vV3+?=
 =?us-ascii?Q?1ZmHG67ZoaPcedb7uLUlE1Q9EVp0rcbZntcKeyphXA2I6XrPosDfapo4ZdJQ?=
 =?us-ascii?Q?5NiUWXEEqI/ATleuNZHcgTlZ7R37NMeCRHjwR/lIHoQI/rKvdKs7inYU39uF?=
 =?us-ascii?Q?4tLF68qBtqAV1Ixl4rWiciFG7DjnGcknEP66Es0JUOhDjz8Rrd9uLhyKaXO+?=
 =?us-ascii?Q?L9PqP3ms6XHIv2yxB1/fTALfFCzgFuXPKU0n/z3ZK7uOy/52OhllMQLlaQsg?=
 =?us-ascii?Q?b5QxlgKq/P5srLnKJwwyQUzSL0n3iVhfOaKXmVeiszPT1CPcsq3JMoUu3VPc?=
 =?us-ascii?Q?vDPQY1o2BurN9fV50VHNFWoHmqe3VBC9WUcSO64PBy3xNzR84O/wEZ8HUQBE?=
 =?us-ascii?Q?g+D6QYS+R+2hEO6UyT6l3C1iF/6/xTH5Yg9FnXmlVaL1Tp+YBVi+GHZQWsIT?=
 =?us-ascii?Q?MGRvMc0MtIj/E6QX2NcyQD6xbAW8/IS4Y8lZ7i411fP/uJ+Ce5lh+6JjqmeO?=
 =?us-ascii?Q?494y24o7Yl1540N0drrv4GoEXcXa0x6xvx8PvIPIh3TPHkARNq36uTxQ9pnG?=
 =?us-ascii?Q?/cEHZMtkDoagiIuRyVp6L0UgGhpRYFPEwsB7bZc1WMcLgOcVYoK0tGS1ow2g?=
 =?us-ascii?Q?IWYEPhc6vAyhaIuvG+pD6KSAWVju52nl2xuxWnv7T5N1cClXKr+C8ehWhbJY?=
 =?us-ascii?Q?wEXVL6Itcbds5BeUv8eZJYVVqtx9AviTkj25RMmKsBJio2wSw3waxRUbm+ii?=
 =?us-ascii?Q?74ravWz+F8ghtoKlEOpAkBin3gwn2nsveNs4HctDHJ7XGBSvAw11Bb3cXd7I?=
 =?us-ascii?Q?Tc7Kw+Jf1ogLNt0Nl6F2gtug0WG5b6nbbZ7vOw/y5XqFzhiL+rHByQPFvCQH?=
 =?us-ascii?Q?cgEc0fNVWKjLY2k/rK1nEtfMnp5J3lNj3KuJeprKfP15iIn73TUmeVrLiAoA?=
 =?us-ascii?Q?ZUUZiZ1FbpvvwTPg/4hBCTO1WRQej1kVIfGolGl68s6tm5mBLMPmAzocoQV4?=
 =?us-ascii?Q?o6s6DCiozZerbWJLhCrlU2gxElRZZXHBi9hrsG6+UrQQudP82l2PQ5Pos61e?=
 =?us-ascii?Q?JwY89m7n2sU0O5J/WHCEg30x81uuis2bvtoACQiC/JwhLgyK6GRS7BEe7Sn6?=
 =?us-ascii?Q?QQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 045bd30d-f1f5-41d6-402e-08dcdcd99311
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2024 20:43:41.5365 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AU7x61zB+e+YP50T6aewVKsFN9wpOhbUod4tyVfxr2WOeaGIlKyTriPtgwsa5yh+Iww1GUGOqwrdrGT6K/5ZuQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7425
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

No functional change. Just organize the runtime_pm related
functions to allow a later sync with the i915.

Move runtime_suspend down near the runtime_resume.
Create runtime_suspend_late and runtime_suspend_early
stages for a better visualization of the missed i915
sequences.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 41 +++++++++++++++++--------
 drivers/gpu/drm/xe/display/xe_display.h |  2 ++
 drivers/gpu/drm/xe/xe_pm.c              |  7 +++--
 3 files changed, 35 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 6bfad26a3c06..1ab4dd51094f 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -388,17 +388,6 @@ void xe_display_pm_shutdown_noaccel(struct xe_device *xe)
 	intel_display_driver_shutdown_nogem(xe);
 }
 
-void xe_display_pm_runtime_suspend(struct xe_device *xe)
-{
-	if (!xe->info.probe_display)
-		return;
-
-	if (xe->d3cold.allowed)
-		xe_display_to_d3cold(xe);
-
-	intel_hpd_poll_enable(xe);
-}
-
 void xe_display_pm_suspend_late(struct xe_device *xe)
 {
 	bool s2idle = suspend_to_idle();
@@ -443,6 +432,35 @@ void xe_display_pm_resume_noaccel(struct xe_device *xe)
 	intel_display_driver_resume_nogem(&xe->display);
 }
 
+void xe_display_pm_runtime_suspend(struct xe_device *xe)
+{
+	if (!xe->info.probe_display)
+		return;
+
+	if (xe->d3cold.allowed)
+		xe_display_to_d3cold(xe);
+
+	intel_hpd_poll_enable(xe);
+}
+
+void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
+{
+	if (!xe->info.probe_display)
+		return;
+
+	if (xe->d3cold.allowed)
+		intel_display_power_suspend_late(xe, false);
+}
+
+void xe_display_pm_runtime_resume_early(struct xe_device *xe)
+{
+	if (!xe->info.probe_display)
+		return;
+
+	if (xe->d3cold.allowed)
+		intel_display_power_resume_early(xe);
+}
+
 void xe_display_pm_runtime_resume(struct xe_device *xe)
 {
 	if (!xe->info.probe_display)
@@ -454,7 +472,6 @@ void xe_display_pm_runtime_resume(struct xe_device *xe)
 		xe_display_from_d3cold(xe);
 }
 
-
 static void display_device_remove(struct drm_device *dev, void *arg)
 {
 	struct xe_device *xe = arg;
diff --git a/drivers/gpu/drm/xe/display/xe_display.h b/drivers/gpu/drm/xe/display/xe_display.h
index 256bd2d23964..64ff2d2f5270 100644
--- a/drivers/gpu/drm/xe/display/xe_display.h
+++ b/drivers/gpu/drm/xe/display/xe_display.h
@@ -46,6 +46,8 @@ void xe_display_pm_resume(struct xe_device *xe);
 void xe_display_pm_resume_noirq(struct xe_device *xe);
 void xe_display_pm_resume_noaccel(struct xe_device *xe);
 void xe_display_pm_runtime_suspend(struct xe_device *xe);
+void xe_display_pm_runtime_suspend_late(struct xe_device *xe);
+void xe_display_pm_runtime_resume_early(struct xe_device *xe);
 void xe_display_pm_runtime_resume(struct xe_device *xe);
 
 #else
diff --git a/drivers/gpu/drm/xe/xe_pm.c b/drivers/gpu/drm/xe/xe_pm.c
index 77eb45a641e8..4cacf4b33d83 100644
--- a/drivers/gpu/drm/xe/xe_pm.c
+++ b/drivers/gpu/drm/xe/xe_pm.c
@@ -418,8 +418,7 @@ int xe_pm_runtime_suspend(struct xe_device *xe)
 
 	xe_irq_suspend(xe);
 
-	if (xe->d3cold.allowed)
-		xe_display_pm_suspend_late(xe);
+	xe_display_pm_runtime_suspend_late(xe);
 out:
 	if (err)
 		xe_display_pm_runtime_resume(xe);
@@ -450,9 +449,11 @@ int xe_pm_runtime_resume(struct xe_device *xe)
 		err = xe_pcode_ready(xe, true);
 		if (err)
 			goto out;
+	}
 
-		xe_display_pm_resume_early(xe);
+	xe_display_pm_runtime_resume_early(xe);
 
+	if (xe->d3cold.allowed) {
 		/*
 		 * This only restores pinned memory which is the memory
 		 * required for the GT(s) to resume.
-- 
2.46.0

