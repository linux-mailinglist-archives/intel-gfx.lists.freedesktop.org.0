Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 066F9CBF872
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 20:24:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3F2A10E4F8;
	Mon, 15 Dec 2025 19:24:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BWicSmp0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6C2510E4EE;
 Mon, 15 Dec 2025 19:24:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765826656; x=1797362656;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=LUdgR6iFtQgqJd1UJf4+/8k/mJtG0LhpmhJSczW1H9s=;
 b=BWicSmp0GpZSR63ulShMkG2UXK3o5H4YOVxiHDj8aGBW7+CGhQ8RSFzg
 IYu+/mMd0bTsN2CUoqGi8XJm6N3yrOay1fJ1dQZkzzzzhAdWI+LGaD9w8
 XKpd3O5nPnZ0PVgyChUPY4EJjUE/ltJEy+CtJkQk0til7/geQzZ5lH6kO
 X+b65KMd7QTXpGr+fdhSoUbOUm9GDGelApoCEDYTH1AxADBLCA2wOUq7Q
 x391BXpAFn9L7m0mtWyHZ1/XPe9lwyy4v8wOvglhpZeMucPlxb/TJPPrO
 V0ftOVIb/a/EvKHwrhCh30jQuImZOxNAhZ8q+7MeGs96+OfZOhxxfQjI9 w==;
X-CSE-ConnectionGUID: Chi+a00JRZSxwRoJ0JAxRw==
X-CSE-MsgGUID: +ssF4B9YRu2iqDSUGZMo9w==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="85150023"
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="85150023"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 11:24:16 -0800
X-CSE-ConnectionGUID: ro/a5XBZSn+fXWAfEzuz2g==
X-CSE-MsgGUID: 2+Yi3NkLTha4rHPwieclRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="197079264"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 11:24:15 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 11:24:14 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 15 Dec 2025 11:24:14 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.52) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 11:24:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vEezuV0DKozBRYTfITEVlKYtVQfl3NBxUBJoWlzjC/K68wXXNS0RrYbiPQZBtYbEo9sY4NKTp3RkG3Y+WzOC7jRTJ321Og/nj783WlJ+6z31XoEMJ53jmF80UWZlIE5sXP4Cjr/6Ujt91r9CCYltLF6xf0zVCb52ERC9GpxPFVSdCNCNsM8tdLJ1fCoN95VvjZMrQ4nGACanTbJ9Soo61ohYwpfmGk1ZyuGCZ6vab3Yh3xTkWH015gMVodLZmDqN4OLG6Zv5lrxOwGfPLh2sXkGPQv0JTjaYXjOAizOcWaG+ngrkM10cXakBGnDIUjrSwrgrv51TCdq7Lvr4O8tmPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N9DAq4V/IB0oMufNa6mmSd5cX4qjxhNN1JMmkrAu2AI=;
 b=g07SOSsghemoGQH67WIr7Tw9RhbAbFlHIivFavzpmHfvOrKEtjbAK/ivIdOPagJUgz9vuztF147ocFFE/LAtPvs/jujXaaoCVZSCOT1I51iu8p/nD4txX4Lds3OYReDC7Pl/HkkkqxjgZ5i6Xso5oy5jhUTDr5GxJRjkpKUG0aBvHmgRq3HNunSjIasgOQmU264Gd0mUdjbO1lf0QHROQ41lKZArz8X4oNT9rUPGmXuNNPzP9bUOy+enV+P4BU07L/FeH4aw+jyNzYM2KzKlIDtMNUyvoMwMAn01naGLuzjS0IxNo5xr1wZlXat7/xQheCC7UwFmJ+5Iaujt+tvoeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH0PR11MB5128.namprd11.prod.outlook.com (2603:10b6:510:39::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Mon, 15 Dec
 2025 19:24:12 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9412.011; Mon, 15 Dec 2025
 19:24:12 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH 07/16] drm/i915/dp: Fix BW check in
 is_bw_sufficient_for_dsc_config()
