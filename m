Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B89BDF9D4
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 18:20:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F6B810E87B;
	Wed, 15 Oct 2025 16:20:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hIKy95/7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78B1A10E873;
 Wed, 15 Oct 2025 16:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760545209; x=1792081209;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=InuUcUUeRbV0Lo1T3y3sL+j4+PsNKDkOAj7MASNZe54=;
 b=hIKy95/7WY/Uawb7tlQ5Pm5P/bZvG8Eocj7ZPe28Jy36Vz9lBuIrzyn/
 Qs7DprjcWzcKdkvaCLKZbktzkOHhZuz2MjGBGYZOIQfhD0B8asPadkYcp
 Fl5qU74tPIYpsHkyXXgj00HK2QTuR6DV5054IMwXmjWwShyaLL640Y3eV
 6aI4akEzHlVljfvNqppUxfG6QSD6+98sm61FZynL/sCcWjSJtNuPPblFu
 ijpXEun/sNrfUuycrAbt/cx8eIwF3RWTZxhew8mHGPuP24zAa0lbobfTK
 nHVtIfahgSa7jDHQbeRRR+02LoX8u+uA6+N9yY4aXU9iPrClSqsZfEaKa w==;
X-CSE-ConnectionGUID: pzQojMfHRa+PuMNhItjzVQ==
X-CSE-MsgGUID: VePnkHquRqmOhL76eWsu7A==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="73837270"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="73837270"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 09:20:08 -0700
X-CSE-ConnectionGUID: Bo18GCWtSk6ZoW8DykKWpQ==
X-CSE-MsgGUID: MzqXYEevRTG5aOrHq/SdbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="181344503"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 09:20:08 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 09:20:07 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 09:20:07 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.28) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 09:20:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CBHZTEXTbK5D8NmjHeSH+eeh43Af2Sh69NGPDfCa7F2cyvdon9aF/Cr3MYW5CSqj9HmIv+VKmdTlaZNOx5bo5Tsywroq6/pqWehCLgpKXjOGVgpbTa9WxXmUWdACjO9+zw0y9XWacp5xgHbUA97OK1vfiM0adNOXApzYWT9orc7CAB/GNrBLGx7VWB9Muui/z0qv4TBG4uZf8t/TAaW6cujyxDQse9BiB1O17aGjhRrIXCOQ4HopuwubcumpJnAl4E7VZdIPZoNeLQ5PAJ6kxQOHGg97HundBuhkge7EQRlJwkPFeYT/uOFSRHHeVYsY1wZyrUUeqZYMbVVK9ex67Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OTePh0Fh6i820g5X2F+r+QS8u0JiUJTohlIK/2AyWT8=;
 b=yrbOOdfPw1ynfGIVHZUIaFRwCrBY7kFpYmtLgvHKxM9ia1LnZhUqeABFQfM010mmLlt+DNNmQnx6jt+dEHtr1C6K2JmaXjeesnbqFmZzEN4VN+MpAgoZbDYcq8ZZ+5W5H2az1X1EpArlUtVcDCpY9TZUHuy/WCEe8AYG1q2J7XdkAjhmNwk69+/QgXHDQ5ETzuWxxZcwMLxTbIVZ/8lqXCXYE6T3+zFFyZZMltKzxFlQ3gLB6BQs5G9WqkcRfK7+dooTg8rA77nbKU0zSdQxD0KRjYvASG02Rhu0DvWVfUenf9teDu7j6KoIa5JRyNsP0bnbyUM9gisXo9GbQ6vdlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH8PR11MB7046.namprd11.prod.outlook.com (2603:10b6:510:216::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.11; Wed, 15 Oct
 2025 16:20:01 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9228.010; Wed, 15 Oct 2025
 16:20:00 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 1/7] drm/i915/dsc: Add helper to enable the DSC
 configuration for a CRTC
Date: Wed, 15 Oct 2025 19:19:28 +0300
Message-ID: <20251015161934.262108-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251015161934.262108-1-imre.deak@intel.com>
References: <20251015161934.262108-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DU2PR04CA0188.eurprd04.prod.outlook.com
 (2603:10a6:10:28d::13) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH8PR11MB7046:EE_
