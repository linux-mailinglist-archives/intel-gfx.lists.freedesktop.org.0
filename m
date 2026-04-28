Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QKoHNsqt8GnBXAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD4848527E
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0BBC10EBB4;
	Tue, 28 Apr 2026 12:53:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="av874ivM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 531BC10EBB2;
 Tue, 28 Apr 2026 12:53:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380807; x=1808916807;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=GzPFWWbNQUPMa9bODHNbPO50zNOXnnXXJUDQjD2xYWg=;
 b=av874ivMDmn2z3/FzuIFwR9pwbx1dqNL4E+I7AAGhjPhj520JzZIvHOU
 CCgUbaAcA7xYmKymXY4kQptjqPUkKgD3mXAD+hRXh+MyQ6kNj03huWOpz
 0T68lW1k/gdq0Tqaig8cifgjMD1AmrbM6St5ddTKkCgACV4ASBTJFFalE
 sjNQ0t4a3FPD/UlKKMCsMLSAVM6AFZIWvVc6dQVofY4Ql/EPyo9wfZIze
 EResdDDq4FGRJZWMzs2PJD5s6DZMpR2z61lKulF7qfiwusl8guis0YbRT
 kMkn4ME6vMgquuIO16G9D2P4KdoIYtiq6bd9KtIrx9LqpaHl8Pe31KvEN w==;
X-CSE-ConnectionGUID: v9q0O3TNQJyAiBa98qovcg==
X-CSE-MsgGUID: 2xBzuNBXTvO7jGfKiZWQww==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78398621"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78398621"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:27 -0700
X-CSE-ConnectionGUID: bzS4bm7UR8eTf4SfTkXbKQ==
X-CSE-MsgGUID: ySLIvJtTQvq9LrsjLmjQVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="237911350"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:27 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:26 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:53:26 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.68) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MdQZh7X4uVJwGoDPsCHB/gEDFN5kq7IiaVr6K6n6lsuJBXjXgNbqPiFQeH1qxaH9IOLYjDRhAP+Cemi+AN440/HkyeeZhDbh0t2+ZrcE1bLpQXWRm/ZGFxSWinGDWFKT7dFwwY8+uhuUYM7snCr+8kNZHqRCRRgwNLWBYlGCa088HHcf1ECBVrza9pFKrKgw9/CfeOtEbIBzvnkEtf1Uhpo+0VyuCuF5vv1AaydBdxbpu3oMpIBtQsI72BBQWdLvUoOmyAuqbTN3/YIdZwZNJRTvtWm210NDcEsfKn3l+BUL5B8Lj8hYN7gNo44eacXUck+aKrrYH9sy4Ph/JEGhMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YWSho/ZbiuJRO8OmWAW6EA0rpIASd8hO9c/S/Qs0UxY=;
 b=FUy7UA4t35AbL6GoUX5F2SW4mWdOD6xJFmI/RoqxkAl+VYjVaF4VCt4p2LVDnhZQrSCdPIVqiuGcc/dgqBmYn/4QAz2fpuA2rCHxKu3pLTVakWEBB18ke1/ZHD5u2LsZdRPms4ujfbL7zsdHlU9vfP5/TqQbXo+Txxyrf2qFrKuE25HUzj5/rWuBQzx0v6jVfKQ42yQjhDLJh4JyPleGnC72b4QtgGPGmY10vYuAmmNN5RKUEDXsyoHdF87peNo2n/ArH1mvCk7HlxA9qtVlC/xJ35FL4NjHum96HH2PYML8SdpLIPoQy+UbSx1xg41OSZ798tWjdtdpW3bATvTXsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY8PR11MB7242.namprd11.prod.outlook.com (2603:10b6:930:95::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Tue, 28 Apr
 2026 12:53:21 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:53:21 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 025/108] drm/i915/dp_link_training: Fix kernel-doc of
 intel_dp_init_lttpr_and_dprx_caps()
