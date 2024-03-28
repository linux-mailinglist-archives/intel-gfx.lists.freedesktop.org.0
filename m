Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EFF08906A2
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 18:03:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B09DA10E40A;
	Thu, 28 Mar 2024 17:03:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cE2iKQTI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A472A10E34D;
 Thu, 28 Mar 2024 17:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711645414; x=1743181414;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=meq0wgoKhQVGzwSdvo7cTvsfOg2Kie5Odv3FwAFt43s=;
 b=cE2iKQTIIEaVgyhUO+jVZQpgi/0Mrhjh8sTYV3r2xJFGsTf27UGbVRoj
 UPchwnXIj7BJK89O0fLOPd1QHQYG0uiJVZPHGypGUQJk2fM2C2Hra2Ecz
 sHVBzQr3bnjp9gjVlCmeGxkKUebSGrN2+4NA/dXZfxd628JhjExniJqts
 h+Y2kfFQ4h4QkQRs264yRL4TD8oQeJ8oo8pBwoOo5MVWtZAlATkxAxzrC
 v0lLD+3KfcIhhPlSYDZDEhIecGMmVguPyLxvKs1bIB3vfrqIj1HP+XQTi
 vCsExSS7jc7Xx1cxZjAkdIks9DkvzLNtU23GJEvXgp9Nb4YjfboaT43+w g==;
X-CSE-ConnectionGUID: UpwRb90HTSagLscyQU9Xig==
X-CSE-MsgGUID: Em7FiIouSUSvz8lUc8Z+Kg==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="18253026"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="18253026"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 10:03:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="17346549"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2024 10:03:32 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 10:03:32 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 10:03:31 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Mar 2024 10:03:31 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Mar 2024 10:03:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hZYYxtaX95G18SZQM6dCiHb+xl8v49ScOyT5NRh8X3934ijc2nLwu7RrUQU0PHLXJT9cQhcTPcktr04jYONZhX78LPqT7c2l1LLEC9wLFt5HWlq/kbt5OBXFAiiYoOuu5NOvTb5VgAW5ciFClxZmaxPLL0LS3sjlBTPhxaWPoGOSZXFH99jUVXeOXIcUoNvK+otj+LgubYNDNQARBTtl4UvFjiCE5KbW1Y9ZFLMVG2m3kRxAWSHvRhPHlpAP2SiULUIHRLHiWi4kNNP/4ncAataUraosoZAJLvWgPozSEiWEBSl0m/Snk6X07Fen4TpzqVg15eQNqOZuRdQBERmBPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9KyFfISJs5KdSfL7J5bVER9gRshyWtG/fsUP9phcvcQ=;
 b=mwyIwB6xkfCSKTox0WN6h7d7La0UaM94zG2dLcriQi9/wjiIqf++lwn3JU+8T9i7ebUIHYcEu+7E7PzVM/MnDmogJqyFklVKNgipqdaQ209B5raZf8ZLHL9v0GUyW2eyDlfsAaeg6X+yPR61479a2RyDAAn5RHrtLaYncBnKv/N+rmA/neA5ZW2cNfa4H6d9JbXEWhTs+SzjupTJz2O38M0nT5rcJgPN7pTAqaDQ6bGa/CbLfqkT9taUvkazgaalF/lJZwA/UhmYnB1Dqs8JrWIMczaoDPQBFQP4GGJji+aefqEjTtc0Ms727hvWaSywwcEWKJV4tNhgimuKfqEmmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DS7PR11MB7690.namprd11.prod.outlook.com (2603:10b6:8:e6::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.32; Thu, 28 Mar
 2024 17:03:28 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189%4]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 17:03:28 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, Chaitanya Kumar Borah
 <chaitanya.kumar.borah@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH] ASoC: SOF: Core: Add remove_late() to sof_init_environment
 failure path
