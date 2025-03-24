Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 689ABA6DC84
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 15:04:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1E1810E218;
	Mon, 24 Mar 2025 14:04:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C1DUirrH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2ECD410E218;
 Mon, 24 Mar 2025 14:04:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742825081; x=1774361081;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=bmAs86qQ0w5jSm4um1rc+2wd7N3Rql5uGTzMZ+2siS0=;
 b=C1DUirrHEiinFIS1zOmmgQ/LZzYeRBATptEoZhNrPysW8JpzXwE+7knj
 ktvQxN2vUAv+w0s5ZD3Xh/3adymPzgPE5X8izrfh6S287wQU9j3semSbG
 u89zEhREUX2dMUACesP6ZmQtvVbagI7ONSAnd2zxX5Ook5+4mABAbfQLe
 eDrUBIhWRRIwhpdwQgR07XPPc3rUeHxckF9ZnW7qdAxAfd/xh0J/xVUJr
 n++nttS5DRw+chDeUO1kkBKMdtZgrjUNqFYuSme9pEeqcgnt0cAIkAmwK
 9uJPk0QLdNbt/ODlPkY/mZXbPo651J5yCqXVHXBABx7xLgr1DvwHtinwA g==;
X-CSE-ConnectionGUID: N+aC5KkJSLamGXm9lrYwMQ==
X-CSE-MsgGUID: pZPK57JBQ9GwCGVwiAQphQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="47903469"
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="47903469"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 07:04:40 -0700
X-CSE-ConnectionGUID: My1w6DOUQZyFXhe79jCpnw==
X-CSE-MsgGUID: o2GZxElDQLO8CwbbS3KdRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="123782482"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Mar 2025 07:04:41 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 24 Mar 2025 07:04:40 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 24 Mar 2025 07:04:40 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 24 Mar 2025 07:04:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oT3nyXD+CkNzpjmlKsWsts5hu5UZKsQaITUxqShrI0X9Ik/ty+v5uqkKB7DANl5x4EJKiBvt1quOl2tZCn4jvz4pXZ/KiP4u83t1398o6ONadZt/bYvLpuR3vDWmyOlVjymso76qQ7brtaojvGlndQ+Uq9EUEnlLMx70mbN/vztsIkmiiXLFW16RaBL4QF/DuqUXJyd4JQMcR/hgqVqK9ALtWyvM65hyf8/MUdrysX0cTsX1vkz42ao0cd7FJO3A9r3FA6hnMOCbMC3w+TL9lFMdCHRTdGMsv+5RUCTL+jURfmUtul6AUt3qXJc1AzpCvtThfy+LFy48mi7fm7lNfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hLBFWpMeFIaz1wiieIJCSuYzJ2m48Pnn4C/naNCFchY=;
 b=tkP2OcVOCDDozQJJQbL3UMaj71cyP0S5anPpKe9AqFx3O4Nb15dGCv7hBNwkfZRxXTfZmPMWBlSiBjHCGCdu/mOjs8CQRlsu/hDre8fiDZaFJW/kwkym2xch/0birzIO0Cgikv3OuHQdHqBuRXiaehjP+Cnsa4jV4VeHlRYrT54DVurT6CenxAmNrisMw8b/jyb9FuvI9Yz5R4sShPpHZ+hFr4akk2xIv0jDbutXwStysGiKpyzPsFCI8hVP1WusYh7oyCcXaZ5OTk47kUM4PwzpfddaawA4BdzfiUmP4OdGnr4jKABkeiKOrPeFC/AVh6jUvRY/5/QuGGTS0ojNvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA1PR11MB7385.namprd11.prod.outlook.com (2603:10b6:208:423::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.42; Mon, 24 Mar
 2025 14:04:36 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8534.040; Mon, 24 Mar 2025
 14:04:36 +0000
Date: Mon, 24 Mar 2025 16:04:36 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 "Ville Syrjala" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 1/3] drm/i915/pps: Add helpers to lock PPS for AUX
 transfers
