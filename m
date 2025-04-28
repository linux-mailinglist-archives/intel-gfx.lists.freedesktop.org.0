Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F657A9F268
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 15:31:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97EE510E50F;
	Mon, 28 Apr 2025 13:31:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C4uiDa7H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED2C110E50E;
 Mon, 28 Apr 2025 13:31:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745847117; x=1777383117;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=0WgX9dUCiyKn1Yu5y76PcgHW1uGbrLifR6GuC9ja5n8=;
 b=C4uiDa7HE3bpj+x6EIbPr3D6/PP+G0m0AD+Cl4IMAEEqw/F4eKnPXHRO
 AjzqDR3hK0OPtGQaRAEHWa6+wwDX7OWgwtfNFKz9hF94MDg9HIYCuBbSt
 yZZ1hupjX/PyccNhdF6vZW2OTfCslfK7s1LoTt00QlQ5FTIdLJb6F+2fk
 7gCgNnIqO8QuF92grGh8xw/2snUri9F4uJyFz78S6eq8gPRaUsTxXJWbf
 4enfkPVA5AIg3vzJ+KeL/n5xXsJABKZIQna5J1FXszHpR7hCcPn70uaOw
 XYuVb5u+EJWgKUTY3JaqpnWKO6v6lR9DqgR86/t25l92F9FzbS+CmNh1V g==;
X-CSE-ConnectionGUID: m0ETQ702QSi5sVZUltmnXA==
X-CSE-MsgGUID: zdYJdxnVQp2YGcCm6WloGw==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="51256755"
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="51256755"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 06:31:56 -0700
X-CSE-ConnectionGUID: ylaX7A/dS5edMB+gCNP03A==
X-CSE-MsgGUID: BXWBEDm5SAqNYSgX72mTgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="133418900"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 06:31:57 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 28 Apr 2025 06:31:55 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 28 Apr 2025 06:31:55 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 28 Apr 2025 06:31:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jNaHtokVqeHGy4Hw7To5gUWYewqSFgdWHAn2UnfusoSdQYAnhNaB9xmi1x/TWNudpLpJf8TBol2L4oTeXNVoqPvnTfbUbJQ3+a490+TLbpR0SPgiFAFQfKWMWt8D+biE9rFQ3I7kCaAMWvOKqATqPp/NiYrshR8Y46OVcLMzc9P0ZV0RjojZQiZb0YETTxnbNJxMYCEDINMsSKYRMZcy7gbzKYAb2GhM4XAL9Zmw84K113y4ydm/DTitcC+NNkQUubR6N/F8RRABdvspmIyGzzZZVli/jIXP9Ztreh7OzYuIJiZFLrLW8LPeCje9gHNOuNyct3rdpDNtlI0AcZag/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z3Kl/K+rteewHBLSzvThh5TyDdlSYeOgNZa4Oz8mk+Q=;
 b=kr5OEcwrSc4Mi/Z076NCobim/I5wwPRa3Na/ndXMeQlEwyd26FI2XBQ0UR7wpXEy8/CAgs7OKrj0Cosu7YT001JLQITzMROubkJ72rvTqpg7aAJoNzUejWrizNDtseM/UW+TYmqgEr159QJZreBmUQAtQReGez3XFLxJg4nSOBVsGcBVRYMwb/zOsZoCKDtzVgb4r+4q30ioyYs/hf4KPedast55qrUNXFpAAzbEitE1jd2MONHZGoK9p6uItsFw+ci4he7nouKtbxblybF9QDlEZFfEVMUe9AzaX0M5AKv8kin4ceNDs6CrgDfzqVsptaxpFArhiXVXJ+LPEGokNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DM6PR11MB4514.namprd11.prod.outlook.com (2603:10b6:5:2a3::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.33; Mon, 28 Apr
 2025 13:31:43 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8678.028; Mon, 28 Apr 2025
 13:31:43 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 10/12] drm/i915/dp: Export
 intel_dp_dsc_min_src_compressed_bpp()
