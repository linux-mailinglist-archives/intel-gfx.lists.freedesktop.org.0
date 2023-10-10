Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 467767C01DF
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 18:43:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C6C410E3AC;
	Tue, 10 Oct 2023 16:43:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F371610E3AC
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 16:43:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696956192; x=1728492192;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=+wA2434hu2IO3dSQJXD3uqXu+slc/EwHUGuKqJiS0/E=;
 b=dcLIs2pV/p7J4Fz/TTiMdHnlUDQ8GYxSbPLW86y36Gj5AnHygFOqdGFj
 AU8YI7xSJm0alRtRfa32DLqgtyBWONaqAZbP88UmFOdM1ojrywz5XA9Y7
 pd+b1LYJyEteEhVVkOfT1/TOfJ2WU+8QL/T115QtnGwrL/xUUWDZ8kPg+
 +wiTUP41sTEtx79eIixhLyw8JREl8TzHtAq5uCKi9aO3gKdJzip+kBfl1
 0aeBVHDr5vrVKsxDnFWIXwaLhP+ivophf58teOJDbEcj0rx55xKmcn62B
 smi/sqWyzDLs5+voNFl2NUURsbLT2rWSz4xScR82drD97AypNdmmE/q3v g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="388318102"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="388318102"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 09:42:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="927220373"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="927220373"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Oct 2023 09:42:42 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 09:42:41 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 09:42:41 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 10 Oct 2023 09:42:41 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 10 Oct 2023 09:42:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EbXz1s25O6pt67fV7L7rYG77FGuHz6bjBIKBBLpj7ufIh+De90b52qsmdy3uvx8YIV7cVsfdOYq4BCTrgfoQx7YKTc3ztrv8P+JjpNz+JNvxl20aV6Cf0yzGgH1/ca+sNbKcMWXeabr9/DXBeuhqzst5jQp0NN1oL0gy44IHzi6zbki0LMWb4k7Cwb8jyelOuVLQMq6coyBDvfmOVrZzbDfO5TOvOiZUEpgmbKLU8EThKzNhpmv0UqtCnjhYRvHJ1LosWBLP3bZYSxKYwfC9CCIuPDTHz8ns+NPoqpFhF5yeOc//apij4zcprE+PTBnI0C0W1hTDPk2UQvKcEKmnBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=muph1Tcczuw7Jas7STW+267YXsxHEcDGb2qan2Y7G20=;
 b=d2cj57DPQgsRkEvmAIwRN2G8ChC676th5Yfb0C8ZxxSZBYz9de4G1QyDo3GPbNKVXm14ZbO1Xo1rvJl0WmLlXx3PPWWu1TjWrO1MMYMTka0yXjqx17zDwcneLyPhuiZzDWckqfEIPlOY6bu2/qg+lxl5sQizBKhyQSEfN52zYeiSBxklitOQsyZUofxdALi8zkz+PYGK9o5/uB5P06QAkMtAzAbsV2FYretJ4Gu8L1YMIsSozlN1BmpkmhoQFGk549cJNTKcmMq7imkhFdByJcsWzHNn8uGeV00VqpfqPHAEwW+PiJkcS44x8eb96kbXz/rISJL0VJ3oSc8JI7133A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CY8PR11MB7898.namprd11.prod.outlook.com (2603:10b6:930:7b::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6863.38; Tue, 10 Oct 2023 16:42:38 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::f957:c15a:9c34:71db]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::f957:c15a:9c34:71db%3]) with mapi id 15.20.6863.032; Tue, 10 Oct 2023
 16:42:38 +0000
Date: Tue, 10 Oct 2023 09:42:34 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Message-ID: <20231010164234.GG5757@mdroper-desk1.amr.corp.intel.com>
References: <20231009233856.1932887-1-jonathan.cavitt@intel.com>
 <20231010135827.GA21382@mdroper-desk1.amr.corp.intel.com>
 <ZSVpunHMTkvNoX77@ashyti-mobl2.lan>
 <20231010160150.GF5757@mdroper-desk1.amr.corp.intel.com>
 <ZSV5F4NHv/I8Q0PH@ashyti-mobl2.lan>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ZSV5F4NHv/I8Q0PH@ashyti-mobl2.lan>
X-ClientProxiedBy: SJ0PR05CA0070.namprd05.prod.outlook.com
 (2603:10b6:a03:332::15) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CY8PR11MB7898:EE_
