Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CBDF66CB7F2
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 09:23:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23B5710E825;
	Tue, 28 Mar 2023 07:23:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76FFC10E823
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 07:23:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679988229; x=1711524229;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=S4DBuSLELCCCknZFcW+528zLtpL0/R3oYZr9dpbSjVo=;
 b=job+2qGH6DywimqMpNcRBJIPecUkrVDhZ+cgO4ruTOimo8l12wKQB+/T
 F6SNCPQCPzWqxmVfBcJkQkplwHaaPGWZeJyOrK45V03OnCpvDS5F32QHN
 cvo8qiCtYcT8PRy1ht9eTHHdKvDhykb7e10LgFIShopW5VB3ydS03Js+i
 hTQva8nZ/7wbXHyMWAf7EIF+aiW1z8+spKoTvpzdSNJQ8ke0XMAM7jwgR
 rv6QjQWHauRT6nm5UxLLMrriDoKf+Gvwfg3SsRN/vtQk0VC7jxAjGOSQE
 qUDT3t9+6qnu8z08EPU97ZsBoikP2gySNzKQkwwHkhHYA6wumZajZZDGo A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="426757429"
X-IronPort-AV: E=Sophos;i="5.98,296,1673942400"; d="scan'208";a="426757429"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 00:23:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="633931480"
X-IronPort-AV: E=Sophos;i="5.98,296,1673942400"; d="scan'208";a="633931480"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 00:23:38 -0700
Date: Tue, 28 Mar 2023 10:23:35 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Zhang, Rui" <rui.zhang@intel.com>
Message-ID: <ZCKV90tFMGn6sxbQ@ideak-desk.fi.intel.com>
References: <20230327121116.1785979-1-imre.deak@intel.com>
 <167994374538.32630.158002195269097607@emeril.freedesktop.org>
 <ZCIKCkGXLxlNXvVT@ideak-desk.fi.intel.com>
 <9f995e8adb40255e5c9668d48cf04be180871092.camel@intel.com>
 <eea61093bde251a34038fad4ffcf91f616ff9976.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <eea61093bde251a34038fad4ffcf91f616ff9976.camel@intel.com>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgeDg2?=
 =?utf-8?q?/topology=3A_fix_erroneous_smp=5Fnum=5Fsiblings_on_Intel_Hybrid?=
 =?utf-8?q?_platform?=
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 28, 2023 at 04:57:14AM +0300, Zhang, Rui wrote:
> On Tue, 2023-03-28 at 09:14 +0800, Zhang Rui wrote:
> > Hi, Imre,
> >
> > Thanks for raising this.
> >
> > On Tue, 2023-03-28 at 00:26 +0300, Imre Deak wrote:
> > > Hi Rui,
> > >
> > > after applying your
> > > "x86/topology: fix erroneous smp_num_siblings on Intel Hybrid platform"
> > >
> > > fix on the drm-tip tree (see the patchwork URL below) the CI tests
> > > show some regression on a HSW and a KBL machine (see [2] and [4]
> > > below) in the i915 driver. However I think they can't be related
> > > to your changes, since on these machines all cores will report the
> > > same number of CPU siblings.
> >
> > Right.
> >
> > >  Could you confirm this and that in general the reported siblings
> > >  can only vary on platforms with both E and P cores (ADL-P being
> > >  the first such platform)?
> >
> > Right.
> >
> > I don't think the patch could bring any change related.
> > It only affects hybrid platforms.

Ok, thanks for confirming.

> Is this topology fix patch the only patch applied?

Yes.

> or together with some other patches?
> 
> I can hardly imagine that the fix patch can trigger such issues, so I
> suspect they are intermittent issues. say
> is the regression 100% reproducible?

No, the problems reported by CI here happened already earlier, before
this patch was applied, so they seem to be sporadic. I don't think
either that they are related to the fix; nevertheless wanted to get
the above clarification from you.

> does the warning/failure ever show without the patch?

Yes, they also happened in CI builds before the patch was applied.

> BTW, I just happened to see this thread
> https://lore.kernel.org/all/DM8PR11MB565580BCF44661B6A392F0CEE08B9@DM8PR11MB5655.namprd11.prod.outlook.com/
> If the problem on hand has been verified to be not related with the
> topology fix, can we update in this thread as well?

