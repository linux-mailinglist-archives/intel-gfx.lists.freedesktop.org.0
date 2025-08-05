Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67BCAB1AF6C
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 09:37:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42DB810E611;
	Tue,  5 Aug 2025 07:37:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gHp/NxjE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B317910E5F3;
 Tue,  5 Aug 2025 07:37:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754379456; x=1785915456;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=IYSpQEBWUWnjFb27C2PpamfgzL+UBnDJnbpEL/KGUro=;
 b=gHp/NxjEyv6AFCgATmdJA0kkMZBY+w26ytnJXHaHQRTnVx1PFZjI+BW1
 T1i85wF+7TlK7r6RQ+Ncu1fD78qKqajqm8H0HzOGZpK7z+kWJDuE1J24Z
 LfsXQkqwPoQSJHOMblCbEDfSIR25Cj9J90HSj6yswU6hDacYV0/hUkIaN
 TIzhb+7EuGeycBZOy27RrAFQfahwArJf8pdrtYAwTfgOz1JCSdclJeaKp
 H+D+pBu8bWTYL/IIQpm7u2DhPlfepavoig/PFH6zu1lXaVZlJx86JQUWo
 CsOmoGoeiygailenOpN4Me7w84X09gKaAoqbGcxma0uNnHUE9SQxX0QsM g==;
X-CSE-ConnectionGUID: GQE3MX1DQ4qAWlNfg/An8Q==
X-CSE-MsgGUID: 8OkJmwlBStqLiquXXQlPUQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="60493249"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="60493249"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 00:37:36 -0700
X-CSE-ConnectionGUID: GcD4WIXCQ6Ssk+R8FTCzvA==
X-CSE-MsgGUID: iK1G1z4kRKyznvkQhYIPzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="163657939"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 00:37:37 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 00:37:36 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 5 Aug 2025 00:37:36 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.41)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 00:37:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=G/QXzIQj2K4aLlOW5/vYsm8fA+QX8BDKmByyZb6/tQVkLL+EKkDc1vMD1j0p4GD3sqShBz+Jvtyi8GOAR20SKk4gUoTRaB9b/MCPKLQjhxllkQfPeXnxT6DPbYTG9CRhSmawwXoLOmnqlACaXyu/0nyF+EBSH+//yuv8syTG/9MItCFQk0gpjIeg3XwtdVYd7HTr6pL2gLU1jeCKvB37KfQFb4+JV1jQD88HSHyWnBaJpZkI9NZOptBwEAu8TBANZI7vLSdZAXyxkt9AoT75ZUXMAM/uBjauisnUuiF7MP8W3HtmjgKniFdNTfsXOUyhLV64q4Dre7vH06at3lMO8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=44VgVIcLAS8d8CbpyhornzBPoqBOim2yI4S9Or2h348=;
 b=dliLLEA8I0EbjQpVxJUxVpDn75A5rm2uXVfNxBFvs0huLSs9+O1f4JBibFubV2vxXS+awQm7cbySynqylGpnAisvrT1vuzdFfaCwcHp+KMXE6pvVcBcCn3AiYOVYJ02cuNyEULIxLdI3HMqgHo5PLu/R7YFK8MDlWdmXKOhmCyi1bWtPR8TyR+gHKPnmlYjbcVB2jhe9Yu54T31BkCdW+5G6B1TkYC3xEIKjY7VmM4xkm94ldOLNNa2rhVHmIGlZPCgg0qCpZe2fPh6jIkghJn8bImAm4Ng8PHpzOoF4xvflFHfKrQtoI1OQknEUrKYvmqLoufEjPyQqWByDdlI1gw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB8161.namprd11.prod.outlook.com (2603:10b6:8:164::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.20; Tue, 5 Aug
 2025 07:37:32 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.9009.013; Tue, 5 Aug 2025
 07:37:31 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 13/19] drm/i915/tc: Unify the way to get the pin assignment on
 all platforms
