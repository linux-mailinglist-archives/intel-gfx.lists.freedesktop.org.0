Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD6C9B1AF6F
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 09:37:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 549AD10E622;
	Tue,  5 Aug 2025 07:37:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U2EBdDtc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E4C510E61F;
 Tue,  5 Aug 2025 07:37:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754379464; x=1785915464;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=prQZxxe7jH1J00C/UOFFohX0a21DoxneMHyCMfYYQVg=;
 b=U2EBdDtcMHwwIb/0vygHgNce8voxDQigWyUPROdUPf+3D35yjBcZOWcg
 ixXwcOt3V9NBn5MjWdnreZKAjlY0OoPkSzpFP7+Or1Nv8hq2qZbBQxtTz
 7CLuPEcjt4Dl7fA4mQ1mIfWoam+SmMuMjIXy6DCxmUb17ISyksCgFRJhZ
 9Klv7bANz7jaKJhneCoqcMnz2nGcbxzQ0+W46B24xqBRpTu4zGid4qs6R
 VB9WCyDDEYwHW0Uz0CsXG3k2Mzvt9kyKleA81lvATkHxAPOUx2ZLNKSpY
 wSJyd555i/4o0aEMYy/wB5zs4DsV0oDq7Db3SBkD1DB6vNXxj9wJjkv6K w==;
X-CSE-ConnectionGUID: xiqEhZrJSZ+7AQvkFym51w==
X-CSE-MsgGUID: a/XtI7f1S1a4ynnfeU1XAg==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="79217861"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="79217861"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 00:37:43 -0700
X-CSE-ConnectionGUID: HJHGRjzRQ8uKY4YbPYx7hQ==
X-CSE-MsgGUID: +orsFKqMTyCr90PmrgRLDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="163668631"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 00:37:43 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 00:37:42 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 5 Aug 2025 00:37:42 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.62)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 00:37:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WqvzT+ChEKNk7sMNHkZCxpOim0y5zoWaKTXPaIH0r50VKvedBEHzvn/7DCOQVh3RlvrQOJXo12XRrj3MXsdju3DPaulkedZnPmUgxRJAQ3tZQr8rkHYdJxtnEC6MMQ7D5Q7ZCbOrfzoc3pv1PIcjSGnGRq7hjJa7oiJsjtsZHfdF3p+H4ovUHT/ozshq5mN3cwufeORD+hebd5KgGDqMmvPu5DEcK8g/e9m9BvJTBGeQlf2ANYTUgNdHZ/pPxzl5LQ/5IDwQmugomx19+eqxXPEC9IHN7EWEcupNicNbpvV7nTD6hgups7TBoND5Z/csqENLiPlwYWvX/wn1BoxOqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+NoxXMsh229oxUdw3E9VdgybC9u3ApMo3HzGTCbcSq4=;
 b=UYGG8GGyR10giXnalkJ3OcID1WQ/jUtTAeXlhm8gFdU1CQ5p8lylGlvUYQo+LZTXCuJiGbo8jf4VZ1Bc0zAuZvvPtsz5nw+YqeS2kK8tuf8Pwklp4Tv0yAC7O+TVcoeVxdNBfwVIHiKAEtokOG7g0GV78uIHkEn9raAIIwr6GlcB8/Qa9uoxGOqXrsJOpKrHx2O4UtPkSQY9DXwGtpDTxO28LIaQ2BTiL64whYuyJ7jRjYyttNKjVSeR9161mf976vvdv1bXexIwPlxXqL7nOwdx0uAhxbFXLrHDli8PRwvQ31VeBpJP8BD5/fR6lc03WDAw8k0qw2Tzf1oVk1oeZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB8161.namprd11.prod.outlook.com (2603:10b6:8:164::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.20; Tue, 5 Aug
 2025 07:37:39 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.9009.013; Tue, 5 Aug 2025
 07:37:39 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 18/19] drm/i915/tc: Cache the pin assignment value
