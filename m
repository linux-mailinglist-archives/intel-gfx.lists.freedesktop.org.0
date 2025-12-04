Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5973CA40D8
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 15:38:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79F0510E1F0;
	Thu,  4 Dec 2025 14:38:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K4Cu3Q4Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B811910E1F0
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Dec 2025 14:38:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764859129; x=1796395129;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=6oU7HwV9cOvp6QAUHjgQIuTL9DE2nlr8NppdkUqhANk=;
 b=K4Cu3Q4Zu1o1r5go+V9crDb4IB5eMi3EHXUpGZnFgoVE4UvVFsgZqiXQ
 3NYR2GPOoW5u9oNKCkWrOY5YnNLvq0NMkR5u8Kh4oYRcPBvErLxQyfEeF
 XciwomgiSN0pIu5cf0TbGsdvZkgOMnCKLZ9LMQPHPnFQ2TXj1MQE8c0JH
 BE65LVNaf/aBCbwEQE/GzUWZdksNyAgzE/1s31PTYS12iVzZzFc8uYXl6
 0dPrMnLmmfhaNMgRrS0hDLUQ/RK5Ciz87wcANJ9v5mWrtac8dEhmc6Goa
 OUmd3y5mLRI9BDLE+RiyucRZAaKQSACARDJgEmHNTtjDkXzH2ji7FEW1q A==;
X-CSE-ConnectionGUID: HAY6JIDDRgWoQJ0rqH1s8Q==
X-CSE-MsgGUID: 5Qa1LnL/Qw+QeQFy2Ys8tA==
X-IronPort-AV: E=McAfee;i="6800,10657,11632"; a="78229468"
X-IronPort-AV: E=Sophos;i="6.20,249,1758610800"; d="scan'208";a="78229468"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 06:38:48 -0800
X-CSE-ConnectionGUID: D8ifOFkwQ9qUE00W3gFW9w==
X-CSE-MsgGUID: M1tp3vKGSqOJshxNAqZm7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,249,1758610800"; d="scan'208";a="232336612"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 06:38:48 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 4 Dec 2025 06:38:47 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 4 Dec 2025 06:38:47 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.63) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 4 Dec 2025 06:38:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=p4G1vVbyKwwM/4cLZKeeoegyvk+jrvDgOvHWIr73BKuXfS9YRXdzb6cQlV4yB925vLt1JbZ7tx9emJZQTXMl/zY+SKz5jhst2+O+P7V5ZA7l5BK5eaeIFhtuWTQNyghd0EY9Iv2d6G0xA2cPBasIU/u34cISfqbh6/684pxzFpuNE3+MwLkSdUcFfr054Lnc9+ECI2FkjKW4auOsGnHBVT2dmZXtL8FOPPzT9/s56vjV1vqMKNKINKzTJm52Ck8KklKkMsVEIpW/Xoluq8wHuJ+iqrjxsDCVZs7jDTQZh39COdjAsRfTVZm5zvHZI9Qj0P5nGYrhrH+kcZqw7r310Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G8cr4Ef2JUJBGKvrWfHneBIpvMuYA444NjTxSfVu+24=;
 b=N4ar1HPl5v84PgM51Q8xWxavAavZuAFpPuFuSl56YW7U8LVnH4/zkmx1rLANdpvO5uO3ViDLmyXQdrBTHziZwdQwDgcBvKbO3LuF+HEmvO6PWqOHly+Czpkt5lhyXfLfvBuFX0Hn/GALnhXbf/olV4FJ4KpTb92iOZ++gapsrGsDlNb6C5Xko92B8cYewwtBJ49OsAgk/G7Qes5UUOg/pOtrTUIbwuz/MXJBIxDKnFTwErLCAHRl1SNE3IRyTYAY2GZwkFoys6znBDGhaZprlO8AMruHEnMB3eiLnGXgDY8k+13ReGoHJ7I1WBNc8n9show74bnxXh+flgJ6v5gieg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB5064.namprd11.prod.outlook.com (2603:10b6:510:3b::15)
 by SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Thu, 4 Dec
 2025 14:38:43 +0000
