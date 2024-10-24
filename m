Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2A659AF32B
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 21:59:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E573E10E990;
	Thu, 24 Oct 2024 19:59:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BJo+NUgM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 088A310E3B3;
 Thu, 24 Oct 2024 19:59:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729799992; x=1761335992;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=kJnUJjcEQ+d8HM5lC4+pVdGFQNoV1iPaHMysZ9J9tyk=;
 b=BJo+NUgMow9SN4BqcbWtAFBsw4vgH3vBRC5og2MlumJAuzc9mj0ANq36
 VG6FiauvjfXz7/RmvhZuMKNPbOHpq8vrSlB3ecqcvyrAZNgS4iCI8iGEX
 9JYd/XwMfqcWkJPmSJpSfP3V6kTB8cfEJj0QHCzcZy3PcKBXgb17Xtu04
 RWGy6ENfy0GUskjBOJKQ7iFJ9F8TujrtgVatv+GOcYz6jRzn0J3Aidl/t
 6kkRCKcXu2ahme381NLsIfxGzbKt1riT9/wzh37PlVvLwd2bwes4dZFTP
 KKmGUdAAou0McItVyDF0HegxicWxlGOmQ4l1tJOYjHhoF08Es9MGCmGLA w==;
X-CSE-ConnectionGUID: DdUQzj7WTNe3eso9PvZlFA==
X-CSE-MsgGUID: 30HUz0L9TX6niie99/4Izw==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="28900646"
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="28900646"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 12:59:51 -0700
X-CSE-ConnectionGUID: QsB5B8EOTPmlzp7FkBnZxw==
X-CSE-MsgGUID: x+dbj8+sQBWE0yEGSu7Eow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="80615470"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2024 12:59:50 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 24 Oct 2024 12:59:50 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 24 Oct 2024 12:59:50 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.49) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 24 Oct 2024 12:59:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hVIj+Z8BqKhO+9Fncxcf/EsTfW0+p3JHDFmJqlprM0KFC5Ezw98ZpVQ50P2QkQY6RavKURi4i5MolzyKfeS4kGaLgLWb65PEAPi07llx4LjvsAk+Ir86gy4IU9x6AkJ7gdXqYi7FxoJuW4Tn6gT7tlL9QwEHi2JvAiMIO5w7cRDM+UrdOWjcsCWPgUmYZWWdvV0lxQUHioXyF+EfenZfF8W+Wigrg6RMJVVglBNtFSsgi3xJBT4jdODECGcRqbsrLMptwXUaHtmaSjx5PsOnAB1FgwlyflhKUGtQnXJUQVnufg37N18ZsWTMUrGvYm+/0gghTsQB6LscHVp9rEEsvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KA5HaZE8gbXrSHTy7iyJa5br5UT51s3WBKdm7GM9gtU=;
 b=G/u3oJNKlwojGwXsQYyMdlSxut7nnSePznX4y9qCIpHWPNO3DglnWr3j4V7e/No3AdLl4QWblhzLY5aHVLWg0wF+3ST+FTJiUe6Ib8mbk7gLeBN118wnmehCDbXH2PASs/YUoj8sJnUUpmhCEEk9bQAy1Pnm5iTSH8F7AUVPyCsXX0AcsFTKuRYKcpl1zcnL4EN+/QNm8U9tR9zwsZYw3GvlbAxJnK0dq1Dt34Pip+VrfiSmM/JGUquiNKTxnxobRd7itfSyPgtUX803vtDAf+eBcMgyAuM+F3m1i6sXvnaTcXt6ilSj5oibpHq03BbG+bU5K+ldUqr+pFXa46eQDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by IA1PR11MB6540.namprd11.prod.outlook.com (2603:10b6:208:3a0::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.20; Thu, 24 Oct
 2024 19:59:48 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8093.018; Thu, 24 Oct 2024
 19:59:48 +0000
Date: Thu, 24 Oct 2024 12:59:42 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
CC: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/4] drm/i915/xe3lpd: Increase max_h max_v for PSR
Message-ID: <20241024195942.GQ4891@mdroper-desk1.amr.corp.intel.com>
References: <20241024035552.94363-1-suraj.kandpal@intel.com>
 <20241024035552.94363-3-suraj.kandpal@intel.com>
 <71c9ad2c-90ea-4f02-bd40-cbe86577d131@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <71c9ad2c-90ea-4f02-bd40-cbe86577d131@intel.com>
