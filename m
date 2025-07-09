Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E471AFF455
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jul 2025 00:03:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76C0F10E0C2;
	Wed,  9 Jul 2025 22:03:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aHAT7TWS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66BC710E0C2
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jul 2025 22:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752098584; x=1783634584;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=M4V8nxeX+QYIKtLbSsuNHuHWGBeiqsFLyaBixPO8q+Q=;
 b=aHAT7TWS55w7AWi7iOWGCb1VgfDs9CWchLPsUNcMCwL7GOugzFRvPu5V
 B7fA5G688RvZqgJsqZmEnmHwgmfdPC2OI7M2vyk6aAlf56297BCf9kDQl
 rh6anXUzCeVlH3oZF+mhRnOFjB3iSqxLLsE9cCZ3fB0/MXMyHl2JU8JUh
 u3j23EdONMNFkniEjZsIpn5Ew655G4Rse92CjsPxwBTlrBMmgrklZIkBq
 7i2Pf9W5C1iZtOnyxlE758Ujtw8/z+UaBTp4qHf0HaDqDzdJbLE4zqkQK
 fLQfZiVNSX5+PB8qOKr4RtBklFeEMgQnfc3/pasvD5y380eEATDGtSCOp A==;
X-CSE-ConnectionGUID: iYb8WdBsSVWADKasCT5xHA==
X-CSE-MsgGUID: 36OrdGeYRP2U2ijwB2SISw==
X-IronPort-AV: E=McAfee;i="6800,10657,11489"; a="54517162"
X-IronPort-AV: E=Sophos;i="6.16,299,1744095600"; d="scan'208";a="54517162"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2025 15:03:04 -0700
X-CSE-ConnectionGUID: 9vG9Zj82SOWBffuiXbkdOQ==
X-CSE-MsgGUID: PeyKJZOvRA+xeSLPukVBKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,299,1744095600"; d="scan'208";a="179593140"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2025 15:03:03 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 9 Jul 2025 15:03:03 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 9 Jul 2025 15:03:03 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (40.107.100.73)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 9 Jul 2025 15:03:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ycsKyyvn8Dl6vEyFaG71PEPYYmFMe2vi1ZGEBLo1buHBqAdmL6yUbS+hA19n/dNwp9ZJh4MbmzuFhn0SM6TBHPSQRklYfNPTXXWljdljjjgm9cJ2vcekIIS/GoI2Lz0Q9Mvekdzb3Gt5xtL8prID3e8aOqNUWtUtzifLWZzkqcnOLY+NGG3V57aI06TvoZQjo+E4mmdr7LX8575Yqs2oCHau4fxpIfCdh7mhZF7xFjhMLyLqVhczGRsTaE8ktSNeBRutuIAtg/9/u9SK7AvSb2x9E4IKPSjtzU1695NvuCiQUuSbTKoEX9RsdCCrdapwdrj7KLubrn1GdNh20UzU+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=46F4yPr+Jz+i9kLtYihSQtaOmU2yvIlsNCNREEGmluY=;
 b=rba4CDGf6SSTgg5AiNtqkecx4IjLuX/wS2e/xispuPu3iwJI1MA6LhUy8ABS3N0qH0Rni8ZDLF/m7a2paDGor2cqLijlmhBRcBeVBFFNimV+YHc/odQST2cE2/NorEgtXmqYigagNCMZzPTkh+P4pEllLx1zFl9knyNCcgDYslbsEPVEs2G2VO/2nGabcOLGaS6Yb+CDoZsAmnsccgsaX8ChrhYLfqmGg7O/gqRoiqlFzqPs93mXxTmzndAlYFHopPzXmMaqQEHWDoNIbwmHBgJbeDuLeqJyAowKuMV4K0A4pkU9nqde2l0ABrOGuJHLiHnmML00ECuyvqIcDZwCCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12)
 by CH3PR11MB8563.namprd11.prod.outlook.com (2603:10b6:610:1af::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.23; Wed, 9 Jul
 2025 22:02:44 +0000
Received: from PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332]) by PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332%5]) with mapi id 15.20.8901.024; Wed, 9 Jul 2025
 22:02:44 +0000
