Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E32A9C8F27
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2024 17:06:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE6DC10E81B;
	Thu, 14 Nov 2024 16:05:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IuLTAqUm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4100E10E81B;
 Thu, 14 Nov 2024 16:05:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731600352; x=1763136352;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=g/J8ekWc4UQWujciumVSSVkniqXFlJeSy0TMFziDKUY=;
 b=IuLTAqUm5/b8UK6ROGnz9nnSXr/wmzx7BJz+0MUzTrUGGA0FNypSh7qI
 qZNqm3vhA5rnqHaS6E+S75z8R9hqeIWkrWJxyS2MJXp7rlHGVM89VCkSD
 gT806nsEvgUcLcOscItXw1GCDIsWcXSRyUVKAaXZnPJ/qM1DVPrW6iaAy
 giFb3GYNb9jcREXNUvCOwN5AyIpvOb3rC8vaPbDQIevkloXxeDS/zcbIO
 fMCu2yOvBs96Xha0paXlx0XSRnCdGrd8566n1sUXC1LISRIKgWn/tjDaD
 2FFUTQypNSwUsg/AKUwBY+H+/sNsjwYyiFGH8ky9+Vee8tKqW57M1t78L Q==;
X-CSE-ConnectionGUID: hk1Qwsd8QqmBeW199lNUMw==
X-CSE-MsgGUID: 4b10wYerQlaHaC8crcmP+A==
X-IronPort-AV: E=McAfee;i="6700,10204,11256"; a="56951632"
X-IronPort-AV: E=Sophos;i="6.12,154,1728975600"; d="scan'208";a="56951632"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2024 08:05:52 -0800
X-CSE-ConnectionGUID: puIWjm+xQK2ljEZxT8jDMw==
X-CSE-MsgGUID: zJO/f8TlQmWQMrep3RxftA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,154,1728975600"; d="scan'208";a="88147039"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Nov 2024 08:05:51 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 14 Nov 2024 08:05:51 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 14 Nov 2024 08:05:51 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 14 Nov 2024 08:05:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L6Ennl04VbmggMH8Ov94PPnbfpZLFKWqHkzElZ2tjeBsk+hxpMKOYkoBf7BNJyFTeWiBlk1uGamKtcxHhzgxAY79g7CBHLNlrHu/TqfwD+yeHmv3ug/0Ic1/fFeoFavwxN9ppyAfJudln/1fNYUyFubGIhfRMVAdLYeQOZtRmDGUtgHBHoQodIuggZqmHM2qMeFL/q4i2+TECSvNLMiPajxoPoPKsNpxM4PQRf9W5alckPkhXkGvqrmWLEzHAwTsSBtgyhrLPNNnbgWd/U+jHtOdIzABlcEvhTLHji30CRfrvvqE5VmbtN/CQMq/LLNIbX8sGetkcGtkCDN1/NZKJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tCPGi21KXorzuAjtnAeb1DNVGpw3Ztam+F5f6o7KlAg=;
 b=S/TU+i7+bVXroCsLOYEHDCTs9lqY6y1uaZSEKj1hItLUaAtd8bFNdcVsWM8VqOgi/elhxvdPLrEz/B4/rk/iKNm1Ps67fDH3Pacx6NNhiUKLGfX25CdfQjzqx8t+ig2fs6Z/fccuApkXb++QFS2UieRZJQYVIhk0CSPZLWWN8SaM2ZH1PUtlfioAiC+PkdoWy/qoFRHj4/PMyVdF1uJA17RnzlYqBEd2+HtMMBtJxfTO1W5zx0KkXvjkTLBbrsaJpfvV1mvnnuu+Eu1CsQrXKMkH/vZpwsnBrrc4F0XU7u/J88dZTgdxav+9G4CUeP0KfwydjQroe1ByEPZuZprlGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by DS7PR11MB8855.namprd11.prod.outlook.com (2603:10b6:8:257::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.18; Thu, 14 Nov
 2024 16:05:45 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Thu, 14 Nov 2024
 16:05:45 +0000
Date: Thu, 14 Nov 2024 11:05:41 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 5/9] drm/xe/display: Use a single early init call for
 display
