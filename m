Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F44DB20119
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Aug 2025 10:02:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1398A10E395;
	Mon, 11 Aug 2025 08:02:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bk3Op01L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5536910E395;
 Mon, 11 Aug 2025 08:02:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754899324; x=1786435324;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=OmallE8HvTTSoYwzUPbvYNNT5LP+LmXeW7ZhSMTaako=;
 b=bk3Op01LQTFPm4t8uRckRMwr9NoN/KHjpYw7ewxx33X0pH6V16UBMPxd
 aY2uM1VAtwSdjO5jDh3PsIAdwc1Bhxr9IPycEJBS7vMxmywHw2Xj9b6FT
 Wwm2JKl6Be6GFcsWrelrzwtbHhXzJesFOHAcHsnQigWnnBk8B7azTgY/X
 2GM3i+8YFDbvGGlZ+zLWnYSqsIGEaQYS2qkxrBc3PRbPdFfbY/bJNJLvD
 AHY7OiFuJKNXl8yU4tJCazKWEOqUIUNY7ulj2pBH7q86TLYFWw89pDNZV
 aQSsh24Yr28mSivFDIrYsNMh7t4MtVskStk/AcLZNGgnvBvt3VruFNV57 g==;
X-CSE-ConnectionGUID: /pWP3srQSV2volSAnibMUw==
X-CSE-MsgGUID: jwsvKmhLSAS8X2Ipfh9dxw==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="60774868"
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="60774868"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 01:02:04 -0700
X-CSE-ConnectionGUID: V8NDT5VYQyuosIB6XH9hDg==
X-CSE-MsgGUID: eqICzV/KR7KoYD1w9jHN3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="196688224"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 01:02:04 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 11 Aug 2025 01:02:03 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 11 Aug 2025 01:02:03 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.85)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 11 Aug 2025 01:02:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lBapOV1BMsCqa0s8sfd3HcVRN3i1N31XvF0+4DnQxDoifAtmAvZPEK3XlOLlI6HMKtntRTss1ZO7zwEL+Db/kZNxk+YvFvyWSvAG+ZzQsXq64BIhLWqBCB2kF92ZK5l0tRLH6+DHe6OefH81/OwJdmLA3slaZcBgrSGuXdLZi6V4IaBJWg9C2ZVMBl8MvvZuN8q57S+2lOA0+Ro0Okhy9amE0GPkDCyox7NPwKJ3laWX1LZBrfAob34bpn0Wec9k8dDPRP0w1BH8kByg3uyqtDRNeIX9H2lnIiD7ISmWa/N4i8vNQ7B0P2BOP/aZV3iD26Vp/0Uio7z2sxXBLa76zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X7arXwsZTmmRJx2JEHFfmf4aOr49XrIR0MLJHnj6sAQ=;
 b=VhutexPKJbuqjb4VAnYUjCC6XX+NwzbG1mVX49UWnlcOGptCloA8r1IvEQe9OBN4db72p04D4F8NsTg05kmSKmnGGqTyaDSvZ1aoMxKsUNX5BM1XybiEScg7clg2sbQtjrHk/6b/idHXVtYC5MivD2aFAwSXviA4E4b/LuFdtRCWR8odZMlXjqg8tWcUk5Vtg0XLIDdruccaB7sGbM8YJamuMUL7ecTHLDLM+/Tqp+cj3pyBgslV92SLdtrBJQtu15MeULThk/nf5mOXyHZFGBL0tBpgaeDBox5fiSr2DZZEIZDf3KojBFfEWJj0kyWP6QOns7dzn1lzxc2N7UBt7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SN7PR11MB6557.namprd11.prod.outlook.com (2603:10b6:806:26f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.21; Mon, 11 Aug
 2025 08:02:01 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.9009.018; Mon, 11 Aug 2025
 08:02:01 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <stable@vger.kernel.org>, Charlton Lin <charlton.lin@intel.com>, "Khaled
 Almahallawy" <khaled.almahallawy@intel.com>, Mika Kahola
 <mika.kahola@intel.com>
Subject: [CI 2/5] drm/i915/icl+/tc: Cache the max lane count value
Date: Mon, 11 Aug 2025 11:01:49 +0300
Message-ID: <20250811080152.906216-3-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: e9878db8-d54c-4fd9-f8f8-08ddd8ad5a82
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|366016|10070799003|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?5p79UuVvU9d3deMdeBx41mue0+hdwG4NOKk8sVJAq8LjPaTXZb48Mr9NBSjg?=
 =?us-ascii?Q?jbkm4H1qocl0TLnZUGCCi0Wl+5LNQoffyLKdwYlsrsJorVNAdi0RdA4YJwPj?=
 =?us-ascii?Q?jTkCCfNDKFxL+UY4ZBMtP1K9icooDTkxeBxbQzX6PwmzMEbBOxS5Z7XAnvRK?=
 =?us-ascii?Q?cZDjrDj0HsxlemMBmuhBxbeQwsiZJo39OnANh+HfW/GMRJKdvUtrKGU3nI/p?=
 =?us-ascii?Q?uO/Yr4SKgjFQvbIk35nsh6nhdwhyYESrhDxP6tvJadaNtTaBM4lvlc0mLt2y?=
 =?us-ascii?Q?vO3X6XwNOV4E7xnhlZ4KUjPOjPVata55DZ4fMzjVdJSvBKM4ser67gAyI1oJ?=
 =?us-ascii?Q?Zx4HxiW9CvQ62SDgjx+2fsS6N/Y7OpUYk6amwWdPC4d96IJ/7mfyD/N4b7at?=
 =?us-ascii?Q?7sbcGi4PR8CcSltT+5x/MjOIv/rf6mXoKd0DpnmVbXk/gk0EgzoHE5yUPwCK?=
 =?us-ascii?Q?lPMOi3wjf7PoCUkM5MFQsc8+o+9kx2hFHDLZlJkPTmYPNQhAfJUIANra0vkJ?=
 =?us-ascii?Q?U4M8wnKUgKlq6VR7AJrZRYG2FVr4N4XIb+vvl4TQtGWqSoLv8/9Ne+FL+4iq?=
 =?us-ascii?Q?zRmI13/BlOT+wl48ijCmPaM01gK9UTLpNCX18kOZcNZiTmvblYqNHNVF5eUH?=
 =?us-ascii?Q?YEUEkfIEpLy0HAPCk7rR9IgsTw7ena5zwnniDElf29LyRlZVLKJpL/84Q9f9?=
 =?us-ascii?Q?iwt7Al1Zdx6yba0ZuWApZ0AWgk1NeGpXyCYfQ6GBxtOlbP05TnKlF3FlQPlm?=
 =?us-ascii?Q?28ibCkLunKdPaRka3t1K2ORRc8OQzSS/YyamznJ0T+9KNoEzMh71BekMIndE?=
 =?us-ascii?Q?Lg2mulhRL0uab+vUJxYzLVtpbGuCH3umWs3CHobg8ZxCK6F+LKQzZ7ELjYNH?=
 =?us-ascii?Q?72pTy/zGGNYJd/XHrxIxYv+xC41iMSUZtiAVcS/17HwJl5kjVuzsOYFp3zhm?=
 =?us-ascii?Q?Q9N86z35amPlvVRzhS/kToUdBdgEqjmwMO6CTHpMmh15qWn/ULxIdLDXZie5?=
 =?us-ascii?Q?A5DYXKk/eBahWtpNss8yDdxVRgpSNgUwEss1UM8VMGtDKYqIsNsKt47S4b7K?=
 =?us-ascii?Q?FKwCemU6BFaUjre7VSteqBX+Ki6+7TE3MtN22U/9hrNxOtHzkj+rI0MrWfU8?=
 =?us-ascii?Q?UO3F7rwD16Zj7sTetJUpqppcFYxfxsbtKtZHEU6VCm/PKmoO1mAXbeFI4vVY?=
 =?us-ascii?Q?MtmR20VRT7S4DKFwW/2sE3rWGO3kCiSzXJQ5Az0Lq8lRPmV3DNZkiFgigcjB?=
 =?us-ascii?Q?UEVE2aqCN9YT2IuHERp68Tc+2TfVVy+3mAkIPM2RcvT+NWNGqsPUfVMsNqg4?=
 =?us-ascii?Q?62zeWW7HTYYVRKmdHcvNRlm75NHJrq78CNqMYt4tlxjjkF81CWc4ihszQ177?=
 =?us-ascii?Q?1zuEsfL1FIOuAiTeusVwFdruph+FSRFCDFwzn9EbBEw9CkRAO0Ihq04OuYBi?=
 =?us-ascii?Q?jIuFodY0Jo0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(10070799003)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kPE7jXV1ZO46ts6oTdFolmwdjFGlYJnckxzXPWZBt5u1nuiMbi0bemYhb2GN?=
 =?us-ascii?Q?CZP1rT39E3ojxWuDLhY7C7DUqXsXflKEF1OWfgYVOD548CDe3a7s05I5UjGb?=
 =?us-ascii?Q?XnqlME/KN1ph0DctTe4ETKgZRbc/rY76wwf2l+46GAjiUR+Zr5/3eFUuj4cx?=
 =?us-ascii?Q?EFhutgIM7yzNrOLkqXt4pEVFW5lMXaPjV8F+Ykd2zw2g8SD+76t+HIQr3xaH?=
 =?us-ascii?Q?o7i8RZZe8bDdF4RRBSuJsmULo9f4G+HxyLovCPZJ/xA692TKLMunU33kIa2S?=
 =?us-ascii?Q?hNqJPKJ6amBRzqyCZDqGueBdr/RPFHKFEbv2NU3W9Ca4ZtI4urSvdSRDuBk4?=
 =?us-ascii?Q?o2RVZxh+JVbgs9DUY92QFEKhxQDoslEQ1/lKJjrjnfYuQ12+XiS5Y/6k3EmP?=
 =?us-ascii?Q?H4ftqq7w6MFYm0AYb5mt+2xl0uzGtjfOHxPIZfIa8Ct243sXTFUvME/0vycM?=
 =?us-ascii?Q?LBLaV+2ZY+ud+HtxuR7CweFW/n3wIoUeQWDFN+GTq9pdUSIfUVCe/hXEmaZQ?=
 =?us-ascii?Q?8XMqxyqLFyC3iJWazE7add9grPTNdAr5o97h8RIlpUE+sCdf0YIPqXOQUBy+?=
 =?us-ascii?Q?FUF5dKmZx2V/XNGoIrZAszYNcmQi3gOvNWyLrmMcVxVS0igTat0JNQNo1Fjn?=
 =?us-ascii?Q?zfloatWNB58wN70BIeU17jg8oDm8gvMJaFMcIxR8wOSmkrBhKxQUreZCic+A?=
 =?us-ascii?Q?yxX4z7CLssrOIZirq9Y7IENi5dFfs/bR24v33hElp9D6hKhtscU0x7J/OWHV?=
 =?us-ascii?Q?nMpJCZoTZD7pMywRVxpIc4BxNKOc37DRG7n2BG6ZGanFgBEM6WZdZzKnYCXh?=
 =?us-ascii?Q?PFThp/sXDtagSNZXGoGUHV/CW6wuRmv+KCyIQDPtQYm1zJMzOlGxBr9RMZAQ?=
 =?us-ascii?Q?FTJzpG3Rf01geQEYv8BtgV6953CpcwoH2N0Xffth37WmL1XixmxmRLlpnzNf?=
 =?us-ascii?Q?We4TCD08cZF4IrHBs4oYlr9GBcOu0oDZWcuChgWtEtAEDOq6n41lM6nuK1+j?=
 =?us-ascii?Q?NeK8vfY4/sCGADNdxZpRXFyZp8nGSZ2o+ZQYozXwjl4AmVP7NVy1mdE7by8c?=
 =?us-ascii?Q?af8PKkHzPl+DQAVG1+aoVEZ3sBhGlIhrjyBGM9dUhkxkAH2bA/zShFeC2yYT?=
 =?us-ascii?Q?dCDdFfmOHExV0Gl64ocN7Q1ydBF8ovxy4gWkB1vOGUHRPQnDAThA42mjddGy?=
 =?us-ascii?Q?mWbjwCpb37OYC3vj21KQiAxoJ83zA6w3AMusZCWyfVPO+4YBhJTfFVGU0AU0?=
 =?us-ascii?Q?m30TT2m0mLss2e3VkWSDmzlTFoxm8DZSpb/+h97SDHd+sHmT4FhIXqMyJKKy?=
 =?us-ascii?Q?NF36LPBufV/udVtGkTB1wQRYUVpI4CqE3YS21SVuNs72FdeQ4iBAMigLJpD3?=
 =?us-ascii?Q?KgDR0ReYzryex7ehiLCtY9rPBibbKAbS4Y1sbAl7xkPbmvf2J+hKBdJl/D3Y?=
 =?us-ascii?Q?R1HDcAMwYljHsbXIDF0X0xyRFQsqN1fHnyP8Ix5C3pFMNJc9DmpKukv2eK81?=
 =?us-ascii?Q?aTMTA5zV9ViCjosWgEVv7zofx0rQGkBTOQBNg7DHOSLQ8S7q+9xW3pkPX1iU?=
 =?us-ascii?Q?B7qWug0KElPaONaiKpSaUOiImEwFsUqiKFI8KoSOiBvJ6fgpLwZzb23Ct4Bv?=
 =?us-ascii?Q?Qm8+xnhHGh1k1THKISAFHqtZi06tPdmlki0j18jbLpy0?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e9878db8-d54c-4fd9-f8f8-08ddd8ad5a82
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Aug 2025 08:02:01.7875 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LTpWcNLHmgG4Fl0Yeuf5au2lfqwMOEUaGYmRiB4sExHTtCOUMukHlE8wMfEqBROiMEvHJFGD2vlS1aBatganQQ==
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

The PHY's pin assignment value in the TCSS_DDI_STATUS register - as set
by the HW/FW based on the connected DP-alt sink's TypeC/PD pin
assignment negotiation - gets cleared by the HW/FW on LNL+ as soon as
the sink gets disconnected, even if the PHY ownership got acquired
already by the driver (and hence the PHY itself is still connected and
used by the display). This is similar to how the PHY Ready flag gets
cleared on LNL+ in the same register.

To be able to query the max lane count value on LNL+ - which is based on
the above pin assignment - at all times even after the sink gets
disconnected, the max lane count must be determined and cached during
the PHY's HW readout and connect sequences. Do that here, leaving the
actual use of the cached value to a follow-up change.

v2: Don't read out the pin configuration if the PHY is disconnected.

Cc: stable@vger.kernel.org # v6.8+
Reported-by: Charlton Lin <charlton.lin@intel.com>
Tested-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
Reviewed-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 57 +++++++++++++++++++++----
 1 file changed, 48 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index d8247d1a8319b..752900f1c115c 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -66,6 +66,7 @@ struct intel_tc_port {
 	enum tc_port_mode init_mode;
 	enum phy_fia phy_fia;
 	u8 phy_fia_idx;
+	u8 max_lane_count;
 };
 
 static enum intel_display_power_domain
@@ -365,12 +366,12 @@ static int intel_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
 	}
 }
 
