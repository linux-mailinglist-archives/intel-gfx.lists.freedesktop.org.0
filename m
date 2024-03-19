Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E25C87F7C6
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Mar 2024 07:51:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A86E210F0BA;
	Tue, 19 Mar 2024 06:51:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lVj4TvL0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94F6910F0BA
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Mar 2024 06:51:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710831089; x=1742367089;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=M18Ey8+UgHjkfpMuAZLere14/BhHnhq3DtKp0vtMgXc=;
 b=lVj4TvL0D5zgj8QBXn3ChpPWyFPiMqmgmS/ZoHEe6r6QtmZFBrGh5Imq
 OwM4u01k7KuLEAVtxceQXMkFkM3fIyBTXB9/2ebTxxphFkXkLQPsDOr4k
 MGcF/sX6Py8uLbSgGMO9hBZl+nHZdSm8WH+4UsBj+H3rt6WjkEUlEuq9L
 eV5sKfXb/UI1cz5NPe40wwb4DhUuwEtsfbpch+KcHrdPRmBBJXaJtwnPW
 Q67uU6Mq32L6ImoeqoYrD8KO6wsuxttvub8XDFMoG5ha767nwahmF1Oxf
 Z9g/kwcqdL1GzYC+18QUNo1k206vrNO9/dfqInry+tSS47NIVW3pYTjIA A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11017"; a="17128453"
X-IronPort-AV: E=Sophos;i="6.07,136,1708416000"; d="scan'208";a="17128453"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2024 23:51:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,136,1708416000"; d="scan'208";a="36846851"
Received: from lkp-server01.sh.intel.com (HELO b21307750695) ([10.239.97.150])
 by fmviesa002.fm.intel.com with ESMTP; 18 Mar 2024 23:51:25 -0700
Received: from kbuild by b21307750695 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rmTJi-000HXf-38;
 Tue, 19 Mar 2024 06:51:22 +0000
Date: Tue, 19 Mar 2024 14:51:14 +0800
From: kernel test robot <lkp@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: oe-kbuild-all@lists.linux.dev,
 Jonas =?iso-8859-1?Q?=C5dahl?= <jadahl@redhat.com>,
 Sameer Lattannavar <sameer.lattannavar@intel.com>,
 Sebastian Wick <sebastian.wick@redhat.com>,
 Simon Ser <contact@emersion.fr>, Daniel Stone <daniels@collabora.com>,
 Harry Wentland <harry.wentland@amd.com>,
 Pekka Paalanen <pekka.paalanen@collabora.com>
Subject: Re: [PATCH v3 1/2] drm: Introduce plane SIZE_HINTS property
Message-ID: <202403191412.UTJldbq9-lkp@intel.com>
References: <20240318204408.9687-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240318204408.9687-2-ville.syrjala@linux.intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Ville,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-misc/drm-misc-next]
[also build test WARNING on drm-intel/for-linux-next drm-intel/for-linux-next-fixes drm-tip/drm-tip linus/master v6.8 next-20240319]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Ville-Syrjala/drm-Introduce-plane-SIZE_HINTS-property/20240319-044605
base:   git://anongit.freedesktop.org/drm/drm-misc drm-misc-next
patch link:    https://lore.kernel.org/r/20240318204408.9687-2-ville.syrjala%40linux.intel.com
patch subject: [PATCH v3 1/2] drm: Introduce plane SIZE_HINTS property
config: x86_64-defconfig (https://download.01.org/0day-ci/archive/20240319/202403191412.UTJldbq9-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-12) 11.3.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240319/202403191412.UTJldbq9-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202403191412.UTJldbq9-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/drm_plane.c:1767: warning: expecting prototype for drm_plane_add_size_hint_property(). Prototype was for drm_plane_add_size_hints_property() instead


vim +1767 drivers/gpu/drm/drm_plane.c

  1751	
  1752	/**
  1753	 * drm_plane_add_size_hint_property - create a size hint property
  1754	 *
  1755	 * @plane: drm plane
  1756	 * @hints: size hints
  1757	 * @num_hints: number of size hints
  1758	 *
  1759	 * Create a size hints property for the plane.
  1760	 *
  1761	 * RETURNS:
  1762	 * Zero for success or -errno
  1763	 */
  1764	int drm_plane_add_size_hints_property(struct drm_plane *plane,
  1765					      const struct drm_plane_size_hint *hints,
  1766					      int num_hints)
> 1767	{

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
