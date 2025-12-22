Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A7B7CD694F
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 16:36:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8311310E702;
	Mon, 22 Dec 2025 15:36:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BiVqWimz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7AFE10E6FE;
 Mon, 22 Dec 2025 15:36:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766417798; x=1797953798;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=bF4j1kwhhMXAAhYtIGRHETQCTaw95SAhwDO9DBFg6bQ=;
 b=BiVqWimzxO0Qnm3mihJdg8vqOcXLlItVrRRdgu1MIBDZBLx6CT3P/Cz7
 GYMtlaAPVC10kmfF1cn593jAxDHfc3Z2TJn+Cm57TX5SHSqW0+E680iiX
 90NMI9+kUoZ9g3bJOt94g4FGZoPQvLC67kITzIvs9lHDml8SqdaV0dxwY
 EFhK8/cw7nKwUEcpTHLU0hk/cI7x5IX2/F8pkdeYa0xQPAyoidU0qwpWj
 6INYRFCDXw05A4o8ik3qC+aDGx4v8gySSG+r42RNodrv7XqQmF+78uwXm
 7cvrDKu+EZz3Q8tPk/v+t9fy8vchJj1ewfR4tx0lhVrV6MNfZI64vFuHq Q==;
X-CSE-ConnectionGUID: TT2BiEpkTC+8qfafQq4Vgg==
X-CSE-MsgGUID: gatPEj7rQFqBmfRo7A9lLg==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="79726287"
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="79726287"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 07:36:22 -0800
X-CSE-ConnectionGUID: m4BmXTQ4S1CckAYmownDxg==
X-CSE-MsgGUID: 4trdabOqSXCmhY6GH5w3yA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="200053259"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 07:36:22 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 07:36:21 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 22 Dec 2025 07:36:21 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.24) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 07:36:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Agqp50Zb+AytQMbBlmRbcalRr30Ti146w8VFs/1qj1FaEJut1ACq6l724WY4ptNGy9k5fs9giY+XqAJ+7MxRrdqGWjxU2/KlcWu1lCQRNi9ngwdGaFlUEU0HnnuO1uPenvTJGw+qWvshiTaRU0DxO8yQLZye4qZg2m4cT05z4dU9Nu3zyc1C7B7erTzIhUo8peY5Og1LejYgb4eyuZfvGPYyXl1aRvGX7KrmBgYE63Wc1V2xbSLJhc517bO1m4OAEn0fhcyXOEkxId/ju6zMr/O8UZ/xIMJ958rh15qxoGQ4UCkSw0POtbj5Vqjcyht94+HWorxu1bIZJuXCk7fFHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SLcXhHEM6ig90V7JGbRs6k2J6EuYhvStohsD73f2LWw=;
 b=h8e9DG6cqEfLfhc/VtHKL7LeIMJtJeeZxKmSXZYsABawDD4u7lLdw/BlFBAU0MKzTM0QPcxBrwe6TpYm4S56z91RbdldLP2uQ7oq6T6qM0CP8vKmuRaBkkZpIUtZPjGy1U59U+mE4oKsExPApsZUuJlWxzUVaQhdREM30WjfnIWiIzF21Gy4HgbTCmSpydGeJ4Hw6+TcO1jSi3b9WN2XKcN9o4nJYzV/2nG12Zf2zPGdZb8vvIrYizTOeKsy5dsS0b/fJk6B0Cyn70S6Jp7A8GGynjTy/GwbRHgCfqcw0dkrnMlNCNNX2utH7wnH+b0n3Jx2RQQ/t9z7YzH373GKRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB6912.namprd11.prod.outlook.com (2603:10b6:303:22a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.9; Mon, 22 Dec
 2025 15:36:19 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9434.009; Mon, 22 Dec 2025
 15:36:17 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [PATCH 08/19] drm/i915/dp: Pass mode clock to
 dsc_throughput_quirk_max_bpp_x16()
Date: Mon, 22 Dec 2025 17:35:36 +0200
Message-ID: <20251222153547.713360-10-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251222153547.713360-1-imre.deak@intel.com>
References: <20251222153547.713360-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P123CA0569.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:276::9) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW4PR11MB6912:EE_
X-MS-Office365-Filtering-Correlation-Id: ae17b730-199c-4321-9ec3-08de416fd917
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?O1qifWJFvLmkrSo7tPe1sKhknQCi94mfJhQ2BdkQJAKfq2xwCL3ZKwdlXMdk?=
 =?us-ascii?Q?jRvNiFlUpCgMZl368U1B1DGD5vxDFzqKGPCewwj2h+U4mQ/W7vK837V2MYG8?=
 =?us-ascii?Q?ZExUKiH5ifjOyN/82yMz6Qr9JTyzMxocfNewM2ByIdMUEwseoIfe8z7C9WHI?=
 =?us-ascii?Q?3moShrGLDvM7fzuyMFy8VznD3KcptPyeC7C83mOht1MftX/46jwNi452DSlN?=
 =?us-ascii?Q?jb1/BSFzzsXCd8mJuzx5GUzm1JXCQTYASV5mhrMQ5WuNKAwYZ/Vadxa0As8x?=
 =?us-ascii?Q?lTOIxzudIIQ0drKWQQhlXAX+iB6j6JBlZ+lnegf71aLbLn9sG+xbcsv/W4LV?=
 =?us-ascii?Q?YOH8pAfI2ICg20g9Pnl+kMTU4BRZIONwTFpVjh02ICDiRjOM04o5Oou995B5?=
 =?us-ascii?Q?bFbllJJx1jWk3Y/oNa6b4JpvrPaMI8+Y6YwccY5mBv9TTmuDYMhUbvREKhUp?=
 =?us-ascii?Q?Ml0zal5JYE+JcvhqlxMZcBPYkPODJ9HCE9bkWQcXBz94Rg9N7reC5JrJeDPQ?=
 =?us-ascii?Q?Z4tDrWMC5jujnwUK4yuGA+He9JteiYM3F7TXYwDDUMdw/YMmOs1gUfiHZTM8?=
 =?us-ascii?Q?jjJuBtQYzHAa0TsiYFmyfTqg1y3SmO4bi+ek+3T0A+PZiGoxHUIMuVCT+OfA?=
 =?us-ascii?Q?IvpcfC0fTsHSyNmXxlbKIDOR9EQaZvkh+Pp2MyG/IbvbvROBFwTYw3XhCoWF?=
 =?us-ascii?Q?Zz2rD1QsOUDY5u609A2Z8COoO1T5I791KVlBNT3w0C6fsZiHS+DbQ8uUXYNW?=
 =?us-ascii?Q?NHHpFsHPMHGXSbmMk/D7DmgQwAOQRa2xBZ7f/xnRjX1/STRTLDDNbH2vQEqd?=
 =?us-ascii?Q?raN+iqZM2+aIn0HQo+9D1IpqJr/k+fYz3hfNBXmTBvz1x2Iuk4CF9JpIqXG2?=
 =?us-ascii?Q?DJ6x0igT39i2dDDCxmaoVbfDmKEGgpBAE+/lRck+3nXGloojTx794DBLH1iX?=
 =?us-ascii?Q?D63rCzVf/2mS+ykn7oJgxM9KTI9n+bTiBnMkOlsSCaHJ8oC6GUILgH2uqHRW?=
 =?us-ascii?Q?qwZ2N8uFLngqpvW1X9xxR4uEHv7AS5+KIf+qHUo4+3Vo86QwVXXHxFN8aIgO?=
 =?us-ascii?Q?3hBAWmF5TVaQ3hBS2kKWBWfv8XMGrgItYZWYhphzBLHj2Fl9UcPQ/yH3OPOU?=
 =?us-ascii?Q?qPiMeFURm+Y34FJKz2xfVFGRV+146i9+39hBoFYPFVbvBQuHMbuGCiArDy6G?=
 =?us-ascii?Q?SUEl5cMTrzXp77/EwREvu910ltxiXa5L5FnGFZBvJnwFgjvPE0ZVJzHO/CbO?=
 =?us-ascii?Q?xhRWIrNsnJPYMW4YelkXdHiVBYrYbKG8yiuSB2ESdX7PJ43Cs/kioxdpsNd/?=
 =?us-ascii?Q?zD+zdTfxCtWdxLIlCz++BKUeaE6fQil5Do/W+ZyPwlj92pBHoKOEIDT3dGqA?=
 =?us-ascii?Q?EnvKKJu17otf0GERXpkjbZdIMDRVkCEFJQCjqkKew3pA0KSgX7InDOvbUM+m?=
 =?us-ascii?Q?gcyxxdl8Hu6lUtnBysSxyXTaoJe0XTPz?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?x13C4f3XKXO7M7qKvuE4tUdZ8iwy/TytO1NYBHKslpFjz5kZOnEmI3cdDLj1?=
 =?us-ascii?Q?ZGJjkh8vAVAQGQ5mqCT8waTkPZfNyKh87k2gRpgxoCSmy09aTgtc3CNtaZuT?=
 =?us-ascii?Q?TFUq0Y8tgTTeUME8+JKn1vvdgZw4l3C57hLiUJatmyM+v3mG9/jYMqwE7QzY?=
 =?us-ascii?Q?T2n1KWk0Bu7wNmKhVImsNajBlSnvXOzTqwwwOrTFQWhaWvrWrSt076kn+Jbu?=
 =?us-ascii?Q?E9LciHdxjwov/HJOIp3Ph5QYT2Y1LE2oUxNM+yA4aMWJUcRZyuN+MsFT2HxD?=
 =?us-ascii?Q?ulAExtPRpLMFLa7ottGvBAySwY4gd9JYFhTqLo1LSzq1+3A0iCIHsvqBteNH?=
 =?us-ascii?Q?MDasPXsgfQA72aDkyAkTW+6OBk3bd1KP/Ulf9+3a6d+2uDkJW+y8cpmU1j1A?=
 =?us-ascii?Q?StTmhyCHjsyIgNCpIhORdGH5ZgHv/4sK6vxgYsxM+cYA9L1S/Z9LJB1FhUoR?=
 =?us-ascii?Q?ZdRsv9GhRW8cH+kMEqyv/tRfpXMom2jVcZaELr7Wr4UmeiTJzsWLkXdb42Uj?=
 =?us-ascii?Q?MFJGvqzNvFdmqXOB7rgA1E/nHTbR70nh4+c4FNIiy1PXWw2oBkmYuamNyQjZ?=
 =?us-ascii?Q?h3FAzCjEyNVxn3oM2oIAI/k2xciNuj1qDSFVPTbLoFFoOky+Rvy0wYdW0S0K?=
 =?us-ascii?Q?y787Qo0Cct6k+MwtMwhER7/dznGuDsAGwiWqaH0Nt7kLQvWiSPF6WSnWA4R/?=
 =?us-ascii?Q?T5+8tOIx+IXYPr3D6UqGaLfGb/zzpHhjtxdTyRIWAjNbFn3mTiq3IG5W0m61?=
 =?us-ascii?Q?TgTeCGKnzwp8QgauYcir/hzaVoWkJMpsmqiwaIoS79f3ITqT1DPONK+Xd1rV?=
 =?us-ascii?Q?CC59yuPD1SMARj9brbJvjTk4N3+u6rCrmAxF8/tbm+sm/Ed7niNsa1UK578v?=
 =?us-ascii?Q?pnp8akn2VFxX7xGJ57uGPzwTv15ka+T8Z0bfsplM5KpQWUGhaiScte2l7pFP?=
 =?us-ascii?Q?KWQbnNYyt3ZLTXFCxBRCD3X7irHABsweO2YyVLQ9qmEGIvmC3d4rLONO/gxL?=
 =?us-ascii?Q?bW1fVDU0W1xDnLndaNRmUjtH8PSpz1FGVDQsVyYv9pN6qLwIPIjDuP9hQ+Df?=
 =?us-ascii?Q?xPGoHQ4E/R4zQyrTwgTFgBQV6rSmFNSLxQdRk8SuZSQ8ZVSHblGsx7K0/ZUp?=
 =?us-ascii?Q?xpp2HMLxiACBCWhACwVZm3FlZRqOL9omI2VUGMtIhYSm4JonJPpHErPny04k?=
 =?us-ascii?Q?wXHEjDqtaTi+fiYCn1tJWhqt2IjWUIYa01tB2sN6RNnleBLm6sapwpRVNHqx?=
 =?us-ascii?Q?Pcnfh1nJT9hgRKDpDDpmaCgSufapR5BIpGx/eKuLFHtf5hfPxrP5viYOJyCd?=
 =?us-ascii?Q?SGNPXMKu/w+3ZbYWM9Q7WDZORGhFRNEW31ReQakKqVRYXRACyjYTImzTls8d?=
 =?us-ascii?Q?yRxgKggpdqOVPXWAg5xpSKtwh08MJLQ166tvVB7F28uhr8IGLMrhC+Dwz8n0?=
 =?us-ascii?Q?bwT1g/cL5avqTuOwgJFLZVhPe7slO6DoEOltSbnJhBBXUSbOzvPOsICHDZMd?=
 =?us-ascii?Q?fQoMgWybeL0Vyu0dFUUtNN+NXATgJufORhsu5+E2Y/kZvKJRwPaYydT+3K38?=
 =?us-ascii?Q?s3GFiryA063uESMQ5EqkbyxcA8+DceZGQQGn8JLAzP+OYYFSB6z7KLUk2zDi?=
 =?us-ascii?Q?Qjf2YnsSxEMyLMjwd6HzsaUEtvANC0iZjXEUUG8AVVWe3AzuMlB+P1+DT0jf?=
 =?us-ascii?Q?wkZbUbrO4HqhhBAVgDEZg7sLPkdWtauKcpIWEUnO8IXIOmwGSna+PcTh5Z0T?=
 =?us-ascii?Q?MSYBIM6D42VSfrBrx27gXcTyn1MR0Ojux5Bs8DJt2HWRdpbJ/oEMrwCgpTsd?=
