Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FABE85CACB
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Feb 2024 23:35:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DDE310E598;
	Tue, 20 Feb 2024 22:35:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nfapFFAz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC07B10E598
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Feb 2024 22:35:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708468512; x=1740004512;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=j2vzOiY7kwSyPSQQDUNiUA3G7fI5EmMzSQBtCyZI4DE=;
 b=nfapFFAzlc2e5xiZfhpYnsYon9wKULdctolgofEGpDwgMUgqk3UZNlYY
 iP+jQN1yL0AybSwkmyTG2wdj8sQ0ER7TI/1BbQALBLzBiPQjSs0Ahayrb
 hqGkdqFGSd0xE5aGjwTBLXO7l8qCyM4xs/f/fDrkoIcU8JmgJpul5rCyB
 2jhru78V7ftPNHXrLXw7EhDJrkMD4SZptmdZ90t3n98/xsQtmujLKig5k
 heaKGGUN7balXdjiIC3kOOeX/5HTDTWs1kfs1vWgLfLIlgJBHjlztGuZ9
 nq7bHJ/NM6Mc91l2FudA90agMS5AcmD5KPnzF8r2v4v07vFkmok8bH4v3 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="6377131"
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; 
   d="scan'208";a="6377131"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 14:30:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="936521245"
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; d="scan'208";a="936521245"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Feb 2024 14:30:39 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 20 Feb 2024 14:30:38 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 20 Feb 2024 14:30:38 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 20 Feb 2024 14:30:38 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 20 Feb 2024 14:30:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dRYcuo4sgunJAOZqpf0uNMmfI3uD2QnfHs8U0TXu2REtLYJpQ7YR+wbxtma7UQ7fo8HBpS3x4vphREH4fpipJK1ay+XPlcfZk2AXbfS0Yfi1Co8kGoaPh+TItoQPha6r52285O/01Zf6UFK+fq6TEgkeylr4VFkHRbzC/PkadPHewZseioDB4FjcRW3d31UWOIwfx0AuJMbnPNvHg2DsrKaEEmQjE9Ln3rvdeMQwLW7QOioQe5+HezNacRPxni/I7cXXNQTAuJa1qsPDHD8kc0e4f4MM0EoOt7DBveFAj4UaEG49m+YIgXXGg+KzzKbebx3agc7bP57KpmTOKTnvPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SxvBoDJc8/RDHLGL3x0zpSJPU7RYUvVAcpx0oWtNmSs=;
 b=Gmbrr+F8IL0AE822fvlupjFMYc9PCxedNQobnffOUWi3YBt4kviGXdHzz3frVX/aB+l3nlyCGwIIylcw6cJw3+1XdH/rbJ5uS6+U/c1g1oOLfYZF3awdEqPCms6HRilsanskKTDuZ9YWggogTZr4E06mnkosjItbMloDR1Tn7glCEeg7yZHan1/smOhOT0wykxr5t6hRV3Mm67lYOxr0gMlqDQpo1pzJeOEy5lJIQeXEgUtM8NlUa0F5xJnJ3CAP/nXy6bHTElGi8tlRC6SYbIOfuwed2Kzqf7QbDgfEsGsfKzzoqUH1JOh534XVIunGTwMHwkov5uX+Oz6nsyvcSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SN7PR11MB8027.namprd11.prod.outlook.com (2603:10b6:806:2de::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.38; Tue, 20 Feb
 2024 22:30:34 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d%4]) with mapi id 15.20.7292.036; Tue, 20 Feb 2024
 22:30:34 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Gustavo Sousa <gustavo.sousa@intel.com>, Stephen Rothwell
 <sfr@canb.auug.org.au>
