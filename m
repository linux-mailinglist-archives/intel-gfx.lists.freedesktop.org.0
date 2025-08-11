Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C714B20118
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Aug 2025 10:02:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E60D310E394;
	Mon, 11 Aug 2025 08:02:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VLlzS34h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD20510E394;
 Mon, 11 Aug 2025 08:02:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754899323; x=1786435323;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=jdVLWLcNE/MC4yEfSxCUMoZv2G16WNWSqTQbFqwzkBs=;
 b=VLlzS34hvil5W0ccV1g6V4NxdG86v7J9atTWcNDOfx9RXKvYprPTjRx2
 aD0u2a4rkDPJcxYGG9KO/rLRYLYRrtjJaxqV0Dwy1PapOVkJlliIc7avW
 39Rb4aDLrU/5a/yIbj3PZy5yUwZHxxhdlf0BsXjypz6EL5ChT1QERQ+/u
 cWlfFakWqyb6nPlBcNRE8Rg8H+uEU+RU3ttaPGsJdiTQR4fPDeqITa5xG
 s0CSbkfufNleoAz4/EJdYmxIEYlJJcbcfSmVej3Sm4DFihIt7v2Tk+8Hy
 DcAZsevzN5hPEujCVmVsHVwv8ee1q7OK+wqZ9KfxnSW7KF54iXjS1BKcp w==;
