Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8735C57821D
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jul 2022 14:21:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5435B0D27;
	Mon, 18 Jul 2022 12:21:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD8ADB0D32
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jul 2022 12:21:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658146893; x=1689682893;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=oEtBDCtwTM/XA8nk/Eie8OAg94kD2BZlRwRdIOZpDaE=;
 b=SIEITPDPZ978NY3VDSGJMNTGcbNf3Lqp8gEiHq9MaVrMyK0Lksfgpjwl
 LVT8hMdLIXezw9ByT4wrOU7meiDTVKCcIDd48VK+KqwC1y3v75user4I/
 ath4cI3WofUjJ82q+jQ73gd/myL0AlOsqyfdfg8yhD1zC7dZSVeWqjBrY
 cpVe1AEMfM2UTqSn4i6swGWwVu7WJ0T1g74ggIS3cz4NnuqsjXQuxGGNT
 ccURVKvPDUkqvDc2PiVyf7AboTKio7R/gKWSZHBrv3IHUR2IvvUHohdyY
 2PlDzjAeXD0KBevJYw0nPW4Q1wExTTcg9x4e1ApPc+xdK3GWQ2ZlBeQ/P g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10411"; a="266610830"
X-IronPort-AV: E=Sophos;i="5.92,281,1650956400"; d="scan'208";a="266610830"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2022 05:21:33 -0700
X-IronPort-AV: E=Sophos;i="5.92,281,1650956400"; d="scan'208";a="629898241"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2022 05:21:31 -0700
Date: Mon, 18 Jul 2022 15:21:27 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Ankit K Nautiyal <ankit.k.nautiyal@intel.com>,
 Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Message-ID: <YtVQR31L1YacmNgE@ideak-desk.fi.intel.com>
References: <20220617112807.1586621-1-imre.deak@intel.com>
 <165551342615.21806.15140427349061964791@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165551342615.21806.15140427349061964791@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl+=3A_Fix_HDMI_transcoder_clock_vs=2E_DDI_BUF_disabling?=
 =?utf-8?q?_order?=
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Jun 18, 2022 at 12:50:26AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/tgl+: Fix HDMI transcoder clock vs. DDI BUF disabling order
> URL   : https://patchwork.freedesktop.org/series/105290/
> State : failure

Thanks for the review, patch pushed to drm-intel-next. The failure is
unrelated, see below.

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11775_full -> Patchwork_105290v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_105290v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_105290v1_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (13 -> 10)
> ------------------------------
> 
>   Missing    (3): shard-rkl shard-dg1 shard-tglu 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_105290v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_atomic_transition@modeset-transition-nonblocking@1x-outputs:
>     - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-tglb5/igt@kms_atomic_transition@modeset-transition-nonblocking@1x-outputs.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-tglb3/igt@kms_atomic_transition@modeset-transition-nonblocking@1x-outputs.html

