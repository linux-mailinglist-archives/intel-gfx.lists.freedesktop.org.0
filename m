Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18A04B184E3
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Aug 2025 17:25:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F22EE10E8BF;
	Fri,  1 Aug 2025 15:25:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LNtI2ls3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E50810E8A4;
 Fri,  1 Aug 2025 15:25:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754061916; x=1785597916;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=r2EzLFxVNoLcKNSadECOSD1Ln1AM/rayWxhc9AsHsGs=;
 b=LNtI2ls3LUuNNM+6gB6NZLpEounhTbJYyqNxv/ddRWWTDFWx7jS/ypJV
 8XL968sAkA6M8J0/xmR+vwoqRY3UiDDnq8kjwy0yi4FDGzHkQsW8GImwu
 S+o5yPbzrlqJc6NAyxbsuQhQAUuTtdvfHbx6nslks/rh+vJvDD8JU/Mtz
 UjXrNoIj+m6xo11+X8kdkr2eb72zFI7Obx/HNduFFPq5sciunLC3GvrCy
 wN0hrP4kkvmhe1L6tiLXCNd1LwY5ujtWpFUMs7ETOpeG69T4e7HUtuMAG
 MP9OMIx+nkcRcPiRmROsEbvS489ybOT+EOieJTSDrn08tUnta0renein+ Q==;
X-CSE-ConnectionGUID: q8cO/K8oQuiAWQ/OaUYAyg==
X-CSE-MsgGUID: OO8DMtowR+Gc+x1AS3dZkg==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="67777863"
X-IronPort-AV: E=Sophos;i="6.17,255,1747724400"; d="scan'208";a="67777863"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2025 08:25:16 -0700
X-CSE-ConnectionGUID: UI3Rwh7SSo+2sd9Zy84kdg==
X-CSE-MsgGUID: B4Nmt3ITRVmsJdmQZcgrTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,255,1747724400"; d="scan'208";a="168971537"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2025 08:25:16 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 1 Aug 2025 08:25:15 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 1 Aug 2025 08:25:15 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.73)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 1 Aug 2025 08:25:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R32t8f4tZvJNRppXiNd+DbBhX0v+sB7Fj2nPBf8hvUsYspcE4dDVfcRcjQnMU/D1L8YUWG19R/huQLyK9IiVjhfaE0o27WHQKya400j7H7GDiOw8ufII6oqkocclub01+MVw48buDR9/KxtpHtWyRTwMVmiPpw1uHe9xyIG5lBYe0kjWwDBK/Lkw4AFCKGBtkAoVINeCSaVymRh+7fAgYY+Nbj8R9WWeFBKOWzs98mrksImu4BGUhDkWsnOKw69D/NFaC43J303D2ZnZAeWvm5EYesgXn7ZUZsdJ1DKzAwUncE2ingIkB/TzVv/kNU6kiCPSqcJ6MyZ8ym1uPG4rIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bt3nQq6iayU1LS25F5KKm9csEsxofzLorN6HdyXCLc4=;
 b=s9up9vr0BF/zAvV3XCPBikWztK/G2dUQPCxy7YDHZs+d9L9SdlFuKLQsw0Hmq9MHTS1gjvb3hLz1FPN4/7Do4TC5qmVu+8exxPb51tE3buB07bdbadAaB0880L+xZ645GLkZBl4YS4P1U2TQRm6lpbWjuL7H3MPTcclYope5gj9ZSV+VKjAdGTUlmdgW747IhUco9Z183aZ+JPFE6ZKLTNjsEciVoLRM6TuezNJTMVOQrAEg0VJpPPuteNYNGQ62v//gKRs6w2d8tjDq7GaJDfZ7kjM+bTCxsJF5hUELy0DxUlTkmDupd7qrxdObOxuPyKVMi9wpBRNsn7GW+HEfsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by BL1PR11MB5977.namprd11.prod.outlook.com (2603:10b6:208:384::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.14; Fri, 1 Aug
 2025 15:25:06 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%5]) with mapi id 15.20.8989.011; Fri, 1 Aug 2025
 15:25:06 +0000