Date: Tue, 5 Aug 2025 10:36:54 +0300
Message-ID: <20250805073700.642107-14-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: bd07692c-767f-44da-bce6-08ddd3f2eff5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ClB/B+8QsQHkMOR09TyyNTdhqXD9aHckwnQybsqz1+TsiihDHHm/Nmw6J/mQ?=
 =?us-ascii?Q?sZo3hGB4wHbWoIjg4TWDrMSvBc2nCMqbaED6ErTcPtf89DbSTR8gifnsolHk?=
 =?us-ascii?Q?BB8OV06Zz/1GAuLqdrcHiLMr1gKVWBbTBhtbrqBOL9jc9KLHBMYgYoPeUB4g?=
 =?us-ascii?Q?f+rUesc5YY2u3UyN2tg7hpDG+vT1vXEFD6yYJcnwa99g9DbzmZSCnVLffh/A?=
 =?us-ascii?Q?0pSa3Ge0ySrKRBAEbHfb8emtOwVeSm4SnVK2Q4nvZ+GashsIcTo1ESWQN2mx?=
 =?us-ascii?Q?vXjI4KVu2rivMOGcWtPtGlGXAG574YICHylaWW79CGmfIyd5SR/tkUUwBTuh?=
 =?us-ascii?Q?cOsv4DvZ6peuiaLu3xC7juEXp5r/uWeqsTXr1rFs/9KPLZMsGycMuEdeBjW5?=
 =?us-ascii?Q?b5Z2OlNmpcqt4DYOQK8hjfyCg8FceHWU0Gt3aItxJ46iY35hGXEf8awXxE2Q?=
 =?us-ascii?Q?7S4SrDo+jAaF+8wDVjf3Cdf+z70kJvs5XPrj1CVX9mNbXn817141MOxf7h75?=
 =?us-ascii?Q?UJrK2rbgOK5KE9JN+ER3lxeQLtpwjNeBwetkFVVGGJWJO7uanekaPfIV8WcA?=
 =?us-ascii?Q?ecoY1CrRet6e9j4NdYhnAxc0y+uRGi/zm0mOH7sqUtxiG9Njn9ZPzKHCR61j?=
 =?us-ascii?Q?bQI1k/QH4zOcur6nTVmbJPo1SlwYMufpbxzrLtfd6sHemCcTvh1RMBLuEQyw?=
 =?us-ascii?Q?ZBHO7rhLpf8V+HhkAxISWr/tzZmih6F6wse4HW1MCHz5FbftSREBNIs1DpRr?=
 =?us-ascii?Q?qrYxvnyNIuaq2kyruwGJT687aCxzB12KnYWnzpupzzxU4UhZBF+n5l7HFn1V?=
 =?us-ascii?Q?VARYUt3up7V39KwiXrOWfi0YH0T2ULXEebpZ8RJ5lFUpX1zMq43IM2RO3Lpq?=
 =?us-ascii?Q?at4sVsmhRH5aJkZwtttRZd9Zf/NigzOX7a9fGcUK3fADmGwSZQig1Ef2VCvi?=
 =?us-ascii?Q?jawpFuR0lzOioiMZdngI21KaGtYuq67C/rD9nqFctj+dzoDivErMyahR2Lbt?=
 =?us-ascii?Q?Ey1xKS8r/pS+XQRsSv5loju3Kd8ZpDhisf1EceyGFEtbViqtCdMzwhRcBJKZ?=
 =?us-ascii?Q?jHz7wIYJjsYLXzl9+Swxu7gUva8PzkXnpkwDHbRccI9P3zD0tjFGg/ozjqv6?=
 =?us-ascii?Q?w2FfFkXo+jhwyGxHEs6vGKFFDVV0eACuctBYhptCUwm8UafcOHCdNjFaSKbQ?=
 =?us-ascii?Q?/m9ygmTOEriWVZWu0w+DH92I5i2BfOlGdfpCnbbv6k7Bg9vYNqobiwARUFbR?=
 =?us-ascii?Q?IPwHiz8h5Im8UvwzfM9EQjPFaEahDNivSqf1T0bKt9j78i75LSk2GmEYHmtp?=
 =?us-ascii?Q?Yf7rFQ5CIWSf+s61yC6HNN42X3HNxOL/RhTe7rnXKEl08OsqT8zEIG0nEZe3?=
 =?us-ascii?Q?uQct1WRD2w1yDWgVn3qSUlwiOAHUUUZR/f13xes+DKbdRkQ8X/Li1gnMNs70?=
 =?us-ascii?Q?YUDfwNSxPXA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?jjanJXWEykJATN4Oi0OHtngkN8liZEOdR12D3FsMjT06odV46q03MapICXI+?=
 =?us-ascii?Q?E6X/pMq5aRjcSlyRKo84a7TVXGdHAILqKAnVxSVtEn04g6M0VuUnwy3CqFUY?=
 =?us-ascii?Q?s1CTKZeJeCWAyv9j9wZIfRXipqxh8BftS42YaqftZjEcAiX/mzEeNnKupK+f?=
 =?us-ascii?Q?gLL4PkSKjTBI2AMZ1mZtpFlCuGnrHNniTGCrBiZrTmadye/3bakV9p5uWh1x?=
 =?us-ascii?Q?VIaBPyaCEerHoFNqQwVTHxOsLlRODPj0NLb/6JF83V6uLuMiznfs/HVhmbKv?=
 =?us-ascii?Q?Y0pAfvMmTOe/wX3MLVyUEHVQFKCt7/djqXjCsnlk8hTJneUdEYjRiygZAWI9?=
 =?us-ascii?Q?GtOZsn/DimUI051igKa6j/I3ZggHYveWcR2CQ8fr7W3aKg2jK1yih7WVc6jB?=
 =?us-ascii?Q?NRABwHDsGiCPSOm69W+tZNAVzmfrbZeWweEQBq1XUvYG97TB7IENIJzdSY9x?=
 =?us-ascii?Q?s8UiyrjfijOrlBPqVstucyqPxfSci6Vn7OJJI1GwCgOvjAKNsvPaH7AdRFoz?=
 =?us-ascii?Q?fDJFTtigIDxFXxz5CMg21SFEK/IjLap7LB5rTCFLzhdmpCCjXh0ULOb7Dy2+?=
 =?us-ascii?Q?aa9GFDOZw7RDirGzr2eDWsmGzdCuVCiFr9p/LgBWSSJ3DDeiy62etDHhJRjk?=
 =?us-ascii?Q?C22GhoNhbtJWLtCtzoNtn9LIDU4f9kAV3woHtA7Hpg5kx/9RzZcxGwrWsABS?=
 =?us-ascii?Q?DltpSJpm9W71oJj9Su/8Mg0hZ7dmFTFJEVnFZZQO21zsIxtvMhZ4m2rKNFqN?=
 =?us-ascii?Q?N/Of7zlreC5ta5NfESNeVwMWxlbAJd059Y6I3LlgUG0MACYYKAl2b+lXJa6P?=
 =?us-ascii?Q?uZBQnFZh6b+4S5KxvHC8e7WvEX/Au/vZGAVe8Zz1ixb3WxSJZzzYkHzFnviE?=
 =?us-ascii?Q?HFYaJwDWZko6nCtG8LX9QydFevyD2TcrO9CmaSYi9gvwQiIbSb+JE9S13uDF?=
 =?us-ascii?Q?BbBSQovpNzOlVE59SYI9K45UnSlmpmC6Q8449OBttjNiCe7iOby++ttguvHO?=
 =?us-ascii?Q?1kGun/WaL7j/m1oul7Hjc/DPubiplc3gWTvFOyaWEZmeXCv7tsAo3tuO4It6?=
 =?us-ascii?Q?ElJGG0NXSkCmMITMvfPBLC5U0owgv8v/YExoq/garMN882XckfIb91YzQLT3?=
 =?us-ascii?Q?9vpuU2ebnOzAnpKAfHfqdLBNscicI7aLrGLC9ETBIr8oAJxAqKqSzfqJNngm?=
 =?us-ascii?Q?S+iobjtIBvcKjJc1n3263OiOwIggSafa+8w38HMRZijNT4xGNdCVYEUe17is?=
 =?us-ascii?Q?XO2PnS54TS/c26it6ySnvnL60+V2x3EWIh3FPU2+NescO4M1Y896U5aZHQLd?=
 =?us-ascii?Q?nX1JPjFL4JKvk/IV6hyD59xtL14x+U/OmKRgVC6/kbqY6Jvq//CXnoWr0sPk?=
 =?us-ascii?Q?BnTc3wJR165I8Fklij3g+s6Hbn7Y0Z0b7KQq2bOJfIMDXqAe9K+pjLo02vie?=
 =?us-ascii?Q?gae5suynapbVsJKQmwfMQqTthfQrskO/EOs9Cc4BUiJuxl0a81eF4/d91lF4?=
 =?us-ascii?Q?XZ8H6AXZYGYjUhcMH1D9vEjEInJTa9pVgykwms3JpQWrk7QEBPbp66dYicx1?=
 =?us-ascii?Q?Qi+LXN9w7+xpr0ek1JcadptJCQJ93SuCL7kY6vJ3HNx2yMt3DJVcwJdOKyTs?=
 =?us-ascii?Q?AF4T869VJnOZUAEF4BevFEv/scv3ajGtNdhA87mWbV7x?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bd07692c-767f-44da-bce6-08ddd3f2eff5
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2025 07:37:31.9194 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ugHk3RzdD0NvkDTU0iOpGRGybTJysHhGTnrZVgFsEiL7/Mwtty9mr4cRUdNmhWkm5g2u1K1o9mGTJSyOxde81A==
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

