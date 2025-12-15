Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA76ACBF86E
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 20:24:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C81EF10E4F9;
	Mon, 15 Dec 2025 19:24:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hYtv3w78";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0633C10E4F6;
 Mon, 15 Dec 2025 19:24:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765826657; x=1797362657;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=Q6ssvN1tqz9OKts3+vZV6pG07UTsjYUNIWsimii0x2U=;
 b=hYtv3w78m0sTr5iPP+9F0uwzTr/shksbwqEKPzUWqkoEj2O9MHOkVeFb
 mKEE0v8rXAaMkZFOAcxBxRb9CzHAp1594q3Vm3qSnLUFHmjCvA2Mi891K
 rkmHIgJxYlVgmC+4RIbs6+ih0h1nJIA64cZScxpJku65GgwqGGSCtln2C
 Cwu0oPPjSUzUEgkuXtzFyoQOeHK83beIhqDnOZuZC0QfaOLIwJ7j2aQtO
 xnPHOu6q0Tz6+EXfVQ+3r6au4M49lzprATFhcIJ3ijXIDe3jXVsvyMzAq
 uRLdhZ8wCQesERGgOCAJwOPg4aLJBAFQQhYXPRguuthFKIBtjdkKK7QP7 w==;
X-CSE-ConnectionGUID: xgO55eETTrCRqd/62yGezw==
X-CSE-MsgGUID: 5f+S2Hm1QbKaYZEf1vqujQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="79106244"
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="79106244"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 11:24:17 -0800
X-CSE-ConnectionGUID: VYacr3E/RJqTvqMWCiXR2g==
X-CSE-MsgGUID: DIpahDrNRn6wGkzK7hVErg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="201987022"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 11:24:16 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 11:24:16 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 15 Dec 2025 11:24:16 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.43) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 11:24:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bzwbQBcWs4hUOROfe8ZYchZ9VrHViQVONwrvZNyqLwxNoJZHV7xzGaJlLMj8r8RuiDXQapzdlqWVNqfCAycfF4/uuPfUpDsKeS6/Mfs+ShPopgwjm7wde8xbKMORlbUCoTJ1JXTLLHmPdMFiejJQbe6pjr1TmRHQmFBk+fHe0s6ZVF7Q5gxcTSHKPFxhpGXLpdElUWpzSWSLNFUMiOTXzejTXi//cmvqj5JVjqae/CDzHb4ROeen7kYfLOFKidzmlVGnunu8vsWXush5SsKEO1YFagnEYuzhdJYP4MI2wn++BLOVWdrpJwQO4KsQ66x7Wqhd9oiN2Kz0ysDmC9aPGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3ViWtyTt3sgllAvxH2pA4dpfrbK2MaQaLOfZYgIJwZg=;
 b=lRo7fxVrDBaBfhLhrLtPrgidVJU8DoDXBXv7XPYpYvTDb7fGdjy9hujQzRUZ1ihDEXa74NzZPQW0WDvFHc5+DAbACDPRUJ/w6ii2wgEBsRcc+aRfpNlnViy0Zh7uhA3yVM8VG6ozjWFQGsE2CNngvFh8T0za/TEpTp8dZh6fnMNzLw1adfcj8taa2OP9VH3969TLIzcJhq5K4WPrIOry1BeSj87yJWgTserwLq4Klvf/9jEM1MjSu34pV8z1dqJB7RSdIpGusThftb16qCLbDsnL38SDndExkGtl1jRTafe1/TWad+f3vWKbAMvwWuFzSHhMjXE0CD+NvHVyF3QASA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH0PR11MB5112.namprd11.prod.outlook.com (2603:10b6:510:3b::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Mon, 15 Dec
 2025 19:24:14 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9412.011; Mon, 15 Dec 2025
 19:24:14 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH 08/16] drm/i915/dp: Use the effective data rate for DP BW
 calculation
