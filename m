Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC798C8FC99
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:51:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47BCC10E897;
	Thu, 27 Nov 2025 17:51:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Cq5kQEyW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 133CD10E885;
 Thu, 27 Nov 2025 17:51:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265888; x=1795801888;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=b58dyOqVBljY9VEnkD7aA3UkNNl+kxoVh39I+VhQfuk=;
 b=Cq5kQEyWOr2+d9rC4mu9LGWVGJdOZKNXpBAPtudFtnngjPmANsFKin6+
 xcg2lnjN5fqINTTGDKBQLb+MzE/NowuPqfQGgBFlf1E7H07SGqD3LDyel
 nTRgb1Kj1uJqdhdorN+GDiqjxq7qc+WLSaYAvShjlMDnKB3ZxOTT9ugm4
 75lVRgCQEUGKRKPtC2wKlWRFuYtzIbGU7z4QFVeH+Ic0LtWv6GMss15jK
 aBtaDZpMtKmJYkG5w/mqwHIqkaKUPsjzeIiOIQoV/qFXBVQDB9DJRQMj1
 0Ctq/t88k/d00RfS013h9z0+6g6HrLBHFcO4Cu+QsMwsLYQqqnuJpaCD0 g==;
X-CSE-ConnectionGUID: I6nRBRYxT7214Curyc5bbg==
X-CSE-MsgGUID: nyHIdOT/QM2bbaQKK9KUTg==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="66276771"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="66276771"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:28 -0800
X-CSE-ConnectionGUID: /WfKyDqURGGMJoRyRPGo0g==
X-CSE-MsgGUID: AhENqTWmT/+5NkkmVJh9Ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="230562060"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:27 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:27 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:51:27 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.53) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AFPyo4fUKLt1LRGYmf5niFYJLN9/GPUK3sewrLofJNV+wiZGMtp4mrlyGZm5C50upJ0cBXRTGzsa94CJw7iYC59AVj9MF6X11zI5wTNMGQImHDeunPIRC0GLrONBefNzY068+lmGJ3CYcYpV6yxkdMIUzGYPmCz1KutjZv9VMihovmF4JPQ3B5FRpRfype3tp3vu5vYYfQ9RkBnJZIdegEWn1ojZb+cfs2xp9/0Ene6lIVbRDsE0Bb+Ngh05E30UT21cg8tz65wCpRa+5bacqEeIKCUMYqkx35QwrfvYSJ4mNaHFAfrdnVb8Mb9UmmNWn22dTsWJnVQ6pcVmhz8iBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r8/ICS4qHln0GnQA2RwaFirq8+lLjH0JJmfsO7f4ItY=;
 b=X3INsIUMsmYusBNkFm5TKxhoDUSJxGGFfNIEC6pk5//jYAoHuPCi1RX0dLo0Obwn2i5adtxbGpdDPlkfCKenzXib7iGN11KhMg4MlVdTFe8luqpUUK3meH/i/L5YkCuDKl8xKcWxdbNlCNORNohJngnl397ZUn8w20BvXGAfIMsPS4PQNSdMBo6MCTaMEXkx3pX9QJ3Y3kb7lM8Uq7nhJmE0+qV/DdpYM6a4hMxrU2AekeAnVu/KYZoa+393+1HUSPidZrXfkxwORanKOlv83crxky2AW/+HAQIO/fhDcWvpXsmLom7X2Eodr03gGptm4ClpRVS2Js8/ozCCAdrdMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH7PR11MB8550.namprd11.prod.outlook.com (2603:10b6:510:30c::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Thu, 27 Nov
 2025 17:51:24 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:51:24 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 27/50] drm/i915/dp: Add intel_dp_mode_valid_with_dsc()
