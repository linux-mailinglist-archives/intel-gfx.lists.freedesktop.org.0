Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC35AB1BF2
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 20:04:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34E8710EAE8;
	Fri,  9 May 2025 18:04:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Uh/fuJsa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DC4410EAC7;
 Fri,  9 May 2025 18:04:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746813842; x=1778349842;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=lIlcoCG2wtaZa/QaZcTL1sq88JKhJG745TrbqiU9kdI=;
 b=Uh/fuJsapkS1Jn2VGq4SNuvx8H51o6ID+8aZzT0NlPZl6xGMy1tE0VTP
 yATtMYP0CZGVaL5zCb5RAWXzqPKyrTbiqNUOP9tbhWtzs2rJMN2JDvBct
 T1+7Is4Fh+4sRlVtNshqyTjkTvFT2QmT4DbDJ/7WLVu5Ce5hQRfwMF8f6
 duTSnwFLKxyrm/p+LLC4EQq1wsoY+1Jo2+M4R4nko4p4bv5r1rjf2Nn0J
 mtrSKN3qovoJuFdPyuHn8mhzJ1guQFe0knaRMZ0A1uSXenE4EFnBvzBTl
 etcDVfoLtlfMIAG63LSZmnSBqisuHYArXlFdXV8BT8vlAQ7YWIM7k0BTq A==;
X-CSE-ConnectionGUID: wfFJy3zMRMWlrgkNTrCZHw==
X-CSE-MsgGUID: sizkbtKSQkiuXJUf7a1fgw==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="48523171"
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="48523171"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 11:04:02 -0700
X-CSE-ConnectionGUID: Pt+K47h6TXuIDY2kfnheHQ==
X-CSE-MsgGUID: 2pktrX8TRS2qpgRnBZcRJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="137196738"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 11:04:02 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 9 May 2025 11:04:01 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 9 May 2025 11:04:01 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 9 May 2025 11:03:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eYq+hSbUzNt1YW6cgHluZWS6MQJkj1xhgjzUXj+YI1k0AGQ8w6adLVhB7lxbp9oDMJTjlwHe9cx31dQQR4AxDbdbWGM67Q1k5g1Mt9uXrWRlN5ikProItZOzI/nfFai09805ij5KTR+uSw6tMEpDi8bJK/4c76VxhqwrMNzKL2L5lBCtHoJJk3auoPT1YLZpscS27qlLZ5VLUMf6Bay7GxYr4Rbiy/Dmz5/Kjs7KiabyV/nFsMYMMkaLABsYXUH9dMirsIAmzb2xamKxn44tDEnZ7wwEtgLnqdGqW/EQXJo5aKlKWGp2BhUaR9nhXdMgXpv1GTJQoiSplVFL0FZWoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eQiznpDiHNkTU4CbNrmwHElbeFrL42w9Liy7XQFDNR8=;
 b=bJ4XCmDWhQ7Imw1tCMovwZIcx6NSOCp9NhFujfzQQdvEfl2kMj9ucyReev09XS+VfWqyVCuL5id6QKLcXLxXMdXW+zAO+JVzuSm758JNTlqSv0zQuYxxd4gcs3FnVXUO6ejK1Vu5EjoPJEUTGiDixAYBLUTVvYgA9NjkqU4aMQQP8KY+tUSb3Lv3oO6QeoKOZDHbr73ck40SCB13mQJw9HXIBBFvoe8mM2AC61g870CLVmMzYQK70HwuPXxM3scKd3Xidvy8LWTpEwBmDtkNdD3ju6qNMgRY5qu3ZLnG5b0I+a3naK9ZEpWwIJ79S+AW5b7GOTxoUgWDR86Z+gbGaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY8PR11MB7393.namprd11.prod.outlook.com (2603:10b6:930:84::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.25; Fri, 9 May
 2025 18:03:52 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8722.020; Fri, 9 May 2025
 18:03:52 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v3 10/12] drm/i915/dp: Export
 intel_dp_dsc_min_src_compressed_bpp()
