Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A429BBE5430
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 21:42:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63DEC10EA78;
	Thu, 16 Oct 2025 19:42:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RMbUIfY7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C73F910EA78;
 Thu, 16 Oct 2025 19:42:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760643728; x=1792179728;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=Qt2lt2vokGV+Wo8jDTSxqzgzegq515HnEHRyLAhcGiw=;
 b=RMbUIfY7gxutmEJWX8DbjZbLrpGOfmCtqMbCRt6FlZiup5gcOHMxnrJh
 XmL+0hoGUGyflqV0zhaX/87nJF35ofKohXvSQqpprGa8RgfIqDMKRXG/Q
 6gE2vrFIPgrPZ+qOqOxCRZrHGgiTbTlLuc82IEEIhIz4sha+bM/Ldqk17
 urHpXWRlMc3YcVNMKAYKpidvC5bub/uUO2WLVfHlAF3Kim4mC07o+2DQQ
 dKJvUvEWkF54kBlKh5owTOR0AeVQO7edo4w1P/1pDrgwIX67awuZT74jb
 8EvRFGo/NwsOe56QeiNNfukW/uZVPRhUXwSxe1TZQ8nmAZJEglGCYLTTt w==;
X-CSE-ConnectionGUID: 8uVTsIvCS4CxbDPaCJKEWg==
X-CSE-MsgGUID: CIHSihf+TzOMuCgrCTzyYg==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="62885829"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="62885829"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 12:42:07 -0700
X-CSE-ConnectionGUID: 5OhITMApTWSBFdPsweJMYg==
X-CSE-MsgGUID: 41aqV/j+T02p0/BV/+mH6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="183025183"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 12:42:07 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 12:42:07 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 16 Oct 2025 12:42:07 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.65) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 12:42:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=owrtDVicxzF7WdE7yVuGf2bQRSDhV56L1iBvUNkG4/RLiwHolzAUMH2CvvgghasXdY+AlXfiyOmeE6d5DGPyHDAI80JeSVfyXX8Y6W+wBIuHFXH0zH1+5TD2RzCdw9gTp0+wq1HRbDArqyO/PUX+M3RqSLTA6fi9dJ+FyPKHulXAQxa4/vQBsjHUCh5NnmZvc4pyhMUrpCNcYgrBhEB+sgSL8ZK4N6l4VaorrPm52RHzjNPwFs0gvSw25FYvIBQopuiaNAphhVOshuob4HEwHzf2YEvK2vTDXmpIQKqTkN1t1OdAbrFWek4cTN42p19ERlegeHe5nlj6fkKdWZbbaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qORzFx6XlbzHngD2AcXZSGNOYm5DbiubntvLGZZg7xk=;
 b=fcuoLEJ6mMMct4STJ9pKlzMqkg6QEFeytWm7A5yu7ItMVMNmfbBBuRo6fr+RUzY8GY6fgyrrNNxr7kGOzLsf3NBWmJoDfyc9YoJ6ZjbLZ6sPrBoEnJR+iVcphVpoW/kaXJFYNa4emWtfzypyYCzh913sJH0MTYDf7vZNciFXBFFVVZR7BaLGALeGDpJJWPECf8g3brmxbIkdPDZjYyThGWEUHLV2KVJp3DWdg+WWHDuT35FvVKE4oeGNMU79tP+XutEpQw4t6kteLTSXEjEiteREteErGWJy2jQIg8Nec9uNn1p1WKMXA6gIkE2bNWsQs8wF3kxSV9jhU14Bk9ThUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by IA1PR11MB7385.namprd11.prod.outlook.com (2603:10b6:208:423::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.11; Thu, 16 Oct
 2025 19:42:04 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%6]) with mapi id 15.20.9228.010; Thu, 16 Oct 2025
 19:42:04 +0000
Date: Thu, 16 Oct 2025 15:42:01 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 "Lucas De Marchi" <lucas.demarchi@intel.com>, Ville
 =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Subject: Re: [RFC] drm/i915: move i915 specific display adaptation files to
 display-adapt
