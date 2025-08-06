Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8659B1CEEC
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 00:03:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77A0D10E7C5;
	Wed,  6 Aug 2025 22:03:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YhpNMD2L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AF3010E7C5
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Aug 2025 22:03:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754517793; x=1786053793;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=lVLDJ4yk5lBuqti1femJfSIkP2Jy3dA14G7QjDVZS9U=;
 b=YhpNMD2Lb9mqERRcBKkEDwSjRh7311f/JiOeFkgpifAP+VXxQZzpa142
 2Xnbirwm041/gR5cNLZvGOMPwKsTzBoRKsUMRfV51tzgdcm082l5Myu8H
 4cX3ZxBvD6g7TDulMCTcIrBjjD3qEDTYMsNyi3c5UCW1jsKHWZgbQp15k
 hismUPKK4NZpTJCb0R3VhDYDXzHBpkZdaewV5LtFDBLqH7Fxnt5wMAglu
 b2CAmWrPfhzvoRMHH/w5eH5Z4KzgUTkY6as7Dr6IGSsRjnytTzq/ltQv6
 QHwEilPiBL81w8seHOCDZkgUO77uKkmaREFYLefyWodvf0DNAiF+18YTY Q==;
X-CSE-ConnectionGUID: As2xe4uvS+CvoEtkn+/sfQ==
X-CSE-MsgGUID: 5NR2lWn8RpumSQHvFX/igA==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="67544437"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="67544437"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 15:03:13 -0700
X-CSE-ConnectionGUID: 4oEb7Id3SQitoEN9JAwBOw==
X-CSE-MsgGUID: S6C2ZlXERqyQ249g7vpzeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="169322283"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 15:03:12 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 6 Aug 2025 15:03:12 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 6 Aug 2025 15:03:12 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (40.107.101.89)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 6 Aug 2025 15:02:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I4Q6M327Geg/E4QnuFk7lFcdjHUa0FMqXniKWm85YjxnIgx7Sl4yigyrq84Tu+tsF7qGDUudTT3Z5Uml1eTc2XoBhCUlHx1Fx95ocEyYn76vPM999fpnqCpb9QwLMlJKcUAM2QFHkzk0jI4C13W03X5/7ewT+DD3OuwBK2IXmKJxpM+34D7AHWzAdebQNLrnFAaqmCn8N0nsLqVYfCMLzKHImzU9kKUQv6DKkGRoVjysW4DXYmqM3u/7BhIiGy/DignYoj0GaIFrKWpPqroQyn1yeyM0DmtwsnjBePvH+Jiz0e0pedoVnp+3p3tCG+RfKF/nmdr3rf5yh2A7gnmXLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e6dEE55qt49f06gJQtkRN9fVD3ZW2wCE83zPFDdIP94=;
 b=ZSC32Fy3r8ZDqIiOqZf8c+v6JhAF+DglR7mksyNqdNXS5DjgvdLodwHbcM6D4S/AHRe/13BRKr+0aemzzZtd5/Qw/lmk4EReLWpat1hDNax9Ao527wF3xUZTE0SRSt4mkKm3YsE2JW6DclbCVLKMSauYfhmh5zBsNl4eWY8RtJgRzIJ6UME3q0s06mF5ugM4eBXNX4xYyyUBHN2ye23aMAGB/GhtafTLTuGtodGLucMTLwS1bqoFDVvClIzwR7bHeDCPpmdGEgQWwLwMdLktiyZ8y9CyOt5N/aciRZLqyxsLCAW8U2Pqt3RlSIo0rzOXh/NOczowxkBG+oF2FEVj9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by PH7PR11MB8276.namprd11.prod.outlook.com (2603:10b6:510:1af::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.24; Wed, 6 Aug
 2025 22:02:37 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%5]) with mapi id 15.20.8989.018; Wed, 6 Aug 2025
 22:02:37 +0000
Date: Wed, 6 Aug 2025 18:02:32 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <luiz.mello@estudante.ufscar.br>
CC: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>,
 <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIExHQ0kuVmVyaWZpY2F0aW9u?= =?utf-8?Q?Failed?=
 =?utf-8?Q?=3A?= failure for drm/i915: Remove legacy struct_mutex usage
Message-ID: <aJPQ-LJMexnH7sTl@intel.com>
References: <20250805143908.32343-1-luiz.mello@estudante.ufscar.br>
 <175449187915.216422.15156603455166321711@1538d3639d33>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <175449187915.216422.15156603455166321711@1538d3639d33>
X-ClientProxiedBy: BYAPR01CA0064.prod.exchangelabs.com (2603:10b6:a03:94::41)
 To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|PH7PR11MB8276:EE_