Date: Tue, 5 Aug 2025 10:36:59 +0300
Message-ID: <20250805073700.642107-19-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: f45a2b37-db8b-4052-c40a-08ddd3f2f45e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?7nIh+kvS2jGiuYmxlBc5tVW4vRkAmqVaREA8iz1ZaJ9yV6so/XFTzNOWjA7J?=
 =?us-ascii?Q?IZuGQmw+vqLAHSiZm2V1U4b0gtpE4BARnB7SGBnarZDb5/toU3jdc6B79AgI?=
 =?us-ascii?Q?UMD7uQjJcvI8eZ+oG0a5wv27ZC0IUKeQ0ZfMzXMhpkbg7ZLNi3670AocHSW5?=
 =?us-ascii?Q?qUFlAj1e1MlztzoIGFO9or/qmYka/9FY64ZIwhl7YZOBZUZTa+SVNRomGfjk?=
 =?us-ascii?Q?ZEeO36pf/+cOzpVlN21FAsYuTpH8DDb9cHLq/aYbXOyzxUJpP8aBshAQA3ma?=
 =?us-ascii?Q?J8OGOZ17ijofXElQ1QymRKywcF5j9La5OoFaRxwbz83AmQLrscjCCxIFMv0x?=
 =?us-ascii?Q?BAjx++E/iQ339xvOQiZ4R4CKkq/pBOOdc+9DP/FsXlvFmCIT10BxEEQR/1+0?=
 =?us-ascii?Q?qxiAVM7DbH5z+qVhA/f4Kh+yEYHswEqlDcKUXN+1SqqToD7h11K1YkVm+cGi?=
 =?us-ascii?Q?mftqRVxBAxsr/Ixb1Xuk1SYKRXWS8LxNh/DVBQQ1JKh+axqlGpuFkvpA7YY4?=
 =?us-ascii?Q?zdLYeEcXGm4ZPA9vWHZhdnS2Ii7GKNqTojjnc/Mo/uu5AaGVkjIkVWeMnZrg?=
 =?us-ascii?Q?i0AddxTId0FjNB5NpxVZb+WaLpol73lQFS0zxHpJVpiWllEYMS4V8CX3tpti?=
 =?us-ascii?Q?vVGvBps8/p9KPcESEVyTux88lwPHADdE9ECp0rv0bgB+aBfT5cfBIXNhHTXm?=
 =?us-ascii?Q?XaWO37GE6yGygj7wWsa96PFz/KgN17NY2jDIOC84RjejM+51dsJbzxWuSjfL?=
 =?us-ascii?Q?Pb3AJstv5tzBBzWSKcsYx8KhxL1JPbMtvMC3qwSppKv7ps8cZ13ZzjlfAOxw?=
 =?us-ascii?Q?DUbHcSkg/bp+L1g6l7m1z7MHx6E5Rp8eMxlcvS24qP0oQSWDWaS8XIG/0u0m?=
 =?us-ascii?Q?xCliI0+8JwGAQL6vck09xzsl6vZedDqtUlri3cYZWxmZQrvmXop7vZ3vbHmw?=
 =?us-ascii?Q?+gsPhDiXXqAof9WpA7xBUbiHusIxJt4OJX1jPvcdg7BXeT4tOQVQpiIFVjq2?=
 =?us-ascii?Q?s003EPGoY45yICiS/KAOZ1mDEfi6wh4+gdvRsx1dFSZ5+JkZLiF3cW1D92+y?=
 =?us-ascii?Q?FNfyyos6faDNaQ5l9uoukh68lH6YFxc1h1rVWPZOAlRBw/9VWXqzM4QchFJt?=
 =?us-ascii?Q?OsDQHDZ+0dR5zKsIndqS8ADuUly3PixvBt/HNGGy6/mGRBfxM2YGNYbzCUpq?=
 =?us-ascii?Q?mNWv4kia4hfMfx131PosCRUd0aSgWeXAM8BJNhBTxG3Ve65slWkLOh3GZ6ui?=
 =?us-ascii?Q?Ad53OJMe7IymWWtjAykEL96uP8UUt4Ha7DSl6hbXua1zQqF1UHQwuAPOnUWP?=
 =?us-ascii?Q?0aefWxN0q63tbkbfMink5W05ZldDyp3TsRKHyGLghuflZN4cl0E/VY6EsRfF?=
 =?us-ascii?Q?mq4l8WEujvTeG4kDzpnahVeWKiINwyfx9g6y02Knt0sHU7HfsWSILBwJ/Rqh?=
 =?us-ascii?Q?xpeTpUqo5tw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?CgeBELDo3N2cZD+fgyeIwl8S73E/1HZbYlequcQE3BEojZklu9Sq+3ubcfPG?=
 =?us-ascii?Q?6kxW5lUCU8GcBviyl76QjxulN0a4QAWpf+G1lenb3PAZRHTyfozi3hde26NT?=
 =?us-ascii?Q?fclhNJmFt7b1GWUYPhzpv6n7Dbho1OpP8nhgzQP43ghSM2THYDpLU5LutJ/w?=
 =?us-ascii?Q?8oszJ+jZLAeG1oty+bpDa/W1q9DES9KcUbh7kRBg78W24jEIzoYDHtYUZqcV?=
 =?us-ascii?Q?g1jMEKek40Eb6iIqsjJeuLssv7ZSNUMhRCOv0KljreWLmrX1BSpYZinXSwqP?=
 =?us-ascii?Q?JrM++y9nEERQVvZ8KjtKTLBVhgZCERLOkpy2EQaHUzo4IK6TbkxEDgV/mmKM?=
 =?us-ascii?Q?G6BSavv7vRO4B9YhNqSSisnzcCbWVTC92iM3u+loJyirQhQi1GCDHg6Dpg8p?=
 =?us-ascii?Q?IEhBfNcs9OQWj0xjtLl/BKKmbVcMIHx1/OlvB3hOlOlnwknJnGiflslJA6Jd?=
 =?us-ascii?Q?SWFMNSXz8+qLG63qLNmTQ5DAZpdsFFfdqUNbvWh1khTTReMqnSe8rNcTFkjl?=
 =?us-ascii?Q?BtpCicDB+GkP3cGP6UaR3DD2AGok+ZoLnjezXbo4PZu7yC81hEuD6GQOdH/E?=
 =?us-ascii?Q?vpiqvHyBv3vAnXwl8ciXI13F8PLYzedxmvjqAEodYRjrJU3wVWLQ1HAS80T4?=
 =?us-ascii?Q?lpXAjKpJCk7N5GhMNH0Oq8ZsE3ipZ8E8Ih8sg/D7T2KhAc0/X46CJRViBiyE?=
 =?us-ascii?Q?tIfHJbHLImQ5SN1iJIJgmIGJg+3J65CuCRl3WxVnuLdcyE2/QXo8Htee80nG?=
 =?us-ascii?Q?K1aEwtgUNrmwIrqQWZYzykmtp4WSE+HNKI9NRUGCQ/00vsyNqi9rM147ouSG?=
 =?us-ascii?Q?Ael7asWgIf+IhNAXLlr6UD+3SrvRZZSJsDnnqHRso0CuuImyzxDe8eI2d1/7?=
 =?us-ascii?Q?MpTYDB1ac0P5c/iNJWaAOfb8UwI+li+YkZa7dDrNF4jDOX5WPPb/pC91nlLO?=
 =?us-ascii?Q?VlB0qlPqFRoRTxH5oU9htE1ZqiZUp7T7sWx39xPQfkp/SqhL1sZYDmGC75zA?=
 =?us-ascii?Q?bInptg3gw0mhppEtPlq4Jxd3kxf7Z1EYDl3EvkaSVOdygPNL2Ljz7G9Tx6qb?=
 =?us-ascii?Q?F6pww7+mx0fNiEai+5MkJ/ALKEoIegrNdQNdZf3GEWEahIIkAumJjXbOaSTk?=
 =?us-ascii?Q?IT7y/Ev3h+rFRiUyigUJKSm+mnuQYrDfwOu0U7jMCbmOdsAUoctV68j7MNMG?=
 =?us-ascii?Q?gmBuUl8O5zR4sUe9IB75hM3SDqAJ0iFrJf3QH1NyE73TxSMvuleowuc0MMHt?=
 =?us-ascii?Q?3MVD8Gpt+dwEguFGemcD6dhQvG7am0jnx3s/3g+kE84Ri6XfZpiu55wRtyZB?=
 =?us-ascii?Q?CetlfVj7dBKshEJPURclWRWKaFGG7Mb5jceTomcqwTRpMUkT0lKTQQGtOOrF?=
 =?us-ascii?Q?Eb3VRiaz8xMPAh3yq9YgOfKDsCOKz8J3Ocg4pxQl2p1dabVKeQLWf4fVxIZ6?=
 =?us-ascii?Q?fiY5nKuKWbJGBuHpzSNXp4L20EklON1UQ5uPPBHY22sFIPNV3T03/KPch3i9?=
 =?us-ascii?Q?XkRlkzaM1gKbWl//WenBfF5OPLFd/JZ9HPuTS4rGpbmu/QY9gNtafnwa2bpW?=
 =?us-ascii?Q?zEgTm/POYoXaCYDnSXw5kx2sqMBuefQa0gfUrW+S4qihFBr2obaroB1VtN1F?=
 =?us-ascii?Q?oZKgl9zvdSX+2ieKAmaO3VFrThUInQKyVb9ytLbfO1NE?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f45a2b37-db8b-4052-c40a-08ddd3f2f45e
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2025 07:37:39.5762 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZToA+Ldu96wCu+6J97pZePDR1iXZcaRZcDw8qBjl7Wwswapct9oBG3s+HeczpXKD8KoUHlR5pThV14H75dyf0A==
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

