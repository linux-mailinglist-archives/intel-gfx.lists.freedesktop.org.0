Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F54396AC4B
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 00:38:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1B7310E60D;
	Tue,  3 Sep 2024 22:38:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ru3cpRH5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 115E010E608;
 Tue,  3 Sep 2024 22:38:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725403100; x=1756939100;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=7/75tolSFEhv3ksfFNspZOXjMjSeWPzG3myUmZzNTF0=;
 b=Ru3cpRH53w5/Dk5sszJnTCjocl4yFPSPrP5t9k0YYQ7Hlq3+05N+e5Q4
 F2sWrO8I60HnydsCilZnKhTeWpySdxRbz29WUlfunLgEanmPVR/Su0Igz
 YeAah0jO3Eezam1v1VVDwxdASYSeyo8ohB27HA9bZ33Rf/O9oNhuCBfOH
 yfiPoXFM2CeiqARJoYoMLkZauO5HhqlwzpkBp9Jtlxjdd6YOjRedkNxBG
 TlgsNQEvxSXeFC+COnhwyucBO/DgriKreMIcXZl11zCOrvntteh41Ma1y
 mQG2onggqKD5hOPeo4sp4WVmfgwPHQMMmNVZuxcBq2/WadkmuFdbgdgv1 g==;
X-CSE-ConnectionGUID: IUeWBDJQREGRg4QmS96PYg==
X-CSE-MsgGUID: zqHpB/+QRZ+TY/FQp+R89Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="41506806"
X-IronPort-AV: E=Sophos;i="6.10,200,1719903600"; d="scan'208";a="41506806"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2024 15:38:19 -0700
X-CSE-ConnectionGUID: V1IiMfknTE+jUnLyofYqCw==
X-CSE-MsgGUID: Qxe7OVqFSkWCdnQstRkbGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,200,1719903600"; d="scan'208";a="69881643"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Sep 2024 15:38:20 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 3 Sep 2024 15:38:19 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 3 Sep 2024 15:38:19 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 3 Sep 2024 15:38:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CfoJ6qqlC5lC65gQL+ns7ZJjG9y6xD/0orKmIL4n9wJNdiIHt81PvrkWOUm1aa4IqgZJnEM9guB041NkFaMA1IzTP/0ZelELQ5WpnlX1dgOaJXQ1OAiIST6MgHX5sL0AJON7H8NAsT++G16pdpQ8YIpv6szrEnB35+ZYWUx1Hof2pJAOMmLW2AZz+cYlm4sPT88GwNywqngRXX6wQ8OpjJ2cmNWTeC4Yv+R7pNao6V+mwZmKXCluR6uhuyiILrbmR/Uu7KUosxgX8IUfh/EfhNqInrnAHOA4qe+7G1q+aDpbs7J/q9tEoH+ngWXeWpfpehIxJY/ram8XC+yfXh7kRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B/oqFKKWsZnjhCssKKBn77X7C2C+sFiabzNuA3iCm4o=;
 b=C0Mm2S+DCSAJfcAXz3j+vuwZB5JA9C28Q8lUzLb+L9pqLJ/UqsddgGu9ggzQo2RbISzLKMTUqfQDrM1RN+F8QnR8VkvKkgmb68SUpulyCdaSVtbvNtr5H2SHmZDmThEagqZ7Y/g0hvZmjgXKCbYFks3+hmWLiuXF/E9Kgs8fIClkFws7pwMTb18fT+69BisWYdtma1fM3Fd2Uzr2pGe3Wid2C7zM+ixSWPZh9Ec8d7KfDAhNeeYwIAHneccbuLqGR+UNfWdTxJQk05XsNFVgwBfpauZill2qQ/xEzSTxK3a5wQpgss3M91G1bOWbEfTvmjV+fhR0fwpqCSDVHzIDlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH8PR11MB8259.namprd11.prod.outlook.com (2603:10b6:510:1c2::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Tue, 3 Sep
 2024 22:38:12 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7918.024; Tue, 3 Sep 2024
 22:38:12 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Imre Deak <imre.deak@intel.com>,
 Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [PATCH 1/4] drm/xe/display: Spin-off xe_display runtime/d3cold
 sequences
Date: Tue, 3 Sep 2024 18:38:00 -0400
Message-ID: <20240903223803.380711-2-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240903223803.380711-1-rodrigo.vivi@intel.com>
References: <20240903223803.380711-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR03CA0224.namprd03.prod.outlook.com
 (2603:10b6:303:b9::19) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH8PR11MB8259:EE_
X-MS-Office365-Filtering-Correlation-Id: ad5b1f6f-b5a8-4226-07d8-08dccc69177b
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?jsvKYpydGWkUrslp+cL5ppVePp8a+tEkrgTijznr/02adl5f2X9s1pzmmYre?=
 =?us-ascii?Q?qZpx9taymHjIiWb3hglYy17vPq+hklnKHpJEBdW97jrwXNCLLJC0lLU/6pGA?=
 =?us-ascii?Q?LIUXJB/uC/+6SjofwwZ8XC3LsJ4AF4O8JR3WdD6cfBRBiXom5qlqzcGzCxLD?=
 =?us-ascii?Q?Sf4bosQbRmEtJTL2BOKYaXPDsNR5sSeyD1OQSTPnR4rOFiLgWymSNX75FoGT?=
 =?us-ascii?Q?k9xG6t6jS0w5wjwPPQHmnRI6m3dRL7LzDFxn24T8EvNGnnZicn6tgIRBXYqg?=
 =?us-ascii?Q?Gaq/osYiChH5rBuksKHCPgepxIfyrzKrAmYxUvd5rpeWPBGSLLHlOVusxPoG?=
 =?us-ascii?Q?E7hAWrTMUw5aPuVnDByXQXYyA/VsIjpgw4AFfAahqb4AGa23pV0i2cKX7m8L?=
 =?us-ascii?Q?JI/3vWXTN8AiVJVNuiVe8oqmqmEj/4emdAheHA9Of4VipRAqhczpKmxmQpQS?=
 =?us-ascii?Q?KnLvu/7XUgBPXoXzEr2dwiJlsOUk7/8cUgbn2ypJ+RkACXwPr8q6DfYRr5vU?=
 =?us-ascii?Q?NRyUKIX6FHxD4je8TTatWCAJOAFxU4IV2+2ZzzabozRdmtHR+kSP3ndblkDA?=
 =?us-ascii?Q?O2VoOss3+98+YeXUje92g9vm578a3+DETCvUr9wDE4W/t+czxs+StCEk+EQo?=
 =?us-ascii?Q?hYMC4/09VRSArO5H0cy5rUnZifNlXH29/OZSyCHoExYG4uOMRhYkkFOaXWrA?=
 =?us-ascii?Q?TeWY8U54MFsXBL00lhOItQVTr2NurL7NS/ad4JK8EHh8VUh87eiKrgkMvJ4Y?=
 =?us-ascii?Q?8hsAXttCW12A4dDAGt5zh7BBoK8FGb3u5VGGgO3z8JXEOK1RhbQLerfBFfRY?=
 =?us-ascii?Q?eTvS78INBaR+HeuUUtPZGz7EwaMUQnSQLF344fIZd6/4LwsfcNC431nwFNfU?=
 =?us-ascii?Q?nqp5r5avljPVcUkv2flKRRbKZU1hcmhvtojlmmPoUhLFHz1aRszSXnPRwaox?=
 =?us-ascii?Q?MPngnNDthZWDWc19Jv5wrxY3BRK8hwir0LXRuow3k9/cBpnQHpK6klX81SiS?=
 =?us-ascii?Q?diDHAEgyEZ85nVCBXg9FR4p/7mW8sxrOuXZl9GvucKhcdV959Vw3adhEsgDf?=
 =?us-ascii?Q?zmGfclNDjrjYpVQa1kIMvpGyuzfFtCBLPeleDJRwLBz7B2XEf3bcjdyB9tVf?=
 =?us-ascii?Q?ysWNaJyskvPy9U7BBtYMJt1BO/BRFAtUmMG/+cUXbEm6B30fcbpo2fHWSysu?=
 =?us-ascii?Q?d2nY6wbaQiDxkddZ0mR0smk4aaMJggMMkwzhPDlaexS0yLC9euBJAahItd97?=
 =?us-ascii?Q?RPPdSXHqUSUCdfitihX/mQOimKsMN27xTfAbfJlh6IY8cPD0l1ZP3gd2W3ag?=
 =?us-ascii?Q?bMQXeNNOdOFc3xEOD0OWJtBS7twCxoEFdx67zicr3XWI2A=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5J5GqgYzB094Y/jckilkruyBlL2AhWdyNRVWT3dLVetNER4AXlIuBPZoVAc6?=
 =?us-ascii?Q?ahynkfYopRTLhJZuw61ZraVXQ43ITawn4n8NOZepk6twqXiRAFptT7ugNWZo?=
 =?us-ascii?Q?OoUAkTeC8jG0yvGVmIFgLFv9doIxIbil0z/s0OgCa9mw5uEhGeu62vhLlkBQ?=
 =?us-ascii?Q?xqcathHTJTMvRzdtlL5l90Gn4KH3/UKtkcNiE9GSz4WsO2803CbyU2pR7Bh9?=
 =?us-ascii?Q?7EdF9WHMZfkJE0r3DUCQitf85IVoL3tMXKNGAqC/zUT60Z/CdvzoQs+xO5vx?=
 =?us-ascii?Q?cg2x/bEdlJ/++jH0trCLESUw78cO1MV9fC6AFJLcD/nyOXyFDN43XRs9MXPJ?=
 =?us-ascii?Q?HYiT6hew15B02uBVCAjPABduSsoNeRNuxqiAZP3zTr8deCglSuKgczmes2Ze?=
 =?us-ascii?Q?x+qvJH3RsDtfXlwwi2Wp3E5L+exfeNbinIPBrMabHH5LxeennfpKTCPPdWsT?=
 =?us-ascii?Q?xcB6xcpMi8t6KAHFYz3clVWuLDtKsoESIdxLSY4PCxlsdewY1dgHaf3Mcggu?=
 =?us-ascii?Q?6rUdlBjWr/SoFnJetB42QMwfwKyxw8mo5QiHVxlSknmKH89BUMxrwa4e5+hp?=
 =?us-ascii?Q?S129RqNcCeBfjmTMb1WUYhMYoqiXg3EnC1mqTpfTdWXS2/n6ty2J0A7ecFW+?=
 =?us-ascii?Q?Tk8BEvAfMB79ukIMQ7CSGIGrXXUmlTFb1LwCP4j1N49QEXYYbwxQJCKH1Pfe?=
 =?us-ascii?Q?CusSfA2TqLhTf1Lh7Z+C7dtMDOxmSmAPQQZJgSIxdF0OlGghaqueFW08RJaF?=
 =?us-ascii?Q?JHyN6k9RFalRoi5oC0ISyt8gmORF0hMkn2RtlW389TTJVB3Tql80pXuOygYE?=
 =?us-ascii?Q?Pp8siWfqYqyunM0NVO5pgOfR3poO4yeHuW87M2Y4EwjuBhdSjk7a7/AczJ9M?=
 =?us-ascii?Q?zkrHrihWXdyvJLAgD+MP96/4fbtlsWaDw/YA+351rJvfqDMiYhxYOvgTCQFf?=
 =?us-ascii?Q?aGmJW7RJV26CNLbmcgfjoKKm2psUXTHtyGTQMGK2ekmlghm/x6cIHMowZyoz?=
 =?us-ascii?Q?/PbeuXl15thQ5rmMtfQULw/tbwWpsZe3Rp4exRV8k21CU49Lm6CzqnZtj6r1?=
 =?us-ascii?Q?UUJaR4glh8u2nANNzCfsyt5kCrSt82khg1Mkkf8V/2NIchpiccUfdk89qLNu?=
 =?us-ascii?Q?MG7fIsLR3IJ08yU8qjTGRJbDFUZQDB7IHy7O3VocHUTXpgZy+nwMwhuLOHmp?=
 =?us-ascii?Q?ffwfwHRMEqJCqMhRAy9xcv+ca6GNqZnorht0IdblHUjbf9xom+6vah+41Q0V?=
 =?us-ascii?Q?J2QWbRfrfs9hgkoftMiAakd4/AWBQ682t4FjtP2izB2OsiCicCTDs3RXxnqw?=
 =?us-ascii?Q?TCOPYK5xWFpZz75HRleaLTAyXsGNJMqcuTmY0/9Ug+jJeEc79p+G7h6A7I/W?=
 =?us-ascii?Q?jhi87p9LTfabJKMesIDyUeL+/TgYnYvwQW7Ua+ii5OujO4DvD2EIjPa6/RB0?=
 =?us-ascii?Q?b8K/4yiSANTZep2+6+V9GCRTTeBRk89mNsWYW/Wm5AGB6mxMWBbNdJyg6haa?=
 =?us-ascii?Q?qp3iO5rCL55ulAEFprJeuH/sVOuSFLzHaGMAHXmzfq7LbJs1ZCcrmX9uwMYG?=
 =?us-ascii?Q?sDdXAyJaJeZFH7W2l537bLDcU6jvEvnbGfALH8qZwT/hFp3qq4DkvsUBhISK?=
 =?us-ascii?Q?zg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ad5b1f6f-b5a8-4226-07d8-08dccc69177b
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2024 22:38:12.1854 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Sc1KUzAy91ypWcHaTgDtpCc/dSRWIimkiPzr1S0f7+Y7vOmdnn/GwSNUg89Ey+cswJMgzu6UdzDWusiXxe6Pzw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8259
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

No functional change. This patch only splits the xe_display_pm
suspend/resume functions in the regular suspend/resume from the
runtime/d3cold ones.

The goal is to continue with a clean-up on the sequences
that might not be needed on runtime, even for D3cold. But,
for now, bring them to a separate place where it can be
easily seen and scrutinized.

Cc: Imre Deak <imre.deak@intel.com>
Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 83 +++++++++++++++++++------
 drivers/gpu/drm/xe/display/xe_display.h |  8 +--
 drivers/gpu/drm/xe/xe_pm.c              |  8 +--
 3 files changed, 72 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 75736faf2a80..c93b753fc88e 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -308,22 +308,78 @@ static void xe_display_flush_cleanup_work(struct xe_device *xe)
 	}
 }
 
