Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC5AA18FFE
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2025 11:41:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21D2810E6B8;
	Wed, 22 Jan 2025 10:41:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IjqcMHIm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04E9910E6B8;
 Wed, 22 Jan 2025 10:41:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737542466; x=1769078466;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=zLL1Xp9ynLTjxER4c4jtKVQhns5mvqXaZV3wMD5TjmI=;
 b=IjqcMHImY3esnFpxLLYxrXSQsdobDgKoAUVuoPtUukHR7ByM2IsOUNZv
 JJyBCU9G7xdX0wem28ehR63Gu5fGFbGYOv85cafjnp/ZA5ubHfqBc1PBO
 20tMS8seFn3KUxVL4l6GlbZmRyCEZCDADVo6e6eejiHcoNibFOOv/YSFP
 bBunCNt2SWwj574S+K2tk5JbdVdc+4v9C3kAV8XjavU9LU51UkHdqIXbT
 RnmTRE9ZBfh0dB6Cprq41pg8hJtnPG2BY/7YU5Z0ylgQ1VCB35rwky5B6
 Zv77N4XQykDpcIVFzrCiNmjy5C8zALTwjbNMEtGeLW4SXxslX/K9eJQpP w==;
X-CSE-ConnectionGUID: VhifbBmJTI+cvsgTde2FCA==
X-CSE-MsgGUID: mOpv7BTVRdquT791/3s05Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11322"; a="41665622"
X-IronPort-AV: E=Sophos;i="6.13,225,1732608000"; d="scan'208";a="41665622"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 02:41:06 -0800
X-CSE-ConnectionGUID: tyI7s6cqQJSnz3achr4gig==
X-CSE-MsgGUID: M8WCHy2fTHCHxLVd5DOPxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="106969759"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Jan 2025 02:41:05 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 22 Jan 2025 02:41:05 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 22 Jan 2025 02:41:05 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 22 Jan 2025 02:41:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NljdOBOM1NiAV8cbhMib16quIHzP2S6mpz36B1FhWjbJYXMCvxmFHD520Qf3ZFGq3QV1YjsBB2bzM+HTfPRoL9gTDuKm1lOgFOkyfIVyrRrYThp+fGiiXGjANqKbZg9nUDPqMJjMSls3eca9EGLuPjjEpmgDPmipNclfvJxYcS07ovire0hwTOzbYM/rh6nR7CNjK4rFetsUvrNf/HPwqXK0cxTNQhIhD4yAsahJB0NyVYAB+LyoQfWJAyRSzBi+IssSUS7y5N2Y2/Cf1uFGyQOhrjhs8bEQrMVL8IEYxNgWCnymexWkS4VgLwcqm940ylWiI+OYUyCQg2T1wK3AaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5zp+9RYfbZgaDRagAW4uZwaxRskf5CAYnNqiK0nLrIY=;
 b=nOJB6uv+DOew49ZnPcAKeLsfZgBSi5vSgHBBk2Bx4AhSuHeGUDvKNdynLQ+f9hvpHm2FtGqaPaf4XpuHplDjShasQYuQcE71jzGCF8QIkpVQc4ymCIhfNmYTOp0umfMjHOkdsY6dqSNiS2B79d0/j2VE/LGcXlq3YQlo1Tb1Yexfdi3p0aM6A6gc3vt9hMKr1fb7dMCpFMZjAxV33EYn3wEYm4x2tsuUqtvtX6eAYNfltH7oIBVRBeGfQEKXh4C8zGUIiBUOupJq0H/wkDpSTqb2A5VHhTQEj4Kit0w4gX8W+93vJhvmU6vYCGRDeY3x2pOVdlpIUmlE8u4cpwoOfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7SPRMB0046.namprd11.prod.outlook.com (2603:10b6:510:1f6::20)
 by CYXPR11MB8663.namprd11.prod.outlook.com (2603:10b6:930:da::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.22; Wed, 22 Jan
 2025 10:40:59 +0000
Received: from PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc]) by PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc%6]) with mapi id 15.20.8356.020; Wed, 22 Jan 2025
 10:40:58 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>