X-MS-Office365-Filtering-Correlation-Id: 17f118d2-bbf3-4e97-b355-08de0c06b0b0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|10070799003|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?23EdDL3PkYz96WwoBDjzZowJ+eC+dfacbgjQJQkBjBDvWvpiDSwzfecqAsTA?=
 =?us-ascii?Q?4etqvJjl3CmLP3j+jRvFjepxqrc1q/+EACEHxlAjsqnF2FrfYpSXKSrnyoIV?=
 =?us-ascii?Q?aNG5aWh9q9xhrOiWmcTW7gFmFZB8KzTouiZLYN/wsMn7DBR/Co4SraPdkomn?=
 =?us-ascii?Q?mjJW+tLwkvBF4dRQD6YszuVoie5IHQWXemvbUZrZn8oqwQLjWZcKdv/sky1z?=
 =?us-ascii?Q?oocTr172fU9Ta6XNTit5OWth98kAQMmq7g1FDACqk/n6Jr776v0YiJISDlEr?=
 =?us-ascii?Q?+8xgED1FeWdsd5OmlOSiFngNm64UFrW31TldyhIMJ6Ekq/phHbAmLfE7dROF?=
 =?us-ascii?Q?X1RU3NbsBHlusnhAXebKdwX/xosTzaeIAjxf/ogadHHYnt7HyE+zn/09W9Iz?=
 =?us-ascii?Q?jja7vLSyLysv2NYTz4lgXjCZPLJzmZQwLE/GHFX945Wa1XdVHd8ahg/e1cup?=
 =?us-ascii?Q?mBOtgV0v+QHd10af6v+UO+Z8HaWhpaREfbWZnoL+7yS07KLFIKbT3Y3GLmFY?=
 =?us-ascii?Q?JJfnUEowuu08UY6LKLttB+6o5+p8d/6PYxUK14XPJX8biQu/oxJA8hgCdNsr?=
 =?us-ascii?Q?kNC+3r4IJ4CLKNIOtT+KjuQpckRVNiJ70QczbcQBV7fEslmrCRxKzSuDJKqH?=
 =?us-ascii?Q?BfvBYKahuFaVwbFkIDyG5SZTLfUK72+fPLAahsaqWXVkcTTnT4d7LXY+cVTA?=
 =?us-ascii?Q?4hDep6cKNHYSsDCBgbCIRGsf23Yl+o+hicIIN2obGgjKsqPVC82ONE05jyyH?=
 =?us-ascii?Q?ogGVSV153dtb6m/MBxWSYh+Z+HSXhmgdz9rz0HYQ8mWLq7T15HYyVpiQUWtz?=
 =?us-ascii?Q?nkbgE861aEH180nm2zfvW9lZEImpjGNKqOXhowk4oUJalic80kLNGaAcEpgh?=
 =?us-ascii?Q?8iJqu9AeRK7tb9MUwxK/e98YKMKvQaBwDKDa1mrluTNAFTHg0/BmBkRBJ0rZ?=
 =?us-ascii?Q?cPkUPozpq0Xb0OSgf37jBPEEW1fgcjozg43Ni94FbqgqA4YXbamjY9GAjG/5?=
 =?us-ascii?Q?bXGd3g4mJCSCYbOy+Cq4CtBKk5cGh0UxQ4mjMBYE5fIC/2rwcMSpIu5d8oHl?=
 =?us-ascii?Q?g97Dyg4P7wPzfAa+YU8pqbmzKtoClJg187GT2Di4EKEA23M2hFKvLJcaTNIF?=
 =?us-ascii?Q?2tz8/UoDCwME+HCJt2k0ZBg26ON4h34KWKygOq+c1Dfx2brFcnOvQfMsJZ+5?=
 =?us-ascii?Q?WBQI6FPyujT258q9trLxFkje512Q+osxizTPm6HSKx8qaSrP5GET/cO0Vws0?=
 =?us-ascii?Q?s8Y4xwohNm3+HmOb6+1W0t8JoyXsDlF2+aVffWJOgdJxDA2MOhWWq6/Xjglu?=
 =?us-ascii?Q?LcqxZ9jgUJ1W68qerbX5vcj8axi3GYP1nHqhAE5Sjn1lOPtp25PuasOCH0Wj?=
 =?us-ascii?Q?oqeHQQe/bg0Pxy313m9xYoNRU/55nrxXaZOQc8trcsK8unIMmqfyueUhch2s?=
 =?us-ascii?Q?0nZ1C2Rd/G9RgokDgI/NCUg/4V5oDgbl?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?femNpsbNKljClCbEgJeE8TOuHuYTDuTqSnqnhNVPhqAHxa5UXQrdwfBUTI6w?=
 =?us-ascii?Q?a+EwKcjS3FTZaZFa2Kl6PHwdumcuPG0lfZ22iE0d+XkNse7Uqxh9taJHuIRJ?=
 =?us-ascii?Q?UEPQ1IxZVD3SL+aTSAv3sxcf+tcjwDzBVs01+KUiX5wfCDmAiXDk2+WBJjLF?=
 =?us-ascii?Q?fUDWhJ5uaEUhksTTO3M1USWpUOr4pifHzVeCv7WaEByIPhregsTVIRrmnlLh?=
 =?us-ascii?Q?6Z8XLP9sliqnhaY1bYbwkhPPMjxyEo0hVDjZZZ2FevEBuBYrZZfnUb9FwAk5?=
 =?us-ascii?Q?k6PV49BcRFQpiU8/UZW5HUdMyEiSdkPN6W+NxCf77GlaZ2qljNLD7eEpcG91?=
 =?us-ascii?Q?q6oyn/ZeNa92BWKUfgblw+WFci+XC5tFl9/KLxvCLBqTF+skQnVNMN+ARo7D?=
 =?us-ascii?Q?gNA2gtfpDJc5MbpNl4DnzE07Rse2mvtnklCjgv3Oc/A9UlmaG9O+QRWqer++?=
 =?us-ascii?Q?fDIZkYNwDd4I7/vOTy349KS//REdniHvhNAZ8dj6+pobbHssCs2bmUxI8xit?=
 =?us-ascii?Q?6eDl9Rw/brUZEhXnpSnOm4fzjA7hWjXUCfTcvz9m5VOGM4c+dZp32mNLgAoB?=
 =?us-ascii?Q?SX+V2+O2Ukfv/CPGiLTBkTzyhIKLroY4OWkL+A9biA/BG6un2k+0Kn7ykitD?=
 =?us-ascii?Q?AS5zonF5ktxu4DPkKtemPp/FjNU7uJGybec9ev3+hSECTZC/WHsZltdSBSEa?=
 =?us-ascii?Q?bk0k4EoIP7Xlr2S5MM1r1p9uQN5LO9CNzszSLrkM2hv2q0F2x70ecxV3YLQy?=
 =?us-ascii?Q?joLsozM/xQRhsSLLPN4EmL5FHQbGU8RySSwkWVUhIgY15p7ZIKE1WvRu6xce?=
 =?us-ascii?Q?4FjWbikGWye9ydiwVGvBuwgzgGXkP57/d9eJbgeoIxdHO85rAvtBXPcUDWRg?=
 =?us-ascii?Q?N8bylaoNUN/ZxT4hzhIk8hRQ+9gZA+7htOfet7emhj77Zq2K1EdVIuU8fxDE?=
 =?us-ascii?Q?5CaiD9qXACLIF7aaYrD3rXYu9OM5nKeSTKM33f6zxIc1plLbrRYfiMmLiYl6?=
 =?us-ascii?Q?Th4LiT8oCRN6QxVejurkk7frWVxmy1twp/8Jqlq8CmSsZt49BZpxoBE1Kx13?=
 =?us-ascii?Q?MFqcF/DY6roqa1tIqpA9C+k4i8DvB0n0MY/nwGmsi3WGHgOZcwA8blJaTXUc?=
 =?us-ascii?Q?2ogpM4SriFvZ4vf722i3PAe8ovMTnrAM1h7G5WcWz0fViORlfIf+t6G8RN+j?=
 =?us-ascii?Q?9y6ebTlzx4xm5/U9ZQus+u0qE93U6ZcTTXxqg9agENiRs4MWNuOlJysisX1D?=
 =?us-ascii?Q?SzHIfq+rCgn62qNLP61/vQbbtAScwFHnZnVbcMX30Y3GJb8i3kR155mnTuTV?=
 =?us-ascii?Q?K02s9BdbEnVtgUC2wGjCH3Ao9Ilgz6ho8PuV+100zZZLFJMZEq5lxz4wWUt+?=
 =?us-ascii?Q?Fok233SN939TJ5H9B03AD/evRQHSc9mVt3T2h5chdv+9nFmEIbtff5vih9jO?=
 =?us-ascii?Q?FWXwijfP+ZVXbGNwQBqYJtauKn9zwbIK5kxXZnh0AOwgpcpsnUIduwGqiP9i?=
 =?us-ascii?Q?FbnYfEnaDWvOzsqJKfe2eFiJML7EY4MNqDxInk1O7j+tS5Ms3yZLmFQepx0W?=
 =?us-ascii?Q?eCI+0F6Mq2J0/fzOZs1m0HjhocGFMlLaqaiBFGO0BmP4ipN/lM1Eb2XfI0Z6?=
 =?us-ascii?Q?OtbV28Rd6fc9kfC841SZTwf3CoqHomgLCj/XcDH0hnNC?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 17f118d2-bbf3-4e97-b355-08de0c06b0b0
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2025 16:20:00.9177 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oD4srFb/lthOvIPCeq/IizltRBLWxaFOJQKpTQ/69VVahaP4lVKAiFoAnDxvbG7XXSssP4equ5qBd9rdmsJjMg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7046
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