Message-ID: <ZzYf1WaNN__cHXDf@intel.com>
References: <20241107100140.292928-1-maarten.lankhorst@linux.intel.com>
 <20241107100140.292928-5-maarten.lankhorst@linux.intel.com>
 <ZzOg5vyCXepW_t9n@intel.com>
 <134aaf30-d86c-469c-aa05-157cb7db7063@lankhorst.se>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <134aaf30-d86c-469c-aa05-157cb7db7063@lankhorst.se>
X-ClientProxiedBy: MW4PR03CA0169.namprd03.prod.outlook.com
 (2603:10b6:303:8d::24) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|DS7PR11MB8855:EE_
X-MS-Office365-Filtering-Correlation-Id: a418edc5-fef5-4849-e8ff-08dd04c631df
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Y4HSFMvZRZGBdguf4hvR/GILA3tzGRSe0xDgeebgnvjqlgsegMRwe7SKjTbr?=
 =?us-ascii?Q?qqTCEbyMhkP/ZMMfok8iISWnpNNNarLZi7OrosWkyPtoqH6CJI2XnsDvtEIb?=
 =?us-ascii?Q?0+EbqgN/xCCOdsB0jsNxVqFp8tHqZtwfN49ft/UmW9eCTaFk8IW9KbS1J2/m?=
 =?us-ascii?Q?2p5TVrH+5c2gBIbnmL8mNVA/bKSoK7jpspuGN7nxbDX+kw36RHtj5gAfg78e?=
 =?us-ascii?Q?kVRk/91rpnkfnx/UTvyrMqGy8Z9IApZLYhJazTcqxowhEAD392zN4RK4++rY?=
 =?us-ascii?Q?IwkEN3+hdMhkYXYP2Pg13zh6k4YPRxpYn1fMTuHYWBx++9FUNfFA45aOwOQW?=
 =?us-ascii?Q?nPyeTddVdpyZ+JsntCNOXCgP8xCipkvQ1sxbaMZEHtaVbd1fUiBkVRA2k93W?=
 =?us-ascii?Q?z712Y3k3aCCvGNryIDZ7AZJpXQ80gLQ79h/wW9uyahojhlG42l6SHRzDvq8t?=
 =?us-ascii?Q?X1JlxfxINDlIBBaP7T5H3VqGeseRxQL4rZ5TkrRdvAePFSpDDL5bnLaP07WF?=
 =?us-ascii?Q?fDwZB7bdE65DB9einhZvTwQXYlO0vYPkkUXqqyXu+En/9Uwtmu70zfzIlghF?=
 =?us-ascii?Q?CdHe3HrLeCfhFXnQAt4YRDNmCZlIHXK2RdnUUNi7eekJfOG/K9ApN1KofRMB?=
 =?us-ascii?Q?EdoMAQYoESjQlXnDScFjtMt053ixhEA1ooGHd5W+Kv993Nrd3ky6dJ9nbQ1V?=
 =?us-ascii?Q?NBSxD8KJ5sVFqMJCfzJXXX00tjbgMgw6ehKcs2SGoTAP2dS+o7Z2IsnQi9v7?=
 =?us-ascii?Q?9pEtv9Wqqxi7UdZH/EvqEfvrQULnxC5Zw6P+l9682TAkPn/4dUym4rrqc1W2?=
 =?us-ascii?Q?hErZn6tAWRHO1hoY7HOWQ76kz+bQKsyOMs8XhucdS5JBxZf+1YLO8ZuMAur6?=
 =?us-ascii?Q?pB1oHBnTmEIbCIzPHGnGoCtgKly0v6fT9k86UCINKeJTrG/TAaKFplF8E6uZ?=
 =?us-ascii?Q?5AEBFa+ug2BUGEKY1GRdYfRC5UB39JJB8q/VllxWixfPMPBM+mzQLhCXn7Sr?=
 =?us-ascii?Q?q061C0eUbEIlKfpyArBp93Kve17aLZln8MEIOZKnh3++sX3qvuVe7PDDIjI8?=
 =?us-ascii?Q?6FGhlTgbwNc3a3KOJGX3SPM5WRQooCeDR6hXVX6s5W98ZbJN8gBeIH56z0Fg?=
 =?us-ascii?Q?j5YC7MrixOqJhVd4jRmVlTUf4BZ6X3Pk0W4CxaUZFxv6s3c4/NL0iNixdnzH?=
 =?us-ascii?Q?Mq9T26Qsw/j4QnAb4cfy1BkfSWiDWFNB08FXkQiM4xqcbIg+8lYBG7fZJPG3?=
 =?us-ascii?Q?WLkfEskBGoHklv2fF9rY?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?aL+rLCZuTEVd2qiXt6ehx7wYNLiPggC9BGLBaESTqT9fIIUg1ERwW/04ZuKs?=
 =?us-ascii?Q?fP7j4mZgWN7+1BB/QZ2vIKIAyDv/RPdxdJnK+KVrIAVuZSSijJDu3Rk5v02j?=
 =?us-ascii?Q?Vy7DBYisbrnlq7Qo/EFIvJFf83E1ifFcpGv1HYT0VEnb4VgwPbz+8RSDDDjm?=
 =?us-ascii?Q?oPVSBgFx7MJm4eDUmicLoGrQJywR9R//NNNhGCALbhZYUUu7sR96lGKDzGt8?=
 =?us-ascii?Q?k8gOhqd8SVNihZywQ1c6bU2x6+JQ6zoDgOLBvXTLJK95Kfjd9M5e3mJLKXen?=
 =?us-ascii?Q?Utxt0BiDVCQJKMz4TKmFcErYYZGIb52xv7kxBoVAlRwFvF2eVv4zolvP8uu8?=
 =?us-ascii?Q?H9w8t2gHrkW3dI47jZaeID66kfZmkil5ZAFHKniPlPTp6XWsqsqPN6YeGu1T?=
 =?us-ascii?Q?ERueZKHtg4LCZGrr3NyZQlsYfpVmSFpwoiGgxs6V8AQH5ehLUjiIQg75PvbK?=
 =?us-ascii?Q?+GZh6zMdYkSyetvNDmmnzVFrpZp1b1GoJkjQtWHg2mywVj370IElrfYNfH7h?=
 =?us-ascii?Q?HDHxrNAhzKhrfxOgW8gC8I3Mp2V1Btxd+G0DX96uIDtTZyMpo/5KVWiYD80a?=
 =?us-ascii?Q?pxYEEJa6MHgNdrIZSImgdh782hqsM5wIJioUF0eD6epfwDn+m9M70VyhXpeP?=
 =?us-ascii?Q?gBlraYl/RXYCWyiraD3qUtwAgE3gHCNJov9HmrvP/lwZi4kyPJo9q+3Epm5A?=
 =?us-ascii?Q?e+NqsuDQH4QrW7QaV5dDqo/OU1MX7pTHGwF0GJJUwVyJ/rgozFC3vPl32mG8?=
 =?us-ascii?Q?cYKf4DtRbTV3EUrBzyRV+r/2ENBxsqhwKrNDd7BDtZI4w6DABfAkFtmD7eJW?=
 =?us-ascii?Q?TtP1ZmG/sOnCRyYL7dGM0xRquZDWLeeRpnrLKZMhjbmIpGB9xGi8/5h4bgVL?=
 =?us-ascii?Q?jZz5a2k24pn9qSxjy5YcabnH1qGwhM+sLozW+C04EPeqQZLGw+5DEJkyh5Z0?=
 =?us-ascii?Q?tXpRIW73dQXZNLcBzjJgwsKw3IAUjhO5Z+Yj1CNtwcWBGCSHlVaF5Li9/z1N?=
 =?us-ascii?Q?LjzMNDCSJaqvQ5TsZk0VQ8PblYNdIOE54y2MXQqYR/Sjgn//FkGG4pR4z79C?=
 =?us-ascii?Q?YmzzqpfKPqor3xXoob2XRju5YBjewiJ2px0liiHhVryeFvEC1ZZtyHYnl3iD?=
 =?us-ascii?Q?9VdtTt48h1Ku0ns0mng/hGclM7M/rkefxgKYbNkkU0pJLy2D3EkEoXvjPuro?=
 =?us-ascii?Q?WhGTMOmI4sF0PHkzlSor9Kzu0JX8FwDayo72xu1h/h1dEU5u2m6/7174foht?=
 =?us-ascii?Q?LIf4/bzXXzLbzG6qsJiaWOHOn/6Qsgw0WBBUze2oSZpqOeQqy6ZgebI9HIGe?=
 =?us-ascii?Q?oeU1TlutHF/7PwC9So7RjMUizXzk9BuWEb9HLIDAR4oVUpbUuQcTa2q1B++j?=
 =?us-ascii?Q?SHS/RqEnjG0qXYSl8AYqe9X1dnG4w0JfISjg9FoWaugzSYoP93KVml87vysv?=
 =?us-ascii?Q?GE80wSl4SUfzJRVJuCySNf/vMdeoA2FxvHGYWlauPiE8V9RC2Fisi50g9Ns1?=
 =?us-ascii?Q?1uVNjjrsdUm8gZoL1TmI93uXdDQ4AK92FAdzqfgVy/MKkRGC6uTf9PkDvOkF?=
 =?us-ascii?Q?q4BKtymXjdH/o8hCpVQv3EgONo/0MROKd9Okn7ntkOvc3E22ZOqo0F+y2KPA?=
 =?us-ascii?Q?GQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a418edc5-fef5-4849-e8ff-08dd04c631df
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2024 16:05:45.1697 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N9Yfnfc42ko3Sgza2h9FhUgAHiCZDcpr9uCzBFEEDC80U3nZFxsiLeSHG/+kM2WhDcQqQUH5WvTG0yUtgO1YOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB8855
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

