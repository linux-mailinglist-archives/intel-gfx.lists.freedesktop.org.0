Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E51CEA360
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Dec 2025 17:45:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E511510E15D;
	Tue, 30 Dec 2025 16:45:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ODI13tBt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7D1F10E15D;
 Tue, 30 Dec 2025 16:45:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767113114; x=1798649114;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=sP8n1o7KUYgVO0rBhoLIJhHnPhMaJeWBlIWmz55NobA=;
 b=ODI13tBtV2thpAL0u/zRRNbt/jeywGrezAZq5G6TddB6b6Pa82eN3EJM
 OMR/NvzvM0o+PUjf63BQqtiBsnKxKDVJhBQfiiSn+hfviUBh457TW8fLW
 jwbIYaHb0pDPdNqPKMGCqMQUVco3F4qbVvGUeyZR5UX/vYQcUSiydsvEY
 pl5bEniQ32f3SH3fGYbtUZBDKpfSfqtk4LP6qLh/oxnAjcPRREmamnerg
 Zxn5KFzNFYKypAoSfY9wnFF1cinmVsu5QUaxAhv084RcdXuFuTz28R/u3
 98LvUYs+3J+O6PB3sUhCUQSS73OMedS59G6/iYvXwiFtvzwG1Ak+tvMvT A==;
X-CSE-ConnectionGUID: XlFyd++JSeCAGKedZb4UEg==
X-CSE-MsgGUID: zgDhL5AmR9qyu5aMlYohZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11657"; a="68675038"
X-IronPort-AV: E=Sophos;i="6.21,189,1763452800"; d="scan'208";a="68675038"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2025 08:45:13 -0800
X-CSE-ConnectionGUID: B0lPkoeuQmukLR3HfSMCbQ==
X-CSE-MsgGUID: fXwBGU8fSve1XcsPNrJvNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,189,1763452800"; d="scan'208";a="201716485"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2025 08:45:13 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 30 Dec 2025 08:45:12 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 30 Dec 2025 08:45:12 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.70) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 30 Dec 2025 08:45:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=us9KF13+gE030aD2abXnGCxfyfMWynv4mnnAfjpzOYUY3nh7n9ftHtb8ZZ8ryyUxW9MYJ/oMByNRpjrkz6Dah+qpp9z6TNcgyqCZmGoZuVZS5yZSAYpYOVvP0h0HT0RDW2Q+YuLH7ZsRFfmSNMjq22+dZUGG+0z8taBkxUBv0E3x3Sx/kdpEkoRtOD9LYRoPiSj8Kg4Mq+GdfcrpkMDqgIiooP+3hGxlRPponEqW5eBoSEX7bWx0lPa6rUYi68MoVojBWKvV88fSwgiHG5rGIlthLN8txp0CDA/vywZRHT0IdmMypE9V6C+tk3qgF3GGwWZ9MgT84iLlH8GIM9/LTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nUKyKl438SqhPlGHpjchgdUOHZe7LkJAeJJHQvrjriY=;
 b=ic99npC2Nuz72jEEXLL6UaYZ9Ole6nopvWgEuPLOHDITXgb3jwT/Ei7u6H10IOyDSlh5eAPYFqvPaAau91QhKmrpI8HUZ9reFuMXKKav/QWy60q3Y6+DgxL5yxcDoAnq7S515rIgdMtjyjkQ2kRpFNorj1Gc8XQBtGziDcAUI6rzSm5AeYqcBLg7d+Dr/N+pzGCvYy5C/e/3olVVsS1EE35gE1kYzoqwph7r7y+9H3ZJtAKBx66hzngQ30MjYBKYNk7epL5DjsF6V/ITKsdQeLsd46CTicB/L/jGPXNb+UdFN2EVNpnJZ2jVMXbG/cVMBn4f3t7K0Kq/rH5lybw0Sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SA3PR11MB7625.namprd11.prod.outlook.com (2603:10b6:806:305::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9456.14; Tue, 30 Dec
 2025 16:45:10 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%4]) with mapi id 15.20.9456.013; Tue, 30 Dec 2025
 16:45:10 +0000
