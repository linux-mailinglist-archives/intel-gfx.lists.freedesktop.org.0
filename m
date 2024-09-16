Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4184997A5DB
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2024 18:20:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70F2910E18F;
	Mon, 16 Sep 2024 16:20:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lmHrp7XY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28B3310E18F
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2024 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726503633; x=1758039633;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=EuQ9fbQRkaC9I35DLuEzrZMEFgAC9ytJ5gBeELR/gSk=;
 b=lmHrp7XYf9b8ALefHAgvppgynoAq1QvUhDmARknLHY53vgfCkfKmuul0
 xKdomrajVGqFkPZ3wqzU6GQgaTwlQwDuz0movc6UVJk/Qywo3Cf5ZYs6J
 kpqEnd/7iY6VCBf3BxrOZasTutpMjooRtvAyYCbjE6nBVxfEVrgOsN1Hk
 2k26opEUtr0v2iHizZMAcidOZ1WE+nMIla/4LHXRLTvWBGXLAv4JGUzMX
 KtT9KyS0Ft8ZNgJb51igpXCMdRg9xGXoKNKhPuiJXhW+mSxPxasErmCFE
 HMBxHlKU9zm2agRVGFli+oTc08lDDwNamvE6OkbOeOW4JXdACCA2ttPtm g==;
X-CSE-ConnectionGUID: /DAzDIwjTOmraTtxQlvYHg==
X-CSE-MsgGUID: cV+MRRrrT0q6VTfwX4Dehw==
X-IronPort-AV: E=McAfee;i="6700,10204,11197"; a="36476633"
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="36476633"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 09:19:55 -0700
X-CSE-ConnectionGUID: 9iXyEtVqTtiB3tndAxsOJQ==
X-CSE-MsgGUID: DeV/s39OQlG87HXjZh9GNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="92222188"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Sep 2024 09:19:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 16 Sep 2024 09:19:54 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 16 Sep 2024 09:19:54 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 16 Sep 2024 09:19:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fTRes/IFOxSNg15bPaTPBDxffZreKa/UxaZf3TpzGTioJGlsTgeg3Addb779VhiQw2skaOinjZcduRBJjaSO+OqAtGyuXjDJGEGguoHjllM1eObkPRjsQ0Ln7lUrAFFYzV9M3S/BO4OhOlaW2CcEMrM8dZhYPnmdaPVOAv+e5R+Oz2CXzecyH1qY7ZiEDIQR+o/0RWbE1HIeZ94g6QyBjyxZMxn6t6WEczE79ydTMbMpPaQn6+CR0Zj13d1hBW2Iti6BIrgeMImRkMEopJBZqAgupPvsiwuKWZCmetkuXvfYz9A+ek4pLAAT73yHHm8dADcwl210edIY/eKqWhDqDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IrIey/JgHQ2eedLE8mMGe2LAdlncBL+DxmeDNMo9STc=;
 b=uSV4jv8pspVhWmiIvzjvG9g4Uom255hYI/i0tHuQx2BuPww8FAG1pD6U3Pc76sVQhFt3KpBUZ37tm9BmAEOBEWSfZ1oNoNz01B4bUPA4qeNiG3VkrnU9Ked4W3iikTXXn5LkSfvVz8Ha6N+LFpgROujMaXSEADyUXWZYfwd1MExwoLAzbyUz84VRNKRp4TR/IWyFq5rKsYgZlMagaJhN3ukNjLPehFVZzYjqhib8tXLdEgS+J6NnSBEXo+2FOKE2puiW8nK2Z08BlrbpJAH/COxJ8XtBVSz/kvRBeWgKjirHdX8evV4Y5rIV4JV28Nz7+cBi6y5Tp20lwrlhyYfiGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SA2PR11MB5196.namprd11.prod.outlook.com (2603:10b6:806:119::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.22; Mon, 16 Sep
 2024 16:19:41 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Mon, 16 Sep 2024
 16:19:41 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH] drm/i915/irq: Uninstall should be called just once
Date: Mon, 16 Sep 2024 12:19:37 -0400
Message-ID: <20240916161937.537334-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR03CA0286.namprd03.prod.outlook.com
 (2603:10b6:303:b5::21) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SA2PR11MB5196:EE_