Date: Fri, 1 Aug 2025 11:25:02 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <imre.deak@intel.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Dibin Moolakadan Subrahmanian
 <dibin.moolakadan.subrahmanian@intel.com>, <intel-gfx@lists.freedesktop.org>, 
 <intel-xe@lists.freedesktop.org>, <ankit.k.nautiyal@intel.com>,
 <uma.shankar@intel.com>
Subject: Re: [PATCH v2] drm/xe/display: Block hpd during suspend
Message-ID: <aIzcTmZ_TvpCRoKG@intel.com>
References: <20250723092946.1975018-1-dibin.moolakadan.subrahmanian@intel.com>
 <aICtgAa54ESMZ2ii@ideak-desk> <aIDhTEcPoL5Y8Aoj@intel.com>
 <7b9d3439-ad9b-4ebf-86ee-0aa1c7b87b8c@linux.intel.com>
 <1c1510bdb0b9ade97da615f81d91e8f7cde20275@intel.com>
 <aIjcRFU90s6Ml9Vt@intel.com> <aIjizdet9ZUXB-yx@ideak-desk>
 <f7397d551049d81c4d59be25db23d41cbf8ed602@intel.com>
 <aItbBXMNinP4TaEy@ideak-desk>
 <0abb5f2108a1b6c86766e4d8416398a40bbf993d@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <0abb5f2108a1b6c86766e4d8416398a40bbf993d@intel.com>
X-ClientProxiedBy: BYAPR07CA0060.namprd07.prod.outlook.com
 (2603:10b6:a03:60::37) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|BL1PR11MB5977:EE_
