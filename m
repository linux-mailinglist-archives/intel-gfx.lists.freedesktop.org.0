Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EFF0A750CE
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Mar 2025 20:32:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC4BF10EAB8;
	Fri, 28 Mar 2025 19:32:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WEX2ip49";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E55A10EAB8
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Mar 2025 19:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743190348; x=1774726348;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=fKyNy4BggXzhA/1Gj3UroSX6Fv37mmhu6DlFC8tmfrs=;
 b=WEX2ip49XcaqWW5k37fx+Ivv0Sv3zZ1Ctofgq0eTbC8osRtR23XXq4R2
 mUElnd6FmcmBWybfMUx80nTIBRMr0pcpDE9y74rZR8Idi8X3FIKo0IrZN
 SP3FEXtYTUuSWtiNIZNELr+jZxJHqvnm0LFzMJ2sMP3uBdQOjJtdjZZkC
 6wdMyABIWGYlKNxxEraCuaObi84Nl78LglEz2Fh3G5PJ31dgdohX1bCh+
 Q6JYzcNgTjoLJKzcI4W/wntgDSpm5O2tW4/mZFIxcS06BXYv77578NdKC
 HpqaAj6gib0e9LfJPQHJ4uqBGEkr83FKVX7YWoV7yac3n+7fUtMn5+hfr w==;
X-CSE-ConnectionGUID: HLPpWRfBTmKIxZ4XjAOovQ==
X-CSE-MsgGUID: tNh8Ks4zTACHj2a+oGZYxw==
X-IronPort-AV: E=McAfee;i="6700,10204,11387"; a="43721834"
X-IronPort-AV: E=Sophos;i="6.14,284,1736841600"; d="scan'208";a="43721834"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2025 12:32:28 -0700
X-CSE-ConnectionGUID: mZkgVaJBQMW/W8OtChDBuQ==
X-CSE-MsgGUID: 9yXR7yUSRnSd4ju/Zh8EWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,284,1736841600"; d="scan'208";a="125758910"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2025 12:32:28 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 28 Mar 2025 12:32:27 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 28 Mar 2025 12:32:27 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 28 Mar 2025 12:32:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xOYNhn5O0NcRP7ka5xvbH9WAbudehVLqgZvYqYYuYzqsbMvag5Z7ft6UsUVxhioXJhwl1xa8VquI2Q/GoVlv6+MEY4lkXII6cSnuecp1lzuecf4Z6SzOynroyYqCfMVNbXlz7Lys1EEzwgnQYnAS2f3yVgwTMzGrEN5P4d29KSH0w1CpByG2pQMawL/BLA4G/7ZnSE4hQ6CPNIWq27qeZfl2tQ0JXmrxDhHvhMC2Qx4jhuQxoVIvpfXJWutq3lcfLjGLeM5NXr+nTOFiORQN3yeph6bshycmBWSElk66sCTSdcPlJGawqqNqDaw3wg105R9sGDk7SJZbvQ1YdbYZlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IgM4kdTUHDP7RtKpbbbh1fFfNwhRdI8hGXLUY5aalzk=;
 b=QBcFZngYj++QJdSeMMms4aBhsL8IIZiq7W9RI6kAa3wdtrWlgwGZ7IZdEtqBqRtLvIlDW8+bwlhoxUotozmqY7p6MDAvumFJ70kDkGHdamoSSfNKhmn72UNMPU44sQn+E0zlm5Oa063VnOF4Hcb2oWCQ5P0GQn8mNLL1HxodqrqSeg79LpRVYovivDtFlNKyA6yQ4BszvmfHqsS5iRC4JEbE9g2aVM0BgATWLPocHt9/DSAyzu6ggX9gFWyh3IQf044qgu6Pq7sNKYblc6e7OFmy+agfzj+v2GSSa+AgsnFlRiLUtjeK+JLHeEbcQ9FK32bIQHMsLrG7FXJGoGiRSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by PH0PR11MB4774.namprd11.prod.outlook.com (2603:10b6:510:40::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Fri, 28 Mar
 2025 19:32:10 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%4]) with mapi id 15.20.8534.043; Fri, 28 Mar 2025
 19:32:10 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Stephen Rothwell
 <sfr@canb.auug.org.au>, Imre Deak <imre.deak@intel.com>
