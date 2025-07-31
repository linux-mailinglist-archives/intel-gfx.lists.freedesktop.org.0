Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ECD2B170D6
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 14:01:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BF4610E269;
	Thu, 31 Jul 2025 12:01:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MfgGXY5q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F05010E269;
 Thu, 31 Jul 2025 12:01:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753963293; x=1785499293;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=mma6JuVJDrK/I1jPUj5AGdXnhkvyqNKYOJxC5EHKUGE=;
 b=MfgGXY5qLufsaAXHPUUUVjyG2+SkjyAFCHmIIo61Oodpa1ppDkXppmOe
 dOZww0SeGzJwl+s9Ay/vo1SHeP3B1hUeCi3+Cj5j5irra/9YfeoJF6NHh
 +j5AnIF3JzOt1hbC2vb6xsnZAQng1lwURNArIijuvzEDSfVlSK+6IQb3h
 stnacrL3QQhPfNcs9QAhPSLhshLxvFI6JdmapmpnMrhHu3YTziKex0Vae
 SUDeYtZsLH2WP3n8x/gk8HNsoVbJWdHbXg9zxBD1H7w5ZYN7ealX69rsE
 bqP3ZI2QDDdAjB1g4t3Vnmj8EoSrxJXEPoMlxGwtLUVaBkxAbIPraCKOy Q==;
