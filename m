Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D126A8900D3
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 14:52:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BAB010E7DB;
	Thu, 28 Mar 2024 13:52:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EDH21p/7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BBAC10F5DC;
 Thu, 28 Mar 2024 13:52:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711633971; x=1743169971;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=0jbcIZqvCM09M3JHcMEarw39GnjC8mqqwIaWbqDYSkU=;
 b=EDH21p/7CrE5MAukyGxzEGA4XoQhbrCshZuAqwW2/PVdH5Wn92VIQseL
 /R8h5WZdObPOGU/Hjb5sAN18rLkS5Z6RcUVeWqyE/oCqOgITIpxQM0Q8I
 c6KA6KOotMbykPZ/qOSZA0WLtBZXOMRNvpWsIJzGgROZXz+ncoUFKw5KR
 qO71WVoPtc/G01s65ceMJ4wGn9FLw0T/OAVdp/mhQh+YYIpU7yZdXrcLn
 ATJ9MkkP6fgbxtM2Qh92C4z2/W6ZTcyKWgia1pByZrJi6r9fvgRqNMwjf
 GYsiab0KYNgbsM/7ldJSRCxm39R+V+tZZGeFk03TaxNMl4eLinfLP7DeR A==;
X-CSE-ConnectionGUID: A4OGEISZTzCtmhvVRqbdow==
X-CSE-MsgGUID: Qjq66Fw3SySh324jGhyMuQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="29269734"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="29269734"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 06:52:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="21336838"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2024 06:52:51 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 06:52:50 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 06:52:49 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Mar 2024 06:52:49 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Mar 2024 06:52:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n6OCYCbDR8RbOvugHMMBrmHhd91exfNwOEBqK5k36ZY/SX+ZW5cDI0Jd4NBMYIu2kigJXNX/kVKPQg2T7mYoODVcrCh1pPNPy5w0SymZUmbpWOKLilbfsiNDArK14mlZdrL8/tqJZe+kz0dpmgM2os2qOERMEHuzuZDl+z+xZNiUhYVVvrIzp1wuEJC3ZoX2oyCGVNSbsxeAIBP5GVAhtpko26CaRfZOUw6wsa3iw+Wan5GqIuL5li6laNuDx2mzO58jv2YeQn9Cbgo0o5bQRCSJ99+Wl6Uxg4CVf8rVA9RmTxryOQ+0CRKvm6cuiuxf8wrDty5wmXv69g3K+heCmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G1/j0QQhAEdsbGrpeCfuLHQHGVfFxuW0+voLsSVkDXI=;
 b=WWuYj5bYKZwTH9mbc9tVIZ3/wiDqThT+Y4Jfh1Nbpp7vNb44TCjeQ4+zKQYKjmRFdyj8yvAlPlPqhGOf6rBS37xA5KLnSf4IRb/WaLviQlqXNDOvqqSqOdg+aQGHH0fCf14o0VY/9CoGXQZbw+lxazz+aF2xDyzUS2hwxUi8aHp1wbNeFhs+zgZhxlU+bYGEPkfGfUVBiweHXar8XueC/cowaST4XeQtjJ/gPVUmz362cWyd9BsKPPQx9zJo805HH4QooviCsDn9H4usTfQUwrtQXzOCqIoSCWXIY5K+2Q3KZLFvw2M+/EXM98GL1acP+MhdIG6/IFHdQjj0yweMEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by IA0PR11MB8334.namprd11.prod.outlook.com (2603:10b6:208:483::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.32; Thu, 28 Mar
 2024 13:52:45 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189%4]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 13:52:45 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, Chaitanya Kumar Borah
 <chaitanya.kumar.borah@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [topic/core-for-CI] ASoC: SOF: Core: Add remove_late() to
 sof_init_environment failure path
Date: Thu, 28 Mar 2024 09:52:33 -0400
Message-ID: <20240328135233.1204694-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.44.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BYAPR08CA0004.namprd08.prod.outlook.com
 (2603:10b6:a03:100::17) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|IA0PR11MB8334:EE_
