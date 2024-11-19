Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C8B9D2E2D
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2024 19:44:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFEE710E698;
	Tue, 19 Nov 2024 18:44:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nmxsmXRp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1FCC10E367;
 Tue, 19 Nov 2024 18:44:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732041877; x=1763577877;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=M8n/TPOuSs5IUl07eFb8IAIuCf3xME9EDoQ6kyOgJ4o=;
 b=nmxsmXRpJqKA+uORkWtx/aYntr89RUbOWecsQXmvRiQvO9Ep3QsUMjUZ
 APud8mBrJ1XlCvdmuWJ8lPtE7q9M0Gih3n0PJfJclqo9pRigz/cfnSEUb
 smob1QBRNCEt2WGiOwi4vfYPIf1MVM3io3zsl8PNz2XsSFh2C7ZC40Uod
 Dr4FBcjVo4xYwhtBDJgqmc6Dyvzvmx//wRk3XZKqBZ9+9WR/l42hw+kJ1
 fLlkmPlqCV1/ioAooZrkV/S7k1AA3fH6qKluOVIqvoF/U/bHraQ79jnEp
 V7wK89gZebkTlQeqRzWB7EMF6eVnmF//AU33OGSjUAxgAV9tm5qzSU7P2 w==;
X-CSE-ConnectionGUID: jNc6vZeWTUixWbweysHlig==
X-CSE-MsgGUID: AFnEEQGzTkq6v90XigW/OA==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="54562738"
X-IronPort-AV: E=Sophos;i="6.12,166,1728975600"; d="scan'208";a="54562738"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2024 10:44:37 -0800
X-CSE-ConnectionGUID: JqQEV2X3SVWM+3oDe8Iosw==
X-CSE-MsgGUID: h3avuo9rR3S24Z4Vy+zS9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,166,1728975600"; d="scan'208";a="94583484"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Nov 2024 10:44:36 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 19 Nov 2024 10:44:36 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 19 Nov 2024 10:44:36 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.46) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 19 Nov 2024 10:44:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZgOXSupyAWWpahfWg+UBSesqelBw+SYJOFVQZol+QEWFKwEQGDdJPAcmMj8IZWyYeuopUywn0YihUSlvhP9i46wgZeilR4Tgpepdb9hfChHDlhsCyLgQyRlouI29mafUv+zHk3EaWqLhmyEWzzPgEQYNwYQyhFh3oGHsdC7Ij7yHj+AtCHXaEIifZgfMp8g+y9bhTzLz6i2vhXCyFppq/Sr4JC0YEEC+MEaw0sB7SVkSwDEkADCEZdjpVHumkxzxUZHbSqpkICZehhgEOkTDw3IK5+oNUhxrysHJaSZtCnsP74n1pR6oEGnseMwETJQLlw2FIFa+hhBc3+cq26FKJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xz15gIfvPtpjwMUfwulnMZv95u9qr00quq8Xd7aKE70=;
 b=jOXg32zIkvzb07ioAv5YuMPD79jLBh86Z9gVpR0IuZLMYyzAwAoDtMe/Tbjqz+1h2HaGQ2KIFmE0+l/La1RckNBMMGB863RvRKo8FsIf2lU0mW3SnhmMsqTqQpbOqsJzoR/XJpDY19PRbFnPuo1cL4Cm45oIuutSIRC4cQTHranVXHI4ldK5UDKdvswzacSHcNo2HOURVSAlYw0Nsa32d3j0eUtOyX5lCqfia9RfISdOwFG8Q1XhMMBroGbFTYMdCyfSfFR+eXA6fgppl6OFawGcnhjoW3oVcs4s79/8h9u8/Mq50fKMctY55ugct5E0zZGOHqB9uyIKMXRk0VeoUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ2PR11MB7645.namprd11.prod.outlook.com (2603:10b6:a03:4c6::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8182.15; Tue, 19 Nov
 2024 18:44:33 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8158.021; Tue, 19 Nov 2024
 18:44:33 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>
Subject: [CI 3/3] drm/xe: Use i915-display shutdown sequence directly
Date: Tue, 19 Nov 2024 13:44:14 -0500
Message-ID: <20241119184414.336105-3-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241119184414.336105-1-rodrigo.vivi@intel.com>
References: <20241119184414.336105-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4P222CA0005.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::10) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ2PR11MB7645:EE_
X-MS-Office365-Filtering-Correlation-Id: a4944e71-87b0-4fd9-04a7-08dd08ca35b0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?eVR44g8jmyhEpewYdigYQ74q+jQyQUS0rglZD4A14L5yuCu4fhlxA43tlndb?=
 =?us-ascii?Q?SVPy/N2r1lPQrVe3KMGFHHguYpTe3eVnANMLMhxbeRt9Ke1OkTHnESDxUysc?=
 =?us-ascii?Q?sOFF9KOIlAtn5gRg2XGNle/dIhQ+CSQVl05Hpaawbn8ue6nLe01cYw5NhXht?=
 =?us-ascii?Q?SLU7bZ/blUeQZNq3OKKP9ddN9MBFFsUmm8PFxgRCssHyDnWbW+TlgRWBjeB/?=
 =?us-ascii?Q?2GNI4TN9ouYZfzgvq4dcmNa+qdPkpBGqiThGJq4PGR7wh/17cp3S/Rz8iRBV?=
 =?us-ascii?Q?6z7ft0+Aih7DOLRgX7/cjpJYc6QlLo/1b+4Fs//PW41Etu7A7DKGKKuwsdW9?=
 =?us-ascii?Q?QqmXMI0+lthgW8jY4XEBqlTTYwd7w3Zh4i/yKYmqDauHEE30fOtHR2BDG0ba?=
 =?us-ascii?Q?gIxBeX9XAGJAAyF68CQW5//KD7VZwa25VKvLYe6r3dr5yPtLSNJUD82ou4Og?=
 =?us-ascii?Q?yYqWyoMn6ZLyCbvE7Sj2WpturfDT/Y8jTC/SanpgaJEbmyVgBM7trZRgNQdw?=
 =?us-ascii?Q?hGEzhFo0X0Wo5o7ne9RopCcHdAWVYXicatBiDglALL5J48GHnfTDHsUKhsp/?=
 =?us-ascii?Q?d4NVreYKO1q1pv7bNVY/Ob/wMwFW/Qp9Su0awkh4jiCmnHWqjIXu0JsBpBkq?=
 =?us-ascii?Q?05I/Xmu/f6S4LKgpCf03YfXoqCxNwnM/2kJEhWVvS5aMKfCuz5vTGmCogJ5B?=
 =?us-ascii?Q?nIfmeuLwBA1ZzCYGzUFwTLF5thRsQ2x5eWDyw16DLYJhlpoOtpAGupKQNiV8?=
 =?us-ascii?Q?sbr48oPA3Ip72UX35mZQL8AQKWatwsFbVDodmHXANp9jASrDXltlqrF1V+GK?=
 =?us-ascii?Q?JhtcMeftmmOe6btFv9KBXoVsBEXoJdS3oEMdWgW4+yADTpyIDmftVo8KWqkV?=
 =?us-ascii?Q?zg2wkNhbO5uhYXKyp8zxSM0SmyMSdjkufMfq8uYM3seTSQ+K25QLdc+Wx9HK?=
 =?us-ascii?Q?F6sR+o5i4r133Ss9oYJVGJzGq1szhUzJA0iJPL9TPqk9ZCwN5Se9tgBEXnCQ?=
 =?us-ascii?Q?8D12CzRZ3/h7KwF9X7p2x/MTQNP46L1qA4xbrPGcZ/LJ86p/cgRZK2x+5xIz?=
 =?us-ascii?Q?TXaRQFoqBGP2KX/1eOZ0knkllsjJHP9vAMt/qRhEZ21uM4mqkdgXFKnzqB52?=
 =?us-ascii?Q?MU9JENJKpcb5It/dvEeg6Dc5UpQWmOUu4VfJAKV9prx1wljn4+nlesutGcC2?=
 =?us-ascii?Q?gRZp/bRPssS987gIt1QrgdqfoySN4vxDRpa9PwEE4BEUhq7GrDhdpw0hT8CX?=
 =?us-ascii?Q?EIqPMAnHHtbJ2qIEuDbqeQfb3RL/i++57iRtgVeP3/XVdFKPToxOmtE27zDn?=
 =?us-ascii?Q?KMrKCP1pyDaznAkiCL1R11E2?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ipK+OIFpIurzmirS65OIoH0BY30GKePwmqyl94Ku+As2DAWYZODPCHbWlEuT?=
 =?us-ascii?Q?1fFfOzOlNnAd8e3g4mISEx5KDCufi6c/fKsR0pe6gRXLa+QH7xb5HbsUD7VI?=
 =?us-ascii?Q?QdAUHdyMIG+6JxV/iFLi0JcD+yy76CMTTR8fQ1bU3696zu39nsMsU4U+nCZu?=
 =?us-ascii?Q?/MhFAGXMfz3v0vb9Gu6Tm4ub1UZ5ClwNyLf9wLUI9WrfHoY9g78/9GBjcZUX?=
 =?us-ascii?Q?VP44a8BiIeWUUIOOz13UC0QrQCl6EAz2Jop3QdD9P29sogeF1somTdfA1R+Y?=
 =?us-ascii?Q?UJl6VzDpR6eWYqow7D8rYoGH+E2/3Nw2g0GJKTY4TWh2MUMESuKJqvh+tg/D?=
 =?us-ascii?Q?cSlitrd9bxtuG9V8gaPNN0SSlOBkmQ8yLMirGjwemoNDOHYbQa3NQAEBtlUz?=
 =?us-ascii?Q?EefKHgjThDl7euXvHke3iA/khM/ogRGrna/Y9DomR7yKxO4Zf/34MbraPuvs?=
 =?us-ascii?Q?VlDrGCFKt0PV/SNFH/RfFD7857c+rgu5T0nG6Ye28EtManZb/AwTRoDiwYJk?=
 =?us-ascii?Q?HT9OLMXi+1RW9jZwJfn9aht+JtZE1F3B/RkOncOp5xBzyWNVo1UTmdQfvbFY?=
 =?us-ascii?Q?z825QUrQZZpmhmFdsT438FD2DjqUcqEh5VYEnk6mdGDwmGH018Rz4Tu46Xc7?=
 =?us-ascii?Q?XIqIETwLtwIYeFGhssrDxwezaiw7fGoYgXuJucL8jIny5e5BCGiwjtIEJoNU?=
 =?us-ascii?Q?JimIZgfDnKu/QjpJF04+ZlVNajWEfbYqwDUsFuvkJHi5mSsRQu+Vuurelylg?=
 =?us-ascii?Q?Pt7YHEofLsVYHV/Xo6HoBejpDCqu2IdWKbfI+iQd4URSJDvbV1QNsfM1BTPs?=
 =?us-ascii?Q?KSTbaXI1Nxvgsr9EiA+3AFr/vyOCav5+MSAr6Bq6eLnXFagyC7J54W2RBoTR?=
 =?us-ascii?Q?0AtFmvpC/Xo5PUGf8p0nxKlI8aHy0B2K5rOZDAqamj2n4u3yPyi0mX79pNT/?=
 =?us-ascii?Q?QMI70al/0iHScgB/IkGL4aXOqOSc+ziUQzdsfdFHJpe+bkJ7Zfl76mAhG0hV?=
 =?us-ascii?Q?EX23Av3JFX89Uu+esu7H6fR7dXQ7odZZqi6RtvkDehhI7Crb3KUNmKcNzHcN?=
 =?us-ascii?Q?yR65iyBAB9cQpMPWvcc+7nQxAIVb8ytqKVRaDEJW67PFHcXN70mQP9bxpQ9R?=
 =?us-ascii?Q?YC8MUElVLNmzMz39bSWoWCXBB1tpJT8WqRrR0GR4BwsyynP6lWVwAvUULoHD?=
 =?us-ascii?Q?OSHDYUmrPwTkpNCh6uT7iRr7HIaQ1JK8/IXnLXt2wNt/fCrWlNXd+GMEY04d?=
 =?us-ascii?Q?eo41j/NVoHEuKDAwpNStdKmGLxydVUMLFsvySe9OqLpvMYIioXraGQZw60gg?=
 =?us-ascii?Q?9QI7pbdbfWsl1dF320shKS1e2mB05l7dobuRu122krnHl/86n3TIiO+oL95m?=
 =?us-ascii?Q?TTE5XWVnmcwjOMISwXIqekk7HnbEJ0Wxe0EAqrb8XBXMCLdVk0MMSeG707Ik?=
 =?us-ascii?Q?iRXgUDtqxJ6IrHaizgzMp5gv3cpFcUipA9ZMbyx6qUHS4pK2ysdzyIZCrhXe?=
 =?us-ascii?Q?IgzQAjqTgL8msfjGkAHw3lkbvRqFRwCcJrr5RWeYatgdlNrm97PEuWdDCtla?=
 =?us-ascii?Q?R8Ue5d6sqaY2w36pW1ii2jI1wpoQqla9p11AN5SDYB4e99+Opyg48sViRtwB?=
 =?us-ascii?Q?zg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a4944e71-87b0-4fd9-04a7-08dd08ca35b0
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2024 18:44:33.6972 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k91JdqBA9p1+127Ry5VY8fmfhzA7jkkkKC2wb1Az9rRV9e7zMpU+P8JHA3sTLVEcxj3rJnhINNEcr37Y16rO4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7645
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
 drivers/gpu/drm/xe/display/xe_display.c | 46 +++++++------------------
 drivers/gpu/drm/xe/display/xe_display.h | 10 +++---
 drivers/gpu/drm/xe/xe_device.c          |  4 ++-
 3 files changed, 22 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 4759c3cf5915..29676652bc54 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -10,7 +10,6 @@
 
 #include <drm/drm_drv.h>
 #include <drm/drm_managed.h>
