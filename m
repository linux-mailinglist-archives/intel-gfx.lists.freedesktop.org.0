Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F30B9CBF879
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 20:24:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 119F310E503;
	Mon, 15 Dec 2025 19:24:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="We53wdJf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6534810E501;
 Mon, 15 Dec 2025 19:24:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765826660; x=1797362660;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=p4ko00mgEfYDpSu3txrtAeSkTNtTZ4cZVF/dRx1sd3o=;
 b=We53wdJfsiQZSAwBuUk0pspXNQY8vhkFNS0+CYJg0d2rimILbMWwyQGt
 s598uJFFAQLkR+sa0QDD8PiQB4hmxDaAQnlefpKUKpvcWHud2RwgiMA/p
 1FwKSG/POF5UCpt8R3vlqZo4eiMg6gPcHp7vr3vIVO8shNbHdaqeE1jqn
 LG/5UQUGVYwJsXll1RYiV2V81AKy3+ReONucTAiOv9JaRwwr1ki8OKUfR
 ZjU4nkntX85CX7S5bRAiOmfsDCVYuNxY3GHiFdIybxWFBe1E9OnK6lXDJ
 qWjCzDnLItR7AKI0en7Wn1wYudYG5D42l4xhkEEvexHwQmG4Y1thpVSrE g==;
