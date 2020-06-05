Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B99641EEF93
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jun 2020 04:40:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22C436E4F9;
	Fri,  5 Jun 2020 02:40:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 479A06E4B5
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jun 2020 02:40:47 +0000 (UTC)
IronPort-SDR: 5DMsWA7/oPik9mcsUM4aQhiz7wxFssysZ5+qBW5OtyP4f2QLt7jc1zwfLlXgEkwJpb0Do0s49N
 G3JDcwJ1lKgA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2020 19:40:46 -0700
IronPort-SDR: 3/zODnlU9RpwHIUnqqnrtOg4lUSMNElWRVAG6yzDuehO1F4JGu0cdCPbv0ew6X5A9d2fZPVZMT
 KYX7AEQYXYzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,474,1583222400"; d="scan'208";a="304920061"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga002.fm.intel.com with ESMTP; 04 Jun 2020 19:40:46 -0700
Received: from fmsmsx158.amr.corp.intel.com (10.18.116.75) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 4 Jun 2020 19:40:45 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.9]) by
 fmsmsx158.amr.corp.intel.com ([169.254.15.55]) with mapi id 14.03.0439.000;
 Thu, 4 Jun 2020 19:40:45 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJtL2k5MTU6IEFkZCBwc3Jf?=
 =?utf-8?Q?safest=5Fparams?=
Thread-Index: AQHWL4mkKnBJ3oLqB02u6hQO84sdlqjJ3BIA
Date: Fri, 5 Jun 2020 02:40:45 +0000
Message-ID: <d6aa1618aa9f7be36468286a1feeb2f79443ffbf.camel@intel.com>
References: <20200520212756.354623-1-jose.souza@intel.com>
 <159007707803.4442.11836084606547528845@emeril.freedesktop.org>
In-Reply-To: <159007707803.4442.11836084606547528845@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.251.138.209]
Content-ID: <579D0CE448D60648B029C355A9458804@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_psr=5Fsafest=5Fparams?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 2020-05-21 at 16:04 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Add psr_safest_params
> URL   : https://patchwork.freedesktop.org/series/77491/
> State : success

