Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9869C984C43
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 22:42:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3749410E742;
	Tue, 24 Sep 2024 20:42:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QcRDTg+o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DBF510E742;
 Tue, 24 Sep 2024 20:42:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727210561; x=1758746561;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=UGuv3jIaXkcG6oKl/M9q8RTgkpCh464sf8VIykAabI0=;
 b=QcRDTg+oDo2NnH5Pov34GciHl8BJ9+qn+PpxmwOQ6C6erHQFvRjJbFXv
 graQJrsTBAKPKJl+RKNM79s3kwbcoQ85w/2lDY1HcvdMTqFlzn0Fa68ta
 Q+dadrWAE7ENBolYIKbtI9iEuD42EncASj2KSiM78gfPIlkmZLyS8h8pd
 Ry5fgrOzhC2rkVQczT++4R1MgCxkXoUna11TqlvJwpk+X04XmVqvU506Y
 9VvyqlRHHUTLTycuH3x+EEiCSbKKWYCflVsf5PIi9hG7901RHTM2Xr8vs
 EhCMVWhj6qrurr0IvqZBgp6clmdEwUNiPKurEIKCFXQRrLBcrZ3GOAEq8 A==;
X-CSE-ConnectionGUID: cQHpLXhARQCiRYOraFl94w==
X-CSE-MsgGUID: SFxyRIZYRJmNfBABcnmAsQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="26099148"
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="26099148"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 13:42:41 -0700
X-CSE-ConnectionGUID: lZg7uYLOReeqPvhGCT2HPA==
X-CSE-MsgGUID: azYs0B/HR6+NPC3V93mHsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="76469558"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2024 13:42:40 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:42:40 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 24 Sep 2024 13:42:40 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 24 Sep 2024 13:42:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NVDqm+xNb9D+Ye3lhBjmh/T0N2aSdJdf9SPfqn0lsaFZAJI+4p6p0ZjClmnlmf2UbdINInYR+F8rdamdojfSIM0jgKKuE/obJBGBKZ8n72HAT9SZvGr7nPbjDg5IcRJcIf/MTlxVqRLK9eJ3vlbueYhkiKNhfODZ+0TzjZ/Jk2a3b6oSQfp9MPb7m2ascyCnRFOGg/md82+xx2WM7Hqv/o5OJxox3VG5rtDAx9ge1ClWUJrGP+MiCCCK2/BoWgZp9DVr7/gR4iwxrYejrwKUDS0oWJDiHlWmdwBMlXG85gvn/9IerkGfPdQ/HnGqCxzvYjmiqw6eWOJdhVdFzkU2Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2bJWA/2xKeC77pID+kQ9i1tKLazHpbAlrPtk0nIP8+Q=;
 b=mzl2kzrwCeCUL6+OdVhgk9M97Cp4IOcfJYmHss0eVcTapliK5P62st4R+Ue0QmVQ/GvEz6SOo6udkjFY9q6WnSgkl1Oan+bg2R/kdV2nVDlFzB71rVSLhkTbsAZpRCY1OHd6Gv6LtefArOm10aj2ThbwaIrvaVD4QYQ29NdZOmCWmZZ//QaQCh/UC4hly4N7Oipfkbl4lXQDwMc7B4ItohXRn9KhOVCQ1tgeBH+D72XQl1c8zyaxcIcpdNLFFPZOn+eLNvIBv2FZXlVMV2pLKcAiYr7K0zOk3+Hw55W43qamRKtUvse6uGXKR/psVFcZFlB1VRobgkuw5lf+qKEY7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by BY1PR11MB8127.namprd11.prod.outlook.com (2603:10b6:a03:531::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.23; Tue, 24 Sep
 2024 20:42:38 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Tue, 24 Sep 2024
 20:42:38 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <imre.deak@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 03/31] drm/i915/display: Move regfile registers
 intel_display.restore
Date: Tue, 24 Sep 2024 16:35:24 -0400
Message-ID: <20240924204222.246862-4-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240924204222.246862-1-rodrigo.vivi@intel.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR03CA0259.namprd03.prod.outlook.com
 (2603:10b6:303:b4::24) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|BY1PR11MB8127:EE_
