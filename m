Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 551691E8E0C
	for <lists+intel-gfx@lfdr.de>; Sat, 30 May 2020 07:54:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9891B6E9B7;
	Sat, 30 May 2020 05:54:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 321D56E9B7
 for <intel-gfx@lists.freedesktop.org>; Sat, 30 May 2020 05:54:16 +0000 (UTC)
IronPort-SDR: 4ifjhRDfX7Kr7cUIPnoFHb+ORGQyZ9TNOj+Zpj8TAXyedT0E3nAtSS7OQWH/K4zSIZyoyH3+kj
 8YMBI3Nrk5yg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2020 22:54:15 -0700
IronPort-SDR: G8Su2CEKrfOHDdoBoaaUbYSlAyCtnq/6Xk4b2lOlEK9EM5epIuHAzHJQOV8TyZZE1gAHTRG2uP
 Y1FhcJfpiJlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,451,1583222400"; d="scan'208";a="267771614"
Received: from lkp-server01.sh.intel.com (HELO 9f9df8056aac) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 29 May 2020 22:54:14 -0700
Received: from kbuild by 9f9df8056aac with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jeuRh-0000bd-I7; Sat, 30 May 2020 05:54:13 +0000
Date: Sat, 30 May 2020 13:53:32 +0800
From: kbuild test robot <lkp@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>,
	intel-gfx@lists.freedesktop.org
Message-ID: <202005301318.3mRNJxfp%lkp@intel.com>
References: <20200525075347.582-6-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200525075347.582-6-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 06/12] dma-buf: Proxy fence,
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
Cc: kbuild-all@lists.01.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on drm-tip/drm-tip]
[cannot apply to drm-intel/for-linux-next linus/master v5.7-rc7 next-20200529]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Chris-Wilson/drm-i915-gt-Stop-cross-polluting-PIN_GLOBAL-with-PIN_USER-with-no-ppgtt/20200525-160038
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
compiler: gcc-9 (Debian 9.3.0-13) 9.3.0

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>


cppcheck warnings: (new ones prefixed by >>)