On Wed, Nov 13, 2024 at 11:30:36AM +0100, Maarten Lankhorst wrote:
> Hey,
> 
> Den 2024-11-12 kl. 19:39, skrev Rodrigo Vivi:
> > On Thu, Nov 07, 2024 at 11:01:36AM +0100, Maarten Lankhorst wrote:
> > > Instead of 3 different calls, it should be safe to unify to a single
> > > call now. This makes the init sequence cleaner, and display less
> > > tangled.
> > > 
> > > Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > Link: https://patchwork.freedesktop.org/patch/msgid/20241105121857.17389-5-maarten.lankhorst@linux.intel.com
> > > Signed-off-by: Maarten Lankhorst,,, <dev@lankhorst.se>
> > > ---
> > >   drivers/gpu/drm/xe/display/xe_display.c | 72 +++++++------------------
> > >   drivers/gpu/drm/xe/display/xe_display.h |  8 +--
> > >   drivers/gpu/drm/xe/xe_device.c          | 10 +---
> > >   3 files changed, 23 insertions(+), 67 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> > > index b5502f335f531..a9ce4f561e7aa 100644
> > > --- a/drivers/gpu/drm/xe/display/xe_display.c
> > > +++ b/drivers/gpu/drm/xe/display/xe_display.c
> > 
> > we should make every function in this file only a wrap to the i915
> > side with the 	if (!xe->info.probe_display) being the only thing
> > extra in here... so we consolidate the display side in a way
> > that we could later really split the display to a separate driver.
> > 
> > I have the feeling that this patch takes display to the other direction...
> > 
> It should not matter much. I believe i915 had more split because of display
> being more connected to hardware. In Xe the display is from the start a
> separate driver or module on the chip , so we can do the different init
> calls in one go, as there are no interrupts
> calling into the display driver yet.
> 
> So in Xe we can do a 2-stage init of display, xe_display_init_early which
> initialises everything required before enabling interrupts, completed with
> the takeover of the initial FB, and xe_display_init() for the normal init
> sequence that has to run afterwards.
> 
> Because of memirq's performing allocations by design, we really have to run
> the FB handover code without interrupts anyway.
> 
> I believe the same thing could be done on i915 on BDW+, but might be harder
> on legacy platforms.

Okay... it shouldn't matter much indeed. Fix your signed off by and
feel free to use
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


> 
> Cheers,
> ~Maarten