X-MS-Office365-Filtering-Correlation-Id: c6a0f300-61f4-4c95-4009-08dcdcd96d49
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Cl4jby0oeMw5/R3BCgXlmYa0J9hFtwb03dj5nw3HjXLudKaEFExO36T4I87y?=
 =?us-ascii?Q?KKvWtqnAvRRt8M7X5DVflYk3egsGpeXhZSMmu1f++3yfq30UbidBphB+bq4L?=
 =?us-ascii?Q?sOw9EJuhMiZSesUIMef+P2UKVousJkNme61oJNDB67eMkfXV2Wt+TbWGYMld?=
 =?us-ascii?Q?ChoA4bFQUm1EkSCgD6Zfr7l3dBdHst5faA8PGHRYW0rFS0wS+I0zRtAXewZr?=
 =?us-ascii?Q?oosR3Vk/3iQut+9SMUY7+IYH1PMtvbBSKEnJH7oPhN6Pshmt97ulffjbxaU/?=
 =?us-ascii?Q?ZM5sKhCHrRKfU1l7KtjuNSgpZqsylFEQ9XVwTsKP2tBi5XfUb6iFZMcDoU8S?=
 =?us-ascii?Q?fKPDETv5jYGFfCeAzqhG2dPcLJ55Y1V2j5WMR5ZFL1jQD8nuTW4zS6Bg6oMo?=
 =?us-ascii?Q?RKtvFaytJ5xCPFXiE8UsnIU1YmsY0D/0pBSIqvo2f6iI+pMtWbgjtnwnkuiE?=
 =?us-ascii?Q?yl0qaTmkz7Aa1eOSkQrqXQoE9C6BIE8Zeha/H6TtRNsHCJrSSBNW7lnBh1ge?=
 =?us-ascii?Q?a5/z9lBfK9P5ZTL2FIpx7mbypS8jP4eIucjpZVsrbLmwFEJalVR8Gb5UmZNX?=
 =?us-ascii?Q?c2x27WWV16Mo7XYlk0Njy8GjuagJt1IrNPDdpBfQa8pfxmlcZ0hkvD+LhYOm?=
 =?us-ascii?Q?eQWG36M4+CY+NQ7Un4/tmwa+ldF/HrAX0vb9utrt2TX7H+2guxVuK/kNbADg?=
 =?us-ascii?Q?M3pAjG3M9mtBgD9SQog/JFaJ8ZYxj3hy+WfW0uzv0bXsRYWbKADCsewBRljV?=
 =?us-ascii?Q?ef8K55BvLdX/Og9yWf9Wmz6rLxb1d513AJ4Xs8+8oIHBOX2r6nQmRQjVIFMd?=
 =?us-ascii?Q?AKuV1H8qgzV0Iy8E9X+D1LANpnGcAnPTcOB4WxjT2x2odzypimkgkiGZg9+r?=
 =?us-ascii?Q?XrK5vrHflJeyTQ/1exUAlBKLGLpb7bDYOykhoBdbp+GuzBEaTxQ1/ES5rn6S?=
 =?us-ascii?Q?PNpHOIyNfb51WzbiL5DsM34EV/eRNlbzsudRf/0m7l1mP3TbfC4XvQXy3IPJ?=
 =?us-ascii?Q?ykrdn3gH4mNGij5XqkUiYO90f4ZnXpDeELeLZNRClBMORr9lv9EldpFbAep1?=
 =?us-ascii?Q?COTGME14l3wAhLk+9IaCEX+qa+BrP9zGSEA8220NN5SSnhBKOT+P0WaI14UG?=
 =?us-ascii?Q?9/ND19xNOV6IG/n6qfdxCFuWd9EAntPM4+d8Wkn5m3dMxIIBwRM0sif9172B?=
 =?us-ascii?Q?+kWvAgTbXVJF4jFOa4z6yzcAq71JW3LwgiGyGH0q9LSSEEOYRjszJrw2x1/n?=
 =?us-ascii?Q?/XwUPxKs8p8+SKz/HLJ8AeIdKI0tIqiXuZq9sMaEQw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+sWXtiV5Zh8pJQ8v1oAHq7G9N2LyNvNuu7hCGtvLJ8ckrwBFTaq2LOx+b4IO?=
 =?us-ascii?Q?JzA4Dfsb+WqigxrcjEhRVQROuSs2YwJHLiVZ/FmELy1oU9R/wC4Yo3CJuZyA?=
 =?us-ascii?Q?ony9RyIRJfAmbgRIRUgUcJXaIlezzr++CRpmXKAiNsDl+1F8jTBhr0t+vX/J?=
 =?us-ascii?Q?8ulGPyJJulox7d4gt0/2dmqxXdRGZap0JhtNaJwOntn1xUNPSuKlThnw6WEJ?=
 =?us-ascii?Q?XdmzqJNPqlOVZo5U/Oog5VfTzZGq5L07nOagOpPTJ0/SyxM4KPQ3Zo0l6jtb?=
 =?us-ascii?Q?IWMzgq4RTd4gzDPs2HmTKaZ7YviCxyrKdSFxmmGjROx5/5iDwYj8xEkMoR9M?=
 =?us-ascii?Q?BugJaOXLEhPRg6CqJCCDs2nUmUW9taylnaB0gVjSAAHC+P3Tp8yxj2cOD7Qu?=
 =?us-ascii?Q?EUVvQw4jl006UBcH95Wdfek12YLpezpqdsdb88Ga4PWad0jAlcDyaa/INIW7?=
 =?us-ascii?Q?OhKklmMS85ad65wToxbmddbHvaZMg0I9I5G4BWyVl4KXEbX6EbOEX8uaMMGO?=
 =?us-ascii?Q?A2CLM3veE4/dHgE9j51x/Si2YRkKAWFSQtL6QkBUAyrWv0gjFT+NIY3TGBaO?=
 =?us-ascii?Q?X5rP2Y/5m7h9bAhrUcvls76VyKReWopYxGBe2pzx/kUcu8epiAGYr62fW8m4?=
 =?us-ascii?Q?0QyZA1eAYo2sNVEPggJSY5qCc5GiEN3inVZu/ZL0xSGVkuUhDFKYvhiJdxPg?=
 =?us-ascii?Q?EQECMBC4jOsnMKUNUchB7qUG1LUNKhCHN6dYwxraaf0nStPdLtt70nnHKdYQ?=
 =?us-ascii?Q?FdDorbxl+EOL74mdXnxeMtgaeRBrQ2kxQauam6qpFyEA6mrf9yURP7uqRIb9?=
 =?us-ascii?Q?mxU3Fh51Wt+Svjs7F7xuUurkHJ9wOHHujtz/KkDcYJ46avLwVYyOQE+AYGzz?=
 =?us-ascii?Q?8Zg3TVbpddUcpjZn/2eEm9mpj1GYJZa9SLdMveHMy2hv2ZwaxtDHM0bL7Q0t?=
 =?us-ascii?Q?yCZ68utbEMyALLV9W/ZMBpnetCpFYpIYzza6rT9wElhAXbFOxt4TuiIzuL4f?=
 =?us-ascii?Q?/59z8mzy6AJiGPBPP4krgGfUXklifjJVRg1ozr88lN9RZPqGQYda0VXreNw5?=
 =?us-ascii?Q?QEN5kui/xDi1BSQUSxcmGy6hLAtee+/tmbVjX/21xrWxj3nIy6ONcyp5Hg7u?=
 =?us-ascii?Q?OFEnUqF3WFvjv5RbpV4HEGU2a9RveikT4ljsmpC6R/TB0xhaDSeGhf17x9Pn?=
 =?us-ascii?Q?9Wrq1BlROnmqdmVnxwLw5SjtmBRrEsCvl0na9Okqe/wc70azPCMWYvUJ/HfD?=
 =?us-ascii?Q?rd/OgS7SYXobb6c+i7x4dPo306rPCBPvP328JmjVwgd6/SxHTvP5lqwWZSHC?=
 =?us-ascii?Q?lRTEA+0DQUM6bxJheJ6VOOzVgHhLMWzwVP8PYACPhh0AzFAyf+DnHjZWtBam?=
 =?us-ascii?Q?ZTSP3W3Ybmyee9mC+aRJFiBWmRf9Ohabij5TtcaAegg//Vz9z5wsbOd/nlTb?=
 =?us-ascii?Q?SV9hZpn2nyuZzl/69XvPcklczVEtn2a5ZmWUr86MLmW4JrFsnuTT9akkbadw?=
 =?us-ascii?Q?a+L2Ow8NHS5ffayKvBqH695+bU1ZMuFYJc5T7gpqIGZbewlESejG4+UsNtbM?=
 =?us-ascii?Q?5htCs/P5bn7ZDIxpPncj3ENL64Brdvk2JQgJdGB1ifiz7/KULcVcr1cpf4vb?=
 =?us-ascii?Q?sw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c6a0f300-61f4-4c95-4009-08dcdcd96d49
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2024 20:42:38.1637 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wbA7E5M3KoGulvK/LsTWB0LXJv0M7oDb3yi3u7gEWod4jJZY19jQKLHbXI7HDG4tVW2x6BA9sCfk9BNz++jYTg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8127
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

