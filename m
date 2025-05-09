Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88527AB1BEC
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 20:04:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13DD510EAAC;
	Fri,  9 May 2025 18:04:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SZI806Qk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3997910E125;
 Fri,  9 May 2025 18:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746813840; x=1778349840;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=hDIKXGCAnQeHhwyV5mMtx7Mclakho/zTCu1dq2Zptqg=;
 b=SZI806QkPeZZloWEzKZidgFKCdErwwrdU6Wjiu0RWl4GdlccGdTZUMC/
 12rNJ+R/FiPfEI/cFs9NQSfgOLamARucuUknEHD2HzeHs5iiDRhZsHzwB
 wyC616W9TG14jmD0usn6byKIkMj9JI4nSCp2h3qE+uYNfLq1F0VPnBy79
 n2qftYUPX5pxvgnTLDw9sA3Fme0Sk2YD1i2H2tbAOiHVsB4rj6xpdFHXO
 lzlW+Ah/We6ZX+IzSs33cNWTQsqKE/AZkx4sgHq0C9itzAUf7QROCTcxF
 aX5OKJ46CYbIw2KJ4zxvIiRv1QLruiJrkqEsd7wmiz1LGLe2St767GOpd w==;
X-CSE-ConnectionGUID: rWwRAqjhQtSXFae+X3Os/A==
X-CSE-MsgGUID: WwUHAVKwSiaWZ+dXkU5fMA==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="52464883"
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="52464883"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 11:03:52 -0700
X-CSE-ConnectionGUID: r4QUkCYPStioZTw9b95DRw==
X-CSE-MsgGUID: BYjNEKlISFe6/vGe6jNpzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="136564172"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 11:03:49 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 9 May 2025 11:03:48 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 9 May 2025 11:03:48 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 9 May 2025 11:03:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uAAneboTmqTOS8rCT4zah1bxyhGjZ+oc4kKaroQD8vnVM7W3XvsWjcyKkEQgN0dahwuCx5ifsyKHWtxzuHrp1X0qHT1EklovomyrTHAWcebdSUsDu4nbbiRZ/ls5SJrWpn5Se+10XHCLaHGlrtCa6E8NwWL9+otb5g7Jtbtms/6moyVDC3QGta7UDTiR+7euIJvp72OMCOjF1KcLICRYAL5AqT5hVgoZxsrhxs4GVfMGFUpAjZRY3fCigXvR9dBQ2FSjwfNtTR0hz0GzUidywe9o3OAidFk34k1DvgRZGHd+ZWpig4J1vfAiRHrShWMjqXsMjTMNk/jIrpjMXVTuAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QUSrJUZ+300wCzuJNK2ganIL/zgsUfHU7/Txrch7/FE=;
 b=xLp6IXhp11MltmnJy6XtpWDShVD9Xv4cjsz1Y7/O332L/dp+U44/7YtlrLf+hsH7DhYa707EjrvwyUV6ZFI9fXN2zTT05y/S5hf82ahmnOFj2MslJzXB5kHkv7Eh4QgJA+4c9S31BA/a4Ovj6HAbZxfVHgX1ajLtlODQ8Wb8FxoSyBsoT9X+nUqWox3X2eBwi19JuTMlWAJSTR0B0xrc44BQ+ABU5j97e7THRfT7HkYUqCfKWvyEuh5Sa29bmazftn8VfTb7XYKZPFGimk5e2nNbcxILFa28F/mxVZEeOPC4iE5MTi4BgcB7807+ru0OPGYFOyX+7S6KkzGaoICRYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH0PR11MB7659.namprd11.prod.outlook.com (2603:10b6:510:28e::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.22; Fri, 9 May
 2025 18:03:42 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8722.020; Fri, 9 May 2025
 18:03:41 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>, Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v3 04/12] drm/i915/dp_mst: Update the total link slot count
 early