-#include <drm/drm_atomic_helper.h>
 #include <drm/drm_probe_helper.h>
 #include <uapi/drm/xe_drm.h>
 
@@ -357,32 +356,26 @@ void xe_display_pm_suspend(struct xe_device *xe)
 
 void xe_display_pm_shutdown(struct xe_device *xe)
 {
-	struct intel_display *display = &xe->display;
-
 	if (!xe->info.probe_display)
 		return;
 
-	intel_power_domains_disable(xe);
-	intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_SUSPENDED, true);
-	if (has_display(xe)) {
-		drm_kms_helper_poll_disable(&xe->drm);
-		intel_display_driver_disable_user_access(xe);
-
-		drm_atomic_helper_shutdown(&xe->drm);
-	}
-
-	intel_dp_mst_suspend(xe);
-	intel_hpd_cancel_work(xe);
+	intel_display_driver_shutdown(xe);
+}
 
-	if (has_display(xe))
-		intel_display_driver_suspend_access(xe);
+void xe_display_pm_shutdown_noirq(struct xe_device *xe)
+{
+	if (!xe->info.probe_display)
+		return;
 
-	intel_encoder_suspend_all(display);
-	intel_encoder_shutdown_all(display);
+	intel_display_driver_shutdown_noirq(xe);
+}
 
