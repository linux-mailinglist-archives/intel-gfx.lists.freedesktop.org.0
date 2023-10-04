Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DEC57B8399
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 17:30:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C66B710E171;
	Wed,  4 Oct 2023 15:30:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2D2510E171
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 15:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696433411; x=1727969411;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=nVJ/7qMKSHnJgsnSAc3QkNxSNN6+nbbdHD0eHrUer6Y=;
 b=oGb7UomxV7MDcDWI1o9oyMD3spq4oxohnr2fSdZmWLk0hYJCDkElq6Eo
 BkKyG9chKnRpscDoz/iNrD6f2nGVklQnI8NiSuOJW447ZEhCqSk41Qpkt
 9Y7ZsqHJxP/eyS3MAPAQ6QjjSB4na0BMDYcEy5Qmhx9IPUXldOIS/Kdic
 fZcANVug8/Cscj9LAKI231+VPty3B6oW1IZGhyJk5GyqXBtgjpoQOVpgU
 thKnMq3GH+mUZbNjJlUoe9pW2UbjWTWGDySyr4mOLb3ZVouBoj7QYnuR3
 0mLldsd40gWnC5F/lLy0239DI00FsWFe5Otf/X2dpO60rVjnE3MlXt+mH A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="469472273"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="469472273"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 08:30:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="894988910"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="894988910"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Oct 2023 08:28:44 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 4 Oct 2023 08:30:10 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 4 Oct 2023 08:30:10 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 4 Oct 2023 08:30:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CqTxvawkoO1OeW9yENKkZOwKYYTkQ40MOtUHIxEuR23hYvqfRvgYo8EyKO0NJrSF5n54RQ3N4jnsj7870gmhbBgoddNgBhvJpKHrRfVKZ0K3uI+9andb389AVWXS+g/yYcSlUw7Y4Agl1AafweeqrIxZ62rm7bZ3sVCidefzRzVajJN1ZWbo277xdeOF86cyUKU4UR3MpBqfRMFVPRawe0nh8HafDKM8r9qGPLEk6UEjaXOT0MJ6u7MzWS9XaVXdsPUUImNAA0ist1vEy7TFn4TuXV1PBjs8XsvBAlBL//jr2C5TY3cA7XrN8TrJxk2E5ovwpal4SPbnDVlAI8kt3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QqXwIRnhoVDG+2o6hvBPW4tHtgN01xnaKxw6NeyjUNI=;
 b=fX0aXoSEikHoPwS41IOYz5PUFhz39iDiGOe4FzYrBQJ0kAXBPCkB8V2DmU0DsLWVqboWVt2Ay9MK1HF2KxrdTNbW6r0DLUWiVjDhfnSif84+xX7acqhp7Bqdh9MMeZ1buqv+ct5GynqB/tcNJBEClJ2lsPCQBGlh83CQv+BcekvAN31RwmEQlUwdJxlqED4hYZVjbQW27iosDOLOGshMMhJUzZO5/xAHrGKfhK1Tm7S25fXjJDQuiNT7RR4Fkfwk9SJzkJSpDKN2fwJhizC5fMGQVK/CNwOLiE46F0Pv3n4o8EbZvivRL/OENeoKqZ7RpkWuXFst2pWTvabokrAoZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DM6PR11MB4595.namprd11.prod.outlook.com (2603:10b6:5:2ac::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6838.35; Wed, 4 Oct 2023 15:30:05 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::14ea:3a78:f950:d6d0]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::14ea:3a78:f950:d6d0%7]) with mapi id 15.20.6838.024; Wed, 4 Oct 2023
 15:30:05 +0000
Date: Wed, 4 Oct 2023 08:30:00 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20231004153000.GP2706891@mdroper-desk1.amr.corp.intel.com>
References: <20231003210840.1173401-1-jonathan.cavitt@intel.com>
 <985f0a7d-eb26-7739-e158-29b9fc07ff91@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <985f0a7d-eb26-7739-e158-29b9fc07ff91@linux.intel.com>
X-ClientProxiedBy: BYAPR02CA0059.namprd02.prod.outlook.com
 (2603:10b6:a03:54::36) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DM6PR11MB4595:EE_
