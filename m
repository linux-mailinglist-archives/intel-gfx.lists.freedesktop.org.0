Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 411195FA8D6
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 02:00:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8372510E754;
	Tue, 11 Oct 2022 00:00:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A30F910E754
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 00:00:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665446417; x=1696982417;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=2r1hBc7MsS0N2C49htQCCZsEcHnR8Rk68e9WGfZxyY4=;
 b=X1X2v6QUr2X11Z82u7TcovgwXPUownigRJGpwXUtu6xQ0Do0KvD2LJvG
 AIZfrCcQCSzH6DvW+6khu2itMNXN3UflDUKyNmbndHUjqdiTMKr5jNQhr
 qX+k8qX8SWD0VCOUCeh4xqQ1hHgU0Uh6fRI12GIOvZlGtcp0pkB88qPUE
 xSUIKrKbrUDx4WcD1KQa+cW87Pvhciy02xjfHjHtAEr/OVKDI7evfCBpZ
 6AYIEk/QJjLl+RuX2Wfqq9L2Z6p/3XrfYQkCWaqaSN7NirFirhK6lj3Of
 9T722IJgw37bXDAbOiGChDtpWj2p7zJrZKk/z9xlZyFPxUmzn1ru0wk4H w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="390671493"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="390671493"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 17:00:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="730752115"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="730752115"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 10 Oct 2022 17:00:17 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 10 Oct 2022 17:00:16 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 10 Oct 2022 17:00:16 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 10 Oct 2022 17:00:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gb9hFQqH397f2buHfk12xQyRPBvP/P/aOmYtTfeLPy02mtYuVpBxBmexOzLzuR/sor4VxElCq2KerNMzzJ5ZaY1RICS4pB96Gl5/ApmCFVYSVzhjfRLfwyJLJDVnJc/29A3hb0+UfIRaNEdglwA3dXL9wHefCjFseAXIWLt2kTSRT6aSKKsJ9OcRM6scjsMvH7fuLaxfi/+0Cdx10ljxlyD3VwibiSB7a87DCKlZrHRzKZoNoVqGv67H5Jvvg3vUqcMd0TvOK/egYf5FyuM8ABGjAKGthF8k2RxU0UYgrtRjsT7jHiybbfASw9EhfD+Sa70ISju6M89kHV7dFLQcQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qJpI+K5tma7OeS8benE7k7at37yPN+ZFxnkZTP+DPGc=;
 b=mK78BqTnx58kasUJAVjOxaNEKV2QVZcqTe4t6Rv+t71f93+Vl55Y1okSr3kqf7+IwZIY5vjXMdHJqLwUN12BEnBA1sW25SAXzXy0IjCIKyVLdj+EskLt3Rs62v39MXyooxZNy4a6qi2GiWvoMWKNJvIwGlbIuaAKBW3rn19SIH2wlEM7LOUqqYMGmpfyGyxMBvHg9S9KHpkLBDRXfuMpyYObYhad9ZA3RgVUqaItlGCMR2+YPTmwTs3zU46ESSKBpE3cnfB2Zl9CAU7QuIqcm7tKSTLwFz7mOh2861NAv+76Vj8ZD4X387our0z1155FMLgI/p64Gpn+8eU/I8XwSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SJ0PR11MB5868.namprd11.prod.outlook.com (2603:10b6:a03:42b::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.31; Tue, 11 Oct
 2022 00:00:15 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7246:dc8c:c81f:5a10]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7246:dc8c:c81f:5a10%4]) with mapi id 15.20.5676.031; Tue, 11 Oct 2022
 00:00:15 +0000
Date: Mon, 10 Oct 2022 17:00:12 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Message-ID: <20221011000012.q3ha3vatpgbvvbke@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <20220929131747.2592092-1-mika.kahola@intel.com>
 <20220929131747.2592092-2-mika.kahola@intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220929131747.2592092-2-mika.kahola@intel.com>
X-ClientProxiedBy: BY3PR04CA0028.namprd04.prod.outlook.com
 (2603:10b6:a03:217::33) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SJ0PR11MB5868:EE_