Cache the pin assignment value. This is more consistent with the way the
max lane count value is tracked and a bit more efficient than reading
out the same value from HW each time it's queried.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index d874217529951..f6bc253bec559 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -61,6 +61,7 @@ struct intel_tc_port {
 	enum tc_port_mode mode;
 	enum tc_port_mode init_mode;
 	enum phy_fia phy_fia;
+	enum intel_tc_pin_assignment pin_assignment;
 	u8 phy_fia_idx;
 	u8 max_lane_count;
 };
@@ -382,6 +383,7 @@ static int get_max_lane_count(struct intel_tc_port *tc)
 
 static void read_pin_configuration(struct intel_tc_port *tc)
 {
+	tc->pin_assignment = get_pin_assignment(tc);
 	tc->max_lane_count = get_max_lane_count(tc);
 }
 
@@ -403,7 +405,7 @@ intel_tc_port_get_pin_assignment(struct intel_digital_port *dig_port)
 	if (!intel_encoder_is_tc(&dig_port->base))
 		return INTEL_TC_PIN_ASSIGNMENT_NONE;
 
-	return get_pin_assignment(tc);
+	return tc->pin_assignment;
 }
 
 void intel_tc_port_set_fia_lane_count(struct intel_digital_port *dig_port,
-- 
2.49.1

