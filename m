Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E7FDA1596D
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2025 23:10:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3774410E3B9;
	Fri, 17 Jan 2025 22:10:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N6C+WvQ9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4722910EB85;
 Fri, 17 Jan 2025 22:10:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737151825; x=1768687825;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=dpD16nEZJM2YUm7k1NeyQPYblmOb92A1x6NqFjG/7x8=;
 b=N6C+WvQ9tI3rSPdc6QHoaeBr9qvk7+APzzcuycQVenej3la/cfdZsx0s
 Q6j7W+XV3NK/UGcbtZogSDUzCWJJCa6b8o2cZWIrJIK9gKhEVI5gMSXbf
 OTeA2ZvInyJ6T7/aSZYOCx/tBhvWWzY70xx2uvFO5tnT7hqyqKoiJupT0
 olB8ReoCE3EIBbX1BuDfoH9CtSo3z5wUnVgQ7QykWPrwQMjORg9eVRKnx
 /RC61Dz5Iv/8MscTNde/TZol65ZUnd9CvMMVoFYon842G0mYMdy6IP7ow
 FF57UlRtqXWdx9TX/soNb4MakbM3nXx3TVz9eScb42Moc9tX9Fq2NDMsF A==;
X-CSE-ConnectionGUID: u2OjedVJRCy6WkpO3GnuIw==
X-CSE-MsgGUID: XpbpGwO/Sw+/EKi9v9k1Vw==
X-IronPort-AV: E=McAfee;i="6700,10204,11318"; a="48264622"
X-IronPort-AV: E=Sophos;i="6.13,213,1732608000"; d="scan'208";a="48264622"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 14:10:25 -0800
X-CSE-ConnectionGUID: bG/WsEE6SgKPw3c2ZGhLYw==
X-CSE-MsgGUID: zkfQqemoR6qC1alYgC0YDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,213,1732608000"; d="scan'208";a="110921469"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jan 2025 14:10:25 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 17 Jan 2025 14:10:18 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 17 Jan 2025 14:10:18 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 17 Jan 2025 14:10:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=npNqSax3MIjMCgcoRtINFThGJhJHRWp47RMN577mfI4SE26cwq9QHtaqJ0YrIaVyOJTrE6RcaayVFQva+SZjwq6R0PrBQ/ebJDSarEC7oCBJ+xJcib1oZYWtB67grND7JnFUSIGq9eFU09tB+Ylhe29n3FoSe/iD4Hvsy/j87nvn6n76cq8RkoDVjGW0LOhaTALe06wMemeQHcpQs16wRk2+F2icEVit2WPFLnZFt/kIiCtwzjJ3qmlDL1hurr2tIEP0Qmua+zke7yN5zDX4ytTEpilR0Ueb+Ud1DnxDu1fjhb9IuhAcuWn5UX4hsg3XljD9IXVrwFixX17oEy0Tlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NuTdE61nsg8ZnaJHCgYP2PpNP9xyu+plASpGOkJNKwo=;
 b=c5EOBI5lmsVLHNypZtJfOSh+tgFi9PuyFlwjXTmWVnuHitzsPFs/8mszHbFPM2lSaowSV/aMDJgwau9z+ribrMLPSMuB0mGtL0+kXCf7qpLVtWez5Q/lbx9A9c+0CcFRFXUk51QdmamdRt5EyuIZKLy7S4Ot0VPBZuzT5n+fMsxVtlY0ZM43nUk3mpJNwZvJlF4cGJgWxKwvUWbGrr5mw6WID2Zq0j/EweBkrpdbnAdv/f+7Ky4MmEyLmhu1HzC2fkmB0FxUJRyF/AsO1ruhODNBq5UN9Ks/0TuoC56irsp1jBcFcWfJ5CveSWwbRaR1aH+wVLGxHQEyrbJKtAKnqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN7PR11MB8282.namprd11.prod.outlook.com (2603:10b6:806:269::11)
 by LV3PR11MB8532.namprd11.prod.outlook.com (2603:10b6:408:1ae::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.16; Fri, 17 Jan
 2025 22:09:53 +0000
Received: from SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72]) by SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72%5]) with mapi id 15.20.8356.010; Fri, 17 Jan 2025
 22:09:53 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>
