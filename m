Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A8319B60B
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 20:55:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C985B6E989;
	Wed,  1 Apr 2020 18:55:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com
 [IPv6:2607:f8b0:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A18836E989
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Apr 2020 18:55:40 +0000 (UTC)
Received: by mail-pg1-x542.google.com with SMTP id t24so550755pgj.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 01 Apr 2020 11:55:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9hemvv8ilIhbbLRd25pKUvPStc4U/3QKc5ivIJi4HRA=;
 b=n614lTw5mDhq0rJJ5Qkm++Dc935J46Yts8uOqtE0iNiUQW3XJNQwP7UirxH/4uGUNV
 DT5LxfmwJaXLLEpkYErYJz57fgZj+bTKrtw3wdMZ+qeUkk1Jec/+5exMLpffOVZvr8Ny
 Y2TWk0QSL25WrWlVXWxyQTNgNfIchtF9MpFn9FXQ5i7YNdnoHQKYa96nJbiOVwq09Bqj
 PZ9ULi45UWlVnbPU58K3Y6WQii/7wFFVJ+fSpSHMgjjRqWJzQUpIHFX22JkAFRYZdQeg
 XFqj/JoogUB+ZRvnc/MpRfpNtqRTGFzAdoluTT2r5gv40dJ7kBTKhLXOH9CjLdEL9ugq
 06AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9hemvv8ilIhbbLRd25pKUvPStc4U/3QKc5ivIJi4HRA=;
 b=WiSfNVJc2wc8Rc/C3ogNwiXWNbYuFWErA3Ql3FCdw5vcM/MOd/aiSQWRuWbGl5O90B
 gAkDPT4YUc5Y7oF2evsAAF0zAba6zTsVt8VChknKL5QnRD85XGSf5x6J5lx+qLSnnUhL
 BwVir1+kiFgpxgxn0LWypSMKmQ8Q2eWhJOmogehLjNw612hzagxRvjm0r3LsI08oxeTb
 lE1ABNG2uFxAwURn7ShrwIak4Bd7J07k6oEqrF6pjyLkyFtXVGH21jLZNQgbsId1TbrV
 KezXdNtpwCzm26IKCMf7Z+KH1rTqVonF/AMxsNyb7vkggrgLMDIgX2Ygz4SsT+hFRr6e
 TjhA==
X-Gm-Message-State: ANhLgQ3ebrEvLAxn04gk+HBI/5Ak8oSe2l/EQVKdGjzLO+o8BwSXVCwl
 6lh5VwkoiOS+hdO1F8DuK3MBvXsOUw0pO5ej0P0Rog==
X-Google-Smtp-Source: ADFU+vvsFJnT8kjFl/KG8VWPvA45dXfEgXXLnaQHp9MXwEENw0A476H3f0bglx8vgaa6Hn15usmd/+4Y1ULutcZI7AY=
X-Received: by 2002:a05:6a00:42:: with SMTP id
 i2mr24338854pfk.108.1585767339836; 
 Wed, 01 Apr 2020 11:55:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200331104209.432176-2-maarten.lankhorst@linux.intel.com>
 <202004011452.AyhP9ZdC%lkp@intel.com>
In-Reply-To: <202004011452.AyhP9ZdC%lkp@intel.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Wed, 1 Apr 2020 11:55:28 -0700
Message-ID: <CAKwvOdniUVifJ9b1y9bhHPkdGkLasf=mkx7XwAK_ZTEk2Q+BKg@mail.gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Philip Li <philip.li@intel.com>
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
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
 intel-gfx@lists.freedesktop.org, kbuild-all@lists.01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 31, 2020 at 11:50 PM kbuild test robot <lkp@intel.com> wrote:
>
> Hi Maarten,
>
> I love your patch! Perhaps something to improve:
>
> [auto build test WARNING on drm-tip/drm-tip]
> [also build test WARNING on next-20200331]
> [cannot apply to drm-intel/for-linux-next tip/perf/core v5.6]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
>
> url:    https://github.com/0day-ci/linux/commits/Maarten-Lankhorst/Revert-drm-i915-gem-Drop-relocation-slowpath/20200401-005710
> base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
> config: x86_64-randconfig-d003-20200331 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 5227fa0c72ce55927cf4849160acb00442489937)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> kernel/events/core.o: warning: objtool: perf_read()+0x306: stack state mismatch: reg1[3]=-2-56 reg2[3]=-1+0

Apologies Maarten, this objtool warning looks like maybe a compiler
bug for us to fix.

Philip, I tried to reproduce by cloning
git://anongit.freedesktop.org/drm/drm-tip, but I don't understand the
URL in the report.  Were Maarten's patches on top of drm-tip?  Is
there a tree you found them from (rather than me fetching the 0day
branch on github)? (Or maybe this is what a report looks like for a
series posted to the list?)  Apologies for the naivete, but I plan to
triage as many of these reports on the Clang side as I can in my free
time, so I want to make sure I understand precisely what failure is
occurring where and how.
-- 
Thanks,
~Nick Desaulniers
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