Message-ID: <aPFKieIQItOPUE0d@intel.com>
References: <20251015160140.2296120-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251015160140.2296120-1-jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0152.namprd03.prod.outlook.com
 (2603:10b6:a03:338::7) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|IA1PR11MB7385:EE_
X-MS-Office365-Filtering-Correlation-Id: 3b1e40ca-ba5c-486a-3a6f-08de0cec1573
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?kexMqqTOH2sTP0Nw6ZKFiELF99JT9lsTmwDlq3GSzNL8eAQlnzrncdn48C?=
 =?iso-8859-1?Q?XnHGLNfjqKH6PKkbf1g9eOLj8AHQ5uX9TQypSKWtTVtczAItl+GxK+lWDd?=
 =?iso-8859-1?Q?HGKCYxt6LDrznJ5A8kuRlOJUxWvRgGIQ2df+1ZcyhnT+B/fM0eTNC0V19K?=
 =?iso-8859-1?Q?BTCHgpZQgRd8bKF5trQP5nETteoEPHs3UMRY4H6kQMdDCKaPvRgW2/CJvP?=
 =?iso-8859-1?Q?MOs1ytPjGn0f91bPyDu54r+2U4vFzDnwG3zXTWIJQj8Px6jeAylec+EX6q?=
 =?iso-8859-1?Q?2PE9ChHvf+aql8TPvV2MNz0tLHI6ZeY9qOI029csyhxmFrUCi2uu/TkPzQ?=
 =?iso-8859-1?Q?m/iuouI/x6xtISRbeSfdElX5m0PNYOf50BPohpSQhweWIB1XF+kjJyJ5OS?=
 =?iso-8859-1?Q?Y17swPEU5BR3RG2V0ajfyrtqJ9KvVuHCj75YQvfXonl9fHoDQg/OTcq2G0?=
 =?iso-8859-1?Q?eINOnSBv5L9ZU91ycYGTibwjGXKM9FTxpDVfvzTmkiIT9Er9m2VC0OQ5dy?=
 =?iso-8859-1?Q?eF5ccycwF4sjb019V4DSP8wRH+/RLryf4uRAslFMgmeTCdspWV6F66Wxc5?=
 =?iso-8859-1?Q?gkZDNf6NLbjFmDu7mXqtFSYeuryJQwuivyWTsu/5cOjU2l5y6/Fr9iLMjk?=
 =?iso-8859-1?Q?+bcQpRNDbmBBrgeqx6AQ+PZkHRRqLovdIMm7X+GowgifMcaef2Su3tFcn4?=
 =?iso-8859-1?Q?btsxMn0hQu6iJnKX6VYbgFcLsegoGtsestqZ5G01fNxQWrKy1dEcWYQd2F?=
 =?iso-8859-1?Q?F8339p+pj8NUkECyG1lcHfJ1uEUmcNz0AOKTEOD0ZYuqqlQiJ5omOPT9H2?=
 =?iso-8859-1?Q?W9WcSTGirWlUlK/ZjZnbuI1ul4eeHzMrOldlfptTy602l7uH//lirJgRwD?=
 =?iso-8859-1?Q?tzI89Lh8c1pDxTHyo2dkx7naQ4i+lyFY8jvG17slcJAtEL1Y6BFVFgpP2G?=
 =?iso-8859-1?Q?2xXZXGxKWaL1nLHZtJPedhySJjIWrqpUQ5Fl1oNhdikUnsMcmcMpVFYquM?=
 =?iso-8859-1?Q?sKMC2C79/CuoDI/q81CDGbv0lbD2GC761yjbS5nU3GFsgPhJshm7ohqDp/?=
 =?iso-8859-1?Q?J7bvYsVzCLCgNBKoQN/N0ljMuP7tFlrJHHyqREtnHsmPc3j+UMKwFz/GzR?=
 =?iso-8859-1?Q?1sDeyDSuRp3KTDwyV8On5iAyi9Z5npkOTKlyzt2qs2WG4HBGaJrqI4p3JQ?=
 =?iso-8859-1?Q?KS60C/uv6rdFPlMjG2YNNR/Lfn1zxhz034ekbXpgvHJ14trNE2+W6gWdbw?=
 =?iso-8859-1?Q?Lwkcpn158+LFPr+eTHdPHH/qNz1ZMg/Y56CfHko+wad/HQfZLAw/H6DU+O?=
 =?iso-8859-1?Q?ATZzvvY4gmYE6DPIVghTP3W4ID8++PmIMeFB6Iz819JN6b8StoOl7KxvHw?=
 =?iso-8859-1?Q?V/iKgl4PF1dxkL97IaCe6p6nKQaa4Ilj0wce3TY+mXFgv/uimdjCLauAHg?=
 =?iso-8859-1?Q?mWUTfSXp27F95zwtMB/lUyG5eSTKyHp9eJoWpJHHNWgr5omBB7P0EH8lX1?=
 =?iso-8859-1?Q?p4AcIiHYYlbRYhJgdLDd7o?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?plNPU8E4IFjZrqSizn95ZOGoUfCtFly+mvlRFxQmF3TUPaJAAhkwcmxcAB?=
 =?iso-8859-1?Q?smc+ClEeUZBHC78Iy/RRdq6kTf+2evbIuiuNjhL/AEYXK3Ib7skbWhUObm?=
 =?iso-8859-1?Q?3KbbHb2R6JM4Twt16K6GBYy8PVQ1k2xOCDEDAvlWjovvqAJ/H9QjA8/nBp?=
 =?iso-8859-1?Q?SHm9gRvxfYqlDMQYzxzBkp/K5kU04T6aM2Vp6Q77rdQsy20dOdmAp+jFuI?=
 =?iso-8859-1?Q?TrHOU1wfvT/iKuTa58tn+4taGrktt1gariMR3G6RUoQfEuhUIHBuM3XG1P?=
 =?iso-8859-1?Q?R+hKo5n85f6LsmuVe9MT/ry41PMPgHeNQbCXn98MFyzd8EX8+v7LYN8QHI?=
 =?iso-8859-1?Q?mEsV2jrLZNH1MqugevBroA2/H/tk4NaTpYOnjy7d6bDZBRYqKw4EtOY98Y?=
 =?iso-8859-1?Q?KVkpBzkhjmKArwK8hfR3BSeDSqCCT5Gff63zf3bADRQBFa7kGsLjB215i7?=
 =?iso-8859-1?Q?BkFYf+dYrQ74j/oL1ygHhg4Gek/DomlqbEPJd06YBqhejASY5bxi0TZSUc?=
 =?iso-8859-1?Q?u30MeGwUr00yCf0XSPG9OXXBtg2EePJjkh6mTc47VYWSFDfb+FCvFCL/qB?=
 =?iso-8859-1?Q?PBicqlj3XeaEPjXoqchcIwsI453ony9/32b7Bg2ALQr1GwJZ+wbsC7s6BU?=
 =?iso-8859-1?Q?/SY+IW2Lx8ppQgNfKlx6vNVw0d8bOA5W+/LWrvG8gZCtHJ+UacyyD1PTij?=
 =?iso-8859-1?Q?bYaTrnywP0i/gMwPtRfEpc3AXFgGHzfHa1WpyLc7OjJ6Yu9mZ9Wuzooyra?=
 =?iso-8859-1?Q?9joxnvZmoMX9Brg/RvUXNk62plrUOmUJz5IMyXkvXfAhe/VzAiezQy9nnb?=
 =?iso-8859-1?Q?V677V6psQ+fF/HgUjV5L35pLDSrO10btbBjN+840uRo8SWhxr+yyiGuc8O?=
 =?iso-8859-1?Q?hHCwGklZEZtb8AkBXs2yAgFlH8DAiXv8IRwjpn1DKrfeej1RmIPC3wPnck?=
 =?iso-8859-1?Q?LxSnNDnWVn1y4S36VqrpS7W3incERZF93gpV6pb7JR/q4PfJinnNI16Rf7?=
 =?iso-8859-1?Q?Jh4mASU9uevma+s0YGYpEYRIhy4Ut8HKhnIt7bbClE/JvdJqjz1C1EtAL7?=
 =?iso-8859-1?Q?hQl0Shn4R1MtbYRcKNaE1rPZE1F0i6BwYYxqTbdpt2mzBjscn1qYCVjtMX?=
 =?iso-8859-1?Q?76Jh5kdx3IhMq/G5YCuBzQd2VI75DJxr+dOOdxxx9ud6qEH2kREVv9HTkd?=
 =?iso-8859-1?Q?blVUNXzLiRiH9T8rOmJ/6np5I9YjUSXqTTIeS2SdeEAxP3yXg1qBe6XuOd?=
 =?iso-8859-1?Q?rvygESJGwtaZEZq0hUnSvqs5QJj0cl+jW6v0uMkF5ZzCbPA/AdPjHnt1oY?=
 =?iso-8859-1?Q?z2BWZW4+bGQLV4jhQ7IiZD5uRtwuNVjPmpAkc9WZu2garHkGZ+9TtSKhVy?=
 =?iso-8859-1?Q?cDCBfXZfefB3Jy+EQ0qz5ulfLBAGlrhEFZ0GQPwB1fbLCnbdk/f2PGLUc0?=
 =?iso-8859-1?Q?MS5XVc+1qj6il+BW+F6AuND385bQmE1evzfUkN88fdWoKFa85t1jbwgkQ9?=
 =?iso-8859-1?Q?G+yuFhwbe2yCUs+sZ3QwGVTgR77/p0c0CMXqdSO5RBcVrhp6DwANAzcTiA?=
 =?iso-8859-1?Q?GqegSdQG7YAJR4Ohw798p3vAiYDyMuu0qI48MX+3kQLsaHHXlUZciMFYHy?=
 =?iso-8859-1?Q?oZHSfraKrEeVviBnsd2ZP6mCI6jYcpoaZUkBwTR7PcTzbSK0XDWHrWLw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b1e40ca-ba5c-486a-3a6f-08de0cec1573
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2025 19:42:04.7889 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Vc0JKdnMsYs6lhVqo2ZM7Yhrinnq4J0U1mOQPnAJGLVRF0r1LnwO6zVeS/o/uzfryNwmSoUrE7Pli0dJLDGFhA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7385
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

