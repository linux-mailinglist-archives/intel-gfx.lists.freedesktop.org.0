Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA7263F551
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 17:33:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF58A10E64E;
	Thu,  1 Dec 2022 16:32:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCC7E10E652
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Dec 2022 16:32:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669912371; x=1701448371;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=H9FCICSI3ngq4Q05TMd8ZoQnDTpQomnBBHso2UNoL0Q=;
 b=HkmH9lsP4OBX1ftlEppOp8OFJ1nRM3BdCr30fmwb4V0oufETf7CHYU71
 26stFZbemyqmzG5EmK3RvPSm6G5JIGjeISLj46L0MLMzac9kcKgdyViuG
 SVKghJJ69VFueHAJX3tX87erzoUuNiI5YX15YtoUzBFsbQwngPOIXHHHd
 HsP9iRuULOWlgwq404jjvzZAz/d1GnnFdIxCo7x8mdxkGNbYVJbEBSD6Y
 ceRyqFEQtO9wS3MERZmTF/FZjVGky7qVzKAg2Vk0yavkLSqm8mQ/uB5ZK
 Oa+XTx83mksLY/6gP4dssNPTVBUseBC60UpTlcW6BrEVTUoRamJWHDKZU Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="317594607"
X-IronPort-AV: E=Sophos;i="5.96,209,1665471600"; d="scan'208";a="317594607"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2022 08:32:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="595126491"
X-IronPort-AV: E=Sophos;i="5.96,209,1665471600"; d="scan'208";a="595126491"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 01 Dec 2022 08:32:29 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 1 Dec 2022 08:32:29 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 1 Dec 2022 08:32:28 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 1 Dec 2022 08:32:28 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 1 Dec 2022 08:32:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VRkDYTcjWuui63f82i/wwZkoRIKVGmS86zLO5NEQKI6aIe5vujSUygHNLXY1rz04cxiVYUrVbKoky8sr5wPERgE4DPFAC0d8+JkPIdRZD8fvcQ8NntUtfHGH7wIY4j1tNiFQgXXPpU400118Gyqg0LXUvfInUbs6cMX6/782knnopfW8qlaWaRwUCEoIkXz1lYSiJjxYxkNke4vyLC+GsmnZy4ftYtBS/RI4bWy9esYzGbysJCEnnA5BRSy3rplFLOBS8aKCv609lpmkOHs5gUUc9h04DyQP+P7E7DrptIrR8LuSuE9P9MkLGhhXLGPNEaI9xq3pWN1oOhoieBaZsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=taYo4WCe8JQ7FGrEose/ogVbZDcjDwQEvVbJKCpl1cA=;
 b=KkOzv2DQCPX4D0rSeraj5Apyj8FVSGJ2nI9NAoAiQO4IK4AOy1n3BT3VEQju+YIonSMVQSElVB02MPGoY6isykQ5DNNi/SEH1hs7sykfeJI/VLijCxzfP2aeqhTXf86nSu+0Xc81U2syuDsrBMkSkxXegxQL98I3e+VvITifJf4t7ha1IoLiokTGJ8B9sCgadpBfOjAFRPVPgC+KqPtrBzAM05BLZSsP0mBXLKAB8mNAYGFrp9qQp+6xc8qx/b7bIlgSeROPnO/ABsZ72H1fQGH0aiwnvPsdkQZmFd7P4Nkh6Hn4VFvke9H3Ku6WKRxbxTvhbP1ozwfL5333JZ7N+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by DM4PR11MB5294.namprd11.prod.outlook.com (2603:10b6:5:391::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.8; Thu, 1 Dec
 2022 16:32:25 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475%7]) with mapi id 15.20.5880.008; Thu, 1 Dec 2022
 16:32:25 +0000
Date: Thu, 1 Dec 2022 08:32:21 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Wayne Boyer <wayne.boyer@intel.com>
Message-ID: <Y4jXFffxKLu/7k0d@mdroper-desk1.amr.corp.intel.com>
References: <20221130170723.2460014-1-wayne.boyer@intel.com>
 <166988517042.14635.14083833982972293303@emeril.freedesktop.org>
 <8f6538f8-9d40-2370-441b-9ff3cab1942f@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <8f6538f8-9d40-2370-441b-9ff3cab1942f@intel.com>