Date: Wed, 9 Jul 2025 15:04:27 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: Sebastian Andrzej Siewior <bigeasy@linutronix.de>, Ben Hutchings
 <ben@decadent.org.uk>, <linux-rt-users@vger.kernel.org>,
 <intel-gfx@lists.freedesktop.org>, Debian kernel maintainers
 <debian-kernel@lists.debian.org>
Subject: Re: PREEMPT_RT vs i915
Message-ID: <aG7na/6m/IcrJ3xx@lstrano-desk.jf.intel.com>
References: <7c42fe5a6158445e150e7d63991767e44fc36d3d.camel@decadent.org.uk>
 <aG6nMhimN1lWKAEP@intel.com>
 <20250709194443.lkevdn6m@linutronix.de>
 <aG7MckLkTuzZ5LBe@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aG7MckLkTuzZ5LBe@intel.com>
X-ClientProxiedBy: MW4PR04CA0247.namprd04.prod.outlook.com
 (2603:10b6:303:88::12) To PH7PR11MB6522.namprd11.prod.outlook.com
 (2603:10b6:510:212::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6522:EE_|CH3PR11MB8563:EE_
X-MS-Office365-Filtering-Correlation-Id: 9c40798d-522c-4a28-69c1-08ddbf3454f7
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?+S1fZcoOMfGrPl2bXb0I4BAHD5TaVziXK7XOIo28MNWziPq2y6UBVFmVfk?=
 =?iso-8859-1?Q?SWNVwBVdXwYX22doVDCsWv411BOBHS4zWxaLygkyeNTphyOwTJFjJfzGXW?=
 =?iso-8859-1?Q?vMFS0NMQ4srxgAP0JpgAbZOBKTRdo5MbuqqV/W0iw0lTXVW7s8ID0kVyqO?=
 =?iso-8859-1?Q?NWyQgC0NWWJ87AykJ1xOq+zR6ur6c2G/nT2Rn9Dl00GXhblrjT88Oweffv?=
 =?iso-8859-1?Q?1tC+Nv/N7mKgGN/7V4vRW2u7CJAHii9e44XQ8041J5N56P3tjrkuFcPf34?=
 =?iso-8859-1?Q?haUeXcit37aiiI7yZwu5zVHsGUMrZYaVn//tUiYxFwZQ8jMSB1rs6n8HyB?=
 =?iso-8859-1?Q?VJseyXwhF6yCVdoY+MHAz8lxcJi6pD02fWMrs+jV3hbN7NdSbwn3Qn6xq5?=
 =?iso-8859-1?Q?JtsvBbGUJbRNAQeJU9cV3OzQf062H9XD4QAA3TUrpExqge0Z9fQ6SX0Cuj?=
 =?iso-8859-1?Q?KYGaQJC53d+jT1/P1Sh7pIuNbxa73LRe00GZgjkEPFT2Fi9B9LY1Y9tHY/?=
 =?iso-8859-1?Q?QTWhYGL5E0anqiOmrpMmX/qZDxVO6bwS8AmuFahiJHUe8CZ7w3XXISdU3K?=
 =?iso-8859-1?Q?Cjig57SDV6w8o+p9CSmrQT3XOUowbaCeYDJLBPoQlg/fX3vHBoRCP6pKqc?=
 =?iso-8859-1?Q?KKJS0GTKGzbT/myF/Ig3qCfEUPQV2hU7V1jez3FZjZgD2yoqr9YEXOTgPQ?=
 =?iso-8859-1?Q?2cZ36dFFfCRFl+RnyPIGE25MYucOhGA9cD2crhbIOf/7k3au0PY5sbpwXN?=
 =?iso-8859-1?Q?vhJoid/pUSZDNl2fZAKojWYGf2gsLp++Kj4alLkZ+/3gmKDTqjlawIJj5D?=
 =?iso-8859-1?Q?DZYMe5tdS1mhegvNJUNiayXrOUV7XNwJR5IFwelFzbknGoLlQsCl35C7L/?=
 =?iso-8859-1?Q?3nOfiLvaGLOwz0SxSfyrm9M/2b6ntYPY2GPZVFMXOA8f0fn1r6CdPWb1PB?=
 =?iso-8859-1?Q?sltRw0551De/LNeNQD6+RYioxIJD9dmUlYb93AQKSZIMhBECY4EpcCj0eb?=
 =?iso-8859-1?Q?Vj5C+duBfrdk9i2xMZEQoVzicsLeIXommuY6jakvlcW7Pn230o+uud7IMq?=
 =?iso-8859-1?Q?ZdBcRaGexRA5xlnObkMCeQkyVK5dd7+eX34aUTSEgW7f8W6yQkkpvZJM0Q?=
 =?iso-8859-1?Q?wCQa1WVZyKI3tTLo0UR5scrWxVrq5rYfyqfLYRQW8vtrBOeMrYlfTK1xkC?=
 =?iso-8859-1?Q?4hdxbogto0HnzUHywGpQ3Zw+kYSrsih4/5FFPCHJZ9TjzsN2zquoUdwqvy?=
 =?iso-8859-1?Q?HTPjsQcdCQTmCfQdjigB+1nHpTT+e0EGoESCzyqw7e91AKHK052crpSA+7?=
 =?iso-8859-1?Q?ofqHhiwrGOODTOmQSn0EWb8MPKdDfJQ+ItFJvkvT6dlK2PYHi6Db/hUQhX?=
 =?iso-8859-1?Q?m8fvVAHoJRrWcrCrJGsUpB7kTd+Y93OM14ooySpXMCp50I4nMK/P035shc?=
 =?iso-8859-1?Q?pvpyjSe5HJXeYC7/t5HcRrrNkGxp5OM66vKJvEZAn/1YNyPEbCrgZOkl05?=
 =?iso-8859-1?Q?8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?rmdzjhlQuEw72cvt6TkSH58cOnbXPcfAEfT7wLZl1n8cgp836keIrbsCFQ?=
 =?iso-8859-1?Q?yTdRJNJSgRSrRuUVGlp+usPfbnO3rhcekbBmDvlmKHZXNb1eYF2n6ImE3x?=
 =?iso-8859-1?Q?wTFynph5vcAP1F9gKOEHwF7fj2YFRXWJQo1wRz797nGwmUA43Q16i49QDJ?=
 =?iso-8859-1?Q?k/0DUZvG6lz9HX0Zh6mj2hvpcXPD+pR6GC89Kls+mieb4gumIhCChDOWOo?=
 =?iso-8859-1?Q?Lq7MgxgsvTpf9cWm6vGD+5MCIdbGYuUiNSa5JKUGgOTQevpWJ4NX1NcCHj?=
 =?iso-8859-1?Q?J5g7DiNcEXj5vpWJLxKd5HnpqjYdkToUSoc3NQsz7n2mQYxnWRoEhPSLPv?=
 =?iso-8859-1?Q?C8tNvmW/X4yK13pVYZ2W7uFtpSnIzCVT8C+wC7rKSaf0df4hzNm26e/1pM?=
 =?iso-8859-1?Q?pgmF+jYRyf9pKZg6FmVshXQNQKezChQJH8r08GoXFdo3POTBt/fk5Nu78m?=
 =?iso-8859-1?Q?Va+6gpvgs/G/BxjfspZwntyy9nqS1oD40c7MjaERanXpMukSdjmIymTdIE?=
 =?iso-8859-1?Q?oAKOcJ59VtnP5m3vjXTtKa7pZe42Bw6Y0V8CNMSNOb5pkkp8+bAn8LZjBX?=
 =?iso-8859-1?Q?dqBjef7G0iJAVQTYvBSzr8cEXz8+ChWK/TTt2u+0iENXBl14lpG6Q5T68u?=
 =?iso-8859-1?Q?aT9RX3Ca3p4IinwSmXUliAh3w5FY7ryi5aJwbY7+an5S18plYF/zJ3JRYk?=
 =?iso-8859-1?Q?U7K5n2ZeSTtCXC+b6Gi23b/BL7iF5v0OcGIGFEtXE8u68KZ1A/WbO5dG+S?=
 =?iso-8859-1?Q?fzEQ3TT0ILVwd2zG1bFMDqBxa18LUSl+b0b+0SJB5CgDK/dIwP0xK6ft9B?=
 =?iso-8859-1?Q?/umJHTCZ3gkFMbMnRC58An7KMiuiJcZQYC1JNugZ8epj7YeMaj0qsNfgIX?=
 =?iso-8859-1?Q?SVk8etLfjRGgWP04gI96rQ+PZKXviRutx6TGTOrq6nXxfrkTyycsl8yr+R?=
 =?iso-8859-1?Q?H00nGD367UEyOet8RYb0tqA8vf6+3G2UJ9OV5KNrP2EBZjCHGXS29Mkcnt?=
 =?iso-8859-1?Q?2r7KTZigeOT2RpytywJvtCxzPoRAEsZtGTZTo0qKCu/A5UNjPu4Gv6oRr1?=
 =?iso-8859-1?Q?9EsVFuOUa9dYGAMg2/2GnRtChHa9uIKqOm1xa5KAtNkfFZIzno03NuETQC?=
 =?iso-8859-1?Q?hOSGcAnpGiLHCWm2vgfKfWGQJLKd08xOH6fZXykUaR0IbmBzt85/VtUkXD?=
 =?iso-8859-1?Q?8s1WBR3hSgHMPM+SwxSJYd+QB41C8fgtjff9SEV6NigTu4YNoWOXswLWc8?=
 =?iso-8859-1?Q?Kq8Qp9S2nRRUoEn3F1E8/nT4hr3kRFPluI8amPeODK1CoXWeo5TPhHUWXE?=
 =?iso-8859-1?Q?6/cnAuklgeLAemSD0W+oufbk/uI4KzeiuMkUeGbWcR5r/VNPo1NPopr3vz?=
 =?iso-8859-1?Q?CdsnrA+ADVtNa856UFVTOCwcigdptOU+4ejns2VEucoX78acqDwtfdwn4L?=
 =?iso-8859-1?Q?+c2KTwppAimzDV/PKco54sjXPJKzz8AajLCzrFSO5FohjAD4LIEPqO0cGE?=
 =?iso-8859-1?Q?yjz+W1SOzqKBGsPLtu3vZSy78c4qcApFA200kRHNIpBWDabH42oT+xX0v1?=
 =?iso-8859-1?Q?gVqQr21A9Q0buUEy+1jtzhiPEmThKuEeYDo6f0DD89JR+I+5ZLbQUz/SUJ?=
 =?iso-8859-1?Q?RtHE2Bb8LwMOuwQZNQiBiiY+wa2O2lUVdD730l66vVkhrza0lhSFz2SQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c40798d-522c-4a28-69c1-08ddbf3454f7
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jul 2025 22:02:44.3331 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1ncf3nETDN0ITcKNg36TroVG4F+PuDirH38iuitAN+MOQR2dN4bBViuGL6MzfzTyQoKxpNrVCdJzjhcrzj65yQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8563
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

On Wed, Jul 09, 2025 at 11:09:22PM +0300, Ville Syrjälä wrote:
> On Wed, Jul 09, 2025 at 09:44:43PM +0200, Sebastian Andrzej Siewior wrote:
> > On 2025-07-09 20:30:26 [+0300], Ville Syrjälä wrote:
> > > > 
> > > > It seems like the critical uncore lock is currently held in a lot of
> > > > places and potentially for a long time.
> > > 
> > > It shouldn't be held for that long. I think it should just be
> > > a raw spinlock.
> > 
> > What about I resubmit the series and we look again? I don't think the
> > lock should be made raw just to be done with it.
> 
> Until someone actually does the work to confirm the thing is working
> reliably there's no point in posting anything.
> 
> And IIRC the other remaining problem with RT was the spinlocks used
> inside tracepoints (which is uncore lock, and probably some vblank
> locks). So that too needs some kind of solution because it's going to
> very hard to debug the timing sensitive parts without the tracepoints.

A bit of a drive-by comment, but taking locks inside tracepoints seems
like a pretty horrible idea in general. We've managed to write an entire
driver (Xe) from scratch and bring it up without doing this. I'd be very
surprised if this is truly necessary in i915.

Matt

> 
> -- 
> Ville Syrjälä
> Intel
