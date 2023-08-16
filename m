Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 389DE77EB3D
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 23:02:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA2D310E3C7;
	Wed, 16 Aug 2023 21:02:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EC6910E3C0
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Aug 2023 21:02:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692219744; x=1723755744;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=yF6EKwp+MBO/X4IooKzk5VvLsrLYMJMz75hnZcNwIik=;
 b=ThytEd90A9g2/MT0qCK9XUuFUOUKytELT5Hck6eJnBEoGydyMRexbsCY
 waZVaCo3tVhGmG5gclyokf2Xq/egwHx3zxoZ0f7KYgB1tw0wXqEwwc4XR
 HyKgv2iqRSuB84TVBwJBU2OjnLrtyUcfS43sUC4RelHZol5AznzyB6c2l
 emNz3Ee33BiU1S9VRJdiQFyFxOTKGOvv/JSSA5wnlzUlDkZrbijPB5NdS
 S0wIUgt4Q+Szv1eZ1UHRVGwCpKt5UBAVwDLxhWHXIFtq52kgk5BmM7yx0
 X3s1BDPIa5KxXIEfiU+1VwX97nq8YcwOs5t1wov445G6gu/75tGwf/Xcc A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="352955059"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="352955059"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 14:00:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="857956665"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="857956665"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 16 Aug 2023 14:00:50 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 14:00:50 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 16 Aug 2023 14:00:50 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 16 Aug 2023 14:00:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XMu8S2SWZKr2QOBdbEiCmH7S8M6/5UcInvozGkjrkXxb5l+o1hzuPeEHHix/oMynsSIhQtYQcINgFcSYgUVS7d0526bmdUth3crLLg6IUU4LiSVzSFuUrgFrn8r/ULt38drWJqhM5C5uPcE0UNJr4bXGUa8kpFM8Chwqp7ND2cJS1Z1EsQIZIqDzyiou5NfBYlg2ZP33arHSDnCoAxNHT9UVwfIXoap+wbX6W0gjocJ9JG/I/jV9eUUwWLPhPB4O2t4dS9VK0QpqwcFwO0WCmrf5FwSDDzA7vkL26lco870RXZc+BQO9c2eOue4lIGtYycKbkIQsCbVtKECaW8c7gQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fiBD8RnM8u4x8VWVmo31Yy8PxSKgk3gutCer1iuEPsA=;
 b=du477ovsHHK9wNgF4WsGc4Rfytq+kCev3yU+K5o1lS5hSYrGgYWcVf2cj9KgE+OJL+mQl1+HbgouHm95x9IpdlZcvdUBbMwUe71qxx5TZnHlmbVP5IX/7bMRdYP3PFdVFwgKU0wuLr3LMUtghJHsec0XXQlRGkcZx2AMy0T1Q3JftiIfKzWY6jeSIAwgeBPyMxAf+bfmfXuhFhQGH+vpAKDWTBtS81bmMD9ImcbseEfdq3DDtPZCE9apNYBumkkle3QCh6bChaIyV9fzcGYJAG6KDT4fjDAptqn1HiWwzN/zqWd9Y3ak2ROF2opbDo7pErhVtDdjYVk1tWz3Vjia9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 MN0PR11MB6254.namprd11.prod.outlook.com (2603:10b6:208:3c5::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.23; Wed, 16 Aug
 2023 21:00:47 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41%5]) with mapi id 15.20.6678.025; Wed, 16 Aug 2023
 21:00:47 +0000
Date: Wed, 16 Aug 2023 14:00:44 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Message-ID: <20230816210044.GS3375865@mdroper-desk1.amr.corp.intel.com>
References: <20230815165345.964068-1-jonathan.cavitt@intel.com>
 <20230815165345.964068-2-jonathan.cavitt@intel.com>
 <20230815192838.GO209733@mdroper-desk1.amr.corp.intel.com>
 <CH0PR11MB5444FA0D778A2BCBADAFB084E515A@CH0PR11MB5444.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <CH0PR11MB5444FA0D778A2BCBADAFB084E515A@CH0PR11MB5444.namprd11.prod.outlook.com>