X-ClientProxiedBy: BY5PR17CA0006.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::19) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|DM4PR11MB5294:EE_
X-MS-Office365-Filtering-Correlation-Id: 3e8c437f-980c-4eb6-69b9-08dad3b9a05f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wnGRSmSEQxdpxpMX2SsxUpdhvk7yWVRclD2XNGwgy+4oaXzj/KDgLYRqyewjTLo8nTnSQIca7weC62h3q1sbFjCo2K4NYGb9Jv6ooi90WBsSGWBtoQek4mw/5z/budrm8v4tbU1k57+7j450MxX6w0Ug9fqGarucAX++biwHA6eWVpf7c2ZtvXzoe5BLC6CjOJ49NMeUKKmz1DX4YKpcZLivqFoBiSHw4g8SVtGhX5vd+QUgadlDjtvQ82CXkjlgN0tdQP7YNM7cC7bB79C3d3Nl+H/RgtwiMv7Th1E3xfNj9/baVOy45K7o/B6INUPiauJf1lf6A1mhKlUjyEoDuY0eMY2GZ9ivFoTGYnbQm/olS7dUX168aYVAgRHUqgE9EMM2kPSI+7NHdEVhtvI/4qkCv11hKZQPJj3RIh6xQZJUyjXhlzA8Qbui1cUZibGGLEbFb1nhdjmvQbsy7VjB9sEcSYf9Wa/HM0jLCo7YTfoXkYevo1rvCCts3aFU0nb/SMUfUrAcUt+RiD+VqT79K4NmKvucZAhQfraRcod0kcC7ZxBU/S6wooWyFNRq1qcFrPbGHPLpBlZFiB9tiJbAUQFc6Fr+5VHHFmC55NeYeeFq3GgxZvR/BtWA4ZWeQgvm8XxFw4+koBjBQlLOL1y5OvYSncG7SbBz4GvEW0yow5acfqq88FzvqKl9hbC6wtHq
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(136003)(39860400002)(366004)(396003)(346002)(451199015)(83380400001)(6512007)(53546011)(6506007)(6486002)(966005)(86362001)(26005)(38100700002)(82960400001)(186003)(30864003)(5660300002)(41300700001)(107886003)(6666004)(478600001)(66946007)(66476007)(4326008)(66556008)(6862004)(8936002)(316002)(6636002)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qv87Ghg5Sf6oe4qscMd/gZyV9ZCuQSUdZ5KxDTGevUb7xliurUlk3TcNX55b?=
 =?us-ascii?Q?c+6s0Dcuk9YOqL2uSzqpipsAz6eGk3jqPbemNxekVmAxXTRunYoaybjx/YrY?=
 =?us-ascii?Q?I145qk07uBe76yaU+snprPIfFGLhyBrNFnb+/pDJSg6kyY4h0JARhJgd2Dfn?=
 =?us-ascii?Q?XYcI3aUA1P0u8sZpyPSvOgIpGNcUY3D37c+za9D4srnF3YhgRKiqq0BLOuk2?=
 =?us-ascii?Q?j29sBTcpjME4BiXjR8EBZK8VEWySzi2/XahlxRD4TsJlyO08TbfLNu/T+J7c?=
 =?us-ascii?Q?pttH87jutapPLf5nYRHGaHCP2f3gIkJA8iuBa/mgV543MgbS+DgB32LoZjZ/?=
 =?us-ascii?Q?oDh27K1fWN9TBPNCaJkkAVeiMpoIxfEji0bRWFObdCQcR8/Ma0u4LNs6sxmF?=
 =?us-ascii?Q?76qcktFFrHQziDHwTl0cDlqfVTZJuTKfHV10sbwca9T2LzG/T2uapZvrTFzt?=
 =?us-ascii?Q?tRdV3as7wtHb/KutEIHaEfUsZQGdN1rM1B0ZOWzMvAmgWbj+8oLzF9SzgT/u?=
 =?us-ascii?Q?b1QaFoLgfDF9fyeD63wChV4baQc3yld3Z1gOyKAef1QOMAcHchTeskYpQLy6?=
 =?us-ascii?Q?wUdMPzSY9lG4LfRCL/XV7e4Ii2bQzvSF5jKMhFAMFjDHvIWzjmP5hbzoj53S?=
 =?us-ascii?Q?Xl+0rA3W/lDzJuFMAsYWM+Z0XcRC3U6gsKCGLg+NtSuY7JbiFcIHdMsQOs0H?=
 =?us-ascii?Q?pUmlzegyhtlqfjOBGDuF4XxyXSXI9UUoR8vvKLkjCrLY4oISZShcg3NVwyji?=
 =?us-ascii?Q?JMUuKpcMFt6pIp3hUn7OMsEAOuE4yQYYAOiGMqOxuCps9le5s19sRSrXwprF?=
 =?us-ascii?Q?jsxQnGSmHMK12tN1ucRxSk6HbzYkiVUEjzwL/9B0P2lKucw08i0V7M+7zzLx?=
 =?us-ascii?Q?/W3CC4WKJjzvLDU2cpVxu7bcjOmbSilF+1ozKnX/rcMckdrzwp5VZF10McUp?=
 =?us-ascii?Q?gNMjhEP0kOpsW5QhFLbveEYhkLv9/ZmF0mPNt2XfhHplAz5lSoZurZbu1P9S?=
 =?us-ascii?Q?U+sl9WM8VBJ7krfqqMpJj7QcFm1n9abdYxs7xce0WZWo1vKHz3AQ1pdgYhp5?=
 =?us-ascii?Q?nBHj+58oYvdck/2uF6jAG8ZmjQ5n2ukke1LWtAPhw/Ci/hv9irrXNPQp8ZPd?=
 =?us-ascii?Q?/FflhuOEt8WTa9lF4WVCQO8hFI8BcHNFQNieFuGQdh3DWA3Zf3q1VM7Fdy6Z?=
 =?us-ascii?Q?174TTQrHWxBlYxWKNzAaTphCZJ59WfsHJ2p6ZCT8NaayrHAHX24VBgoZKD2C?=
 =?us-ascii?Q?EagsX/HwRvM6Fb9HqbfLfd/ohXpv4a1SgRgM/BffsajBeDw1uHr8wKaVP92l?=
 =?us-ascii?Q?kBCmnwZLtWi3rv399/TjjwLeDtOpz7DktZ3CLidSkLZGlv3PYulTEK5VmDRC?=
 =?us-ascii?Q?klI2FRgX2p1rkJmELP1qTnWKRNwpCoze6lY0Jfyd2IC5huQDPLZxOvVBE4Qg?=
 =?us-ascii?Q?/w1Rvg2x28caq03qcms2ICGQnjEryiD4wR8poQbVgkVJItJyBZgiRCeNGOv0?=
 =?us-ascii?Q?UNhLfIqSMFE+PEg5dyOffDdly3+abcFK4I8gXDsBOoYbh2JfUMtTTC+61kXB?=
 =?us-ascii?Q?22VhsHju5jBipv4DL70POpKh/ERDWsQna4SpM0RevhnBPeUnfV7Ef5+PY2nG?=
 =?us-ascii?Q?EA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e8c437f-980c-4eb6-69b9-08dad3b9a05f
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2022 16:32:25.4675 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N/uB9FpOIvAOlvO6Lzl9a0aknd+HcQnGfU30DlfAYEwUkYcpHYhrz2srUq2Rw1qiDM0Rkun72XA7hp5St9OI1cOyiOt/pXBYWzIRiXUHsyU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5294
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/pvc=3A_Implement_recommended_caching_policy?=
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
Cc: intel-gfx@lists.freedesktop.org, "Vudum,
 Lakshminarayana" <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 01, 2022 at 07:13:37AM -0800, Wayne Boyer wrote:
> The failures below appear to be unrelated to my change which is
> restricted to PVC.

Applied to drm-intel-gt-next.  Thanks for the patch.


Matt

>=20
> On 12/1/22 12:59 AM, Patchwork wrote:
> > *Patch Details*
> > *Series:*	drm/i915/pvc: Implement recommended caching policy
> > *URL:*	https://patchwork.freedesktop.org/series/111491/
> > <https://patchwork.freedesktop.org/series/111491/>
> > *State:*	failure
> > *Details:*
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/index.html
> > <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/index.html=
>
> >=20
> >=20
> >   CI Bug Log - changes from CI_DRM_12456_full -> Patchwork_111491v1_ful=
l
> >=20
> >=20
> >     Summary
> >=20
> > *FAILURE*
> >=20
> > Serious unknown changes coming with Patchwork_111491v1_full absolutely
> > need to be
> > verified manually.
> >=20
> > If you think the reported changes have nothing to do with the changes
> > introduced in Patchwork_111491v1_full, please notify your bug team to
> > allow them
> > to document this new failure mode, which will reduce false positives in=
 CI.
> >=20
> >=20
> >     Participating hosts (11 -> 11)
> >=20
> > No changes in participating hosts
> >=20
> >=20
> >     Possible new issues
> >=20
> > Here are the unknown changes that may have been introduced in
> > Patchwork_111491v1_full:
> >=20
> >=20
> >       IGT changes
> >=20
> >=20
> >         Possible regressions
> >=20
> >   *
> >=20
> >     igt@gem_exec_fence@syncobj-invalid-wait:
> >=20
> >       o shard-skl: PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-sk=
l4/igt@gem_exec_fence@syncobj-invalid-wait.html> -> WARN <https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-skl4/igt@gem_exec_fence@sy=
ncobj-invalid-wait.html>
> >   *
> >=20
> >     igt@kms_atomic_interruptible@legacy-setmode@edp-1-pipe-a:
> >=20
> >       o shard-tglb: PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-tg=
lb7/igt@kms_atomic_interruptible@legacy-setmode@edp-1-pipe-a.html> -> INCOM=
PLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-tg=
lb3/igt@kms_atomic_interruptible@legacy-setmode@edp-1-pipe-a.html>
> >=20
> >=20
> >     Known issues
> >=20
> > Here are the changes found in Patchwork_111491v1_full that come from
> > known issues:
> >=20
> >=20
> >       IGT changes
> >=20
> >=20
> >         Issues hit
> >=20
> >   *
> >=20
> >     igt@gem_ctx_param@set-priority-not-supported:
> >=20
> >       o shard-tglb: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sh=
ard-tglb6/igt@gem_ctx_param@set-priority-not-supported.html> (fdo#109314 <h=
ttps://bugs.freedesktop.org/show_bug.cgi?id=3D109314>)
> >   *
> >=20
> >     igt@gem_exec_fair@basic-none-solo@rcs0:
> >=20
> >       o shard-apl: PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-ap=
l2/igt@gem_exec_fair@basic-none-solo@rcs0.html> -> FAIL <https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-apl6/igt@gem_exec_fair@basi=
c-none-solo@rcs0.html> (i915#2842 <https://gitlab.freedesktop.org/drm/intel=
/issues/2842>)
> >   *
> >=20
> >     igt@gem_exec_fair@basic-pace@vcs0:
> >=20
> >       o shard-iclb: PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-ic=
lb7/igt@gem_exec_fair@basic-pace@vcs0.html> -> FAIL <https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_111491v1/shard-iclb7/igt@gem_exec_fair@basic-p=
ace@vcs0.html> (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/=
2842>)
> >   *
> >=20
> >     igt@gem_lmem_swapping@heavy-verify-random-ccs:
> >=20
> >       o shard-tglb: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sh=
ard-tglb6/igt@gem_lmem_swapping@heavy-verify-random-ccs.html> (i915#4613 <h=
ttps://gitlab.freedesktop.org/drm/intel/issues/4613>) +1 similar issue
> >   *
> >=20
> >     igt@gen3_render_mixed_blits:
> >=20
> >       o shard-tglb: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sh=
ard-tglb6/igt@gen3_render_mixed_blits.html> (fdo#109289 <https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109289>)
> >   *
> >=20
> >     igt@gen9_exec_parse@bb-oversize:
> >=20
> >       o shard-tglb: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sh=
ard-tglb6/igt@gen9_exec_parse@bb-oversize.html> (i915#2527 <https://gitlab.=
freedesktop.org/drm/intel/issues/2527> / i915#2856 <https://gitlab.freedesk=
top.org/drm/intel/issues/2856>)
> >   *
> >=20
> >     igt@i915_selftest@live@gt_heartbeat:
> >=20
> >       o shard-skl: PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-sk=
l9/igt@i915_selftest@live@gt_heartbeat.html> -> DMESG-FAIL <https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-skl10/igt@i915_selftest@=
live@gt_heartbeat.html> (i915#5334 <https://gitlab.freedesktop.org/drm/inte=
l/issues/5334>)
> >   *
> >=20
> >     igt@i915_selftest@live@hangcheck:
> >=20
> >       o shard-tglb: PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-tg=
lb7/igt@i915_selftest@live@hangcheck.html> -> DMESG-WARN <https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-tglb3/igt@i915_selftest@li=
ve@hangcheck.html> (i915#5591 <https://gitlab.freedesktop.org/drm/intel/iss=
ues/5591>)
> >   *
> >=20
> >     igt@i915_suspend@debugfs-reader:
> >=20
> >       o shard-skl: NOTRUN -> INCOMPLETE
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sh=
ard-skl6/igt@i915_suspend@debugfs-reader.html> (i915#7233 <https://gitlab.f=
reedesktop.org/drm/intel/issues/7233>)
> >   *
> >=20
> >     igt@kms_big_fb@4-tiled-addfb:
> >=20
> >       o shard-tglb: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sh=
ard-tglb6/igt@kms_big_fb@4-tiled-addfb.html> (i915#5286 <https://gitlab.fre=
edesktop.org/drm/intel/issues/5286>)
> >   *
> >=20
> >     igt@kms_big_fb@yf-tiled-8bpp-rotate-270:
> >=20
> >       o shard-tglb: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sh=
ard-tglb6/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html> (fdo#111615 <https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D111615>) +1 similar issue
> >   *
> >=20
> >     igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:
> >=20
> >       o shard-skl: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sh=
ard-skl4/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html> (fdo=
#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=3D109271> / i915#3886=
 <https://gitlab.freedesktop.org/drm/intel/issues/3886>)
> >   *
> >=20
> >     igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_gen12_mc_ccs:
> >=20
> >       o shard-tglb: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sh=
ard-tglb6/igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_gen12_mc_ccs.html> (i91=
5#3689 <https://gitlab.freedesktop.org/drm/intel/issues/3689>)
> >   *
> >=20
> >     igt@kms_ccs@pipe-d-missing-ccs-buffer-yf_tiled_ccs:
> >=20
> >       o shard-tglb: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sh=
ard-tglb6/igt@kms_ccs@pipe-d-missing-ccs-buffer-yf_tiled_ccs.html> (fdo#111=
615 <https://bugs.freedesktop.org/show_bug.cgi?id=3D111615> / i915#3689 <ht=
tps://gitlab.freedesktop.org/drm/intel/issues/3689>) +2 similar issues
> >   *
> >=20
> >     igt@kms_chamelium@dp-edid-resolution-list:
> >=20
> >       o shard-tglb: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sh=
ard-tglb6/igt@kms_chamelium@dp-edid-resolution-list.html> (fdo#109284 <http=
s://bugs.freedesktop.org/show_bug.cgi?id=3D109284> / fdo#111827 <https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D111827>) +1 similar issue
> >   *
> >=20
> >     igt@kms_cursor_crc@cursor-random-512x512:
> >=20
> >       o shard-tglb: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sh=
ard-tglb5/igt@kms_cursor_crc@cursor-random-512x512.html> (i915#3359 <https:=
//gitlab.freedesktop.org/drm/intel/issues/3359>)
> >   *
> >=20
> >     igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-siz=
e:
> >=20
> >       o shard-skl: NOTRUN -> FAIL
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sh=
ard-skl4/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-si=
ze.html> (i915#2346 <https://gitlab.freedesktop.org/drm/intel/issues/2346>)=
 +1 similar issue
> >   *
> >=20
> >     igt@kms_flip@2x-plain-flip-interruptible:
> >=20
> >       o shard-tglb: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sh=
ard-tglb6/igt@kms_flip@2x-plain-flip-interruptible.html> (fdo#109274 <https=
://bugs.freedesktop.org/show_bug.cgi?id=3D109274> / fdo#111825 <https://bug=
s.freedesktop.org/show_bug.cgi?id=3D111825> / i915#3637 <https://gitlab.fre=
edesktop.org/drm/intel/issues/3637>) +1 similar issue
> >   *
> >=20
> >     igt@kms_flip@flip-vs-suspend@a-dp1:
> >=20
> >       o shard-apl: PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-ap=
l3/igt@kms_flip@flip-vs-suspend@a-dp1.html> -> DMESG-WARN <https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-apl6/igt@kms_flip@flip-vs=
-suspend@a-dp1.html> (i915#180 <https://gitlab.freedesktop.org/drm/intel/is=
sues/180> / i915#1982 <https://gitlab.freedesktop.org/drm/intel/issues/1982=
>)
> >   *
> >=20
> >     igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downsc=
aling@pipe-a-default-mode:
> >=20
> >       o shard-iclb: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sh=
ard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-down=
scaling@pipe-a-default-mode.html> (i915#6375 <https://gitlab.freedesktop.or=
g/drm/intel/issues/6375>)
> >   *
> >=20
> >     igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscali=
ng@pipe-a-default-mode:
> >=20
> >       o shard-iclb: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sh=
ard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downsca=
ling@pipe-a-default-mode.html> (i915#2672 <https://gitlab.freedesktop.org/d=
rm/intel/issues/2672>) +1 similar issue
> >   *
> >=20
> >     igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling=
@pipe-a-valid-mode:
> >=20
> >       o shard-tglb: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sh=
ard-tglb5/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscali=
ng@pipe-a-valid-mode.html> (i915#2587 <https://gitlab.freedesktop.org/drm/i=
ntel/issues/2587> / i915#2672 <https://gitlab.freedesktop.org/drm/intel/iss=
ues/2672>) +1 similar issue
> >   *
> >=20
> >     igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling=
@pipe-a-valid-mode:
> >=20
> >       o shard-iclb: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sh=
ard-iclb6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscali=
ng@pipe-a-valid-mode.html> (i915#2587 <https://gitlab.freedesktop.org/drm/i=
ntel/issues/2587> / i915#2672 <https://gitlab.freedesktop.org/drm/intel/iss=
ues/2672>) +4 similar issues
> >   *
> >=20
> >     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-u=
pscaling@pipe-a-default-mode:
> >=20
> >       o shard-iclb: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sh=
ard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs=
-upscaling@pipe-a-default-mode.html> (i915#2672 <https://gitlab.freedesktop=
.org/drm/intel/issues/2672> / i915#3555 <https://gitlab.freedesktop.org/drm=
/intel/issues/3555>) +1 similar issue
> >   *
> >=20
> >     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap=
-wc:
> >=20
> >       o shard-tglb: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sh=
ard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mm=
ap-wc.html> (i915#6497 <https://gitlab.freedesktop.org/drm/intel/issues/649=
7>) +1 similar issue
> >   *
> >=20
> >     igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap=
-cpu:
> >=20
> >       o shard-tglb: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sh=
ard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mm=
ap-cpu.html> (fdo#109280 <https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9280> / fdo#111825 <https://bugs.freedesktop.org/show_bug.cgi?id=3D111825>)
> >   *
> >=20
> >     igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc:
> >=20
> >       o shard-skl: PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-sk=
l7/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc.html> -> DMESG-WARN=
 <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-skl6/ig=
t@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc.html> (i915#1982 <https:=
//gitlab.freedesktop.org/drm/intel/issues/1982>)
> >   *
> >=20
> >     igt@kms_plane_alpha_blend@alpha-basic@pipe-a-edp-1:
> >=20
> >       o shard-skl: NOTRUN -> FAIL
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sh=
ard-skl4/igt@kms_plane_alpha_blend@alpha-basic@pipe-a-edp-1.html> (i915#457=
3 <https://gitlab.freedesktop.org/drm/intel/issues/4573>) +2 similar issues
> >   *
> >=20
> >     igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@=
pipe-b-edp-1:
> >=20
> >       o shard-iclb: PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-ic=
lb1/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe=
-b-edp-1.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
111491v1/shard-iclb2/igt@kms_plane_scaling@plane-downscale-with-pixel-forma=
t-factor-0-5@pipe-b-edp-1.html> (i915#5176 <https://gitlab.freedesktop.org/=
drm/intel/issues/5176>) +2 similar issues
> >   *
> >=20
> >     igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0=
-5@pipe-a-edp-1:
> >=20
> >       o shard-iclb: PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-ic=
lb1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@p=
ipe-a-edp-1.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_111491v1/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-do=
wnscale-factor-0-5@pipe-a-edp-1.html> (i915#5235 <https://gitlab.freedeskto=
p.org/drm/intel/issues/5235>) +5 similar issues
> >   *
> >=20
> >     igt@kms_psr@psr2_cursor_mmap_gtt:
> >=20
> >       o shard-tglb: NOTRUN -> FAIL
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sh=
ard-tglb5/igt@kms_psr@psr2_cursor_mmap_gtt.html> (i915#132 <https://gitlab.=
freedesktop.org/drm/intel/issues/132> / i915#3467 <https://gitlab.freedeskt=
op.org/drm/intel/issues/3467>)
> >   *
> >=20
> >     igt@kms_psr@psr2_sprite_plane_move:
> >=20
> >       o shard-iclb: PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-ic=
lb2/igt@kms_psr@psr2_sprite_plane_move.html> -> SKIP <https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_111491v1/shard-iclb7/igt@kms_psr@psr2_sprite_=
plane_move.html> (fdo#109441 <https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109441>) +2 similar issues
> >   *
> >=20
> >     igt@kms_vrr@flipline:
> >=20
> >       o shard-skl: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sh=
ard-skl4/igt@kms_vrr@flipline.html> (fdo#109271 <https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109271>) +41 similar issues
> >   *
> >=20
> >     igt@kms_writeback@writeback-check-output:
> >=20
> >       o shard-skl: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sh=
ard-skl6/igt@kms_writeback@writeback-check-output.html> (fdo#109271 <https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109271> / i915#2437 <https://gitla=
b.freedesktop.org/drm/intel/issues/2437>)
> >   *
> >=20
> >     igt@sysfs_clients@recycle-many:
> >=20
> >       o shard-tglb: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sh=
ard-tglb6/igt@sysfs_clients@recycle-many.html> (i915#2994 <https://gitlab.f=
reedesktop.org/drm/intel/issues/2994>)
> >=20
> >=20
> >         Possible fixes
> >=20
> >   *
> >=20
> >     igt@fbdev@unaligned-read:
> >=20
> >       o {shard-rkl}: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rk=
l-1/igt@fbdev@unaligned-read.html> (i915#2582 <https://gitlab.freedesktop.o=
rg/drm/intel/issues/2582>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_111491v1/shard-rkl-6/igt@fbdev@unaligned-read.html>
> >   *
> >=20
> >     igt@gem_ctx_exec@basic-nohangcheck:
> >=20
> >       o shard-tglb: FAIL
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-tg=
lb3/igt@gem_ctx_exec@basic-nohangcheck.html> (i915#6268 <https://gitlab.fre=
edesktop.org/drm/intel/issues/6268>) -> PASS <https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_111491v1/shard-tglb2/igt@gem_ctx_exec@basic-nohangche=
ck.html>
> >   *
> >=20
> >     igt@gem_eio@in-flight-contexts-10ms:
> >=20
> >       o {shard-rkl}: TIMEOUT
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rk=
l-3/igt@gem_eio@in-flight-contexts-10ms.html> (i915#3063 <https://gitlab.fr=
eedesktop.org/drm/intel/issues/3063>) -> PASS <https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111491v1/shard-rkl-2/igt@gem_eio@in-flight-contexts-=
10ms.html>
> >   *
> >=20
> >     igt@gem_eio@in-flight-suspend:
> >=20
> >       o {shard-rkl}: FAIL
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rk=
l-4/igt@gem_eio@in-flight-suspend.html> (fdo#103375 <https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D103375>) -> PASS <https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_111491v1/shard-rkl-6/igt@gem_eio@in-flight-suspend.html>=
 +1 similar issue
> >   *
> >=20
> >     igt@gem_eio@suspend:
> >=20
> >       o {shard-rkl}: FAIL
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rk=
l-3/igt@gem_eio@suspend.html> (i915#7052 <https://gitlab.freedesktop.org/dr=
m/intel/issues/7052>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_111491v1/shard-rkl-2/igt@gem_eio@suspend.html>
> >   *
> >=20
> >     igt@gem_exec_balancer@parallel-keep-submit-fence:
> >=20
> >       o shard-iclb: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-ic=
lb8/igt@gem_exec_balancer@parallel-keep-submit-fence.html> (i915#4525 <http=
s://gitlab.freedesktop.org/drm/intel/issues/4525>) -> PASS <https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-iclb1/igt@gem_exec_balan=
cer@parallel-keep-submit-fence.html>
> >   *
> >=20
> >     igt@gem_exec_fair@basic-none-share@rcs0:
> >=20
> >       o {shard-rkl}: FAIL
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rk=
l-6/igt@gem_exec_fair@basic-none-share@rcs0.html> (i915#2842 <https://gitla=
b.freedesktop.org/drm/intel/issues/2842>) -> PASS <https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_111491v1/shard-rkl-5/igt@gem_exec_fair@basic-non=
e-share@rcs0.html>
> >   *
> >=20
> >     igt@gem_exec_reloc@basic-wc-read-noreloc:
> >=20
> >       o {shard-rkl}: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rk=
l-1/igt@gem_exec_reloc@basic-wc-read-noreloc.html> (i915#3281 <https://gitl=
ab.freedesktop.org/drm/intel/issues/3281>) -> PASS <https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_111491v1/shard-rkl-5/igt@gem_exec_reloc@basic-w=
c-read-noreloc.html> +18 similar issues
> >   *
> >=20
> >     igt@gem_pread@snoop:
> >=20
> >       o {shard-rkl}: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rk=
l-6/igt@gem_pread@snoop.html> (i915#3282 <https://gitlab.freedesktop.org/dr=
m/intel/issues/3282>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_111491v1/shard-rkl-5/igt@gem_pread@snoop.html> +3 similar issues
> >   *
> >=20
> >     igt@gen9_exec_parse@bb-chained:
> >=20
> >       o {shard-rkl}: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rk=
l-6/igt@gen9_exec_parse@bb-chained.html> (i915#2527 <https://gitlab.freedes=
ktop.org/drm/intel/issues/2527>) -> PASS <https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_111491v1/shard-rkl-5/igt@gen9_exec_parse@bb-chained.html>=
 +4 similar issues
> >   *
> >=20
> >     igt@i915_pm_dc@dc6-dpms:
> >=20
> >       o {shard-rkl}: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rk=
l-5/igt@i915_pm_dc@dc6-dpms.html> (i915#3361 <https://gitlab.freedesktop.or=
g/drm/intel/issues/3361>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_111491v1/shard-rkl-6/igt@i915_pm_dc@dc6-dpms.html>
> >   *
> >=20
> >     igt@i915_pm_dc@dc6-psr:
> >=20
> >       o {shard-rkl}: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rk=
l-1/igt@i915_pm_dc@dc6-psr.html> (i915#658 <https://gitlab.freedesktop.org/=
drm/intel/issues/658>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_111491v1/shard-rkl-6/igt@i915_pm_dc@dc6-psr.html>
> >   *
> >=20
> >     igt@i915_pm_sseu@full-enable:
> >=20
> >       o {shard-rkl}: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rk=
l-1/igt@i915_pm_sseu@full-enable.html> (i915#4387 <https://gitlab.freedeskt=
op.org/drm/intel/issues/4387>) -> PASS <https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_111491v1/shard-rkl-5/igt@i915_pm_sseu@full-enable.html>
> >   *
> >=20
> >     igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1:
> >=20
> >       o shard-skl: FAIL
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-sk=
l1/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html> (i915#2=
521 <https://gitlab.freedesktop.org/drm/intel/issues/2521>) -> PASS <https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-skl9/igt@kms_as=
ync_flips@alternate-sync-async-flip@pipe-b-edp-1.html>
> >   *
> >=20
> >     igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs:
> >=20
> >       o {shard-rkl}: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rk=
l-4/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs.html> (i915#18=
45 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / i915#4098 <http=
s://gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS <https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-rkl-6/igt@kms_ccs@pipe-a=
-bad-pixel-format-y_tiled_gen12_rc_ccs.html> +22 similar issues
> >   *
> >=20
> >     igt@kms_cursor_crc@cursor-rapid-movement-64x21@pipe-a-edp-1:
> >=20
> >       o shard-skl: DMESG-WARN
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-sk=
l6/igt@kms_cursor_crc@cursor-rapid-movement-64x21@pipe-a-edp-1.html> (i915#=
1982 <https://gitlab.freedesktop.org/drm/intel/issues/1982>) -> PASS <https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-skl1/igt@kms_c=
ursor_crc@cursor-rapid-movement-64x21@pipe-a-edp-1.html>
> >   *
> >=20
> >     igt@kms_cursor_legacy@cursor-vs-flip@toggle:
> >=20
> >       o shard-skl: FAIL
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-sk=
l9/igt@kms_cursor_legacy@cursor-vs-flip@toggle.html> (i915#5072 <https://gi=
tlab.freedesktop.org/drm/intel/issues/5072>) -> PASS <https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_111491v1/shard-skl10/igt@kms_cursor_legacy@cu=
rsor-vs-flip@toggle.html>
> >   *
> >=20
> >     igt@kms_cursor_legacy@flip-vs-cursor@varying-size:
> >=20
> >       o shard-iclb: FAIL
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-ic=
lb7/igt@kms_cursor_legacy@flip-vs-cursor@varying-size.html> (i915#2346 <htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2346>) -> PASS <https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-iclb8/igt@kms_cursor_le=
gacy@flip-vs-cursor@varying-size.html> +2 similar issues
> >   *
> >=20
> >     igt@kms_flip@flip-vs-expired-vblank@c-edp1:
> >=20
> >       o shard-skl: FAIL
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-sk=
l9/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html> (i915#79 <https://gitla=
b.freedesktop.org/drm/intel/issues/79>) -> PASS <https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_111491v1/shard-skl10/igt@kms_flip@flip-vs-expired-=
vblank@c-edp1.html>
> >   *
> >=20
> >     igt@kms_flip@plain-flip-ts-check@b-edp1:
> >=20
> >       o shard-skl: FAIL
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-sk=
l9/igt@kms_flip@plain-flip-ts-check@b-edp1.html> (i915#2122 <https://gitlab=
.freedesktop.org/drm/intel/issues/2122>) -> PASS <https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_111491v1/shard-skl10/igt@kms_flip@plain-flip-ts-c=
heck@b-edp1.html> +1 similar issue
> >   *
> >=20
> >     igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
> >=20
> >       o {shard-rkl}: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rk=
l-4/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html> (i915#1849 <=
https://gitlab.freedesktop.org/drm/intel/issues/1849> / i915#4098 <https://=
gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS <https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_111491v1/shard-rkl-6/igt@kms_frontbuffer_tr=
acking@fbc-shrfb-scaledprimary.html> +20 similar issues
> >   *
> >=20
> >     igt@kms_plane@plane-panning-bottom-right@pipe-a-planes:
> >=20
> >       o {shard-rkl}: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rk=
l-1/igt@kms_plane@plane-panning-bottom-right@pipe-a-planes.html> (i915#3558=
 <https://gitlab.freedesktop.org/drm/intel/issues/3558>) -> PASS <https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-rkl-6/igt@kms_plan=
e@plane-panning-bottom-right@pipe-a-planes.html> +1 similar issue
> >   *
> >=20
> >     igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pip=
e-b-edp-1:
> >=20
> >       o shard-iclb: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-ic=
lb2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-=
edp-1.html> (i915#5235 <https://gitlab.freedesktop.org/drm/intel/issues/523=
5>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sh=
ard-iclb8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@p=
ipe-b-edp-1.html> +2 similar issues
> >   *
> >=20
> >     igt@kms_psr@psr2_sprite_mmap_gtt:
> >=20
> >       o shard-iclb: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-ic=
lb1/igt@kms_psr@psr2_sprite_mmap_gtt.html> (fdo#109441 <https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109441>) -> PASS <https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_111491v1/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt=
.html> +3 similar issues
> >   *
> >=20
> >     igt@kms_psr@sprite_mmap_gtt:
> >=20
> >       o {shard-rkl}: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rk=
l-5/igt@kms_psr@sprite_mmap_gtt.html> (i915#1072 <https://gitlab.freedeskto=
p.org/drm/intel/issues/1072>) -> PASS <https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_111491v1/shard-rkl-6/igt@kms_psr@sprite_mmap_gtt.html> +3 si=
milar issues
> >   *
> >=20
> >     igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
> >=20
> >       o {shard-rkl}: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rk=
l-4/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html> (i915#546=
1 <https://gitlab.freedesktop.org/drm/intel/issues/5461>) -> PASS <https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-rkl-6/igt@kms_psr=
_stress_test@invalidate-primary-flip-overlay.html>
> >   *
> >=20
> >     igt@perf@blocking:
> >=20
> >       o shard-skl: FAIL
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-sk=
l6/igt@perf@blocking.html> (i915#1542 <https://gitlab.freedesktop.org/drm/i=
ntel/issues/1542>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_111491v1/shard-skl6/igt@perf@blocking.html>
> >   *
> >=20
> >     igt@perf@mi-rpc:
> >=20
> >       o {shard-rkl}: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rk=
l-6/igt@perf@mi-rpc.html> (i915#2434 <https://gitlab.freedesktop.org/drm/in=
tel/issues/2434>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_111491v1/shard-rkl-5/igt@perf@mi-rpc.html>
> >   *
> >=20
> >     igt@perf_pmu@enable-race@rcs0:
> >=20
> >       o shard-tglb: INCOMPLETE
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-tg=
lb7/igt@perf_pmu@enable-race@rcs0.html> (i915#6453 <https://gitlab.freedesk=
top.org/drm/intel/issues/6453>) -> PASS <https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_111491v1/shard-tglb6/igt@perf_pmu@enable-race@rcs0.html>
> >   *
> >=20
> >     igt@prime_vgem@coherency-gtt:
> >=20
> >       o {shard-rkl}: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rk=
l-4/igt@prime_vgem@coherency-gtt.html> (fdo#109295 <https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109295> / fdo#111656 <https://bugs.freedesktop.org/=
show_bug.cgi?id=3D111656> / i915#3708 <https://gitlab.freedesktop.org/drm/i=
ntel/issues/3708>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_111491v1/shard-rkl-5/igt@prime_vgem@coherency-gtt.html>
> >   *
> >=20
> >     igt@sysfs_heartbeat_interval@precise@rcs0:
> >=20
> >       o {shard-dg1}: FAIL
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-dg=
1-15/igt@sysfs_heartbeat_interval@precise@rcs0.html> (i915#1755 <https://gi=
tlab.freedesktop.org/drm/intel/issues/1755>) -> PASS <https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_111491v1/shard-dg1-19/igt@sysfs_heartbeat_int=
erval@precise@rcs0.html> +1 similar issue
> >=20
> >=20
> >         Warnings
> >=20
> >   *
> >=20
> >     igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
> >=20
> >       o shard-iclb: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-ic=
lb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html> (i9=
15#2920 <https://gitlab.freedesktop.org/drm/intel/issues/2920>) -> SKIP <ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-iclb1/igt@k=
ms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html> (i915#658 <h=
ttps://gitlab.freedesktop.org/drm/intel/issues/658>)
> >   *
> >=20
> >     igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
> >=20
> >       o shard-iclb: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-ic=
lb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html> (i915#2920 <ht=
tps://gitlab.freedesktop.org/drm/intel/issues/2920>) -> SKIP <https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-iclb7/igt@kms_psr2_sf@=
overlay-primary-update-sf-dmg-area.html> (fdo#111068 <https://bugs.freedesk=
top.org/show_bug.cgi?id=3D111068> / i915#658 <https://gitlab.freedesktop.or=
g/drm/intel/issues/658>)
> >   *
> >=20
> >     igt@kms_psr2_sf@plane-move-sf-dmg-area:
> >=20
> >       o shard-iclb: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-ic=
lb1/igt@kms_psr2_sf@plane-move-sf-dmg-area.html> (fdo#111068 <https://bugs.=
freedesktop.org/show_bug.cgi?id=3D111068> / i915#658 <https://gitlab.freede=
sktop.org/drm/intel/issues/658>) -> SKIP <https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_111491v1/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-ar=
ea.html> (i915#2920 <https://gitlab.freedesktop.org/drm/intel/issues/2920>)
> >   *
> >=20
> >     igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
> >=20
> >       o shard-iclb: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-ic=
lb1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html> (i915#658=
 <https://gitlab.freedesktop.org/drm/intel/issues/658>) -> SKIP <https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-iclb2/igt@kms_psr2_=
sf@primary-plane-update-sf-dmg-area-big-fb.html> (i915#2920 <https://gitlab=
.freedesktop.org/drm/intel/issues/2920>)
> >   *
> >=20
> >     igt@runner@aborted:
> >=20
> >       o shard-apl: (FAIL
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-ap=
l2/igt@runner@aborted.html>, FAIL <https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12456/shard-apl3/igt@runner@aborted.html>, FAIL <https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_12456/shard-apl1/igt@runner@aborted.html>) (f=
do#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=3D109271> / i915#30=
02 <https://gitlab.freedesktop.org/drm/intel/issues/3002> / i915#4312 <http=
s://gitlab.freedesktop.org/drm/intel/issues/4312>) -> (FAIL <https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-apl8/igt@runner@aborted=
.html>, FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/s=
hard-apl6/igt@runner@aborted.html>, FAIL <https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_111491v1/shard-apl6/igt@runner@aborted.html>, FAIL <https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-apl1/igt@runne=
r@aborted.html>) (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271> / i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>=
 / i915#3002 <https://gitlab.freedesktop.org/drm/intel/issues/3002> / i915#=
4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>)
> >=20
> > {name}: This element is suppressed. This means it is ignored when compu=
ting
> > the status of the difference (SUCCESS, WARNING, or FAILURE).
> >=20
> >=20
> >     Build changes
> >=20
> >   * Linux: CI_DRM_12456 -> Patchwork_111491v1
> >=20
> > CI-20190529: 20190529
> > CI_DRM_12456: 7a3c5315507ed0f4a9b0aa07ce6df1b3d28ebc35 @
> > git://anongit.freedesktop.org/gfx-ci/linux
> > IGT_7076: 888725538e0d6bbb94bbbb1ac278d4afcbbbdad0 @
> > https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> > Patchwork_111491v1: 7a3c5315507ed0f4a9b0aa07ce6df1b3d28ebc35 @
> > git://anongit.freedesktop.org/gfx-ci/linux
> > piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
> > git://anongit.freedesktop.org/piglit
> >=20
>=20
> --=20
> Wayne Boyer
> Graphics Software Engineer
> AXG SCSS Platform Enablement

--=20
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
