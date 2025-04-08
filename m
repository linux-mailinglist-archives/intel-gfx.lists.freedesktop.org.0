Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C1DA817CB
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 23:44:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43E7310E76F;
	Tue,  8 Apr 2025 21:44:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QMeSdSuy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21B4610E76F;
 Tue,  8 Apr 2025 21:44:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744148682; x=1775684682;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=x3AvFi/AIQVe989J5exxA/GVQHTIf0vs/L0FvL4ChEE=;
 b=QMeSdSuyLSvFnWPRcotn7MGZmVAfaqpo+JvyQ9sr3stUjrbm5RTRvsiH
 fRgQh9rbKOysncZTu465klqwpRqr8CiLJMqxuazhdoTmIziuWmOuPfgYH
 5HVfAyewsspes6/muLZvUDGKPVDfjqgF9kaFoGdq6enyCyLhlT/GsIpp+
 827aEPgeva+D5vdN+s1xnocba23EfHlEfimVrgyeuP21SaWhvVDpOVFkN
 PiDZMjEz9eATDKqttQSidiErUopb8FI5lfuovxo4Yy0F4EL106L/sswnN
 mMhlE2KQEe+6YvxGSNeWsMMt8o5W8GC/xJmR4RuSoDD62g1thv74256OX w==;
X-CSE-ConnectionGUID: stuuu0PPRcin2sXBWdkfgQ==
X-CSE-MsgGUID: X/+Rks8AT2+g3zG0HNhsog==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="33209000"
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="33209000"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 14:44:41 -0700
X-CSE-ConnectionGUID: s30GInjkS/anSsGWWwLhfQ==
X-CSE-MsgGUID: YMlfuQv0SQG73jQnD5TjTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="133258700"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 14:44:42 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 8 Apr 2025 14:44:41 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 8 Apr 2025 14:44:41 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 8 Apr 2025 14:44:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I7XaDXC6TNdBs9JeP0kUN1dyDBZn6aMF4mlAYuy+upwSSvLGjlV00M1oTTWd3oNVyWu3foDUgC0WF2Vouhtn215sP5kn6rSiyPV1lkX8uTGZYfTGBLNyClLXDIp72zdzY1mfLYOXhAVxhyrvXo4Rqs9DiGBr1Aq3t1iFSaY43tF92vggZbj6AcjvrPSze0AD+VdGWBoUwa5T5L2WqjsDi7LQczL7huDIYvnI+UEMZl7TtO2SOP/LNjkC7a/0YiZK6jlPDYftvOeLfOSyzyNON5pudGrx/iY1mqyXZxp1J8lsKHj71tKf504+1l074ohfzlkYRmBtGm2ixb8sqNOg5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CXAN3P9eP7pNLBRALQd3Ya8GNwluszWrg/52yzDCfag=;
 b=Bpf/9mALHP/TqbRs1CIoi58kxHmrQmzJAdWRi1n33aatSYv2xSzz7JrTKdTO3J6iQ0+MEEmKP5+kBzpE2mJ5GapdsRW0eQ+mY7jkCgMdgWX2apT/saKZZf7iO31hjKhN2M+n5lIZcGv/6V6Uy+6Iatp0957WZUczi0+IQPArU0JZ8dZop9LP0TV7ETmgtjIQgiRwBTuUzQ8ZBtDoGT3NDJkmjOL7jL3PCe15Ph5EKHnl6KY0qwf92BV3VSAYkgS2XtS/gDWZb5P9yUAFUc84gFV3p712xn1TmMCuDuwTc8BXYc38coNKNhxe4sO2eBOOcaEZKp0OaCBLb5Ij/9TmDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH7PR11MB7516.namprd11.prod.outlook.com (2603:10b6:510:275::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.34; Tue, 8 Apr
 2025 21:43:51 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8606.033; Tue, 8 Apr 2025
 21:43:50 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 06/10] drm/i915/dp: Export
 intel_dp_dsc_min_src_compressed_bpp()
Date: Wed, 9 Apr 2025 00:43:36 +0300
Message-ID: <20250408214342.1953197-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250408214342.1953197-1-imre.deak@intel.com>
References: <20250408214342.1953197-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DU2PR04CA0060.eurprd04.prod.outlook.com
 (2603:10a6:10:234::35) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH7PR11MB7516:EE_
