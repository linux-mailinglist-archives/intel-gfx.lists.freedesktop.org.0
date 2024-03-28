Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85C4C89078E
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 18:50:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4AF0112505;
	Thu, 28 Mar 2024 17:50:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l/6afIfJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BDF81124FD;
 Thu, 28 Mar 2024 17:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711648219; x=1743184219;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Dp7vBCvE8kM3TacoZkjdrdO/O49/xeAACFpCZ87xJgY=;
 b=l/6afIfJJqoo+N3rPLWrukOdHBtf4gfKCJ7uh3ccGfhq0ioXYMrjXVYz
 KQq0CeLhYB+zGPq0n56Vo3kvpgJ2ErUGEDUsW2MjGvq1EylpHq42tSt/F
 W3CqkpuvZXCSAXMRucA8OVcfMZuu9bHsdVHtd9qLIeAi9q2lKbODmLknI
 LVS2nProMZdFSd62lUIucH3sFoJoAuoIYbV7xrWshGke+oPQAkIbUPZKx
 H9OGv0kf6MrOwPbyp02aHjCwQNUxExy+Xx0JUdqq6i+2sVJNHg711DLuM
 EFmkwT3yOvkNxZ743Ae46ux3/ufGSPVp3qbWe0odAGko386kOQCk3s48A g==;
X-CSE-ConnectionGUID: UBCsifCfQJm52Vvx2srDTA==
X-CSE-MsgGUID: OBKZRGXRQJiR0EWymFAYbA==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="24309225"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="24309225"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 10:50:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="47903269"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2024 10:50:11 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 10:50:05 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Mar 2024 10:50:05 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Mar 2024 10:50:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A17eFhMB5Z3SCIe4fDm3ebAOQXTqwh5yX/xZyM3RfjOXiC94U8wLmQMBd2m9geToubMXZOJLEmZ0utBbmsLVjMwTn1xPebUCtA63/yjKQOqLI0Whqc+nYR+5jV7mxI6gECD4/4JoQpnC6Nbk4R5QQ5RIMM4RVWJFjFDsnq1dbbaN2onENAqn1uWo+nQIfrVnJg8q/612BkoMAHEDWGIAL9maMPEPFubiuGE7aKlVGImdlCE/S+Tk1QezmEB17yDACItBn+/SpfYHRbaj/k/YID02RZy5ncwnC0HrHBmve1c6oH4sbbvDP350eupD36k0ndMY5QiAEvuYbP80xU9XnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5ZBlXhVqgNFeas1C9iw9YHazaPvcn8JgCK3sTiJ/BZQ=;
 b=jb0fT1BF37C931mY2YR+bXJD95CsEx4xl/1ZOPmKDDINsFd183KiiG7M7vgA9e1sDvg2Jqgid2DIpfXJnSTATxlFHz7jvheJrwBTKNc6eS+mIXhV2Bsn8S9sWyrvgNVI6/XTJR34Pr9/kv2BPdwCW4yH5T5Xi2is+tWkgQtVrxAmSxpGeVjTKVeLMnjpfATZQGhhkhOjttsFE3NqKlCBv4oaDBTkdXi41oOOwZFawKJvaeidJIdTlfZ0biSpK9BkScde6GoS/Q5iWdMA3Uag+Qz2ttLJM+ZBi5Gst5Nugycx/M6iemD0pc5YEBAhASrj5g/B+q+HCjJE/dl0qWe8QA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by BL3PR11MB6314.namprd11.prod.outlook.com (2603:10b6:208:3b1::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.33; Thu, 28 Mar
 2024 17:50:03 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257%4]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 17:50:03 +0000
Date: Thu, 28 Mar 2024 12:50:01 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Subject: Re: [topic/core-for-CI] ASoC: SOF: Core: Add remove_late() to
 sof_init_environment failure path