Date: Fri, 9 May 2025 21:03:37 +0300
Message-ID: <20250509180340.554867-11-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250509180340.554867-1-imre.deak@intel.com>
References: <20250509180340.554867-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO2P265CA0500.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:13b::7) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY8PR11MB7393:EE_
X-MS-Office365-Filtering-Correlation-Id: e89dec7e-b416-4275-15a4-08dd8f23db69
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Ud0GboF9mqVhZYTiPMcw/Zk1Uk2XPKae4+vn4Rfx8o3ls7s6y3nZ31Y5c1je?=
 =?us-ascii?Q?9XQdTOCyJ/EjTrlK1m5es5IKdkwx30K5HfYyPWmDxTBA151IUJBe9iKwl4u3?=
 =?us-ascii?Q?aMGQ0WSrYhkeN9tFMtFtSI2tUgy41YAiF93bu2BUTuXJcDNTmqfoO7XGa0D7?=
 =?us-ascii?Q?qV5BEG975XcfMHh0W3qISoP0tviM3h70w7tAAjPzqj/c68q6G6dg1pRL89m7?=
 =?us-ascii?Q?4lB0SyAQ735KVwbBob3cU7LrBDl9fUBxZtOomx+4xSUKSYGOHbnkIN1JwvLI?=
 =?us-ascii?Q?O2uUXCh5RFUhmK2J2FF64ClifF608m8yv4JrUtllslCzBpKODoQ4lnsDmevp?=
 =?us-ascii?Q?CBYoV+Ibv25HTwT6ATGCgWX74lJVqYrgS7UhdC5zQrk0sn1TUzCTr/zQlyB+?=
 =?us-ascii?Q?j19KTHdMa0Lubj0BeTQrNJzP+mroAprpMiSIq+C2CWlRWcYQycOCFpoLRIz8?=
 =?us-ascii?Q?5TlZIIUk4+ukkEchGNesZaB9V2lrNElktHoP4rZit7iEa6hKAHheFyoBl4Zb?=
 =?us-ascii?Q?Rj2e/HYQT+mNGAqLwcSgqAQHppflDdGtO7G5JpmDY02+OkH3kMhZHvaMx8hj?=
 =?us-ascii?Q?gNxfhPsNRyFTb2Uzo+7SjWDmEgbJtN9oqi6MIrSyo+SKK6rQJmT7gGHoVWle?=
 =?us-ascii?Q?+PNpIk2ptEVtMLV50Y8uNPLz4YslLK5az5l/bpANYKO2hmPUs/YTiCXyX+lF?=
 =?us-ascii?Q?xPBe7ow5PXdGEz/yjN/PZU45kO4VRR5EqlrUCOWsgMSE2dB8YTrC9PahB2g2?=
 =?us-ascii?Q?pqdODh+1o5GgdNM4Rb1NqtIcUen3qd5dmPqOb25JDM1gyWfSXArydvGIXRDs?=
 =?us-ascii?Q?60tIy8qcOJ80DCyGM5+e06F+YuvFv33PMCaJnwqhhLFipnLRSlCJ9Fyh63gj?=
 =?us-ascii?Q?gU/adMB0XXpl/D+o+piZkWt8qlDNKKaQCQDsNG8AR/w7FTyDh7xqvJKYAvrB?=
 =?us-ascii?Q?i4/0O7MLQa2aU+BEnVW8MJtGAMJtSUxGeEfPJz4TRCF+OgrUf/S/Z+V3Js/B?=
 =?us-ascii?Q?3bXBsqisWwF5YaE/x4bui4jGb5DvqvX4L5gFny0nZaMsOYxiFx4Lsb/szBVP?=
 =?us-ascii?Q?0TGuyWLDE4KvWEWwEunguz/e5WQd8/eCoPkclvOedz4PULL6gOPmWv8M6WxN?=
 =?us-ascii?Q?4tO2TyWKg5S4rB2xx1mbBO230yv7k1cQqohNTp98gKOMoqeRlSHl9wq/w+3y?=
 =?us-ascii?Q?/utXKSM2NzM7GPkRcFIz+JIZEhWJ1p/LUD4galjK7B2ozouaKnkWcmncnVDl?=
 =?us-ascii?Q?IhT7po405DTsjtO0kJimZjh0BQsHfNpLOaHofwFJ9kP1n8vvpavU1OjPQ1dz?=
 =?us-ascii?Q?Dk5D4dzjs/JFlnUJyf4uvjbShgNkZYr76Ynm57MQWnAyzDtVyZgVXPumyDph?=
 =?us-ascii?Q?pWb6WaEcGMRgl0m7v5XJ9paz4evWkTxRKE1Gp7ljy2At00AXQnxSeB6S8yf0?=
 =?us-ascii?Q?G8NvW30Eg5E=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Ug3lR68OVq6NuDcEodGobQ0mtIWaWqVaN4B1l5XbkKjj7EY4okD9JGAev08X?=
 =?us-ascii?Q?QwhWsospfbUDrPiZ0tXFAEXnddonV5y2DJRCKq9vijDW5pFiccHCaQT0E5RM?=
 =?us-ascii?Q?D7mtpXb2CQBocm9E6RFd9Zew+FJbtOqNCddPpXr6Bx1H4M5OOErJmLHAar8Q?=
 =?us-ascii?Q?YkOo68A5POhvTRY8TAGJeBAjxW9KrCYdVDeo9ESmozhsh1IFxRQ/xtokij0J?=
 =?us-ascii?Q?iwfNl6COdc9qHNdc8dXAPJ34NSTDM6vGePkXCo2B8qKBAg6qQX24la5y3gr3?=
 =?us-ascii?Q?KmEihNEugU1LWB0vdKZ45RFMJoPTTXJ/0tdi/a48wA5E+HViC25JykEG+P2F?=
 =?us-ascii?Q?5wM1WmyjUfm1JjQsGh/i2fsxyzJ+W/rU59d2TtDfxIFOeCNu/NhjFq0aACFY?=
 =?us-ascii?Q?jQa0bqrp+jOMkba+8ZnmtNCEBl1Z8xrwF3KWJ41L7n6fF2bGJQI4yCXnug+i?=
 =?us-ascii?Q?gOMmaxMiOiBrhjZE47DQ7cU5J26hddrjIsEiZLTzqQBU+ssxsbhgvgeia8Kb?=
 =?us-ascii?Q?zaA1CjlVf34Jw4QeNwR6XoGVM/jZI/qSpRw4gocTHOfD3q+ak9C3BCF2kFjO?=
 =?us-ascii?Q?IUeLrPt5wl0DOvDCimhCuU4mcLeuu2HnlYeyUQ9BRuKCiQCnRxqYHyB/9RAF?=
 =?us-ascii?Q?6xZ3TjQWa/IksmwfjMkg7kkJX9tlj2//yhspXXxroXsLLUnR/179W273Pu93?=
 =?us-ascii?Q?Ew8mLEVG9gPjsT6NJQCSU3weo6ciq3bZmyDHB0epgiRvN41WF8Usvig9ur4A?=
 =?us-ascii?Q?d6AEQ9MwRQ08GBrzwuzakzgeuNmntueAyPkBDGs5LqrFZwbcZVVNEmP6+yGU?=
 =?us-ascii?Q?e1/vikqJPX+/LbAH3F85i7huddq63HVY5fYvRG8iGCyr5+pWYwQXmQDpK0ae?=
 =?us-ascii?Q?K628HcYpCaOfRENc0HSJiQXiEebP9+dHQcMaGRWP++jA4LJsn+U2+0iA+YHh?=
 =?us-ascii?Q?iBQ6xpKDNTQO6yk6EecAIK1U+JGuv/C0Htl9OH7YlkbGR2Ep6tjFEC9t4wEx?=
 =?us-ascii?Q?lpK4chbTYt1q2W9NApEogYWtvN9aqMAAbs9YLe9cenNM6NwXISQjIoOmetUP?=
 =?us-ascii?Q?QZmOywsJxxLoYk7rkd9oUt1GnK1l/n1CHIOLbyFcIlN9mPW7bgS6kjAmUvBg?=
 =?us-ascii?Q?68C1X6Qr2lIWmNyHRVNbXqWrhPGYJbQUNurbJjybjj0kA6Qzzv6yVKfZonai?=
 =?us-ascii?Q?+4t3v2ZE9+4MvEZJHqMXvCmGnxNthvYnRgpv5FpqfPlvQnDHlWdf/4/UipsZ?=
 =?us-ascii?Q?JRnNFv3YKmVTEs2SWZ1n59fK58laaddOKO9JD3RZoXySNtKRfbIXARihrHYB?=
 =?us-ascii?Q?u49xXmEBS0JMrJCFoW/cc/y/vu8x4alnrJzS+DNO+9SVEI2y4Ww7fVe5jUip?=
 =?us-ascii?Q?p8nPHcsKFyT27ymt0fG8E5m6p0vtwEtbj3SxGo63B3BlAp3BGRNOe1OdMIah?=
 =?us-ascii?Q?lG03WkDp4fvuBvZUJneCqibFrjd6B4jjjyYI0DwCzFPESDISBfVVxI1/uq1t?=
 =?us-ascii?Q?GNHicOnJfMM0Qa6Ocvjm97wCDEslOBh5LZvs61Y3g6eYqr1yYuClK8XS3MuN?=
 =?us-ascii?Q?aSx1/THJwi0G+D3X+sC/wfzBMF35IwoN3/R42hLqOJK7+ImiY2oIsY5R/nLE?=
 =?us-ascii?Q?pg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e89dec7e-b416-4275-15a4-08dd8f23db69
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2025 18:03:52.6314 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +QnrYcey5OABZFL4b2t9GYHvLZC0Gw4ymlKBzr+AeH+Vl6S7WSAXl47Hm/MdAbSdPUIVaMhvQipaunWWLTNnag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7393
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