Date: Thu, 27 Nov 2025 19:50:00 +0200
Message-ID: <20251127175023.1522538-28-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH7PR11MB8550:EE_
X-MS-Office365-Filtering-Correlation-Id: 55c8ef93-be7a-4353-b63d-08de2ddd94f5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?nsoc/FWGC2If4OoTBJ+0SwZlExdh/+w2zXA3UiR0fiXPD/gjieakjTPrpPaO?=
 =?us-ascii?Q?IE9aPBnow2/SGYxhm8CoDzQuzTbKw9JzqA4dCsmIFfMrNrNR0vZk/ci3lp/z?=
 =?us-ascii?Q?JYUHQuSNDTSJ+x8vpEjj9VxIXsObjoEkFFzNulCM2RmwJlGSbbkgnW7+mcjn?=
 =?us-ascii?Q?jXki/uvFzW4k2ze+PtIVdoHFEs8xKZC8o8rBLPO9o1iXu12BZM7x/Mh12PR1?=
 =?us-ascii?Q?21EYRAI8ghw1wWiVLCkQvbW0C8WPAfpmJtGyAtVdTSq7hEXKovL+CGn1TqTw?=
 =?us-ascii?Q?dWz1qBkYzC/lkw2DAZb269SPQP7DMqG+C4nmSbNrPU0w+Nba+dfz+UyVyu6J?=
 =?us-ascii?Q?ONmXKKOq3hCMeRMMtF8VX0Dcxew+fz/mHQraXMiCqWa/sp7yiAEI0Vx6DJSH?=
 =?us-ascii?Q?LWdDVXCkG3LVVxMrq5MJwEi+9U+K7gzu4QzGInyncESdJqUKziQHCl3FFoAo?=
 =?us-ascii?Q?meA9LcSi6z4eETa414L9cJDyBSSGJD5baJHEv6/QXkWI0K8G6Y9Np7RV6M0N?=
 =?us-ascii?Q?mLIe0Bzc7YSl0CJuvR7dFdvxHGUJ6ZMYEk21XjVCLWDk/pFKquwq7KzTpGHs?=
 =?us-ascii?Q?63IuaZ1QcDQ+fXht0BwDlmuYxnCETHIkRJlFSGo4XUpbwtkECXKifly0CrbZ?=
 =?us-ascii?Q?CNbyeuLD5zYl5UWCPqfWFWvIUnnqsrekhr842zVrFkagwFXce/aKcQFMRnXH?=
 =?us-ascii?Q?9lN2Yt8VGoqBXfmGCMZK8SY2dR8P7Q1XKSdf6DiihqQRqBNw5QzDzT+FeHfn?=
 =?us-ascii?Q?LwfO9f4Owrj1Um7ieaYr4/oFdZgq2Bn+AYi6dZDDQNmWxME4yjYilUteCIRB?=
 =?us-ascii?Q?bR5crqtpxuW2Tkhl786eUpUgD0nHJJEUqGHxq+HlezNSIfpbzWxG8Jb/+PSN?=
 =?us-ascii?Q?3qA53vw82HVvtb2cS6JQHpbHRxWjzQyQ4OVcm26xRx8P/fvDOfumpNT0MOwh?=
 =?us-ascii?Q?l5EaeVpPqPcENhlrVyneOx5uxUpPviNDs1E2YcnPVlY103koN7HfKsGiDOBF?=
 =?us-ascii?Q?IEK/Clde/VCvGao5tljaAXrpwiErpgYKEetMecSRG1jAJYemdJIg+MhVWK0y?=
 =?us-ascii?Q?n5GPzE4CkG0q2wXsB4Vnm3CA9LjtCCVX/fwo3ZtGCDjo9hiWIAHFKr0uEKWk?=
 =?us-ascii?Q?LqXM14JXnZudMS1UCRcB1ZHRs10NmCSdeAROHwOt3brpSCQl69U83y7dtHEa?=
 =?us-ascii?Q?blLNqY+hNXBtHrqq3L4qNjMhkfGiFo0CQXcEUlqByvigvSAOeuBPYxS7MeFf?=
 =?us-ascii?Q?b+c4yT4lZ4je/HbSBn1qwNG0s8mwOp5lLWaAWkXNk8y019s0Fr/ZuSjMs7st?=
 =?us-ascii?Q?VqNv0WyC2lBqCzEB9TwPTcEvdqRNmEfc7zgEAfucX66t5yl51pj95+DjCFRH?=
 =?us-ascii?Q?SYu61pc/1kiSay9UpJP+tIDglxGu189e+SX1vLuGdTTbr8nE/8Tmh0GMsi/D?=
 =?us-ascii?Q?QQqejYOccKoPCUVvM44haicJht2bPIiX?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FS/ZarO3uxDWarezw8MpckR9zkeq+4vInkHnq8wRj42MjdzTbYdxy86U4uEr?=
 =?us-ascii?Q?Q0a98p7jls0pgfH8NgL/1hJ7l+VgTrhaKEmUtUDGB6CZynzQwlDdg/rUh77U?=
 =?us-ascii?Q?ZBgQWmG408aiPiT6wPYDIfEPQPbefqvqSMOO60VmIY/02v6fB5phr/wKp6yk?=
 =?us-ascii?Q?0gRTM+ECc3cmBtOgMGinxaNZDnKwi36j1TFXkrpslHnUufCXbmn8+5zbLigK?=
 =?us-ascii?Q?IdIrvAVboohs7wPLHI7r/q5hCpuD1W0sB2XPt3SY+ovuynkjY8uaFckmICiw?=
 =?us-ascii?Q?011Y8kMIZZW2KGYWI4usPiFn3brtjaWPX/9CWpkNjwnnGE/H5gItWn5m5vY9?=
 =?us-ascii?Q?yBoy+uzrdopvKR5VkZArPNHpVM2rqvUUFr4RlmJY4g5LgJ1+QD79RGD8j6bP?=
 =?us-ascii?Q?1r1zAPaWQBqq6riob+WCWD74b2diRD44I1BOG0q/9doFmZFcl8rP9S6iUcVS?=
 =?us-ascii?Q?//dgFyIvZJVwnkCtpZ/3aCe9iwIWjFwvHT7rlEwum/G9uqPyR6yQF8UguP8f?=
 =?us-ascii?Q?pg7wybXIF1s5Z5oswyxIS2HUQg/eMWyxknLdzTRPY/eU3kbq6j/OE0BxoeGb?=
 =?us-ascii?Q?NYsi1Y7IvBOdQB4TVKtK93N0bYDGkTS7E6xldljWoY6iq3ja3f8KWW9EQv99?=
 =?us-ascii?Q?gnPROR7z2hTDVIHHv756mCUTvLcYnRGncY9nswdisKW6RqxqKIlYP+jybOUp?=
 =?us-ascii?Q?hUFWz9D7ql2mZ7h9HH/RAnXtppBtlKmFU8FtjQ2KeFlXHfzufIpZaUegxJ0r?=
 =?us-ascii?Q?TONg6tHwmopRhgIDQQYd7i9r9jfhbW6u5bFKFfoipwfbSLUDC8WINI7gWktT?=
 =?us-ascii?Q?740f6qvOFsd/DGSik4X/CQw9zgLMYNXjc/9oEgXpMSMIY4h3TJKuKCjMbu41?=
 =?us-ascii?Q?aPb92MjextpFMc88VQdMHj8E89Z4AEEj1kptJysKoIJ+71zG60HDXZj4rwQY?=
 =?us-ascii?Q?inAyIVMDtsWtqvxzJQlVxIvdhnN5UtOT0FUCWZHpN15rtNhxloJATrOrXOHf?=
 =?us-ascii?Q?X1bvX7d4qNGe2gVP+kJRu+eIzi1134y3iFyAo4Qf+sLSyELy3Bis+XYFPS6J?=
 =?us-ascii?Q?5HDRUWTKI0ZsIrio0kvZRvYwHDldCepiv4UfLRqQ1rxuUPy/qIk2X1y0DJ5y?=
 =?us-ascii?Q?g8eTKnlY9s+6fBZP7X8SzuVIci07s2DDgxPAA4QEo6ePqnzlJr4tFbACSzN2?=
 =?us-ascii?Q?3xpA9OObG7PSuWVQFC0RTvULC/YK8BNUFmoZ93AyGD9D6eLgpjAiaRL/2iXv?=
 =?us-ascii?Q?hICpZYRqTBRW2rWq83PsLSqlwGgogc/TAt/LQGe17I5atRKmiSWlg/QL6Eky?=
 =?us-ascii?Q?ni2czEVb9c84cfFS8VC+a4adyqFk8fsVsUNAx43n7liTCwybTG1MhQMCXLDH?=
 =?us-ascii?Q?Fs6PdT0ye4gZJpvn3cp6mpwP00gRmYLYoG9wUO7jM1wvth9rjAh7ybBPB6Wg?=
 =?us-ascii?Q?rdYC/JBUwyUg9MOeDpYC2MTiiq5rdiYpFvHQEYOlJpPitPAWSYxXcdc0n6Py?=
 =?us-ascii?Q?26CVUAny1I+gBdvKYbYhbmY8UzaiNgFCMH2GhnSS7jk66bDL8WVzpJh3+iKz?=
 =?us-ascii?Q?nXcVQRhQykT9vmxrYE2eo0bZwl+UgISYNnmd69etqEQc4dVwSeRAI70NeWgp?=
 =?us-ascii?Q?pCMkW0SsYY95Z+GYEn+LOvl4JQCi7NrXkDB0FzPg/8QH?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 55c8ef93-be7a-4353-b63d-08de2ddd94f5
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:51:24.5603 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: H2gfPgQvQnuGep9ldzMuZCQ8ClhboFDZGxBakXGaQujvEOlW5uox4yN6oqYPlo9B+mmw0KVXnV/DAbNtZPSRDQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8550
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

