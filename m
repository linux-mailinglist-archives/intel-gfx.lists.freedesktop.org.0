Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3086AC9F59A
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Dec 2025 15:49:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67D1910E7E7;
	Wed,  3 Dec 2025 14:49:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QtgRAIil";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6683410E0F8;
 Wed,  3 Dec 2025 14:49:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764773390; x=1796309390;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=tatKmYQ5vA4ZtAVcxo8jlpTOO9uwm4hWGyyhaqxUz4Q=;
 b=QtgRAIilHGIwZ38/eztxNfTofBp5gTnhPbPhL5awks9iHKxAmLeCkdHa
 pmgyoL0PejQK5xHGIrMyKr8axUSiu4F7zum1X9mLG664w4euDSG7fkGbR
 zAVfr0uFR9tIwgKbClB0L48bJd+ZePcMWplHh6vl7UeBxbrYKw+Qs3Y23
 lO+2S8NupIL2+7ysteY7t1zMW1C6gTfv5co3bdcnnn79P2wXru/kel1bi
 Mqd8AcOI9usobVXYrjkD9MSFdRPlV9v1IR6wapNsMC8vFjh7SWfcG2HFD
 QLX1mZo0cJMomOd+LE+eptDe1vqblKmcMdDXlRIbic8boH7znxBkjl32N g==;
X-CSE-ConnectionGUID: tYwCurh+S/qpdqc7/tbwrw==
X-CSE-MsgGUID: eUG5W6c/S7iKhlnDY5RlZw==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="66655186"
X-IronPort-AV: E=Sophos;i="6.20,246,1758610800"; d="scan'208";a="66655186"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 06:49:49 -0800
X-CSE-ConnectionGUID: mJmPsoCjQf2O0mTTjE1OQg==
X-CSE-MsgGUID: vsTDilMVQ+GIFx8nYkgPuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,246,1758610800"; d="scan'208";a="199170574"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 06:49:49 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 3 Dec 2025 06:49:48 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 3 Dec 2025 06:49:48 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.25) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 3 Dec 2025 06:49:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CAR9T9hh3deXpUlxEpp50CAsXMydAmghQlskGQi3jafrlZeXZ7hEcDWR26OzriP1X573iudBsNFD4uRuIywhjH+DCwXezhBfU2CYd3TypDFjGZgvAIaIeh8EZDB4pcFhpzXJE4JTio3TOOlCm4zTW90lXLuX6dvrT9VBn2N2bXwBevyN/dp0OlWfCCRm0J/ctmad5H9GLFvodlURDFY0ZZbxpNEIjdrAoeBIq7Kw/v9AWAKY1vpGxs+MoPQbco/gREOA5Ml96xgsbK9/u3qcWokI70ndQldZe/JSNl5j93ZhFioaQ7jcAvcD+ICyLJuoxVt5QX0av6yZkSKrxwhT6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2QuRRdD1zT2ZMJ1GZxWjdcugio1XhFRLKZLJMWuye6Y=;
 b=UZohqCtSV5sN9bTk8xViCgHNNA+liXnjrGn34aBZuXlQaUEuJgeikSqSrPaF8lS0IESF51YHzBHvVu6+c2tBrOaLjQEkIOQ6C3d3Xs/7XYbZBisF827+fGb7srtKjQPK58+Lobh9acRQaKo54cFXGijLy/qpWdN/OUH05JIVWCLLV63YOAQIaQrwDIaOuQdIckEqUWUhkeFIE2lbg7bHBBr7WwzOQrhvQG8hZsaVcSsKaz/Ovvjvk98cT1l2qoHWMXTIEqs3LfKo+M40sCVuZVJoVe5gv00zd0THaiXQPpzeVnzPjr7G9lsffKdOBIqUwnF4LyLHYjeynQ4bMC1ggA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CO1PR11MB4772.namprd11.prod.outlook.com (2603:10b6:303:97::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Wed, 3 Dec
 2025 14:49:45 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Wed, 3 Dec 2025
 14:49:44 +0000
Date: Wed, 3 Dec 2025 16:49:39 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 2/8] drm/i915/psr: Use SU granularity information
 available in intel_connector
