Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6301F5F43A2
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 14:54:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F04F10E62A;
	Tue,  4 Oct 2022 12:54:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC6AB10E622
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 12:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664888062; x=1696424062;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=XOLKi1vsOYJB4SZ7AM8VI/WTq6cjwbTYRiwjlV5xi/o=;
 b=a+iJbewNuxciTLOAnurFss6NofwVpdXvgE7GuZQLzSElbR9ndMVRwdzb
 cnA+E+5vn6GY0tWzsMt8kYdZ7wfDXUuPSwtVmAkHxsf8ayNLbVujpzHgu
 5WaIM4xE5kpr/g2gU4qZ9nbEkG4z1iozuPNo91ilvPS23NeMuv7coAh2Z
 +0cX9h0hi+98JBWufZB4cYkQMxXOytAfaGtaZiZFw0xguNhZOp51WjVUt
 n76muNRZwsXaPCK/I37rJuRsgGcu4gr6hFk85kS3NoWIxtx4+/HnoMRor
 r6dONM+MCJyiO3Q7Q5Ikv1H3jK9z5nxDvEOzHA8kBwgmrjQ4/KAppjgyb Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="304444120"
X-IronPort-AV: E=Sophos;i="5.93,157,1654585200"; d="scan'208";a="304444120"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 05:54:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="654759847"
X-IronPort-AV: E=Sophos;i="5.93,157,1654585200"; d="scan'208";a="654759847"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 04 Oct 2022 05:54:22 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 4 Oct 2022 05:54:21 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 4 Oct 2022 05:54:21 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 4 Oct 2022 05:54:21 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.48) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 4 Oct 2022 05:54:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d7g2jl2b0ZAg6AWbEfXmJZJFmNB/slEiAMJpL71OmglRMEtLdYjFPaO6ojFYZy6j6K2Cc/8zpFWzaUiE3gCQgQ/172TxGT5VD/pFafpeJxon66FCSl6f8hCDPBUlqj59tHP3YWQsnkB/Az1/2OlDIUOrVXOTgd3z/Zh6Tpzvlo706bSovI7CUod4Ad0Rm/5uzLbLHwdh60BAsTtzCLcSZ7FQlfZg6sZk1F3N2yaH/pIp3DvezrBMg459dbEZGNoDLEF3xuoRIAl7wYwmLxGI5JsZ6Q2E+d+WjoVR/5aQaU0Xe+NspQGMKQ5rdVQyrZ9Iw43uINkdUhSIGX3Lesg3nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9AKEGV3JiZ9jz3RJp6JGA4JUwvxlEI6Jt12uKNBT8i0=;
 b=OqpfxSUfqIWfGq7e1F2VZW9SnUHAHYwCNQf/bXRKns9+MrPQa2eZB7O+GEoGLjJ9dukfMEVUOu+1vKvWIGzz2PU/m3849f0qoKaKJQFMHAVYd6OUKZmbQtX/8tKTpEJbJ7ohTtMaRQTnh3k2W7iAZ9MfWWMN5z61ZICtNdkFMPs/cj7xwupFbnS64QCLbKyi54BNoqu1l8CboiJh4RlWtrPCxpvt3Y3gQXhDi/igjqnoeUkOXEAfdYZKU08dnUsUZcNpMm90Z5oe4QgzaGPB+HSOumKaRtFt6SGelp2a4t9u87uA6GjhXYbIzV8CDE4z93ME6UNZdyPWnUd6C0u9kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 PH7PR11MB6053.namprd11.prod.outlook.com (2603:10b6:510:1d1::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5676.28; Tue, 4 Oct 2022 12:54:18 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67%3]) with mapi id 15.20.5676.031; Tue, 4 Oct 2022
 12:54:18 +0000
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Tue, 4 Oct 2022 18:23:40 +0530
Message-ID: <20221004125344.228294-4-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221004125344.228294-1-balasubramani.vivekanandan@intel.com>
References: <20221004125344.228294-1-balasubramani.vivekanandan@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: PN3PR01CA0041.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:98::10) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1897:EE_|PH7PR11MB6053:EE_
X-MS-Office365-Filtering-Correlation-Id: 88aeaa9a-d763-4278-8b17-08daa6078cf0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: b/kslssbx5UYAf4YxdKr5bL7d6k5AqzXLcWO9WNerZLZNpqujzCUDhveoLisSqcGr9NDEmi0j3WtW9PYe6fhJhcu3FC3wAaG+yZcaCngtBSpsWM6MBltenFznBai7Lxk1+X5eDhWO3VuZ7cmWvjXZpeicKiGaF67BX/3dfL3ho4u16T0VttoOFlLsWEDMrLayi7RPjZhH0PFdDb1RzEJBLoV51WtTjoPCQ2w26je9oEkKx/fSHFeWQaJR/JJ/WU6YvLgToDu9tkWzgyRIgWCx/mWDKOVAb5kmElIhziOJ0LsLWYilImNkf8XMsGWRVJvhxj1TlkrMmZALA9Bk9OTCMs4NW8Igxogr+J1zmzLTpDBxmHJoM6ffCbZOwmtaFCYvIE+wiFgORXwdk2Bsh55Iov9gbm8lebw0TAWEujOya2E0p+15JllF75oKxLqot5G4P+8Ti9eb5EJCIR6ilSwjoWiX849u/IaWJ5J5EyyZLOsHkViSAzYnpb0gRA/TX/d5UGR3GklzeZb2uLtb6u7J//IwLfPlEXc0H+wRD0ra6FKwQVePC5iFrGkFi7t+yI6gAO5Z1zy16d44T+dJCHL8ksEnEbe8xKwZQoGnAhdIXc/ycNx2FtLbINCuIT9ZT5ajVQw2Mi9DAhvSis4Iw9Ti/tKs8d3m5Kq/Jhy1a6jexF+OjRNNkpPmVaTPKJjGAC7eFlzVr6PeyzYjzz702ql0A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(39860400002)(136003)(376002)(346002)(451199015)(186003)(38100700002)(6506007)(44832011)(26005)(2616005)(83380400001)(1076003)(82960400001)(5660300002)(2906002)(41300700001)(8936002)(478600001)(6512007)(4326008)(6666004)(8676002)(6486002)(66556008)(66476007)(66946007)(316002)(36756003)(6916009)(54906003)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Jn/eX3ReK7PWDysb0CJWy+3lOfUVAs9nOW/OdClkzgarzpR9ajiGvOcx8EHT?=
 =?us-ascii?Q?f7A8WlvD3VzMOlS7qA+gdUTNqgN/y3yELircwqFbokescEJNxdtA1oWrwnfH?=
 =?us-ascii?Q?fJU2zREyPSSWU+WBy8/xS0+sFTVj8QPutIOr15FEhuHCP+Pajjk63EiVf1cO?=
 =?us-ascii?Q?WpqCGaseEua8UJKRAq7TWtvCk0Ed8Q5jjksYOKQleT1sExF8pjqvLQF3nVoL?=
 =?us-ascii?Q?BYpHSd55Q1jzkJ9nkx0ThFDifTi2HqtG0VLuSq5jCk2Hd/wtmaOvRTS2JvLI?=
 =?us-ascii?Q?sRJN9Aue+JXgn5kTOd9loIqwpF+u8hloVeUVKU2dtLMjOhEtswSWwcegWLh4?=
 =?us-ascii?Q?X+qZxS7OBRFOivk5T86EyJiWrmtfIKVXNwUblxj9GpX4f7qSRK69mpxxNqzS?=
 =?us-ascii?Q?GRIU/8ziySCXoC9OZX17sQa4MOwQRdKXr9KCSqUdSG5bBGzuOxzLGTwzZXcF?=
 =?us-ascii?Q?r8FvkUbC4xJB8kNPEzXsNBu6y25w8UErnV04OCJ/5UDjx5aLqlkYXgycMa+V?=
 =?us-ascii?Q?zOTIQwciWA9SyYIhDGVRPOSJnVwDxk4tsyGY4Dllm6KWp4KEc5lxlY82D1ip?=
 =?us-ascii?Q?4L/FHP7Th6Mb+foK1dT0boxghzdQrMFoMuH2J8Hc2f3aVYOpQyfCmj1ipOlu?=
 =?us-ascii?Q?AYLaB+MX7LSsM5GX7XEKwqVML/G67WGvrZKDytrqewAqBWuSqCXkDMKXxE/K?=
 =?us-ascii?Q?OiT5oEUQYf9KsvyuWuorbzQ1IjPe5A/8Snoem5BBXDn9pyxA5YMnT1T6MOTl?=
 =?us-ascii?Q?gekVnQFbMetGpnAnR5r4C3G4o9fevbBKCdX5DkUDfjqywx1r0C4C9M8XASXc?=
 =?us-ascii?Q?2w0w2a8mHPKC4WBmrG0M52Gjvf35hMON6MEBoxwd+aLi91qk4cq4VgDN/kzl?=
 =?us-ascii?Q?XUM5IweINBZvIGuk81om8CkzK/0rHeTK/Am5FJY8BodMsKVzgBWDC6mcq7wi?=
 =?us-ascii?Q?NtuYipNdxNyR7Ios9V+dY4u8lnSIMbf5uh/HUeuUzace1a7wLZXt+Mua+xt2?=
 =?us-ascii?Q?S2ZSyr5Cvj1c9+w+aZYqWkXRoaTIFnmkhgQmllBDIVdrqGJvVW6z7C2PoTD7?=
 =?us-ascii?Q?c4l5Sk5UfacQWdKDGNWk/m7NsBS8/A1xj0SqetemYC/Myl0G0GdMTJu0Q1Pq?=
 =?us-ascii?Q?Pbs4LemvF1v6R9evZxmOrUqDOTOTzWgg5Ai6fDsxdn/Tf0DdRSAfje6I0DfQ?=
 =?us-ascii?Q?W62UzBYS5inMEILgxkwzKlhu0HAYY11NiBNsQv1ah9rWiccGE2Qaq518WsMJ?=
 =?us-ascii?Q?mIdGOHQUc4A8PV3lvnldsbEaV0gv4YxHauiZb+dZjSuXHHYEUzlhnhm0Hxd9?=
 =?us-ascii?Q?y5sor0ZPhKxNJvqGxaG4imWvtIUSSG8pSDpl8WWNJqRzw/Q9hrPDsfP+5Gt4?=
 =?us-ascii?Q?Vw2MYeaGClsHcH9GC70sfl0nsrLEiOqSjReGIyoOZwPjkCJfDp0VdQw7JRGn?=
 =?us-ascii?Q?FZkI+sbrcup0S/XPPt5NOEZwHs/n50Tqmevi8WhTElyCMiT4nx+JeXxm8XBG?=
 =?us-ascii?Q?CuiZh6k1isinuEzhKZrQwkcp6DxyEciKUDNrrcbBAgQPA9ekzFlTyRoWlxLY?=
 =?us-ascii?Q?FOucm9vpWtjqkEXVgJMPXIk87IAKbjhvBhvXGDLZNaEnwL0YMIgW5lCAdsrS?=
 =?us-ascii?Q?qbqKd8YPm1nswHGPpuYqdoU=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 88aeaa9a-d763-4278-8b17-08daa6078cf0
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2022 12:54:18.8090 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OBWSwe8VF80LOJcHXzH7ZE8mWI7aRCcY4doQ4sRg5RhV8XomGnwlPvGutLLN68xYskYURpIiqaMRzZS3sGlILzq75gYAeMT0n4Np9EfJnoOddQIQYmGqra+MqbxLF56i
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6053
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH v6 3/7] drm/i915/display: Define the DDI port
 indices inside device info
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