X-CSE-ConnectionGUID: D5TWwBIIRROOkmKRx6K+Hg==
X-CSE-MsgGUID: re7l1NJfQq23nIlwQ8ENeQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="60774859"
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="60774859"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 01:02:03 -0700
X-CSE-ConnectionGUID: kuTLuVMDSWChWN4zZhTmVw==
X-CSE-MsgGUID: TitjfgBATEyZktyhQ1794w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="196688217"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 01:02:02 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 11 Aug 2025 01:02:02 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 11 Aug 2025 01:02:02 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.52)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 11 Aug 2025 01:02:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sl1DYX30jtD2UG8sOgPZjHBkNS1GkDtbQijuoVWSiF9XHBp+2C1rAB6slV9iFigMha/DGHIDugByiFPiE0YO/XLYkKwW5PGZaY+V989jQCVfDFbamwjtZg2txCL4AhTl9/zoNYCKLRm5AA1pG9I1JuZn1VMVPYjOFBumOaK96JVr36AYEBkGxAI/0YFIsh+L2V+mKn2uWZGn3KGAsZ75RouJy8ZONFwU4RDJnM4NCaH5XIswHGAv96ps9OgAfDyuRwNvXDUNabiC6O7i75w/Dn8h6UkP2YHCwaHQpRFprB9cIcbuLtBhvNM7u1W4O1Y108IrvC12uVSJtrei90Ak+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SrpmyKLp4MxPRwOSF/aVZt6MTJAi3ftAecMXWOqvsBc=;
 b=JJ1A6bCPp0b5ORSa3MZScZaRsFnZYUCsATgUTgt9BLzKMkq5TkGU4hK25ueBBG8ezQSctNwDR4XQ5PNMoXFmaXCUrYgLs4a0XlgLN58dRvuKmijRUbKuX3utrNhvtyqqauWFExfdg6bVJ7Evf1iuQvkvjxGApl5qFAXU2EB2xYjmt0guQ5h2NvhygR9RihZn51jD8YMcePs2UUTGwVX+WHnAivcSH+mrBjR8HigtJ5bj8vGMj8gAOswU+cvhV/rf70iGUdZ62NIYAh1z/+2os5AwSMtEjutGBL7hyGV5MdO2Vc2NjhbmjGQxbCDJ3v2r2eseTPyV8njAxdqXhQfA3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SN7PR11MB6557.namprd11.prod.outlook.com (2603:10b6:806:26f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.21; Mon, 11 Aug
 2025 08:02:00 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.9009.018; Mon, 11 Aug 2025
 08:01:59 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>, <stable@vger.kernel.org>, "Charlton
 Lin" <charlton.lin@intel.com>, Khaled Almahallawy
 <khaled.almahallawy@intel.com>, Mika Kahola <mika.kahola@intel.com>, "Luca
 Coelho" <luciano.coelho@intel.com>
Subject: [CI 1/5] drm/i915/lnl+/tc: Fix handling of an enabled/disconnected
 dp-alt sink
Date: Mon, 11 Aug 2025 11:01:48 +0300
Message-ID: <20250811080152.906216-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250811080152.906216-1-imre.deak@intel.com>
References: <20250811080152.906216-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DUZPR01CA0223.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b4::10) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SN7PR11MB6557:EE_
X-MS-Office365-Filtering-Correlation-Id: a7e3d376-5a94-4342-ae6a-08ddd8ad5966
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|366016|10070799003|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Q3gP9aBq4EhsHHN3ZRKFTji2ymw/VMgn3m8S/xbUXyQYsnT/m4mw+5EqoX3y?=
 =?us-ascii?Q?+h5Nvui6aQwk864nFfDgh/+4ILwY24FDEBRzHJoiWQlJCfkFuK2+ySXLQ02q?=
 =?us-ascii?Q?G51KA8Z/cBboA0YLlw5rVCgIlMI7hTjF7Uafc8/kssHkGXLC9Edo+mAhvw4v?=
 =?us-ascii?Q?a2zmmBH09DeVP7jsLrHC4xSV95gysObqDjNe2ECGCtsArcm/0zHiGWgI3xX3?=
 =?us-ascii?Q?v0zloGBzGxzVd/murbsl7KwqRSjsgZogZT6WD464naqaaveA1Hy4wA1Bz3Rd?=
 =?us-ascii?Q?jkATaDWi7LYYyStoUo3DlWpPg+4JvHntZ5p2JSe1bt3iWmaHEjgzU7BJ+d14?=
 =?us-ascii?Q?msIIwXTwJZrVIVKtqkttqIqSd1GGrjfrYUjBGCmb1fENj4H1bGqlQlgsKJ+x?=
 =?us-ascii?Q?2IWPUF0zn3gGfU9M2/Sa4vDdG2T6dH92Io5pIe4w/bMYiGUeTskD4KDtI++z?=
 =?us-ascii?Q?bV0ixPhCgDBfnGclju4ltyef37Kklrc7p87vD2PgaXgcTizxx8xAnvmx11Kp?=
 =?us-ascii?Q?WrB8e68+zQyFHJgTUAWSi6ThQMYpQsyxulr9aL7Cj7lw7JMV/DLOAh/U4TTj?=
 =?us-ascii?Q?9oqwCEk5431dV4QN4mrmRyja7nhMuXbRSH10H6m1tX+xNXRK8eLv7UeuBER6?=
 =?us-ascii?Q?C/3Hp6DfWJ1bruhV6poc6oZDcNUGSkd6H1XFsgX+whD0zt46HwlWYUfQEu4D?=
 =?us-ascii?Q?jSySZ1q8RVRNgODLK4I+FK9Fo+dt5SMv8ICQdFcrV0CefzS0bwZwpvpfMvWC?=
 =?us-ascii?Q?tWrpo1VDPqtJP/Z6K/dxhrxTSdolKgIJ3P6RHCVdfeOJrG52MfLxQMnizyXR?=
 =?us-ascii?Q?rtsAtu147wNFnK5QhO4yGLJwJVEmiy7xK3GXlY3bjkHrwK1+/c+HM5svbEuJ?=
 =?us-ascii?Q?sEaCuePNX2fWe6Q7deh9sfaHHynxtUAToAkw2UjQWitQYelfL44/CNMVYU6X?=
 =?us-ascii?Q?T96wL3jqJHImFoD/vCwIy4pvlcGyNEUE10SuR/Gw+qwr+TTAwN6aq6RkGn+7?=
 =?us-ascii?Q?j1hdFhcG7i7wYM7v+/8sn1hhgtlQRFyaJIRLf3Pt87zWVswpsKRv/3UrHIfW?=
 =?us-ascii?Q?T5OoEwO+gyNmUAntkwjK5zjIkzp1nrW0qSFhbL74JcmPseggwp9NdjigoLXz?=
 =?us-ascii?Q?2WEJvyijCWO2BT7pknRUhs7fjdfc4qCSepwgqt1I1WLgcgM+hvXw1iIF1Tss?=
 =?us-ascii?Q?CI2ggHf6Z9hwpcfk8kfnBQW2gQUVCmiJzzE9O8/t05n+Xj6+WKtjs6fmRl/x?=
 =?us-ascii?Q?oykA+xPt+4VoIHqgCzfC9IBEuBi8D+wrjyDHRLxRKMtoFW8pM5RdVEnmZ1lB?=
 =?us-ascii?Q?9EIHi1zmChlrsETZtOwchEYmTtDlKa6tEAvocv36nDhRnTdmap/JFnrOIT0d?=
 =?us-ascii?Q?Tl9rdv68x7IKTmUbLRsB8K0v7LaahwBlieCl9IJTO6lWRsqnbEu4RljSWy8l?=
 =?us-ascii?Q?1aAhDDNSAUc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(10070799003)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ENChCePDiJbHzQf/pdxoc1ewglshmRR/vTuPbvl2m7wVto3N7fdqJK7tAZWf?=
 =?us-ascii?Q?xbBwSKGyLlTSSMWu6F7wW6ytfVvQ4ZiyCcVnvpLBYIVMZRVsF7FEUz0Xur6N?=
 =?us-ascii?Q?q2LkmFF6hGL2sv02pWdhEJIeM43JIdma6a9NtZv1w76alm5JeHGaL0pTCBec?=
 =?us-ascii?Q?Vi2HDVNc9BJeVXozs30DfLMrqhTHRiluN4CN9ZmR69Ot4mtVJncn9bpCzgGl?=
 =?us-ascii?Q?XwMiSEQOGyy/I9vdcnoig0u6MAg5qKn/p9ZQrUOfyWr9k3DsWI7PviG24X/t?=
 =?us-ascii?Q?K6iHFWwevBvAYY4EiW6yOCrQ2AjVuH9qDp5Jx+PlwO5f4xV31GYh5drfo3AW?=
 =?us-ascii?Q?bKaRkcpUSG1K4QVmoxhrhoYbDJFnZeLF20Il9hFbfucPcqlNYVn3Bx3SPKc3?=
 =?us-ascii?Q?eU7pgij3I8ni8Boo0XCwx5jNWuJigexn94z9ZzgSVPRUzsrJdRO8/fNwcZaj?=
 =?us-ascii?Q?SdsBxw4UUI4iDSZwU13nEyCr/ui14SsFUK43R21wdj64L1jzjGSVMGMIS+Gh?=
 =?us-ascii?Q?QTAx/Tz0OwDQMKCcirf+3R6BlQpAnZ5s0JYscm6tz7S9xtvI6klvyXXULMrF?=
 =?us-ascii?Q?d4MlZ+NopK+T7M2T/E1JTGOIGLwPh8MlE2Yh8sB8wiJ8PLfoKFeTlBw06MJS?=
 =?us-ascii?Q?lw/JjjJEDtrGKZ0ILuxnB9XkajjTeS6ED0hhMyAP32JUk7d03Gm73gLSkhnh?=
 =?us-ascii?Q?9QgI5gUdTTVrQB6B5KemM7DVVcQzFkt91i3SdFCw7Z2HEf6bZhQEUY8oylm/?=
 =?us-ascii?Q?jUnymHIkJ2GH4vJdbD+7beps6rcxVELJMiTsSJgjklbxNZr0A0506HHuH3Kv?=
 =?us-ascii?Q?bzI28S0Or4JM2aB2C2D6PVirN4jKC/Mvc5Kq5ZcH6D4JrwXoMam7DPfpOgBG?=
 =?us-ascii?Q?Rw0vb7ZkkjAthc1ophO+A03BFoIDk6hzoiIiCV7gEJ5WdULSGtIvgGOSlyET?=
 =?us-ascii?Q?tBq0vd6MjJ6a50h46zIEKQvp1n31zNLBZDiLlp173Pl8DANmgTzrbpZncPhZ?=
 =?us-ascii?Q?u26A+oY98fEuu9mORPDBfIM9iR4ds5Iy9HcMOYP4Der0fOo3yN2+Hn1V1PuJ?=
 =?us-ascii?Q?39CD/H0yFkLC/WLMRnEqkinGQiCHPKMvFeGKsVvAjUHbZeGdd6V8KITSu4SN?=
 =?us-ascii?Q?sBsodcualZ+jlKnohIifMiFkaAybrvLqRIny5cHOe6fb+1WRFMNDl7K1Na2T?=
 =?us-ascii?Q?2JNkdHxnKz8ZVGSu7mNSf2Mgl1bONFkis2d+L5urXuHrwROd8xsLZchJdL0D?=
 =?us-ascii?Q?p5mSimgdFLoIS4FS9Fq56U+/NjXJVIAQGPBXo9ewz7FFYTwuU2BvRreQuqdE?=
 =?us-ascii?Q?zgpXm7XuOxGsAbWQcdktzZJXig/mORHxpEqeFnzejVt2fZ2UgW4YFN3zZdCv?=
 =?us-ascii?Q?xne9fxP1mgRuRo4eVYp1UBcYynXNXTi4K+Njdzc1NyoWD0aTbeebq3/qL+Lp?=
 =?us-ascii?Q?lbbpHAh6sOEYGOTarUML6eGiUpuJ6pDAh9RlMKbo0jTZBvzsvFdoHyIYbm83?=
 =?us-ascii?Q?4m3CrNShXi1IJrWzDEk4983pQVnRNBxUBlVDO98oPH974MY0sfi1ys4irLWt?=
 =?us-ascii?Q?Xyuad0h3CJrYm/Zup6DDKHw0AaZHK8xxdScr/mOI2oObb8s8eADQGgnEfhmZ?=
 =?us-ascii?Q?O59/c9UianK+9lcHHtQBEEds5aKyOl8P63uQksjLmEgu?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a7e3d376-5a94-4342-ae6a-08ddd8ad5966
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Aug 2025 08:01:59.9272 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ntJ5DIpbo7FO7EIytoUAfeNMiOdcTHOR9nAAcre/USjCLGdPiLgviXXs3yi9TopQoK1TKS5gtPQWCec0cy39kw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6557
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

