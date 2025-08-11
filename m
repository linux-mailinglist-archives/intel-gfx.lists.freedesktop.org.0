Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2879AB2011C
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Aug 2025 10:02:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B77FF10E39A;
	Mon, 11 Aug 2025 08:02:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FehxBEsM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08C2410E399;
 Mon, 11 Aug 2025 08:02:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754899327; x=1786435327;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=QaaETdZDT4oEJ/Pt2lR0ncwBDQ0abyBXNbWN2XjmDbo=;
 b=FehxBEsM0CgNRO51R4Qb5v5kiS6Vs2AmT8VuAqAG26ITuEy+orDhTGt1
 Vu+h+FjLBZa8bOAa2/S99f9uOOqSvDXGRoDS8dvdbaa3WEXqeDkzjAyeX
 y8s9nHOqW6MHDsT8N0KObMu6dCFq6NGzCrZAovbp1nKO61QPGmtUFlEmg
 g6ivJ75zgNKnXMY4IlXPWVYNM84B6ADxzG9bBjdDyyGYpTtBfcvVsbLIG
 ZjCpaBWAuen2d1PT04vcqVUG/yydw6Hz59W7M7Jffk27P/+e+t9udxOWz
 JSXHH/L0JNkeW/OSu5uhMy9FW9u8CGvilO/FJsuabw7W1s938xRGuSouQ A==;