Subject: [PATCH] drm/i915: Fix doc build issue on intel_cdclk.c
Date: Tue, 20 Feb 2024 17:30:30 -0500
Message-ID: <20240220223030.78372-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.43.2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BY5PR16CA0032.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::45) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SN7PR11MB8027:EE_
X-MS-Office365-Filtering-Correlation-Id: 928e4a8b-e509-4edb-6a30-08dc32638da9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: a24DJvdLDHg5Ar3e/m9qBNlgbJZrF3u+cH/75Jnt8uk0QwB7sRlSVNo4cC3kz8Ryppq9ZS80RZyWfPYBit3fFpxDlZYZwcR32Pz1s0s2sp7gjNxoGgQODH1Aeo7u9W2BPiGuc4TZkMtN39TSp9pL17+SiMlIYIbehmDcHeQxoi5E9UHIYWcQVSSgsJ3to/2IEPUzsBwo5jat+MqvIYUBeVLLQVdZ6kp9mSIbbVfiyQl6Tn54M4vrvowuEUq+VMD6jvAvwCMRBJGaI/dGyUBhhP3cHZf9Y0mEYl5codZgUZF7VvDpkJOvLMWGdr9+osupxX00dGezIQ6CFezJ2WqRq+Xj7gY/mbcOLYQhqBrN1hx6k23d6HAf9njz7ilAGMwMB9jW+c0lSZ10O7RNSXPzS8w0hAK/Tu13F2FgQDCAcVYIWvl3NGC81CpTzkqjJoMlkalKw93T7cD/WLamX/mNX8CSWuSFBucbHDCm8hpH126grexHqkqqwRaF5vCfPDw+DYzQuw8dCufw8s4ORKY/nkSg+hgsNouRUMAu3RZIwd4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(230273577357003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZW9iRndvVml4RW1iakxWY2RmajZqd2dnVnQxbzY0Ny9DUm5oSldhVjl3cDJY?=
 =?utf-8?B?UGx0ZElWb1g0Nys5V204TUdYbVdVQmVNOHM5Y3E4a1VadXZ4U3o0NTk5RzhS?=
 =?utf-8?B?U0tscnhBOUFMMTdxM0laQXZQdk10WFo4dXlZMEtuY2pUSE1mbjlJQVk3N0xU?=
 =?utf-8?B?UVRHbHFEOHlkUjN4NW9VdTFyTFdMQVc1Qjk5bjhLU29EYTFpQWJJUTgxV1JQ?=
 =?utf-8?B?RmRIeWxIU2crVUo0UFZqaDZFN0JWdkxpeWp2Wnc0ZHhyVmcvT04zQlB0cjBD?=
 =?utf-8?B?TmZYemJrSXFsRVBOT1piK2dMMEVQdllvOWJJYUxlamRsYi9VemZyb3hySkZ3?=
 =?utf-8?B?b2ZsWmY3ODQ1TlAwbTNlN2lZckY1N2hvSlVrNlllak1yOHJHR0E3Z0FIRVky?=
 =?utf-8?B?THdNL2NPRTVVSE1rNGRlWmZicE1scVJmUXkrUk9pUGpsZVdOVG5hU1IxVjNa?=
 =?utf-8?B?WGI1MDc4R2hxdi9RUXc3MDhSc1pES3JnS2xyai9XUEtjNnkreWxQK0VrSzFY?=
 =?utf-8?B?YmFJc1UzeVhTQzRXRVFWL1pqcGdRZENGdm96R1FnR0dvYUxrcDI2L05LNHlo?=
 =?utf-8?B?OVZxQ2lLZW0yODlLak5mMGhiRFVOMmcvazBzL0ZmR3ZhNEVQZmE5NWJrYlpK?=
 =?utf-8?B?S2h2VXo0ZFBKZUEzdHlIRHQvbjA5UUVxakZlVmpXeVlBYndaelVSOEZYUk13?=
 =?utf-8?B?SVpxV1BUUzl4MUM3RjBSanhsQnVnYS93enpPemZSV1VpdDVyNlFJdC9QaWNa?=
 =?utf-8?B?Z3dQYmNvOCs4RmpBd2VmejU0L0lRM3MxY3FpTzA3MXgrUjhjZkNHWS9qc2pr?=
 =?utf-8?B?SWw0Z0N6QkpzcGVJd1hNdTBaOFd1NWlYeWdlRjRXR0xRWi9pcGFHTlh4ekRs?=
 =?utf-8?B?UGxtOWVVRG1HWjZ1Q3h4SllmaGR3ckNTcEdzWDlUSGtTZFVuOW04ZWhON2Fu?=
 =?utf-8?B?YndicnlRNWNNN2hlaDVtNlU4SS9kckRwVmFOZDljR1l6eG5wME5zNWtZRG9x?=
 =?utf-8?B?d0hzYmtvSHduVFRwZzhpZG15NjRNN3o0UDdvamdBRVRGWGpWbnZ0S3NiV0Jn?=
 =?utf-8?B?M3JrSHFraGh4d1hRZlFGZUMzaEkvZ1pxbzhvYWpLQ0luSXQ1REtRSWRNWjh3?=
 =?utf-8?B?OHZ2RnZLVEhhMjdHay9DMkVuU1k5ZDZ0VWhxeDdXK0gyTEV4ZlR3NGtJNjRh?=
 =?utf-8?B?Q0xhVzdzR0EvMVZiQytIYVhaT3lGdnUrUHJJL3dGU2RhNTJYU2dOcC9yTVJE?=
 =?utf-8?B?cVk2T0xzMFRnT0ljVytiSVhqU094LzFRTzRwSFpoQUo3b0VJSUg3RndFV2Vv?=
 =?utf-8?B?aVFXbG05ais2V0Q4aFJyL2llMlBHem9kaVNFUGpCWDdOSWhNb2xZUmpERk8x?=
 =?utf-8?B?K0JkSVVQaFFaK3U2R2p1KzVpenk1Zm03dDlFRFozM3ZvcitobVlPRUQyMjQy?=
 =?utf-8?B?V1JYYWpVUHNYeUFIeGJyS2Y1SEZrMVg0UU13VHhNM3lobDlWOWxaaGk4QmQ2?=
 =?utf-8?B?YVdjdFZNTjZhakZDNndEdHhTY2N1a0VkaS9Fc2ZpM0I1ZmFzbkRJQlhUelNw?=
 =?utf-8?B?NWtOa0ZYVng2M2xIUDIwUjZLQnpXdWhxMmRtbm9NbjRXc28wYU9pOC8wRmRa?=
 =?utf-8?B?dnFYamFVTTkwOHZJVWlCa2ZtZFZ2ZEFtN2Z4VDZqOUM2OVgrcW5yQWdqTDRr?=
 =?utf-8?B?eG50VUIzVUZQL05McnJ0RkdZRGVmL1BjSHJrZm1hL1RROEtjTUp4RFFFMTdV?=
 =?utf-8?B?eXMvVEIzd2g4VEkxNysvOUp2WWJMdzdIeW9sakdlV2xubXQrSzNMNVV4aGZi?=
 =?utf-8?B?ZWlUVEZsaVJLcHYrd3FsNkpoUTlCY1FscFl3YkZkSnN6UTNIUTI0elR4N3Rj?=
 =?utf-8?B?WTgrWXRsdkp5UlZtbkdZUlROcGdjeUpzTHllMFBhaXpxRW9teUxsemdQdjVl?=
 =?utf-8?B?WnRWRTUvaFNITEhkVVRiTkViUHpCeGFtRzg5UlNEM2pOY29jRDdhMjhTSGhB?=
 =?utf-8?B?MGFSUkowczNIRDdyRnpyUWJLU1VRamR4Q3hIMGtuVFByUUhuS0JxRE04WGwv?=
 =?utf-8?B?S2xrZGJiMndDWWc1WUJrY2Zia2UwbFp4NXlMVDZKVFZCL3J5cStEYTM1dnJN?=
 =?utf-8?B?WWdmbEZkbFYrUGZ2cGh0T0VHMHdyN09RRVZHK29PZzdETnNrREllQ2w4Zy9y?=
 =?utf-8?B?ekE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 928e4a8b-e509-4edb-6a30-08dc32638da9
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2024 22:30:34.1812 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7DrPHy+YNAwEX/MalLo1RDoUI8msuHz/mHOXpqFx+CeIPzvKKTxAyRrOIgzoe2U8n5ezfj6yocCsStg/D5zX8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8027
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

Fixing some doc build issues:

Documentation/gpu/i915:222: drivers/gpu/drm/i915/display/intel_cdclk.c:69: ERROR: Unexpected indentation.
Documentation/gpu/i915:222: ./drivers/gpu/drm/i915/display/intel_cdclk.c:70: WARNING: Block quote ends without a blank line; unexpected unindent.

Closes: https://lore.kernel.org/all/20240219161747.0e867406@canb.auug.org.au/
Fixes: 79e2ea2eaaa6 ("drm/i915/cdclk: Document CDCLK update methods")
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 30dae4fef6cb..42cbc3203d2c 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -65,13 +65,19 @@
  *
  * Several methods exist to change the CDCLK frequency, which ones are
  * supported depends on the platform:
+ *
  * - Full PLL disable + re-enable with new VCO frequency. Pipes must be inactive.
+ *
  * - CD2X divider update. Single pipe can be active as the divider update
  *   can be synchronized with the pipe's start of vblank.
+ *
  * - Crawl the PLL smoothly to the new VCO frequency. Pipes can be active.
+ *
  * - Squash waveform update. Pipes can be active.
+ *
  * - Crawl and squash can also be done back to back. Pipes can be active.
  *
+ *
  * RAWCLK is a fixed frequency clock, often used by various auxiliary
  * blocks such as AUX CH or backlight PWM. Hence the only thing we
  * really need to know about RAWCLK is its frequency so that various
-- 
2.43.2

