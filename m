Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5406C88FFF1
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 14:16:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D476B10F694;
	Thu, 28 Mar 2024 13:16:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fzsGQbhG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A31710F694;
 Thu, 28 Mar 2024 13:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711631780; x=1743167780;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=VmbwmW+mprjrUiF97O53w1lCb71wk58Pvlq76T2nfuU=;
 b=fzsGQbhGG6Aa2oejdMxcfYYUEeonNmktBlgCxpKSR/Dj6j8Nn3B7/XgP
 Xbhz7tfYVAJcIpN8BbGSByYfbCfbDX2pC4KJuiD59Vm4ZIK0lgVMqRrL2
 9sbcSOqYpVFkY56kLMjWlBVEuLpmFK33yVhR0DCSXsw47zb0s9H0cxGZ/
 vLiHUBsetlcaiV0Sx8sDklYu4mJl2YLc5+3nu//E9qKVEewlvyDGDTANf
 Jm47FjjZ/Ofko0/Q8aqDBGSp0uuvOBcQtKZQc+oKtTwhB2XkHw+vxzkX+
 uX/RogeYL9ANtpEOS1RmmxrObzOfeVdlmqJGlguqVGh9O+FWqTCBJZOGl A==;
X-CSE-ConnectionGUID: xma9RG/1TS+wla02SFJNqA==
X-CSE-MsgGUID: kOsGoZNdTKmvPgR+R0QlMQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6970063"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; 
   d="scan'208";a="6970063"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 06:16:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="16481497"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2024 06:16:14 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 06:16:14 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 06:16:14 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Mar 2024 06:16:14 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Mar 2024 06:16:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NXCo2tehGc2jJCLQ63GF58OAC413VduFqCVdu5VPZMq2rBJNhnHQ0dvPZ4gOnHGV1a+0QU7L1Wkgx+2HuChyT3vQYmqogoArJhLkRuPjSpdv8Uivs5Wg37njnyxoHSmeuLX2nE3qK7oR/sgDR80SWzbSfIt8924B6tXXsLsL+Y+/cyjtWBo6I0NkX1LxYEIW5KavaVpctS1lg5lhOxlTfKrKQ4fjItVfzh2J2sdWb0S5dVUzrLXtdAMcipzwHhkZdkMSfo3yBNNsRiMc8Nxkd4M+I6g2kuym/mVGH2+QdDNRZhGUgypy8bshHpE5sU9D7CI0XMBRD/efkkDxGONEYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VmbwmW+mprjrUiF97O53w1lCb71wk58Pvlq76T2nfuU=;
 b=HloDm7o4P1MB4xU8mqJHfKP1KJ/imIwI0gb2wuE4tTmxDUht4TtwfDqzaInwcIgQuT9XdB0KIvYRF0JrrhH/p44oWsUahamQ4EcQkNFbpWjNGyjWC2CXi+gl68MhdCzCRVjwZnr61mTOIORlHRtPM9DuwRM0Q5kgdIHStecWw9Kk/q7snyNsubbiFX8fVC3IEnTKpuIJ63X+YmxH2o46Y8UpDZG9oqadgIq/qh8yDm0uLSOpNFPlCdas2teZMb26kJsOzJuY8MMUi5XAxwACClIPEJFN6DeQ43uuekmcbb+eR8+iH9lqJbB3QyX9s0/jwrDKBjsViyn5wozsWZDpqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SA1PR11MB6869.namprd11.prod.outlook.com (2603:10b6:806:29c::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.31; Thu, 28 Mar
 2024 13:16:07 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257%4]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 13:16:07 +0000
Date: Thu, 28 Mar 2024 08:16:04 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Arnd
 Bergmann" <arnd@arndb.de>
Subject: Re: [PATCH] drm/i915: use fine grained -Woverride-init disable
Message-ID: <cgcn2t5xlwurw7fnmm6qwnx26loo7jzf2vplxhggelwsabh7dq@erytjmpl7rnw>
References: <20240328102455.944131-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20240328102455.944131-1-jani.nikula@intel.com>
X-ClientProxiedBy: BY5PR13CA0004.namprd13.prod.outlook.com
 (2603:10b6:a03:180::17) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SA1PR11MB6869:EE_
