Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E15B0668C
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jul 2025 21:10:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D859110E4A3;
	Tue, 15 Jul 2025 19:10:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ja09Y1us";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04DBB10E4A3;
 Tue, 15 Jul 2025 19:10:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752606610; x=1784142610;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=iDjuHRT+uUy6k3LNujAdA9Jf+wChOr3PA9MvCYPlMR8=;
 b=ja09Y1ussFbTIKZ6djODD4omYDWqLIcaMe1Hr1uSN6skkPgkrcSabQof
 D94btKVACN3c0BGhaI0p52LouAMKc/BWpVGELIhnkwNGO5wDjEEoQJuuE
 FijGgTZ+lQ9WdMgyn5BqnezOGCISNNOxKJH19VgFPI/cA+xVol0cGXKR0
 30L48SKgEQU9Ba6814m43haPHZ2iA9sNj4SBprdmMNd23J6tIw3DluWoI
 NltQ/DDnLuJkX8XBfeU1u2fSw6qFYj8IyCaAcLMGCleLeV06c1Tj8NZdV
 1e59zDiu0/ltmjl7DAiEMYev45ZNMsidOKUvrivjD7fMEXHHs64ixx4gs w==;
X-CSE-ConnectionGUID: MEfbADybSemghU6/hsdYFg==
X-CSE-MsgGUID: moKx6O2OSaeUxEncdndFww==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="57448054"
X-IronPort-AV: E=Sophos;i="6.16,314,1744095600"; d="scan'208";a="57448054"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2025 12:10:09 -0700
X-CSE-ConnectionGUID: ysIcdXbrSyye5Hvb/tCDDw==
X-CSE-MsgGUID: fxZ2qGiqQcCXfBuKxpLWmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,314,1744095600"; d="scan'208";a="161851886"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2025 12:10:09 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 15 Jul 2025 12:10:08 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 15 Jul 2025 12:10:08 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (40.107.100.59)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 15 Jul 2025 12:10:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qZ1BnIZFaEWLdsBgzFuLXUAzsaj0LsjjeIFomse/mrqCyXpIcFqMAylij0g2huhWUE5XFT4fv6gXm3yt4y780SrXzgFmvALmIO314m4Yv02FPbLNr0Gd367TYBZznEjUNTlTzkr4rMQZ7+YpGX4Lej82qqmRqO5oGUGIVEmhiNM09n7q6hO0IcsztpqM7DSCVmvCnAz6YW+be1crkbBJBToew56BESDcpI9XHpvBvj+4hyq26O/5+vunTyQjMzSqBLoCiWyuRzKYmO4PLSMb18NnitBwBvb6O4Hb99FEaXjYX6YCsNfA5UGaLEEZl04pvissuAoGH0w3b/WyUxoJKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uhTq+iOcPT9CMtjOB0fTHdw+bVLnLEAo+sPb5/zUruU=;
 b=H3EkhmnNcsPpAt3wstawm5Dbxab7IGk27+KDBq6E6tpZn8GIv//b4XxVOllCDMEZtkZ0dk1mmFU4pE/vjwF1e02ba+YZUinmc/KNhcC2iudRhPZ4ScIuU32M0LuQ4NjotZyYdLMdTg7nRPLKb8Pqx5RkQG8dFjDLHKaz6i62jo85+yXqaIQ1U/lQU30iPhuAVhI5pCAskP8ZBW5zAAo89Lj4mGe4NTMAYBRSkTvEZOF8WEgxisXmAPd/+wf4ahX/O+oZNK8pbqz2L16tO8erdvTqjwhy67sNSjVQN1kaoJNaR5w5sRytf/QkBviw0WaDcU7WabfxatvzWl4EPpBmlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by MN2PR11MB4712.namprd11.prod.outlook.com (2603:10b6:208:264::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.35; Tue, 15 Jul
 2025 19:09:51 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%5]) with mapi id 15.20.8922.023; Tue, 15 Jul 2025
 19:09:51 +0000
Date: Tue, 15 Jul 2025 15:09:47 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v4 1/3] drm/i915/psr: Do not disable Early Transport when
 enable_psr is set
Message-ID: <aHane60V4FB-hUlT@intel.com>
References: <20250715105509.4146806-1-jouni.hogander@intel.com>
 <20250715105509.4146806-2-jouni.hogander@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250715105509.4146806-2-jouni.hogander@intel.com>