X-ClientProxiedBy: SJ0PR03CA0098.namprd03.prod.outlook.com
 (2603:10b6:a03:333::13) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|IA1PR11MB6540:EE_
X-MS-Office365-Filtering-Correlation-Id: cbe3edc3-0f55-4afe-3f1d-08dcf46669fc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?MEWq1wVEl5u+OyxJJHoxS0p0aCT5v0ISBcnNDiMCf1t+CV2Rlf856/VoWAT4?=
 =?us-ascii?Q?VuuAPnWlN1+ez7No1Ns+9ltFT+oPTGAAf88Ue5sxPZCfgXEoXsmFUcTYPR9V?=
 =?us-ascii?Q?5LbulR887UALOiukb4vI+otPCfIKXXjXu4K2kgm3gCIGIhCMn4VKULtzGXcl?=
 =?us-ascii?Q?Gbet4HBHP8e6XDBPCST5QD6AQKoXl3Wb4O/V9sm/Q6/TdXaY+W5RyXElWI5G?=
 =?us-ascii?Q?614CMc/OBa0IoYMFVVoRgXBTQd0q1p3xmP2p/QlSXquuy8VQrSIdxcm86yqG?=
 =?us-ascii?Q?AYVELVNloAweLfOFu8hV8D2lmV4o0gfRoy7nNMwojNunlt1WFAbEaDjUUypI?=
 =?us-ascii?Q?XGJ0Z+2X1j44qsTPl2mHouI34EcqybFG3zfVcs09/2QglrTXhmLEtJBM3kPv?=
 =?us-ascii?Q?exy2g6gWzSpWr0mxOk7zMuBlTUCC/nbXmfbcAAPv1DCFr/8sAJ5RJomqAJnR?=
 =?us-ascii?Q?Rb4WW1PmUlsHf87i6x++/axDGGpE1/MPxTwadxdzNJDjV6P+Bx5ejTheQcdw?=
 =?us-ascii?Q?tFsJ39YXrgk0WNSeYM4xuLA8R1pS7lJl2KxRfY0HcQBGlF+1iNW5kw/0eYFN?=
 =?us-ascii?Q?CYC8isrEkK42shAd8nHPJx8lyOZsV5fCI5MBFrVmUtqKhIMv+k4h0imkLAuw?=
 =?us-ascii?Q?Nqm0R5+ApsbDch8VnlBPalzgvWzLEy8Iq8KKzWXb9AjAaSHQX6Fre82oGsul?=
 =?us-ascii?Q?3bj4IXAHs3ZGqD3a9aV+5olNkouClOrJuC0IUvkkJ6l7fFA3k0xYXfDAVErr?=
 =?us-ascii?Q?Ds9hV/lgI1ssX6dndj0zrcvEYjmZU7hoJ+YJI9DiIfsDs0f6G7DcpxTclUzv?=
 =?us-ascii?Q?61N6qFYLdMHZ4goO9NHbUcidkKzZrds4juXZN5INMul6xaLHOs0sT77aL/W0?=
 =?us-ascii?Q?e5lZwySkZjPvbqC90RiJGyw76MeEe8KwcGn6GD4y6JY450Rff33ZLxHMpSy/?=
 =?us-ascii?Q?JOBU5V4GZuXjFF5UbVyf3s0YRnB6NcPHwDQyOUl19CGuYsHJMN4TLO8kWhvn?=
 =?us-ascii?Q?N13wUglcDa/w0sdxON5vv0Jg8yHh8GCcY99e4RBXtUxbDWT7a1mbs/JSK2md?=
 =?us-ascii?Q?q29GKWpNJldQTGAQq4Dl1ZhNvr9rHu5p0EG/LpLVoqV3D/j5eWzXYWG1d5Bh?=
 =?us-ascii?Q?+iFIw2JKaEXYq92M+mv9lfOlSQMnPMr7jiZlhq+Db8f0hKa+afsFA18L0Rc2?=
 =?us-ascii?Q?VKsX/k0wEuKfiTs77rBtmKmIo76NvHgWru2kEB0n2sBsN8lkPWRD5UIypAog?=
 =?us-ascii?Q?qP4WU5lBOgnJRzino4HPergAO6gzk7vrgluS+h54lWsuoeIXC4QGOlOb01C1?=
 =?us-ascii?Q?SfzfLnZwjVR5ljeGCoYCwgFJ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ODKH6ZlmzHZu3gIQUSujsCEOXU/8PZXNXd/1LlRtzqS1OZV2oOUK7isI+NCf?=
 =?us-ascii?Q?meeMw4sebsPuDvbcbw7+9Y3LJPVgP36HvPaCmqcfwEUfk1QDf4qdKvSQGJJ8?=
 =?us-ascii?Q?TXUeL2Es9MzojJG0GiMSOqPYBoZMbznHpT37wSPizbBDKcGGt1z9h7J4h65p?=
 =?us-ascii?Q?RiE0yGvAlSdwIwvr4nV6I0scFOnofYg3TA2yHBHqFrsbbXDJMIF5qmqZ03IO?=
 =?us-ascii?Q?HX4PJIqlHqThObbeSz0KNH3QW9albVjU+elBgNfcyuan0H0XrWgjRnTkeSo0?=
 =?us-ascii?Q?IYatyk4F1pbxIam5xw4bCxHjQnAq2xWxf+3koPrNYUT2hUkstu5+9OZGO0+V?=
 =?us-ascii?Q?53wWsDkARsKZZ6sCiqUBPwBVDcgIjhiEmQH/Qt+Bzbs+vALSecbwqs4JgA7z?=
 =?us-ascii?Q?2ejDNvjCZJqKiPnLkycWZL3d58JgCrlDMKqXbsckpFMuNvYqECxomnVld4xf?=
 =?us-ascii?Q?ZjuhaO0x0p6c5e3hv3uWDUJQZsiJkaUjGkSDCdWUqoro7NtdCiCcj+zMoK/p?=
 =?us-ascii?Q?PL+t8N5ojQASnTieM70VcW0g+htXaJFRS3kcNF8SZnhvhfJFt5NEOwuIUw82?=
 =?us-ascii?Q?m2ZRu8yXoLTAZRx8W+KqdV2vp5bnohAf12db5gKVw8nqAn2rvgjCvWCrcI7Y?=
 =?us-ascii?Q?8PihDRRRGrX3VF3nLnZCSoNMvpbdslhV1BDE9WaXurZca3Bqk50EzjE+dlU4?=
 =?us-ascii?Q?sTQvesQ4E+hqPtGO8KUGlgMOB6knUle31qUaoNBUg0VRSeyQtPzM6JKH5PQ6?=
 =?us-ascii?Q?+JY9vu2xinZlzZb6mDjxtRdUj2rb9tY3DbOdGmQ7FNq2jZZe0QqeE/gYXU3w?=
 =?us-ascii?Q?sru5ileqN90Tnc0MjCT/XD3dH5k4Aq9lPJzFXgBBoGhDs3Nctx/Q4Ps+8ssh?=
 =?us-ascii?Q?SD0eEfFzSf8qxHpTLaQC7oqUlooQxuJrfFgWWemPQ/YmbjFC6O+NtouJBN91?=
 =?us-ascii?Q?/0iGmJKk/PUetjhSyLtZW32pxMfX+vSjyyidN+HVY9gIOmFioMZz9QrUQyjm?=
 =?us-ascii?Q?6qRbzwqMB1nAhR0CTrXIRYn1ADz/8Suj0e1k2/49lJYcZmdZe6UkN2MYW+5i?=
 =?us-ascii?Q?Go4ininD4RxuFU7MceG+qPHoVdn2umf5dpWfCrovBtpWLe6nGoEMUHkidkjN?=
 =?us-ascii?Q?HkYAFC85iSYTAIQnhzqR0Ar3QgXOlNSmteo8ninVxea4jPzL4gk9qm5ejm6o?=
 =?us-ascii?Q?rWySuqDqIamLzKoKUJs24y4Yn2OAFQ42EYXjuSHbCHCF/e9qdnA3WXbQskX7?=
 =?us-ascii?Q?unnR63+FSocpNXS8IRjghN0EayWF7yRzoHDtE1uKExRyUv7Wtuy3ZrzAiteR?=
 =?us-ascii?Q?GtycOkpoEQH3B55IRcvZlc+sp/SsxxngUeN03ukVYXZH3ARjRjKCr0CfCWLP?=
 =?us-ascii?Q?F7hYdDtiopkUU1FGGD0SsPW9qv0e83Nbp2zoObQ5SpqBT0Al2IsR4rgLZFK/?=
 =?us-ascii?Q?s/Ez+J+prroy6F5oQGipOEcyX06O06JHPrsI4rzAPpnWuZTTTePKg8ZYIEij?=
 =?us-ascii?Q?nSrV6J3tIGP1mFrEQwDBLUh5VFXs4KqVN1jfCa/qTngCIbKOAlFro9eYWYk8?=
 =?us-ascii?Q?WQkl5e2LCkt2/RrJdebtkNUjylijoQpv1vNUJ1W9JfRBfnM2gJv7gYP4wvpe?=
 =?us-ascii?Q?Mw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cbe3edc3-0f55-4afe-3f1d-08dcf46669fc
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2024 19:59:48.2997 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0sO2fI6K3NycT/Ngsq4J+EzbMAgXe4j/TGNFiFLe6v4vfOg6Z6PIdDeo5VIds2cRBNK1APZISPEOYaRspw4/Vdf+1judtoWMVL4m6H/SAMY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6540
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