X-MS-Office365-Filtering-Correlation-Id: 060c7197-11de-4bda-91f8-08dc4f293a60
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: N7twJEylVqXS+jsTHG1TXKa8MDkZX75GdtePk65Ins5bbJvstPfPr0eA6KhmX5hyxAE1YyQDseUgbJLdAJKZlxHSCHe54kROsrNYUPwOQaTQVUIelz7+T1m0jazA1M8hstzbxbc4Q0F4ZKAPXzpvikdceCXZsb+JB4LB0197pA8BSPMvVrYGxf89nmb9Hx4n6SG9Uzk/UKBkQdA03TlrizbQ3aPhtd6HgGvuh0LIf5Rl72DByq06eaa1zo8+7HQd/GLKp0zzOeh8NZODPBMERBKNLdfhxpSb8OJD9l9G/jQ6g/h25Nta236j9VWRH3h6Rbq4s8eumzytFaB4vX6E1OLo2Dnj/DTD++cjnjmzxmX2A/zzz9JhsbzbttDojz/2UuAIbXjLIXF7GloldJKnuGiDTONha5WjNed4nK30BMApC2WQXi1Sw0IjE46WafaXG62g5IE4IQulWJU+SGqrI+8lch9JwV3WosQgxo4sJJ4au7/oIZWLPRxyeCqaSN22i3xTjYFWmk04aHdj8bOdfjihlxO9CaXQnbG+Xty6F+wgXJMIgDowc96FwvCOSp4yJfK3zDM8OchtvmuSVrCXrDF8i9fAvDPRite94bXuNpMJPWN62EORbZg/sbNlQe/DAdGcCbyvrZdyHy9Gzw+6VXwf7Wdi6+MnWHxkygKppUI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Pj7Pm8ItPRsyuSvWHXiWxdJmCHrMS2DlZylUnE0//Kre9WxYCKNK1Vpr0smy?=
 =?us-ascii?Q?YpS/KyftX8zA9mx8GH++lfBtEaICEqEoEKFNGVyp79+wRCJGjERc+XQxeXJ0?=
 =?us-ascii?Q?xzVcdlGFBRwmTyhmeAbgH0RzXirzjvAUHoM8bpd2TfPif/uANscjrwQorxxS?=
 =?us-ascii?Q?OxcqAOUjNtFKMpFHSYpL3OcnmI7vAEY4tLMt2v/WgUzIvmy5wgyHcKjWvVLv?=
 =?us-ascii?Q?Gw+vSm5IxWnv3wQvHooz/AfxMABCgH6/9IyQuMfA5TTDah53MZ5KlcgluMWY?=
 =?us-ascii?Q?s1ngtIX14PL7TwcKVZEBlA05ytDZXNh1pEPhEmPZnxteQGqMR0tmET6TetW/?=
 =?us-ascii?Q?JaEKI8YyuZAyf9ekEUV1PTwricDAwlnXkaG+Qvdp7q/WPK0DLOxL7vjvDRlh?=
 =?us-ascii?Q?fGwQLGoBo5LAUEbqWvkoRg01j9oBORlmq+dqRAQVYjhztnqL0B4dngOG0AKq?=
 =?us-ascii?Q?XvhiwYcEf0N2w2yDerabOoNcWtj9eOQEziyU8nAMx4G2F/yZONxB+nD81X7T?=
 =?us-ascii?Q?aosq/kIajNmixEFyzF/ZGjIHzh/3aREFm+VScLIJM9WoMquv0iNVJ7DJ2eQC?=
 =?us-ascii?Q?RqGSOQCbQ8rW7ANhrWenzP9HsuDEpo3sGbMYLFg0LknPcZc/7eHP2mJyTxUq?=
 =?us-ascii?Q?auojQ4V6WcENANRFkB9YAR6GKkTXgacOjaf3GOs0463KtcwowbMuDgeHQBt+?=
 =?us-ascii?Q?/el1xkwLpGMaHdxL8vGz2zghHL+/BD+Simj1tajgADC8t8Z2jHapDsBRhX6l?=
 =?us-ascii?Q?8SMegGZdtlWOaT/NJeVSV2HM5XnITK5bzYBosQ5LEUpRNJf124PnAdTz1PTC?=
 =?us-ascii?Q?9DBzfvxWCVrtnyiZ2CcT4MCxAT1P0OwCmDlsx2Q/S5ALgkSQL7zCl+ovuuvA?=
 =?us-ascii?Q?WOK35C5b5YX0OSpQ9o8gxEztLkqht9LDcvbCmjPjxQ06G/DwFuVwpv8WRhkk?=
 =?us-ascii?Q?dG1RgaCZZ6CQiykuZeYyV2qB2tz9AXda31kh36y0WbJ6DCowjVLZWLXquPHD?=
 =?us-ascii?Q?iTCXqwP+b/K30e5tbO3hqR2sI3Mfd1pSbfx+ZMVvTbY162w0lHMNFg4Uhdme?=
 =?us-ascii?Q?JiLb+/1ZzK55C8Y1oU2vhnhhdlgWZvH3TQSwVezurgrFeGSwq9uQ2MXPGmEQ?=
 =?us-ascii?Q?eXsZ8monZC6FR68PUQdrRIgRNbOpxeY0f9n7ZfAuSKxKAJl25cxiWDylvsXK?=
 =?us-ascii?Q?z2Ibvyq3FGtyeaTfnvKVhHI5tzPxuBBxfBHA3fPDccZ6E50Rhz8Lp9ASYnlx?=
 =?us-ascii?Q?dMR3M0HcmSeVrjGBXLJUj8QV4HFMZDqrRazYkRDRzFTOxieE6tlJgTPY8OZK?=
 =?us-ascii?Q?LIju80DB8ZEdcn4+pymf4FP+QUJ+Nw7Zs22RUbompTi9nsIzme+/ydxgVU9u?=
 =?us-ascii?Q?Dund2qQnGTm2f2/d3i8M5ybeIKdXze4aR/0nQQGG3Vwc4XNits/SfiqHmCuK?=
 =?us-ascii?Q?NQ4vVhrh9ihk1WOs77Hn49dIJ2KZcScQTcvIoi4Yw9SI2s3U95zluu6+RbkN?=
 =?us-ascii?Q?hk9JIvXTYb/vSdkVaQ0bCqZxgkjn031xY0CfKgmwW3OQ+i0hvDxQJoyDUa8H?=
 =?us-ascii?Q?KgH/1oCekqn0wbK5X0+UA41UskhklatUmQvZCar+LpCYafDFaioGSJMKIg+g?=
 =?us-ascii?Q?jg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 060c7197-11de-4bda-91f8-08dc4f293a60
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2024 13:16:07.2449 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LIHyUoKLMUMW7yGJ4r+mdX4lphWcjvnENr5ztOhzrrAISGf04+XbYGcHNcoHKFdVvr9e+I/x0msoHv1Rn6sZQ2qFaf27cTzQXLViKoPGjEA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6869
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

On Thu, Mar 28, 2024 at 12:24:55PM +0200, Jani Nikula wrote:
>Use localized __diag_push(), __diag_ignore_all() with rationale, and
>__diag_pop() for specific initializations instead of blanket disabling
>of -Woverride-init across several files.
>
>Note that we've tried this before with commit 88e9664434c9 ("drm/i915:
>use localized __diag_ignore_all() instead of per file") and reverted in
>commit 290d16104575 ("Revert "drm/i915: use localized
>__diag_ignore_all() instead of per file""). The issue turned out to be
>in __diag_ignore_all() and it was fixed by commit 689b097a06ba
>("compiler-gcc: Suppress -Wmissing-prototypes warning for all supported
>GCC"). So we should be able to pull this off now.
>
>Cc: "Arnd Bergmann" <arnd@arndb.de>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

great! I had a vague memory of us using these localized warning-suppress
rather than doing it on the entire files.

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi
