Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CF9A9C4605
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 20:40:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B53D510E533;
	Mon, 11 Nov 2024 19:40:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mjetqrt0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74CE310E529;
 Mon, 11 Nov 2024 19:40:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731354016; x=1762890016;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=vrGPc3oNRrz8ov4UPbm8uEBcemu8clsgp+bOz/yFCdk=;
 b=mjetqrt0GHxA1zxerSQqDO1i+1HhWjcjDoRgGnQuP0XNXcenMCZ3PdGp
 Hokigz7OMcLPGyjiaa+CnbGxcOiVv6HO4gl7lL7m+w9oM5dve8uY19Bp8
 eEWHKX7GbaE0makzHmn/+omUNl3ugO5Wx4isiAfYIyU36C8DYh50Qxp8e
 /IEd+k1EwZko9IcqEMq/uu010gafW84PPDgLUFajBQ2SkZwKKh9UzBBU7
 wPbqUkYVKcKfZ/4jH+jq7C4nkFK72CiBdVVJmN+uKShzQpIfP1OT8qZrG
 6mUDfqdI0/0Njz8yKi3TwoxldlgH681EVJjgs+OFSQw8Hc8RHzj2jAR6U w==;
X-CSE-ConnectionGUID: W3oX4ew4S36r+WTQlB7Miw==
X-CSE-MsgGUID: lbxs9NqRQ9e9qSInmGtsNA==
X-IronPort-AV: E=McAfee;i="6700,10204,11253"; a="30579877"
X-IronPort-AV: E=Sophos;i="6.12,146,1728975600"; d="scan'208";a="30579877"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 11:40:16 -0800
X-CSE-ConnectionGUID: d5o2y89jSeW2ksbFcCy3rw==
X-CSE-MsgGUID: /3zh3RYuRMaNs6oKwCefgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="92022817"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Nov 2024 11:40:16 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 11 Nov 2024 11:40:15 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 11 Nov 2024 11:40:15 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 11 Nov 2024 11:40:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kuyAS51rH0ibdVtPIC9Hm0mbwJiyK2KFZDx4P1ak89u/x1Nmy47hRDdm2k0Pm/yAIrSoFhPnw4D70JKrEAXXT/KihmrP8CUYGvjtkaXFPWRQToeol6LnYs/9IKdYSAP0nyP5chxltJ8vcnI8c2lgkyPdj79IE4d8fWSzWW/1KS0uCw+nKKtGlImB09UvHP2HrWskt4GwYUQppb+9v8qlJx6yGhSiGrly5SXRSU26s4rxwzZfulGteBcqlSqSx8JZo/eVKPhh49Myztl3cyxSqoF7VRDhSYsMrrnLkP81JWJn3grQRtKWij4xoto/WE5I5iIVF4tZqScF7U9+iqpcSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VYJgejEc4E+5W3WOPH2KLNey15Cyh1VfHPoOBuSJVsM=;
 b=jaYoWp4aoSw4/sFAvVpHOhYE9oLmn96TXwGNhS4TzgeM350ciDeV4X2sJrl3a8ULJeTNDX4lIBjW0TN2U1TzcjDCM4QOqpOwA1FL7R9smaQj+6lVSwj+5GhDdAGlWSM16eRq2KhcBZqOlYClRcjaOhAjlTdPkeHWmsus8954XmlYI4ONysSbEj3bsNdWjXx6O070c+VVgz58mbt72hAbcPfS9eWI77dJ+937+r5lUke7nu2+LwTZa8aR5aTG9FWGO+8ZPTR1mLk8r/RYti/AhBnjJpwrwTbhrJ3nqP8kG26aPerOR+of42XSNO1x7LMqTN8mGQoohrgy2LdQh4D6Eg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ1PR11MB6228.namprd11.prod.outlook.com (2603:10b6:a03:459::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.25; Mon, 11 Nov
 2024 19:40:06 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Mon, 11 Nov 2024
 19:40:06 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>
Subject: [CI 3/9] drm/i915/display: Move regfile registers
 intel_display.restore
Date: Mon, 11 Nov 2024 14:39:36 -0500
Message-ID: <20241111193947.128871-3-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241111193947.128871-1-rodrigo.vivi@intel.com>
References: <20241111193947.128871-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR04CA0094.namprd04.prod.outlook.com
 (2603:10b6:303:83::9) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ1PR11MB6228:EE_
X-MS-Office365-Filtering-Correlation-Id: e5fd5ddc-e9c8-4f9b-3b87-08dd0288a4e1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?VGKoHI1VUQTFuuKWluYgydeax5JSDLK2McUAC7bJwdycfm7SAJ8uJTiGd9uv?=
 =?us-ascii?Q?Yvuskt4a2LkxV4VSD/xNT+GqWJd0DY+9YQVFAypbBEQKDbTtlEQLScPS1Cjc?=
 =?us-ascii?Q?eVJ5teFRcKL2z2Dg5iHoa2tKcBIVDB43VbYKA6CTQGFZxeUX1w4G9dpLbX/B?=
 =?us-ascii?Q?JahTxEfD0bZEWOgLd6/BCwOTfJssw9HVpiMyNvWnNZOm7RuUxJbUSpzfGLNz?=
 =?us-ascii?Q?aKKe9fFJVKsFf8vkZ1GtpmayJRLw7KalJtuRI5RpA1nlleBvO3eHcczBDWyM?=
 =?us-ascii?Q?DA8B2XF8YTBe0JpZI68ybj3nxncRAx81wn+ypcWBgxG7pGzk/b1+bTgkFyZO?=
 =?us-ascii?Q?wdgZzw5875cHiRWJT7rI4LeUqjyvIk55B7CenwSn6+76EEde9QRxLCqYMzPm?=
 =?us-ascii?Q?wvmP2p6Nv15JRsayfzW0DCYijj1GyRPLtFHzi1Fmt8QieKeOkanJSdTKaiR4?=
 =?us-ascii?Q?uR4tmI62C43lu7wRTN2KhZDf7Ptiml0H6KCMDNWWDcgJWCen1uD1z1UjgyNQ?=
 =?us-ascii?Q?Zxc+DrE4AmvPCZqhNsbXPiRfOMz2wsTvaHzLAC6LfNKrXVuYKYBorj9ruXQm?=
 =?us-ascii?Q?1M5LHs1kNY+dY0fB4TRg7xcEyMU14koiP6ogZJqFLMvIBsRE6U/j095TBHi/?=
 =?us-ascii?Q?0p2m402L/z8nQOcuUh4FJRWuDrf4mY6jJsMT+i72360F93wB9MPo92hbufKd?=
 =?us-ascii?Q?HhifOuDjWUIu94E3poVIuUyp4J8/cMiPbUEoluPlWMHZtplMYsCHBQF3IGXJ?=
 =?us-ascii?Q?tujnsB8BsKfxfXS/UGPJDD+Nw0t/qlXuYJvIA0huVAvBPEAHAGIiJg9gaJCl?=
 =?us-ascii?Q?mIMkQdV6OMMqHGYW0Z3Dn18WNx/5rcR+wVur7+p1kpoUYypGJE8bwjq1adUi?=
 =?us-ascii?Q?TpDQwfBKykmj5ntopvlWQxA7AvYkghoO+tjSK5vAt/17eXvPb6pbNxGOeQws?=
 =?us-ascii?Q?IONaCiSkvwYWqW5d6KVRdKwRxsF+WMhu1c6+tmRywXCYdkgyPwbqPPfo5J+s?=
 =?us-ascii?Q?pRzCeFELon3p2yQJMrK6RhLZ0Ii9imn/CcThqJZXnCv38uqmhmzDoHAZM6VF?=
 =?us-ascii?Q?vAemoDbs7A3BtuMgenVuaCklQgRn762njgxq+RDzu5zxlr3JRF9rAagPAwpn?=
 =?us-ascii?Q?r8ZsIT2NyqSZwtjK9sOZgtJnim1KTcFNvALOJUDyaMKnOoa4B5/4lej0JdDg?=
 =?us-ascii?Q?JrsbhyIchpRnm214xM9yNJ6l79/DAL8XXQe163GGrYAW6SMZMs7PCVpPpeVN?=
 =?us-ascii?Q?ajrCpUcNVpzkq1O2RTBK64Akc+L1VGH0Sb0msfCF/MiwaVuQ72n1w5PJad8N?=
 =?us-ascii?Q?O+YaMhI00ux7V7aulq7/N1OS?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+J5NlMdxlDNP1M5RZ7cNHWktJaBzkbEO07Q1RRsb07QYIEPS9yvnm3mcBNLS?=
 =?us-ascii?Q?NHPtpYmhjtzMmI8vUH27AQF9YkgR1UfD1lEbRbLDU54IdxOokNRyCVGbtXMF?=
 =?us-ascii?Q?UQZnLe8Qe8BMbwebfY/aq/647/3OTNa+1KH7KWrD+q9eAGMJ4yoN8pycLX/J?=
 =?us-ascii?Q?0J1QChjefqBN2KnsDW84dgqSabIpYVgYiKHUdcvuwy3/GpLJ+X9d9D4YdQUm?=
 =?us-ascii?Q?GJ4VmGYutoRgY6Vr3q5McWXngFThC3EhaTFSieoFUlxY/FPD5Hfr0IjYKvZ2?=
 =?us-ascii?Q?gVB+tYQN7h6xN2hez9l1HJnLRCZ+/yFBU6e/yLo0FhIDX/Ykpn+81D9PXq9c?=
 =?us-ascii?Q?L9sHjAtttyRE2nbnClUGSelW/hnD0w4ukWvLVUQyOyt/pHUeKl8j2FJg1N9u?=
 =?us-ascii?Q?F4S6kZsVmhVosu/3WxoOGaSbi3alq3DVeOHfU8P+hpYqreQYRowxl3j6imrZ?=
 =?us-ascii?Q?bvqYBJyaCx/0n5TZuU+Y1eLqDkYfc2PrhLSlrCsddX4YT/EVUMIkXcX/GfwY?=
 =?us-ascii?Q?RqovykegHK5eFU8IKSdL9Iw5FZyiJTuQ3aWWiYBRMG3QFb49uGfZ3N8M1s2D?=
 =?us-ascii?Q?IWQYLa+4ID0vbzPtawX6dkL/915htzH9r4OC/PPGnnKuHazCzryZfQoUZD1Q?=
 =?us-ascii?Q?Y1i+NdV56cr9fyBc3ca3FsILA3wxsuT7VJVnto8r3HwI0To406e6HxYtdCye?=
 =?us-ascii?Q?DUqJnhS7YoN0ULN9Cw9ButCqM7MEEekF/0CYFH6EWqTHKDuH4Ev4YhvRRAhv?=
 =?us-ascii?Q?8TSTVo2wxPhGF6MVoDx0ExyaFwVxve66H2WIojQbrrya1ZLj0WJ1fr0+ezXt?=
 =?us-ascii?Q?fg8aP2m3OH2caR5I75YrTqUqu40Ok6ZEoZOOGNtk6JsssuVjJIrnJwPia1Zq?=
 =?us-ascii?Q?fmwjdAQvADb0cnf7Py/BNdjlzG0hFXs44QW3W3zOWoll71CcejMNMktrgKC+?=
 =?us-ascii?Q?qk46groX91Vk3v9AQvgj5CbbyYtA9hZWT3pk+Vb3Az//vNUmWyY/HcBBLYkD?=
 =?us-ascii?Q?lad3SsTIALPOxX0I0dJLjCqw1js52QPLeLeWGCFlWz2oPp7El3RNORX1I+hB?=
 =?us-ascii?Q?Ya7sCT5UpRF6iTE0VoYIGSn12lpbK9oAEf5scvzdQz/4j7QaFLH+4m3u8a/h?=
 =?us-ascii?Q?j6rEjU1e6wizKfa2H+Z0BgJstzFtUo0q/GEcKRSEhCSv4CDpwHt/IZ9ZxsvV?=
 =?us-ascii?Q?Ip48nvhYgCyHSbglBV4Ngv7gOW2kfmgqnhJnqtN5sHugVIwcotT/iGpFnJ2h?=
 =?us-ascii?Q?+yKCAofGugbCAXkOp1UMKgsYYVbBjfGqWQw9F+IJ56qy/T9FLPxqXtOveGj+?=
 =?us-ascii?Q?Ui1/SPpZi43D5v9sSDXOwRHNZWhfD6dpJXT+zK+ZCNgPMWT8FN9YX+x/JbCv?=
 =?us-ascii?Q?Sl7J07Telb+6YuL0K/FI2Al7BIvk5Q6fJDX7C2X8J+LRBt76wJgW66aGbcx0?=
 =?us-ascii?Q?aCDohgpWOOkal9BMdJoX3P01qH8oU4ZSz4TeEP4VFPhTxSjtD9DhtxPBzast?=
 =?us-ascii?Q?MjdmVAwmDwI3j35VvLYtpmcW3F33D7iPiVoglDZR8yoI58/RVEyRmjirp/gl?=
 =?us-ascii?Q?/LmeErRb0YasTXXdJUUPCCqQc1xn0tZ5T/TFIvu+wSRDR/p2jmFw1pMEFwfz?=
 =?us-ascii?Q?bA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e5fd5ddc-e9c8-4f9b-3b87-08dd0288a4e1
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Nov 2024 19:40:06.3635 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0JjNXwWMMA0cOi9Kn5HBRl95WIwudPGzZV9mEWY4z/PvRgZ+2f7zZuP5h46BqAmwmNEf7/jjBHCFY+6EL/HLCw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6228
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

The intel_display struct already has a place for save/restore
stuff. Move the i915's regfile there since they are only
related to display.

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 .../gpu/drm/i915/display/i9xx_display_sr.c    | 40 ++++++++++---------
 .../gpu/drm/i915/display/intel_display_core.h |  5 +++
 drivers/gpu/drm/i915/i915_drv.h               |  9 -----
 3 files changed, 27 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_display_sr.c b/drivers/gpu/drm/i915/display/i9xx_display_sr.c
index 4dd0ce267994..4c78b7165831 100644
--- a/drivers/gpu/drm/i915/display/i9xx_display_sr.c
+++ b/drivers/gpu/drm/i915/display/i9xx_display_sr.c
@@ -12,56 +12,59 @@
 
 static void i9xx_display_save_swf(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	int i;
 
 	/* Scratch space */
 	if (GRAPHICS_VER(i915) == 2 && IS_MOBILE(i915)) {
 		for (i = 0; i < 7; i++) {
-			i915->regfile.saveSWF0[i] = intel_de_read(i915, SWF0(i915, i));
-			i915->regfile.saveSWF1[i] = intel_de_read(i915, SWF1(i915, i));
+			display->restore.saveSWF0[i] = intel_de_read(display, SWF0(i915, i));
+			display->restore.saveSWF1[i] = intel_de_read(display, SWF1(i915, i));
 		}
 		for (i = 0; i < 3; i++)
-			i915->regfile.saveSWF3[i] = intel_de_read(i915, SWF3(i915, i));
+			display->restore.saveSWF3[i] = intel_de_read(display, SWF3(i915, i));
 	} else if (GRAPHICS_VER(i915) == 2) {
 		for (i = 0; i < 7; i++)
-			i915->regfile.saveSWF1[i] = intel_de_read(i915, SWF1(i915, i));
+			display->restore.saveSWF1[i] = intel_de_read(display, SWF1(i915, i));
 	} else if (HAS_GMCH(i915)) {
 		for (i = 0; i < 16; i++) {
-			i915->regfile.saveSWF0[i] = intel_de_read(i915, SWF0(i915, i));
-			i915->regfile.saveSWF1[i] = intel_de_read(i915, SWF1(i915, i));
+			display->restore.saveSWF0[i] = intel_de_read(display, SWF0(i915, i));
+			display->restore.saveSWF1[i] = intel_de_read(display, SWF1(i915, i));
 		}
 		for (i = 0; i < 3; i++)
-			i915->regfile.saveSWF3[i] = intel_de_read(i915, SWF3(i915, i));
+			display->restore.saveSWF3[i] = intel_de_read(display, SWF3(i915, i));
 	}
 }
 
 static void i9xx_display_restore_swf(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	int i;
 
 	/* Scratch space */
 	if (GRAPHICS_VER(i915) == 2 && IS_MOBILE(i915)) {
 		for (i = 0; i < 7; i++) {
-			intel_de_write(i915, SWF0(i915, i), i915->regfile.saveSWF0[i]);
-			intel_de_write(i915, SWF1(i915, i), i915->regfile.saveSWF1[i]);
+			intel_de_write(display, SWF0(i915, i), display->restore.saveSWF0[i]);
+			intel_de_write(display, SWF1(i915, i), display->restore.saveSWF1[i]);
 		}
 		for (i = 0; i < 3; i++)
-			intel_de_write(i915, SWF3(i915, i), i915->regfile.saveSWF3[i]);
+			intel_de_write(display, SWF3(i915, i), display->restore.saveSWF3[i]);
 	} else if (GRAPHICS_VER(i915) == 2) {
 		for (i = 0; i < 7; i++)
-			intel_de_write(i915, SWF1(i915, i), i915->regfile.saveSWF1[i]);
+			intel_de_write(display, SWF1(i915, i), display->restore.saveSWF1[i]);
 	} else if (HAS_GMCH(i915)) {
 		for (i = 0; i < 16; i++) {
-			intel_de_write(i915, SWF0(i915, i), i915->regfile.saveSWF0[i]);
-			intel_de_write(i915, SWF1(i915, i), i915->regfile.saveSWF1[i]);
+			intel_de_write(display, SWF0(i915, i), display->restore.saveSWF0[i]);
+			intel_de_write(display, SWF1(i915, i), display->restore.saveSWF1[i]);
 		}
 		for (i = 0; i < 3; i++)
-			intel_de_write(i915, SWF3(i915, i), i915->regfile.saveSWF3[i]);
+			intel_de_write(display, SWF3(i915, i), display->restore.saveSWF3[i]);
 	}
 }
 
 void i9xx_display_sr_save(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
 
 	if (!HAS_DISPLAY(i915))
@@ -69,16 +72,17 @@ void i9xx_display_sr_save(struct drm_i915_private *i915)
 
 	/* Display arbitration control */
 	if (GRAPHICS_VER(i915) <= 4)
-		i915->regfile.saveDSPARB = intel_de_read(i915, DSPARB(i915));
+		display->restore.saveDSPARB = intel_de_read(display, DSPARB(i915));
 
 	if (GRAPHICS_VER(i915) == 4)
-		pci_read_config_word(pdev, GCDGMBUS, &i915->regfile.saveGCDGMBUS);
+		pci_read_config_word(pdev, GCDGMBUS, &display->restore.saveGCDGMBUS);
 
 	i9xx_display_save_swf(i915);
 }
 
 void i9xx_display_sr_restore(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
 
 	if (!HAS_DISPLAY(i915))
@@ -87,9 +91,9 @@ void i9xx_display_sr_restore(struct drm_i915_private *i915)
 	i9xx_display_restore_swf(i915);
 
 	if (GRAPHICS_VER(i915) == 4)
-		pci_write_config_word(pdev, GCDGMBUS, i915->regfile.saveGCDGMBUS);
+		pci_write_config_word(pdev, GCDGMBUS, display->restore.saveGCDGMBUS);
 
 	/* Display arbitration */
 	if (GRAPHICS_VER(i915) <= 4)
-		intel_de_write(i915, DSPARB(i915), i915->regfile.saveDSPARB);
+		intel_de_write(display, DSPARB(i915), display->restore.saveDSPARB);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 45b7c6900adc..f6c1bedf1c31 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -505,6 +505,11 @@ struct intel_display {
 		/* restore state for suspend/resume and display reset */
 		struct drm_atomic_state *modeset_state;
 		struct drm_modeset_acquire_ctx reset_ctx;
+		u32 saveDSPARB;
+		u32 saveSWF0[16];
+		u32 saveSWF1[16];
+		u32 saveSWF3[3];
+		u16 saveGCDGMBUS;
 	} restore;
 
 	struct {
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 920585ea1ad5..dcf6050e5550 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -101,14 +101,6 @@ struct i915_dsm {
 	resource_size_t usable_size;
 };
 
-struct i915_suspend_saved_registers {
-	u32 saveDSPARB;
-	u32 saveSWF0[16];
-	u32 saveSWF1[16];
-	u32 saveSWF3[3];
-	u16 saveGCDGMBUS;
-};
-
 #define MAX_L3_SLICES 2
 struct intel_l3_parity {
 	u32 *remap_info[MAX_L3_SLICES];
@@ -299,7 +291,6 @@ struct drm_i915_private {
 	struct i915_gpu_error gpu_error;
 
 	u32 suspend_count;
-	struct i915_suspend_saved_registers regfile;
 	struct vlv_s0ix_state *vlv_s0ix_state;
 
 	struct dram_info {
-- 
2.47.0

