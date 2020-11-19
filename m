Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EBC62B8BE6
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Nov 2020 08:06:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EA9C6E4F3;
	Thu, 19 Nov 2020 07:06:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6196A6E4F3
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Nov 2020 07:06:05 +0000 (UTC)
IronPort-SDR: NpWKnSw4vunvN4pne5Pq+lLKND4nYUiFdqGLHr2tQBEU9nUOYwcwThD9sek6byv4Zsa03umZVT
 ZDaC7wzuzvmQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9809"; a="150512933"
X-IronPort-AV: E=Sophos;i="5.77,489,1596524400"; d="scan'208";a="150512933"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2020 23:06:05 -0800
IronPort-SDR: dMwpwwAbDsFmjME4k+rOxpbx2OFoZr2n4f3zjdBOL57nmGyJY8HnKibfxYczauYR496aIy8fF/
 57P0qH6OULNw==
X-IronPort-AV: E=Sophos;i="5.77,489,1596524400"; d="scan'208";a="310959751"
Received: from xsang-optiplex-9020.sh.intel.com (HELO xsang-OptiPlex-9020)
 ([10.239.159.140])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2020 23:05:59 -0800
Date: Thu, 19 Nov 2020 15:20:18 +0800
From: Oliver Sang <oliver.sang@intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Message-ID: <20201119072018.GA15197@xsang-OptiPlex-9020>
References: <20201111155811.GB24657@xsang-OptiPlex-9020>
 <160527763346.5566.3471508802857132043@jlahtine-mobl.ger.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160527763346.5566.3471508802857132043@jlahtine-mobl.ger.corp.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [drm/i915/gem] 59dd13ad31:
 phoronix-test-suite.jxrendermark.RadialGradientPaint.1024x1024.operations_per_second
 -54.0% regression
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
Cc: feng.tang@intel.com, tiejun.li@intel.com,
 Chris Wilson <chris@chris-wilson.co.uk>, frank.du@intel.com,
 guobing.chen@intel.com, jiebin.sun@intel.com, Shuhua.Fan@intel.com,
 Matthew Auld <matthew.auld@intel.com>, fan.zhao@intel.com,
 ying.huang@intel.com, shan.kang@intel.com, zhengjun.xing@intel.com,
 zhengjun.xing@linux.intel.com, Wenhuan.Huang@intel.com,
 intel-gfx@lists.freedesktop.org, guangli.li@intel.com, gengxin.xie@intel.com,
 ming.a.chen@intel.com, yu.ma@intel.com, jessica.ji@intel.com, lkp@lists.01.org,
 wangyang.guo@intel.com, dapeng1.mi@intel.com,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Nov 13, 2020 at 04:27:13PM +0200, Joonas Lahtinen wrote:
> Hi,
> =

> Could you add intel-gfx@lists.freedesktop.org into reports going
> forward.
> =

> Quoting kernel test robot (2020-11-11 17:58:11)
> > =

> > Greeting,
> > =

> > FYI, we noticed a -54.0% regression of phoronix-test-suite.jxrendermark=
.RadialGradientPaint.1024x1024.operations_per_second due to commit:
> =

> How many runs are there on the bad version to ensure the bisect is
> repeatable?

test 4 times.
zxing@inn:/result/phoronix-test-suite/performance-true-Radial_Gradient_Pain=
t-1024x1024-jxrendermark-1.2.4-ucode=3D0xd6-monitor=3Dda39a3ee/lkp-cfl-d1/d=
ebian-x86_64-phoronix/x86_64-rhel-8.3/gcc-9/59dd13ad310793757e34afa489dd6fc=
8544fc3da$ grep -r "operations_per_second" */stats.json
0/stats.json: "phoronix-test-suite.jxrendermark.RadialGradientPaint.1024x10=
24.operations_per_second": 4133.487932,
1/stats.json: "phoronix-test-suite.jxrendermark.RadialGradientPaint.1024x10=
24.operations_per_second": 4120.421503,
2/stats.json: "phoronix-test-suite.jxrendermark.RadialGradientPaint.1024x10=
24.operations_per_second": 4188.414835,
3/stats.json: "phoronix-test-suite.jxrendermark.RadialGradientPaint.1024x10=
24.operations_per_second": 4068.549514,

> =

> According to Chris test has various factors affecting why the result
> could fluctuate and has been known. Reverting the patch did not have
> an effect on the benchmark and was not expected to do so, either.
> =