Date: Thu, 28 Mar 2024 13:03:23 -0400
Message-ID: <20240328170323.14279-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240328135233.1204694-1-rodrigo.vivi@intel.com>
References: <20240328135233.1204694-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BYAPR21CA0012.namprd21.prod.outlook.com
 (2603:10b6:a03:114::22) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DS7PR11MB7690:EE_
X-MS-Office365-Filtering-Correlation-Id: c7afe385-e16d-4774-11a0-08dc4f48fd2a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JfMMDf0tK6aDm3gTMQP0rv8qGvynaW/DYYGQRpexLflwu4MseTgmX41AIvZGXbg8/yNNqaR/dGbi989p91x2/eAxuzntlewbHQ5tqNIbFo+2jajE2L1J8x6UEla/qJD0N8gqH+xkwDPAsMc27z7kIj1yChNztjTC1v+upVMLs05h8M5RPKbPbJtdJCM89KaoIDTG8CzgACWKeD2Wa5kbbFAlgD2u2cf/dDYksZmosJEniqT8W+Nu1wQyqWuBHamHJ4MQqpdtQlhMWy1J5UrmwAy3blJbKWH1Kkj24B15jblnCOHRp1F/eMADWYcuNjWrGvXu/g1+IGd3uTTBC7xjqC3ckWxAE0DqrYArH2eF8d0C+pefEGZg8kk98cAZy3efQf7VLh1mMG1BfviFQFLAPBtt7QO94jHwo8rtsJbGUuboieT+yTP9gVaoaHAQLQDLNzo1ftGtotTshMpFovMbeE0R65601xf8xVG/64uFpvw0cej5DsrSc77NpONWL1E10k2+wiEMfvuOMJ8Rdf7hvgznydW6CkK0bAXI463+xXufviSFP9qFg1iZInf3Y4M7eAJVbs5OMdx48uO73S45NnhIvsaxmTQDuQgyHWQ1h2umcMYd5ahPAbm8WMWUcsu7
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?E6It33Sq/6vpm891AE2LRzw0S0I7SZLvlBypK4RTybse2MlNKJr+6P/oGWxz?=
 =?us-ascii?Q?JAIcwX4w4loBtpNxWUZosEwHzw7wBm0nWlFQZSwNu0ncnyWt8uo+juYTLefA?=
 =?us-ascii?Q?MCJ25a0DHJ+2sX4CL7RGhueaxn5Fz4Iq1cE/1ZEytX5yrycHaEWQQAnEsbS/?=
 =?us-ascii?Q?U3cS8p1w/aJQ974iCcpfhUS/D7mJDW/NXoah+rtE8yuZnp6pYfpEITJc8PnN?=
 =?us-ascii?Q?XnPFlvIu2aTCW/effnmfkUIOOvpS/mZK9oLzg+7+PQoNRZKL1juM0dlniyXk?=
 =?us-ascii?Q?Cx4lzjfYBi07eGmZ9T5b4VXVXQYX48zCOmsFzMZ/C1QEqL5QjG1iR4Z69FZ8?=
 =?us-ascii?Q?5NADTgw/QU4J5Um5FLfrETr50PZgOB4KQmRg3C1/bJcf5k+K0k6NY3y7X8jk?=
 =?us-ascii?Q?wNJFaia99I3Rphrpwd16UypqtB+YGJyeFHkgk8Ouaw7VI+9gHBZbhCzo1IJl?=
 =?us-ascii?Q?qDRDnYXTunr6QZQkuVaOoTVZ0Du+JQumpGhK2gehKCp13iVk+aE4xnTlgPWh?=
 =?us-ascii?Q?yhSJuNI2nhZ8lWjBQhfU+nuxXFvlYFqIPe8SKJpyKMLZqcOdNLgbWIRWGB2D?=
 =?us-ascii?Q?FGUsZPzncLYh28aN9jO/EVt/HlBuDo5dSR6Rp/41MbeBGUbBTLEOXQJUjMmN?=
 =?us-ascii?Q?t3BqJVRakxdy7rjGQUnR9K5msD96b5GzNBHCeHH3T4S/pau+lwH+VEc39uoo?=
 =?us-ascii?Q?Pi38Xe6nvWAdhgq7gcjvufWwIHnZ9qRUhxNNe7iUSaSZljKDjxvkevFAuKhz?=
 =?us-ascii?Q?kcS9qXJ7MUNdizXNQrgXxyANFgEP8HeOVuqDboWfco7rCKRe2nID5haD4wYx?=
 =?us-ascii?Q?DrKYV0AGgHvCgHo/cXiHEir92sP8JYLJ+5CuBHzsRLjgv9WYMdZjri7T43D+?=
 =?us-ascii?Q?L0jWR/FJbqKOOAglbxGHDQUm5RVfg93QXIwHenNj98pCVwx3EuYcpFT0GZom?=
 =?us-ascii?Q?0tJDdZaimsx800vT3njq6Nu+HyWr4HrwR4MBXIWJ3m2XtG8ASYtudDpX3vO/?=
 =?us-ascii?Q?vh9lNOEOPfnlx0m1ZEI3cd+bR8NRw/42VLMEO4z+bdDidW6XejfG7kcfCu3W?=
 =?us-ascii?Q?c15Eirk11BOUOJ9I6pg5LO9N8kOckx3VRyMd4Hi8g52f+e3x9EAT4BtALpxc?=
 =?us-ascii?Q?MTLJdv7Vzs66lj1YIC9Emon1FMVfn3lGzI1ZOse8AAFm5IspBXlOQlW9QHNh?=
 =?us-ascii?Q?BLwz/38vB48IopMcdyAu65oia+XHXYrzSuKcmzTPKovcxKi47O02AsvHybcT?=
 =?us-ascii?Q?xAplWK3rpfEqu/2N9SJhqaYAkB04mtUFhci4XxCDsb1u1baFX++ziu9JGB1C?=
 =?us-ascii?Q?rexXii3e70UAagx6AyUzEpbqNLy6j+9DLc8MbKdlxb8fL3oVXgkEBAZlvOcA?=
 =?us-ascii?Q?jy4P5mEkAauFoFDOoYXrNY3+8A/boUaqPvYMDHwk7TcoGlNdnw+C/MdGh7rJ?=
 =?us-ascii?Q?rTAxrYW8XHPkF05/Oh1T5b2JUSGO6uiN0dlKVUFcMO5YoHYdSfx2XwuRSXiH?=
 =?us-ascii?Q?7uDByAJB+vu756rs1R2lYzop5mqlzNICticfhLgS4pajAFEEqZxPwmgYT2tQ?=
 =?us-ascii?Q?aWYH1HP3111ThG7wSgJhA5khlpzwVr5G9d8yALZKNt67FoeCD18kKwzo9A9w?=
 =?us-ascii?Q?Uw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c7afe385-e16d-4774-11a0-08dc4f48fd2a
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2024 17:03:28.7223 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Wi2FvD9fokPdEDzOmnqBpYxffgxfCFM4UCoc45E+mx7odVeDzuZPpAnQsV8hBB4f+sLjE1k2eFbqb8b6WTKaxQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7690
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

