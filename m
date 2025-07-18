Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B43FBB0A848
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jul 2025 18:18:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45D7010E9FF;
	Fri, 18 Jul 2025 16:18:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EvWRBR8T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6270210E9FF
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Jul 2025 16:18:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752855497; x=1784391497;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=fyOIo8i1awxg0pq222+hBOUenu8LiA0hGKF0skcHTLk=;
 b=EvWRBR8Tm1d4g3FUqC3LDK87Z0p/SfbZZP+KzKR7+xmhw9eaedpOO4qD
 bs0KH+N/R1OvXdIjoMlz0UD4wUQbggm4dO/KoBz8hqf8GurPWty/iXBsf
 u+rvwfycHUFt2U1i+T4RJ9QevmrSR6BdIJUk57ehxMoCPK+tnUwvMzVyw
 n/4Eh+ZsnPg73PnY0q0mKeshPg7//9OahT7ZdGAPca2I9eme3hg1mwSNY
 BBrZQu5LleJuW2uE5vJXKvWwzXzadfAheNU0oiGWPf0ihHLr0IfZs2M1p
 VVY2hFgIiEwcNJZUGAdTaBR0EYqFTiyfyrm3x905AT8BC87FQo4ZQwWTM w==;
X-CSE-ConnectionGUID: svMEpft1ToWeN2Euv0n4gg==
X-CSE-MsgGUID: uDsCykV6QI+i8ym9qtdqrA==
X-IronPort-AV: E=McAfee;i="6800,10657,11496"; a="72720764"
X-IronPort-AV: E=Sophos;i="6.16,322,1744095600"; d="scan'208";a="72720764"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 09:18:17 -0700
X-CSE-ConnectionGUID: ySYp7x52SzyUuQel8b1Bsw==
X-CSE-MsgGUID: WQahloZUS0uZr/m1OTQwkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,322,1744095600"; d="scan'208";a="158790292"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 09:18:16 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 18 Jul 2025 09:18:16 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 18 Jul 2025 09:18:16 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.53)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 18 Jul 2025 09:18:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=y/3Euf9M0IFxIPLkpV3tWAbMcciZpDmx9YVpqc8kN5i28YpxDkCf8x1TijOfGHU7srJ0HT+uIOb3fjCULE0e1dtuIfJ56N7Iag4krdNHt8PeTveDPC5LRr2JJ2MiuroD0l85vb/dSTm6kcvxp6yV/YiaSYchVw9pORs8g9EuBEDHa3jXDVA9H+ZTf00pQK0MsgSz+4gIsTb7V/K8xQt8lNAVsemekIujp+BmW1DMgaiVLfKsOrDu4hSG/E2oxMn4wdXVSg2smqNFfz8EBXB8QyhqOG6fr0vHjWXxfvbdp+nk3rzTZ7cxwkN/+MCF/UaGioEqrpKdR9FNCfeTdzqMkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t0TyX44DoSHeYFploNxBJ3Vd0x4Pz+IMta4n+5ASA40=;
 b=v6QXYjUYfZTKrMV6IMbqxibc1NUW+k0Mk8r5047e91jx9UtnqVPXMh2WAP4yu+uW+h+lwRCvggRCa7elsKimLlcNfzSqLA684+gxxD/HzZ5BSxpq1C0/NnAqtXMBEkR7X7HGo5NKsERjq6Iky7FWPRPAoQzE3ANVWV7F+j2jNHdXkf218Ei822FJf7siJhdQza1ubLRuAJjYjd1+flaghpkuvcWpM8Tnut6DBJqAd/vZYxO+niA3+gZLAMz5dE+PE1to7jpmPQcRDKw8KGEfXvx0q1Q6pu1Yq3yObvMSCoe0eEf8f03JYXVY9XONKhHEWoQ+d2tCIzWUrW1uLSWDQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by SA3PR11MB7525.namprd11.prod.outlook.com (2603:10b6:806:31a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.26; Fri, 18 Jul
 2025 16:18:13 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%5]) with mapi id 15.20.8922.037; Fri, 18 Jul 2025
 16:18:13 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Ruben Wauters <rubenru09@aol.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [CI] drm/i915: replace DRM_DEBUG_SELFTEST with DRM_KUNIT_TEST
