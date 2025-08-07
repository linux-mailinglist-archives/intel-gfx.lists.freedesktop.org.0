Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F02CFB1DFAB
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Aug 2025 01:02:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F8DD10E4A1;
	Thu,  7 Aug 2025 23:02:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lAnIjS58";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E06010E4A0
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Aug 2025 23:02:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754607732; x=1786143732;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=FD65UlV6WPyxUzHbqZqmll8WBD8xkpWbNN3EFuZufKM=;
 b=lAnIjS589ZhnbqEh0B19Cw/yN2gyCxWncLYLprLDOuVnQFJA6QYN01xy
 drMIGLiQcgXUXA2aJK25wXLL1OmBwUUp9hwHTDDwkHPbblo+Igj/qkHYN
 3GTjSBVBSkVVNimudOTvytnIUJ0EM3FQl5a4dvUVrH5b5bSUMxnTFUWOO
 72gN1GgH+sSVKd5Gl5zJptTzV04duK4rjqDLvCZl2MYVPgkXkT2hVJtbN
 GO5FnlCyuzD3XeJsaWaP+9EluilkjjW0MFGDqdHoDU7SqAV2HTHXaeAaI
 V/RohWcG2njz0+FvNoZ78tAso7eesvsEynErfBAGt/mHY8ww+imfq1cNH w==;
X-CSE-ConnectionGUID: 0+7mZuEqTSyh+aLQ0gce6A==
X-CSE-MsgGUID: Z48oxEP6R6S5tAhKFxsFsQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="44547702"
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="44547702"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 16:02:12 -0700
X-CSE-ConnectionGUID: SedUjNECSUyBxCPZ4al82w==
X-CSE-MsgGUID: UeXCgEhJTL+sj3rGRvTi1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="165080020"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 16:02:12 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 16:02:11 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 7 Aug 2025 16:02:11 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.88) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 16:02:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cLpxRXvP2495qv87vWv58SkJOnmXX2O8pyFJ9EBIqvpWO++Et6BBieQuwj7/bVO8eDIislr+95MtBa9Xe7S/tciyKKMav1p2AYOXCbVhKl++9mBS7l3Ai7jVC/oaw0cexlQPLDdo3uNBoFsjEi5up77h+YNuHvtOy1Hx1MOopsS8fBfianct8l+JHuvaMDbadTdSHCc2lVJTGEqx08TqGllnucq7SbaJt4yhnMm6FpPw65OIFwsNnoULVhnV7c9/Y1xrDq5sqecIsAsEIRuGMychhJfRfm/HGqwKQ/Bs8JFZmQOIQ6HoLpq5yA2+XV/uRiBeRBalQvUR47ubqVqGoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eNg6aOR9LR8+JHbph1/b2T6Hja55+U0gndtC8w+QEXU=;
 b=vOCsdhZeXRpEelHKUY7P4SyfnZtxWN2piVLe0sHfMF/w2NDEseJggBNPNvLIYHFMES7fk9F+BRc8JQyTyDKkTgnLuxhYA/+qEUxXIOYsIs1dZ7spHIwS7r5LVrrvgUxtRDRRO43c3+ptyNHFrA9X6F4MPEeDHrVAvNalMxNKFKXgAPEoI+Rw5GaOJJ6Pf8QQwYO6kOFtROSsJlIXLJG2GJfN6IUrRMRLKhVe6eHhFEyMii/YIkH5HDS2o2W3oETubId6iZ8Q3EgGqe3JSrr4EShs6OvdZ3AOea3hqvHpFRGdBgv03cvMSlUljY1/pfHfbUnM2R2N49BfknK2xmCiTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by SJ0PR11MB5134.namprd11.prod.outlook.com (2603:10b6:a03:2de::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.16; Thu, 7 Aug
 2025 23:02:09 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%5]) with mapi id 15.20.8989.018; Thu, 7 Aug 2025
 23:02:09 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
