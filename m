Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C641432FE5
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Oct 2021 09:42:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B028B6EB31;
	Tue, 19 Oct 2021 07:42:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DCA66EB31
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Oct 2021 07:42:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10141"; a="227214369"
X-IronPort-AV: E=Sophos;i="5.85,383,1624345200"; d="scan'208";a="227214369"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 00:42:50 -0700
X-IronPort-AV: E=Sophos;i="5.85,383,1624345200"; d="scan'208";a="483117300"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.72.185])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 00:42:49 -0700
Received: from platvala by thrakatuluk with local (Exim 4.94)
 (envelope-from <petri.latvala@intel.com>)
 id 1mcjkN-0005Vz-RC; Tue, 19 Oct 2021 10:41:19 +0300
Date: Tue, 19 Oct 2021 10:41:19 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Tomi P Sarvela <tomi.p.sarvela@intel.com>
Message-ID: <YW52n4t9MyCu+vDQ@platvala-desk.ger.corp.intel.com>
References: <20211014220921.683870-1-imre.deak@intel.com>
 <163429675367.29321.14632536128544865669@emeril.freedesktop.org>
 <20211018121054.GB1409539@ideak-desk.fi.intel.com>
 <YW2V7nF/I1uBAZEO@platvala-desk.ger.corp.intel.com>
 <20211018161002.GE1409539@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211018161002.GE1409539@ideak-desk.fi.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Simplify_handling_of_modifiers_=28rev10=29?=
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

On Mon, Oct 18, 2021 at 07:10:02PM +0300, Imre Deak wrote:
> On Mon, Oct 18, 2021 at 06:42:38PM +0300, Petri Latvala wrote:
> > On Mon, Oct 18, 2021 at 03:10:54PM +0300, Imre Deak wrote:
> > > Hi Petri, Tomi,
> > > 
> > > could you check the failure below?
> > > 
> > > On Fri, Oct 15, 2021 at 11:19:13AM +0000, Patchwork wrote:
> > > > == Series Details ==
> > > > 
> > > > Series: drm/i915: Simplify handling of modifiers (rev10)
> > > > URL   : https://patchwork.freedesktop.org/series/95579/
> > > > State : failure
> > > > 
> > > > == Summary ==
> > > > 
> > > > CI Bug Log - changes from CI_DRM_10741_full -> Patchwork_21343_full
> > > > ====================================================
> > > > 
> > > > Summary
> > > > -------
> > > > 
> > > >   **FAILURE**
> > > > 
> > > >   Serious unknown changes coming with Patchwork_21343_full absolutely need to be
> > > >   verified manually.
> > > >   
> > > >   If you think the reported changes have nothing to do with the changes
> > > >   introduced in Patchwork_21343_full, please notify your bug team to allow them
> > > >   to document this new failure mode, which will reduce false positives in CI.
> > > > 
> > > > Possible new issues
> > > > -------------------
> > > > 
> > > >   Here are the unknown changes that may have been introduced in Patchwork_21343_full:
> > > > 
> > > > ### IGT changes ###
> > > > 
> > > > #### Possible regressions ####
> > > > 
> > > >   * igt@kms_vblank@pipe-a-wait-busy:
> > > >     - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
> > > >    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10741/shard-skl1/igt@kms_vblank@pipe-a-wait-busy.html
> > > >    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-skl1/igt@kms_vblank@pipe-a-wait-busy.html
> > > 
> > > This is from Patchwork_21343/shard-skl1/19/dmesg.log , where the above
> > > test passes and is followed by more passing tests, until
> > > kms_busy/extended-modeset-hang-oldfb
> > > 
> > > also passes at least according to igt_runner.log, though I can't see it in
> > > dmesg.log. After that:
> > > 
> > > [1091.672412] Overall timeout time exceeded, stopping.
> > > 
> > > Is it just an overall timeout problem, or some test after
> > > kms_busy/extended-modeset-hand-oldfb?
> > 
> > The test passed but igt_runner's journal.txt for it was left
> > empty. Reason for that is unknown (fs corruption, or something like
> > that). Because overall timeout got triggered, igt_results was invoked
> > against that shard execution in jenkins master host, overwriting the
> > DUT-written one, and because the journal didn't state the subtest
> > started, it was parsed as being incomplete.
> 
> Ok. Maybe igt_runner could sync/stat the file if the write happened as
> expected?