X-MS-Office365-Filtering-Correlation-Id: 0ce33300-9b72-4629-2ab4-08daab1b9311
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xf8AQ0k2q+nUdcmKMHIzWQmUEHFxUxZ3Le5il3JCve+Py8aBaxKtXkf0A9unX0kF4QoJ2v+yq3JUHguYdeJGbkDX7rKeJKRkmNTTo2PK5M1T80ge/XDIPGqa4fnW3EOy3ozJDbsmiVWJOVBxZBpNfWduSY7VDnDnbwQ/e+gmCT79zJqyu16AS+5Oo1pTidRZf+0o92zq1sfaamtvwags+IlW7bibfsizvlw/oEGphJOBV/fqiRLxpnUqP4a4U10d+Aov/vDy8WariIMRzv5F2xgLrFwbLtrBVSbcsCtWZYKg+hmpfWzhKbFUJBCIzhk5WdN8OMY3/lM1GxQxi9aj0IZ3nZougBNUSLPptiZXejTOqZYwRhlkHxEVEcsQgI4e4iVWXw1/vUfxRCS4/fK1Q8/xs5+CqzgYEatxXVpmz1CuD92GwVEvq1AkOSLRI9DVPdlQyJGTQDf+ig8/Aknp7tDUs5Gm0HPwvMB6eFgYcxh1phvbGZ62jzftYQDHonkpws4jn1J6Cj+noYnd5WT7LN5Ndgqu2JXOikQBzEoqfQIbqPAIb3Oi5SLXqQXBmcsEJX5zHNKo8Ux8xTSDW7/Yv+XTE9bGpCvtl7EVo6d4g2N7xAhI/O74X4fupT6LbSHM8fM4f1e7O5d8aO0eC00Tb7DeFgadSoSmHRvdtcxsvHNgFJN/nrJeKXwMui9AHGmFAEyXErsEyMiyW1nV1ckCGA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(136003)(396003)(346002)(39860400002)(366004)(451199015)(15650500001)(5660300002)(2906002)(41300700001)(1076003)(66556008)(36756003)(6636002)(8936002)(66946007)(66476007)(4326008)(186003)(26005)(6512007)(83380400001)(9686003)(8676002)(6506007)(38100700002)(6862004)(86362001)(6486002)(316002)(6666004)(478600001)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?R4NXKBvHWsj82ym36snlGv761sPAdfsGNIu2yWhS09YEqomtek5sT7Rabv?=
 =?iso-8859-1?Q?nk/J47fkATH+SVfKFi+/NyWmTRf4lceYI4kkEqqrk1tdP3nSQHDYww8V+1?=
 =?iso-8859-1?Q?Jr/kKx3sS2zSY8b/wwUzaDuKnrImzyoF+S+RoCi7V8EoGqaeU/uNcbqvzO?=
 =?iso-8859-1?Q?1zxvKo82nRzkNDbaGHygtF3lq9fY5+NqpJeJOvz8b8+DdwUairCkslqW2n?=
 =?iso-8859-1?Q?YhERXxSsFDwbX5ixndWTSfgaPFlcja5GgYyIf2/6eBGRoTodIVqoZjxZmI?=
 =?iso-8859-1?Q?6APH6X6SS0wTTzy4d95S+kXjgad6SJsNXoj281xK25Z6IVUDn5va87tHcy?=
 =?iso-8859-1?Q?JERiyc3FXaUd/dzvU/jn/YRW8UCgs2oT1iuIPJpMOHwlO+zcUp+fRG7PHa?=
 =?iso-8859-1?Q?m4TQtw3PXOsBI+k9D0gitEZI3DahFUOyM464bZcWI1usJfzBteMvyJlyJ6?=
 =?iso-8859-1?Q?b2arm2jHHZxXYCytVZLOuSMrFfcLIWrp0dijnoLcB0jILXwmggFOTW92I7?=
 =?iso-8859-1?Q?JzpCNmtQWfoPX9Nid1SgDEjQZWPXif+10Mv97OzWNO3Y8HcSxkX1DKcvpp?=
 =?iso-8859-1?Q?CHiyq8b5Oyw+uGZODbQyGzhkmpm2+0F8tQ8Kn7E67MvVi5mtr2JtIhOqKQ?=
 =?iso-8859-1?Q?2NDpt92Mf/YIa0aDc+EJXUpewxxroc+hQ55dcVF2hrSZJ00isotinD1k9x?=
 =?iso-8859-1?Q?fiNqmJiREJsvYkXfuSBM/vNv8TVpQHJ8JFav0cENp5wQAp0X0fYksd/uYL?=
 =?iso-8859-1?Q?7Pmm7K6aUUTuTdbCxZ2sjF2Ufqf/OPlaFH0Jn2VTzDYvxSNb5emdQpEOSB?=
 =?iso-8859-1?Q?h3En/TDJkE/ZWXMfQvrYv3V1SJDE9tfrguevKpXB8X6PfTG29ViyFWrF2c?=
 =?iso-8859-1?Q?V/47njXYRrCAfdYezW/3Pfbde2Vqbn4ZNL9uuKV1ACm81vw4RWtkBjkBoK?=
 =?iso-8859-1?Q?epPI4Q8Bqv4LOlBAk6WB63Tj7fG3YHvGwRop7DjiyG8QOmsO6e6K2i9pVj?=
 =?iso-8859-1?Q?6N8opYbVjfPfclh1HEOTDK95Ut+MOKMwsXsYyiIhJKfXpDvgKXOnMU7d2b?=
 =?iso-8859-1?Q?rPNWk8fZdwwHVO9UfVf3u4b5lZ7uNSeEgR1fjzdP2GlmU1kOdaphWr56Hp?=
 =?iso-8859-1?Q?COVzyTa+Ab+RY38K1BpbGJhKkGj/ehtr26S+OvlWoJDLcr02dmEO4NrfTr?=
 =?iso-8859-1?Q?4nwqGYcCOFaGdcc+cZo2J4bCS3ZYYN8cRxQdGB6W5igr3jI+tu6xYkSU78?=
 =?iso-8859-1?Q?VEo2db51bJBmRL9XonKki0ERnHG5JD1mz03/8qpQAEm3k8BBRVz3Pc5bJs?=
 =?iso-8859-1?Q?NWywXEgybQTLqj2aotbnLHCqFAnLh4syx9OXQOWJfMGgMv1YjoTZTNJRk4?=
 =?iso-8859-1?Q?cyBLbcVS9Gl14zEyHRJZlgqrs/uF58ZZ2OiNL7SKRkgPbwco89H8944LSC?=
 =?iso-8859-1?Q?9s4w+nRMqN0GkVu223nG/JHlXBRd392U6dry1FDutzLIT7LLrXSJ/+BK1D?=
 =?iso-8859-1?Q?2AL00Gsw5iSKwuqiSz9ZzSDLaxTub2cq80dFXypQ+8HoCrdzNxDGjhC++7?=
 =?iso-8859-1?Q?B96ne/852EJ36dcgi2M/7gLE6czC9WccS2P9/tFkmoAEmtgNJxMUBrVgCV?=
 =?iso-8859-1?Q?fYJZjdTrZWL0Qzfj7+fX5aTbjn5vVMHsQekokMeRY/bP5zG57LNL3dzg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ce33300-9b72-4629-2ab4-08daab1b9311
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2022 00:00:14.9773 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7CqmxUnr0ICXkgzUf93rvBr/Ee5RWaQUWsXro4JkvG8zFurqk4y6CXTnXsIHS89FJeTL+gYfA9xg/pneegZudpTo5xCo2dxbOGnUru9p3y4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5868
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/mtl: Add Support for C10,
 C20 PHY Message Bus
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 29, 2022 at 04:17:43PM +0300, Mika Kahola wrote:
>From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>
>XELPDP has C10 and C20 phys from Synopsys to drive displays. Each phy
>has a dedicated PIPE 5.2 Message bus for configuration. This message
>bus is used to configure the phy internal registers.
>
>Bspec: 64599, 65100, 65101, 67610, 67636
>
>Cc: Mika Kahola <mika.kahola@intel.com>
>Cc: Imre Deak <imre.deak@intel.com>
>Cc: Uma Shankar <uma.shankar@intel.com>
>Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>Signed-off-by: Mika Kahola <mika.kahola@intel.com> (v4)
>---
> drivers/gpu/drm/i915/display/intel_cx0_phy.c | 179 +++++++++++++++++++
> 1 file changed, 179 insertions(+)
> create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_phy.c
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>new file mode 100644
>index 000000000000..7930b0255cfa
>--- /dev/null
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>@@ -0,0 +1,179 @@
>+// SPDX-License-Identifier: MIT
>+/*
>+ * Copyright © 2021 Intel Corporation
>+ */
>+
>+#include "intel_de.h"
>+#include "intel_uncore.h"
>+
>+static void intel_cx0_bus_reset(struct drm_i915_private *i915, enum port port, int lane)
>+{
>+	enum phy phy = intel_port_to_phy(i915, port);
>+
>+	/* Bring the phy to idle. */
>+	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
>+		       XELPDP_PORT_M2P_TRANSACTION_RESET);
>+
>+	/* Wait for Idle Clear. */
>+	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
>+				    XELPDP_PORT_M2P_TRANSACTION_RESET,
>+				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
>+		drm_err_once(&i915->drm, "Failed to bring PHY %c to idle. \n", phy_name(phy));
>+		return;
>+	}
>+
>+	intel_de_write(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane), ~0);
>+	return;
>+}
>+
>+__maybe_unused static u8 intel_cx0_read(struct drm_i915_private *i915, enum port port,
>+			 int lane, u16 addr)
>+{
>+	enum phy phy = intel_port_to_phy(i915, port);
>+	u32 val = 0;
>+	int attempts = 0;
>+
>+retry:
>+	if (attempts == 3) {
>+		drm_err_once(&i915->drm, "PHY %c Read %04x failed after %d retries. Status: 0x%x\n", phy_name(phy), addr, attempts, val ?: 0);
>+		return 0;
>+	}
>+
>+	/* Wait for pending transactions.*/
>+	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
>+				    XELPDP_PORT_M2P_TRANSACTION_PENDING,
>+				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
>+		drm_dbg(&i915->drm, "PHY %c Timeout waiting for previous transaction to complete. Reset the bus and retry.\n", phy_name(phy));
>+		attempts++;
>+		intel_cx0_bus_reset(i915, port, lane);
>+		goto retry;
>+	}
>+
>+	/* Issue the read command. */
>+	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
>+		       XELPDP_PORT_M2P_TRANSACTION_PENDING |
>+		       XELPDP_PORT_M2P_COMMAND_READ |
>+		       XELPDP_PORT_M2P_ADDRESS(addr));
>+
>+	/* Wait for response ready. And read response.*/
>+	if (__intel_wait_for_register(&i915->uncore,
>+				      XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane),
>+				      XELPDP_PORT_P2M_RESPONSE_READY,
>+				      XELPDP_PORT_P2M_RESPONSE_READY,
>+				      XELPDP_MSGBUS_TIMEOUT_FAST_US,
>+				      XELPDP_MSGBUS_TIMEOUT_SLOW, &val)) {
>+		drm_dbg(&i915->drm, "PHY %c Timeout waiting for Read response ACK. Status: 0x%x\n", phy_name(phy), val);
>+		attempts++;
>+		intel_cx0_bus_reset(i915, port, lane);
>+		goto retry;
>+	}
>+
>+	/* Check for error. */
>+	if (val & XELPDP_PORT_P2M_ERROR_SET) {
>+		drm_dbg(&i915->drm, "PHY %c Error occurred during read command. Status: 0x%x\n", phy_name(phy), val);
>+		attempts++;
>+		intel_cx0_bus_reset(i915, port, lane);
>+		goto retry;
>+	}
>+
>+	/* Check for Read Ack. */
>+	if (REG_FIELD_GET(XELPDP_PORT_P2M_COMMAND_TYPE_MASK, val) !=
>+	    XELPDP_PORT_P2M_COMMAND_READ_ACK) {
>+		drm_dbg(&i915->drm, "PHY %c Not a Read response. MSGBUS Status: 0x%x.\n", phy_name(phy), val);
>+		attempts++;
>+		intel_cx0_bus_reset(i915, port, lane);
>+		goto retry;
>+	}
>+
>+	/* Clear Response Ready flag.*/
>+	intel_de_write(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane), ~0);
>+	return (u8)REG_FIELD_GET(XELPDP_PORT_P2M_DATA_MASK, val);
>+}
>+
>+static int intel_cx0_wait_cwrite_ack(struct drm_i915_private *i915,
>+				      enum port port, int lane)
>+{
>+	enum phy phy = intel_port_to_phy(i915, port);
>+	u32 val;
>+
>+	/* Check for write ack. */
>+	if (__intel_wait_for_register(&i915->uncore,
>+				      XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane),
>+				      XELPDP_PORT_P2M_RESPONSE_READY,
>+				      XELPDP_PORT_P2M_RESPONSE_READY,
>+				      XELPDP_MSGBUS_TIMEOUT_FAST_US,
>+				      XELPDP_MSGBUS_TIMEOUT_SLOW, &val)) {
>+		drm_dbg(&i915->drm, "PHY %c Timeout waiting for Committed message ACK. Status: 0x%x\n", phy_name(phy), val);
>+		return -ETIMEDOUT;
>+	}
>+
>+	if ((REG_FIELD_GET(XELPDP_PORT_P2M_COMMAND_TYPE_MASK, val) !=
>+	     XELPDP_PORT_P2M_COMMAND_WRITE_ACK) || val & XELPDP_PORT_P2M_ERROR_SET) {
>+		drm_dbg(&i915->drm, "PHY %c Unexpected ACK received. MSGBUS STATUS: 0x%x.\n", phy_name(phy), val);
>+		return -EINVAL;
>+	}
>+
>+	return 0;
>+}
>+
>+__maybe_unused static void intel_cx0_write(struct drm_i915_private *i915, enum port port,
>+			    int lane, u16 addr, u8 data, bool committed)
>+{
>+	enum phy phy = intel_port_to_phy(i915, port);
>+	int attempts = 0;
>+
>+retry:
>+	if (attempts == 3) {
>+		drm_err_once(&i915->drm, "PHY %c Write %04x failed after %d retries.\n", phy_name(phy), addr, attempts);
>+		return;
>+	}
>+
>+	/* Wait for pending transactions.*/
>+	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
>+				    XELPDP_PORT_M2P_TRANSACTION_PENDING,
>+				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
>+		drm_dbg(&i915->drm, "PHY %c Timeout waiting for previous transaction to complete. Reset the bus and retry.\n", phy_name(phy));
>+		attempts++;
>+		intel_cx0_bus_reset(i915, port, lane);
>+		goto retry;
>+	}
>+
>+	/* Issue the write command. */
>+	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
>+		       XELPDP_PORT_M2P_TRANSACTION_PENDING |
>+		       (committed ? XELPDP_PORT_M2P_COMMAND_WRITE_COMMITTED :
>+		       XELPDP_PORT_M2P_COMMAND_WRITE_UNCOMMITTED) |
>+		       XELPDP_PORT_M2P_DATA(data) |
>+		       XELPDP_PORT_M2P_ADDRESS(addr));
>+
>+	/* Check for error. */
>+	if (committed) {
>+		if (intel_cx0_wait_cwrite_ack(i915, port, lane) < 0) {
>+			attempts++;
>+			intel_cx0_bus_reset(i915, port, lane);
>+			goto retry;
>+		}
>+	} else if ((intel_de_read(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(phy, lane)) &


wrong argument here to XELPDP_PORT_P2M_MSGBUS_STATUS(). It should be
port, not phy.

Lucas De Marchi