X-MS-Office365-Filtering-Correlation-Id: 6d5bd074-02ba-48b8-add1-08dd76e67230
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?AUyFAgVtsojacQsDIUB6bmqejE46HEkrlt5gZOzDBBrTYnAhN2WGfyaz4+dq?=
 =?us-ascii?Q?1vePEYB39cDhINWKCorBWYSP+LEu+MBS3n/Hg+ouk1VfWCCkvJNTQ56ZurA3?=
 =?us-ascii?Q?iTrw6/BUSCo3csMjm/ugf8HL7jk+WX2GxsNP3JbL+8hlJNgHIxbwLyh+EtVw?=
 =?us-ascii?Q?OOelbLzMHR+KKjIGO0EraWt69Bv1osnjQz4FbZU70GSmVD4W4a8PganAEWID?=
 =?us-ascii?Q?3ou5GvJZ46ITCfNzHkiD65VVC2zb1urJBuvOxCHfWFgW/LRUlLf/vKr6pLUI?=
 =?us-ascii?Q?EdT5jrj0vWPcg+tF98jc6T9ZAk17hGZqqLLQPJ9zTgnbfM3CKllHVBzmmobI?=
 =?us-ascii?Q?2AQ4/CnLXJ4jfIjlrsSJBHAU2RRDx9AQv1AgtNvKxa6JAgeVwjI7zhVfoZnI?=
 =?us-ascii?Q?ckTMJHk9JNjIVyoVbHtAQNvovxwhfY5d+P3sEHf+dpW172MPLSyyzBVan/mr?=
 =?us-ascii?Q?e2F7tfUpJOngKiS3p/j58HXVkQZ3/LXeRHRWR08R3iHxl6ISkQfphfgKuY/u?=
 =?us-ascii?Q?65f4dmlJidvj43bJLnjAlkEQtQwcOYUbyoj2j5YhDbNci3IlI/1UZCPXF307?=
 =?us-ascii?Q?eMNL1ad+DojxdKXPZfIbb2ErXkcXesakffNdgMlt+/VIcLW3GtP/VMqaGauy?=
 =?us-ascii?Q?K5OXhc21HitKeeCBr5ochRklDE6tqhltfE16tPC/WMi/TP2Lz7ZSwotYkpIC?=
 =?us-ascii?Q?0co0JI5HuJfS+gnTL7Y+XwiiAcyIe30PH+2Y5GdVDLBbpxcdm+YMmWxuVi5a?=
 =?us-ascii?Q?xMm8gBbq4eSs4OiRLq9xJiR558FL0UTnXQgHlRPwyID9py2now33IhFFsRBC?=
 =?us-ascii?Q?P6/SjCWZev8Tq5DYPK9Jn+fLn4LFcbRkVmIfSzDysaXuFQrSOOjFbf7h0vY8?=
 =?us-ascii?Q?vqavwmD7PbqGlD7FRsOjtSequ+BkSrKOnBnofo1Ce5FKb9RSaZSMIvRNJUCV?=
 =?us-ascii?Q?DLZ6dkxBucIbgbbb1XaidExXudPWh42+x76zecaXrhDjQ1OtTFyMwBCJyRh7?=
 =?us-ascii?Q?t2EJaZv3O0P/XSy3CXfR7SwaKE906NgT4ArSMSUhIM7dhSQpDQ7nxNyqw7HC?=
 =?us-ascii?Q?99ouzQwd0R+xhEfEYCwqcP5D/NHPnDNNUZ2/vjb3i92jOQl3QCBkux9zY1rz?=
 =?us-ascii?Q?Wsik3uKZVkevxtRc/tkj2B337qNgIpI5btrXJDvoojFTF8fcZJRKhwuoRT5U?=
 =?us-ascii?Q?7/yrt5ybf7tare/q3D50hdS8JZ4WLVlgrFISHuILI1uFn8eqx1qmzsWg3LH4?=
 =?us-ascii?Q?vT3xeDxbIQTHyp+60Fy9UudycgW/bxVxTzQDh3VWiqbZyC6dxWdRMQn//3NO?=
 =?us-ascii?Q?JW1IGhYH6K5sU6BQY8Vyk8ZYyEZhQ4XBeA1YriOSUcAONPpBSlHzur6LzPJp?=
 =?us-ascii?Q?OpbXIzrcCFWinw5NFfX6w9QgnYDy?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BZONkoyYxYANNw0qHhBgqHuC29nnTPfSbn1WAkd4SZma2r8ptpKPzuD+pfm1?=
 =?us-ascii?Q?ugbYAJSuRM1E5LYg2ogRud6eg0mteSXq2LNVNz2fSuUcLne5QrWVRvt1oEdZ?=
 =?us-ascii?Q?l2sPKxLvBNSgum4OSwphkA90rc7E9BuaWaAUhFUgbtrhJjlzwufrGhybZuxf?=
 =?us-ascii?Q?NBURRWIp6tD8w4Hx6p4r0rYRnDBoUdjPwBD7g+8AxbFcY06hV5kX00HcRctD?=
 =?us-ascii?Q?bigiUtfQmDZ1CvhVUJKzkE2GNnmfbyVozvDc47YsJaRECO5ldkZgLJwsqEht?=
 =?us-ascii?Q?Z2+VImmbknd3eGYT6BHelzfjYxwx83ZaCwUiIVqVxdQZcDnXE5PCPX2jF7BP?=
 =?us-ascii?Q?bThq9PmFb7UGMhGzfQ/evu6Ci3l7zw1tqq7tQCMfvnwjsyD64mCgpv42V0pt?=
 =?us-ascii?Q?bCz3iXtt+LF65zZlX4CJet4gQSeIzcRAO9jdWmuB/7L+qppiJg7K85uCoB6R?=
 =?us-ascii?Q?XPdNk6O6qi+YcY4v1arfdTsqz14ZQtoNU7APm1UhJ3n2fH41IqbUoUW4t9rP?=
 =?us-ascii?Q?Epr5x49GHN7LnGGE8B7r/3V9e6xlnykDOctZpj/YCaPY6VdPkiKqGc9ur47d?=
 =?us-ascii?Q?0c9KQqL1WSZyQRpij40v/U0qy7mLgGuyABz5v1N6Z6b8Il3MSWDgEwQS3ps1?=
 =?us-ascii?Q?FWHCiDLivgoUcP37JF2+OdkG/papW+46qLVN94mo+lbofw/nCNUPQxeYz8Bt?=
 =?us-ascii?Q?uUWt2JTZolt8N6bvxOvh6dREwidFENRdDJorB7wGGIFFOUQojupo0na6MrRZ?=
 =?us-ascii?Q?R2uR501IdqouVJu+aJB+2+pHuguTanmYWVkxVM5vjaWV/+emIEeR0tXTMixO?=
 =?us-ascii?Q?wMG/cRxsNbf70ZPL2EWDpV+ORftU1TVvkCqe06iZDRn9N2d07wsOb/mzUMOQ?=
 =?us-ascii?Q?13J0EpXgwiohSB4egQ1CRyqB1SiFyO5I+tfIy4kap6MfUrFNLudLWHu75MfX?=
 =?us-ascii?Q?6LT4mYVrEI8//IeR+j+k1xfAMNzOcgxpaI1pSjkl/74ZD25dDjRd5WPTUiGx?=
 =?us-ascii?Q?tEdqoLh/6zIuzKw72LarjrWwYQZkgk3qziK2Dm5cL5Klglnoq3ISLD1l9NK2?=
 =?us-ascii?Q?do0NGQjCaVmbW7+u+X569ECBBEVDosyMLxI2uA0mlruv6sMpUvOEokj2c3i7?=
 =?us-ascii?Q?oTlrF5FS6l6PlUlS3eMutmyOnp8NZ0CVbOADg+ZugoqmOXX9zaewxTU6YDhq?=
 =?us-ascii?Q?2/VGqIL4E+SoXkZDTKQDPYpWTTQHnf+iuskjtG6hKHgsqDotsMj4eUG7veXc?=
 =?us-ascii?Q?z0jFCA2L2lqyKuMefz6MZe41tfwDxYj4mYUIDoTn7o6M51kOhfg7M48J23J6?=
 =?us-ascii?Q?qjnZKm8zs7MRrAPGCP/WMLcgffMz8FJiD5f2tzPHmRtT4quwjGcC4wYU3dGz?=
 =?us-ascii?Q?Fp8lloiZSnnZyMyPWZ/OFOt5RrBeVTz1B85RKc5+xs7gwasSvf24rmej5ZA9?=
 =?us-ascii?Q?C8jWN3F/DPqBGtj/SyyNN4IrJZj0EzDRHvpw8ntgAu2ww6Au7+X1/2lWzkov?=
 =?us-ascii?Q?F0p2g2KeYQaq+RUvw1Xe0VxNSTFidJaVdTsXlO7XHj7nsXplVMsRHDbo3ckk?=
 =?us-ascii?Q?C6F82/BkmmjghMiPlSjae+cmD/E9+tdQB+gwPfgl?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d5bd074-02ba-48b8-add1-08dd76e67230
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2025 21:43:50.7519 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I0VVjnpSP8PYtaRla9QQFLlFDSs6O7Dz3KIl34LKzoDPMimrKbTmhYaUAcXYy5u6JkQdgbRSicgDws2lh8oOaA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7516
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
index 881852390bb81..9c15608cc06f7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2071,7 +2071,7 @@ int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector *connector
 						       pipe_config, bpc) >> 4;
 }
 
