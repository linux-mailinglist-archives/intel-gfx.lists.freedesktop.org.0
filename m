Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75AC4BDF9E6
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 18:20:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01E6110E873;
	Wed, 15 Oct 2025 16:20:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BAZ8jC6a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9773910E87D;
 Wed, 15 Oct 2025 16:20:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760545211; x=1792081211;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=dH9vjRZoRU9EGQaq0dz06nnYLEVyTtqpGjoToO77GxI=;
 b=BAZ8jC6a3bfZwYNRePHCkNiF3R3UcvO9oWXkGdIF9xDm1pGd25lvzUNM
 ko1KHVjPtaDS9dLSa7F+F2DH7J3BrVpfCJZ8sysx9hi0JPdjAYEvPaP30
 l3F6vcPU+GmxbO1nQCmzW6oidu409D1iYS3BWKCDOqTfPtQKWDwDKv8ti
 Z/pmWr8Nmu78lXo5llFcitSuKnacEWfsssQxKYFpmns21ZZ5XcUBAkCUh
 oAFCFnGyPV3SoQwyMc/wjcZ4YmASLi9NNBWtmjSGYQcIVCsfDulgfZMuL
 Fmyvy3I2iiuNclxJVgefd8yxVzzlmddXUm5SniKhCDeIm1Xs6CGEuaDfn w==;
X-CSE-ConnectionGUID: RBtH0XEWTZiZjcaG+eLhgA==
X-CSE-MsgGUID: lzHNY7v1R1OLkrkXtzzh2w==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="73837277"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="73837277"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 09:20:11 -0700
X-CSE-ConnectionGUID: gTnPxcXlQgyXvp6tUZVS7A==
X-CSE-MsgGUID: djduukBYTAW7Zd7itxlX5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="181344522"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 09:20:10 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 09:20:09 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 09:20:09 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.28) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 09:20:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y3zwasTqh1F01eCHahEbaWUrqVJVMsgAcNp6lKWxxk7Nj0AhxEH+Gwiga46RbQchkCzccDlxN06hHn89YHNUhqJ0pGNr9iedGTpksBqJHJwap30JrnVt9L63ffKyb1Pyh5Mo/sMTMhgHCDUJtefUmb9amS0fvO8Uhq4a0SO7uGevweJuEsVQ8tPKVcdQxtlVssbF+co7nRCFx/m8VUgfw2Chuw9uFA6jcZJsGdlgTwH1mwrMZRLb4H7d/92Se/fX7wDtvEdT3lrzJD8scLrpYJ9utlfq4Zv4A15EOHgnXBaOT/6XbKtIFQ0cPp7k0bKDgIxqR2sFLDU6qtc1/msK2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AvWrN2QrKF4P5tJXpwG4yo/qMopdxX/N08AclFprrVM=;
 b=V/irBr8DF4vKavQIZ93LUpf9xus7CIUsm+gAKNsmRr3+O4dJPZggbgpzex04tOxnN0jT6HBxIwx9ADlas6mF8dEl09pIkH/JRJGMOiMZNl5Pxc2blTSWzV21h0h2Jtg+FcFmmWe2wPj+2NGDyeeJ5CWj/YlZoxJjbF/mDtzOxqLa80UT8zk09m9nAFFX6E6xGqAe+uyiDEfTGs5iaMN0OdwKCVHIcFwFnkS5ehnJheVq3ecXD1HXCemP68vHomE93/TzdFiNurXXJExf15Hy3cfRdHdfvub63rPXen32kYQjPPNn12VPh1PcaOcKNN3yw/GTeM2au20n+fHchSuSAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH8PR11MB7046.namprd11.prod.outlook.com (2603:10b6:510:216::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.11; Wed, 15 Oct
 2025 16:20:04 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9228.010; Wed, 15 Oct 2025
 16:20:04 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 4/7] drm/i915/dp_mst: Reuse the DP-SST helper function to
 compute FEC config
Date: Wed, 15 Oct 2025 19:19:31 +0300
Message-ID: <20251015161934.262108-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251015161934.262108-1-imre.deak@intel.com>
References: <20251015161934.262108-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DU2PR04CA0188.eurprd04.prod.outlook.com
 (2603:10a6:10:28d::13) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH8PR11MB7046:EE_