-int intel_tc_port_max_lane_count(struct intel_digital_port *dig_port)
+static int get_max_lane_count(struct intel_tc_port *tc)
 {
-	struct intel_display *display = to_intel_display(dig_port);
-	struct intel_tc_port *tc = to_tc_port(dig_port);
+	struct intel_display *display = to_intel_display(tc->dig_port);
+	struct intel_digital_port *dig_port = tc->dig_port;
 
-	if (!intel_encoder_is_tc(&dig_port->base) || tc->mode != TC_PORT_DP_ALT)
+	if (tc->mode != TC_PORT_DP_ALT)
 		return 4;
 
 	assert_tc_cold_blocked(tc);
@@ -384,6 +385,21 @@ int intel_tc_port_max_lane_count(struct intel_digital_port *dig_port)
 	return intel_tc_port_get_max_lane_count(dig_port);
 }
 
+static void read_pin_configuration(struct intel_tc_port *tc)
+{
+	tc->max_lane_count = get_max_lane_count(tc);
+}
+
+int intel_tc_port_max_lane_count(struct intel_digital_port *dig_port)
+{
+	struct intel_tc_port *tc = to_tc_port(dig_port);
+
+	if (!intel_encoder_is_tc(&dig_port->base))
+		return 4;
+
+	return get_max_lane_count(tc);
+}
+
 void intel_tc_port_set_fia_lane_count(struct intel_digital_port *dig_port,
 				      int required_lanes)
 {
@@ -596,9 +612,12 @@ static void icl_tc_phy_get_hw_state(struct intel_tc_port *tc)
 	tc_cold_wref = __tc_cold_block(tc, &domain);
 
 	tc->mode = tc_phy_get_current_mode(tc);
-	if (tc->mode != TC_PORT_DISCONNECTED)
+	if (tc->mode != TC_PORT_DISCONNECTED) {
 		tc->lock_wakeref = tc_cold_block(tc);
 
+		read_pin_configuration(tc);
+	}
+
 	__tc_cold_unblock(tc, domain, tc_cold_wref);
 }
 