Date: Mon, 28 Apr 2025 16:31:21 +0300
Message-ID: <20250428133135.3396080-11-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250428133135.3396080-1-imre.deak@intel.com>
References: <20250428133135.3396080-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P123CA0067.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:153::18) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DM6PR11MB4514:EE_
X-MS-Office365-Filtering-Correlation-Id: 1589005a-a198-4c5b-7ab5-08dd865903fe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?dntNFmspzrpQDYoiU7ZzBxi+WPkqLVMWN2Ior/3DAhkqgV6Z44jjFVne/LdN?=
 =?us-ascii?Q?t34NuN+RZqd9Pes7Y7MQgKXHHppHNZNuP+aLy6ZjQqSCPybvhOwJOuDxw9gj?=
 =?us-ascii?Q?n/AoaOE3cOgIZRY66+evbg1xXTIyCrLZQxCKyAv6mqYfKK+xhvjNrWNKVMGc?=
 =?us-ascii?Q?u+sC3g2W8Co7stMy75ytSCAc4rsrYbxJzKOC3Hcis9pfB4URAJAkkEYecuf+?=
 =?us-ascii?Q?dMf1K8yyh8Mv6O2h77HfkpMdLZezRxkjc82+tu9pEGIOfAaRTn4+ZjPePB94?=
 =?us-ascii?Q?3mfDgn6TitzKRhjC+aXoqw2gVmWwomvDV+jwrHqxWSD2ULjKsKofkJVB0Zn8?=
 =?us-ascii?Q?jPRVRh4bG48jKox/tRLa85kxZEI0Q9Oe/12CXnFCTMnFfhRv3Da9kBaPYvjH?=
 =?us-ascii?Q?NEQYJn2oLHWfn9epITorzuaNrE+knUwReF46ky9IFSIK9qT+oxpvCTxiNeaP?=
 =?us-ascii?Q?gg3qWYa6Eb5cPB0fD2ug5HrV80g39GI09oobtZVe9SxyvxiisCMjg8Wm9BDA?=
 =?us-ascii?Q?CVSafCE5qwF10W5ufIgnP9wFlwa3gz5LW/4yx4vRljBJIdXPdRX2RY2Y1vXi?=
 =?us-ascii?Q?UGRFnsfYk5YRuhtrAHA8Fc9DtXQK9XoohVWnBuhWqQo2VVQUOtyeGsTeqqXR?=
 =?us-ascii?Q?bs5tAV24pGzUFskThtc6Tpe9MPphUZ92sGSazE2Pe/vhA9Nj29PA9vOqCW5M?=
 =?us-ascii?Q?lKGW2Q2NuDRRmqUAc9Ve0ea1nM8TxWIOzIknRjMtXWI+b83OD0/7r4FxywbA?=
 =?us-ascii?Q?1xnsuv8pFh8KNrcjiUM0te39CaOMeiq2Y0prhany11Mfd1UdCoHHl2b7IieX?=
 =?us-ascii?Q?+Nz5JP2rySHXOmD8B/w/pMmqyJoJTK6iME27+b4nXpo25Sj538GLDSJdAKk7?=
 =?us-ascii?Q?8SCmYImIr9qM4NOekDAHGUvCSSApLSp1sKgAhjdtr3XabbaQL8R+0fqt5MU8?=
 =?us-ascii?Q?LEZUkgbXb61JtECzGgd3roP1ATgvKCT/UbjmF7BvfrhhvdM7gRAe4caTsoTU?=
 =?us-ascii?Q?ZkaFAZCJBezkSIvIEP8pAlt5UdVgjZqqJsE590xUf+9OIQokujaekzL6EjO1?=
 =?us-ascii?Q?o2PXUkKqi1krZf3QZh0awwv1yUK2URsGn6JuPEoiOBCgyElWKmsdq0umoD/j?=
 =?us-ascii?Q?9gexaMbipHx6k6OEl7lciGsoAAs2FoFAq2fiIn1oOY4vLx1UZvL+Rmtkw6qD?=
 =?us-ascii?Q?8lfklMKsbijVrXJ5e9ZUWGt/7+s4b7+NKSMu3eOqoGwJamFBDurcTlsmh8oA?=
 =?us-ascii?Q?8zd9jvKnxIyBriFt0DTPz4AC0sy0HYN0o9pa/fVA9pu5tfUXQCxG87QNIawx?=
 =?us-ascii?Q?/Y5nsyd6IgtRA71KabLv+s4YLDri+jMcNBDeM0G6bVIt0fBsWok0JI5Q9A1b?=
 =?us-ascii?Q?IjkpGoDVwZO9rfzfXlmSoaKh38zICj4yYerZQbJforvaAfBR2RQeQjMxUaOF?=
 =?us-ascii?Q?hr+hYOFzAMg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qNOL2V5CymsjxJc7FmG9yZ0mwumFyAumAUwBANl1tDBMmi35MmMRZ2N1Ogzn?=
 =?us-ascii?Q?twUJwGu/yKFn6vc/2FZPjMa8WdV3E7ejYEbr4dMmdP3pzwzJVXI1zOqCPPnZ?=
 =?us-ascii?Q?X0YzuuZbzF8x4+Ks7OTPQtkxbk9N8T1wpS1FRcGX0+PFvajzSbFgj/gKteJd?=
 =?us-ascii?Q?z5qfCgJXuT8WEGi/p9BLPJ2e/8lsl3qBi3D26grEKDGDoAt6ji3v0W3A3pq5?=
 =?us-ascii?Q?U5BV7pLj96wcv2eSfsFzB15e1vR7098CEm6c74dymbUh4ZufBmOzVMNvDX/A?=
 =?us-ascii?Q?ULf03YwmFzBZIQpevtiNyGeD17ViIZ47hqf/iJwF6r/kabeeb7Af/AfK5oRP?=
 =?us-ascii?Q?6BUX0Ui8rgvxedjENg+wZgo+Y8OjFBePi9033DMLnVjS3e7w/rRSMwXt2UAo?=
 =?us-ascii?Q?i9Ssa4wtbxOG9/MqwvZ0Mqx09sc9Uhv7V7konmNcbKxyz8Pyz9+JXCNC72up?=
 =?us-ascii?Q?r5IZbQGg8c43ya7vfefgHRb8TSZtVr8ZqvplLu+UWyMvSormULSskC+/YBwa?=
 =?us-ascii?Q?vqhdGOv7rZstbdf/7/kZSZJ82wDtY0Rc2FimQr8aohvyavNmR3FzSJMsoDBl?=
 =?us-ascii?Q?Q40uUVVauslEo8XhVdrep3DbIkbgF95YHb65cs9SaDQtb0hc36HD3lqajkbp?=
 =?us-ascii?Q?zRLNRGgO22ykB5V6641VbcnX6fPy1HJpROPFF2iI2HBLANc+DSTogtFhoI+S?=
 =?us-ascii?Q?qhMF2gmEnIHzv5Mjx5CYCfr7PPCASWqaUpVmryqgMZ+FR2t4vCY+Wk/n7Ecw?=
 =?us-ascii?Q?YRgbczSx1p7o87whnrmTnfIv8AZOYgIBNB83vS3w/QU3nrHrNNYbZGvLaCtD?=
 =?us-ascii?Q?AI10LThEicUZqbTiKfv89SFHYCbMMXQ1T1SGSygpkrJpD8G7S0lnCw8dU3i8?=
 =?us-ascii?Q?7qw7t2p9J4j34Tb6Zhek9xv+6uJ6tq57Dkzj1SntROPCId7NTgA/yJTzVLIA?=
 =?us-ascii?Q?9pOumYxqbEDBaErjIj7fGMxDaYwcb1ZKwYh8CXwGM8pvzyvCbJTMad0llBGe?=
 =?us-ascii?Q?SRhAQrEcSPzQQBau1OtJ5TKe5KmObZ+MdweuTkW2RIlGTcy6MeoDrBYn4srn?=
 =?us-ascii?Q?jlBxvJXkkxITn4O10e5LG2xV2+6xuKL1KmCcOU7dCYVI0s+qp3nKG9JrtK5M?=
 =?us-ascii?Q?GG8kOKiJS3tJT23Ir+4JSXzvS6AynsLSmU3xb3drg2bKUQI7U3tXvZcj8tF6?=
 =?us-ascii?Q?OuGLYsYNJFjRiUtJskQrQE54rfN2fmxdO1zFlTPIF0AzJ5LoBqvouVJ6p6DB?=
 =?us-ascii?Q?RCTlq4Dk2lqer9OpMHua+gUPoUzJiIMLU9/qSyQR/3gCpFU89bCPaHfFcrRl?=
 =?us-ascii?Q?7zOB7O3nMmKs2rloE/opQ9vNs9IoPywenZHXkijXF2yzFVKpIRkKXWheBEfx?=
 =?us-ascii?Q?gLeQYwF8EI91WEhcLN668idwo/RQctwZx1VYYsQuTmM2W3rkKzYQYl8VnlPm?=
 =?us-ascii?Q?JJR2IzNtBTwGzaiu9LQsyDWrA6ki2jh0w4UXaiYQz7ndqoVtSBA8XNyNJzHQ?=
 =?us-ascii?Q?scM9GXV20n4NxO1ZVJsDitIOx98lfB2DWHqdQlJVGYA5DezVnC7w98oPBvmn?=
 =?us-ascii?Q?x4l11IltVij8cJk8VZsEKQm9teQ04BG31eK4+UY9?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1589005a-a198-4c5b-7ab5-08dd865903fe
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2025 13:31:43.5578 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EDnHAuPeOKOJw42Gp9nMY1PAVkkJ5vm9ImbgVAETmB+u6BSNI/UJ+umzlep0Z5d2HDD6PAcN1gPMax5r5fObXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4514
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

