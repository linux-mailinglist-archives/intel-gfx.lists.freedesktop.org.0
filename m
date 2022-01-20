Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35237494CD7
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jan 2022 12:26:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58B3710E196;
	Thu, 20 Jan 2022 11:26:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 129D910E34F
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jan 2022 11:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642677994; x=1674213994;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=m4PrV3z1PoS+usp8AJOUrL6/GiK7FRIYFRYp23fI/ks=;
 b=MGZ003yWd8ToPM5DNE+F9BjtPHBhVw2M56HB5i2pM8LRjgUtPZgmVpID
 sZ0d2EkDI/w78Nd4uGooQBdXW2xdJeKKHR0Ecz8TaPEmYLJWXnBaVw2pt
 lDtzn5Us2alkbL/WPjnT2DldyvH0oXn4g7VkSBjLDA4siwmmXKlEV74Ha
 Nq7C7pKL3h3lEFeGMPUulahZd2n58LKRw1Es5CRmepVmluQSZBtvm5P/t
 +SYxdTvjN/ZVnWC1rYYSKl4pNVrhMVGbMJeXq+57Lc5k2Ut043fKLCWZd
 L5G1pUk6NgFso0vF8stKr3qGC8nvr+CQ+GYygvyVVnMqBZBgp0ljjseeT Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10232"; a="242893325"
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="242893325"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 03:26:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="622866398"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 20 Jan 2022 03:26:33 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 20 Jan 2022 03:26:32 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 20 Jan 2022 03:26:32 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 20 Jan 2022 03:26:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kuHh3kv/kR/zwmGAvXJFMxPm0S/6/hyZU0mbGdoDeqzmEmOt5WUeNgRZPaWIjnE43rHfO+cqeCC913TEmqN7ldk8j6GbHJ8H3HfFsoI2/X2/YuZVFHolB7bucexbgo6kZev+hllaBSpeRkcnU3J3x1WrF4FLD1X2UYiux2zugLQb4/a2evT63Y+7SJPZJ2n+/lWkTzvKc10KaBuJusoF6lgFYvRCs/mqjsAnYbeuhY3kGghpN5Xf6VylOoZV/tCDNjIeNm65XLPhV3sE7roFUKXY+VO8ZE3eDc3dL1W1HIy/2E20n/vME/1nawqySUhCm+EpzhXoFOlxRWBPFPpb9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SHGVLg/CbnzN+/Q1bBBlxXPM2C3zgTjeWjXufxeNJLc=;
 b=KwNxVaIWpgB7iHdUeV3vB+7Is49aMs3EQYecCtV5rNbyq5Kz3sM/zgdgDwDilOB6rX1PcsbXaMmGL3iJiQx80DZQsFktPPOMAj2Rn7xStCbpwTdnrLWjYQv4tkOtzUtnsp7zqAriKpWnTV6+4Tdf5ig3Wq//AvDiPDvztyAviMs9VTLy3gegrxSUSi8jUFWs7jjw4hlN1O416MnrPwPT/42JHzetLVIkiWyWsK73T8kfbz+ojzB32cX96X2jg5s7VcBeafjx1UV6wt9k+N2zbjDRCiKclu5PvprIPSO1gD8TQKVqUzLNOydKJcZY5SKGO0J/CQaZg9EG4LLBCMuVsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1372.namprd11.prod.outlook.com (2603:10b6:3:11::14) by
 MN2PR11MB4510.namprd11.prod.outlook.com (2603:10b6:208:17b::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4888.11; Thu, 20 Jan
 2022 11:26:30 +0000
Received: from DM5PR11MB1372.namprd11.prod.outlook.com
 ([fe80::3dd6:746:9428:7315]) by DM5PR11MB1372.namprd11.prod.outlook.com
 ([fe80::3dd6:746:9428:7315%10]) with mapi id 15.20.4909.011; Thu, 20 Jan 2022
 11:26:30 +0000
From: "Piorkowski, Piotr" <piotr.piorkowski@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Thu, 20 Jan 2022 12:30:49 +0100
Message-ID: <20220120113049.213361-1-piotr.piorkowski@intel.com>
X-Mailer: git-send-email 2.25.1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO4P123CA0509.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:272::13) To DM5PR11MB1372.namprd11.prod.outlook.com
 (2603:10b6:3:11::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 58a245ec-7b04-4d58-938f-08d9dc07b44e
X-MS-TrafficTypeDiagnostic: MN2PR11MB4510:EE_
X-Microsoft-Antispam-PRVS: <MN2PR11MB4510BFD2B346AADC2E5381EA975A9@MN2PR11MB4510.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1z3hD6d+/vzhsN8Hh7B/ef/Zg6AOFnzv3SbAcfpvk+is7ObJ91EvzHQDt6RWqKEFnBL14668pYizTJ6tsBlhQ75WF1WxO8J8+gwouAPAIzR2yAOU3jzLrVpGb9Iki8w/D9hZFqR+RAe6zwIU1y0LZNCKLqiVIVsEJqUvPeVnkFbiDPCWql9i+nu1/T3naJmRLAa6uQjA4miwq8CS6Q3qKmLLqkN/4TA7q31nVCgCjNGjVBIZbiBseoNAdpPHRxxKUNh7oz3Yn+ptC82W1sSVXrD3PIL/OyPsdduHoaX5Kpw7XJ81OunR0sK+OCu1ybexrz0Ce3LsAqO0RZ+MvFqdOg9V3kiQVov/2FWEm2tneo+Upu+rQhDQTvF1gxurJdR1VfZscA8SZY4tjYfjM7mXE/3w64KATe8My+msQ0iqV2BdZtySyQfxc0h5vmbogiZcFnen1l0qF+oFYr3TNUEeLUj02MKYjWEoqfineYln53Jv/403XfWGMCTtVFVsta4ulNzl7UaW99Wbm50haxhsFw86JW0edX2kWK+0SQQFgcTm9nh2XBXe/u+J+wddR5DQzXIMIaX165e4n0AQl/jryMMJjsYFXkcMwfceMYdopbqW74tRn+JHWqP/Ujzwaj8CbrjfNWo4uJiMU0ri4chMjA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1372.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(66574015)(1076003)(8676002)(6506007)(66946007)(83380400001)(54906003)(316002)(26005)(508600001)(6916009)(2906002)(66476007)(66556008)(8936002)(6512007)(4326008)(86362001)(82960400001)(2616005)(6666004)(5660300002)(38100700002)(6486002)(36756003)(186003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cVdkU2h2d2pnTXBoU1VSZUp6c200b3JJZ3laRUlWaDk0OHA1RGF1eGZRaUxy?=
 =?utf-8?B?YVF3blp2MlB6VnFVWWxQZEFOWFpZRUlOWkFTOUs4MVIrMEFyb1ZvemcwRmFT?=
 =?utf-8?B?ZWhNZkJHT3pkejZpaGxFVTZTZ2g0ZDRuK0pHR0NDRGpBNTUvQWdvZ1RVT1U1?=
 =?utf-8?B?c0JhSmQvRmsvZWZCc05WTTZhRnltTjg2YnhGVmwwMFhtOXJjOHNsMkZlK3ZT?=
 =?utf-8?B?bTdmYVhaTUQzQ2d6S2l0aXY4UzQrcjZDcnByRU1kV25qSUExZDIzL3F6QjV1?=
 =?utf-8?B?cUh0WFhmWVBMU2MxVTlJMHowQ1kwcjNZekRQcGVPY3ZtYnNrTHVlaXoxTXZR?=
 =?utf-8?B?b3lEU0Q0a1F2eS94RDhMQVJ5dHJNOWJ1NkNRWnliNmVvd3NCZ0FVQ0UxWHZM?=
 =?utf-8?B?UjZNbnRrWGp5bWJMVzlYMUV0aVhSdFgxRXV1RDIxMlhENUErdmd0K3FFd1RW?=
 =?utf-8?B?bEpJNXpBRWxmQUJ1MDNGZUg5T1ZjKzVCS01HU2ErZW9iWHhSNHY5bjBqUnRr?=
 =?utf-8?B?K0ZvVCtTc2pLZFJOT1JxSUQ5aVBnN3FFSjhMNTlXdEIxK21Gc0ZqNzRwSXV5?=
 =?utf-8?B?QjZZeWh5TVB6ZzQwKzZqTmpqSld3MXRnZ3VvZXc2U2w2ei9UYmtINkpkb1Vr?=
 =?utf-8?B?bkRza1dxTnZDZEQvQVMzS0ZDSzZKc0JCK2VnbEJCcWtxTmVVR2VqZHFUS29D?=
 =?utf-8?B?c3VvMGdnT0FsUDllSU9sdnlSaGQ2MnZPUSsyblJCNDRyWjllY1RpMjhwaURj?=
 =?utf-8?B?V3lURmc0Qy9CTDJIRnQ2VG9pdHF3RE0yTFdlQm5NQlBQMU5rS2YyemVwRnM1?=
 =?utf-8?B?MWl2Y3FFT2FOOG9lODVWL3ZkYnBHZ3o3NUFSSlR2UDZ4OFQ1YWszZmxoejNy?=
 =?utf-8?B?ZmtXYWJWbTZLQUVoelMrUnBEL1RCRnVtTTF1cG9Bd3NFUjRXVmtjS3puR3cw?=
 =?utf-8?B?dldVZHpNNkM0cWhBejBtZldkMENJQklOaW1uV1htbVMyQVk2V0hhS3RmS25V?=
 =?utf-8?B?SGtiRjR5RW4wOHRmaGVWRjMxQTlqcnRxNTNtek1jTFRNVzVocGd5dytSVkxt?=
 =?utf-8?B?aVhlaDVGS0lwWDE5cDgvdVEwcjhISldPelBxL2NOd1JyVHA5OGhzNGhqOFVR?=
 =?utf-8?B?d1M1Rm4wek5SajcwTWNGZU16cHBzdUppWnp0R2NHTmVMb2hKY2NkY25mQ3BB?=
 =?utf-8?B?VkpwcUZhK2ZjWDFlT0RBdnRPbmtRVHVsbkE2WkJnRmE4QU1IMlZVb3RIVmdu?=
 =?utf-8?B?cnFXUVk2NVkrL0FUMGxHazNoVURseXdmUGJyQWl6bDB6WkhiOHJSNWlkTkgy?=
 =?utf-8?B?ek1PdzVFU2ErK0xCcDNTZWI3U210RmI0ZS8xbW9Tc2xFNC9zbkJXaDNORExh?=
 =?utf-8?B?di9kTktkNUV1S1RlbThsenUwV09IL0Nuc3hhS1p4Zm84NUNJc1R0V1BnM2dF?=
 =?utf-8?B?cVpIWHJieUs4NFdYeFhIZVFHdG55aDZ6RlQvbnFnSERic0haUjZCSkgyY08r?=
 =?utf-8?B?NndFYVIvWHpxbThkN3NrTHc3TW4zdG55dzQ5dmJ4cGsrVVl1N0NIMDhHdjNm?=
 =?utf-8?B?dkQ1MDJWbDBHY2NPOUxhU3pYeFBsU3hTWGYzWmpadzZrMHBHWkxZa2Q0cnVE?=
 =?utf-8?B?bUFXSjVoQkMrZGhreC9OV1BKNHZHQWc0am5mc1BFdll0VUJRZ0NRczVzNVBs?=
 =?utf-8?B?OWFXYXZtZml0ZFNNKzRKTnk0S0lNeWdwbUdSQUs3dEpCb01GVTk1TGtGSkgz?=
 =?utf-8?B?OTdSdTZHQVkzd2FuL1ZZWjhWSnJCODNoM0k3RkFERmdXS0RWUVV4ZUsvU3FK?=
 =?utf-8?B?aXZGbGNjVDRyaEZqV2I5cTQrS25nZHNqdkJyMExqQk9oQkZMblRtRjZIdHJL?=
 =?utf-8?B?VHlqcEdIQ1ZON1dMQjhocExSVDVMNTVJTjNZVFFkaWJFMmovZ2pSZUdITEgv?=
 =?utf-8?B?RjF3bTA0REM1dXBlYWJBN2xvMjNBZW1rQ2FMLzhGekVxdHVzc0t5TGVpNEdv?=
 =?utf-8?B?L0g5Z2xORW94blR6OWttSndjQ3FLNWYySmdTUWI4cktLaWtJOFBWMUxNT0g4?=
 =?utf-8?B?dHRGditwR0h3QThxMTVueGEzSDdITDNocUFudk5MV0xYR01DU3FKMml3U1lQ?=
 =?utf-8?B?TldZS0l2QVpKT0lYRWllZThwSWFwZkhLNXI3SlBCcDFkWkVoSU1UNXlmQ3VC?=
 =?utf-8?B?Vnh2YW0rRzgydFZ2RnFrWHdnUlVMSGVNNFFKR29lWVU0dmI1dWVRNSs5N3Rk?=
 =?utf-8?B?U3VUdFJ5NlNlNlhIVGxsaGQ3Rm1BPT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 58a245ec-7b04-4d58-938f-08d9dc07b44e
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1372.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2022 11:26:30.1940 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Z6SB4gJOXPetlsaBBaSX6OSU29JVAZ/OEAY1cROqAMVYxH6pQFG57/YXBuKAsb3scWds0ewyr7f7BJxcTeZyUE4rht+GjYNmcNIIJX82yMg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4510
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH] drm/i915: Sanitycheck PCI BARs on probe
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

From: Piotr Piórkowski <piotr.piorkowski@intel.com>

For proper operation of i915 we need usable PCI BARs:
 - GTTMMADDR BAR 0 (1 for GEN2)
 - GFXMEM BAR 2.
Lets check before we start the i915 probe that these BARs are set,
and that they have a size greater than 0.

Signed-off-by: Piotr Piórkowski <piotr.piorkowski@intel.com>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c         | 33 +++++++++++++++++++++++++
 drivers/gpu/drm/i915/intel_pci_config.h |  5 ++++
 2 files changed, 38 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 8261b6455747..ad60c69d9dd8 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -29,6 +29,8 @@
 #include "i915_drv.h"
 #include "i915_pci.h"
 
+#include "intel_pci_config.h"
+
 #define PLATFORM(x) .platform = (x)
 #define GEN(x) \
 	.graphics.ver = (x), \
@@ -1181,6 +1183,34 @@ static bool force_probe(u16 device_id, const char *devices)
 	return ret;
 }
 
