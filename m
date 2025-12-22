Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09AF1CD6918
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 16:36:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2C9010E6D4;
	Mon, 22 Dec 2025 15:36:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q35bJiTk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D183D10E6D2;
 Mon, 22 Dec 2025 15:36:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766417774; x=1797953774;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=70tVHVqcQuUE085XaFWbAQ88k6u2G9cAAHMlYKPGkEA=;
 b=Q35bJiTkrSy5qlYU2e4HpAm1seKgL6fxxaad5kzObQJk+6hqbEBfrJrs
 6M/kbyuKjt3mt4d4T8qvb5sNmdpFuyoYpQeibk6zlPJ7gCfgEBXNuHhWg
 jnIxjhLNBScQFi09hbO1TTKo/6bqFL7LdunS5zcw7cqssqFdy4tf3QtJa
 YCR1HWE8txTtkbwnZLqtjq2bOdEEvYu4Jb5j4OLKcRs2iGZGovJ1oQL0L
 I7d++jv+Kh5+Mi9jem4DZiSPK6EMfJ3MQ8L+6HDl2dPFPmF1pe+gw81nU
 Q4f5bBxaUQ/YN2Gq7sf87majhqykiSR0xijVETmR7PvYPJh1cUWV4UoXl g==;
X-CSE-ConnectionGUID: 0wsZrTvzS6m8NXONb9chng==
X-CSE-MsgGUID: UC3zSqvdTvaxu+v+hoxLCw==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="68316252"
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="68316252"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 07:36:13 -0800
X-CSE-ConnectionGUID: utBkAsmuT46G22F9UhsC2Q==
X-CSE-MsgGUID: SY70LKYUQBO1s/D3+P/uLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="198692324"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 07:36:13 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 07:36:12 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 22 Dec 2025 07:36:12 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.55) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 07:36:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k3tMTJYGX4Wewf4hAgmjYUK6m9kmzPy2yvdJa2jR4xW9PVOsmbA8pPSrqkc3Zlx4EhHbHSQ0qlGQXsrPZylAp7eM3HEAo8wdl0ojCWCqDJVuRst2rUUSBv490TZHD6d2a3lLPC1XoHlPy/aR+luleoph+Bn8j4DaHaKjTfYKt82ue8rNtac7/cFI1LpfWvdrsoiz2xi/mmcGE2qtOnocSviFK2coAORsWrH+eln4yTtbK9K4sPzeYQudUT44tWi+ayI8nj9QL/RYkZLBqH/4lxqS+rBLOEoBxnVJAQ4yQbtCb8xh0Ahi48/+J1DwM/SqAB6AVFrPE97OkiIoqzCaVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9wQNLmiMOOTwSwtRZu/uY71DJcyx7wzW0ImYQKYE7Zk=;
 b=VRh3MCB2kLGbxvWoLpbvevnLz+0hQ3akWTyIU+dWO278RVGXCAOMQza74NF033ds/oXMfqDLJ+KbugmxiXWAAKe1+RtALWt+IuINIITitHNl1ymCe5Ql1mOnaU0YQktcGyEzj3jB/1TIEJNMc965RWj8Kh73dRxetu2zVUzZwy/7cRt+RnoeJxQdZkrbwZ3od41bGy7K7fBek4tuhIfxwos1/6XO6E2LmqCk3hACoFIqmwZIQXLy6GJw1OkbimocH63I9QSXl05/YWEgV+2yCePRH8wqzvvVFdFDoFPcl3Ryx8kv3MKG7GStVbCjzPOGpN7p/rdWxgpEUp9hTUtUbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SN7PR11MB6602.namprd11.prod.outlook.com (2603:10b6:806:272::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.8; Mon, 22 Dec
 2025 15:36:09 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9434.009; Mon, 22 Dec 2025
 15:36:07 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH 01/19] drm/i915/dp: Drop unused timeslots param from
 dsc_compute_link_config()
