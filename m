Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2D17A9F264
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 15:31:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 394A910E4EE;
	Mon, 28 Apr 2025 13:31:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BN+qu7Bh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3966710E4E9;
 Mon, 28 Apr 2025 13:31:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745847106; x=1777383106;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=+frgKSzQnhPY3zCQR+0dnABm7/rpA73yzx8VzTnhFJ0=;
 b=BN+qu7Bha2/YbKtsxgGrpsS2N67ySVeNqz6NRroAe5eP2PLIcn28EtEy
 ki3UXBtuQBgy9BI7ZlpDeSHOXszVotykW54LKRBTbBGvOMndu8tenG7Wc
 PvzMzmeXz1+BzcdnPjgxxn3Vzh8+ItaJ/5nPXJAiFpnYJe+Rq5pvZyjbB
 iHIg2dxh+FuF9J7HC9Y1BtiD293QOV0eXy6JS14sLhsseNBoMb8KwgxCE
 xyspRmAKNLJr+NnSVptVd84JZCdpcIUBOGiEs+iICf88PBRI7X0Jbvu/d
 sH14QhrMXTANpYZRY7YZRg1DU5QsPpRW6PQe7mk7a2chl+Rh3z9GEkVas A==;
X-CSE-ConnectionGUID: UESIetwERGGtD601kAD1yQ==
X-CSE-MsgGUID: /brVfSDyQaqQzW+GjbMBDQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="58423114"
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="58423114"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 06:31:46 -0700
X-CSE-ConnectionGUID: fyMSApgFQRak2E5ejLVE2g==
X-CSE-MsgGUID: KxbzhUzFRm2MDMZ8SxkGpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="134490877"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 06:31:47 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 28 Apr 2025 06:31:45 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 28 Apr 2025 06:31:45 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 28 Apr 2025 06:31:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AUpOB5qDA89z/qfG/SA2ivJ1FEf9nEuw2O9vbDT73ib7xQ0l0pyrgtmclk3WVg/SA35VbDGMzTlTBf1ozlWc4e2vAZDRbIVV5MFKalwoS6SZr6I2ifT7ACpS4Gg0et6spL/gz8j4ypWpazAxYfYWIdhVOISoIajpnDvJrLeeyduC+F7U3rRrFR6XoOoTZFtTcQDOLLTXQN3T7REvlVCpY7FcT5bD+3qvXAQjbmhwg+MJ0XFQoJ7sOv3+gqeM/MqpXJENBrqqj3wXLIAHFKVqsobOFHoNyk6cdPinng1dpRfO7eLRZJEP6dmEbdK81gR7/1J9kB3dI3CQAAGf4jpdaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WpjVKFy5YLA1n6zCKmQc9ZFaEMpztwBzTKY1UJ0/2Ps=;
 b=ly28RvGiHu8NH8wJocsEhR8Cc4lJ20uJC2m+mq5LL6q6W6WsK5omCNtlK8X1dL9fisCLj6FInKb1MA7bauHgjWwF0M/WztW7FasEbbAjU0CwMJn719oLK3NIVvVOVsIjAOohCpb1gUnSfIMSoEAWGuyQtZ8BXCSTl0V+LNS4G/T+9EUTceu/k00AsQc/+37RWQfgnWJ5fC2qKK9zxNEmx+irkP3nrY35ATfx/MS0O/E3LAPu/V7sGYpPULnwT3kaW7iODfBAL3l1lf12M9U65ibW3rQwiCUV+siph6qXUJtANmMkjNMWIjXn3Gfk/s0LdNkQBMdkY/R9JLT8VegAsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW5PR11MB5882.namprd11.prod.outlook.com (2603:10b6:303:19e::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.29; Mon, 28 Apr
 2025 13:31:34 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8678.028; Mon, 28 Apr 2025
 13:31:34 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 03/12] drm/i915/dp_mst: Validate compressed bpp vs.
 platform restrictions
