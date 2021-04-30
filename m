Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4C4736F724
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Apr 2021 10:31:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5DA46ECF1;
	Fri, 30 Apr 2021 08:31:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1E816ECF1
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Apr 2021 08:31:51 +0000 (UTC)
IronPort-SDR: OOy/pC1MzMyYpbwQjbAiGneIuStFL9/VPxroJ9/DogbB5x8YoSkyc2quNnPpKKy8n4CqPb/N4H
 fV96m2brL1DA==
X-IronPort-AV: E=McAfee;i="6200,9189,9969"; a="176711612"
X-IronPort-AV: E=Sophos;i="5.82,262,1613462400"; d="scan'208";a="176711612"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2021 01:31:51 -0700
IronPort-SDR: 79sGhL6mYVGFhGyEbUBppDa3c316oMQfBW5bYM56m8/zNm3i5cAQ3lx3CtzFy4VvqS5x7U8Gkb
 PHTcF1k9C6+g==
X-IronPort-AV: E=Sophos;i="5.82,262,1613462400"; d="scan'208";a="387284704"
Received: from parkesse-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.19.152])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2021 01:31:50 -0700
MIME-Version: 1.0
In-Reply-To: <20210429235828.GZ1551@zhen-hp.sh.intel.com>
References: <20210429181450.GA25385@hos.afrie.home.de>
 <20210429235828.GZ1551@zhen-hp.sh.intel.com>
To: Andreas Friedrich <afrie@gmx.net>, Zhenyu Wang <zhenyuw@linux.intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <161977150734.8550.2371200514024347460@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Fri, 30 Apr 2021 11:31:47 +0300
Subject: Re: [Intel-gfx] REGRESSION with 5.12: Suspend not working on
 Toshiba notebook
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

+ intel-gfx mailing list

Quoting Zhenyu Wang (2021-04-30 02:58:28)
> On 2021.04.29 20:14:50 +0200, Andreas Friedrich wrote:
> > Hello Joonas,
> > 
> > with kernel 5.12 suspend to memory is no longer working on my old
> > Toshiba Tecra A10 notebook.
> > 
> > After calling /sbin/pm-suspend the screen is dimmed but the CPU fan is
> > still running, the system is frozen and is not in suspended state. The
> > only way to get the system working again is to hard power off and on.
> > 
> > Kernel 5.11.16 works well.
> > 
> > Bisecting the kernel leads me to your commit, which caused the problem:
> > 
> >   commit c071a6c0fef0fade787d827c7fc0e07481512326 (HEAD, refs/bisect/bad)
> >   Merge: a2dd2ff50cde 02dd2b12a685
> >   Author: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> >   Date:   Thu Jan 21 15:10:16 2021 +0200
> > 
> >     Merge tag 'gvt-gt-next-2021-01-18' of https://github.com/intel/gvt-linux into drm-intel-gt-next
> > 
> >     gvt-gt-next-2021-01-18
> > 
> >     - GVT cmd parser enhancement against guest context (Yan)
> > 
> >     Signed-off-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> >     From: Zhenyu Wang <zhenyuw@linux.intel.com>
> >     Link: https://patchwork.freedesktop.org/patch/msgid/20210118050739.GY15982@zhen-hp.sh.intel.com

That is a merge commit, it doesn't itself change anything as there were no
conflicts. It just indicates that two trees got merged.

Bisecting should end up in a commit that has code changes. Then you should
be able to try to revert the offending commit from the latest mainline kernel.
Most of the time that can be used to confirm that reverting specific commit
fixes issue (unless the commit has a lot of dependencies). This is not
required though, if you are able to bisect to a single code change commit
that'll allow us to provide fix to try.

If you are able to provide a bisect to a one patch, please do report it
as a bug, let's then take it from there.

See:

https://01.org/linuxgraphics/documentation/how-report-bugs

> > Not every suspend results in a frozen system, so I think a race
> > condition is on the way.

This would further tip the scale towards the bisect being a false
positive. I know it can be painful to do dozens of runs per each
bisecting point, but it's really needed to arrive at the right patch.

What kind of rate you have for hitting the issue on 5.12 kernel?

> > Appendix:
> > - Kernel configuration "5.12.config.gz"
> > - My grub kernel boot parameters:
> >   root=/dev/sda5 snd-hda-intel.model=toshiba resume=/dev/sda3 printk.time=1
> > 
> > Please let me know if I could help to fix the problem.
> > 
> 
> Looks gvt is not enabled in config or runtime, so can't think that gvt merge should be related...

Yes, I think the merge commit is a red herring.

Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
