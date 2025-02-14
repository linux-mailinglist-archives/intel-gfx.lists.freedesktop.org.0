Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 272D8A36510
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 18:56:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB21910ED37;
	Fri, 14 Feb 2025 17:56:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z4mjK5kJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEC8810ED4B;
 Fri, 14 Feb 2025 17:56:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739555778; x=1771091778;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=BQE37hXdNtlulZlxuQnmyYPu+81Y1UeYbogvgEH+WxA=;
 b=Z4mjK5kJ9OtU7JIvJL6EOTGGbuAFrEo0TZbV6Wi+RwI2+Ujb7E/bFq6l
 dwJ6ciyAXikIHaGOsDcigT/BmKcV61pPSQe9TJC4taUDLDZDZnl5qOy1t
 CYOtNKqgid7aqLaeXTlfLvaou4io10L1yl7EkCAlZ/YeRB89h1cprISXx
 k4D7sIKmnDqZiCB/FoPZNJ03cNJpGREWIZxMRVOBmCtzLpgBNf9zdA0pR
 WI3PEKppXVAle3vt1XpnuazvL6h1zoLEKzqEPdC0AF8ZU3T/QoPjX8k80
 IETqANtNci9g4nYJVmGQYR404HYvWYdd4zXTGGQxaaRVkb4UcsfGZRHV0 g==;
X-CSE-ConnectionGUID: XkRCe/nLS9KCpNHqW5J/Rg==
X-CSE-MsgGUID: aGFEot1JRu6+8CaszOTdVw==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="40348260"
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="40348260"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 09:56:13 -0800
X-CSE-ConnectionGUID: KgJot5qKTs6V9pH5KxhcTA==
X-CSE-MsgGUID: yprEKh5ESQ6sVvguxooB6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="113378544"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Feb 2025 09:56:12 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 14 Feb 2025 09:56:11 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 14 Feb 2025 09:56:11 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 14 Feb 2025 09:56:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BwqTeSra1FtTIE9Z1dAIVCW670GQazA9+aV+OMokxQvecoJ46hWaHdiidHoLkjblZKEy+MvoxO9iMZBbuDDjxoh2h8WeWPQcBLVhv1sXUQx0HWtWxeLVExq7U+GsilinyldbJJc7l50+2K8D5Xlx7bmn5P2o6jp9clotu4ieBVa6GzXoK70NxM0tM/SE8r3NEZgnuIj0rxoIJrFlycTifphAWBbFlhIKesxAUGElK1V2FjtgfALlOd7CMDZa1EQ0l/8jTdEEL5u/xaeurPS/s1ehU0DF7seQtiD+OBan4Iwnpjxzy7wDjqtBPzo3qS+37M+K7ilvCIua/6umIqvTMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/JRvGUanE/rlxVHgy0On+yparq9N0JRmpPZQV78eTbo=;
 b=lXgpodPde7+TQidAkmfZ+6KHgV6gjnMs8tcRj0YUMzzL/Dg8GYk/WPuiZa8jk2PteRJ0T01dpZ6GdLc7dARZiWmXiHxZGDR30mOu1yyKRSM9JwogAJ1w/TZ4nIDotH/dSagZLoEuOYTlucdzW5TSnySGLT7vqXgv8vuinHMA2OnzuRxGyS9mYbngPnVQm4FfF/u6nmRal2PzoIvjA6NU++LtMojH89293/+Cl9f4JmwSdNsCv+X2oYJp4piTxVnp+XHLBBcFGEUUOGYfyTCsyyMufaFmkW+BZwMrQpCkn2497VH9K2uzwNmnwOHiVrrIpR2iKJd90X5aiV+t8t/0cQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN7PR11MB8282.namprd11.prod.outlook.com (2603:10b6:806:269::11)
 by SJ0PR11MB4800.namprd11.prod.outlook.com (2603:10b6:a03:2af::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.13; Fri, 14 Feb
 2025 17:56:10 +0000
Received: from SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72]) by SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72%5]) with mapi id 15.20.8422.015; Fri, 14 Feb 2025
 17:56:10 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>
