Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 339EB2C3222
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 21:48:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97C188997E;
	Tue, 24 Nov 2020 20:48:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD1F08997E
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Nov 2020 20:48:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23096819-1500050 for multiple; Tue, 24 Nov 2020 20:47:54 +0000
MIME-Version: 1.0
In-Reply-To: <20201119072018.GA15197@xsang-OptiPlex-9020>
References: <20201111155811.GB24657@xsang-OptiPlex-9020>
 <160527763346.5566.3471508802857132043@jlahtine-mobl.ger.corp.intel.com>
 <20201119072018.GA15197@xsang-OptiPlex-9020>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Oliver Sang <oliver.sang@intel.com>
Date: Tue, 24 Nov 2020 20:47:52 +0000
Message-ID: <160625087275.29168.7080737993781611765@build.alporthouse.com>
User-Agent: alot/0.9
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
Cc: feng.tang@intel.com, tiejun.li@intel.com, guangli.li@intel.com,
 frank.du@intel.com, guobing.chen@intel.com, jiebin.sun@intel.com,
 Shuhua.Fan@intel.com, Matthew Auld <matthew.auld@intel.com>,
 fan.zhao@intel.com, ying.huang@intel.com, shan.kang@intel.com,
 zhengjun.xing@intel.com, zhengjun.xing@linux.intel.com,
 Wenhuan.Huang@intel.com, intel-gfx@lists.freedesktop.org, lkp@lists.01.org,
 ming.a.chen@intel.com, yu.ma@intel.com, jessica.ji@intel.com,
 dapeng1.mi@intel.com, wangyang.guo@intel.com,
 LKML <linux-kernel@vger.kernel.org>, gengxin.xie@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Oliver Sang (2020-11-19 07:20:18)
> On Fri, Nov 13, 2020 at 04:27:13PM +0200, Joonas Lahtinen wrote:
> > Hi,
> > 
> > Could you add intel-gfx@lists.freedesktop.org into reports going
> > forward.
> > 
> > Quoting kernel test robot (2020-11-11 17:58:11)
> > > 
> > > Greeting,
> > > 
> > > FYI, we noticed a -54.0% regression of phoronix-test-suite.jxrendermark.RadialGradientPaint.1024x1024.operations_per_second due to commit:
> > 
> > How many runs are there on the bad version to ensure the bisect is
> > repeatable?
> 
> test 4 times.
> zxing@inn:/result/phoronix-test-suite/performance-true-Radial_Gradient_Paint-1024x1024-jxrendermark-1.2.4-ucode=0xd6-monitor=da39a3ee/lkp-cfl-d1/debian-x86_64-phoronix/x86_64-rhel-8.3/gcc-9/59dd13ad310793757e34afa489dd6fc8544fc3da$ grep -r "operations_per_second" */stats.json
> 0/stats.json: "phoronix-test-suite.jxrendermark.RadialGradientPaint.1024x1024.operations_per_second": 4133.487932,
> 1/stats.json: "phoronix-test-suite.jxrendermark.RadialGradientPaint.1024x1024.operations_per_second": 4120.421503,
> 2/stats.json: "phoronix-test-suite.jxrendermark.RadialGradientPaint.1024x1024.operations_per_second": 4188.414835,
> 3/stats.json: "phoronix-test-suite.jxrendermark.RadialGradientPaint.1024x1024.operations_per_second": 4068.549514,

a w/o revert (drm-tip)
b w/ revert
+mB----------------------------------------------------------------------------+
|                             ..b                                              |
|                             ..b.aa                                           |
|                             ....a.a                                          |
|                             ....a.a                                          |
|                      b  b  ........a                                         |
|                   b  b  b b......... a                                       |
|                   b  bb bbb...........                                       |
|b               ab bbab.bb.b............ba b a a            ab               a|
|                             |__A__|                                          |
|                             |MA_|                                            |
+------------------------------------------------------------------------------+
    N                Min           Max        Median           Avg        Stddev
a 120          3621.8761     7356.4442     4606.7895     4607.9132     156.17693
b 120          2664.0563     6359.9686     4519.5036     4534.4463     95.471121

The patch is not expected to have any impact on the machine you are testing on.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