Add a helper to enable the DSC compression configuration for a CRTC.
Follow-up changes will introduce tracking for the same DSC state on the
whole link, which will need to be set whenever DSC is enabled for the
CRTC. Also, according to the above, when querying the DSC state on the
link, both the CRTC's and the link's DSC state must be considered.

Setting the DSC configuration for a CRTC and querying the DSC
configuration for the link (added by follow-up changes) is better done
via helper functions based on the above, prepare for that here.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c    | 2 +-
 drivers/gpu/drm/i915/display/intel_dp.c   | 3 ++-
 drivers/gpu/drm/i915/display/intel_vdsc.c | 5 +++++
 drivers/gpu/drm/i915/display/intel_vdsc.h | 1 +
 4 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 37faa8f19f6e4..297368ff42a5e 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1655,7 +1655,7 @@ static int gen11_dsi_dsc_compute_config(struct intel_encoder *encoder,
 	if (ret)
 		return ret;
 
-	crtc_state->dsc.compression_enable = true;
+	intel_dsc_enable_on_crtc(crtc_state);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a723e846321fd..1d3ca1970f25f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2475,7 +2475,8 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		return ret;
 	}
 
-	pipe_config->dsc.compression_enable = true;
+	intel_dsc_enable_on_crtc(pipe_config);
+
 	drm_dbg_kms(display->drm, "DP DSC computed with Input Bpp = %d "
 		    "Compressed Bpp = " FXP_Q4_FMT " Slice Count = %d\n",
 		    pipe_config->pipe_bpp,
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 8e799e225af17..64a1e9f0a1893 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -372,6 +372,11 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
 	return 0;
 }
 
+void intel_dsc_enable_on_crtc(struct intel_crtc_state *crtc_state)
+{
+	crtc_state->dsc.compression_enable = true;
+}
+
 enum intel_display_power_domain
 intel_dsc_power_domain(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
index 9e2812f99dd74..240bef82d3576 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
@@ -20,6 +20,7 @@ void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state)
 void intel_dsc_enable(const struct intel_crtc_state *crtc_state);
 void intel_dsc_disable(const struct intel_crtc_state *crtc_state);
 int intel_dsc_compute_params(struct intel_crtc_state *pipe_config);
+void intel_dsc_enable_on_crtc(struct intel_crtc_state *crtc_state);
 void intel_dsc_get_config(struct intel_crtc_state *crtc_state);
 enum intel_display_power_domain
 intel_dsc_power_domain(struct intel_crtc *crtc, enum transcoder cpu_transcoder);
-- 
2.49.1