Date: Mon, 28 Apr 2025 16:31:14 +0300
Message-ID: <20250428133135.3396080-4-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW5PR11MB5882:EE_
X-MS-Office365-Filtering-Correlation-Id: 1dfbb8f5-adb6-4aa8-82c8-08dd8658fe89
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?fzXo0u4FJg1ox7++HlNS5SVHDf6Zo6y8G998ts/nqo146r8YHwCvWWxxTfey?=
 =?us-ascii?Q?axPHZTcpbWObIfFJKEzw62ubneqCV6oj07rxlfpMTmbnRvVRIa1KpVrB6L2j?=
 =?us-ascii?Q?qxHPW8aNZTbeHF+RBQ/WVjkZ4+vWmC4l/BFk/CrhM2k32Q0Ed92rnZnKBg+b?=
 =?us-ascii?Q?HxIllFfs4GL6M3R9GpUhgSQ2zY0S8fYI5AuFCOPzS+vMl58CLh/rc1A/hFRS?=
 =?us-ascii?Q?6x1Qe0B9pm7GF+vuOoAbD0bMPMLeNNWDTr1pcEyn1y++9lHxx453lcZLb3mx?=
 =?us-ascii?Q?lJWrfxWaDn8wUVbLAozHeHcBA+XW19nHdTSF+CH+503imoABs2tRlQFMKCZ2?=
 =?us-ascii?Q?YghKuTxUYKgpnF/Xo/q/xNQda00ciVvpgf5ZaVGUo1WBCSVf4Q+A0YYDOj+d?=
 =?us-ascii?Q?kwQ2WlORMjRFOjqzKNHzGZHGQ1KuBb9Kd5dSociC56OCU/Zr7DZaenJ2rgxH?=
 =?us-ascii?Q?HCeLEXpuHLoW9B8vxRQbbnDCbJlEyiiKVZajjmjykvEZlV0Jr7xy1hv/zyFk?=
 =?us-ascii?Q?hdCDYG1C5/3Mez2v+4kqKPN1bqDPB0ugENSLKm+IOlLYSIAWvfUyusjRwTwo?=
 =?us-ascii?Q?nDz6nc6haOpYRb8hXNV/mOuVJqaTEebIK16IS/Yrx/MCrXd5wF2V/g6Cs3nw?=
 =?us-ascii?Q?P1a878OSdTVrZGm5nU4+EnL3jvFmEH1UKGzDUoZ704ygDHBdQjToo7yZfDx4?=
 =?us-ascii?Q?EI6xAYSA5YP3P57W843TlijSbqRJQtuA3azy6KajfHwocwyP8s6n1GU+kc2s?=
 =?us-ascii?Q?z3W3knFGeiQPjPvRu0JyKoALCmlhghniQqw2Y/gjKaXc3MDDt5tJAeejq0gj?=
 =?us-ascii?Q?lBJ83aVFnI8/diWbSZUm8qUK5YRCSrzZn1fmqLaj/QAxQ55iQq6bpilhYmiQ?=
 =?us-ascii?Q?zVnGLXA2C78dWOITZBLrpEAuHaP5h9I+9FEcvMR7cnqquJ4tCUKjhlQVul+3?=
 =?us-ascii?Q?BtjKnSnH3jDrW5sNoXcw319GbcVIfyqvp5xa3BIY/NNxHqpyHH8YQUncYyOq?=
 =?us-ascii?Q?xiwspDestre4NsjtjpAEULeO+QJ2vzwNdZZKJAH4qA+Fe4/rsmXNQFc5/IPw?=
 =?us-ascii?Q?YWizbYpccgc/rFTXgTPdmifEJgy6Q99BC4/vbdemh9/ufBSUNxLYC0Cbb0Ql?=
 =?us-ascii?Q?jNGsmQNRmVxHJCuEyW+Plp+RUgU91FS2fn1T2cO2jJM8JxEU7opKb3BDE4If?=
 =?us-ascii?Q?C6KtvUyMIyU/39lybREoykAaUPMTyeHJTCvdxvo0lchgz2jci/Bqi6xeicVS?=
 =?us-ascii?Q?tPcymJ6sIg1uG/4S7q5h9Ooon2A4UmhnP+zbBvNb+ASbqSfLpNTPtwGFv3gZ?=
 =?us-ascii?Q?pvAsFppebbL3DHG7fer7Tqv1W37OWTFNnrK09xz5mIdS/AowqdQxdh/Cbvdm?=
 =?us-ascii?Q?BbKMf1jy6LKZffpsqbaJSaXUCve8ne5XOko2XchDbIj3LEzwskMJ8UtX3eGQ?=
 =?us-ascii?Q?HtGL5/68wfA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+iYpC1sy3pjNE7f7ys3RMSg8AIOudxFxaYY9uU3kMYnpl34p9ZLvh4YaZWAW?=
 =?us-ascii?Q?AGnLf8xvLTLNrSZLOJqihfg/6wFR/EiCFHRqh/AR0cauZ1Efg5mE7HKCL4Bh?=
 =?us-ascii?Q?m5MX/OMCOaMlJKU7gxzkLkcN96bQNFVeLvwIjwgIdgTDVSG1dYtZsB3+Mz34?=
 =?us-ascii?Q?o3UQx172lMASyPPMTC01ldMEb4kTWtOoCXX1Eye8ftufc3kfO+HjaNcgfXAz?=
 =?us-ascii?Q?+8MvTjolJXplcjsrl9JkMAzIlbNnO521a7aymQyREO8jAdoyGVtUCJi962Ss?=
 =?us-ascii?Q?vcBikTGeXElEuydEgGYiu+JyfXpo90KXJsb/ioFmcxoxSnuMZzp3CazOL+Me?=
 =?us-ascii?Q?WOKDu5YygxeKfQAaBsZFCB4hOg7YEynNtiN6EHvnlJrFldkNLXHv08w//vq+?=
 =?us-ascii?Q?N2vpLHytYWfVRE/Ms2nbqfx6XnSFShY0hS/g37yHVGoJkZEYdCePkCkOnpMF?=
 =?us-ascii?Q?uBAQ7gu3m97BB998dHbvQmVz9WcZpZINe/zYJJL2zGfVFKLh1xCBWpCqFZhk?=
 =?us-ascii?Q?9dlAo1o/K1NVXH9jMHN0T4KmFNvJpJOOaHCIsT1YtNI4nKQCHYrIXgDCq4io?=
 =?us-ascii?Q?pimbman44Vll4UQZnPPtBqhIKdUYgt/s8+rahD4ITTnXWSj9Q+/bGXtXE7xj?=
 =?us-ascii?Q?ZSAAMWMJVtV0vWVmZcibzbAUe8dPcs8AyKj/eg2Ov5ydgzPWmeiLG5Vz7khz?=
 =?us-ascii?Q?5F/DPEnOP5RxLd03Agu0ktH+bVXa4IoZjN8tcpdWFqJ53khSkaxUXGBW4MEd?=
 =?us-ascii?Q?GeHJZqIk00iQlgKqar2M28vMabct44VLKrbwexGXdoeHDGwpPopfbpsOncAL?=
 =?us-ascii?Q?dP74zdnfxJAO7VviXZViVPSFlaNycmijwAf7kuBh7me9qL1TLCy071SPjSbf?=
 =?us-ascii?Q?FHYJW3e/YlXQm5TPsBRfevhHrf87KXcbn0OHk89D1HBya8XGqN58besy5PB1?=
 =?us-ascii?Q?wv2fm/kIbKPSS67lb7z/pSOU48nDTCbVCIhNJUbYfS6HGlUYVR51Y8g8KYLs?=
 =?us-ascii?Q?7t1SN/NezW3pZnXJmP+yd1qvtTKInZJZDtDh9becg67anYh5pLnMHy9QwYDj?=
 =?us-ascii?Q?qlE6Wrv3Q1beumitqJ/N/4fou0v5uFtAy8+oOHizM1zI0+pacXz8KuTuZ/YK?=
 =?us-ascii?Q?jNhweiAIO8a4NSnylDp0HO8GlOuNfMlT1Wq7DbSu8puCnow76Zo2UxhMIWSH?=
 =?us-ascii?Q?xUVBVQYQwyuj6ycirk3jm744C8WyCMlfzZ1Hj1h7JVVROfPiI360CQT6TKbz?=
 =?us-ascii?Q?ohZWnwjFt/Fz92mPT/hRFDR9joxz8lHuDUGdTs1oDxoJaHX+8T6WCE9iUaOf?=
 =?us-ascii?Q?6IoauYLdJCbMlZlkJJ/Dg+JLeKVpVDKmGCRAulRMvLFb+4hSZQNUjNyYyVbn?=
 =?us-ascii?Q?md6bGDsEaExEiboaclLU6IIxjqzHdiqei9q4TRMwlNy8H/TjbrSyFivtBGjr?=
 =?us-ascii?Q?ypDgLWfN9b7AAdV7pbwA3UMNDYbPzTFs9hqo4basFCD6+wPZq06QGA4wQaCk?=
 =?us-ascii?Q?FwRCWRXHIl45JI7I+u3IS2Qh1PXJhsuBTde6Fv2cDLsTTFMH5Z6e5PQQfmpa?=
 =?us-ascii?Q?z03i/Z+p+71cxV8UuP9UImeXgGoPRlCsqOiIhVlo?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1dfbb8f5-adb6-4aa8-82c8-08dd8658fe89
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2025 13:31:34.3865 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TxO1h/PN0OVCTgxqf7qrw15roJsjFVB9/qLpRBIsePa5wAQ0E/YzyAJM4aMgJf0cqlelBNQlOCFf8dMxgnIh5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5882
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