Subject: [CI 7/9] drm/i915: Clean-up outdated struct_mutex comments
Date: Thu, 7 Aug 2025 19:01:51 -0400
Message-ID: <20250807230146.128362-18-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250807230146.128362-11-rodrigo.vivi@intel.com>
References: <20250807230146.128362-11-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BYAPR06CA0053.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::30) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|SJ0PR11MB5134:EE_
X-MS-Office365-Filtering-Correlation-Id: 7f0077fd-f1fb-41f4-af76-08ddd6066fdd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?hCeL/e+JpiqAoj/A94w6+J8MvLN/Sfp0p8po/lJCKJHs1Zwa4iuSoUXLBaM2?=
 =?us-ascii?Q?PDrxdGZXzRVCI58s0HR318m8BE4xhbUkD5XcvU/KgVRIxmDbDPde3RGVL7Oh?=
 =?us-ascii?Q?VitB32fIRvgH7ClaQ5L4iQSq5/XHGVgmqXPqV89Wd/ViLpl6KL0uxFbFotXC?=
 =?us-ascii?Q?ZvXfi7CDgWR2Tcdn8dSXuUqVzz28x3pbzF5BJzEdm8g3VGQe+q/0OYqYwmbX?=
 =?us-ascii?Q?X1rguGaQzqA5TFnwV4rk2Hxl74JPus5VTLjfkLt6Hm9fExRQF+iZDGt3v3mq?=
 =?us-ascii?Q?EVPU7VrLgjg6S7bEll7ldetDI2arOTOBTb6RMusxHEXQsV4YhDApgItZ3+Qr?=
 =?us-ascii?Q?U3/lDBX7/JRVXndJE0+0sbq9uVMHiyuKvhwlItNYxG0VhTdXMW6HTFeINzX0?=
 =?us-ascii?Q?OY1CddU/ocQbycaUwccxs6STedNqwxJjDjZ6bpNZapsYbhTkhiwwD5wRTsJ4?=
 =?us-ascii?Q?6LAnOSKKOw5+mhsLWQiqtwzTC62zfotgq7CDyZOs3rvUGO0zZwdBujd+8Bqk?=
 =?us-ascii?Q?0NpKcgqiEvFF/w3Vl3NSQOB3kVnm7fzuDCGDI0YUDXAlWzqhgiqjMtSZuJve?=
 =?us-ascii?Q?+5dumeIcPHcfQfRtPy2pdFJqtJz8TMGmZ52WWMaXiTKWoV/IldS7CTCCmtg7?=
 =?us-ascii?Q?F+13muIoILJtUqQ8NXC1yal/KszxCovDtXq5UDysf6vQbg4pGgeypfXbTVIa?=
 =?us-ascii?Q?HvdzptlSjXR4oOlcysNE5WwvZK8yRCRenqlOGDJk7LlzGYjzq8QeAwqiLZnd?=
 =?us-ascii?Q?nH5GKvqSErOUS133j7WQ2sKc3BBTaH+sMv8p5ns4LKVXgQ6yAFdxgdmKSSoj?=
 =?us-ascii?Q?XkuF7Jj63biRZHC61ZJu24zWREv501FJ2v0ZAUsZZ74JnhrZg4l2M6RB4mr3?=
 =?us-ascii?Q?vtCXBlsV83i/hLhgkiITCjihjqw1jrXlb+r28MryQrThTLXqZ/UQz31NoZox?=
 =?us-ascii?Q?sMFB85f3bEkWEgosQ8NW7wKVFwire5eRAvPB7SmPzMH4+mIT5a7z1uQdei37?=
 =?us-ascii?Q?wEER33Y0Ac32DMSMYC4PiPrLc5zqXgZF/HxwrTOSZDqCaPrQxo6xBkMYWC59?=
 =?us-ascii?Q?gIKmf1Yybumvp61qPAOlOztYN4+R70oFISgu2hcsup+aTSDzgA9jZ3vo3Ow9?=
 =?us-ascii?Q?BhN2Y1SLKxlp84jF/kcU0WgKAD29saeZ60RVIzvJjyhH+g1t7mRHPsBnqBOb?=
 =?us-ascii?Q?cmWbr+nFR7cPzsVtg2n46GWBjetTk3hLK4FBsfH/3gFXc/O6Z1CINui18i9G?=
 =?us-ascii?Q?jmv9/SOBsW4YIZV16SmtXj7H+/RQ+MovU1YV1TpkaV/wpl6Ig4Z4trW+YKPQ?=
 =?us-ascii?Q?bM+J8TAwZjLkv/6+5ypW4+B7Jc6sWTlbLZOt8nuJ5/2j6A+CRpLJW8Qh+Y5X?=
 =?us-ascii?Q?rSA8LylBpRfpOYZQ+irsGMRMdEKKK1boXWm9rsYylEsgRWaXkSxLoFWIUzez?=
 =?us-ascii?Q?4/bYUKzbUSs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7cCiVR1fSDDtS5l4DycU+cisT2+QSgUAFAmTUwX8AlGRWefYxM+zTh0ZqSkb?=
 =?us-ascii?Q?jxXuejIMo32ZWH3w0NnQ4eQDdwqQbYXRbIEvwKz9bJttLVbe3S2nyrSJm7hZ?=
 =?us-ascii?Q?q+AXEQ2IIwFWh/YCKnZCSVzAQmuKLasnuqyl7tp42z8V/dN/oMkbjW3z13kL?=
 =?us-ascii?Q?8MbSLgq9+hfiqQHou0DDkHInm8cpfzCGOBT/viOrbJR5JkHSOZ0C0qLD0bB7?=
 =?us-ascii?Q?8gOw0Aw5hL7gGxFiuYIsrh5Tp3E0RoUR4cSdN5H32LrELmEZ/oYVEdDg9yqc?=
 =?us-ascii?Q?M4CmJSB1JwATBYSjDIIxzPen4+9JHfiPnJwZ3h60psqedXunaTXlvBBm4Njn?=
 =?us-ascii?Q?jop05rBX2QrNZiVrDDVgLFKWpHoTYmtM23VBrv2cPaJ1rPwvH2pGYVALbBHP?=
 =?us-ascii?Q?vieJPxmNm9pmj/LwWK5qKZfo+9qJ+MDXcmQFFKtAKTz3TQkQwp00rt4SOJVV?=
 =?us-ascii?Q?K+KNvaYFZUL3nYVcE6CsbQcyKE6EoL1++JZ3hzdUphx4rI/pHYamf5h0IvzL?=
 =?us-ascii?Q?ZGDdVH1REMNmVzZmBNKUI5OxDpCIpLI65/7ox9ghJDoxEcffQz2SHr2ieQAg?=
 =?us-ascii?Q?dFdtBC/KiIXTePopDeOmUsRWpV5zUPjS5DXH6ONWhn8pY0xsfUY9eRDhwOmf?=
 =?us-ascii?Q?Jv2UzRkpOflPMHH7aN/hMQj420G3E/5jElvkWqFBZ3UKnzgppMC4tEzR/udz?=
 =?us-ascii?Q?Fg9TFgtgvELY/gKZKUW+1DdUo24wKAINpDtNBnfvKhFxkeOxx+pDnvnTIx29?=
 =?us-ascii?Q?hVXym4pt3b/jCBQ2dGJ6XNQJU+zJg64vbFwIISWWr/qXaD2QIZ0+HkFSTOiO?=
 =?us-ascii?Q?p/qj26LuNA9CHuX2/1e03vxqH+Z9T/S5bvR97jr2nntArMKkDZHy2yWSU9Cb?=
 =?us-ascii?Q?AyBCNFg7ZyKlQx4QKvAd8J8oH70Ild6f4vWcJaPua3SZRTFbZR1HmMx2orqe?=
 =?us-ascii?Q?StjBfflJB5TKpv9Dc/nmFjgiJj3SxxT+NX9uQ/e1KQIjWp3ZFfruALLdjcki?=
 =?us-ascii?Q?e6QgjzuNK1E3cl2uFJaqSCE2Qjhde1zIeGPADaRbQzuXHSYzZCfADR9p6rnS?=
 =?us-ascii?Q?vEdUqOxhbr09tyOJWnvGe8VMydVDdbOWbwyY6on3/EgF8marjtXe1T9HmcGi?=
 =?us-ascii?Q?Zq+uCYYi1Hvqx7d/ZyPyq3qlMs0w/hUMLhA0B2M7jItkZCtcGtx4NMqsNQ3f?=
 =?us-ascii?Q?4ZvavKAbjeCvdINYnoHJs1yDIc99zbfqVfcbS4O0nGbqzCmGe9CHpHsO4h5V?=
 =?us-ascii?Q?y1Ml0c1aPJqhOgkzk0pJn36KdcY/f/i0RJSddvOQ0CZw9VP872VdynZX994v?=
 =?us-ascii?Q?8TsblkoPNtCMeP6gCdPHq7sm76tB+AQpnLTBDgwSXwyacjKHCwPLb0T4E5DC?=
 =?us-ascii?Q?8bI98HXKSO+hoAB/Ei5zC33D0Uzj6gkQcR08au41jv02GQZHglgySexS8i9b?=
 =?us-ascii?Q?Zgrq97Kp7p312K+cl9xfrudiIK6CdA24w/XVxhVPjEfOIljT00OULiOjt8Gc?=
 =?us-ascii?Q?TZG2urv1k7phYS3pAQq66XfoojB640r0SGL9AUMJwsxqJfH0+NuIo9S7Ynlt?=
 =?us-ascii?Q?GJtg9QQzaKRaiEA8kaXbmh/7qJyr6ycizLtnwkR9l5qA6NwuZPjdoNJ/pX9z?=
 =?us-ascii?Q?gQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f0077fd-f1fb-41f4-af76-08ddd6066fdd
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2025 23:02:09.3425 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XE78uLdWQjHLWeo+t8SOiFJDAL4zTm79E+qbYX6ufEd0sFRHt7Cf5/pdPK4wLkw10onrd5yjWxA/meZyZ02csw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5134
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

