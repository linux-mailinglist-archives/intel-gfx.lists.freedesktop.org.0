Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B44773DD83
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jun 2023 13:30:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C62F10E1E3;
	Mon, 26 Jun 2023 11:30:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B25110E1E3
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jun 2023 11:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687779052; x=1719315052;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=erVs2tr+5IAMspqwAMznk9PWcPdpJdnIBEUcTu/v7M4=;
 b=Qiz7f6G3+Z/MPlFEPgnqfenKnn/iX/Q3n0jypdYUZ03q6uOsCsviArKb
 1RxLrcGvl25MIWV2Drd2o2XHuVvQPxKX8Ip7oy0DraE4AG7VUq2jTeShN
 wKun7B2PdKLsyRr+3A72/YqZgqQmfO/zoRtUELBE5L36BVjbLkYuskb2V
 tfjskp5S2V02zeEgZzbWhE0dV/zUOxK4HQTpTFAKgpDSqe2jEeS6/QdWh
 QGzne+afdrm3mrHBOOjn4CoxQZ8R+e5IHoi2mPNGt9KnPmca/st0FIKuJ
 6saGrYKoqbiIb5rgWiTYZDmyeGI9XXjCQ+UjsArtQNzySHi2Vk+djkOOI Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10752"; a="351017121"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="351017121"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 04:30:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10752"; a="860669769"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="860669769"
Received: from unknown (HELO ideak-desk) ([10.237.72.78])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 04:30:49 -0700
Date: Mon, 26 Jun 2023 14:30:54 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org, Randy Dunlap <rdunlap@infradead.org>,
 Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <ZJl27ndY44aItpXe@ideak-desk>
References: <20230616185104.2502003-1-imre.deak@intel.com>
 <168745530616.4872.11591194417903199851@emeril.freedesktop.org>
 <ZJSLiKv1GaHqizjU@ideak-desk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZJSLiKv1GaHqizjU@ideak-desk>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915=3A_Add_missing_forward_dec?=
 =?utf-8?q?larations/includes_to_display_power_headers_=28rev2=29?=
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

On Thu, Jun 22, 2023 at 08:57:28PM +0300, Imre Deak wrote:
> On Thu, Jun 22, 2023 at 05:35:06PM +0000, Patchwork wrote:
> > == Series Details ==
> > 
> > Series: series starting with [1/4] drm/i915: Add missing forward declarations/includes to display power headers (rev2)
> > URL   : https://patchwork.freedesktop.org/series/119480/
> > State : failure

Patchset is pushed to drm-intel-next, thanks for the reviews.

The failure is unrelated, see below.

