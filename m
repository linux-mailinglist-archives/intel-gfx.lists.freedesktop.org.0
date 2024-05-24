Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9913C8CE865
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2024 18:00:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B49F10F4D3;
	Fri, 24 May 2024 16:00:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M31ooY5J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F2AC10F4D3
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2024 16:00:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716566436; x=1748102436;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=CF+9on/UokgMcnL5gSoIH1LGNAPUfY/4T1A9WeEMuhs=;
 b=M31ooY5Ju18Woaw7IvIUwNj06HE1bUHCELGO+UJ99yBVH7oiCeQy6Dqv
 vnUHWzRd3f+YwATNE3i+w+K8MYuaruxOhtb6S9tIjNCBPhejjTmH+wwH5
 nxoVk+rJMa5fKKBdSj3p9MaU4QwLBTP3139yax6lUMuCuR2iEbw5ymE0P
 cVVU1lv6+wHZWs4GJdo3eU359zb6K+0qTO81KDQKztbaGjKqeLTg5kQfg
 ZKVF8YI5y4jBdhi6XVF6nu/wfjAM9BWAZhPBQQZ912gyH6tv++YQMSEEW
 M+W1EzZQLqllAhhKtWOE/dcfGMQ6E53QIx5U+A7ce2fGLcZe4ZLp0lJcO g==;
X-CSE-ConnectionGUID: 9GNEgW1rS3eYb107HlMmNg==
X-CSE-MsgGUID: DiAyaZDFTti33ZyxT+VR9Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11082"; a="13070202"
X-IronPort-AV: E=Sophos;i="6.08,185,1712646000"; d="scan'208";a="13070202"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2024 09:00:35 -0700
X-CSE-ConnectionGUID: nTKwcTDZQ5+jx1c9vKPj9w==
X-CSE-MsgGUID: KLP7Bt5lRceaXnopY6SMNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,185,1712646000"; d="scan'208";a="38652128"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 May 2024 09:00:33 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 24 May 2024 09:00:33 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 24 May 2024 09:00:33 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 24 May 2024 09:00:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TXHW6BWn4RlBJlZ8qBw2lkmID9LbmEe3QYMP4NtPW4h+CmjfQQz8JlubCPIeTzecmqATeNeX2O2tw+NH5vCq3G1wZorq8EODCT40ipJoZdGozqe7QMa5dOd1GN1sGabzglzj/mNQRu9NcIgTNRBEOKpJULQxxEJyPB73XAuOCAdagLRsT/JeeO6VAKSm43H0/BHPhVz4MVgmQEgBmuLqO/8rRj1AFfVfTILG+pna1MON0cvXYcrqr4BNU00rNJ+p4lMY9BrSpPtJ44Mk2Ph2g6b/rsb5bzPi2a2A5j2NoBxjgjR3FjnH8XguQ23tecKMp2I0ZIzqvt5b1+QPw9vtRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AscEyOuqTw9sn+eICtU38mU5MaMDvFkvNiQH7xwH1+c=;
 b=Z1L0YxWy53FZRO4Z6DcrFQucfIX2WXUtM+WrLkHrBkOM/YhCWachdL0PlG2eAlVZgb8TmV7KscCCyX98vL49ddFGJVrnSCnO/1j2pJg629DDR8TcBV1Ql/8j00afSxyWEUWuGHHlCuFQW7luwXUoqSQpdULyLFcgIMV6tIgXDloVWT8RkpRt8N6uZCX9jE5FTZNtAVVk8JG66M2jvvjM2zoOUtfOLYuq3L0yIqbLptyV2qEL4ay0XB3Y+HK45NkWhtjn1U8CJKj8JgLQlfu6a2XmuclaViS15QPhYlzv9YEwwJUyu6sPcR9CKSTE9cVSw61aJlDggdKYNbQL5nDv/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DS7PR11MB6039.namprd11.prod.outlook.com (2603:10b6:8:76::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7611.26; Fri, 24 May 2024 16:00:31 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.7611.016; Fri, 24 May 2024
 16:00:31 +0000
Date: Fri, 24 May 2024 09:00:29 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
CC: "Chen, Angus" <angus.chen@intel.com>, <tejas.upadhyay@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2] drm/i915/mtl: Update workaround 14018778641
Message-ID: <20240524160029.GC4990@mdroper-desk1.amr.corp.intel.com>
References: <SJ1PR11MB6204A1D3BB33FFFBB6BF32E581E52@SJ1PR11MB6204.namprd11.prod.outlook.com>
 <20240513141917.74208-1-angus.chen@intel.com>
 <Zk_Dvl0pA5bU2T6o@ashyti-mobl2.lan>
 <20240523232441.GG5383@mdroper-desk1.amr.corp.intel.com>
 <ZlB5cUduM_Hw2Spi@ashyti-mobl2.lan>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ZlB5cUduM_Hw2Spi@ashyti-mobl2.lan>