X-MS-Office365-Filtering-Correlation-Id: 33a4aed8-7c30-494e-db61-08de0c06b2c0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|10070799003|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?jMP/xfFviqyycqpViC6dxl7kulEbArWVpqjktJ44pybyDx6PfRmBtFolOj4V?=
 =?us-ascii?Q?/DBYVhgOO2NDKZXQELH3VX6mxnJsJDUSl+786PvnivwWkIj8b4iOVLkByP4Q?=
 =?us-ascii?Q?nmrR6ZzY6tSyGU64sdoTa/dvu/zUo9MoleWsE5y9IRiMPZRtDcVy6HJIJ3Yd?=
 =?us-ascii?Q?EH8R/DmyMthoJ21dgBtEF/h+yNtVFJHRtJg3X23b05D8/lEuRdUB9mPKsEEh?=
 =?us-ascii?Q?bAJuIsiJONRMdye79m1/j4FJF1amMTWC9Qugw7kUsRVlR9LoV+8UTGhGX6Tg?=
 =?us-ascii?Q?bX22E6+01F10jme3evU1aZ19d7bAyxJWeVcJheLY5goyqiG+dXox7iMfL+ST?=
 =?us-ascii?Q?BMbpsRmd6lf5LYP+UFmpGjLJKBfkSXBjWYgPgHnz3Fso1jwxQw9ncBCeuoSV?=
 =?us-ascii?Q?5gaMVd8bIf/KYNoB4193Lu+0ean28tH/XMk0ngyog9+W+2KKbmBr6MtdPsSu?=
 =?us-ascii?Q?3qfUWn4Yq8OWxMIpjKuk6luxP+kWEW7QFpyvshQqyzNMRZla8NNoqVIS+W8m?=
 =?us-ascii?Q?AGUQgOico3L2Bkjqr5plP0umCmomKPMl/TWXVRhry0vISEf51i4wMIrh1OZo?=
 =?us-ascii?Q?S9wN7bbqmKRzWZYmnpOWMUVADurlAhGYWPq6ffJtDlbHoNZs6TJ+2falX7Na?=
 =?us-ascii?Q?PpR3VCEncPNnvp22ybSzxc08C/nE2PG/FvbEGL7cKNdGkckJPhed9RPOcpcK?=
 =?us-ascii?Q?LLU7wZR72NQmLbICW+RkaJRQ22WwFiz+RE1BcTUY9QYDviCw9zbiAtbDzUpq?=
 =?us-ascii?Q?qzGUKy+Txhcxo/1vMoUPL3RrSwFaexAy8/g7mr/wCCM2Gd3TcUfL6pJkT2e8?=
 =?us-ascii?Q?1463ATGsGIhQj6rhJVOp8BeoBde3GWLGSZYCcOou6S3nJeFk6s3iRSgHh7bb?=
 =?us-ascii?Q?gsECK1Bydw77Lu6B2dc6scWRGkYQTjBWpLuXpIhYQYFQama5BByFpREmX6gS?=
 =?us-ascii?Q?cHDtiddzPtL0g6QT9lW31B7wzg3OdheHfUJqQo93zdRvvLj3j5y95UezOqsz?=
 =?us-ascii?Q?JzCM4lOOWpMhqnckh66/TK0m9g9TwBTODQh0AHrNhajRKRgSUitmYZqZb64B?=
 =?us-ascii?Q?sZwCwgKXwKlDMvpHDVeFoJCuHzCoweH4y7+PszUGeON9FLUDbYrpLEhlKvA5?=
 =?us-ascii?Q?zDjdNJV/bQbtW1P7kBzlJg1Onhx5rtsjBAfq70DBYpn2p0MMDfAe3cEPAEIa?=
 =?us-ascii?Q?tZejJcAjzr5lAk5zhzjq4X+mBqHVQH4b5mEqIuoiMZRP6fCyaiiBe9RJ7Xei?=
 =?us-ascii?Q?LKJMRAaywY/ljZGTWMABB601PMaG2iq3KSqtX/k3kxUZFqGl6sap5I/9dV8p?=
 =?us-ascii?Q?CLufTh4aUxfLYIRO5kZAiPWck/YFi7PQi/AwePDII42T6miPGjrOau/6l3CW?=
 =?us-ascii?Q?cuUB8MIRcfRPlmjkKrj9EuvOm8YsMGAtXxJaMLhgN6rePdxHDbN1deJ7sB1B?=
 =?us-ascii?Q?3QFxqk7cxKnAonSzr0B4k3LeniFD+WQW?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WEUAOEfJ9Km7qR3gWHDE3luSXRlBNmcH+YO3j1gvMPKY9whrlZDMoZoudTuu?=
 =?us-ascii?Q?ielTlWBrVvyv5/FS6GBe4oSMj253qtIj8M0dCF3r9m8VB6/IvarKSePqAFES?=
 =?us-ascii?Q?noDB278L66zoXl1We0LacAulWUiFTnIYSCKZrxraZmMlvueklGj1HFUkD9vZ?=
 =?us-ascii?Q?x4QBZUANPOci+Qf3Vqvut4aug9q0vzJqrFzkfC5mvqC2LYJo8XkfZAF4WK3h?=
 =?us-ascii?Q?8rTcK0vW1J8nlKWhlwJU2lReqxriZAtYM6mff2YCURJr5kegzoT6GdL5Wv0t?=
 =?us-ascii?Q?Fi+35EKzLUb8oML4DrlPlCT1/72xDGxWAxydRMPjtXRshiflShrw3VBIiEu6?=
 =?us-ascii?Q?wqRSokY9MSK5YHPSzoZn4Xqe4tLVjWOAM/XZlg50dDtAuiQ2teKUDftgNu60?=
 =?us-ascii?Q?jz61SMobob6oGJLz0MfhlZgPs5TZzvErONK61hUuEUK7Sq2t7bqbhG1Smfx4?=
 =?us-ascii?Q?NfHExDZos2WVYie0c0RHafaF0p6vwq9ZX/kYeIqw8VpfVAU+yZh+J724I2N0?=
 =?us-ascii?Q?kgLVyiv9FYOpl2mCu5wL2a5tfjOge/rB0m4PbC9MoUz1aOzqzOvGJeuTIeiy?=
 =?us-ascii?Q?SE/F/WbM6t+QJJ3BTbxUtHmkaAdV3D09g4TSC+zmkc/iBnYQQsdXz2LTg7XQ?=
 =?us-ascii?Q?jT2ok8dhBmdnDGL0fM92G+0aqV1ukDkGDP6Y3lwkB2TwbZ3tvHELCfwADGcK?=
 =?us-ascii?Q?8SXz9bgq+2/8VdXd1dEn3S+IxCIzH0D+FaijPGCVGO+VimUb6I/VZQut0gRf?=
 =?us-ascii?Q?qcJ/lwIcSYNW9TdIMV/3YJoPe67kB6NocSqZd8NZV28Wth5btWJILo6spzh5?=
 =?us-ascii?Q?3WGe9sYW9vVbqxfus3W8j4yzGFrAk0VuGI5dWmRJDQ8tFOeB2fJzfnNbxjsD?=
 =?us-ascii?Q?Sd+b2o1vWP6yYU+IDL8fW37MsfLO4h/Z7Dv3Gj8I3ZLn45DyOiTbjSfamYRX?=
 =?us-ascii?Q?5HLjmD3zpswni7sU5n+Q2KMImPDONtEIs2fRMhf8Y25vV+4rM9YOE8B5h/NJ?=
 =?us-ascii?Q?1SO1xuDsPGsAJdYfmkx2WtcWNSV4qSY5GWJ8YHra9if4gCm6q/s1YFKadb8E?=
 =?us-ascii?Q?vvE/3u4WkYW44DTPrvYlZlXxpt6NQjQQ/2TiBWJQdmr9Joe08lAnCzI9TGXq?=
 =?us-ascii?Q?tDJUVqBJPgzXZNawSzn9hhaMy7/HucdzTbPjxE4tH6ZdPB2mvRtlxsv2J6Dk?=
 =?us-ascii?Q?o8PK7W1kJOouwmCqH/N3tcSm/DH2ZH1UlNmk2sSWRnQ78HPbYyCZEXhGs5nH?=
 =?us-ascii?Q?+H0MWIZa2nFvFJiYJoAe1/ZT/kUM6wEEMtGrNzWIAnB5YQRyR1dcwGN5BRMk?=
 =?us-ascii?Q?5IjMtYikfKMFCaZVvnS6TYO1gC46axX2IdY6zb9Qq4uvO4vxXc6jaUwI4D5g?=
 =?us-ascii?Q?0v6kcl3I4WBNoCBg0tHMvCjf6A4iv6RrJ44o3WXtWzouTf81Thci26jOz8aO?=
 =?us-ascii?Q?ZTpbpx0SHuirlfyjfAuD7gQza1TbSzxqIhbzfNVIhu+mXM6AmhkSNlIFoJg4?=
 =?us-ascii?Q?KCta2oc5pNj8jNxCo0Vz6M2FDYn77JbMYe39ep2Q3QJknhmguWo9QGXDmDei?=
 =?us-ascii?Q?jCeK9sri+n6HrqHLICG85In9NaEbyjUOZoFB4iUSXMGo9w70IF21jPLu3yBk?=
 =?us-ascii?Q?4DI9aNWIx7atvT0d2OCs7YaxjC+4plvsKDrZqsn77a62?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 33a4aed8-7c30-494e-db61-08de0c06b2c0
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2025 16:20:04.4018 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KdR91wOZsVWqbsfmiSZhCV16NNAqwJi5VBkIaw6oVVqxx86+7McO4m/0JSxyh2TSwD0OGN1hKskqH8sLRBoJzg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7046
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

Reuse the DP-SST helper to compute the state for the FEC enabled state
for DP-MST as well.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index d0590b5ffffd7..0cbb4c3a8e22f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -298,12 +298,10 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
 	 * after it was set by intel_dp_dsc_compute_config() ->
 	 * intel_dp_needs_8b10b_fec().
 	 */
-	if (dsc) {
-		if (!intel_dp_supports_fec(intel_dp, connector, crtc_state))
-			return -EINVAL;
-
-		crtc_state->fec_enable = !intel_dp_is_uhbr(crtc_state);
-	}
+	crtc_state->fec_enable = intel_dp_needs_8b10b_fec(crtc_state, dsc);
+	if (crtc_state->fec_enable &&
+	    !intel_dp_supports_fec(intel_dp, connector, crtc_state))
+		return -EINVAL;
 
 	max_dpt_bpp_x16 = fxp_q4_from_int(intel_dp_mst_max_dpt_bpp(crtc_state, dsc));
 	if (max_dpt_bpp_x16 && max_bpp_x16 > max_dpt_bpp_x16) {
-- 
2.49.1