Date: Tue, 30 Dec 2025 08:45:08 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <rodrigo.vivi@intel.com>, <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 2/3] drm/xe: remove compat i915_drv.h and
 -Ddrm_i915_private=xe_device hack
Message-ID: <20251230164508.GW4164497@mdroper-desk1.amr.corp.intel.com>
References: <cover.1767009044.git.jani.nikula@intel.com>
 <8d2da5404439ed334d7682922b599f36eeb60e9d.1767009044.git.jani.nikula@intel.com>
 <20251229172318.GH1180203@mdroper-desk1.amr.corp.intel.com>
 <5b3d9ac4e919ac69d35232251f1b8181b7276e9b@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5b3d9ac4e919ac69d35232251f1b8181b7276e9b@intel.com>
X-ClientProxiedBy: SJ0PR05CA0184.namprd05.prod.outlook.com
 (2603:10b6:a03:330::9) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SA3PR11MB7625:EE_
X-MS-Office365-Filtering-Correlation-Id: 1a77e9b2-0084-48b6-d886-08de47c2cbca
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?or7oC56YfJReTGv5Wdmk65as9aXszh6/r+zSgkxabLwTpQKhNY95mMbZ+i?=
 =?iso-8859-1?Q?YwlQ5SVw1K9PqdQ+jghcESFfgbBP2BHFqGpV6xlRiYEpAFhOxtKZZIoDS4?=
 =?iso-8859-1?Q?OMmpIGmPRKNuDzgzZ5G247xa6ooDERykT4TiFRMPDF6hkdupurTAk++oWf?=
 =?iso-8859-1?Q?FCxf7BvnDxKBuI1mpkQINY/1LTsNDvGLJsViFNOwhfEBnjfAOy1Y63gtkU?=
 =?iso-8859-1?Q?vh4TCMRiwgEaUzQU1+zfsnE7tt1Bt71XLXukU7gJgz37ZpdR4Maiqixzwl?=
 =?iso-8859-1?Q?rUqxwJ+oBln87/duw5c2u75r/dnmk0FZ+y1L5gdDF6qMs48bQ+tR49mz8H?=
 =?iso-8859-1?Q?OmU0ogE6wnYyRDlaD0sL0VwZ1J4AaXYZvlD5Vj1/rwW40YHnkyNfNDdRCK?=
 =?iso-8859-1?Q?rsjHY4hLtzIfFtJU11tpyrofV45dh/6DaMMc6bOBvxGu9Ho+o6I5J0oeHc?=
 =?iso-8859-1?Q?EG4JcEelUGAGsmddEbiP1qSjC+X2F9MUfoQsQvwHwZ29JmL6eCDklBCzU5?=
 =?iso-8859-1?Q?i69dJDH2E6mE7A20eJgIycJrj93ZMWMj3mSt30s2Swejc+NQtW7qyS2q71?=
 =?iso-8859-1?Q?xbBcMrcxz90givnV3ZoCvQfDP1UGC/1hwyKOQxAh6ym+AJTWA3wwx+w9CK?=
 =?iso-8859-1?Q?CsvsFG+T5gs4biX+Ik9ipo7k8RECz9Cn43C/XurMFl9cIqh0GMdrfHr54H?=
 =?iso-8859-1?Q?vpiME2UYduJ2e64eIMdz3+tyC8e8NWlYoB760ry73qnTTownlWx1v/S7Qx?=
 =?iso-8859-1?Q?69jeh/lkyZ1LottJMBuGJnGhHUnAN3jxl4YGBsDWbZSIxcJknPjnSQ956t?=
 =?iso-8859-1?Q?FruEin74Y51tqEyNLHWUpAGjssnpqccaS7x9yVwggpe4n05zP/pYZCrkMD?=
 =?iso-8859-1?Q?/7RyXfPoQQsWd9YHE/q/DgoUUj5c4zIBD/lVfWmILI1IkOhKamNmBeIBL0?=
 =?iso-8859-1?Q?K5u/51+eR61Dn9XyQCzweun7SWwh2K05jmj49iE9Abh69B6bNyfZ8mojdZ?=
 =?iso-8859-1?Q?u6nvoDLMwusjTEFy2J/ndoUJH7JJarc84rY31sdZWc1i7HZeBdVEKWVqXg?=
 =?iso-8859-1?Q?1t+hX7LwAvFajFM8p6GtFZkfZG3KhMrjbrAUGIeOlB+jMcbJRUPRSz6agR?=
 =?iso-8859-1?Q?Itb3u6CdZI6662HKMwU5fnIAvpd1/OxVXSpIJe26TL3QXrnzslCHPqBYD5?=
 =?iso-8859-1?Q?D5ePuy7mPhIV2oDIFatZHxLBFcmwCostR6yQx89PbIteyh9AlgtAs4UaST?=
 =?iso-8859-1?Q?baxulzJ0vbr9L56mcQ5sIAyAAyNvxvyy1SwlbXfssCwcErKBbqpK64Yiez?=
 =?iso-8859-1?Q?69iSD/2EQRwfjxtyESnEGp5hOW4tU5sIxzjsFNN7qCxQVJMdpe/W/WAoW5?=
 =?iso-8859-1?Q?nRAhk1MB6FOCMDj70esM1DbbJNmAkJdFgtA8Sn9dTm79x7SIlrtkaUVNt2?=
 =?iso-8859-1?Q?xtITaSXyxUelf17PfAty7LrLtlakbGjA59HC042ojDhpXTd1FJQcO4/zlX?=
 =?iso-8859-1?Q?Mxrlmnj3kvWeWqSK31jF4V?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?HEGenpHZf7txTG3Kjn6pttgxD0m0PfrGGyPVHYhzZ6yfcVvfVCtzYaUTVx?=
 =?iso-8859-1?Q?UEZI5YSXBNPyUyrtwp13qGxQBF6vzWzCKEzkuUcGp5advH06MslD1kExrp?=
 =?iso-8859-1?Q?Wfxu6phCJaUjBwWBks/UibFuaLzx00sOIzXaM56oduexCNDmMuMKbTjHlC?=
 =?iso-8859-1?Q?ji3xqcrcHvuslLirJocdAfJ8VQSI/p8u6X8wmgi4o0HZpw+2AUQkTp8O5X?=
 =?iso-8859-1?Q?daxvWjfGeYT4TnSVrbKGskHRSZXJKvZBzWpYxKwVAfhq9V5S5451svaQ1d?=
 =?iso-8859-1?Q?kMzu1H5wwJ0qsnzvRiWpEhRuzkMglSrFy6aY33uEfU35MSUUpQPQ9S2JXN?=
 =?iso-8859-1?Q?aPZlLzaFmdZhSkkRF80AGNaHsJ29O+xBqDC2ZVD+n+8qrg2BQfd0pjpzip?=
 =?iso-8859-1?Q?hIVNb7pQ2UVPdmfX15jH1KovPp9XNikGOBFy2Ys4/kY2Y26d8gnIOr0cVh?=
 =?iso-8859-1?Q?BDYIetEMHQaRczFxjbj3++pQkf0ZCQxLte0gxOaoi6o2wkZj05u8UNVKgS?=
 =?iso-8859-1?Q?bNSdZ6OjXFz1h5hzlxf6Nlf0UkXZN+nJa5hTm2aH0ApZsdjo/e+htcjpf7?=
 =?iso-8859-1?Q?64CjirK8glBTmbyp1LUB/7Wrl8Zmm25UjqH1Kf0OJ4S1X3tvyMb5ZYE9wM?=
 =?iso-8859-1?Q?YPw3mwxH/bIBN/BNznfx+2N+BQYusqnEfocT7nJrLmB5JVjnKgxtoV1/iH?=
 =?iso-8859-1?Q?mqx54cJkFvk0wam30tdrQHV0xFhWplOB+LoPMNPGMOp1TVhg+2DvJv/bzc?=
 =?iso-8859-1?Q?4ZYI97XNwK6ja288rkuMauM52OIW5nljBnljZ/HHy5+09fciQcKgEQaskz?=
 =?iso-8859-1?Q?NHmcX6CNaA591cOjwYMpyhKwrBQbD1+iEtPa7ZUti+2G5uwPZEotXifuzk?=
 =?iso-8859-1?Q?s7yAwAgDYxotfT8WFXfQNdnS0y/N9uN9Zju5AGcK3PU6lcX9c/CgBPv4Ja?=
 =?iso-8859-1?Q?0OqFsktEAz+hYsrGGVO/VPJb4Z+VIooqrPKYQqSPY196CDjokeKFWbroyE?=
 =?iso-8859-1?Q?7KgJquFDF97KPQrwqua7dAipUPEv/VJ0uMP4iwDvxqsIpDFA7PTrm7NZ+p?=
 =?iso-8859-1?Q?Fqtv6X3bcI6Clb/QSSaUWRs8aicQSBDbYEOnjKJyVdYV7PGgy9Qf73hMQn?=
 =?iso-8859-1?Q?2qeuOb9FxwJJ8VmqWBrTAB53QP6MgXaLpvdRnRRMH7unV5BvvLalrhjXcH?=
 =?iso-8859-1?Q?7s5ZnViuS498Bmw2UcZcabB21vctF77Hj27ZydajVRnbatT1QffR0LR7j+?=
 =?iso-8859-1?Q?KOB/tlWPRe+awxEyk4dIZUQv1JHE1n0kjG46STuY2qz/VekyxbIafT2Tye?=
 =?iso-8859-1?Q?Mz2ZLhaWKjrYdUql+fofaDGWEwtlirrT2H2jzXqU7rhduGPmPzoDtYWw1p?=
 =?iso-8859-1?Q?n3UrgAQuyvlPFNDtoU3sREPD49iNm43+QsqRl2qbOQQrXoPBMClKC49EDR?=
 =?iso-8859-1?Q?WemYIgo3mBbR082wNTcaT2Rsi2yJvELYo3wDJTiLNm63AMYZIFIEiP277O?=
 =?iso-8859-1?Q?Vk6WMfdsrAXeJZAoaue/2JfI/G8DA0k8XlYRXsDuX1gKLC/nXD6j7CHFtd?=
 =?iso-8859-1?Q?46TcsVkyu+9JWt0d5qAbWjqUjDFRFFw1K2Q7kxPDlcXrCSHfrkk+mIYzuH?=
 =?iso-8859-1?Q?Q2AUJXVoSCkci0JNLMd3Lkijf6vlfNvJ+p0W9rdOKqwIuWDvDgDxSDIAOJ?=
 =?iso-8859-1?Q?it6J2IRzo73vx2nvRKRtHyA9vEgSCs6cZPaDZ+0FncgiRQ81bi5wdhU+U2?=
 =?iso-8859-1?Q?F9okTbT8OxQ++uapF4viZ/9oQD2ieqZqt0YW2ehYpD7IMSdfIsweFMK/lj?=
 =?iso-8859-1?Q?1Pk8z3YS7XDPbQ3A8Bt+PjOFj86nfEU=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a77e9b2-0084-48b6-d886-08de47c2cbca
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Dec 2025 16:45:10.3725 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ydQnCnfqC59PaX4b6PytxAEkUvj/qA+XEXU0+hpFEz26YlIduue6zvEbwgpuTZ+ncO7dOwd+DyBMYd+2hPSiEjm/AMAGlEqJ8/o4Mx4daDw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7625
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

