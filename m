Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF810B8707D
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 23:12:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A68110E901;
	Thu, 18 Sep 2025 21:12:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PlyqnuIn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D943710E901;
 Thu, 18 Sep 2025 21:12:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758229952; x=1789765952;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=HV4I/0shPEGD/Hxv72KfVJwZDHToEywjYwF4YfnYcI8=;
 b=PlyqnuIn73Ivq3T5V/ll7oTkLFx1WNUU/y7XApfqLiuq/qH1tvSz7+A5
 F7xTFPoG5PxB8rcgVXf0716B4pjg6Uj9TEcNB383Nye7gQfkXWxCA2eYZ
 cQuuW9g8+tzZlfKL3eYRfZGS7xqClfeL+cwUSoxA3HL6EMpvCsN7Y+gVJ
 c1uq23lHtQd9MFQskYeSnOxdZbaB3SVeQpAaRR2euzC6IJOwbNPR7MJJk
 XNX+nDtX+/qPTC8xhqu4azp0IDVpGcP4lcBLaE5PGmXc/F78haVZCIONj
 LvTNUmXfDfhuUlNFzjTdjWgtxyOaOcEa/LkFbc/B98UP7OwmI3+RpJ8IC g==;
X-CSE-ConnectionGUID: cryfefVeS4mgH5pEcNdWKw==
X-CSE-MsgGUID: vzRHiupJTBu37bEWaqNuRg==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="59796023"
X-IronPort-AV: E=Sophos;i="6.18,276,1751266800"; d="scan'208";a="59796023"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 14:12:32 -0700
X-CSE-ConnectionGUID: y+v/DBVMQxSYoSYE482c2w==
X-CSE-MsgGUID: vb6L+IesTauOeD8FsJ1Dvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,276,1751266800"; d="scan'208";a="175266766"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 14:12:32 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 18 Sep 2025 14:12:32 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 18 Sep 2025 14:12:32 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.65) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 18 Sep 2025 14:12:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=o7VzVvDNKhaPHY/lCkIHaKee2/z/y+ulxmIV9ODjnEGr/LNY12iaOSFH01jDhb7TLKKm4LWS0AGU3ZHuHO/A72nVlLgHbwDtCJ+w0p9UnBQjhxiLjIHIuY+tR0SNuaY4JaT/S7N07Hbub6msSYAgReDLEp8aLr6As9uOYEgKzfN7mVCYeT/aX3CW1iIvt41WabMHE56oZqvNK5TIkJGaWcmGrylearzwSoh8tx+cmPZf55tL566tXvqd65G+ukEeu8DeC1vLpaq8947z6nlB2KCXW0h5tLDdkSnXU46fPPDSFYTRkJl3AtTI41JdCx8ASAsm2ZxMxaQ7+KLk9h69Fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4SEaHXz7sDSizqYUsB84u1YudUHOoz2rhvg2g4nxySs=;
 b=E5UqYv89Nf5q3Xi8VFmGIAC9nebmVb2Chd8UiPd77O/5CBnmGah/0tOTXt9OP49p8bfuKf3osTuZpLDwvewyS7TJA4VLWtKSvH7u+Iw/XdN7zfi8CEMdmYWsyBmP77WnxAJIDa4ks9ZSk8IImB6qrZpLIa+y+MxGrn9MnC2xVgzoT4JLYumCk24C/MXRBuUa1lKqbbUUXQd9q2PwZvyo2Ayv6ADmEeOrSZlnCsrToxdl7X7lKiJc9w9hGb/DWc2TNBRttOMd8Fj3LKOM5kE75b9XWu64rOS904r2GM32HAElmV2cqjo1FSv2ouXDe3eqVtkHYyU55l/6wok7KnTDCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH0PR11MB5176.namprd11.prod.outlook.com (2603:10b6:510:3f::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.14; Thu, 18 Sep
 2025 21:12:28 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9137.012; Thu, 18 Sep 2025
 21:12:28 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Vidya Srinivas <vidya.srinivas@intel.com>, Swati Sharma
 <swati2.sharma@intel.com>
Subject: [PATCH 0/5] drm/i915/dp: Work around a DSC pixel throughput issue
Date: Fri, 19 Sep 2025 00:12:18 +0300
Message-ID: <20250918211223.209674-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO2P265CA0251.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:8a::23) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH0PR11MB5176:EE_
X-MS-Office365-Filtering-Correlation-Id: 4be87765-8b1c-477d-3650-08ddf6f81274
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|366016|1800799024|10070799003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?AhIT9Aw3ML8Wy9IGaoAkHA5X2VM9lhNXxAfkbGN32lkp2d1vyDjmS1MWYzYp?=
 =?us-ascii?Q?JuVBfWtRjmH8wke4wWvYqwMnAT5NDViRrt5vJLWawkJPBxv9nUDacbCVD76a?=
 =?us-ascii?Q?7faSdN9VKa220eqKiq9C7+OWnUckQO0ZM5eGq/5Zc6dBoykIhO1WK67ZldTn?=
 =?us-ascii?Q?6u5ECWMN4pA/T8Qxz3ZOu24fb4xdWc22mcUTSDG/pumqm3npr19UQDAfE3Q8?=
 =?us-ascii?Q?XHyt7aG7QzJTwreyS/GhRZw2OrDVz4FC3XnUoodGi/3jVMIp5tr6JXTfbjGH?=
 =?us-ascii?Q?W0Dd9qBps7RasK1YVSOpjyuOrWXgwQgUGwmVZd7Ziw+IeP/iPP4nBpzQMcgL?=
 =?us-ascii?Q?b7QpjW1tmpXso4dfLluiTMur2JUaFXoi8yf4T2J99oOy0LL/KqLxc7rNlhuy?=
 =?us-ascii?Q?+HMZgKOo8M9Ih6i2DYuTVL8SJOr0r65R99M97ycUCFfKkqZUdwg0IDQCPrMV?=
 =?us-ascii?Q?OFR39+ZCVQEnnhq4ip5EpxjJrDFm01ByktoxyrsZ3auq8ZMk72ebq7+ufSO4?=
 =?us-ascii?Q?03Gyy6iCvrLQ9S3pVyQVF4Zc+n6JzxHcbJxhcWStPxcNaA1XfU+tCe3YUEBP?=
 =?us-ascii?Q?gRMsGpSxuGEHb33D3I18vzA6hiTNI4G7C/bByNQJt5vZqZgVyXQdIWzt6dgA?=
 =?us-ascii?Q?185Pk3KZ+YkV2oMv6a4yULP2Ls+iaDO7tUbR/cToexPkFfvEZrfrvk2nAn8J?=
 =?us-ascii?Q?HdwJqE1wywXAocd2H/3ZnVnzsJx/e/zYO8thW3pqSbctb1CKLUq281AEBABa?=
 =?us-ascii?Q?RGsDW2W0XK3ZrvCm447nkykNcd+oPChh0R84AqUrChAwoOgQw778s3BV1dMR?=
 =?us-ascii?Q?88CJTnmhm+G+woQwx7t//rOmJHU4rZEKApbe3bG81qzicuP3snxIdSZEPr+J?=
 =?us-ascii?Q?2w/+ciQHle1lELbkw+YvMK+x2hM2wqcJaN31oxqSrNvzGB1acJrAH0G1iGMq?=
 =?us-ascii?Q?V6tLBH12lAzft98UU3jpKXmlkzDVXI19SmCN5G4TWmDSMtMZxedhauccr/YE?=
 =?us-ascii?Q?syu6vklBHG0ttujRADKbX2LGC6Z+l5dYHyQa/7NDdG4pmuF6sHgQ3FXdncCM?=
 =?us-ascii?Q?QV7GcCY2ctzoN9baniq1CvOv82mjrA3WFPIcUhs5m0w1dhRRkWWBcQi9RB+w?=
 =?us-ascii?Q?QjQpuwk7Hfbyh60mPhNWOav2HhYXn/J2aUHdNTmmvz6XTjhbHGA0e9F8v0h6?=
 =?us-ascii?Q?fsEFf+zeOuv/uHSVHUVxSlimmWlXwqX5MYlU2XBNCjN99GfGKaHjCHBQ/DKP?=
 =?us-ascii?Q?VE2UvFjCnasGTodRygRZoN3oPPCObMVluQvomT6x4PnbYapWFoOQ5XDyeAbo?=
 =?us-ascii?Q?camyCQvy7irZEAhoyRUCvjaximm/BM+mPPZfWTwSX2PNv97QUxVUzl9jZt7/?=
 =?us-ascii?Q?09JNPuuzBS9OKmgoB1yR1c7lgHEkNUPBea0C88zE6owmi7JVouz28NYHvyP+?=
 =?us-ascii?Q?ahX8t9MVGJI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?tTHTR+RL5QDK/lm+uk1w+m07Xuab2z1inOGzs7fV2aQ2Zq21pXQlLS5PtLD7?=
 =?us-ascii?Q?9OnBbnnnQyCmh0otQJhnw5s59O0cQm925jphb/er5emmYv/394ZpnsbUakAG?=
 =?us-ascii?Q?IprXImSlCL59jlNLn3jt8dyWSO86lE3XX61JoxOU84PREgpcgKzmcoB3dpgA?=
 =?us-ascii?Q?KcpYgTQSiSLPaFjmcXzyhNln4BUDBMlEAVZMms3h69DTqh0cUEJqd7oM3qUF?=
 =?us-ascii?Q?qtAY2z9NejOwMLmZ3JHojd6EuPoS7W31rRwympgyVb0Yc36Nj4tkRy04Root?=
 =?us-ascii?Q?+o46HIIKHbGxWpldVV07ov+5aN/Wiq2yh/bG5gtwZUZNo0MctJ7Eh4z/P/uA?=
 =?us-ascii?Q?Ck0PiY+ER+TxlLCMqwl//n4H3/t5BeTv7VL9lxFduiTnJDZOAZiSwIkxWHeY?=
 =?us-ascii?Q?GwrNM4bPzDdwz3meHBLez+VUwfiBEFlIYFNtBITuEdz1YYZGlR2INB82Our3?=
 =?us-ascii?Q?Oe28nrRzmfdnlbGDbxe6erIm1X3MzzlWYM+jea7L3NZjg9zs2PYw1ieMingn?=
 =?us-ascii?Q?ZwlUIAq6IZ6gLBL1MhAk/MTELzDE28urtCWy8bD9iNrROZnn3WVDJVpBQaq0?=
 =?us-ascii?Q?ONNpJbdmUykysNGUT9c4cmIxgKKrAnwYbuJ/4KfaIIFs+d+hzUJRuDtYA2Fp?=
 =?us-ascii?Q?U6ILcxludmELUyYoFYLCfwyEQo5sVzmp19D5gRGqfo8ieZRW4qlQlopQWGpa?=
 =?us-ascii?Q?QDZf3lZ8fzJHZmjpm5p+cVEu2/w/v3r3/sKEbOwvxalIKdNMtKiXVHuLIIMv?=
 =?us-ascii?Q?koXHGnycglarRjqJ7gazHXYKqxJ8Fr70WonTKKnJutzdOYdHRxb0rE6jNQAn?=
 =?us-ascii?Q?js9qhE88/YL2xUZXJtMjOLrwfRBTgsWqDYrwJdwnt/HyYOh1YvAo10aXQmSQ?=
 =?us-ascii?Q?vmGDh/UqqaBcPlhLmARPkQpg4BoXLHxf7d51aoycucnetTbyaEaPaYg/vZof?=
 =?us-ascii?Q?iFdZk2FpuW+MViONAts3YnO2qzMhKoCj3LZYSjRzwpVpIP+JtvL52ZIez2KE?=
 =?us-ascii?Q?b7PWKR7oYZIe9TfTPsKRO/JJjDrPDBTb1/oID3Q/OEcn0UiR2g+bKU011oWK?=
 =?us-ascii?Q?UFjPIRWoDwLDBxehzhkt1YlEq4hvYDLSLZUfpD3xhDsT5NHDTLlA+UNLLg3H?=
 =?us-ascii?Q?ewpijZUhJZ48cGAcoIl0Y3gaQRckuOmq2gPecr+vMMwZp4MoZSI1Xb+8xGNB?=
 =?us-ascii?Q?wIWBtugGndQYbepk3OeVet9cLqmXkc+9cl+HNaqTOwwSgous5cKEiw0TYbMx?=
 =?us-ascii?Q?W+4MOm6/BfJE+Uj++9ld1nfFtqMgyNF4OwQsfZabRDcpiar0qkxUwF4pDUpS?=
 =?us-ascii?Q?D76jV/ysLSREtdHKtoFtx4JaG+koSieV96Dr+N0ktvXUy/PgDKUV/HdKovcY?=
 =?us-ascii?Q?RWMNkBITk+fab1zSS8aVGT1PxxGvXPHmoeCi1zEMNVFol3F8/DLo/qOhQ/U9?=
 =?us-ascii?Q?fT1H3nJ9VJRFmhHhurVzVWx8w31uN2+Vu1dxPUHMEKdjUtv8INTmFXxvyjro?=
 =?us-ascii?Q?R0Tmvc0HEfjUvmsDyNaUq7joUbYsqz748kLsJtrO0mGka2luF0iYRDUzCH7C?=
 =?us-ascii?Q?xQ4rZdZiDZjzKzIKG0yK8nLKonVO0TAD99HpsQsN1ita/yFHzlm7EkdSDMF5?=
 =?us-ascii?Q?Ui7sIFMsZ9KZ8e5OqB9NMchPaODGeo6xnbnzED6kqDtb?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4be87765-8b1c-477d-3650-08ddf6f81274
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2025 21:12:27.9631 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9gTLNFAh5/eATWGYQZadex7sbjielCbDEsS/oz/B0LvSpUfn4xAhMoqQo9t1GgCAkRRqWqpOWbZcWF/hSTw6AQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5176
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