X-MS-Exchange-AntiSpam-MessageData-1: 4aEY+LxPGcE7zw==
X-MS-Exchange-CrossTenant-Network-Message-Id: ae17b730-199c-4321-9ec3-08de416fd917
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2025 15:36:17.3933 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UOynlGduX+o4OITz9bJs4GNQkzGaFgBXtXBTFFyLw4SjpT0NLpbgX5WDLb2rWYbLcn7NLguaDfVy1b1vvY/RjA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6912
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

Prepare for follow-up changes using dsc_throughput_quirk_max_bpp_x16()
without an intel_crtc_state pointer.

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 57b93a811cb62..bed41d7f97e81 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2617,11 +2617,8 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 
 static int
 dsc_throughput_quirk_max_bpp_x16(const struct intel_connector *connector,
-				 const struct intel_crtc_state *crtc_state)
+				 int mode_clock)
 {
-	const struct drm_display_mode *adjusted_mode =
-		&crtc_state->hw.adjusted_mode;
-
 	if (!connector->dp.dsc_throughput_quirk)
 		return INT_MAX;
 
@@ -2641,7 +2638,7 @@ dsc_throughput_quirk_max_bpp_x16(const struct intel_connector *connector,
 	 * smaller than the YUV422/420 value, but let's not depend on this
 	 * assumption.
 	 */
-	if (adjusted_mode->crtc_clock <
+	if (mode_clock <
 	    min(connector->dp.dsc_branch_caps.overall_throughput.rgb_yuv444,
 		connector->dp.dsc_branch_caps.overall_throughput.yuv422_420) / 2)
 		return INT_MAX;
@@ -2705,7 +2702,8 @@ intel_dp_compute_config_link_bpp_limits(struct intel_connector *connector,
 
 		max_link_bpp_x16 = min(max_link_bpp_x16, fxp_q4_from_int(dsc_max_bpp));
 
-		throughput_max_bpp_x16 = dsc_throughput_quirk_max_bpp_x16(connector, crtc_state);
+		throughput_max_bpp_x16 =
+			dsc_throughput_quirk_max_bpp_x16(connector, adjusted_mode->crtc_clock);
 		if (throughput_max_bpp_x16 < max_link_bpp_x16) {
 			max_link_bpp_x16 = throughput_max_bpp_x16;
 
-- 
2.49.1