Subject: [PATCH 3/3] drm/xe: Use i915-display shutdown sequence directly
Date: Wed, 22 Jan 2025 05:40:49 -0500
Message-ID: <20250122104049.388340-3-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250122104049.388340-1-rodrigo.vivi@intel.com>
References: <20250122104049.388340-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR03CA0090.namprd03.prod.outlook.com
 (2603:10b6:303:b6::35) To PH7SPRMB0046.namprd11.prod.outlook.com
 (2603:10b6:510:1f6::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7SPRMB0046:EE_|CYXPR11MB8663:EE_
X-MS-Office365-Filtering-Correlation-Id: d3f20c39-2cb5-4e0c-9b05-08dd3ad1420d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?9u0lBAVIQctWx1Ni311iYwlFGgdE7jVumXWAEnT1aFdxr+GeWm1RjC/P5Y+/?=
 =?us-ascii?Q?CjEO12RxhKQwbN5BAUmsfKYRq+8P/2eYfpAKJjTUJEJcuDETSFVaef5Ze0HE?=
 =?us-ascii?Q?a0NNc2wqDLAoSI6xLypxnlr6nQcG3YETtGdlAAIfMtU4XpeivQBzwHcVvnXC?=
 =?us-ascii?Q?fXPPH9eTMFOIcvg0BZEZX2kZulzvq6bNmlojnobeUaYk3p7KeoeB2h/0KGgz?=
 =?us-ascii?Q?Njg3fNW8W+vrHqEMo4hzI8AZ2p4cqdgzRmC0LLOAwRTqw66upb0hdiAk2nea?=
 =?us-ascii?Q?wq16wXnEK9dr7avu7mTQC98jWMWEdcpdk2m51SepEnTj9Q2/X+klll2X8J8A?=
 =?us-ascii?Q?FpswLXEv4L5PxA3uJCUe2C3DX6MRBcg/ljT0t8DewfaNYc1EHv8fxnfKo0dx?=
 =?us-ascii?Q?YzR4IjYtQdF1tMAJQyzIxuRrfldiZNlFv+62WvapfTdHlVAStaWDIbJM1RoS?=
 =?us-ascii?Q?X1v3wxRI789whS/cpyKerFIP9VWPV5NtC1sZkImcij9PVHKIFtXSKqRjANtZ?=
 =?us-ascii?Q?FHaahcxhWIOnTtlMKhafhp5B8QAG672fF/3w4JCB/zHktIlhL7gBgiX3Lpe0?=
 =?us-ascii?Q?wTWOhOuRMzBoys41i1tecl/weN5qWugMEnsqfjVDcMqZW8XpNgZ+f54cYCtN?=
 =?us-ascii?Q?7839a4sCAc+m7PTiFf5J0s4Yux5TnjtyswiZOi6C4Ah0YMiVbEdVIRB1linG?=
 =?us-ascii?Q?v3qRcrtpJl7sfrQYZedZzkCi96tcLG25XOJIHZ2ypxRStjSG0zQw9PLTBWQ/?=
 =?us-ascii?Q?NgaoqYSGsiPtCvCYGpbc1CF/H2ra+yLuz7hvocZRjgmb5QEGKGYOADgnLb4c?=
 =?us-ascii?Q?v0qSXhpRD4qfkN/E53crhDEePV+ZM2ZXL/3pGA7RGgpwgGRCjcj/KkZTxiBB?=
 =?us-ascii?Q?YAYeIkjTIEODFFXwDCM2QhhcHaIYWS9G8lxH+50rBjmYwIPvH5GDfoX19q/1?=
 =?us-ascii?Q?Xbw2cV/fNiyjC+egyaGsyuQoNDRQIIjBl60lngRll087WFCkfg7GrgZdH3Cf?=
 =?us-ascii?Q?7IRl1bTqOq0Jt1XYCimZ2KqcglMAnDnMviAXAMjYdVIEFKf1ObXSkqYRDDbc?=
 =?us-ascii?Q?kHgKo81vwwN3EhrEpCDu3N6Dt4E5nnO3YTN1IR7W29wxJlnxd4ugEpG/eckF?=
 =?us-ascii?Q?W71VLt7WWUuPCZpUgIFdZQIKnhCRe4eCVaU5b82wGhCpi2N8V2DdAOjiMLA7?=
 =?us-ascii?Q?RdEWFiW6SnHvdXoMqEea3BP8+zg76UdvOFjHZ19oU+2t3IP2cpznQAo9PRNh?=
 =?us-ascii?Q?+uSv9oHL8qK9rpgiJHKIl3iiVohOEwRagBzIu8MLXU3Tu/InHsQ2015XDKPk?=
 =?us-ascii?Q?zVrs3YAzsv/S2KxLkIAxZXax1kH6dEuPvB5Z/h0fEIKGlonH8HdB8qpnXm75?=
 =?us-ascii?Q?w6nHO0Lt/R2eF3yGl0AriWshqULw?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:vi; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0046.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vn6U0uqZ7UWiNLOGuQ2M/Js1OZussLindWPzkwwm3ncM+aDrjzJ9HP9wROsn?=
 =?us-ascii?Q?SIPDra0DBVTCFXR045d0F9ejiiz5+JlJOuoPDJWt6oTpwbE0mXYkOr5ENMKc?=
 =?us-ascii?Q?sZP4q/eBbd3zP9b0Y3Oowt6N6mJ0ie+JAjctPETBLdgOlGTEnDA8JN7vE8Nz?=
 =?us-ascii?Q?oq1PTHAUJuA9lKYHIFb5Rpw4lvY9eTy1eB2mkdS0I1fawDJo8sYjpweEhe32?=
 =?us-ascii?Q?cTMBWSwzwBdK9aDMvySSDi4P8wlqpG4v0GW9eMCGlu13o0k7XZ6U2TVD2oXZ?=
 =?us-ascii?Q?UNUmzE6kzQgljCe75WumZpAN+hG7TxJ621pKXFcWPmyzvQWsDg6I6q1GVWEx?=
 =?us-ascii?Q?6vkNXSmCw5ZPIlyq3cCySjb1G0hi6A4wE22+6Mp47qiPlVEKMNxq2jkUCLid?=
 =?us-ascii?Q?Qb+NppmiHdoknunffT5kKIRoCGczb8c2f1/k+HJtZRUlsjNxxkhIEa2xIGJv?=
 =?us-ascii?Q?s8dw7uFhox6ykn13pQeXu+ZANUGF6KqSIdWM/XOkl95qAigocXu64Tu3mhQu?=
 =?us-ascii?Q?XuU4CSe/jdiWVenvEP3q/s0m5A4T27S/RI1xHt37dqru7b2gBaa6JmS2ZHVm?=
 =?us-ascii?Q?yrW2QNEVLWAwyDXAudGHhLjxhg1O+pgUEKlKS7EdxISQoUmIq6uCa8poxsbr?=
 =?us-ascii?Q?aUdNC+oFbX4lLceEOVFmt/MuXyDabBjUQFqZauJYLZREnl5LhMGOIaNvJaCj?=
 =?us-ascii?Q?gzQXxuTLXPwVg64E7Vd6hIwC34VTXiCAQbes6OTKNXR2lCM1YXzTE0MCHZK0?=
 =?us-ascii?Q?KC42GjIBvqMQr6dxcKB8lmWHhUWk4tUzPmvGRDIcwYfs9ITp8pNQt1ww030m?=
 =?us-ascii?Q?mU8Rn0wxY+FaoPottKlRVSS0yxXKAxlbk7oWE22HZTdh6ZUgJHP6J/LymMAH?=
 =?us-ascii?Q?5zL4oDQ5qbEhaV55DFXPGzLLszncXjs6bFZCVMHuxeVmZ1JJQBO8F2itR1O/?=
 =?us-ascii?Q?iATbp4zIgV+gsZlla+DIePcwetiwlFxWtbx+LNYXzMaim5+edPS3nLB6KVGm?=
 =?us-ascii?Q?IxtxltuOxdwvkXyrzBXdjXt1iKOKP+nHUlWcwU6lOz4FbBdKnCWk+xjg7Cga?=
 =?us-ascii?Q?+loDkV5lG2y7fao8t8FqXskliAo/wqFk9KIq+64UPJFgIXRBK5DJaRgHFB8L?=
 =?us-ascii?Q?zoA+DUYp9yzDf3o8IU3jNiJ6Sf5R2CCkqi9HscegZYBSZoHQeLtRCyeAlJUR?=
 =?us-ascii?Q?gdIe177A8ll4hud+BB8sRtH84OoNU7+bKgQULFo16aTjYECc380lhEx0OHN5?=
 =?us-ascii?Q?AzD6NMikIRoNJpm2Yz0yPKWwWSO8+rwUcwNccLwB9PMPoxISr0yC26yXvFS3?=
 =?us-ascii?Q?Yoc3po0SGxoTvRdoAb691JYaFBd2ZnjxNXKsS3NRW85WIrnMHK/N3ea32KfQ?=
 =?us-ascii?Q?SiqOL+Bui7YTEd+/s4N5m3BVY6mlD958vRObRM/V/Ss4cyKAJ3kGek4JcBzn?=
 =?us-ascii?Q?eEVCYbiVDAw4hnr8ebu2LhHJTvhZoJxg1XMbcofGDxRkvWa0OZOOl+hXVhJL?=
 =?us-ascii?Q?0nM3ysafanslT/TpQAq+izV070ps3GiegrFzbD2HAy4+mAP/0eLkzf7j6Bgg?=
 =?us-ascii?Q?DTMfpAUgI0dioqmNTd6iTfPvCqCcgL4RVjOE6ggEeeBN3aILEK03q/x3LMik?=
 =?us-ascii?Q?3w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d3f20c39-2cb5-4e0c-9b05-08dd3ad1420d
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0046.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2025 10:40:58.8897 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FI9ANnUgllbkASV9oZcDlKwoaGEaH56BJ+DtCsUlBmzvo4KaA+cTDJA+/FrgXQZY6Bs2jPeJxYiP+Vq2kO3w3w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8663
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

Start the xe-i915-display reconciliation by using the same
shutdown sequences.

v2: include the stubs for !CONFIG_DRM_XE_DISPLAY (Kunit)

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 48 +++++++------------------
 drivers/gpu/drm/xe/display/xe_display.h | 10 +++---
 drivers/gpu/drm/xe/xe_device.c          |  4 ++-
 3 files changed, 22 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 4f60d7bd7742..e1ce9eb3332d 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -10,7 +10,6 @@
 
 #include <drm/drm_drv.h>
 #include <drm/drm_managed.h>
-#include <drm/drm_atomic_helper.h>
 #include <drm/drm_probe_helper.h>
 #include <uapi/drm/xe_drm.h>
 
@@ -369,32 +368,26 @@ void xe_display_pm_suspend(struct xe_device *xe)
 
 void xe_display_pm_shutdown(struct xe_device *xe)
 {
-	struct intel_display *display = &xe->display;
-
 	if (!xe->info.probe_display)
 		return;
 
-	intel_power_domains_disable(display);
-	intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_SUSPENDED, true);
-	if (has_display(xe)) {
-		drm_kms_helper_poll_disable(&xe->drm);
-		intel_display_driver_disable_user_access(display);
-
-		drm_atomic_helper_shutdown(display->drm);
-	}
-
-	intel_dp_mst_suspend(display);
-	intel_hpd_cancel_work(xe);
+	intel_display_driver_shutdown(&xe->display);
+}
 