On Thu, Oct 24, 2024 at 06:34:48PM +0530, Nautiyal, Ankit K wrote:
> 
> On 10/24/2024 9:25 AM, Suraj Kandpal wrote:
> > Spec states that PSR max active is same as max pipe active values.
> > Now that each pipe supports 6k resolution increasing max_h and
> > max_v for PSR too.
> > 
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_psr.c | 6 +++++-
> >   1 file changed, 5 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> > index 3b20325b3f6a..8981a180285e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -1451,7 +1451,11 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
> >   		return false;
> >   	}
> > -	if (DISPLAY_VER(display) >= 12) {
> > +	if (DISPLAY_VER(dev_priv) >= 30) {
> > +		psr_max_h = 6144;
> > +		psr_max_v = 4096;
> 
> As per Bspec:69885 from XE2LPD+ the max size for PSR2 is pipe active size,
> so psr_max_v should have been 4096 even earlier.
> 
> Perhaps need to change even for earlier platform.

Agreed; bspec 68858 indicates this should have been the pipe's vertical
limit (4096) on Xe2 as well.


Matt

> 
> Regards,
> 
> Ankit
> 
> > +		max_bpp = 30;
> > +	} else if (DISPLAY_VER(dev_priv) >= 12) {
> >   		psr_max_h = 5120;
> >   		psr_max_v = 3200;
> >   		max_bpp = 30;

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