X-CSE-ConnectionGUID: e3wYb6RgRX6pYp9bYRYT8g==
X-CSE-MsgGUID: ONwSFpftSE22zGC48JxYDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="66726594"
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="66726594"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 11:24:19 -0800
X-CSE-ConnectionGUID: AjuVssfcTFytRYQkFgZy6g==
X-CSE-MsgGUID: LuvXzv+EQ3qswX4IsEbyqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="202919540"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 11:24:19 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 11:24:18 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 15 Dec 2025 11:24:18 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.64) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 11:24:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=g9ThgnywHnxXmkRlsqUPd7kKszNBCDpkrzHfLoNGFIIe0MAj/5psSCgYq/fMaAn0yboP8dlUJH6ztU6YCF2S3Yd1KMBIw6oUSIk2ScrgyM5tvuAi6mJ9o0k2h5NsDtppJAzf58T1K8N7qipglXO8QH3bACe/+NmnqMYkwgysGj9WPO42BXEWk8Kh81dkKaRfM4Bn9gF5F/mSCrqG8VRcDRRJzzn3/2IOsEmFlUzyYs/p/BO8t8cgxn9o3nXF2dKY7x0zHIBuFUV6owevUiwrR+RTGlvg7X74nGSxNM02qodB0IC5QvhT9ZvvYzp75nNnGwkuktKJBYrnAhCNIqsShA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VZ/Szm0y67CJwY3AtH5B4w/0zU1U31QZWj0moWNR55E=;
 b=mWNBwVTuFWBt2WT3OqVo/CdOZoZGAlWzwZrW+1Ddfl3Lqoh4PSPQForJWfpsoOWVmbN1brQJB5rbrlpPCLxCtQLkCyntoK6ET8Db9W0XnUjEpM5TS/r3F8jR+F5bm8HYJBiMXmQFZqCgL5unz6DV/okvVD7f9rr/58CaoUEAa84u2c6nLr7CnfusXAPueXabgoWBK7YmBL00Un97LxpYa9uAIFo6GHFue7M+JhMyo9JlfdNUIpPyH372EiN+uf8aRFM19BKaM81xmBu8kHEcq1FGSHy0S842M5SRe8u1eepzsnRuWsVXLBUG2HM6dMIqbjVPI9QUg+MCFX4F71hNeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH0PR11MB5112.namprd11.prod.outlook.com (2603:10b6:510:3b::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Mon, 15 Dec
 2025 19:24:15 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9412.011; Mon, 15 Dec 2025
 19:24:15 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Luca Coelho <luciano.coelho@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
Subject: [PATCH 09/16] drm/i915/dp: Use the effective data rate for DP
 compressed BW calculation
Date: Mon, 15 Dec 2025 21:23:49 +0200
Message-ID: <20251215192357.172201-10-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251215192357.172201-1-imre.deak@intel.com>
References: <20251215192357.172201-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P265CA0093.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2bc::18) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH0PR11MB5112:EE_
X-MS-Office365-Filtering-Correlation-Id: 060fbca9-2309-456f-2a87-08de3c0f8922
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|10070799003|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?tauM8q/cD4d/ErIcneb44phgeA9TPjmsAPk38jnA9hkXE436vnV6J+USiW1j?=
 =?us-ascii?Q?s8ZHUiFKv1Qzq+fPX2LJ1ev0Ot1C7CIj5nUW8x8UoT/FPpMSvUyHYKjmCAI+?=
 =?us-ascii?Q?tPfGrHPfM4capJuAf6xevdtREKDSE1laXni2o2qiL6ImVjSwtqriY/H2MIjg?=
 =?us-ascii?Q?TEVvLuLnxAr/BMnb44KgDGlV6oo7yklw68ocnaXhFDnocPtzKSoL0J3VGKPb?=
 =?us-ascii?Q?GZHsAdsH/C6/0Cuh1L9l8K7RNy6/rRQtAS4MVrl274UF1p/O7Azmg8xDz6nf?=
 =?us-ascii?Q?nqnm/Y/xjWwg1bHjNRBFa1kpWwbGQFDkVb3AlBFadqGAnlH3Aog6bq/GFLcx?=
 =?us-ascii?Q?W2QU7F0EG9f8VKkDF6IAUKtXAm5VCG+XMmSz6Jx++xIV55mC284PBNeOYOQz?=
 =?us-ascii?Q?apuDs+AACOAAA1xDF8SYUy3c/xMzBgFCl2ItocvrzuSR0j9qLDOH5s7JP7Qz?=
 =?us-ascii?Q?1byOmxb5wcPg3VZIK2wROPwwAWBxm58Es0RY+8tFDU9Ng5Mzw/i3hcuP3/ey?=
 =?us-ascii?Q?0IaD+4gRepDZXbZYOzGuecO9VvEQH5KYY2ud7U9lBAwf9n8d7EWaTkhGsRyH?=
 =?us-ascii?Q?TeyGwnyitjtCbJ9egA3PI7Il8iQdw5Iw4v2LlPmnvPYrsAFfVpERGOa62QmT?=
 =?us-ascii?Q?Sjz09UlM99xHthNEHDr0DxQOdU1MJv27uPfLgwFI0m7p+vc6HChAvhEJ2VEo?=
 =?us-ascii?Q?PlPT6pUSbgn1mFhPGEQQbOnHBtF0pfwQt4oknLoT12qN6920W3mx51yAFAy1?=
 =?us-ascii?Q?gOip4usJXZQfN5SRdK4zwt3Futi26u+xHCNlb5e/2GDlFoZ+i0+i56hpHmxs?=
 =?us-ascii?Q?fzJoil77EyqtOfSUG1MZQTZk/T5eYO9awJCRSGHj3gGZBFewed2pg5Ttx4+N?=
 =?us-ascii?Q?rsblld9dW4FLDH8AG8y08ay9r/xXiqs0utudESdfxdWCQaY19NUKc++RKydo?=
 =?us-ascii?Q?5ASLephrzvxhD1+DAmchFxBzVJNWL0qSWshI58b+KQmBH/ceJU90pVrXV6zq?=
 =?us-ascii?Q?FzaG70MXyi3MzgZr0uH/Uqb6wcR7ri8HUnqyVdnFMRnD2FMQlktSYZz/Kdl+?=
 =?us-ascii?Q?djWbkuhoptoCfnkNSIQR4Lv0/wHi7gL+Zm+AmUKS8OA8y4KP06gjwiatKgvE?=
 =?us-ascii?Q?BNMdIs5xJMsmvOcH3I5AUqCCTrVU9/52oO0kW3zeinxkldhKir6pSD4JG+ZE?=
 =?us-ascii?Q?CJeS/O0bGDUEXY5XydAiM8qCudl/0/TjJo3NfUWADpnUc2FRCqfB4qdNbzX+?=
 =?us-ascii?Q?eI+CUcdWmMrePOy4o3tmqmA43aLqhq9k9iC0S/NjRgZIzBv8RijvSUbnNRg8?=
 =?us-ascii?Q?g2lZ//KNm8GG9MJt4+EgZYn0fMOjHRUfQKa9zMrCkbVh2JCvSoMmSuLJcA/J?=
 =?us-ascii?Q?BznIVHwfwsfVChkm8AMdOqEIaVqoVSQHjuF9NUiJEfLFVeZiUl4Envpx5Mai?=
 =?us-ascii?Q?gLAlIoxewWJBnnHzIoIIJYxNddTm3zr7?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kS1f1DcJzRLpyvyhO91sEhmROrFs1GCIvQClGyMTZH3OHdUn7ba6kztxeDUT?=
 =?us-ascii?Q?XQqmW5IXE/V9vOHuaKcwrhRZzzg1dEUDeLRfd6VL0l9qNw57Sai4Ks/QHVmU?=
 =?us-ascii?Q?C50hl5+X37GEFrcuMPx+s8hVL9swD+oprRIWumkvRXyTUEpojG4uHxWpuqxB?=
 =?us-ascii?Q?Gy2aBnP99zIUPHqBDSvVVofBi4KoWQHLAIIaIdj/b597Wcqd/f987UwYa+H0?=
 =?us-ascii?Q?vre1UmquZPvjvAYqFJIwPHzmhEyRkD6RhmkvU34aRIeQ5p7EucSaVfQLYv9J?=
 =?us-ascii?Q?j2nwJn5JdvVLPgUdnQvrjHwKehYR2ud5/2qUwdPvQdZDDHiC9S3nD1V2jtKq?=
 =?us-ascii?Q?LL1r94/9rHBIPs8PdplgLOZdp90zfp8EpwEKxfLRB3Kw6q/4n9jNdPWKCo6f?=
 =?us-ascii?Q?lpXc+Wd9yYFRb4uYZpI4HnxnaA63TZnsnNrDUNe3u4Gp2IWKFTqCNnIB7ceI?=
 =?us-ascii?Q?ZUivUNdjodjVy5RGOen3QEl7MR8YCk28zE4fROLUcad12NB/9/6XqrlWoIrg?=
 =?us-ascii?Q?6WWIruR5kLDiXcyNZe3aDf5nYVF+iTMPq+iko3/5V4bhWYmOja/JlmTC09SC?=
 =?us-ascii?Q?is4/Q8TlvWalmU/gIwGGB5/ADW0ZYrcxAaNekmR7WUMM7qnJOqKSxn1N5+Gj?=
 =?us-ascii?Q?PQOGdBbq93J9aQ5+SZwK8a0oOs2wB/vrZJ7kTqWKgu+xWqbph1xgNIq6DsEx?=
 =?us-ascii?Q?pjKhmttq1PJI+Gahx8aipuAbmCsFqJ0l2xnUOsr7VZN5cIJDNIIDSEvUAkVb?=
 =?us-ascii?Q?YCr+1YLYXzRRAx4drqNhEWL2h2n9lSxJsK+/SUb/megAIHumjiLqleswl2+B?=
 =?us-ascii?Q?eQ505o1BR/eVPh7qY1cms29O2AzKCxM7E2C78m1F7u53dVenLse+70t/0ivZ?=
 =?us-ascii?Q?UiybFZ2AKHCEfC23frC0BWLSpx2LEUxl6zFLKey8Dzb5aOTZvLcwGNmZ6T+o?=
 =?us-ascii?Q?U97Y4dN5Q/a/hWRY90n6TcTREVpN3e0xCpLEwLlF+saJ1vkrShfWJ4sZzQAa?=
 =?us-ascii?Q?vFsvVToWMg3gjlMdPAfpraDqxLBHfI7aC9VL/PY1cc5mIo75ZdOlM6i3N98D?=
 =?us-ascii?Q?ogyaBmw12m57gPXn1T3WQGpgm6mnaf3Nknll/jXFenTHgZrKL65GXFk08qYn?=
 =?us-ascii?Q?ixAe5xhob2Tz6kPa72ySvpfkmEtbJ7o4NqqFxK04yzWbiRerIFzwKseqa6S2?=
 =?us-ascii?Q?Cq0NFG/A5zyt4rXNG0aj6hUnpfUVH+8MEf2heCqkF57rjW4jXMh06a317xdN?=
 =?us-ascii?Q?XD2ZBSiWhANjiLL+VzzFLSV15ifMQ+ar5+X7i+QxjXFil1HVZ9ksYM4kxgGl?=
 =?us-ascii?Q?dOUqyDtbBbLBoPn3TI9TaRtJtqxOm5I7o6rsFDfB4/uImpVBtiDkbFmLVEsx?=
 =?us-ascii?Q?kWTuKXdb+GzQ82FiT6fHHb0aHAn40Ql1KjNOvlLzkrjsNMgOub22Pxzbb7xb?=
 =?us-ascii?Q?ljKe7LkVy+b48TcE/DJ7SdHz84F0JNbgHp+NahQwtcCkhkGsYqTwT0MgYiRX?=
 =?us-ascii?Q?Sh8759gkx1QAPqvYzPQiLVzFRBeqmwW2PGBg86UDMNrB3rHFgTObG9uadCaR?=
 =?us-ascii?Q?i3J3YyamaGKxobx1zdAEFIdmdTRv26iVyWmWNhhk09i0lk8aGj0xRUbBSY0k?=
 =?us-ascii?Q?nx4zMi1L8R+Mo2EgrH2i67HrGq74fJh5oh8h3qcuyhB7?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 060fbca9-2309-456f-2a87-08de3c0f8922
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2025 19:24:15.8452 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CkPyK+u1NXBeZMGkYKICGWFxN4ozjCFYsBejAdE2XhU/1xKtTgqNWGQXezOBaHBxV43+70qC50EwwPgXTg6xGQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5112
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

