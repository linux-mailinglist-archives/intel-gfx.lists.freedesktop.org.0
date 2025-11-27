Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EDB4C8FC69
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:51:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEFC910E878;
	Thu, 27 Nov 2025 17:51:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G/MXpxfm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBD8110E867;
 Thu, 27 Nov 2025 17:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265878; x=1795801878;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=rKSVedUzLzkzQ2p2onAY8irb1wRCdkSUAEExygu4Hw8=;
 b=G/MXpxfm9n4HPu5HCDk05LSmViDuBb+xLLhkhhxjbIPdl78PItfeTgXA
 xn6Q02V3IUnk3wxXRVJrzw1xJYdcwmcBdfyN/5Oria4swi83P3GdYsHV8
 RTLQuT7dYOuos8UikA4i97IAq96K6ViMjG/3PPdE/5lCb/5qSdoet/Pwi
 XrZN/bwbhoZ0YO/H0/o7VIGNx4aMkDt06HsPfI6LDgu6td8Twi3s6gHyQ
 c1HPCA1qH1/aPbx/34eoJezf8tlu4IJgpf7SEj6rNzkPvbADJeLrV7fJv
 F9/BAmN+S8BmWtn/9un+Zz2zz4tJxwsakGDZ19MzzVO2YTqMzrnhBk0iV g==;
X-CSE-ConnectionGUID: i/0CkV/CRbuQrS1EWfhjWw==
X-CSE-MsgGUID: 9tUHp/KhQNK6ThRK4RaTpg==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="77002959"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="77002959"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:18 -0800
X-CSE-ConnectionGUID: oY2YhAs+RgeuRL+TOw53Ug==
X-CSE-MsgGUID: mmlEMHaRR/yIPn48KWFB9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="197453598"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:18 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:16 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:51:16 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.37) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UE19xotojZ0z+F+8rDwkfQ/uqFnCTEPw9ntb7h8CA/cHCAN85FtGpXPj0F5tOg+qZ6/veqf+ys+pufDiJcl3lYXMN3UrBMvuJMfUs5fufhSfgPNZVgt0UMhEf1Hg7SPbdutGv7iPU0sH1pRExOqur7s+f0xzO9diiGFGU17oty3eITqu8eqCoNajS6tAZjzxQkXWHJR6GFe6QXUSPOze87qLpwVJzRsVrQr83W46DxZ7z4u1AySlU1iUU7yc3MPPLEizvTjlU/NWmmGzG21gdMkqTHUKxm08IPjt6ibMnSTcRRmyJ0Ro2eNlaSCNAHk53irv4p3Bbn1PqzC4/B1+zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PuV56SDL7rAD+sE9Gs4Es6pLlnXEBO8aQ7QEHAGcuag=;
 b=yw50LrZeJJy2jDfxkPVZJab6J0AysSUGVVU+6ZwE0k15MAyQyhnj/M5f2TK4ZyJbQCHEnmxzKy2seHOqzkFuqWv/u/5TkK3DXC+/vKN55ShsG8TtqglZYtPN3ZxIcfc49a/owXTsUbSwoFh3b7cizLtc33hb9mvFhz+XHhmf74+1X6d/IjMZw1BgUX+QOKgEWK7sBlTSmitqBx6BjcchczYDb6EVnQpq7NeOpvNOIXZqySoaGFiQeGqMj2mCjeJ4HN+5BBQYxVs8q4lVHHLkDDlCXMd8VWhAfQUEMuha6eBB+aM5HDvgkbi+RiKDvIMtjayLDaVeadfHzSENXbMXGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB7842.namprd11.prod.outlook.com (2603:10b6:610:128::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.12; Thu, 27 Nov
 2025 17:51:12 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:51:12 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 18/50] drm/i915/dp: Fail state computation for invalid max
 sink compressed BPP value