X-MS-Office365-Filtering-Correlation-Id: 327dd5c0-10ca-4d0e-7d29-08dcd66b5e74
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?9EFZmAiLRqZ0/au5D7vZF7wXDRmIaWSs/rnWFCU4Xw0fgM/aFtSkICDiLxPk?=
 =?us-ascii?Q?XmdUhMwDsXeyJfwIHZ4uVze+7LrOlSuuQPFgr5cjiV4cGba/ZCy6ofIOvaZy?=
 =?us-ascii?Q?Ar7dAtUNO09nKgQWNYaVNC7cTfIvA4Lwd018uYzCIWoxW49u/VuHd8nQMJD+?=
 =?us-ascii?Q?ilym43+MFhUiszA+z4g4yOVCvaSvqNlBQYhXJb6CSUL15VVyfaLkj9JZtd7n?=
 =?us-ascii?Q?fS14ZXlYNOLxH48i2CXy0Nk7S4gu+Uwws4F/FSu4AsfnanNb8MMl0HzKrsz6?=
 =?us-ascii?Q?ZVZQ6FbuPcRFfDzKcMohbJ1qfqNw04X9U2iyloM7sClKVynh9WmFNNS9Im2V?=
 =?us-ascii?Q?lxPmDNjfJAheDZhD+GPUijT5Um6fZH/mrAsJ6ASDxwjXDDbvQEofKLrZUt7I?=
 =?us-ascii?Q?yofX13jNjXITjCxW3IYvMA1I9aHtq6Exqey1wx9kXCjCp/aInz09sFxeDFQB?=
 =?us-ascii?Q?zNGXm3jFZaGfOj3oo95hEy7HisQmOkKTuh7Bqm8vem3PCWjI1x6SJCLey5kd?=
 =?us-ascii?Q?J5BtP6OBoeRnOoVSaZiXKmw/zIJzxN6Jb+QnyGW5aUfrBjv1scm+7EWOfl4t?=
 =?us-ascii?Q?EbKNqqUiqzBGIudpVF9lHyS/cV+sgT/RnkOG2a16rWoLoBwULaJ1mgb6nHUQ?=
 =?us-ascii?Q?A1Eu7kemMhCUBo8Y4m4RoMfU9tsceF/SDGwL4w4LA3586giH9ZbltKJLRn5y?=
 =?us-ascii?Q?AxSlr4kyGnIz8OhTQVUYvaGvUzI3JGn2WvYK5SxmIsYZ9YaHJmuY7jnvHcZ7?=
 =?us-ascii?Q?T7FNVCUjbJf+t63TnxcEFWGLbbcjlgSOS1Jx8Fewq5qG4ZKeFm9mXCRvtYnB?=
 =?us-ascii?Q?UW+/0CrrZUetBAnAfXy6t9rqpNmwLU4eC5lL5EdQA5aVnzmDuVsV7nEq63mX?=
 =?us-ascii?Q?BzciSiFiVE0OZM7pvQtTRAOL/lzj+2qZ840nY+vUvmHzvjD26s29JZIUlMu/?=
 =?us-ascii?Q?6ciQT+gJtwHw4EzhX8orF82qjwsu6nauswvN2KeYHeN8UGo2BWqN076fSmyp?=
 =?us-ascii?Q?yv5bdWUyEUkscPSYuAJFL9zRNVNvm0OsrtcZEqFfjPrXQhk67RNFjKNFDv2K?=
 =?us-ascii?Q?M2ztbdcAdtqXGUlA2TgKFKlc1pikaxeRY/b2z9wLRtDQTI0cV+qpt4cFdZPO?=
 =?us-ascii?Q?0/kOj1tqqoM5oppXG4qmiUUHc5BnPbLpmjKS4Cb9w8Wy0fh7Wx0yMuJvIxbz?=
 =?us-ascii?Q?KT2pVmxUvlh+nCsx3/Yu/7DSVeBmjY6+vU5mq1QyRTph1U3AguZjfKmWVfmE?=
 =?us-ascii?Q?BcgRxrg5IV1QF7MxZsR4DF5IU0qa3VEk3iEoo890DXodtQJlQcadHyKeQl32?=
 =?us-ascii?Q?T2NMdDGFC6hhzvSdXeLpg5gfQ3knr2bEjBD8qBEUe/EbjQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+rR2V5eV9PAmddJ6pq3Gxx04N4fldGuCj8T8IrbuajbYrUcPmytDOuzP0BEB?=
 =?us-ascii?Q?BY3p5i7m9IJ9iluNFTPb5QUNIp3SSPK4OiiUv3bww6At52BBwCtlIsQzxzmr?=
 =?us-ascii?Q?rhXWrb6fMu7X2zxu3wmYxoxh2H78qImG5+Vj13Fs3QsFNZKsmxWHFW0fUeUy?=
 =?us-ascii?Q?l3Var60VH5p7mNkaJGwbD2fVJ6fmgsQGEXUAjaJZhpwfGu9LsEeC3/dyN9tq?=
 =?us-ascii?Q?B9ACzCocsqEGpPn0t6hwGE1HDIP2tXi6DPOXfPoImtn6JIdj1qmv7ZHKmuNM?=
 =?us-ascii?Q?Gl8t+bskJDW8Da8FHiSrTQxmBVW2cvcxfAffYK9v3+esPM/PfXPFRhD7RrQB?=
 =?us-ascii?Q?ryTl4LMwpN3YM9hP25pjY2y+qcp+a+90/00ADGVqwxa1H23USUp+0zLTncAq?=
 =?us-ascii?Q?OZMyP+xX1yA+HsTKLRXFnI3vSmAZjfEDDR45I7n+vI0UwWczw08Vu9Ygt3sg?=
 =?us-ascii?Q?vzaDk+JQwRrkM3kS3pyXAkZQ6zPPxNhDoP/J6PcONIFwRj09M1gL6gPKhtgL?=
 =?us-ascii?Q?yXpXBw7+lxIMDrYaCLOnW/Rv3p1s0MU/wXiMahK+vz9SVc2vHPu9XziFj65X?=
 =?us-ascii?Q?jmilMeFhOvF1kdVvPZp+d6devHYaqeaTpRYyeSe1UzClsyJ/SobjqistfSTP?=
 =?us-ascii?Q?1DUl1SDxjG6igyoqMuO3DdikPMRomi16xozALJynRxlGTZ4zZUTQQs3fBzpB?=
 =?us-ascii?Q?vF6VfKKTbhfTpKHLcCOVNr7uhjVCqwH2dftGsq3DOXOCq3Y+vwrGtaHt0oMv?=
 =?us-ascii?Q?bL77AH9tMeHzMtuTw8pIN/PiOZjd/tkQC8LQndbOO4dqjKwVHx3umcRChpga?=
 =?us-ascii?Q?KGlUbSWUWsijmUeU/VpxYvgrY/2HSZIjzCHYxj/ZP/BBHaFnEiyNM5/o55ku?=
 =?us-ascii?Q?R++Oe+IgTGwv/TgE0G3KYtiU2IMcK+vftUmh0h6vEdUfzjAE4wu+RIWDIAqd?=
 =?us-ascii?Q?Odf01QVqFIcS6ELiZv9nYlmir7WgQVsDQ5g+KpxPi8hqU7OOXUVuLN4mB2p6?=
 =?us-ascii?Q?m2Ezyf7TE1hwA/Y/ZVpPpRcEMXz+PUXV7OkNtayK1hoYhjEgVniwC4cxCItU?=
 =?us-ascii?Q?EqmfdPw3ZMSORXHCsiJ/8Ywa/u/ZbPH2LX+vzDfxcOIjZTguqLHBsHN9duPv?=
 =?us-ascii?Q?XEX3N60nNvTjHqySeWosRknur6vjTSJY9LoaOaCr34/gKCdJVKq+4fE35y9x?=
 =?us-ascii?Q?Fal8A1CG7IoxI0RjgZh+7ySGYEjQLuxO90bRx1eDre4ZUib668Rttnw3oQ2M?=
 =?us-ascii?Q?0YT8WVIAR1979Xnm+bqGHDtYnbtPEG8Ck9NRZLzlonnrsG6TpGyB3ysKSPIS?=
 =?us-ascii?Q?Fj9Wq+95IrHoC6FPz6BoicR5vrpe2wH1XH9Ot7uPFk+zGLvypQICP86A4rbh?=
 =?us-ascii?Q?isjNjk7j6KxPXPeibrAxntSF2VCiyVy2sd3Wj+j6Bk3VXer+wERmukQH3Y7F?=
 =?us-ascii?Q?nIhq6TP7KAzYNj0ywvsEwibV+SZndgGzGgTXZfrnCoLIvYkPb5wC/CnbLdUf?=
 =?us-ascii?Q?X+Gcgu1/9IjnRAXH48yHEsBkSh8lTRb0fwh3n8KNGa5nWQ2spafRig1av44+?=
 =?us-ascii?Q?x5EIqdKbqckV6c5mRfd4pTVR8XD4ybn/OPBHe/J6tE8hOUp/4U+P/RCj7orB?=
 =?us-ascii?Q?9Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 327dd5c0-10ca-4d0e-7d29-08dcd66b5e74
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2024 16:19:41.6082 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rrYEIbevEefJQ22w0T3QaNDFwJP1VfyzdrgP2aRu23hjqqxbcF+cqWmJpB0Ck4V5sqiYtlZzKK9/f48o0XVVdg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5196
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

There shouldn't be any path where the irq uninstall is called
twice nowadays. So, remove the FIXME commend and change
the check to a WARN.

Suggested-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index d42997fdee65..f2ea7a550a26 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -1431,13 +1431,7 @@ void intel_irq_uninstall(struct drm_i915_private *dev_priv)
 {
 	int irq = to_pci_dev(dev_priv->drm.dev)->irq;
 
-	/*
-	 * FIXME we can get called twice during driver probe
-	 * error handling as well as during driver remove due to
-	 * intel_display_driver_remove() calling us out of sequence.
-	 * Would be nice if it didn't do that...
-	 */
-	if (!dev_priv->irqs_enabled)
+	if (drm_WARN_ON(&dev_priv->drm, !dev_priv->irqs_enabled))
 		return;
 
 	intel_irq_reset(dev_priv);
-- 
2.46.0