Subject: [PATCH 3/3] drm/xe: Use i915-display shutdown sequence directly
Date: Fri, 17 Jan 2025 17:09:43 -0500
Message-ID: <20250117220943.506991-3-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250117220943.506991-1-rodrigo.vivi@intel.com>
References: <20250117220943.506991-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR02CA0011.namprd02.prod.outlook.com
 (2603:10b6:303:16d::28) To SN7PR11MB8282.namprd11.prod.outlook.com
 (2603:10b6:806:269::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB8282:EE_|LV3PR11MB8532:EE_
X-MS-Office365-Filtering-Correlation-Id: 6eadf9c0-8f4e-412e-84f1-08dd3743ab44
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?67+Ogt7dR6FVQ0NA1G+vRQFD9WMFtyWqxTV3M8QQsTYToZqetqcMxAPW6BCx?=
 =?us-ascii?Q?PQ4RxO4+Ks4yvA751lpF3UsO2XmZ6mTDIvEAtYGcTQFrDMn++zpqXmDatRgW?=
 =?us-ascii?Q?SPRL5eu3ciK3fCyyV5OUT3gY36jrjk68lw0eWd9hq8qCfmyniY0RtjsbIp61?=
 =?us-ascii?Q?DC8/oGp79VGUg6/4BncHVZljhNF5NLYF3tRh0pMxdi/nHtHMkEylXNqlt77J?=
 =?us-ascii?Q?c8cdAxpIJWiaCt1fQm+qAyHJyGM/IWatuyu42rqUgGHMj5rv48je9h80yrji?=
 =?us-ascii?Q?PBalfUttpVTimiu84q+H8iiPLJVrxs7JF/X8xMdJqpdtQEn1HuJx42WESxWI?=
 =?us-ascii?Q?EronQkLpubjmBlB205fhobiejZeQMrA94izjRPC2rp1F+YnVSClOtVl2a4KE?=
 =?us-ascii?Q?jIaSf/iF5MDVIE7MTzXkVNQZ/Ljtypj61Kz7BHqj0Shuv/qzH7MOD/DQ56Zd?=
 =?us-ascii?Q?6lFABURBAAm5jqoDav2lRrTmScahyX3pUH6mpwAVmp8lsJEr5hE6YvPLLtCO?=
 =?us-ascii?Q?Zw+GUn8OndrxkTtEQ4aG7GdEI+3sKJ6DMofQ+u01W1dmFlPcLoeWI4a882Jv?=
 =?us-ascii?Q?SbtG9L3gPaEKVQ4imtlvZz6BwT6euazfvwmvgjGzGLSji82F6CEm2ExBvxNQ?=
 =?us-ascii?Q?LWHrB1B2fXotII34nqJpyVPP/nMhCjH05qY1y2U/qZbqKDNSP0BnP+MDL7hj?=
 =?us-ascii?Q?4UuCAAs19kY5YtMbwL3lLtogABmyAzIGfz/F7bzFmxgRwqZQ1R0KpXc9BxpL?=
 =?us-ascii?Q?qZ9Z6uVv9yOFssb5CqqTf1Afd9usIb8//Wcnn7UoEgUnQBKN4S5IsfDsUjtT?=
 =?us-ascii?Q?QshrQUsS+hX7rLhZmi6JCi/V8ZgKKMPlLFbMEbRLUc9mqVfiXaqZsnX6NhUk?=
 =?us-ascii?Q?bq3FU9ZPGKOIU2jLGDWMROQ6DwRAACtYqsrF7KHxULdPgiUr3OpPJHGGVLEP?=
 =?us-ascii?Q?JEurYOMMJJ6qrgGJmvH8CIO31wd1c+TfPuXboDzxaTo1a7ONpuHByVbKHFe+?=
 =?us-ascii?Q?hGr1yRGznl4QLePrFGkoqiSJx2fiAJUshi+NI5dwoawk32/gyEJyEuIL5u+z?=
 =?us-ascii?Q?djvTtklC0wbOEBYkhrX44P7q09H98KGcyyniDxZhXL2nY3PwEJ5uOWVFYgYs?=
 =?us-ascii?Q?rtibwiYJ39X+g3+JDpdBNvqSEf0Uabdom49DCmXKvd3EjRR0DAH65e0j5EGe?=
 =?us-ascii?Q?aJaxmobZaZa9mnp1Q1zHGh+G4a4Q/cTbhrS/texJGJhCMeeeW8j4mkrn+Pxt?=
 =?us-ascii?Q?mJkU1SyNPIl/Rg5nQS6dGk36/FOj8yGChaIcBUSI/gk9ou2E1QJXNeCrSPCa?=
 =?us-ascii?Q?8CCbTPysYM8ao8vNCGteln6NbCl6kj0xGFjUNqyn85fAhE5zea4RjTjEewWn?=
 =?us-ascii?Q?HlAbUoza2KfIFVzROsCUff9OLafg?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:vi; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB8282.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ZE7IvzXeK4csM5QMoksyzDI/qnNPdN4ARPiKZ4cnnRH9GACj82K2M5/JtB77?=
 =?us-ascii?Q?ppqaSWQZQkT/k4erEiif/HRlTeM8VkuG00RMX5qxIa9ZXtW/8uHPoiq71Bk+?=
 =?us-ascii?Q?i20FTiPk+Fz9f30s3ej1lEfn3r6EPwGKMyPyncq1aBSnYKwS12suelVCXx3l?=
 =?us-ascii?Q?EuwRlSYnlTeNkoWVkvzGW69sMzeAVYK2hjdNISvCFAXgmdhD4rcyU3+j5shb?=
 =?us-ascii?Q?lntvkXYMgaexPJlLtmGp7SNDm3Z7taCRca8h5GG6jXM46InS61MW2wed7OyG?=
 =?us-ascii?Q?duVGIrGRdOBomG3iyI/EzvYX/EDubGjbYSsrUqjh/GDaIFHWNh6RySNjNJ9U?=
 =?us-ascii?Q?71dPPrFZnn7+jjtEwPBSU5H35i+OfxR1I53mL/gidZwAnL9YslCaY9JI3xrV?=
 =?us-ascii?Q?wl7OEsjl1hYX4myW083UvxIjHemgctJY84C+9ZD5h/RvsWGsUuzwv7xGgjXQ?=
 =?us-ascii?Q?puU563Og04Rw0cipHE4xXuNBw6la0mE58t9xf0auDLm1BPrC5J/ugLqywmCz?=
 =?us-ascii?Q?OjfRLDSBjIcQnlOB7TP57v1vlpoFGBevb7FPRExNk/5kXJyJywCXZKEcZAlZ?=
 =?us-ascii?Q?zhB3NCdOJiTR4gfYQlCOjjUReUREc086GKJyCdp6iX8ZPkVjXdgkQYxILlkb?=
 =?us-ascii?Q?fnGMfhMCs/NryuFLdEL6vAv3SkBkPy3IfFdfBRXFp8QhdQSyqCNe808oaPPN?=
 =?us-ascii?Q?qRy6MAW7KE9HHWbCZf3bnWVwm0+TL1KvS/9rP1YSo2mOCb9gNhUGXJHYxSZA?=
 =?us-ascii?Q?2TVegdN5pSCkotGhhkEq2V82Z0ItDTFHHGARiA5aUm7kodBs54eaFW7w8L5Z?=
 =?us-ascii?Q?31eU6SRtgEZA5BoeojvrQd498zRCj3T+AO0qoRnpOCcYCOpFnUkwIXDWEvmY?=
 =?us-ascii?Q?M10Ebj23zPKhWwhpxhkmWc+oH8+XW7VK4Z3V7MX2DdGEu4epcSgyMl5wvu/Y?=
 =?us-ascii?Q?lBg+qaFc/teaB+mHnlw14j/xKDdxpx9zVObG6hOvmk/h0TgD1oeJc1secsa6?=
 =?us-ascii?Q?Ipyb4IJrSGDv+LQXmZQgee7bdtEoYuuMsbpdfczqzmJ8Pvr7zAJ6F7sGeesV?=
 =?us-ascii?Q?iWxJ5crGzkRCLTS4CI0pJVNFIroMda5pECS4H7sNqQD8DXtYYNwAzlXue6Dp?=
 =?us-ascii?Q?1LG/5kvVoyUqIg8mbZ0q4jjFP9eMNhk02G+XLboWGUIN4j56NWYVv9c71abf?=
 =?us-ascii?Q?WDaM9GMsSuz2EFGyY+czQ/8Gw7C661UOgssjrzguHo6I4u7QzB7tpGmdYqRu?=
 =?us-ascii?Q?NEdLRPbIhIpKl93JhlWyGLWQ4LjxtuBAVoyd+bRuLfRVvmed2QQgdKh0V+1A?=
 =?us-ascii?Q?SPiKkmOwT2kP9a1qcuRo55oSF1BRN2yj7HECTsgdpAFxCJcHURWdtz9+nELD?=
 =?us-ascii?Q?2xi4Lb7Laaf0f5dVSgjiUpug3IHsbJaSa3hCSw4OigcgZCXS1xs8sS41driO?=
 =?us-ascii?Q?nTi6qCvMEVd7xeMAyjvuB8VmaQKCRzeW2q9T4K6mK2Hne/+zOUppg3hQm6Ns?=
 =?us-ascii?Q?pItTWv2HvxIifGWF3fADzI8nMXb7Iv41NxUldVNvwlP+jJmGPtxCsgL3MlXw?=
 =?us-ascii?Q?wm3/pVYCJlePtCBTMojNqKjb/q1Z2AABkCskQYaClD7i0H4+EmBGaHa6AftA?=
 =?us-ascii?Q?Eg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6eadf9c0-8f4e-412e-84f1-08dd3743ab44
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB8282.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2025 22:09:53.3992 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7U4LfUSxe0lNmyFk0JP2yzVMVryixpBTpu8g5hOw0PASSYWTR/R05yzxIzT2DH+brTZYeJNo7qv8v97WCKzYJw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8532
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

Start the xe-i915-display reconciliation by using the same
shutdown sequences.

v2: include the stubs for !CONFIG_DRM_XE_DISPLAY (Kunit)

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 48 +++++++------------------
 drivers/gpu/drm/xe/display/xe_display.h | 10 +++---
 drivers/gpu/drm/xe/xe_device.c          |  4 ++-
 3 files changed, 22 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 4f60d7bd7742..e1ce9eb3332d 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -10,7 +10,6 @@
 
 #include <drm/drm_drv.h>
 #include <drm/drm_managed.h>
-#include <drm/drm_atomic_helper.h>
 #include <drm/drm_probe_helper.h>
 #include <uapi/drm/xe_drm.h>
 
@@ -369,32 +368,26 @@ void xe_display_pm_suspend(struct xe_device *xe)
 
 void xe_display_pm_shutdown(struct xe_device *xe)
 {
-	struct intel_display *display = &xe->display;
-
 	if (!xe->info.probe_display)
 		return;
 
-	intel_power_domains_disable(display);
-	intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_SUSPENDED, true);
-	if (has_display(xe)) {
-		drm_kms_helper_poll_disable(&xe->drm);
-		intel_display_driver_disable_user_access(display);
-
-		drm_atomic_helper_shutdown(display->drm);
-	}
-
-	intel_dp_mst_suspend(display);
-	intel_hpd_cancel_work(xe);
+	intel_display_driver_shutdown(&xe->display);
+}
 
