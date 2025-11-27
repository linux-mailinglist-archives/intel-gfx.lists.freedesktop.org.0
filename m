Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 432AAC8FC80
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:51:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F20B10E881;
	Thu, 27 Nov 2025 17:51:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ErUz9GGu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FEF210E867;
 Thu, 27 Nov 2025 17:51:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265878; x=1795801878;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=qf7S8OhAU733sW4svMbV43XyZU5erzihf5bRnKryFbw=;
 b=ErUz9GGuvnaYr+VPBns8rOc9N4Ckw1wa8y3rAn1AFw7Jp/m4HxNKLUSW
 PEXRy9FPZ1avXMVsFZrSm+LoXw85AZTB1WNszxGE+ZWH/Bc5X0OpD6fi0
 7PZbIKsmtrRu91C+mSTh63cNwVXo9j0vTY/p6BB2AilHazlAh8vupe+vM
 ClI052g5KgejWTuBsxcnDLHu3DpP0IWkXO+fP/9BxjN60UsnkLHeaTFw/
 dAj0NsP0e0qfQ0YO/UCShVHgbKuvoYe74QaAZ3S9OUCqLfXeMKRvQ7SXz
 6auEAoZ3tMJxtOft9+mU/xGnWskXAhExwhfa0cTN1yLB50sBTINtUZH5j g==;
X-CSE-ConnectionGUID: gTsVdYthQvG7+RO1rjMzfw==
X-CSE-MsgGUID: vv1y/KGURWWqJu25R1yJeg==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="66276756"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="66276756"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:18 -0800
X-CSE-ConnectionGUID: 8mv1tSiRT9WV7qLlGj4VPg==
X-CSE-MsgGUID: +0zWq4xYTPebPM27e46Vrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="230562034"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:18 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:17 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:51:17 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.37) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gt4A0LBaayZckLbyHuEQa8mb/INl6eUU55yInYbFtSBGrJMjzgMrG7N0gEiDkPb3suonlBmr+2REU/QWllbLUFn5PgzCMnYgerbz5fUm32Jhr17KIM3RPLT6SUvpxEmg2IZVrAa5nkGExau1KYtew1UvK/owagN8W9ALR9dRCmzkq9KacztnZ08WPFpfrvjtvFcmM28wXQQPa9scAlokruQ750anXEPRpsaP+vG55MIk0scbu9nhf4Synq9eRr6d+bUn3yQsuDb2XX8LNRGsBCqk8Z1eTfRdP874TJfVE3d2Mvps2DEa421mnyd7RlyWo2BQp3iuhK6l1pN3amK5YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ENsw4O9zMGq1haDTpN1B0LkFiN+uvvAFIm0KIiLaKaQ=;
 b=QkEJiMlOjqkBVKEEksde/n+XXYNHn0pVudMcpQiLsS1j2e8+TUpEhJiXEygljk98KRgmpMQ/foHtSkUV4ZziA9NKzUcM7ogpq/cDVcdSd0OnQTpAORSCjt7ktp/9m8rONGRh0eTDOGJXrrUGVehtovUObAdcEOVNWvbKS54IfwJt3Zv7jk+ulT0a7YOxGixnXUqKGeRcsUUCdo2IF9NsmAQW77QlRzVpfLjIXuy1Yr/Y2KGJmqMZSg56Nk6dgWN/AsLSUkegSZKoIEXK2+DvdBqK049tzD7/MSXZIDyBXsax+u6vIjx3B2x9CHiGNC8q/OFtDEexK/VBFgZflgbL5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB7842.namprd11.prod.outlook.com (2603:10b6:610:128::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.12; Thu, 27 Nov
 2025 17:51:13 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:51:13 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 19/50] drm/i915/dp: Fail state computation for invalid DSC
 source input BPP values
