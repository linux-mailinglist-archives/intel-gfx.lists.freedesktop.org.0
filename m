Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF5C59F1537
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 19:47:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73EC910E45B;
	Fri, 13 Dec 2024 18:47:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K5e48gyC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E026510E459;
 Fri, 13 Dec 2024 18:47:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734115664; x=1765651664;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Nd/XohP+Q75552J1Iv+ikwoOsO8J/NQrGRAMFGqvKoM=;
 b=K5e48gyCqEQOjllkIhk4ZD3O3VXF+zfqwEQam7QuQNKHXM/leqY9c/j7
 BC0SATY30eUnGkBz0/DAKYkOGTFxF5CIDv5GuleDJh+TSYKxtlGJAdBLB
 bdxoRgWMqotftXk51ARWXx8ltvOoZPi5n0vKzLywvCBWvTFZXBHGNzMHI
 633/WC7UaOOd6yxDNlvRY8N8dP5wLD2GxCl0wk548Od8L01ewnptce6KE
 KYjq5zGc9q62752ZmE0oIp1hMUWOQFuRsTEzlDsNN5be8gw3m4fwXhdww
 C0tTOybKL5pOzVO78zum7h8SvPtuQJOritTpccQtQY/thjVBXd2WHYEHi w==;
X-CSE-ConnectionGUID: AVkA65yuRaWlrfb4u6pwXg==
X-CSE-MsgGUID: 1Ypb1e4YR6+frDnOGwbWMA==
X-IronPort-AV: E=McAfee;i="6700,10204,11285"; a="45269573"
X-IronPort-AV: E=Sophos;i="6.12,232,1728975600"; d="scan'208";a="45269573"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 10:47:44 -0800
X-CSE-ConnectionGUID: HYwHTV0oTp2aPUKRNKCIaQ==
X-CSE-MsgGUID: 10Y6nft+THWVYmQGbUB7ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="97046126"
Received: from lkp-server01.sh.intel.com (HELO 82a3f569d0cb) ([10.239.97.150])
 by orviesa007.jf.intel.com with ESMTP; 13 Dec 2024 10:47:41 -0800
Received: from kbuild by 82a3f569d0cb with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tMAhO-000CK1-2g;
 Fri, 13 Dec 2024 18:47:38 +0000
Date: Sat, 14 Dec 2024 02:47:28 +0800
From: kernel test robot <lkp@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 jani.nikula@intel.com, Luca Coelho <luciano.coelho@intel.com>
Subject: Re: [PATCH v3 3/5] drm/i915/dp: convert to struct intel_display
Message-ID: <202412140220.83KYEGQr-lkp@intel.com>
References: <d712a2894addde5fd7a8b593fbea87314df37e1f.1734083244.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d712a2894addde5fd7a8b593fbea87314df37e1f.1734083244.git.jani.nikula@intel.com>
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

Hi Jani,

kernel test robot noticed the following build errors:

[auto build test ERROR on next-20241211]
[cannot apply to drm-intel/for-linux-next drm-intel/for-linux-next-fixes drm-tip/drm-tip v6.13-rc2 v6.13-rc1 v6.12 linus/master v6.13-rc2]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Jani-Nikula/drm-i915-dp-s-intel_encoder-encoder/20241213-175134
base:   next-20241211
patch link:    https://lore.kernel.org/r/d712a2894addde5fd7a8b593fbea87314df37e1f.1734083244.git.jani.nikula%40intel.com
patch subject: [PATCH v3 3/5] drm/i915/dp: convert to struct intel_display
config: x86_64-buildonly-randconfig-006-20241213 (https://download.01.org/0day-ci/archive/20241214/202412140220.83KYEGQr-lkp@intel.com/config)
compiler: clang version 19.1.3 (https://github.com/llvm/llvm-project ab51eccf88f5321e7c60591c5546b254b6afab99)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241214/202412140220.83KYEGQr-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202412140220.83KYEGQr-lkp@intel.com/

All errors (new ones prefixed by >>):

   In file included from drivers/gpu/drm/i915/display/intel_dp.c:29:
   In file included from include/linux/i2c.h:19:
   In file included from include/linux/regulator/consumer.h:35:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:21:
   In file included from include/linux/mm.h:2287:
   include/linux/vmstat.h:518:36: warning: arithmetic between different enumeration types ('enum node_stat_item' and 'enum lru_list') [-Wenum-enum-conversion]
     518 |         return node_stat_name(NR_LRU_BASE + lru) + 3; // skip "nr_"
         |                               ~~~~~~~~~~~ ^ ~~~
>> drivers/gpu/drm/i915/display/intel_dp.c:3110:20: error: use of undeclared identifier 'dev_priv'; did you mean '_dev_crit'?
    3110 |         if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port != PORT_A)
         |                           ^~~~~~~~
         |                           _dev_crit
   drivers/gpu/drm/i915/soc/intel_pch.h:85:51: note: expanded from macro 'HAS_PCH_SPLIT'
      85 | #define HAS_PCH_SPLIT(dev_priv)                 (INTEL_PCH_TYPE(dev_priv) != PCH_NONE)
         |                                                                 ^
   drivers/gpu/drm/i915/soc/intel_pch.h:66:37: note: expanded from macro 'INTEL_PCH_TYPE'
      66 | #define INTEL_PCH_TYPE(dev_priv)                ((dev_priv)->pch_type)
         |                                                   ^
   include/linux/compiler.h:55:47: note: expanded from macro 'if'
      55 | #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
         |                                               ^
   include/linux/compiler.h:57:52: note: expanded from macro '__trace_if_var'
      57 | #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
         |                                                    ^
   include/linux/dev_printk.h:48:6: note: '_dev_crit' declared here
      48 | void _dev_crit(const struct device *dev, const char *fmt, ...);
         |      ^
>> drivers/gpu/drm/i915/display/intel_dp.c:3110:6: error: member reference base type 'void (const struct device *, const char *, ...)' is not a structure or union
    3110 |         if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port != PORT_A)
         |         ~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/soc/intel_pch.h:85:36: note: expanded from macro 'HAS_PCH_SPLIT'
      85 | #define HAS_PCH_SPLIT(dev_priv)                 (INTEL_PCH_TYPE(dev_priv) != PCH_NONE)
         |                                                  ^~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/soc/intel_pch.h:66:46: note: expanded from macro 'INTEL_PCH_TYPE'
      66 | #define INTEL_PCH_TYPE(dev_priv)                ((dev_priv)->pch_type)
         |                                                            ^ ~~~~~~~~
   include/linux/compiler.h:55:47: note: expanded from macro 'if'
      55 | #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
         |                            ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:57:52: note: expanded from macro '__trace_if_var'
      57 | #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
         |                                                    ^~~~
   drivers/gpu/drm/i915/display/intel_dp.c:3110:42: error: use of undeclared identifier 'dev_priv'; did you mean '_dev_crit'?
    3110 |         if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port != PORT_A)
         |                                                 ^~~~~~~~
         |                                                 _dev_crit
   drivers/gpu/drm/i915/display/intel_display_device.h:151:43: note: expanded from macro 'HAS_DDI'
     151 | #define HAS_DDI(__display)              (DISPLAY_INFO(__display)->has_ddi)
         |                                                       ^
   drivers/gpu/drm/i915/display/intel_display_device.h:221:54: note: expanded from macro 'DISPLAY_INFO'
     221 | #define DISPLAY_INFO(__display)         (__to_intel_display(__display)->info.__device_info)
         |                                                             ^
   drivers/gpu/drm/i915/display/intel_display_conversion.h:16:11: note: expanded from macro '__to_intel_display'
      16 |         _Generic(p,                                                     \
         |                  ^
   include/linux/compiler.h:55:47: note: expanded from macro 'if'
      55 | #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
         |                                               ^
   include/linux/compiler.h:57:52: note: expanded from macro '__trace_if_var'
      57 | #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
         |                                                    ^
   include/linux/dev_printk.h:48:6: note: '_dev_crit' declared here
      48 | void _dev_crit(const struct device *dev, const char *fmt, ...);
         |      ^
   drivers/gpu/drm/i915/display/intel_dp.c:3110:42: error: use of undeclared identifier 'dev_priv'; did you mean '_dev_crit'?
    3110 |         if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port != PORT_A)
         |                                                 ^~~~~~~~
         |                                                 _dev_crit
   drivers/gpu/drm/i915/display/intel_display_device.h:151:43: note: expanded from macro 'HAS_DDI'
     151 | #define HAS_DDI(__display)              (DISPLAY_INFO(__display)->has_ddi)
         |                                                       ^
   drivers/gpu/drm/i915/display/intel_display_device.h:221:54: note: expanded from macro 'DISPLAY_INFO'
     221 | #define DISPLAY_INFO(__display)         (__to_intel_display(__display)->info.__device_info)
         |                                                             ^
   drivers/gpu/drm/i915/display/intel_display_conversion.h:17:74: note: expanded from macro '__to_intel_display'
      17 |                  const struct drm_i915_private *: (&((const struct drm_i915_private *)(p))->display), \
         |                                                                                        ^
   include/linux/compiler.h:55:47: note: expanded from macro 'if'
      55 | #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
         |                                               ^
   include/linux/compiler.h:57:52: note: expanded from macro '__trace_if_var'
      57 | #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
         |                                                    ^
   include/linux/dev_printk.h:48:6: note: '_dev_crit' declared here
      48 | void _dev_crit(const struct device *dev, const char *fmt, ...);
         |      ^
   drivers/gpu/drm/i915/display/intel_dp.c:3110:42: error: use of undeclared identifier 'dev_priv'; did you mean '_dev_crit'?
    3110 |         if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port != PORT_A)
         |                                                 ^~~~~~~~
         |                                                 _dev_crit
   drivers/gpu/drm/i915/display/intel_display_device.h:151:43: note: expanded from macro 'HAS_DDI'
     151 | #define HAS_DDI(__display)              (DISPLAY_INFO(__display)->has_ddi)
         |                                                       ^
   drivers/gpu/drm/i915/display/intel_display_device.h:221:54: note: expanded from macro 'DISPLAY_INFO'
     221 | #define DISPLAY_INFO(__display)         (__to_intel_display(__display)->info.__device_info)
         |                                                             ^
   drivers/gpu/drm/i915/display/intel_display_conversion.h:18:62: note: expanded from macro '__to_intel_display'
      18 |                  struct drm_i915_private *: (&((struct drm_i915_private *)(p))->display), \
         |                                                                            ^
   include/linux/compiler.h:55:47: note: expanded from macro 'if'
      55 | #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
         |                                               ^
   include/linux/compiler.h:57:52: note: expanded from macro '__trace_if_var'
      57 | #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
         |                                                    ^
   include/linux/dev_printk.h:48:6: note: '_dev_crit' declared here
      48 | void _dev_crit(const struct device *dev, const char *fmt, ...);
         |      ^
   drivers/gpu/drm/i915/display/intel_dp.c:3110:42: error: use of undeclared identifier 'dev_priv'; did you mean '_dev_crit'?
    3110 |         if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port != PORT_A)
         |                                                 ^~~~~~~~
         |                                                 _dev_crit
   drivers/gpu/drm/i915/display/intel_display_device.h:151:43: note: expanded from macro 'HAS_DDI'
     151 | #define HAS_DDI(__display)              (DISPLAY_INFO(__display)->has_ddi)
         |                                                       ^
   drivers/gpu/drm/i915/display/intel_display_device.h:221:54: note: expanded from macro 'DISPLAY_INFO'
     221 | #define DISPLAY_INFO(__display)         (__to_intel_display(__display)->info.__device_info)
         |                                                             ^
   drivers/gpu/drm/i915/display/intel_display_conversion.h:19:35: note: expanded from macro '__to_intel_display'
      19 |                  const struct intel_display *: (p),                     \
         |                                                 ^
   include/linux/compiler.h:55:47: note: expanded from macro 'if'
      55 | #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
         |                                               ^
   include/linux/compiler.h:57:52: note: expanded from macro '__trace_if_var'
      57 | #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
         |                                                    ^
   include/linux/dev_printk.h:48:6: note: '_dev_crit' declared here
      48 | void _dev_crit(const struct device *dev, const char *fmt, ...);
         |      ^
   drivers/gpu/drm/i915/display/intel_dp.c:3110:42: error: use of undeclared identifier 'dev_priv'; did you mean '_dev_crit'?
    3110 |         if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port != PORT_A)
         |                                                 ^~~~~~~~
         |                                                 _dev_crit
   drivers/gpu/drm/i915/display/intel_display_device.h:151:43: note: expanded from macro 'HAS_DDI'
     151 | #define HAS_DDI(__display)              (DISPLAY_INFO(__display)->has_ddi)
         |                                                       ^
   drivers/gpu/drm/i915/display/intel_display_device.h:221:54: note: expanded from macro 'DISPLAY_INFO'
     221 | #define DISPLAY_INFO(__display)         (__to_intel_display(__display)->info.__device_info)
         |                                                             ^
   drivers/gpu/drm/i915/display/intel_display_conversion.h:20:29: note: expanded from macro '__to_intel_display'
      20 |                  struct intel_display *: (p))
         |                                           ^
   include/linux/compiler.h:55:47: note: expanded from macro 'if'
      55 | #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
         |                                               ^
   include/linux/compiler.h:57:52: note: expanded from macro '__trace_if_var'
      57 | #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
         |                                                    ^
   include/linux/dev_printk.h:48:6: note: '_dev_crit' declared here
      48 | void _dev_crit(const struct device *dev, const char *fmt, ...);
         |      ^