X-ClientProxiedBy: BY5PR13CA0005.namprd13.prod.outlook.com
 (2603:10b6:a03:180::18) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DS7PR11MB6039:EE_
X-MS-Office365-Filtering-Correlation-Id: f33d1fc2-549a-46a3-c082-08dc7c0aa38a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Q0YxwBLYu9MyKmNnAlwtDT9oz2d1AHtjwb+0fmbMtkxyK5Jwy/RNikblS9AI?=
 =?us-ascii?Q?qIpDhLzqJDmnVZQ9yZMVQ9pwf9VnOwa/ROwbXglONkTC4DI+VWhYJ9o2aBRh?=
 =?us-ascii?Q?swK8LBVGDhf56QTDyjlbhQoKoq/i5C0vRm02nuAn1uHYoxDob1YjORQFJKnd?=
 =?us-ascii?Q?DWu0RAkXUXCSYi+Hkhlsi47LxZQEAKHkDKCu1B2Q7yIsZv3UJ9BFaCFh1qGF?=
 =?us-ascii?Q?QD3e76slSlPNsL84mO+4E8vSgLzKm55m0Si8V29gYhBrhxlx1Y39FPuqmE0C?=
 =?us-ascii?Q?A9T3UsI1wrJWXjJLpVFOt/v4Dsh8HWvYrE8rJe3MJoYHXO6CR9T+/6HykvcT?=
 =?us-ascii?Q?oxtnyq63T4S3rZjZiyMX7YIGFSNNSmLQNMpWCriQviPRR3ou5nWLLSy52ho1?=
 =?us-ascii?Q?ZmkOMle+zyP+efFZ4bJNh5WfZhvoR6sifLVHdw37D2oM4TFt/7dy69HreeoW?=
 =?us-ascii?Q?FkNB22fO2DsmFwtLqx1m8VLZK/vUN7CgcdwgOcbb4sgts5HRxxYopt7FxapS?=
 =?us-ascii?Q?rg4htPnhXSEpBYjl+nNO7K2lc0ZWD33apfjvQjHY3SRe/K7Wd9iKLE+SPiN4?=
 =?us-ascii?Q?3yqjH0CDtzh0eMBDjvJ6WbThT50+CGdWtQga9ZYbSQxnlSiea5KyXlfbt/T5?=
 =?us-ascii?Q?LujU4NqOydkhevMBjRPOYPPaMAl6gEVjghgikyhjiK1WWH69uTkLxXaLQaKC?=
 =?us-ascii?Q?Dr51jQoKR/gv684a4ZEPFmkX9OX094oBp9OJkNhkQrnpZPunTihdnDQppnSb?=
 =?us-ascii?Q?R8EGq9/zFwZCcm6QmfPoO/u+B9PCYH7/veGC4knvapAqiOLWhb2hdBxrYvMw?=
 =?us-ascii?Q?tUdrWpbN6HzypvjEVeG65vQtZWfbqzpb0dMLbu3TaSvuTfGy3IW2gZ8kE1JM?=
 =?us-ascii?Q?y7EVNMzs/ZmgOKLvFeQ6zvwzZsa41Zac6k/bNzMHI34ufIX5lBU7ZcO58vyd?=
 =?us-ascii?Q?nhs7P4hQ0NU9XwA/RJAEfH71JuuObHqezPZmrzongl/c1V/RZsrqjQLgePNw?=
 =?us-ascii?Q?Mc/dpgykvqVvex4x734+fxkfpcqDT9iF4xWhQ8MB3oliiHyt0IZ5hBPoArfa?=
 =?us-ascii?Q?vUOuqqDVsh8EX6X3mFNifEtbb69MGpsRvW8jCMs93RdSLzlNxiHi5GhAZvHX?=
 =?us-ascii?Q?beM4hFcwWzGA7XjikuX/4F6zNj0dGPV6sEP7xS62x/AWRUkUGDEjuchqMQmO?=
 =?us-ascii?Q?nAl0WCmB+Vfx8fZyW/AFJRoYGbZOYNSZHG9qHccJwTC/TUZ7sht9GAssWXP3?=
 =?us-ascii?Q?KGx6NfjNZCKvTQm6662JMs7iAFnJQ0mVVmA6cjIzdQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qgNeQ8JVRguqtgkiPiBFxZTpBogff5c4E71KGnP6rySNTis7AaV3TlOgZOQb?=
 =?us-ascii?Q?SdyOmEC0wNgnCScmyvFpGxeBb+TqPs977Ff0ZHOHhxzZj3GPo/i0o/IxdW5G?=
 =?us-ascii?Q?wt5T7sjBwE6Sp5sBHI5lepSZrup8dRpIs7RoB2zlnbs52znOis3gyPvOwlAt?=
 =?us-ascii?Q?MRZu42ofpi7HMUyQDD3THfSLmZ5XWJ2VIJ+J6vkNXROocZBbVM2p3Tgm052h?=
 =?us-ascii?Q?iYk04NesY4U/SCVzrUOT9PrxVgllLm5l1V9vdU3IkFzoHgy0y4aMdNSVVBAw?=
 =?us-ascii?Q?JHX2kZbCVK0giUsJOSVNaqFN+1CiMZBRdfAUb2X6RksbQ0hPDrcT0j+ExSrD?=
 =?us-ascii?Q?j5ArACfz1gKhQcEUWvauYeTZtgm3o0147fTHr8iRRfbfUZDqIUp5rFn53orL?=
 =?us-ascii?Q?o8CM69raeK2a+wcpSSweFf9lQ13c3XXRljpUf/R+EeBJV2jmqkzyKa9vr1oz?=
 =?us-ascii?Q?AJGmiE+IqCWJLaAI17yQpK1DcGdjEl6p4rrOeXDl3ZZXcYflt7w2pYxljenx?=
 =?us-ascii?Q?BHMUONRF/BjsxXnogQcEZ0bPxRe+kAQGExRuzLhNyO2p7aD4JDkprF5EbHz1?=
 =?us-ascii?Q?i4z1rN2Ubq/d4TZfruVpDQ6Y9V5EDdzsu3M1mkbzgwwGwu4DkrpQod7NMgjG?=
 =?us-ascii?Q?Z0YgxftOs5yDujIfqAw++TGl+wb3VTmQMd1Dbl3TN8sB6VwvY69usA4shzfH?=
 =?us-ascii?Q?rW3vrvbYE7+2kFcSXFr03c5iwr2JV9V5vz+7oXaoBJ64IKaloU30K5Y9S0QS?=
 =?us-ascii?Q?dn/l2JyGTvl59utgRElRRKT4z/zdgji5Z3ADfLO0jhq7Awe/VwMZkIGE72x5?=
 =?us-ascii?Q?8X4C5gPPC9+GS7tRadMhUlSBa2KcnzXd+70OxoOPuUIeVPGIk507lrezEor3?=
 =?us-ascii?Q?QR0DbeqkL0zuEtL7LIbZruKzxy7Z0xGLYbVB1Y9gkg2Y8YV4YjduW1QCaxUQ?=
 =?us-ascii?Q?EZqz5pdz1OFlgnflaCyVPgIKSb2WH3s9sq6akUbhPHXeMsGWBkuH41MpC9ZY?=
 =?us-ascii?Q?nYIXQ1ldXkopZBBvng4HZ16vvMnw20nL9s/gVMKkGAyYUFOtYKvTXQRrrqFD?=
 =?us-ascii?Q?JhoewhECy19scTX95jbmAuAZWrYk/A3IHNAeSIqzTp04IJ8vNOYxo/q+mM1E?=
 =?us-ascii?Q?u8LV5Sc1VocvHE2e7A5AmGI7XhmHVH1nRxJqOcw4aJDA5/JZPIaKaevSOhVV?=
 =?us-ascii?Q?alWun4i5xtIYk98BFlT764gp4bH4+aXmq8H/GlDoLViGvE1cLqxj46ikXyep?=
 =?us-ascii?Q?hZbitMUsl+gsz9fDPcFxJsS83yrDcdIkxiMSw2qFg8i8JilriqIDF6qXDIi6?=
 =?us-ascii?Q?XYFO+maksox14fDqkCgNh0KF7syoahcFpQegFX6ZSFts/r1yiyeIa2pxXifG?=
 =?us-ascii?Q?dJCFbJg92atMe+MUPV4NzIO4S7Lez8vNI+JekhypLSps6LsJUU80IjbVu0Hq?=
 =?us-ascii?Q?PqIJAHQh6l1CIYLdVGWibCXL6seG709OT1Zd+xyI9GLPgLqGY7gNNqlqoh13?=
 =?us-ascii?Q?fkZ13rChkpIpR2Rap+Dt5NTIc4yXZcIv6X3d1BXcP2MSso/3IA0G7EVJNEYe?=
 =?us-ascii?Q?tK+j2e1b9jb3wZFMsPyt4Uk/chrqtuFGX68O7m38j8R15lilIhhOOWsgbhTf?=
 =?us-ascii?Q?ZQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f33d1fc2-549a-46a3-c082-08dc7c0aa38a
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 May 2024 16:00:31.7337 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UZiOJxmrBc2HKJLzjKHtta7SpHHR1beLpRdqZhsx1mzx/KhNSwFN093CyeN8p2vtj61YczAQO33QSdzMLX0cQ9vJj7i/nujKquEuM/RguO8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6039
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