Date: Thu, 27 Nov 2025 19:49:52 +0200
Message-ID: <20251127175023.1522538-20-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251127175023.1522538-1-imre.deak@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P265CA0255.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:37c::20) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CH3PR11MB7842:EE_
X-MS-Office365-Filtering-Correlation-Id: f35539ab-3d39-4110-928e-08de2ddd8e95
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?jwIKqfSBpkqKTPFkDe2iG/Gwk+1AswcM/Cj6f8I4wHyV4l6OgWZQOhpF7SdW?=
 =?us-ascii?Q?lsXT0CZ7MtC+SthKoDlJ+8o7j0WYA1ZEo7X487eO9Cw5oEnFU3lEqEm0MbRN?=
 =?us-ascii?Q?qcsjPKf17+CLnAqqDZ4n6wn6CujVMs1BAwkJ0QeTB5BVRnMEGuW65i/YzYzv?=
 =?us-ascii?Q?qRTCqR4XvjCyi4pfTZCpS/cnUhfzEKaZcJ3tb8WIPlRtFfLwkkRzpSNIDYqA?=
 =?us-ascii?Q?FOx8z1g7vM0UKl92Z/2DHcWR2bqedA4y6jbBsTq4hJjok4NAmXWAkjW034y1?=
 =?us-ascii?Q?UgKVoUB5Aj1gsqztS7oBPXZhErR07WfsJJuOodmMwRGLggaQnMzsvGXg0CVd?=
 =?us-ascii?Q?ZuUj3xgxZmchPv3JEKPgyrrXneUDEd+6NAR3uKtBtYp2jBZl55eUn8RuCgaO?=
 =?us-ascii?Q?vQbMpGrSAoQhQ3S9ieEjUgEX9jeEIHiQbc1mf22GwEaTt37XYBVoR7mKiZjb?=
 =?us-ascii?Q?CRmDJEY6v38YjOiDNHFPEwAeeRTrBIGDvwquIcTE8DlSYOdB3WaSpGXpFQIz?=
 =?us-ascii?Q?t2nP5R0jZ4pSgpgEFoCt0UFKnR5sjPwNk2JnokYOXjgcIae7EMUN3VvTCsn0?=
 =?us-ascii?Q?+5bbhAPRPewB0ZVxmfQKprk0EWsT0Wz/SZKa4kghFwkTvfCvbLQscTLo8eOd?=
 =?us-ascii?Q?KMeoVnKvyR768Qv/3mcjcW3g9Oukk92k4HLi9tzHcO4K5rlPSIuYEzdhmV+V?=
 =?us-ascii?Q?Hj2q6QU1MksEKwErZP5mZzJoTtxRXV9jmxPNodPBkAS7qC8UiKjogvMQXlTt?=
 =?us-ascii?Q?FuItr+dF1tz7dn6O7JiLga+IprL+NDA4tCmyH0CYUlu6emIubgAqwNUTjfa2?=
 =?us-ascii?Q?cHzrr6rmGMn8ekajNj29Lfu599A+hJe/vDX6utzIPlwA+cuYY6rBH5yC4D7V?=
 =?us-ascii?Q?qweJuVswduB/fe5QctDuaw+DtBNpC1Xy3Nbu/ZnJwYOcoiGVQHTd9DLPn8FM?=
 =?us-ascii?Q?ss8tm/8BoIOPDXaUyWneaNtJ6itFt6SHA2YlC+yKckkvzTUn3Cb+b5tY+qm9?=
 =?us-ascii?Q?IloHaLlr/bTQ2TGj6yBxKAasElXeuFACohhs9B6yqpGyleK/haS/qaeaVhix?=
 =?us-ascii?Q?u7HfOKEjG0rojwgxmgKZk3kzLjGESyop+n6eNzzEEvkniX6nP801NgfZ5nZe?=
 =?us-ascii?Q?HtjWBzhyz2jj0TScd7/LstvwDi+w5padut3jtgbXqNRbeaCgw8bHRQ8pUIpp?=
 =?us-ascii?Q?dLGV+IvRA6mgqf9A9uuMWYiwLBK2mKZacjNP58EJojJauuto51mgwdPMUnBc?=
 =?us-ascii?Q?JANtJUErFvas1pNe6ePof2MD1DQ3YH9WG5BYmrP4JN4LVDxk44aGgvFJ0ZBJ?=
 =?us-ascii?Q?l9CAjPF5Jo8e9Liq2msATMXhdjA+de/g62E01E8Xwtkt1J3Si3/POz33vYpL?=
 =?us-ascii?Q?nHfc4Y8egMi6sKxGoH4wuvGSXzJWGIDxLFJymcs0C38JdbBouIGcWW0gt6v0?=
 =?us-ascii?Q?oSCvdgmS7b/x7NwmXMzlF1aDz9Ym1fev?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hZXLR5qZ+a4zL9KXfvkTTHyPKddstEtn6SKqzUWuLl3xKlMuM9mvKk8p5Qvp?=
 =?us-ascii?Q?qty924sBz2v5pYFE38OX/68L7GkOs5hgmOj0LKHB3c40FV6vH68gRQqUs7zs?=
 =?us-ascii?Q?QGQbNy6kCRSBlT6BiZMpxPGr1oOKKy2DkzZyKhvxm7tjehswlxtrswAxsy1h?=
 =?us-ascii?Q?zIQy2PON2CUOqzDnpR6CXo0FY/vtPMwpYzZeYpsPty7j1sUfXwa+eIh9aniK?=
 =?us-ascii?Q?ZSVItR0b3qfXwf3hqmkOx3g5diE2StE7/Fi0SoEPxyifbvMsS4DwugnfIILF?=
 =?us-ascii?Q?vuxbyBh2/9JalvIbIDaoSk7JK/tApzwAMFLn33zs4CTvpoGZvXdvbkb5yaTY?=
 =?us-ascii?Q?B2rmcoOyA8Z5eAA1oktwsceci73oNhSJFxIg6yAFPSVH6QoPxzVMuwJn2RA1?=
 =?us-ascii?Q?wvCv2ZgFK27Jf2xdGqvn4XSEReEMwgAgxfEnibBcj/Y5qSKSS/8dDeaQbXR8?=
 =?us-ascii?Q?/vKyPaQvDNfhDmsIidqMoDA1XcYW6v+syRmVBCesEsOzEzzOdE2g6w2ggjsS?=
 =?us-ascii?Q?iwWpIsLjRbiqPDRyS/HvX0iFC3tmfWx/+2BByM4T/R/Vlf5SjZ3LF2nrAm/E?=
 =?us-ascii?Q?39Cvipft7L9ozarSOUyYyUBRdmsjVRHcNdgQ5kgbL/Syb5TFBD9KcNXTr/57?=
 =?us-ascii?Q?kOZaqTlng4xNL7/uzNCFXHu3eHA/Me9nRhfPu/0BxiApaNGLJSM0GgIzd3qY?=
 =?us-ascii?Q?l445t38psV/+A2Z6EUuUMkBrnN/LV6R8cBK2PqsPj8Y908M13OLnQBdkfGYJ?=
 =?us-ascii?Q?27eIA+SMsFgpBaLuZRsfPOFFEbo3GJPj6l/UCPRT5OXqYStoCrfvbXiW8nEs?=
 =?us-ascii?Q?l/iDAfCFKNsfvz1zZsMnYXIHd0Kylt5jU6WtbgdNMnhptlxZ+vZfYke9mZVj?=
 =?us-ascii?Q?UF+uYwswRM5W/59F+TYDqhDfSJjk9v8oiqPkbiJQPz1vWM0OX445CNO93cym?=
 =?us-ascii?Q?lKMAlWlWjJSpCEtRp8DTdeiityQiJhY9/hl8Qu+STUvc+RYsntXeXX/kY3my?=
 =?us-ascii?Q?aGAkxO5nCs1Uww+K+gnXC43cXvUkoUUXg/ETLcwaqG3kxSk4nomjoiQpb+WE?=
 =?us-ascii?Q?KGVOJBPJAmq83MT/A/ngxlPLGAXxzCztNiCdLqkLYQfS8O+0ZMGmlRLw/OPF?=
 =?us-ascii?Q?xC85ehlNGO2pA95Cl3iu5uwJypo+s7HmOS1+LKcY4GIAUlbcde+7r8R15i+F?=
 =?us-ascii?Q?px17N1kca9P6hmH19aZj1DG4HyVpuVnaWS8oiR2QTZSM9dAL0i7y5Rqtxysq?=
 =?us-ascii?Q?5lkpYxImR2teLG8kIUkiJPtpjGMiALuUW7dME1Tfuu7EFir8XtvBDTtRlNiN?=
 =?us-ascii?Q?EM/1b7U8uY91kvCCFN2Z7WwTZYL0KmS33NvYssxzsuaWUkCASNXx8qGSkddZ?=
 =?us-ascii?Q?2/cijQvcq7ksG+ZZ5fmr6g2CAPdXYy2Uvqj+qk32ss7VmxqemUM/Rlt6hjGK?=
 =?us-ascii?Q?U+DOqCvyz8tpeV5zis45Xa3jnxRDKpcqaJhPVoixEGLRQeQ3ckVKwUSQle3i?=
 =?us-ascii?Q?595XkfG8mODWnT351QrpBRZxtHbcqBx2qPoNYL+FSySmHUVBMEAAboJs4L/n?=
 =?us-ascii?Q?sjsLeTvUbebK98dl08eoI6Tak0PkPA2sldsP9nRO6hAbM/hxDiarcI6glooc?=
 =?us-ascii?Q?7s31ZMmfs9ZBu0OCN2J8pAPCmg+Ae7KLgS9joI0E6vQl?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f35539ab-3d39-4110-928e-08de2ddd8e95
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:51:13.7619 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eDS5nYXqFfxRtgHGCupGZ8HRNdK0gdJbaZ4L+xwX7bMmENpSYdXroyV5GErmCUwiQdTg7kCcDVa6j0k5pN4nJQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7842
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