Export the function that can be used by a follow-up change to query the
minimum compressed link bpp supported by the HW.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_dp.h | 1 +
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 73ca9f8efefc5..047473e3f6e6a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2070,7 +2070,7 @@ int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector *connector
 						       pipe_config, bpc) >> 4;
 }
 
-static int dsc_src_min_compressed_bpp(void)
+int intel_dp_dsc_min_src_compressed_bpp(void)
 {
 	/* Min Compressed bpp supported by source is 8 */
 	return 8;
@@ -2481,7 +2481,7 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 		int dsc_src_min_bpp, dsc_sink_min_bpp, dsc_min_bpp;
 		int dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
 
-		dsc_src_min_bpp = dsc_src_min_compressed_bpp();
+		dsc_src_min_bpp = intel_dp_dsc_min_src_compressed_bpp();
 		dsc_sink_min_bpp = intel_dp_dsc_sink_min_compressed_bpp(crtc_state);
 		dsc_min_bpp = max(dsc_src_min_bpp, dsc_sink_min_bpp);
 		limits->link.min_bpp_x16 = fxp_q4_from_int(dsc_min_bpp);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 3206c86adaba6..f883fc0b65c06 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -208,5 +208,6 @@ bool intel_dp_has_connector(struct intel_dp *intel_dp,
 			    const struct drm_connector_state *conn_state);
 int intel_dp_dsc_max_src_input_bpc(struct intel_display *display);
 int intel_dp_dsc_min_src_input_bpc(void);
+int intel_dp_dsc_min_src_compressed_bpp(void);
 
 #endif /* __INTEL_DP_H__ */
-- 
2.44.2