Prior to display version 12, platforms had DDI ports A,B,C,D,E,F
represented by enums PORT_A,PORT_B...PORT_F. The DDI register offsets of
the ports was in the same order as the ports. So the port enums
were directly used as index to calculate the register offset of the
ports.
Starting in display version 12, TypeC ports were introduced in the
platforms. These were defined as new enums PORT_TC1,PORT_TC2... The
later generation platforms had DDI register offests of TypeC and
non-TypeC ports interleaved and the existing port enums didn't match the
order of the DDI register offests. So the enums could no more be used as
index to calculate the register offest.
This led to the creation of new platform specific enums for the ports
like PORT_D_XELPD, PORT_E_XELPD to match the index of the ports in those
platforms and additional code to handle the special enums.

So we want to make the port enums not tied to DDI register offset and
use the index from somewhere else to calculate the register offsets.
The index of the DDI ports in the platform is now defined as part of
device info. This patch just adds the indices to the device info. Later
patches in the series use that index for offset calculation.

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c          | 46 ++++++++++++++++++++++--
 drivers/gpu/drm/i915/intel_device_info.h |  1 +
 2 files changed, 44 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 38460a0bd7cb..b37a95755b77 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -132,6 +132,42 @@
 		[PIPE_D] = TGL_CURSOR_D_OFFSET, \
 	}
 
