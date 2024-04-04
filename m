Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E9E389902F
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Apr 2024 23:25:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB743113557;
	Thu,  4 Apr 2024 21:25:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZUvN00u5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F4F8113557
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Apr 2024 21:25:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712265938; x=1743801938;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=MtRreMeLa92Yii8rq/pRiXkFO9LvR/bvPeN6d+lbNHQ=;
 b=ZUvN00u5uNtijApOiiuBpj1aZ/NuePLRIinsQyaU1d52ZIXkwVQFPiGJ
 bMnoEFYt+KT7Hl0IMAJPsLJplp9dPRms0w55fEET+dhXAyZFzua/DpDzy
 3iIcvIMFlFOz09c85W+hhF7NnzFupxl+PMCcyVeH6VQeGTMvSYWOxEhkS
 YicaOcixQvmhBabjQJ7H/UhjgSlGJhSb9PfAW0vC4THib1NJ130jSOR9f
 zObJmKL9dBSUgt+UcZA3UrLmPC0RNt8nhFH4r6cgcSY6LboqVjRbia/d6
 SipKUAUy2ImEVReIpXT3ZjC+gLIDZjihmXoVZRzOD493SJoy2BqKuhXhs A==;
X-CSE-ConnectionGUID: 9aZiHLjaT8qpoe1YNP6ojw==
X-CSE-MsgGUID: SlEsZRGIQa+xxmauQnSeOQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="25087322"
X-IronPort-AV: E=Sophos;i="6.07,180,1708416000"; d="scan'208";a="25087322"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 14:25:37 -0700
X-CSE-ConnectionGUID: RTWiEfvoQKuyv48Hbpp5og==
X-CSE-MsgGUID: qoG72SKOST6bEzftbef6aQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,180,1708416000"; d="scan'208";a="23623593"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Apr 2024 14:25:35 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 4 Apr 2024 14:25:35 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 4 Apr 2024 14:25:35 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 4 Apr 2024 14:25:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YRrZLzZkhlxwTT1higNVJoJZxpvslZVG2kb04mmS9niu9tlOEyGnmIh9mWx8UE6YmLr3I3vEYFttVKwpQzJgNW9yk/lrdgeDggTdRojQwnMLyitiibarI/xGOLJMU+N8LsMEcllHmjXYLvvfAD26alqF3d07Ipu5Ua8WM4q1eWLNfWDmXbCMJO87yriluJS8re1fRf5JBmDkSr1nfn0CvC1qNQN7YoKuR6FcwaDOJMbdt8pGl67KISOgx2CwxyUyMB1Z8aZhgRUoh6S31rZJHY4QwfXTCTL4HsCsF5PJm9AiPAYtLRyXWZ1JOsmeZJvRck98IYC7ves4TYk2eltq6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+K6Tcmm3lcoYuFWnEWWvQ5DLQcCaIwEhn/uAuTfTUTg=;
 b=LpH0NKSzDrGR5E7Q8TbaexOABUIUfzaTbyHKNzZE6T8dMXSbf9Favfq3g8vu3ZAdiJ2pZiu50rX0G5/qgh+YWs9h2dkSgr8z7FFN8q88Y+9r1YVgqCXQtaVTBj/illLOsH1APwlm1dTfvOb7rscmnvBWhtn8lDmQ26iZSa6JcNVcb6uYQo0n0NugZYLfyABFNLK8HRGKLrhsbTMFpeCNy5F3ueuO6hE53qIv5mxNEPSU8okzCWWudS0pnA6y037eRYEkePItEk3Rewzs5WvoUT9wAM6H4pyH7Nyx15TrMyY2S2OG5F7/lgyBlI5CvQnYV42lWhW5bs/QpcOuzUOz7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM4PR11MB6550.namprd11.prod.outlook.com (2603:10b6:8:b4::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Thu, 4 Apr
 2024 21:25:33 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189%4]) with mapi id 15.20.7452.019; Thu, 4 Apr 2024
 21:25:33 +0000
Date: Thu, 4 Apr 2024 17:25:29 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Imre Deak <imre.deak@intel.com>
CC: <stable@vger.kernel.org>, <intel-gfx@lists.freedesktop.org>, Jani Nikula
 <jani.nikula@intel.com>