Date: Mon, 15 Dec 2025 21:23:48 +0200
Message-ID: <20251215192357.172201-9-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251215192357.172201-1-imre.deak@intel.com>
References: <20251215192357.172201-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P265CA0093.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2bc::18) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH0PR11MB5112:EE_
X-MS-Office365-Filtering-Correlation-Id: 5993a2e6-3bda-42f3-547b-08de3c0f8832
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|10070799003|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?4Zczc6pFmX+jRjmjsfzo+FjyUHL0DDksizQQrLXSn5R7EP6PgO6JnyG5DVHC?=
 =?us-ascii?Q?PsUUXiEvfEB20anEfIJWKAvBwcQEbB9Of8Z84ai5/KxygrlkII48Yu9XIKvh?=
 =?us-ascii?Q?7zPs3GsbOO+a7RfTLTOnF8hAdXK96EIzRZy1xccgs6Xcs7/yZuhNOJ1osOvy?=
 =?us-ascii?Q?cybtsGe88IfVaifrskcTNemiGF0v6e3fBjYO/sQLrsc+FAr7WZ2bxS+OhaAO?=
 =?us-ascii?Q?bj2q6Yu+8mu8B/6LeOcQHli6v4FdXa1UIk6nHlF8wjfO3y28BUNfsghjbQ1T?=
 =?us-ascii?Q?w2mcAFMevpJ6YxNZfhevb/2kuxumeGwJl1kZCnkH+Rd42fgdz2KZuJdOt126?=
 =?us-ascii?Q?WUGjzmbnoBq1M8yReVw/x6zUxzDsXBfnEEeKlFOeKWbfixkgsl+f/jsEsZ5b?=
 =?us-ascii?Q?74KF/Dypo2CZvrA74EYD4FNhU3yQANyE66peSFF3ycLgOB0symz1G0hI4xsz?=
 =?us-ascii?Q?uqLHBYz1wvKiFySgelskb8I9ZkOTIDJQiqIzL9EozD5vZzN2i3l29KurzWD+?=
 =?us-ascii?Q?tUBrdMN7aG3wuiBTEQD9t5f7oNjJS5Nww0iZ5jXPSA86wCiJbFffBRgWNEnQ?=
 =?us-ascii?Q?aOiBAbNJI6anf+FriYMZotNnfq1bivQp4GWrHhsFqpha8/kWvTXJCuphUc0R?=
 =?us-ascii?Q?gtWpy188OivQEEn/WZU8XHT6NIE5sscmE1TWCcF89jrnxVcYiSx0MNbKCjwY?=
 =?us-ascii?Q?u9dk5NWTwRh9vtBUIFGZ34ke5G9mBw4yaiR+it465ncEmxWIaceL+Kq1XXW3?=
 =?us-ascii?Q?VVuM7b/2QgAuy7dO1O9HNJ0WRGPGwM9UN131dioG/ZUYAjZSly0hqrykj+Bp?=
 =?us-ascii?Q?L+c+2jt0JIeyj4XcFa/cS6lS0VEsT6p9FRamkGDgIkDq1dZsH+Q5PqTXlp6C?=
 =?us-ascii?Q?1pNphH3vglLNbQDxQBhozfJqmdNMOE11JFxjA73xLLjcjgyxBkTD2aUcxizz?=
 =?us-ascii?Q?5qjZPGXnhg8nJ4+Zlt1TO4pT9EMM7S4NFcnFnw6sha97ZQSKjdGRjtke8gT0?=
 =?us-ascii?Q?lXcNvyatcbaOe3TM+OUUl6yjA/MSezuEJFLSvTALE+n5mX+QqpAfNWkAo699?=
 =?us-ascii?Q?qx6atobghnp/7SUZkTZ9+CZc56IFioodBsWkwj01vcQQoU7l101iDSfQ9moM?=
 =?us-ascii?Q?DEB1rezbYpGpMe5Pu3s3mEuuuCSZUuRNcTyRt60eB2GCF6uCxQNdu2gmUriZ?=
 =?us-ascii?Q?yvHT7m7xh1TR9UP+2TlX790ZKrzJ5NUwv+9AwR8EsuvKbz8EI9zrZYFJX31N?=
 =?us-ascii?Q?kAR4hCjeW6o55I8s5OKQZrpjnO4jwc9NILWDBjtm+9M8v7hbdmcmug+HifAH?=
 =?us-ascii?Q?UX9wmEZxvS9aWtjo5QotTtVc/G/kXb/8jM29FMqB+b/Z2LowQSdLegxCfDho?=
 =?us-ascii?Q?IKahK2zTIg1cPVdE36kMs5zEiarO7K/IRnhsXhQcN3/C7HGi2qBWvSsuR2zS?=
 =?us-ascii?Q?agek/MCTUkPcKlslFZYlSjMy06JfEuxv?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?iP2S30F4dQYqhSb8BBD+0Tu+STD9SckDsTfdjKNIC1bfbbrEPiGWvU/igPQr?=
 =?us-ascii?Q?i1yveLvGSfz+Y1rnCoxf4/LvE/pfJZ5BqJWMdqoBxSmoWVZvwH3xW/1ScUDK?=
 =?us-ascii?Q?/sZzvulbbw5Pbn5nvQeLyz4ExFHMcJ1MNaABy8VJiEED7PzwWDqWTgY5d/2G?=
 =?us-ascii?Q?jGvwXmBwqf0Da9dZ9uunMOO3MC38m9fxhjDbBq/HyYZl/mWjD9bcKygdFNUc?=
 =?us-ascii?Q?ISA3UWZ/MAd8jds5nX8o4qiCpSt2DQ/0r1BwdYKjCZvq7E+fvgWTC7/WTCZj?=
 =?us-ascii?Q?qNMxKBxlbrLFV3Z4ObgIcPxwsptqeg8MqFwlUVVJkAESDK5oxrB0j4PBNYg3?=
 =?us-ascii?Q?3NQepeuv4+l3W8FpUXEby1MDGmKXtmYARC5tRd++rfmb2Kl7P/malZszELyz?=
 =?us-ascii?Q?CJLw7Le+Wtdm1vDFG37+mTJns10sGl0ytqShLi2kHHoFwmxlDA/DnDP2mVTi?=
 =?us-ascii?Q?AaCxIyNpcD+wrOBtozsseL0ADZ8weZ141zZ5nrbgKCaLcHhOSEEvxvfnxezi?=
 =?us-ascii?Q?Q75zvnjL4zbCgUKk1+KDrHgkjmseyqwZqUPNVsIL8/L0SXrPMMLQH78XF7h7?=
 =?us-ascii?Q?FLi1WSpI5DNA81Ovhg7hlBBfOUgrzMgjfjffDBUvswPYqBMG8xDCXAQQWqZb?=
 =?us-ascii?Q?BP+kVMgaVV4aB+aYJ1rQfZLk/BwUkdKqkIPSzNkWLyrz7xnGyrJIk9R4BSFk?=
 =?us-ascii?Q?epiv22VKtVCKZUQ+bxLUSm8bIX6nQ6CYkWm9IoVTYhYAtgpuiQsAsFHe6EDy?=
 =?us-ascii?Q?+PUPc0AQardknIKjCEVlESpSwCxaiVaelyAosXD7N4hwzt0/09UHAsPqyFaI?=
 =?us-ascii?Q?rld59FahK/7A3pf88PufZwCvQGrjYKCvAijBFeQEbLTDdrUnWnC3ytyaYtA7?=
 =?us-ascii?Q?9yXjgIjYAwND+4awYzM7SEt69YyN8Wgc5cj+qqHpbp1/+Jgw9LbrJAEVnTkz?=
 =?us-ascii?Q?aQ9T2lnBzhBHMQaZTcgKfQpiPPxkDEqK6Ed8olXElRLBSH+2e/LtSDUrduTm?=
 =?us-ascii?Q?YbAZphocow6nS5bSHBa+VcQ2V1PAepwbT2ms4VSCY2pKqNjOVMlZ2iWwJ5Au?=
 =?us-ascii?Q?xLD3hGQ8J/nD0Zaebj35uMs8MzGSqkb6/0mNVwFyRMPccORIx4uT0af5xwx1?=
 =?us-ascii?Q?4RTJg8WnOhLv5720Q7puOIZGaOpiDu1sizmuF4wvS7MA3+GTphhnDzd7/NwZ?=
 =?us-ascii?Q?shytJMgIl/qjNn76AA71NNyWAAYJI0ycknV9KpAnmM8Q5W7/vERQMhGqaCz9?=
 =?us-ascii?Q?OUrBCM8+X2Cd4yDoPwpTbt4/QxMC7Zd6nIsiSYQn1+u+bENs5RnfVBveEV4G?=
 =?us-ascii?Q?9Nw/QPplQcGhi5ElnZbOOiVwsbpdle7D+3Q+x0OkKTBDtN+Mh5Rd6orRMOQl?=
 =?us-ascii?Q?ke3Ukb4OWf+LTuZGKxYMRdeqilU6Z58SQtByGzh8bm9uFQ6h4/PJzDwj852i?=
 =?us-ascii?Q?09hE60eVlt9yikkvcyltC+yzThr/tLxwM6BpIL1PQKKnlHnAUMklJJIweDRW?=
 =?us-ascii?Q?o6WjO+VO3MaxyPEXLmFNzVq8A/rfjP7pB0DE8ARKbimrY6kniohIboT5hHXw?=
 =?us-ascii?Q?9U7/89zSB95pvY9+a/6n8qcLJgXcvxNvc/HBjrI6AUy09+2rekcnpdg/5rJ6?=
 =?us-ascii?Q?IdL69TARWgi/3s4EeU6I1tGtG3vwuccFO21QFoQuY9mH?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5993a2e6-3bda-42f3-547b-08de3c0f8832
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2025 19:24:14.1984 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U1A8GTghpieUX8hbZgVlADh0EUIQ5QklQ1Obk4Ecgf6a9aL2WBqG/RA7T2iwpMQolk+i0/Ug8TlheHM5oPUL+A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5112
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