Date: Fri, 18 Jul 2025 12:18:09 -0400
Message-ID: <20250718161808.54986-2-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.49.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BYAPR01CA0003.prod.exchangelabs.com (2603:10b6:a02:80::16)
 To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|SA3PR11MB7525:EE_
X-MS-Office365-Filtering-Correlation-Id: e6f94679-0f0b-41b1-f4f8-08ddc616b1f7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?IWwcjkh3bF4LwgUzUlIYCpSua4pZOdGmv4d7+Xt3JeP0gBWpmHvTrehLbK24?=
 =?us-ascii?Q?Jewz+Ocdx8LRjtVxp0y2s4INILq3b4EPNKdx+75vvSJXuukPx83GdiAdRLuo?=
 =?us-ascii?Q?0lMY+G9OjgVPf8vJuJqSHj5FF6x9uWuUXViq5qi7pi8zgI78+lqbq2alL5WG?=
 =?us-ascii?Q?s5Gn++m4yY5FDVIllXQFP9NNMNOuABk1ehtL5gyFPX5mHe6CL9GlBy2/CZL/?=
 =?us-ascii?Q?cbILkNT3GxZhBg1bBunTBteN+IL2Il5lUYSIKZ/IubF0aOr9gkO0u/dY4Sm6?=
 =?us-ascii?Q?EQ+ZOM5MWIuKy1AHrCTyJZ2eocgBQC1Pktr+jl9YnlETbPvmyj+i90POdYH/?=
 =?us-ascii?Q?rzM7QDdPae6GYXctkB4XzbSevnqRTFG2PH2BnTLk/1JTmefIfnWygnkoRSUc?=
 =?us-ascii?Q?pJMnS/zXFmiJ2q2peFKor//+RwaW9P66NPDG8B5mdPqW/lXjixlk24ogmyZo?=
 =?us-ascii?Q?8rU5q+6e57WJjSdl+IAHPcDEGWhbPSQznWe7wa/VChJ0L0Y3WOHsjsVc1DlT?=
 =?us-ascii?Q?d+kedjxl90fu3MwT+G2LhRwuFHk8ttDsTNpQgg8+gG01Oni/VE//40VwqZ2J?=
 =?us-ascii?Q?dtJv5c3FNMpeL46xinqCU/D+WtlHhTtQsbYFN+vSjvq+x2h8XnTaTgi9YbGk?=
 =?us-ascii?Q?7z6i0b9tcNthq+MoPA1ymBo4AYbA8UelpFsQvxzgy0ahT0CkXqfX4Ja/GXxh?=
 =?us-ascii?Q?cEYMMFdrs7o1yuSeIIH3rvP9qVGj7T5cRzBz+WHlc1KUGO685V1wutzRPRYW?=
 =?us-ascii?Q?cuDENqVFGzxIMvCs2kH9KrSXzjuhH1FSly7kxetdMkv2NhyX87eU7A+3mo5P?=
 =?us-ascii?Q?R8JduLQ4QjSTyWGk3FcxIfQ5914tTCHWDfznWOaT5yf6Coetw9o41PkjFvJu?=
 =?us-ascii?Q?R6KcGsgNplnJJqcTyU4L2p3nGxhf3auCkypmrQPCoIubglcn/s6+uJdl1uDI?=
 =?us-ascii?Q?n6GSQqqX35vmeh0ySnKvzEyAv7ycx2oxQoKnk/VsWHKiK9GbfNYEWTh79mBm?=
 =?us-ascii?Q?PJiLxsSDqoG+fizjk97h5GJQme0rGGu3Pdiw4Hvdkm5aMkc9NwM9wOV6Av67?=
 =?us-ascii?Q?dbRrJ1uEPg7nXUitBfo83tfKQednihse0r9wWAK4GMlfodBAldJ/6FU5HhuQ?=
 =?us-ascii?Q?nQNDoZalhMWvPTnCTib+tbxRkvR+pntJXKhVjiJM9CbN6vtomZf+HweTj05O?=
 =?us-ascii?Q?jlF+GTfWg+WSVXzJ4HvfnSR0iMm6B4lt1o5LWYKcaJd2d63J17Lu3D+u5qmg?=
 =?us-ascii?Q?V+i9tHPDVAmtMJkkMi7H0ZvJJm7R9hvIIY385l3W7+khB842ASUQeouZCYRF?=
 =?us-ascii?Q?sGymfzXIZ+xNsjKhEbhNmHas4CYaNjULj4E6b8UbHfOLH4rtuLXPXSbn5LIC?=
 =?us-ascii?Q?pu2d+bg3NLpwM2G60hiooUX7fF/Q7Be6ZV/IKYBpqftLMA3PALfVW54UFiDM?=
 =?us-ascii?Q?07UcRPkcLIE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Jzcjml9Q+Z5fBIHLneVuk9XRIPqN43nI5/wEiUgf2cUCDEWmFvrxrW3kshXC?=
 =?us-ascii?Q?UKphNzA77F0MDRDHtF0b+fi6wb0CX2mAw4ChcgNuyZa9gNv+j/cI/opp6aVx?=
 =?us-ascii?Q?vDz7cozvM9F9Bj4OrC0lDHE2Aj18K08wLxJ1XK0HXIKb6aSvRQkGMN1TRVkz?=
 =?us-ascii?Q?9q6aGhWPLmszqOx/m7phMW9qYc7+urE0pUrbdh1/QlSczO3ik7MZfyUGUsqr?=
 =?us-ascii?Q?HNOkgmDUCpaqt98EV9nTTtA4cgWaiwMcpg49sjSSBXoqBXdpi6h8WRIQddCy?=
 =?us-ascii?Q?gm3isRv8VBCmNHcwVztN5FsnKbO9Dan8kDNDlJToHFf/bwVbgLtaAEfu6tIj?=
 =?us-ascii?Q?icFNNEPE3hHuSKaoI/dwJn7YOqURBHU0dR9WQ/TcC8885is46ay+orAGklAa?=
 =?us-ascii?Q?d9ZMxVsl50ETnFc1vpmfSi6SsLq3GO0TA3G5q8aHUjL9xdsJ++/CF/sCv8Qa?=
 =?us-ascii?Q?7Wu8TncQWdcT+dpvvGryU0gKhSyNK6Kx+fwFMqliYLzLaqCq1zk+U06OgvFs?=
 =?us-ascii?Q?cZ9sjj1Q/VAWF8izgaH432rP2qzguR2LdCG1BY/SrsZaQ8LTNmXqTuU31k4C?=
 =?us-ascii?Q?5IcGXA9oq1i7YdeHyF3sdWuN1+K/YaZ5twUS39qG+f2T8CfhSQJM1UNJbDWT?=
 =?us-ascii?Q?gFGBDLe8ssiU16QgF4trD8Z70cYuHv6kB5JUkGduGngFit18RyJf6BnLuUtK?=
 =?us-ascii?Q?78Ccn0V/W+mWMzrjUPdaokeSbMuXDIKfxs/qklCUmBgNPr88gtJjNKw4ucHt?=
 =?us-ascii?Q?8pVD381VsMzNN5E87jqo2Xo8SwVG+1axvKo6mD3WoYSJY3DYLq2RigwANgN/?=
 =?us-ascii?Q?cv1T2e/ZMQMXo4cYNuGWeZJq1HKAL/JuSc/SHbLSO6zY0/KZaAUAzcBpWQs9?=
 =?us-ascii?Q?dooBb6MFgt1TQUcoP4cVEj7HGg24ZdjQyG1NeeUcSGKJZDpcaitnvsp3ZXRg?=
 =?us-ascii?Q?HhsW5CEqWnR33y4f3PouAf1rF0RsZet2Dwpx7nVFA+zP+UVAdMjnJZG4VA23?=
 =?us-ascii?Q?/auHb+upgp3x78LkdmSCkuEyo3rcq92mrLGj4Vsmy09E8VTPRGcOVvwwb1mv?=
 =?us-ascii?Q?FmDqEZZkPVTBUdHg4UMvCXnol7+lJO5THe4bXn3WDGvTNKiM7tvqSZpZBqqT?=
 =?us-ascii?Q?DOSdfyZ26YrsRpEfgxe8BtbTe+HPKSvG5coUZvSXXMEHt/E/YTuANQbGt2yY?=
 =?us-ascii?Q?FeSINwp0M5mflC4HNUueZB1YnBXtqWDYRA9CG42znXiEyIOxkX3xCz3d2kdL?=
 =?us-ascii?Q?LhYb847ViS+KqXJwiPdAIPeCdnTGanaKae8GkJzrnZRYy5pdxEFjIOoRmjOt?=
 =?us-ascii?Q?2sNwCCZnh5F40Qp3fsw5d9C+jgfA6YaFhkGPowg2m/y84E/o7uN0zUm90wZz?=
 =?us-ascii?Q?e0qiF/2Vo+2gs1FysQxl90CivW+Ooeczvi0lOgF3ncIric55I54S89+ED2m2?=
 =?us-ascii?Q?DRKQu72/G00X9iyKaAMrJXwTOmZAzmjfIVvVa8o390/4ozcKgaOW1w8jZSwO?=
 =?us-ascii?Q?MY4V7KTJt1DX3zaSiJlKTxf2xnGoZdzXIG4acJWnyVrZQO1Zf4tNAxm96+Zk?=
 =?us-ascii?Q?0ckLVFwrpKHcj1/hYW5jQC5fEO6ipc4Bvf9ullmq?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e6f94679-0f0b-41b1-f4f8-08ddc616b1f7
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jul 2025 16:18:13.6083 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1irgbORrcTCPMipKgKciHQKrlGA/5r3GPwrqgmYyYAJAC+cTTtjTYW0bpfiwnbTxJHViKvucn4SGt7CBh0GXvg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7525
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