Subject: Re: v6.8 stable backport request for drm/i915
Message-ID: <Zg8aye1ee7T4dNJD@intel.com>
References: <Zg6rIG0idN3NSTbP@ideak-desk.fi.intel.com>
 <Zg6ww+JomUKR//nh@ideak-desk.fi.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <Zg6ww+JomUKR//nh@ideak-desk.fi.intel.com>
X-ClientProxiedBy: MW4P222CA0018.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::23) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DM4PR11MB6550:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SZRy2JAg8aG593Iv10HKbLUq6aIlajvFBI3MdD3sudAazEr/6h+guHHdh81VW5DxlL5coM02IZIuYbxOgZxSBwzAsZB1T/oZiwqGMApCBUe4oks4ev0ujx1/1zl4xthbTj9/28MJXuj0e5ueXw1H/twoQyILVmeb6knRb7rG+GuOPMaGTSXBV+q7Dwq6nWLQnZ02ECX3bNYEc1gOSiEz/VzTxQhWF8sRqXEmqpJOR+TyCCmIJ/wKIso9+AsT+ypnhkeMd3WvIpPpC+LndEVaA4aT9p0Bav0qp5zdffLxKOGTzkA8NAfMFEM/MCgcevFCBkmSFiLTEkU9beZdR0bTrizj6v5YhRywTDWCexV0AmiBLpIsreOL78OW/sZPYVHffNZMe4sRbyaiajsyGIc+z8E6MNhQ62zh+2zRJQyzLCE3Clx1E5WxaNVOGi5nIXoRyhprLrVQwbk7+H9aY6tia1yYY5kU2abBqSgql3//Wjc+wvJa2TVWhluC3OIvXBapmCNQya8HGL3tbIO40xHDThIanTkXs7eSA7LEdkyqzcyIFqz97OBNTCxg33e1I2EeTLdpibS3nxSIa3rSE7dqyjj6yL2FHuZFaYhLy+yc/P4/lE17h6aL9C4HY1jrp4d3wY0v++OLxm1bp/1g2I5LvnmvxEoDovR9vTEue0uYF44=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FywY/VqnsPUGgYtY9RmdQcMsgofpQqamG65SeWLFjT+8PjF+htgPa9gB8WZE?=
 =?us-ascii?Q?BsKVWZ+t9L9NYW8jxdXSM0GsYQcsPjPyfPOvgJm8D19CpO0C9wOFNK+Xl2fR?=
 =?us-ascii?Q?D7jU9QlWU0D3ptaj7V71K6wPYqbzbutwH+SoXr313AZEHzmC8Vs17gSr9g/X?=
 =?us-ascii?Q?YnVrRZlpfWhHyNz40o2iTUP5rxt/hR5LlvPdISgxzCGzOE9kWOypgLz4bun+?=
 =?us-ascii?Q?GD/AEzfUN0zliHxdwnUooJCNYtx5yEJ8agrDxWCYlsXl8W4ZCaiT2bwUmU6f?=
 =?us-ascii?Q?UT879c99vDUWFmf5OWemilGDctWcY1KAZHOyUBDHRn7IFn2KmA4hntsEdVWC?=
 =?us-ascii?Q?1LeZny8ct1Ie6at0qkojGqa8MEkRAuQi7DTxLwuZjikcqyC4KKYtH+PDkCj0?=
 =?us-ascii?Q?v3TVg/ISxN+pQPjOS12779W3XJ2uP6pvKjAOVPgOrYT0EQXBJlx+E7IHfsMr?=
 =?us-ascii?Q?bOLWXo722WwPL88dtzHRW5KlrG6pWBDz8WAof3QGQ/FzWzGCKYL3asmq6Kx/?=
 =?us-ascii?Q?GAdnT4nHgVufi4Ux4eT+NAkYSo4JGHjt236b8DBpLcdW/6UoP77WHNjYaVz4?=
 =?us-ascii?Q?dBj/J9DCl8FDRHr5VTY8qo4A4/WfGKdqtisBsI67rUOQXgi5SbavsuMYmJy9?=
 =?us-ascii?Q?3IAodQ42MVmokkjiv2CvEB6uZegErP1pfBx68i4CPaEXGxR+Ii8C8vsqVqA5?=
 =?us-ascii?Q?/NIjd6Fg7Pm+pvKLuSFpr1r4wYzsjiQE+Sgncp75UBnotMGS1QYQKxPsiYWv?=
 =?us-ascii?Q?s469GZ0rljjp4TeByeUJS5fqFqtgcqunWgiTaWHA37GPMt+IYLP9NJHHH2Lo?=
 =?us-ascii?Q?zbQnMz0SC/CiZwL85LouACcCYgBGrf8T3wD8ICnhKLyn8beZj3OjS27k28KO?=
 =?us-ascii?Q?rkovG08+f2Nm4z0I49s2EH/W53b/TJL0OzkVg1OmmAWk0dLxmkRyLRF7seUX?=
 =?us-ascii?Q?y5JdoN+oP1txuK+9J5YJh1c4Cd/fzPMVVP5j9/4RjTjD8Y+vwsSrgdSgj+If?=
 =?us-ascii?Q?bzaeBPQ2nSwtoy5SO4owP3LeM6EO9DAd4YAypUWhyoGNEdvMuqbjA+Aqg0zY?=
 =?us-ascii?Q?ey/rKMAgsnmn1HcEwonjwoZKo7qGAmyuTnHZMPMNBpHj5D0XnNt5l5DipZGJ?=
 =?us-ascii?Q?rQwr/y3nGcwP8cXeiNywTdD+fYWMiqPpNSZsbZkA4aKYS9CItDlqHqqhe+pa?=
 =?us-ascii?Q?ouHDzpD/GgQr8cb+rBmmoYVZIkFxZif4yOZ7h849eWLi66DwIDg/UR3+EkPu?=
 =?us-ascii?Q?+34eQKIDVNacaEOxS4ak5r0ltmzwg1Au9KABHBzNdAWNeBi9KSkSCHyFw1ed?=
 =?us-ascii?Q?Bf6TK9FHUgiQz+MfUd8mgaZ/kA2KX2hBJRXdoi8+TN0xgb6IjBJmT24bGdy9?=
 =?us-ascii?Q?KqzFoCZe9abT08u1ShyuyO7OJ+DA/Wy17PwyD/7KLYlgQaVpr5Wyb9M7EGsO?=
 =?us-ascii?Q?PrX3sgcN9Ag6Ov2DK3u8UbKly9lpHyikeNfr1jAm5q9IEwMmql46BtJw2Kv1?=
 =?us-ascii?Q?GTi8NX7+6GlEjPt5QBTUhTZEarWQS/WlEvCEPonvbLVHQnd6saF1Tyzi8NKO?=
 =?us-ascii?Q?RSknobf5T4i5258JODdtFEGskqs5RPtK5aQ/Gf82PytokcORkk65zyP48UXs?=
 =?us-ascii?Q?+Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e953500-ee23-41c9-8a1d-08dc54edc2a3
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Apr 2024 21:25:33.0906 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: T+3EpJ14A3cfInpwdzRo1RRtNiuut9KfRqHZcCEl9shBYHJ58+eyGGNw2gowU703EI/FNvC1FqBnmvA0QBbVaA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6550
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

On Thu, Apr 04, 2024 at 04:53:07PM +0300, Imre Deak wrote:
> On Thu, Apr 04, 2024 at 04:29:04PM +0300, Imre Deak wrote:
> > Stable team, please backport the following upstream commit to 6.8:
> > 
> > commit 7a51a2aa2384 ("drm/i915/dp: Fix DSC state HW readout for SST connectors")
> 
> Just noticed that the above commit is not yet upstream, still only
> queued in drm-intel-next. I presumed patches will be cherry-picked from
> drm-intel-next to drm-intel-fixes based on the Fixes: tag, so I only
> pushed the above patch to drm-intel-next; maybe the cherry picking
> doesn't (always) happen automatically.

This patch was cherry-picked this week and sent with the drm-intel-fixes
pull request targeting v6.9-rc3

Since it has the proper 'Fixes:' tag, it will likely get propagated to
the stable branches 'automagically' in some near future.

Later if it doesn't, then we can send the backported patch to the
stable mailing list for inclusion.

> 
> > Thanks,
> > Imre