There is no HDMI output modesetted on the above machine, so the issue is
unrelated.

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_105290v1_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Issues hit ####
> 
>   * boot:
>     - shard-apl:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27]) -> ([PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [FAIL][51], [PASS][52]) ([i915#4386])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-apl8/boot.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-apl8/boot.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-apl8/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-apl8/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-apl7/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-apl7/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-apl7/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-apl7/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-apl6/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-apl6/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-apl6/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-apl4/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-apl4/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-apl4/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-apl3/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-apl3/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-apl3/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-apl3/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-apl2/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-apl2/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-apl2/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-apl2/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-apl1/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-apl1/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-apl1/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-apl2/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-apl1/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-apl8/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-apl1/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-apl8/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-apl8/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-apl7/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-apl7/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-apl7/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-apl6/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-apl6/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-apl6/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-apl4/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-apl4/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-apl4/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-apl4/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-apl3/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-apl3/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-apl3/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-apl3/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-apl2/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-apl2/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-apl2/boot.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-apl2/boot.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-apl1/boot.html
>     - shard-glk:          ([PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77]) -> ([PASS][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [FAIL][100], [PASS][101], [PASS][102]) ([i915#4392])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-glk9/boot.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-glk9/boot.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-glk8/boot.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-glk8/boot.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-glk8/boot.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-glk7/boot.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-glk7/boot.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-glk7/boot.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-glk6/boot.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-glk6/boot.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-glk5/boot.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-glk5/boot.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-glk5/boot.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-glk4/boot.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-glk4/boot.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-glk4/boot.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-glk3/boot.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-glk3/boot.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-glk3/boot.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-glk2/boot.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-glk2/boot.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-glk2/boot.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-glk1/boot.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-glk1/boot.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-glk1/boot.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-glk7/boot.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-glk6/boot.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-glk6/boot.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-glk6/boot.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-glk5/boot.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-glk5/boot.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-glk5/boot.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-glk4/boot.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-glk4/boot.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-glk4/boot.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-glk3/boot.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-glk3/boot.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-glk2/boot.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-glk2/boot.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-glk2/boot.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-glk1/boot.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-glk1/boot.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-glk1/boot.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-glk9/boot.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-glk9/boot.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-glk9/boot.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-glk8/boot.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-glk8/boot.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-glk8/boot.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-glk7/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_isolation@preservation-s3@vcs0:
>     - shard-kbl:          [PASS][103] -> [DMESG-WARN][104] ([i915#180]) +5 similar issues
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html
> 
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-iclb:         [PASS][105] -> [SKIP][106] ([i915#4525]) +1 similar issue
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-iclb3/igt@gem_exec_balancer@parallel-bb-first.html
> 
>   * igt@gem_exec_endless@dispatch@vcs0:
>     - shard-tglb:         [PASS][107] -> [INCOMPLETE][108] ([i915#3778])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-tglb3/igt@gem_exec_endless@dispatch@vcs0.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-tglb2/igt@gem_exec_endless@dispatch@vcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][109] ([i915#2842]) +1 similar issue
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1.html
>     - shard-kbl:          NOTRUN -> [FAIL][110] ([i915#2842])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [PASS][111] -> [FAIL][112] ([i915#2842])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [PASS][113] -> [FAIL][114] ([i915#2849])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_whisper@basic-fds-priority-all:
>     - shard-glk:          [PASS][115] -> [DMESG-WARN][116] ([i915#118])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-glk4/igt@gem_exec_whisper@basic-fds-priority-all.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-glk2/igt@gem_exec_whisper@basic-fds-priority-all.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random:
>     - shard-kbl:          NOTRUN -> [SKIP][117] ([fdo#109271] / [i915#4613])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-kbl6/igt@gem_lmem_swapping@heavy-verify-random.html
>     - shard-skl:          NOTRUN -> [SKIP][118] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-skl1/igt@gem_lmem_swapping@heavy-verify-random.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-skl:          NOTRUN -> [WARN][119] ([i915#2658])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-skl1/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-kbl:          NOTRUN -> [FAIL][120] ([i915#3318])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-kbl1/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-glk:          [PASS][121] -> [DMESG-WARN][122] ([i915#5566] / [i915#716])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-glk4/igt@gen9_exec_parse@allowed-single.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-glk2/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_hangman@gt-engine-hang@vecs0:
>     - shard-skl:          [PASS][123] -> [DMESG-WARN][124] ([i915#1982])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-skl7/igt@i915_hangman@gt-engine-hang@vecs0.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-skl1/igt@i915_hangman@gt-engine-hang@vecs0.html
> 
>   * igt@i915_module_load@load:
>     - shard-skl:          NOTRUN -> [SKIP][125] ([fdo#109271] / [i915#6227])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-skl1/igt@i915_module_load@load.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [PASS][126] -> [FAIL][127] ([i915#454])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_rpm@system-suspend:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][128] ([i915#5420])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-skl7/igt@i915_pm_rpm@system-suspend.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-apl:          [PASS][129] -> [DMESG-WARN][130] ([i915#180]) +2 similar issues
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-apl3/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-apl2/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-apl:          NOTRUN -> [SKIP][131] ([fdo#109271]) +24 similar issues
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-apl8/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][132] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-skl1/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][133] ([fdo#109271] / [i915#3886]) +4 similar issues
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-kbl1/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_chamelium@dp-audio-edid:
>     - shard-apl:          NOTRUN -> [SKIP][134] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-apl8/igt@kms_chamelium@dp-audio-edid.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
>     - shard-skl:          NOTRUN -> [SKIP][135] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-skl1/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html
> 
>   * igt@kms_color_chamelium@pipe-a-gamma:
>     - shard-kbl:          NOTRUN -> [SKIP][136] ([fdo#109271] / [fdo#111827]) +5 similar issues
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-kbl1/igt@kms_color_chamelium@pipe-a-gamma.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-kbl:          NOTRUN -> [FAIL][137] ([i915#2105])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-kbl1/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-suspend:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][138] ([i915#180])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
>     - shard-iclb:         [PASS][139] -> [FAIL][140] ([i915#2346]) +1 similar issue
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-iclb2/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
> 
>   * igt@kms_cursor_legacy@pipe-d-torture-bo:
>     - shard-apl:          NOTRUN -> [SKIP][141] ([fdo#109271] / [i915#533])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-apl8/igt@kms_cursor_legacy@pipe-d-torture-bo.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-apl:          [PASS][142] -> [INCOMPLETE][143] ([i915#180] / [i915#1982] / [i915#4939])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][144] -> [FAIL][145] ([i915#79])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
>     - shard-skl:          [PASS][146] -> [FAIL][147] ([i915#2122])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
>     - shard-iclb:         [PASS][148] -> [SKIP][149] ([i915#3701])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-iclb4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
>     - shard-skl:          NOTRUN -> [SKIP][150] ([fdo#109271]) +57 similar issues
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-skl9/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
>     - shard-kbl:          NOTRUN -> [SKIP][151] ([fdo#109271]) +72 similar issues
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-kbl1/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
> 
>   * igt@kms_hdr@bpc-switch@pipe-a-dp-1:
>     - shard-kbl:          [PASS][152] -> [FAIL][153] ([i915#1188])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-kbl3/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-kbl4/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
>     - shard-skl:          [PASS][154] -> [FAIL][155] ([fdo#108145] / [i915#265])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>     - shard-kbl:          NOTRUN -> [FAIL][156] ([i915#265])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-kbl1/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-kbl:          NOTRUN -> [SKIP][157] ([fdo#109271] / [i915#658])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-kbl3/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@psr2_primary_mmap_cpu:
>     - shard-iclb:         [PASS][158] -> [SKIP][159] ([fdo#109441]) +1 similar issue
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-iclb1/igt@kms_psr@psr2_primary_mmap_cpu.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-kbl:          NOTRUN -> [FAIL][160] ([IGT#2])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-kbl1/igt@kms_sysfs_edid_timing.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
>     - shard-skl:          [PASS][161] -> [INCOMPLETE][162] ([i915#4939])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-skl4/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-skl6/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
> 
>   * igt@sw_sync@sync_merge_same:
>     - shard-skl:          NOTRUN -> [FAIL][163] ([i915#6140])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-skl1/igt@sw_sync@sync_merge_same.html
>     - shard-kbl:          NOTRUN -> [FAIL][164] ([i915#6140])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-kbl6/igt@sw_sync@sync_merge_same.html
> 
>   * igt@sysfs_clients@pidname:
>     - shard-skl:          NOTRUN -> [SKIP][165] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-skl1/igt@sysfs_clients@pidname.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@feature_discovery@psr2:
>     - shard-iclb:         [SKIP][166] ([i915#658]) -> [PASS][167]
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-iclb3/igt@feature_discovery@psr2.html
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-iclb2/igt@feature_discovery@psr2.html
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-tglb:         [FAIL][168] -> [PASS][169]
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-tglb5/igt@gem_ctx_exec@basic-nohangcheck.html
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-tglb3/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_eio@kms:
>     - shard-tglb:         [FAIL][170] ([i915#5784]) -> [PASS][171]
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-tglb1/igt@gem_eio@kms.html
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-tglb7/igt@gem_eio@kms.html
> 
>   * igt@gem_exec_balancer@parallel-keep-in-fence:
>     - shard-iclb:         [SKIP][172] ([i915#4525]) -> [PASS][173] +2 similar issues
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-iclb3/igt@gem_exec_balancer@parallel-keep-in-fence.html
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-kbl:          [FAIL][174] ([i915#2842]) -> [PASS][175] +3 similar issues
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_softpin@reverse:
>     - shard-skl:          [DMESG-WARN][176] ([i915#1982]) -> [PASS][177]
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-skl1/igt@gem_softpin@reverse.html
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-skl7/igt@gem_softpin@reverse.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-kbl:          [DMESG-WARN][178] ([i915#180]) -> [PASS][179] +2 similar issues
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-kbl7/igt@i915_suspend@forcewake.html
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-kbl1/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1:
>     - shard-skl:          [FAIL][180] ([i915#2521]) -> [PASS][181]
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1.html
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-8bpc@pipe-a-hdmi-a-1:
>     - shard-glk:          [SKIP][182] ([fdo#109271]) -> [PASS][183]
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-glk8/igt@kms_dither@fb-8bpc-vs-panel-8bpc@pipe-a-hdmi-a-1.html
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-glk5/igt@kms_dither@fb-8bpc-vs-panel-8bpc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2:
>     - shard-glk:          [FAIL][184] ([i915#79]) -> [PASS][185]
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
>     - shard-skl:          [FAIL][186] ([i915#79]) -> [PASS][187] +1 similar issue
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@c-dp1:
>     - shard-apl:          [DMESG-WARN][188] ([i915#180]) -> [PASS][189] +2 similar issues
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-apl4/igt@kms_flip@flip-vs-suspend@c-dp1.html
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-apl6/igt@kms_flip@flip-vs-suspend@c-dp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
>     - shard-skl:          [FAIL][190] ([i915#2122]) -> [PASS][191] +1 similar issue
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
> 
>   * igt@kms_hdmi_inject@inject-audio:
>     - shard-skl:          [SKIP][192] ([fdo#109271]) -> [PASS][193]
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-skl7/igt@kms_hdmi_inject@inject-audio.html
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-skl6/igt@kms_hdmi_inject@inject-audio.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1:
>     - shard-iclb:         [SKIP][194] ([i915#5235]) -> [PASS][195] +5 similar issues
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-iclb3/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html
> 
>   * igt@kms_psr@psr2_primary_page_flip:
>     - shard-iclb:         [SKIP][196] ([fdo#109441]) -> [PASS][197] +2 similar issues
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-iclb4/igt@kms_psr@psr2_primary_page_flip.html
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
> 
>   * igt@kms_vblank@pipe-b-accuracy-idle:
>     - shard-skl:          [FAIL][198] ([i915#43]) -> [PASS][199]
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-skl3/igt@kms_vblank@pipe-b-accuracy-idle.html
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-skl9/igt@kms_vblank@pipe-b-accuracy-idle.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_fair@basic-pace@vcs0:
>     - shard-kbl:          [SKIP][200] ([fdo#109271]) -> [FAIL][201] ([i915#2842])
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs0.html
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html
> 
>   * igt@kms_ccs@pipe-c-bad-rotation-90-yf_tiled_ccs:
>     - shard-skl:          [SKIP][202] ([fdo#109271]) -> [SKIP][203] ([fdo#109271] / [i915#1888])
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-skl10/igt@kms_ccs@pipe-c-bad-rotation-90-yf_tiled_ccs.html
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-skl10/igt@kms_ccs@pipe-c-bad-rotation-90-yf_tiled_ccs.html
> 
>   * igt@kms_chamelium@hdmi-audio:
>     - shard-skl:          [SKIP][204] ([fdo#109271] / [fdo#111827] / [i915#1888]) -> [SKIP][205] ([fdo#109271] / [fdo#111827])
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-skl4/igt@kms_chamelium@hdmi-audio.html
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-skl6/igt@kms_chamelium@hdmi-audio.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-128x42-random:
>     - shard-skl:          [SKIP][206] ([fdo#109271] / [i915#1888]) -> [SKIP][207] ([fdo#109271]) +2 similar issues
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-skl3/igt@kms_cursor_crc@pipe-d-cursor-128x42-random.html
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-skl9/igt@kms_cursor_crc@pipe-d-cursor-128x42-random.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-kbl:          [INCOMPLETE][208] ([i915#180]) -> [FAIL][209] ([i915#4767])
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
>     - shard-iclb:         [SKIP][210] ([i915#658]) -> [SKIP][211] ([i915#2920])
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-iclb4/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
>     - shard-iclb:         [SKIP][212] ([fdo#111068] / [i915#658]) -> [SKIP][213] ([i915#2920])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-iclb3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>     - shard-iclb:         [SKIP][214] ([i915#2920]) -> [SKIP][215] ([i915#658]) +1 similar issue
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@runner@aborted:
>     - shard-apl:          ([FAIL][216], [FAIL][217], [FAIL][218], [FAIL][219], [FAIL][220], [FAIL][221]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][222], [FAIL][223], [FAIL][224], [FAIL][225], [FAIL][226], [FAIL][227], [FAIL][228]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-apl7/igt@runner@aborted.html
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-apl3/igt@runner@aborted.html
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-apl1/igt@runner@aborted.html
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-apl4/igt@runner@aborted.html
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-apl6/igt@runner@aborted.html
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-apl7/igt@runner@aborted.html
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-apl4/igt@runner@aborted.html
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-apl3/igt@runner@aborted.html
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-apl7/igt@runner@aborted.html
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-apl8/igt@runner@aborted.html
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-apl2/igt@runner@aborted.html
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-apl1/igt@runner@aborted.html
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-apl8/igt@runner@aborted.html
>     - shard-kbl:          ([FAIL][229], [FAIL][230], [FAIL][231], [FAIL][232], [FAIL][233], [FAIL][234], [FAIL][235]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#92]) -> ([FAIL][236], [FAIL][237], [FAIL][238], [FAIL][239], [FAIL][240], [FAIL][241], [FAIL][242], [FAIL][243]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-kbl6/igt@runner@aborted.html
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-kbl7/igt@runner@aborted.html
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-kbl4/igt@runner@aborted.html
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-kbl7/igt@runner@aborted.html
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-kbl6/igt@runner@aborted.html
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-kbl1/igt@runner@aborted.html
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11775/shard-kbl6/igt@runner@aborted.html
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-kbl4/igt@runner@aborted.html
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-kbl7/igt@runner@aborted.html
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-kbl7/igt@runner@aborted.html
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-kbl7/igt@runner@aborted.html
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-kbl6/igt@runner@aborted.html
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-kbl6/igt@runner@aborted.html
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-kbl7/igt@runner@aborted.html
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/shard-kbl1/igt@runner@aborted.html
> 
>   
>   [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2105]: https://gitlab.freedesktop.org/drm/intel/issues/2105
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
>   [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#43]: https://gitlab.freedesktop.org/drm/intel/issues/43
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4386]: https://gitlab.freedesktop.org/drm/intel/issues/4386
>   [i915#4392]: https://gitlab.freedesktop.org/drm/intel/issues/4392
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5420]: https://gitlab.freedesktop.org/drm/intel/issues/5420
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#6140]: https://gitlab.freedesktop.org/drm/intel/issues/6140
>   [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11775 -> Patchwork_105290v1
> 
>   CI-20190529: 20190529
>   CI_DRM_11775: 93bea5a783b94aa5336606ddee482f659ccd9804 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6534: 6137099c021e26b8593ddd832d6e3b3d3bc3b1d0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_105290v1: 93bea5a783b94aa5336606ddee482f659ccd9804 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105290v1/index.html
