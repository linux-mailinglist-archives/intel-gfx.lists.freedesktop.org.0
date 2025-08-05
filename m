Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA557B1AF61
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 09:37:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F08E210E603;
	Tue,  5 Aug 2025 07:37:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HaKtmpw1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0306810E602;
 Tue,  5 Aug 2025 07:37:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754379444; x=1785915444;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=0yGD98F8q592sFsx9XjPH03qtKjp0+6BcnXjecywv5k=;
 b=HaKtmpw13XfeAGFbe9LUh8HkVecMwgqzKvz1wK4G9ehGu6VNknyybCxh
 u5tDNz4S1WhUwg0NVUGcah7MXBKe576FHcqK6N7f47VNbqEO7mjdlGh3t
 o+ckgSLbFyvxHx9mIqEtehLpsl469bai5fNetH3kjMZ3f9A+6ox3TMXEi
 gVylsaVFmIQHcBotRTcqBy5sU5jzEHwlPcH4V5I91xqQV8REs6g3+swxM
 aOWjU62Q1m2+z8rtVDlPxwoFV20bG9BSDaxu4h/h7NE98Z1QDXOI65eYr
 lmH/4y9FtxSOhEcGBpPVXhfPSloVmE1hEQM8/QU+sDCIjExFIlR3wpDKk w==;
X-CSE-ConnectionGUID: 52uvkOfYSiORkC1/Ozgrzw==
X-CSE-MsgGUID: 1KtPYMoWTe2OK/8dUjxMdA==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="60469674"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="60469674"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 00:37:23 -0700
X-CSE-ConnectionGUID: I2PYEYlERDStUNjSFBQ+YQ==
X-CSE-MsgGUID: 1E9LD32JQeO5rDwQEMvHrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="188080080"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 00:37:24 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 00:37:23 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 5 Aug 2025 00:37:23 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.41)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 00:37:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dhei7ZTzGnlEpbpmpQ6edGjG07T3dXmyvZaEwLBJBj0i/afGUW1BEC3at4qYPVLXXTtXg4DumTOg0CD0rxtroPHW8Jg/jF0v44bidZ35OL9/Urjr5okGddVEsFRYPXw9/BMPnX0RQRC5kt3tKF7ITuYJolu5RshA5xPSNs3leyjtGTAsh6c61Qmj/N8jcc7xDWg3k4OaDuvwB8X8Rg5SaDQPJwvw8TBITGsrB8D1x+U/abboGA0izQmtLiHzNxuRDftJF4J0QNzNGi9IkWnrQgcNJff6CQiqBEaKVjBfMk31zmv+wtg8bfzmweegK/yv9p/nfrZh9ZQkTwqNGhLY8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=84LikzD0O3JgeVReZwFmuvXDN6JLk9pwSfApxxAn6LA=;
 b=r+De7Bar9cVuwxAsY6efwB9z5tspG7rDDxLrVYhCWiiexTrGEnihx9VTN7wy56mVraxR5oA4U6ux5kPPEv/3ZPvxdVo4W9W8LtRRonGkC6Zo4zQSnkxgEBeBreuyU6g1QWy4M1+iHJ76CRW5bLfJJEp9+vqXt2A/xYGfeKhiBBqHkvG7pk+RCCA1wVU3mBQlMLxdwCBRv3Cl+w58p6nvia9xVwYkaJc/cy6tllukZdnhE7hVrgfk1m61QidlaQjxNxgKPFoOdHeUItHKpx2/Kx+8J/7JPyGlwPQ+OyFzqZhrf51PjABMu62VeDkLJPnMRsnmHSxusmgBTAJrs5aBqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB8161.namprd11.prod.outlook.com (2603:10b6:8:164::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.20; Tue, 5 Aug
 2025 07:37:20 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.9009.013; Tue, 5 Aug 2025
 07:37:20 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 06/19] drm/i915/tc: Use the cached max lane count value
