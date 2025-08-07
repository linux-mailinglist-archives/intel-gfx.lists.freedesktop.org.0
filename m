Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A6DB1DFAA
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Aug 2025 01:02:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BDAA10E49F;
	Thu,  7 Aug 2025 23:02:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="erOPVJUm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9B2C10E49E
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Aug 2025 23:02:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754607731; x=1786143731;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=V5bAyq40Kl+TRV4+mHp6zlE51dFE7jTkrcS2IYYiC18=;
 b=erOPVJUmz7Rid9WHWkdS7Vunq+xI/Y6leFLkVbEZDIslQJ2cPQEC5P1y
 b0vV0tIQxNrkKU8NCb36s70BxGLi3crWQBeoW0g1RqDVc3bt6tqhvgLae
 bJdBeQfQ/vy0KFnnQ5VS+0MWG9I1RJuxt9LfzLhdJv5CCaJAdC8A7gmm4
 iwAUUVlR34qiuB0wi2zwJ+J5hyUwJbh7Hf/jZ1O9lxtHxb4ih8P58cvWP
 eA4WMVjQ/9AVzlz6XH5iYVI9b9TclvQJZwpVu4mGGVg6y19u2I7jsm+Hf
 DgK6JlSN0QsM35+p9w/ut+/2MCKFy4O9l7O0636K2HGbMFIstbbL8896u w==;
X-CSE-ConnectionGUID: cEifTe0nSVGA+zHEINL3sg==
X-CSE-MsgGUID: 8XvT7V9xRa66krjnjt/z7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="68327770"
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="68327770"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 16:02:11 -0700
X-CSE-ConnectionGUID: o5VAwvK/RfCA8IZu/X3U8g==
X-CSE-MsgGUID: cX3eJ9DhR/G+k/4XhneuGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="164692671"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 16:02:10 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 16:02:10 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 7 Aug 2025 16:02:10 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.42) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 16:02:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sQZzyXSv7d3429knUgfgwItrl4/gLzlO+du2e8woNkCkj820uEWl8+t8AGISLxkyNTrH2/e1yEtm661NGT18EzBtPJBSw28BdHoMMQKAG7f951JVKhD9FdsltFlwtLIO8lXQF12nB56WajEKdlPuOtWDQ2vzi5w3VUu01gA18xEZNP9USpan4VVQc3X9jFkuQsLNCrDwRN+WRrw2jBpC0jfaGm1opHdqoRq4rDCUJSZTvgHhFZt+vwtc2hv4jKVMdGVu5bI0vxN67zyJ1ldyqTt5XNMZZJbwgQajHihp79tTkwORXsubnPLwgeh4a56cEHhbTR3AQEkn8QFMSo3sIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oTKPE9pcHGZrAO5rwmcAYoi+2QtsA+iLEsWw99PeLLg=;
 b=feOjdoVLlSwLWFY59udXELetg8Qsy693jsOEGk37Axu72xSKIKHEfXaBsYckOhIwf8nNKqL9gsdUsU8FT0Jd5GZFIq7jMAA2zv4r6xsjXQbHIZLJznqoBtqqWq7lTTBAmuEdkqjq4ejDMpat0Q6hVkYb2IAqE223ynRmeY3UPHsb/44vb3tI0W1vTHWfcwrcp8K9GZmNwH5dwEdRP9PqK+c8dh7dKB+zatX28F0jVKLU24Xgid0zqbCNAa6u2lo2qZoK17re1ssElkF0G8jjMOzK8DIvrW8tOQQzbQ7HKGpg3NrBJFA4SSB+TjJ/kUZ26t2wXI0tx7xJNoLMlKQJ4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by SJ0PR11MB5134.namprd11.prod.outlook.com (2603:10b6:a03:2de::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.16; Thu, 7 Aug
 2025 23:02:07 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%5]) with mapi id 15.20.8989.018; Thu, 7 Aug 2025
 23:02:06 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
Subject: [CI 6/9] drm/i915/display: Remove outdated struct_mutex comments
Date: Thu, 7 Aug 2025 19:01:50 -0400
Message-ID: <20250807230146.128362-17-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250807230146.128362-11-rodrigo.vivi@intel.com>
References: <20250807230146.128362-11-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR05CA0196.namprd05.prod.outlook.com
 (2603:10b6:a03:330::21) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|SJ0PR11MB5134:EE_