Date: Mon, 22 Dec 2025 17:35:28 +0200
Message-ID: <20251222153547.713360-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251222153547.713360-1-imre.deak@intel.com>
References: <20251222153547.713360-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P123CA0569.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:276::9) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SN7PR11MB6602:EE_
X-MS-Office365-Filtering-Correlation-Id: a344bfb3-8c28-4d9b-14a4-08de416fd28e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|10070799003|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?UW8JNr1Q0InlMh3KfPf906AdJYD/YCKuj7yynBmn/6iK3e002VO1QR7PyKF9?=
 =?us-ascii?Q?zRcaUa8CTUR2ziBJiguCvP/HemoBgfBt1Ap1F6qw3b97sGft60VZUc6pO6a6?=
 =?us-ascii?Q?q7EsODYmraF9ler875Ik+SyhPockeAlzACbl34Rn2pO7ylqwE3UZU996GLZV?=
 =?us-ascii?Q?vT0Pyg45gwC7ijdgdQFBHA8TbpxgOKRSzzLMQD3bR7wtdt2M68LKAw4hy33E?=
 =?us-ascii?Q?832G0RTa3IbB15X8ceW4JgwQSe4/L7g/3bbZrqy5ZbS9iG/oNzGKqVqgKOof?=
 =?us-ascii?Q?vvdqlHbs/bXz2ulVqdrFwQhPtutobCP6qcUw0rYzkb18DPO5QuMjkuMlmHcI?=
 =?us-ascii?Q?OUyvXL/iRL+kAgxvhr9E2uuhkgQG6kSa8cS9+sSE/iLNzJe1Ef7uc5OgE4d8?=
 =?us-ascii?Q?19GHSsZB/6BOwtBQzFMwrUN8zbXynQLyEMbs4le4o+zjM1yhn2yqtia60gAf?=
 =?us-ascii?Q?z+lm9oVKy1gg6WQfKB+AfIhsSTGFka5bvOH4TXHVTp/UAgMgsIo/RB29hNhM?=
 =?us-ascii?Q?ehkEU+CFwWysgKzyAF2Ku7nuKsW+LmbZ2lg3f8Y5bEGqeuVAFh7MM8HE8Ojp?=
 =?us-ascii?Q?bnmuSb8dcVvyMvkGrWqAin6AErhP87em/68Bac2NY4cYh2F+zKvDLN8CqSEE?=
 =?us-ascii?Q?elPAeNSpTnkCCDAqewWylZCYMpM95uIra1041pRFktBefcop/P+tBIscvpw7?=
 =?us-ascii?Q?tVZoVXkg7zBJWV/kBqOd95oVA8FeCKnWZd7hwyCEO7dWDXOxbfcQwVvtbTbk?=
 =?us-ascii?Q?0WOsB0MjL4mBn0euSzkFFbuiaM3ufUyzUusMJKEf252slJtCqeor/RLEcWEM?=
 =?us-ascii?Q?WECX2uZ7f8pWd6uBulcTqJdhiQhsTOoY7FxTjT/jwajvFcg6uymfcqBsCcPa?=
 =?us-ascii?Q?0z6fcSBE0b9scSWFltbzkvr/cYr7R+G542M5ArRNgOx5YUOqIcfK2hO+180L?=
 =?us-ascii?Q?rN1e+6YlszygDFeeXcFmGDG1qoBoX28nre2Qq6k5cJJaLmP1o+7TcWsvhqD+?=
 =?us-ascii?Q?RzAXi5KThfO+eN9HyunRSM7tOyCIOYwSDDO3ySw9v5xNc3P9polmcysEWuJ6?=
 =?us-ascii?Q?/FJRmH0Oe5G9DoOuna1iyXZMFc6bWHdpWgGtbaOFxyx76p1VgNm+PEr7/s7J?=
 =?us-ascii?Q?KXPrIzL0t9kJI/NuDEYGlD02sD2xDuy+fO2EKylYs70HhDYOr5tOBM2a7zLj?=
 =?us-ascii?Q?29Au1j8NuD5ndk4dCU8vY5vyZhGCok5infgChJSvCbb1aPjADtjNM/TKfFl9?=
 =?us-ascii?Q?ke/XSrhp75AhXioo6zkMPoAjDfYVDVjyaKF83Rmk0tgEI3XiU1cAJj61yKkn?=
 =?us-ascii?Q?rdQ2D33rH9pfDBUkef13yR4FxwpvQ0T2/SB9Fu5vKrDHF+JULI4x9ud4ysw4?=
 =?us-ascii?Q?xpSQe0nrRdbWsQ8lcEjex7mF1ja1+hpD1RQ0CMTkTZVV+WY+gW8LwDi04dm0?=
 =?us-ascii?Q?fWO/l010wD6pbKd3gC1fsbYfKszHL1EC?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?YD40H/tVeXJwkoh5Z/sXa9kwRZ8TqLG1IKmY5PPolsMs+vVX+35MAYR8kF8o?=
 =?us-ascii?Q?s3x76LQ8kh1rFYoiO/02xIG8QVlU5DIyCQJYrnrkgOkEWYLOtBJn33STcNA2?=
 =?us-ascii?Q?7QrMwiEjR7ETgHOGJVv0SGlQk9hEbVdnLynDJihhbtAcPWJIdC0Un6lzPPhB?=
 =?us-ascii?Q?Sa1FuPM58znWdcaMv7I12bbs9rHlH2Z9fsfa5K0Ct8tjQ0R2lNiLCqoQMCGb?=
 =?us-ascii?Q?iClx1Dq3GGck1PyZvZa7/ky4DtmuyQ9Okgu4Mr29ejjvOXAMEPspyulx5Lph?=
 =?us-ascii?Q?egl+zTj1qnlDWTC9A7jSQrAt9WAsKWCHZJEvvE/LuYPnRedHyNmwUvI3ztX9?=
 =?us-ascii?Q?2bwDd4c+FacHa03oCf7qjU3f3XHhLIyoVwYC9NzpVTy4U3rqQTdZiA396qhw?=
 =?us-ascii?Q?pXmZKa5fTDT+7tMqXjRRNdM67CyJADN8TC538S81G2Ca679IYg15r9fz4fnY?=
 =?us-ascii?Q?gmDeRinPM6Q0dzDCx9c7VRDhQdpsvhtA4ltkAHLHINtI8gG6rj9adl+O6oWq?=
 =?us-ascii?Q?D9C2vAxZWm6OELXy0gnWDn/m1Ct/7vLytD6TaC80HTuV3XScC0gORB1f4q0k?=
 =?us-ascii?Q?aKAMUYMar0PBwbwfV2NbZivQl7j4+b7rWOYe8ZOJW3fDadwexdHdCqnxLJou?=
 =?us-ascii?Q?s+jWhhwrEedcgB+8BOkdyBqjev2Mwro1nSDx+7CSF8AVtQx8SoLL5Ls3fJ2s?=
 =?us-ascii?Q?KC20dCA21cuqS4I9EqFKki1FLCPzueLXDHfTGNubFhLXJ5A/Cqq5Ovhx33fr?=
 =?us-ascii?Q?VYm/2HTrETY3AdHW79Jg/L7PJ+H991KoFJMBHfIOXbwnBltWq+9rVValSfcZ?=
 =?us-ascii?Q?j+F54+U/rfwywecPPLtYFOqPieqiMAjBL2AythhFAL4fD9oqMzvH7f2o6VFI?=
 =?us-ascii?Q?vQNbG+pBpbP0WuurE6WeENUU6hlo7oS9PyT/EEAu0SvspSbqA4pqmgUNVgGS?=
 =?us-ascii?Q?HGfY/btJJRKXtoNWE/W9PESHkcPazx8elUawMX1oCZGBVk3pymGW5VwCxMho?=
 =?us-ascii?Q?mFnbTa0XiFQICFeYBGjewc9gbBLgXhuVQkmXRg//j0E3Kon//QrVxpPWGQXT?=
 =?us-ascii?Q?HZ/frAOyTAZjVia7jsK40r9brx+cALQzlVYUTA4deHPEvAzhfOilAbh43Nsl?=
 =?us-ascii?Q?KlFzkX0BPEIMh6h6gc4VZiKBMoI+BxjSM5Ert0vM43hUmtK7roXxBkaRrWc1?=
 =?us-ascii?Q?26gse8UyUsp8r3P5Bc2jn1sxSk0zEre866utGll4XPuhn6i9aK7iTD3ufXEv?=
 =?us-ascii?Q?w/f1QNxtePx9m4+90Ceaew3FbLH2dz74dvUKzO26kA8sT3e3xFaWVYu/aMYb?=
 =?us-ascii?Q?alGem8Cgaf82EbSIqbF7UH46QPKCbwoRJCgdrlp79fmh4KoUFuiaOvP07sHF?=
 =?us-ascii?Q?RnTPyLhPB+kDPkqB2wLdLdNtVd+kQ4/7XB6gKqNx1SzUSxyWj3IS0AGL9GQZ?=
 =?us-ascii?Q?qA+UrZWUeZactAQKCt9BZ+/B1CN79u2D7Jp2VuTE1/Ia6NEEFez5pAZWdgRu?=
 =?us-ascii?Q?hcTpDHkPJyzc9ZC867Ga+JWOY1RKnW2c9hO9DwswePIFk7e8+/Pca4UuKjPk?=
 =?us-ascii?Q?PIWJ+3dz75+TXNgU4sjwssU546M/BuM5yTa0UpV7EYjhLVkiwIEof0hRN34P?=
 =?us-ascii?Q?G7Z4w0CTxhzGp0sETvzDn5ln8yJxPTHWQ3YfYLNlCgVxeLAlx/GzLf7Hm+Dy?=
 =?us-ascii?Q?sjVPC7I4JgIsdZhlpiXIAr1N7m79b3n/4zFa0kOqg1fTC7F37pncpuIxGhA5?=
 =?us-ascii?Q?O01M+8AO6Zn0H33e3+EoyrygAUAAXzIHMf6tZ12gQB1LWTf8jljWaWxYS3+N?=
