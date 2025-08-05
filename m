Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDEB3B1AF59
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 09:37:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D909A10E5F9;
	Tue,  5 Aug 2025 07:37:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U4A762N5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2334A10E254;
 Tue,  5 Aug 2025 07:37:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754379431; x=1785915431;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=JAkj6zwUHUxBIwSmebmOWFYp7P6dS02rpA2n5peUvsk=;
 b=U4A762N5ViDTwWGIhA2kgHfPRqZhOZ5TW/VLKwOiB4A2reWcIUeUGXkG
 YiUmsWzYeuNKBN3ukUtnnRDcHoF2lEKMsQHBQfW9XWDeiBdKk+K6F95zx
 NrNtXmvsowZqy1sJJSLL1tZc7SmHxCpqUUiJuk6eRM1V0KkzFJHm0Uhlu
 Ya8weMYok9xjhjCCVSg55HyxqYENi/HHNJfq9uxsXn9WxaSfePLDqflIE
 Wzz+ngViYskAh/J8GAIxZrWf8wMlaGRsP3eZeLn6nUYcY9cpL5RJEnEWN
 4NOWAfwyZTtvzCn0TWDbAivr8dwcdu5dUgz9xeKdc4AL+ZQSQJPZ75I/x A==;
X-CSE-ConnectionGUID: gzrG/iOWRg6ffpxR0I1NFw==
X-CSE-MsgGUID: tDlXs8CBQmejH60WRwlGBw==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="60493167"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="60493167"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 00:37:11 -0700
X-CSE-ConnectionGUID: EjW7PqGBTOC6fzA/P+3W8g==
X-CSE-MsgGUID: hYIDk4ZXTuiJ10n4f1Tn/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="163657819"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 00:37:11 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 00:37:10 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 5 Aug 2025 00:37:10 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (40.107.101.82)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 00:37:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nKdbA/qu74RwRYH3Xb0GJhRP5ZdNkOQxoYTp2pqYAGvFx7dbQNjbplSgjQDWWQldUIc6WDAZp+BljvRX/dPSQQRVkW/eIL92MabaXKPS6AA/czlFYAUE77nPp0vKDn3S3Sq+I2lR6wIpeVWyx3LKxX5SYtxjBJnrnsiDMcQwuGCXYS9PUKR4Jc0NhWj6Mte6yyYCiMvthD1n/ylicpPKa1yMwlv7MeVO4Oy9Nu3TbHJCsYrrp7Wvl9oNS89/bopWWECuudMA5eLpjPJrFWdcVeJDb/jyQ3JkkhEIknsYHHg0ypi3r3+IwRWVkOMUaRtOnk2w6LMxcDI2sDTQzjkPqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Zsuos0fdJrmDh+Jb2Mbb9c8404jiHA0JneO/6zfM0go=;
 b=Voa83VsQXf3yl5K8u2mq4DBpjk12uQcr5mao+HEj/7UoTyVdDJr9y1jZFWl7zyQ6Bhth/lmmkucnuDf6VwbwX6aHsE/suWSIn/eTHZFJWxCzlv7eHJTibxSlFILsvL9qTwFwVQGlZcXshvhO0s1a5pVryVI0VxcHfaYOFTs0P/1zct5/LneESlWUebvFpOf+wdJgnDS8FXhUC/yyP77kR9vNeDw5Q2hUnziB+J2gxxruonifAns8zrTuv1Roo53JvMOiOHtaIyQ6jw0b1LaPCpBLiTvuxeYqFgkpzxIP+vB3HhsG9ZzQFVLkDycSErutzDw6+8w4iIVeEY6gu+R4hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB8161.namprd11.prod.outlook.com (2603:10b6:8:164::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.20; Tue, 5 Aug
 2025 07:37:08 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.9009.013; Tue, 5 Aug 2025
 07:37:08 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <stable@vger.kernel.org>, Charlton Lin <charlton.lin@intel.com>, "Khaled
 Almahallawy" <khaled.almahallawy@intel.com>
Subject: [PATCH 01/19] drm/i915/lnl+/tc: Fix handling of an
 enabled/disconnected dp-alt sink
Date: Tue, 5 Aug 2025 10:36:42 +0300
Message-ID: <20250805073700.642107-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250805073700.642107-1-imre.deak@intel.com>
References: <20250805073700.642107-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DUZP191CA0024.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:4f9::21) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS0PR11MB8161:EE_
X-MS-Office365-Filtering-Correlation-Id: 2c6a437c-7f94-4c34-01ef-08ddd3f2e1ad
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Wrg9XUZeXJCYCb9NE5V+PV1CP7PmRoUi33gYe4A+cVbKxRmEl/N7Hc3AvHGh?=
 =?us-ascii?Q?/NacgJy8r7nykLoqDF5OId/djXKl8e9I+Vc4ZT2FQzh+45IWw57X335sE6MX?=
 =?us-ascii?Q?F1KpVX6KHx0daZKUeRsHavIqusWwH0m4BLx0p5Ob/QD62/XNdAd5nGjijsH4?=
 =?us-ascii?Q?3FtTJOAabj7RqLdgHfnR6nKTW2hTJaCxBYeQc4xJONK/I73Q+d7p0tIXAziv?=
 =?us-ascii?Q?eEkrwwdV/6pM5VI/ft9k9l3TvdDB43Q9iCBrBTDkZ0GKudEXizg0QhkuO3+w?=
 =?us-ascii?Q?lwbkK+8W6dZQckVa8EfljN9N70fkcnhIrE0SD3FyriUc0Uzcqi6bYLXD2PF9?=
 =?us-ascii?Q?WjbLk+Y6ClWKWysvUxGouo3yUJPB96L3DQ0H6/hfT+CQuNa7hEac9gYmbMdg?=
 =?us-ascii?Q?8IxkGn0BiTRp7DUJZmflaWcwU0w6CVwEyFOw81+pABqjoM7Qf2We9Jkp/Jky?=
 =?us-ascii?Q?WvO2bHtMHeNsGJvBF3Jn+fi5Z0jmPGfoyWmhFJhgeAI7w8WLwkOXke+BGImc?=
 =?us-ascii?Q?/qKjszHQAyPiApltoRx/Kok0fHkJqT61IadRxVB/deetkoFmuUGBDJtxSGS/?=
 =?us-ascii?Q?OYDwGlJrvc2N5cSEsKxt2aVjZq0hpqCPMabDIjlHLsxIjZfvSB04Cd3W4M7m?=
 =?us-ascii?Q?gt6zF0w+xGVls8t4xg+4lRz4+cww87f80POgWTPoF2w9++wll8nG3AKBAn3b?=
 =?us-ascii?Q?hXJJHOwWM+v/u2U9+fs2Suz1WkJRpThmU7wF/SqjicT09dGdf1yn65ALClLP?=
 =?us-ascii?Q?RG590oTb0GEK6cRoWaC2RaKvBHhctdK14DlLNg8RbxCBk94kVkLUr+WoJizB?=
 =?us-ascii?Q?N+OXRDyO/9UMCKpDswc0H24uKYefmJMKcuGbNX/WNNyfLks4W4ryd5ZXbqK+?=
 =?us-ascii?Q?a0bdlyfJ7vB0mOzw4TDehpMgtGxmy0cPvpJJL1yzt+jni2FUZR3jxQL5vAHA?=
 =?us-ascii?Q?GUdN4+5g8VQlyP1vOqvvORd0HX7HfvH5ZW7bIeqpe+GPvWiuY9/ZYGcubxcc?=
 =?us-ascii?Q?N9seG5DUDVXvSY2t9cjDZ8icv8jIhFyzZ562e/693EpEqJmCd3S//vUc6x3F?=
 =?us-ascii?Q?WLhyKF8EXKiZw0ulht1qTYGHCBfEr0MpMRk5LxP9r1DRPLLysKOGZa7cFiR6?=
 =?us-ascii?Q?IroVmBv2TQDUfz7pWDeqJdFwWYkKZ3EeLilEzAT0QKWRaF/Eqodr6Cpe5Vwb?=
 =?us-ascii?Q?F4Swasukp9TkX0wEnuj8dtgGrWDW3PDUkQ2tp1cZ2ePA98HwLuHRiMvMG/er?=
 =?us-ascii?Q?dV7+0zrbhkYsCVDslDIziABJjEET5pvi+T35PFGffdJDwGEi2tZuvyrmo7Zc?=
 =?us-ascii?Q?Q/gkU3FSkFzF38JpA6+WF07mjvoGMysL8SrGbr9gAAYrZlZey2sNOTG+Bbrz?=
 =?us-ascii?Q?+h6ErQghQybZxMgnyE80oHT30n+9lgf7Ei98beQo+tQHahb6dI1ja+XjSaAk?=
 =?us-ascii?Q?NqCNpf1Idv0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?T/JbjOd4fI1eSf2EYwy9vVcgFzH1oCHFpKNuOSCBDd+ZqVWTojHGOAeaXF/p?=
 =?us-ascii?Q?Qh7OgmvZ4spvSfmIMrkMwfvePt/Zso31LZniZAkVYQLx9MUpCXVnl5FYeuFH?=
 =?us-ascii?Q?CstYn+qWM/0JUoBEQMm8sv8dmYUv30smpeYZ6+2nFklcAOp+F/PXRUcaeQN2?=
 =?us-ascii?Q?jkU4mDl/V3wT/7Onz5LBrk6dx6Z6E7fkrtc6TkjVlZmwnO4J0oP6RgQfD6sN?=
 =?us-ascii?Q?Q8HaRAKBaGUjpqQSlcuHcI0QbiAtKaKv5nvs5b3lt+hB+S0G1IK1SRdzLcUO?=
 =?us-ascii?Q?+QwQAQaZbw4NUhsrU2q/qCaDr+dpIJBHY7vLSgG4dfKRhW1Ov5pywpaOPHNJ?=
 =?us-ascii?Q?tdeC3G8+hzvn7RYh3GseNrjxYIICwxjqSgHCv13PkmrYuKbkMoZ3CtNF10Qf?=
 =?us-ascii?Q?LQiQRsp6aGflfMRq/E9tfxEVC50lXv3wR5zGk4mASzMiEDODuD1hAMuFtecC?=
 =?us-ascii?Q?nOA/JZ2eW9dXuFRWc9oSPnab9VtKyyyqxtGa139PkuRPDkJ+e4R+2OC/YVo2?=
 =?us-ascii?Q?f2hhejlnsXMPRnAGQxya28GFdhcTGa9eK3G241va1VUh3Qn3cYCigA4gsB1Y?=
 =?us-ascii?Q?9oYXu+B8rRCFkoqnOlWcQuq0PtyWGZspeB/aH/yYzVlNaPY1wXdLi5f7Z5w9?=
 =?us-ascii?Q?I1sGblxBurd+eq8SQzepXB0kG4Ss4uD80I7PCoRO3dP0NBDHrGstFrA/fwc7?=
 =?us-ascii?Q?o3nSo7RcB1DtDsIcuJXvYYglac2J/lNJVQ0RRK6sXmqhMNIFxn8x90uwH8ot?=
 =?us-ascii?Q?cssiqBGF5UAQ5lbI/CJk3WSWk7u0NeZFO+Z6amVo474CgFnitCOohuGkvfT1?=
 =?us-ascii?Q?8J7dQvAFWG0r3KeJ9yqvA9DTuq4J8lB9H9CHrHa2D8WsxfeHdwv5i1tY+0Ko?=
 =?us-ascii?Q?0gxCsPx5ZevJH8l4gwlINhBg0CsI6adpW4/YTxRzH83WDk0lbNE2mgLLi8tJ?=
 =?us-ascii?Q?wxgS3K/tiNmdY4rRO1R8dVAOMuYxI0ampK2Nvz1fR5F5dNIRsusOEudMMu69?=
 =?us-ascii?Q?I/iI9zvZpLZIgqKcgIfkxI+KG9I0WzR4IYrenI8x6yX8cLSQ1TAaVo0KPuVv?=
 =?us-ascii?Q?UlKbRs3ovCDFI0lqpJNIesbete1VWd1klr9OMRAkE7ank0V4B0cUVAh6onnF?=
 =?us-ascii?Q?KfxwxwawC2XikkOD8uObh9jExH1WyKqulbGTzH5rFmF6/JfZie2G104wPjsL?=
 =?us-ascii?Q?GoRmQjMw0nnVDVZFeFH61Fe+hCMS1Vqd5da6M2xaJjivBtIX1yYJ2WKSCjh5?=
 =?us-ascii?Q?EUGrJvOfsY+eADJpUf2WmOztuzJCCRkPG6YB3oVBRil1WihiY45zs0CJya2C?=
 =?us-ascii?Q?9Spj0jLseG9jhZemV4FNiSDkBq0fXsqjhTM2l6L3Ld9DqCN6MR0cCGl9pC7L?=
 =?us-ascii?Q?IYcvSOe5lUOUo22Mc4COkrjAzxsyQ7U3e5iLEuUuT8A28SY41a+Qxe8oxBNW?=
 =?us-ascii?Q?oZmcH0TGZ/V7+f58EEuX1Ir1xmV3e7bnlDlUx3sx0LCVfssVDjaZznYS3PFf?=
 =?us-ascii?Q?4Yc2HZ26Y5bQ3isJ2SvqyEu2ZFPUte0NTglT4Vf4AEPPGo9LS83NiL2SHkzA?=
 =?us-ascii?Q?EURAjqziGvkVuqiU5ALgcTn2Uql7K1wu3K9OB3IPvHI9dx2ZwXFmExBIxt+V?=
 =?us-ascii?Q?peMdf9n+gV9nMAM+mCpv/AiJldCQCYrh6EIPuPksugOc?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c6a437c-7f94-4c34-01ef-08ddd3f2e1ad
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2025 07:37:07.9662 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oXsyDuWavcIH4HCgrcCl6rvY5lyzP0qkVGrb0vh7kYZOBOZAuzCubUHdFBsnf8N9VRd4q8ksa3EW0nhezV0mOw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8161
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