-	intel_opregion_suspend(display, PCI_D3cold);
+void xe_display_pm_shutdown_noaccel(struct xe_device *xe)
+{
+	if (!xe->info.probe_display)
+		return;
 
-	intel_dmc_suspend(display);
+	intel_display_driver_shutdown_nogem(xe);
 }
 
 void xe_display_pm_runtime_suspend(struct xe_device *xe)
@@ -408,19 +401,6 @@ void xe_display_pm_suspend_late(struct xe_device *xe)
 	intel_display_power_suspend_late(xe, s2idle);
 }
 
-void xe_display_pm_shutdown_late(struct xe_device *xe)
-{
-	if (!xe->info.probe_display)
-		return;
-
-	/*
-	 * The only requirement is to reboot with display DC states disabled,
-	 * for now leaving all display power wells in the INIT power domain
-	 * enabled.
-	 */
-	intel_power_domains_driver_remove(xe);
-}
-
 void xe_display_pm_resume_early(struct xe_device *xe)
 {
 	if (!xe->info.probe_display)
diff --git a/drivers/gpu/drm/xe/display/xe_display.h b/drivers/gpu/drm/xe/display/xe_display.h
index 17afa537aee5..f139a88da3a5 100644
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
@@ -68,9 +69,10 @@ static inline void xe_display_irq_reset(struct xe_device *xe) {}
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
index 930bb2750e2e..674cfc34a992 100644
--- a/drivers/gpu/drm/xe/xe_device.c
+++ b/drivers/gpu/drm/xe/xe_device.c
@@ -821,10 +821,12 @@ void xe_device_shutdown(struct xe_device *xe)
 
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
2.47.0