Date: Mon, 15 Dec 2025 21:23:47 +0200
Message-ID: <20251215192357.172201-8-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251215192357.172201-1-imre.deak@intel.com>
References: <20251215192357.172201-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P265CA0093.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2bc::18) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH0PR11MB5128:EE_
X-MS-Office365-Filtering-Correlation-Id: 5678517c-dede-4aa7-a3f2-08de3c0f8755
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|376014|1800799024|10070799003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?EpUpk8E4HlsEySnqelsUGa4SJfPj8C0dS0mAvVJBTLVGvbUFYMNvCEd0gd3x?=
 =?us-ascii?Q?4QQMovlR+4HfG5sj6cji6naUIMDZEDnQWopNVkt84nRF8xLx+h94akoQdeCw?=
 =?us-ascii?Q?ppy44hpEkXRZbbQJeykly6e5ApTVqlcI8Bu49uMmsbVruJcP+2OpXNxFA9rO?=
 =?us-ascii?Q?+ZNIDj2NLGNxF6Ai772SdFD8sANc5qhY8PlfnTlFN9+siIfSSkwxng/h12E+?=
 =?us-ascii?Q?3qnn4DoSC7FTRH4TEVvpgbrAxmNp3uSwa1Cxbm27AQtZEaTe83nCvQkzWU4u?=
 =?us-ascii?Q?0y5wTyR47rzufgmu1e5ndvYn7t4yvk6p0kwvOAquBkIeaUkk4KwlG718hXDX?=
 =?us-ascii?Q?/fjvKIieWXCeUc8iWyxa3DGbDE+E1cJwJN3UNHB5HylpmTXkXBCweUq9QmjH?=
 =?us-ascii?Q?zSWsdV8gL/AnRJufVc5213D0sUXCNvUEQjS0BV7D5/q4gypJZDHGuDA727Ki?=
 =?us-ascii?Q?QW3fKOTtxRFcaDUmne6YumTK5IVFvrcMx7S+XmNtLKzWn+Yjli26tG6unmf+?=
 =?us-ascii?Q?XVwSuNExDbe3W4JmjQHPMVhDLVPCJTBYzulnZO2Tuw28Kki7zeeo4vry/bKi?=
 =?us-ascii?Q?MPhYH3y8eyrkNeP4m5fw3oESunOXJlgdgnz5Lpcyz3FfAqyB95j1AVFYXpXw?=
 =?us-ascii?Q?+DfPNOfHuGSzMNMgM02iBcNn0wwk8kpFW/1pgi4qi2PYxmhxp951QToOwaaA?=
 =?us-ascii?Q?Q4hft/f+tCpjKrKqUmIzRCjQmFvpSRiGK/IE7Q6ASSL+DW87qn7QvO90VPqo?=
 =?us-ascii?Q?vG16toCVaoe/2i+pIIRjGuPfaItniouwFl2ZEwuCYY10wXkbCe+4YzAxMSMg?=
 =?us-ascii?Q?DuJxSUD9UINPKDHXavdzo60PXyk02cq04WFf3OKMScidmgs5ti/RB9MtE+zG?=
 =?us-ascii?Q?Nrl8+VSFoNIcaLfSIAJIpHI+kx+Z93kYxuQyRYg3mwX2Mk2S5lgWj9o7fUjW?=
 =?us-ascii?Q?2g9URRZ+WGVKsVGbJF5KtwirzdkVg6P55cZZdPi7zm4zaqE8hrNkImcIUylL?=
 =?us-ascii?Q?ThCuLWP/KoZ0oeApUwD5dkUEuu4OTVi6AfRgcBCxEfIfUszzsxmZEWUTJjXH?=
 =?us-ascii?Q?mypHOaiXjkyEz0YF+Y0jgtWRYSklq2PMg0Eh3cqsTBSM19R981xOnBeKlXsb?=
 =?us-ascii?Q?yjPHVpYijuHatkZuLm40Prv4kNnqGhykgFHoH9FI/0S1cVRoGnyoDG587UUX?=
 =?us-ascii?Q?c6/nlGV9YfkSyVx+7gB27rEw84VTcFlM2PPR5qYT+AaQmAaWflhBCaLl/6V+?=
 =?us-ascii?Q?NxiEWxKNA882iGnuAfQ8Gm8dMRhtNKYZTkpz8gBOGDpQTzqZ7FCtKy7PlH9a?=
 =?us-ascii?Q?H2XFRvnc46mF8lcy9jddKGrUiPCzXLsVv3EQtSFBSi8IVufJW3BiJY9w45Yi?=
 =?us-ascii?Q?wsqSmwQezmDaXyrfVjep6XfreNoNvqp6K0ShctmQMJdmibeQs96ShZipNg+h?=
 =?us-ascii?Q?tlgJ+kMI4psqlHRYauSkA3j85K1zhhDj?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6/9xhgyIrGX71tp9iN/eiQc3I77O14biX3SGOM/2XNz++Ul8Cx/bb6GHj9p3?=
 =?us-ascii?Q?uo+lYYWG5j3Lrv81p4P7pDRjddmwbWx9QYDEpr++jVqD4abptm+KKE4h459E?=
 =?us-ascii?Q?6hcuy5/PyvTQdzJVmMYJ+SEjTgCREcgDHVhY+47XIJAPS9b8tM2Qg0NFWtjD?=
 =?us-ascii?Q?34/M0ZLoaNkYAERHKDssGHKBDQignKtmN9RNRTcWvntiZCkh7lkKUB03YMTs?=
 =?us-ascii?Q?GNcLwPZ5VMdMtdCxlST0NzQHLL2/B+E9TG9LmeLdLZLPkqKjiqNrK/Qi7VQz?=
 =?us-ascii?Q?1S1KWsljRkQgCORz58cfeXKk3qF6i0PogGAhfNl0Ja4rznkjZVkGBPvZu1hO?=
 =?us-ascii?Q?LDzNTuGLjmR2XG+knVgMN1DvcvWziHSMF1hn9x9gwi5r/wMveP+Bq0EJ8iVq?=
 =?us-ascii?Q?RTmq9KlFWFdSvPkxSRAlqpuv6xxE8LeMmVzRHL2Q56ZGUXW0hRYWFHqwK6LQ?=
 =?us-ascii?Q?CgvGZvcE6tcNQPjsGqzkokTq4W573aBgX8mR8SxJIlsAlPce6md5Vqtlaekq?=
 =?us-ascii?Q?B2wz4vWWsGHYfLwOREPi47NphPMU+VYjaMVO9QEnBAPWS3x4OTLhVCr6pTNQ?=
 =?us-ascii?Q?QLU0EilzAmCH/qy6n/xkoM389gypiDfIGMxyDh5F1CZx7VELgig4BBwpCS8t?=
 =?us-ascii?Q?pEgvnJX799tefTwYReTH8SYBqTSwIwBxPP6NiWYf09q7ULDpwqbCWDyOBcpl?=
 =?us-ascii?Q?OY1mCKmT4y+ED8gvpQUufZquO/zyRMPJujdyfkXedOH4JLgH34OxT92j7dQe?=
 =?us-ascii?Q?xOPVi6vqP1ER/UYQJ1JWAxI+YX6nK1qFzawdlEgs5SAPN0G1V8gJNfSXIo3j?=
 =?us-ascii?Q?p9hXmZXS6Et8zqgZ+JN8GWD1mGgIUAsTigkcv59a2mH4UBLWq5FZRyCfeHUV?=
 =?us-ascii?Q?xd8hloJKTKmuZwPoioembaUxVLHUTG4b9/L3JDlW2CwwfZZW8u7HRQ94J5M6?=
 =?us-ascii?Q?elMQmREoe0FP6Sgk0ufH6YHinWYEFe1i4qItI+uAYNj3JehyGHZJy335kYnT?=
 =?us-ascii?Q?3uuteCJMuGC2Z8svBk0abTY1lO5y1EwjX2qpCGpj27wvom+gHBfwWnNM3XaW?=
 =?us-ascii?Q?13Ggac567F//qH5Q1kJCJFfzQAZJISiavn/TAVmeKLy/wke2wNRMSPKhX45o?=
 =?us-ascii?Q?jTwvuxJxO7VbzLts3MnFv0lnWEY00DMczd1NjEoQmDIXjlU/xK1J5Hu/W3uv?=
 =?us-ascii?Q?ISTe7V8O152kLwZfdCwLsJKHkssR8c+O8N9dJT8e6DZL3GZrNvZNzWAUXVUW?=
 =?us-ascii?Q?RCkgfsE+NpRJR8Y93lqwyJuGlTYu80feYncmu6GEzV5YDDBuRqA3Gu+ogn3N?=
 =?us-ascii?Q?46c0rmjCkuO29c7AkMIylLsUegVsv7P5ShLMDGrVlPr0H1fAxNA81fxCEVVi?=
 =?us-ascii?Q?Wnhz04JVlusXv6tazR1NoHQVF9Zf3Xl1YFEBR6TjxL5HW67mCtSZZs9IalWh?=
 =?us-ascii?Q?wwSA+O74Co0O1O/z0W0NpvUY+AfuGXqHgQi11wnjmTXJbsXXPWQ92ep1byhq?=
 =?us-ascii?Q?h5mLJ8JGR7jVN+Sx/eBt9b8FePfu8zbcKHGKs/7t86NElnEzSkuhQKuTjj8H?=
 =?us-ascii?Q?Rf/FtlqXExycseRICX4MWNY97rIcwUPl6jHU4IOFoGRc4UG17zULQTAjgF1V?=
 =?us-ascii?Q?SfpsIRT3Cw1d126121pQviEkgYWo5FFrCLwUV2c1SES5?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5678517c-dede-4aa7-a3f2-08de3c0f8755
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2025 19:24:12.8456 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 66EyYKlNGqnvV+m4HCQyr3Wcbd7JwJUZ006D3Z5ID1rEdxVImLAJYiXaMovs/0u8Yw7Trhugp10IiNxQt+IA0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5128
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

is_bw_sufficient_for_dsc_config() should return true if the required BW
equals the available BW, make it so.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a9f0485dbe646..ec4f64090a77b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2029,7 +2029,7 @@ static bool is_bw_sufficient_for_dsc_config(int dsc_bpp_x16, u32 link_clock,
 	available_bw = (link_clock * lane_count * timeslots * 16)  / 8;
 	required_bw = dsc_bpp_x16 * (intel_dp_mode_to_fec_clock(mode_clock));
 
-	return available_bw > required_bw;
+	return available_bw >= required_bw;
 }
 
 static int dsc_compute_link_config(struct intel_dp *intel_dp,
-- 
2.49.1