>> drivers/gpu/drm/i915/display/intel_dp.c:3110:42: error: controlling expression type 'void (*)(const struct device *, const char *, ...)' not compatible with any generic association type
    3110 |         if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port != PORT_A)
         |                                                 ^~~~~~~~
   drivers/gpu/drm/i915/display/intel_display_device.h:151:43: note: expanded from macro 'HAS_DDI'
     151 | #define HAS_DDI(__display)              (DISPLAY_INFO(__display)->has_ddi)
         |                                                       ^~~~~~~~~
   drivers/gpu/drm/i915/display/intel_display_device.h:221:54: note: expanded from macro 'DISPLAY_INFO'
     221 | #define DISPLAY_INFO(__display)         (__to_intel_display(__display)->info.__device_info)
         |                                                             ^~~~~~~~~
   drivers/gpu/drm/i915/display/intel_display_conversion.h:16:11: note: expanded from macro '__to_intel_display'
      16 |         _Generic(p,                                                     \
         |                  ^
   include/linux/compiler.h:55:47: note: expanded from macro 'if'
      55 | #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
         |                                               ^~~~
   include/linux/compiler.h:57:52: note: expanded from macro '__trace_if_var'
      57 | #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
         |                                                    ^~~~
>> drivers/gpu/drm/i915/display/intel_dp.c:3110:20: error: use of undeclared identifier 'dev_priv'; did you mean '_dev_crit'?
    3110 |         if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port != PORT_A)
         |                           ^~~~~~~~
         |                           _dev_crit
   drivers/gpu/drm/i915/soc/intel_pch.h:85:51: note: expanded from macro 'HAS_PCH_SPLIT'
      85 | #define HAS_PCH_SPLIT(dev_priv)                 (INTEL_PCH_TYPE(dev_priv) != PCH_NONE)
         |                                                                 ^
   drivers/gpu/drm/i915/soc/intel_pch.h:66:37: note: expanded from macro 'INTEL_PCH_TYPE'
      66 | #define INTEL_PCH_TYPE(dev_priv)                ((dev_priv)->pch_type)
         |                                                   ^
   include/linux/compiler.h:55:47: note: expanded from macro 'if'
      55 | #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
         |                                               ^
   include/linux/compiler.h:57:61: note: expanded from macro '__trace_if_var'
      57 | #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
         |                                                             ^
   include/linux/dev_printk.h:48:6: note: '_dev_crit' declared here
      48 | void _dev_crit(const struct device *dev, const char *fmt, ...);
         |      ^