@@ -656,8 +675,11 @@ static bool icl_tc_phy_connect(struct intel_tc_port *tc,
 
 	tc->lock_wakeref = tc_cold_block(tc);
 
-	if (tc->mode == TC_PORT_TBT_ALT)
+	if (tc->mode == TC_PORT_TBT_ALT) {
+		read_pin_configuration(tc);
+
 		return true;
+	}
 
 	if ((!tc_phy_is_ready(tc) ||
 	     !icl_tc_phy_take_ownership(tc, true)) &&
@@ -668,6 +690,7 @@ static bool icl_tc_phy_connect(struct intel_tc_port *tc,
 		goto out_unblock_tc_cold;
 	}
 
+	read_pin_configuration(tc);
 
 	if (!tc_phy_verify_legacy_or_dp_alt_mode(tc, required_lanes))
 		goto out_release_phy;
@@ -858,9 +881,12 @@ static void adlp_tc_phy_get_hw_state(struct intel_tc_port *tc)
 	port_wakeref = intel_display_power_get(display, port_power_domain);
 
 	tc->mode = tc_phy_get_current_mode(tc);
-	if (tc->mode != TC_PORT_DISCONNECTED)
+	if (tc->mode != TC_PORT_DISCONNECTED) {
 		tc->lock_wakeref = tc_cold_block(tc);
 
+		read_pin_configuration(tc);
+	}
+
 	intel_display_power_put(display, port_power_domain, port_wakeref);
 }
 
@@ -873,6 +899,9 @@ static bool adlp_tc_phy_connect(struct intel_tc_port *tc, int required_lanes)
 
 	if (tc->mode == TC_PORT_TBT_ALT) {
 		tc->lock_wakeref = tc_cold_block(tc);
+
+		read_pin_configuration(tc);
+
 		return true;
 	}
 
@@ -894,6 +923,8 @@ static bool adlp_tc_phy_connect(struct intel_tc_port *tc, int required_lanes)
 
 	tc->lock_wakeref = tc_cold_block(tc);
 
+	read_pin_configuration(tc);
+
 	if (!tc_phy_verify_legacy_or_dp_alt_mode(tc, required_lanes))
 		goto out_unblock_tc_cold;
 
@@ -1124,9 +1155,12 @@ static void xelpdp_tc_phy_get_hw_state(struct intel_tc_port *tc)
 	tc_cold_wref = __tc_cold_block(tc, &domain);
 
 	tc->mode = tc_phy_get_current_mode(tc);
-	if (tc->mode != TC_PORT_DISCONNECTED)
+	if (tc->mode != TC_PORT_DISCONNECTED) {
 		tc->lock_wakeref = tc_cold_block(tc);
 
+		read_pin_configuration(tc);
+	}
+
 	drm_WARN_ON(display->drm,
 		    (tc->mode == TC_PORT_DP_ALT || tc->mode == TC_PORT_LEGACY) &&
 		    !xelpdp_tc_phy_tcss_power_is_enabled(tc));
@@ -1138,14 +1172,19 @@ static bool xelpdp_tc_phy_connect(struct intel_tc_port *tc, int required_lanes)
 {
 	tc->lock_wakeref = tc_cold_block(tc);
 
-	if (tc->mode == TC_PORT_TBT_ALT)
+	if (tc->mode == TC_PORT_TBT_ALT) {
+		read_pin_configuration(tc);
+
 		return true;
+	}
 
 	if (!xelpdp_tc_phy_enable_tcss_power(tc, true))
 		goto out_unblock_tccold;
 
 	xelpdp_tc_phy_take_ownership(tc, true);
 
+	read_pin_configuration(tc);
+
 	if (!tc_phy_verify_legacy_or_dp_alt_mode(tc, required_lanes))
 		goto out_release_phy;
 
-- 
2.49.1