>> drivers/dma-buf/st-dma-fence-proxy.c:127:6: warning: Variable 'err' is reassigned a value before the old one has been used. [redundantAssignment]
    err = 0;
        ^
   drivers/dma-buf/st-dma-fence-proxy.c:109:0: note: Variable 'err' is reassigned a value before the old one has been used.
    int err = -EINVAL;
   ^
   drivers/dma-buf/st-dma-fence-proxy.c:127:6: note: Variable 'err' is reassigned a value before the old one has been used.
    err = 0;
        ^
   drivers/dma-buf/st-dma-fence-proxy.c:146:6: warning: Variable 'err' is reassigned a value before the old one has been used. [redundantAssignment]
    err = 0;
        ^
   drivers/dma-buf/st-dma-fence-proxy.c:136:0: note: Variable 'err' is reassigned a value before the old one has been used.
    int err = -EINVAL;
   ^
   drivers/dma-buf/st-dma-fence-proxy.c:146:6: note: Variable 'err' is reassigned a value before the old one has been used.
    err = 0;
        ^
   drivers/dma-buf/st-dma-fence-proxy.c:175:6: warning: Variable 'err' is reassigned a value before the old one has been used. [redundantAssignment]
    err = 0;
        ^
   drivers/dma-buf/st-dma-fence-proxy.c:155:0: note: Variable 'err' is reassigned a value before the old one has been used.
    int err = -EINVAL;
   ^
   drivers/dma-buf/st-dma-fence-proxy.c:175:6: note: Variable 'err' is reassigned a value before the old one has been used.
    err = 0;
        ^
   drivers/dma-buf/st-dma-fence-proxy.c:217:6: warning: Variable 'err' is reassigned a value before the old one has been used. [redundantAssignment]
    err = 0;
        ^
   drivers/dma-buf/st-dma-fence-proxy.c:185:0: note: Variable 'err' is reassigned a value before the old one has been used.
    int err = -EINVAL;
   ^
   drivers/dma-buf/st-dma-fence-proxy.c:217:6: note: Variable 'err' is reassigned a value before the old one has been used.
    err = 0;
        ^
   drivers/dma-buf/st-dma-fence-proxy.c:254:6: warning: Variable 'err' is reassigned a value before the old one has been used. [redundantAssignment]
    err = 0;
        ^
   drivers/dma-buf/st-dma-fence-proxy.c:238:0: note: Variable 'err' is reassigned a value before the old one has been used.
    int err = -EINVAL;
   ^
   drivers/dma-buf/st-dma-fence-proxy.c:254:6: note: Variable 'err' is reassigned a value before the old one has been used.
    err = 0;
        ^
   drivers/dma-buf/st-dma-fence-proxy.c:293:6: warning: Variable 'err' is reassigned a value before the old one has been used. [redundantAssignment]
    err = 0;
        ^
   drivers/dma-buf/st-dma-fence-proxy.c:265:0: note: Variable 'err' is reassigned a value before the old one has been used.
    int err = -EINVAL;
   ^
   drivers/dma-buf/st-dma-fence-proxy.c:293:6: note: Variable 'err' is reassigned a value before the old one has been used.
    err = 0;
        ^
   drivers/dma-buf/st-dma-fence-proxy.c:321:6: warning: Variable 'err' is reassigned a value before the old one has been used. [redundantAssignment]
    err = 0;
        ^
   drivers/dma-buf/st-dma-fence-proxy.c:303:0: note: Variable 'err' is reassigned a value before the old one has been used.
    int err = -EINVAL;
   ^
   drivers/dma-buf/st-dma-fence-proxy.c:321:6: note: Variable 'err' is reassigned a value before the old one has been used.
    err = 0;
        ^
   drivers/dma-buf/st-dma-fence-proxy.c:348:6: warning: Variable 'err' is reassigned a value before the old one has been used. [redundantAssignment]
    err = 0;
        ^
   drivers/dma-buf/st-dma-fence-proxy.c:331:0: note: Variable 'err' is reassigned a value before the old one has been used.
    int err = -EINVAL;
   ^
   drivers/dma-buf/st-dma-fence-proxy.c:348:6: note: Variable 'err' is reassigned a value before the old one has been used.
    err = 0;
        ^
   drivers/dma-buf/st-dma-fence-proxy.c:377:6: warning: Variable 'err' is reassigned a value before the old one has been used. [redundantAssignment]
    err = 0;
        ^
   drivers/dma-buf/st-dma-fence-proxy.c:358:0: note: Variable 'err' is reassigned a value before the old one has been used.
    int err = -EINVAL;
   ^
   drivers/dma-buf/st-dma-fence-proxy.c:377:6: note: Variable 'err' is reassigned a value before the old one has been used.
    err = 0;
        ^
   drivers/dma-buf/st-dma-fence-proxy.c:404:6: warning: Variable 'err' is reassigned a value before the old one has been used. [redundantAssignment]
    err = 0;
        ^
   drivers/dma-buf/st-dma-fence-proxy.c:387:0: note: Variable 'err' is reassigned a value before the old one has been used.
    int err = -EINVAL;
   ^
   drivers/dma-buf/st-dma-fence-proxy.c:404:6: note: Variable 'err' is reassigned a value before the old one has been used.
    err = 0;
        ^
   drivers/dma-buf/st-dma-fence-proxy.c:435:6: warning: Variable 'err' is reassigned a value before the old one has been used. [redundantAssignment]
    err = 0;
        ^
   drivers/dma-buf/st-dma-fence-proxy.c:414:0: note: Variable 'err' is reassigned a value before the old one has been used.
    int err = -EINVAL;
   ^
   drivers/dma-buf/st-dma-fence-proxy.c:435:6: note: Variable 'err' is reassigned a value before the old one has been used.
    err = 0;
        ^
   drivers/dma-buf/st-dma-fence-proxy.c:466:6: warning: Variable 'err' is reassigned a value before the old one has been used. [redundantAssignment]
    err = 0;

vim +/err +127 drivers/dma-buf/st-dma-fence-proxy.c

   105	
   106	static int wrap_target(void *arg)
   107	{
   108		struct fences f;
   109		int err = -EINVAL;
   110	
   111		if (create_fences(&f, false))
   112			return -ENOMEM;
   113	
   114		if (dma_fence_proxy_get_real(f.proxy) != f.proxy) {
   115			pr_err("Unwrapped proxy fenced reported a target fence!\n");
   116			goto err_free;
   117		}
   118	
   119		dma_fence_proxy_set_real(f.proxy, f.real);
   120		rcu_assign_pointer(f.slot, dma_fence_get(f.real)); /* free_fences() */
   121	
   122		if (dma_fence_proxy_get_real(f.proxy) != f.real) {
   123			pr_err("Wrapped proxy fenced did not report the target fence!\n");
   124			goto err_free;
   125		}
   126	
 > 127		err = 0;
   128	err_free:
   129		free_fences(&f);
   130		return err;
   131	}
   132	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
