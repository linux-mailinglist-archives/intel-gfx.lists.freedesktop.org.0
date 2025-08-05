Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9920CB1AF5D
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 09:37:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB1C410E5FC;
	Tue,  5 Aug 2025 07:37:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dXh25Hkc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 303D110E5FC;
 Tue,  5 Aug 2025 07:37:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754379438; x=1785915438;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=EzjWkYemlcab1gDJdG+7tdeaufOxLxaDlOVziiTAWoc=;
 b=dXh25Hkc9+21bHwL4H3lGFUPi8kBwGoqX836DvvNCtazQPlgxnL3Kzsy
 VdMnajPnaznRwdCyrAkCxOSJNYFCXSew7jRhFSS/RPmAyPOjO5jo1tDcA
 nlGdLCjLiSnZq2/JZuDvPt59z+hLm1fnCb/82TwGvAyUOqxq6T1INI5qh
 YEONEZBqJt1bXDUXJbdpkSalYXNy6AN5ay4iaTJnEFzD0KeEhHSqRGvZd
 B4gn+RpZzmfv7fWSSPSeQHQ2vGXGErsFb1laAOxI72b7ka5YPhVRNUJCC
 sh6zMllwKhV4LG7Hvp7k+Yyaz8fP7pNLoXFyw3PcbZ49MhGNuih5X3R6/ g==;