On Wed, Oct 15, 2025 at 07:01:40PM +0300, Jani Nikula wrote:
> The display/ subdirectory currently contains files that are about i915
> core driver adaptation to display rather than generic display
> implementation. Move them to a new i915 subdirectory display-adapt/.
> 
> In the xe driver, all of its display/ is basically xe core adaptation to
> display. It's just that i915 display/ contains the actual display
> implementation for both. Ideally, we'd have the shared display code
> somewhere else, and the adaptation in i915 would be under display/, but
> we're not quite ready for that kind of churn yet. So let's just call it
> display-adapt for now.
> 
> xe basically has equivalent files to the ones that are being moved,
> apart from intel_dpt.c, for which the implementation is quite different.
> 
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 | 23 +++++++++++--------
>  .../{display => display-adapt}/intel_bo.c     |  3 ++-
>  .../intel_display_rpm.c                       |  5 ++--
>  .../{display => display-adapt}/intel_dpt.c    | 11 +++++----
>  .../intel_dsb_buffer.c                        |  5 ++--
>  .../{display => display-adapt}/intel_fb_bo.c  |  9 ++++----
>  .../{display => display-adapt}/intel_fb_pin.c | 14 +++++------
>  .../intel_fbdev_fb.c                          |  5 +++-
>  .../intel_hdcp_gsc.c                          |  2 +-
>  .../{display => display-adapt}/intel_panic.c  |  6 ++---
>  .../intel_plane_initial.c                     | 17 +++++++-------
>  11 files changed, 56 insertions(+), 44 deletions(-)
>  rename drivers/gpu/drm/i915/{display => display-adapt}/intel_bo.c (98%)
>  rename drivers/gpu/drm/i915/{display => display-adapt}/intel_display_rpm.c (95%)
>  rename drivers/gpu/drm/i915/{display => display-adapt}/intel_dpt.c (97%)
>  rename drivers/gpu/drm/i915/{display => display-adapt}/intel_dsb_buffer.c (96%)
>  rename drivers/gpu/drm/i915/{display => display-adapt}/intel_fb_bo.c (94%)
>  rename drivers/gpu/drm/i915/{display => display-adapt}/intel_fb_pin.c (97%)
>  rename drivers/gpu/drm/i915/{display => display-adapt}/intel_fbdev_fb.c (94%)
>  rename drivers/gpu/drm/i915/{display => display-adapt}/intel_hdcp_gsc.c (99%)
>  rename drivers/gpu/drm/i915/{display => display-adapt}/intel_panic.c (84%)
>  rename drivers/gpu/drm/i915/{display => display-adapt}/intel_plane_initial.c (97%)