Message-ID: <5lbf5j5pgzq3ln36n55ayjj52qtgphbrhzz3rmkkddxsvdqnvy@noke7554lndj>
References: <20240328135233.1204694-1-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20240328135233.1204694-1-rodrigo.vivi@intel.com>
X-ClientProxiedBy: SJ0PR03CA0121.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::6) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|BL3PR11MB6314:EE_
X-MS-Office365-Filtering-Correlation-Id: 0c3b06d5-fca9-4158-15d1-08dc4f4f7f09
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bqb8VqBpR8tq4nZuFAuaQGH+mZpb32FOAw8cwiWqvxTlx86pCEzZ0iQeq06Jeq7PGeTrUsmNzw98eg2rUxExxpBrbd3CNdeSmn7ReD5/WsFa2rVCePO8v5MNMWLXcYVRq6dhO+tSwWOOcIXeVDQoIaGF2fmRRXYSPzHEx9PavEIx+azxon91+xu0w2uZGGzxVZvtpyt5ByPPlQ80ew90faRbLKFAdDxQkHzdHPppxflnU0awA/GOAmjf+HR7UIYtoRbxoOWoEHZF/TX3JBnUOLsiQtxF6Q/VC+cyYfV7CTd6UiMbdC63LwRP+A+z0EUzwuYjQdpKGIW5VR2ZUhe70n+Fzly6/XEh2XoHvlmDTvvy2kQabO4JX7/QkM4VClOKqTiPttLoUZNBTAAjquwFaV0aPpxQts7TlDer75j2xG2R8pjsESm+4K682gc5CohdhhGMtCNVUl6QASsDLeLE5jcgMoomT7zEEhH/M2/tO8QM6TyZFT13byqa2IlRXs/eP8Agz+9Pd3h6B3dCd69zUQm9/t+jYkFzwPFq69vhP+5vOwhbqMtX6cz27mOlgjnkWr0i9zGwPBzmGVZGiUme5BJhf1xU86zP8czreY6OWKE01wOcYiKFLSVka2YEy0U0
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?okgdl46Cc3TaK6KqgnIIYjeUzQYiahjVom4R1NKuMUU9Pzw9hiMkoGxiftgn?=
 =?us-ascii?Q?jHWD/52v1BBcs7G7McsqPJiE3QR7bAMDN9Ks51qxTFs9Xs2JUmdow867Htp3?=
 =?us-ascii?Q?F7co4vfNEOvpkN1XFytn/TdK0KkY3HM8WV09vFhY92fv8GcSOue6W8v4ySub?=
 =?us-ascii?Q?VxHgTPwSWhvk11L9/Dx+ST/40a00082WQjuO2oz3Xl/xom8BRNczyOF5iyy6?=
 =?us-ascii?Q?MnYjMpvEiK3tXQ1foNs990/Nj4Gpcx1MR+m31Hw5JtZIDl34nEXC/CT6X2Ol?=
 =?us-ascii?Q?dqw4MNrC4tP0w4arqqq71DbZjzKrDbmF0gEH4QhumqizCGUI5hO7E0JT5VP1?=
 =?us-ascii?Q?qmkU8JVrJAl2x9VeuRzsLRASkLY6hhsH5EMWUSnPNHbxvMJMu9/abVYUUjHD?=
 =?us-ascii?Q?R49Qbti/fj2/ZZnUjwqypmDVoK5iRsasj0+0DyLhUnhgfi1upx0B5ttXPrgb?=
 =?us-ascii?Q?ZtJIl31R9Byr5UDXpYYNq1rVCbirdAD10HcARsl6k7jmZiO4sH84ZP/oVxbM?=
 =?us-ascii?Q?gbwrL8ogFoaiedABfONJIxFNdQmn4hkvTuz0VGdrrJz5B3OkNx0507kaz7Ri?=
 =?us-ascii?Q?hrCPj1DtQk7nzySKNtiwswWyTqMLSGJsPi69wzmSG+3oKpBp0d0l6PykWvvK?=
 =?us-ascii?Q?4qzWXxrtw2LrFGp3LND2NvP2MtyLbMML13TpKhbwH8U5Cn7NFaS/3S8v9vur?=
 =?us-ascii?Q?aPsShBMl0mj1mSnnkFEEQPtYIINFfi/uN2lAnto9dy7oDltlTktqXJOkhX4g?=
 =?us-ascii?Q?TPNvyGNo/G/76XQLymYa8dhk95dOY/Av8FxfAMd/WuZM5ninxL9ZxQz9tO/6?=
 =?us-ascii?Q?nXeEVDkax699u72w4HHwQBW2DQSOdj81yrtHEJbTvhl309yNrvT41LcCGLsT?=
 =?us-ascii?Q?lIqfv9BpxqXRXpSxIrNQBDkH+JABg5VSXraVKzYb7+FVAld10fCA5eu1H3zx?=
 =?us-ascii?Q?FJKXHI6ozf5CcHP6dtb1wqu6ZE1yvIz1RKw9BNrdguZD0mU/BcfWx6iKHo8d?=
 =?us-ascii?Q?69Sbutoj6dIKpClsaMMoDZaVHJiZbRsfkRNg29yxA/9UNHzKKA9ekkYkjCPL?=
 =?us-ascii?Q?VA+fb9ckU03cq/Hj2XuI1pChAVeOTX3lP5KvIt9TfUFeMwniPhLHf3Pj0Nav?=
 =?us-ascii?Q?yPvFgSoAKd8wJxxbHBas5aLbtqby9nclt+YkhYmQYOYcQb7OWfV6VcRzQDIi?=
 =?us-ascii?Q?mFVo/pZ/3XTMdL3bRNCoSlfyUf8wdk74lbSN+6XkppMnuRXvJw2PlcT6ujjb?=
 =?us-ascii?Q?xjUPZ0oVfHRmURFkS8CUZhgbdbBoGdcnUYKIIlvRdzxFc3h2eHZEnfTsLjSm?=
 =?us-ascii?Q?wVdc2gue2JtjzlkVTe5eQ31kuvBEVS5GfCJ8hgke5ZRR+ct0ldlD0o3rvIKS?=
 =?us-ascii?Q?v/ZVElzzGwa7bJVTSq6Eso536sr2oQNG55V7lZR1cjyjJ59bQxGx2RWJwHOX?=
 =?us-ascii?Q?Qi5iAMcMsqQ5GKXJLn+x+iTSUsYKOe+rEYFoVI3LELZKksPyYSaxeLwsWPDV?=
 =?us-ascii?Q?KwSsivfZOSTlpHVbO8Qt56xlXQWfnu8LLXzvhU0cctywZnlB7/D0F734dFVg?=
 =?us-ascii?Q?zSxRpQXsxz0WMOwaSQdxAF2S3faQpBk774JaS/nqXN47DL0T8DUEDoljqkhx?=
 =?us-ascii?Q?rQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c3b06d5-fca9-4158-15d1-08dc4f4f7f09
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2024 17:50:03.4222 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7+q1W8xMnXd4QKWuLvQYm2uCCHtTONPrXGmo+YALsp8hyYKwf6S4eal9YJpiDq1lyiG4ADmFmRwG3d8GBlDoIpwB0PPbuHpgoAEdwjXzKws=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6314
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

