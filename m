Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E10BF9E1B7F
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 12:59:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 865F610E1A0;
	Tue,  3 Dec 2024 11:59:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a6Mbqohn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAE7310E1A0
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2024 11:59:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733227156; x=1764763156;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=8PvSQ8IwjSQrvouEiWXdIR3fcwssWBqAz57LX+qWbkg=;
 b=a6MbqohnDZWwYP2JatY4JUU1vnaiSWfi3N50ekZi+JKwiRpCx43DYyA8
 gAp2IDvs0wSKnYssqJ+jCSNi+6bRIVd7NSMZjJl01ckCbasQYv/aePysW
 +LuxivHXr3wwRURednhgOUYyVY88Pu+nk9oiCGEiJC2XPHjfGnl4CDKOV
 ZNOjn6U8+fNf6cKkFeQ7GxmZCWZRWmt8yGW15EZwDzMc4n9dMpxjB7he1
 2aTXYWM7DT71kixr7tIZy16XmIyUBocJ8GhOAuBaHE8sDfl6Ph2xB4Usq
 8B0VGNVGj8YKgaWgQdjHSo6BSvKbWgFacqfaqtvU7B+QhuO+lRuKQVpLD Q==;
X-CSE-ConnectionGUID: 5wN5RivnTR6vTQ0pRPJsNw==
X-CSE-MsgGUID: pInY9m4oQbmpp443UX0jKQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="44464868"
X-IronPort-AV: E=Sophos;i="6.12,205,1728975600"; d="scan'208";a="44464868"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 03:59:16 -0800
X-CSE-ConnectionGUID: 3n+nlEDiT4aSCa1Pa6wVGQ==
X-CSE-MsgGUID: KScTaggiTRuI2Sfo/SZ36w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,205,1728975600"; d="scan'208";a="98500054"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Dec 2024 03:59:16 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 3 Dec 2024 03:59:15 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 3 Dec 2024 03:59:15 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.46) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 3 Dec 2024 03:59:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nlb9aMynoUMf7G/VfYLT6DSNDXDSxe09EXuNEYBvGLeIZoKQbyY+8fiTTmJ5gIItB+bKlG87Ru3C71BPLn2gvVTHR835ZSENy07bSUC7T58CW/ZVIcFP+3PK8n7Y3UQD+sdJf+7M7lt6RRr5vqMOwOfdbDO5ScDq3tHpnPJPRKlmHgGyd02RR3nQViFo4fUbW/8znTU91+VQ8kx4b6SqCGDs51Ckaf+5QtWp+az5sP8vkkTkok31ROW2w23NKiQgo0GcACifewNmrBtOMBgpSJ6W+7JKIX53RoSw/dbZssiL8whtR9vWj2xZ5Oy7ZS1/i+lQCsc8Rc02XP8QOd3JSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P7nwJC+tplYFuiO2iCs1kheheDqItHN9LHiIBRjdk34=;
 b=cJD1mJ0u+WJoysoHpL5AJXaKMnTa8dU1bKwVh7kMsAaYl0zR3oZzf/zDv9eZSQoa19EfnXR+1EEIG1I3DDgFioec4H6XRiTUgnDTjf52yqgx75mP/ucnJPMr4TrnFHXGaGyXMkch9hrPf2hr8fAbAcMltKcnTjzp1fUHn/xGDdf2YeG2DMq4V21GRWA2t3pIuhEzEexiqfb6SfNk9MDNKuoo6iN4De5PjvfKzrFi4KWNclTDjB5FsL3HthEHFzH1KmCPjof2ETbpZE9xm53xnnh3y0zQqCkUtMH7ilCfslPTWjfAVKh2jLbnaiOBpRIUY9gTLhNClWUGFOEEZZuDJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB2640.namprd11.prod.outlook.com (2603:10b6:805:56::11)
 by MW6PR11MB8389.namprd11.prod.outlook.com (2603:10b6:303:23d::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.18; Tue, 3 Dec
 2024 11:59:07 +0000
Received: from SN6PR11MB2640.namprd11.prod.outlook.com
 ([fe80::4b8:af61:4cfe:d6fa]) by SN6PR11MB2640.namprd11.prod.outlook.com
 ([fe80::4b8:af61:4cfe:d6fa%5]) with mapi id 15.20.8207.017; Tue, 3 Dec 2024
 11:59:07 +0000
Date: Tue, 3 Dec 2024 11:59:03 +0000
From: Eugene Kobyak <eugene.kobyak@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: <John.C.Harrison@intel.com>, <andi.shyti@linux.intel.com>,
 <jani.nikula@linux.intel.com>
Subject: [PATCH v5] drm/i915: Fix NULL pointer dereference in capture_engine
Message-ID: <4yfdzisxkb3j3tig2astee5zd46ppt2jwhqffkhes2dwm3g5nb@snadyfwzl7g4>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
X-ClientProxiedBy: ZR0P278CA0155.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:41::16) To SN6PR11MB2640.namprd11.prod.outlook.com
 (2603:10b6:805:56::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB2640:EE_|MW6PR11MB8389:EE_
X-MS-Office365-Filtering-Correlation-Id: 5194a13f-93b9-4375-724b-08dd1391e3f3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?9XXDUKVLIuSZg2AH0uXApD1G9Wnv7C+/YLWuLMiE1gHSEwDNBuSCnDgL9gt3?=
 =?us-ascii?Q?LoU4aqcoNgwnpwMy/iVoF+/m8gDAVB9gc2lWiZTk31gZ4gt+ZLQlXDBbk58W?=
 =?us-ascii?Q?j3BRIFDtJCmYSh83SxndO06h2tmt3yVAJsjpSmg6nGGR0ZrtDZeYPKW3tno+?=
 =?us-ascii?Q?iJ9v5BMTvUH2DWjCjNpbOjBpYXvyYryl/61Arj8nRdkOLtPhv2PSvG+9kLlJ?=
 =?us-ascii?Q?Tm1MqAUvWJQgCz2Uxwl7lu1/ufe2HYGVJlVd/88nzPrH5ReHn8w8ckFmDKS4?=
 =?us-ascii?Q?z3BzoYzaugKOLN7m+2D0Wxq3lKrDLbRXb8/bjjm2/yih93b/dlMkAerxE4zk?=
 =?us-ascii?Q?BBfJ7+1Ye9Oo6/o6JVNKXanPoo8n/n7BJ+dj3cYX4yeBGm8uq5sJ+3U8VY4+?=
 =?us-ascii?Q?u9W4YKTkscgR1a2YLqZC7fNK5keMYcZWYKh4n9DAMLuYXyfqhhWD5PejCFzU?=
 =?us-ascii?Q?J/RxyxzhFG7yL3Iq5zgyuLMr6cLI5lpzXesO/FeRpcjzrDrck+LJsA+/ASVa?=
 =?us-ascii?Q?3xgIjFDELMnaaHuhM385Sp+0vxxMUXj9pRNcXC2EKiItRmJXpfqO384+ZGWR?=
 =?us-ascii?Q?RrYWJxgwb1Db5anP6m5pf+aBwehWRJ3rBKMDysG22Osi1oeQvQ7DSXfmCET8?=
 =?us-ascii?Q?2C/W8c/wruFlkGEQT/aOMpT4dWDbcgmq9rET3ahZocRErPsYIAT7N0o5rIBg?=
 =?us-ascii?Q?g6ybMroJJlbow1zLgLpxH+KKRAok9hVOQVZaeH/4LMl4bivSI3BOfovVRX9x?=
 =?us-ascii?Q?w8gXtlapLcbNFsE4vva5kYQa3bLJCa0+FDIBctqesnDtj30aOHXAr0kwfkXJ?=
 =?us-ascii?Q?zFVMbeeJCRyGhYLfPbg0f6tleSbETVi6dvqdAjrHOuzs/nWQIyoaGMK7m+yC?=
 =?us-ascii?Q?cYN6OJPKeqx2qsESij4Z5DTwAj4WbIETezALzduTJJ4plEb6K7wNkTfriZHK?=
 =?us-ascii?Q?0Dx8PlI0HNVwbTq+m+hzjWX1dTR11WIJc26xIaO6RVIHm67OoeGIk22srI5Z?=
 =?us-ascii?Q?R8f6ThoRVAH+BiAeEHGup79hsz13Jww0R+fFcYEq1StkQ4tuCnWS1XO1Qx6x?=
 =?us-ascii?Q?hisY9P82hCdU2MYfJy1nxt/5DT4nq8PLYrR9F7anQHoOO1YgYVfZFXTe/RUz?=
 =?us-ascii?Q?7QeYXnAPNIPQ1mlx1xIHu3pJeMIYEHvVS1z6BiDwRNdXRxOupI74TG56fO63?=
 =?us-ascii?Q?DYmCmfewfWQzmASrcxC/lHnWkasVILYfwBYtQhpASjkxbPeQVRmZrWHP4ce4?=
 =?us-ascii?Q?B9fCNNl9Yh2jy4ZyovAEPggiHfrs5gmKhY0GcEJTJi1E1yVOeknU2aMiEShr?=
 =?us-ascii?Q?nuU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2640.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?U1+LYIdcN0+22LRGQ2vWxJs0GJQLl9W1eV4tumbIczcVhfVJiSjiSDDuA10K?=
 =?us-ascii?Q?7X9rEjNgHe6xdNs/4bY+3e0Ve1kJj9dR+7AgsRUUQyRHEt8oS8GkGBkPaP3L?=
 =?us-ascii?Q?7xiR6OxgDI0/rAu2GychLEseTqqsyjLO1kiK0Rs7aiIhwP9xLLzKwwW3QllY?=
 =?us-ascii?Q?TpFH8G6wgnnVNUT6T9N1xb+TU5uos8OK+jNQY/MlVRIoliYYda/xTC+Zl9rb?=
 =?us-ascii?Q?veSX++o4eRTxbHydzkKjQkHLUlkgAl5s7IQOKjIfaUEWS1+Tw5lMDavD5AkS?=
 =?us-ascii?Q?kTRHN1oB27iGinrzbPtaYK/P807x3BRJ8k0Q2kVNsszAIZqTpuzAlOIqgvfw?=
 =?us-ascii?Q?aNlghElrwzk4vOFHXNpM19VK8Qsem2LPXMsJ0PuhydbM6F2+GfWrXHMHudNB?=
 =?us-ascii?Q?/7ECwOFuVCue3mg3wsoRBtcWAWlZE5Nmjodu2UvoVE3cU5UmE67fs4AfK13M?=
 =?us-ascii?Q?VpASFTrWcqemUWGmu2VOD+UT9wi3TcrhnkCnDIx4n6lXoGQNx6IT7kciwwfX?=
 =?us-ascii?Q?pBCaaZUU4OO1bEjnAP3lCWzTEwbmG8Ya9kqVTu21s3YwzBwu5h7YK7GADJN8?=
 =?us-ascii?Q?ehx68qHdpAZ4C58l+QRnjNHO0UddY7Ki3w6R/JJsQ/E52pXIQ2vxgZ2ovrml?=
 =?us-ascii?Q?SmC/DXMiZi1IwBBI97/JxrXvohPqDK5XsT3APmI6iFSwQAIA7nh5F/ce+SCX?=
 =?us-ascii?Q?T/cT9LQBCx7+T3yXLFKuJP/BzZv/S5QzJYtOun2JK7NazQTM9UGVtTj27YZi?=
 =?us-ascii?Q?Nn6ZTSInTfNz2M6wBmGgGJKYeg4yhkDeYmPUYmmLrLh4HmyGdf2gAgSIANHf?=
 =?us-ascii?Q?onLpGW81MzlS50g/xfkha0EJdiDCTR81Md2pbfBAtwtzatnpHGNVsw39HTuP?=
 =?us-ascii?Q?ADFQNF4ebiAKHi0g95U24C+dTAEr6/xjPXca+Jsuws3qaKb5ap2fcsbokqEY?=
 =?us-ascii?Q?RUWMcz9JRmlb+Lxe1wpREdnRhvNB7u4Dg69Mml5/WLpLr7bHLIFj2FqxDEAx?=
 =?us-ascii?Q?c1X6HbspJ7jnvgrDFVA47eLMukuidShtxA7nUQio6p3I0gli91rHhiU16nOp?=
 =?us-ascii?Q?LGxJuTp2Ll+a3wxX3oTU7yHBdHofJZAJGwvhF1fPQ//pUJx7xYM1goE5bjT+?=
 =?us-ascii?Q?EvxNP4YRWbXdjNkMys7hspE7QP0aB1qB9sWsOmVkZgMhJOTXmN0kBMnep3cD?=
 =?us-ascii?Q?70w49yUp9DEW8VcO+WIj2Gta7AO2FGhA0cd2Ogjl0INDY7QtRt6z3xBBeUEN?=
 =?us-ascii?Q?gKAihw/98Xcld/LavjD7tCD4/DWCFFYWyxzSpovtdOQ35MfzAYP8/MrkxUzF?=
 =?us-ascii?Q?2t5hpzqkqr10M1vo5pe/Yx24JBAlKqrPWOh8rWGIAxUQG0y6Qh9BuYcVuiAT?=
 =?us-ascii?Q?ZrL7UpYJdSJtW/zS4F2UG2Hk77ti0cYW1XRqlun8SZZzgUYZ00HdQ8kdWNXb?=
 =?us-ascii?Q?s8uQUhUGyZA5Y0RHKQxXs85NTNAnNFO73nl0WJ8prgVUFZTbk4Ngi+WA21or?=
 =?us-ascii?Q?r3TH6sf5SJd95oXEAwpTZKQbpcnuRNmXB5YqrEpry51mqyGi4wYFUMu/MLBr?=
 =?us-ascii?Q?AfDifUp4k0hnfommv1lnZxwQdTwUXYPsL5cL6B7BNoLs1gWU32M5/LfhCZjN?=
 =?us-ascii?Q?sQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5194a13f-93b9-4375-724b-08dd1391e3f3
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2640.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Dec 2024 11:59:07.4247 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Z808iPHSdUn+EqPnp4X9swLDEgEPQq1zQc81ZK9EIqhPwsp8wVZgR+xAO/Kqx1qGu38J5HU1LrKNCf+mqrNIsg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8389
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

When the intel_context structure contains NULL,
it raises a NULL pointer dereference error in drm_info().
Fixes: e8a3319c31a1 ("drm/i915: Allow error capture without a request")
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12309
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: <stable@vger.kernel.org> # v6.3+
Signed-off-by: Eugene Kobyak <eugene.kobyak@intel.com>
---
v2:
  - return drm_info to separate condition
v3:
  - create separate condition which generate string if intel_context exist
v4:
  - rollback and add check intel_context in log condition
v5:
  - create separate string with guc_id if intel_context exist
 drivers/gpu/drm/i915/i915_gpu_error.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 135ded17334e..4ca6b9872a48 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1643,9 +1643,12 @@ capture_engine(struct intel_engine_cs *engine,
 		return NULL;
 
 	intel_engine_get_hung_entity(engine, &ce, &rq);
-	if (rq && !i915_request_started(rq))
-		drm_info(&engine->gt->i915->drm, "Got hung context on %s with active request %lld:%lld [0x%04X] not yet started\n",
-			 engine->name, rq->fence.context, rq->fence.seqno, ce->guc_id.id);
+	if (rq && !i915_request_started(rq)) {
+	        char guc_id[11];
+		ce ? snprintf(guc_id, sizeof(guc_id), " [0x%04x] ", ce->guc_id.id) : snprintf(guc_id, sizeof(guc_id), " ");
+	        drm_info(&engine->gt->i915->drm, "Got hung context on %s with active request %lld:%lld%snot yet started\n",
+	                 engine->name, rq->fence.context, rq->fence.seqno, guc_id);
+	}
 
 	if (rq) {
 		capture = intel_engine_coredump_add_request(ee, rq, ATOMIC_MAYFAIL);
-- 
2.34.1

