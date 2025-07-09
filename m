Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA78AAFE9FE
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jul 2025 15:22:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1126010E034;
	Wed,  9 Jul 2025 13:22:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MQRVaYgW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B27510E034;
 Wed,  9 Jul 2025 13:22:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752067362; x=1783603362;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=RBxbJ1dYIYSc2l7TfLcawBLykmHFwJy6TGmAWqjdDCI=;
 b=MQRVaYgWvM20RTTwXzhfCqvkjwj8ycLhdMocxCgKxCKjoqQV0tnbmlPy
 bfXdQ1BWKZ5wMhwcuvsY1jkaWVMzRWvCPeXXf7+U0zhkzvyIA7rdg8+Wr
 cfc5w3DxqlM7KPW7DVLijyl2LaGZHddXLxCS1WV1owBeB8lP40uRUkvgj
 +4pru2VTHrjtBFdF0MIGQa1bDDhu5zl8mfUpQkcm970g03OW0FTlLSTAC
 Cyfl9hrBQZIPINyseLrVagg7IFPORYYRGn0PtSjq2iH8JrRdW1YOzG9WC
 yivJ3PK+vMwBrzyoPEaWtFkXCEdMcIQujWqP5I4im/FlJLHoXJstu+eQd w==;
X-CSE-ConnectionGUID: 6+ukNaOqR2eao0Jn+s6S2g==
X-CSE-MsgGUID: gsVLXUchRae59yDMjF0RNg==
X-IronPort-AV: E=McAfee;i="6800,10657,11489"; a="65025461"
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="65025461"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2025 06:22:42 -0700
X-CSE-ConnectionGUID: 2xcnGeYtSvihU9Bi5Z4adA==
X-CSE-MsgGUID: /9XXKPPyR3+fpWjw3yAt7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="156342730"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2025 06:22:42 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 9 Jul 2025 06:22:41 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 9 Jul 2025 06:22:41 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.72)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 9 Jul 2025 06:22:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CvdGW//Su1Jealcfe/fRg4ChfVpfHquX9fXBH2q4Q2ggQJPIY7u4xMngtbjzvLXQ8hwF+XLOBBgabtCZa1yctGq62QKh2+8a0Czi27Gpfib/iWjzJPXqQGsqm3uZejUcCxvGExqf3suGxTGZyZXfyhV8F7TeI0yzE3/WjtgHYjR6zsic19z9La3RU5IojTBdZfo0sO+u9nSBhiPzhzm0wIqsJVEjaNH/KQ9FU5ihq0l5RQTenEK7SxnZBF/bIwwNpN9DStUDQPQyCYAm9LYTqAitKI8lMKhdfv+pN8OmDv3cwcQG+CTbjLIXKVViOLWy+hOsp3QMpTtpqK7RoRJS1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g8dCnBNxQLs9Z8819Rq+Xh7ig2TIZfJiyzCaMMP39Xg=;
 b=DOETtZf+rSUfLPhTWu7on5omiKeHr5sb1VpPPUvSR4x3ao6X5KvQGVDIeGHE3vFg+Dr92P8gqdT8RTI59oSJwym/b5ZvQgCvVsy9htTQp2H/1lOCjckyNlQhezjPB9AkJH/pc1FgowHYXAJ7/k3FiWRL+DTseV4U5u/ceV0FbmKA7T61MQa8BWTEByCeJdfCywYXtHTR7sTOV83rjINfDCTiCS17xL/ZEs1sih6jzk6MWZGBG2Zk/Kb+9j37j7eYcS6lw4MO/TbhgmJLKZuuAb0PDYS1qF5atr1vfiNvz2KJN8Q10ijQE+sv9EDpbVVKRKWp5ji0xDhSQIqwY5tprw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by MW6PR11MB8312.namprd11.prod.outlook.com (2603:10b6:303:242::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.23; Wed, 9 Jul
 2025 13:22:38 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%5]) with mapi id 15.20.8901.024; Wed, 9 Jul 2025
 13:22:37 +0000