There is no reason to accept an invalid minimum/maximum DSC source input
BPP value (i.e a minimum DSC input BPP value above the maximum pipe BPP
or a maximum DSC input BPP value below the minimum pipe BPP value), fail
the state computation in these cases.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 28 ++++++++++++++++++-------
 1 file changed, 21 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index db7e49c17ca8d..1ef64b90492ea 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2669,16 +2669,30 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 	return true;
 }
 
-static void
-intel_dp_dsc_compute_pipe_bpp_limits(struct intel_dp *intel_dp,
+static bool
+intel_dp_dsc_compute_pipe_bpp_limits(struct intel_connector *connector,
 				     struct link_config_limits *limits)
 {
-	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_display *display = to_intel_display(connector);
+	const struct link_config_limits orig_limits = *limits;
 	int dsc_min_bpc = intel_dp_dsc_min_src_input_bpc();
 	int dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
 
-	limits->pipe.max_bpp = clamp(limits->pipe.max_bpp, dsc_min_bpc * 3, dsc_max_bpc * 3);
-	limits->pipe.min_bpp = clamp(limits->pipe.min_bpp, dsc_min_bpc * 3, dsc_max_bpc * 3);
+	limits->pipe.min_bpp = max(limits->pipe.min_bpp, dsc_min_bpc * 3);
+	limits->pipe.max_bpp = min(limits->pipe.max_bpp, dsc_max_bpc * 3);
+
+	if (limits->pipe.min_bpp <= 0 ||
+	    limits->pipe.min_bpp > limits->pipe.max_bpp) {
+		drm_dbg_kms(display->drm,
+			    "[CONNECTOR:%d:%s] Invalid DSC src/sink input BPP (src:%d-%d pipe:%d-%d)\n",
+			    connector->base.base.id, connector->base.name,
+			    dsc_min_bpc * 3, dsc_max_bpc * 3,
+			    orig_limits.pipe.min_bpp, orig_limits.pipe.max_bpp);
+
+		return false;
+	}
+
+	return true;
 }
 
 bool
@@ -2718,8 +2732,8 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 							respect_downstream_limits);
 	}
 
-	if (dsc)
-		intel_dp_dsc_compute_pipe_bpp_limits(intel_dp, limits);
+	if (dsc && !intel_dp_dsc_compute_pipe_bpp_limits(connector, limits))
+		return false;
 
 	if (is_mst || intel_dp->use_max_params) {
 		/*
-- 
2.49.1