Message-ID: <Z-FmdLi1NzrIyspi@ideak-desk.fi.intel.com>
References: <20250321145626.94101-1-imre.deak@intel.com>
 <20250321145626.94101-2-imre.deak@intel.com>
 <874izibtvx.fsf@intel.com>
 <Z-FJjXyOjHEvXZz7@ideak-desk.fi.intel.com>
 <87v7rya9zg.fsf@intel.com>
 <Z-Fjn7-gadpbaIH_@ideak-desk.fi.intel.com>
 <87h63ia5rd.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87h63ia5rd.fsf@intel.com>
X-ClientProxiedBy: AM5PR0601CA0054.eurprd06.prod.outlook.com
 (2603:10a6:206::19) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA1PR11MB7385:EE_
X-MS-Office365-Filtering-Correlation-Id: 1e39ca01-a17a-4530-d8e8-08dd6adccf22
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?FhcWdi6RRI9rya2Dq0euX19wr094aXiobzXjn8TLGPB4V5CRLAaEe9WK7QvZ?=
 =?us-ascii?Q?xsnwSnoK5FBgJTvhtYhBmpo+vKUPFE87wMkYphYXJNx/RgpkmQR6w2pkzNCo?=
 =?us-ascii?Q?uz2Ul58NgNc445hle2UMUYZQboY8UUSxrLft53J1PbbiUXo2zEyDcbxm+qU4?=
 =?us-ascii?Q?ZpMhV7N9lywT+j/ymC+fzcTkHeQDPX6+qfU4IIDuONR8Pca+sfWRqh6csiZD?=
 =?us-ascii?Q?OSNfw01q7kCmkGeg2ZeS4lkN86DT0EeomDpavK2bgyIVnTt4Y28F+SYeFTU/?=
 =?us-ascii?Q?iCWAY/Pj4Haqx2YOSd+94bwa3lpx5z5jJlLk2EQXWW4aYp+MP2Jxo8IQ8pHO?=
 =?us-ascii?Q?hcMYrBFJQl/mW4ym+LJ5F3OE9e8SBkXIDDyaGPhhfG2BKXJ8RhPTDhKT1Mkx?=
 =?us-ascii?Q?USMLi2PAhVDno0YQNmu9raQb8kseEqdDNgbKuL+FMTLmTHCMm8sM31nHG3Uz?=
 =?us-ascii?Q?n5Re3wG5xw1RP7bTdHwgeyOu6Tf5chrzdksuhrA+AjOXRfroibtfUa/MF1fU?=
 =?us-ascii?Q?ao11KO1Fj/WwqtQNN0JNNoV9g8J1YnQltyi4eF1RGmX1XbTaKCrVlz+/NvzI?=
 =?us-ascii?Q?qsjhnmY4bihhZF3M6a6qjeF58xAcTgjmW8Ik7CKVPlpBhXyLBCgPgfe3bvQw?=
 =?us-ascii?Q?Zk40Y6W6Fw6bObXOELoOe1RDnC2BMdVNSEMr4Qy2TKovpaoCe89Jza9hvYlg?=
 =?us-ascii?Q?Rtk+6/L56Zzl3wt547BJYSGVr7OttO+P16WcFbNXeGc9yLkvoH39q2xVbyu1?=
 =?us-ascii?Q?ybbAEpV7+pUB90A4FDy/3uDNOr+7JWhi0qHy4o6He1VPVZpBmcnjkJE1ocSp?=
 =?us-ascii?Q?AOg42UpcZ186/5ak+Ml+77V+F6voBnixJjY3BWe9kTbad6+Zwo4st8+TNBvP?=
 =?us-ascii?Q?WZfO1RJ6oO4BZ63L9CcP2G3lyLwmiQGsxdtR+yoIGFzn9Yw2Ll3L1Eg9kCcv?=
 =?us-ascii?Q?RD4R51Ij9vYeQaDvdfRR5jK6UKSd2quixNhC1Ko1W4JYSJJ6atBLdnssXJGz?=
 =?us-ascii?Q?iW2oY38pfT4Qh887KITDUc+t+HoijS2kZ2AwubBORR/RwYdFt0HxL2+f8LQI?=
 =?us-ascii?Q?JJsBeh6Wh5D/JMpBFDsNh48ChqMVkVcE4bj88oq1ggEBNj+ohTzm/gjBwvpu?=
 =?us-ascii?Q?ITKqc+rSqsTdW3VWCKBsal1uYGVLWroSYpoaIVwA9P8go8k6dAW5aelV6sTc?=
 =?us-ascii?Q?ZoRASoG6u1X9XZ10RGw0gXba1Et17P/L37Se0+kxjw/C/xHAE4gGK7A1B7eE?=
 =?us-ascii?Q?oEVZ1g9INj9f4iiHkbxtRAegbvuFxBgSOwgPbyv9G2jyd1YGT9Q2zEd7oUv4?=
 =?us-ascii?Q?u3ZPyq7gnCJiS5qkemQ4//7/+vYvrfgWAKTvbzSqpRhKBXKdQMa/tO7MfoIJ?=
 =?us-ascii?Q?6ItN/tjPg9aCTRHoyf9TaF/8qF2X?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?VWXfb6zHf0IAaK8gMmgr+v8x4XwpPPEhO+aa3EGm60hs9ktNQx6uIhyQmzMv?=
 =?us-ascii?Q?8UmQSbTraE+7P59QcrwV2tiB9wze44y0NUEOIQPgVOyhtDWmLC+sjRfBk67d?=
 =?us-ascii?Q?Lb+f8Yf+eTnxYfxcHC72kK3NEDecpffzikw3GrGyF4DPZQ5ca9mQVM0rkDs5?=
 =?us-ascii?Q?sb2eyoPJiDFRUWYgxK+ZpUC6o7vzEzhxdXeQ42nMyiJuUO/BdGa12x3hntrf?=
 =?us-ascii?Q?2nwnDBBN9Fr6DGNuX4nHhr9IZYDhUtvaVwRrLp97ojzX4/XiJHVueJAzKwP4?=
 =?us-ascii?Q?n3aPv22ZGcTbFEReBj8QePGbpk7saU5Oy/6mz7pNC5RosM9CMHvtafrHik8g?=
 =?us-ascii?Q?LLWN03O/sY8xXUZr3Hmt58dj3nfwhVTB2FMPWo3ij2p7xjTU/iEeIPWAXJI9?=
 =?us-ascii?Q?tv2F92d3Er9+Kk4viu2lRo9I0e2Ku+B0cFPWKqlzzW6leSYHRgMn9521TS9r?=
 =?us-ascii?Q?u9OLagPaCnnTf3v8o4D4zDjSg+gDQLNHXz4eUBlw3Y8RyIOD4mzqArFvFkff?=
 =?us-ascii?Q?HVaHfSUkUovURi2OMhA6LtgUtoTC1u/I7dfmnEyWH1PQ2fAEiu/h5c5v9XGL?=
 =?us-ascii?Q?FZ3CUhLmHfHGQ8EY65SzjyrU2El0zvEx4/qz25QIYPBAGJaWYx/7ocS5kfoX?=
 =?us-ascii?Q?ictHAtDEsYCLvt19UQ0CzeWlLl0yKyTNV47xj0Rb3dM3/UBD+YUcr/hOT73n?=
 =?us-ascii?Q?Sx2zef2tZGJJ42cEbbJTPLVjWObVBG9D6uaHKfWiCmDfKMuev5ESRU4nWwrD?=
 =?us-ascii?Q?TPjnusiAL9/yf7Gv45Nj/UUBtsNxBNIE8kdaLpnaNxT0hAnmkLM6vQhr44uf?=
 =?us-ascii?Q?G5XLGBR6ZSNzO1sJoTCpqlKizqQcp25XLOIe2C73OmvPujSRda1ZIro9uIVj?=
 =?us-ascii?Q?PcXYTfTvEAWrrttM/nox25sb7dsK+gjs2zm+1Lf1mtXuxByZSF7G7/C+FgFA?=
 =?us-ascii?Q?rdz8O2y4zw9JcDzwU67BIqPZSaGhgWjJK03He8wZ6L6fYEh4rNCABRyLcuGb?=
 =?us-ascii?Q?jpJdAwyPGj0Cx/I3ttK4wUE2gVRc7ncMEkSNRqYVfWhLRq+4eVOx64bR7EiE?=
 =?us-ascii?Q?UH0HKNZU97slJ+HWAUNQeuw4f9WvrgjLdVHhjkzVCIPiK0Vzluyh/uoYiv7o?=
 =?us-ascii?Q?VUxHbe7IPPyS8BnGoId4W3NYZr0KMzsW2uTY6cPGKPpC8NptfuW/00Tt9yY0?=
 =?us-ascii?Q?+WdfcXWB6RJPkrYxkQOr21Aeu8P5hq4PubkkwzNgugixgBvz73pRvvKzwskI?=
 =?us-ascii?Q?wy4Zpj/JPxF1RrCh9gCYZclPGvkCzVIHZj02o09tpRnE6YPUsWr/NKMQxs5W?=
 =?us-ascii?Q?7uJoUXkPSkfE295PfzAV6vNIyEl10WA3qidkdkLCMadHTa1GRCMEmyp1iyIS?=
 =?us-ascii?Q?Xg9MjOkm0HBUUcBlXefm5TF1bBge9bAG5gNeBuBUPytquHYMwK4D1eHB54eG?=
 =?us-ascii?Q?jeUWVlu2Uz4CBMQE9nkpwYXxdm7YQJnP5SlJGGy8FrJtCBn1b2dWjsw8rTe4?=
 =?us-ascii?Q?hYRVhmjn1muiDLjNiIc2B+TcuVn21nikRWqCWD6xaxwg0+eSC4/h8VoRJKfN?=
 =?us-ascii?Q?QrNBqMzA9NniLAYsvNfDaTn1/m/sBYD4Px1/hO3f?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e39ca01-a17a-4530-d8e8-08dd6adccf22
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2025 14:04:35.9198 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: i622u7fxLbWEbfrUnWRhs30MItedhnYoMiQzRrQQaSImiqkSX+ts0S8zmg1a6NL24lmwu4HsWczP+bfLeUedQw==
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 24, 2025 at 03:59:50PM +0200, Jani Nikula wrote:
> On Mon, 24 Mar 2025, Imre Deak <imre.deak@intel.com> wrote:
> > On Mon, Mar 24, 2025 at 02:28:35PM +0200, Jani Nikula wrote:
> >> On Mon, 24 Mar 2025, Imre Deak <imre.deak@intel.com> wrote:
> >> > On Mon, Mar 24, 2025 at 12:33:22PM +0200, Jani Nikula wrote:
> >> >> On Fri, 21 Mar 2025, Imre Deak <imre.deak@intel.com> wrote:
> >> >> > Factor out from the DP AUX transfer function the logic to lock/unlock
> >> >> > the Panel Power Sequencer state and enable/disable the VDD power
> >> >> > required for the AUX transfer, adding these to helpers in intel_pps.c .
> >> >> > This prepares for a follow-up change making these steps dependent on the
> >> >> > platform and output type.
> >> >> >
> >> >> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> >> >> > ---
> >> >> >  drivers/gpu/drm/i915/display/intel_dp_aux.c | 16 ++----------
> >> >> >  drivers/gpu/drm/i915/display/intel_pps.c    | 29 ++++++++++++++++++++-
> >> >> >  drivers/gpu/drm/i915/display/intel_pps.h    |  3 ++-
> >> >> >  3 files changed, 32 insertions(+), 16 deletions(-)
> >> >> >
> >> >> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> >> >> > index ec27bbd70bcf0..bf5ccfa24ca0b 100644
> >> >> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> >> >> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> >> >> > @@ -272,15 +272,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
> >> >> >  	aux_domain = intel_aux_power_domain(dig_port);
> >> >> >  
> >> >> >  	aux_wakeref = intel_display_power_get(display, aux_domain);
> >> >> > -	pps_wakeref = intel_pps_lock(intel_dp);
> >> >> > -
> >> >> > -	/*
> >> >> > -	 * We will be called with VDD already enabled for dpcd/edid/oui reads.
> >> >> > -	 * In such cases we want to leave VDD enabled and it's up to upper layers
> >> >> > -	 * to turn it off. But for eg. i2c-dev access we need to turn it on/off
> >> >> > -	 * ourselves.
> >> >> > -	 */
> >> >> > -	vdd = intel_pps_vdd_on_unlocked(intel_dp);
> >> >> > +	pps_wakeref = intel_pps_lock_for_aux(intel_dp, &vdd);
> >> >> >  
> >> >> >  	/*
> >> >> >  	 * dp aux is extremely sensitive to irq latency, hence request the
> >> >> > @@ -289,8 +281,6 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
> >> >> >  	 */
> >> >> >  	cpu_latency_qos_update_request(&intel_dp->pm_qos, 0);
> >> >> >  
> >> >> > -	intel_pps_check_power_unlocked(intel_dp);
> >> >> > -
> >> >> >  	/*
> >> >> >  	 * FIXME PSR should be disabled here to prevent
> >> >> >  	 * it using the same AUX CH simultaneously
> >> >> > @@ -427,10 +417,8 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
> >> >> >  out:
> >> >> >  	cpu_latency_qos_update_request(&intel_dp->pm_qos, PM_QOS_DEFAULT_VALUE);
> >> >> >  
> >> >> > -	if (vdd)
> >> >> > -		intel_pps_vdd_off_unlocked(intel_dp, false);
> >> >> > +	intel_pps_unlock_for_aux(intel_dp, pps_wakeref, vdd);
> >> >> >  
> >> >> > -	intel_pps_unlock(intel_dp, pps_wakeref);
> >> >> >  	intel_display_power_put_async(display, aux_domain, aux_wakeref);
> >> >> >  out_unlock:
> >> >> >  	intel_digital_port_unlock(encoder);
> >> >> > diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> >> >> > index 617ce49931726..3c078fd53fbfa 100644
> >> >> > --- a/drivers/gpu/drm/i915/display/intel_pps.c
> >> >> > +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> >> >> > @@ -571,7 +571,7 @@ static bool edp_have_panel_vdd(struct intel_dp *intel_dp)
> >> >> >  	return intel_de_read(display, _pp_ctrl_reg(intel_dp)) & EDP_FORCE_VDD;
> >> >> >  }
> >> >> >  
> >> >> > -void intel_pps_check_power_unlocked(struct intel_dp *intel_dp)
> >> >> > +static void intel_pps_check_power_unlocked(struct intel_dp *intel_dp)
> >> >> >  {
> >> >> >  	struct intel_display *display = to_intel_display(intel_dp);
> >> >> >  	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> >> >> > @@ -955,6 +955,33 @@ void intel_pps_vdd_off(struct intel_dp *intel_dp)
> >> >> >  		intel_pps_vdd_off_unlocked(intel_dp, false);
> >> >> >  }
> >> >> >  
> >> >> > +intel_wakeref_t intel_pps_lock_for_aux(struct intel_dp *intel_dp, bool *vdd_ref)
> >> >> > +{
> >> >> > +	intel_wakeref_t wakeref;
> >> >> > +
> >> >> > +	wakeref = intel_pps_lock(intel_dp);
> >> >> > +
> >> >> > +	/*
> >> >> > +	 * We will be called with VDD already enabled for dpcd/edid/oui reads.
> >> >> > +	 * In such cases we want to leave VDD enabled and it's up to upper layers
> >> >> > +	 * to turn it off. But for eg. i2c-dev access we need to turn it on/off
> >> >> > +	 * ourselves.
> >> >> > +	 */
> >> >> > +	*vdd_ref = intel_pps_vdd_on_unlocked(intel_dp);
> >> >> > +
> >> >> > +	intel_pps_check_power_unlocked(intel_dp);
> >> >> > +
> >> >> > +	return wakeref;
> >> >> > +}
> >> >> > +
> >> >> > +void intel_pps_unlock_for_aux(struct intel_dp *intel_dp, intel_wakeref_t wakeref, bool vdd_ref)
> >> >> > +{
> >> >> > +	if (vdd_ref)
> >> >> > +		intel_pps_vdd_off_unlocked(intel_dp, false);
> >> >> > +
> >> >> > +	intel_pps_unlock(intel_dp, wakeref);
> >> >> > +}
> >> >> 
> >> >> It took me a while to pinpoint what exactly I don't like about this
> >> >> interface.
> >> >> 
> >> >> And I mean the whole intel_pps.h interface is already really difficult
> >> >> to understand.
> >> >> 
> >> >> This flips the lock/unlock and vdd on/off logic inside out.
> >> >> 
> >> >> Normally you have functions for doing vdd or power or backlight, or
> >> >> anything PPS really, and they're either unlocked (assuming the caller
> >> >> handles PPS lock) or locked (the function itself takes the lock).
> >> >
> >> > The PPS and VDD handling steps are dependent (PPS must be locked for
> >> > enabling VDD) and both are skipped for the same reason during AUX
> >> > transfers. So I thought it makes sense to move these to a separate
> >> > function and skip both based on the same platform/output type check.
> >> 
> >> On the contrary, I think the reasons are different.
> >> 
> >> VDD is only needed for eDP.
> >> 
> >> The PPS must be locked for VDD change (IOW for eDP) and for VLV/CHV pipe
> >> based PPS. But these two cases are independent.
> >
> > The case requiring VDD (eDP) is a subset of the cases requring PPS to be
> > locked (eDP or VLV/CHV). These are not independent cases.
> 
> Logically, they are. VLV/CHV requires the PPS lock also for
> non-eDP. 