The TypeC PHY HW readout during driver loading and system resume
determines which TypeC mode the PHY is in (legacy/DP-alt/TBT-alt) and
whether the PHY is connected, based on the PHY's Owned and Ready flags.
For the PHY to be in DP-alt or legacy mode and for the PHY to be in the
connected state in these modes, both the Owned (set by the BIOS/driver)
and the Ready (set by the HW) flags should be set.

On ICL-MTL the HW kept the PHY's Ready flag set after the driver
connected the PHY by acquiring the PHY ownership (by setting the Owned
flag), until the driver disconnected the PHY by releasing the PHY
ownership (by clearing the Owned flag). On LNL+ this has changed, in
that the HW clears the Ready flag as soon as the sink gets disconnected,
even if the PHY ownership was acquired already and hence the PHY is
being used by the display.

When inheriting the HW state from BIOS for a PHY connected in DP-alt
mode on which the sink got disconnected - i.e. in a case where the sink
was connected while BIOS/GOP was running and so the sink got enabled
connecting the PHY, but the user disconnected the sink by the time the
driver loaded - the PHY Owned but not Ready state must be accounted for
on LNL+ according to the above. Do that by assuming on LNL+ that the PHY
is connected in DP-alt mode whenever the PHY Owned flag is set,
regardless of the PHY Ready flag.

