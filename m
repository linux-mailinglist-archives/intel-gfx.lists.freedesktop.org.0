Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A96E6CA841
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Mar 2023 16:54:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A929710E610;
	Mon, 27 Mar 2023 14:54:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DEA110E610
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Mar 2023 14:54:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679928886; x=1711464886;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=tenDifpnyMKB5E23q0YWEQOrFi+L+q0sisvpFAXgVvo=;
 b=BHXIdCFOSF53jH7Srhv8qwwHOk8Ap0P70HVlB/QrJnm08rBSHl2bYXFr
 6U2WoYPUETP2zv9glJ3SR0kONKR0kwmyMwpkbkVUkGkJIHkJcXVLdWafl
 G76kQCBGoo1mEqcFqVImN4ZAS80BXbvc1ZnL7j8XlTIm/cU1uxgYeCu74
 eeATTIUdPSrcneRpacCILT6AN1ExrDVrrfQF+e2dLFp+/PSOeBcbLgBs3
 TCpDzshGj75A3co+aq2K0PIZo74O4okPcui/I7v7H7ZRLzvPu8GDuCias
 hSWOfgW69E2z5gZovEQ69qnWdC7D6QAObnAlAKXW5TDT/hEPDKPMyX7pi A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="405211083"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="405211083"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 07:54:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="929490029"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="929490029"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP; 27 Mar 2023 07:54:41 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 27 Mar 2023 07:54:41 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 27 Mar 2023 07:54:41 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 27 Mar 2023 07:54:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RFoL63E4JX7SLW7+tcnzaSILZAfdQd6dVH9/9mYVn29pozLRaP61z53E3TxZgrvRfxtzEbxW6MjG3x+ybij8zozF0b6F+XrqokSt/Pr1yFl3MGqiuKAK6zYnfOzQKCwGKQlN2mlXg/uIGJt1LrZ755htwE2HxIXW9LV1rvjRIeaCLMZ5qj5VVFOgkwNP/up24Y4eNnDej3sWuK5WM8goCzjcSq3I0YY/KqlJ/g+SPT8WefDIu5QsCFdgYfy53N3W5DlDAmyTyvikqLzwhTIdLoKFDTs37wcw1wfFzRu/JvbfE9OXkEKGs0VrNZSTK6l7nAUTF3o/xNeeHoSJWO4JMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qHfnyLR38GIUMAWw6OMK/+MXhbD/sNYB8+OlL70+8ts=;
 b=NAkemtRkEGL3sRdQb2+LKGsn7IsKIPRRZMOwnV/tmgb7rn0VMBXrMs/xG5OvtMHVVYqQXB2D5Shh4rzSQTB6XI3OA+mItv0eQVElRsllst7hkO8LlF8TMppawb0rPMZ/+qAXr3nF8sNu3bEmmnoa8NqDTWdZ+dxaiCi9lGbltIsRte8IKINmy5YwBEUraOtusAnSEwZ6645WYXSzvPHEHSpr8jpxlxIIZ6d8y2/omG3EQVyrjbTVJFbz3yDwr4UnB+AqPwE7BaWbNypUJ5eQdpZxJQGEETtx/BUjQLei7Gwq1iCe5zt91vX0kyQCs/8Iv7MiSk5l1Hj/ZF0FGyl/XQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB6053.namprd11.prod.outlook.com (2603:10b6:510:1d1::8)
 by DM4PR11MB8131.namprd11.prod.outlook.com (2603:10b6:8:190::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.41; Mon, 27 Mar
 2023 14:54:38 +0000
Received: from PH7PR11MB6053.namprd11.prod.outlook.com
 ([fe80::3b2c:bb0a:17a4:55f]) by PH7PR11MB6053.namprd11.prod.outlook.com
 ([fe80::3b2c:bb0a:17a4:55f%6]) with mapi id 15.20.6178.041; Mon, 27 Mar 2023
 14:54:38 +0000
Date: Mon, 27 Mar 2023 10:54:35 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZCGuK91imshXv9+i@intel.com>
References: <20230327105330.312131-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230327105330.312131-1-jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR05CA0158.namprd05.prod.outlook.com
 (2603:10b6:a03:339::13) To PH7PR11MB6053.namprd11.prod.outlook.com
 (2603:10b6:510:1d1::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6053:EE_|DM4PR11MB8131:EE_
X-MS-Office365-Filtering-Correlation-Id: f622b5fd-c6d5-4d2a-5360-08db2ed33024
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: d5POG8dqSjLqlPE51HWcbZKnSsCuFh/PwZ996dyT2nC/MViLXlxvl9hp1uXGNjVylrqXvRTxCb19WUo9edr7DT9YbEBGKddseTzkJmkcq8ZLd4SqJpifFbsyY80sZftNMEzdBW+ri+shTMVUucHQ7/laGln97eId4umxvhQQKVDRZwhovaW8ffIAqAFDR7H/s31EXFmtDISbkgHsK8oc8Zd2k2CPbb40X69bU0TnZWcZaUEcPwGhkHc7HNIeFi+AnLmC+9QEriqI+pcOj3jt833AmQPQlHBMigjoBBQtCHUcpXMITWz30ikg/sRYJimAQj+Qg1SJYAhvTWDyYsQwcClG/3lRgjI0rp3QKQiuCVX/0vxhJWLn5UHiLyuYJZk+yWMumge6UEc6jsDfkvpVoLTquLhCadRkjpcJLJ0pSmceX6of6A6A97wvja0MK6Fw00IYftZDhWwjZNe0yqbspn1zPa7DSAfte7tO0Dcv51+KR8Q7D9hPqTjKt6/NW1qA9sb6GlzYtY9vYpPu+yMXFWfkQMQjF03Mq0z042kHCMw4kMF/Fo92KXAJVYvZZ+3m/lVZwzS1ZgkUll37SVw+F3AH3qKRQT+zC4dn/PoIkMk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6053.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(396003)(136003)(39860400002)(366004)(376002)(451199021)(38100700002)(36756003)(66946007)(86362001)(66476007)(66556008)(8676002)(316002)(186003)(8936002)(6862004)(5660300002)(2616005)(41300700001)(6666004)(478600001)(6486002)(6512007)(6636002)(6506007)(26005)(37006003)(4326008)(82960400001)(44832011)(2906002)(83380400001)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kjo9aLEbK7thUsD9oAXKnQHBKaN5U2qvM/1G0eqBxf+TYG5CinftTOWvIk1I?=
 =?us-ascii?Q?j9pOZ08fABjI5xZhKkNsnmopJxGEQndahwW9cEv8N5jL7JOuUkPXXqPLgN11?=
 =?us-ascii?Q?jaLT3UYXrbvmeXbAAbTtuLVVC5LijqRgutWazbSaAruqwJN8A7vB+Gw3gOmm?=
 =?us-ascii?Q?uaBHXhYdmj9O7LyMciQmEKQKn2DZTe4uGk3nZKh0d6ae93VIdCrfQjfUrr3b?=
 =?us-ascii?Q?Ft7DWKvVCFtEL8XQJ+/PZaVxnAY9mrIQEca55Kc4DH6tYAupxQwpiqXefspH?=
 =?us-ascii?Q?9DeNBKC+j5XSWi3qS3UbpUFovLOKdHVnpDSV5ZS3Sa4wv79L0JQBiEnn0Hk+?=
 =?us-ascii?Q?2arHT0C8qiBtHnK4RFJYUQtVCPDFcaO6ualOppZfDbsQ/vYDV+6RmwZXQRvq?=
 =?us-ascii?Q?JWjDjB2bN7zfMKzd0XpBW/ejUj/s31nEMda0kH23pPkoDpRQbZv55X8K/4N1?=
 =?us-ascii?Q?kP+PX4Ms16bhAhxbJFJ5wAkQqneNCLidKXHH7J8bx/u3yPVxn1OScI3ot7e3?=
 =?us-ascii?Q?THZA1aobV8rqrG1qhMxuBSzY2i4GK+Jpuhb2uqnB+EDpGPG3p70soiuj187c?=
 =?us-ascii?Q?9uQTs6YIteBzhKVA6YNO42ieQnUpf4XpgsHa/I/DoNn43mC2BQEoL0P3rGAO?=
 =?us-ascii?Q?WHLrJsm48sMgNjnMT9I0nu0PKYpVyVKK00583JgfnY7dU8/zxfXWX4h3bhW8?=
 =?us-ascii?Q?z+Z0Rh1bSGucNFjnbkck6EPVwqn8Woyz7tUhc14iMb7n3QT1R78NUXloRHyK?=
 =?us-ascii?Q?cvGo44fw7rGkGDBYZsBD4wiaABsdHk362lMsw42ePGs7rr2i/MyJMGFbRT1B?=
 =?us-ascii?Q?Qby73AC78ky3Mlvhp26496JLtHxRaKC6BlEzW3XyYvFsptDXWHn0gqkxx1ml?=
 =?us-ascii?Q?AOiUHDtmaFGBYKpOiH7XG6CPMFE5WFYLUnC3MlRsg/1wMHAp2vV3qRPzbquv?=
 =?us-ascii?Q?R39AHDS1dU0epLSltdJ2jXZvK5TBJivFF80fFCAtGXLDwN8wQ6dge4eH/RGh?=
 =?us-ascii?Q?ZkcU5HyheFoGejcigGQMR7eouJduzXGkZKUFy4M01OHHVQGc9Bl3dUFEiKHJ?=
 =?us-ascii?Q?BM/psiDuwpYKXAmdfh/uYiooN0Zh3CzFMss91BfxsZeNeRG8NWMNu6ExNRBO?=
 =?us-ascii?Q?A0o+6XIymlm3DmQOE7QOk9ZpsnPXfeO8m3kSSQHFt2xLYHvajhGOUToHrHgA?=
 =?us-ascii?Q?yID89wdyrpcOx7ihjU3cUr26ZtGJxj6HM/mbqnajlAq0ffth5XgoEe7GB9/A?=
 =?us-ascii?Q?MVVXjZSzcq+z1JMMGN4fLLfmliymX6dxok3KJCuNwos714Ddb+D/fJUwMd/c?=
 =?us-ascii?Q?yN1XYoollQ3wk24SHoopzVbQeFI7topFhnpIzScfLDym6ofaZ1YaVt0l95F0?=
 =?us-ascii?Q?iyLw9CLjI7L8ArPksIxr9mFDliMvHzd2vhVeLG5pWaKB4ERwHsYx9LJy51jU?=
 =?us-ascii?Q?v84UekG15+3dl5OafcP9tLebL07tZCxRDTl1e5YCfC1b6JJ9yzyMcFpeohjZ?=
 =?us-ascii?Q?OqTajyhWG4o6LKyb/MgQvEEiG22NUt8FeyqD//Y8BZBUs/41i3ZBkB6eDuKn?=
 =?us-ascii?Q?Po3o3qWyXZK4ksuQ13VMGB0pdtFmTsQQTs4GLV9c?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f622b5fd-c6d5-4d2a-5360-08db2ed33024
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6053.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Mar 2023 14:54:38.5908 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AhKxOZpyFHSjG62FH0ppzPd3bxdWur5xVloPq9Nh68iaDwZ4Asi4UhNe7jO2w8a/gqBtKFKs2UhFeEsSe6/Scg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8131
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] [core-for-CI] Revert "Revert "drm/i915:
 Don't select BROKEN""
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 27, 2023 at 01:53:29PM +0300, Jani Nikula wrote:
> This reverts commit 211c4b0aba30d2eab9690ad61944c7bf20b33c16.
> 
> Drop the commit from the topic/core-for-CI branch. We no longer need to
> select BROKEN to enable DRM_I915_UNSTABLE.
> 
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/Kconfig.debug | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/Kconfig.debug b/drivers/gpu/drm/i915/Kconfig.debug
> index 93dfb7ed9705..47e845353ffa 100644
> --- a/drivers/gpu/drm/i915/Kconfig.debug
> +++ b/drivers/gpu/drm/i915/Kconfig.debug
> @@ -40,7 +40,6 @@ config DRM_I915_DEBUG
>  	select DRM_I915_DEBUG_RUNTIME_PM
>  	select DRM_I915_SW_FENCE_DEBUG_OBJECTS
>  	select DRM_I915_SELFTEST
> -	select BROKEN # for prototype uAPI
>  	default n
>  	help
>  	  Choose this option to turn on extra driver debugging that may affect
> -- 
> 2.39.2
> 
