Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98240B87089
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 23:12:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 777B710E90E;
	Thu, 18 Sep 2025 21:12:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k3TxrRMe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C24310E907;
 Thu, 18 Sep 2025 21:12:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758229956; x=1789765956;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=FMPoH1eLDxlo0UG8EIUKYrjwiqcFbdEBed8z5rThE9k=;
 b=k3TxrRMe9OhHSo5x5CnQycd2KtOfombDb8zWSCvLYqMoBc4ZDN8GtgFE
 iXikKuAiwxbQtLb9a1j/8YU1hrWfofC2MgtAY2ITflcq0f9iFOZtk2jsB
 oG8oxkGDcn4BvqunNGsLR63Qga+zIJ7EObRVWK2MbZzdbveehX6LqwD+i
 kMCdPEGkhV/gJa7r/qs29YyNJfrJWKhSuP9u4d+/1Mc9YMuYtJG25gqqj
 CM+yTQP9TjSLtUwW2Os/tTa3XLAPyiM4CTc+SU8x0dnBbmVX+Nxd0MI5e
 XhIStLdKTvc1Dl4kHD0BOlmgAcE/gD8eWMQcwL95G6mbH1qgZy1Du3ECW A==;
X-CSE-ConnectionGUID: 3DXIncldR9Wi29nF0ogt9w==
X-CSE-MsgGUID: zwcyDV5NThCWNahYpGvgrw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64378909"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64378909"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 14:12:36 -0700
X-CSE-ConnectionGUID: MDATcYgAR5SyXz1/tXSRug==
X-CSE-MsgGUID: Qv3ftATuQHu86lVTzK128A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,276,1751266800"; d="scan'208";a="179657713"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 14:12:36 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 18 Sep 2025 14:12:35 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 18 Sep 2025 14:12:35 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.2) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 18 Sep 2025 14:12:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rPZyVbrp50IR1Lz0E5JC0XJxKgWsyvCEui2C6orbo897TrXIjdU6AHeSgHPOYJZmrlIcbgkt9P560d1tEe270MjaaAsxVm8rEQ8wsPqBRedx4BZSniz5wiwHos8yy7/3J7QSUL2foz4NKJDbPambZfw6eKPKlF4zwABZJBvDCp0p6lk9kNzET5JqlFwwS5vEoVmUuRJjOVnr9+qjdOLSuJwVAOEirpWrCUMuaf7zrQBQT1kQ2iDi0NWO3KbO3UuX5RXQXJ8aRPFucC2V8tenhOJieSamZ1NZIU8VITMxFvn720kRtxSsFOFi7TNnawIX6IbxrKqro3quBmAe3y66VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=roMoQpnpIt3MBgkC3XlHf+EcIOra9aNNVHIOefs7Nls=;
 b=lARjeLBGk8D47kodx8IDd2G3o24W22WPZbSD6fBRgxgxE5Rzp8H3CY7CFQ+ZBgV67UjzAoLQNqipB3Cx3usVmLdZDrLypDvjQfDG77vwao95VffmWXFFk9L5OuryvZJQx02u45xCsRQ2+8sSaWs7Ree/GqrTbuV8A7dL1uB6UaZXDLK8WaIZmwv0KQfg2jREXZM5tBUE7hT1r+gqt3DR9nf12D8F75cAn2vyuVyMj2eWx44MNa1Es9AUhZGYXaHHlj6FUqbM0i4ufSPPer+zL3LsQdOAmbPPUKgpGyEco7vd7uR82lfo9RxH1cIkCvjgHsy5tgY9vuh6mVxNagz7AA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH0PR11MB5176.namprd11.prod.outlook.com (2603:10b6:510:3f::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.14; Thu, 18 Sep
 2025 21:12:33 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9137.012; Thu, 18 Sep 2025
 21:12:33 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 4/5] drm/i915/dp: Verify branch devices' overall pixel
 throughput/line width