Date: Fri, 9 May 2025 21:03:31 +0300
Message-ID: <20250509180340.554867-5-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH0PR11MB7659:EE_
X-MS-Office365-Filtering-Correlation-Id: 972adaa0-291a-47fb-c101-08dd8f23d4f5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?MFcA5e5j8mlx9432eTMXYGnVry2sEwHS0hQ36Nuc3JTJWAuKpuRdVo8sQlUv?=
 =?us-ascii?Q?jap8fYirhILCyEpHtTWtVrbTD1+9lc1+ulxr++6whXtbJAuwWBBI1Y3m4q33?=
 =?us-ascii?Q?TtF1ovjzOV6EIdm9lOEhbjFX0Dwp2ITdARZVi6FO4Th9zh7S/LFhYO1zj+qi?=
 =?us-ascii?Q?Cls4ofpDF0nKwXTsbkkSrjBpPvFHabKXcbMEKsYI0Poo7EbzqcmevaAFcHF/?=
 =?us-ascii?Q?xKYpuPbUDTsBH+Cd2wTHTqzyLwHy0vnvHSmxcl95oLqCwdzxkTF/AWKxgLeI?=
 =?us-ascii?Q?qDH8D13JhCfQqkVDVp52Sh73FUwO8bG4A5X1Msa6fAsTpCTGx8tLZO4Nuim9?=
 =?us-ascii?Q?8m9G9q66lLdrHACCS5pLC6nRgHjcjW//8T8LnyVBCzEiV5IDwwQcyHWSAP+N?=
 =?us-ascii?Q?f2EeLeN3ZIW5uCZEMrEymwQUWx1M/HJE2AjvkZxirXm+Kw4yaWoAm5nhoVjE?=
 =?us-ascii?Q?yCJgTkqiYKigzuwjxcz/4yfq5+2dfKmGZY3/HcJzor0Xgq5AUiERSbqt7tih?=
 =?us-ascii?Q?md3oeblHGC5U311S+zLwbGAPeu056gGFBWgTIjis9KbmiPS8v+XyYlgd+Ckc?=
 =?us-ascii?Q?xIFWoxKOsvt5EI+l9k3Drrd0LjHNTSwnSG5hLsf4J/aeRQu6VkaTfpkr6oKe?=
 =?us-ascii?Q?Nqaw5eeclzYJA01mF4pqXPwMajXfd7tpUYRxWMVLS5ySk48/zbXMTt05D290?=
 =?us-ascii?Q?DFAEzzschXxOrhdGJvowWo2EhECH/dwgoL7Mwk3d7NXjwiAGro+lj+ZL0CC3?=
 =?us-ascii?Q?sDobq67Ir2F9C9umathhCaImgZnF/4I2onVqQMN4/8FIpgYO502jvOSKZvxE?=
 =?us-ascii?Q?zLxD6e595L2Jp42I5gFOC4SqdI9XgGJ0VsHOVSmdvyceWCrqd1WShBRkjX0/?=
 =?us-ascii?Q?u4uQUsCVmKW9O355OUXdoas0Bp43pAJkFdDdbwZoDlsafCibS3dJPIEB3HU5?=
 =?us-ascii?Q?eKvdR46/NQvI/Vrf6beu9oG6nV8yRFFMC6fzgizDbHpaUzECheQyp6IyYBs9?=
 =?us-ascii?Q?wLuhRRDycJ2GEadRKRkRkVUxfn+1qQoAEvkoXpeK4/wO751m0ODaozDDODMs?=
 =?us-ascii?Q?/dBddPoSOJ86RAw73AvQh/HqQ+/2AQgQDgw4fvArp/jJlad7XvLQPJqTiBSL?=
 =?us-ascii?Q?ra8zEknBUSKP00Whu5S4oaIr7vdRevEsOlAOCwG6dS+H7UBZ7slyd8FQhWZK?=
 =?us-ascii?Q?qR8HICPfQwIGGfcxqUmSkOxRVErEpxY770NDoHM+4g8dNuWc8PW8AvdVys7l?=
 =?us-ascii?Q?TiNrTfP8mCoaZFml4/a2IqWAmuhwK0aAWj8uRO1nmFZrEfG9JjMTftxHir36?=
 =?us-ascii?Q?OlgEF1vqO1Vms1UNoJMrSeX4f6mkAvAs4XhhJXZSKOf8Pm72/tFj3NzWte23?=
 =?us-ascii?Q?OHHPtNOuTG16+a3ZzI/ybcUpMkPXgxDXn9WKNQH4Ue5UDRdwnQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qXRJkiK6mkJparOA/Oum1/Ay3j/Zzy5FhUAW4CYXOJyaLs1Jk/RZaqgQdjGw?=
 =?us-ascii?Q?HuYY7Xfno5Lh9rEODhTl0yndtLrrv6gGp0/3+kshrbMZazcu2bK7O8vP4qBe?=
 =?us-ascii?Q?tIuLl0X3IvCOGiLRDL2yIHw8FK7FcimjNzPo6Vn2e1hcTQ5g7QpO6tF6OItc?=
 =?us-ascii?Q?aH/YJAE26DO/wpUyh8eD9WkrUm7hj7BFFn48qCdCTRSWkVGF7lNUK95sBuUU?=
 =?us-ascii?Q?SljnIZfO/BgxEaMhMU0MpmXs7WOxfHZIaSlCkn7cIOwtJ7HWjbytwe2J1VeY?=
 =?us-ascii?Q?yA6bQEhkXbDDan4wW+PxZynSuUdt0ltn5kiu3PkbYX57tOOqZqtslQDCvzcU?=
 =?us-ascii?Q?M2fZc+qQr9lTNbYEM7fRj8TxZ6p3AlXRxgxwsuE1aDwSPXgF3CoxFfeDc7Nl?=
 =?us-ascii?Q?iOgB4E7KR2gvzgy+5ZjKu/PpAAgrqitj2wgTzJPzsnLZvVlWvRG5aa9wIdA2?=
 =?us-ascii?Q?EFcvK8QLjQI/NvSxevGT94jnNayerIokee5waNgvzgpIVln+qbKqVRyVmRNd?=
 =?us-ascii?Q?Ql3hf0jHzKbGQTRORvMygqdv+OoVG+6ayIf5kBL73wbHZsjVG0P6miP00JbZ?=
 =?us-ascii?Q?xSG48dITzPoZdHRrXHw4F+LlQLgHtFf5pUbObUDPsHt42j5UbYE0JOJ5e//h?=
 =?us-ascii?Q?9onqZvhH8tx1QSgFtrlA4UVqlMR/8guEGTwFp9yj19IkijcqXUTpYxnSMIJW?=
 =?us-ascii?Q?exeUDyArArFTzwX3wYaJpWnq6DJKpP4NWK61OQo9gPDGecZD02jr96YSe/CC?=
 =?us-ascii?Q?GfevwUUc1PO6aiKsvPXG71steCu/t5oVHILQEAixN54kUra/UOIUw0ZahjS5?=
 =?us-ascii?Q?Bqi2Ri8EGJufSYs75FdGFe+W4+bhSfaRL5Cq9VrK0E/vQDakbb6CobdPai+E?=
 =?us-ascii?Q?F+lSUcHQxUZZQHN8EynL3t1OM4W+puSMTVyHTApRtCuM80qyi1i5XeXQPiOA?=
 =?us-ascii?Q?B8caKoGd1un8kPF4cGA7ouJuQHWzVSbj68JEhh8n63sOkgTpB/D9jm51S+9x?=
 =?us-ascii?Q?5h07spqA0DmOG7VnFvUkiutB0OHa9wcLi7xx9XHjHjuFGS+gb41vNougTTm/?=
 =?us-ascii?Q?0Ts4PxPHcZA/4rYRDf07wiOdybKbQmID7sqxBKNxsOyvFV7j6AUqeG8oeKLJ?=
 =?us-ascii?Q?p7deffcA3Hni2kC/uGzkzWYX1g7z8ZVK4ta8k0pCc/mx0sHJuCuYHo/H0xN6?=
 =?us-ascii?Q?AKgxfKZ1JbU9up39b4VHSR8b97aFeqP00GXswoXetjrZeOhnwEd76XzqZSJd?=
 =?us-ascii?Q?P2RFwPDLdZql6Bjrly+L0tX40aASUGIjX2ZcP3PjfUXUkYG0dtpYtqzRTERP?=
 =?us-ascii?Q?vVvx6kAFD3jcRuLnAYydi2TaCcKe0LeXhDQdslj22mPEe5ZtNMg2ib5LvsQL?=
 =?us-ascii?Q?EJjSHSC5CpL9HKmJBtEDsyDx9qHayhbKGxh/Lu0t8gzl/BMi3oKmyo6V6X1L?=
 =?us-ascii?Q?+sPfObWeMSTcUuWAQ3U1peWGZb8sbbzcjOgobN1g8qEunHW2V68gIqKNJf1v?=
 =?us-ascii?Q?WuMOWm62CEWhZ1sNhLHZm0oIqE9ru7yLIhlNWHwe9k0pqgPEMsAdqSwmKR+t?=
 =?us-ascii?Q?Jyi0BlKaxyDN4WD3mC8yRfyY4/GiMU/36v5XbJ40?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 972adaa0-291a-47fb-c101-08dd8f23d4f5
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2025 18:03:41.8427 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DeyZChXcBhkhBH2TXLDnVAe7HcyLXiZaZVTbpr0ekekB/0L0SUe6N+6iwUlun8gM8VR6kQStVu7eK4tRA3VEyw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7659
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