> > 
> > == Summary ==
> > 
> > CI Bug Log - changes from CI_DRM_13309 -> Patchwork_119480v2
> > ====================================================
> > 
> > Summary
> > -------
> > 
> >   **FAILURE**
> > 
> >   Serious unknown changes coming with Patchwork_119480v2 absolutely need to be
> >   verified manually.
> >   
> >   If you think the reported changes have nothing to do with the changes
> >   introduced in Patchwork_119480v2, please notify your bug team to allow them
> >   to document this new failure mode, which will reduce false positives in CI.
> > 
> >   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v2/index.html
> > 
> > Participating hosts (43 -> 41)
> > ------------------------------
> > 
> >   Missing    (2): fi-kbl-soraka fi-snb-2520m 
> > 
> > Possible new issues
> > -------------------
> > 
> >   Here are the unknown changes that may have been introduced in Patchwork_119480v2:
> > 
> > ### IGT changes ###
> > 
> > #### Possible regressions ####
> > 
> >   * igt@i915_pm_rpm@basic-pci-d3-state:
> >     - bat-mtlp-8:         [PASS][1] -> [ABORT][2]
> >    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13309/bat-mtlp-8/igt@i915_pm_rpm@basic-pci-d3-state.html
> >    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v2/bat-mtlp-8/igt@i915_pm_rpm@basic-pci-d3-state.html
> 
> The test passes, however there is a lockdep problem:
> <4>[  396.831915] kworker/20:1H/251 is trying to acquire lock:
> <4>[  396.837189] ffffffff82761100 (fs_reclaim){+.+.}-{0:0}, at: __kmem_cache_alloc_node+0x30/0x1b0
> <4>[  396.845661]
>                   but task is already holding lock:
> <4>[  396.851448] ffff8881043c5840 (&gt->reset.backoff_srcu){++++}-{0:0}, at: _intel_gt_reset_lock+0x172/0x330 [i915]
> 
> Can't see it related (as the only relevant thing is runtime suspend,
> getting delayed by 17ms after this change, which shouldn't make a
> difference).
> 
> Looks like some GuC vs. memory shrinker lockdep problem, filed already
> on other platforms at:
> https://gitlab.freedesktop.org/drm/intel/-/issues/8668
> 
> > Known issues
> > ------------
> > 
> >   Here are the changes found in Patchwork_119480v2 that come from known issues:
> > 
> > ### IGT changes ###
> > 
> > #### Issues hit ####
> > 
> >   * igt@i915_selftest@live@guc:
> >     - bat-rpls-1:         [PASS][3] -> [DMESG-WARN][4] ([i915#7852])
> >    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13309/bat-rpls-1/igt@i915_selftest@live@guc.html
> >    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v2/bat-rpls-1/igt@i915_selftest@live@guc.html
> > 
> >   * igt@i915_selftest@live@hangcheck:
> >     - bat-adlp-9:         [PASS][5] -> [ABORT][6] ([i915#7677] / [i915#7913])
> >    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13309/bat-adlp-9/igt@i915_selftest@live@hangcheck.html
> >    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v2/bat-adlp-9/igt@i915_selftest@live@hangcheck.html
> > 
> >   * igt@i915_selftest@live@requests:
> >     - bat-mtlp-6:         [PASS][7] -> [DMESG-FAIL][8] ([i915#7269])
> >    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13309/bat-mtlp-6/igt@i915_selftest@live@requests.html
> >    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v2/bat-mtlp-6/igt@i915_selftest@live@requests.html
> > 
> >   * igt@i915_selftest@live@slpc:
> >     - bat-rpls-2:         NOTRUN -> [DMESG-WARN][9] ([i915#6367])
> >    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v2/bat-rpls-2/igt@i915_selftest@live@slpc.html
> >     - bat-rpls-1:         [PASS][10] -> [DMESG-WARN][11] ([i915#6367])
> >    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13309/bat-rpls-1/igt@i915_selftest@live@slpc.html
> >    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v2/bat-rpls-1/igt@i915_selftest@live@slpc.html
> > 
> >   * igt@i915_suspend@basic-s2idle-without-i915:
> >     - bat-rpls-2:         NOTRUN -> [ABORT][12] ([i915#6687] / [i915#8668])
> >    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v2/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html
> > 
> >   * igt@kms_chamelium_hpd@common-hpd-after-suspend:
> >     - bat-dg2-11:         NOTRUN -> [SKIP][13] ([i915#7828])
> >    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v2/bat-dg2-11/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
> > 
> >   
> > #### Possible fixes ####
> > 
> >   * igt@i915_selftest@live@requests:
> >     - bat-dg2-11:         [ABORT][14] ([i915#7913]) -> [PASS][15]
> >    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13309/bat-dg2-11/igt@i915_selftest@live@requests.html
> >    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v2/bat-dg2-11/igt@i915_selftest@live@requests.html
> > 
> >   * igt@i915_selftest@live@reset:
> >     - bat-rpls-2:         [ABORT][16] ([i915#4983] / [i915#7461] / [i915#7913] / [i915#8347]) -> [PASS][17]
> >    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13309/bat-rpls-2/igt@i915_selftest@live@reset.html
> >    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v2/bat-rpls-2/igt@i915_selftest@live@reset.html
> > 
> >   
> > #### Warnings ####
> > 
> >   * igt@kms_psr@primary_mmap_gtt:
> >     - bat-rplp-1:         [SKIP][18] ([i915#1072]) -> [ABORT][19] ([i915#8442])
> >    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13309/bat-rplp-1/igt@kms_psr@primary_mmap_gtt.html
> >    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v2/bat-rplp-1/igt@kms_psr@primary_mmap_gtt.html
> > 
> >   
> >   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
> >   [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
> >   [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
> >   [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
> >   [i915#7269]: https://gitlab.freedesktop.org/drm/intel/issues/7269
> >   [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
> >   [i915#7677]: https://gitlab.freedesktop.org/drm/intel/issues/7677
> >   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
> >   [i915#7852]: https://gitlab.freedesktop.org/drm/intel/issues/7852
> >   [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
> >   [i915#8347]: https://gitlab.freedesktop.org/drm/intel/issues/8347
> >   [i915#8442]: https://gitlab.freedesktop.org/drm/intel/issues/8442
> >   [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
> > 
> > 
> > Build changes
> > -------------
> > 
> >   * Linux: CI_DRM_13309 -> Patchwork_119480v2
> > 
> >   CI-20190529: 20190529
> >   CI_DRM_13309: af67b02abf56a5018cd885c94d7611241052e98f @ git://anongit.freedesktop.org/gfx-ci/linux
> >   IGT_7346: 29302a0d57bcf10cb553f5d7ff5bb99166a19bba @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> >   Patchwork_119480v2: af67b02abf56a5018cd885c94d7611241052e98f @ git://anongit.freedesktop.org/gfx-ci/linux
> > 
> > 
> > ### Linux commits
> > 
> > 00c643450930 drm/i915: Prevent needless toggling of DC states during modesets
> > 18d2155db09b drm/i915: Add way to specify the power-off delay of a display power domain
> > d7dab5293389 drm/i915: Remove redundant forward declarations from display power headers
> > 1088d3e9cdc5 drm/i915: Add missing forward declarations/includes to display power headers
> > 
> > == Logs ==
> > 
> > For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v2/index.html