X-MS-Office365-Filtering-Correlation-Id: 841d576e-a751-475d-748f-08ddd6066e60
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?MN6Yqk0InOlhS3ACzdRrPUSl0cw1M42z/ruJa+FCldQnBj4CLLphSUcutXhb?=
 =?us-ascii?Q?BgBBoJNvykKXAISrP0B0W4+EZRySYyJzMGhM8TKC14QCV3hH2nYoKc/ttsu8?=
 =?us-ascii?Q?cmz5gJ6XLqtyKZ3dX4dOmaYGLX8z1BbVTd0DqL97jlW0dLLLDhslAUoaQuiK?=
 =?us-ascii?Q?hdgyOoMhrXs7aUY20WI/PXbnq1da7MjlNUQkysljyY962DCMOglhwOQn8Tbn?=
 =?us-ascii?Q?WsVSxBfE0FIjBh+j5yeLnHjar0efVqoVAKS9fE834H3kVzlkxjOU44oZAwLv?=
 =?us-ascii?Q?YTZy1Ld+tbr6La1vA/UZF5A/qaCCM918opvZ53pVi5yKNqGfSO8OE2z1fh2+?=
 =?us-ascii?Q?mTeuVm9P9xtdB4w3bzhNjoHAu8C3gt9qRd54IEIbXDHOilCrzefjVrkog+ig?=
 =?us-ascii?Q?4Kjh7GsyD3Al0n1+gi1OmC+5aOIUPQdXveIJqfUSmgGo+Lxq/9X5XM3JAqcJ?=
 =?us-ascii?Q?SAMSq1wdqKWs4PtNjXB3TR0MbAunldJwicfc5nRVqYwPZQSkv2OKuKsMuFmb?=
 =?us-ascii?Q?Y1m8yfGsfBV1R+mimOMFBqr538n+qmV6nKYrbWaV1DEMQ5DaCz8+VaWX0GbC?=
 =?us-ascii?Q?wyOtwrumNnAl0efCZlyBZCVxv6N8vM5JdM8hyE0Ebole59QKVwQyqFi7fJes?=
 =?us-ascii?Q?Gq6pPMtsKKIeJ58+CbKIx1SJx5AouUYl/sw8GWHrkmCp7y0GAT3HirPFUymn?=
 =?us-ascii?Q?jagFJBhjRKkvhDVHnlRAbVzSxnXCBpYM/ULHRgmiFbKdMi8hzSc9XViYPjwT?=
 =?us-ascii?Q?VItZMQERl5FfD959ZOR7+d4kByjsWSIzgN2uVmjahlqvLPBr4B7P/3n17Zj+?=
 =?us-ascii?Q?lC0Kua/oUwt10MbRvM5h4BByrjmPxUZBPrt1MHgzti8BRJy7pa89Zjyy65B1?=
 =?us-ascii?Q?70arFi54f9G4xzV9r7jzfPHaV9NzemqhOF3+h8tHYUwrkUS07J4fTGiJYI2g?=
 =?us-ascii?Q?2P+/2RUfGy+tMlIWiruoC1QQ8DrILdEaZPsQsqNyOmld7XSUvTTGEarTTfUC?=
 =?us-ascii?Q?nCymCuX63H1yLY00sbPRB2RxQ5Jvu2R1T0VRVSVAtFw8Cx8rafaPTU0r/vvZ?=
 =?us-ascii?Q?J0NBSYqAQA9AwGOm4l7z38/qhaH14z+oYoqFPsGm62gdq3w0jr+pMpthCb1S?=
 =?us-ascii?Q?5PXq2Kf1CLyBZEX39NYYRZVEjKHeOOkq20kibSBRka4L2ePwwcEpasj6yHAp?=
 =?us-ascii?Q?vx5/vn2CBZHkdHQwqN193mC5/9yrnpm68dmXAVkqMIDQ7raEFiuzVEWGluLc?=
 =?us-ascii?Q?zUY/fJmdNTp5tv8j5/C+gHqUeV5EnSyWyurZp6fE1/0ICByIsdW+p48delSR?=
 =?us-ascii?Q?+D7bBHhlGNdkxOp1Q8t5RSvMWJ52iyGcFaF+g/5UvSDLYwXLocZGHLoVLdLW?=
 =?us-ascii?Q?++SebZLNicVEmvSSNt8DNrb/isc+AdvSkomkxijlv4S3oIajnGjzYqy1TAQH?=
 =?us-ascii?Q?9oAeODFV8Ck=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1OHyqnt4enWlsOjVTe2mCBsYxqdg0+227dycmfhUSwbRmD2QzCLoe0NctLv/?=
 =?us-ascii?Q?mINIbRqTRf0h5/oKLLWBmgMvJARDKTmALcYR83f1tjCY1BYws0J0pG0FXA+V?=
 =?us-ascii?Q?RshS/Qma96Cwf9TdZPFYAxO5Ln8bxukWUzwLY6lr2RbrqvUeaQFBLH0b0q7v?=
 =?us-ascii?Q?JG+RuC2kNx1FtJr8aVvTys2Zb8zLRvYJ3xHS1yO/2nWuJZCVJ+RDGmXpLtoW?=
 =?us-ascii?Q?3vvtFmVEn9M0QIkFnfbI2T+l9aTdGj5F6s584oH1z19RbFcfWKEOpJPJRibB?=
 =?us-ascii?Q?vIGRXkJzPXmb79WPBpNhIEIpT7pMBOwEjn6r8fsokH8WPl1PS79jj0dcpOLe?=
 =?us-ascii?Q?x++q56+9gmYSY03LKaoha5E2nvdYqCTkk2d3bxCkYlghB//t3PBxHS7y3Jd0?=
 =?us-ascii?Q?JCGkr5Innm3FfXCfnPw3fkB3oHAoLjZTSs0+ptVrvtuS20QuRq8lAQVCN6Ry?=
 =?us-ascii?Q?hZIwqgHKbqqGvvmy7b7rrRfshEcNd5D3AWkzAeevX4VPN/BTU2mqx6XUoapK?=
 =?us-ascii?Q?ixw9RDYANibDfZQ6aGj09jt5h3h3Pdd23+ZK3Hf7QkOSU9SbkbUn3aaRiEXl?=
 =?us-ascii?Q?lW6fL1eDewkmp68JXBVFds575Odd7UH+JimCRmdrKIdCIWmZRxV6L0jF/RSn?=
 =?us-ascii?Q?0x5Kosbnv4G7f7FrS0PJXznd7LoNGiYSCxlfTlhOhkV2oK1eayXV7/2PLg+x?=
 =?us-ascii?Q?g0yCpkLORyiva6ZNcHv7wcmHyhcfasqVOH+PrrTMs2YZq+pdSD8DLtjmThvd?=
 =?us-ascii?Q?WnTooxAgL6n2V1DxUVnv9uHEFd0aObduMyh6KQKZD+4v3QiT0Ghxbb8C/UVE?=
 =?us-ascii?Q?oZEBY+rLXf77t7GpD+j6tBILl+DvjcHCol7cInEA142at/9XSrfkfMzBmSDv?=
 =?us-ascii?Q?gMNMV+BplJVREHo+IpBCPLsmZrfu0tBTtOoPWT8Oq54JPdbIwCANfoPwaoiU?=
 =?us-ascii?Q?txre97yBh9fSlxO34ZjE3eqHh4OjWVzho8uaSlj3sjx/jzgb5SSCZxdFqenB?=
 =?us-ascii?Q?zM6GynVOoxkjHi6P0UqpcvL1jjSl8/xzNdnjAmFm0t3hgUUEy3blgMuYuOS7?=
 =?us-ascii?Q?bCqs53+Tar/4plP8V/T1BQjiYKLDtUodcf208M2fhD655YAXra9rT3l0oUvE?=
 =?us-ascii?Q?kMI7ADcBF1KJHKQXsTc2wQ5GtDboqHgvNoYMwzs4k8ABoZszt34HL4TI3u12?=
 =?us-ascii?Q?Sdj88CM/gJx5h2pBhrpQE+OM4xQSJIqg0uYYgbpgLEW52AvQ5dlQChBB39VZ?=
 =?us-ascii?Q?KIwbDDad4dX+57MEM0zWMo5oNLYoc7/PqYsoXkbueGiLFcce/U3p8mrKy0fx?=
 =?us-ascii?Q?cyKxbRr2HBBeEUun41K8g9rxj7KCd6LzW4LIyrzYAYiWfIs1hXAiVpc3nVZ3?=
 =?us-ascii?Q?efbS41HS/Lridd0FK9YOOWWmu+Om3Gk/9uICfRV0bMrbqQeUnnWkBYR7jCGc?=
 =?us-ascii?Q?hobdzd8qDfw/punQJzX7f2d3tvE6CjWJw0NieYv4XRbl3sga6izaw6OzqHIU?=
 =?us-ascii?Q?Ccunw1AhmxpXOoClKE/gmNbJ6NDDT2NVRogXVN3REDXLMESd/K+gcg7byjaj?=
 =?us-ascii?Q?wy+2i4witTGYDKnZQr7rx7CjKkvXAVAAgx+5gLr3jt+Ophpe1zd+0iSUtF6a?=
 =?us-ascii?Q?JA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 841d576e-a751-475d-748f-08ddd6066e60
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2025 23:02:06.8852 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qhwmBoCyy3VsiI+O4AiKEqUi0pnn26rzpZ4xSDYvoA5iLXA40NLHVsvXILueqVUi98NAVxYNLAKhAL9pEsnd2Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5134
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

From: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>

The struct_mutex will be removed from the DRM subsystem, as it was a
legacy BKL that was only used by i915 driver. After review, it was
concluded that its usage was no longer necessary

This patch update a comment about struct_mutex in i915/display, in order
to prevent future misunderstandings.

* intel_fbc.c: Removed the statement that intel_fbc->lock is the inner
  lock when overlapping with struct_mutex, since struct_mutex is no
  longer used anywhere in the driver.

Signed-off-by: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index d4c5deff9cbe..aaaabba77b88 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -98,11 +98,7 @@ struct intel_fbc {
 	struct intel_display *display;
 	const struct intel_fbc_funcs *funcs;
 
-	/*
-	 * This is always the inner lock when overlapping with
-	 * struct_mutex and it's the outer lock when overlapping
-	 * with stolen_lock.
-	 */
+	/* This is always the outer lock when overlapping with stolen_lock */
 	struct mutex lock;
 	unsigned int busy_bits;
 
-- 
2.50.1