Subject: [PATCH] drm/i915/display: Fix htmldocs build
Date: Fri, 28 Mar 2025 15:32:02 -0400
Message-ID: <20250328193202.40884-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.49.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR03CA0301.namprd03.prod.outlook.com
 (2603:10b6:303:dd::6) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|PH0PR11MB4774:EE_
X-MS-Office365-Filtering-Correlation-Id: 1062e640-3b6c-4713-b558-08dd6e2f3b96
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ytK/vwG6sJl5JVvWopL26DV6TgTgqgw4AcsZ4A5oVI+VMNVNoPHc9wF5A8/b?=
 =?us-ascii?Q?olUaiSDfHJORWQeLkGh2ZI+R4U1EnNU06nNGIb1FRWGtnD4p21hwXZT0VNbe?=
 =?us-ascii?Q?B4U8OCpRjVxB8GOu1DhbCxgbum2zt7YiyNet507DUjGKATEirbvUiB3qtDvZ?=
 =?us-ascii?Q?NPPZ1pBdk8tvHKTkj2A5znIulKtrPUQhfI+zlNHsTFWC3m+MJ3Ymy3VH0r0x?=
 =?us-ascii?Q?ytGLLUT0As7Jy1Yx95RVJzMdZv2GXM/iucQSUPC786R+79iAHrhLejIsgzBz?=
 =?us-ascii?Q?h0anFAskQyvERBjfm9HHJhznd9KfQ0VoovaYtJovbUeRxdYSTx6i/OVyeSnY?=
 =?us-ascii?Q?Ps7RFwgZH1SaHPqqHXUqqxWAmOnGmxYhbj0V7Fa0I9G0/A7qHp4AXmAVfGaH?=
 =?us-ascii?Q?B+kB/fx14W6ECnRIDyZK2REbbhLpGFFc/Ib0zgVh6DISKsmrWY/tbKTC7kyC?=
 =?us-ascii?Q?QLJWoTKaedhaVYO9Bz2Fb29jXBTHizvbMgTWwlo8+93jJjESBS/qC7S0tbF2?=
 =?us-ascii?Q?p2aZCvtQylBT0gkMYjlRBNj/Q/l16sTfAHGLG4FfurroPnSHtDaKGOo6ldRU?=
 =?us-ascii?Q?WO9FGA9HgbC0smI1AoGSTmXQQayDP/TdvM2oNTNBWI1T6wCWv/T9JvdWrFB7?=
 =?us-ascii?Q?GxJPS3LsI4q0XbD5Vr3SUHwcDUsfCUxBJc9nMDG5pfCEh/4L5je9f8YALd1h?=
 =?us-ascii?Q?yUUg1z9zIZYviEGLhhGA5zCq2QkdVXIn5pDerFTk4Zd8oXN9IfOhKP3kturL?=
 =?us-ascii?Q?DlL31fONGY3JyHDyTj5dVvQyg27ev97UzJTP4KYCha/MmSHb+wJidVcAGxCB?=
 =?us-ascii?Q?QKk2iu3N90OYlT7C7u22j62Hcs4tv+np9NZeo1fxUuz/2rUA3bHJHf83Uodf?=
 =?us-ascii?Q?k9P+bYCppdICW/yAjW+JXZsglPM+OQ8iudrTBhxvfT+4TaNrwEl0GcxccvQ9?=
 =?us-ascii?Q?QIKAtoWiIQ9BwXuSrvawc9d36k1cTbnvn/GOswErVMyKKNjGMj3PEAKjmSRI?=
 =?us-ascii?Q?BpRB+uIC7buk7s0o+vGnxEkdxAdbnHavZksNDfhj+VWldRISukkh+2TYs4xL?=
 =?us-ascii?Q?OcyqUVx1t8efHfzR9auemVi0RTRBCiAjnXE0MUSozWFm5mrW3A6Zd0JRxSlf?=
 =?us-ascii?Q?J/F+c/fLY9QDEAFvWoKB91USMKy91txphoPf7DtzH/VWyi2+ntncD3X9mG0l?=
 =?us-ascii?Q?dxTsf5+AbMMM0m2yB42iAIMvZUu3UBDFL3fvSURjxp4UKZMJYuhvvB/LaTDf?=
 =?us-ascii?Q?tNe7QBVZe0etk3Jb4clq+FnO0Jl4LZwyxBtZBykhTBWVPMVXXnE9OouBkTT7?=
 =?us-ascii?Q?mULbkOoxn7rFgq+k8EWUB93X1ZsP8f902/+FYZvYOEBauSIVYH0CZqoSmuTe?=
 =?us-ascii?Q?AzA6XTYit6wtQ6qWGVO0rBI/MmFUySxY5oTj9tclkQ9EFMF6Gw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?57rKUUVS4FaelGCygKDv004v8um/gxvOfK4R/uLM6OOTiTjU9KSIQMjmUNdT?=
 =?us-ascii?Q?xEa1cJBxHNacKreXpbAn8Jmyw+O88Nrkvu8U/YXvicfO5Jque+5CZYZ34TxA?=
 =?us-ascii?Q?+watEQ2PFI9rgJiGGgz2VY90mP7U5/iOhTMb+aMwgztCX5p/o+gcRFUS0T2x?=
 =?us-ascii?Q?hWyscXfndmxmVp2zVgS1Qs0jmpdQWltysHlCKhI3mkJk47V7kRtPpfh+CiEc?=
 =?us-ascii?Q?o/xAnuhHT8cfzEycK1wP2BNandL2U+VAW01c+4YIZd/V2Btgh1ccGntAzkgm?=
 =?us-ascii?Q?AT/lvOtfM8YF0aRist86dTJ8VErSpBDtGh5eNKJ1DUq4IPyPP9lt0JDqhYy5?=
 =?us-ascii?Q?7cFimGBqcWFypAqt747nx9vtndsoxX4r/kprBptfgmQtYKgSaAoypvcQz82A?=
 =?us-ascii?Q?EhxqayK9rTbIc9LON9zV4guK5vGAnN51pIfQC0iQJurg5VuCwwPNmFL1kr78?=
 =?us-ascii?Q?eenm2jSoQBPwpOUQ2t1Yj5ZbsaRcj1IXzZNwgTTs60t7GHnuZF0EM3/1h0IU?=
 =?us-ascii?Q?uO45jQOWzo7+r+dnLCFAM3hnBYJYc96YfW2qa0sikk9Jy2rVFg0k2eCzoWzI?=
 =?us-ascii?Q?5QnqICBrObJWEfM3ijO49kU9GfOSs7og43MbY+unt0VaE5nk1dcDmjbvrTk4?=
 =?us-ascii?Q?yeQWWiHrvf08U1UUT3eh54TGW3wmZDQO8JmTLK3dMrIIa0usKEGObmGfxdav?=
 =?us-ascii?Q?7XrpHiEbe1mH7KFXysVaXB7YHhPRc23PZgm/n7+DM0Q+s44eR2MU5CRMm2TF?=
 =?us-ascii?Q?yaXvGAzyy4sD8rE6WPePtBBbSOotbClGTy1i+prfDysGmO8BhPgnCj3JJsFW?=
 =?us-ascii?Q?hv1GduQONeLuo9IpjZZ+HbDoEzFtbywY0akW5OqPRRds9Jt/KtgWVPq6qsgP?=
 =?us-ascii?Q?OoMjSj12Co9Y7uIwow8rXZRDwO8Wx630usc+eB0OGuAIDV3kGWzrQ45MtD+k?=
 =?us-ascii?Q?ggW/oFlyw5Btl1Hk7vOGAVLOAlJl+UD5sDcvaEQiZs+p6NjcMmNbi3KqNZaJ?=
 =?us-ascii?Q?OyWFi4hCqtEjLuQWjPFvUgZXw6fkW5chXmMRtu8u4bdl/1wINh0vW6Rg+N+k?=
 =?us-ascii?Q?hiwA2om8QjdhKF2lcNzXa6aAN9HDQeZAgYt6r58xnibufnE9eLiLbQYiRNYQ?=
 =?us-ascii?Q?Zc9BgXof8o9ekbdS99xtxIGx1drXBhNzQQ8/YPe7oV7qeAMeqBcdSSWIzklI?=
 =?us-ascii?Q?SE/7ig1eUX+TQF7+Od9cnhw5zMtjszyQfRQ5DeyFPVgdHFuADCLJN61qV7Uv?=
 =?us-ascii?Q?maEWofx0i1CrcDKBmzMVkzG1OoOvdsUvh7RkSu4pNt0+LPiidItL1wanQ8mj?=
 =?us-ascii?Q?iihRuH1eTqAwfQp6lw1KM1QuxrHcVhoVjMEFuY4uwWELytejz7gChXPmR8MN?=
 =?us-ascii?Q?EeXISfBd6BoA32nN3QTCvf+6D9dJNfAXBDIjkk+VOsrpOZYKm6ZKWJyhVsLx?=
 =?us-ascii?Q?cB7F9RFlwQpQCoSYoajOhOoyfqtfiILrxNOj5puAHnHo6WqLq+ufKQWYi5Tz?=
 =?us-ascii?Q?Xjk1E0osu2vf2pxeef/5JKc8IdGJjpT1L8iRZ3ZnNeC+AqE/nfxFvBz0KV2J?=
 =?us-ascii?Q?l5UDXnSRRIfW8BQ+tA/U71Ninggy72ex4AKkYUMv1bjOh5TgSGL0LHksn+fl?=
 =?us-ascii?Q?dQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1062e640-3b6c-4713-b558-08dd6e2f3b96
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2025 19:32:10.0419 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bGrERFX8IqK65T/3Pj0AB+ounAfTB9PutJJJzxFxPB4yTqDBn0kZ28SpK2A8p7gycjuxXgkvMJ/C3dmKUG42Mw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4774
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