X-MS-Exchange-AntiSpam-MessageData-1: 2Stz22BZAB3WxQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: a344bfb3-8c28-4d9b-14a4-08de416fd28e
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2025 15:36:06.4395 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +uC0pj5Kq+oyJLxUPWJY/goz2VXC5mNf5TuxjFhFcY8Gk14D5EeluMKNeqEoKAVTQ8BdwbUmPxXPvK0aZqJxtA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6602
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

Drop the unused timeslots parameter from dsc_compute_link_config() and
other functions calling it.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 18 +++++++-----------
 1 file changed, 7 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2dadbf7e8922c..cc0549b41045b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2047,8 +2047,7 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
 				   struct intel_crtc_state *pipe_config,
 				   struct drm_connector_state *conn_state,
 				   const struct link_config_limits *limits,
-				   int dsc_bpp_x16,
-				   int timeslots)
+				   int dsc_bpp_x16)
 {
 	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	int link_rate, lane_count;
@@ -2241,8 +2240,7 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 				      struct intel_crtc_state *pipe_config,
 				      struct drm_connector_state *conn_state,
 				      const struct link_config_limits *limits,
-				      int pipe_bpp,
-				      int timeslots)
+				      int pipe_bpp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	const struct intel_connector *connector = to_intel_connector(conn_state->connector);
@@ -2270,8 +2268,7 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 					      pipe_config,
 					      conn_state,
 					      limits,
