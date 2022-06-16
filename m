Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ABA554E553
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 16:49:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C6CB10EAA6;
	Thu, 16 Jun 2022 14:49:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0725610E9A4
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jun 2022 14:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655390944; x=1686926944;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=zDDrIxFD16JpkUNMOfqWwvvFAdNPTLO48yqV630ZtX8=;
 b=ejhLzruudrqMIRLrpUoBtgyIBnDlutaDfiEuFNfS+iUyh0brPCpeJe07
 yGzBWyEsZpxcPBq3xB4HtbQIxq7IFigV5ovIDLecQtYnlrhD4cPnTiZi4
 L7vkZ/IzJ2N4PAHa8LqCG1izDlcZxy9FpkFRxwRItwEucu4UOzz0/Opi+
 4DkLXTBSHCspbzF+BQlxcSboMzmFNuYp0BXOQ0erXfehC+DSwFaYQ7QFU
 ueiwjveitjRXWQyjEeJ89LHKqBmGPCT1cXRB3mWEHQ5QyywukmxzGiyjp
 //aPFJtzHj6dfz5H8sXWlaB+BmH+F3OsNYXphtPIzaeTpAmrsShhkdV3a A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="343222597"
X-IronPort-AV: E=Sophos;i="5.92,305,1650956400"; d="scan'208";a="343222597"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 07:49:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,305,1650956400"; d="scan'208";a="831590927"
Received: from lkp-server01.sh.intel.com (HELO 60dabacc1df6) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 16 Jun 2022 07:49:03 -0700
Received: from kbuild by 60dabacc1df6 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1o1qnu-000OT1-J5;
 Thu, 16 Jun 2022 14:49:02 +0000
Date: Thu, 16 Jun 2022 22:48:55 +0800
From: kernel test robot <lkp@intel.com>
To: Adrian Larumbe <adrian.larumbe@collabora.com>, daniel@ffwll.ch,
 intel-gfx@lists.freedesktop.org
Message-ID: <202206162239.AM4QOO2c-lkp@intel.com>
References: <20220614011350.122168-4-adrian.larumbe@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220614011350.122168-4-adrian.larumbe@collabora.com>
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/ttm: remove shmem memory
 region and gem object backend
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
Cc: adrian.larumbe@collabora.com, kbuild-all@lists.01.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Adrian,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Adrian-Larumbe/remove-shmem-backend-and-region-and-unify-them-with-TTM/20220614-091628
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
config: x86_64-defconfig (https://download.01.org/0day-ci/archive/20220616/202206162239.AM4QOO2c-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-3) 11.3.0
reproduce (this is a W=1 build):
        # https://github.com/intel-lab-lkp/linux/commit/c04ba9928dafe2d5889457af0f770e96da5798e1
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Adrian-Larumbe/remove-shmem-backend-and-region-and-unify-them-with-TTM/20220614-091628
        git checkout c04ba9928dafe2d5889457af0f770e96da5798e1
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/gpu/drm/i915/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/gem/i915_gem_ttm.c:1398: warning: expecting prototype for intel_region_ttm_shmem_init(). Prototype was for intel_region_ttm_init_shmem() instead
   drivers/gpu/drm/i915/gem/i915_gem_ttm.c:1419: warning: Function parameter or member 'offset' not described in '__i915_gem_ttm_object_init'
   drivers/gpu/drm/i915/gem/i915_gem_ttm.c:1419: warning: Function parameter or member 'page_size' not described in '__i915_gem_ttm_object_init'


vim +1398 drivers/gpu/drm/i915/gem/i915_gem_ttm.c

  1390	
  1391	/**
  1392	 * intel_region_ttm_shmem_init - Initialize a memory region for TTM.
  1393	 * @mem: The region to initialize.
  1394	 *
  1395	 * Return: 0 on success, negative error code on failure.
  1396	 */
  1397	static int intel_region_ttm_init_shmem(struct intel_memory_region *mem)
> 1398	{
  1399		i915_gemfs_init(mem->i915);
  1400	
  1401		return 0; /* Don't error, we can simply fallback to the kernel mnt */
  1402	}
  1403	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