From: Ruben Wauters <rubenru09@aol.com>

DRM_DEBUG_SELFTEST was removed in commit fc8d29e298cf (drm: selftest:
convert drm_mm selftest to KUnit) and all functions under it were
converted to KUnit, under the DRM_KUNIT_TEST option

This conversion however did not occur in the Kconfig.debug file in the
i915 directory.

This patch replaces the select for DRM_DEBUG_SELFTEST, an option that no
longer exists, with the correct select, DRM_KUNIT_TEST.

Signed-off-by: Ruben Wauters <rubenru09@aol.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/Kconfig.debug | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/Kconfig.debug b/drivers/gpu/drm/i915/Kconfig.debug
index 1852e0804942..b15b1cecb3aa 100644
--- a/drivers/gpu/drm/i915/Kconfig.debug
+++ b/drivers/gpu/drm/i915/Kconfig.debug
@@ -50,7 +50,7 @@ config DRM_I915_DEBUG
 	select DRM_VGEM # used by igt/prime_vgem (dmabuf interop checks)
 	select DRM_DEBUG_MM if DRM=y
 	select DRM_EXPORT_FOR_TESTS if m
-	select DRM_DEBUG_SELFTEST
+	select DRM_KUNIT_TEST
 	select DMABUF_SELFTESTS
 	select SW_SYNC # signaling validation framework (igt/syncobj*)
 	select DRM_I915_WERROR
-- 
2.49.0