On Thu, Mar 28, 2024 at 09:52:33AM -0400, Rodrigo Vivi wrote:
>From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
>
>In cases where the sof driver is unable to find the firmware and/or
>topology file [1], it exits without releasing the i915 runtime
>pm wakeref [2]. This results in dmesg warnings[3] during
>suspend/resume or driver unbind. Add remove_late() to the failure path
>of sof_init_environment so that i915 wakeref is released appropriately
>
>[1]
>
>[    8.990366] sof-audio-pci-intel-mtl 0000:00:1f.3: SOF firmware and/or topology file not found.
>[    8.990396] sof-audio-pci-intel-mtl 0000:00:1f.3: Supported default profiles
>[    8.990398] sof-audio-pci-intel-mtl 0000:00:1f.3: - ipc type 1 (Requested):
>[    8.990399] sof-audio-pci-intel-mtl 0000:00:1f.3:  Firmware file: intel/sof-ipc4/mtl/sof-mtl.ri
>[    8.990401] sof-audio-pci-intel-mtl 0000:00:1f.3:  Topology file: intel/sof-ace-tplg/sof-mtl-rt711-2ch.tplg
>[    8.990402] sof-audio-pci-intel-mtl 0000:00:1f.3: Check if you have 'sof-firmware' package installed.
>[    8.990403] sof-audio-pci-intel-mtl 0000:00:1f.3: Optionally it can be manually downloaded from:
>[    8.990404] sof-audio-pci-intel-mtl 0000:00:1f.3:    https://github.com/thesofproject/sof-bin/
>[    8.999088] sof-audio-pci-intel-mtl 0000:00:1f.3: error: sof_probe_work failed err: -2
>
>[2]
>
>ref_tracker: 0000:00:02.0@ffff9b8511b6a378 has 1/5 users at
>     track_intel_runtime_pm_wakeref.part.0+0x36/0x70 [i915]
>     __intel_runtime_pm_get+0x51/0xb0 [i915]
>     intel_runtime_pm_get+0x17/0x20 [i915]
>     intel_display_power_get+0x2f/0x70 [i915]
>     i915_audio_component_get_power+0x23/0x120 [i915]
>     snd_hdac_display_power+0x89/0x130 [snd_hda_core]
>     hda_codec_i915_init+0x3f/0x50 [snd_sof_intel_hda]
>     hda_dsp_probe_early+0x170/0x250 [snd_sof_intel_hda_common]
>     snd_sof_device_probe+0x224/0x320 [snd_sof]
>     sof_pci_probe+0x15b/0x220 [snd_sof_pci]
>     hda_pci_intel_probe+0x30/0x70 [snd_sof_intel_hda_common]
>     local_pci_probe+0x4c/0xb0
>     pci_device_probe+0xcc/0x250
>     really_probe+0x18e/0x420
>     __driver_probe_device+0x7e/0x170
>     driver_probe_device+0x23/0xa0
>
>[3]
>[  484.105070] ------------[ cut here ]------------
>[  484.108238] thunderbolt 0000:00:0d.2: PM: pci_pm_suspend_late+0x0/0x50 returned 0 after 0 usecs
>[  484.117106] i915 0000:00:02.0: i915 raw-wakerefs=1 wakelocks=1 on cleanup
>[  484.792005] WARNING: CPU: 2 PID: 2405 at drivers/gpu/drm/i915/intel_runtime_pm.c:444 intel_runtime_pm_driver_release+0x6c/0x80
>
>Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
>Tested-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>[This commit is still under review on the sof tree, but likely targeting 6.10
>Adding to topic branch to unblock RPM in LNL VLK-56970]
>Link: https://github.com/thesofproject/linux/pull/4878
>Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


