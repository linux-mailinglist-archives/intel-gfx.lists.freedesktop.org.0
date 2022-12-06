Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03AC8644FD2
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 00:51:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4796410E038;
	Tue,  6 Dec 2022 23:51:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2D5710E038
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 23:51:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670370674; x=1701906674;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=mMEkOMNkch4GiE9QqANv74aJXUSdsZKrwG5GGQvRc+Q=;
 b=GHz0IXGF4C5kg5kPpG5gMRSDF8fTe76j09W+7iBOXJvJGDwL+VgT8E92
 7RhmncsTnTz1huJi9S5sNHgG6r8m/TDQUpjmETqqYR0VmlweRJCSu+b2u
 irdqflVhSxAECgG6MPs7Xpul8MctlDvuEQZp833dzPLovvK1DddftwS+4
 ABT7N4K0S54uBkaZUmboEhq+zn8zWMkZd+CJYjkx43mufOBprklSuJNoF
 OX3u0ePtdnOBNW7W3n+5QCHKzXsSQOP+hSHZzxTFiYZdA4TOZS3NfTbTH
 zxpZfzEa1r83oQ/HknSedu8qskPPDItztrP0eVwkOg3Y3I5J4jrhQUP+6 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="343789982"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="343789982"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 15:51:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="820759825"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="820759825"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 06 Dec 2022 15:51:13 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 6 Dec 2022 15:51:12 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 6 Dec 2022 15:51:12 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 6 Dec 2022 15:51:12 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 6 Dec 2022 15:51:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i8qVJWYDeoaniTC2D112t8cy/Wa23ZecoUoUrp4qzy6gMORuZ+NgiwH2YuTitMI4C5NdFSmhWq80RKtei4dR9hrsKWLyp37GMj6REcsZ7ebUjHtYAkd98GoNhRVOGS78HuRwqOSJZESnnHrDWEfi5MC5jQ4F2N12tw4LoT0kV97PgisIhMiy2x5HmFPi1JB4vC7xBA3MiihfwwEkD8akZ3DgGk6bmkZ3woDA/+h95EAW7j6HQUHAV2WPAmWVnTuRaQICMftGsSzD85P/MpoQCIu/oA4Pa9sddEA4sVxgsIyX0GdYq5PTRu9UF0hR6dvCmls3CAa1e4Mh2V1zZrK3ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jXQwBvbF/B1abnEt02XCNgxk211xBeqG2KyCCbtutQY=;
 b=hgS6DM7sQRZqeJThodAIA9zqbg/bRU2MtHIc6bTyThox1amaYWDXEpYxjqmLjEyiKl7QpPMaZYaoPXqFL5YoPUUbjbjLW8vMAJd4gnkPSN22zck3l1RbZg1zJS7eQ3FcPscIuVT+DAfsP+2JOCY5Y5WB5T7qp7W/BgsPaEKkjWCkXW+W+cNxqdOyO6l3vDM8UBsIeEUhchdAzNgk6yRJ220Hhetb9XocBH8H7IOQu7TIZjZEXHnJgEsoWuPi1h+H4hrVaZxLORJJaQ6ttOPFiEwfPReNxI9SUcGBHMO5kwZnrN3Mp5rt1kvbu22ioLjKcObT4NFe65iHk9BeDUpHDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by CO1PR11MB4865.namprd11.prod.outlook.com (2603:10b6:303:9c::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Tue, 6 Dec
 2022 23:51:10 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475%7]) with mapi id 15.20.5880.014; Tue, 6 Dec 2022
 23:51:10 +0000
Date: Tue, 6 Dec 2022 15:51:07 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
Message-ID: <Y4/Va+r36cwf5e0m@mdroper-desk1.amr.corp.intel.com>
References: <97b42ba0ae91b1ed6feb6e5c090bff2445719bf7.1670311877.git.aravind.iddamsetty@intel.com>
 <f8cfaaab25f700b1826eedeba55d68334396e92a.1670311877.git.aravind.iddamsetty@intel.com>
 <Y4/U+F4pu5L9L3bP@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <Y4/U+F4pu5L9L3bP@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: BYAPR08CA0064.namprd08.prod.outlook.com
 (2603:10b6:a03:117::41) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|CO1PR11MB4865:EE_