X-CSE-ConnectionGUID: QBqwdENnQk6Y0LSBOIpPdA==
X-CSE-MsgGUID: mazbevotQ5eRAGLo+uYtWw==
X-IronPort-AV: E=McAfee;i="6800,10657,11507"; a="56149892"
X-IronPort-AV: E=Sophos;i="6.17,353,1747724400"; d="scan'208";a="56149892"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 05:01:30 -0700
X-CSE-ConnectionGUID: 5H6SoU9aScCRsB8y2/+JAg==
X-CSE-MsgGUID: 7ZMzYopXR2W5QtmjesJ8WA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,353,1747724400"; d="scan'208";a="167493586"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 05:01:30 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 31 Jul 2025 05:01:29 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 31 Jul 2025 05:01:29 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.55)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 31 Jul 2025 05:01:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HDLC9pk2Vv5wS8U1nwFtQoDiedfXrDEBtuQJ/IpZoNuCjRYqHmcJDDyVZZ+SHyUw2pZZoD1FzqbrwHkQ33w7xRV/On+geMejCsSgbVc45Fl0HI0Xd8I1Hj9+Xia4W12V1ICuTAFs1tDVfGg4CfIZvvO1Y6AxGiFWDhAvwM2uS889TeSOqsMR+WSNN0b6NsPVADjVdAqjGFhrtQMX1Kx2ZvRRcwxcsGjoUIXpJa522DbSRtHQ4aBNdNwrza1Aa4S9JiWQJuuBeXz4ZQmigsvv0l2KWOXG7SKR6J4R4oBd4Da3lqVDOs/f/GhP2kbYLJVIiFvO1R6xIPkFcsQiY8/1/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ERb3E8xMMTxiI2hbwVgOEnumDfBmH2EbIe4/RkHxFjI=;
 b=TxD5ekelAhmDhGt2EOQN29lXT0GBPXy5/SJb03HHGs8Ya297NfzqN6YtwATh04P0jnWQUOOgAM77OWfQCJZk6sVEUnzksaH1gitiQqixroUoyKfB2nnF1rGFrFl7hSM5rlHq1XRG0Qt2wLlQuf8Ki2LkVJQ0GsKuzn7ojcqudzpxROgsTh0yuAp2zfeFol9lNU32Tx0m68TzM3GPUNRacO72YVN2oJOOpCqThzFhmwfvxoE5ALnLcmZOM2zWPaBdl/okjxGzNVOEYqT76jc0/coqeTACzfzlFjYqVLBygtY+Nabh/L9Bw8G5XlBsUkKCWbLUrTpMS3amRI2CmMdDZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA3PR11MB9064.namprd11.prod.outlook.com (2603:10b6:208:57f::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.25; Thu, 31 Jul
 2025 12:01:21 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8989.010; Thu, 31 Jul 2025
 12:01:21 +0000
Date: Thu, 31 Jul 2025 15:01:09 +0300
From: Imre Deak <imre.deak@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
CC: Jani Nikula <jani.nikula@intel.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Dibin Moolakadan Subrahmanian
 <dibin.moolakadan.subrahmanian@intel.com>, <intel-gfx@lists.freedesktop.org>, 
 <intel-xe@lists.freedesktop.org>, <ankit.k.nautiyal@intel.com>,
 <uma.shankar@intel.com>
Subject: Re: [PATCH v2] drm/xe/display: Block hpd during suspend
Message-ID: <aItbBXMNinP4TaEy@ideak-desk>
References: <20250723092946.1975018-1-dibin.moolakadan.subrahmanian@intel.com>
 <aICtgAa54ESMZ2ii@ideak-desk> <aIDhTEcPoL5Y8Aoj@intel.com>
 <7b9d3439-ad9b-4ebf-86ee-0aa1c7b87b8c@linux.intel.com>
 <1c1510bdb0b9ade97da615f81d91e8f7cde20275@intel.com>
 <aIjcRFU90s6Ml9Vt@intel.com> <aIjizdet9ZUXB-yx@ideak-desk>
 <f7397d551049d81c4d59be25db23d41cbf8ed602@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <f7397d551049d81c4d59be25db23d41cbf8ed602@intel.com>
X-ClientProxiedBy: DU2PR04CA0345.eurprd04.prod.outlook.com
 (2603:10a6:10:2b4::16) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA3PR11MB9064:EE_
X-MS-Office365-Filtering-Correlation-Id: e1612738-a80b-488b-3b58-08ddd029f680
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|10070799003|376014|366016|7053199007; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?aSU+qWPosLpElENGcj6YAPBnmbAZbKnMZG4nQh1ODj3nPpGKGaGHpZaAGA44?=
 =?us-ascii?Q?hxBIx6WMAwAWT3IZ0iWhMRmBepf42Sok87rvJvuzGhyURp/6ScduC0BvZ7a6?=
 =?us-ascii?Q?XWIzdVOE0LTNppA45B4ky5jX2QzMqci8CE2vIiYrtFP7S4GmM8T1WCK8xoVP?=
 =?us-ascii?Q?bI4xW5P9grJ2u7Vh5euwF9+SCjnitUp3c03pCHfCz7KN1fi41S3iL/N1ZbI2?=
 =?us-ascii?Q?Xfh6bR+sJSIX5nV389KpR9wk4wGyf3zt3DhmxNOy+suoVOMX23bLXtk5CfOi?=
 =?us-ascii?Q?1sNBFvh9JNj2SmnzyOpxY7atVkyFGdf/iOTdLK3J8ct9CyNG6wtmMQSmt45k?=
 =?us-ascii?Q?7THZ6m53kFuSrdrFm50G1e+ewGGnZ+eB4hd1iV38vnBd/8OhKqkeuQI7ZccD?=
 =?us-ascii?Q?W1Auq0Kzz9JpBX7AdNitDjg57CJKuNAOlokii4jp5PzxR2iaY8bwisEAvEXy?=
 =?us-ascii?Q?duEmSMtFitd23gci+aB2xJfPRgDigfe6ZWhfqa3dMOVTNPw3bAjuVEc+VEEe?=
 =?us-ascii?Q?GM8+EInAPlxRu1Kw90J88ZtekNb32omIh1rXWEJvwJBp4XdqNJxw9Kfk+aDp?=
 =?us-ascii?Q?bCw1Rg6CdwaqBUBQ3Df5kO51kR2j8nc9Qxk4S0xrjcIk0e+TfhX4soTG1B9s?=
 =?us-ascii?Q?kw/uvFbWF+LLBc5aHI/4sI58+maEaQhIHrlYGR/7zQ2nLfOBM8GfkQuLccwl?=
 =?us-ascii?Q?s8m2TYC+qQN/vbULLW/jlTM2zoTU0WESG4r7LjbYmfk9iQUc570ZLQSpawrU?=
 =?us-ascii?Q?XuHKTJPfRNGS1kCiPq4xxCe88pjNZhQC60Z9W550pYsuVIGBJeodJv6zClyW?=
 =?us-ascii?Q?v+8u0yJII1zyAZpglsS6v3OJCebXutsH/dyiZl1pYKhzNf7/B+vsEoM4RCMX?=
 =?us-ascii?Q?EG+2tqYlNcJgmGbADQIv/enV1Jj7rZjLuiBYi5/mjCmM2w02QXw2U2hkRGQx?=
 =?us-ascii?Q?ybghnYKYUQUGFA+cBk7CYi0ir1RiX+XFHzh32bQSeMOHVXWClBqteJsvqznD?=
 =?us-ascii?Q?vCcN0/YWZMDviHm+Zj15jTBNfpQHDKTOg0i/U/do7A0RQy4Q3EjqrvtWFjuo?=
 =?us-ascii?Q?wjnOlsQaPJqF/40Mpu6JhI2R45Hs1HB/srJb0h8QPcKzoAw/3JFir8I2v2Kw?=
 =?us-ascii?Q?IdWqYeD0zfOe3seCodqOL52JYBMGvSZbYrWoWx4iQhKU2KXzAtIO0D1faEL2?=
 =?us-ascii?Q?+kdZicYBR+/Cc++FMLYGFqYI/yi5XRRER2KYXw6VUWUcK9XXcKpzXpb4RWg/?=
 =?us-ascii?Q?6esbjKRaWKLZUNo74Cq/qy3fBo4J+nw4MSWT9PEV0pm8PQ3T5zChWyLGSWam?=
 =?us-ascii?Q?QXDR+FiZj2gBDV6ptAvUD7vXfaeO1eKRNH6N7h7Avl8w6KKPyD6Bof8a5l86?=
 =?us-ascii?Q?j8VOxpMPWas/brHhqyy5aEhdO6PfZBhruZu4oHvXWdPWaAdHjfL2EvckhGuy?=
 =?us-ascii?Q?7oz6urkC+EI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(376014)(366016)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6x8ATDkEVyGQ742rpPAOaRv1oXX/aeiSNLI34pnEIJyNxa/4iM1L21oLuKag?=
 =?us-ascii?Q?0TNH3So3w5oqj1w+dOjGZ9vAQTeqEYYsmK0lYFmpQEaQafWcTfchaN7VTGOD?=
 =?us-ascii?Q?V26pkZWuuTUsyPgIeLaET9qO1X0YwEbx5sd3YojZXZcSGcYdRSg54LDKnQN9?=
 =?us-ascii?Q?w29Kavqk+pfJZBppVFKrkb6/uL6YFJETtLKnLu8LEsAidSgWyLMX/JKEO0Ep?=
 =?us-ascii?Q?GEMuJOf4Z5FR9MG7/+X6i3J8ZA0uxXY/vHY2VSJ4dQXiNXTOzEz9HYpbUdsY?=
 =?us-ascii?Q?Llsuzy4UPlj5dpig79jqSqp4Av+6kz1/fiD0C8dDRfZdNb9r3UysuuG/aI21?=
 =?us-ascii?Q?dfsZ7FQ09x/OOLujF4CWqLQhaGBK6DAO5fp2IMgaSx2vb+mQnnp3DuSYtX5/?=
 =?us-ascii?Q?v07AtcUJXpkkbpOdpgLXQtRM8WSw/uD3baoL6gNVJ4QdbdB/kXBIfr0bJ4in?=
 =?us-ascii?Q?DzKuIP8f6tyP/jKMTFulMmxbnyMnO+D6M4fgRteNRuTpgkU1ZzvNoQIrA1eg?=
 =?us-ascii?Q?mHzJrmYpC7wkjMtxGAGTIqhKlj/WipuKlOjbnyX7DwHNLgSz4ZElrQPUNwZY?=
 =?us-ascii?Q?r2bqn30O19pJFyh/9eD7FAY2yfzeeJbmRJ/fWv9iuy4wMRlpYWkb/gFwYHAe?=
 =?us-ascii?Q?9p1Xlvw7UtrLncXcAgbkT/TcDB+m12Mus8ho2eW/fyu1VXn17FM7k63zLCTi?=
 =?us-ascii?Q?Fnpng67WmTRmADIECfipXjJlxaKQ6PydrclfiUKUfB1U/9OnG7VQDNJATcJ4?=
 =?us-ascii?Q?2vZtl3+dhtcn3QsX4BuTWiw8l50tiYUU/W0lcFCG1tB81vURyZz5GnfmC0Ll?=
 =?us-ascii?Q?vkMNu2yikt7WboIXtCIVlmPoY4hqrJP5lOEubTDfOfcp/2LfLef2qd4SshYQ?=
 =?us-ascii?Q?m7wnACtPBVe2RtlgIAfTLxuaSICRJRxVfzw71To1iG0h0hR3JBXmTifZktrx?=
 =?us-ascii?Q?cmn02KnajkJQQVeTL++9SaHrFJ1QHVc77wZ5wFyfLzrvjJoJdAr4bsb67HbO?=
 =?us-ascii?Q?kBEC3raxAFHZMooMVPktIZQZdG3B6nXEsBp6zdoj9pe84Bi7E1TC7vBPK5bi?=
 =?us-ascii?Q?PLJtyTClx+vcXAK+DFSvRcfdFI4W/2L+gDN/FAufT6IYSLa1scRgQvIH3NTs?=
 =?us-ascii?Q?sSORxaJ6dqKNEs9nkjcE3QbjWAeXaAAnOAnbmtqnJmjbtOBghWfuFLpcjQ30?=
 =?us-ascii?Q?pPpoP2pKupN9tPEy1rJ0ifz6mnrwqzDbInmAiYOzCN/0rKU994T1lgBx1UVk?=
 =?us-ascii?Q?D4zAzythQL0eSxAmKcUatscwyPkSmP4tmcrrrySBueHr5ykJaLMfxdRuvOwR?=
 =?us-ascii?Q?TNx4Dca0DY1OEshCp+XEsvFvZQian5S3hC6nmBnFs8HDBUPnO5KF18flxDS1?=
 =?us-ascii?Q?SpqVzWsy5NnamGNkBxWCtSozLb/TnmVeppfjLAc7vVNuA7Qq9WzrG4PQ/3CS?=
 =?us-ascii?Q?pq3iF5d09ea1zUM/GJ0teKJKY/wN4QVcjhferpeJyXAZTcuf3wbuaB1BOrKp?=
 =?us-ascii?Q?A6c4ESOUK89Ca0f0N+rJJKT611or63YJ51bNPTwzErctxWuwA9r8sFOmFD77?=
 =?us-ascii?Q?khY8D/mEaKGd96ewhQTWcCSltzC/tUx5wG3lxlKIpVGyBIPqxjCNab0REie4?=
 =?us-ascii?Q?GfIpbIm8q7ShkFxnNlR5o9BhGzX0pHkD24VD93qFl+gF?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e1612738-a80b-488b-3b58-08ddd029f680
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jul 2025 12:01:21.1564 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zlH59CxhquAlS9lcvFx6vxvHrZvG47TXZX8dU+fiiymSjmsD480I1Dqn6Obf4fTcQw0YG4o4m73xVkkdRj7SXg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9064
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

Hi Rodrigo,

On Tue, Jul 29, 2025 at 07:36:04PM +0300, Jani Nikula wrote:
> On Tue, 29 Jul 2025, Imre Deak <imre.deak@intel.com> wrote:
> > On Tue, Jul 29, 2025 at 10:35:48AM -0400, Rodrigo Vivi wrote:
> >> On Tue, Jul 29, 2025 at 12:44:47PM +0300, Jani Nikula wrote:
> >> > On Thu, 24 Jul 2025, Maarten Lankhorst <maarten.lankhorst@linux.intel.com> wrote:
> >> > > Hey,
> >> > > [...]
> >> > >>>> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> >> > >>>> index e2e0771cf274..9e984a045059 100644
> >> > >>>> --- a/drivers/gpu/drm/xe/display/xe_display.c
> >> > >>>> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> >> > >>>> @@ -96,6 +96,7 @@ static void xe_display_fini_early(void *arg)
> >> > >>>>  	if (!xe->info.probe_display)
> >> > >>>>  		return;
> >> > >>>>  
> >> > >>>> +	intel_hpd_cancel_work(display);
> >> > >>>>  	intel_display_driver_remove_nogem(display);
> >> > >>>>  	intel_display_driver_remove_noirq(display);
> >> > >>>>  	intel_opregion_cleanup(display);
> >> > >>>> @@ -340,6 +341,8 @@ void xe_display_pm_suspend(struct xe_device *xe)
> >> > >>>>  
> >> > >>>>  	xe_display_flush_cleanup_work(xe);
> >> > >>>>  
> >> > >>>> +	intel_encoder_block_all_hpds(display);
> >> > >>>> +
> >> > >>>>  	intel_hpd_cancel_work(display);
> >> > >>>>  
> >> > >>>>  	if (has_display(xe)) {
> >> > >>>> @@ -369,6 +372,7 @@ void xe_display_pm_shutdown(struct xe_device *xe)
> >> > >>>>  	}
> >> > >>>>  
> >> > >>>>  	xe_display_flush_cleanup_work(xe);
> >> > >>>> +	intel_encoder_block_all_hpds(display);
> >> > >>>
> >> > >>> MST still needs HPD IRQs for side-band messaging, so the HPD IRQs must
> >> > >>> be blocked only after intel_dp_mst_suspend().
> >> > >>>
> >> > >>> Otherwise the patch looks ok to me, so with the above fixed and provided
> >> > >>> that Maarten is ok to disable all display IRQs only later:
> >> > >> 
> >> > >> Also probably good to identify the patch as both xe and i915 in the subject
> >> > >> drm/{i915,xe}/display:
> >> > >> 
> >> > >> and Maarten or Imre, any preference on which branch to go? any chance of
> >> > >> conflicting with any of work you might be doing in any side?
> >> > >> 
> >> > >> From my side I believe that any conflict might be easy to handle, so
> >> > >> 
> >> > >> Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> >> > >> 
> >> > >> from either side...
> >> > >> 
> >> > >>>
> >> > >>> Reviewed-by: Imre Deak <imre.deak@intel.com>
> >> > > We had a discussion on this approach, and it seems that completely disabling interrupts here like in i915 would fail too.
> >> > >
> >> > > Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> >> > >
> >> > > I don't mind either branch. As long as it applies. :-)
> >> > 
> >> > Please do not merge through *any* tree.
> >> > 
> >> > How come you all think it's okay to add this xe specific thing, and make
> >> > unification harder?
> >> 
> >> I lost any moral or rights to complain here since I couldn't move with my
> >> tasks of unification of the pm flow :(
> >> 
> >> double sorry!
> >> 
> >> > 
> >> > intel_encoder_block_all_hpds() is *way* too specific for a high level
> >> > function. Neither xe nor i915 should never call something like that
> >> > directly.
> >> 
> >> that's a valid point indeed. But I cannot see another way to fix the
> >> current issue right now without trying to move with the full unification
> >> faster. Do you?
> >
> > Imo, this should be fixed first in xe without affecting i915. Then a
> > related fix would be needed in i915, which disables all display IRQs too
> > early now, as in:
> >
> > https://github.com/ideak/linux/commit/0fbe02b20e062
> >
> > After that the xe and i915 system suspend/resume and shutdown sequences
> > could be unified mostly. Fwiw I put together that now on top of Dibin's
> > patch:
> >
> > https://github.com/ideak/linux/commits/suspend-shutdown-refactor
> 
> If that work is actually in progress and happening, then fine, let's go
> with this.

If the above is acceptable, then this change would be also needed for
i915. If the patch is merged to xe trees, then not sure if/when it would
be merged back to i915. So maybe it would make more sense to merge it to
i915 trees instead, considering it has more display changes already.
Would you be ok with that?

--Imre

> BR,
> Jani.
> 
> >
> >> > 
> >> > BR,
> >> > Jani.
> >> > 
> >> > 
> >> > -- 
> >> > Jani Nikula, Intel
> 
> -- 
> Jani Nikula, Intel