Date: Fri, 19 Sep 2025 00:12:22 +0300
Message-ID: <20250918211223.209674-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250918211223.209674-1-imre.deak@intel.com>
References: <20250918211223.209674-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO2P265CA0251.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:8a::23) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH0PR11MB5176:EE_
X-MS-Office365-Filtering-Correlation-Id: 56a00bfe-86b7-4351-fadd-08ddf6f81587
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|366016|1800799024|10070799003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?zZgrVa12s558I+7DJrvzFmMSsWtud3Uykk8oCjX+YowWoAeEzehHjhl4MzdM?=
 =?us-ascii?Q?V5VAUXYm/SQSkSSzFONd+EoH7Xg204fak4jP1dqxyyd7f3nT/2kKWuBm/cA9?=
 =?us-ascii?Q?wc91yp3ErhSCFHwmd3+r6tOopUB/jzaIVKYZ89RjdPYJJUjW6HM2Hr75c+Ax?=
 =?us-ascii?Q?JTS27YHr9DgUUS8F/elrPw1rYOiwSxgFS9R69XugO5mzAIKcIwsc1bmWH1GU?=
 =?us-ascii?Q?mkDQ7SEgsdrYBp4AeFDdT21JcBY/XYuhpROV7ROpFjb702a3DAN2XATvxLx1?=
 =?us-ascii?Q?9VXBLb+CEDVMU8BzHb1pO/+YmxCQRU40cxwsWGKism0HFrnf9X8zMW5jlpPr?=
 =?us-ascii?Q?beGELjbMG7zN1Ilo91r+Vj7FoGFVNzb7dpF3LWr6sHyt4kK1K2/gc/Qk1bQU?=
 =?us-ascii?Q?EdTJtvXghu/kXCv2eH+SSYpZRudxPJAR0jkj6S+EvNR/b04Z9b5WWthmiJ1L?=
 =?us-ascii?Q?fWuTOB5Q6gLCqA0OLhonzDU24VyWx7tJomW+g8h1MdrNavh4r8rvslk83ENb?=
 =?us-ascii?Q?OfO1Vot279FgUpnbmAR5wn+qTZhzkN8BoZf6+Hlya2WjFDq4oBceGslCuOgy?=
 =?us-ascii?Q?AhmgDQSU4WCBuyQwiIIVGSq7isWN/dr0Q97wi84Egu7ekUMSVsNkI14mZlsE?=
 =?us-ascii?Q?+j4vD4P0H9y/nf64A8HE/Fi/ee9FCD/mTsUsdFyC2hp+tCYCXtx39tSs1Vcg?=
 =?us-ascii?Q?3ZcvsLAHD7+xp6WUc7IIybFp4DoC5hQKFbbKa2LUpINzhB3cF5s49VuQHoWm?=
 =?us-ascii?Q?9/Mh6fIxMnZtrngEGoUieem0MnKr1aFcaF4c6srTKpEG0vbZZb3hMrxxmY36?=
 =?us-ascii?Q?FBaiYOo4WEpyZd0iUBpcXqOMY5VApkF6ok51A9gTzHF1V2Mjj70ugdRRQBZb?=
 =?us-ascii?Q?cHvReFnciQfUuhOvCBAjfHKwVvEd4koy3K4ca9MITzvHZppSkCkE37CUergZ?=
 =?us-ascii?Q?j2QBq5LfixauJdiq3Mk13T8JqbaOvJ65EG6YCzUxpAmPyeAroi+4czg5fGPy?=
 =?us-ascii?Q?WkMBJ+7NHUUb0blUyWDkJxM1A6jySDOPJ1YQTU3t5hw6n4YXeCcv9CQZ3Xlm?=
 =?us-ascii?Q?0Z4FFggNcL4k5TSTrg/Nw4RybzizQCheixzMCC8/Q6LhoCQcu0NH+DjxBMcy?=
 =?us-ascii?Q?wmOl4mWz8sRCiaLg0s4+aqs4xw2H+lAIdiLazx+jOPBeSb2fuOjn8ySAzSA2?=
 =?us-ascii?Q?655CtW+zyhf7Z89avYtqSePR4TQELj9DX7BNZQEjYug2H8Sv69KAbDNIvrgQ?=
 =?us-ascii?Q?liywHg99hn3LsoqKfC3Vw8v9TaxI/JO84u2etoSTXyrBNBI2Qby96498BOpt?=
 =?us-ascii?Q?Q8q7GEG7j2RzdDEUtqjRvu9irBPFLvk30WiZhTI3sJbn/mdhTqMX3ldLxo5E?=
 =?us-ascii?Q?MCcRWq44gu2iafhD8t034hSSU8pHDkGH8bf1Wo+qRrIOip91oQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?gyfvRejeXCKeGTigm8lyPwx1E+OR/+u4OrEJI89Zdf9ObdmZIUu5emFnA3vc?=
 =?us-ascii?Q?UdXz/l2VociHDpGV0agUyhpILMvn6xm0iUBvmiyu1DVv2ITxTPYs1ltWofgw?=
 =?us-ascii?Q?6DME3YNLY0cLqFpNA5c7G45Cfi5MJI85al0QanqYlzpxF9FBZWfK3m6SFFbd?=
 =?us-ascii?Q?VBzsGgwj9KFOfixX7EPHXuXVKRAmiWt/YEjCmku9UCAQXT9VDBdx+AaBEzru?=
 =?us-ascii?Q?XML6v5gh4EtPu7nRPmh/yc8yDrglo/oU+aHJEHscuMg0Iz8QZ6rzKxkMU1YD?=
 =?us-ascii?Q?mJKKqXyqHq+rXchg650WNEcdx9SXD03SK9llL17/Kp11oZOxhX0NyikRtDSE?=
 =?us-ascii?Q?CxAltXw5NFa8kczdZGx8xRMoDvgkWtffBuv6BMyAlAfwJGr5Wp6pukuXD/x+?=
 =?us-ascii?Q?ZwmsGQEAcMQgAAkEJ53ux1Oc4bT/gv8VMgdPKi26qZr3GrzVALGsqvLxOYa6?=
 =?us-ascii?Q?bcbvLdTZuItI7m9vIRkV5IN/Y/rW48TpZwEZPTjaVqmH9Gy9TY5WbVkJmsrs?=
 =?us-ascii?Q?pige39UTmZyWeHkeaONEEAwI5CNuYAz671h5T9qndnjhT8zffFvv7k6lfuSr?=
 =?us-ascii?Q?XGGU964qNBME6qrB2ePhthsgCBs1bsy4k9SML0e0HQWn+ltIh9d2ihcVpkZ9?=
 =?us-ascii?Q?4ddCQTjUNxyZZ4QqmbkPTwE4UANkoOL8Pk9JjIpRqvYd3okYZADQpcLqvrOk?=
 =?us-ascii?Q?W7hRL7FbKCVuj2gdSqJkxEF1IZav4FXSX/pVcg+hbnBaVxmvegVOHrN7XxM4?=
 =?us-ascii?Q?R7RNhZ6XgjfIgksaKtahVWOJjtTZv/DOMjjjVv7aPk+JPECNT3r/AoUm2HOK?=
 =?us-ascii?Q?wqPzksnHAFTbuOg/nkuQDjs8m3iNF+8IvLAfvtiOIpJeFOSbM4Q0/lO8vc1O?=
 =?us-ascii?Q?JPQKgnPoyIINk6qYOB9kaMZRkak+GklAB7Yz1Kp8YBZmcFqFIf6zpgFxHljc?=
 =?us-ascii?Q?zxH/PRqTvn1c/QcVVMMXLuvf87XFKcIWnXyUguHlIxAOeLWS9k6cCYNJgbkX?=
 =?us-ascii?Q?NHhdhkmYJW/AxpCdMDaso6X4qWuUFtkfC2tI7JFPu6FklVpxrT7V1NT3dhiR?=
 =?us-ascii?Q?IuKZ2kcB5lPlSYrp6CVVwa0KCzhyBmWUqEGz+eIO0czq49/5Nu3/EuQGeQqH?=
 =?us-ascii?Q?rCUmSZWffh/P62gR/edcyTz/BFJF27WsKo9MzfIftaivUm67W9OaE/cwLlVR?=
 =?us-ascii?Q?t35cctW/iTxK59qNRVk8S3vyn600unXbvWALHQsKABiL5uixY//Ps8/sP4lv?=
 =?us-ascii?Q?+NflelT02i4mHgSN44jFkvOsmMvv+wJiU4PcbwroMz8MsSdw+pYVPQUWRTdT?=
 =?us-ascii?Q?8UnguLqASWXbPZ9Z5ObtFxz2M1aJ7LPjdZLoCMSgFMOPlJEXFakN9SOZ+8Mq?=
 =?us-ascii?Q?ms68K1h+QZLmmbd8TPLdoVUhVVt/8t6QWjQMUtkIB5DbDloOCpVce+OuDoha?=
 =?us-ascii?Q?5kAWgxK07r8c6/LRVQPk7lbul7jxymZyxMiAtPfcPsrwovtnfDzS2c1bgDAQ?=
 =?us-ascii?Q?Aa2u+K3cS9jwm0iJ05BpVlW7vZ/o6THXjDuZwJJwbHEIOpF87sv/zOOmZJ/M?=
 =?us-ascii?Q?Pe1nWZlfDbNklMW5EO4vOaXWZGCZNuPlcBi90jODRnkyW4ww4OQhakqQ60B7?=
 =?us-ascii?Q?AslzUEGo4AyjDX4lSjl1pqvPr4WgvKbkdShkwbGjk2D/?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 56a00bfe-86b7-4351-fadd-08ddf6f81587
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2025 21:12:33.1629 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aaYvM37qCa+QO7C7d9wMB2QvUiS2uwPs99TIQhrZmp7JSJzFfdSHmfekYoLTYKPyaWnVV6Coe0yt/1BuwXptlw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5176
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

