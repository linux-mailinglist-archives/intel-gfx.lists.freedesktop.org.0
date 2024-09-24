Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA230984C52
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 22:43:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43BE410E754;
	Tue, 24 Sep 2024 20:43:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dAsjK5hd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3104D10E754;
 Tue, 24 Sep 2024 20:43:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727210607; x=1758746607;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=dXnxse63m3TbC9iVc+XlDetHx1RhMIXmBkfoYo6eM5s=;
 b=dAsjK5hdwAFHyWUwlm42hS+YGb1iP1qBCH3tToRC/kAX+muMEUvASvEi
 yqYNImU4R5edk8Dgb5ppb3z9/tRXxPbD0TBolxd1TtAk1IWNs+477ktbA
 DJHPFs10u6PjoEgPQyfThT7R3Lq1Jk3eGRh3ryI/OBPujNnDW9+c81T00
 pkfybszkNr524I/c03SoC1Fq2k0yFlNv3u/xxEKzN6HlS1HbJC5x2R+rv
 7IAyUIid3aj3H1qOaW7Oxn0kWHJfC8otBsJwIkjgwRp6RwOlwdT9SKgBm
 +nA0ABYUgiSg0t2l4q/5B7NgoQ3EBoPuGFyCI7ckfdvQHCu2qr3Lyxvgp Q==;
X-CSE-ConnectionGUID: pXUNM/kITROaW2+CzhDlSw==
X-CSE-MsgGUID: exZ0yndLSUS4t5DLChUN8w==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="26182631"
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="26182631"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 13:43:27 -0700
X-CSE-ConnectionGUID: 9jkwMvFUSQi3YnP46pprqw==
X-CSE-MsgGUID: XLlGDM1RQSmGfpFZANxfSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="76337804"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2024 13:43:27 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:26 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:26 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 24 Sep 2024 13:43:26 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bYWEsmTY/XZOEKgrzk1wzxpLkO9QOl+dQ6/w2eahd6sJRQDL3dm/I2eQq2m18dGzUh7Je2GBksPnAGtXxHoyu29IiuOcZ+iK4wsByr1aAqio5hLz1WCFl/AqRKKTuJw2myAcJveS0sy03N+oFswswXyXhjHm3uj4XiCcMLWX6MqA+IpEAZqHWWQ/9i2u7rFMhjEiESZTAuysDYQFCry+o2apYMBndVidBGU33h7TCoMu3LncyXlqVXydgicO3fyaYNH474TwFqwDGRpu8pdGFMsTr7weKHulMVU1NhJjY6dCRJkr1npJCj4DtRT3YEtYKFq2dcTozJKAWMRi3wmxgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1K7XnzfvHXVClhtAdL5+fmo2g12b/SzqkL14vcoQNgY=;
 b=rEd/1LAqYTFpJnrqDJEQIrEENzPBS+mJqcTwHtNzJG3heh/NBhUBGj3h874/W/Ed1+98b7T2b6t889oqrQZZb1mKZg4PCHlQzmj5BxhNV+ebekNJkq5jggyNLFedFf0Dmy0YkR8M5lE9EB4HK0ABaXKJ8nLsU3H6uMfzDqzPzsLQBgzK5rA6Jv7QuvGOXXnrxEa9UVjEGLWaxyqnSst0GOc9mMMkHBuyYAoD+whg1N82MUN5FppUNsdIIyIaYU0VQ3c6Bzhy/MdxgVZMgd6sHVq78m84yTLXp1FeIttS3Ime67tjqF7vVHiLIJe99wGyLpcblCYjBJQFt3IW34qd8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH0PR11MB4965.namprd11.prod.outlook.com (2603:10b6:510:34::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.27; Tue, 24 Sep
 2024 20:43:24 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Tue, 24 Sep 2024
 20:43:24 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <imre.deak@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 17/31] drm/{i915,
 xe}: Move remaining intel_power_domains to intel_display
Date: Tue, 24 Sep 2024 16:35:38 -0400
Message-ID: <20240924204222.246862-18-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240924204222.246862-1-rodrigo.vivi@intel.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW3PR06CA0001.namprd06.prod.outlook.com
 (2603:10b6:303:2a::6) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH0PR11MB4965:EE_