From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

In cases where the sof driver is unable to find the firmware and/or
topology file [1], it exits without releasing the i915 runtime
pm wakeref [2]. This results in dmesg warnings[3] during
suspend/resume or driver unbind. Add remove_late() to the failure path
of sof_init_environment so that i915 wakeref is released appropriately

[1]

[    8.990366] sof-audio-pci-intel-mtl 0000:00:1f.3: SOF firmware and/or topology file not found.
[    8.990396] sof-audio-pci-intel-mtl 0000:00:1f.3: Supported default profiles
[    8.990398] sof-audio-pci-intel-mtl 0000:00:1f.3: - ipc type 1 (Requested):
[    8.990399] sof-audio-pci-intel-mtl 0000:00:1f.3:  Firmware file: intel/sof-ipc4/mtl/sof-mtl.ri
[    8.990401] sof-audio-pci-intel-mtl 0000:00:1f.3:  Topology file: intel/sof-ace-tplg/sof-mtl-rt711-2ch.tplg
[    8.990402] sof-audio-pci-intel-mtl 0000:00:1f.3: Check if you have 'sof-firmware' package installed.
[    8.990403] sof-audio-pci-intel-mtl 0000:00:1f.3: Optionally it can be manually downloaded from:
[    8.990404] sof-audio-pci-intel-mtl 0000:00:1f.3:    https://github.com/thesofproject/sof-bin/
[    8.999088] sof-audio-pci-intel-mtl 0000:00:1f.3: error: sof_probe_work failed err: -2