The intel_display struct already has a place for save/restore
stuff. Move the i915's regfile there since they are only
related to display.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 .../gpu/drm/i915/display/i9xx_display_sr.c    | 40 ++++++++++---------
 .../gpu/drm/i915/display/intel_display_core.h |  5 +++
 drivers/gpu/drm/i915/i915_drv.h               |  9 -----
 3 files changed, 27 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_display_sr.c b/drivers/gpu/drm/i915/display/i9xx_display_sr.c
index 4dd0ce267994..4c78b7165831 100644
--- a/drivers/gpu/drm/i915/display/i9xx_display_sr.c
+++ b/drivers/gpu/drm/i915/display/i9xx_display_sr.c
@@ -12,56 +12,59 @@
 
 static void i9xx_display_save_swf(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	int i;
 
 	/* Scratch space */
 	if (GRAPHICS_VER(i915) == 2 && IS_MOBILE(i915)) {
 		for (i = 0; i < 7; i++) {
-			i915->regfile.saveSWF0[i] = intel_de_read(i915, SWF0(i915, i));
-			i915->regfile.saveSWF1[i] = intel_de_read(i915, SWF1(i915, i));
+			display->restore.saveSWF0[i] = intel_de_read(display, SWF0(i915, i));
+			display->restore.saveSWF1[i] = intel_de_read(display, SWF1(i915, i));
 		}
 		for (i = 0; i < 3; i++)
-			i915->regfile.saveSWF3[i] = intel_de_read(i915, SWF3(i915, i));
+			display->restore.saveSWF3[i] = intel_de_read(display, SWF3(i915, i));
 	} else if (GRAPHICS_VER(i915) == 2) {
 		for (i = 0; i < 7; i++)
-			i915->regfile.saveSWF1[i] = intel_de_read(i915, SWF1(i915, i));
+			display->restore.saveSWF1[i] = intel_de_read(display, SWF1(i915, i));
 	} else if (HAS_GMCH(i915)) {
 		for (i = 0; i < 16; i++) {
-			i915->regfile.saveSWF0[i] = intel_de_read(i915, SWF0(i915, i));
-			i915->regfile.saveSWF1[i] = intel_de_read(i915, SWF1(i915, i));
+			display->restore.saveSWF0[i] = intel_de_read(display, SWF0(i915, i));
+			display->restore.saveSWF1[i] = intel_de_read(display, SWF1(i915, i));
 		}
 		for (i = 0; i < 3; i++)
-			i915->regfile.saveSWF3[i] = intel_de_read(i915, SWF3(i915, i));
+			display->restore.saveSWF3[i] = intel_de_read(display, SWF3(i915, i));
 	}
 }
 
 static void i9xx_display_restore_swf(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	int i;
 
 	/* Scratch space */
 	if (GRAPHICS_VER(i915) == 2 && IS_MOBILE(i915)) {
 		for (i = 0; i < 7; i++) {
-			intel_de_write(i915, SWF0(i915, i), i915->regfile.saveSWF0[i]);
-			intel_de_write(i915, SWF1(i915, i), i915->regfile.saveSWF1[i]);
+			intel_de_write(display, SWF0(i915, i), display->restore.saveSWF0[i]);
+			intel_de_write(display, SWF1(i915, i), display->restore.saveSWF1[i]);
 		}
 		for (i = 0; i < 3; i++)
-			intel_de_write(i915, SWF3(i915, i), i915->regfile.saveSWF3[i]);
+			intel_de_write(display, SWF3(i915, i), display->restore.saveSWF3[i]);
 	} else if (GRAPHICS_VER(i915) == 2) {
 		for (i = 0; i < 7; i++)
-			intel_de_write(i915, SWF1(i915, i), i915->regfile.saveSWF1[i]);
+			intel_de_write(display, SWF1(i915, i), display->restore.saveSWF1[i]);
 	} else if (HAS_GMCH(i915)) {
 		for (i = 0; i < 16; i++) {
-			intel_de_write(i915, SWF0(i915, i), i915->regfile.saveSWF0[i]);
-			intel_de_write(i915, SWF1(i915, i), i915->regfile.saveSWF1[i]);
+			intel_de_write(display, SWF0(i915, i), display->restore.saveSWF0[i]);
+			intel_de_write(display, SWF1(i915, i), display->restore.saveSWF1[i]);
 		}
 		for (i = 0; i < 3; i++)
-			intel_de_write(i915, SWF3(i915, i), i915->regfile.saveSWF3[i]);
+			intel_de_write(display, SWF3(i915, i), display->restore.saveSWF3[i]);
 	}
 }
 
 void i9xx_display_sr_save(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
 
 	if (!HAS_DISPLAY(i915))
@@ -69,16 +72,17 @@ void i9xx_display_sr_save(struct drm_i915_private *i915)
 
 	/* Display arbitration control */
 	if (GRAPHICS_VER(i915) <= 4)
-		i915->regfile.saveDSPARB = intel_de_read(i915, DSPARB(i915));
+		display->restore.saveDSPARB = intel_de_read(display, DSPARB(i915));
 
 	if (GRAPHICS_VER(i915) == 4)
-		pci_read_config_word(pdev, GCDGMBUS, &i915->regfile.saveGCDGMBUS);
+		pci_read_config_word(pdev, GCDGMBUS, &display->restore.saveGCDGMBUS);
 
 	i9xx_display_save_swf(i915);
 }
 
 void i9xx_display_sr_restore(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
 
 	if (!HAS_DISPLAY(i915))
@@ -87,9 +91,9 @@ void i9xx_display_sr_restore(struct drm_i915_private *i915)
 	i9xx_display_restore_swf(i915);
 
 	if (GRAPHICS_VER(i915) == 4)
-		pci_write_config_word(pdev, GCDGMBUS, i915->regfile.saveGCDGMBUS);
+		pci_write_config_word(pdev, GCDGMBUS, display->restore.saveGCDGMBUS);
 
 	/* Display arbitration */
 	if (GRAPHICS_VER(i915) <= 4)
-		intel_de_write(i915, DSPARB(i915), i915->regfile.saveDSPARB);
+		intel_de_write(display, DSPARB(i915), display->restore.saveDSPARB);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 982dd9469195..2f4dfc8dbedc 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -500,6 +500,11 @@ struct intel_display {
 		/* restore state for suspend/resume and display reset */
 		struct drm_atomic_state *modeset_state;
 		struct drm_modeset_acquire_ctx reset_ctx;
+		u32 saveDSPARB;
+		u32 saveSWF0[16];
+		u32 saveSWF1[16];
+		u32 saveSWF3[3];
+		u16 saveGCDGMBUS;
 	} restore;
 
 	struct {
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index def3ca135406..9030ea7d54b1 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -101,14 +101,6 @@ struct i915_dsm {
 	resource_size_t usable_size;
 };
 
-struct i915_suspend_saved_registers {
-	u32 saveDSPARB;
-	u32 saveSWF0[16];
-	u32 saveSWF1[16];
-	u32 saveSWF3[3];
-	u16 saveGCDGMBUS;
-};
-
 #define MAX_L3_SLICES 2
 struct intel_l3_parity {
 	u32 *remap_info[MAX_L3_SLICES];
@@ -291,7 +283,6 @@ struct drm_i915_private {
 	struct i915_gpu_error gpu_error;
 
 	u32 suspend_count;
-	struct i915_suspend_saved_registers regfile;
 	struct vlv_s0ix_state *vlv_s0ix_state;
 
 	struct dram_info {
-- 
2.46.0