A follow up change will check a selected bpp's BW requirement in
intel_dp_mtp_tu_compute_config(), however that requires the total link
slot count to be up-to-date. The latter in turn depends on the channel
encoding and hence the link rate used, so it can be set after the
link rate used is selected.

This also allows simplifying mst_stream_update_slots(), do that as well,
moving the function definition before its use.

Cc: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 36 +++++++--------------
 1 file changed, 11 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 196182c3fd988..4345107aa3e81 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -241,6 +241,15 @@ static int intel_dp_mst_dsc_get_slice_count(const struct intel_connector *connec
 					    num_joined_pipes);
 }
 
+static void mst_stream_update_slots(const struct intel_crtc_state *crtc_state,
+				    struct drm_dp_mst_topology_state *topology_state)
+{
+	u8 link_coding_cap = intel_dp_is_uhbr(crtc_state) ?
+		DP_CAP_ANSI_128B132B : DP_CAP_ANSI_8B10B;
+
+	drm_dp_mst_update_slots(topology_state, link_coding_cap);
+}
+
 int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
 				   struct intel_crtc_state *crtc_state,
 				   struct drm_connector_state *conn_state,
@@ -276,6 +285,8 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
 
 		mst_state->pbn_div = drm_dp_get_vc_payload_bw(crtc_state->port_clock,
 							      crtc_state->lane_count);
