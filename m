Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E19C219B8CF
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 01:05:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A4446E9BB;
	Wed,  1 Apr 2020 23:05:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE9E66E9BB
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Apr 2020 23:05:21 +0000 (UTC)
IronPort-SDR: DTGI1aaLaNKC7R0Gi/7QnRd4Oe0w5oEPiIYHlYnECdFMqiZcXbhO2RUfi0UmmgJq5ze5U3vq0a
 vlmj2g0z1FQw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2020 16:05:21 -0700
IronPort-SDR: ZIlyBX7qf6CFewib8rv/C9NE3o9wVTQCvbLWkI9MkZCbxh/WXcERTxSkJ5s/OrjdVr0ORqyWzM
 xp10HO35e7fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,333,1580803200"; d="scan'208";a="449396866"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
 by fmsmga005.fm.intel.com with ESMTP; 01 Apr 2020 16:05:18 -0700
Date: Thu, 2 Apr 2020 07:04:43 +0800
From: Philip Li <philip.li@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Message-ID: <20200401230443.GA3836@intel.com>
References: <20200331104209.432176-2-maarten.lankhorst@linux.intel.com>
 <202004011452.AyhP9ZdC%lkp@intel.com>
 <CAKwvOdniUVifJ9b1y9bhHPkdGkLasf=mkx7XwAK_ZTEk2Q+BKg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKwvOdniUVifJ9b1y9bhHPkdGkLasf=mkx7XwAK_ZTEk2Q+BKg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 02/23] perf/core: Only copy-to-user after
 completely unlocking all locks.
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
Cc: kbuild-all@lists.01.org, intel-gfx@lists.freedesktop.org,
 clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 01, 2020 at 11:55:28AM -0700, Nick Desaulniers wrote:
> On Tue, Mar 31, 2020 at 11:50 PM kbuild test robot <lkp@intel.com> wrote:
> >
> > Hi Maarten,
> >
> > I love your patch! Perhaps something to improve:
> >
> > [auto build test WARNING on drm-tip/drm-tip]
> > [also build test WARNING on next-20200331]
> > [cannot apply to drm-intel/for-linux-next tip/perf/core v5.6]
> > [if your patch is applied to the wrong git tree, please drop us a note to help
> > improve the system. BTW, we also suggest to use '--base' option to specify the
> > base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> >
> > url:    https://github.com/0day-ci/linux/commits/Maarten-Lankhorst/Revert-drm-i915-gem-Drop-relocation-slowpath/20200401-005710
> > base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
> > config: x86_64-randconfig-d003-20200331 (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 5227fa0c72ce55927cf4849160acb00442489937)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # save the attached .config to linux build tree
> >         COMPILER=clang make.cross ARCH=x86_64
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> kernel/events/core.o: warning: objtool: perf_read()+0x306: stack state mismatch: reg1[3]=-2-56 reg2[3]=-1+0
> 
> Apologies Maarten, this objtool warning looks like maybe a compiler
> bug for us to fix.
> 
> Philip, I tried to reproduce by cloning
> git://anongit.freedesktop.org/drm/drm-tip, but I don't understand the
> URL in the report.  Were Maarten's patches on top of drm-tip?  Is
Hi Nick, this is report for patch we receive from the mailing list, so the patch series
is applied on "git://anongit.freedesktop.org/drm/drm-tip drm-tip", and form a branch
at "https://github.com/0day-ci/linux/commits/Maarten-Lankhorst/Revert-drm-i915-gem-Drop-relocation-slowpath/20200401-005710".

The url is the real code to be checked out that can be used to reproduce.

Thanks

> there a tree you found them from (rather than me fetching the 0day
> branch on github)? (Or maybe this is what a report looks like for a
> series posted to the list?)  Apologies for the naivete, but I plan to
> triage as many of these reports on the Clang side as I can in my free
> time, so I want to make sure I understand precisely what failure is
> occurring where and how.
> -- 
> Thanks,
> ~Nick Desaulniers
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