+#define GEN75_DDI_INDEX \
+	.display.ddi_index = { \
+		[PORT_A] = 0, \
+		[PORT_B] = 1, \
+		[PORT_C] = 2, \
+		[PORT_D] = 3, \
+		[PORT_E] = 4, \
+		[PORT_F] = 5, \
+	}
+
+#define GEN12_DDI_INDEX \
+	.display.ddi_index = { \
+		[PORT_A] = 0, \
+		[PORT_B] = 1, \
+		[PORT_C] = 2, \
+		[PORT_TC1] = 3, \
+		[PORT_TC2] = 4, \
+		[PORT_TC3] = 5, \
+		[PORT_TC4] = 6, \
+		[PORT_TC5] = 7, \
+		[PORT_TC6] = 8, \
+	}
+
+#define XE_LPD_DDI_INDEX \
+	.display.ddi_index = { \
+		[PORT_A] = 0, \
+		[PORT_B] = 1, \
+		[PORT_C] = 2, \
+		[PORT_TC1] = 3, \
+		[PORT_TC2] = 4, \
+		[PORT_TC3] = 5, \
+		[PORT_TC4] = 6, \
+		[PORT_D_XELPD] = 7, \
+		[PORT_E_XELPD] = 8, \
+	}
+
 #define I9XX_COLORS \
 	.display.color = { .gamma_lut_size = 256 }
 #define I965_COLORS \