X-MS-Office365-Filtering-Correlation-Id: 48697720-e87e-45ac-4db0-08ddd10f9830
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?JSMx5NtwIXn4ItPc6BKEe9Vi24XZfRJCz5xnHzXo1DyijdlijgdWNnjK3d8Q?=
 =?us-ascii?Q?Bg5Yrf/MI0gMk/+qMRSDFptT3gJJJNuji0282Y8yiu5idLqQoakiE+ZVVY91?=
 =?us-ascii?Q?VdCXPjIn7PHBPHnrenNzqosOOgEvrPAVuPiFAjHjbcg11uBo7mutXXbhiQkt?=
 =?us-ascii?Q?+0e6i+tYo7IT9JwhdfoVJsjpmr4WtRkALu0eESk1IUbe2LUkv1We+4ZtSctg?=
 =?us-ascii?Q?I/smd2pxB33Z/g7mrbGMRJoU1zRfp7/TMrj4Du16RebHQUMvg4xizB26DHtM?=
 =?us-ascii?Q?83fenm26ypO/zpIwLa1vD/JOrb4E8VR4LueEE6hEJrgCUO9Ye6A/1BKGjoWe?=
 =?us-ascii?Q?/zEYb+g1xkjd0u65T5lfaKIR6NIsDR+LSgUaAIfNLzxpWmlhlc6rIaMQecgC?=
 =?us-ascii?Q?f6Q5BjGC8u57eCKQHyDCc46TXo6RM/Q1abyOIphTsdzQiFlT2lWmbkfmaoFm?=
 =?us-ascii?Q?zp1Nx00wCA/+sZ207Z1fLPp496SNHlCZkTmKQqlRS4ForO/WsNZnFNOXJmpu?=
 =?us-ascii?Q?2Uo6ddYE6fnmfZwvI05eD3eEQOjviR4NR6l+5SEsPZ6M1nlP+wMBpEoqNojY?=
 =?us-ascii?Q?BvII1Q2qgydAM2Ev5e7FtdWfF02sOundcF2dLHW0Ln73DyVs8F8aoHyJvj7n?=
 =?us-ascii?Q?82Lq0Ibpxjw10ucki/gFzQT1tbETtFDLEkAW7WDvQc3jKubJGP4zRdlo8uQo?=
 =?us-ascii?Q?OSuT7EX36dBGtvb5BtX+7vXRqhWWeDb/nn13MugtKLKhNClo65tPPOaXde1z?=
 =?us-ascii?Q?QMKD5ht364LgGYCyxg15ndRxMvrGRNDB0GShxM331G1ycc0HZPvzI8D41J7C?=
 =?us-ascii?Q?dDJhO0ycpgFeEZub1CYELKps5QYaPPEbfr1Pq8x2I9LNo0sTlXKazE5tcrBf?=
 =?us-ascii?Q?/9/gTkpZ7Zabz+2wQt2sQgvR8BSeV9gYouzjb9HF0lYnGDdL20dcubJsW6MN?=
 =?us-ascii?Q?gDeG4SCjnwCc1t0qPLbQCMjD1vLkzZq/4tsPf55o8Admj+o4totexY7o0CD9?=
 =?us-ascii?Q?gPWBAiF3aLuEMhAa4I0uuqGtIBFkemz9++ECyVxzT0akxT8MmrxYNILiw6H5?=
 =?us-ascii?Q?BQfFcruVI62LRrugQ99VC09AwydvZ7ExCu9A45OAqzKGd8niSvScFrte92Yb?=
 =?us-ascii?Q?F/dVrlATNU0hgYufbtGUsxAP5IuqOcrNSM2YyMB7FuldiuwkiCrSeDn78XpH?=
 =?us-ascii?Q?UKgmjpDs11uiS1J0CF7RAWKTXvyCHoBDfdHRj3013iR4MXJft+zfOQvXZmva?=
 =?us-ascii?Q?ci6eyl3KxYtb0o/WWwd8saIvuz8UuKhGupNy+ClrcL7eB4ebPHR2O105rQf2?=
 =?us-ascii?Q?pU9qKFCoJBEzk7CquSi79Grnm3mMgEByayl0vThrchUIZw9pJhSAqDNeF9HA?=
 =?us-ascii?Q?pfj1GxbDF4r6Uhwcll1QC5URj/j9zYDezWaJkXaVNZq29srAG5h3h2pANjcH?=
 =?us-ascii?Q?vlIe4UKuYGg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?OOO5rXnVkXt9+new/4b5bQimrsA0nZMbMi56NgqXqULnZl1t0JK6MTzFno4p?=
 =?us-ascii?Q?yKG6NTot1RRa1qAruEZtEKgkT6SHjwYt2bmSpL0hMY684kAPGWKFL3IzpRc3?=
 =?us-ascii?Q?M44lnBgtDT5ZKF0bV1LwMAppVqdACXg/9csUw6zSisbpoXxSMarOgPBqTX6f?=
 =?us-ascii?Q?tisVH7pa1hFswBiBFflWMzlrfROjfkypa0sZeYeqCp8cI0iKSx0GlOEqc+Wc?=
 =?us-ascii?Q?hvTJLDMhxk8t72jRHGFVIFtOlqY7Zt4Jv6vWTlv2WpU8dSfmG30kL09nML0z?=
 =?us-ascii?Q?TYSqksOsUPbpZ3lPJwYBgiSn8GYO1pd/E0CZ55iW44wI57YAVPbLSIV7oLQy?=
 =?us-ascii?Q?gIQvTvEEdOhdft1LlyT2PoLoFlCP8PlLu2yy3N6bDR1Z0DNxIEORCRvehang?=
 =?us-ascii?Q?NmjKcOMqUacvENmtY35Eso5XxRz2F2nHsuDWL3hgmYtSujjhgWL3UlbwV7Qy?=
 =?us-ascii?Q?1eemYIh0yRCUyIsTLne3M4j/jR02No2IkfQUV+izlzZgzQZRcX99Bw9aDwWm?=
 =?us-ascii?Q?u1MasTPvA7MVrkVqlDB+Qz5xOR+2C8a0q2rbfYKsBoB4nVQeqlgkyLyqszIO?=
 =?us-ascii?Q?biuCqRoOzDpkmKFJB/emqFkZ8m0Tejq/W3CJimKyxWhfZyqdMz5jghos4Nq3?=
 =?us-ascii?Q?8AiwU/T36++hMGX8U843nOhmqwTH4YPRLc5b/vcPZcj4Ll7dlKUaoFMVROav?=
 =?us-ascii?Q?qz5TJGmQiY9g4NTSwfbcPI5w/0dZs8uiGc9VffWTuym762d00Mu87KIwPwGP?=
 =?us-ascii?Q?rBgjz/KNKqG4V9pNvCSPq10i7qS5VFD7bOCNTAb/nknkX/mTZ9f//p4hEMt/?=
 =?us-ascii?Q?xjSgBnTNdXWf2Fa9W75h4+LJ3LwvpB5XtW6Zgl3Hw2JHDdqDoe+YFz0fjDqQ?=
 =?us-ascii?Q?XiFynWBaKOKrXTz3TBt9skt+RCuBPkzDEKEelxQ4Iowi1f60bDuQ2vly7IN0?=
 =?us-ascii?Q?AL9BmFN4D2LzK+bwMVb/nV/R/AL5K5zB4ZO/ft6ce/tY7AgsoNd/Y0y80ia9?=
 =?us-ascii?Q?JSW7Q/EKc4udNVD5elKyzToyYJZ1BUDbruAJg+4rvqtCSpN+OHD7LUiAlMcc?=
 =?us-ascii?Q?n4xobrlCsPBMVEiuRP7SjHsn9Gdnz5D1HEvohTfvf3htb162RuXELNCpPUy9?=
 =?us-ascii?Q?Q6BRo4RvZ+ZU4odO6G2SZZMN28u7wvLxmF9E9+2TUWwdi5Lfh+w6RnG8iijr?=
 =?us-ascii?Q?BHnyRxDF6BoEKXHDmPgmgLexHwV84oozzE0AR4DRTwz5abu4VQyjHji1U7AA?=
 =?us-ascii?Q?Iry7XsqerGEdOeJLfNjRYRdbkcjcsUzcUQJKitPRdnPJy+Q2NGc8vYZeF9Ck?=
 =?us-ascii?Q?t9szRXH8SOmMogJEdfo0ygZRKNiLa2iA6No2cVM2kfGnrXvOrjqkQAQMTas3?=
 =?us-ascii?Q?Svsh6Jsu637sGVzDbpL9hZ/nijDxTYQVWxHiXjKpOPqxeNijEbY5CJArNJE3?=
 =?us-ascii?Q?JI0b4mCQcIFDFYbMN+rv5lRq0HNSVxbfZPUY5eZJjXbRY6A62BAtDiVcVl6o?=
 =?us-ascii?Q?BpZ//wi9pT35LARiBZcKmpjLTJMcfIjj8eoQu8wxqXj+a25OI0sbqSWF4xOx?=
 =?us-ascii?Q?T2lozFZX0Hszj4EZAfJG8fME0BEiz77fu5TkShzaTaxGdq58zmdGjS3vU+9o?=
 =?us-ascii?Q?ow=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 48697720-e87e-45ac-4db0-08ddd10f9830
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2025 15:25:06.6693 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: me46DjxzqUs60o8eicLV9IJ9+DZsRhj1/myj3y9dqw0wFNVRwChegRj3jvy0PfJcZWiTz6QoAjFhXmSSULA98Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5977
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