From: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>

The struct_mutex will be removed from the DRM subsystem, as it was a
legacy BKL that was only used by i915 driver. After review, it was
concluded that its usage was no longer necessary

This patch updates various comments in the i915 codebase to
either remove or clarify references to struct_mutex, in order to
prevent future misunderstandings.

* i915_drv.h: Removed the statement that stolen_lock is the inner lock
  when overlaps with struct_mutex, since struct_mutex is no longer used
  in the driver.
* i915_gem.c: Removed parentheses suggesting usage of struct_mutex, which
  which is no longer used.

Signed-off-by: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 3 +--
 drivers/gpu/drm/i915/i915_gem.c | 3 +--
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 15f66a7d496d..63fef3873a38 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -114,8 +114,7 @@ struct i915_gem_mm {
 	struct intel_memory_region *stolen_region;
 	/** Memory allocator for GTT stolen memory */
 	struct drm_mm stolen;
-	/** Protects the usage of the GTT stolen memory allocator. This is
-	 * always the inner lock when overlapping with struct_mutex. */
+	/** Protects the usage of the GTT stolen memory allocator */
 	struct mutex stolen_lock;
 
 	/* Protects bound_list/unbound_list and #drm_i915_gem_object.mm.link */
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 8c8d43451f35..e14a0c3db999 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -847,8 +847,7 @@ void i915_gem_runtime_suspend(struct drm_i915_private *i915)
 	/*
 	 * Only called during RPM suspend. All users of the userfault_list
 	 * must be holding an RPM wakeref to ensure that this can not
-	 * run concurrently with themselves (and use the struct_mutex for
-	 * protection between themselves).
+	 * run concurrently with themselves.
 	 */
 
 	list_for_each_entry_safe(obj, on,
-- 
2.50.1