Date: Wed, 9 Jul 2025 09:22:34 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 1/2] drm/i915/psr: Do not disable Early Transport when
 enable_psr is set
Message-ID: <aG5tGsxTcNwzX1Sj@intel.com>
References: <20250709075758.2510714-1-jouni.hogander@intel.com>
 <20250709075758.2510714-2-jouni.hogander@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250709075758.2510714-2-jouni.hogander@intel.com>
X-ClientProxiedBy: SJ0PR05CA0005.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::10) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|MW6PR11MB8312:EE_
X-MS-Office365-Filtering-Correlation-Id: 1e0d4c13-7a5a-4a32-088a-08ddbeebac3a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?pboc8VcWiyCIoc9L7B2eZ7QYmbRM9u/J2X7Z4M6YcAaTd6ejvfTFeDU8d0?=
 =?iso-8859-1?Q?pf7kKZfIaSTRA5dWaOrlvidNtMHc5ZTO/Kg3bBaD4hWCae+Y9pwZS6n8aG?=
 =?iso-8859-1?Q?cooqdpHa4TU5ZzOonMEfrYC8rDBSU2RJ2rQm8ObeBf/dKpUyrw7LonUZH8?=
 =?iso-8859-1?Q?REnqwX0FRFuU1bTAtSUF30SXAVmeSWQiDC2OP+xiX+T0Lr05JzoHsqjzW8?=
 =?iso-8859-1?Q?4bx8L4igP7KumIlFqKxlnmgvwzQJg/h38ujinkdjNwPx5i7REsvfuBgCWY?=
 =?iso-8859-1?Q?UqH//3m1Kuuhz7H73iHs1Ya4cDoxrQ2MlGI3AzdLloCt2GvRn8BFmlGb90?=
 =?iso-8859-1?Q?vNXPMYkFKjO3yditFh8B2Lud/goHsA12Dw2beC+NwJRm6Nqi6f7tAAHW9N?=
 =?iso-8859-1?Q?tixPKeFHbXOEhAgG04pppqvFOiFU9DoayG3/h9cXLoKFg1og3g2J2oUruk?=
 =?iso-8859-1?Q?iEQgcxbtfm625+Q4zl6PzDBDtlZ6pml0cPCRS5pUXOb3nd021p30ZmggXb?=
 =?iso-8859-1?Q?n195ffWJ+2TwqGLr4KZ0/iJdow8J8pIw/tl4sJ24IlXn+6uj84olDluTIP?=
 =?iso-8859-1?Q?h8aqHA1fb82T1PbWupwXwvCDIEmJvat2nknI07oagh9OGgk2PbAnrIGziv?=
 =?iso-8859-1?Q?rNxBhM//V0QVB/bK2A4h0+0ZhVjsZrBp1VcgqFdORQ/rnV3Pq7MB7lWxqE?=
 =?iso-8859-1?Q?e2YNHss3mlhxdsH4vjyj6dKINtxs2tmtuEdC7TMqpKXdTLmhX/ReBaeq4A?=
 =?iso-8859-1?Q?NCc3RP29XxnrDWKwqeTBX8/dDszZ9Bg0CC8YhE+jz8xm0yyvdjiSxS2HtC?=
 =?iso-8859-1?Q?4auG5Pt2BrTLq6jzf9N9J6NX8VWkRZnzOObsxwUre2scwmUdljMT0dImdG?=
 =?iso-8859-1?Q?ZhJkdrE9nJ4+zp2t2Vd9UUYX+o5wcnm9myh70CHEOSliM1ok4zerSELijs?=
 =?iso-8859-1?Q?Nxr4UYbjD8wcca2V8mKubd6D42U8UVWvuHNZhLBsE86Gq+mP7mcx8Q8mnt?=
 =?iso-8859-1?Q?KLlBMYDLkQC1VeLCHBCaLEjiqVIKMru8OU8uJAP6ocbetgZzl1XEroNG8t?=
 =?iso-8859-1?Q?0OCVaUWDYpWRhg14YQBBgutjPr+0BDquZ2+kBDD3d8/1CB1N4Gj9C1ZDhl?=
 =?iso-8859-1?Q?h3FHAGrMuQoK+8b/7UsMvi//7aGxL/tdBU2TWh+uFVUN4cJ2C/jDFmrptQ?=
 =?iso-8859-1?Q?4V1IYa4oh/7p/TQziWUNNDrylLL9m5agq7xDlCtaSyjn+TudfOmp4DiID7?=
 =?iso-8859-1?Q?5KHYK+1CIQD6vjP+nT+9OinWZmkU8GJRoQiiynkuy6wGjP1+m48PBFh/X7?=
 =?iso-8859-1?Q?wIQgwqORLilgd1ejb/zLKglnPsQzad9lZffCnp6JPkvEQUiooEPDCR8MGz?=
 =?iso-8859-1?Q?QusQ6y99VxguB66kfiR4FuJU9mKDfvH4RmCxY/9WrannxvdaLdlp+Zr4X+?=
 =?iso-8859-1?Q?8OE7G2I/EUSmkcJAWd3zAGHNu4IzCqgkscbtm14xSkNbSiKMPUk7/YRk5Z?=
 =?iso-8859-1?Q?A=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?guqTREobTO0E3KFED93iKL51cHiIuBC0VKSg3nWahTbJv7s0srE4aH6/em?=
 =?iso-8859-1?Q?vIgXd6pUeN6n8vC73vR15Pu/XBZ43SKv/xxwNZGXgvKo4Vec/PMiS9kgqx?=
 =?iso-8859-1?Q?qUSpu/V9yQ7tUmsNsgSe6jnBsv+YCiDN5nBqLkVeyK+ARRqn4UXkI1ZzUG?=
 =?iso-8859-1?Q?HAVrPomzxn/m98/OFUYS+9SzOz7Su6VywbmPmG9eUk2ckYpvM2Tjxx3JR8?=
 =?iso-8859-1?Q?GeLWTk11GHqMKNj9ZMRZW9SwHYego6ejM7gyyly3GskNwzX9/6LtIO+uhe?=
 =?iso-8859-1?Q?NArHc7ce9DDPAvQinsbHbbkbQUa87mrQkiv7H5AclwmGwtf+rh28g2+r18?=
 =?iso-8859-1?Q?Qan6jr2/6ZSTqocJS04N669ApBXT+uygTMePHZz5V/Xkhy47nZdPAkIfUY?=
 =?iso-8859-1?Q?um43TAIkkuY9cEdXKmsPc1KO0UpniuRHAGfoqx0jCjOVEDQ7NBcSPvhU+o?=
 =?iso-8859-1?Q?ut8wYeqYl5rImYx4Yx5kPgkFiY2WF9ExMThszJv1aESoW8QxURRU+KqLPx?=
 =?iso-8859-1?Q?LBBZT81hW97F5L2Fj0gmYU1gQcoJ1XsZioIkCoZxQc9pUSfj5m8b5Fyt0f?=
 =?iso-8859-1?Q?w6v8wkhRufQ6GjNAMMLaqagKbP7qswatJCxlDMRpFBxriL17kMPQl038fh?=
 =?iso-8859-1?Q?KaQ9g2kRlNeRugBU4Pw5rIxHfit8nxIqS7NotqnI1zRtgp1Tzy0SIEmTHK?=
 =?iso-8859-1?Q?gYVsPKRU4Ke5z/78dgopGJDVbCugN/U84d/btZyD+SQk+Yix4rD9D6MYf6?=
 =?iso-8859-1?Q?d0yCfN/lykQTPppDRGt74fycmTvEo5VYquWxDfw6ne0kax5+oURT/5x8fy?=
 =?iso-8859-1?Q?CtRue5WgLdmZaX9whkaLGpceXAts4Y7pxhz1vVrgopVCtDXkpzScvUuVfW?=
 =?iso-8859-1?Q?vKo3yn7K2f0v62WR8MFVUcxttqqNQBfrb87FfcBz0xO6qSzSfWPXZNKApx?=
 =?iso-8859-1?Q?+LyCVYKz3/xsNLt8AwntzP4A33nO1Spdo4BvdS72j/fOGxa5gjaQmOd/uJ?=
 =?iso-8859-1?Q?clWvogMN7Scizi3Vq/1BuH/PF1mrGIenHNF3xO5UxxRGQzT9v6UPzVrSwV?=
 =?iso-8859-1?Q?q8zVAz/oYVHvvvlJxWVIq3rVpLnjWq+rfYtm0iXGZqaoazhajPdvT0K3Iw?=
 =?iso-8859-1?Q?iDodDy1FQuiuK0UqD/f6SIg0nl6CzBp0iqdv8a4MErDFgHaOJuTTE0rhOG?=
 =?iso-8859-1?Q?yXZ5g328WhPUZhPxdtpHQXUuXCxj7Vy/UnkBqmOth81N/8I6X9vfoscjD4?=
 =?iso-8859-1?Q?Lbxb06uPkc/6DAvHMMs3cFItZ9vQC/EQNk6O31d7jPn3F9tFlDu8TCsYRh?=
 =?iso-8859-1?Q?04LGGngEshYWw8FoUD61EqbWGgrd+LcT+MJfpzSlSqhDiD1O5+pOoBV+Wl?=
 =?iso-8859-1?Q?dWUkUwLcga+XQpa28BaCmp/d7k363aPPqTGs0KwyzU2PhOMkkWyLxS3aAI?=
 =?iso-8859-1?Q?LPC0JjV9KXWA4/0rmmCDo8Zg4KJ7ALhUcDI97cgml7vQtawiQU5ptOLYJu?=
 =?iso-8859-1?Q?B9HAJ3ewAE75HDn86rp2nYl+2dprEjx7n1YQlVZTY9MYGtDwsL5uN0ePs3?=
 =?iso-8859-1?Q?zT78mmtNeJBpYNXq7qOD9Yf2PxSu7hm+lRVaS7kVM5hkjg5Put6bzC+IpU?=
 =?iso-8859-1?Q?0Yl0rnAmCoV/AcANPw0c5cYuI/aZXjp5Wr3TDWaecvau0siOpPYEb98w?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e0d4c13-7a5a-4a32-088a-08ddbeebac3a
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jul 2025 13:22:37.5544 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UVh6weyGvlnFlNL9AOavszw25VxF6empBP3HaSX57sbpj//uMMZeDahHqHnsecn0SOTDDzS+HscPZvy/tWGMCw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8312
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