On Fri, May 24, 2024 at 01:26:41PM +0200, Andi Shyti wrote:
> Hi,
> 
> > > On Mon, May 13, 2024 at 02:19:17PM +0000, Chen, Angus wrote:
> > > > The WA should be extended to cover VDBOX engine. We found that
> > > > 28-channels 1080p VP9 encoding may hit this issue.
> > > > 
> > > > Signed-off-by: Chen, Angus <angus.chen@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
> > > >  1 file changed, 3 insertions(+)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > > index d1ab560fcdfc..da0a481a375e 100644
> > > > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > > @@ -1586,6 +1586,9 @@ xelpmp_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
> > > >  	 */
> > > >  	wa_write_or(wal, XELPMP_GSC_MOD_CTRL, FORCE_MISS_FTLB);
> > > >  
> > > > +	/* Wa_14018778641 */
> > 
> > I realize that the comment farther up in the code is wrong, but there's
> > no such workaround as "Wa_14018778641."  14018778641 is just an internal
> > database ID that isn't meaningful for tracking workarounds in code.
> > Workarounds are always identified by their "lineage" number, which is
> > the number that will identify the workaround in a consistent manner
> > across multiple platforms.  In this case it sounds like the expected
> > workaround number was actually Wa_14018575942.
> 
> Indeed... should this be updated accordingly?

