Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB9712B39B
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Dec 2019 10:44:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 194A56E14F;
	Fri, 27 Dec 2019 09:44:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80BEE6E14F
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Dec 2019 09:44:48 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Dec 2019 01:44:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,362,1571727600"; d="scan'208";a="418236511"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 27 Dec 2019 01:44:46 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1ikmAo-000GY4-Fc; Fri, 27 Dec 2019 17:44:46 +0800
Date: Fri, 27 Dec 2019 17:43:48 +0800
From: kbuild test robot <lkp@intel.com>
To: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Message-ID: <201912271741.XcsFG2WF%lkp@intel.com>
References: <20191223041512.3582-1-abdiel.janulgue@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191223041512.3582-1-abdiel.janulgue@linux.intel.com>
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Introduce remap_io_sg() to
 prefault discontiguous objects
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
Cc: intel-gfx@lists.freedesktop.org, kbuild-all@lists.01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Abdiel,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on drm-intel/for-linux-next]
[also build test WARNING on drm-tip/drm-tip v5.5-rc3 next-20191220]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Abdiel-Janulgue/drm-i915-Introduce-remap_io_sg-to-prefault-discontiguous-objects/20191225-032829
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.1-129-g341daf20-dirty
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

>> drivers/gpu/drm/i915/i915_mm.c:130:32: sparse: sparse: Using plain integer as NULL pointer

vim +130 drivers/gpu/drm/i915/i915_mm.c

   114	
   115	/**
   116	 * remap_io_sg - remap an IO mapping to userspace
   117	 * @vma: user vma to map to
   118	 * @addr: target user address to start at
   119	 * @io_start: IO start
   120	 * @sgl: Start sg entry
   121	 * @size: size of map area
   122	 * @iomap: the source io_mapping
   123	 *
   124	 *  Note: this is only safe if the mm semaphore is held when called.
   125	 */
   126	int remap_io_sg(struct vm_area_struct *vma,
   127			unsigned long addr, resource_size_t io_start, struct scatterlist *sgl,
   128			unsigned long size, struct io_mapping *iomap)
   129	{
 > 130		struct remap_pfn r = { 0 };

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