On Tue, Dec 30, 2025 at 03:59:33PM +0200, Jani Nikula wrote:
> On Mon, 29 Dec 2025, Matt Roper <matthew.d.roper@intel.com> wrote:
> > On Mon, Dec 29, 2025 at 01:54:44PM +0200, Jani Nikula wrote:
> >> The xe display build no longer needs the compat i915_drv.h or the ugly
> >> -Ddrm_i915_private=xe_device hack. Remove them, with great pleasure.
> >> 
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >
> > There's still a comment referring to this aliasing in xe_device_types.h
> > (above the intel_uncore substruct) that should probably be removed too
> > now that the alias is gone.  Otherwise,
> 
> I already looked at it, but Ville's going to nuke the whole uncore
> member from xe_device soonish, along with the whole comment, so decided
> to just let it be. That okay with you?

Yeah, that's fine with me.


Matt

> 
> > Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> >
> > Great cleanup to close out the year!
> 
> Indeed, thanks a lot for the review!
> 
> > Side question that I stumbled over by accident while reviewing this ---
> > did we really never implement DPT for Xe?  And everything is still
> > working?  It looks like even the chicken bits to disable use of DPT have
> > been removed in modern platforms, so I'm surprised that things aren't
> > blowing up if we aren't following the bspec's requirement that all tiled
> > framebuffers use DPT.  Am I overlooking something here?
> 
> It's... different. See xe_fb_pin.c for example. I don't claim to have an
> in depth understanding.
> 
> BR,
> Jani.
> 
> 
> 
> >
> >
> > Matt
> >
> >> ---
> >>  drivers/gpu/drm/xe/Makefile                   |  3 +--
> >>  .../gpu/drm/xe/compat-i915-headers/i915_drv.h | 22 -------------------
> >>  2 files changed, 1 insertion(+), 24 deletions(-)
> >>  delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> >> 
> >> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> >> index 3315f93a35b2..2b20c79d7ec9 100644
> >> --- a/drivers/gpu/drm/xe/Makefile
> >> +++ b/drivers/gpu/drm/xe/Makefile
> >> @@ -200,8 +200,7 @@ endif
> >>  # i915 Display compat #defines and #includes
> >>  subdir-ccflags-$(CONFIG_DRM_XE_DISPLAY) += \
> >>  	-I$(src)/compat-i915-headers \
> >> -	-I$(srctree)/drivers/gpu/drm/i915/display/ \
> >> -	-Ddrm_i915_private=xe_device
> >> +	-I$(srctree)/drivers/gpu/drm/i915/display/
> >>  
> >>  # Rule to build display code shared with i915
> >>  $(obj)/i915-display/%.o: $(srctree)/drivers/gpu/drm/i915/display/%.c FORCE
> >> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> >> deleted file mode 100644
> >> index 04d1925f9a19..000000000000
> >> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> >> +++ /dev/null
> >> @@ -1,22 +0,0 @@
> >> -/* SPDX-License-Identifier: MIT */
> >> -/*
> >> - * Copyright © 2023 Intel Corporation
> >> - */
> >> -#ifndef _XE_I915_DRV_H_
> >> -#define _XE_I915_DRV_H_
> >> -
> >> -/*
> >> - * "Adaptation header" to allow i915 display to also build for xe driver.
> >> - * TODO: refactor i915 and xe so this can cease to exist
> >> - */
> >> -
> >> -#include <drm/drm_drv.h>
> >> -
> >> -#include "xe_device_types.h"
> >> -
> >> -static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
> >> -{
> >> -	return container_of(dev, struct drm_i915_private, drm);
> >> -}
> >> -
> >> -#endif
> >> -- 
> >> 2.47.3
> >> 
> 
> -- 
> Jani Nikula, Intel

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
