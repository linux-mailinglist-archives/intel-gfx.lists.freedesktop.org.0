Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98EECC8FCD4
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:52:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 089C710E8CA;
	Thu, 27 Nov 2025 17:52:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CGsDVwMm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA2EB10E8AD;
 Thu, 27 Nov 2025 17:52:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265930; x=1795801930;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=/Opnpc1Qu6GifuzT8LOnbH/6VHK+AoiDYLzhQghndwc=;
 b=CGsDVwMmvXsQub5GXNNaHdSLm/2Myte/QBj6RrIC2Dqs0Y+O6Diir+bD
 /rif4Td9DWUGHlqdwlKVTdHPGEly19x5KsIy0s5ttCC1rsaFQWHmEIH4S
 tjf7a/Y6ABWvOAVh6MhXEu3/pqGOzZUfFjcbyGiaJabIJkSup29jP0caU
 tKi2vBKLGzklnC+CuP5WOwMUs1/H1owchxcvMfB+pTS6KT1n38Us2bxxB
 86dG135s7c40sxEXOF6fBLbw3dpfnO/8UtFcHUx+GpfDvnJiFj0uD+a1q
 e1WXEXXgU7aWaULu54aGoEwglUCGqpUaV2HRyGfXUZLNM2rNCu5BpMaAK g==;
X-CSE-ConnectionGUID: kC9V2yx5RXmzqjZccS7OQw==
X-CSE-MsgGUID: C4+ouNL6R5KyMJqAIGaTBw==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="77003050"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="77003050"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:52:10 -0800
X-CSE-ConnectionGUID: 65Wl04xkSzOtcswbwUCreg==
X-CSE-MsgGUID: xWbaKgVuQ9STbdvuTK0deQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="197453735"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:52:10 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:52:08 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:52:08 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.27) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:52:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wbXgej3P+7utEH+JNdXsO/Qr3LO18GGyY07vvbSV6/ePBHxxPXC8hqBxhaObjWXlz/Czb0+3Mwa+U0QEbk0nqCdDENcRIYuF9hoesQJKdS3MHShzPK3Ep15xrUeD5IVkEeEEqYspYNIF2SnxH5BfXPYavnrX92Wbuu9obe48FPWrqRPMBTCxETLu4DHwySSSpD0jwtN0gURZjLzaayHyESSceq2fMNSftSURpLddOBmcaiFQYeHiql78GH9JbXPWyxq9wYFF3zAzRMcNORlqsf03M2XiMYcnUD0nJty7CF67CPgIrJnXJUfkSscF6CejIPcWTFbeluT+UL+ktWI0cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CDIc9AtWT2Oq/M4sIztOBUqptQ8TWBUGoGrQIuDwccI=;
 b=V25weLDHZRoB+hSK8QP5lQDSc1XusWE+GhAWk0wHCREyxisjXKifDXGwoC0fD1Vt5F97JqhtY+AbbBSvTFZrH76OFAwqoxWfGocwVqBT4UIu5odW7YHq7oNyLBq+N/jCkZSfdaU7vQ1m40fBV8nLFDpwlOwP5JeTchscMClv6MKhaILNFk5cDkwaXs/7hjS56cqhJfU6H6hsZ48d3g5aHDbqGtfkhxffMKFuYgzv4/p5ciSI5G5lm5ulsyDfclHdIg6uAkn1yUopjLmv76EsQM6Lu8JZLGKvjVeqaNs8S3ZD2UcmyLaU+zhw/PFfJft7Zg2g4fYgUCGUAK7sEHc7vA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS7PR11MB7887.namprd11.prod.outlook.com (2603:10b6:8:e2::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.14; Thu, 27 Nov
 2025 17:52:04 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:52:04 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 48/50] drm/i915/dp: Unify DP and eDP slice count computation
