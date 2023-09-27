Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E4F7AFDA3
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Sep 2023 10:08:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00DD810E499;
	Wed, 27 Sep 2023 08:08:26 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4722810E499;
 Wed, 27 Sep 2023 08:08:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695802104; x=1727338104;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=cV2aBAWyl4YQAh/piPCEUInz8V67I9b0nl4f30dS2PQ=;
 b=eIt+Py/6mUUIJp6EdCTw9smM62lEA+ovAa+cX6GNkWEi49MWDvkOqlXj
 BhxzPzgHKxpsX2D/mJ51KDlDNyxf00HZhJa48rGi5+TaMeCh6qKoeSAsj
 pMZgADuhjY9ajYNYcKO0wfMkPwThru1IyMLp555ckuxjoj7iQLVEY3ucl
 YxKEW9gBU7RB29MTjiecZLs+eavwYhLF9FS7gW29QpTtp11t2bYXAJyE7
 HC2S5wtXEG1R0o3F6eyxJkW7pRwuEQcBAWnB6+aQBpadzSok1Mj9MzDxF
 GkQ57dpxGcow78Lp15LQn7j3zpuDRVOKs/oUIRnrP+7bqXUKD2DI1XHtg g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="381663807"
X-IronPort-AV: E=Sophos;i="6.03,179,1694761200"; d="scan'208";a="381663807"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2023 01:08:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="864716462"
X-IronPort-AV: E=Sophos;i="6.03,179,1694761200"; d="scan'208";a="864716462"
Received: from lkp-server02.sh.intel.com (HELO 32c80313467c) ([10.239.97.151])
 by fmsmga002.fm.intel.com with ESMTP; 27 Sep 2023 01:08:20 -0700
Received: from kbuild by 32c80313467c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qlPak-0003ta-1E;
 Wed, 27 Sep 2023 08:08:18 +0000
Date: Wed, 27 Sep 2023 16:07:26 +0800
From: kernel test robot <lkp@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Message-ID: <202309271528.TmGx2jEq-lkp@intel.com>
References: <20230922134700.235039-7-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230922134700.235039-7-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915: Implement fdinfo memory stats
 printing
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
Cc: oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tvrtko,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Tvrtko-Ursulin/drm-i915-Add-ability-for-tracking-buffer-objects-per-client/20230922-214929
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20230922134700.235039-7-tvrtko.ursulin%40linux.intel.com
patch subject: [PATCH 6/6] drm/i915: Implement fdinfo memory stats printing
config: i386-randconfig-062-20230927 (https://download.01.org/0day-ci/archive/20230927/202309271528.TmGx2jEq-lkp@intel.com/config)
compiler: gcc-9 (Debian 9.3.0-22) 9.3.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20230927/202309271528.TmGx2jEq-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202309271528.TmGx2jEq-lkp@intel.com/

sparse warnings: (new ones prefixed by >>)
>> drivers/gpu/drm/i915/i915_drm_client.c:92:9: sparse: sparse: incompatible types in comparison expression (different address spaces):
>> drivers/gpu/drm/i915/i915_drm_client.c:92:9: sparse:    struct list_head [noderef] __rcu *
>> drivers/gpu/drm/i915/i915_drm_client.c:92:9: sparse:    struct list_head *
>> drivers/gpu/drm/i915/i915_drm_client.c:92:9: sparse: sparse: incompatible types in comparison expression (different address spaces):
>> drivers/gpu/drm/i915/i915_drm_client.c:92:9: sparse:    struct list_head [noderef] __rcu *
>> drivers/gpu/drm/i915/i915_drm_client.c:92:9: sparse:    struct list_head *

vim +92 drivers/gpu/drm/i915/i915_drm_client.c

    72	
    73	static void show_meminfo(struct drm_printer *p, struct drm_file *file)
    74	{
    75		struct drm_memory_stats stats[INTEL_REGION_UNKNOWN] = {};
    76		struct drm_i915_file_private *fpriv = file->driver_priv;
    77		struct i915_drm_client *client = fpriv->client;
    78		struct drm_i915_private *i915 = fpriv->i915;
    79		struct drm_i915_gem_object *obj;
    80		struct intel_memory_region *mr;
    81		struct list_head *pos;
    82		unsigned int id;
    83	
    84		/* Public objects. */
    85		spin_lock(&file->table_lock);
    86		idr_for_each_entry(&file->object_idr, obj, id)
    87			obj_meminfo(obj, stats);
    88		spin_unlock(&file->table_lock);
    89	
    90		/* Internal objects. */
    91		rcu_read_lock();
  > 92		list_for_each_rcu(pos, &client->objects_list) {
    93			obj = i915_gem_object_get_rcu(list_entry(pos, typeof(*obj),
    94								 client_link));
    95			if (!obj)
    96				continue;
    97			obj_meminfo(obj, stats);
    98			i915_gem_object_put(obj);
    99		}
   100		rcu_read_unlock();
   101	
   102		for_each_memory_region(mr, i915, id)
   103			drm_print_memory_stats(p,
   104					       &stats[id],
   105					       DRM_GEM_OBJECT_RESIDENT |
   106					       DRM_GEM_OBJECT_PURGEABLE,
   107					       mr->uabi_name);
   108	}
   109	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