X-MS-Office365-Filtering-Correlation-Id: d40c1fb1-e3d8-467c-9fa1-08dc4f2e586e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uPd90AcMsxTzMQqE4ZmR1YogV1a+JWOS2JR95bAJIdE4+E6N/+hruq1iZY0aEMGRI6hMxkECsyPXwqJAHSXParsn1i5ZZQu8XTRBujVWBvOxaBytIhiJ8Vs6bEdSp5zgODft8TaQfKKRl3+NIO2jl70h5v0NlEFg7jnqGXlJJGn2eR3L3Jnj96OCzB3vpBYODYEmtMeLVT11kQrf66BUfdWcnSBfr16VlFf1tlJarUeMkPkpGn0XssoJ38B9LmDH1FUuByz15Up/bamcNcd0XWBCc0NJQG9AzjrMUEIiuGJU3yqaPvOx8+da65/CXE24+xwcZxh9k4uFx9dcG01wRlf7lyw5BAocJq1CQv1Ib4ET7K+ncxXLWgyO/XWMvcg3Vd8OFccHfxCsybJch5eg63LZMms6+kVZecCli5TWKstBy7p34TfpMgjofOFTkDW8VKPKY0AWFI51NnixbAA3tmFmsRXzzfpfYnAxqZYQgcePdzIu/8BMGAv46f8rN4PNTrufCeO9SlkaqFd+W10c/9gDk3ahH2LLuU7GxJr9RK0cfjqJBQ1R8zzFk8qfA5aEPpzn4+2gR0kCokf6K5uSz6ZKmwbNk5hoKyteStxYupxqOzoz2HcUtWoPFXvSkHVd
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?CpSu122F6CBROcu0MtUTGjYn9yyY8EoCsfzXmZ7lqwGcyCLhW7hwJKTRvStQ?=
 =?us-ascii?Q?XOfRE2kfgypNXopgm7xPJkvXYt9F+/EJsVxhYXhzNruOf6PCS2M1BApVetha?=
 =?us-ascii?Q?N6J6++UYXWOaQOLPwJcCg1jNv/ofDUHInWT1g+qbbz2LLe/jqRmWRjvc3yJi?=
 =?us-ascii?Q?ZNt4lKDxyexjhNu9FXDIELTjFVtu7NvHkX4GkchXe6KWm0Qj2aWK7SDRbqJ5?=
 =?us-ascii?Q?gBpz09lsjwKbG8MV5y8dIEKUO9Tdnsmi6+Ixul1vOgU1eX2NFa0I6r3c/hvU?=
 =?us-ascii?Q?ZQA20M7vUeCb1wIp/ZrX79tgYziOsDI83+KkMpKDdSMWSUNT1oKk1W2dIPja?=
 =?us-ascii?Q?Tr3KGChImnafioSRi+4VjKo7lMzIshBv+JB7iBqNAXxwCEu6xVxLzZzsFoa1?=
 =?us-ascii?Q?i8lsXXtiYrpiiv2ZvWf7QfXR1F1AkD5wZflqC+DHZCYbivEFaBTV6v+Pp1W/?=
 =?us-ascii?Q?8PHRQPydqGKSPCuf6ozZ+HGBsDGNFaqaG5xn/Vy76CRsQGTNQZmakmWxvbiI?=
 =?us-ascii?Q?Q94qjyVIFS89Jh63LbFm+KQFpDQBa4bF4x69hzYzPn7vfQC0vLP0R44gyP88?=
 =?us-ascii?Q?Vyq0jRh56D9FA+otetXYUfqLl+pcOTFnZrn/lGJFQjQsBvmbdzeDSZ6kjQeT?=
 =?us-ascii?Q?XhSv75W7O5KCtMkfbuhl2DFNJkVtg+iwzbJhkk5tjwlmdjnGYsxhDs275+cQ?=
 =?us-ascii?Q?Kr3nwpKB9qlysLgIeiW655Qk9xLg0NyKp739q+8o1WvEQzg2jyJcL7/QdXQt?=
 =?us-ascii?Q?1XPrWqn2etdYkL9DsSKor0ytAoN3/qpg7XLtGpmtLFlW4Ssb5h0hytON936I?=
 =?us-ascii?Q?K46ea+tlD8K0EEhiaxtF65Yow9+NHG8yKdfJ24Ww1xgowNuqOodWsyhBluOr?=
 =?us-ascii?Q?9tECpLOO64YK9VkKmVyHYToNwf7ryTswpYqx9dMyb8k7UQjHo4jeJX8rYP6/?=
 =?us-ascii?Q?6AoOlQfNQJw8AYMROer94GY/krt+mhcc6hcv3149pN2OUzxSeQZX8PvjYWsK?=
 =?us-ascii?Q?9MrbzPHXIP9EctcRay1FZJccUeBloXmfJXcMS8s9R0WzmlYT3OzKc0TfoSZg?=
 =?us-ascii?Q?xSbc/o2hC46Rzhgi19vEa4+oXxVlWnfQnM1EetLzFOXEGm1rIzynC3mg8Nrc?=
 =?us-ascii?Q?BXWvpdGT/30unXXCEzWrBsMyWuy8ysxAZ96+Y5a/k6RgjVZIpg/R90ZzAcu3?=
 =?us-ascii?Q?KTyQZEZJokdUjUNYLjKMfM0UEdihCiTnMrlEXxWvQODOtHQGpx+Jg6UbArnG?=
 =?us-ascii?Q?1e3unxL3khujgzemvXwb+TviQTby680th69a8H7iHoRsX45Mha1gkojdsvv6?=
 =?us-ascii?Q?bCYBayvv7WBdd3OIDOzdWjRqmEBsM89KeZ4kS5dWacT83yVnfHtt+LTzdIE4?=
 =?us-ascii?Q?0d8RdxcahwzcDhDTMt0j0HCML2Bkb2x9ceExRGrXwjrqqI78d9dNGSUIHWdb?=
 =?us-ascii?Q?dhcMHHifZdMfb5Qpla8zW4xJhhO64KggMq4tdukjO9iHAklKCfQphlVECvGb?=
 =?us-ascii?Q?K2o/9733Kv9ZJMRWiKzIEFrqzqv36deuf8pW/AYqaCMtkfV8Q+RDZrBZbl/X?=
 =?us-ascii?Q?gq0lFmQiKcCo5rWgFjxUTGuvXfxjyl7ISBeEk01a?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d40c1fb1-e3d8-467c-9fa1-08dc4f2e586e
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2024 13:52:45.3277 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0bQODVB8ny53MmyZgd3oZ2I1rFSz4KOhgjvHmip3wqMahmH0nLxPGoIHTVvsxgx7FJmDWIgSLKlrlnCWgQ0ySQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8334
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