Date: Tue, 28 Apr 2026 15:51:06 +0300
Message-ID: <20260428125233.1664668-26-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260428125233.1664668-1-imre.deak@intel.com>
References: <20260428125233.1664668-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF0005F6E8.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::1ee) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY8PR11MB7242:EE_
X-MS-Office365-Filtering-Correlation-Id: 1e66794a-eabb-4bfc-f3da-08dea52520c3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|22082099003|56012099003|11006099003;
X-Microsoft-Antispam-Message-Info: uKWO2P2Xi8AvpSUMjuWtv6Ys7MWn8rKp3uCiMUUQIGErfIpTGBK+Rqy+crVQNp9eSjXdRoIHlgMxPYGaGUu69UlH9VV37WcqWDAyjfKWIrnDNHmxRDVudjWF8fMrhTHdZPm6ej4pnOYlyz1389cZLroh2xYRukxH1sHurohKomLzrc4OyHOKnqRxCLbXMzbVHRqdgBtUnMqOtdqe+kdWcVdW3kQelOSEQT8oiwe6zg4G35QqaKAXbi+1xxi/KDu71SDo9qT6O+LGdoKUU25g1jCx5L+TluTeXXX5SToRhyqXViURaAF71jQnBmYKqmxN3EiaOGYczuw/g2+Mq1WiqTBJOqFBBBa7N7uYvfy8fM+5kLX1dpnT83N7pE+dQgFsh+RiQ33qkHxlobVravej4lQ7m4fS/tOk+ltIXZNeZk8GYVPdVpwL7bUXrmvYyBOcl5EDhl0IMqz66NWHaZ3dpkxCwptmz/cRYLLEI90XwBQwtggXBe1X5k+phIv8eldfIRevEZ3io3NGDzoUjzRmYwpHTvTFn426ZbDrxqHAK2LSVmYhFvpN7TLM36Xi8e0HJLjxm1Ac+WpqWppjsvRBg7dSByZQzDIy0ZW9Q78UyGmtcbIn7xKzJQbgd1AHfQIEYPvOju61kMuTsKF6AQkEU6Bjx91xCsmUyV3+zsTwZ8ASlfYjxhb9ooUYVwFP/BOAb7JvyfQVe6kPZayJalcNy4ZtrBC4PiwUhalfWI4UIGs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099003)(11006099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7Mx2W+Wd80TMLwxD+CBzuwHNWVm2R+MSV2WVHSjTtu/BnOXgkOp+m4B/iB7S?=
 =?us-ascii?Q?IA1XXVDPrzWOhRX5TBBQFkyoBz3A3v8z8urZngnTXCgAXwHVPN0Ukfgl6AOC?=
 =?us-ascii?Q?GmGCJHy/cdW9UBYjL99+Dqs+NIz89B+cB9ii7UqoRCh2AymhWwrlrzdw/Wl6?=
 =?us-ascii?Q?TLPAvWedl+K3eTFVP+HEudWM4hxYanjCtuimj2FM7yjEj1sLGoqY4gM2FDhY?=
 =?us-ascii?Q?ydN2ybHOwUL4fjWMuapq4XKXHt1Uue6/m/HVKGtyMak3VczZJURW6dgauUYD?=
 =?us-ascii?Q?wLPJ5fkJjTRoBeI5sME67tQAH8bjd899oc/85F07nqGb2ifD4DPJEoxqK3z8?=
 =?us-ascii?Q?hgFWVkgWQ09dNgPUpr4P03SRozrwKY3q4WoeO8Rj88JG0V9UWALh/UWjaId2?=
 =?us-ascii?Q?ME9OoXesjB6+n6QIfYD8Ba+gGfFG76U+TKHLvYzdIJwMQ2WauDKLd9ar/k/E?=
 =?us-ascii?Q?J46ggm2lH52Op26fQ7gmoNX9I17H9sBbnq2RfkQTi0C4evy8DzPBoY2/SYEG?=
 =?us-ascii?Q?q7fCBrsAVUPq8siN/imPuVSZ4gdnit4T0bmYFXWP1kEnIq+AzE+mypsGaWJt?=
 =?us-ascii?Q?qmmaGUZ8LL8j3J22Z4b/itlQr3POqkL5XLguKB116UedIxf2qbP5So0Q7V0w?=
 =?us-ascii?Q?VT1K6CcsD29HBDDBYxBPqqzRlDnosqYvRXoou1iYh17XKN2QSwSM4In8k40i?=
 =?us-ascii?Q?JMmOm1la/LUrbfWAnnQGndIIVvP3uucMhI2fu3CHMbC7mieSysqGDKIpa6NE?=
 =?us-ascii?Q?fEVxBf4yw33xjEXhANqfjtR3UDO5DFet/NrghxX6VK6nChOgqICwmPuewHw4?=
 =?us-ascii?Q?dAlht/LKtkLA28xf0R0yQ7IVKXbKYIv4dmpOasAD0KITYdQDRd14kNO1ESsU?=
 =?us-ascii?Q?bMk9uOguTbetVOlfnA/cVVdZNw4dCYZVDfk5dELFFNJ2SFqP36/90VX81kAN?=
 =?us-ascii?Q?DMiBHO3C7xx7sACOHq0u6akhBzBJGJ+y/kxTIK+HWAJTI4mmia/d+txqptaX?=
 =?us-ascii?Q?MYg0ZnHphNoJPAc+xmWyVaYaGdCGGVU9HnyIb2BXn0RnkddtdBwr4WND9O3x?=
 =?us-ascii?Q?/Vgge11lIUHBwRa52xJqnYvlEngDLek7F3hVGjXYmbCYIZZta9FWiJlWvoSy?=
 =?us-ascii?Q?FfDib8MnBA5GVT8kl+3kQ65r7uvkruwPPDqnJkv4/x05hK1eBvQbhcKf0+Ou?=
 =?us-ascii?Q?vl/XyjabjXwTAScoB83VbIez4If9MRSNKRFHzwg3FfObJFrKK4Yoq0uOliSB?=
 =?us-ascii?Q?Wxg7WNIht9Hu3aQqVfn3YHMTBpJ3LPDoGMQOcf9sjservm+oGXXOhk9SaIgq?=
 =?us-ascii?Q?tjf6XeHgniNwa44s3UGEXp5OeYNsLN+NINt1nQC96GRIfuNA1EFL1tSGLUN0?=
 =?us-ascii?Q?rg2Epb3EFJRaDrLJD0NtheqVgOkd42548bfR4zKnlKMwhcTV+ZTEFXxfXMTd?=
 =?us-ascii?Q?kBYFattqpdX06sYCdG2j+FB5eZSv8V6uAOujIhgJvG9ZJbOGw4xeC3WwdGnc?=
 =?us-ascii?Q?eHAnPAFM+45rU+zm6hCNzwrN0bF136WEzHza4n//TwBJrtS8NUnmgsSZmz4j?=
 =?us-ascii?Q?9dN2KcH3srx4suDn9ceJLKUdo6aqr584B+/dLLYRJ/n41F6MAttmDKlVf7en?=
 =?us-ascii?Q?cpnvQWu7Y41H7n1yKNFZibxPWWGbmEKYhkJR/KLLkRJDFEOYbVxPHhugcaFt?=
 =?us-ascii?Q?jB+JMQyIV0vUF0i5K6HSOssu40Pdt2m+hL77VSlD2W93jTxASEMaY8oxkxwm?=
 =?us-ascii?Q?eR+0/NgBlQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: vOmJHTW/xL4MDqL2pnfL078Tk7puTDagDrWRee3uBATAPJ9r4SzbTGUzFtdE3p0Zqh0gXvD2XfQczOIyEg9PQS+8Z7EnAl7ujG60ML5CRmma+rdVL4N8sN79EDjbTACK35c0jtX22v3J8gyas73Y2/n+lCGJSkJSN7Ob+XiudV2GB63PLcVYFeIobq/K11WnlqonRa++tjvqoILEH1uziD+XlpyLhBfjpyaTrYQ5Gr6u1MDlQU5jXw99FIKnYbV0tFieKxtEoUoIQC1HzYk3mrtLXK9gG2N4IPuZB9Zh8UPT/MOgLkuldTijgBA/H4rLtaKyrmfBjm48Tts/WR+rCw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e66794a-eabb-4bfc-f3da-08dea52520c3
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:53:21.7431 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LIHtwQQAyMs3titQjcGelrxkfS8F14hZ7WmclX0hAznpDfRW8WJfZHDv6cE+uvPo1OABUwpPfEB+9g6+0+45LA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7242
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
X-Rspamd-Queue-Id: 8BD4848527E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

Fix the list formatting of return values in intel_dp_read_dprx_caps()'s
kernel-doc.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 37862b915cf6e..35f160761e182 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -311,12 +311,12 @@ int intel_dp_read_dprx_caps(struct intel_dp *intel_dp, u8 dpcd[DP_RECEIVER_CAP_S
  * transparent mode link training mode.
  *
  * Returns:
- *   >0  if LTTPRs were detected and the non-transparent LT mode was set. The
+ * - >0  if LTTPRs were detected and the non-transparent LT mode was
+ *       set. The DPRX capabilities are read out.
+ * -  0  if no LTTPRs or more than 8 LTTPRs were detected or in case of
+ *       a detection failure and the transparent LT mode was set. The
  *       DPRX capabilities are read out.
- *    0  if no LTTPRs or more than 8 LTTPRs were detected or in case of a
- *       detection failure and the transparent LT mode was set. The DPRX
- *       capabilities are read out.
- *   <0  Reading out the DPRX capabilities failed.
+ * - <0  Reading out the DPRX capabilities failed.
  */
 int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp)
 {
-- 
2.49.1