X-CSE-ConnectionGUID: jMIt1Z3oShu1s+FuY1Gybw==
X-CSE-MsgGUID: jZrBvxv0Tm6vNwfsuSp1Pw==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="60774874"
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="60774874"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 01:02:07 -0700
X-CSE-ConnectionGUID: 9deECd7AQyGeYgNYIQe5EA==
X-CSE-MsgGUID: AmEwO8V6QFapLB3qnJ1akw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="196688241"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 01:02:06 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 11 Aug 2025 01:02:06 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 11 Aug 2025 01:02:06 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.68) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 11 Aug 2025 01:02:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PlFQrjsUv3w096QPD2s632WVGxIuBg0MjgN3kqdvTrsthZk5nnOcCbzQ8s1W7fDFIWQEoXvsY88wih3JsD8arlmOhd3RctRMfMNj9JiperRsCHHYoOHThkEARIeJLFlTvJ0p+9QFMLz9xgJtN+ia9p2Qle0NXzz3FqNIkyrMgYMggl8d+sVJWnbz8zhNBAA1YgxeQDJsmcHHB82d/H6FW2kBYy441pEPnW4w55139VcJ1SILEGFY7DTb03SnR8co+AfVqwfeBHmQzv5NVKTvQYABdjN9ttVg33/15KS6nAEkGfu/6v8HOOsPQI7hBpY4FyNpBt4B4GLAelsbXER6vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yP/8ImwfmJwG2lDVuqbcsXy6Qpbj6GyesgTI4JPG7AI=;
 b=eEX7eklaEZxYuGwf2aR/c16p3dHHtfsXXc2ovu93tPATDnJHcbCCkKYQAGXzboI9ZoqjBU29JUR5xljGFLTVIoecKBOlpScwQJuaAtMFBox7YtlCgr+bjz+WCHtyNlY/QFebrqyq7zx8hfs7g7JHVKAKZQ3YpI3BpNVmSSKdKsmGXNq7L6o+IglEX1Aus+eXlclQzh/Gy0dpUkW3GjcJwR30m5EuneAc/M0cnGMFtOg4F6Gq+hhsVKq2Z+IGwDJ8G9+cq1NA+hdscIfYRMFS/aTx8VyOsFp/PdKJjX/9OMhu7a1x0KLIx1JQVvDEjFXcokdHSsmENMOuBlXAKDHeUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SN7PR11MB6557.namprd11.prod.outlook.com (2603:10b6:806:26f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.21; Mon, 11 Aug
 2025 08:02:04 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.9009.018; Mon, 11 Aug 2025
 08:02:04 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <stable@vger.kernel.org>, Charlton Lin <charlton.lin@intel.com>, "Khaled
 Almahallawy" <khaled.almahallawy@intel.com>, Mika Kahola
 <mika.kahola@intel.com>
Subject: [CI 3/5] drm/i915/lnl+/tc: Fix max lane count HW readout
Date: Mon, 11 Aug 2025 11:01:50 +0300
Message-ID: <20250811080152.906216-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250811080152.906216-1-imre.deak@intel.com>
References: <20250811080152.906216-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DUZPR01CA0223.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b4::10) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SN7PR11MB6557:EE_
X-MS-Office365-Filtering-Correlation-Id: bbadf558-b30b-4633-74ef-08ddd8ad5baf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|366016|10070799003|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?k7bivTEx8ngMp8XyTgRoG5Z9p/n/e/Yak0XBAYzWGQ0pxjxrBVOqivZqnO+R?=
 =?us-ascii?Q?q1qoliko7efCwYLjrAjyp7hMNu9QLbMquTMrL14EctIF8lBCqYaRI2Bnripa?=
 =?us-ascii?Q?oBxqbdbeIkHu7QOsm7VUi1h9Dl4n2HzcJnnf/3/gURn7iku3u6UvL5yVSpCi?=
 =?us-ascii?Q?8uSks6u6yCi7wkolj+nFhILRVV0GWpPzTBJcRHfXRdue/3kp7Z+Zs2bkF3dc?=
 =?us-ascii?Q?IGImcn5AtlP4wCWbhoQe+jBMR84Zfhb7aCLQ9pAx9QmotCdgZvxQlgFsC/VE?=
 =?us-ascii?Q?Fb8D6ldy+Oc9NYQ7MTm9WwX1sy/vs9dg5+iCeztuhhxDKuOGU/wOIdC2Ql9t?=
 =?us-ascii?Q?iM0VCayfTWr0QZHMil0Um2/tOCylrPFwOM6xjPtadBKAjN1kZbRYCRPQFctK?=
 =?us-ascii?Q?/C9Z/+UB5XOLZ6YUx2GMUVPhEOl6kZKpp1ZDoIyO2x7pHfIJp/NiAxYDX8W7?=
 =?us-ascii?Q?/rAKvZVu3XZAuLN4eyZ6DPUOlQxjL4rNP6XvRie2fiAr4sbLXM/J8jUiYQXi?=
 =?us-ascii?Q?RSfH2uiykwXTZOrxMGVYXT5QChol+hoJU7UJRQ3h2jnnM4DFS6bn1X+lw8Ty?=
 =?us-ascii?Q?rGCZRfKHFn7/PgoiB7sTD0KPkeXncEJoB2EsnoAqfkPSoimfHjxRes68XV2/?=
 =?us-ascii?Q?iPm/KX3Z/EC2mx1NsKPBLtch0GxXuFMjoyaqsStH+Xrc2VBFSgnDnjA9LItJ?=
 =?us-ascii?Q?fJcNoloQKLj7U0eT+k/8GPGP97iC2PvhdJ5XqGAP2+Er8xfMGjz9ia9BdmFE?=
 =?us-ascii?Q?mjv0Y8NBAkrGrwE5g3SRr4cRw62sHhl8qWKIsuyyUZXMFSTZrrRnbqshzdWW?=
 =?us-ascii?Q?LOtDc0aP3Jb2ubl9ro4TamgkKM86+dap51qeMNGmxvf16s9ngwwnv5fzHTAR?=
 =?us-ascii?Q?wRYSxuLMGUbwjwdPIeARc+VT+8B9q76mQXhbRymjRP0MPCHZtVwkqB8NSHzU?=
 =?us-ascii?Q?5PGclWUY+g2XX/CgxgwvFtET9RiWeR703GYCdguHKErOFbtn78kXDslLvckZ?=
 =?us-ascii?Q?lAZt3vGdBEvdMN/P+2stJ9QxmBaaIJOxuX9nGPlsPY6Lrkt7k0b1iMXl0BNl?=
 =?us-ascii?Q?TZyb2IR0rxdrSkEOW05gK1LCUW7ZXMkZC0ReTLtVYN0P9iZUQTYKDaEeMi8M?=
 =?us-ascii?Q?icvpd4GhEyeJHfsQDGZsN2CGfcf1+jhF4hYaTWBxEykMkc5bPIedfDX0d5zi?=
 =?us-ascii?Q?yVI06Cqqg2JEItoqiivsU6ETCGMvLgg/P0mMkQ8AH2iVHUUWDsX09f1BlLsU?=
 =?us-ascii?Q?i+KYrTX7vSJbR443/As2EvVySrzDp5KH/bjQwMyd1HjHYVAbuAzn7EPjxMvz?=
 =?us-ascii?Q?KTUakPGaxR2rHZ8o3b/MFgQNxxtnoVGhpjQdMYWxuwshdQ9ZGveMv2lP/UCC?=
 =?us-ascii?Q?2WLFawtFjQ4roRExDUkehkgAak+M1cmJHl3EKbuDgnBCLCdxSK1CLgX0bPpB?=
 =?us-ascii?Q?obsmUFSOhbc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(10070799003)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lggpJniz4qzNguXlFEo6ietzp0eF7v01SEKyXL526c3PdMVRV/vCti3KLBeG?=
 =?us-ascii?Q?LPJ2vjgPvpWnrm5cv8fEIWEfQ70f0WoULB1KY2QDzqciyRr0OTUJas0hhzac?=
 =?us-ascii?Q?z1z6kjs5wh0wEuEvR9OM/azqKJyTcEZ2TON9vPVjrYcE7IjIBE/t7KtygY1B?=
 =?us-ascii?Q?saHwPrTVLuJlQ6aC0cQjlukV80pC0wWNIq8mcObhu0XXCQUC/rOfGEpVoiF/?=
 =?us-ascii?Q?cnGmLe1c61LYjCBCHI1ujcDswHchlUTvIeaxdtoSPhVUKdyE1udfU7PfNSKa?=
 =?us-ascii?Q?OH5l2f6rC7ieAinLmM7YOQoySIhxLztbcVPUrGtamHURzzZ+hHl0cpwVbcZn?=
 =?us-ascii?Q?gbnnZZx7MSbhm9PZ+rxdba3b4PHq4MumFyvPZCJUpn35fLyKrOgqoOfA9znq?=
 =?us-ascii?Q?O4NRLlW0zsFPYsrx2O24Ipl3XYnvGlmrcd2V0lsEHXkpkMYpztll9uEBlCTu?=
 =?us-ascii?Q?UGE05k5KpsQ+gN3UJM8ymAhTofA2CxnqhzkJHKdpfOmS9Bou3Da8Fg9hohrC?=
 =?us-ascii?Q?b6IX7gaAdNTtZ2XfXmj4J7oN4gpdvLrf9tsizx0zstpcUsBPgMyIXklCHWbk?=
 =?us-ascii?Q?AeB1KkuLZN4BiTxEF0WK2ZCMyzRfw/lllR/M3PNZoBKZIjLeXtDnYBeRUjwa?=
 =?us-ascii?Q?tWGJz74FZSQGzZPB08Bv778AdbXut/uVOeLdBdn4fx4xE/FNalV5odDftrak?=
 =?us-ascii?Q?OiscMc7mp8twrrP5NwYdBGajsgoCRl1QwXJ+p28zLBsnDWWA/IwtTXb5GP0v?=
 =?us-ascii?Q?2ConAMAsPdPjXJNOt899oNAk9s/AwiAi/2nqQumSg7otz6MoMrdDIyu2ZFJ9?=
 =?us-ascii?Q?Tbys5jqTJNowo8RkRGYqs9MpJ9UzYA9vPFUW3ZjEnTJ1GTigwXvOU4JMt/7U?=
 =?us-ascii?Q?HvxWmdB1pyhVdyNDE2/0N4JlrNCe9iarG4gocwDftvkXpg5vQ7Uzv0P3PdlE?=
 =?us-ascii?Q?7zcduDAkncSKY0W4Vv64WdAvUKkvWzu6X62vh/c2/GqZ2JcPT/JQOXv+ZUvn?=
 =?us-ascii?Q?ayMfjYcSOhvOA0cPlgAPV5p+xtGfWXHm6+FdQdsudcg+3oVwK422PmTlRKt/?=
 =?us-ascii?Q?r8LyIgo+XartTTqNwP2opNNA9eWhvkuC0FNCTXBLeiJ042FiNWv0TcRd8bUT?=
 =?us-ascii?Q?mbxB5eHjKV2gVx7sfJ5NhrpdX5eKKVseow04Ll4xwmZXLHzZ7j1qqKQRjfkW?=
 =?us-ascii?Q?rN9nuiiH58/Wj25KvpjR6RkxkvbSHmKZhqZArKP930YDbED7yoSvuR8/fCnU?=
 =?us-ascii?Q?4TCVFNo64/S8sXJHx5YeVoNY0vouB1RNTNf4rK/pcPbJQHyLOj67IOv2rugK?=
 =?us-ascii?Q?+HgDJJycSbbOs/Cc++UEuI0vHZaBTIse9wFekXl8fig+athLQAA7N62vCu8p?=
 =?us-ascii?Q?8QIRFb0IMqtOW35doYDhzzH2FcwRsLzMrKKNtII66Tc5a3V2ksf14u7mVf0T?=
 =?us-ascii?Q?uYo7+Vooy66LYfqku8e8kNUg930Dtz9L8VYSsH3210Zs3iDwr54Km9vt2aoH?=
 =?us-ascii?Q?oKIVTKaoYx2vQ04ArCsrQW2SqqzfdHbWQssCV4R9BcP2QCksSxXGKzeSe+t9?=
 =?us-ascii?Q?QT49XP8ZtGvT+rKhI4M/RDXLrgzvJvxkhGyzol5zxGBd8gIOJEvk38ZIMJuh?=
 =?us-ascii?Q?6V4NQD7gfPYRBa8eCwrrnmKknvGa7UON80sDJ4vsWi6x?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bbadf558-b30b-4633-74ef-08ddd8ad5baf
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Aug 2025 08:02:04.1556 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zwdhybPJA/5u+vs1gmTfPzKT0/+47tDmWyACYxe6vfTajA2QMau/hIOJNrZCkK7pt7ETEvXCe1hD7vbzPEdauw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6557
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