-					      bpp_x16,
-					      timeslots);
+					      bpp_x16);
 		if (ret == 0) {
 			pipe_config->dsc.compressed_bpp_x16 = bpp_x16;
 			if (intel_dp->force_dsc_fractional_bpp_en &&
@@ -2328,8 +2325,7 @@ int intel_dp_force_dsc_pipe_bpp(struct intel_dp *intel_dp,
 static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 					 struct intel_crtc_state *pipe_config,
 					 struct drm_connector_state *conn_state,
-					 const struct link_config_limits *limits,
-					 int timeslots)
+					 const struct link_config_limits *limits)
 {
 	const struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
@@ -2341,7 +2337,7 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 
 	if (forced_bpp) {
 		ret = dsc_compute_compressed_bpp(intel_dp, pipe_config, conn_state,
-						 limits, forced_bpp, timeslots);
+						 limits, forced_bpp);
 		if (ret == 0) {
 			pipe_config->pipe_bpp = forced_bpp;
 			return 0;
@@ -2359,7 +2355,7 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 			continue;
 
 		ret = dsc_compute_compressed_bpp(intel_dp, pipe_config, conn_state,
-						 limits, pipe_bpp, timeslots);
+						 limits, pipe_bpp);
 		if (ret == 0) {
 			pipe_config->pipe_bpp = pipe_bpp;
 			return 0;
@@ -2470,7 +2466,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 							     conn_state, limits);
 		else
 			ret = intel_dp_dsc_compute_pipe_bpp(intel_dp, pipe_config,
-							    conn_state, limits, timeslots);
+							    conn_state, limits);
 		if (ret) {
 			drm_dbg_kms(display->drm,
 				    "No Valid pipe bpp for given mode ret = %d\n", ret);
-- 
2.49.1