X-MS-Office365-Filtering-Correlation-Id: f9b896f1-7a47-4883-2aa7-08dbc9afe916
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AJd58aioXdHPX2dU3ayZNdo2r09EMXs8xcep7t+nOgINiyIFPwx3OGucrFtfuVgxpeIDskek/8cOILJ5jFHd56fjFG2CL2JigDNhkuWtbO2L9f5aj4nS6gib7uVNUkfWurglQ1lze2HuikcFp3v3kM1jy2C4l2A/R9zQwCOkwT5dAmk+zYIEjqz23m1kNVeN4B6CYBpZed0yeBW5WCLzTUQGPFR3H78Yj4aHVOg0JmVnn0CZyvzBCEH36JEtcpF376RDa+4C3adm9JmtmurLHty+neejYJZiDPyjZcFjgk1ErPc1dMf4qjIw2mJHOmbKi+5Xx98EFfn8k2kodXjv0D/z6m6RoWzKj53hxRkJAQS6mWUywNswxdXzDCm5HxbDgB3u32oWWvkTZg5XQF/2bFVAER4T8ee5ns5eusLYjzqOK97GktdZnilRUD30NJg8DHhjS0rKb7SedbwiffVyXP+BBGcNPCSZNI3UQCofWMZHXFamco+BCYM4LU1FtRRhqtkdGDv8N3iM/UFzVyWwYthgSZ0xCfgIWrlvc+vDatOF08YFn0OExelmXtxhDDHu
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(396003)(376002)(346002)(136003)(230922051799003)(1800799009)(451199024)(64100799003)(186009)(86362001)(82960400001)(33656002)(38100700002)(966005)(6512007)(2906002)(6486002)(478600001)(5660300002)(8676002)(8936002)(4326008)(41300700001)(6666004)(6506007)(83380400001)(1076003)(66556008)(66476007)(66946007)(6916009)(316002)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+hpFUVIVT7OhAkQuNyUOSYtpY6g9XJtMrVvV5cPxyfXgcanOJwRpCE3k4PwZ?=
 =?us-ascii?Q?1yt4rdVJqjDfMPE1xc+gMjVMDmS/G2VzfkQztk3mxFAR6yoAD3rdom6kZ6uE?=
 =?us-ascii?Q?T2tEKrGCTkqmum1593vP5FM9+GJLTis5bLOgXSdr/aCmlTlyrWf2IC4rXGfX?=
 =?us-ascii?Q?ijjvnRW7UQhT1ZkVU3+3yGH5RGyjDYkvcLuk1eKa4eJABj6APlJ06QNe0EmK?=
 =?us-ascii?Q?0yiZK6fOGZBAOyyzomMUP3vIA9ZJT1Z/eYndYNxaY3xVWihKetVqO3oojLyE?=
 =?us-ascii?Q?jL5PT0NYiOMfW0ZzjZ7WD31knRXneo5sPh74iI8iAlSjbTjrsqlyIC8DGLA5?=
 =?us-ascii?Q?DM8HipwW/X8Cg9xEoJw8rL1ekIz7EOizHsbHX67uZZLdm3H7ulisZxjtdKKD?=
 =?us-ascii?Q?fwJ0BkGfOAF09X1BYDo8s4tdf67k5qsLbxUY0fVQmDF+dXDqgktzeB2rLssh?=
 =?us-ascii?Q?pJ+aX3h155GM+mgUYUJWKZUlhLltxT3HfCBBvNaa+RZ7Tz9+og7Iv4N2PX8z?=
 =?us-ascii?Q?3Yv7/jz+Zi+xrbSytPhO5Zp/q2N9aT04fhBlpw0N16IC60yVKjesdQdwmfwb?=
 =?us-ascii?Q?fIOZTJhLsnoOp72VLaNbIyJDYUJMVdAW+nCdALf1z9RLRgxhzS6EPya5KvTO?=
 =?us-ascii?Q?/P2ZCKmLMO9Fbh0RzWgR+GaDjs6Jx7W2lVRqKMEf9HCrOADQv6YVkySQ4xoO?=
 =?us-ascii?Q?UZnR464oQra5iyy+XVEPnxB2iwLwOnXI45S+bIqVyauVlo/GKlaKjQhDDF3i?=
 =?us-ascii?Q?DgbsQvwCVMerm/ROv8SIyiWUni6b/HNi2f1GgIA7h6YjVD2iJ2levIFTwNub?=
 =?us-ascii?Q?wMMXPFG+sMnD8Q2NB8/Gh6Ug0s5/lsOekIysn5gWsexAsGD+2m9QNL2MyOgD?=
 =?us-ascii?Q?hIed2phqq4wfsrNTcwFSCYtn1dUS7vlphIokDt8T2aRKak9AQc99Rs2i6gFm?=
 =?us-ascii?Q?M03NxLqoJQM8fUeUoLI8jpWjlO1L+jkGJcjsOZPrfJPbSlrWkxOa/rd1x69G?=
 =?us-ascii?Q?+nfVlFw45qeN8EU5BnbvfPnFWbgwg+L4+VzABcOg8nKY2Fb1m6EvynV3VJ/P?=
 =?us-ascii?Q?mCQOQYy13D0aHrCUIGinsksTlrUp+8/AXcmoRe/QmKek26kH1+7Kk9GRMb03?=
 =?us-ascii?Q?PAhHtYLStu9x4AebY/un51x6a21c0A/wUdQ8gn3+Pp/zW76nlJJZMDZNCMkx?=
 =?us-ascii?Q?6nJdhATbtpV4YQSft7CcetF34YyC3X5dm0agqCrOFhRJrKIm0kXIOIeTWr5T?=
 =?us-ascii?Q?s1/QVtGLScpSSEcw78e5Zh2Mb11oGwA1hXVihOeChHlYNvRY9CUWJYvkSRRQ?=
 =?us-ascii?Q?RvX6DkNkwkk/yPDdTVAO62ZGQaSZya1483O5drvvJa3Jd2oLEZwCv+YBamFl?=
 =?us-ascii?Q?W8mi0UxpEXla8MM/Z1rmrWVeIR8b0xrS92G/ljuPvTnwU9ieUsQJAkDvBlz8?=
 =?us-ascii?Q?XVdmsIf/PQMghiFC7+E3pYx6qSt9uTktswLlbpYnAToIy+frpGgJcvomD7RJ?=
 =?us-ascii?Q?/c3TzyTPwpK+ZDwq79S80oBipBiZ5ailcBm/RuBiUn2TBxOPUIx1PaRKsKYG?=
 =?us-ascii?Q?ma7UylfubfKZJEfw4Zfn5/2HZUbAQGM3JiP9dN9dbtB4qp/fEDfTVdYh0jTV?=
 =?us-ascii?Q?5A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f9b896f1-7a47-4883-2aa7-08dbc9afe916
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2023 16:42:37.6289 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WxXRS6zOySzsfmgjo7mI1ESx160TDp/bPdWypn296FdGtzUGoFsWIi9OXlKS+MJT3wKoCXHTPvRVL/eT3et2VM+p3DtzaS8tj6knd0TtA08=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7898
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Temporarily force MTL into
 uncached mode
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
Cc: saurabhg.gupta@intel.com, intel-gfx@lists.freedesktop.org,
 Jonathan Cavitt <jonathan.cavitt@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 10, 2023 at 06:17:27PM +0200, Andi Shyti wrote:
> Hi Matt,
> 
> > > > > FIXME: CAT errors are cropping up on MTL.  This removes them,
> > > > > but the real root cause must still be diagnosed.
> > > > 
> > > > Do you have a link to specific IGT test(s) that illustrate the CAT
> > > > errors so that we can ensure that they now appear fixed in CI?
> > > 
> > > this one:
> > > 
> > > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124599v1/bat-mtlp-8/igt@i915_selftest@live@hugepages.html
> > > 
> > > Andi
> > 
> > Wait, now I'm confused.  That's a failure caused by a different patch
> > series (one that we won't be moving forward with).  The live@hugepages
> > test is always passing on drm-tip today:
> > https://intel-gfx-ci.01.org/tree/drm-tip/igt@i915_selftest@live@hugepages.html
> 
> yes, true, but that patch allows us to move forward with the
> testing and hit the CAT error.
> 
> (it was the most reachable link I found :))
> 
> > Is there a test that's giving CAT errors on drm-tip itself (even
> > sporadically) that we can monitor to see the impact of Jonathan's patch
> > here?
> 
> Otherwise this one:
> 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13667/re-mtlp-3/igt@gem_exec_fence@parallel.html#dmesg-warnings11

Okay, looks like this is a pretty sporadic failure:

        https://intel-gfx-ci.01.org/tree/drm-tip/igt@gem_exec_fence@parallel@rcs0.html

so we'll need to monitor this for quite a while to make sure it's truly
gone.  Assuming you've done enough local test cycles to confirm that
this definitely avoids the CAT errors,

Acked-by: Matt Roper <matthew.d.roper@intel.com>

as a short-term mitigation while we debug further.  We still need to
continue searching for a proper fix and/or drive this through the
hardware team and get them to document this as a new official workaround
for some kind of cache coherency problem.

BTW, it would also be good to have a patch that adds explicit handling
for GuC action 0x6000 (GUC_ACTION_GUC2HOST_NOTIFY_MEMORY_CAT_ERROR) so
that we'll at least have more meaningful error output if/when this is
encountered in the future.


Matt

> 
> Andi

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
