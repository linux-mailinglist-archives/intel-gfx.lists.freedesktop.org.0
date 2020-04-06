Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 414C619FD3B
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 20:32:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D16D6E486;
	Mon,  6 Apr 2020 18:32:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com
 [IPv6:2607:f8b0:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCE6D6E486
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Apr 2020 18:32:52 +0000 (UTC)
Received: by mail-pg1-x541.google.com with SMTP id 142so383926pgf.11
 for <intel-gfx@lists.freedesktop.org>; Mon, 06 Apr 2020 11:32:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IaZZniu2nqj9iMIGbHp0TAPHR1uhJQf0LZ9KAZAQHU8=;
 b=lVYKINPg8RiohPxw0fahZtiJQlwN5CflA3dczEE6HBcagd4ZwZhA96NTtig+t1+rgg
 Y4b5tNLTdw3nBfo6V+YVqKs98+UkZu32+JlfL8kcjUvs1cjEl1xmuaO8jqkMy6dYWiUt
 1pL2vl6YHQHvQrd2fr3Ad1+GQpxiqvOHN2RHBTAVJNfB1Q4oEQCCbsu3l6Z8Hkg/QizE
 YEnuef88cTz5SHRl79P5g/ohlQ0+GbOr3RqwNCBBrl6HwvWwwMzZKWUe0vHdCLWofHSB
 aiigzHuzs3684oiviSw5virCRhgEXILSCrNKb8JO7sAy+ROqyKDHnibWP9aihfVaqoOj
 bSng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IaZZniu2nqj9iMIGbHp0TAPHR1uhJQf0LZ9KAZAQHU8=;
 b=iHcQK1QTUmMG89bXIJqSbMqkwKG/29bwmEJe2eJBdcDuFkbBLruFTEkb2KFBdoR5ZV
 9To7pv5hFKB+kOC6aJIqNn5aR7rxjLJ0jK8sThXhidF63M5B/iTxGhnyb/k1FjXZaWns
 t9gQ2hifTOLTpI6++HF+Af1rWZwipnR2GUvRd51e3dN5UDupT0HNxoBcBgKOtzRS9hi4
 qPXtDmbRa+nWoD3G93Fesiq3WJvyLgDcNHzR8DEzm56O8I16tnXlFBdypPI7O41KAu4a
 K4zGe6/IHKljBKa5EAZF317AXtXQzB+U0VUgHnxhHqU4QZlsJg6K/GrIIs3N2KHa34/G
 f+Vw==
X-Gm-Message-State: AGi0PubOGcu96saZ1C87Jp2y7Ywnc6sc/6NoBbEi3DdcVcnkhv+DJ2eL
 b6nj1/LQ0X7itD7DBzQQzwDNmWDKFQutN88R57WJ4JMu
X-Google-Smtp-Source: APiQypI5EG8FQ+XpgFD5ep21PhcSkvr2mEEDTPQX9q7zYuSUAxCGkxgN1EsX6rrLS1fGu+GkyNrKcIl7FtYx7oQfH+I=
X-Received: by 2002:aa7:919a:: with SMTP id x26mr772441pfa.39.1586197972082;
 Mon, 06 Apr 2020 11:32:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200403091300.14734-6-chris@chris-wilson.co.uk>
 <202004060637.bUOdDm7x%lkp@intel.com>
In-Reply-To: <202004060637.bUOdDm7x%lkp@intel.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 6 Apr 2020 11:32:41 -0700
Message-ID: <CAKwvOd=6L9Y_YmVDvbj_KoU=Y6OiVrvtdkiSNOkYL3FA+LP6Xg@mail.gmail.com>
To: kbuild test robot <lkp@intel.com>
Subject: Re: [Intel-gfx] [PATCH 06/10] dma-buf: Proxy fence,
 an unsignaled fence placeholder
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
 intel-gfx@lists.freedesktop.org, kbuild-all@lists.01.org,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Apr 5, 2020 at 3:16 PM kbuild test robot <lkp@intel.com> wrote:
>
> Hi Chris,
>
> Thank you for the patch! Perhaps something to improve:
>
> [auto build test WARNING on drm-tip/drm-tip]
> [cannot apply to drm-intel/for-linux-next linus/master v5.6 next-20200405]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
>
> url:    https://github.com/0day-ci/linux/commits/Chris-Wilson/drm-i915-selftests-Add-request-throughput-measurement-to-perf/20200404-174829
> base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
> config: x86_64-randconfig-d001-20200405 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project be84d2b5b7e9c98e93bf8565e3e178e43ea0ec0a)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/dma-buf/dma-fence-proxy.o: warning: objtool: __llvm_gcov_writeout()+0x1: call without frame pointer save/setup
> >> drivers/dma-buf/dma-fence-proxy.o: warning: objtool: __llvm_gcov_flush()+0x0: call without frame pointer save/setup
> >> drivers/dma-buf/dma-fence-proxy.o: warning: objtool: __llvm_gcov_init()+0x0: call without frame pointer save/setup

Sorry for the noise, this is a known pre-existing issue not caused by
this patch.

-- 
Thanks,
~Nick Desaulniers
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