@@ -562,7 +598,8 @@ static const struct intel_device_info vlv_info = {
 	.display.has_dp_mst = 1, \
 	.has_rc6p = 0 /* RC6p removed-by HSW */, \
 	HSW_PIPE_OFFSETS, \
-	.has_runtime_pm = 1
+	.has_runtime_pm = 1, \
+	GEN75_DDI_INDEX
 
 #define HSW_PLATFORM \
 	G75_FEATURES, \
@@ -733,7 +770,8 @@ static const struct intel_device_info skl_gt4_info = {
 	IVB_CURSOR_OFFSETS, \
 	IVB_COLORS, \
 	GEN9_DEFAULT_PAGE_SIZES, \
-	GEN_DEFAULT_REGIONS
+	GEN_DEFAULT_REGIONS, \
+	GEN75_DDI_INDEX
 
 static const struct intel_device_info bxt_info = {
 	GEN9_LP_FEATURES,
@@ -887,6 +925,7 @@ static const struct intel_device_info jsl_info = {
 		[TRANSCODER_DSI_1] = TRANSCODER_DSI1_OFFSET, \
 	}, \
 	TGL_CURSOR_OFFSETS, \
+	GEN12_DDI_INDEX, \
 	.has_global_mocs = 1, \
 	.has_pxp = 1, \
 	.display.has_dsb = 0 /* FIXME: LUT load is broken with DSB */
@@ -984,7 +1023,8 @@ static const struct intel_device_info adl_s_info = {
 		[TRANSCODER_DSI_0] = TRANSCODER_DSI0_OFFSET,			\
 		[TRANSCODER_DSI_1] = TRANSCODER_DSI1_OFFSET,			\
 	},									\
-	TGL_CURSOR_OFFSETS
+	TGL_CURSOR_OFFSETS,							\
+	XE_LPD_DDI_INDEX
 
 static const struct intel_device_info adl_p_info = {
 	GEN12_FEATURES,
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index bc87d3156b14..a93f54990a01 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -292,6 +292,7 @@ struct intel_device_info {
 		u32 pipe_offsets[I915_MAX_TRANSCODERS];
 		u32 trans_offsets[I915_MAX_TRANSCODERS];
 		u32 cursor_offsets[I915_MAX_PIPES];
+		u32 ddi_index[I915_MAX_PORTS];
 
 		struct {
 			u32 degamma_lut_size;
-- 
2.34.1