Yes, that is what I meant.

1. Cases needing PPS lock: eDP or non-eDP on VLV/CHV.
2. Case needing VDD: eDP.

2. is a subset of 1.

> It's not a subset.

> 
> BR,
> Jani.
> 
> 
> 
> >
> >> >> This one purports to be an interface for lock/unlock, but in reality it
> >> >> also does VDD internally. And that feels really quite wrong to me.
> >> >> 
> >> >> ---
> >> >> 
> >> >> These are a single-use interface that I think make intel_pps.[ch] more
> >> >> difficult to understand. I'd suggest checking how you'd implement this
> >> >> logic inside intel_dp_aux_xfer() *without* changing the intel_pps.[ch]
> >> >> interface at all.
> >> >> 
> >> >> Okay, took a quick stab at it, and unless I'm missing something it's
> >> >> super easy:
> >> >
> >> > I still think it'd be better to have a separate function for both
> >> > locking PPS and enabling VDD for the reason I described above, that is
> >> > to clarify that the PPS state must be locked to enable VDD.
> >> 
> >> But there's no requirement that they must be done at the same time.
> >
> > There is also no reason not do them at the same time for AUX. A benefit
> > of doing that would be to clarify the dependency of VDD on PPS and also
> > simplify intel_dp_aux_xfer().
> >
> >> The PPS lock could be held for a much longer period or for other
> >> things than just VDD. And in this case, the PPS lock may indeed
> >> protect *other* things than just VDD. Adding the separate function
> >> ties these unrelated cases together for IMO not good enough reason.
> >> intel_pps_vdd_on_unlocked() does check that it's called with the PPS
> >> lock held.
> >> 
> >> But I realize it needs to be relaxed a bit like this:
> >
> > Yes, noticed this too. It was one reason I opted for skipping PPS
> > locking / VDD enabling from one spot.
> >
> >> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> >> index 617ce4993172..c883e872c9c8 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> >> @@ -744,11 +744,11 @@ bool intel_pps_vdd_on_unlocked(struct intel_dp *intel_dp)
> >>  	i915_reg_t pp_stat_reg, pp_ctrl_reg;
> >>  	bool need_to_disable = !intel_dp->pps.want_panel_vdd;
> >>  
> >> -	lockdep_assert_held(&display->pps.mutex);
> >> -
> >>  	if (!intel_dp_is_edp(intel_dp))
> >>  		return false;
> >>  
> >> +	lockdep_assert_held(&display->pps.mutex);
> >> +
> >>  	cancel_delayed_work(&intel_dp->pps.panel_vdd_work);
> >>  	intel_dp->pps.want_panel_vdd = true;
> >>  
> >> @@ -925,11 +925,11 @@ void intel_pps_vdd_off_unlocked(struct intel_dp *intel_dp, bool sync)
> >>  {
> >>  	struct intel_display *display = to_intel_display(intel_dp);
> >>  
> >> -	lockdep_assert_held(&display->pps.mutex);
> >> -
> >>  	if (!intel_dp_is_edp(intel_dp))
> >>  		return;
> >>  
> >> +	lockdep_assert_held(&display->pps.mutex);
> >> +
> >>  	INTEL_DISPLAY_STATE_WARN(display, !intel_dp->pps.want_panel_vdd,
> >>  				 "[ENCODER:%d:%s] %s VDD not forced on",
> >>  				 dp_to_dig_port(intel_dp)->base.base.base.id,
> >> 
> >> 
> >> > I guess the above could be done separately later in any case, so I can
> >> > inline the fix as you suggest.
> >> >
> >> >> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> >> >> index ec27bbd70bcf..a5608659df59 100644
> >> >> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> >> >> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> >> >> @@ -247,7 +247,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
> >> >>  	u32 aux_clock_divider;
> >> >>  	enum intel_display_power_domain aux_domain;
> >> >>  	intel_wakeref_t aux_wakeref;
> >> >> -	intel_wakeref_t pps_wakeref;
> >> >> +	intel_wakeref_t pps_wakeref = NULL;
> >> >>  	int i, ret, recv_bytes;
> >> >>  	int try, clock = 0;
> >> >>  	u32 status;
> >> >> @@ -272,7 +272,10 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
> >> >>  	aux_domain = intel_aux_power_domain(dig_port);
> >> >>  
> >> >>  	aux_wakeref = intel_display_power_get(display, aux_domain);
> >> >> -	pps_wakeref = intel_pps_lock(intel_dp);
> >> >> +
> >> >> +	if (intel_dp_is_edp(intel_dp) ||
> >> >> +	    (display->platform.valleyview || display->platform.cherryview))
> >> >> +		pps_wakeref = intel_pps_lock(intel_dp);
> >> >>  
> >> >>  	/*
> >> >>  	 * We will be called with VDD already enabled for dpcd/edid/oui reads.
> >> >> @@ -430,7 +433,8 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
> >> >>  	if (vdd)
> >> >>  		intel_pps_vdd_off_unlocked(intel_dp, false);
> >> >>  
> >> >> -	intel_pps_unlock(intel_dp, pps_wakeref);
> >> >> +	if (pps_wakeref)
> >> >> +		intel_pps_unlock(intel_dp, pps_wakeref);
> >> >>  	intel_display_power_put_async(display, aux_domain, aux_wakeref);
> >> >>  out_unlock:
> >> >>  	intel_digital_port_unlock(encoder);
> >> >> 
> >> >> 
> >> >> Please let's not make intel_pps.[ch] harder to understand.
> >> >> 
> >> >> 
> >> >> BR,
> >> >> Jani.
> >> >> 
> >> >> 
> >> >> > +
> >> >> >  void intel_pps_on_unlocked(struct intel_dp *intel_dp)
> >> >> >  {
> >> >> >  	struct intel_display *display = to_intel_display(intel_dp);
> >> >> > diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
> >> >> > index c83007152f07d..4390d05892325 100644
> >> >> > --- a/drivers/gpu/drm/i915/display/intel_pps.h
> >> >> > +++ b/drivers/gpu/drm/i915/display/intel_pps.h
> >> >> > @@ -31,10 +31,11 @@ bool intel_pps_vdd_on_unlocked(struct intel_dp *intel_dp);
> >> >> >  void intel_pps_vdd_off_unlocked(struct intel_dp *intel_dp, bool sync);
> >> >> >  void intel_pps_on_unlocked(struct intel_dp *intel_dp);
> >> >> >  void intel_pps_off_unlocked(struct intel_dp *intel_dp);
> >> >> > -void intel_pps_check_power_unlocked(struct intel_dp *intel_dp);
> >> >> >  
> >> >> >  void intel_pps_vdd_on(struct intel_dp *intel_dp);
> >> >> >  void intel_pps_vdd_off(struct intel_dp *intel_dp);
> >> >> > +intel_wakeref_t intel_pps_lock_for_aux(struct intel_dp *intel_dp, bool *vdd_ref);
> >> >> > +void intel_pps_unlock_for_aux(struct intel_dp *intel_dp, intel_wakeref_t wakeref, bool vdd_ref);
> >> >> >  void intel_pps_on(struct intel_dp *intel_dp);
> >> >> >  void intel_pps_off(struct intel_dp *intel_dp);
> >> >> >  void intel_pps_vdd_off_sync(struct intel_dp *intel_dp);
> >> >> 
> >> >> -- 
> >> >> Jani Nikula, Intel
> >> 
> >> -- 
> >> Jani Nikula, Intel
> 
> -- 
> Jani Nikula, Intel