X-MS-Office365-Filtering-Correlation-Id: 1cde615e-7fe1-48bf-8c9b-08dbc4eec87f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TZuRwQHcHioccfzSCIu/3hwx9fIzqvOsW5BGBOsupHeve8TJf/CJj0JRkdK1pmY0E8ISSDtbBbBXQDfc+Vp6LYFo+SFVgHO9L9C1o4DLGD28VxNLUNdGN3c2iEcGI3Q3wL3Ad7rjsV0iophM5q9QdTbJ02+HYTP4KeUEOV3sEZIz0r6QbPYAKOPzL4C9EbGuYVZI10P4CbHd1u/DQZMglQ6oCe1MFUvAv9u8f6tKnMwQOFd+o0M0NQJcim6M6Xb4h3+ey358e+AA75KZyclmonaEV1nU7pP1wiZ4hNEDFubbvSeK8S+rpgqeUEabMnoBwVImkhgVRBbKB6Qt2gCHIZkJV+cnwyLs8q+4UGYXsU2RxY67o0epzt4x6yng6vhoBtYz+lxmW8zNIGqq8pk9rK6LZVqBi83trepA7qsek1eNLExZt3UFMm0dhmALWApBHTFQdFGf0NawvoW3s95bPrPNmgxTC57MTJpNNYth4EbEG6O3irvH9VM93Jikzgs+8ChOJ1iLBA9pfYzY1ocLmiZJdwXyCZs4bLD2tKUtCyZtLYweGxwzZPFOMDrxxRRN
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(396003)(346002)(136003)(39860400002)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(6506007)(6666004)(53546011)(478600001)(6486002)(6512007)(83380400001)(26005)(1076003)(41300700001)(66946007)(6916009)(66476007)(66556008)(5660300002)(8936002)(4326008)(316002)(8676002)(33656002)(2906002)(86362001)(38100700002)(82960400001)(66899024);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fH6X8PE69v/Zh38NtzFyp0qcMgbOlj2WMy0vVD/crFFQWhrYZYkqtd8r/ttd?=
 =?us-ascii?Q?v0TCbHIw7G0ubwwAmm+ujAzu7lI8SCfPpeufz8nDHv7EpzHrY62uFJ73J+0X?=
 =?us-ascii?Q?mbuGO+xiqjRlKKsZwXh/Qx8SlpBWujrMP3hvqosQzq7TgVm0IEbUb/t/NbUl?=
 =?us-ascii?Q?SlFALyMVTPmdoBdKcFXMwRDam9zqjajCtK0sZ4QEEsS/lihBebAPn+JQ5hUH?=
 =?us-ascii?Q?6nQdDLMwioGX1D11FNByrM82mqXLJQ3MJCv80BrB8LOl75utOoecqwNxSQRA?=
 =?us-ascii?Q?bYp/v+9L95Mz8IDSp00o8G7XyDh5u0CX2nN1R9RZRSSTTle0LCneJcrSofFZ?=
 =?us-ascii?Q?aodPKrZlOdgr7MbO6qNiocVmrzn0150kx+26HcA81sfTI08a/0WDMg1+x4L0?=
 =?us-ascii?Q?uGYbiruS3+lmilTj8neHwI4PkjD2ydUKzZO3+JXsz5tzwWAHgmGVO+bueSa0?=
 =?us-ascii?Q?8DQqD16t9Jg9GDup3NYAT5caiuIUVoEovwJfHZgJWmgzgG0l0s+t7hZWmLyf?=
 =?us-ascii?Q?yo4YV2K3xD9hsa5Kg6OZWUnvL+7eT2U0kIz7UemAzUTWs7tF1vwGO8rN/48W?=
 =?us-ascii?Q?T6qGkxoug136oztIhkgXF2zKwGKotTuCXfqWQn2QLEIXrjIeu4dmNpAs5qjK?=
 =?us-ascii?Q?WI/feNX8A7NotKSE1h4FBiCrejVg1ulnnFa3gOM1njf8xVanU7kROm6fVASs?=
 =?us-ascii?Q?98THSsVJJV1EFHco5y8f2igJnMzFbO3UcSFxquHQ3nAQWmCI185mzYGkK4dZ?=
 =?us-ascii?Q?CI3Xe1p3azDwZSskuhTiQgyFa0XPg5T/hZnVkCMBr+pzV2OekNuu7dJkmIFj?=
 =?us-ascii?Q?+mS4SbNLZu+nABAeUqurCi3XxHbTJenipmXVBzd9yovklFzpKak1I3V4/PG4?=
 =?us-ascii?Q?zCohobbjr9psNRRKW6OlnOWQnDPJZMkSl1h4j/z+nAX/D6lOjrK9eJJPdbxO?=
 =?us-ascii?Q?pgSPbGYiJ2632H6h4Rfp6XgkVAzNLPuCL1R7mMUtfrxDdFvohiOlyB1Nh0q2?=
 =?us-ascii?Q?QmvyoSHdRn5TJOS+S/0BeNrkZpPciXFjd0+qo9TZZjGoaVK7JH5sEbveWvRK?=
 =?us-ascii?Q?fGpTtmwx2gT5x7vj2siqt14HBiP4/JipvSOHxZQMoLraMuD5tNOmvWEpSfCn?=
 =?us-ascii?Q?Ph5gMtc26FOdzK+EWneF1HIDRBUes88HismGs7QEoz27ZMuM6W3HDfdc44LU?=
 =?us-ascii?Q?NyUaMZNICYIV9xDc5R2GeRpJVOXub6wz6f7C7p2DoVdcCs8CHYhvKULZs86w?=
 =?us-ascii?Q?AuGxPZFHMBAJM+w7UGwwcXHl0327yrhCYD34epgR0bXOs9zfMMyU7wSAL0qe?=
 =?us-ascii?Q?tWosQW4LU0M5xIOAVJcYcdixLxUTaTB4Edz6elM/ifhk7g71DkeezXmdZXNC?=
 =?us-ascii?Q?cpRZi3snnCYclkXgaWpuIfWRyhGyi7xwlDokEDg3PnJhxTOxT0j40Brd5XTa?=
 =?us-ascii?Q?8imb0YdJ8g/KL9MwCHZDeA7aLVoEN6ia48qcNiwPtNyO9y6W/ivCpdf9wv/f?=
 =?us-ascii?Q?bJwqbfamb1eCmOCC4PT5N3xwN7VlpH1k961fn31KxqZwj7QKj4Vxtj1hzVdn?=
 =?us-ascii?Q?OHZR77Ie08aW/8PSo5g0l0cIO4RoBE3FxGMIFJEkWlnFOwLV1+ir5Lm69hHG?=
 =?us-ascii?Q?FA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1cde615e-7fe1-48bf-8c9b-08dbc4eec87f
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2023 15:30:04.9388 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fpadEzkxsdDQxcd4iPIQoUg+WR2f+mQHjz1VAMhn1zlku1wAN69iMzTy3iXUzh4MH/TSbz04W9Kvrnu/zn3GaWWkeIz99oLuAaOf6dFtaAQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4595
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Increase MCR lock timeout
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
Cc: gregory.f.germano@intel.com, saurabhg.gupta@intel.com,
 intel-gfx@lists.freedesktop.org, Jonathan Cavitt <jonathan.cavitt@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 04, 2023 at 09:25:40AM +0100, Tvrtko Ursulin wrote:
> 
> On 03/10/2023 22:08, Jonathan Cavitt wrote:
> > Increase the timeout MCR waits for the steering semaphore
> > in intel_gt_mcr_lock by a factor of 10.
> 
> Ideally you mention why in the commit message, with some appropriate level
> of detail depending on the situation.
> 
> +Matt for MCR stuff.

I agree; there should be some better explanation for why we're making
this change.  In this case, there's some evidence that some external
runtime firmware (e.g., pcode, csme, etc.) is holding this lock longer
than we expected, but is eventually releasing it.  I.e., their code's
critical section is larger than anticipated.  Extending the timeout here
prevents us from giving up too early.

This is different than the problem we were seeing recently during
suspend/resume where some firmware agent was grabbing the lock and
never releasing it (no matter how long we waited).

The expectation is that anyone using this hardware lock (i915/Xe
drivers, various pieces of firmware, etc.) keep the critical section
where the lock is held relatively small, but there's no absolute
guidance on how long a critical section can be, but waiting a whole
second should hopefully prevent us from declaring the lock stuck
prematurely.

So with some kind of updated commit message here that explains the
situation better, the code change below looks fine to me.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


Matt

> 
> Regards,
> 
> Tvrtko
> 
> > Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_gt_mcr.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > index 326c2ed1d99bb..e3f7fb1248809 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > @@ -378,7 +378,7 @@ void intel_gt_mcr_lock(struct intel_gt *gt, unsigned long *flags)
> >   	 */
> >   	if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 70))
> >   		err = wait_for(intel_uncore_read_fw(gt->uncore,
> > -						    MTL_STEER_SEMAPHORE) == 0x1, 100);
> > +						    MTL_STEER_SEMAPHORE) == 0x1, 1000);
> >   	/*
> >   	 * Even on platforms with a hardware lock, we'll continue to grab

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
