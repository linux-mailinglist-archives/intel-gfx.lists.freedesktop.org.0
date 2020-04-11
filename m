Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA361A4E2D
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Apr 2020 07:10:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA7456E2A5;
	Sat, 11 Apr 2020 05:10:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2DA86E2A5
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Apr 2020 05:10:28 +0000 (UTC)
IronPort-SDR: ca26cKZO6/vwhA7x4+0PLCViikvYMyJdT/h5jPTOwsvOf6KDfgZjcshy+Znfv8TuvUBZ8Zh8mw
 cgUXxyYpTldg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2020 22:10:26 -0700
IronPort-SDR: QA7bG3lzze7EzCermbxFJU05SehoQUqqvt7LM//FTbQkouInrgR25QBa+dqUkjxLUFk6lHEIgG
 H1R8BIB3X3Qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,368,1580803200"; d="scan'208";a="244729430"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 10 Apr 2020 22:10:25 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jN8PR-0005xO-5m; Sat, 11 Apr 2020 13:10:25 +0800
Date: Sat, 11 Apr 2020 13:09:54 +0800
From: kbuild test robot <lkp@intel.com>
To: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
Message-ID: <202004111310.6qAhf3aF%lkp@intel.com>
References: <20200410165158.29546-3-venkata.s.dhanalakota@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200410165158.29546-3-venkata.s.dhanalakota@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: peel dma-fence-chains wait
 fences
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
Cc: intel-gfx@lists.freedesktop.org, kbuild-all@lists.01.org,
 chris.p.wilson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Venkata,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on drm-tip/drm-tip]
[cannot apply to drm-intel/for-linux-next linus/master v5.6 next-20200410]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Venkata-Sandeep-Dhanalakota/drm-i915-introduce-a-mechanism-to-extend-execbuf2/20200411-031057
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>


cppcheck warnings: (new ones prefixed by >>)

>> drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2550:12: warning: Either the condition '!iter_chain' is redundant or there is possible null pointer dereference: iter_chain. [nullPointerRedundantCheck]
              iter_chain->fence);
              ^
   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2547:16: note: Assuming that condition '!iter_chain' is not redundant
       GEM_BUG_ON(!iter_chain);
                  ^
   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2545:24: note: Assignment 'iter_chain=to_dma_fence_chain(iter)', assigned value is 0
        to_dma_fence_chain(iter);
                          ^
   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2550:12: note: Null pointer dereference
              iter_chain->fence);
              ^
   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1423:6: warning: The scope of the variable 'err' can be reduced. [variableScope]
    int err;
        ^
   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:3158:1: warning: Label 'end_user' is not used. [unusedLabel]
   end_user:
   ^
   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1346:21: warning: Clarify calculation precedence for '&' and '?'. [clarifyCalculation]
      len = offset & 7 ? 8 : 5;
                       ^
   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1401:24: warning: 'vaddr' is of type 'void *'. When using void pointers in calculations, the behaviour is undefined. [arithOperationsOnVoidPointer]
    clflush_write32(vaddr + offset_in_page(offset),
                          ^

vim +2550 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c

  2510	
  2511	static int
  2512	await_fence_array(struct i915_execbuffer *eb,
  2513			  struct i915_eb_fences *fences,
  2514			  int nfences)
  2515	{
  2516		unsigned int n;
  2517		int err;
  2518	
  2519		for (n = 0; n < nfences; n++) {
  2520			struct drm_syncobj *syncobj;
  2521			struct dma_fence_chain *chain;
  2522			unsigned int flags;
  2523	
  2524			syncobj = ptr_unpack_bits(fences[n].syncobj, &flags, 2);
  2525	
  2526			if (!fences[n].dma_fence)
  2527				continue;
  2528	
  2529			/*
  2530			 * If we're dealing with a dma-fence-chain, peel the chain by
  2531			 * adding all of the unsignaled fences
  2532			 * (dma_fence_chain_for_each does that for us) the chain
  2533			 * points to.
  2534			 *
  2535			 * This enables us to identify waits on i915 fences and allows
  2536			 * for faster engine-to-engine synchronization using HW
  2537			 * semaphores.
  2538			 */
  2539			chain = to_dma_fence_chain(fences[n].dma_fence);
  2540			if (chain) {
  2541				struct dma_fence *iter;
  2542	
  2543				dma_fence_chain_for_each(iter, fences[n].dma_fence) {
  2544					struct dma_fence_chain *iter_chain =
  2545						to_dma_fence_chain(iter);
  2546	
  2547					GEM_BUG_ON(!iter_chain);
  2548	
  2549					err = i915_request_await_dma_fence(eb->request,
> 2550									   iter_chain->fence);
  2551					if (err < 0) {
  2552						dma_fence_put(iter);
  2553						return err;
  2554					}
  2555				}
  2556	
  2557			} else {
  2558				err = i915_request_await_dma_fence(eb->request,
  2559								   fences[n].dma_fence);
  2560				if (err < 0)
  2561					return err;
  2562			}
  2563		}
  2564	
  2565		return 0;
  2566	}
  2567	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