X-MS-Office365-Filtering-Correlation-Id: 62460668-e672-4a8c-14ee-08dcdcd9889b
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ajT3VUqwhIeOa8vOSoqGnmqChYqHfNw9/E4N4IwO5TrBf/RfWZwh7TwcPzHh?=
 =?us-ascii?Q?qn9wzF2cEFPiQnHXO1VnvPhsYyLeFVHPvfN4W4Wi6MYzNHqitP3/1HX4UPjr?=
 =?us-ascii?Q?cqf2ma6qAssLzHHdbpimNkXxITTO88JeW0zMOXfsLUNsegzrHoxOPkMgw5Wl?=
 =?us-ascii?Q?a5CMyD+1+7MkHWDxMl7UHpkS50C91mXUDDc1vXiSr3JylnxMKVsEaJ0XL8A5?=
 =?us-ascii?Q?hVXrZGvsn7yuCwX1gKS78mhg6xV2GGm1F7ux2xOjtVPbLFKb6ATrZMy/QNjz?=
 =?us-ascii?Q?oFTrzTD5RiED/8pDFRm7/CpcZ6N6MxfzzvWtcSG0vZgthZ9v6/Vs2Y0JnI1x?=
 =?us-ascii?Q?tA1c+FWsWakZ3OL9HLD3sEB5uAlXUNC5P40Evm2cKap3k41mHOygmTRt8ohl?=
 =?us-ascii?Q?ycJIqRIhqYsejykVxFSZnyAmi1dFd7VcQwiyU6pXDYiSOFp5anrA5xLMN1B4?=
 =?us-ascii?Q?3HOPX0lv0XvUtJC/n9kF64rfaWw8rFU6Bd4Mcv8J8TgcPFEPbTjjt3kSa5ML?=
 =?us-ascii?Q?BNeiJtVct5RSPVtoAf9EDqMG/ujpCzFdjh+dUJB1Ap6avuTgo+eIUSxSY5i3?=
 =?us-ascii?Q?DmyowvRo3V27AVLqZriz1ixBmk5andiyyW1Rg2GSu77a7ipeXdUn0SlDVyaK?=
 =?us-ascii?Q?th2XI9ituHBin7ybiFI7/IC6TSKfq9YRpXekSrzTbHhjZRjieEErpsJ3v8iR?=
 =?us-ascii?Q?n+fLHot0rXV+vprqHzmITqsU/rZdBktpYs6aZOlm2uUNhcGutzcIv1DlyGTR?=
 =?us-ascii?Q?7y7z/OVOhpcBRzpyQ5onAqgHsajChD1IdZpbaKeA2i47nx/5YvdgSALVN/c7?=
 =?us-ascii?Q?uwqPryvRTrf4bmWgDZIA1U0FA3y77QiorTafoJZGpFlgrbAy1d4Uvvvzh/wM?=
 =?us-ascii?Q?OCC2LIIUJOUXbvO+VHsgBvZpLnqfNmb0ilx6QCD/eYV8WdkVdqQEO9WIlk+P?=
 =?us-ascii?Q?9PX+XX29g6xGWpMbgMOb0SPjUDu4ciAOUELd3Pz3zryJBJz2HU6tjnQA2Pni?=
 =?us-ascii?Q?Jcwq0nCd0bPzYtWaiiB6szFS2554GhaD84eLhmeWIDamfkek5jAXDMLLnXPy?=
 =?us-ascii?Q?3fy+VmMUEEiB3hgFD2DUjMqvgF6HNgdrNFYnXjB7zwMP1N8vDbQGCEQlHu1s?=
 =?us-ascii?Q?PD2hoBrIWsJ0cucq9ZskCmf0kP2sgaUk8uwr1gOTtP03JLJkvQS3TnjYNU/e?=
 =?us-ascii?Q?Ddj5UcGXAs7DlpDuwMZDmikqEMSyPJNp9hSF+Pas0Eg2q/Cg/LXOUbe8fsur?=
 =?us-ascii?Q?8bcQCDq4JvQsJRozBhCVSQazdd16cyU5kqHarOirvA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lYVP5N4ogIDOx58/VrwzPU2Ne4Dp3JinInxpUDhA4kdJ8zzWBcEp8PJ11s3Z?=
 =?us-ascii?Q?FJPIfVeS7jmYPF50KYAbtxml3me1yC4q7qmTsqT5NlBoObl+2VQUMIE9Jj+L?=
 =?us-ascii?Q?qRfZyS2ruBbd0ItIi1LoIlsLozEUhx5/yDrSUI7aHklwM3kuZ/rFAzzNrKwF?=
 =?us-ascii?Q?jIvEkXYDEvaSqGdkWPQTcEHe3PTvCvV0iL+HnM5ohVTxBEN0ZOlpFZHSky9B?=
 =?us-ascii?Q?0Uh8KuAiVPWzDhMfRMZpsdgsDMuh2AFc1xiRHevCABIihROuSQAp/VX6j61Z?=
 =?us-ascii?Q?XT1B3jBCZajbdOWy5EaapnxtRGfkCW5VFZilyS4hwpYZdi2nbdF83IoQyVN6?=
 =?us-ascii?Q?cZQ0ZgImc0F7+GwzKfVqNXww2qdNxYFwf+dbSu/3rjF5VlHIwDMJvIxBqKOe?=
 =?us-ascii?Q?QsnY/vE2gI8/KbyEsqHMZB2YzJd0piC2t7bNRU/tn+/t79VNtTL31qFt5Vvz?=
 =?us-ascii?Q?k8Led169UwTfI6r//lSWe1Aog5s+VzFPmjnulws+vvr6Rt1BRYSx/JKEFk87?=
 =?us-ascii?Q?7YUIH7DwJUC4tW9ipxhde/reNRAsLmKC/0WFztXpZK4/lOtomWjrmijRqcgq?=
 =?us-ascii?Q?freHAdvv/s6iC0wibFNagenq4iF72TruTZwQppRywSFVI1y+0mwqxciyqd3P?=
 =?us-ascii?Q?V8Su1YMHkRSLcSdsOa66AVLd0Qr5RXRD4ZupahUlC5XrG3BGqazUgsEF857c?=
 =?us-ascii?Q?hdYUHau3WtnCvhL0gjbtaKc74qVC1o2ts/BzWw7VSK1IrsZwQkFBthYbE6Gz?=
 =?us-ascii?Q?7pnG6/qmFCx2Rtp4i7qrQHR18/eNPinS1kt/k0zQw+3mjx6uNWhUmrAywfqb?=
 =?us-ascii?Q?4db22jXYHwnlEFe0CC4DCSqSDSOqLmkzDA5ulvroWlUnVoyVmu64Igbb2I8o?=
 =?us-ascii?Q?f8ylaspCyqjdEpJa5mKYzaeMfFoY3qOGJHSC/FTqJUMpYVACTK15dm1RWCGd?=
 =?us-ascii?Q?S3HTNPTQlrCfc84QlB2gv65nJb5+6EMVMNb6fomelv31i8lyz0xfDqJ4JLC0?=
 =?us-ascii?Q?NJ50SXskPphwGACA6LDx5/Qzf4zetABbT9Gr8hR+gxErcu3fJv6Q5Qhu9nZm?=
 =?us-ascii?Q?eaG2dtxx3iFHSLK+BYhznv6fx8fwKM6+zCcm/QInLQtOxuFXpjrN4Q0FUU/V?=
 =?us-ascii?Q?NR3Wvsg7rqdAozEYc00rHKAAAMBaw7taz7wxtXcA6glMZgRbDjd1km73vaz4?=
 =?us-ascii?Q?ZTS8Vizk/8Q1hkWJqqvrC+toFEEVyUKGXk7ERPX+ZCL8nG2EEphQ1IXarKWq?=
 =?us-ascii?Q?OErO/BOcy7oI558StYyoyqVWkCy7c68avlOETeD9xAFUfmMUgJmmHYuFkI1f?=
 =?us-ascii?Q?HaL5KTbBxxWuQIkEOzcfrc9Q6/TzhpZgE8hIVCqI0V4cvMD3Bn1bDyIg5C3v?=
 =?us-ascii?Q?FVWgSG+PoZVsPq5+SJCJLE2SU9waS5pXsOgyRGSpk9TltCIx03Am7QDbFH87?=
 =?us-ascii?Q?6FyZoDu6DDlLPg9D+z9E3VXSyU33LNoWFRPaMQXIffkAGYPupkunwVIEhrbM?=
 =?us-ascii?Q?eO0YrTYB8sY5T5TWue/nk+EqBdtAJPtJesGBcxaoz5zpqnOl4ctaf+Ncdap3?=
 =?us-ascii?Q?jsGK+8WGp7gTOXvKOFOILoaYsCHSd9yxWytUr3bsiznDDk9WUUbFeUZNsEyd?=
 =?us-ascii?Q?TQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 62460668-e672-4a8c-14ee-08dcdcd9889b
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2024 20:43:23.9303 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Uh53pda04/wOuOff6sXdE4Mr3D3KiUcGA90gpt2JNu69uI6l7Qlvf0KchbKCnmI7IML+8uCfqupicv1AfYv7zg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4965
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