Fixes a wrong documentation block indentation:

Documentation/gpu/i915:141: ./drivers/gpu/drm/i915/display/intel_hotplug.c:1080: ERROR: Unexpected indentation.
Documentation/gpu/i915:141: ./drivers/gpu/drm/i915/display/intel_hotplug.c:1082: WARNING: Block quote ends without a blank line; unexpected unindent.

v2: Use an empty line instead of changing block indentation (Imre)

Fixes: 0d77a3e0ea90 ("drm/i915/hpd: Add support for blocking the IRQ handling on an HPD pin")
Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
Closes: https://lore.kernel.org/intel-gfx/20250312232506.47451f83@canb.auug.org.au/
Cc: Imre Deak <imre.deak@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
Link: https://lore.kernel.org/r/20250328180829.25892-1-rodrigo.vivi@intel.com
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hotplug.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index dce9cde03d70..6885e5a09079 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -1075,6 +1075,7 @@ static bool unblock_hpd_pin(struct intel_display *display, enum hpd_pin pin)
  * Blocks the handling of HPD IRQs on the HPD pin of @encoder.
  *
  * On return:
+ *
  * - It's guaranteed that the blocked encoders' HPD pulse handler
  *   (via intel_digital_port::hpd_pulse()) is not running.
  * - The hotplug event handling (via intel_encoder::hotplug()) of an
-- 
2.49.0