X-MS-Office365-Filtering-Correlation-Id: b431ab37-7e30-41d0-b187-08dad7e4bfdb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wA9A925BJvrRmsg7348SSdwWnxQd6yRs9MQKFMqBvWqT/vNBpQmVNZH9JGXqcceHpi6aQyyX3O1BvvJLgOOCZRHQ6DFDciaxvIvkBa5KwnAYgJ8rgbj+wb4wA+IxTfq0l/e5SeJhZZ6H7ZLVSrde6W65s3e0xXAqHiztbHedJ0aluKsf0QcXPSQsksQjNcdhNbkzMyfbE+i76JyFNzaG3gpFD8c+xj8UBPC7NCB375J0VtgwC/s3YkW/bSIqO0RtAjMirrhGY18HFoCq0/soCrPzpPDnLpPACeqAjWgKrF2zUczkjv195AFSz4DyuWO6cdG6JtP5AZfS/9g6dqogbD/Ae8RbvCX1I45y0e0jt0PvoBTyBdF9+R+81oVP8D7Fjd2yUERT5FVjIhdrTOkqBHO/k0niTmDpETxAs/iXf0Zvd4aXtBi8Hx35NuQ6+eOuS1poJ6j3Nbs+V1jRZBPN9yef3rnxL2LjDeuItJy6jc5FUQqyAxXzXkdNLcX+ZRbGSHg2jI9GQLqe7Ro0gF4LkAj9uLrV/FcJ78WjO4EDXxwzxJEIQNN5CYRqTLuh6TagSUzKKWrkhtZ84VxOkeON3NLdgleY1rOSe2Z0UkEq6MdKuiEAv3tjOx+brqXdveaA9+lMRrRxsgusTXrHMd3AGQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(136003)(376002)(39860400002)(346002)(396003)(451199015)(478600001)(38100700002)(316002)(2906002)(6506007)(83380400001)(6666004)(82960400001)(186003)(5660300002)(6486002)(41300700001)(8936002)(6862004)(26005)(66556008)(6636002)(66476007)(6512007)(66946007)(54906003)(86362001)(8676002)(4326008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rsK4STHacA/CKP/k9O499f+Jgg6AEVuyeeYVkrCRALx6IgBSPQpXi0g4ZRW2?=
 =?us-ascii?Q?Ppj6Fa7ioC/GcXTghX1glgiW1CfIieNqoZ6I35wbYbNOxtgiS7C3aCkDSvyV?=
 =?us-ascii?Q?jEbrGWoPzyJvrDP2FlLYtFAiju3XRB6XmcXjaceY3a7tiAkb962gcI8vUpaD?=
 =?us-ascii?Q?xyDKOcf2X1jnfLpqqLASpNV8e+FeogZLPnDGZcB3oxyeiZXHrxox3t1Ofy80?=
 =?us-ascii?Q?a2a3Vuh8tlzzzneA6ewCLjlsLuEUfLkv+rXmsn1138FsDMAkQ14qmDGlm44Q?=
 =?us-ascii?Q?eJNdqdE32neVHQVF8X337Uxbk/LEV+vM+EguLlfxxsV1qqA7iGsY43niA+dV?=
 =?us-ascii?Q?+JuTsUyeh9h+5hQNE/3xwRe2DTR2YUYe0ICTFB9DOudM7c8pSnXD3CTP7OUt?=
 =?us-ascii?Q?E25arOy3HrTQQZbh0UsLW6bY09EdOx3SPOd8TV1PtO9zbFMxSwIoPCc1HPhS?=
 =?us-ascii?Q?VWSaSXHl3NOhn1OfXHEIYQtAmOorydH2rdDkQFCrJJ8Gon2DQrwdHBVk06yq?=
 =?us-ascii?Q?drRnxPrFtAoZH9ahH45GOOJVCCuF660R6/keuRhfdnwQ9tBswPdA2IENdXxQ?=
 =?us-ascii?Q?h7ArgmPV+z10sefMdmf21fKHFVAWN2eVp5aU/sk7ybldlY/0IGgyu8zO8Nl4?=
 =?us-ascii?Q?RfWEgJ4Ld8qjcbox7FgNGunvWRuhLctZebWjowkNm7ri2MsM0LZNsRakKC69?=
 =?us-ascii?Q?banvbe0IqNKhsnSoe5T6CcumRhv0kze5N8Cu0S9NgCS04bTQRxmm/o3rbSP8?=
 =?us-ascii?Q?sPgZesx1BdD7aMnzXr2WRNL/bLhzXsHwIwBfU5A9qCsv5IyAZNmizJXTfiYN?=
 =?us-ascii?Q?aPA7lhGkIdfgA810qz1IZa0DF6KVSvFyFufTCkojX4GCkBPGypI8pvbB5BNG?=
 =?us-ascii?Q?kqi/byLkWdYr2Po3d5Z9OjxIMAk+pnZqPjyLtdN+nVsTus42KDxEHOKhC0Vg?=
 =?us-ascii?Q?JZIFJF3ItnxAIZOrhgdWlLo0V73gbQyC8MZLGr62+K/PbBfEEhZBbQhufkyu?=
 =?us-ascii?Q?yTZgks+kyBtDDlPpxhV9xtsfcYPZ8656iqV05bZVvEtx4+Xf3CXAyOP4SoJu?=
 =?us-ascii?Q?jiC6Ub9bUg8fomWJ+AGTVFOwcdsRAU5X603G8SQ2GVFl3GXJTwpqWvBALrQm?=
 =?us-ascii?Q?U9aT51frGX4HN/ZS9eEv8zE96aKeHvar2cfzEUY+n3dyubJ925Lj8Sk8tswI?=
 =?us-ascii?Q?5G0RiNct7gnV8iSMYw7SV3jQ2xDo19tOsr+hhJ0ekvlror38geavQvwa+PPD?=
 =?us-ascii?Q?VpEHoj5cxDSxdIQwmbMA+M4F/km32KQLBROYkWrMaY+BMNrdAVxEfJmTBKKB?=
 =?us-ascii?Q?PkoqAjXvIw4W2kbZDkuix2j81GpJAo3jNNRDIm7Osynu8PrzC3Plr5gCECMC?=
 =?us-ascii?Q?LY0QQ/w3hK1hekuxuk+UYshrCMyGsMpEynQ6sjEox9D6QuQkjEY10BQJME7l?=
 =?us-ascii?Q?wAqihJWUKkdCM4Vs/Ua4HNsUuKHiE5BgSiX558nGXhGLgSLmNzP5KGxDq1um?=
 =?us-ascii?Q?YVYQ2TJXqZVf1wYMq58ubDUJyCAVeZ54FoDK7Ufbpwk8CAtcWBVj42sSYgJy?=
 =?us-ascii?Q?gcD7FhMtKJpqA/3fNz4J5iDspER3WjOcs0Qj2Nzj6V7rUGjIfZbqfg9fUHOy?=
 =?us-ascii?Q?PA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b431ab37-7e30-41d0-b187-08dad7e4bfdb
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Dec 2022 23:51:09.9426 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UZwSc3JvRSteL/flZBYSddxWaMrsLoW1Nl3IaPiwN2SCzkgvqnXzkF+Cfe8Fwk2W5Ac6veirlMBJ9Pou3EBbu7wdAckxqGAvaIIcohklprI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4865
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/i915/mtl/UAPI: Disable
 GET/SET_CACHING IOCTL for MTL+
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
Cc: Pallavi Mishra <pallavi.mishra@intel.com>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 06, 2022 at 03:49:15PM -0800, Matt Roper wrote:
> On Tue, Dec 06, 2022 at 01:57:39PM +0530, Aravind Iddamsetty wrote:
> > From: Pallavi Mishra <pallavi.mishra@intel.com>
> > 
> > It's a noop on all new platforms starting from MTL.
> 
> To me, saying "it's a noop" implies that the ioctl will succeed and
> silently do nothing, which isn't the case in this patch.  We're
> explicitly rejecting attempts by userspace to use these ioctls.
> 
> > Refer: (e7737b67ab46) drm/i915/uapi: reject caching ioctls for discrete
> 
> While killing set_caching/get_caching is the way we want to go, I think
> we need a lot more explanation of how cache behavior in general is
> supposed to work now.  I believe the plan is that userspace will supply
> the specific PAT index that corresponds to the behavior they want via a
> vm_bind extension?  I'm not familiar with the details of how that will
> work...does that mean that the caching behavior will also be tied to the
> specific mapping of an object in the GTT rather than being tied to the
> object itself?  I.e., you can map the same object twice with two
> different caching behaviors?
> 
> Is there a uapi RFC document available yet that describes the high-level
> view of how all this stuff fits together now?  If so, a reference to
> that would be good to include.
> 

Also, general comment on this series --- anything GT/GEM related is
supposed to be Cc'd to dri-devel these days too.  That's especially
important for stuff that impacts uapi and overall driver behavior going
forward.


Matt

> 
> Matt
> 
> > 
> > v2:
> > 1. block get caching ioctl
> > 2. return ENODEV similar to DGFX
> > 3. update the doc in i915_drm.h
> > 
> > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > Cc: Matt Roper <matthew.d.roper@intel.com>
> > Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > 
> > Signed-off-by: Pallavi Mishra <pallavi.mishra@intel.com>
> > Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gem/i915_gem_domain.c | 4 ++--
> >  include/uapi/drm/i915_drm.h                | 3 +++
> >  2 files changed, 5 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> > index d44a152ce680..cf817ee0aa01 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> > @@ -291,7 +291,7 @@ int i915_gem_get_caching_ioctl(struct drm_device *dev, void *data,
> >  	struct drm_i915_gem_object *obj;
> >  	int err = 0;
> >  
> > -	if (IS_DGFX(to_i915(dev)))
> > +	if (IS_DGFX(to_i915(dev)) || GRAPHICS_VER_FULL(to_i915(dev)) >= IP_VER(12, 70))
> >  		return -ENODEV;
> >  
> >  	rcu_read_lock();
> > @@ -329,7 +329,7 @@ int i915_gem_set_caching_ioctl(struct drm_device *dev, void *data,
> >  	enum i915_cache_level level;
> >  	int ret = 0;
> >  
> > -	if (IS_DGFX(i915))
> > +	if (IS_DGFX(i915) || GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
> >  		return -ENODEV;
> >  
> >  	switch (args->caching) {
> > diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> > index 8df261c5ab9b..3467fd879427 100644
> > --- a/include/uapi/drm/i915_drm.h
> > +++ b/include/uapi/drm/i915_drm.h
> > @@ -1626,6 +1626,9 @@ struct drm_i915_gem_busy {
> >   *     - Everything else is always allocated and mapped as write-back, with the
> >   *       guarantee that everything is also coherent with the GPU.
> >   *
> > + * Starting from MTL even on integrated platforms set/get caching is no longer
> > + * supported and object will be mapped as write-combined only.
> > + *
> >   * Note that this is likely to change in the future again, where we might need
> >   * more flexibility on future devices, so making this all explicit as part of a
> >   * new &drm_i915_gem_create_ext extension is probable.
> > -- 
> > 2.25.1
> > 
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