Add intel_dp_mode_valid_with_dsc() and call this for an SST/MST mode
validation to prepare for a follow-up change using a way to verify the
mode's required BW the same way this is done elsewhere during state
computation (which in turn depends on the mode's effective data rate
with the corresponding BW overhead).

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 57 +++++++++++++++------
 drivers/gpu/drm/i915/display/intel_dp.h     |  7 +++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 29 ++++-------
 3 files changed, 57 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 9deb99eda8813..b40edf4febcb7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1579,24 +1579,20 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 			dsc_slice_count =
 				drm_dp_dsc_sink_max_slice_count(connector->dp.dsc_dpcd,
 								true);
+			dsc = dsc_max_compressed_bpp && dsc_slice_count;
 		} else if (drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
-			dsc_max_compressed_bpp =
-				intel_dp_dsc_get_max_compressed_bpp(display,
-								    max_link_clock,
-								    max_lanes,
-								    target_clock,
-								    mode->hdisplay,
-								    num_joined_pipes,
-								    output_format,
-								    pipe_bpp, 64);
-			dsc_slice_count =
-				intel_dp_dsc_get_slice_count(connector,
-							     target_clock,
-							     mode->hdisplay,
-							     num_joined_pipes);
+			unsigned long bw_overhead_flags = 0;
+
+			if (!drm_dp_is_uhbr_rate(max_link_clock))
+				bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
+
+			dsc = intel_dp_mode_valid_with_dsc(connector,
+							   max_link_clock, max_lanes,
+							   target_clock, mode->hdisplay,
+							   num_joined_pipes,
+							   output_format, pipe_bpp,
+							   bw_overhead_flags);
 		}