Use intel_dp_effective_data_rate() to calculate the required link BW for
compressed streams on non-UHBR DP-SST links. This ensures that the BW is
calculated the same way for all DP output types and DSC/non-DSC modes,
during mode validation as well as during state computation.

This approach also allows for accounting with BW overhead due to DSC,
FEC being enabled on a link. Acounting for these will be added by
follow-up changes.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 27 +++++++++++++++----------
 1 file changed, 16 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2a9652dab2e54..4394ba1edd836 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2025,15 +2025,19 @@ static bool intel_dp_dsc_supports_format(const struct intel_connector *connector
 	return drm_dp_dsc_sink_supports_format(connector->dp.dsc_dpcd, sink_dsc_format);
 }
 
-static bool is_bw_sufficient_for_dsc_config(int dsc_bpp_x16, u32 link_clock,
-					    u32 lane_count, u32 mode_clock,
-					    enum intel_output_format output_format,
-					    int timeslots)
+static bool is_bw_sufficient_for_dsc_config(struct intel_dp *intel_dp,
+					    int link_clock, int lane_count,
+					    int mode_clock, int mode_hdisplay,
+					    int dsc_slice_count, int link_bpp_x16,
+					    unsigned long bw_overhead_flags)
 {
-	u32 available_bw, required_bw;
+	int available_bw;
+	int required_bw;
 
-	available_bw = (link_clock * lane_count * timeslots * 16)  / 8;
-	required_bw = dsc_bpp_x16 * (intel_dp_mode_to_fec_clock(mode_clock));
+	available_bw = intel_dp_max_link_data_rate(intel_dp, link_clock, lane_count);
+	required_bw = intel_dp_link_required(link_clock, lane_count,
+					     mode_clock, mode_hdisplay,
+					     link_bpp_x16, bw_overhead_flags);
 
 	return available_bw >= required_bw;
 }
@@ -2081,11 +2085,12 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
 				if (ret)
 					continue;
 			} else {
-				if (!is_bw_sufficient_for_dsc_config(dsc_bpp_x16, link_rate,
-								     lane_count,
+				if (!is_bw_sufficient_for_dsc_config(intel_dp,
+								     link_rate, lane_count,
 								     adjusted_mode->crtc_clock,
-								     pipe_config->output_format,
-								     timeslots))
+								     adjusted_mode->hdisplay,
+								     pipe_config->dsc.slice_count,
+								     dsc_bpp_x16, 0))
 					continue;
 			}
 
-- 
2.49.1

