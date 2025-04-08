Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 633C6A817C6
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 23:44:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EE1E10E774;
	Tue,  8 Apr 2025 21:44:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EhmyjvoY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E27310E76F;
 Tue,  8 Apr 2025 21:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744148661; x=1775684661;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=J1a/QQlb9NTaSXojvMxkgxRxdcxlx/1+T0QYVzLjOGQ=;
 b=EhmyjvoY+c8nOurGFz6jljy83LEZfCq9W6zyOdDg5BsQXS1NZeeNRuwa
 xT8DttJfD3HP3ecwxyud/u9eqxdxhd/h/g3V9uP50zkwtJJM3ODEArx2+
 tMwT4K1ByNhtwqtOGSCUJhgOzmTuuslxO30xlWR+mRJ0Gf0iBC4GeM+q4
 T25E8UY7TCUYzuk8iVDY0gJHGPkQeVZVfknGgEPkQCAPLt6mMALqTMygH
 VE5J3x3SiVQ5Q5mle/Zk2BUFTJjzHn9V43oNK8QpF5t38lj5Tk9NfEosL
 vgwHiwVh5a1D00daMigsr8LXmFRiVIJad8Q9hKt/Ap8vd9lrlzBhTPOX7 Q==;
X-CSE-ConnectionGUID: rUyrNg3/QGinDy1hE5q+WQ==
X-CSE-MsgGUID: TvhssY1xRYKX8u2WWy0AXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="56243165"
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="56243165"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 14:44:21 -0700
X-CSE-ConnectionGUID: jgc/qjSLQ/e3ynVifAA/Pg==
X-CSE-MsgGUID: Pt3Xrcp3RDGvHsE5ENFtkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="128724392"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 14:44:21 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 8 Apr 2025 14:44:20 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 8 Apr 2025 14:44:20 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 8 Apr 2025 14:44:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n3SKfeHuRG6A79pXwV1+Qwfvy/isjgWIWor6QPlJlOMbIZ7D5EZE7Ao6RE6seTwgoWYn2SRF6d06yJ+EIi63XP2qVNCEn7eYUrM1vbntK4MNTzwztyRHPLxDadKQpkOwLUMgdj5GogCtSYOLctNox75jXLrFM/dLEycLJP/02qO44j99juHom6suxzm3XiTn73zQrG8hXHq41ovOY8p/mTehWG0j9YVIKXU0Vb1Tdbw3g0UEGony/nbv3BF172z0g4uFm7AvdZ3mcTtjml34VDPvccDGcCogyov18W6hG2Ql5bISef/CBklRjObuT5zzFXnBL780d7koWrZ5XvTCVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CeDMLGcO8Yh9jHQe9qWWfUYWoYqwUpLmFQ+bLOgB20g=;
 b=TfkVVQLUcFEKzENUK6X6P+ed05Ef0XTDnRbd6GB1+Oa37U4APx91vojtwEJIA3VV1gyWeB2c0vGKA0qO2OYq6Gigh6rAHaSPuYryjGROgTjau4aKw/oyOlK5hlp1NhnxKzLgfgNN3FO+pRxJ9U4svih2yUk+kzfICuMm78u6vTZa6138/TBFplBPeA4Nmds6t3eqSTzsdbdceoLIbZSyju0Aj1Yp5aQjzVyuJX/v9zSZ7Z6Yz9S74Fb7Q/qUwP1L08m6qaH2Z5UNjd0SbG4ZxavqGAqDBCIYIK6N6gYbyF1YDs3jGADcA5/Qd5v64elsPypNeeY2sdro+eSNilet2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DM6PR11MB4562.namprd11.prod.outlook.com (2603:10b6:5:2a8::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.20; Tue, 8 Apr
 2025 21:43:46 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8606.033; Tue, 8 Apr 2025
 21:43:46 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 04/10] drm/i915/dp_mst: Enable fractional link bpps on MST
Date: Wed, 9 Apr 2025 00:43:34 +0300
Message-ID: <20250408214342.1953197-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250408214342.1953197-1-imre.deak@intel.com>
References: <20250408214342.1953197-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DU2PR04CA0060.eurprd04.prod.outlook.com
 (2603:10a6:10:234::35) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DM6PR11MB4562:EE_