-/* TODO: System and runtime suspend/resume sequences will be sanitized as a follow-up. */
+/* TODO: Sanitize D3Cold bringing it to a minimal possible sequence */
+static void xe_display_to_d3cold(struct xe_device *xe)
+{
+	struct intel_display *display = &xe->display;
+
+	/*
+	 * We do a lot of poking in a lot of registers, make sure they work
+	 * properly.
+	 */
+	intel_power_domains_disable(xe);
+	intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_SUSPENDED, true);
+
+	xe_display_flush_cleanup_work(xe);
+
+	intel_dp_mst_suspend(xe);
+
+	intel_hpd_cancel_work(xe);
+
+	intel_opregion_suspend(display, PCI_D3cold);
+
+	intel_dmc_suspend(xe);
+}
+
+static void xe_display_from_d3cold(struct xe_device *xe)
+{
+	struct intel_display *display = &xe->display;
+
+	intel_dmc_resume(xe);
+
+	if (has_display(xe))
+		drm_mode_config_reset(&xe->drm);
+
+	intel_display_driver_init_hw(xe);
+	intel_hpd_init(xe);
+
+	/* MST sideband requires HPD interrupts enabled */
+	intel_dp_mst_resume(xe);
+
+	intel_opregion_resume(display);
+
+	intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_RUNNING, false);
+
+	intel_power_domains_enable(xe);
+}
+
 void xe_display_pm_runtime_suspend(struct xe_device *xe)
 {
 	if (!xe->info.probe_display)
 		return;
 
 	if (xe->d3cold.allowed)
-		xe_display_pm_suspend(xe, true);
+		xe_display_to_d3cold(xe);
 
 	intel_hpd_poll_enable(xe);
 }
 