It does. https://gitlab.freedesktop.org/drm/igt-gpu-tools/-/blob/master/runner/executor.c#L881

... this is a good time for someone to point out a reason to need
fsync() instead of fdatasync().


> I can see the same truncation at least on the following
> shard-skl test runs:
> 
> CI_DRM_10743/shard-skl7/16/118/journal.txt
> Patchwork_21337/shard-skl9/15/45/journal.txt
> Patchwork_21343/shard-skl1/19/72/journal.txt
> Patchwork_21302/shard-skl7/23/45/journal.txt
> Patchwork_21362/shard-skl8/21/12/journal.txt
> Patchwork_21317/shard-skl3/11/0/journal.txt
> 
> I can't see anything obvious in dmesg, so I think the issue is unrelated
> to changes in the patchset. Would it make sense to open a ticket for the
> above particular file-truncated issue?

Yeah the common property here is shard-skl. They are the only
platforms in CI that use eMMC as their main disk, that could be a red
herring or a strong correlation, unknown as of yet.

A bug could be filed (against IGT) for this issue so it's at least
written down and not forgotten. A cibuglog filter is hard to create
for it so let's leave that out. That means we shouldn't poke Lakshmi
with this but just consider this series having a pass from CI, that
was the only reported regression.


-- 
Petri Latvala