Date: Thu, 27 Nov 2025 19:49:51 +0200
Message-ID: <20251127175023.1522538-19-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251127175023.1522538-1-imre.deak@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P265CA0255.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:37c::20) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CH3PR11MB7842:EE_
X-MS-Office365-Filtering-Correlation-Id: ab753682-ac0c-4e6f-5292-08de2ddd8dcd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?NRTAwyFnpPc4CaW/gloCEzwxEoBN8aCG6xFS69gBAk3aDzy4W2txLj6GbAs0?=
 =?us-ascii?Q?GGztypQMVnAIPj7by9JZywdQjUOUfzbd0zvcbABk6H35vvSVdBdYKZCSHqhz?=
 =?us-ascii?Q?2sbZ/4AaZXe24Z11tpKxVW46tCCyyaY0Ixc4TR8fqFU0zi3kpe/F8YBkYjmQ?=
 =?us-ascii?Q?evyUTzvYRwUupVAoWzWcYc5GkN2SVT7UIKGJ2zwYFbaJgQ0PVjXx2D27Y4GY?=
 =?us-ascii?Q?cBrmrRugdv3BxzjU5jXwu7IOqCJyWz9XFeGL+wrzvEoaXY0x7jv2F2YsE7D2?=
 =?us-ascii?Q?xcHwCO0ZreDobOu4/gM2IWYurNfp7fFEIsZlCjdLYCPShryRA+6LbhJPvayF?=
 =?us-ascii?Q?aN1onXi3ORnK9wj438vE6xzoWw2iv2oNi6neQC+JI0ZV6Qewdl8sdLLP1cPl?=
 =?us-ascii?Q?BoshCphDw6uP8sV2A+oHeMVL4eNakK0Uuu4c4168Jrpt6YmWyQTOzR9FSldA?=
 =?us-ascii?Q?HukR4QgtAIECDmCYXVZg6P6crMafhlc3rZ/ce3r/MOA/R1HpBSbnV3dIeqZo?=
 =?us-ascii?Q?dB8lb8E4jCm4vybx0HetD3X/wJbIZhQdVMrB4Ikjjo0amJnDYzYrrne8+IeJ?=
 =?us-ascii?Q?kr3K48YF3iBcEDYkRXrNpPECnLKHvHYHQINgpvloVAXaYtr5l7bLszvZJCl6?=
 =?us-ascii?Q?UmLMpA30kTrvJ/XjDQ+5HE2FZgQjMrVf1niJeltBfmWkMi+YnmjfD/wr0/RX?=
 =?us-ascii?Q?wBdaZX2PkTydlMe4nqnQuHaYIsZOG4LVNK41evfYCWwSpJsf3PO50aC2QOX0?=
 =?us-ascii?Q?SOdI3NzEDcDKvZALlmBFiv+W8T3ULzI8JDGB/YBwrV0h5bCs4XIph27qHUBQ?=
 =?us-ascii?Q?6tMJjVUpcAaQ9/cQiIGsWcjixWWx2zpXoPdFM4AUv9QfNxhZ+lYJfueXo0yj?=
 =?us-ascii?Q?nrTpEqITxJdYuLdRcRI/UgHW3P5X1A9cZkY5p7PqfUDqvyFqspxgaDqTpCEw?=
 =?us-ascii?Q?nAVo9AziwN937ZjWvoqJvU6BaQzTIsAENEnmv+9lO07gs34GzoCigreAKHhu?=
 =?us-ascii?Q?H3ERZdwVHv/3KsXmrPUShMnUoybmAw2jmajJnBkOukilwTWaz/vu/uuJ9EW7?=
 =?us-ascii?Q?61yxOoUjXUoguv56C1Bp6QVbWUb1HTsB8XGag0BvmxY3mm+Cj261iBXcf1hn?=
 =?us-ascii?Q?THG2bFAuN1bKuZxCKvctVLFhluDKrs73ufGT3pfGvG2LWe+NkCuwJp8OXZtu?=
 =?us-ascii?Q?VmgpmLbM393WwtsCHbFrA1DkCW37AhQmikwcZSDncVw1h0knsLtS9f+zCnWy?=
 =?us-ascii?Q?OHJ9vgHbbJvmHlVURsZaeZebU8UeN5ULWBLprjpUH05lPdC8ZiBj3He+2R1r?=
 =?us-ascii?Q?NSpvXeT51Cf9sjLNth0ubxPbAyOPBnwFlxzwLRipSCgdw0XKRc5e+w2TQfvR?=
 =?us-ascii?Q?ujYwtRNFNTiDBn+4F9STSrF7upGxrNfSG6g+FuUZ6uFJDxsfk/AQ3R8qSfq4?=
 =?us-ascii?Q?8VQs8S+N0iTF2kP96RXj6sDPNbydCiAH?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GmK1IB6cDOWcdTICu4qN55ak8Ii6zIwhUNbgbt7o9VXT1dhBElBFIPYo3Fb+?=
 =?us-ascii?Q?sMEg+TjOBNlvHCB5bnDqmXiAT5q5W1we7PPyZSfmvNs0QXt9oYofrGWVmiDr?=
 =?us-ascii?Q?1Tglzmmsc4JoX1VD2PyecrzmBdOkC44SiusHCIlpPggQnnvUbpH83R6LDZCe?=
 =?us-ascii?Q?Xex82f8uKK/vJFEWgy0/wlQiwPRBew9qnUhjYHNPrA5Ri4z5gs7Gz/BymxR4?=
 =?us-ascii?Q?Mwb1mxVpFqAWpZHo1uSNp5wT0EuSfTZ/Wpqp596XjR29vddKO09cAhGtyMKR?=
 =?us-ascii?Q?ahdj5d2WAYAKc5b9NsPhfTueYCCoWTwIonCTyP1SOwkVyiEyxGstMDUuwgOE?=
 =?us-ascii?Q?jWccxQOeD6epPtxbF31j4MScgqPH9FLYt5l1+E5dm9GV1JXjIcjvP0pb8aUp?=
 =?us-ascii?Q?3SivMGLUl9VCXXdPrso8ZoGi87s4X1Mf6Q4vSop+O9qOlvWfV+x3EY1dYAXb?=
 =?us-ascii?Q?4C7vmqwAMxdeCVgSaT3NS1Aza/Z/dfeuOn55Qdn9fNBYFexakZHi0TyUYOqg?=
 =?us-ascii?Q?jRw0dwGBeYm1Jn8s+Sp0ooymAZUR18BS6O6/KRPuD5ZBTsxtFBVwWOIvvGyw?=
 =?us-ascii?Q?/l/Nfc1ZFYIegJcEUprEz7ONVFaUyrWeG1YdIwoIIGK5XxTmj+7EZdxxAU3T?=
 =?us-ascii?Q?5sfgJ4f/zkuJd299nyiiM+nc0mLIa3Stm/NtY4/jQnP2fwSUmJVVKP6xXkkH?=
 =?us-ascii?Q?hjL/QOXA/StE84F26eGlmh6dfeY6qRJRGD0xhGL02VPfDu0Mdj8n5ASUf/Xh?=
 =?us-ascii?Q?lxqnOkGXU6gWK7WEcqneUpa6KZLwiIRjeg1kTSklTf24R+ZQPP1pprIptBEP?=
 =?us-ascii?Q?OfdmwmlZd5j9KRSd6gUeIb4oa/MsaYpTfZ4lYMwyOSbibd76v4SGmoQ+TWtn?=
 =?us-ascii?Q?Ftiekx8CyDiAeOBp0YRcjS8yKLMjsSb/pleqjdMqGj5xyqFjkyD7rrqIGhN7?=
 =?us-ascii?Q?Vmt/jcdLrdpWkXqWfq1hQhkktvmkCU/Xj2MInW5RdpZUCgbQgPIUOhir+nB7?=
 =?us-ascii?Q?RglGVCAD2jU9zvcv8GBdC5RL0iGh0QJxHN4r9tzVqFFEIo2FY7qk4MQ4v0Pu?=
 =?us-ascii?Q?CQjDwy/oZETyK4/ZLK2YpjnM+grx0pMy/xdVJJzHBVXTKALdpNa+hzUZqxER?=
 =?us-ascii?Q?XmCW4DUw66mw63Yf4CtZwnIqGhZykKEEpxekfwLlpLkS0WTXaQwfvZFcIu42?=
 =?us-ascii?Q?7YppnhdfYTLMOjtlG4M8Axts2OzAt91QoUC5/jumEVi8LD9s1oxrtZjbGviN?=
 =?us-ascii?Q?mvbimPY+4q8eqSVjyGaPQbwLpGLtK7vpWcxtg7onXo6F4JeJreCL4gUx8/yr?=
 =?us-ascii?Q?aXfA5E2SMGCwhpyiruJrpy5ULtUrHGh0RTFdr6tqEhZWNp+vBGUgf2LYh1Qh?=
 =?us-ascii?Q?wbJgxPisV/UX3sel4Jnuj7JCphvsrwGxqYCtDLQ/24nh8vhsNOZoHiP5ERzk?=
 =?us-ascii?Q?EicoKiuHatcDfMaCPG+5+sy9q4tYH6suLjda5qYgG3PEsXE9k2w3H2YHRnOh?=
 =?us-ascii?Q?bO654vVOwvoBSCp4W72DepvrW3kiy+DdTNRvluWraiCZ6M6atP92Ye51okmO?=
 =?us-ascii?Q?ZAQ1Eq35jbhCM9z+JmxbmqiVM+rKmohTibdu15+7k6KSxzE2yZHaqISAFfXs?=
 =?us-ascii?Q?PVEdIsEfWMsHisdgGv17kA4IhG015PbajUDdAdHtkgLR?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ab753682-ac0c-4e6f-5292-08de2ddd8dcd
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:51:12.6055 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +fnwXQNMeTWZBR3EgAUnoANcZEHP8CevDkkTJgtrenNNKxeE5bPnyy/bN5E4ZNI69US2DsUWu04oB7oxx+xORw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7842
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

There is no reason to accept an invalid maximum sink compressed BPP
value (i.e. 0), fail the state computation in this case.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f97ee8265836a..db7e49c17ca8d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2631,8 +2631,7 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 		dsc_sink_max_bpp = intel_dp_dsc_sink_max_compressed_bpp(connector,
 									crtc_state,
 									limits->pipe.max_bpp / 3);
-		dsc_max_bpp = dsc_sink_max_bpp ?
-			      min(dsc_sink_max_bpp, dsc_src_max_bpp) : dsc_src_max_bpp;
+		dsc_max_bpp = min(dsc_sink_max_bpp, dsc_src_max_bpp);
 		dsc_max_bpp = min(dsc_max_bpp, joiner_max_bpp);
 
 		max_link_bpp_x16 = min(max_link_bpp_x16, fxp_q4_from_int(dsc_max_bpp));
-- 
2.49.1