-static int dsc_src_min_compressed_bpp(void)
+int intel_dp_dsc_min_src_compressed_bpp(void)
 {
 	/* Min Compressed bpp supported by source is 8 */
 	return 8;
@@ -2475,7 +2475,7 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 		int dsc_src_min_bpp, dsc_sink_min_bpp, dsc_min_bpp;
 		int dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
 
-		dsc_src_min_bpp = dsc_src_min_compressed_bpp();
+		dsc_src_min_bpp = intel_dp_dsc_min_src_compressed_bpp();
 		dsc_sink_min_bpp = intel_dp_dsc_sink_min_compressed_bpp(crtc_state);
 		dsc_min_bpp = max(dsc_src_min_bpp, dsc_sink_min_bpp);
 		limits->link.min_bpp_x16 = fxp_q4_from_int(dsc_min_bpp);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index c974e4b97338a..01744f9ccd8fc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -209,6 +209,7 @@ bool intel_dp_has_connector(struct intel_dp *intel_dp,
 			    const struct drm_connector_state *conn_state);
 int intel_dp_dsc_max_src_input_bpc(struct intel_display *display);
 int intel_dp_dsc_min_src_input_bpc(void);
+int intel_dp_dsc_min_src_compressed_bpp(void);
 
 int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector);
 
-- 
2.44.2