This patchset works around an issue observed in docking stations
decompressing a DSC stream with a high pixel-clock and high compressed
link-bpp, resulting either in blank or unstable display output.

The affected devices all contain an older version of the Synaptics MST
branch device. The issue is observed both in MST and SST mode.

Add a workaround for the above, limiting the link-bpp as required for
high pixel-clock modes.

Reported-by: Vidya Srinivas <vidya.srinivas@intel.com>
Reported-by: Swati Sharma <swati2.sharma@intel.com>

Imre Deak (5):
  drm/dp: Add quirk for Synaptics DSC throughput link-bpp limit
  drm/i915/dp: Calculate DSC slice count based on per-slice peak
    throughput
  drm/i915/dp: Pass DPCD device descriptor to
    intel_dp_get_dsc_sink_cap()
  drm/i915/dp: Verify branch devices' overall pixel throughput/line
    width
  drm/i915/dp: Handle Synaptics DSC throughput link-bpp quirk

 drivers/gpu/drm/display/drm_dp_helper.c       |   4 +
 .../drm/i915/display/intel_display_types.h    |   9 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 171 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_dp.h       |   5 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   9 +-
 include/drm/display/drm_dp_helper.h           |   4 +
 6 files changed, 193 insertions(+), 9 deletions(-)

-- 
2.49.1