X-MS-Office365-Filtering-Correlation-Id: a71c66fb-2e8e-4ed1-f645-08dd76e6700c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?0CjzH+GkANvAKWmpHe6yk77vpCkKkXSWo5HxCg7faCKDfosvxr9sP+dO0zRk?=
 =?us-ascii?Q?tOCJefC+vY2t3PuMZqy/RmLFGmzw21y1WQKCyO61b/ZFgEmKyr3qJklkOUl2?=
 =?us-ascii?Q?N+pCMnCe4sIgGtnUZn3cpiKaZI/ESKFq0BBNoW2nbPYtjFHM4r5mW2xR5adH?=
 =?us-ascii?Q?WNbYkG4MvjEKnPE7Cct3FUljZF5NbZzAYJNMIvFxXfUTRonUj/iILE2EOjM+?=
 =?us-ascii?Q?L3pGCWbCjJ6pZuRnb4rWmEYDmIic5MSkJCoSGwmT3BI6RAMNvnuOgGvoDQYe?=
 =?us-ascii?Q?ZRgvNAe/srYOnSGYqFXvpUxrqTLKTfpTiooE5oMwEvcFUQ6z+ie47JMm7q8B?=
 =?us-ascii?Q?xZYk03VZOmxv6pjVeq0245l+v97Sljb9/QSQJBZjb+Eoc5Az98nNjFZQ3LdF?=
 =?us-ascii?Q?Cmwf9WTQU3W+aTiTc1Gdmxm9tl4EL0y+jMtpB9GD7q2tPPVBqgP2BSqLnY+r?=
 =?us-ascii?Q?aN0LbQ0B6Z40bLF6hdT9mxQBxA1999cCbz7YZ8CSFXfDFAybUAYyeDwoO3Gt?=
 =?us-ascii?Q?IiUrrKaKTTg/7hSlhXUiwFFkJZ0nW48GzWAa6A1Sm7/3VtsqGB4zEDhmQfjB?=
 =?us-ascii?Q?jJDwbVbULBpAi5wCf1vWgc+K47aJlWccMrYLx3nmA/qB0cKtCroKDbhBUDdQ?=
 =?us-ascii?Q?iHlanmTVUImtb5fj+EEhcYvGfyp2BAqtwD9WCzhHzdETK1GF7HDSvz+MlWx4?=
 =?us-ascii?Q?eN3swghgNWBgWmamKCKahtTp27X4pEahVc0Ts/d6mRygKCfmGzBheTCD3X1Q?=
 =?us-ascii?Q?iRuPkrWVIt2Acdc+x0eXA0HbeZ2Q4+F+RcTpmI7ToxbtA19Fnrq15QMpGW53?=
 =?us-ascii?Q?hNE7bvUpI3LBdBzGtEp3yeBvHGld6yFd648fzWVmfzBPCbd0ZVk6w8jPNnul?=
 =?us-ascii?Q?H17C/sse5HMDzydoiJT7EhNz9nGVM4iraE9OQyBF8LXF8Lu3bT28TsIe9dHG?=
 =?us-ascii?Q?qGV9sK7muJDnuSGZvWTRa1fMKP93sz5Lb3C/G+N6/QuhOR0Q3zlOoL+mhC9X?=
 =?us-ascii?Q?OKTbbwRKTbt+H2CL1MgQwMd4vcmDzptimynj8KDAwlkm+iO5ao/ArVeg7Xjz?=
 =?us-ascii?Q?2vFnUXuRoi7YsRUfJ10p/wDjnL9dRNh2W+GdyPTt/l3kndnHfewLQ/0FWkg9?=
 =?us-ascii?Q?h6CQUdPON0ynPxitNDbpHA0uaekCQRqoMNY3bm1m3XZvE78Y+cmAP5HzLJCF?=
 =?us-ascii?Q?DLtOSpmSDpBLyvArvAC6j4Imb2CUYg0uc1XJVwzsQVU8oK/62spFc5HCEFJU?=
 =?us-ascii?Q?cGdLD8e9OJ8wWTLFPzFsjCbflWF+D4OtCyrHsK0cfcWm+CHhKrK99rtBSQtM?=
 =?us-ascii?Q?FGC5YAhNQ8VorEHNygZuVIDtSpKG1FBVmd72WOH39PLkpZ8pY7AREma8kwL+?=
 =?us-ascii?Q?7rMJxx7xYIo+AmcgiMlBcygs1T71?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DWh+BYe9CM9tHUlMvGRsF4cCScr2QgHQs3U/NMzbjJ4C7KMH6AXQwdGX6nfM?=
 =?us-ascii?Q?StPC/Maiv2WaBP6yDQeN0Zoopju0G90grE+4cykmXP/ojuGoqUXKB4u7mXJe?=
 =?us-ascii?Q?mhuUdFNO9qgEixeBhXOiqNoOm45UP5HUj4yjRFZhn/KB3CyB/FkdfA300chr?=
 =?us-ascii?Q?ubnS6WRgpj2t6kcIYqsa8SYEIj1DtklsnQxNWYuxF7VCdzj+X9GmNqNKhBBC?=
 =?us-ascii?Q?BfoFL+Bpa2y3Y6BDpHqoVcTpWXMv/ILptWcJMsasI3vHWOReiDiks4mK5Ord?=
 =?us-ascii?Q?3+pbiziiBULbWDOycUDOydKTkleQNB5vMXYWk5JLuLl5aY0vJWQNeD4DTeIg?=
 =?us-ascii?Q?u/vIjfj0iDMW45dBx3iZDb6ZDZc1GhZl8u3No7Nk0tKUZXTMCvoXWTOKF+O8?=
 =?us-ascii?Q?JhpHzwEm5FwL+yUc9cKFrZh9GyZam+hvBUkoA4WrCnv9GRJjZCDN2q6Sbqok?=
 =?us-ascii?Q?YQtWNLYY6roq3btP6YLK8iKLgJ+UJP2jErN84QWoilS6XsXdKwA5MgU7nWqr?=
 =?us-ascii?Q?j25ehb8GfLdk9O3KRr9eP0Goc2UWhKUxYjuK4DyjuoEYYvNhxi5aOXpMYZ4j?=
 =?us-ascii?Q?Auo9ELEDY/W2ssSGlCkpO5va14esN2dvSHCofUxrc5CfDyukPx1UjHbFr6kx?=
 =?us-ascii?Q?NDDjbntvBgjrD9GxS+YAtqw6KAluYjOO16FGytrascf6fYafiNGedW6IJqH+?=
 =?us-ascii?Q?cswZXWfZu9cQ5PHnuPuOE5fnYU6C/wD9mX6asTDRRHBa1gRdcn1iGApkk3WF?=
 =?us-ascii?Q?5jE7IjB6zV1I8Qa1qsbEJFjsAStDWF8I8VSfV4WDg7MgH1zs5sQjbF8wqOR4?=
 =?us-ascii?Q?eDHNegMe7RYm9LPQgjjduhNvE+rczqFE0tIDrGYStKU7zJtq9oq1P/1gjB+K?=
 =?us-ascii?Q?cv/h27f66GLrvIyeniriYiJggItSksvqSg56p3f6/L+8r1JhRjw0DgZdWOSM?=
 =?us-ascii?Q?4sp3BkusakmdekCXlqj+uVYK/eiSHJLEyQ1PGYwE+lQsllnx0f3DX3GVaaTg?=
 =?us-ascii?Q?3DeWGqMdpKzop66Gp280AeLjv/ZNDQIjZyKzwWOfkEB05HQbHpqk8AJgqL8e?=
 =?us-ascii?Q?nWd4k2p1aZxtlEzdOLZ6/CFNUpyZ1finL/EizLbdpCjlwUz4KKCa+c8PLnNG?=
 =?us-ascii?Q?yzg1IZC1aQQWKRWDy8K3cfq5rj9InSAx3N256fAjH2ZE00G7uWXBHXl+yNw9?=
 =?us-ascii?Q?ntowamqAQCRBSXAVkS50l9MKZMw6BeU9tqomb7i5zNufgXNin674QkGAIueh?=
 =?us-ascii?Q?de1eFNsXTfxJk8SfJKVEzpBc4qUaIaOexfVGema9wE10OpUs82oKCIo1eQEf?=
 =?us-ascii?Q?60TQ4hiGbC7BMPLi6T9Xpb8ix+2jX/6OgL8orRzdmzLQPQa6yQm4IjuF143Z?=
 =?us-ascii?Q?2djI4hnLH+2CRe5QSm7OjIuw/rgC+oUDCbAHF8BjZe7EueIMjHpHhoCElrTM?=
 =?us-ascii?Q?nBJSzqJUcfbiOc/z32o9S4jiPuAJi+Mm04F9GGkT+xqvVV9E9+MhyarnsRow?=
 =?us-ascii?Q?dvNB43Mq7P+4m5kb+0+3LrDjciPJ2H1MAzIV42KK60H3IIPVKmfi/VeZpmaF?=
 =?us-ascii?Q?amD//AF3posJ2ma2gwaxB1r8vtLjkmKI3epmLwQF?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a71c66fb-2e8e-4ed1-f645-08dd76e6700c
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2025 21:43:45.4345 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KyYWk2P0isIQ6pBImQENLVoFsdLTGUkocyN12w4JrauOIN2LJvnd59N8urLhD/8K9etKj5y2SGCJ+Mi8ZbtFjA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4562
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