Date: Thu, 27 Nov 2025 19:50:21 +0200
Message-ID: <20251127175023.1522538-49-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS7PR11MB7887:EE_
X-MS-Office365-Filtering-Correlation-Id: 9553bfdb-bfb0-4b56-63e5-08de2ddda445
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|1800799024|376014|10070799003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?jTf42vusD5eUQlfNGWvv1o0uEobQih8GGKOtwq3aHdBBq+NsikbpRhZ271h3?=
 =?us-ascii?Q?euUjJv6oAdkAqY16yQI32SQZXkK2aYWI7hL/suhaYHDZxTEnKKclA4Hp/yRr?=
 =?us-ascii?Q?WLZq/dxflm6j07dsS1fpLvf+IVZzrdTHdt7FoFibxsndIG57knvI1E3S5j/F?=
 =?us-ascii?Q?NKeqIe2mbD3kKzkSUtU3VZMaCjdYU8SPTK2UxECnRXKnN/ICEc0ZqUDq80vT?=
 =?us-ascii?Q?nArRI/o0asiyNmLkmmAHHX8n5ZsXGCLFM52GO/vlwOXk1ubdLxA35e8gOqit?=
 =?us-ascii?Q?SojEBB1bq6XIVOVq8fHhiwnEQhnPltp75c2TUwI8QRgPm5IGoz1IGK4WGlPG?=
 =?us-ascii?Q?90jzwUYoiODJq+sm0T+L5OQTOioE5SGslaweSo1o8ubRxNz8LJWJm2LVxR15?=
 =?us-ascii?Q?/WQd/zMmHgZ2O3OIDBj7dtGRyN8sa0DC/DDmXmT/jN7WqUSjJnbY8XjiaGZN?=
 =?us-ascii?Q?tIdbpggCwk54Dkm/YW6XL77QFyCye/2ZSM6SwJA5FkTCmqhrQh19rqzJ1Hpy?=
 =?us-ascii?Q?3wvO5fArDNe5OYKoAoJW659wJS3YbXTkoIjMnqE5qGmA7sVXAHfxQCzkEH3v?=
 =?us-ascii?Q?M4qwzQJpaV/GPx8YeLh5GlgnHl4k45FsB0gAUHQZXkS23J0AJJiwHA1P/Mwx?=
 =?us-ascii?Q?G4QVKqVhmFt6rw4qIEyxOtnM7Uv6SbNpRzePWcBpkxSIDb552MjVKnmOccG9?=
 =?us-ascii?Q?draK3uS7wnTNHKQ9B4Swr3NChx07fbCtJn3C/Iyd15S/ndXwBEr5Dx/EjBiu?=
 =?us-ascii?Q?UBmn0PpIA9tg5wv3EQJdVJha4XWWMS2WaEY4AvTNf65H3LtDUSzEgr2/phvv?=
 =?us-ascii?Q?cmmbAA3EUtPAIw42ag0Ne8Sd8kBZKfNz2E3rsRj2vOQXqozmD73cjejdbkQ3?=
 =?us-ascii?Q?8vDMJ+i9jaN/8y77yFoLI8EC73cAhnpzP8FEKa3P7HWDHWmr89VF8YpVhx0n?=
 =?us-ascii?Q?CHEY5nL2ZNWOSNHwtZhtlub5kIMcUgpDBdB29pk0vlLuRUNIG7Z7XucYZM0o?=
 =?us-ascii?Q?TF3EzkZgDx64TAX6QlsCvGcUW71Wl4viaXDWCppXcyFd8s5d/rgwSLomHpwR?=
 =?us-ascii?Q?a7JyjDcKRvZCbJISAvoehYa4yQgEdej3XsMhIYNG6fuaKpeUIyACxUR57CdI?=
 =?us-ascii?Q?b2UOk4mdwIIehNAIBAIHVFhaaVxrRcjyxvZfQH5GXe7BRg+LxeEi4u4/5VKa?=
 =?us-ascii?Q?v5kCiiT3enLLP4FKquNV6FQPLUpxTBY3IHEvm2PJb07pNQST7YLtQEffeDYk?=
 =?us-ascii?Q?DwpFOsT53TiBYj4EBSSs2EalE+OfokD6kWeaeFwUodA9vYxIQtkxQxG2aX60?=
 =?us-ascii?Q?iCgZz+qw8WDQuvN4P/PW4eEMeV3JxjxPBZ8B8vz4plKyd1KC299QpW4aFzSR?=
 =?us-ascii?Q?9mMWRV2T1PMMfcjpgSetFxhPDoi/WkriRa37sCNHh/C6X01iw2M6mrNwki8g?=
 =?us-ascii?Q?2jRNn8MQP/kzkTuwt4hDYxKUJ63PJc86?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?j4zUuUUkXLhkgbdiDXW5F8FN/5o65j5R7+a/Wb2dXzZXAKpCgMWfmyphUbE5?=
 =?us-ascii?Q?p4zMz/mzdOPVkiv/o7GwKxwajTuNoPG6kfkC/lgSKZqTRuj0tIovGbEs7pl4?=
 =?us-ascii?Q?auICXMWvMgfZ/rv/HlXs8BsP1Pn+NxvyFP/+AEfp+OoMwc8Nuhhu5PXpXRN5?=
 =?us-ascii?Q?byWyy4TcdR8G0f5EU2JVlJi+1sxQdJHLDZCyrOKasI1BzjoTsQVemwewKQDe?=
 =?us-ascii?Q?99RzLcZT9MAbpiUZ3+iT+c0vRQZTdWWepzHtYoWNmZE4l2K0K2EE/Cct4TMX?=
 =?us-ascii?Q?LDr9QQsYKTA5/xyTROMClZhC/S0ua+rGLAdv6RBunqo2A4fIyhjA0IZ81cB8?=
 =?us-ascii?Q?bL01hjLoUPAASR2vb1cLpcUTytxfhEjqBYuAjl1eMukoLwW31vOn/QV6bhgB?=
 =?us-ascii?Q?SAfJcJ8BTLQK5uqZVFMrDoki24P4KgHGg05hJL31+v4RQJEc2hqWMWErezI2?=
 =?us-ascii?Q?Xer/foJaiR4nRJW/zJmxm/5H0y1ZD9YH4ElfFlWq2M7I1Y6kE+pTgWEWbJ2x?=
 =?us-ascii?Q?Uwx2GtYHWa+K+Gfwwrpl7eeeLnGcrqJVMcs7KmfEC5whZ8NBJRT7B+pI1Zn+?=
 =?us-ascii?Q?MAoE5owSBlAsV4fTV68jrlepw2KCMTH2uYI95QOEFbAGLa8mOgaHoUCmTK/M?=
 =?us-ascii?Q?UOdQ+CKA29U1iPYSwHyKTiQryga9DYH8EemcHsqwVwGm/2jEca+fswl73wXS?=
 =?us-ascii?Q?uA5IMx9ZclDWLqYbvmL/+tVGzRreoHDBcDM62wzm6nPA7UBhF+24X0cK8jDZ?=
 =?us-ascii?Q?lcq6N25W8bhubF1nJE5bZYBvObrZ4oSjeja8T1hBik+bRw/6QXWRvCrxY5He?=
 =?us-ascii?Q?4f3OL0tA8aEveZkFPNbyF1Fq2QJHvksge1/Hv1bPtiXVcA6WBTUSFxYOIk0I?=
 =?us-ascii?Q?tuL3If+kwHfUR6ksA1jL5TNQbXGH2ZPw7lXqjsdjO/T2OFKM/hZw4Wy1cyVb?=
 =?us-ascii?Q?u/HIK5n1Y/rZnbDOq+t13fxW4VtwTb4/G5sAGNs4bcyRvqXlqhha5G1yE3ua?=
 =?us-ascii?Q?B2cXiYfrOPQdGKidxAvDpUO26WEW6LT5PWdow2bjeSbjHS6njWL7GjZYDU9Q?=
 =?us-ascii?Q?P1He4hZYKIqNC/lh4F5AbZ9ES+zA2pLSw7uHXohZRVerYy2+BgJ4+kypc6yf?=
 =?us-ascii?Q?dt29k6miU2Zeg88aP5v2GSz9fz2UnJ0mCFcESPbFDeybXz+a0YwEOvsfof2H?=
 =?us-ascii?Q?XS9qAR2wLx+h65CHSGKi/DV3aVO7mB3zYhbXBVH9LlIRRiiAbdgSu0RFy/Le?=
 =?us-ascii?Q?fzs4QJxN8eiB33sUFedb0mdEQDA3B3LwVr4MljDeOUNAlSrMzT6ZjyT2r/fW?=
 =?us-ascii?Q?vqncfkA4jTHqple152BemRodIEEeebwbpSQpZJ6tt3dMHPAllGGepwJdZPp+?=
 =?us-ascii?Q?DxsEeaXd76nxZ+7+R6rzRaeNSQXojnnsrxvSwSPmPa1IQKqdsTFoI8nSCvM9?=
 =?us-ascii?Q?FJq4YBQeWOUiRNYIipELHMSIYrwD41En/RYfgY8WSuOOrCk4DbG1reslk3LR?=
 =?us-ascii?Q?hA7kajE+9Dg+WX9j4ZfnsZOrUfElSSGmNZxSKv0H0h0qjbO+/NxuwYNOQ2R1?=
 =?us-ascii?Q?Vuff1JMm2WMN6YHlEL+ulUWlfEwavRJsPXBDJmfWYavJXoOgI2o3Q11qeuAh?=
 =?us-ascii?Q?8lVFWdH4tcUV+MjCgY7TkybLCejvp2ycWSK7ldqY/pCl?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9553bfdb-bfb0-4b56-63e5-08de2ddda445
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:51:50.1533 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZRDQOdjGxyMAZFWW4btFV4ufN3A6fIkuNsvs4wjZzsVANqEzHu2f+wRq3SPQdm92e+MMi1BJcqxdy9/DKixFtw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7887
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

