Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E5CEB52DD9
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Sep 2025 12:00:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C13010EA6C;
	Thu, 11 Sep 2025 10:00:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mEz2ViVd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE39210EA6C
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Sep 2025 10:00:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757584819; x=1789120819;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ntA5ohW63nREycolByuYgPYNY3Z+ZDYiLzsby3Ld15M=;
 b=mEz2ViVdwgfIo9MCtT/53aZa8QIFYVQkwb4M5pWTtwgCulf65v5Cus1H
 q+cpNA5uw7zkc6HGIE/noztF/NTXZLwX2GaX0aTorANkSmCaGrNTExEwb
 ycvgqHFH6jBYQrk9Wui5DHDc59UGZL0j4QQv9cg1wqjKTT0awgqGPwkdQ
 zwQ6rVdNEh4akqLfo8afOTgsDNg1SI/iKYyJ/Kbbf33Pie3kli+IcF7RC
 LVO5hlb9YdepEgqxQqIJRZUOAC53JFCiHH3UEjxIb4wnkHtcEus/a0nsE
 HATcwuCbgRDXA+oG/a+K198AfA4HdZ1nnOlw3oV5UlmDWvGqJFSb005tm g==;
X-CSE-ConnectionGUID: GLqImJBISuGgDzQ9k8pEvQ==
X-CSE-MsgGUID: 56cSr3F7RrSueRgDcDnKLA==
X-IronPort-AV: E=McAfee;i="6800,10657,11549"; a="63545550"
X-IronPort-AV: E=Sophos;i="6.18,257,1751266800"; d="scan'208";a="63545550"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 03:00:18 -0700
X-CSE-ConnectionGUID: 5Y2tEFafT+y6E1wQeHJyNw==
X-CSE-MsgGUID: kggZJpN8SjuCbFa157J4Uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,257,1751266800"; d="scan'208";a="173553049"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 03:00:13 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 11 Sep 2025 03:00:12 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 11 Sep 2025 03:00:12 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.60)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 11 Sep 2025 03:00:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wMmuWqhoLVk2I5MTQ71DtJvsTY+uKe4uCNV5iYNceuJcGqUSYkWd8lf2/byOU91uNXHGE/6TkDUZ0et2ivA0X4d7bO5XP1tZ8vSUEu1Zna69T30tpyBqMlf2riYtsgMpK5QSY3Vvw1pVo7yxRA0XYs4y/YVUhKjmpZ1YUK/FLwHMy+miLXOhLs76wNscU7y45CgKErbqvZGjqpJpYd34OQwg7D4V8DMOMWpMaAVYdgDMGFDkHEYUdTirCNfBWjjNpkJZ/2wvS6AD5kKZbD8LdqOpkGAjY8f7+P4CpnH0RpMlzOGpv+2Bo5qnyszGla0G7iN5B15/Bq3QQkaZW0PvOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+R6lwmFRywfWILY+DmWqAI5MBJcNQEQiQk1RLTx5YG8=;
 b=H2iFuXnKZaP+ccu2IW2zA5yq+1ZzhsAGDiP+z+r74WBgEFTyLY6QmGFONNZjZPykUsxS3T86/b9vP5oUw5bDtN0o2tadoAijtcTcCvUK42gHI8t9y7g1kav2+cMroE63IfytW7WH9G35owD+PVJTqo7qJHZ9SgHGSTZyThtVQ4zNIJzw0mZWbNnsyQm2xXNKk9eqKGqdvgup0hMMGOhaWVtBv+uj8M+Gf/5QR82GT/wyD0gkIbC347ZWcBgCEDYZ/fWPlMS3wgwp4QDzWacuIE4DLvJ+K+OYp0KzGKsr869kpJZiiJv9bEJZNFIFrk4270jDBIFTfM0QkUO2a/6b8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5366.namprd11.prod.outlook.com (2603:10b6:208:31c::17)
 by CH0PR11MB5252.namprd11.prod.outlook.com (2603:10b6:610:e3::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Thu, 11 Sep
 2025 10:00:09 +0000
Received: from BL1PR11MB5366.namprd11.prod.outlook.com
 ([fe80::f073:1e46:c7ee:df9b]) by BL1PR11MB5366.namprd11.prod.outlook.com
 ([fe80::f073:1e46:c7ee:df9b%4]) with mapi id 15.20.9094.021; Thu, 11 Sep 2025
 10:00:09 +0000
From: "Gupta, Varun" <varun.gupta@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/xe: Fix driver reference in FLR comment
Thread-Topic: [PATCH] drm/xe: Fix driver reference in FLR comment
Thread-Index: AQHcIvvkGSVoX353G06Q5mziwCYir7SNv6DA
Date: Thu, 11 Sep 2025 10:00:09 +0000
Message-ID: <BL1PR11MB536620045893F3AA8A3CDF2DE809A@BL1PR11MB5366.namprd11.prod.outlook.com>
References: <20250911090955.762081-1-varun.gupta@intel.com>
In-Reply-To: <20250911090955.762081-1-varun.gupta@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5366:EE_|CH0PR11MB5252:EE_
x-ms-office365-filtering-correlation-id: f95e6008-bd59-43d3-0961-08ddf119fe3e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Gq1zrBEThoQCo1AioevxxPH0MEWRIa3jMilgnQLQ/qeOFQO7bWLtM8ZyDd47?=
 =?us-ascii?Q?5GOvAUc4C23aAfhPnZigobsBCOo0FO5/H2C3rQXPfLWDf/NrIvgMCo2BXsY0?=
 =?us-ascii?Q?94PvSJTYd0infsVU7FHp+pEAVDV5OabqO+DDCjd+RMFnIgs8Ezq1M960iTnq?=
 =?us-ascii?Q?gu59S0lb+SUz33mKBwmGjjgt0xGvcaTLflYbfU7VbfmtVrskiVHJkGP8hUXn?=
 =?us-ascii?Q?LGmggeBpRfBb4R1Pn5mSH1NB/MiP2angxt/9gkS4xB+pq6GuiFS/mxbToqwj?=
 =?us-ascii?Q?kYOQfJ8mZaoCdvsb13Is4vLr4MUtoW9iqzcb2H59z/z27atJUZN+Se9qj/8y?=
 =?us-ascii?Q?r5BCaTb8A6QZ/y7JOib2BCnDwpRursK3FmG7yy26/vBBh0NlummLRquWUXk+?=
 =?us-ascii?Q?CKrRwYx8u/WiJB6/o2F48ddHvo+SBMzMT4A8z/wOOz18t11H+84WKuhy6Q+6?=
 =?us-ascii?Q?nKy0rcRmAA0fwFv2wnCheylMFwxIHxEiN7GkLLMFEVVc0RTzk5Iqfv4zdja4?=
 =?us-ascii?Q?xMK6E9kOXT4TP19j/7X4PAiPOKfKZ/OOCZeKEjiWkzVdR0r/VKCD5vfwKAUO?=
 =?us-ascii?Q?5BKav67FNZwi80WcPKbEl5lAx5+k0Po0kZ5/due9I1+yvCj8dLFtWZQZtyk4?=
 =?us-ascii?Q?HL7sG5g/5ZhpWqpz/DOoSsGcI5TxX+nKsnfnW6T/TAgeFhkaMv6DNF4qh5Y0?=
 =?us-ascii?Q?syoe7u0hvMkVQ9TM9EQPIVcdS8fq2mYsQs8vTgMuYeu0Ar9BIGQtuT4/VWCk?=
 =?us-ascii?Q?E3hbyqEt3u8KcGYSQkSAoeou0eZgSMCsanvrAWo0pZYOqjU0GlCb8HyJX4dL?=
 =?us-ascii?Q?tTPecUOCqjuDdU9cwZGwrSSPXF8zqYxoyUVwnK8auzkTftdQ3nT4yEG+GQNT?=
 =?us-ascii?Q?rDv9tAzaDmQIvcLqlpXFgo4vArURzRT1iO+jHDrydZ1yWxqWXKAPflgAC7pR?=
 =?us-ascii?Q?trJunAUDhqOlX7p2P1T9ViHfpvsCi0GyeZSUtXLz5DgdJyhpUNmbQfWNmTby?=
 =?us-ascii?Q?tbJ0J/FxdB0bC52ehwKGFpfnt4fNLF12+0qvx1KAZL3Rk+yBffgV1Y7VLL1s?=
 =?us-ascii?Q?Fih4WA5fxNwLytu/BItDrq3L1yTR1L46lq5byhyvTEAA/7GkceIS4aH/iMLE?=
 =?us-ascii?Q?cwz4EQ1868DTbbP22kEXWysjICI8W6Ec6N+PoIDzKIctFr1TiWkf4kaUq5Ip?=
 =?us-ascii?Q?S399y7ta7rnypFoiI+6WuJ/QPtAL88jzDm+dH4XKj/ucktzYdgThAaOlzWdH?=
 =?us-ascii?Q?TBvsPf2d7EXVTfj5A/cs3S0zFYa2HGg1XAwpa5+u3cW7iR9dh6BzFyuDq3sp?=
 =?us-ascii?Q?EcSNm08xLfFhVgmFa8HOtMLr/EAFyUVyw1X66pwlMngCbmloNlaVqRJ5QQ6y?=
 =?us-ascii?Q?zQqCc2fJ7qqV1yJRD8fO7xv2i5lx3Slusu/0BVT9Z7YXCe9C1QNk8sM1JIrb?=
 =?us-ascii?Q?580XSzlHuDQ5WHdYtstePxQ6U8WX8eP4dEu2Xm5fn3a0kNuTchxDDw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5366.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?uShRkK9DrToc5Rwk69cpBGCP+PBbZm228XSGf/mz17KQh7/jjz70Cr+la1pl?=
 =?us-ascii?Q?VCa6bDbvvNQP54qCq7sBc1JfAzLXxgwKnAi64PC5GT4VX6/XLpUqUFtqHUOo?=
 =?us-ascii?Q?XS/PYRKBXLAsFiHMM9BAF7p+ot4PcHocIqUarwziPx+6PeDDiFfuj87vehfq?=
 =?us-ascii?Q?OBROEzB9mbuWcglUHjkB2cIvjH1xQ7VtNmwjDmWKjoO4qvP3VSeA1wGRS08c?=
 =?us-ascii?Q?BuvI8kA5/6B17wiQqtHcmn9tJAa667xo4ViG4JBIGYMkv5YuWA4mZAgSGb6l?=
 =?us-ascii?Q?t4BqLpG7uQPgPPsYSMcXyvsmds6J3c3aqhAOUU8HVBq8KlC4LrSXhIsxCLnv?=
 =?us-ascii?Q?JZDyL5g/UUPQ9BnWyUPilf7cOHForh/Cu84Uu5M4xBb+V8w1BpSCnzIBMYHn?=
 =?us-ascii?Q?t3z9cq5wVto1FilKvCimFX0pKrID4TdhcGS+mVpVIXk83c61nkvb/sQcuNsE?=
 =?us-ascii?Q?AzgpgNAZ/xZRKKsXexyQEU2MhGuzCZDMTNTzKxJYX8YgwPR3228PNTPQqLNT?=
 =?us-ascii?Q?3dbxQd2Gufld6a3zJHto1Z627RfBzXytN+2quLIhlyN+E55KUO5OHzrBqcJu?=
 =?us-ascii?Q?/FCfsibk38JHRRZwl0i4V0Q7WEWqCczn8LPBbpduEkjl8/bRz5vHu2PSjwC3?=
 =?us-ascii?Q?MPTPRKSx7ty8bcYBHUz3i8ZZnFYXXQRkRR5GmqNsX3sQkI8ahjJzjF+tAHvp?=
 =?us-ascii?Q?lPv2AISJuIiMMmxptK60aElTqWAS0iV7A1+3MDUU1Hw93uQTRX9vAkzkFbG/?=
 =?us-ascii?Q?mSHYfsnNBHvgogkbbhG0e+P0arZ4wbUeSN77njTCZ4QWX/wLwpWSg//hXsvl?=
 =?us-ascii?Q?i0WAhd2CZbtPJe6WO4b1LrjcHRF1rhP1auaMb8murT7LoopFpNWuWGR5c5E6?=
 =?us-ascii?Q?lp6VML1+MWGaa5c7f07lAK91Oas5cgwPh2pqRAGh1wP/eRcNkWrQ1EDmZEBi?=
 =?us-ascii?Q?lNmArhxQR3mrJbYR/hh7Dkv/15L2tBLCSZ+nWuk5ggAOm0NKSwJif1mGHpcE?=
 =?us-ascii?Q?Sb1wzId84hw4CTszwCyZLIt1Uu/DD++QGXE+p7QYfWwXEyjKrIjzkkM7XeiX?=
 =?us-ascii?Q?NG2qSyrsfLRsLwnexWBmRQgDCfbT9TJUeB6UZNiFrX+4McHSCXCPhpLihHVU?=
 =?us-ascii?Q?nZ3aOmQvn5PRMTVJNQv/dIMQNkX4HcBTUGDyaWiB6yX+6SpnVOMnEs+Qhk1B?=
 =?us-ascii?Q?/5YSQX5KMjAtQSZNeOWBg/IEkUot9chWqSYjsPYgqs0zYVeFZfI3UC8+JuxW?=
 =?us-ascii?Q?d2KwSq7zoKsp4HHq+x0rWvnecOVdZfHmr/QWZ92f/MwdL+B7jwQBO0rj3KhX?=
 =?us-ascii?Q?1PDYrvHkHcJ5Mn7bQOuBFJVwkLuF1JGFs9ss6BfA3wWOgOvaKZn+MUhmDer5?=
 =?us-ascii?Q?LWicgDEoeO1J4ERTpKUFaZk/g0BuBKYTpIvMUDryQd6FdvpmA8vQJQ9FyPeE?=
 =?us-ascii?Q?PjwPXCNRT3kTHzXYYE6Z9qXC9QNrtVLoxseGn/bpx2NOjan3gY5vl3g5sInL?=
 =?us-ascii?Q?nP4M0SPP5ol5EUZORVjFzSMMcZfnw4TsvwiAS+4knkJfgJO0y2+aBegwA5QK?=
 =?us-ascii?Q?ubeszjMCi7k1sJWn/5sJ2V7qiPTKeRd1KYvTw14U?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5366.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f95e6008-bd59-43d3-0961-08ddf119fe3e
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2025 10:00:09.8252 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iI382ZvnS3Xh5ggQOsDn4EeiaXx94CmJ1HCcSj9pMH+kad7SIv/GgxXPcZtqrbRTQPLxnDKDfVSswtW0+8I5Ow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5252
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

Please ignore this. Sent accidentally.

-----Original Message-----
From: Gupta, Varun <varun.gupta@intel.com>=20
Sent: Thursday, September 11, 2025 2:40 PM
To: intel-gfx@lists.freedesktop.org
Cc: Ghimiray, Himal Prasad <himal.prasad.ghimiray@intel.com>; Gupta, Varun =
<varun.gupta@intel.com>
Subject: [PATCH] drm/xe: Fix driver reference in FLR comment

Fixes the comment about the driver-initiated FLR to refer to the 'xe' drive=
r instead of the old 'i915' driver.

Signed-off-by: Varun Gupta <varun.gupta@intel.com>
---
 drivers/gpu/drm/xe/xe_device.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_device.=
c index c7bba535b145..76076e3f1914 100644
--- a/drivers/gpu/drm/xe/xe_device.c
+++ b/drivers/gpu/drm/xe/xe_device.c
@@ -532,7 +532,7 @@ static bool xe_driver_flr_disabled(struct xe_device *xe=
)
  * re-init and saving/restoring (or re-populating) the wiped memory. Since=
 we
  * perform the FLR as the very last action before releasing access to the =
HW
  * during the driver release flow, we don't attempt recovery at all, becau=
se
- * if/when a new instance of i915 is bound to the device it will do a full
+ * if/when a new instance of xe is bound to the device it will do a=20
+ full
  * re-init anyway.
  */
 static void __xe_driver_flr(struct xe_device *xe)
--
2.43.0