Enable using a fractional (compressed) link bpp on an MST link, if this
is supported.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 2 +-
 drivers/gpu/drm/i915/display/intel_dp.h     | 2 ++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 ++-
 3 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2944ae0d53e32..3cf8d6510bf90 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2103,7 +2103,7 @@ static int dsc_src_max_compressed_bpp(struct intel_dp *intel_dp)
 /*
  * Note: for pre-13 display you still need to check the validity of each step.
  */
-static int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector)
+int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector)
 {
 	struct intel_display *display = to_intel_display(connector);
 	u8 incr = drm_dp_dsc_sink_bpp_incr(connector->dp.dsc_dpcd);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index f3ca6966abe00..c974e4b97338a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -210,4 +210,6 @@ bool intel_dp_has_connector(struct intel_dp *intel_dp,
 int intel_dp_dsc_max_src_input_bpc(struct intel_display *display);
 int intel_dp_dsc_min_src_input_bpc(void);
 
+int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector);
+
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 4e607c0853cbd..35214d9a8c781 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -495,7 +495,8 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
 					      intel_dp_dsc_nearest_valid_bpp(display,
 									     limits->link.max_bpp_x16,
 									     crtc_state->pipe_bpp),
-					      fxp_q4_from_int(1), true);
+					      intel_dp_dsc_bpp_step_x16(connector),
+					      true);
 }
 
 static int mst_stream_update_slots(struct intel_dp *intel_dp,
-- 
2.44.2