X-CSE-ConnectionGUID: BHwSJC4RTouVUmXJp0Yd7Q==
X-CSE-MsgGUID: Ijkj+10mQoW8NMS97LpNtg==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="60469669"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="60469669"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 00:37:18 -0700
X-CSE-ConnectionGUID: EtxfreKrQ1WJseP4BmkQ3A==
X-CSE-MsgGUID: hIlrKKHGRlSJ2lTBK3s0eQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="188080041"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 00:37:18 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 00:37:17 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 5 Aug 2025 00:37:17 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.47)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 00:37:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cRGsrilSsV3oVKjhJtetvSjt7+arFpSpKwqr/Z4a/U+lsfS/abuAm1qU9lIuZRZzlAodnauxQsgkDqSP3+ZYgDprcEtUz+Ljvr3EhpSulo/kmY6zOcvFyZKRIhkTI3Kmo2g2d8aDSg8rStqzvWmkUU3ghcuJy348GYOH5LTjEBQA03K6dQgcPqeFPMCU6hSIZ2KHjxDatE4tFXgsAmfcjmTOKY4O38OT9mu4cREJ/rE1EZrUCHgWeG7eShNSZnV3iRMiUywIkuAZI2JJpuH5goWypQZj8OPLcxAvE+NAGf3Oc2OtZOqIR0+t5tBtwR1GSudXH0BtAY2GP0+Ju5rLUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uSOE/H7g9hcM1silFthzyM5ktTuCp0+GuBPn3qGyLRg=;
 b=mRMo42rxUzW6+TL7PM/RIvN47ukxirNXgvieSsw5xiJVg/PSlQAzpZ2ksofT1uYph/XkxZEfQURVtTPW7kz0z0zUUE68LLySRNzlbMYmXBnhP1g/fJ7G6kKyWBLTlRu+bpHgiwY+EJ9NNsHKBOoTPxrlaekt1g6KwDBzjko5WB+nQS1qGWznsw2aPOzWx3abswI/c+Fas2+So1DGKCp2lIimhdcNugdntkLqyn5vW5Po4vD9d6aii3vvPfB3GnIVmP3lxHFBN3SpKgnd7rNKI+0VUOD5yuvctsm4eVLhFfe3wzTTu+DOaOdz+4l5ra5P5RE0YC7nR6gCi9fYGm4LqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB8161.namprd11.prod.outlook.com (2603:10b6:8:164::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.20; Tue, 5 Aug
 2025 07:37:15 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.9009.013; Tue, 5 Aug 2025
 07:37:15 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <stable@vger.kernel.org>, Charlton Lin <charlton.lin@intel.com>, "Khaled
 Almahallawy" <khaled.almahallawy@intel.com>
Subject: [PATCH 04/19] drm/i915/lnl+/tc: Use the cached max lane count value
Date: Tue, 5 Aug 2025 10:36:45 +0300
Message-ID: <20250805073700.642107-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250805073700.642107-1-imre.deak@intel.com>
References: <20250805073700.642107-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DUZP191CA0024.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:4f9::21) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS0PR11MB8161:EE_
X-MS-Office365-Filtering-Correlation-Id: 492b4bef-2464-4ac8-83ed-08ddd3f2e611
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?fytwhbUisA4+PnYhloCRfQvVKO5bsbNH9ZGSN4L3mRsuazyZUZESRYGAtfli?=
 =?us-ascii?Q?xLrphB9EXRk8wnnBQc8TIVoML+gsDgXSNsjgkl+fO4WNNEISFztd3nvuww9U?=
 =?us-ascii?Q?TwVdx2AG6eFc3N+dMrMa3GrapNeMKOXlL1TirzZWS0RGKCXecr8YPXQfbQFN?=
 =?us-ascii?Q?VJ29jdYoiVguG59jO+cnEH8ow4iFGYpcryeQh6C2xd1qxtJPJ2JZyyxMWAdu?=
 =?us-ascii?Q?5U0tfGDgHmFrkNr0FsmBZxUoYZkyrrenrXyooPbIKSLJLsqJDoLkHgqBnhLA?=
 =?us-ascii?Q?Kd3/+pVpSdRwvJvtJfkOjNLer/EHRiw1HqeID6/60Mho0N8beOufHPd8y5qT?=
 =?us-ascii?Q?dTCf9LmXG0XL36V0QWnSkOVZVmkiCxltiUvWRg51Ym5q/V3zI9CjEZrnswOd?=
 =?us-ascii?Q?3mA6ylWqTvuRXbo2vOvOd0xGZfGHELVvQ0GNRGCNqJ/7iUJesPOjev/30hBS?=
 =?us-ascii?Q?RJ8E8Z7cc+JAPvUiL/E7W6EEFl21KGX+c4KpqJ+ch7X6gG2Wh0CdbOuLs7co?=
 =?us-ascii?Q?henRxab1QligYStPWj7mVVSHNbKEsFi94kbWIEU51dtGaV+m/ef6yzT+wGmD?=
 =?us-ascii?Q?YQPfF+1Vuj0DGs7sGT09ms/D7HZMP+qWsNpZFILonEWhMSiLTLRg0IulFX6S?=
 =?us-ascii?Q?PF1j3Gf/K/Vjt07lVXAhmFf74c+LxBjND8y+Si1nyAkMEpwkdRRH9wdZaxZ5?=
 =?us-ascii?Q?fQ5jMWN5Re3wvyE6kEqDb7mW4ehlZr+7QMGFjsXupUhDx+jWdA9NA1IYAB5V?=
 =?us-ascii?Q?jQHPWhuhOD0OVJ0nAj3+OM2tmKGlRGJ8ZLKpiyVqsV82QX0Syl38RoLW9/tP?=
 =?us-ascii?Q?rMY+Y6l0x+HbfbDLpYAriPmAejaR66P3dHdDs5QNVXgfJzVwGvZYyEbibSBE?=
 =?us-ascii?Q?uSk0ewYJ3BtdqWf2fZkXoqof04zU4EDPiNzSJtuNz19W16leET4R6qS9gRk0?=
 =?us-ascii?Q?SKRD6hRYLyydTxstmJ7kTAsT4FSnb++CbHKsEt4HXQzJFaJwSYyCPv9yawJ1?=
 =?us-ascii?Q?d2qGmvqG7VoCEkVLPnzYdqQkbSFi8nckxM4d3zgtRdqn7UzVznzHrbj+ObKB?=
 =?us-ascii?Q?u4Hg13zcTcve7wxsBeOGZTK6CHHh1TsojX5Gg4qMXYvw5qmVNhBJj7+lZNue?=
 =?us-ascii?Q?gcD5dupcLkqBoOXkFsriPb78hBJhywT7GnHqgmmvOIc8Ibg/MdwZy/ltgByf?=
 =?us-ascii?Q?uUkeOHbLSW+TJM0auONY2JER4eOkXlErrtxyekUI0HyWXSDRcohYe9hjMleG?=
 =?us-ascii?Q?RupRHNYtLkr4n/jtQUCYPhyTrUMd4QA3Sc/y+JWm0yirgJBdQj0JMjGS/l83?=
 =?us-ascii?Q?A7TlDRxstj2HWlMv3Y4ed6jQjsc4RoklMVb2ifFOaL7IwMhjh3i7hPJx8pda?=
 =?us-ascii?Q?Cm0REMFbkrxI2R1ZUqZdWKlvQ6JsneFbiGUmOkWX3NsySxZt9+vl1qftpQjI?=
 =?us-ascii?Q?DyKdnGD944E=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cfllXMSPO0HbqZ80ML9DHmgqZMfxfvGH7DGTpa04NRKT+s4Dy0+8kSFbyaB+?=
 =?us-ascii?Q?upQy3QKZQz6vuhSoQuh2HTWFymBVz5AjnjFt3oKHSjXc/i8HIWWsYdAGuL2i?=
 =?us-ascii?Q?iKGEkQOZsO5r1TP9k4OhrYz1D3t+04kL9BnkyekK1jpmMViolBcfjTB5yCl5?=
 =?us-ascii?Q?Z7BE3m/TEm9ib4XANSUQotUptP1bBcy8fW/r1wo7ydmUpEl0PLrHd6PyWCYE?=
 =?us-ascii?Q?gNkaWLz2kN2pQskwn96R7L1wP/ogchVctdwIndHBWRhEnTLUzcScDmPOFXJ7?=
 =?us-ascii?Q?Sub0bESOMRXarPEaRJ8f7//ZuUeMdGztCG2WVQ+tvlhJDQ+DZDPMAtGTNKfT?=
 =?us-ascii?Q?IyqNiE70lA/tcnasxN2eL1KVVfJIkOy9aYL7PrGJNssTrWaf7nhOd5/1bmGv?=
 =?us-ascii?Q?1a9KScp9lluzj4a3MWr1jmkxDUgMZceXaCvZLJ5QgF80llEmVS0YzTs0NtQY?=
 =?us-ascii?Q?ONlevB1IMnDaeOltu9+kXHjgOCrd3CUfJcjop5juqmOYN6yMDXz4tWh3I40y?=
 =?us-ascii?Q?rV2viWxOSnoPadJdizJ0uvnCf7qE6yF2V6+t12KhgnjqyN1j3+joQ0mOM022?=
 =?us-ascii?Q?RVf3qujI2dNPN9wEVTzH6zQhdGqCQ97nBhPSkUTfimo4i23VkrXSSVHDEWwU?=
 =?us-ascii?Q?k8TyTO20Xhpl36QA6/8HXhzPJfDeFWimSbZE0RaXJTuaTErV0c4BLbGmLBFD?=
 =?us-ascii?Q?Kqwki9byS09sShj3YwpOc1H18jpQ7fZ1n4neKwrptrVAj8WwAU2wI6P7c3Q2?=
 =?us-ascii?Q?tIdmcvqwXW7SXCefUvxVuyNMfMrMCZzM3e/ukCPDMvfboCvALw06T52AHHwt?=
 =?us-ascii?Q?ap9uivTUgvMeD4A7BPzcjYAj0Em1viFchhX/UgV1uivSndxFoSgRokI0Lrh/?=
 =?us-ascii?Q?p97Todywl1jGgWlcxqn1HZM30Dj+cTULqxBIE57Qudl545+QKpeHpAfFkFHZ?=
 =?us-ascii?Q?UP1UG3DrLykmfmmu2kryEF0vtgMbpcuUH0GwgDc1jkMEJt355KMyRdAwkfzg?=
 =?us-ascii?Q?lI3v1A2FEsy9Ik/g9UIPdm0ME0iEiI7Wo0rHopXzhfgHQh6TuXq0WALCueyR?=
 =?us-ascii?Q?HB5ZUkMjxtJAZCVd+WsLRfca5YhJTJvAT42+4fNyAZPLIuDy0lrvIWzxJO9V?=
 =?us-ascii?Q?eqnP8KG6C907PTlcaFurlaXDGh0PQG5CxkGBZefxWibLHDvt732dAiCMoQC1?=
 =?us-ascii?Q?dqYqxMjd4Ku67voOJ7Y806RtRLKlMtmtMg/imkGeZW87mHLopZTaQE4lLSc7?=
 =?us-ascii?Q?m9v2ePrxHAUNO7kv1jx4i10NYDKS6HW1IaVGJXHPj2/f5ePhjS+AHNJeqLhM?=
 =?us-ascii?Q?QQ08zTuG++Ykukb4ywVeR7pyVFy53A9IdomYBsx2SR+gxADZgZeVWQfO6sun?=
 =?us-ascii?Q?DT32NY0bEbbnNW//6WjzFQeBUSY7P/DM29Zpjcsep5yWbR3Bh9MuLpDgVTEd?=
 =?us-ascii?Q?Ms3tgjoUOmGVcb9ghnTK05Ak4uX7Di0z5fC3mq3vTIHu4GDrdo0HLqdj8Nzp?=
 =?us-ascii?Q?FYOlw+IWcH2H3DFysqp38QGc5jxe0O9xrlAANj/ku3AkqIytePJY4soB60tI?=
 =?us-ascii?Q?FBNqK5/VadPoqyylkfLfUP9504ESb97XG77qkE4y6pfAcsQf0Xl+31u/nJZ9?=
 =?us-ascii?Q?30aZUQLjU22GnEXzr3vt9yc7SvrbX06oWaUi1K98P0jX?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 492b4bef-2464-4ac8-83ed-08ddd3f2e611
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2025 07:37:15.7881 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DRgM0x++8ybHt58hdKMz44Po8XO8YRlOlCO4Dxlo+g//HLQjbqxg6YLxUaeKTbCb5KaCEktdtbDjxpBSNKYmrw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8161
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

Use the cached max lane count value on LNL+, to account for scenarios
where this value is queried after the HW cleared the corresponding pin
assignment value in the TCSS_DDI_STATUS register after the sink got
disconnected.

For consistency, follow-up changes will use the cached max lane count
value on other platforms as well and will also cache the pin assignment
value in a similar way.

Cc: stable@vger.kernel.org # v6.8+
Reported-by: Charlton Lin <charlton.lin@intel.com>
Tested-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index ea93893980e17..14042a64375e1 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -395,12 +395,16 @@ static void read_pin_configuration(struct intel_tc_port *tc)
 
 int intel_tc_port_max_lane_count(struct intel_digital_port *dig_port)
 {
+	struct intel_display *display = to_intel_display(dig_port);
 	struct intel_tc_port *tc = to_tc_port(dig_port);
 
 	if (!intel_encoder_is_tc(&dig_port->base))
 		return 4;
 
-	return get_max_lane_count(tc);
+	if (DISPLAY_VER(display) < 20)
+		return get_max_lane_count(tc);
+
+	return tc->max_lane_count;
 }
 
 void intel_tc_port_set_fia_lane_count(struct intel_digital_port *dig_port,
-- 
2.49.1