Date: Tue, 5 Aug 2025 10:36:47 +0300
Message-ID: <20250805073700.642107-7-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: a2c4b0a6-e559-4dd4-1070-08ddd3f2e8c5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?1sxrbc3ema5zV3wy+dn9I2k2b+RPlSqmw4ucXnfCkk4xn82aDNrvpf7zpSlu?=
 =?us-ascii?Q?M1N1b3GFkQaEZX/+qPDuTF4slSDebJXxpnGLa7Ws/M8DJufJaXeh0jFUYBeT?=
 =?us-ascii?Q?VgcyfDUPl0E1gIuFboKQUHmgVoTKeqF3Zp6c9QQ5PiUYx7iiH1F3YKLqoQnE?=
 =?us-ascii?Q?kfqoxfGVBpUKYJFgL641uGp5ipkosm+Nbd+WYnyvhu7cDhrdUCeUlIa0Q/W7?=
 =?us-ascii?Q?pV0CgadjbGoMreES3CetdtQ9MsoJjZcXEj8SH1ZAZSISBsJFpUhel1/aR7km?=
 =?us-ascii?Q?YZYRZSwqdYexhEbjieZvW2BsjnYbWbPuCRlWuhzYnYZJsh5frtUSgOvAUEug?=
 =?us-ascii?Q?LWZKL5cTzIhvYGU+CVg5stcD/pVmb7zTcMbMxPBXF3HNbptaewljzHxczy4E?=
 =?us-ascii?Q?LIfuvRxshsO5FbSUJ4MdPkPMk6WDlygpvCKNWCM5YoLuQDBLD28t+RvnRHYV?=
 =?us-ascii?Q?4ED+S+2wy4Nou06UtUXWI5DWqmmCOiIjJChxbs1m2FlCJfWAqechcXIWLR/y?=
 =?us-ascii?Q?//BpgyKFx6iURruf4EFURZK8quHeWE7WplmSYV4hruOz5P0IPl+7wDsQgGEK?=
 =?us-ascii?Q?0a4Ix3br5n6q7NDyIl9V3awolkk/yjuKEi4QTV0wpUqpRHR6hYgy+T3OEDUp?=
 =?us-ascii?Q?YzWwj247sFRLUh7M8GGZKl4VaiBJ5XMuCaos7epBLyd9sDcAj2/LLqP14Xjq?=
 =?us-ascii?Q?UYF3bOw8uirBeX/EZruIq+7nqyfuRCYcyBIHZHYxphVgYUoTPzZet10SuBMV?=
 =?us-ascii?Q?AbzuRn8q2w4VauI1uHDiGY0aA9W+9xskQE6Ki1loCX+MmcxzhissNTQqAw2b?=
 =?us-ascii?Q?JGhFx31mdi293+Q358YH9abrkiT0BMrtngzx9N7lZ3ah0jsoNqlRuP5Ip+zp?=
 =?us-ascii?Q?GhrpLBSRRO/ohlb4DWDfZ7qhXLQTiWi3Vg7vL3GPA1D1j/HHR1/aAGhMJhui?=
 =?us-ascii?Q?v7ybPdFMDrF+bYw1qpOsFPpA0thXMRq7z7HqN2IcdE6e64xcaFEnAyc9ZBPC?=
 =?us-ascii?Q?Jxg6kPD1uLiGfu6h2xm+9B3oqqzSI3wLRwxAnev3ZtynK0bLXS5AvaJbemLS?=
 =?us-ascii?Q?wTfsA/A1y/LMoICfhHkXodnf74A3fz5M7wClb5VBHFgj85c6pKK6R/iGP2a8?=
 =?us-ascii?Q?7DaDcqOJ6TYKfub6tIAwiZaJ0QPTpUSa5v/2d7tPU03C2/J11YWU5cvmk0C0?=
 =?us-ascii?Q?ZHQV58arVs6aaQrXk8BSkcV6OeE8KNY/L2a2GvcuWRQFMFGfbgjVG0vwsFzY?=
 =?us-ascii?Q?uZZ95VEn8UHCVOUVC3ZPonX/poSTY6wAFSCKA1zCNXxhe2Owntv0F+yz+Lb2?=
 =?us-ascii?Q?FeNOgVLW+YpmZosQWnGNRLe52nhp0bl5DgWl/4ykNINNfVqgSrDoJUp2ceu4?=
 =?us-ascii?Q?7J+lnD3r921TNmQhJDTVmKNPLD1Vs1/GhlPwi3S6owN6Z1qtXPUAYkNk+uT8?=
 =?us-ascii?Q?EJTST+IYr+U=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KBK5al9VWmX4Il/rOjadEhdv4T82yz/E1TZ8LMbcnNdZ6owZKqLrr2z9r/Xd?=
 =?us-ascii?Q?KqyEdlj5bqrdx+S/o/5w4MxH5iL7WSt57gJ6ymRemFwMq7exW9sUTAsyw50J?=
 =?us-ascii?Q?eSWkRZVRXbtNi1O/JPgjQ81+1RUjaKIE5HABMFoCAovlNCJGiwWP2o3I4Cdy?=
 =?us-ascii?Q?EbD1TSy2FYRAd3Ytm9NftQVvMoaWysGcUybWRjjJwuCU/2vJB8NEgs76i+p7?=
 =?us-ascii?Q?jjWO4MiUK3679qXfjW9GKBdY7KlQFXMTGoIAcV/PRi9aXZu81I7aWfkIRFrV?=
 =?us-ascii?Q?F06U+tcTh48upnf77qdAhpjrJ/5lnG9tCWD6hDsw0RkWmeSYBJcK+PQBZbQl?=
 =?us-ascii?Q?uKh3RN4Fl50BTyK//NQbcKaLHtX+3WnCreQo3oiw2pqciIuROsJJzR0XFlwP?=
 =?us-ascii?Q?sqmUMJiZNXnQUEb0BnybflyyXzSsvapNn64QcEQkPzTFPFyDabqk+6zh/em9?=
 =?us-ascii?Q?jCkGeIUTEC7SYWfNuEgP9QzIgQeK92Ix94rUEEPosqM5QBc0lQ3xFYKRtx/l?=
 =?us-ascii?Q?pBoyCrHU+vi11t/FHBJ+zP8BS1Vdx9YVndwCQ+UD/P7mCuLdQrUIjYMHmc5j?=
 =?us-ascii?Q?tLh1TP+r3WYiHRLq8XXxOv3lxnZX7eQdlzYXzYleUh4una4pTfYqZoaWiZy1?=
 =?us-ascii?Q?oPmwEapjiiumkfyJ/4IMD1lw0IT1kqDOVavOkuYZQILNWQGhfKMnci7EH0M6?=
 =?us-ascii?Q?P07xUSKiu4/J/ekKaHeJ0HpBWS7UOSNF8360n9wCicHPZMV+c1kkJIHOIWAH?=
 =?us-ascii?Q?7fxql05fDRfIDkQN1MQLbuOyoepMvSEqwhrkwZq9BSDLV/MXI9U4JdjHiYRt?=
 =?us-ascii?Q?0V4NVlaMnmhL4T6+mxBds7ns8CPAjg/8qLfXd/dr6E4I+2NWn4Uw9idtHYup?=
 =?us-ascii?Q?tTXBPindRCTjuf7Ztn9L5vcbWlKH3KHqf791gk4cjJh8uCl/l/SiTygreS7E?=
 =?us-ascii?Q?Dd+8mKQTRhuva3vzOfraCCIkGMEyq6VoU/kW8E8hld3UUB2M8QnBoOQhfWvc?=
 =?us-ascii?Q?73yBoyDoHyxfT7nv4NmWIgcoZ3N4I0ItzGisSvoxCxEAABbnw3U5j2wdfElM?=
 =?us-ascii?Q?jsQuv5zFOmPX+gppc/XQr2GkLgPwkhREa8oaTMoINtRRw7b9SWNeQFJoldll?=
 =?us-ascii?Q?JecIIkp3yz6V0oYlJHVYHzXeFpreVaxTsxiE5D06R+ZaLZiBzhkdJ85Tj8qv?=
 =?us-ascii?Q?n1W7djz3KTOAn2htdNAhhi9Ks1AEr1/vijgUYf7Smp6XOPQV20FEE0hcarWG?=
 =?us-ascii?Q?NoBPLJo2TNHyc11KOrOqzQ5VAcKkkEGZBVOyTqnsxnE7FXhLDzJLdeKhzJvc?=
 =?us-ascii?Q?BTZYz0j1uWPqR8Iv4HJ8e+OnQZnpjyCjn4k1tj4fn98TLCAda+a+W+HpyYqh?=
 =?us-ascii?Q?PkKiKnWw01uE+sTA7xPIGLxKeVtJcJGq6FirlOiy/vZCdfS/VXeof8M6sHjZ?=
 =?us-ascii?Q?t3YLfsDW9jMjngRbrTpp3aq43S6qlaNWY+92VFxB7mHd110pitxcPXls61oC?=
 =?us-ascii?Q?6J6dhADzke8ArOH0RflFFp48y7+1rqsmIK5+78VHE+vkDvz7k/zeILm5GJ6n?=
 =?us-ascii?Q?WtYi3oJdeFw1gc6gJAEjfuN/1C8tKycKxjdktYQBg2M8rc+I1S32BhfofzHt?=
 =?us-ascii?Q?WadVSn9+KFm9J8zq050pzU/oYLu4eh77GxR/7baT1sJU?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a2c4b0a6-e559-4dd4-1070-08ddd3f2e8c5
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2025 07:37:20.3401 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UFtw3PnkOpFlZ2DmRjAgoTvPegTQAoGzygaVuNPmD9PTNC1Xcvbqd9/9Pw77EDXei0oO1Amo0vfd4edlYXsmng==
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

Use the PHY's cached max lane count value on all platforms similarly to
LNL+. On LNL+ using the cached value is mandatory - since the
corresponding HW register field can get cleared by the time the value is
queried - on earlier platforms there isn't a problem with using the HW
register instead. Having a uniform way to query the value still makes
sense and it's also a bit more efficient, so do that.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index dec54cb0c8c63..d89c174bcb836 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -395,15 +395,11 @@ static void read_pin_configuration(struct intel_tc_port *tc)
 
 int intel_tc_port_max_lane_count(struct intel_digital_port *dig_port)
 {
-	struct intel_display *display = to_intel_display(dig_port);
 	struct intel_tc_port *tc = to_tc_port(dig_port);
 
 	if (!intel_encoder_is_tc(&dig_port->base))
 		return 4;
 
-	if (DISPLAY_VER(display) < 20)
-		return get_max_lane_count(tc);
-
 	return tc->max_lane_count;
 }
 
-- 
2.49.1