Read out the branch devices' maximum overall DSC pixel throughput and
line width and verify the mode's corresponding pixel clock and hactive
period against these.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  8 +++
 drivers/gpu/drm/i915/display/intel_dp.c       | 62 +++++++++++++++++++
 2 files changed, 70 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 358ab922d7a76..73bdafae604f8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -552,6 +552,14 @@ struct intel_connector {
 
 		u8 dsc_hblank_expansion_quirk:1;
 		u8 dsc_decompression_enabled:1;
+
+		struct {
+			struct {
+				int rgb_yuv444;
+				int yuv422_420;
+			} overall_throughput;
+			int max_line_width;
+		} dsc_branch_caps;
 	} dp;
 
 	struct {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 8cc123b0fd752..dd082d2fcc968 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1042,6 +1042,20 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 	int tp_yuv422_420;
 	u8 val;
 
+	/*
+	 * TODO: Use the throughput value specific to the actual RGB/YUV
+	 * format of the output.
+	 * The RGB/YUV444 throughput value should be always either equal
+	 * or smaller than the YUV422/420 value, but let's not depend on
+	 * this assumption.
+	 */
+	if (mode_clock > max(connector->dp.dsc_branch_caps.overall_throughput.rgb_yuv444,
+			     connector->dp.dsc_branch_caps.overall_throughput.yuv422_420))
+		return 0;
+
+	if (mode_hdisplay > connector->dp.dsc_branch_caps.max_line_width)
+		return 0;
+
 	val = connector->dp.dsc_dpcd[DP_DSC_PEAK_THROUGHPUT - DP_DSC_SUPPORT];
 	tp_rgb_yuv444 = dsc_per_slice_throughput(display, mode_clock,
 						 REG_FIELD_GET8(DP_DSC_THROUGHPUT_MODE_0_MASK,
@@ -4204,6 +4218,44 @@ static void intel_dp_read_dsc_dpcd(struct drm_dp_aux *aux,
 		    dsc_dpcd);
 }
 
+static int dsc_branch_overall_throughput(u8 bw_code)
+{
+	switch (bw_code) {
+	case 0:
+		return INT_MAX;
+	case 1:
+		return 680000;
+	default:
+		return 600000 + 50000 * bw_code;
+	}
+}
+
+static void init_dsc_overall_throughput_limits(struct intel_connector *connector, bool is_branch)
+{
+	u8 branch_caps[3];
+
+	connector->dp.dsc_branch_caps.overall_throughput.rgb_yuv444 = INT_MAX;
+	connector->dp.dsc_branch_caps.overall_throughput.yuv422_420 = INT_MAX;
+	connector->dp.dsc_branch_caps.max_line_width = INT_MAX;
+
+	if (!is_branch)
+		return;
+
+	if (drm_dp_dpcd_read_data(connector->dp.dsc_decompression_aux,
+				  DP_DSC_BRANCH_OVERALL_THROUGHPUT_0, branch_caps,
+				  sizeof(branch_caps)) != 0)
+		return;
+
+	connector->dp.dsc_branch_caps.overall_throughput.rgb_yuv444 =
+		dsc_branch_overall_throughput(branch_caps[0]);
+
+	connector->dp.dsc_branch_caps.overall_throughput.yuv422_420 =
+		dsc_branch_overall_throughput(branch_caps[1]);
+
+	if (branch_caps[2] != 0)
+		connector->dp.dsc_branch_caps.max_line_width = branch_caps[2] * 320;
+}
+
 void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
 			       const struct drm_dp_desc *desc, bool is_branch,
 			       struct intel_connector *connector)
@@ -4219,6 +4271,8 @@ void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
 	/* Clear fec_capable to avoid using stale values */
 	connector->dp.fec_capability = 0;
 
+	memset(&connector->dp.dsc_branch_caps, 0, sizeof(connector->dp.dsc_branch_caps));
+
 	if (dpcd_rev < DP_DPCD_REV_14)
 		return;
 
@@ -4233,6 +4287,11 @@ void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
 
 	drm_dbg_kms(display->drm, "FEC CAPABILITY: %x\n",
 		    connector->dp.fec_capability);
+
+	if (!(connector->dp.dsc_dpcd[0] & DP_DSC_DECOMPRESSION_IS_SUPPORTED))
+		return;
+
+	init_dsc_overall_throughput_limits(connector, is_branch);
 }
 
 static void intel_edp_get_dsc_sink_cap(u8 edp_dpcd_rev, struct intel_connector *connector)
@@ -4241,6 +4300,9 @@ static void intel_edp_get_dsc_sink_cap(u8 edp_dpcd_rev, struct intel_connector *
 		return;
 
 	intel_dp_read_dsc_dpcd(connector->dp.dsc_decompression_aux, connector->dp.dsc_dpcd);
+
+	if (connector->dp.dsc_dpcd[0] & DP_DSC_DECOMPRESSION_IS_SUPPORTED)
+		init_dsc_overall_throughput_limits(connector, false);
 }
 
 static void
-- 
2.49.1