Export the function that can be used by a follow-up change to query the
minimum compressed link bpp supported by the HW.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_dp.h | 1 +
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index eb3898a49d1ca..3021395dead2d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2071,7 +2071,7 @@ int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector *connector
 						       pipe_config, bpc) >> 4;
 }
 
-static int dsc_src_min_compressed_bpp(void)
+int intel_dp_dsc_min_src_compressed_bpp(void)
 {
 	/* Min Compressed bpp supported by source is 8 */
 	return 8;
@@ -2482,7 +2482,7 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 		int dsc_src_min_bpp, dsc_sink_min_bpp, dsc_min_bpp;
 		int dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
 
-		dsc_src_min_bpp = dsc_src_min_compressed_bpp();
+		dsc_src_min_bpp = intel_dp_dsc_min_src_compressed_bpp();
 		dsc_sink_min_bpp = intel_dp_dsc_sink_min_compressed_bpp(crtc_state);
 		dsc_min_bpp = max(dsc_src_min_bpp, dsc_sink_min_bpp);
 		limits->link.min_bpp_x16 = fxp_q4_from_int(dsc_min_bpp);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 2fe6720a88fc1..0b8a9b939070f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -208,6 +208,7 @@ bool intel_dp_has_connector(struct intel_dp *intel_dp,
 			    const struct drm_connector_state *conn_state);
 int intel_dp_dsc_max_src_input_bpc(struct intel_display *display);
 int intel_dp_dsc_min_src_input_bpc(void);
+int intel_dp_dsc_min_src_compressed_bpp(void);
 int intel_dp_compute_min_hblank(struct intel_crtc_state *crtc_state,
 				const struct drm_connector_state *conn_state);
 
-- 
2.44.2