On Wed, Jul 09, 2025 at 10:57:57AM +0300, Jouni Högander wrote:
> Current approach is that Early Transport is disabled in case enable_psr
> module parameter is set. Let's ignore enable_psr parameter when choosing if
> Early Transport can be used.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 13 +------------
>  1 file changed, 1 insertion(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index ae9053919211..a2b5688f0c82 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -265,16 +265,6 @@ static bool psr2_global_enabled(struct intel_dp *intel_dp)
>  	}
>  }
>  
> -static bool psr2_su_region_et_global_enabled(struct intel_dp *intel_dp)
> -{
> -	struct intel_display *display = to_intel_display(intel_dp);
> -
> -	if (display->params.enable_psr != -1)
> -		return false;
> -
> -	return true;
> -}
> -
>  static bool panel_replay_global_enabled(struct intel_dp *intel_dp)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
> @@ -742,8 +732,7 @@ static bool psr2_su_region_et_valid(struct intel_dp *intel_dp, bool panel_replay
>  	return panel_replay ?
>  		intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT)] &
>  		DP_PANEL_REPLAY_EARLY_TRANSPORT_SUPPORT :
> -		intel_dp->psr_dpcd[0] == DP_PSR2_WITH_Y_COORD_ET_SUPPORTED &&
> -		psr2_su_region_et_global_enabled(intel_dp);
> +		intel_dp->psr_dpcd[0] == DP_PSR2_WITH_Y_COORD_ET_SUPPORTED;
>  }
>  
>  static void _panel_replay_enable_sink(struct intel_dp *intel_dp,
> -- 
> 2.43.0
> 