[2]

ref_tracker: 0000:00:02.0@ffff9b8511b6a378 has 1/5 users at
     track_intel_runtime_pm_wakeref.part.0+0x36/0x70 [i915]
     __intel_runtime_pm_get+0x51/0xb0 [i915]
     intel_runtime_pm_get+0x17/0x20 [i915]
     intel_display_power_get+0x2f/0x70 [i915]
     i915_audio_component_get_power+0x23/0x120 [i915]
     snd_hdac_display_power+0x89/0x130 [snd_hda_core]
     hda_codec_i915_init+0x3f/0x50 [snd_sof_intel_hda]
     hda_dsp_probe_early+0x170/0x250 [snd_sof_intel_hda_common]
     snd_sof_device_probe+0x224/0x320 [snd_sof]
     sof_pci_probe+0x15b/0x220 [snd_sof_pci]
     hda_pci_intel_probe+0x30/0x70 [snd_sof_intel_hda_common]
     local_pci_probe+0x4c/0xb0
     pci_device_probe+0xcc/0x250
     really_probe+0x18e/0x420
     __driver_probe_device+0x7e/0x170
     driver_probe_device+0x23/0xa0

[3]
[  484.105070] ------------[ cut here ]------------
[  484.108238] thunderbolt 0000:00:0d.2: PM: pci_pm_suspend_late+0x0/0x50 returned 0 after 0 usecs
[  484.117106] i915 0000:00:02.0: i915 raw-wakerefs=1 wakelocks=1 on cleanup
[  484.792005] WARNING: CPU: 2 PID: 2405 at drivers/gpu/drm/i915/intel_runtime_pm.c:444 intel_runtime_pm_driver_release+0x6c/0x80

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Tested-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
[This commit is still under review on the sof tree, but likely targeting 6.10
Adding to topic branch to unblock RPM in LNL VLK-56970]
Link: https://github.com/thesofproject/linux/pull/4878
References: https://gitlab.freedesktop.org/drm/intel/-/issues/10603
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 sound/soc/sof/core.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/sound/soc/sof/core.c b/sound/soc/sof/core.c
index 425b023b03b4..3e41821562f0 100644
--- a/sound/soc/sof/core.c
+++ b/sound/soc/sof/core.c
@@ -339,8 +339,7 @@ static int sof_init_environment(struct snd_sof_dev *sdev)
 	ret = snd_sof_probe(sdev);
 	if (ret < 0) {
 		dev_err(sdev->dev, "failed to probe DSP %d\n", ret);
-		sof_ops_free(sdev);
-		return ret;
+		goto err_sof_probe;
 	}
 
 	/* check machine info */
@@ -358,15 +357,18 @@ static int sof_init_environment(struct snd_sof_dev *sdev)
 		ret = validate_sof_ops(sdev);
 		if (ret < 0) {
 			snd_sof_remove(sdev);
+			snd_sof_remove_late(sdev);
 			return ret;
 		}
 	}
 
+	return 0;
+
 err_machine_check:
-	if (ret) {
-		snd_sof_remove(sdev);
-		sof_ops_free(sdev);
-	}
+	snd_sof_remove(sdev);
+err_sof_probe:
+	snd_sof_remove_late(sdev);
+	sof_ops_free(sdev);
 
 	return ret;
 }
-- 
2.44.0