-	if (has_display(xe))
-		intel_display_driver_suspend_access(display);
+void xe_display_pm_shutdown_noirq(struct xe_device *xe)
+{
+	if (!xe->info.probe_display)
+		return;
 
-	intel_encoder_suspend_all(display);
-	intel_encoder_shutdown_all(display);
+	intel_display_driver_shutdown_noirq(&xe->display);
+}
 
-	intel_opregion_suspend(display, PCI_D3cold);
+void xe_display_pm_shutdown_noaccel(struct xe_device *xe)
+{
+	if (!xe->info.probe_display)
+		return;
 
-	intel_dmc_suspend(display);
+	intel_display_driver_shutdown_nogem(&xe->display);
 }
 
 void xe_display_pm_runtime_suspend(struct xe_device *xe)
@@ -439,21 +432,6 @@ void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
 	intel_dmc_wl_flush_release_work(display);
 }
 
-void xe_display_pm_shutdown_late(struct xe_device *xe)
-{
-	struct intel_display *display = &xe->display;
-
-	if (!xe->info.probe_display)
-		return;
-
-	/*
-	 * The only requirement is to reboot with display DC states disabled,
-	 * for now leaving all display power wells in the INIT power domain
-	 * enabled.
-	 */
-	intel_power_domains_driver_remove(display);
-}
-
 void xe_display_pm_resume_early(struct xe_device *xe)
 {
 	struct intel_display *display = &xe->display;
diff --git a/drivers/gpu/drm/xe/display/xe_display.h b/drivers/gpu/drm/xe/display/xe_display.h
index 233f81a26c25..a15ec29b862b 100644
--- a/drivers/gpu/drm/xe/display/xe_display.h
+++ b/drivers/gpu/drm/xe/display/xe_display.h
@@ -35,9 +35,10 @@ void xe_display_irq_reset(struct xe_device *xe);
 void xe_display_irq_postinstall(struct xe_device *xe, struct xe_gt *gt);
 
 void xe_display_pm_suspend(struct xe_device *xe);
-void xe_display_pm_shutdown(struct xe_device *xe);
 void xe_display_pm_suspend_late(struct xe_device *xe);
-void xe_display_pm_shutdown_late(struct xe_device *xe);
+void xe_display_pm_shutdown(struct xe_device *xe);
+void xe_display_pm_shutdown_noirq(struct xe_device *xe);
+void xe_display_pm_shutdown_noaccel(struct xe_device *xe);
 void xe_display_pm_resume_early(struct xe_device *xe);
 void xe_display_pm_resume(struct xe_device *xe);
 void xe_display_pm_runtime_suspend(struct xe_device *xe);
@@ -69,9 +70,10 @@ static inline void xe_display_irq_reset(struct xe_device *xe) {}
 static inline void xe_display_irq_postinstall(struct xe_device *xe, struct xe_gt *gt) {}
 
 static inline void xe_display_pm_suspend(struct xe_device *xe) {}
-static inline void xe_display_pm_shutdown(struct xe_device *xe) {}
 static inline void xe_display_pm_suspend_late(struct xe_device *xe) {}
-static inline void xe_display_pm_shutdown_late(struct xe_device *xe) {}
+static inline void xe_display_pm_shutdown(struct xe_device *xe) {}
+static inline void xe_display_pm_shutdown_noirq(struct xe_device *xe) {}
+static inline void xe_display_pm_shutdown_noaccel(struct xe_device *xe) {}
 static inline void xe_display_pm_resume_early(struct xe_device *xe) {}
 static inline void xe_display_pm_resume(struct xe_device *xe) {}
 static inline void xe_display_pm_runtime_suspend(struct xe_device *xe) {}
diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_device.c
index bd6191e1ed3e..b4b8c6582a20 100644
--- a/drivers/gpu/drm/xe/xe_device.c
+++ b/drivers/gpu/drm/xe/xe_device.c
@@ -940,10 +940,12 @@ void xe_device_shutdown(struct xe_device *xe)
 
 		xe_irq_suspend(xe);
 
+		xe_display_pm_shutdown_noirq(xe);
+
 		for_each_gt(gt, xe, id)
 			xe_gt_shutdown(gt);
 
-		xe_display_pm_shutdown_late(xe);
+		xe_display_pm_shutdown_noaccel(xe);
 	} else {
 		/* BOOM! */
 		__xe_driver_flr(xe);
-- 
2.48.1