Consolidate the intel_power_domains calls under
intel_display_driver.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_driver.c | 9 +++++++++
 drivers/gpu/drm/i915/display/intel_display_driver.h | 1 +
 drivers/gpu/drm/i915/i915_driver.c                  | 4 +---
 drivers/gpu/drm/xe/display/xe_display.c             | 4 +---
 4 files changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 2a171cb2613a..a64468e3a052 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -563,6 +563,13 @@ void intel_display_driver_register(struct drm_i915_private *i915)
 
 	intel_display_device_info_print(DISPLAY_INFO(i915),
 					DISPLAY_RUNTIME_INFO(i915), &p);
+
+	intel_power_domains_enable(i915);
+}
+
+void intel_display_driver_cleanup(struct drm_i915_private *i915)
+{
+	intel_power_domains_cleanup(i915);
 }
 
 /* part #1: call before irq uninstall */
@@ -640,6 +647,8 @@ void intel_display_driver_unregister(struct drm_i915_private *i915)
 	if (!HAS_DISPLAY(i915))
 		return;
 
+	intel_power_domains_disable(i915);
+
 	drm_client_dev_unregister(&i915->drm);
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/drivers/gpu/drm/i915/display/intel_display_driver.h
index dec93f2f37c6..4b2c041667e0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.h
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
@@ -21,6 +21,7 @@ int intel_display_driver_probe_noirq(struct drm_i915_private *i915);
 int intel_display_driver_probe_nogem(struct drm_i915_private *i915);
 int intel_display_driver_probe(struct drm_i915_private *i915);
 void intel_display_driver_register(struct drm_i915_private *i915);