On Thu, Jul 31, 2025 at 03:32:51PM +0300, Jani Nikula wrote:
> On Thu, 31 Jul 2025, Imre Deak <imre.deak@intel.com> wrote:
> > Hi Rodrigo,
> >
> > On Tue, Jul 29, 2025 at 07:36:04PM +0300, Jani Nikula wrote:
> >> On Tue, 29 Jul 2025, Imre Deak <imre.deak@intel.com> wrote:
> >> > On Tue, Jul 29, 2025 at 10:35:48AM -0400, Rodrigo Vivi wrote:
> >> >> On Tue, Jul 29, 2025 at 12:44:47PM +0300, Jani Nikula wrote:
> >> >> > On Thu, 24 Jul 2025, Maarten Lankhorst <maarten.lankhorst@linux.intel.com> wrote:
> >> >> > > Hey,
> >> >> > > [...]
> >> >> > >>>> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> >> >> > >>>> index e2e0771cf274..9e984a045059 100644
> >> >> > >>>> --- a/drivers/gpu/drm/xe/display/xe_display.c
> >> >> > >>>> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> >> >> > >>>> @@ -96,6 +96,7 @@ static void xe_display_fini_early(void *arg)
> >> >> > >>>>  	if (!xe->info.probe_display)
> >> >> > >>>>  		return;
> >> >> > >>>>  
> >> >> > >>>> +	intel_hpd_cancel_work(display);
> >> >> > >>>>  	intel_display_driver_remove_nogem(display);
> >> >> > >>>>  	intel_display_driver_remove_noirq(display);
> >> >> > >>>>  	intel_opregion_cleanup(display);
> >> >> > >>>> @@ -340,6 +341,8 @@ void xe_display_pm_suspend(struct xe_device *xe)
> >> >> > >>>>  
> >> >> > >>>>  	xe_display_flush_cleanup_work(xe);
> >> >> > >>>>  
> >> >> > >>>> +	intel_encoder_block_all_hpds(display);
> >> >> > >>>> +
> >> >> > >>>>  	intel_hpd_cancel_work(display);
> >> >> > >>>>  
> >> >> > >>>>  	if (has_display(xe)) {
> >> >> > >>>> @@ -369,6 +372,7 @@ void xe_display_pm_shutdown(struct xe_device *xe)
> >> >> > >>>>  	}
> >> >> > >>>>  
> >> >> > >>>>  	xe_display_flush_cleanup_work(xe);
> >> >> > >>>> +	intel_encoder_block_all_hpds(display);
> >> >> > >>>
> >> >> > >>> MST still needs HPD IRQs for side-band messaging, so the HPD IRQs must
> >> >> > >>> be blocked only after intel_dp_mst_suspend().
> >> >> > >>>
> >> >> > >>> Otherwise the patch looks ok to me, so with the above fixed and provided
> >> >> > >>> that Maarten is ok to disable all display IRQs only later:
> >> >> > >> 
> >> >> > >> Also probably good to identify the patch as both xe and i915 in the subject
> >> >> > >> drm/{i915,xe}/display:
> >> >> > >> 
> >> >> > >> and Maarten or Imre, any preference on which branch to go? any chance of
> >> >> > >> conflicting with any of work you might be doing in any side?
> >> >> > >> 
> >> >> > >> From my side I believe that any conflict might be easy to handle, so
> >> >> > >> 
> >> >> > >> Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> >> >> > >> 
> >> >> > >> from either side...
> >> >> > >> 
> >> >> > >>>
> >> >> > >>> Reviewed-by: Imre Deak <imre.deak@intel.com>
> >> >> > > We had a discussion on this approach, and it seems that completely disabling interrupts here like in i915 would fail too.
> >> >> > >
> >> >> > > Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> >> >> > >
> >> >> > > I don't mind either branch. As long as it applies. :-)
> >> >> > 
> >> >> > Please do not merge through *any* tree.
> >> >> > 
> >> >> > How come you all think it's okay to add this xe specific thing, and make
> >> >> > unification harder?
> >> >> 
> >> >> I lost any moral or rights to complain here since I couldn't move with my
> >> >> tasks of unification of the pm flow :(
> >> >> 
> >> >> double sorry!
> >> >> 
> >> >> > 
> >> >> > intel_encoder_block_all_hpds() is *way* too specific for a high level
> >> >> > function. Neither xe nor i915 should never call something like that
> >> >> > directly.
> >> >> 
> >> >> that's a valid point indeed. But I cannot see another way to fix the
> >> >> current issue right now without trying to move with the full unification
> >> >> faster. Do you?
> >> >
> >> > Imo, this should be fixed first in xe without affecting i915. Then a
> >> > related fix would be needed in i915, which disables all display IRQs too
> >> > early now, as in:
> >> >
> >> > https://github.com/ideak/linux/commit/0fbe02b20e062
> >> >
> >> > After that the xe and i915 system suspend/resume and shutdown sequences
> >> > could be unified mostly. Fwiw I put together that now on top of Dibin's
> >> > patch:
> >> >
> >> > https://github.com/ideak/linux/commits/suspend-shutdown-refactor
> >> 
> >> If that work is actually in progress and happening, then fine, let's go
> >> with this.
> >
> > If the above is acceptable, then this change would be also needed for
> > i915. If the patch is merged to xe trees, then not sure if/when it would
> > be merged back to i915. So maybe it would make more sense to merge it to
> > i915 trees instead, considering it has more display changes already.
> > Would you be ok with that?
> 
> Ack.

Agreed as well

> 
> >
> > --Imre
> >
> >> BR,
> >> Jani.
> >> 
> >> >
> >> >> > 
> >> >> > BR,
> >> >> > Jani.
> >> >> > 
> >> >> > 
> >> >> > -- 
> >> >> > Jani Nikula, Intel
> >> 
> >> -- 
> >> Jani Nikula, Intel
> 
> -- 
> Jani Nikula, Intel