or perhaps we are ready to move everything else not in above list to
to drivers/gpu/drm/intel-display/ ?

then keep i915/display like the xe/display both as this adapt layer
tending minimize or even die at some point?!

> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 6d7800e25e55..6000748fc0b3 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -221,6 +221,18 @@ i915-y += \
>  i915-$(CONFIG_HWMON) += \
>  	i915_hwmon.o
>  
> +# display adaptation
> +i915-y += \
> +	display-adapt/intel_bo.o \
> +	display-adapt/intel_display_rpm.o \
> +	display-adapt/intel_dpt.o \
> +	display-adapt/intel_dsb_buffer.o \
> +	display-adapt/intel_fb_bo.o \
> +	display-adapt/intel_fb_pin.o \
> +	display-adapt/intel_hdcp_gsc.o \
> +	display-adapt/intel_panic.o \
> +	display-adapt/intel_plane_initial.o
> +
>  # modesetting core code
>  i915-y += \
>  	display/hsw_ips.o \
> @@ -231,7 +243,6 @@ i915-y += \
>  	display/intel_atomic.o \
>  	display/intel_audio.o \
>  	display/intel_bios.o \
> -	display/intel_bo.o \
>  	display/intel_bw.o \
>  	display/intel_cdclk.o \
>  	display/intel_cmtg.o \
> @@ -250,7 +261,6 @@ i915-y += \
>  	display/intel_display_power_map.o \
>  	display/intel_display_power_well.o \
>  	display/intel_display_reset.o \
> -	display/intel_display_rpm.o \
>  	display/intel_display_rps.o \
>  	display/intel_display_snapshot.o \
>  	display/intel_display_wa.o \
> @@ -259,14 +269,10 @@ i915-y += \
>  	display/intel_dpio_phy.o \
>  	display/intel_dpll.o \
>  	display/intel_dpll_mgr.o \
> -	display/intel_dpt.o \
>  	display/intel_dpt_common.o \
>  	display/intel_drrs.o \
>  	display/intel_dsb.o \
> -	display/intel_dsb_buffer.o \
>  	display/intel_fb.o \
> -	display/intel_fb_bo.o \
> -	display/intel_fb_pin.o \
>  	display/intel_fbc.o \
>  	display/intel_fdi.o \
>  	display/intel_fifo_underrun.o \
> @@ -274,7 +280,6 @@ i915-y += \
>  	display/intel_frontbuffer.o \
>  	display/intel_global_state.o \
>  	display/intel_hdcp.o \
> -	display/intel_hdcp_gsc.o \
>  	display/intel_hdcp_gsc_message.o \
>  	display/intel_hotplug.o \
>  	display/intel_hotplug_irq.o \
> @@ -286,12 +291,10 @@ i915-y += \
>  	display/intel_modeset_setup.o \
>  	display/intel_modeset_verify.o \
>  	display/intel_overlay.o \
> -	display/intel_panic.o \
>  	display/intel_pch.o \
>  	display/intel_pch_display.o \
>  	display/intel_pch_refclk.o \
>  	display/intel_plane.o \
> -	display/intel_plane_initial.o \
>  	display/intel_pmdemand.o \
>  	display/intel_psr.o \
>  	display/intel_quirks.o \
> @@ -312,7 +315,7 @@ i915-$(CONFIG_ACPI) += \
>  	display/intel_opregion.o
>  i915-$(CONFIG_DRM_FBDEV_EMULATION) += \
>  	display/intel_fbdev.o \
> -	display/intel_fbdev_fb.o
> +	display-adapt/intel_fbdev_fb.o
>  i915-$(CONFIG_DEBUG_FS) += \
>  	display/intel_display_debugfs.o \
>  	display/intel_display_debugfs_params.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_bo.c b/drivers/gpu/drm/i915/display-adapt/intel_bo.c
> similarity index 98%
> rename from drivers/gpu/drm/i915/display/intel_bo.c
> rename to drivers/gpu/drm/i915/display-adapt/intel_bo.c
> index 6ae1374d5c2b..bd3956d09aab 100644
> --- a/drivers/gpu/drm/i915/display/intel_bo.c
> +++ b/drivers/gpu/drm/i915/display-adapt/intel_bo.c
> @@ -3,11 +3,12 @@
>  
>  #include <drm/drm_panic.h>
>  
> +#include "display/intel_bo.h"
> +
>  #include "gem/i915_gem_mman.h"
>  #include "gem/i915_gem_object.h"
>  #include "gem/i915_gem_object_frontbuffer.h"
>  #include "i915_debugfs.h"
> -#include "intel_bo.h"
>  
>  bool intel_bo_is_tiled(struct drm_gem_object *obj)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_rpm.c b/drivers/gpu/drm/i915/display-adapt/intel_display_rpm.c
> similarity index 95%
> rename from drivers/gpu/drm/i915/display/intel_display_rpm.c
> rename to drivers/gpu/drm/i915/display-adapt/intel_display_rpm.c
> index 56c4024201c1..b7a7fd32ef8b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_rpm.c
> +++ b/drivers/gpu/drm/i915/display-adapt/intel_display_rpm.c
> @@ -1,9 +1,10 @@
>  // SPDX-License-Identifier: MIT
>  /* Copyright © 2025 Intel Corporation */
>  
> +#include "display/intel_display_core.h"
> +#include "display/intel_display_rpm.h"
> +
>  #include "i915_drv.h"
> -#include "intel_display_core.h"
> -#include "intel_display_rpm.h"
>  #include "intel_runtime_pm.h"
>  
>  static struct intel_runtime_pm *display_to_rpm(struct intel_display *display)
> diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display-adapt/intel_dpt.c
> similarity index 97%
> rename from drivers/gpu/drm/i915/display/intel_dpt.c
> rename to drivers/gpu/drm/i915/display-adapt/intel_dpt.c
> index c0a817018d08..57f3f22ab940 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpt.c
> +++ b/drivers/gpu/drm/i915/display-adapt/intel_dpt.c
> @@ -8,12 +8,13 @@
>  #include "gem/i915_gem_lmem.h"
>  #include "gt/gen8_ppgtt.h"
>  
> +#include "display/intel_display_core.h"
> +#include "display/intel_display_rpm.h"
> +#include "display/intel_display_types.h"
> +#include "display/intel_dpt.h"
> +#include "display/intel_fb.h"
> +
>  #include "i915_drv.h"
> -#include "intel_display_core.h"
> -#include "intel_display_rpm.h"
> -#include "intel_display_types.h"
> -#include "intel_dpt.h"
> -#include "intel_fb.h"
>  
>  struct i915_dpt {
>  	struct i915_address_space vm;
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb_buffer.c b/drivers/gpu/drm/i915/display-adapt/intel_dsb_buffer.c
> similarity index 96%
> rename from drivers/gpu/drm/i915/display/intel_dsb_buffer.c
> rename to drivers/gpu/drm/i915/display-adapt/intel_dsb_buffer.c
> index c77d48bda26a..fcede0bef9ac 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
> +++ b/drivers/gpu/drm/i915/display-adapt/intel_dsb_buffer.c
> @@ -3,12 +3,13 @@
>   * Copyright 2023, Intel Corporation.
>   */
>  
> +#include "display/intel_display_types.h"
> +#include "display/intel_dsb_buffer.h"
> +
>  #include "gem/i915_gem_internal.h"
>  #include "gem/i915_gem_lmem.h"
>  #include "i915_drv.h"
>  #include "i915_vma.h"
> -#include "intel_display_types.h"
> -#include "intel_dsb_buffer.h"
>  
>  u32 intel_dsb_buffer_ggtt_offset(struct intel_dsb_buffer *dsb_buf)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_bo.c b/drivers/gpu/drm/i915/display-adapt/intel_fb_bo.c
> similarity index 94%
> rename from drivers/gpu/drm/i915/display/intel_fb_bo.c
> rename to drivers/gpu/drm/i915/display-adapt/intel_fb_bo.c
> index 7336d7294a7b..89fb6d44cdd8 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb_bo.c
> +++ b/drivers/gpu/drm/i915/display-adapt/intel_fb_bo.c
> @@ -7,11 +7,12 @@
>  
>  #include "gem/i915_gem_object.h"
>  
> +#include "display/intel_display_core.h"
> +#include "display/intel_display_types.h"
> +#include "display/intel_fb.h"
> +#include "display/intel_fb_bo.h"
> +
>  #include "i915_drv.h"
> -#include "intel_display_core.h"
> -#include "intel_display_types.h"
> -#include "intel_fb.h"
> -#include "intel_fb_bo.h"
>  
>  void intel_fb_bo_framebuffer_fini(struct drm_gem_object *obj)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display-adapt/intel_fb_pin.c
> similarity index 97%
> rename from drivers/gpu/drm/i915/display/intel_fb_pin.c
> rename to drivers/gpu/drm/i915/display-adapt/intel_fb_pin.c
> index 45af04cb0fb2..3f33f067ec17 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> +++ b/drivers/gpu/drm/i915/display-adapt/intel_fb_pin.c
> @@ -7,18 +7,18 @@
>   * DOC: display pinning helpers
>   */
>  
> +#include "display/intel_display_core.h"
> +#include "display/intel_display_rpm.h"
> +#include "display/intel_display_types.h"
> +#include "display/intel_dpt.h"
> +#include "display/intel_fb.h"
> +#include "display/intel_fb_pin.h"
> +#include "display/intel_plane.h"
>  #include "gem/i915_gem_domain.h"
>  #include "gem/i915_gem_object.h"
>  
>  #include "i915_drv.h"
>  #include "i915_vma.h"
> -#include "intel_display_core.h"
> -#include "intel_display_rpm.h"
> -#include "intel_display_types.h"
> -#include "intel_dpt.h"
> -#include "intel_fb.h"
> -#include "intel_fb_pin.h"
> -#include "intel_plane.h"
>  
>  static struct i915_vma *
>  intel_fb_pin_to_dpt(const struct drm_framebuffer *fb,
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display-adapt/intel_fbdev_fb.c
> similarity index 94%
> rename from drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> rename to drivers/gpu/drm/i915/display-adapt/intel_fbdev_fb.c
> index 56b145841473..15684cccd85e 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> +++ b/drivers/gpu/drm/i915/display-adapt/intel_fbdev_fb.c
> @@ -5,10 +5,13 @@
>  
>  #include <linux/fb.h>
>  
> +#include "display/intel_display_core.h"
> +#include "display/intel_display_types.h"
> +#include "display/intel_fb.h"
> +#include "display/intel_fbdev_fb.h"
>  #include "gem/i915_gem_lmem.h"
>  
>  #include "i915_drv.h"
> -#include "intel_fbdev_fb.h"
>  
>  struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display-adapt/intel_hdcp_gsc.c
> similarity index 99%
> rename from drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> rename to drivers/gpu/drm/i915/display-adapt/intel_hdcp_gsc.c
> index 6a22862d6be1..16f1e61b090b 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> +++ b/drivers/gpu/drm/i915/display-adapt/intel_hdcp_gsc.c
> @@ -5,12 +5,12 @@
>  
>  #include <drm/intel/i915_hdcp_interface.h>
>  
> +#include "display/intel_hdcp_gsc.h"
>  #include "gem/i915_gem_region.h"
>  #include "gt/intel_gt.h"
>  #include "gt/uc/intel_gsc_uc_heci_cmd_submit.h"
>  #include "i915_drv.h"
>  #include "i915_utils.h"
> -#include "intel_hdcp_gsc.h"
>  
>  struct intel_hdcp_gsc_context {
>  	struct drm_i915_private *i915;
> diff --git a/drivers/gpu/drm/i915/display/intel_panic.c b/drivers/gpu/drm/i915/display-adapt/intel_panic.c
> similarity index 84%
> rename from drivers/gpu/drm/i915/display/intel_panic.c
> rename to drivers/gpu/drm/i915/display-adapt/intel_panic.c
> index 7311ce4e8b6c..028ff83b2519 100644
> --- a/drivers/gpu/drm/i915/display/intel_panic.c
> +++ b/drivers/gpu/drm/i915/display-adapt/intel_panic.c
> @@ -3,10 +3,10 @@
>  
>  #include <drm/drm_panic.h>
>  
> +#include "display/intel_display_types.h"
> +#include "display/intel_fb.h"
> +#include "display/intel_panic.h"
>  #include "gem/i915_gem_object.h"
> -#include "intel_display_types.h"
> -#include "intel_fb.h"
> -#include "intel_panic.h"
>  
>  struct intel_panic *intel_panic_alloc(void)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display-adapt/intel_plane_initial.c
> similarity index 97%
> rename from drivers/gpu/drm/i915/display/intel_plane_initial.c
> rename to drivers/gpu/drm/i915/display-adapt/intel_plane_initial.c
> index a9f36b1b50c1..57336ca6b0ed 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
> +++ b/drivers/gpu/drm/i915/display-adapt/intel_plane_initial.c
> @@ -3,17 +3,18 @@
>   * Copyright © 2021 Intel Corporation
>   */
>  
> +#include "display/intel_crtc.h"
> +#include "display/intel_display.h"
> +#include "display/intel_display_core.h"
> +#include "display/intel_display_types.h"
> +#include "display/intel_fb.h"
> +#include "display/intel_frontbuffer.h"
> +#include "display/intel_plane.h"
> +#include "display/intel_plane_initial.h"
>  #include "gem/i915_gem_lmem.h"
>  #include "gem/i915_gem_region.h"
> +
>  #include "i915_drv.h"
> -#include "intel_crtc.h"
> -#include "intel_display.h"
> -#include "intel_display_core.h"
> -#include "intel_display_types.h"
> -#include "intel_fb.h"
> -#include "intel_frontbuffer.h"
> -#include "intel_plane.h"
> -#include "intel_plane_initial.h"
>  
>  void intel_plane_initial_vblank_wait(struct intel_crtc *crtc)
>  {
> -- 
> 2.47.3
> 