X-ClientProxiedBy: SJ0PR03CA0042.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::17) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|MN2PR11MB4712:EE_
X-MS-Office365-Filtering-Correlation-Id: e6e2c134-016b-4780-e119-08ddc3d32c78
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?4g5NdtgHzQNj5823idenzTKMdcuPGffTM1rHcZcEXbkgxUfqV/UMIwVlia?=
 =?iso-8859-1?Q?4wfwClNMfQjuMKGWcou7E3LNe4C3tfk6k9e8ZS/PybWz8J6jWZaUnQg0kp?=
 =?iso-8859-1?Q?bRpHeQnje71Fs5uI+z77OWqq8DPr+LpdUh/kjzksFuI3Fnq7zH/d069aC0?=
 =?iso-8859-1?Q?qimFyu9Od8AjayrvGDhNG9z3e5WRslld5Myp6YwDoJDineAw+BGuNIYzXn?=
 =?iso-8859-1?Q?cQTThuzTZFkE5Ql7mkOrJwrTGMZLY3+HitiwqQvDXXiYjsTUBvLUtqCukh?=
 =?iso-8859-1?Q?SD783bK2Y7x2Jqty5vLN7tpndohi3zvem3C5C6kNAQ3GRQ7cgcvyMfXnO2?=
 =?iso-8859-1?Q?ww+42ILGJ3rrQ9TE8uClb14zE9/pBA4hLXpwMyPo4lSFeXT/7aY4/X5K8t?=
 =?iso-8859-1?Q?WCzZZAVio9s7dqXh3govKdRddSYLMoHxSA2eE9FCZ3j4C2f4xdqT97TEwC?=
 =?iso-8859-1?Q?uZWfY8HExaFa6yBmcAwNHzWgSEUSXM/vX9Z9eIy2Qn6kk1tGRpqI/3g7w0?=
 =?iso-8859-1?Q?j9ulMy+LayIVwE0ML1CrP+Sd1eRofiJYENOgwiwsjLiEYfhtkb5GyBjz8h?=
 =?iso-8859-1?Q?FfztNgYKb1nrXYnIvg1arF8yV5Y7Rp5gApqfkW3e+AeWRcUsKP6y9mWs+6?=
 =?iso-8859-1?Q?9MGJ/2bzQNjDnaYPGhi2nmHljIcH3xzHEVuBjcjHynUkAdMU7RlBePZCJt?=
 =?iso-8859-1?Q?nnbpC8/NIAqORK++H1rp2zu7tO4J+blqinz852+HLykiJq9AbP6kl5PeYA?=
 =?iso-8859-1?Q?yO1gvfbKBj7YW9Dea8W1UdXRPNhoLA7znAg5X/az6jdb0kl3ojqb2lYkHp?=
 =?iso-8859-1?Q?vMBH4ae6Bx/T4RWlhF8HcVXm81GN95za4A10cNLC6IJG3R6+rLxgGAhrLr?=
 =?iso-8859-1?Q?LkU2iilorj8Rh6ar1KGbgjW7zwoEQpecMJmTJsUPf7BQSo199QoLLqJQiH?=
 =?iso-8859-1?Q?ZYdsQl0WMqNwbsFIZ2uyOr2tjhOtXiTz+eQDc2KwQn6MOB5Rfect8eVrjT?=
 =?iso-8859-1?Q?Zd2QujWlkuC+1CHDjrd5nXAYHYDpvmsVOjuPG36a9RfoLkZhX4eTe6ICQ6?=
 =?iso-8859-1?Q?gCKBNu14xLjoOXhJg8zP1gmgKBfiNJnL2qUsruGUvDLUeTyrt6PgsnoDYY?=
 =?iso-8859-1?Q?FG/li7/c1l8JInO9RPCkMIyJtVEHWemyaihtylLSIbYBfnAENkwIpfxRaD?=
 =?iso-8859-1?Q?RIS120DDl75W6G+U+2tM0o4i9pDz1WlNwhU7LZzeAA6C9BvsKZEiq3cfqD?=
 =?iso-8859-1?Q?yvwynybG56eFNKU/FGxLzD4oBtLPe7I1sftEkTejWqMxmlgeubniGAWJub?=
 =?iso-8859-1?Q?qEaSmR8vZtRCSFxFQUADUHjpRYAzEswmSWP8drdpfmdOn8VfvoPbKIeMkC?=
 =?iso-8859-1?Q?NIMYhDqEFRMIgxaCYUth96kmpSsqsOiRBC8t7JQGAs9UkBcsuN8At7fFkY?=
 =?iso-8859-1?Q?kVFajoALqlIiEONPeg1eshm/3U1hHArQZTkEzSrRk7ZeF/6yPuKw8YmMmu?=
 =?iso-8859-1?Q?8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?Y+roog4hv82UlRhAPwczuXM+XZNvYyu+LRzGvSZhFf2snCxRolJCSdFoPT?=
 =?iso-8859-1?Q?HvE/IptgkgDYfLx8miFkqJ3SYpVazTw0dETyCJkiCWYkYsxtgZ7Q/EJ7dH?=
 =?iso-8859-1?Q?5loio5Pl58DQUYuyEruV165TFsmuQCcU+fYPGhhQT54PArMKansFPKNLFv?=
 =?iso-8859-1?Q?p+o8XcLCPOtAlSwRRUs+smQHdjeAZY6jVKfqBHHPcjSiZpaPrbUDXD8j4y?=
 =?iso-8859-1?Q?HSw7OTCFw7jLlSN3o107mTuZCidnYJbcn2+dzqTcY30H/nK30wrPQLsb0c?=
 =?iso-8859-1?Q?c15HY9s1vhcSVU8Q+KVjodHhVzTiucnZhdf9DHsEQ7J8/Q5xcRl6lTL1Sa?=
 =?iso-8859-1?Q?r66tN1AiBld4BALv0B+AafEy4bVd9wYLdcZIAiRYr9Ue7oTk0wOuUkLR0h?=
 =?iso-8859-1?Q?ipruOOyyl7LiT1G2f/8DPLIOMMXFn0yx2f1sy5bO5o0QNNctbXGaCkzADD?=
 =?iso-8859-1?Q?b/vrQXuDC49D2Ur8lyR6KEfkdLhzoRtCvLVPFmu/TNm/raAqTYKZYcT+Gl?=
 =?iso-8859-1?Q?aWo7aI72t7Ln0fKNbYxaiBzUamf96TThSKRzC/dFIhO+TGNsY2FpUFnfL0?=
 =?iso-8859-1?Q?sT5/IRz4FbVofqhJhXlLKmdx874w+mJ6uehm2mleGWj/pvotWPT7ghAKoL?=
 =?iso-8859-1?Q?oHxYuGFcWKnWvm7TxwQ9EgX0atefYnE5HqNOld9sX3H/XKZ2P5wujQHQju?=
 =?iso-8859-1?Q?igb4pg02CeGL9bgwYP+5clEu8S7LwMJ2fZW5bA591T3ii67pF29JPpcUjE?=
 =?iso-8859-1?Q?pTYZql/pitWWUOoWKxArc6zbKdBwH/KZLZeTi/KmqPNlWDYm5g8N+cE846?=
 =?iso-8859-1?Q?5c0tlUCXxl9y6OFMJ37dCz/JTxcn+EUXLqBFpHOR2Hu37b0raeQEVi7HfJ?=
 =?iso-8859-1?Q?YKpoImd0sbZ74pE1PzWmONAqaGGDbL34Bl9ipRzLv/LokjpuZjqAbA/6iO?=
 =?iso-8859-1?Q?I3RgFTSl8MaqoD+VNC4q61Fs0xyPkpFpuw5TmLBMb7DPCh7sjgYLnq477W?=
 =?iso-8859-1?Q?ZgrD/hjXMpO2/hmxyqNAPAp0NJr1/9GXRNDPXKG701yfGog1rkDuJXQp0T?=
 =?iso-8859-1?Q?UcHLng6X7kvFiH048Cc9Lq4fEYMUAf1RaRPIzkXlcuY58zOvZn2u19D5JL?=
 =?iso-8859-1?Q?NtkXd6txYZykMwquwmxX2NIftQnwC6NWAqg/5dHNik2cTg7aFgUimwKzoQ?=
 =?iso-8859-1?Q?dNB72rft5bRJsbK62NTlT+IPErkMJy9MdIG0DerhXkusCM8yb5AJA/ivs2?=
 =?iso-8859-1?Q?k9hyFsWK9OD/flKgBvDjYjcPovRIQB0gbrHJ2RNgj+wXcCgXjLmmIggeoI?=
 =?iso-8859-1?Q?MnnHqQJkuYXXg3K1VXBq+48ceVgAJzrqz5eAIW7OzOYu3wZ5OhPIrM81uq?=
 =?iso-8859-1?Q?4IdMfGR++xLuqCzQtuEVrWkbRAa8+Ah9dILTOUR/yUk2T6xeY18vO+AVxM?=
 =?iso-8859-1?Q?mgcBFoqDdF4yd4hDDpF8vFYseKcGQ8Fqt+VYtoVhG/FocgcBI9MT96Dc8P?=
 =?iso-8859-1?Q?UfLsrZ2OzuaxwU8eqRjWwmPFfYSh3fxloI6SbI/YXusLifZ4kAXo3l0jdE?=
 =?iso-8859-1?Q?vP+5+qthCC22QgPDGdmnjuEivn6LOOQ2uSeMcEIoIPp7LBsLDNSPihc7jM?=
 =?iso-8859-1?Q?Rst8uptH/T4s0tKuyllJ+wwBIN1synJwED7ZPJW5V8Ejqk4rJSMObspQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e6e2c134-016b-4780-e119-08ddc3d32c78
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2025 19:09:51.0313 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OPuP13kLibw/LqQtywfLxPqBjlgbwhf2DciBTHFxpToByVxNedGEsdQsvWxTESc1dIvZ1sj5AQpGNaTKODvRLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4712
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

On Tue, Jul 15, 2025 at 01:55:07PM +0300, Jouni Högander wrote:
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