Yeah, it would definitely be good to update this since it's caused
confusion multiple times in the past as well.

> 
> > > > +	wa_write_or(wal, XELPMP_VDBX_MOD_CTRL, FORCE_MISS_FTLB);
> > > 
> > > Wa_14018778641 says that we need to disable the FTLB for Compute,
> > > Render, GSC, VDBox and VEBox engines, but here we are doing it
> > > only for GSC and VDBox, why?
> > 
> > Wa_14018575942 (which is a follow-up to an older Wa_18018781329), was
> > originally supposed to apply to all engines.  But after some
> > investigation, the hardware teams decided that it was _probably_ only
> > needed on the CCS engines so they suggested dropping the workaround from
> > other engine types to reclaim performance unless we started seeing
> > functional issues when doing so.  At some point someone did report some
> > functional issues with the RCS engine, so the workaround got restored
> > there.  Based on this patch, it sounds like the media team is now
> > reporting that they also see functional failures on the VD engines
> > without the workaround, so it also needs to be restored there now.
> 
> But I don't see it documented. Wa_14018575942 only speaks about
> the GSC_MOD_CTL. We need it documented, otherwise we need a note
> in the comment explaining why this workaround is needed here, as
> well.

Documented in the workaround database you mean?  The description there
seems pretty clear to me --- they indicate that although the hardware
issue theoretically existed on all engines, their belief was that only
the CCS engines could generate the kind of memory traffic necessary to
cause problems, so the initial suggestion was to implement it only on
the CCS engine.  However the workaround also provides the details for
how to implement it on all the other engine types if necessary in case
real-world usage uncovers corner cases that wind up needing it.

Maybe we should try to get them to update the language a bit now that we
have reports that at least RCS and VCS do indeed seem to need the
workaround in real-world usage.


Matt

> 
> Otherwise, as it happened in other cases, someone might open this
> workaround, think it's wrong and revert this patch.
> 
> Angus, can you please explain the reason why this workaround is
> needed here and put it in a comment?
> 
> > > Besides, in MTL we have the media GT where the MOD_CTRL family
> > > has address 0x38cf34. Should this be checked and included, as
> > > well?
> > 
> > The gt pointer passed into xelpmp_gt_workarounds_init() is always the
> > media GT.  And the GSI offset of 0x380000 gets added into the register
> > offset automatically so you don't need to worry about doing so manually.
> 
> Correct, thanks!
> 
> Andi

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