Pushed to dinq, thanks for the review GG.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_8515_full -> Patchwork_17738_full
> ====================================================
> 
> Summary
> -------
> 
>   **WARNING**
> 
>   Minor unknown changes coming with Patchwork_17738_full need to be verified
>   manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_17738_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_17738_full:
> 
> ### IGT changes ###
> 
> #### Warnings ####
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-iclb:         [SKIP][1] ([i915#588]) -> [SKIP][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17738/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_8515_full and Patchwork_17738_full:
> 
> ### New IGT tests (74) ###
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-0:
>     - Statuses : 7 pass(s)
>     - Exec time: [1.51, 7.43] s
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-180:
>     - Statuses : 7 pass(s)
>     - Exec time: [1.61, 7.23] s
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-270:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.01, 0.19] s
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-90:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.02, 0.19] s
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-0:
>     - Statuses : 7 pass(s)
>     - Exec time: [1.65, 11.03] s
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-180:
>     - Statuses : 7 pass(s)
>     - Exec time: [1.63, 10.83] s
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-270:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.01, 0.20] s
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-90:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.01, 0.19] s
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-0:
>     - Statuses : 6 pass(s)
>     - Exec time: [1.91, 10.99] s
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-180:
>     - Statuses : 7 pass(s)
>     - Exec time: [1.92, 10.95] s
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-270:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.04, 0.78] s
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-90:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.06, 0.85] s
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-0:
>     - Statuses : 7 pass(s)
>     - Exec time: [1.46, 6.00] s
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-180:
>     - Statuses : 7 pass(s)
>     - Exec time: [1.48, 5.51] s
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-270:
>     - Statuses : 6 skip(s)
>     - Exec time: [0.02, 0.21] s
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-90:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.02, 0.30] s
> 
>   * igt@kms_big_fb@linear-addfb:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-0:
>     - Statuses : 7 pass(s)
>     - Exec time: [1.46, 7.09] s
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-180:
>     - Statuses : 7 pass(s)
>     - Exec time: [1.58, 7.07] s
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.01, 0.19] s
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
>     - Statuses : 6 skip(s)
>     - Exec time: [0.01, 0.20] s
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
>     - Statuses : 7 pass(s)
>     - Exec time: [1.56, 10.64] s
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
>     - Statuses : 7 pass(s)
>     - Exec time: [1.59, 10.58] s
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.01, 0.21] s
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-90:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.02, 0.21] s
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-0:
>     - Statuses : 7 pass(s)
>     - Exec time: [1.87, 11.61] s
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
>     - Statuses : 7 pass(s)
>     - Exec time: [1.97, 10.64] s
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-270:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.04, 0.87] s
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
>     - Statuses : 6 skip(s)
>     - Exec time: [0.05, 0.76] s
> 
>   * igt@kms_big_fb@x-tiled-8bpp-rotate-0:
>     - Statuses : 7 pass(s)
>     - Exec time: [1.28, 5.08] s
> 
>   * igt@kms_big_fb@x-tiled-8bpp-rotate-180:
>     - Statuses : 7 pass(s)
>     - Exec time: [1.40, 5.49] s
> 
>   * igt@kms_big_fb@x-tiled-8bpp-rotate-270:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.02, 0.29] s
> 
>   * igt@kms_big_fb@x-tiled-8bpp-rotate-90:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.03, 0.42] s
> 
>   * igt@kms_big_fb@x-tiled-addfb:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@kms_big_fb@x-tiled-addfb-size-offset-overflow:
>     - Statuses : 4 pass(s) 3 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_big_fb@x-tiled-addfb-size-overflow:
>     - Statuses : 6 pass(s) 1 skip(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@kms_big_fb@y-tiled-16bpp-rotate-0:
>     - Statuses : 5 pass(s) 1 skip(s)
>     - Exec time: [0.0, 7.18] s
> 
>   * igt@kms_big_fb@y-tiled-16bpp-rotate-180:
>     - Statuses : 6 pass(s) 1 skip(s)
>     - Exec time: [0.0, 7.01] s
> 
>   * igt@kms_big_fb@y-tiled-16bpp-rotate-270:
>     - Statuses : 2 pass(s) 5 skip(s)
>     - Exec time: [0.0, 1.64] s
> 
>   * igt@kms_big_fb@y-tiled-16bpp-rotate-90:
>     - Statuses : 2 pass(s) 5 skip(s)
>     - Exec time: [0.0, 1.90] s
> 
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
>     - Statuses : 6 pass(s) 1 skip(s)
>     - Exec time: [0.0, 10.76] s
> 
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-180:
>     - Statuses : 6 pass(s) 1 skip(s)
>     - Exec time: [0.0, 11.56] s
> 
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-270:
>     - Statuses : 6 pass(s) 1 skip(s)
>     - Exec time: [0.0, 11.24] s
> 
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-90:
>     - Statuses : 6 pass(s) 1 skip(s)
>     - Exec time: [0.0, 10.58] s
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
>     - Statuses : 5 pass(s) 2 skip(s)
>     - Exec time: [0.0, 7.04] s
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
>     - Statuses : 5 pass(s) 2 skip(s)
>     - Exec time: [0.0, 7.79] s
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.0, 0.99] s
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-90:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.0, 0.96] s
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-0:
>     - Statuses : 5 pass(s) 1 skip(s)
>     - Exec time: [0.0, 2.45] s
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
>     - Statuses : 6 pass(s) 1 skip(s)
>     - Exec time: [0.0, 5.08] s
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.0, 0.34] s
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.0, 0.42] s
> 
>   * igt@kms_big_fb@y-tiled-addfb:
>     - Statuses : 6 pass(s) 1 skip(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
>     - Statuses : 4 pass(s) 3 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_big_fb@y-tiled-addfb-size-overflow:
>     - Statuses : 6 pass(s) 1 skip(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
>     - Statuses : 5 pass(s) 2 skip(s)
>     - Exec time: [0.0, 7.47] s
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
>     - Statuses : 5 pass(s) 2 skip(s)
>     - Exec time: [0.0, 7.14] s
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
>     - Statuses : 1 pass(s) 5 skip(s)
>     - Exec time: [0.0, 1.85] s
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-90:
>     - Statuses : 1 pass(s) 5 skip(s)
>     - Exec time: [0.0, 1.68] s
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-0:
>     - Statuses : 5 pass(s) 2 skip(s)
>     - Exec time: [0.0, 11.56] s
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
>     - Statuses : 5 pass(s) 2 skip(s)
>     - Exec time: [0.0, 11.05] s
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
>     - Statuses : 5 pass(s) 2 skip(s)
>     - Exec time: [0.0, 13.39] s
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
>     - Statuses : 5 pass(s) 2 skip(s)
>     - Exec time: [0.0, 11.89] s
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-180:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.0, 0.05] s
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-270:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.0, 0.05] s
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-0:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-180:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-270:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_big_fb@yf-tiled-addfb:
>     - Statuses : 5 pass(s) 2 skip(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
>     - Statuses : 3 pass(s) 4 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
>     - Statuses : 5 pass(s) 2 skip(s)
>     - Exec time: [0.0, 0.00] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_17738_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#1436] / [i915#716])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-apl3/igt@gen9_exec_parse@allowed-all.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17738/shard-apl6/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@i915_selftest@live@execlists:
>     - shard-skl:          [PASS][5] -> [INCOMPLETE][6] ([i915#1795] / [i915#1874])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-skl2/igt@i915_selftest@live@execlists.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17738/shard-skl1/igt@i915_selftest@live@execlists.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-skl:          [PASS][7] -> [FAIL][8] ([i915#1188]) +1 similar issue
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17738/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
>     - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17738/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
>     - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180]) +1 similar issue
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17738/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
>     - shard-skl:          [PASS][13] -> [FAIL][14] ([fdo#108145] / [i915#265])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17738/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
> 
>   * igt@kms_plane_cursor@pipe-a-overlay-size-256:
>     - shard-kbl:          [PASS][15] -> [FAIL][16] ([i915#1559] / [i915#93] / [i915#95])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-kbl7/igt@kms_plane_cursor@pipe-a-overlay-size-256.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17738/shard-kbl1/igt@kms_plane_cursor@pipe-a-overlay-size-256.html
>     - shard-apl:          [PASS][17] -> [FAIL][18] ([i915#1559] / [i915#95])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-apl8/igt@kms_plane_cursor@pipe-a-overlay-size-256.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17738/shard-apl3/igt@kms_plane_cursor@pipe-a-overlay-size-256.html
> 
>   * igt@kms_psr@psr2_basic:
>     - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109441])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-iclb2/igt@kms_psr@psr2_basic.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17738/shard-iclb3/igt@kms_psr@psr2_basic.html
> 
>   * igt@kms_psr@suspend:
>     - shard-skl:          [PASS][21] -> [INCOMPLETE][22] ([i915#198])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-skl6/igt@kms_psr@suspend.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17738/shard-skl10/igt@kms_psr@suspend.html
> 
>   * igt@kms_vblank@pipe-b-accuracy-idle:
>     - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#43])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-glk6/igt@kms_vblank@pipe-b-accuracy-idle.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17738/shard-glk1/igt@kms_vblank@pipe-b-accuracy-idle.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_persistence@legacy-engines-mixed-process@render:
>     - shard-apl:          [FAIL][25] ([i915#1528]) -> [PASS][26]
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-apl8/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17738/shard-apl7/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html
> 
>   * {igt@kms_flip@flip-vs-suspend-interruptible@a-dp1}:
>     - shard-kbl:          [DMESG-WARN][27] ([i915#180]) -> [PASS][28] +2 similar issues
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17738/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>     - shard-apl:          [DMESG-WARN][29] ([i915#180]) -> [PASS][30] +6 similar issues
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17738/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * {igt@kms_flip@flip-vs-suspend-interruptible@b-edp1}:
>     - shard-skl:          [INCOMPLETE][31] ([i915#198]) -> [PASS][32]
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17738/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
> 
>   * igt@kms_flip_tiling@flip-changes-tiling-yf:
>     - shard-kbl:          [FAIL][33] ([i915#699] / [i915#93] / [i915#95]) -> [PASS][34]
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-kbl2/igt@kms_flip_tiling@flip-changes-tiling-yf.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17738/shard-kbl7/igt@kms_flip_tiling@flip-changes-tiling-yf.html
> 
>   * igt@kms_frontbuffer_tracking@psr-suspend:
>     - shard-skl:          [INCOMPLETE][35] ([i915#123] / [i915#69]) -> [PASS][36]
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-skl10/igt@kms_frontbuffer_tracking@psr-suspend.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17738/shard-skl6/igt@kms_frontbuffer_tracking@psr-suspend.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-skl:          [FAIL][37] ([i915#1188]) -> [PASS][38]
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17738/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [FAIL][39] ([fdo#108145] / [i915#265]) -> [PASS][40]
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17738/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_primary_render:
>     - shard-iclb:         [SKIP][41] ([fdo#109441]) -> [PASS][42]
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-iclb3/igt@kms_psr@psr2_primary_render.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17738/shard-iclb2/igt@kms_psr@psr2_primary_render.html
> 
>   * igt@kms_setmode@basic:
>     - shard-apl:          [FAIL][43] ([i915#31]) -> [PASS][44]
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-apl1/igt@kms_setmode@basic.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17738/shard-apl8/igt@kms_setmode@basic.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-tglb:         [SKIP][45] ([i915#468]) -> [FAIL][46] ([i915#454])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17738/shard-tglb5/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-iclb:         [FAIL][47] ([i915#1515]) -> [WARN][48] ([i915#1515])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17738/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-apl:          [TIMEOUT][49] ([i915#1319]) -> [FAIL][50] ([fdo#110321] / [fdo#110336])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-apl4/igt@kms_content_protection@atomic.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17738/shard-apl1/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-apl:          [FAIL][51] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][52] ([i915#1319])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-apl8/igt@kms_content_protection@atomic-dpms.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17738/shard-apl7/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@lic:
>     - shard-apl:          [FAIL][53] ([fdo#110321]) -> [DMESG-FAIL][54] ([fdo#110321])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-apl6/igt@kms_content_protection@lic.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17738/shard-apl2/igt@kms_content_protection@lic.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-apl:          [FAIL][55] ([fdo#110321]) -> [TIMEOUT][56] ([i915#1319])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-apl1/igt@kms_content_protection@srm.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17738/shard-apl8/igt@kms_content_protection@srm.html
> 
>   * igt@kms_psr2_su@page_flip:
>     - shard-iclb:         [FAIL][57] ([i915#608]) -> [SKIP][58] ([fdo#109642] / [fdo#111068])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-iclb2/igt@kms_psr2_su@page_flip.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17738/shard-iclb6/igt@kms_psr2_su@page_flip.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
>   [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
>   [i915#1515]: https://gitlab.freedesktop.org/drm/intel/issues/1515
>   [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#1559]: https://gitlab.freedesktop.org/drm/intel/issues/1559
>   [i915#1795]: https://gitlab.freedesktop.org/drm/intel/issues/1795
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1874]: https://gitlab.freedesktop.org/drm/intel/issues/1874
>   [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
>   [i915#43]: https://gitlab.freedesktop.org/drm/intel/issues/43
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
>   [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
>   [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
>   [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
>   [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
>   [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
> 
> 
> Participating hosts (11 -> 11)
> ------------------------------
> 
>   No changes in participating hosts
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_8515 -> Patchwork_17738
> 
>   CI-20190529: 20190529
>   CI_DRM_8515: 41f9bb782f3bb2f30be09683184bbeecb1fd31bb @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5665: c5e5b0ce26fc321591a6d0235c639a1e8ec3cdfa @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_17738: 7f3095d8f257cc9646071b19df534a8a5df7ed60 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17738/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