Unify the way to get the pin assignment on all platforms. This removes
the duplication in the helper functions in this and a follow-up change.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 47 ++++++++++++++-----------
 1 file changed, 27 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 20d0bc8257860..5b044ece815df 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -277,23 +277,32 @@ static u32 intel_tc_port_get_lane_mask(struct intel_digital_port *dig_port)
 	return lane_mask >> DP_LANE_ASSIGNMENT_SHIFT(tc->phy_fia_idx);
 }
 
-enum intel_tc_pin_assignment
-intel_tc_port_get_pin_assignment(struct intel_digital_port *dig_port)
+static enum intel_tc_pin_assignment
+get_pin_assignment(struct intel_tc_port *tc)
 {
-	struct intel_display *display = to_intel_display(dig_port);
-	struct intel_tc_port *tc = to_tc_port(dig_port);
+	struct intel_display *display = to_intel_display(tc->dig_port);
+	enum tc_port tc_port = intel_encoder_to_tc(&tc->dig_port->base);
 	enum intel_tc_pin_assignment pin_assignment;
 	intel_wakeref_t wakeref;
+	i915_reg_t reg;
+	u32 mask;
 	u32 val;
 
+	if (DISPLAY_VER(display) >= 20) {
+		reg = TCSS_DDI_STATUS(tc_port);
+		mask = TCSS_DDI_STATUS_PIN_ASSIGNMENT_MASK;
+	} else {
+		reg = PORT_TX_DFLEXPA1(tc->phy_fia);
+		mask = DP_PIN_ASSIGNMENT_MASK(tc->phy_fia_idx);
+	}
+
 	with_intel_display_power(display, POWER_DOMAIN_DISPLAY_CORE, wakeref)
-		val = intel_de_read(display, PORT_TX_DFLEXPA1(tc->phy_fia));
+		val = intel_de_read(display, reg);
 
 	drm_WARN_ON(display->drm, val == 0xffffffff);
 	assert_tc_cold_blocked(tc);
 
-	pin_assignment = (val & DP_PIN_ASSIGNMENT_MASK(tc->phy_fia_idx)) >>
-			 DP_PIN_ASSIGNMENT_SHIFT(tc->phy_fia_idx);
+	pin_assignment = (val & mask) >> (ffs(mask) - 1);
 
 	switch (pin_assignment) {
 	case INTEL_TC_PIN_ASSIGNMENT_A:
@@ -315,21 +324,10 @@ intel_tc_port_get_pin_assignment(struct intel_digital_port *dig_port)
 
 static int lnl_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
 {
-	struct intel_display *display = to_intel_display(dig_port);
-	enum tc_port tc_port = intel_encoder_to_tc(&dig_port->base);
 	struct intel_tc_port *tc = to_tc_port(dig_port);
 	enum intel_tc_pin_assignment pin_assignment;
-	intel_wakeref_t wakeref;
-	u32 val;
 
-	with_intel_display_power(display, POWER_DOMAIN_DISPLAY_CORE, wakeref)
-		val = intel_de_read(display, TCSS_DDI_STATUS(tc_port));
-
-	drm_WARN_ON(display->drm, val == 0xffffffff);
-	assert_tc_cold_blocked(tc);
-
-	pin_assignment =
-		REG_FIELD_GET(TCSS_DDI_STATUS_PIN_ASSIGNMENT_MASK, val);
+	pin_assignment = get_pin_assignment(tc);
 
 	switch (pin_assignment) {
 	case INTEL_TC_PIN_ASSIGNMENT_NONE:
@@ -347,9 +345,10 @@ static int lnl_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
 
 static int mtl_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
 {
+	struct intel_tc_port *tc = to_tc_port(dig_port);
 	enum intel_tc_pin_assignment pin_assignment;
 
-	pin_assignment = intel_tc_port_get_pin_assignment(dig_port);
+	pin_assignment = get_pin_assignment(tc);
 
 	switch (pin_assignment) {
 	case INTEL_TC_PIN_ASSIGNMENT_NONE:
@@ -420,6 +419,14 @@ int intel_tc_port_max_lane_count(struct intel_digital_port *dig_port)
 	return tc->max_lane_count;
 }
 
+enum intel_tc_pin_assignment
+intel_tc_port_get_pin_assignment(struct intel_digital_port *dig_port)
+{
+	struct intel_tc_port *tc = to_tc_port(dig_port);
+
+	return get_pin_assignment(tc);
+}
+
 void intel_tc_port_set_fia_lane_count(struct intel_digital_port *dig_port,
 				      int required_lanes)
 {
-- 
2.49.1