Message-ID: <aTBOAy7GG5uitFPs@ideak-desk>
References: <20251203103134.1054430-1-jouni.hogander@intel.com>
 <20251203103134.1054430-3-jouni.hogander@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251203103134.1054430-3-jouni.hogander@intel.com>
X-ClientProxiedBy: LO4P123CA0300.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:196::17) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CO1PR11MB4772:EE_
X-MS-Office365-Filtering-Correlation-Id: f06369d1-4e7f-49dd-f910-08de327b3263
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?Xc6KBZYgDyHznNr3+WTTPgqawrot/PKvR9NWBFJE8goRNIpWendJbbYJLJ?=
 =?iso-8859-1?Q?NguxF0832JQzlGzxT9DLlFA+b44wW8oWairw+OMnNpX9jQy4m+frUEPxw9?=
 =?iso-8859-1?Q?c2L+D4XGVuuSQfb0ga1EsoLwVDAp1Z2Ph63Wuh1bZnsXbSb4uCCIF8qN0X?=
 =?iso-8859-1?Q?M/EZkRmoor+ob594nhVg/Ax9ldbZV01TEZnVH5ul4kPnsFNtfaE6mSFLMA?=
 =?iso-8859-1?Q?XQoWbDCT9ee0sU0kFQBVCQZt/qifM4iElxkmM1TnroO3Y9VbacXGCsZaXm?=
 =?iso-8859-1?Q?WYEKD4Rk5GankzoisJdVRxXFoyMt+d+zbzuQADaNf28quiZ/YSpjkq1fJh?=
 =?iso-8859-1?Q?gdddIETG83GaJvx6mKD1lUTsNLL0LAzIt1VbOJ31WsFYTh5w0RDKgBBc1s?=
 =?iso-8859-1?Q?bJwy2eEC52vjCx/MLLLQAZvC+3s7Xyu0JBqWk0mpC0HqwggQPQtT6Ticf8?=
 =?iso-8859-1?Q?++bKfrxI363kmFo/P7KT1CpbLJjrxtZvaxsIu8tKnepmlj15U97BP0VlF2?=
 =?iso-8859-1?Q?YoEk3FCpgIwz0+D1CoMPB0oDLzzLhTn9WJ87mTNTXivr+lNpqLkibe/jd1?=
 =?iso-8859-1?Q?mCmK0GwvldN9o7Gvsn0HSzh7NwOV9fFKwZ/IFtqKYX7o7BVhm8v/lhqXzL?=
 =?iso-8859-1?Q?5/K89UkVW7KSTFkcXiyxgdNS8o66bZ4Q+En3AYdcFM6mvN3yIMch1S+ceU?=
 =?iso-8859-1?Q?yMMr8bCbV9XqapvOT3LddiXyy74H5ZdiQYcKvOMdg7loHdm8qHXZjVDU5x?=
 =?iso-8859-1?Q?0W/WD21y55NhTokXPnFYoZpHKj+St9qg9LV67Ib3blPlo2/JuHVkpZRZAa?=
 =?iso-8859-1?Q?htse3p3+PFjtmV2QCR9NaVTuIMpoTa5IwfQF2cYaErnwkquk0ScImsks1V?=
 =?iso-8859-1?Q?fgI01nwRuxScGmcK+A2GkR1psU1+k3ca5z/ADteQ9NbsgowMZnoV6CqYZd?=
 =?iso-8859-1?Q?2LGDIf1ZLDYRVW2bKz/fq1WGk72CkcIVg5q7jQbq4iy9idtbJoVDHwVyEh?=
 =?iso-8859-1?Q?1oKQX33DmiXbW8Lu9AwwCMOP5tYi58l67QkRXPZezVFj2YuRvBkxPmSvla?=
 =?iso-8859-1?Q?hU5gN8MVxzP/I1J6GLp16R9su1dvBL4GHZhhl7L4sshYO6UfmSTfH7pnwj?=
 =?iso-8859-1?Q?Csb9rOBXhZCy6LQUZ3x40cjPLELnocckPq9/vQ9zbi+D2lxxqkyuIzlV6C?=
 =?iso-8859-1?Q?rzaluC+sQLvOE6PAGGIy86MUNVDHptrfkJE9IwJAiE7DPnsWpgW4HMMfQA?=
 =?iso-8859-1?Q?gXTZKdecNiRv1iAEkGooLLWY8Hy8BSK7dPzesryPaBt7gGBPSji0mi/MyY?=
 =?iso-8859-1?Q?a3d3HeXOcrJoz7ADP1W6rxpmVf6Q1ioaa6lxv3BRNnh3rgRoTumafXy/WN?=
 =?iso-8859-1?Q?+Z9fzmxBGvXs+nLs6j7mFZ6LrTuZE6qby0DxWd9Twm912hh/MWW+Zr2Cng?=
 =?iso-8859-1?Q?+0ZjxPQSNIqqaLcRM14FLQdID24HWXdmNvaHr+w8g/g9uxee7Ef18bJOtw?=
 =?iso-8859-1?Q?Y=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?r/4rmbrOBnDPJ6JDoDAaa/m4+H3hMrNlj8gRiBXroqgob9uCVqpj89IgeO?=
 =?iso-8859-1?Q?NwV8/1MmYQmVNIivoJmOqj4WnuRv7ZW7Px+hvZqXxVTyiKp5newv+jTwCZ?=
 =?iso-8859-1?Q?FZSeyNXRCwASoefoVYO25+xz8IDykOaSqjFqTF86O1CmkV6mWjcjd3/nZE?=
 =?iso-8859-1?Q?y1tFT1FyJ12MI5Z2FL9nqmxUJiD7b/GsRyv4/Hq4dG6ert8WPHlRa8ItxI?=
 =?iso-8859-1?Q?oAJWl0zLvZezvR0dbuEi+uxvdBpkc4Gawkevj2Fj0OEjoDBZ6pxyQ0Ba8z?=
 =?iso-8859-1?Q?6K4aXpRHtE4pq1HoSkn8Q980JnD/SIZuk5lixd38yrI38ttb7BzvXCDLTf?=
 =?iso-8859-1?Q?NIsS6G5IicJTecuO18BRt7V7k2+LO3k+JDWfXM91EUpd3cckTvYY3nXXmu?=
 =?iso-8859-1?Q?8O414u3Rb4AolwikYeFBxU8STAGuoaAng0LdtI2rCYYZSOaRiJ3Ae8j1Yp?=
 =?iso-8859-1?Q?A7v6SfXoP+7g4a7mT5ZAUxTc+e4aZtJ4u9c/0Ra+TKeBw4Onhaxlk74xFk?=
 =?iso-8859-1?Q?dSEchMxU0zSj4PMA92IFWMiM7gghMcz2ZllxYlfYejg2+kbf3gCsr5gxAr?=
 =?iso-8859-1?Q?wKfLXrBXBqiV3HM5OugLrYLbcDwHXarXOFkqRcMCQMkH/qMT/n1Bkwd/hP?=
 =?iso-8859-1?Q?qUy/KmMl4C/ny12pNnF+CCnZdzTHPKI1HQhptFBC8Lkm6klK5AJTewVONZ?=
 =?iso-8859-1?Q?ADvwokjQiJCV+8Em17k9ZJnmys64iQz7pT3t/yzUTDhxEsmK5N6a6EJeAY?=
 =?iso-8859-1?Q?PEqk0bTwpojlR8IuYSnZNgLZiX5MPVavwdxqxNBoZ/zR+Vhjw0uMIhgT3Z?=
 =?iso-8859-1?Q?6ixg/TSDIUs7W1whHqTgxGhVs1tSaC4YMGbbsZGJny367XOnyjfi9Ncbdo?=
 =?iso-8859-1?Q?um6MIQrLqEU0InIKC9CkucVyvMZtCoZvrTc2y+d9xN94cctiOckbHsfTAb?=
 =?iso-8859-1?Q?2xpwd6MSZRUSsEeuDsOy3J2mpHaa9X7QBoctInO1i0f7Qfvtkl5cDo43So?=
 =?iso-8859-1?Q?F4a7JeUhqNIUP+2eNCgqFlWWj5XQo1st96yNietjmIx5zIUWtPFJ16Vj21?=
 =?iso-8859-1?Q?H/s4BqqJqkirJvyHIIylsQhK06/lPtjHra/4SmyBYyVPexs0WJP+sX6SJw?=
 =?iso-8859-1?Q?3MAO5tMtKw5ql8Haxx9nc05ZUlT0BnPGpSYFfLy4Zcletr8u7JSlbHiI2l?=
 =?iso-8859-1?Q?yzic7ZBz7nZbUmCD/srrPnWEHlKBcB2Xyki1mupo7VdITDgyakD/KqYKl+?=
 =?iso-8859-1?Q?kgrPccyBsVhi6+7CaNzaqHPQlg7bwpA4del5r2tQ7R4Xjo5f57DjGU70/+?=
 =?iso-8859-1?Q?qgxWz9NmHAndKv1kIteIJYyaFN5sXtx0pLeddlvsDRuW0KmAyYMOMzq/q/?=
 =?iso-8859-1?Q?MYQxV3JccOfUgHDCCn9HTrO2M4uJtdBWhh5zjmnAQi0CvecDGRcEYoTxKl?=
 =?iso-8859-1?Q?AFJ7jE0+qCkEaYpv1YQIq6SLiNQj2uJsWzYYorE7XSJkcxuKut2wJSapQa?=
 =?iso-8859-1?Q?5VMKPVvI9NRUEJC+04RhrLrFi+ptFeHmiZVPPAB14RqFR6FoPTOG7zLIYD?=
 =?iso-8859-1?Q?ARvTJ62EZ29X0jgZraUy1Ff/iSaLBP+LASud2Ed5zkJXalr9EnErgKNQuk?=
 =?iso-8859-1?Q?VVjS8cXdJN90OrptcSr8a812dOL8iLrxB9tW9ZKn5vaMC/tcYblsgD1VtT?=
 =?iso-8859-1?Q?oFptzEXGdOmdt7PoErX9IFfGOlfiWo3MfPDd+J8G?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f06369d1-4e7f-49dd-f910-08de327b3263
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Dec 2025 14:49:44.2181 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lKtYRhFZnfvyNVDa4wyxdRnHviQHGXo7iOHh0AKKs13W0QPFRam7RHhustVNyOkO0BJFjLrK0VReKsgdttgSUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4772
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 03, 2025 at 12:31:28PM +0200, Jouni Högander wrote:
> Currently we are storing only one set of granularity information for panels
> supporting both PSR and Panel Replay. As panel is informing own
> granularities for PSR and Panel Replay they could be different. Let's use
> own granularities for PSR and Panel Replay instead of having only one set
> for both. This is done by having intel_connector::psr_caps and
> panel_replay_caps both containing granularity information.
> 
> Also remove complexity of sharing granularity read between PSR and Panel
> Replay.
> 
> v2:
>   - use __le16 for two byte values in dpcd
>   - use sizeof instead of hardcoded size in reading dpcd
>   - drop unnecessarily passing intel_dp pointer
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> Reviewed-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c  |   4 +-
>  drivers/gpu/drm/i915/display/intel_psr.c | 147 +++++++++++------------
>  drivers/gpu/drm/i915/display/intel_psr.h |   2 +-
>  3 files changed, 72 insertions(+), 81 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 7df0e5e13688d..dcceb0ae2a56d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4562,7 +4562,7 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector
>  	 * This has to be called after intel_dp->edp_dpcd is filled, PSR checks
>  	 * for SET_POWER_CAPABLE bit in intel_dp->edp_dpcd[1]
>  	 */
> -	intel_psr_init_dpcd(intel_dp);
> +	intel_psr_init_dpcd(intel_dp, connector);
>  
>  	intel_edp_set_sink_rates(intel_dp);
>  	intel_dp_set_max_sink_lane_count(intel_dp);
> @@ -6074,7 +6074,7 @@ intel_dp_detect(struct drm_connector *_connector,
>  		connector->base.epoch_counter++;
>  
>  	if (!intel_dp_is_edp(intel_dp))
> -		intel_psr_init_dpcd(intel_dp);
> +		intel_psr_init_dpcd(intel_dp, connector);
>  
>  	intel_dp_detect_dsc_caps(intel_dp, connector);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 15ef3b6caad6e..5f8df67f9993e 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -494,82 +494,37 @@ static u8 intel_dp_get_sink_sync_latency(struct intel_dp *intel_dp)
>  	return val;
>  }
>  
> -static u8 intel_dp_get_su_capability(struct intel_dp *intel_dp)
> -{
> -	u8 su_capability = 0;
> -
> -	if (intel_dp->psr.sink_panel_replay_su_support) {
> -		if (drm_dp_dpcd_read_byte(&intel_dp->aux,
> -					  DP_PANEL_REPLAY_CAP_CAPABILITY,
> -					  &su_capability) < 0)
> -			return 0;
> -	} else {
> -		su_capability = intel_dp->psr_dpcd[1];
> -	}
> -
> -	return su_capability;
> -}
> -
> -static unsigned int
> -intel_dp_get_su_x_granularity_offset(struct intel_dp *intel_dp)
> -{
> -	return intel_dp->psr.sink_panel_replay_su_support ?
> -		DP_PANEL_REPLAY_CAP_X_GRANULARITY :
> -		DP_PSR2_SU_X_GRANULARITY;
> -}
> -
> -static unsigned int
> -intel_dp_get_su_y_granularity_offset(struct intel_dp *intel_dp)
> -{
> -	return intel_dp->psr.sink_panel_replay_su_support ?
> -		DP_PANEL_REPLAY_CAP_Y_GRANULARITY :
> -		DP_PSR2_SU_Y_GRANULARITY;
> -}
> -
> -/*
> - * Note: Bits related to granularity are same in panel replay and psr
> - * registers. Rely on PSR definitions on these "common" bits.
> - */
> -static void intel_dp_get_su_granularity(struct intel_dp *intel_dp)
> +static void _psr_compute_su_granularity(struct intel_dp *intel_dp,
> +					struct intel_connector *connector)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
>  	ssize_t r;
> -	u16 w;
> +	__le16 w;
>  	u8 y;
>  
> -	/*
> -	 * TODO: Do we need to take into account panel supporting both PSR and
> -	 * Panel replay?
> -	 */
> -
>  	/*
>  	 * If sink don't have specific granularity requirements set legacy
>  	 * ones.
>  	 */
> -	if (!(intel_dp_get_su_capability(intel_dp) &
> -	      DP_PSR2_SU_GRANULARITY_REQUIRED)) {
> +	if (!(intel_dp->psr_dpcd[1] & DP_PSR2_SU_GRANULARITY_REQUIRED)) {
>  		/* As PSR2 HW sends full lines, we do not care about x granularity */
>  		w = 4;

This needs now a cpu_to_le16() or a separate variable.

>  		y = 4;
>  		goto exit;
>  	}
>  
> -	r = drm_dp_dpcd_read(&intel_dp->aux,
> -			     intel_dp_get_su_x_granularity_offset(intel_dp),
> -			     &w, 2);
> -	if (r != 2)
> +	r = drm_dp_dpcd_read(&intel_dp->aux, DP_PSR2_SU_X_GRANULARITY, &w, sizeof(w));
> +	if (r != sizeof(w))
>  		drm_dbg_kms(display->drm,
>  			    "Unable to read selective update x granularity\n");
>  	/*
>  	 * Spec says that if the value read is 0 the default granularity should
>  	 * be used instead.
>  	 */
> -	if (r != 2 || w == 0)
> +	if (r != sizeof(w) || w == 0)
>  		w = 4;

This also needs a conversion/separate variable as above.

The patch otherwise looks ok to me.

>  
> -	r = drm_dp_dpcd_read(&intel_dp->aux,
> -			     intel_dp_get_su_y_granularity_offset(intel_dp),
> -			     &y, 1);
> +	r = drm_dp_dpcd_read(&intel_dp->aux, DP_PSR2_SU_Y_GRANULARITY, &y, 1);
>  	if (r != 1) {
>  		drm_dbg_kms(display->drm,
>  			    "Unable to read selective update y granularity\n");
> @@ -579,8 +534,8 @@ static void intel_dp_get_su_granularity(struct intel_dp *intel_dp)
>  		y = 1;
>  
>  exit:
> -	intel_dp->psr.su_w_granularity = w;
> -	intel_dp->psr.su_y_granularity = y;
> +	connector->dp.psr_caps.su_w_granularity = le16_to_cpu(w);
> +	connector->dp.psr_caps.su_y_granularity = y;
>  }
>  
>  static enum intel_panel_replay_dsc_support
> @@ -621,7 +576,32 @@ static const char *panel_replay_dsc_support_str(enum intel_panel_replay_dsc_supp
>  	};
>  }
>  
> -static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
> +static void _panel_replay_compute_su_granularity(struct intel_dp *intel_dp,
> +						 struct intel_connector *connector)
> +{
> +	u16 w;
> +	u8 y;
> +
> +	if (!(intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_CAPABILITY)] &
> +	       DP_PANEL_REPLAY_SU_GRANULARITY_REQUIRED)) {
> +		w = 4;
> +		y = 4;
> +		goto exit;
> +	}
> +
> +	/*
> +	 * Spec says that if the value read is 0 the default granularity should
> +	 * be used instead.
> +	 */
> +	w = le16_to_cpu(*(__le16 *)&intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_X_GRANULARITY)]) ? : 4;
> +	y = intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_Y_GRANULARITY)] ? : 1;
> +
> +exit:
> +	connector->dp.panel_replay_caps.su_w_granularity = w;
> +	connector->dp.panel_replay_caps.su_y_granularity = y;
> +}
> +
> +static void _panel_replay_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
>  	int ret;
> @@ -657,9 +637,12 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
>  	intel_dp->psr.sink_panel_replay_support = true;
>  
>  	if (intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT)] &
> -	    DP_PANEL_REPLAY_SU_SUPPORT)
> +	    DP_PANEL_REPLAY_SU_SUPPORT) {
>  		intel_dp->psr.sink_panel_replay_su_support = true;
>  
> +		_panel_replay_compute_su_granularity(intel_dp, connector);
> +	}
> +
>  	intel_dp->psr.sink_panel_replay_dsc_support = compute_pr_dsc_support(intel_dp);
>  
>  	drm_dbg_kms(display->drm,
> @@ -669,7 +652,7 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
>  		    panel_replay_dsc_support_str(intel_dp->psr.sink_panel_replay_dsc_support));
>  }
>  
> -static void _psr_init_dpcd(struct intel_dp *intel_dp)
> +static void _psr_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
>  	int ret;
> @@ -722,17 +705,16 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp)
>  		drm_dbg_kms(display->drm, "PSR2 %ssupported\n",
>  			    intel_dp->psr.sink_psr2_support ? "" : "not ");
>  	}
> +
> +	if (intel_dp->psr.sink_psr2_support)
> +		_psr_compute_su_granularity(intel_dp, connector);
>  }
>  
> -void intel_psr_init_dpcd(struct intel_dp *intel_dp)
> +void intel_psr_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector)
>  {
> -	_psr_init_dpcd(intel_dp);
> -
> -	_panel_replay_init_dpcd(intel_dp);
> +	_psr_init_dpcd(intel_dp, connector);
>  
> -	if (intel_dp->psr.sink_psr2_support ||
> -	    intel_dp->psr.sink_panel_replay_su_support)
> -		intel_dp_get_su_granularity(intel_dp);
> +	_panel_replay_init_dpcd(intel_dp, connector);
>  }
>  
>  static void hsw_psr_setup_aux(struct intel_dp *intel_dp)
> @@ -1304,25 +1286,32 @@ static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
>  	return crtc_state->enable_psr2_sel_fetch = true;
>  }
>  
> -static bool psr2_granularity_check(struct intel_dp *intel_dp,
> -				   struct intel_crtc_state *crtc_state)
> +static bool psr2_granularity_check(struct intel_crtc_state *crtc_state,
> +				   struct intel_connector *connector)
>  {
> +	struct intel_dp *intel_dp = intel_attached_dp(connector);
>  	struct intel_display *display = to_intel_display(intel_dp);
>  	const struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
>  	const int crtc_hdisplay = crtc_state->hw.adjusted_mode.crtc_hdisplay;
>  	const int crtc_vdisplay = crtc_state->hw.adjusted_mode.crtc_vdisplay;
>  	u16 y_granularity = 0;
> +	u16 sink_y_granularity = crtc_state->has_panel_replay ?
> +		connector->dp.panel_replay_caps.su_y_granularity :
> +		connector->dp.psr_caps.su_y_granularity;
> +	u16 sink_w_granularity =  crtc_state->has_panel_replay ?
> +		connector->dp.panel_replay_caps.su_w_granularity :
> +		connector->dp.psr_caps.su_w_granularity;
>  
>  	/* PSR2 HW only send full lines so we only need to validate the width */
> -	if (crtc_hdisplay % intel_dp->psr.su_w_granularity)
> +	if (crtc_hdisplay % sink_w_granularity)
>  		return false;
>  
> -	if (crtc_vdisplay % intel_dp->psr.su_y_granularity)
> +	if (crtc_vdisplay % sink_y_granularity)
>  		return false;
>  
>  	/* HW tracking is only aligned to 4 lines */
>  	if (!crtc_state->enable_psr2_sel_fetch)
> -		return intel_dp->psr.su_y_granularity == 4;
> +		return sink_y_granularity == 4;
>  
>  	/*
>  	 * adl_p and mtl platforms have 1 line granularity.
> @@ -1330,11 +1319,11 @@ static bool psr2_granularity_check(struct intel_dp *intel_dp,
>  	 * to match sink requirement if multiple of 4.
>  	 */
>  	if (display->platform.alderlake_p || DISPLAY_VER(display) >= 14)
> -		y_granularity = intel_dp->psr.su_y_granularity;
> -	else if (intel_dp->psr.su_y_granularity <= 2)
> +		y_granularity = sink_y_granularity;
> +	else if (sink_y_granularity <= 2)
>  		y_granularity = 4;
> -	else if ((intel_dp->psr.su_y_granularity % 4) == 0)
> -		y_granularity = intel_dp->psr.su_y_granularity;
> +	else if ((sink_y_granularity % 4) == 0)
> +		y_granularity = sink_y_granularity;
>  
>  	if (y_granularity == 0 || crtc_vdisplay % y_granularity)
>  		return false;
> @@ -1621,9 +1610,11 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
>  	return true;
>  }
>  
> -static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
> -					  struct intel_crtc_state *crtc_state)
> +static bool intel_sel_update_config_valid(struct intel_crtc_state *crtc_state,
> +					  struct drm_connector_state *conn_state)
>  {
> +	struct intel_connector *connector = to_intel_connector(conn_state->connector);
> +	struct intel_dp *intel_dp = intel_attached_dp(connector);
>  	struct intel_display *display = to_intel_display(intel_dp);
>  
>  	if (HAS_PSR2_SEL_FETCH(display) &&
> @@ -1671,7 +1662,7 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
>  		goto unsupported;
>  	}
>  
> -	if (!psr2_granularity_check(intel_dp, crtc_state)) {
> +	if (!psr2_granularity_check(crtc_state, connector)) {
>  		drm_dbg_kms(display->drm,
>  			    "Selective update not enabled, SU granularity not compatible\n");
>  		goto unsupported;
> @@ -1866,7 +1857,7 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
>  	if (!crtc_state->has_psr)
>  		return;
>  
> -	crtc_state->has_sel_update = intel_sel_update_config_valid(intel_dp, crtc_state);
> +	crtc_state->has_sel_update = intel_sel_update_config_valid(crtc_state, conn_state);
>  }
>  
>  void intel_psr_get_config(struct intel_encoder *encoder,
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
> index 024ee4c309852..b41dc4d44ff29 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr.h
> @@ -28,7 +28,7 @@ struct intel_plane_state;
>  bool intel_encoder_can_psr(struct intel_encoder *encoder);
>  bool intel_psr_needs_aux_io_power(struct intel_encoder *encoder,
>  				  const struct intel_crtc_state *crtc_state);
> -void intel_psr_init_dpcd(struct intel_dp *intel_dp);
> +void intel_psr_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector);
>  void intel_psr_panel_replay_enable_sink(struct intel_dp *intel_dp);
>  void intel_psr_pre_plane_update(struct intel_atomic_state *state,
>  				struct intel_crtc *crtc);
> -- 
> 2.43.0
> 
