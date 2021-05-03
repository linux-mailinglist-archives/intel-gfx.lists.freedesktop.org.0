Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A994B37124B
	for <lists+intel-gfx@lfdr.de>; Mon,  3 May 2021 10:13:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A2F389D66;
	Mon,  3 May 2021 08:13:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BAEC89D66
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 May 2021 08:13:30 +0000 (UTC)
IronPort-SDR: I04ElsJz0vh/5Kifn3nvP5WE/fG1NwlVHbg3ZZcc2CwntIRf9GPwdMMCnG+jdJii/15lj5BPnD
 kajoRjUPsNEw==
X-IronPort-AV: E=McAfee;i="6200,9189,9972"; a="177897216"
X-IronPort-AV: E=Sophos;i="5.82,268,1613462400"; d="scan'208";a="177897216"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2021 01:13:29 -0700
IronPort-SDR: qqQoHg8ctibJZ8yzJJn5NIm+Gvrk1wn6WyflKV3gb0EG9WDM4HVw0mVGHXGyU93xXhLH2iQz54
 AiPHe+ganPUA==
X-IronPort-AV: E=Sophos;i="5.82,268,1613462400"; d="scan'208";a="530296971"
Received: from abhijits-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.13.203])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2021 01:13:27 -0700
MIME-Version: 1.0
In-Reply-To: <20210430103635.GA16501@hos.afrie.home.de>
References: <20210429181450.GA25385@hos.afrie.home.de>
 <20210429235828.GZ1551@zhen-hp.sh.intel.com>
 <161977150734.8550.2371200514024347460@jlahtine-mobl.ger.corp.intel.com>
 <20210430103635.GA16501@hos.afrie.home.de>
To: Andreas Friedrich <afrie@gmx.net>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <162002960518.3526.10925040263559391423@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Mon, 03 May 2021 11:13:25 +0300
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

Quoting Andreas Friedrich (2021-04-30 13:36:35)
> On Fri, Apr 30, 2021 at 11:31:47AM +0300, Joonas Lahtinen wrote:
> 
> Hello Joonas,
> 
> thank you for your quick response.
> ...
> > That is a merge commit, it doesn't itself change anything as there were no
> > conflicts. It just indicates that two trees got merged.
> ...
> > If you are able to provide a bisect to a one patch, please do report it
> > as a bug, let's then take it from there.
> 
> I have bisect the kernel 3 times and it always leads me to the wrong
> end. Because not every suspend results in a frozen system, maybe I
> have marked a 'bisect good' although it was bad.

This is most likely the problem. You should try each suggested commit
enough times to gain confidence in if it's good or bad build.

> What I surely can say is, that kernel 5.11.16 works fine and 5.12-rc1
> (v5.12-rc1-dontuse) does not.
> 
> However, on the bisecting path I saw the following commits:
>   [41a9c75d0acf23f33f012d3f9535de9e9b631051] drm/i915/gem: Move stolen node into GEM object union
>   [d82afcf9caaac26ce2642511115bca9dacf30f41] Merge tag 'drm-intel-gt-next-2021-01-21-1' of git://anongit.freedesktop.org/drm/drm-intel into drm-next
>   [885e1938452fc7fc37a3051d76e1ddb7ead099fa] drm/i915/gvt: statically set F_CMD_WRITE_PATCH flag
>   [a2dd2ff50cde3cbbeecec72225bb18582b291f14] drm/i915/gt: Skip over completed active execlists, again
>   [02dd2b12a685944c4d52c569d05f636372a7b6c7] drm/i915/gvt: unify lri cmd handler and mmio handlers
>   [69b4b99842201bc24c98ba66b922d8879e190483] drm/i915/gvt: Add missing forward decl of intel_vgpu for HDRTEST
>   [c071a6c0fef0fade787d827c7fc0e07481512326] Merge tag 'gvt-gt-next-2021-01-18' of https://github.com/intel/gvt-linux into drm-intel-gt-next

As Zhenyu mentioned, you don't even have GVT module enabled, so most of
those are guaranteed to be incorrectly bisected. And there are two merge
commits with no conflicts (== no code change).

Bisect should end so that the previous commit is good, and the new
commit is bad. If there are no code changes in the commit, there's
no way it can be the commit that is really the culprit.

Without a proper bisect, it'll be quite difficult to start the triage
on our side.

> So I think it's a drm-i915 issue. I have communicated with David
> Airlie (airlied@redhat.com) and he also bets on an i915 bug.

It's very possible that it can be i915 bug. What you can try is to
blacklist i915 module and operate the system with SSH and see if the
latest kernel still freezes?

Also, please try drm-tip kernel and see if it fixed there.

> > https://01.org/linuxgraphics/documentation/how-report-bugs
> 
> Following https://gitlab.freedesktop.org/drm/intel/-/wikis/How-to-file-i915-bugs
> I can give you the following infos:
>   - After calling 'echo mem > /sys/power/state' the system gets frozen
>     (the screen is dimmed but the CPU fan is still running). The
>     system is inaccessible from remote. The only way to get it working
>     again is to hard power off and on.
>   - One out of 5 suspend tries will cause the issue, mostly the first one.
>   - Notebook: Old Toshiba Tecra A10 from 2009.
>   - x86_64, 5.12-rc1, Debian GNU/Linux 10 (buster), see dmidecode.txt.gz
>     and 5.12.config.gz
>   - Because the system is frozen, I cannot read /sys/class/drm/card0/error
>     before rebooting.
> 
> Please let me know if I can do anyting else to solve the problem.

Please do file a bug on the issue tracker as requested:

https://gitlab.freedesktop.org/drm/intel/issues/

Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