-	if (has_display(xe))
-		intel_display_driver_suspend_access(display);
+void xe_display_pm_shutdown_noirq(struct xe_device *xe)
+{
+	if (!xe->info.probe_display)
+		return;
 
-	intel_encoder_suspend_all(display);
-	intel_encoder_shutdown_all(display);
+	intel_display_driver_shutdown_noirq(&xe->display);
+}
 
-	intel_opregion_suspend(display, PCI_D3cold);
+void xe_display_pm_shutdown_noaccel(struct xe_device *xe)
+{
+	if (!xe->info.probe_display)
+		return;
 
-	intel_dmc_suspend(display);
+	intel_display_driver_shutdown_nogem(&xe->display);
 }
 
 void xe_display_pm_runtime_suspend(struct xe_device *xe)
@@ -439,21 +432,6 @@ void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
 	intel_dmc_wl_flush_release_work(display);
 }
 
-void xe_display_pm_shutdown_late(struct xe_device *xe)
-{
-	struct intel_display *display = &xe->display;
-
-	if (!xe->info.probe_display)
-		return;
-
-	/*
-	 * The only requirement is to reboot with display DC states disabled,
-	 * for now leaving all display power wells in the INIT power domain
-	 * enabled.
-	 */
-	intel_power_domains_driver_remove(display);
-}
-
 void xe_display_pm_resume_early(struct xe_device *xe)
 {
 	struct intel_display *display = &xe->display;
diff --git a/drivers/gpu/drm/xe/display/xe_display.h b/drivers/gpu/drm/xe/display/xe_display.h
index 233f81a26c25..a15ec29b862b 100644
--- a/drivers/gpu/drm/xe/display/xe_display.h
+++ b/drivers/gpu/drm/xe/display/xe_display.h
@@ -35,9 +35,10 @@ void xe_display_irq_reset(struct xe_device *xe);
 void xe_display_irq_postinstall(struct xe_device *xe, struct xe_gt *gt);
 
 void xe_display_pm_suspend(struct xe_device *xe);
-void xe_display_pm_shutdown(struct xe_device *xe);
 void xe_display_pm_suspend_late(struct xe_device *xe);
-void xe_display_pm_shutdown_late(struct xe_device *xe);
+void xe_display_pm_shutdown(struct xe_device *xe);
+void xe_display_pm_shutdown_noirq(struct xe_device *xe);
+void xe_display_pm_shutdown_noaccel(struct xe_device *xe);
 void xe_display_pm_resume_early(struct xe_device *xe);
 void xe_display_pm_resume(struct xe_device *xe);
 void xe_display_pm_runtime_suspend(struct xe_device *xe);
@@ -69,9 +70,10 @@ static inline void xe_display_irq_reset(struct xe_device *xe) {}
 static inline void xe_display_irq_postinstall(struct xe_device *xe, struct xe_gt *gt) {}
 
 static inline void xe_display_pm_suspend(struct xe_device *xe) {}
-static inline void xe_display_pm_shutdown(struct xe_device *xe) {}
 static inline void xe_display_pm_suspend_late(struct xe_device *xe) {}
-static inline void xe_display_pm_shutdown_late(struct xe_device *xe) {}
+static inline void xe_display_pm_shutdown(struct xe_device *xe) {}
+static inline void xe_display_pm_shutdown_noirq(struct xe_device *xe) {}
+static inline void xe_display_pm_shutdown_noaccel(struct xe_device *xe) {}
 static inline void xe_display_pm_resume_early(struct xe_device *xe) {}
 static inline void xe_display_pm_resume(struct xe_device *xe) {}
 static inline void xe_display_pm_runtime_suspend(struct xe_device *xe) {}
diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_device.c
index 0966d9697caf..53cac055a2a9 100644
--- a/drivers/gpu/drm/xe/xe_device.c
+++ b/drivers/gpu/drm/xe/xe_device.c
@@ -934,10 +934,12 @@ void xe_device_shutdown(struct xe_device *xe)
 
 		xe_irq_suspend(xe);
 
+		xe_display_pm_shutdown_noirq(xe);
+
 		for_each_gt(gt, xe, id)
 			xe_gt_shutdown(gt);
 
-		xe_display_pm_shutdown_late(xe);
+		xe_display_pm_shutdown_noaccel(xe);
 	} else {
 		/* BOOM! */
 		__xe_driver_flr(xe);
-- 
2.48.1