Use intel_dp_effective_data_rate() to calculate the required link BW for
eDP, DP-SST and MST links. This ensures that the BW is calculated the
same way for all DP output types, during mode validation as well as
during state computation. This approach also allows for accounting with
BW overheads due to the SSC, DSC, FEC being enabled on a link, as well
as due to the MST symbol alignment on the link. Accounting for these
overheads will be added by follow-up changes.

This way also computes the stream BW on a UHBR link correctly, using the
corresponding symbol size to effective data size ratio (i.e. ~97% link
BW utilization for UHBR vs. only ~80% for non-UHBR).

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c       | 40 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_dp.h       |  4 +-
 .../drm/i915/display/intel_dp_link_training.c |  4 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  4 +-
 4 files changed, 33 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index ec4f64090a77b..2a9652dab2e54 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -453,15 +453,15 @@ int intel_dp_link_bw_overhead(int link_clock, int lane_count, int hdisplay,
 /*
  * The required data bandwidth for a mode with given pixel clock and bpp. This
  * is the required net bandwidth independent of the data bandwidth efficiency.
- *
- * TODO: check if callers of this functions should use
- * intel_dp_effective_data_rate() instead.
  */
-int
-intel_dp_link_required(int pixel_clock, int bpp)
+int intel_dp_link_required(int link_clock, int lane_count,
+			   int mode_clock, int mode_hdisplay,
+			   int link_bpp_x16, unsigned long bw_overhead_flags)
 {
-	/* pixel_clock is in kHz, divide bpp by 8 for bit to Byte conversion */
-	return DIV_ROUND_UP(pixel_clock * bpp, 8);
+	int bw_overhead = intel_dp_link_bw_overhead(link_clock, lane_count, mode_hdisplay,
+						    0, link_bpp_x16, bw_overhead_flags);
+
+	return intel_dp_effective_data_rate(mode_clock, link_bpp_x16, bw_overhead);
 }
 
 /**
@@ -1531,7 +1531,9 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	max_rate = intel_dp_max_link_data_rate(intel_dp, max_link_clock, max_lanes);
 
 	link_bpp_x16 = intel_dp_mode_min_link_bpp_x16(connector, mode);
-	mode_rate = intel_dp_link_required(target_clock, fxp_q4_to_int_roundup(link_bpp_x16));
+	mode_rate = intel_dp_link_required(max_link_clock, max_lanes,
+					   target_clock, mode->hdisplay,
+					   link_bpp_x16, 0);
 
 	if (intel_dp_has_dsc(connector)) {
 		int pipe_bpp;
@@ -1838,7 +1840,7 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 				  const struct link_config_limits *limits)
 {
 	int bpp, i, lane_count, clock = intel_dp_mode_clock(pipe_config, conn_state);
-	int mode_rate, link_rate, link_avail;
+	int link_rate, link_avail;
 
 	for (bpp = fxp_q4_to_int(limits->link.max_bpp_x16);
 	     bpp >= fxp_q4_to_int(limits->link.min_bpp_x16);
@@ -1846,8 +1848,6 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 		int link_bpp_x16 =
 			intel_dp_output_format_link_bpp_x16(pipe_config->output_format, bpp);
 
-		mode_rate = intel_dp_link_required(clock, fxp_q4_to_int_roundup(link_bpp_x16));
-
 		for (i = 0; i < intel_dp->num_common_rates; i++) {
 			link_rate = intel_dp_common_rate(intel_dp, i);
 			if (link_rate < limits->min_rate ||
@@ -1857,11 +1857,17 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 			for (lane_count = limits->min_lane_count;
 			     lane_count <= limits->max_lane_count;
 			     lane_count <<= 1) {
+				const struct drm_display_mode *adjusted_mode =
+					&pipe_config->hw.adjusted_mode;
+				int mode_rate =
+					intel_dp_link_required(link_rate, lane_count,
+							       clock, adjusted_mode->hdisplay,
+							       link_bpp_x16, 0);
+
 				link_avail = intel_dp_max_link_data_rate(intel_dp,
 									 link_rate,
 									 lane_count);
 
-
 				if (mode_rate <= link_avail) {
 					pipe_config->lane_count = lane_count;
 					pipe_config->pipe_bpp = bpp;
@@ -2724,11 +2730,13 @@ int intel_dp_config_required_rate(const struct intel_crtc_state *crtc_state)
 {
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
-	int bpp = crtc_state->dsc.compression_enable ?
-		fxp_q4_to_int_roundup(crtc_state->dsc.compressed_bpp_x16) :
-		crtc_state->pipe_bpp;
+	int link_bpp_x16 = crtc_state->dsc.compression_enable ?
+		crtc_state->dsc.compressed_bpp_x16 :
+		fxp_q4_from_int(crtc_state->pipe_bpp);
 
-	return intel_dp_link_required(adjusted_mode->crtc_clock, bpp);
+	return intel_dp_link_required(crtc_state->port_clock, crtc_state->lane_count,
+				      adjusted_mode->crtc_clock, adjusted_mode->hdisplay,
+				      link_bpp_x16, 0);
 }
 
 bool intel_dp_joiner_needs_dsc(struct intel_display *display,
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index d7f9410129f49..30eebb8cad6d2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -119,7 +119,9 @@ bool intel_dp_source_supports_tps4(struct intel_display *display);
 
 int intel_dp_link_bw_overhead(int link_clock, int lane_count, int hdisplay,
 			      int dsc_slice_count, int bpp_x16, unsigned long flags);
-int intel_dp_link_required(int pixel_clock, int bpp);
+int intel_dp_link_required(int link_clock, int lane_count,
+			   int mode_clock, int mode_hdisplay,
+			   int link_bpp_x16, unsigned long bw_overhead_flags);
 int intel_dp_effective_data_rate(int pixel_clock, int bpp_x16,
 				 int bw_overhead);
 int intel_dp_max_link_data_rate(struct intel_dp *intel_dp,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index aad5fe14962f9..54c585c59b900 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1195,7 +1195,9 @@ static bool intel_dp_can_link_train_fallback_for_edp(struct intel_dp *intel_dp,
 		intel_panel_preferred_fixed_mode(intel_dp->attached_connector);
 	int mode_rate, max_rate;
 
-	mode_rate = intel_dp_link_required(fixed_mode->clock, 18);
+	mode_rate = intel_dp_link_required(link_rate, lane_count,
+					   fixed_mode->clock, fixed_mode->hdisplay,
+					   fxp_q4_from_int(18), 0);
 	max_rate = intel_dp_max_link_data_rate(intel_dp, link_rate, lane_count);
 	if (mode_rate > max_rate)
 		return false;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index c1058b4a85d02..e4dd6b4ca0512 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1489,7 +1489,9 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 
 	max_rate = intel_dp_max_link_data_rate(intel_dp,
 					       max_link_clock, max_lanes);
-	mode_rate = intel_dp_link_required(mode->clock, min_bpp);
+	mode_rate = intel_dp_link_required(max_link_clock, max_lanes,
+					   mode->clock, mode->hdisplay,
+					   fxp_q4_from_int(min_bpp), 0);
 
 	/*
 	 * TODO:
-- 
2.49.1

