Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26787AADE00
	for <lists+intel-gfx@lfdr.de>; Wed,  7 May 2025 14:03:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E662210E188;
	Wed,  7 May 2025 12:03:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FzlDhvwM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77D1C10E188;
 Wed,  7 May 2025 12:03:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746619425; x=1778155425;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=u55uh+hbgJh+W2vmCjiGrQNA2uQqZ3ZPle1TXDFYXR8=;
 b=FzlDhvwMfuLMEpveH6zfKpDtlMumOqHJY2Mn+xcOmkU1BUZX1UqRtRMW
 HC89DT3I6SkBNfBKFEU4zivHu7QcFJ/x4p652xqQuMAmPokP3hgDni1Kl
 meljQi3rdg1Yj4Xas1sc15f0rM3pW/Uzl935hOLqP4ttu7YoKOeXLU8ml
 k7HOt4hCYpKME0NIppyroeQl85nwONtbU8cf5vDlHUeeS8smf5/FeLTXi
 bMabXq7Flv8gsqNzBUsSWlP06ivUBEa6Dqvh/uHkYoXGwKd4ODUj+Kob+
 wBr9PR414mEUUBW5rxFO8ASPiTj7Ghen+8hmRA59/Q5FHMVKf1Zrs9oMZ w==;
X-CSE-ConnectionGUID: bu5KcSOhShudig2SdgqD2A==
X-CSE-MsgGUID: 4H77rnsMRiKlEKVnoySGiw==
X-IronPort-AV: E=McAfee;i="6700,10204,11426"; a="48358146"
X-IronPort-AV: E=Sophos;i="6.15,269,1739865600"; d="scan'208";a="48358146"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 05:03:45 -0700
X-CSE-ConnectionGUID: +3Zop293Qx+HjguPhOx+BA==
X-CSE-MsgGUID: dK/t0XbQQfqD26BXiQmyxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,269,1739865600"; d="scan'208";a="140686296"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 05:03:45 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 7 May 2025 05:03:44 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 7 May 2025 05:03:44 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 7 May 2025 05:03:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ep0BtI/e7zOGh/6atoX0bywEkN5H2oM+caG2q/NLtVvX4MJOvOp4D7dtFClDPgfXFYhQAVdTXyGm1hXb4A3FAcoy3G+DY9/oeMZNF+17ohNLUlhuqCIxUMmploFVM8+c0iLaYLSP9msbMZafiYKK3LMow0gbfobihy4xK2DjGex2ivY3m4LlfD7mAWkDakhD/9EYJmUZWsmSWFa9gQPDzoWGnMEuVBpuDER80YMtxjr6u7oYi1ysTzeXt5RISEN/ZXSR9S9fEKEOfUauN81uFMrGeycwF/VVUIr+NtoCiKQTEYycJ4muttq/ZexOoRzLL9W8dL1PDfryv7qDeZvWaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V8xLbQD43RIDRg72ipzwhvuqbEpra32VwUdi0zghEPw=;
 b=mx+puVPTw8wD9W0LDiQS/3E6G1EkGynH1Q8ALH/bZ+BpAhd3eZNZpAQAishnwYsGOfqj9mTeekfJ/tRNT7znDACWgILR9paqWbrQ7rn/mpNbcOtmBhioS4/MsznLDHh0ayTqW/1sluteuMLclsEOUe/t50PNmXje0QVJKlllbodVCZ2teTi967TCkdFlFS5uVQjbZZEymJibEsuKzETaC3xqOq8b8QCV3gyaT5QOmeDKGAxJuO802vcWTc9IOFp7LPDiQGLYPtD6dxGyGB7ztSL8UT3KGJCQd2tMqC8IQWzYVlAqyZfroM0jODJ6lybUIRvUgCZuJxVbwQKkHBs38A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SA3PR11MB7556.namprd11.prod.outlook.com (2603:10b6:806:31f::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.23; Wed, 7 May
 2025 12:03:07 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8722.020; Wed, 7 May 2025
 12:03:06 +0000
Date: Wed, 7 May 2025 15:03:13 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Jani
 Nikula" <jani.nikula@intel.com>
Subject: Re: [PATCH v2 11/12] drm/i915: Add support for forcing the link bpp
 on a connector
Message-ID: <aBtMAZ8d6AvuLoNJ@ideak-desk.fi.intel.com>
References: <20250428133135.3396080-1-imre.deak@intel.com>
 <20250428133135.3396080-12-imre.deak@intel.com>
 <446cc918-087b-4ad8-92c1-66334089295d@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <446cc918-087b-4ad8-92c1-66334089295d@intel.com>
X-ClientProxiedBy: DU7P190CA0025.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:10:550::32) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SA3PR11MB7556:EE_
X-MS-Office365-Filtering-Correlation-Id: fec25cea-cf19-42b7-f538-08dd8d5f20b2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?pdKQyKOvOUGYFAfuNZV07veWy8acp2WQcUOcaeRK+NVnM9yavRQkN5d5Zn?=
 =?iso-8859-1?Q?02Myiz0XmSYekewrTHJg6uBKpViqx/Ax361q7iOKfvfDTDXcyPX/+ftq9q?=
 =?iso-8859-1?Q?7FSMiGyVZbj2rjxiptCd63RoxTOmpLFd46nSDlC0vuGMQs026Z+TXnMgRn?=
 =?iso-8859-1?Q?lhh7cmvgLN700w+QwlmSCLIbuxoxHJcpHlpYdkeSi7TVUDK1sXlorS1EKK?=
 =?iso-8859-1?Q?temRaNKsHD6ebYnnGtrUXedzwIOYm1Ltnxj4DJaFCyCY+ylWCBpmzYg484?=
 =?iso-8859-1?Q?6bHc4QKid7qjMtv0QKv1HmQSuqLi6WxtTD58xtl2YAfxbCykRPY+xrrF7k?=
 =?iso-8859-1?Q?BApAF07oumG/gc+vC5A6l2CieNwTzT/SiHndBewDeuP874lJrKuUW1MxFn?=
 =?iso-8859-1?Q?AVBr0Fg/vMf+hcseqge+tVkqZskJ4isEyyN6CuLa+SF4oscvz9+Cu3P5dX?=
 =?iso-8859-1?Q?2om/BNivQRxpk3pQ/AmM/btZVDgE8FchBqNq/3LMB7Zs9ZumNM/CXDNF25?=
 =?iso-8859-1?Q?cfY7G3HEqaYAAQm7bSjSautDmO2JTbtNdMIt5FgMgBlKnbpjUDd9S/TujS?=
 =?iso-8859-1?Q?bLpF3jiLae35Sy9LhSJSTZpzxhcYn7cUDkNEDgyJHVAwLm4BuQxJWueQUg?=
 =?iso-8859-1?Q?+mxMADeiHlR4fQhv3EqotYbWLRR48NykHedLcxNFw9LVOJmh0di958gAv8?=
 =?iso-8859-1?Q?H2OGdZlEKtGOEpS3BDmaCd8W8NSdgrdlV9qtBhssqLIA3epEUfRQbM2TFP?=
 =?iso-8859-1?Q?vuUIhlKCVXvs2/ZIGTA4ZwmviwxhZTDzhAoeZv7tulzhf2lQCAoctCYyJK?=
 =?iso-8859-1?Q?uqtklDQS5l76QSfpXdwNCmaSAIo4aNuR9yCbdQNGx8XmDuYGpnSs5jOWLV?=
 =?iso-8859-1?Q?u5Z0OnZf4RcYiDBn93jaYLbPjy/yoVUBao0i+tBWGPTA3Z6jYuZ5cYhDeP?=
 =?iso-8859-1?Q?i9/Fdj488YPupwls76v5SKV4pypk7s+H9Kbwy2S7B+01UTnzzV7n8eDNCT?=
 =?iso-8859-1?Q?24l9D6hLR5zsYg0bPYAkP0DWkuSglE96qBnkTqd4rvZPYbr2EnHKcaXNsB?=
 =?iso-8859-1?Q?AJOESIr2Rj7PDl4zT52RBcDOnL0ygo3osrFEsjmH4I5uL16z0+ISRhu1Qg?=
 =?iso-8859-1?Q?t8/a+LdevsRTxOYsCZkKD5/M4wozs+G+NEUPtzVSj8KvaeJhKcH8TuEDsA?=
 =?iso-8859-1?Q?ICQJ/NDG1XphGE+qLMmUuAsgx2SXkG2K5sL+TdzRA6ZPuG4nFgn01pSfbX?=
 =?iso-8859-1?Q?XXCL8aCVMj7VebqZxPrEWX6xrJL0nNTrpEcx7va8O60bzPooI6Y5VPkyZv?=
 =?iso-8859-1?Q?BWZNziOx8x5bGrO4lvUyMDCY2FXGmRjlf+LZIjr/QNKYTEBjOFEKy+SVZS?=
 =?iso-8859-1?Q?DT0Gy0ruBJpVqN6DRiHOoW5D94flGmVf4Wlh3qFLzJuwJakohgc7UzSXQh?=
 =?iso-8859-1?Q?lDVCk+2HNVLU2afQd79tuuadtStsLx64VjugWsuumWPQNg8sAkxII7aTDh?=
 =?iso-8859-1?Q?A=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?aaJh+X1xTXg/cmmDHqXp/ERakly3CJ+l0jYd1iVuW67L1rOu9cfiiPTEKh?=
 =?iso-8859-1?Q?lWe3YlxfWZW8SsaKvJ58kWRxpU6tA45GiysO+R/zmc0VuCLTg7nEWTW97k?=
 =?iso-8859-1?Q?6oIwcZtKuhN0fc4jRcfM8SVTYaLpJMe5e7fca3xvlrOSJ8SW0L7WcCkc0Y?=
 =?iso-8859-1?Q?WQWK3iLQV+tXtdO7YPQ5IYDYpGi64jHXKPBT044KM/KpUhfqp5wy+lcVd0?=
 =?iso-8859-1?Q?5WuxuTWnfTTfZ/QP6GORuk5TXHeGwc+w2ZFJG9taUJYOOe4QtfdD6gAkuH?=
 =?iso-8859-1?Q?wlsrPDSoSDDOYUZMpJXt8SGrjZcFF5B4YJlAZCKhLjah1r0Wg5NTEcAWSS?=
 =?iso-8859-1?Q?75UW7wdCTTkjFsD9vX4mSkNC1lCwIMZyX290HEB+P7lLXiXpuZHD9PGphy?=
 =?iso-8859-1?Q?LV9dl+55y5i7R3vJotv5jwUrpIxODqa7k4f6FmuKpGINCyZQIsAi8ONnYF?=
 =?iso-8859-1?Q?IXPTC0VJ3mGPhE57EZvKIoZf7ci46LJqsEuI7PXrmyLYbaQaYw8gUlgovZ?=
 =?iso-8859-1?Q?3C2FK36mGW56b9kTFAJTw9tZcGH0APC1mBtEl1Ej6pO7YZ6YmOsBDragNq?=
 =?iso-8859-1?Q?feJYaC3xvTap9P/wZ54WX6wicy+CnLlpPI8svpqW1xIE6banTh1/WfsHxT?=
 =?iso-8859-1?Q?SjBmYpcrkfDzn3nf8Ve13gEd1NDIw338P0BPKS2tEWwfl3S5ZogJmuZP0Q?=
 =?iso-8859-1?Q?XFRJJ5aX6Rj79R/pEaGJiRjW0E9BckkVG++o3oiplwrpAH7+eBTTktOprY?=
 =?iso-8859-1?Q?6UUY3eo81piIkk9UIl/nLdSG5Q0IeNIZ6vcF5BCBRGLsgAxdEckE+J7CfP?=
 =?iso-8859-1?Q?YYOddh3xx9ZXdXCBcY9E7ImbPE+5Dka9M0LH0ZZd+ekgr9ZRSOx70oOfS/?=
 =?iso-8859-1?Q?B+Xylw8ZF2yvFVAfq9H9MFhetFxN61rD6UvGDmhi01yXpXE13IhAaKigWy?=
 =?iso-8859-1?Q?YItkBE0Pyj3OKSNHFK5tCJ5rjLIf1PQaM9R8xpyQtOu4oPOkMrHxerqebb?=
 =?iso-8859-1?Q?jtB90qdxpIMDNTn7lQqJgNv4YsnwEL9kTkZ7y6le0TNbe4l4S2P4pNDk/m?=
 =?iso-8859-1?Q?dceZgxqM6SOKwQ6pmMtNz0O//TkbvWP6syQ0IKNeu848dWvub8oGYpOrv3?=
 =?iso-8859-1?Q?t4ir4Ifc21GevGbwCpjl20BjONqlHcBENxtT9+jHscKf7NL49KF2KoSpG+?=
 =?iso-8859-1?Q?UvxcNjINV42gBZV5+Cu7AvTiFtD5QG5ajnMaRom/gbKfZO26NzDeXda4VR?=
 =?iso-8859-1?Q?e9Ota8c9EMBJPe0CCfmjO6Nle3L7xcLgAmaZLXhKnqA7yVdZJevjTEWLmH?=
 =?iso-8859-1?Q?at++6yRA4NFKYr56KlqFA4nQdIYM6ZalmJy/uLfiRl6Rbank4mH4mmgryb?=
 =?iso-8859-1?Q?yJ/cj6bwRCMq7rVx2JDR02318Tom9onC8wXP4jOwdbfxWVPQ9QpcZywOYq?=
 =?iso-8859-1?Q?Mu8rPAGaQ39NSD9LJIZt5+fiw2tB7JZ1GPPG+avbPCze38Dwd8WyJs4y7r?=
 =?iso-8859-1?Q?gBA1asQsG1tRgN01oe9ZT4CkeU2e/j29SC/GRghBjGOWYzumUtvNQYK0pc?=
 =?iso-8859-1?Q?rWWulUbafrNwMYsy73zKmv7PM1n/CIshqH5PACSV6B8oBXYIdf4pcWlZu5?=
 =?iso-8859-1?Q?pAGv6YUdtt0Cs7D86YCjMUyCD7NWHXYt8x?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fec25cea-cf19-42b7-f538-08dd8d5f20b2
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2025 12:03:06.8779 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: F3xt8Juf8J4XqKuSY0FWQiRySaoR378yNzDkulMhfmyqsoqLBZuxkK3+/V7a1y5wg7l4hxlo6ZTFYHpMwTDh1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7556
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