> 
> > The logs unfortunately were not able to give any indication as to why
> > the journal file was left empty. igt_runner syncs it when writing to
> > it, and the test execution continued normally after that particular
> > test.
> 
> 
> > -- 
> > Petri Latvala
> > 
> > 
> > > 
> > > > #### Suppressed ####
> > > > 
> > > >   The following results come from untrusted machines, tests, or statuses.
> > > >   They do not affect the overall result.
> > > > 
> > > >   * {igt@kms_bw@linear-tiling-3-displays-3840x2160p}:
> > > >     - shard-snb:          NOTRUN -> [FAIL][3]
> > > >    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-snb6/igt@kms_bw@linear-tiling-3-displays-3840x2160p.html
> > > > 
> > > >   * {igt@kms_bw@linear-tiling-4-displays-1920x1080p}:
> > > >     - shard-apl:          NOTRUN -> [DMESG-FAIL][4]
> > > >    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-apl3/igt@kms_bw@linear-tiling-4-displays-1920x1080p.html
> > > > 
> > > >   
> > > > Known issues
> > > > ------------
> > > > 
> > > >   Here are the changes found in Patchwork_21343_full that come from known issues:
> > > > 
> > > > ### IGT changes ###
> > > > 
> > > > #### Issues hit ####
> > > > 
> > > >   * igt@feature_discovery@chamelium:
> > > >     - shard-tglb:         NOTRUN -> [SKIP][5] ([fdo#111827])
> > > >    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-tglb3/igt@feature_discovery@chamelium.html
> > > > 
> > > >   * igt@gem_ctx_persistence@hostile:
> > > >     - shard-tglb:         [PASS][6] -> [FAIL][7] ([i915#2410])
> > > >    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10741/shard-tglb2/igt@gem_ctx_persistence@hostile.html
> > > >    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-tglb5/igt@gem_ctx_persistence@hostile.html
> > > > 
> > > >   * igt@gem_ctx_persistence@legacy-engines-mixed:
> > > >     - shard-snb:          NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#1099]) +3 similar issues
> > > >    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-snb6/igt@gem_ctx_persistence@legacy-engines-mixed.html
> > > > 
> > > >   * igt@gem_exec_fair@basic-none-rrul@rcs0:
> > > >     - shard-kbl:          [PASS][9] -> [FAIL][10] ([i915#2842])
> > > >    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10741/shard-kbl4/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> > > >    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-kbl4/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> > > > 
> > > >   * igt@gem_exec_fair@basic-none-solo@rcs0:
> > > >     - shard-kbl:          NOTRUN -> [FAIL][11] ([i915#2842])
> > > >    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-kbl3/igt@gem_exec_fair@basic-none-solo@rcs0.html
> > > > 
> > > >   * igt@gem_exec_fair@basic-none-vip@rcs0:
> > > >     - shard-tglb:         NOTRUN -> [FAIL][12] ([i915#2842])
> > > >    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-tglb1/igt@gem_exec_fair@basic-none-vip@rcs0.html
> > > > 
> > > >   * igt@gem_exec_fair@basic-pace-solo@rcs0:
> > > >     - shard-iclb:         [PASS][13] -> [FAIL][14] ([i915#2842])
> > > >    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10741/shard-iclb2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> > > >    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-iclb4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> > > > 
> > > >   * igt@gem_exec_whisper@basic-queues-forked-all:
> > > >     - shard-glk:          [PASS][15] -> [DMESG-WARN][16] ([i915#118])
> > > >    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10741/shard-glk2/igt@gem_exec_whisper@basic-queues-forked-all.html
> > > >    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-glk3/igt@gem_exec_whisper@basic-queues-forked-all.html
> > > > 
> > > >   * igt@gem_huc_copy@huc-copy:
> > > >     - shard-apl:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#2190])
> > > >    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-apl3/igt@gem_huc_copy@huc-copy.html
> > > >     - shard-kbl:          NOTRUN -> [SKIP][18] ([fdo#109271] / [i915#2190])
> > > >    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-kbl3/igt@gem_huc_copy@huc-copy.html
> > > > 
> > > >   * igt@gem_pread@exhaustion:
> > > >     - shard-apl:          NOTRUN -> [WARN][19] ([i915#2658]) +1 similar issue
> > > >    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-apl1/igt@gem_pread@exhaustion.html
> > > > 
> > > >   * igt@gem_pwrite@basic-exhaustion:
> > > >     - shard-kbl:          NOTRUN -> [WARN][20] ([i915#2658])
> > > >    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-kbl3/igt@gem_pwrite@basic-exhaustion.html
> > > > 
> > > >   * igt@gem_ringfill@engines-basic@vecs0:
> > > >     - shard-skl:          [PASS][21] -> [DMESG-WARN][22] ([i915#1982]) +1 similar issue
> > > >    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10741/shard-skl7/igt@gem_ringfill@engines-basic@vecs0.html
> > > >    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-skl7/igt@gem_ringfill@engines-basic@vecs0.html
> > > > 
> > > >   * igt@gem_userptr_blits@dmabuf-unsync:
> > > >     - shard-tglb:         NOTRUN -> [SKIP][23] ([i915#3297]) +1 similar issue
> > > >    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-tglb3/igt@gem_userptr_blits@dmabuf-unsync.html
> > > > 
> > > >   * igt@gem_userptr_blits@input-checking:
> > > >     - shard-snb:          NOTRUN -> [DMESG-WARN][24] ([i915#3002])
> > > >    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-snb2/igt@gem_userptr_blits@input-checking.html
> > > > 
> > > >   * igt@gen7_exec_parse@basic-offset:
> > > >     - shard-tglb:         NOTRUN -> [SKIP][25] ([fdo#109289]) +2 similar issues
> > > >    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-tglb3/igt@gen7_exec_parse@basic-offset.html
> > > > 
> > > >   * igt@gen9_exec_parse@batch-invalid-length:
> > > >     - shard-snb:          NOTRUN -> [SKIP][26] ([fdo#109271]) +425 similar issues
> > > >    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-snb7/igt@gen9_exec_parse@batch-invalid-length.html
> > > > 
> > > >   * igt@i915_pm_dc@dc6-dpms:
> > > >     - shard-iclb:         [PASS][27] -> [FAIL][28] ([i915#454])
> > > >    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10741/shard-iclb1/igt@i915_pm_dc@dc6-dpms.html
> > > >    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
> > > > 
> > > >   * igt@i915_pm_rc6_residency@rc6-idle:
> > > >     - shard-tglb:         [PASS][29] -> [WARN][30] ([i915#2681] / [i915#2684])
> > > >    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10741/shard-tglb8/igt@i915_pm_rc6_residency@rc6-idle.html
> > > >    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-tglb3/igt@i915_pm_rc6_residency@rc6-idle.html
> > > > 
> > > >   * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
> > > >     - shard-tglb:         NOTRUN -> [SKIP][31] ([fdo#109506] / [i915#2411])
> > > >    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-tglb1/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html
> > > > 
> > > >   * igt@kms_async_flips@alternate-sync-async-flip:
> > > >     - shard-glk:          [PASS][32] -> [FAIL][33] ([i915#2521])
> > > >    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10741/shard-glk3/igt@kms_async_flips@alternate-sync-async-flip.html
> > > >    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-glk3/igt@kms_async_flips@alternate-sync-async-flip.html
> > > > 
> > > >   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
> > > >     - shard-kbl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#3777])
> > > >    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-kbl3/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> > > >     - shard-apl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#3777]) +1 similar issue
> > > >    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-apl3/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> > > > 
> > > >   * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
> > > >     - shard-tglb:         NOTRUN -> [SKIP][36] ([fdo#111614]) +1 similar issue
> > > >    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-tglb3/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
> > > > 
> > > >   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
> > > >     - shard-tglb:         [PASS][37] -> [FAIL][38] ([i915#3722]) +1 similar issue
> > > >    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10741/shard-tglb3/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> > > >    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-tglb8/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> > > > 
> > > >   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
> > > >     - shard-skl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#3777])
> > > >    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-skl3/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> > > > 
> > > >   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
> > > >     - shard-tglb:         NOTRUN -> [SKIP][40] ([fdo#111615]) +2 similar issues
> > > >    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-tglb3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> > > > 
> > > >   * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_ccs:
> > > >     - shard-tglb:         NOTRUN -> [SKIP][41] ([i915#3689]) +7 similar issues
> > > >    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-tglb1/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_ccs.html
> > > > 
> > > >   * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:
> > > >     - shard-kbl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#3886]) +1 similar issue
> > > >    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-kbl3/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs.html
> > > > 
> > > >   * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs:
> > > >     - shard-tglb:         NOTRUN -> [SKIP][43] ([i915#3689] / [i915#3886]) +1 similar issue
> > > >    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-tglb3/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs.html
> > > > 
> > > >   * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
> > > >     - shard-apl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [i915#3886]) +8 similar issues
> > > >    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-apl1/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html
> > > > 
> > > >   * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
> > > >     - shard-skl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#3886]) +2 similar issues
> > > >    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-skl3/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
> > > > 
> > > >   * igt@kms_cdclk@mode-transition:
> > > >     - shard-apl:          NOTRUN -> [SKIP][46] ([fdo#109271]) +179 similar issues
> > > >    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-apl3/igt@kms_cdclk@mode-transition.html
> > > > 
> > > >   * igt@kms_chamelium@hdmi-edid-change-during-suspend:
> > > >     - shard-apl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [fdo#111827]) +11 similar issues
> > > >    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-apl8/igt@kms_chamelium@hdmi-edid-change-during-suspend.html
> > > > 
> > > >   * igt@kms_chamelium@hdmi-hpd-with-enabled-mode:
> > > >     - shard-snb:          NOTRUN -> [SKIP][48] ([fdo#109271] / [fdo#111827]) +18 similar issues
> > > >    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-snb2/igt@kms_chamelium@hdmi-hpd-with-enabled-mode.html
> > > > 
> > > >   * igt@kms_chamelium@vga-hpd-fast:
> > > >     - shard-tglb:         NOTRUN -> [SKIP][49] ([fdo#109284] / [fdo#111827]) +8 similar issues
> > > >    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-tglb3/igt@kms_chamelium@vga-hpd-fast.html
> > > > 
> > > >   * igt@kms_color_chamelium@pipe-b-ctm-0-25:
> > > >     - shard-skl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [fdo#111827]) +5 similar issues
> > > >    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-skl10/igt@kms_color_chamelium@pipe-b-ctm-0-25.html
> > > > 
> > > >   * igt@kms_color_chamelium@pipe-d-ctm-0-25:
> > > >     - shard-kbl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [fdo#111827])
> > > >    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-kbl3/igt@kms_color_chamelium@pipe-d-ctm-0-25.html
> > > > 
> > > >   * igt@kms_content_protection@lic:
> > > >     - shard-apl:          NOTRUN -> [TIMEOUT][52] ([i915#1319])
> > > >    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-apl8/igt@kms_content_protection@lic.html
> > > > 
> > > >   * igt@kms_cursor_crc@pipe-a-cursor-512x512-onscreen:
> > > >     - shard-tglb:         NOTRUN -> [SKIP][53] ([fdo#109279] / [i915#3359]) +1 similar issue
> > > >    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-tglb1/igt@kms_cursor_crc@pipe-a-cursor-512x512-onscreen.html
> > > > 
> > > >   * igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent:
> > > >     - shard-snb:          [PASS][54] -> [SKIP][55] ([fdo#109271])
> > > >    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10741/shard-snb7/igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent.html
> > > >    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-snb5/igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent.html
> > > > 
> > > >   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
> > > >     - shard-tglb:         [PASS][56] -> [INCOMPLETE][57] ([i915#2411] / [i915#2828] / [i915#456])
> > > >    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10741/shard-tglb1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> > > >    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> > > > 
> > > >   * igt@kms_cursor_crc@pipe-b-cursor-32x32-offscreen:
> > > >     - shard-tglb:         NOTRUN -> [SKIP][58] ([i915#3319])
> > > >    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-tglb3/igt@kms_cursor_crc@pipe-b-cursor-32x32-offscreen.html
> > > > 
> > > >   * igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:
> > > >     - shard-skl:          NOTRUN -> [SKIP][59] ([fdo#109271]) +72 similar issues
> > > >    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html
> > > > 
> > > >   * igt@kms_cursor_crc@pipe-c-cursor-suspend:
> > > >     - shard-tglb:         [PASS][60] -> [INCOMPLETE][61] ([i915#2411] / [i915#456])
> > > >    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10741/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
> > > >    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-tglb7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
> > > > 
> > > >   * igt@kms_cursor_crc@pipe-d-cursor-512x170-rapid-movement:
> > > >     - shard-tglb:         NOTRUN -> [SKIP][62] ([i915#3359]) +2 similar issues
> > > >    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-tglb3/igt@kms_cursor_crc@pipe-d-cursor-512x170-rapid-movement.html
> > > > 
> > > >   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
> > > >     - shard-iclb:         NOTRUN -> [SKIP][63] ([fdo#109274] / [fdo#109278])
> > > >    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-iclb2/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
> > > > 
> > > >   * igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:
> > > >     - shard-tglb:         NOTRUN -> [SKIP][64] ([i915#3528])
> > > >    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-tglb3/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html
> > > > 
> > > >   * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:
> > > >     - shard-glk:          [PASS][65] -> [FAIL][66] ([i915#2122])
> > > >    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10741/shard-glk5/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html
> > > >    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-glk7/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html
> > > > 
> > > >   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
> > > >     - shard-kbl:          [PASS][67] -> [DMESG-WARN][68] ([i915#180]) +5 similar issues
> > > >    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10741/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> > > >    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> > > > 
> > > >   * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
> > > >     - shard-skl:          [PASS][69] -> [FAIL][70] ([i915#2122])
> > > >    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10741/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
> > > >    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
> > > > 
> > > >   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:
> > > >     - shard-iclb:         [PASS][71] -> [SKIP][72] ([i915#3701])
> > > >    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10741/shard-iclb5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html
> > > >    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html
> > > > 
> > > >   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:
> > > >     - shard-tglb:         NOTRUN -> [SKIP][73] ([fdo#111825]) +20 similar issues
> > > >    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
> > > > 
> > > >   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:
> > > >     - shard-kbl:          NOTRUN -> [SKIP][74] ([fdo#109271]) +30 similar issues
> > > >    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-kbl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html
> > > > 
> > > >   * igt@kms_pipe_crc_basic@read-crc-pipe-d:
> > > >     - shard-apl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#533])
> > > >    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-apl8/igt@kms_pipe_crc_basic@read-crc-pipe-d.html
> > > > 
> > > >   * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
> > > >     - shard-skl:          NOTRUN -> [FAIL][76] ([fdo#108145] / [i915#265])
> > > >    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
> > > > 
> > > >   * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
> > > >     - shard-apl:          NOTRUN -> [FAIL][77] ([i915#265])
> > > >    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
> > > > 
> > > >   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
> > > >     - shard-skl:          [PASS][78] -> [FAIL][79] ([fdo#108145] / [i915#265])
> > > >    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10741/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> > > >    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> > > > 
> > > >   * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
> > > >     - shard-apl:          NOTRUN -> [FAIL][80] ([fdo#108145] / [i915#265]) +1 similar issue
> > > >    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-apl1/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
> > > > 
> > > >   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
> > > >     - shard-skl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#658]) +1 similar issue
> > > >    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-skl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html
> > > > 
> > > >   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3:
> > > >     - shard-tglb:         NOTRUN -> [SKIP][82] ([i915#2920]) +2 similar issues
> > > >    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-tglb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3.html
> > > > 
> > > >   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
> > > >     - shard-apl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#658]) +4 similar issues
> > > >    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-apl1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html
> > > > 
> > > >   * igt@kms_psr2_su@frontbuffer:
> > > >     - shard-iclb:         [PASS][84] -> [SKIP][85] ([fdo#109642] / [fdo#111068] / [i915#658])
> > > >    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10741/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
> > > >    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-iclb4/igt@kms_psr2_su@frontbuffer.html
> > > > 
> > > >   * igt@kms_psr2_su@page_flip:
> > > >     - shard-kbl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#658])
> > > >    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-kbl3/igt@kms_psr2_su@page_flip.html
> > > > 
> > > >   * igt@kms_psr@psr2_sprite_render:
> > > >     - shard-tglb:         NOTRUN -> [FAIL][87] ([i915#132] / [i915#3467])
> > > >    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-tglb1/igt@kms_psr@psr2_sprite_render.html
> > > > 
> > > >   * igt@kms_psr@psr2_suspend:
> > > >     - shard-iclb:         [PASS][88] -> [SKIP][89] ([fdo#109441])
> > > >    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10741/shard-iclb2/igt@kms_psr@psr2_suspend.html
> > > >    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-iclb4/igt@kms_psr@psr2_suspend.html
> > > > 
> > > >   * igt@kms_tv_load_detect@load-detect:
> > > >     - shard-tglb:         NOTRUN -> [SKIP][90] ([fdo#109309])
> > > >    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-tglb1/igt@kms_tv_load_detect@load-detect.html
> > > > 
> > > >   * igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend:
> > > >     - shard-iclb:         NOTRUN -> [SKIP][91] ([fdo#109278])
> > > >    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-iclb2/igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend.html
> > > > 
> > > >   * igt@kms_writeback@writeback-fb-id:
> > > >     - shard-apl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#2437])
> > > >    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-apl8/igt@kms_writeback@writeback-fb-id.html
> > > > 
> > > >   * igt@nouveau_crc@pipe-d-ctx-flip-detection:
> > > >     - shard-tglb:         NOTRUN -> [SKIP][93] ([i915#2530]) +1 similar issue
> > > >    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-tglb3/igt@nouveau_crc@pipe-d-ctx-flip-detection.html
> > > > 
> > > >   * igt@perf@polling-parameterized:
> > > >     - shard-iclb:         [PASS][94] -> [FAIL][95] ([i915#1542])
> > > >    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10741/shard-iclb5/igt@perf@polling-parameterized.html
> > > >    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-iclb1/igt@perf@polling-parameterized.html
> > > > 
> > > >   * igt@prime_nv_test@i915_import_cpu_mmap:
> > > >     - shard-tglb:         NOTRUN -> [SKIP][96] ([fdo#109291]) +1 similar issue
> > > >    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-tglb1/igt@prime_nv_test@i915_import_cpu_mmap.html
> > > > 
> > > >   * igt@sysfs_clients@fair-1:
> > > >     - shard-apl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#2994]) +3 similar issues
> > > >    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-apl3/igt@sysfs_clients@fair-1.html
> > > >     - shard-kbl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#2994])
> > > >    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-kbl3/igt@sysfs_clients@fair-1.html
> > > > 
> > > >   * igt@sysfs_clients@recycle:
> > > >     - shard-tglb:         NOTRUN -> [SKIP][99] ([i915#2994])
> > > >    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-tglb3/igt@sysfs_clients@recycle.html
> > > > 
> > > >   
> > > > #### Possible fixes ####
> > > > 
> > > >   * igt@gem_eio@in-flight-contexts-1us:
> > > >     - shard-tglb:         [TIMEOUT][100] ([i915#3063]) -> [PASS][101] +1 similar issue
> > > >    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10741/shard-tglb5/igt@gem_eio@in-flight-contexts-1us.html
> > > >    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-tglb2/igt@gem_eio@in-flight-contexts-1us.html
> > > > 
> > > >   * igt@gem_exec_fair@basic-flow@rcs0:
> > > >     - shard-tglb:         [SKIP][102] ([i915#2848]) -> [PASS][103]
> > > >    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10741/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html
> > > >    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html
> > > > 
> > > >   * igt@gem_exec_fair@basic-pace-share@rcs0:
> > > >     - shard-glk:          [FAIL][104] ([i915#2842]) -> [PASS][105] +1 similar issue
> > > >    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10741/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html
> > > >    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
> > > > 
> > > >   * igt@gem_exec_fair@basic-pace@vecs0:
> > > >     - shard-tglb:         [FAIL][106] ([i915#2842]) -> [PASS][107]
> > > >    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10741/shard-tglb7/igt@gem_exec_fair@basic-pace@vecs0.html
> > > >    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-tglb3/igt@gem_exec_fair@basic-pace@vecs0.html
> > > > 
> > > >   * igt@gem_exec_nop@basic-parallel:
> > > >     - shard-glk:          [DMESG-WARN][108] ([i915#118]) -> [PASS][109] +1 similar issue
> > > >    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10741/shard-glk5/igt@gem_exec_nop@basic-parallel.html
> > > >    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-glk6/igt@gem_exec_nop@basic-parallel.html
> > > > 
> > > >   * igt@gem_mmap_offset@clear:
> > > >     - shard-tglb:         [TIMEOUT][110] ([i915#2502]) -> [PASS][111]
> > > >    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10741/shard-tglb2/igt@gem_mmap_offset@clear.html
> > > >    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-tglb5/igt@gem_mmap_offset@clear.html
> > > > 
> > > >   * igt@gem_tiled_swapping@non-threaded:
> > > >     - shard-tglb:         [TIMEOUT][112] ([i915#1521]) -> [PASS][113]
> > > >    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10741/shard-tglb8/igt@gem_tiled_swapping@non-threaded.html
> > > >    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-tglb3/igt@gem_tiled_swapping@non-threaded.html
> > > > 
> > > >   * igt@gem_workarounds@suspend-resume:
> > > >     - shard-apl:          [DMESG-WARN][114] ([i915#180]) -> [PASS][115]
> > > >    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10741/shard-apl8/igt@gem_workarounds@suspend-resume.html
> > > >    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-apl1/igt@gem_workarounds@suspend-resume.html
> > > > 
> > > >   * igt@gem_workarounds@suspend-resume-fd:
> > > >     - shard-kbl:          [DMESG-WARN][116] ([i915#180]) -> [PASS][117]
> > > >    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10741/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html
> > > >    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-kbl3/igt@gem_workarounds@suspend-resume-fd.html
> > > > 
> > > >   * igt@gen9_exec_parse@allowed-single:
> > > >     - shard-skl:          [DMESG-WARN][118] ([i915#1436] / [i915#1982] / [i915#716]) -> [PASS][119]
> > > >    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10741/shard-skl10/igt@gen9_exec_parse@allowed-single.html
> > > >    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-skl10/igt@gen9_exec_parse@allowed-single.html
> > > > 
> > > >   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
> > > >     - shard-tglb:         [FAIL][120] ([i915#3722]) -> [PASS][121] +1 similar issue
> > > >    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10741/shard-tglb8/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
> > > >    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-tglb3/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
> > > > 
> > > >   * igt@kms_cursor_crc@pipe-b-cursor-suspend:
> > > >     - shard-tglb:         [INCOMPLETE][122] ([i915#456]) -> [PASS][123]
> > > >    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10741/shard-tglb7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
> > > >    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-tglb1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
> > > > 
> > > >   * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
> > > >     - shard-tglb:         [FAIL][124] ([i915#2346]) -> [PASS][125]
> > > >    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10741/shard-tglb3/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
> > > >    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-tglb8/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
> > > > 
> > > >   * igt@kms_hdr@bpc-switch-dpms:
> > > >     - shard-skl:          [FAIL][126] ([i915#1188]) -> [PASS][127] +1 similar issue
> > > >    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10741/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html
> > > >    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
> > > > 
> > > >   * igt@kms_psr@psr2_primary_page_flip:
> > > >     - shard-iclb:         [SKIP][128] ([fdo#109441]) -> [PASS][129] +2 similar issues
> > > >    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10741/shard-iclb5/igt@kms_psr@psr2_primary_page_flip.html
> > > >    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
> > > > 
> > > >   * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
> > > >     - shard-skl:          [INCOMPLETE][130] ([i915#198]) -> [PASS][131]
> > > >    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10741/shard-skl9/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
> > > >    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-skl3/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
> > > > 
> > > >   * igt@sysfs_heartbeat_interval@mixed@rcs0:
> > > >     - shard-skl:          [FAIL][132] ([i915#1731]) -> [PASS][133]
> > > >    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10741/shard-skl3/igt@sysfs_heartbeat_interval@mixed@rcs0.html
> > > >    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-skl7/igt@sysfs_heartbeat_interval@mixed@rcs0.html
> > > > 
> > > >   
> > > > #### Warnings ####
> > > > 
> > > >   * igt@gem_exec_fair@basic-none@vcs0:
> > > >     - shard-tglb:         [FAIL][134] ([i915#2842]) -> [SKIP][135] ([i915#2848]) +5 similar issues
> > > >    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10741/shard-tglb5/igt@gem_exec_fair@basic-none@vcs0.html
> > > >    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/shard-tglb2/igt@gem_exec_fair@basic-none@vcs0.html
> > > > 
> > > >   * igt@gem_exec_fair@basic-pace-share@rcs0:
> > > >     - shard-tglb:         [SKIP][136] ([i915#2848]) -> [FAIL][137] ([i915#2842]) +1 similar issue
> > > >    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10741/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html
> > > >    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo
> > > > 
> > > > == Logs ==
> > > > 
> > > > For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21343/index.html