X-MS-Office365-Filtering-Correlation-Id: f203b1ea-4b50-44c4-149a-08ddd534f492
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?tBTTwfDVV0oVj1BRgSohcZZ+/1Roh2+votUEFCPyPx9I/bxe7gCl0wX/0h3w?=
 =?us-ascii?Q?EFLi/pQdQamzPnHCton4qQElAy8REi6syAmqFkXlJaY7W+Z28oErJbqbicuS?=
 =?us-ascii?Q?XUNh7Q8S//FzkLACxwWn/Zii/oRvqOLSzgDxa0+uw00PkCzhXhsM9CWcQVyB?=
 =?us-ascii?Q?Q6A7twcOWK2yYd5Ydb2kfkHlWnxSSqMdSc/VzsAoY1RNMRH4m2Mt8WIv2iI4?=
 =?us-ascii?Q?SQUwBgWPFr8uRRuzd96+2OFtQV8SCStPepIFum8zRC5IRiR9wKesY29JNDXp?=
 =?us-ascii?Q?WNoF67bE83n/OGttzlB1uIYLi/n00bSxkw5yOJo/p2CP0PAlcdZoHK7r6Bsw?=
 =?us-ascii?Q?euPzN03BJRt8n180PZQbG8TTY4dNW1E5PyWGe1/5t0RbAZEkfnf/wLCWpuUh?=
 =?us-ascii?Q?pqoqkiiLj3c99XYPzgtVzYV/Tk8itKVTeC+o+KxICJ+t6H2rYnUNe0xeAL91?=
 =?us-ascii?Q?Tbk/9UAoiU2XQXK2plfDrzoPPYV8h/MI3xVgyNNG3Er2hzM2BMs09I9r+5ZC?=
 =?us-ascii?Q?in/9GdSutOqd4/6bUXBFR9buIG6g92sIY4PM/urhsGstGB91RGs9eJLk6OKO?=
 =?us-ascii?Q?aHCBwj5Rw7d/S2o/PXJsxfZ4Sj30MUu4Ua8h4g2lAxxxEw5gL2Uxb3sM2uzQ?=
 =?us-ascii?Q?96Vq5fo8RKAzlk0hs7wF3daZYf/YbMSSFjgN9oReHKttg0WHjJ3oNK4uczV3?=
 =?us-ascii?Q?4+Tn+M2MgJqnIdm0O35Q4vfNIANg0uV0nxw2ltpiD3Zs/eWyhxHJ4zu9Jgct?=
 =?us-ascii?Q?obHuy58wrm/AYc5oGzSLw87ZPpGwNJ/koGqKXTblGZn5rU0nvG2GWQGE29+c?=
 =?us-ascii?Q?Xi5J2T2KjxQ+fT9zZv+uYkkQYzbiWhznkQe4aU5IOg354FAwaLHCP6Tccf+X?=
 =?us-ascii?Q?1K/V5UiPgnjG9H04IkOx+NGctp/TlWgNNFc0viGZHSGDJOwzN9BpjqEXNsvr?=
 =?us-ascii?Q?+of7g1gABdgptvICu0wHu/HMf5naBrSlk9DYh8NboLMD55faCbBxU6FWTgJj?=
 =?us-ascii?Q?8HoQb6RybUM70Lbgpz3ijIJghqF78+zYWC8Pk85Kuv+xiMs9QuSID95eN+9M?=
 =?us-ascii?Q?3GSZEXk7UO/zgK92Vi7GJ2BjbOZIUNwT+AcjBAD8SFENiAgv6G9k/Y/+gl1o?=
 =?us-ascii?Q?4udJVSHulqkvpzLAvnYNaVJzLkQBvvKEO0rn5Bjh0P0QdJOwkxkT5uTkdpEF?=
 =?us-ascii?Q?4KA9snQ6PmRbSJZgC2ug1J4uYPxr5LXcenEOrysQX+uF9xJ2vfk9Mttkdejv?=
 =?us-ascii?Q?rXmIpVQdpPXPwb6BfD6HNzDPQA3XsI+BFDnXD1P+8jOTjbxBES6mOfaH2YD2?=
 =?us-ascii?Q?AtM/xTpjhE5OjzRxvYdTnx27+bWTyJCW1P4KSYrI9P3YDiSLeD6HkRPRhHR0?=
 =?us-ascii?Q?4lNg6Og=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?uo3780TIzA50+dAq9jx7IQ5PTjLiXYx/ha4+qT41GB6UYmnqhiqmmpWz/3yE?=
 =?us-ascii?Q?7fhSRyDxsiQl6u3T8yyMNwEF26i5ye0lkKE4gwdDpmL67uuJmSGEa2uYDrEd?=
 =?us-ascii?Q?AVQApjnOwfvEna0wA4r9NQQU2kNVMVcfqJ9ysScHHahrQVA999XPHktdn5MQ?=
 =?us-ascii?Q?aKwtgVCAI0e4qD8xYyEEPaVGBd958W35b4gc2Z9jJhhy8BMqn1OHwHZcHc6/?=
 =?us-ascii?Q?TQ66cbblNPPOmPli3yRLxQj/YY9YvBERTrQjo9UR6ifrI14dzMCSJCaMqCky?=
 =?us-ascii?Q?o3AZwxRWH/ubAxMf+Xz6urTtQ808ywEqYBRG5B/Kcr9wlGG6UYAsinChy6yM?=
 =?us-ascii?Q?f6jvsrqy5JqQVDfgzMo94bDJiWpY1SbdI0N7A0o/4u8m+q6n6CPS/7v1oJIZ?=
 =?us-ascii?Q?WLTDu1mjVe4Zz8AfEJ524KnLcs30SUihZgSiJ2inDV7kvbScSJR9lSWTdjQA?=
 =?us-ascii?Q?c8j4NTaLpmTM5zm+dGuLjtYLdSsEeE4HIHMno4VJeTPZSmyWANgVE1tuj7ED?=
 =?us-ascii?Q?TfqLKEBv3Nw0MWr5JSxySwvSxF+RZFM/ZfRgkkIQx6eopxlgkneDrGRGF4bC?=
 =?us-ascii?Q?CPV0poLkvTEESpt6Aa4CCsuEKc7eLxbr/QXdGvKUUnNa6pp5yUOwUMzju6J2?=
 =?us-ascii?Q?RApT5HtxwE/AN6Wu73Jc96D3IrM9RZglA11MrCN8tcogfN/2oQZyPX8nzWvd?=
 =?us-ascii?Q?2VA6a/V/4V5iUea/TZWx3VW67EvP9ntDcvgHuee9HuL3O9x2J80D8sj6rgdE?=
 =?us-ascii?Q?mOmka7CeV1KrYhmH8GvSLcX64WEKIB62nud2+y063+AdmWgUonsOi2TNONnr?=
 =?us-ascii?Q?tRQtl0PAtNzrF0ynkC7Kg/0cMFPrHn0rJh2cuDbK0bHy9bMHTBoqr1p4Wb8g?=
 =?us-ascii?Q?P5pJe/plWhz1WLeb6pyPtVuPrFL2kxxXyDhv8u9hqJ3wAT4a7gugA5ahgI3D?=
 =?us-ascii?Q?tnqx0lLF1A1fPhULnjNNJUj1gvAtDSezV7rQwd9sTjKj6o3oKBIaotwg/GSG?=
 =?us-ascii?Q?uNHmOLsgIDhDysER2hf1zlXVc+0o9HeTQxA7itoi8jDJ0/M0NGP+lYc7oUWl?=
 =?us-ascii?Q?ieS0Sf+2ogE2Qp/DgPZ5kGjy1YZwnKPKDeOViaSIo8hOOSbLdEQ44UnEXC/G?=
 =?us-ascii?Q?ae8K4A+80Q+QERhznQ1CONP6zh64H3qciCcBkZ5qrKt17FpjydU9OEWbJUoy?=
 =?us-ascii?Q?nOSTxbFRCnkJys3qRhDo2dg9ww96umTEeR3e97JDGytF8EMFnHOrhM/cnnm8?=
 =?us-ascii?Q?5tyCch5yp7sOCnsBOdzQONRlNphKh7jmUTB28bFN8jemiqzjJA3JRW8mDabR?=
 =?us-ascii?Q?XVneG8mNZ7hkUsU0c5FmjqO3ZPu3G08BS1+Z8L0t09qTDfn1XgGLp6oG16JQ?=
 =?us-ascii?Q?DoFzmJFtNjbfS1T9j8cV6LRTwYdUsjbSQQ85dilhzzErSD0KEXPI9JW7kd0D?=
 =?us-ascii?Q?geyT6tsXdjKS7cIsWxRPkrRsZ8PqqM3w9VZm+nsIP665zmwJUF2J9jOCHwha?=
 =?us-ascii?Q?cPAlQAw8rR7fzTv0ycF6Pk9CFU9I6Gu/5oAyrAS7w3gsbIN+q7e3h7qSNAdM?=
 =?us-ascii?Q?VlFptRwFq1v3w0BWKHen36e4c90eSoOznfHyZxIu?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f203b1ea-4b50-44c4-149a-08ddd534f492
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Aug 2025 22:02:37.6519 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rGMTAIcm2BsmaH+CXoIir/xhS3UA7yHy8rPfHDKWyrIe3xNaFT77efFhQUktNbwGOY4dVz221frJIf/THufRoQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8276
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

On Wed, Aug 06, 2025 at 02:51:19PM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Remove legacy struct_mutex usage
> URL   : https://patchwork.freedesktop.org/series/152533/
> State : failure
> 
> == Summary ==
> 
> Address 'luiz.mello@estudante.ufscar.br' is not on the allowlist, which prevents CI from being triggered for this patch.
> If you want Intel GFX CI to accept this address, please contact the script maintainers at i915-ci-infra@lists.freedesktop.org.
> Exception occurred during validation, bailing out!

I was trying to apply here to resend for our CI to work, but I got some conflicts.
Could you please rebase on top of latest drm-tip branch and resend?

I will then pick it up and send for CI.

Thank you

> 
> 