Unify the DP and eDP slices-per-line computation. Atm eDP simply returns
the maximum slices-per-line value supported by the sink, but using the
same helper function for both cases still makes sense, since a follow-up
change will compute the detailed slice config for both cases.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 50 ++++++++++++-------------
 1 file changed, 25 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 461f80bd54cbf..0db401ec0156f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -948,11 +948,20 @@ static int intel_dp_dsc_min_slice_count(const struct intel_connector *connector,
 					int mode_clock, int mode_hdisplay)
 {
 	struct intel_display *display = to_intel_display(connector);
+	bool is_edp =
+		connector->base.connector_type == DRM_MODE_CONNECTOR_eDP;
 	int min_slice_count;
 	int max_slice_width;
 	int tp_rgb_yuv444;
 	int tp_yuv422_420;
 
+	/*
+	 * TODO: allow using less than the maximum number of slices
+	 * supported by the eDP sink, to allow using fewer DSC engines.
+	 */
+	if (is_edp)
+		return drm_dp_dsc_sink_max_slice_count(connector->dp.dsc_dpcd, true);
+
 	/*
 	 * TODO: Use the throughput value specific to the actual RGB/YUV
 	 * format of the output.
@@ -1016,8 +1025,10 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 	struct intel_display *display = to_intel_display(connector);
 	int min_slice_count =
 		intel_dp_dsc_min_slice_count(connector, mode_clock, mode_hdisplay);
+	bool is_edp =
+		connector->base.connector_type == DRM_MODE_CONNECTOR_eDP;
 	u32 sink_slice_count_mask =
-		drm_dp_dsc_sink_slice_count_mask(connector->dp.dsc_dpcd, false);
+		drm_dp_dsc_sink_slice_count_mask(connector->dp.dsc_dpcd, is_edp);
 	int slices_per_pipe;
 
 	/*
@@ -1470,9 +1481,13 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 		if (intel_dp_is_edp(intel_dp)) {
 			dsc_max_compressed_bpp =
 				drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd) >> 4;
+
 			dsc_slice_count =
-				drm_dp_dsc_sink_max_slice_count(connector->dp.dsc_dpcd,
-								true);
+				intel_dp_dsc_get_slice_count(connector,
+							     target_clock,
+							     mode->hdisplay,
+							     num_joined_pipes);
+
 			dsc = dsc_max_compressed_bpp && dsc_slice_count;
 		} else if (drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
 			unsigned long bw_overhead_flags = 0;
@@ -2380,28 +2395,13 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	}
 
 	/* Calculate Slice count */
-	if (intel_dp_is_edp(intel_dp)) {
-		slices_per_line =
-			drm_dp_dsc_sink_max_slice_count(connector->dp.dsc_dpcd,
-							true);
-		if (!slices_per_line) {
-			drm_dbg_kms(display->drm,
-				    "Unsupported Slice Count %d\n",
-				    slices_per_line);
-			return -EINVAL;
-		}
-	} else {
-		slices_per_line =
-			intel_dp_dsc_get_slice_count(connector,
-						     adjusted_mode->crtc_clock,
-						     adjusted_mode->crtc_hdisplay,
-						     num_joined_pipes);
-		if (!slices_per_line) {
-			drm_dbg_kms(display->drm,
-				    "Compressed Slice Count not supported\n");
-			return -EINVAL;
-		}
-	}
+	slices_per_line = intel_dp_dsc_get_slice_count(connector,
+						       adjusted_mode->crtc_clock,
+						       adjusted_mode->crtc_hdisplay,
+						       num_joined_pipes);
+	if (!slices_per_line)
+		return -EINVAL;
+
 	/*
 	 * VDSC engine operates at 1 Pixel per clock, so if peak pixel rate
 	 * is greater than the maximum Cdclock and if slice count is even
-- 
2.49.1