+static bool __pci_resource_valid(struct pci_dev *pdev, int bar)
+{
+	if (!pci_resource_flags(pdev, bar))
+		return false;
+
+	if (pci_resource_flags(pdev, bar) & IORESOURCE_UNSET)
+		return false;
+
+	if (!pci_resource_len(pdev, bar))
+		return false;
+
+	return true;
+}
+
+static bool intel_bars_valid(struct pci_dev *pdev, struct intel_device_info *intel_info)
+{
+	const int gttmmaddr_bar = intel_info->graphics.ver == 2 ? GEN2_GTTMMADR_BAR : GTTMMADR_BAR;
+	const int gfxmem_bar = GFXMEM_BAR;
+
+	if (!__pci_resource_valid(pdev, gttmmaddr_bar))
+		return false;
+
+	if (!__pci_resource_valid(pdev, gfxmem_bar))
+		return false;
+
+	return true;
+}
+
 static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 {
 	struct intel_device_info *intel_info =
@@ -1206,6 +1236,9 @@ static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (PCI_FUNC(pdev->devfn))
 		return -ENODEV;
 
+	if (!intel_bars_valid(pdev, intel_info))
+		return -ENODEV;
+
 	/* Detect if we need to wait for other drivers early on */
 	if (intel_modeset_probe_defer(pdev))
 		return -EPROBE_DEFER;
diff --git a/drivers/gpu/drm/i915/intel_pci_config.h b/drivers/gpu/drm/i915/intel_pci_config.h
index 12cd9d4f23de..c08fd5d48ada 100644
--- a/drivers/gpu/drm/i915/intel_pci_config.h
+++ b/drivers/gpu/drm/i915/intel_pci_config.h
@@ -6,6 +6,11 @@
 #ifndef __INTEL_PCI_CONFIG_H__
 #define __INTEL_PCI_CONFIG_H__
 
+/* PCI BARs */
+#define GTTMMADR_BAR				0
+#define GEN2_GTTMMADR_BAR			1
+#define GFXMEM_BAR				2
+
 /* BSM in include/drm/i915_drm.h */
 
 #define MCHBAR_I915				0x44
-- 
2.25.1