This email is in the same thread as the above message.

> https://lore.kernel.org/all/20230323015640.27906-1-rui.zhang@intel.com/
> This is another issue that the patch fixes. 

I added the above link to the patch with a References: trailer.

> And it's better to have a Buglink/Tested-by tag in the commit.

The patch has a link to a bug Jani opened, and his Tested-by can
be added while the fix is applied.

Thanks,
Imre

> thanks,
> rui
> 
> >
> > Thanks,
> > rui
> > > Thanks,
> > > Imre
> > >
> > > On Mon, Mar 27, 2023 at 07:02:25PM +0000, Patchwork wrote:
> > > > == Series Details ==
> > > >
> > > > Series: x86/topology: fix erroneous smp_num_siblings on Intel
> > > > Hybrid platform
> > > > URL   : https://patchwork.freedesktop.org/series/115661/
> > > > State : failure
> > > >
> > > > == Summary ==
> > > >
> > > > CI Bug Log - changes from CI_DRM_12921 -> Patchwork_115661v1
> > > > ====================================================
> > > >
> > > > Summary
> > > > -------
> > > >
> > > >   **FAILURE**
> > > >
> > > >   Serious unknown changes coming with Patchwork_115661v1
> > > > absolutely
> > > > need to be
> > > >   verified manually.
> > > >
> > > >   If you think the reported changes have nothing to do with the
> > > > changes
> > > >   introduced in Patchwork_115661v1, please notify your bug team
> > > > to
> > > > allow them
> > > >   to document this new failure mode, which will reduce false
> > > > positives in CI.
> > > >
> > > >   External URL:
> > > > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115661v1/index.html
> > > >
> > > > Participating hosts (37 -> 37)
> > > > ------------------------------
> > > >
> > > >   No changes in participating hosts
> > > >
> > > > Possible new issues
> > > > -------------------
> > > >
> > > >   Here are the unknown changes that may have been introduced in
> > > > Patchwork_115661v1:
> > > >
> > > > ### IGT changes ###
> > > >
> > > > #### Possible regressions ####
> > > >
> > > >   * igt@i915_selftest@live@hangcheck:
> > > >     - fi-hsw-4770:        [PASS][1] -> [DMESG-WARN][2]
> > > >    [1]:
> > > > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12921/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
> > > >    [2]:
> > > > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115661v1/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
> > > >
> > > >
> > > > #### Suppressed ####
> > > >
> > > >   The following results come from untrusted machines, tests, or
> > > > statuses.
> > > >   They do not affect the overall result.
> > > >
> > > >   * igt@fbdev@info:
> > > >     - {bat-kbl-2}:        [SKIP][3] ([fdo#109271]) -> [ABORT][4]
> > > >    [3]:
> > > > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12921/bat-kbl-2/igt@fbdev@info.html
> > > >    [4]:
> > > > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115661v1/bat-kbl-2/igt@fbdev@info.html
> > > >
> > > >
> > > > Known issues
> > > > ------------
> > > >
> > > >   Here are the changes found in Patchwork_115661v1 that come from
> > > > known issues:
> > > >
> > > > ### IGT changes ###
> > > >
> > > > #### Issues hit ####
> > > >
> > > >   * igt@gem_exec_suspend@basic-s3@lmem0:
> > > >     - bat-dg2-11:         [PASS][5] -> [INCOMPLETE][6]
> > > > ([i915#6311])
> > > >    [5]:
> > > > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12921/bat-dg2-11/igt@gem_exec_suspend@basic-s3@lmem0.html
> > > >    [6]:
> > > > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115661v1/bat-dg2-11/igt@gem_exec_suspend@basic-s3@lmem0.html
> > > >
> > > >   * igt@i915_selftest@live@reset:
> > > >     - bat-rpls-1:         [PASS][7] -> [ABORT][8] ([i915#4983])
> > > >    [7]:
> > > > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12921/bat-rpls-1/igt@i915_selftest@live@reset.html
> > > >    [8]:
> > > > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115661v1/bat-rpls-1/igt@i915_selftest@live@reset.html
> > > >
> > > >   * igt@i915_selftest@live@slpc:
> > > >     - bat-rpls-2:         NOTRUN -> [DMESG-FAIL][9] ([i915#6367]
> > > > /
> > > > [i915#7913] / [i915#7996])
> > > >    [9]:
> > > > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115661v1/bat-rpls-2/igt@i915_selftest@live@slpc.html
> > > >
> > > >   * igt@i915_suspend@basic-s3-without-i915:
> > > >     - bat-rpls-2:         NOTRUN -> [ABORT][10] ([i915#6687] /
> > > > [i915#7978])
> > > >    [10]:
> > > > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115661v1/bat-rpls-2/igt@i915_suspend@basic-s3-without-i915.html
> > > >
> > > >   * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-
> > > > dp-1:
> > > >     - bat-dg2-8:          [PASS][11] -> [FAIL][12] ([i915#7932])
> > > >    [11]:
> > > > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12921/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1.html
> > > >    [12]:
> > > > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115661v1/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1.html
> > > >
> > > >
> > > > #### Possible fixes ####
> > > >
> > > >   * igt@i915_selftest@live@gt_heartbeat:
> > > >     - fi-kbl-soraka:      [DMESG-FAIL][13] ([i915#5334] /
> > > > [i915#7872]) -> [PASS][14]
> > > >    [13]:
> > > > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12921/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
> > > >    [14]:
> > > > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115661v1/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
> > > >
> > > >   * igt@i915_selftest@live@reset:
> > > >     - bat-rpls-2:         [ABORT][15] ([i915#4983] / [i915#7913])
> > > > -> [PASS][16]
> > > >    [15]:
> > > > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12921/bat-rpls-2/igt@i915_selftest@live@reset.html
> > > >    [16]:
> > > > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115661v1/bat-rpls-2/igt@i915_selftest@live@reset.html
> > > >
> > > >
> > > >   {name}: This element is suppressed. This means it is ignored
> > > > when
> > > > computing
> > > >           the status of the difference (SUCCESS, WARNING, or
> > > > FAILURE).
> > > >
> > > >   [fdo#109271]:
> > > > https://bugs.freedesktop.org/show_bug.cgi?id=109271
> > > >   [i915#4983]:
> > > > https://gitlab.freedesktop.org/drm/intel/issues/4983
> > > >   [i915#5334]:
> > > > https://gitlab.freedesktop.org/drm/intel/issues/5334
> > > >   [i915#6311]:
> > > > https://gitlab.freedesktop.org/drm/intel/issues/6311
> > > >   [i915#6367]:
> > > > https://gitlab.freedesktop.org/drm/intel/issues/6367
> > > >   [i915#6687]:
> > > > https://gitlab.freedesktop.org/drm/intel/issues/6687
> > > >   [i915#7872]:
> > > > https://gitlab.freedesktop.org/drm/intel/issues/7872
> > > >   [i915#7913]:
> > > > https://gitlab.freedesktop.org/drm/intel/issues/7913
> > > >   [i915#7932]:
> > > > https://gitlab.freedesktop.org/drm/intel/issues/7932
> > > >   [i915#7978]:
> > > > https://gitlab.freedesktop.org/drm/intel/issues/7978
> > > >   [i915#7996]:
> > > > https://gitlab.freedesktop.org/drm/intel/issues/7996
> > > >
> > > >
> > > > Build changes
> > > > -------------
> > > >
> > > >   * Linux: CI_DRM_12921 -> Patchwork_115661v1
> > > >
> > > >   CI-20190529: 20190529
> > > >   CI_DRM_12921: 3de6040ce9900a94ec626662d5c6a227b37eeb1c @
> > > > git://anongit.freedesktop.org/gfx-ci/linux
> > > >   IGT_7221: 4b77c6d85024d22ca521d510f8eee574128fe04f @
> > > > https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> > > >   Patchwork_115661v1: 3de6040ce9900a94ec626662d5c6a227b37eeb1c @
> > > > git://anongit.freedesktop.org/gfx-ci/linux
> > > >
> > > >
> > > > ### Linux commits
> > > >
> > > > 83d9e76610d5 x86/topology: fix erroneous smp_num_siblings on
> > > > Intel
> > > > Hybrid platform
> > > >
> > > > == Logs ==
> > > >
> > > > For more details see:
> > > > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115661v1/index.html