Received: from PH0PR11MB5064.namprd11.prod.outlook.com
 ([fe80::33e9:2b0b:5259:ff9e]) by PH0PR11MB5064.namprd11.prod.outlook.com
 ([fe80::33e9:2b0b:5259:ff9e%5]) with mapi id 15.20.9388.003; Thu, 4 Dec 2025
 14:38:42 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH v5 3/3] drm: Avoid undefined behavior on u16 multiplication in
 drm_crtc_vblank_helper_get_vblank_timestamp_internal()
Date: Thu, 4 Dec 2025 14:38:27 +0000
Message-ID: <20251204143827.111428-4-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251204143827.111428-1-krzysztof.karas@intel.com>
References: <20251204143827.111428-1-krzysztof.karas@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO6P123CA0014.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:338::17) To PH0PR11MB5064.namprd11.prod.outlook.com
 (2603:10b6:510:3b::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5064:EE_|SJ1PR11MB6180:EE_
X-MS-Office365-Filtering-Correlation-Id: e0e65312-f36b-4fd5-8f95-08de3342d27f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?DNiRScJ1r8N9dPxmtBJ3O+8XKnnKUeh5gv1coMMkDru9m74PCSVk5gRxU6yV?=
 =?us-ascii?Q?VHCLd6JX/xdcPEli+hl4YFT2HvSZgAs0UVU+x7/oGeCHaSAUANoZlmNezwPG?=
 =?us-ascii?Q?5v7QBTUPHUwFA8KhAhp0te2Yoi0Zf7CJjaO2TW6Umo3vYHjUfOFIYqtvi18l?=
 =?us-ascii?Q?GjcgTL2PGY6czz9b5JV4aoQOCdOB/SHZqyPAw6KGsfY6WkrC2qqcXrZcK34i?=
 =?us-ascii?Q?RHou6DotbIxr6R5TH9Xsiv8cEznMlVk+1w7LGG5hRe7ucrVwHqE2S2dpsokf?=
 =?us-ascii?Q?yLj3AGCBvziasYf/WPU0bv1KCb4vsNMFD5W26fPUYiZCtc2MYPnr6iqTGjge?=
 =?us-ascii?Q?FBClu2UvQFmesPtp+jaYUGGnVzF2xeRZUFR9YdupOr/bXjDyFQ3qChCsa/9Q?=
 =?us-ascii?Q?T3320Lu3euaKl6AwFJG1CDl8RQH+ZyYFwbkshGb5jFcte+pM+7eL8Mra06xX?=
 =?us-ascii?Q?73LFwaLAlLLvrAF3tFRpNid22DVRvXHvO2vkcQopMKV80gZ4cuctsTgEloTR?=
 =?us-ascii?Q?r8lol5bpFCi8ggKo6H5GyIWfEJ0fbY1PYUb9eJl3/HCsuCfwo5JlSOpcVamI?=
 =?us-ascii?Q?oZhAoXJGbQF4uvzLti7oOcXXl9VMGyTMoZgoo1sdJVfFsGKJ3h2xNbLI1dOS?=
 =?us-ascii?Q?hmHLS7+lAKwlqS/KfPzMLdPYonGulZEORoMGI7YY459GguZfE61wBHGo+nh9?=
 =?us-ascii?Q?Y3vst+YXpWEsLEk5T4zn4FqUgIrExxsRj1iR29N1tNx1Ao+RGERrMrAsLDmp?=
 =?us-ascii?Q?sMr/lbRXGsjv639WqQSVerUKlWyZncrf50zps687q3MH7xx207kqGoS+QW7m?=
 =?us-ascii?Q?0SDUkpcmru3V9cW3BC0uGxN5ygPh/0r/3bnLWJ+BACa2Vtb+SW/8kP3qYvJA?=
 =?us-ascii?Q?6XHOsUWE21Waec40FtMOcDnYgHmNEuFA611Y1QVPxrFe2iHLVYTdF4Zc8FyM?=
 =?us-ascii?Q?UQ8Z39Y4Re7+H4nKXSXb1trbftekQhxYIWOfQLHVBii6ETbCuxH7EtGebZPR?=
 =?us-ascii?Q?ccS7TVTzmx9ZlVSvOhF+beEtyfogSrVsvTyLL7POIRM0sRX2mlM+01fuK0MB?=
 =?us-ascii?Q?Mim/1HhGEc2dp20hWLQ5A4U106UcmZrWL5JZcSTfJlwn5Y1Ci18L0Dwb6o+Z?=
 =?us-ascii?Q?/ERAo3lKF0n+QNMshSc362VqXdf0dOAzMEP2mt7xoCjkNLFx7rfxClpnY153?=
 =?us-ascii?Q?I5MkFPxZ9EE/OQ9/93cG2bJUI7SZoS99jCYQB7qFAC1KAFrbDmUjCD4GmwNP?=
 =?us-ascii?Q?ckt3DCfH+EtILSOUV+hEdjiggXQCdksqbZXylS/sG4vtYYRi9QWxcjpM9Kwc?=
 =?us-ascii?Q?4nUb6DaVO/1z+ahRhiD1wjvqSpZ4g5Dsz6w8p4nsvSJAcTZmNT9rULMiT40H?=
 =?us-ascii?Q?Kzpps4xJiL9ZlReakkTPXmWQNR2l3fCm0rs2PZ8hcsttLIRml1yy9wnYW1xK?=
 =?us-ascii?Q?SwlVya7Y92OT06yFYCl3QVpVYNlWhjgf?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5064.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kDI6Dw4sSjXBErbKV/U3xw6gKMhgR+HusTPnTy3wbwj0RuTO/n/MYk5MUEQQ?=
 =?us-ascii?Q?6o2Rk/FKeIiQ5/rHDr2LVGLAOTr8ooUw5NWoKQzLbdEB/8Ox46KtvgG3kjWS?=
 =?us-ascii?Q?4zZgc/7inekzGKkQaouvs61fTZ5XEp8lcSEQTu4VHFTYWWYguUkZqOf8w/Dn?=
 =?us-ascii?Q?Cm+rGTrRBipRX9OlXk0nc7JzXkkfM1ign6R1/1uEvr8vny0XiQyr+oea9V0g?=
 =?us-ascii?Q?LwPfBOt9mqcJSNmNKx1sD/V3VcaVvaASknrxXiwH01DampLqmksxpdiTYMxh?=
 =?us-ascii?Q?+20YCNXfsIr7nQEc0N05auStf+TtoCONNLD422MIvEr6HRfOyLclo6K7ANN3?=
 =?us-ascii?Q?/BrD/eW9dWFP3EfiPzr6u9xuQlydbzbjbtCS5XzidrHdq7OZQ3wOgSr/Jvqk?=
 =?us-ascii?Q?I1V4SUlOlAPl6/hFAl1LrR7DclkUXmhSJfb1MB5LsN2qh8/3Zl9PPNn7kaRU?=
 =?us-ascii?Q?BWJVvZ98P71We/D+dGZklY8M4+QO+UTKJgdpajT3/uEQ6antNAQP4W6zShao?=
 =?us-ascii?Q?HSO0b3uTOgDF7kgeftp0ke0BxX5Bf4xePMkj0u0H/yu0uIKF3AzDSnMDlW4x?=
 =?us-ascii?Q?cgdkYdy+7stXSQo+E5lvDC34Rrd5E75dvFl7nxXYaYxMMsczuIJLCnpWuAFk?=
 =?us-ascii?Q?279p2fc8F2icSTRabJGOL8C8BJISjAeOy264Sxhgtyl34YNT79IEjPDpKwUa?=
 =?us-ascii?Q?LPDN1VCyzgRCEt1Wjd1RNlAz29omarfkN5SdadyxQQN6lbY9M1A/yvgRL1wd?=
 =?us-ascii?Q?YKgZISFFMgI3PQ+HvPgk6JQwzgPttLsEKNxqfmRchcjzxIgnUW6ayTAJk3I/?=
 =?us-ascii?Q?zfXU4M/dQttmUPLOgeAeL0JyFnFtbUkbH8MmMG77rr3lveVbnRoQMg7ueIoO?=
 =?us-ascii?Q?eXueM+P8bEdIE0Da0lzzNbcFrguFa6cLaRmMchZA+fIAnitBL/lnUc2eL1Vc?=
 =?us-ascii?Q?J19gSgPIbJVJGnBlDOEHXKTwpxqG5eVEMpxjGPIzz/Vsta5/WOO2omO6SM0h?=
 =?us-ascii?Q?mDQ5PWYgtcqADT0oM6Lc2UytW/na9fQJDTgSEb9fBVrYyeh1k7AyBeiiKHYo?=
 =?us-ascii?Q?NK7ZQ/C8pp+TGZdIWzO7l/8OwNa9IbV8UlCDez62bQRkKMT7N7MpE49WnN2j?=
 =?us-ascii?Q?KN4IkmqKpmj2caQ+fjFJVRwxUYG7Bry5s/XrCEZgu+81OPLKFSwRa/IBnCSA?=
 =?us-ascii?Q?DWIXp8z1rakYM/VyM6qO2tUbwm9v/O71yTj1Tjxg1mf1WUcAkB6wfwxCPRsk?=
 =?us-ascii?Q?lkHhFHMXoHR07588fT0qQvSqsV3Nn15ywQ3pXlH90/Mb5P6yas7cgTUZfLyP?=
 =?us-ascii?Q?Osfz/TRQ5oA13NESa4K8/f2AF4y5SQnLfqh86wTQ1HFc+PwM1e20rGIQrOzm?=
 =?us-ascii?Q?P2UGPGsRw5amVcdE7Q5eEKiPYEmpvMIbBQAgbn1HUnbd7HU5ulBHnG03ty/H?=
 =?us-ascii?Q?daGrmerIyMQi9TH0PMslKoZctg13y9uFH+v05RJ6p+iXuRHXRkRxG4s1DHGA?=
 =?us-ascii?Q?p4PcFjEsa142Cm7ZNtXc6spqpFg8keLLlIPdYb9bQgsE5b4vPruB66lZc1vG?=
 =?us-ascii?Q?GZlmd8Tx+ek9ee6t3gsJM6VlNZ5BWf9zotnJUiVeyWpK3hOW+IISXDZuTI9W?=
 =?us-ascii?Q?HA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e0e65312-f36b-4fd5-8f95-08de3342d27f
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5064.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Dec 2025 14:38:42.8829 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: n4fIizO69ElRjQM4AVntR7x4Txd9qfrL91f0w2Kx/bUxZ/cAWT9BNYPJ6LxtL3jOqvXxM5x5Xhs/ttNn5UNPrRogrWklLCYjyl2FdwVmnjQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6180
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

vpos (int) field multiplied by crtc_htotal (u16) may cause
implicit promotion of the latter and overflow the result causing
undefined behavior.

Cast the u16 operand to (s32) type to avoid that.

Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---

v4:
* use s32 cast instead of int;

 drivers/gpu/drm/drm_vblank.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
index 32d013c5c8fc..e25dcaa6cad4 100644
--- a/drivers/gpu/drm/drm_vblank.c
+++ b/drivers/gpu/drm/drm_vblank.c
@@ -791,7 +791,7 @@ drm_crtc_vblank_helper_get_vblank_timestamp_internal(
 	 * since start of scanout at first display scanline. delta_ns
 	 * can be negative if start of scanout hasn't happened yet.
 	 */
-	delta_ns = div_s64(1000000LL * (vpos * mode->crtc_htotal + hpos),
+	delta_ns = div_s64(1000000LL * (vpos * (s32)mode->crtc_htotal + hpos),
 			   mode->crtc_clock);
 
 	/* Subtract time delta from raw timestamp to get final
-- 
2.34.1