-void xe_display_pm_suspend(struct xe_device *xe, bool runtime)
+void xe_display_pm_runtime_resume(struct xe_device *xe)
+{
+	if (!xe->info.probe_display)
+		return;
+
+	intel_hpd_poll_disable(xe);
+
+	if (xe->d3cold.allowed)
+		xe_display_from_d3cold(xe);
+}
+
+void xe_display_pm_suspend(struct xe_device *xe)
 {
 	struct intel_display *display = &xe->display;
 	bool s2idle = suspend_to_idle();
+
 	if (!xe->info.probe_display)
 		return;
 
@@ -333,7 +389,7 @@ void xe_display_pm_suspend(struct xe_device *xe, bool runtime)
 	 */
 	intel_power_domains_disable(xe);
 	intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_SUSPENDED, true);
-	if (!runtime && has_display(xe)) {
+	if (has_display(xe)) {
 		drm_kms_helper_poll_disable(&xe->drm);
 		intel_display_driver_disable_user_access(xe);
 		intel_display_driver_suspend(xe);
@@ -345,7 +401,7 @@ void xe_display_pm_suspend(struct xe_device *xe, bool runtime)
 
 	intel_hpd_cancel_work(xe);
 
-	if (!runtime && has_display(xe)) {
+	if (has_display(xe)) {
 		intel_display_driver_suspend_access(xe);
 		intel_encoder_suspend_all(&xe->display);
 	}
@@ -366,17 +422,6 @@ void xe_display_pm_suspend_late(struct xe_device *xe)
 	intel_display_power_suspend_late(xe);
 }
 
-void xe_display_pm_runtime_resume(struct xe_device *xe)
-{
-	if (!xe->info.probe_display)
-		return;
-
-	intel_hpd_poll_disable(xe);
-
-	if (xe->d3cold.allowed)
-		xe_display_pm_resume(xe, true);
-}
-
 void xe_display_pm_resume_early(struct xe_device *xe)
 {
 	if (!xe->info.probe_display)
@@ -387,7 +432,7 @@ void xe_display_pm_resume_early(struct xe_device *xe)
 	intel_power_domains_resume(xe);
 }
 
-void xe_display_pm_resume(struct xe_device *xe, bool runtime)
+void xe_display_pm_resume(struct xe_device *xe)
 {
 	struct intel_display *display = &xe->display;
 
@@ -402,12 +447,12 @@ void xe_display_pm_resume(struct xe_device *xe, bool runtime)
 	intel_display_driver_init_hw(xe);
 	intel_hpd_init(xe);
 
-	if (!runtime && has_display(xe))
+	if (has_display(xe))
 		intel_display_driver_resume_access(xe);
 
 	/* MST sideband requires HPD interrupts enabled */
 	intel_dp_mst_resume(xe);
-	if (!runtime && has_display(xe)) {
+	if (has_display(xe)) {
 		intel_display_driver_resume(xe);
 		drm_kms_helper_poll_enable(&xe->drm);
 		intel_display_driver_enable_user_access(xe);
diff --git a/drivers/gpu/drm/xe/display/xe_display.h b/drivers/gpu/drm/xe/display/xe_display.h
index 53d727fd792b..bed55fd26f30 100644
--- a/drivers/gpu/drm/xe/display/xe_display.h
+++ b/drivers/gpu/drm/xe/display/xe_display.h
@@ -34,10 +34,10 @@ void xe_display_irq_enable(struct xe_device *xe, u32 gu_misc_iir);
 void xe_display_irq_reset(struct xe_device *xe);
 void xe_display_irq_postinstall(struct xe_device *xe, struct xe_gt *gt);
 
-void xe_display_pm_suspend(struct xe_device *xe, bool runtime);
+void xe_display_pm_suspend(struct xe_device *xe);
 void xe_display_pm_suspend_late(struct xe_device *xe);
 void xe_display_pm_resume_early(struct xe_device *xe);
-void xe_display_pm_resume(struct xe_device *xe, bool runtime);
+void xe_display_pm_resume(struct xe_device *xe);
 void xe_display_pm_runtime_suspend(struct xe_device *xe);
 void xe_display_pm_runtime_resume(struct xe_device *xe);
 
@@ -65,10 +65,10 @@ static inline void xe_display_irq_enable(struct xe_device *xe, u32 gu_misc_iir)
 static inline void xe_display_irq_reset(struct xe_device *xe) {}
 static inline void xe_display_irq_postinstall(struct xe_device *xe, struct xe_gt *gt) {}
 
-static inline void xe_display_pm_suspend(struct xe_device *xe, bool runtime) {}
+static inline void xe_display_pm_suspend(struct xe_device *xe) {}
 static inline void xe_display_pm_suspend_late(struct xe_device *xe) {}
 static inline void xe_display_pm_resume_early(struct xe_device *xe) {}
-static inline void xe_display_pm_resume(struct xe_device *xe, bool runtime) {}
+static inline void xe_display_pm_resume(struct xe_device *xe) {}
 static inline void xe_display_pm_runtime_suspend(struct xe_device *xe) {}
 static inline void xe_display_pm_runtime_resume(struct xe_device *xe) {}
 
diff --git a/drivers/gpu/drm/xe/xe_pm.c b/drivers/gpu/drm/xe/xe_pm.c
index 2600c936527e..da68cd689a96 100644
--- a/drivers/gpu/drm/xe/xe_pm.c
+++ b/drivers/gpu/drm/xe/xe_pm.c
@@ -116,7 +116,7 @@ int xe_pm_suspend(struct xe_device *xe)
 	for_each_gt(gt, xe, id)
 		xe_gt_suspend_prepare(gt);
 
-	xe_display_pm_suspend(xe, false);
+	xe_display_pm_suspend(xe);
 
 	/* FIXME: Super racey... */
 	err = xe_bo_evict_all(xe);
@@ -126,7 +126,7 @@ int xe_pm_suspend(struct xe_device *xe)
 	for_each_gt(gt, xe, id) {
 		err = xe_gt_suspend(gt);
 		if (err) {
-			xe_display_pm_resume(xe, false);
+			xe_display_pm_resume(xe);
 			goto err;
 		}
 	}
@@ -180,7 +180,7 @@ int xe_pm_resume(struct xe_device *xe)
 	for_each_gt(gt, xe, id)
 		xe_gt_resume(gt);
 
-	xe_display_pm_resume(xe, false);
+	xe_display_pm_resume(xe);
 
 	err = xe_bo_restore_user(xe);
 	if (err)
@@ -409,7 +409,7 @@ int xe_pm_runtime_suspend(struct xe_device *xe)
 		xe_display_pm_suspend_late(xe);
 out:
 	if (err)
-		xe_display_pm_resume(xe, true);
+		xe_display_pm_runtime_resume(xe);
 	xe_rpm_lockmap_release(xe);
 	xe_pm_write_callback_task(xe, NULL);
 	return err;
-- 
2.46.0