On LNL+ for a disconnected sink the pin assignment value gets cleared by
the HW/FW as soon as the sink gets disconnected, even if the PHY
ownership got acquired already by the BIOS/driver (and hence the PHY
itself is still connected and used by the display). During HW readout
this can result in detecting the PHY's max lane count as 0 - matching
the above cleared aka NONE pin assignment HW state. For a connected PHY
the driver in general (outside of intel_tc.c) expects the max lane count
value to be valid for the video mode enabled on the corresponding output
(1, 2 or 4). Ensure this by setting the max lane count to 4 in this
case. Note, that it doesn't matter if this lane count happened to be
more than the max lane count with which the PHY got connected and
enabled, since the only thing the driver can do with such an output -
where the DP-alt sink is disconnected - is to disable the output.

v2: Rebased on change reading out the pin configuration only if the PHY
    is connected.

Cc: stable@vger.kernel.org # v6.8+
Reported-by: Charlton Lin <charlton.lin@intel.com>
Tested-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
Reviewed-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 752900f1c115c..b0edbce2060ff 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -23,6 +23,7 @@
 #include "intel_modeset_lock.h"
 #include "intel_tc.h"
 
+#define DP_PIN_ASSIGNMENT_NONE	0x0
 #define DP_PIN_ASSIGNMENT_C	0x3
 #define DP_PIN_ASSIGNMENT_D	0x4
 #define DP_PIN_ASSIGNMENT_E	0x5
@@ -308,6 +309,8 @@ static int lnl_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
 		REG_FIELD_GET(TCSS_DDI_STATUS_PIN_ASSIGNMENT_MASK, val);
 
 	switch (pin_assignment) {
+	case DP_PIN_ASSIGNMENT_NONE:
+		return 0;
 	default:
 		MISSING_CASE(pin_assignment);
 		fallthrough;
@@ -1159,6 +1162,12 @@ static void xelpdp_tc_phy_get_hw_state(struct intel_tc_port *tc)
 		tc->lock_wakeref = tc_cold_block(tc);
 
 		read_pin_configuration(tc);
+		/*
+		 * Set a valid lane count value for a DP-alt sink which got
+		 * disconnected. The driver can only disable the output on this PHY.
+		 */
+		if (tc->max_lane_count == 0)
+			tc->max_lane_count = 4;
 	}
 
 	drm_WARN_ON(display->drm,
-- 
2.49.1