This fixes a problem on LNL+, where the PHY TypeC mode / connected state
was detected incorrectly for a DP-alt sink, which got connected and then
disconnected by the user in the above way.

v2: Rename tc_phy_in_legacy_or_dp_alt_mode() to tc_phy_owned_by_display().
    (Luca, Jani)

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: stable@vger.kernel.org # v6.8+
Reported-by: Charlton Lin <charlton.lin@intel.com>
Tested-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
Reviewed-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 3bc57579fe53e..d8247d1a8319b 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -1226,14 +1226,18 @@ static void tc_phy_get_hw_state(struct intel_tc_port *tc)
 	tc->phy_ops->get_hw_state(tc);
 }
 
-static bool tc_phy_is_ready_and_owned(struct intel_tc_port *tc,
-				      bool phy_is_ready, bool phy_is_owned)
+static bool tc_phy_owned_by_display(struct intel_tc_port *tc,
+				    bool phy_is_ready, bool phy_is_owned)
 {
 	struct intel_display *display = to_intel_display(tc->dig_port);
 
-	drm_WARN_ON(display->drm, phy_is_owned && !phy_is_ready);
+	if (DISPLAY_VER(display) < 20) {
+		drm_WARN_ON(display->drm, phy_is_owned && !phy_is_ready);
 
-	return phy_is_ready && phy_is_owned;
+		return phy_is_ready && phy_is_owned;
+	} else {
+		return phy_is_owned;
+	}
 }
 
 static bool tc_phy_is_connected(struct intel_tc_port *tc,
@@ -1244,7 +1248,7 @@ static bool tc_phy_is_connected(struct intel_tc_port *tc,
 	bool phy_is_owned = tc_phy_is_owned(tc);
 	bool is_connected;
 
-	if (tc_phy_is_ready_and_owned(tc, phy_is_ready, phy_is_owned))
+	if (tc_phy_owned_by_display(tc, phy_is_ready, phy_is_owned))
 		is_connected = port_pll_type == ICL_PORT_DPLL_MG_PHY;
 	else
 		is_connected = port_pll_type == ICL_PORT_DPLL_DEFAULT;
@@ -1352,7 +1356,7 @@ tc_phy_get_current_mode(struct intel_tc_port *tc)
 	phy_is_ready = tc_phy_is_ready(tc);
 	phy_is_owned = tc_phy_is_owned(tc);
 
-	if (!tc_phy_is_ready_and_owned(tc, phy_is_ready, phy_is_owned)) {
+	if (!tc_phy_owned_by_display(tc, phy_is_ready, phy_is_owned)) {
 		mode = get_tc_mode_in_phy_not_owned_state(tc, live_mode);
 	} else {
 		drm_WARN_ON(display->drm, live_mode == TC_PORT_TBT_ALT);
-- 
2.49.1