-
-		dsc = dsc_max_compressed_bpp && dsc_slice_count;
 	}
 
 	if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc)
@@ -2704,6 +2700,35 @@ static int compute_max_compressed_bpp_x16(struct intel_connector *connector,
 	return max_link_bpp_x16;
 }
 
+bool intel_dp_mode_valid_with_dsc(struct intel_connector *connector,
+				  int link_clock, int lane_count,
+				  int mode_clock, int mode_hdisplay,
+				  int num_joined_pipes,
+				  enum intel_output_format output_format,
+				  int pipe_bpp, unsigned long bw_overhead_flags)
+{
+	struct intel_display *display = to_intel_display(connector);
+	int dsc_max_compressed_bpp;
+	int dsc_slice_count;
+
+	dsc_max_compressed_bpp =
+		intel_dp_dsc_get_max_compressed_bpp(display,
+						    link_clock,
+						    lane_count,
+						    mode_clock,
+						    mode_hdisplay,
+						    num_joined_pipes,
+						    output_format,
+						    pipe_bpp, 64);
+	dsc_slice_count =
+		intel_dp_dsc_get_slice_count(connector,
+					     mode_clock,
+					     mode_hdisplay,
+					     num_joined_pipes);
+
+	return dsc_max_compressed_bpp && dsc_slice_count;
+}
+
 /*
  * Calculate the output link min, max bpp values in limits based on the pipe bpp
  * range, crtc_state and dsc mode. Return true on success.
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 489b8c945da39..0ec7baec7a8e8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -150,6 +150,13 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct intel_display *display,
 					enum intel_output_format output_format,
 					u32 pipe_bpp,
 					u32 timeslots);
+
+bool intel_dp_mode_valid_with_dsc(struct intel_connector *connector,
+				  int link_clock, int lane_count,
+				  int mode_clock, int mode_hdisplay,
+				  int num_joined_pipes,
+				  enum intel_output_format output_format,
+				  int pipe_bpp, unsigned long bw_overhead_flags);
 bool intel_dp_dsc_valid_compressed_bpp(struct intel_dp *intel_dp, int bpp_x16);
 u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 				int mode_clock, int mode_hdisplay,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 0db6ed2d9664c..e3f8679e95252 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1462,8 +1462,6 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 		DRM_DP_BW_OVERHEAD_MST | DRM_DP_BW_OVERHEAD_SSC_REF_CLK;
 	int ret;
 	bool dsc = false;
-	u16 dsc_max_compressed_bpp = 0;
-	u8 dsc_slice_count = 0;
 	int target_clock = mode->clock;
 	int num_joined_pipes;
 
@@ -1522,31 +1520,22 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 		return 0;
 	}
 
-	if (intel_dp_has_dsc(connector)) {
+	if (intel_dp_has_dsc(connector) && drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
 		/*
 		 * TBD pass the connector BPC,
 		 * for now U8_MAX so that max BPC on that platform would be picked
 		 */
 		int pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
 
-		if (drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
-			dsc_max_compressed_bpp =
-				intel_dp_dsc_get_max_compressed_bpp(display,
-								    max_link_clock,
-								    max_lanes,
-								    target_clock,
-								    mode->hdisplay,
-								    num_joined_pipes,
-								    INTEL_OUTPUT_FORMAT_RGB,
-								    pipe_bpp, 64);
-			dsc_slice_count =
-				intel_dp_dsc_get_slice_count(connector,
-							     target_clock,
-							     mode->hdisplay,
-							     num_joined_pipes);
-		}
+		if (!drm_dp_is_uhbr_rate(max_link_clock))
+			bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
 
-		dsc = dsc_max_compressed_bpp && dsc_slice_count;
+		dsc = intel_dp_mode_valid_with_dsc(connector,
+						   max_link_clock, max_lanes,
+						   target_clock, mode->hdisplay,
+						   num_joined_pipes,
+						   INTEL_OUTPUT_FORMAT_RGB, pipe_bpp,
+						   bw_overhead_flags);
 	}
 
 	if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc) {
-- 
2.49.1