>> drivers/gpu/drm/i915/display/intel_dp.c:3110:6: error: member reference base type 'void (const struct device *, const char *, ...)' is not a structure or union
    3110 |         if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port != PORT_A)
         |         ~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/soc/intel_pch.h:85:36: note: expanded from macro 'HAS_PCH_SPLIT'
      85 | #define HAS_PCH_SPLIT(dev_priv)                 (INTEL_PCH_TYPE(dev_priv) != PCH_NONE)
         |                                                  ^~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/soc/intel_pch.h:66:46: note: expanded from macro 'INTEL_PCH_TYPE'
      66 | #define INTEL_PCH_TYPE(dev_priv)                ((dev_priv)->pch_type)
         |                                                            ^ ~~~~~~~~
   include/linux/compiler.h:55:47: note: expanded from macro 'if'
      55 | #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
         |                            ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:57:61: note: expanded from macro '__trace_if_var'
      57 | #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
         |                                                             ^~~~
   drivers/gpu/drm/i915/display/intel_dp.c:3110:42: error: use of undeclared identifier 'dev_priv'; did you mean '_dev_crit'?
    3110 |         if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port != PORT_A)
         |                                                 ^~~~~~~~
         |                                                 _dev_crit
   drivers/gpu/drm/i915/display/intel_display_device.h:151:43: note: expanded from macro 'HAS_DDI'
     151 | #define HAS_DDI(__display)              (DISPLAY_INFO(__display)->has_ddi)
         |                                                       ^
   drivers/gpu/drm/i915/display/intel_display_device.h:221:54: note: expanded from macro 'DISPLAY_INFO'
     221 | #define DISPLAY_INFO(__display)         (__to_intel_display(__display)->info.__device_info)
         |                                                             ^
   drivers/gpu/drm/i915/display/intel_display_conversion.h:16:11: note: expanded from macro '__to_intel_display'
      16 |         _Generic(p,                                                     \
         |                  ^
   include/linux/compiler.h:55:47: note: expanded from macro 'if'
      55 | #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
         |                                               ^
   include/linux/compiler.h:57:61: note: expanded from macro '__trace_if_var'
      57 | #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
         |                                                             ^
   include/linux/dev_printk.h:48:6: note: '_dev_crit' declared here
      48 | void _dev_crit(const struct device *dev, const char *fmt, ...);
         |      ^
   drivers/gpu/drm/i915/display/intel_dp.c:3110:42: error: use of undeclared identifier 'dev_priv'; did you mean '_dev_crit'?
    3110 |         if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port != PORT_A)
         |                                                 ^~~~~~~~
         |                                                 _dev_crit
   drivers/gpu/drm/i915/display/intel_display_device.h:151:43: note: expanded from macro 'HAS_DDI'
     151 | #define HAS_DDI(__display)              (DISPLAY_INFO(__display)->has_ddi)
         |                                                       ^
   drivers/gpu/drm/i915/display/intel_display_device.h:221:54: note: expanded from macro 'DISPLAY_INFO'
     221 | #define DISPLAY_INFO(__display)         (__to_intel_display(__display)->info.__device_info)
         |                                                             ^
   drivers/gpu/drm/i915/display/intel_display_conversion.h:17:74: note: expanded from macro '__to_intel_display'
      17 |                  const struct drm_i915_private *: (&((const struct drm_i915_private *)(p))->display), \
         |                                                                                        ^
   include/linux/compiler.h:55:47: note: expanded from macro 'if'
      55 | #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
         |                                               ^
   include/linux/compiler.h:57:61: note: expanded from macro '__trace_if_var'
      57 | #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
         |                                                             ^
   include/linux/dev_printk.h:48:6: note: '_dev_crit' declared here
      48 | void _dev_crit(const struct device *dev, const char *fmt, ...);
         |      ^
   drivers/gpu/drm/i915/display/intel_dp.c:3110:42: error: use of undeclared identifier 'dev_priv'; did you mean '_dev_crit'?
    3110 |         if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port != PORT_A)
         |                                                 ^~~~~~~~
         |                                                 _dev_crit
   drivers/gpu/drm/i915/display/intel_display_device.h:151:43: note: expanded from macro 'HAS_DDI'
     151 | #define HAS_DDI(__display)              (DISPLAY_INFO(__display)->has_ddi)
         |                                                       ^
   drivers/gpu/drm/i915/display/intel_display_device.h:221:54: note: expanded from macro 'DISPLAY_INFO'
     221 | #define DISPLAY_INFO(__display)         (__to_intel_display(__display)->info.__device_info)
         |                                                             ^
   drivers/gpu/drm/i915/display/intel_display_conversion.h:18:62: note: expanded from macro '__to_intel_display'
      18 |                  struct drm_i915_private *: (&((struct drm_i915_private *)(p))->display), \
         |                                                                            ^
   include/linux/compiler.h:55:47: note: expanded from macro 'if'
      55 | #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
         |                                               ^
   include/linux/compiler.h:57:61: note: expanded from macro '__trace_if_var'
      57 | #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
         |                                                             ^
   include/linux/dev_printk.h:48:6: note: '_dev_crit' declared here
      48 | void _dev_crit(const struct device *dev, const char *fmt, ...);
         |      ^
   drivers/gpu/drm/i915/display/intel_dp.c:3110:42: error: use of undeclared identifier 'dev_priv'; did you mean '_dev_crit'?
    3110 |         if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port != PORT_A)
         |                                                 ^~~~~~~~
         |                                                 _dev_crit
   drivers/gpu/drm/i915/display/intel_display_device.h:151:43: note: expanded from macro 'HAS_DDI'
     151 | #define HAS_DDI(__display)              (DISPLAY_INFO(__display)->has_ddi)
         |                                                       ^
   drivers/gpu/drm/i915/display/intel_display_device.h:221:54: note: expanded from macro 'DISPLAY_INFO'
     221 | #define DISPLAY_INFO(__display)         (__to_intel_display(__display)->info.__device_info)
         |                                                             ^
   drivers/gpu/drm/i915/display/intel_display_conversion.h:19:35: note: expanded from macro '__to_intel_display'
      19 |                  const struct intel_display *: (p),                     \
         |                                                 ^
   include/linux/compiler.h:55:47: note: expanded from macro 'if'
      55 | #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
         |                                               ^
   include/linux/compiler.h:57:61: note: expanded from macro '__trace_if_var'
      57 | #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
         |                                                             ^
   include/linux/dev_printk.h:48:6: note: '_dev_crit' declared here
      48 | void _dev_crit(const struct device *dev, const char *fmt, ...);
         |      ^
   drivers/gpu/drm/i915/display/intel_dp.c:3110:42: error: use of undeclared identifier 'dev_priv'; did you mean '_dev_crit'?
    3110 |         if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port != PORT_A)
         |                                                 ^~~~~~~~
         |                                                 _dev_crit
   drivers/gpu/drm/i915/display/intel_display_device.h:151:43: note: expanded from macro 'HAS_DDI'
     151 | #define HAS_DDI(__display)              (DISPLAY_INFO(__display)->has_ddi)
         |                                                       ^
   drivers/gpu/drm/i915/display/intel_display_device.h:221:54: note: expanded from macro 'DISPLAY_INFO'
     221 | #define DISPLAY_INFO(__display)         (__to_intel_display(__display)->info.__device_info)
         |                                                             ^
   drivers/gpu/drm/i915/display/intel_display_conversion.h:20:29: note: expanded from macro '__to_intel_display'
      20 |                  struct intel_display *: (p))
         |                                           ^
   include/linux/compiler.h:55:47: note: expanded from macro 'if'
      55 | #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
         |                                               ^
   include/linux/compiler.h:57:61: note: expanded from macro '__trace_if_var'
      57 | #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
         |                                                             ^
   include/linux/dev_printk.h:48:6: note: '_dev_crit' declared here
      48 | void _dev_crit(const struct device *dev, const char *fmt, ...);
         |      ^