On Wed, May 07, 2025 at 11:07:57AM +0530, Nautiyal, Ankit K wrote:
> 
> On 4/28/2025 7:01 PM, Imre Deak wrote:
> > Add support for forcing the link bpp on a connector via a connector
> > debugfs entry. During reducing link bpps due to a link BW limit, keep
> > bpps close to their forced value.
> > 
> > Add the debugfs entry to all relevant connectors: all DP connectors and
> > on an FDI link CRT/SDVO/LVDS/HDMI connectors.
> > 
> > v2:
> > - Move adding the debugfs entries to this patch.
> > - Rename i915_force_link_bpp to intel_force_link_bpp. (Jani)
> > - Select the relevant connectors via platform checks. (Jani)
> > - Use for_each_new_intel_connector_in_state(). (Jani)
> > - Fix 64 bit division vs. 32 bit build when converting str to q4. (lkp)
> > - Avoid division and addition overflow when converting str to q4.
> > 
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >   .../drm/i915/display/intel_display_debugfs.c  |   2 +
> >   .../drm/i915/display/intel_display_device.h   |   1 +
> >   .../drm/i915/display/intel_display_types.h    |   4 +
> >   drivers/gpu/drm/i915/display/intel_link_bw.c  | 238 +++++++++++++++++-
> >   drivers/gpu/drm/i915/display/intel_link_bw.h  |   2 +
> >   5 files changed, 240 insertions(+), 7 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > index 8d0a1779dd193..a9b1ec4cf0f75 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > @@ -39,6 +39,7 @@
> >   #include "intel_hdcp.h"
> >   #include "intel_hdmi.h"
> >   #include "intel_hotplug.h"
> > +#include "intel_link_bw.h"
> >   #include "intel_panel.h"
> >   #include "intel_pps.h"
> >   #include "intel_psr.h"
> > @@ -1325,6 +1326,7 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
> >   	intel_psr_connector_debugfs_add(connector);
> >   	intel_alpm_lobf_debugfs_add(connector);
> >   	intel_dp_link_training_debugfs_add(connector);
> > +	intel_link_bw_connector_debugfs_add(connector);
> >   	if (DISPLAY_VER(display) >= 11 &&
> >   	    ((connector_type == DRM_MODE_CONNECTOR_DisplayPort && !connector->mst.dp) ||
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> > index 87c666792c0da..fe14a92ae8c65 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> > @@ -172,6 +172,7 @@ struct intel_display_platforms {
> >   #define HAS_GMBUS_BURST_READ(__display)	(DISPLAY_VER(__display) >= 10 || (__display)->platform.kabylake)
> >   #define HAS_GMBUS_IRQ(__display)	(DISPLAY_VER(__display) >= 4)
> >   #define HAS_GMCH(__display)		(DISPLAY_INFO(__display)->has_gmch)
> > +#define HAS_FDI(__display)		(IS_DISPLAY_VER((__display), 5, 8) && !HAS_GMCH(__display))
> >   #define HAS_HOTPLUG(__display)		(DISPLAY_INFO(__display)->has_hotplug)
> >   #define HAS_HW_SAGV_WM(__display)	(DISPLAY_VER(__display) >= 13 && !(__display)->platform.dgfx)
> >   #define HAS_IPC(__display)		(DISPLAY_INFO(__display)->has_ipc)
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 7415564d058a2..23e3e6f204741 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -550,6 +550,10 @@ struct intel_connector {
> >   		struct intel_dp *dp;
> >   	} mst;
> > +	struct {
> > +		int force_bpp_x16;
> > +	} link;
> > +
> >   	/* Work struct to schedule a uevent on link train failure */
> >   	struct work_struct modeset_retry_work;
> > diff --git a/drivers/gpu/drm/i915/display/intel_link_bw.c b/drivers/gpu/drm/i915/display/intel_link_bw.c
> > index a10cd39926075..b51b62e04fe59 100644
> > --- a/drivers/gpu/drm/i915/display/intel_link_bw.c
> > +++ b/drivers/gpu/drm/i915/display/intel_link_bw.c
> > @@ -3,6 +3,11 @@
> >    * Copyright © 2023 Intel Corporation
> >    */
> > +#include <linux/ctype.h>
> > +#include <linux/debugfs.h>
> > +#include <linux/int_log.h>
> > +#include <linux/math.h>
> > +
> >   #include <drm/drm_fixed.h>
> >   #include <drm/drm_print.h>
> > @@ -10,11 +15,33 @@
> >   #include "intel_crtc.h"
> >   #include "intel_display_core.h"
> >   #include "intel_display_types.h"
> > +#include "intel_dp.h"
> >   #include "intel_dp_mst.h"
> >   #include "intel_dp_tunnel.h"
> >   #include "intel_fdi.h"
> >   #include "intel_link_bw.h"
> > +static int get_forced_link_bpp_x16(struct intel_atomic_state *state,
> > +				   const struct intel_crtc *crtc)
> > +{
> > +	struct intel_digital_connector_state *conn_state;
> > +	struct intel_connector *connector;
> > +	int force_bpp_x16 = INT_MAX;
> > +	int i;
> > +
> > +	for_each_new_intel_connector_in_state(state, connector, conn_state, i) {
> > +		if (conn_state->base.crtc != &crtc->base)
> > +			continue;
> > +
> > +		if (!connector->link.force_bpp_x16)
> > +			continue;
> 
> Hmm we already have the connector for the given crtc. If
> link.force_bpp_x16 is not set, should we not break from the loop?

Checking all the connectors handles the case where multiple connectors
are connected to the same crtc (possible on old platforms).

> > +
> > +		force_bpp_x16 = min(force_bpp_x16, connector->link.force_bpp_x16);
> > +	}
> > +
> > +	return force_bpp_x16 < INT_MAX ? force_bpp_x16 : 0;
> > +}
> > +
> >   /**
> >    * intel_link_bw_init_limits - initialize BW limits
> >    * @state: Atomic state
> > @@ -31,9 +58,10 @@ void intel_link_bw_init_limits(struct intel_atomic_state *state,
> >   	limits->force_fec_pipes = 0;
> >   	limits->bpp_limit_reached_pipes = 0;
> >   	for_each_pipe(display, pipe) {
> > +		struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
> >   		const struct intel_crtc_state *crtc_state =
> > -			intel_atomic_get_new_crtc_state(state,
> > -							intel_crtc_for_pipe(display, pipe));
> > +			intel_atomic_get_new_crtc_state(state, crtc);
> > +		int forced_bpp_x16 = get_forced_link_bpp_x16(state, crtc);
> >   		if (state->base.duplicated && crtc_state) {
> >   			limits->max_bpp_x16[pipe] = crtc_state->max_link_bpp_x16;
> > @@ -42,15 +70,19 @@ void intel_link_bw_init_limits(struct intel_atomic_state *state,
> >   		} else {
> >   			limits->max_bpp_x16[pipe] = INT_MAX;
> >   		}
> > +
> > +		if (forced_bpp_x16)
> > +			limits->max_bpp_x16[pipe] = min(limits->max_bpp_x16[pipe], forced_bpp_x16);
> >   	}
> >   }
> >   /**
> > - * intel_link_bw_reduce_bpp - reduce maximum link bpp for a selected pipe
> > + * __intel_link_bw_reduce_bpp - reduce maximum link bpp for a selected pipe
> >    * @state: atomic state
> >    * @limits: link BW limits
> >    * @pipe_mask: mask of pipes to select from
> >    * @reason: explanation of why bpp reduction is needed
> > + * @reduce_forced_bpp: allow reducing bpps below their forced link bpp
> >    *
> >    * Select the pipe from @pipe_mask with the biggest link bpp value and set the
> >    * maximum of link bpp in @limits below this value. Modeset the selected pipe,
> > @@ -64,10 +96,11 @@ void intel_link_bw_init_limits(struct intel_atomic_state *state,
> >    *   - %-ENOSPC if no pipe can further reduce its link bpp
> >    *   - Other negative error, if modesetting the selected pipe failed
> >    */
> > -int intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
> > -			     struct intel_link_bw_limits *limits,
> > -			     u8 pipe_mask,
> > -			     const char *reason)
> > +static int __intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
> > +				      struct intel_link_bw_limits *limits,
> > +				      u8 pipe_mask,
> > +				      const char *reason,
> > +				      bool reduce_forced_bpp)
> >   {
> >   	struct intel_display *display = to_intel_display(state);
> >   	enum pipe max_bpp_pipe = INVALID_PIPE;
> > @@ -97,6 +130,10 @@ int intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
> >   			 */
> >   			link_bpp_x16 = fxp_q4_from_int(crtc_state->pipe_bpp);
> > +		if (!reduce_forced_bpp &&
> > +		    link_bpp_x16 <= get_forced_link_bpp_x16(state, crtc))
> > +			continue;
> > +
> >   		if (link_bpp_x16 > max_bpp_x16) {
> >   			max_bpp_x16 = link_bpp_x16;
> >   			max_bpp_pipe = crtc->pipe;
> > @@ -112,6 +149,21 @@ int intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
> >   						 BIT(max_bpp_pipe));
> >   }
> > +int intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
> > +			     struct intel_link_bw_limits *limits,
> > +			     u8 pipe_mask,
> > +			     const char *reason)
> > +{
> > +	int ret;
> > +
> > +	/* Try to keep any forced link BPP. */
> > +	ret = __intel_link_bw_reduce_bpp(state, limits, pipe_mask, reason, false);
> > +	if (ret == -ENOSPC)
> > +		ret = __intel_link_bw_reduce_bpp(state, limits, pipe_mask, reason, true);
> > +
> > +	return ret;
> > +}
> > +
> >   /**
> >    * intel_link_bw_set_bpp_limit_for_pipe - set link bpp limit for a pipe to its minimum
> >    * @state: atomic state
> > @@ -245,3 +297,175 @@ int intel_link_bw_atomic_check(struct intel_atomic_state *state,
> >   	return -EAGAIN;
> >   }
> > +
> > +static int force_link_bpp_show(struct seq_file *m, void *data)
> > +{
> > +	struct intel_connector *connector = m->private;
> > +
> > +	seq_printf(m, FXP_Q4_FMT "\n", FXP_Q4_ARGS(connector->link.force_bpp_x16));
> > +
> > +	return 0;
> > +}
> > +
> > +static int str_to_fxp_q4_nonneg_int(const char *str, int *val_x16)
> > +{
> > +	unsigned int val;
> > +	int err;
> > +
> > +	err = kstrtouint(str, 10, &val);
> > +	if (err)
> > +		return err;
> > +
> > +	if (val > INT_MAX >> 4)
> > +		return -ERANGE;
> > +
> > +	*val_x16 = fxp_q4_from_int(val);
> > +
> > +	return 0;
> > +}
> > +
> > +/* modifies str */
> > +static int str_to_fxp_q4_nonneg(char *str, int *val_x16)
> > +{
> > +	const char *int_str;
> > +	char *frac_str;
> > +	int frac_digits;
> > +	int frac_val;
> > +	int err;
> > +
> > +	int_str = strim(str);
> > +	frac_str = strchr(int_str, '.');
> > +
> > +	if (frac_str)
> > +		*frac_str++ = '\0';
> > +
> > +	err = str_to_fxp_q4_nonneg_int(int_str, val_x16);
> > +	if (err)
> > +		return err;
> > +
> > +	if (!frac_str)
> > +		return 0;
> > +
> > +	/* prevent negative number/leading +- sign mark */
> > +	if (!isdigit(*frac_str))
> > +		return -EINVAL;
> > +
> > +	err = str_to_fxp_q4_nonneg_int(frac_str, &frac_val);
> > +	if (err)
> > +		return err;
> > +
> > +	frac_digits = strlen(frac_str);
> > +	if (frac_digits > intlog10(INT_MAX) >> 24 ||
> > +	    frac_val > INT_MAX - int_pow(10, frac_digits) / 2)
> > +		return -ERANGE;
> > +
> > +	frac_val = DIV_ROUND_CLOSEST(frac_val, (int)int_pow(10, frac_digits));
> > +
> > +	if (*val_x16 > INT_MAX - frac_val)
> > +		return -ERANGE;
> > +
> > +	*val_x16 += frac_val;
> > +
> > +	return 0;
> > +}
> > +
> > +static int user_str_to_fxp_q4_nonneg(const char __user *ubuf, size_t len, int *val_x16)
> > +{
> > +	char *kbuf;
> > +	int err;
> > +
> > +	kbuf = memdup_user_nul(ubuf, len);
> > +	if (IS_ERR(kbuf))
> > +		return PTR_ERR(kbuf);
> > +
> > +	err = str_to_fxp_q4_nonneg(kbuf, val_x16);
> > +
> > +	kfree(kbuf);
> > +
> > +	return err;
> > +}
> > +
> > +static bool connector_supports_dsc(struct intel_connector *connector)
> > +{
> > +	struct intel_display *display = to_intel_display(connector);
> > +
> > +	switch (connector->base.connector_type) {
> > +	case DRM_MODE_CONNECTOR_eDP:
> > +		return intel_dp_has_dsc(connector);
> > +	case DRM_MODE_CONNECTOR_DisplayPort:
> > +		if (connector->mst.dp)
> > +			return HAS_DSC_MST(display);
> > +
> > +		return HAS_DSC(display);
> > +	default:
> > +		return false;
> > +	}
> > +}
> > +
> > +static ssize_t
> > +force_link_bpp_write(struct file *file, const char __user *ubuf, size_t len, loff_t *offp)
> > +{
> > +	struct seq_file *m = file->private_data;
> > +	struct intel_connector *connector = m->private;
> > +	struct intel_display *display = to_intel_display(connector);
> > +	int min_bpp;
> > +	int bpp_x16;
> > +	int err;
> > +
> > +	err = user_str_to_fxp_q4_nonneg(ubuf, len, &bpp_x16);
> > +	if (err)
> > +		return err;
> > +
> > +	if (connector_supports_dsc(connector))
> > +		min_bpp = intel_dp_dsc_min_src_compressed_bpp();
> > +	else
> > +		min_bpp = intel_display_min_pipe_bpp();
> 
> Alright, so for forcing link bpp to say 10 bpp (160 bppx16) for a connector
> supporting DSC will automatically force use of DSC.

Right.

> So if an MST setup has 1 DSC and 1 non DSC panel connected. Setting 10 bpp
> for DSC one will work but setting 10 bpp for non DSC would not work.

Yes, setting a bpp in the DSC range will enable DSC when committing on a
panel supporting DSC and the set bpp is within the range it supports and
will fail the commit for a non-DSC panel.

> Overall I agree with the debugfs and mechanism to force the link bpp.
> 
> I am thinking from the validation perspective, how the tests should be
> designed to use this debugfs.
> 
> Something like:
> 
> ->Check for DSC capability for the panel then force an appropriate
>   link bpp (it can try lower value, the write will fail if its not in
>   range)

Writing a value to the debugfs entry outside of the range of the sink
still succeeds, but the commit will fail. This allows for setting the
bpp already before connecting the sink and also allows for testing an
out-of-range value.

> ->Force DSC on DSC capable, force link bpp for non DSC.

There are different things that could be still tested. Forcing DSC (via
the current i915_dsc_fec_support) would just test DSC with whatever
compressed bpp the driver selects by default. Forcing a link bpp would
test a particular compressed or non-compressed link bpp, which would be
also good to test separately (but increases test time).

> And then combination with forcing dsc with fractional bpp.

Yes, fractional bpp should be also tested and I think all the ones
supported by the source/sink or at least a bigger subset of the
supported values.

> Does this scheme for tests make sense?

Something like that, yes. This debugfs entry would be also useful during
debugging DSC issues with a particular compressed bpp.

> Do you have any other things in mind?

I think we also have to add a way to test DSC decompression by a hub's
branch device and DSC decompression by the sink connected to the hub,
the branch device just passing through the DSC stream (atm pass-through
being the default choice by the driver if both the hub and the sink
supports this).

> Regards,
> Ankit
> 
> > +
> > +	if (bpp_x16 &&
> > +	    (bpp_x16 < fxp_q4_from_int(min_bpp) ||
> > +	     bpp_x16 > fxp_q4_from_int(intel_display_max_pipe_bpp(display))))
> > +		return -EINVAL;
> > +
> > +	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
> > +	if (err)
> > +		return err;
> > +
> > +	connector->link.force_bpp_x16 = bpp_x16;
> > +
> > +	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
> > +
> > +	*offp += len;
> > +
> > +	return len;
> > +}
> > +DEFINE_SHOW_STORE_ATTRIBUTE(force_link_bpp);
> > +
> > +void intel_link_bw_connector_debugfs_add(struct intel_connector *connector)
> > +{
> > +	struct intel_display *display = to_intel_display(connector);
> > +	struct dentry *root = connector->base.debugfs_entry;
> > +
> > +	switch (connector->base.connector_type) {
> > +	case DRM_MODE_CONNECTOR_DisplayPort:
> > +	case DRM_MODE_CONNECTOR_eDP:
> > +		break;
> > +	case DRM_MODE_CONNECTOR_VGA:
> > +	case DRM_MODE_CONNECTOR_SVIDEO:
> > +	case DRM_MODE_CONNECTOR_LVDS:
> > +	case DRM_MODE_CONNECTOR_DVID:
> > +		if (HAS_FDI(display))
> > +			break;
> > +
> > +		return;
> > +	case DRM_MODE_CONNECTOR_HDMIA:
> > +		if (HAS_FDI(display) && !HAS_DDI(display))
> > +			break;
> > +
> > +		return;
> > +	default:
> > +		return;
> > +	}
> > +
> > +	debugfs_create_file("intel_force_link_bpp", 0644, root,
> > +			    connector, &force_link_bpp_fops);
> > +}
> > diff --git a/drivers/gpu/drm/i915/display/intel_link_bw.h b/drivers/gpu/drm/i915/display/intel_link_bw.h
> > index e69049cf178f6..b499042e62b13 100644
> > --- a/drivers/gpu/drm/i915/display/intel_link_bw.h
> > +++ b/drivers/gpu/drm/i915/display/intel_link_bw.h
> > @@ -11,6 +11,7 @@
> >   #include "intel_display_limits.h"
> >   struct intel_atomic_state;
> > +struct intel_connector;
> >   struct intel_crtc_state;
> >   struct intel_link_bw_limits {
> > @@ -32,5 +33,6 @@ bool intel_link_bw_set_bpp_limit_for_pipe(struct intel_atomic_state *state,
> >   					  enum pipe pipe);
> >   int intel_link_bw_atomic_check(struct intel_atomic_state *state,
> >   			       struct intel_link_bw_limits *new_limits);
> > +void intel_link_bw_connector_debugfs_add(struct intel_connector *connector);
> >   #endif