+void intel_display_driver_cleanup(struct drm_i915_private *i915);
 void intel_display_driver_remove(struct drm_i915_private *i915);
 void intel_display_driver_remove_noirq(struct drm_i915_private *i915);
 void intel_display_driver_remove_nogem(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 9e788e1c178e..53960326b68d 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -281,7 +281,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 static void i915_driver_late_release(struct drm_i915_private *dev_priv)
 {
 	intel_irq_fini(dev_priv);
-	intel_power_domains_cleanup(dev_priv);
+	intel_display_driver_cleanup(dev_priv);
 	i915_gem_cleanup_early(dev_priv);
 	intel_gt_driver_late_release_all(dev_priv);
 	intel_region_ttm_device_fini(dev_priv);
@@ -627,7 +627,6 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
 
 	intel_display_driver_register(dev_priv);
 
-	intel_power_domains_enable(dev_priv);
 	intel_runtime_pm_enable(&dev_priv->runtime_pm);
 
 	intel_register_dsm_handler();
@@ -650,7 +649,6 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
 	intel_unregister_dsm_handler();
 
 	intel_runtime_pm_disable(&dev_priv->runtime_pm);
-	intel_power_domains_disable(dev_priv);
 
 	intel_display_driver_unregister(dev_priv);
 
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index d5be622f831b..df66e47daca3 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -107,7 +107,7 @@ static void xe_display_fini_nommio(struct drm_device *dev, void *dummy)
 	if (!xe->info.probe_display)
 		return;
 
-	intel_power_domains_cleanup(xe);
+	intel_display_driver_cleanup(xe);
 }
 
 int xe_display_init_nommio(struct xe_device *xe)
@@ -217,7 +217,6 @@ void xe_display_register(struct xe_device *xe)
 		return;
 
 	intel_display_driver_register(xe);
-	intel_power_domains_enable(xe);
 	intel_register_dsm_handler();
 }
 
@@ -227,7 +226,6 @@ void xe_display_unregister(struct xe_device *xe)
 		return;
 
 	intel_unregister_dsm_handler();
-	intel_power_domains_disable(xe);
 	intel_display_driver_unregister(xe);
 }
 
-- 
2.46.0