X-ClientProxiedBy: SJ0PR05CA0144.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::29) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|MN0PR11MB6254:EE_
X-MS-Office365-Filtering-Correlation-Id: 978ed827-8c2e-469e-cdfc-08db9e9bdd47
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RXM4eEHSvwzWyqv29kWOYdLv29mlsuEELNulHXcgx1xO9ZuT4iLUHQxgVoOJ2L3mkE3ukNMiZKaPWLygfJZPx9Sx9R6TetUkut2kmriTfWQjMiVRPNcr/k8Z/MHAjO5rlps/JyhZjPXuBqd0LqcsqqUtuyvqS8k7hZQSTfG5yPhFjdVP4IP1mEWySm0+iLyP5k7sFADXQW4F0Q2XA2y9FHpBR3tlHQl2G/V0QhHh9bdOOvMZra0Y6ZMp6foN6f6q1GgGDoWlgd9jANCIjpVJZRdjV2Oy8OH6eJfc+TRwj0HIHkPyYgFC++mgf4iTB9S5Z8BjBCVIHw6xcMOQ4e0AMiXnxOOGDVFvYQudyvvOcp04b6GlZYMBStizxLSsYZjrkGxVL28WRKj3QIFC+dU+yD5DixRkLJv4+YNpthGG5BE2iKCa6GbImfTrQjVnhN9a49RDzclzF5JPgGJTeix9mO1njyPGfwtQxCr2hmSQOFBZCMHPvavPV42KYntI7zHib0O6WB9gXiz4H1toVyDbLiDU+ht7pRl4tQEYZjX/54I7TXr/PUC2mHPI2o49cToS
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(366004)(396003)(136003)(346002)(451199024)(1800799009)(186009)(316002)(54906003)(6636002)(66946007)(66556008)(66476007)(5660300002)(41300700001)(38100700002)(8676002)(6862004)(4326008)(8936002)(82960400001)(2906002)(83380400001)(26005)(478600001)(86362001)(53546011)(6512007)(33656002)(6506007)(6666004)(1076003)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?N9OE7r9vVRW5hMB5p7KSSFWU1Q7oerFz+GzxqHIVLEEmawaK49zTTTkJvT7i?=
 =?us-ascii?Q?8ajVZesC24yzzKHenbKB2hAvO1NhXixAlA8UtCGDU02hLgJMMtaRlyc4o9C6?=
 =?us-ascii?Q?UWUR/NPYtrNOXwIKZNqk6gsrlleuZNPCJ+3We2sv92hzX0aLyUVtlwFtBEVd?=
 =?us-ascii?Q?tVIIBbxLSCr847Nb6FQPBEmZOvVTlnsEKfga/SbujqfJzb/SXMXLXb4eFJs8?=
 =?us-ascii?Q?wIf8htxdiuGPW6M7hvoOb+MxjO1IuC1S5KGbSV1VJIW/aU78/4xWfh/jqlDc?=
 =?us-ascii?Q?cfJI+BnCaz7pdrYZ5/xscKAZxyQG7VoL0QOJSpV2/mI8Cf/y5EOkGTjYBGtg?=
 =?us-ascii?Q?lW++L/RqGLxiyaFcqWP5hxKQ/5QgmeAxqldHif84hwfdlu/1RzDWxTCZKp7F?=
 =?us-ascii?Q?nrkxXIPDqO1zDLfKbfr0l/izfTaW4LMaV+eJ4veLsZld1Cht+uFPGG//rB1b?=
 =?us-ascii?Q?BT/cjSc6D7NUvkITrSowvg5DmIazvwfMKCDZ2Ktxtz/d1XTu5k/zh3++/2wA?=
 =?us-ascii?Q?z4DA6Xnc95OHU3UsWjXIK5pcZ1N0dOFxEetpKlTvWbodmQbyLAZsqI66VS9h?=
 =?us-ascii?Q?1Qo6NKkPz51mGV2OM4UCGvPvK3twHGRkswIitaT19rAYZSgZ7Jz5dusngJLq?=
 =?us-ascii?Q?mlZ2N8y/HQPbFqlTyVeCLXhwwm6hR96YNoFCO4Di0naTbsPaa/Ku1kk514tP?=
 =?us-ascii?Q?NI87zZCpgVpFflfyNmA2zj0gkUNArIJfb/pmpunIyB8VOOTo9N1PC7BH1gbu?=
 =?us-ascii?Q?i+Q25sXEKbIz234zxI8I1P0RX+mGW8JT/oqMERAC9mksm1nWR+dkjITd7/lc?=
 =?us-ascii?Q?VzLBeQeMuxrvPaYqEYbQV2pi9uC886oE1UcZbNlBNxn9VYtCKxD+A81GvieE?=
 =?us-ascii?Q?vF7hX7rf7xCiIAzDaCmpPmntlie5cEz/H+Ge+Qsnd3uNJRdX4mDRgZ3We24K?=
 =?us-ascii?Q?jK7PZQYtyeu/KV0MvJdwnWNo6weywL+eVt2YisLWS6BRmglMKE72DExry7Xx?=
 =?us-ascii?Q?hBXeGUhDZIIQhLRTNQtsasCLnwPrXc2HuirKifrGx62Njaetk6AvkHBEpkbF?=
 =?us-ascii?Q?WqN5KVflv6SyrdPVgG5lFMIGRSUJ+zwPWj+UOKecHMyy3oCB15oxLRlyUx7y?=
 =?us-ascii?Q?ZT5w8mRKdjcLnn4gk3G6VIq+xqTDl+IJFB50fASnIKDYwJ7WQqYHPQUU2WHl?=
 =?us-ascii?Q?XdicLIc06ChYALWeQFDYIfzB4MyOECs4+VJtRy8PGA3TI1VrEeKmuLBUR++I?=
 =?us-ascii?Q?k7VqKhZthqX+GxFwseBDPEdnAZJLpDIpka2Qn6EdExAVuObbQDPQS1/KoBkf?=
 =?us-ascii?Q?gR130hmPhYboO6juLtahJjaZUHx9LH+go9JQjihG7tJ2HPwudtoDGoBJ9V9F?=
 =?us-ascii?Q?mveQQvlO93FRxMyChsekMjFT2dbqfVXEa2ddFJJukoy1lT/zafROq+z0vnVc?=
 =?us-ascii?Q?rSNOW7MhGWxHDNUu8LlmP48At4NXkBCNIgy5qcD2rEcxa+qDKBVDE02CWJ64?=
 =?us-ascii?Q?fesLUvLrH5sM723+HeMWhyQkwE94rJMXFFCPnlxyNuF+glGpgNP4JIBXBRpl?=
 =?us-ascii?Q?h3TWk5XSGGLRs8TZUUMSA9o6IzIxdef1Z+om7hnSc9Nryxhk0SwvZj4AkJHk?=
 =?us-ascii?Q?Vw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 978ed827-8c2e-469e-cdfc-08db9e9bdd47
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2023 21:00:47.4602 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qDANZlD56HMPjSqPvqBZ4KBzF3vU6vaIKX1+f3mmlPzpGJBb16eGvrR9GMYTI0UJyXUWVxECd6s8wh/uoxUOq8B8d/BjzTVhzQcVo4ZZx2c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6254
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/selftests: Align
 igt_spinner_create_request with hangcheck
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
Cc: "Shyti, Andi" <andi.shyti@intel.com>, "Winiarski,
 Michal" <michal.winiarski@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Gupta,
 saurabhg" <saurabhg.gupta@intel.com>,
 "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>, "Das,
 Nirmoy" <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 16, 2023 at 01:33:29PM -0700, Cavitt, Jonathan wrote:
> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com> 
> Sent: Tuesday, August 15, 2023 12:29 PM
> To: Cavitt, Jonathan <jonathan.cavitt@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Dutt, Sudeep <sudeep.dutt@intel.com>; chris.p.wilson@linux.intel.com; Gupta, saurabhg <saurabhg.gupta@intel.com>; Shyti, Andi <andi.shyti@intel.com>; Summers, Stuart <stuart.summers@intel.com>; Das, Nirmoy <nirmoy.das@intel.com>; Belgaumkar, Vinay <vinay.belgaumkar@intel.com>; Winiarski, Michal <michal.winiarski@intel.com>
> Subject: Re: [PATCH 1/2] drm/i915/selftests: Align igt_spinner_create_request with hangcheck
> > 
> > On Tue, Aug 15, 2023 at 09:53:44AM -0700, Jonathan Cavitt wrote:
> > > Align igt_spinner_create_request with the hang_create_request
> > > implementation in selftest_hangcheck.c.
> > > 
> > > Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > 
> > Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> > 
> > 
> > For the second patch in the series, the general direction looks good to
> > me, but I'm not familiar enough with the spinner implementation and
> > context handling to do a detailed review there.  Hopefully someone more
> > familiar with that code can take a look.
> > 
> 
> 
> Thank you for the RB!  If it's not too much trouble, could you please push
> this patch (independent of the rest of the series) upstream?  Sudeep would
> like to see this patch upstreamed as soon as possible to get MTL prepared
> for PV.  I figured I'd ask you first since you provided the RB.
> 
> Of course, if you're busy, that's understandable as well.

Since you'd previously sent this patch by itself, I used the CI results
from that submission, which were clean aside from false positive hits of
fdo#9121.

Applied to drm-intel-gt-next.  Thanks for the patch.


Matt


> -Jonathan Cavitt
> 
> 
> > 
> > Matt
> > 
> > > ---
> > >  drivers/gpu/drm/i915/selftests/igt_spinner.c | 3 +++
> > >  1 file changed, 3 insertions(+)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.c b/drivers/gpu/drm/i915/selftests/igt_spinner.c
> > > index 0f064930ef11..8c3e1f20e5a1 100644
> > > --- a/drivers/gpu/drm/i915/selftests/igt_spinner.c
> > > +++ b/drivers/gpu/drm/i915/selftests/igt_spinner.c
> > > @@ -179,6 +179,9 @@ igt_spinner_create_request(struct igt_spinner *spin,
> > >  
> > >  	*batch++ = arbitration_command;
> > >  
> > > +	memset32(batch, MI_NOOP, 128);
> > > +	batch += 128;
> > > +
> > >  	if (GRAPHICS_VER(rq->i915) >= 8)
> > >  		*batch++ = MI_BATCH_BUFFER_START | BIT(8) | 1;
> > >  	else if (IS_HASWELL(rq->i915))
> > > -- 
> > > 2.25.1
> > > 
> > 
> > -- 
> > Matt Roper
> > Graphics Software Engineer
> > Linux GPU Platform Enablement
> > Intel Corporation
> > 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