Acked-by: Lucas De Marchi <lucas.demarchi@intel.com>

to merge in our topic/core-for-CI branch.

thanks
Lucas De Marchi

>---
> sound/soc/sof/core.c | 14 ++++++++------
> 1 file changed, 8 insertions(+), 6 deletions(-)
>
>diff --git a/sound/soc/sof/core.c b/sound/soc/sof/core.c
>index 425b023b03b4..3e41821562f0 100644
>--- a/sound/soc/sof/core.c
>+++ b/sound/soc/sof/core.c
>@@ -339,8 +339,7 @@ static int sof_init_environment(struct snd_sof_dev *sdev)
> 	ret = snd_sof_probe(sdev);
> 	if (ret < 0) {
> 		dev_err(sdev->dev, "failed to probe DSP %d\n", ret);
>-		sof_ops_free(sdev);
>-		return ret;
>+		goto err_sof_probe;
> 	}
>
> 	/* check machine info */
>@@ -358,15 +357,18 @@ static int sof_init_environment(struct snd_sof_dev *sdev)
> 		ret = validate_sof_ops(sdev);
> 		if (ret < 0) {
> 			snd_sof_remove(sdev);
>+			snd_sof_remove_late(sdev);
> 			return ret;
> 		}
> 	}
>
>+	return 0;
>+
> err_machine_check:
>-	if (ret) {
>-		snd_sof_remove(sdev);
>-		sof_ops_free(sdev);
>-	}
>+	snd_sof_remove(sdev);
>+err_sof_probe:
>+	snd_sof_remove_late(sdev);
>+	sof_ops_free(sdev);
>
> 	return ret;
> }
>-- 
>2.44.0
>