>> drivers/gpu/drm/i915/display/intel_dp.c:3110:42: error: controlling expression type 'void (*)(const struct device *, const char *, ...)' not compatible with any generic association type
    3110 |         if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port != PORT_A)
         |                                                 ^~~~~~~~
   drivers/gpu/drm/i915/display/intel_display_device.h:151:43: note: expanded from macro 'HAS_DDI'
     151 | #define HAS_DDI(__display)              (DISPLAY_INFO(__display)->has_ddi)
         |                                                       ^~~~~~~~~
   drivers/gpu/drm/i915/display/intel_display_device.h:221:54: note: expanded from macro 'DISPLAY_INFO'
     221 | #define DISPLAY_INFO(__display)         (__to_intel_display(__display)->info.__device_info)
         |                                                             ^~~~~~~~~
   drivers/gpu/drm/i915/display/intel_display_conversion.h:16:11: note: expanded from macro '__to_intel_display'
      16 |         _Generic(p,                                                     \
         |                  ^
   include/linux/compiler.h:55:47: note: expanded from macro 'if'
      55 | #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
         |                                               ^~~~
   include/linux/compiler.h:57:61: note: expanded from macro '__trace_if_var'
      57 | #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
         |                                                             ^~~~
>> drivers/gpu/drm/i915/display/intel_dp.c:3110:20: error: use of undeclared identifier 'dev_priv'; did you mean '_dev_crit'?
    3110 |         if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port != PORT_A)
         |                           ^~~~~~~~
         |                           _dev_crit
   drivers/gpu/drm/i915/soc/intel_pch.h:85:51: note: expanded from macro 'HAS_PCH_SPLIT'
      85 | #define HAS_PCH_SPLIT(dev_priv)                 (INTEL_PCH_TYPE(dev_priv) != PCH_NONE)
         |                                                                 ^
   drivers/gpu/drm/i915/soc/intel_pch.h:66:37: note: expanded from macro 'INTEL_PCH_TYPE'
      66 | #define INTEL_PCH_TYPE(dev_priv)                ((dev_priv)->pch_type)
         |                                                   ^
   include/linux/compiler.h:55:47: note: expanded from macro 'if'
      55 | #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
         |                                               ^
   include/linux/compiler.h:57:86: note: expanded from macro '__trace_if_var'
      57 | #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
         |                                                                                      ^
   include/linux/compiler.h:68:3: note: expanded from macro '__trace_if_value'
      68 |         (cond) ?                                        \
         |          ^
   include/linux/dev_printk.h:48:6: note: '_dev_crit' declared here
      48 | void _dev_crit(const struct device *dev, const char *fmt, ...);
         |      ^