Subject: [PATCH 3/3] drm/xe/display: Add missing display power handling on
 non-d3cold rpm
Date: Fri, 14 Feb 2025 12:56:00 -0500
Message-ID: <20250214175600.504481-3-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250214175600.504481-1-rodrigo.vivi@intel.com>
References: <20250214175600.504481-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW3PR06CA0007.namprd06.prod.outlook.com
 (2603:10b6:303:2a::12) To SN7PR11MB8282.namprd11.prod.outlook.com
 (2603:10b6:806:269::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB8282:EE_|SJ0PR11MB4800:EE_
X-MS-Office365-Filtering-Correlation-Id: 37cbecdf-833c-479b-7aa3-08dd4d20dcf8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?OGvPBm/gbVUt/iy9elkR+TomstnJuwgTo8Br2yniPFzR6FW6pkeqO8LdERds?=
 =?us-ascii?Q?OKOFW75erEyh7heeiN4QtoLnNhMEd0kP3DwdEb3JvquZpEkTNbBOPXOLzxHM?=
 =?us-ascii?Q?pMRkDc/Rks3P+5Iel4N4Y2KdnTrDfFLQK/L+qWDGDc568umzGPwuQKllXwKk?=
 =?us-ascii?Q?IP0gSUyv7w2h6R/Xh09QIK6veDL7YwJyK52elm47P1mwB9tvn2OVg4337qrf?=
 =?us-ascii?Q?44pTpgugCR3dyRhCn0FDaSfbQVOEexmiYf+q5XGVsOfn7xgksrB+cKPMEpsj?=
 =?us-ascii?Q?dScxQuLdS9tt09SyHFrx+dGvbvVwOJe7cjvpjwCpX8KeGTaD9GPrfRvvfeiw?=
 =?us-ascii?Q?6xXN4DnVUnX27dm8r/9vs4WBVtbKeWth/K4dgtgZJMFNpfqOdDxc6zLJc3Iy?=
 =?us-ascii?Q?okNrheDd2ot06XnjX9aPu1rdc433iBgtjLJ0tfdny8gKLnWSMubHD+Hze7Fw?=
 =?us-ascii?Q?wLEqTjJ24BwUv4SfBGBeJeVHpUA4q8JdbcKKkwD8Ca5234FIChtJw+I5qfZc?=
 =?us-ascii?Q?5PAYMwIS+8Z01h+L27iXNH5KnJYO5yy4HUv50+oghckfsiXbm9i4WN5nzRQa?=
 =?us-ascii?Q?GCNAFktThyAdkxKWydTtBukNGgwXIANrpl+7lixBOE4zKayB2Z64GKfBIH6s?=
 =?us-ascii?Q?6+tJWoOXsCuT5YAr1a0zBrxsLVehgVM/yUUE+cNVubYQBoKxV05lD8GLNFWE?=
 =?us-ascii?Q?wak+LCXCTdmCyBUT2+t4pJgnppLsnIo5ZrzMXkm/y8R0hFKOt4YEn3uTwges?=
 =?us-ascii?Q?J9lT1bGs8cqaf37LXJEk1fVDvAr0HHs6Vi6S4ECbwGybQLdWrYEuznAwxMV6?=
 =?us-ascii?Q?mfplVfxuz9QBt5Wkt1HUVsG3zVZqd6XienrA8nT0bY/SPBF8HmBHPIhvQACR?=
 =?us-ascii?Q?H/UXNu6g8baMorAYo49O4/V4VCQwNf5QEqDofge86RKbvRU24KV7yxNgV3qP?=
 =?us-ascii?Q?YqknOF8NlfZD89m5ly3YNyZQeXqZJz4YYprf4fiSgJMzRyhdj7RbVZbhaHfz?=
 =?us-ascii?Q?0TU59NrZLtRcS1HjEON4CImYBDIdSf15mvG08Zy2g0idwftyadwiQCqYd2dr?=
 =?us-ascii?Q?0ujVNwbisNeb45r5IyZxAWDvgvE41zO6u8ofGUrqKhTLIBG+xtZejY0c9TcR?=
 =?us-ascii?Q?Wnviz5LDisiB1hhivsG58rnnOMgitR5ciM3cIyRUrUO/RILCXgXINMZDglWW?=
 =?us-ascii?Q?0gIeVTClfECxT/Aznl+If4Zhv/iJ965A43fYGE/nhaRWFOjxuyfLA7XyfJuo?=
 =?us-ascii?Q?HNZ7P0AgKV/3D6yJEyXYWGBMh1Ic5eXPam//83e6PqJbf26+kUTioi6ZC0AD?=
 =?us-ascii?Q?ns7ZFLX1aI0jg/o6HSMmMbkC1HzqHQwpa3qiEecmtNiaXvRbAF/qUlzpod2N?=
 =?us-ascii?Q?mO/V/rkT8FV0loy6W3LOFJWVfauE?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB8282.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?S1tMwJAH7nYmaMkQ6cJU2qyrboUVIVUSIV8webjBdKqo/46HIsTw2POwngHW?=
 =?us-ascii?Q?VBvkNofCdtPVIabKQEpvod8dEnjclBmDZUbk0dH+XjoYKtnuSkgY/hKxR/xR?=
 =?us-ascii?Q?07k9cbllWbHzV+5y/ujGPQxKS7lxJJI9FWN5D99j7D/ImyC41xXRZ9nGRTjN?=
 =?us-ascii?Q?BwNGCP45l9PJE2jTLNkZawvs9+TsJewt/lZoU8ZrAqgRuaXChg457psMu//Q?=
 =?us-ascii?Q?hFGQX2TxRWbjW+BA5uKdlb10UPn4ho3sxqC7Ola4QGFpSBZ1o/Ju91o4UY/h?=
 =?us-ascii?Q?U35WCzsVBUg57BPk9hUq/c6Qdww+njHSKMOJNL5cohW9QwA0gjCrq9lNgDRC?=
 =?us-ascii?Q?QEhTQbPorwcPjJfAWKj1vuwu7d38qv2eb15o8AmMsn/ukd0dVamu+1PNf27n?=
 =?us-ascii?Q?tom9MkK8lGzAoDtChdgvczoX0zQ7V+Wg2ZYebIob2RW4MAe8WOl6PqOZ1EGq?=
 =?us-ascii?Q?19Is7l4FHr9GW+K49W/9RQKcc8XCv6qdq3LmqnDUD7BT5AvSCiPVLSnMnV05?=
 =?us-ascii?Q?eiGSYr/9Ojh3r7Tou+8C+TdzJMuW3xkRirIb+u5MOGPuzZJcpaYjcHhtIxdF?=
 =?us-ascii?Q?iCyHPszxO1iXl3udeea/Zar3tiV42ERPMJD2LBPdYeAW29HdVDahyBUaVqAD?=
 =?us-ascii?Q?OZI/AlnbvWb3N8q0Ln5Fl0ESnjYD005lWsfmsRwcSTt+YKgTPZwFMIS8C6iY?=
 =?us-ascii?Q?/7zvXIhMTobFUcgc1TGEpSMq6FXjdVDhmieomrk+kXbv9oOTJM7BWisFJl8H?=
 =?us-ascii?Q?GbgK4YHOWqkHqDpH4mvBeiSPdDCMp62qUCHHihuxuewkvo3iFNU71z7wBcN0?=
 =?us-ascii?Q?6QG/Sud1h/poxlYrRCJDhBwjXQREVn6lclTOMeb7Zj8sh8NJ68fLJomDukJr?=
 =?us-ascii?Q?NMfVXjdlH9sFN4agjDEN5qxr0nbN5eqeVMb6Nl/tE2X0WqhLl4mp9Zch0AIH?=
 =?us-ascii?Q?oBvnzYNAEyEpmB5xWieJdXC0EcFr6/MHF4FhY+m4lrnLp+kCCP/fRWsfkdgT?=
 =?us-ascii?Q?bWJnjILADmogcNB1O6YckF9BFaWF0QBevrT5mPfKbgKj+YJ5Gh6x2a23iR/A?=
 =?us-ascii?Q?Jm2okNuj2DTv4X0a4a0tGieD3ZJfHLI7q5yg+phhodr24KE1aPbwocSZe86x?=
 =?us-ascii?Q?7NCod3I0sJ/jCffW2d0m/M9ZL1DesGdvQiibtckxAsfvY413RNrxrfcWJb66?=
 =?us-ascii?Q?zg9SFfKYHDNWYCmphcr2Vy+ngOxzJH1vyoCb4i0DpSFg63VA9oPvnqrfUG4U?=
 =?us-ascii?Q?/aE5QSfU/sp/5x045C8SLa9D/9L0JhjkMkQBKiTdrUDkoTEM1Gn81KMwxeGD?=
 =?us-ascii?Q?hIGNT/EK5cvCAYFgUHZP1iKY0IfbLGYR58K5/kQFtLNr0y2rNYlh0rLwmqv3?=
 =?us-ascii?Q?nq315xUL3Pq7xZp/75p+zeAwpOSDAGOTQJ+bXyLlhLJE5xW+VPzkRL5tsswB?=
 =?us-ascii?Q?F0TBrzVVql7m23L8aK9Z3WdRODi1l6bcRpsZndPF6NxQl66DwX5k7n4i0Ozt?=
 =?us-ascii?Q?2NlA3ZLfdlHshkeOwhC8E/APdj8cZNZ3w5kA/M2I23awPLEIPfeBBpAybgAJ?=
 =?us-ascii?Q?nVkcQqftcEJLEn4FDHdZmkSpzW1IIf8ysguoS5kN0/4UgxB8iAQ6DN40hLEx?=
 =?us-ascii?Q?og=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 37cbecdf-833c-479b-7aa3-08dd4d20dcf8
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB8282.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2025 17:56:10.0001 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6FST6pMb6fehSXDJZJUW+DeKnEvpH+6gu6VEGI5prWuNLFtrDK9RWetBySEUnt2FVpMqUhJ7yAK299iBna4gTQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4800
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

On the regular igfx runtime pm sequence where d3cold is not
possible, the proper calls to power display are required.

Align with i915.

v2: Rebase only.

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index ebe0e8c3d722..3a289d245cde 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -363,6 +363,8 @@ void xe_display_pm_shutdown(struct xe_device *xe)
 
 void xe_display_pm_runtime_suspend(struct xe_device *xe)
 {
+	struct intel_display *display = &xe->display;
+
 	if (!xe->info.probe_display)
 		return;
 
@@ -371,6 +373,7 @@ void xe_display_pm_runtime_suspend(struct xe_device *xe)
 		return;
 	}
 
+	intel_display_power_suspend(display);
 	intel_hpd_poll_enable(xe);
 }
 
@@ -471,6 +474,8 @@ void xe_display_pm_resume(struct xe_device *xe)
 
 void xe_display_pm_runtime_resume(struct xe_device *xe)
 {
+	struct intel_display *display = &xe->display;
+
 	if (!xe->info.probe_display)
 		return;
 
@@ -479,6 +484,7 @@ void xe_display_pm_runtime_resume(struct xe_device *xe)
 		return;
 	}
 
+	intel_display_power_resume(display);
 	intel_hpd_init(xe);
 	intel_hpd_poll_disable(xe);
 	skl_watermark_ipc_update(xe);
-- 
2.48.1