Atm TGL supports only a fixed set of valid DSC compressed bpps
(6,8,10,12,15), but this is not taken into account while looking for a
bpp in the minimum..maximum compressed bpp range.

This happened to work only by chance since atm from the above min..max
range it's always the maximum bpp that is selected, which is one of the
above valid bpps (see mst_stream_dsc_compute_link_config() ->
intel_dp_dsc_nearest_valid_bpp()). Before selecting a bpp however, the
bpp's BW requirement should be checked wrt. to the MST total link BW;
after doing that - in a follow-up change - the validity of any bpp in
the min..max range must be ensured before the bpp is selected, do that
here.

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 9 ++++++---
 drivers/gpu/drm/i915/display/intel_dp.h     | 1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 6 ++++++
 3 files changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d63aea7ee9c80..5c206faadf93a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2110,8 +2110,11 @@ static int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector)
 	return fxp_q4_from_int(1) / incr;
 }
 
-/* Note: This is not universally usable! */
-static bool intel_dp_dsc_valid_bpp(struct intel_dp *intel_dp, int bpp_x16)
+/*
+ * Note: for bpp_x16 to be valid it must be also within the source/sink's
+ * min..max bpp capability range.
+ */
+bool intel_dp_dsc_valid_compressed_bpp(struct intel_dp *intel_dp, int bpp_x16)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	int i;
@@ -2175,7 +2178,7 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 	max_bpp_x16 = min(max_bpp_x16, fxp_q4_from_int(output_bpp) - bpp_step_x16);
 
 	for (bpp_x16 = max_bpp_x16; bpp_x16 >= min_bpp_x16; bpp_x16 -= bpp_step_x16) {
-		if (!intel_dp_dsc_valid_bpp(intel_dp, bpp_x16))
+		if (!intel_dp_dsc_valid_compressed_bpp(intel_dp, bpp_x16))
 			continue;
 
 		ret = dsc_compute_link_config(intel_dp,
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 98f90955fdb1d..a9dd9ed1afc9d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -147,6 +147,7 @@ int intel_dp_dsc_sink_min_compressed_bpp(const struct intel_crtc_state *pipe_con
 int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector *connector,
 					 const struct intel_crtc_state *pipe_config,
 					 int bpc);
+bool intel_dp_dsc_valid_compressed_bpp(struct intel_dp *intel_dp, int bpp_x16);
 u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 				int mode_clock, int mode_hdisplay,
 				int num_joined_pipes);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index d8033e55dc093..8e1ed3b38217d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -330,6 +330,12 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
 
 		drm_dbg_kms(display->drm, "Trying bpp " FXP_Q4_FMT "\n", FXP_Q4_ARGS(bpp_x16));
 
+		if (dsc && !intel_dp_dsc_valid_compressed_bpp(intel_dp, bpp_x16)) {
+			/* SST must have validated the single bpp tried here already earlier. */
+			drm_WARN_ON(display->drm, !is_mst);
+			continue;
+		}
+
 		link_bpp_x16 = dsc ? bpp_x16 :
 			fxp_q4_from_int(intel_dp_output_bpp(crtc_state->output_format,
 							    fxp_q4_to_int(bpp_x16)));
-- 
2.44.2