+
+		mst_stream_update_slots(crtc_state, mst_state);
 	}
 
 	if (dsc) {
@@ -491,27 +502,6 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
 					      fxp_q4_from_int(1), true);
 }
 
-static int mst_stream_update_slots(struct intel_dp *intel_dp,
-				   struct intel_crtc_state *crtc_state,
-				   struct drm_connector_state *conn_state)
-{
-	struct intel_display *display = to_intel_display(intel_dp);
-	struct drm_dp_mst_topology_mgr *mgr = &intel_dp->mst.mgr;
-	struct drm_dp_mst_topology_state *topology_state;
-	u8 link_coding_cap = intel_dp_is_uhbr(crtc_state) ?
-		DP_CAP_ANSI_128B132B : DP_CAP_ANSI_8B10B;
-
-	topology_state = drm_atomic_get_mst_topology_state(conn_state->state, mgr);
-	if (IS_ERR(topology_state)) {
-		drm_dbg_kms(display->drm, "slot update failed\n");
-		return PTR_ERR(topology_state);
-	}
-
-	drm_dp_mst_update_slots(topology_state, link_coding_cap);
-
-	return 0;
-}
-
 static int mode_hblank_period_ns(const struct drm_display_mode *mode)
 {
 	return DIV_ROUND_CLOSEST_ULL(mul_u32_u32(mode->htotal - mode->hdisplay,
@@ -714,10 +704,6 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
 						  pipe_config->dp_m_n.tu);
 	}
 
-	if (ret)
-		return ret;
-
-	ret = mst_stream_update_slots(intel_dp, pipe_config, conn_state);
 	if (ret)
 		return ret;
 
-- 
2.44.2