>> drivers/gpu/drm/i915/display/intel_dp.c:3110:6: error: member reference base type 'void (const struct device *, const char *, ...)' is not a structure or union
    3110 |         if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port != PORT_A)
         |         ~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/soc/intel_pch.h:85:36: note: expanded from macro 'HAS_PCH_SPLIT'
      85 | #define HAS_PCH_SPLIT(dev_priv)                 (INTEL_PCH_TYPE(dev_priv) != PCH_NONE)
         |                                                  ^~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/soc/intel_pch.h:66:46: note: expanded from macro 'INTEL_PCH_TYPE'
      66 | #define INTEL_PCH_TYPE(dev_priv)                ((dev_priv)->pch_type)
         |                                                            ^ ~~~~~~~~
   include/linux/compiler.h:55:47: note: expanded from macro 'if'
      55 | #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
         |                            ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:57:86: note: expanded from macro '__trace_if_var'
      57 | #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
         |                                                                     ~~~~~~~~~~~~~~~~~^~~~~
   include/linux/compiler.h:68:3: note: expanded from macro '__trace_if_value'
      68 |         (cond) ?                                        \
         |          ^~~~
   drivers/gpu/drm/i915/display/intel_dp.c:3110:42: error: use of undeclared identifier 'dev_priv'; did you mean '_dev_crit'?
    3110 |         if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port != PORT_A)
         |                                                 ^~~~~~~~
         |                                                 _dev_crit
   drivers/gpu/drm/i915/display/intel_display_device.h:151:43: note: expanded from macro 'HAS_DDI'
     151 | #define HAS_DDI(__display)              (DISPLAY_INFO(__display)->has_ddi)
         |                                                       ^
   drivers/gpu/drm/i915/display/intel_display_device.h:221:54: note: expanded from macro 'DISPLAY_INFO'
     221 | #define DISPLAY_INFO(__display)         (__to_intel_display(__display)->info.__device_info)
         |                                                             ^
   drivers/gpu/drm/i915/display/intel_display_conversion.h:16:11: note: expanded from macro '__to_intel_display'
      16 |         _Generic(p,                                                     \
         |                  ^
   include/linux/compiler.h:55:47: note: expanded from macro 'if'
      55 | #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
         |                                               ^
   include/linux/compiler.h:57:86: note: expanded from macro '__trace_if_var'
      57 | #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
         |                                                                                      ^
   include/linux/compiler.h:68:3: note: expanded from macro '__trace_if_value'
      68 |         (cond) ?                                        \
         |          ^
   include/linux/dev_printk.h:48:6: note: '_dev_crit' declared here
      48 | void _dev_crit(const struct device *dev, const char *fmt, ...);
         |      ^
   fatal error: too many errors emitted, stopping now [-ferror-limit=]
   1 warning and 20 errors generated.


vim +3110 drivers/gpu/drm/i915/display/intel_dp.c

d1e217d44b406e0 drivers/gpu/drm/i915/display/intel_dp.c Imre Deak             2024-02-20  3096  
204474a6b859ff2 drivers/gpu/drm/i915/intel_dp.c         Lyude Paul            2019-01-15  3097  int
981a63eb2725eca drivers/gpu/drm/i915/intel_dp.c         Jani Nikula           2018-04-26  3098  intel_dp_compute_config(struct intel_encoder *encoder,
981a63eb2725eca drivers/gpu/drm/i915/intel_dp.c         Jani Nikula           2018-04-26  3099  			struct intel_crtc_state *pipe_config,
981a63eb2725eca drivers/gpu/drm/i915/intel_dp.c         Jani Nikula           2018-04-26  3100  			struct drm_connector_state *conn_state)
981a63eb2725eca drivers/gpu/drm/i915/intel_dp.c         Jani Nikula           2018-04-26  3101  {
9bfcb6bd4e40416 drivers/gpu/drm/i915/display/intel_dp.c Jani Nikula           2024-12-13  3102  	struct intel_display *display = to_intel_display(encoder);
a4efae87ecb21bf drivers/gpu/drm/i915/display/intel_dp.c Imre Deak             2024-02-20  3103  	struct intel_atomic_state *state = to_intel_atomic_state(conn_state->state);
1326a92c346641d drivers/gpu/drm/i915/display/intel_dp.c Maarten Lankhorst     2019-10-31  3104  	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
b7d02c3a124d9be drivers/gpu/drm/i915/display/intel_dp.c Ville Syrjälä         2019-12-04  3105  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
092706786e1143f drivers/gpu/drm/i915/display/intel_dp.c Ville Syrjälä         2022-03-11  3106  	const struct drm_display_mode *fixed_mode;
2cad4279f419c3e drivers/gpu/drm/i915/display/intel_dp.c Ville Syrjälä         2022-03-22  3107  	struct intel_connector *connector = intel_dp->attached_connector;
87c8812f4b009b5 drivers/gpu/drm/i915/display/intel_dp.c Ankit Nautiyal        2023-11-10  3108  	int ret = 0, link_bpp_x16;
981a63eb2725eca drivers/gpu/drm/i915/intel_dp.c         Jani Nikula           2018-04-26  3109  
97e04764f50db2a drivers/gpu/drm/i915/display/intel_dp.c Ville Syrjälä         2022-03-22 @3110  	if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port != PORT_A)
981a63eb2725eca drivers/gpu/drm/i915/intel_dp.c         Jani Nikula           2018-04-26  3111  		pipe_config->has_pch_encoder = true;
981a63eb2725eca drivers/gpu/drm/i915/intel_dp.c         Jani Nikula           2018-04-26  3112  
2cad4279f419c3e drivers/gpu/drm/i915/display/intel_dp.c Ville Syrjälä         2022-03-22  3113  	fixed_mode = intel_panel_fixed_mode(connector, adjusted_mode);
092706786e1143f drivers/gpu/drm/i915/display/intel_dp.c Ville Syrjälä         2022-03-11  3114  	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
2cad4279f419c3e drivers/gpu/drm/i915/display/intel_dp.c Ville Syrjälä         2022-03-22  3115  		ret = intel_panel_compute_config(connector, adjusted_mode);
cff4c2c645cbb3e drivers/gpu/drm/i915/display/intel_dp.c Ville Syrjälä         2021-09-27  3116  		if (ret)
cff4c2c645cbb3e drivers/gpu/drm/i915/display/intel_dp.c Ville Syrjälä         2021-09-27  3117  			return ret;
981a63eb2725eca drivers/gpu/drm/i915/intel_dp.c         Jani Nikula           2018-04-26  3118  	}
981a63eb2725eca drivers/gpu/drm/i915/intel_dp.c         Jani Nikula           2018-04-26  3119  
e4dd27aadd20541 drivers/gpu/drm/i915/intel_dp.c         Ville Syrjälä         2018-05-24  3120  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
204474a6b859ff2 drivers/gpu/drm/i915/intel_dp.c         Lyude Paul            2019-01-15  3121  		return -EINVAL;
e4dd27aadd20541 drivers/gpu/drm/i915/intel_dp.c         Ville Syrjälä         2018-05-24  3122  
f71c9b7bc35ff7c drivers/gpu/drm/i915/display/intel_dp.c Ankit Nautiyal        2023-01-05  3123  	if (!connector->base.interlace_allowed &&
981a63eb2725eca drivers/gpu/drm/i915/intel_dp.c         Jani Nikula           2018-04-26  3124  	    adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
204474a6b859ff2 drivers/gpu/drm/i915/intel_dp.c         Lyude Paul            2019-01-15  3125  		return -EINVAL;
981a63eb2725eca drivers/gpu/drm/i915/intel_dp.c         Jani Nikula           2018-04-26  3126  
981a63eb2725eca drivers/gpu/drm/i915/intel_dp.c         Jani Nikula           2018-04-26  3127  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLCLK)
204474a6b859ff2 drivers/gpu/drm/i915/intel_dp.c         Lyude Paul            2019-01-15  3128  		return -EINVAL;
981a63eb2725eca drivers/gpu/drm/i915/intel_dp.c         Jani Nikula           2018-04-26  3129  
9bfcb6bd4e40416 drivers/gpu/drm/i915/display/intel_dp.c Jani Nikula           2024-12-13  3130  	if (intel_dp_hdisplay_bad(display, adjusted_mode->crtc_hdisplay))
98c93394ba907e6 drivers/gpu/drm/i915/display/intel_dp.c Ville Syrjälä         2019-07-18  3131  		return -EINVAL;
98c93394ba907e6 drivers/gpu/drm/i915/display/intel_dp.c Ville Syrjälä         2019-07-18  3132  
56185b90488a9a5 drivers/gpu/drm/i915/display/intel_dp.c Ville Syrjälä         2022-03-22  3133  	/*
56185b90488a9a5 drivers/gpu/drm/i915/display/intel_dp.c Ville Syrjälä         2022-03-22  3134  	 * Try to respect downstream TMDS clock limits first, if
56185b90488a9a5 drivers/gpu/drm/i915/display/intel_dp.c Ville Syrjälä         2022-03-22  3135  	 * that fails assume the user might know something we don't.
56185b90488a9a5 drivers/gpu/drm/i915/display/intel_dp.c Ville Syrjälä         2022-03-22  3136  	 */
56185b90488a9a5 drivers/gpu/drm/i915/display/intel_dp.c Ville Syrjälä         2022-03-22  3137  	ret = intel_dp_compute_output_format(encoder, pipe_config, conn_state, true);
56185b90488a9a5 drivers/gpu/drm/i915/display/intel_dp.c Ville Syrjälä         2022-03-22  3138  	if (ret)
56185b90488a9a5 drivers/gpu/drm/i915/display/intel_dp.c Ville Syrjälä         2022-03-22  3139  		ret = intel_dp_compute_output_format(encoder, pipe_config, conn_state, false);
632f853525fa3c2 drivers/gpu/drm/i915/display/intel_dp.c Ville Syrjälä         2022-03-22  3140  	if (ret)
204474a6b859ff2 drivers/gpu/drm/i915/intel_dp.c         Lyude Paul            2019-01-15  3141  		return ret;
981a63eb2725eca drivers/gpu/drm/i915/intel_dp.c         Jani Nikula           2018-04-26  3142  
dd934010759422f drivers/gpu/drm/i915/display/intel_dp.c Ville Syrjälä         2022-03-22  3143  	if ((intel_dp_is_edp(intel_dp) && fixed_mode) ||
dd934010759422f drivers/gpu/drm/i915/display/intel_dp.c Ville Syrjälä         2022-03-22  3144  	    pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
dd934010759422f drivers/gpu/drm/i915/display/intel_dp.c Ville Syrjälä         2022-03-22  3145  		ret = intel_panel_fitting(pipe_config, conn_state);
dd934010759422f drivers/gpu/drm/i915/display/intel_dp.c Ville Syrjälä         2022-03-22  3146  		if (ret)
dd934010759422f drivers/gpu/drm/i915/display/intel_dp.c Ville Syrjälä         2022-03-22  3147  			return ret;
dd934010759422f drivers/gpu/drm/i915/display/intel_dp.c Ville Syrjälä         2022-03-22  3148  	}
dd934010759422f drivers/gpu/drm/i915/display/intel_dp.c Ville Syrjälä         2022-03-22  3149  
0f2a2a756e862e1 drivers/gpu/drm/i915/intel_dp.c         Ville Syrjälä         2015-07-06  3150  	pipe_config->limited_color_range =
37aa52bff2bcd43 drivers/gpu/drm/i915/intel_dp.c         Ville Syrjälä         2019-03-26  3151  		intel_dp_limited_color_range(pipe_config, conn_state);
55bc60db5988c83 drivers/gpu/drm/i915/intel_dp.c         Ville Syrjälä         2013-01-17  3152  
3072a24c778a710 drivers/gpu/drm/i915/display/intel_dp.c Ville Syrjälä         2023-05-03  3153  	pipe_config->enhanced_framing =
3072a24c778a710 drivers/gpu/drm/i915/display/intel_dp.c Ville Syrjälä         2023-05-03  3154  		drm_dp_enhanced_frame_cap(intel_dp->dpcd);
3072a24c778a710 drivers/gpu/drm/i915/display/intel_dp.c Ville Syrjälä         2023-05-03  3155  
010663a61c40377 drivers/gpu/drm/i915/display/intel_dp.c Jani Nikula           2019-10-22  3156  	if (pipe_config->dsc.compression_enable)
87c8812f4b009b5 drivers/gpu/drm/i915/display/intel_dp.c Ankit Nautiyal        2023-11-10  3157  		link_bpp_x16 = pipe_config->dsc.compressed_bpp_x16;
a4a157777c807d5 drivers/gpu/drm/i915/intel_dp.c         Manasi Navare         2018-11-28  3158  	else
3196763851b5fb9 drivers/gpu/drm/i915/display/intel_dp.c Imre Deak             2024-08-05  3159  		link_bpp_x16 = fxp_q4_from_int(intel_dp_output_bpp(pipe_config->output_format,
87c8812f4b009b5 drivers/gpu/drm/i915/display/intel_dp.c Ankit Nautiyal        2023-11-10  3160  								   pipe_config->pipe_bpp));
aefa95bacfbe65c drivers/gpu/drm/i915/intel_dp.c         Ville Syrjälä         2019-03-26  3161  
bc71194e889741e drivers/gpu/drm/i915/display/intel_dp.c Jani Nikula           2021-03-02  3162  	if (intel_dp->mso_link_count) {
bc71194e889741e drivers/gpu/drm/i915/display/intel_dp.c Jani Nikula           2021-03-02  3163  		int n = intel_dp->mso_link_count;
bc71194e889741e drivers/gpu/drm/i915/display/intel_dp.c Jani Nikula           2021-03-02  3164  		int overlap = intel_dp->mso_pixel_overlap;
bc71194e889741e drivers/gpu/drm/i915/display/intel_dp.c Jani Nikula           2021-03-02  3165  
bc71194e889741e drivers/gpu/drm/i915/display/intel_dp.c Jani Nikula           2021-03-02  3166  		pipe_config->splitter.enable = true;
bc71194e889741e drivers/gpu/drm/i915/display/intel_dp.c Jani Nikula           2021-03-02  3167  		pipe_config->splitter.link_count = n;
bc71194e889741e drivers/gpu/drm/i915/display/intel_dp.c Jani Nikula           2021-03-02  3168  		pipe_config->splitter.pixel_overlap = overlap;
bc71194e889741e drivers/gpu/drm/i915/display/intel_dp.c Jani Nikula           2021-03-02  3169  
9bfcb6bd4e40416 drivers/gpu/drm/i915/display/intel_dp.c Jani Nikula           2024-12-13  3170  		drm_dbg_kms(display->drm,
9bfcb6bd4e40416 drivers/gpu/drm/i915/display/intel_dp.c Jani Nikula           2024-12-13  3171  			    "MSO link count %d, pixel overlap %d\n",
bc71194e889741e drivers/gpu/drm/i915/display/intel_dp.c Jani Nikula           2021-03-02  3172  			    n, overlap);
bc71194e889741e drivers/gpu/drm/i915/display/intel_dp.c Jani Nikula           2021-03-02  3173  
bc71194e889741e drivers/gpu/drm/i915/display/intel_dp.c Jani Nikula           2021-03-02  3174  		adjusted_mode->crtc_hdisplay = adjusted_mode->crtc_hdisplay / n + overlap;
bc71194e889741e drivers/gpu/drm/i915/display/intel_dp.c Jani Nikula           2021-03-02  3175  		adjusted_mode->crtc_hblank_start = adjusted_mode->crtc_hblank_start / n + overlap;
bc71194e889741e drivers/gpu/drm/i915/display/intel_dp.c Jani Nikula           2021-03-02  3176  		adjusted_mode->crtc_hblank_end = adjusted_mode->crtc_hblank_end / n + overlap;
bc71194e889741e drivers/gpu/drm/i915/display/intel_dp.c Jani Nikula           2021-03-02  3177  		adjusted_mode->crtc_hsync_start = adjusted_mode->crtc_hsync_start / n + overlap;
bc71194e889741e drivers/gpu/drm/i915/display/intel_dp.c Jani Nikula           2021-03-02  3178  		adjusted_mode->crtc_hsync_end = adjusted_mode->crtc_hsync_end / n + overlap;
bc71194e889741e drivers/gpu/drm/i915/display/intel_dp.c Jani Nikula           2021-03-02  3179  		adjusted_mode->crtc_htotal = adjusted_mode->crtc_htotal / n + overlap;
bc71194e889741e drivers/gpu/drm/i915/display/intel_dp.c Jani Nikula           2021-03-02  3180  		adjusted_mode->crtc_clock /= n;
bc71194e889741e drivers/gpu/drm/i915/display/intel_dp.c Jani Nikula           2021-03-02  3181  	}
bc71194e889741e drivers/gpu/drm/i915/display/intel_dp.c Jani Nikula           2021-03-02  3182  
8853750dbad8f5d drivers/gpu/drm/i915/display/intel_dp.c Vinod Govindapillai   2022-11-21  3183  	intel_dp_audio_compute_config(encoder, pipe_config, conn_state);
8853750dbad8f5d drivers/gpu/drm/i915/display/intel_dp.c Vinod Govindapillai   2022-11-21  3184  
87c8812f4b009b5 drivers/gpu/drm/i915/display/intel_dp.c Ankit Nautiyal        2023-11-10  3185  	intel_link_compute_m_n(link_bpp_x16,
a4a157777c807d5 drivers/gpu/drm/i915/intel_dp.c         Manasi Navare         2018-11-28  3186  			       pipe_config->lane_count,
241bfc389111ce4 drivers/gpu/drm/i915/intel_dp.c         Damien Lespiau        2013-09-25  3187  			       adjusted_mode->crtc_clock,
241bfc389111ce4 drivers/gpu/drm/i915/intel_dp.c         Damien Lespiau        2013-09-25  3188  			       pipe_config->port_clock,
7ff2090c7c98644 drivers/gpu/drm/i915/display/intel_dp.c Imre Deak             2023-10-24  3189  			       intel_dp_bw_fec_overhead(pipe_config->fec_enable),
7ff2090c7c98644 drivers/gpu/drm/i915/display/intel_dp.c Imre Deak             2023-10-24  3190  			       &pipe_config->dp_m_n);
a4fc5ed69817c73 drivers/gpu/drm/i915/intel_dp.c         Keith Packard         2009-04-07  3191  
bc71194e889741e drivers/gpu/drm/i915/display/intel_dp.c Jani Nikula           2021-03-02  3192  	/* FIXME: abstract this better */
bc71194e889741e drivers/gpu/drm/i915/display/intel_dp.c Jani Nikula           2021-03-02  3193  	if (pipe_config->splitter.enable)
5f721a5d1bb2e3a drivers/gpu/drm/i915/display/intel_dp.c Ville Syrjälä         2022-01-27  3194  		pipe_config->dp_m_n.data_m *= pipe_config->splitter.link_count;
bc71194e889741e drivers/gpu/drm/i915/display/intel_dp.c Jani Nikula           2021-03-02  3195  
4f8036a28112ed6 drivers/gpu/drm/i915/intel_dp.c         Tvrtko Ursulin        2016-10-13  3196  	if (!HAS_DDI(dev_priv))
053ffdd1641e0cb drivers/gpu/drm/i915/display/intel_dp.c Ville Syrjälä         2021-03-18  3197  		g4x_dp_set_clock(encoder, pipe_config);
c6bb353815c30c3 drivers/gpu/drm/i915/intel_dp.c         Simona Vetter         2013-04-19  3198  
117cd09ba52857a drivers/gpu/drm/i915/display/intel_dp.c Manasi Navare         2021-01-22  3199  	intel_vrr_compute_config(pipe_config, conn_state);
a5bd5991cb8ab51 drivers/gpu/drm/i915/display/intel_dp.c Mitul Golani          2024-03-22  3200  	intel_dp_compute_as_sdp(intel_dp, pipe_config);
9ce5884e5139037 drivers/gpu/drm/i915/display/intel_dp.c José Roberto de Souza 2021-09-22  3201  	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
15438b32598744c drivers/gpu/drm/i915/display/intel_dp.c Animesh Manna         2024-05-30  3202  	intel_alpm_lobf_compute_config(intel_dp, pipe_config, conn_state);
87c8812f4b009b5 drivers/gpu/drm/i915/display/intel_dp.c Ankit Nautiyal        2023-11-10  3203  	intel_dp_drrs_compute_config(connector, pipe_config, link_bpp_x16);
9799c4c3b76e540 drivers/gpu/drm/i915/display/intel_dp.c Gwan-gyeong Mun       2020-02-11  3204  	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
d1eed96dcb60b79 drivers/gpu/drm/i915/display/intel_dp.c Gwan-gyeong Mun       2020-02-11  3205  	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp, pipe_config, conn_state);
4d90f2d507ab463 drivers/gpu/drm/i915/intel_dp.c         Ville Syrjälä         2017-10-12  3206  
a4efae87ecb21bf drivers/gpu/drm/i915/display/intel_dp.c Imre Deak             2024-02-20  3207  	return intel_dp_tunnel_atomic_compute_stream_bw(state, intel_dp, connector,
a4efae87ecb21bf drivers/gpu/drm/i915/display/intel_dp.c Imre Deak             2024-02-20  3208  							pipe_config);
5eb08b69f510fad drivers/gpu/drm/i915/intel_dp.c         Zhenyu Wang           2009-07-24  3209  }
a4fc5ed69817c73 drivers/gpu/drm/i915/intel_dp.c         Keith Packard         2009-04-07  3210  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
