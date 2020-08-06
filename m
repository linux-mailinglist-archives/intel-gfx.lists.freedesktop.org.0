Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 868A323DCED
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Aug 2020 18:58:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E96386E8E6;
	Thu,  6 Aug 2020 16:58:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F1A06E8E6
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Aug 2020 16:58:24 +0000 (UTC)
IronPort-SDR: vI67kFqhMPCQRKI/VfTbE9ID1o3RumsMj4anfP/Sd06fWqT1pJE8J0uCWlTN6iiadnRIpZ0t1M
 iGdY1dJGE8vg==
X-IronPort-AV: E=McAfee;i="6000,8403,9705"; a="153997114"
X-IronPort-AV: E=Sophos;i="5.75,441,1589266800"; d="scan'208";a="153997114"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2020 09:58:23 -0700
IronPort-SDR: +ObT4WLvDRs7mCf2u2jsuq2zB1NCtrbwUlwisQ/8RH2buNfbHKEoB6gLYEinJPogppSO/WRxm6
 htl+JTXSj5sg==
X-IronPort-AV: E=Sophos;i="5.75,441,1589266800"; d="scan'208";a="493732526"
Received: from jausmus-gentoo-dev6.jf.intel.com ([10.165.21.157])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2020 09:58:23 -0700
Date: Thu, 6 Aug 2020 10:02:16 -0700
From: James Ausmus <james.ausmus@intel.com>
To: intel-gfx@lists.freedesktop.org, lakshminarayana.vudum@intel.com
Message-ID: <20200806170216.GA3807@jausmus-gentoo-dev6.jf.intel.com>
References: <20200805232920.15085-1-clinton.a.taylor@intel.com>
 <159667259343.5531.15686398871487525452@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159667259343.5531.15686398871487525452@emeril.freedesktop.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogIGZhaWx1cmUgZm9yIGRy?=
 =?utf-8?q?m/i915/gt=3A_Implement_WA=5F1406941453_=28rev2=29?=
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

On Thu, Aug 06, 2020 at 12:09:53AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/gt: Implement WA_1406941453 (rev2)
> URL   : https://patchwork.freedesktop.org/series/78243/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_8846 -> Patchwork_18312
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_18312 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_18312, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18312/index.html
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_18312:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_chamelium@hdmi-hpd-fast:
>     - fi-icl-u2:          [PASS][1] -> [DMESG-WARN][2] +1 similar issue
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8846/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18312/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

This isn't related - Lakshmi, can you re-report?

Thanks!

-James

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_18312 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@i915_selftest@live@execlists:
>     - fi-icl-y:           [PASS][3] -> [INCOMPLETE][4] ([i915#2276])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8846/fi-icl-y/igt@i915_selftest@live@execlists.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18312/fi-icl-y/igt@i915_selftest@live@execlists.html
> 
>   * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
>     - fi-icl-u2:          [PASS][5] -> [DMESG-WARN][6] ([i915#1982]) +2 similar issues
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8846/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18312/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@i915_module_load@reload:
>     - fi-apl-guc:         [DMESG-WARN][7] ([i915#1635] / [i915#1982]) -> [PASS][8]
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8846/fi-apl-guc/igt@i915_module_load@reload.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18312/fi-apl-guc/igt@i915_module_load@reload.html
> 
>   * igt@i915_pm_rpm@basic-pci-d3-state:
>     - fi-byt-j1900:       [DMESG-WARN][9] ([i915#1982]) -> [PASS][10]
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8846/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18312/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html
> 
>   * igt@i915_pm_rpm@module-reload:
>     - fi-bsw-kefka:       [INCOMPLETE][11] ([i915#151] / [i915#1844] / [i915#1909] / [i915#392]) -> [PASS][12]
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8846/fi-bsw-kefka/igt@i915_pm_rpm@module-reload.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18312/fi-bsw-kefka/igt@i915_pm_rpm@module-reload.html
> 
>   * igt@i915_selftest@live@gt_lrc:
>     - fi-tgl-u2:          [DMESG-FAIL][13] ([i915#1233]) -> [PASS][14]
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8846/fi-tgl-u2/igt@i915_selftest@live@gt_lrc.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18312/fi-tgl-u2/igt@i915_selftest@live@gt_lrc.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - fi-icl-u2:          [DMESG-WARN][15] ([i915#1982]) -> [PASS][16] +1 similar issue
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8846/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18312/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_suspend@basic-s0:
>     - fi-kbl-x1275:       [DMESG-WARN][17] ([i915#62] / [i915#92]) -> [DMESG-WARN][18] ([i915#62] / [i915#92] / [i915#95]) +4 similar issues
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8846/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18312/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html
> 
>   * igt@i915_pm_rpm@module-reload:
>     - fi-kbl-guc:         [DMESG-FAIL][19] ([i915#2203]) -> [DMESG-WARN][20] ([i915#2203])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8846/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18312/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
> 
>   * igt@kms_force_connector_basic@force-connector-state:
>     - fi-kbl-x1275:       [DMESG-WARN][21] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][22] ([i915#62] / [i915#92]) +3 similar issues
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8846/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18312/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
>   [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
>   [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
>   [i915#1844]: https://gitlab.freedesktop.org/drm/intel/issues/1844
>   [i915#1909]: https://gitlab.freedesktop.org/drm/intel/issues/1909
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2203]: https://gitlab.freedesktop.org/drm/intel/issues/2203
>   [i915#2276]: https://gitlab.freedesktop.org/drm/intel/issues/2276
>   [i915#392]: https://gitlab.freedesktop.org/drm/intel/issues/392
>   [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
>   [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
>   [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
> 
> 
> Participating hosts (44 -> 37)
> ------------------------------
> 
>   Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_8846 -> Patchwork_18312
> 
>   CI-20190529: 20190529
>   CI_DRM_8846: ffed5d9353b161a318814b97ea4f13f97a2c5f10 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5760: 53d2ddd2f5f7beb98a996d7f2c3976c87d4da01f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_18312: 0f5b2705234bd163a976c7216e9b111554096a69 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> == Linux commits ==
> 
> 0f5b2705234b drm/i915/gt: Implement WA_1406941453
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18312/index.html

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