The TypeC PHY HW readout during driver loading and system resume
determines which TypeC mode the PHY is in (legacy/DP-alt/TBT-alt) and
whether the PHY is connected, based on the PHY's Owned and Ready flags.
For the PHY to be in DP-alt or legacy mode and for the PHY to be in the
connected state in these modes, both the Owned (set by the BIOS/driver)
and the Ready (set by the HW) flags should be set.

On ICL-MTL the HW kept the PHY's Ready flag set after the driver
connected the PHY by acquiring the PHY ownership (by setting the Owned
flag), until the driver disconnected the PHY by releasing the PHY
ownership (by clearing the Owned flag). On LNL+ this has changed, in
that the HW clears the Ready flag as soon as the sink gets disconnected,
even if the PHY ownership was acquired already and hence the PHY is
being used by the display.

When inheriting the HW state from BIOS for a PHY connected in DP-alt
mode on which the sink got disconnected - i.e. in a case where the sink
was connected while BIOS/GOP was running and so the sink got enabled
connecting the PHY, but the user disconnected the sink by the time the
driver loaded - the PHY Owned but not Ready state must be accounted for
on LNL+ according to the above. Do that by assuming on LNL+ that the PHY
is connected in DP-alt mode whenever the PHY Owned flag is set,
regardless of the PHY Ready flag.