> Is there some mechanism to queue a re-run?
> =

> Would it make sense to do further runs before sending out the e-mail
> to avoid false positives.
> =

> It could of course be also solved by sticking to tests that have less
> fluctuation in them.
> =

> Regards, Joonas
> =

> > =

> > =

> > commit: 59dd13ad310793757e34afa489dd6fc8544fc3da ("drm/i915/gem: Flush =
coherency domains on first set-domain-ioctl")
> > https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git master
> > =

> > =

> > in testcase: phoronix-test-suite
> > on test machine: 12 threads Intel(R) Core(TM) i7-8700 CPU @ 3.20GHz wit=
h 8G memory
> > with following parameters:
> > =

> >         need_x: true
> >         test: jxrendermark-1.2.4
> >         option_a: Radial Gradient Paint
> >         option_b: 1024x1024
> >         cpufreq_governor: performance
> >         ucode: 0xd6
> > =

> > test-description: The Phoronix Test Suite is the most comprehensive tes=
ting and benchmarking platform available that provides an extensible framew=
ork for which new tests can be easily added.
> > test-url: http://www.phoronix-test-suite.com/
> > =

> > =

> > =

> > If you fix the issue, kindly add following tag
> > Reported-by: kernel test robot <oliver.sang@intel.com>
> > =

> > =

> > Details are as below:
> > -----------------------------------------------------------------------=
--------------------------->
> > =

> > =

> > To reproduce:
> > =

> >         git clone https://github.com/intel/lkp-tests.git
> >         cd lkp-tests
> >         bin/lkp install job.yaml  # job file is attached in this email
> >         bin/lkp run     job.yaml
> > =

> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > compiler/cpufreq_governor/kconfig/need_x/option_a/option_b/rootfs/tbox_=
group/test/testcase/ucode:
> >   gcc-9/performance/x86_64-rhel-8.3/true/Radial Gradient Paint/1024x102=
4/debian-x86_64-phoronix/lkp-cfl-d1/jxrendermark-1.2.4/phoronix-test-suite/=
0xd6
> > =

> > commit: =

> >   0dccdba51e ("Merge tag 'gvt-fixes-2020-10-30' of https://github.com/i=
ntel/gvt-linux into drm-intel-fixes")
> >   59dd13ad31 ("drm/i915/gem: Flush coherency domains on first set-domai=
n-ioctl")
> > =

> > 0dccdba51e852271 59dd13ad310793757e34afa489d =

> > ---------------- --------------------------- =

> >          %stddev     %change         %stddev
> >              \          |                \  =

> >       8980 =B1  2%     -54.0%       4127        phoronix-test-suite.jxr=
endermark.RadialGradientPaint.1024x1024.operations_per_second
> >       9.00           +13.9%      10.25 =B1  4%  phoronix-test-suite.tim=
e.percent_of_cpu_this_job_got
> > =

> > =

> >                                                                        =
         =

> >                                                                        =
         =

> >                                                                        =
         =

> >   10000 +--------------------------------------------------------------=
-----+   =

> >         |                                                              =
     |   =

> >    9000 |-+.+. .+.+.+.+.+.   .+. .+.   .+. .+.+.     .+. .+.   .+. .+.+=
.   .|   =

> >         |.+   +           +.+   +   +.+   +     +.+.+   +   +.+   +    =
 +.+ |   =

> >         |                                                              =
     |   =

> >    8000 |-+                                                            =
     |   =

> >         |                                                              =
     |   =

> >    7000 |-+                                                            =
     |   =

> >         |                                                              =
     |   =

> >    6000 |-+                                                            =
     |   =

> >         |                                                              =
     |   =

> >         |                                                              =
     |   =

> >    5000 |-+                                                            =
     |   =

> >         |                                 O                            =
     |   =

> >    4000 +--------------------------------------------------------------=
-----+   =

> >                                                                        =
         =

> >                                                                        =
         =

> > [*] bisect-good sample
> > [O] bisect-bad  sample
> > =

> > =

> > =

> > Disclaimer:
> > Results have been estimated based on internal Intel analysis and are pr=
ovided
> > for informational purposes only. Any difference in system hardware or s=
oftware
> > design or configuration may affect actual performance.
> > =

> > =

> > Thanks,
> > Oliver Sang
> > =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