This fixes a problem on LNL+, where the PHY TypeC mode / connected state
was detected incorrectly for a DP-alt sink, which got connected and then
disconnected by the user in the above way.

Cc: stable@vger.kernel.org # v6.8+
Reported-by: Charlton Lin <charlton.lin@intel.com>
Tested-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 3bc57579fe53e..73a08bd84a70a 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -1226,14 +1226,18 @@ static void tc_phy_get_hw_state(struct intel_tc_port *tc)
 	tc->phy_ops->get_hw_state(tc);
 }
 
-static bool tc_phy_is_ready_and_owned(struct intel_tc_port *tc,
-				      bool phy_is_ready, bool phy_is_owned)
+static bool tc_phy_in_legacy_or_dp_alt_mode(struct intel_tc_port *tc,
+					    bool phy_is_ready, bool phy_is_owned)
 {
 	struct intel_display *display = to_intel_display(tc->dig_port);
 
-	drm_WARN_ON(display->drm, phy_is_owned && !phy_is_ready);
+	if (DISPLAY_VER(display) < 20) {
+		drm_WARN_ON(display->drm, phy_is_owned && !phy_is_ready);
 
-	return phy_is_ready && phy_is_owned;
+		return phy_is_ready && phy_is_owned;
+	} else {
+		return phy_is_owned;
+	}
 }
 
 static bool tc_phy_is_connected(struct intel_tc_port *tc,
@@ -1244,7 +1248,7 @@ static bool tc_phy_is_connected(struct intel_tc_port *tc,
 	bool phy_is_owned = tc_phy_is_owned(tc);
 	bool is_connected;
 
-	if (tc_phy_is_ready_and_owned(tc, phy_is_ready, phy_is_owned))
+	if (tc_phy_in_legacy_or_dp_alt_mode(tc, phy_is_ready, phy_is_owned))
 		is_connected = port_pll_type == ICL_PORT_DPLL_MG_PHY;
 	else
 		is_connected = port_pll_type == ICL_PORT_DPLL_DEFAULT;
@@ -1352,7 +1356,7 @@ tc_phy_get_current_mode(struct intel_tc_port *tc)
 	phy_is_ready = tc_phy_is_ready(tc);
 	phy_is_owned = tc_phy_is_owned(tc);
 
-	if (!tc_phy_is_ready_and_owned(tc, phy_is_ready, phy_is_owned)) {
+	if (!tc_phy_in_legacy_or_dp_alt_mode(tc, phy_is_ready, phy_is_owned)) {
 		mode = get_tc_mode_in_phy_not_owned_state(tc, live_mode);
 	} else {
 		drm_WARN_ON(display->drm, live_mode == TC_PORT_TBT_ALT);
-- 
2.49.1

