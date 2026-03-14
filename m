Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uJXPLdwXtWkBwgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Mar 2026 09:10:04 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A2928C0EA
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Mar 2026 09:10:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89A3F10E115;
	Sat, 14 Mar 2026 08:10:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nLZKnGbD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FA9210E115;
 Sat, 14 Mar 2026 08:10:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773475801; x=1805011801;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=+4AgdqFOb2ygbgOiAa0mqpkoOtNg8UyP9uTOgaqJ1cE=;
 b=nLZKnGbDgrIw80SAw7reWTqZ3Xf5lovBg9ZLdjke5pveQyMbEIPMZk70
 NxbL1Z5u0BW2NQlYhN90RG+MKlr0ebY1xI5lhV/Z55Jx4bChJ4AsLs1Lg
 rhIVSh0ZqJ8ydpFMo7ShyRvs53giVclvs+bDsi39B5aCO4XBnUqo06h0U
 Rm/erakh6Wxpj+hUf5pVYNKv5j554U9+cOJuHJvCwif3al45+u4CAZGig
 BN7zKYTiNw/zlgpRXNPf6jct75btxvwXY4gqFtNizdxaDfAQn49kh+wKP
 ytDY8AnkGyYmC9gfJibAFzJJzgWy1GnWh/nZ22bOX2F+6SxqUAnLfTr/t g==;
X-CSE-ConnectionGUID: 6MZpbb+iSvKmK3Fu6K0sZg==
X-CSE-MsgGUID: RAyR+kJJQfiA9cYXbUnt1A==
X-IronPort-AV: E=McAfee;i="6800,10657,11728"; a="74690560"
X-IronPort-AV: E=Sophos;i="6.23,119,1770624000"; d="scan'208";a="74690560"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2026 01:10:01 -0700
X-CSE-ConnectionGUID: s8pqu76fSCKL19s0jIkvUg==
X-CSE-MsgGUID: cNVw7CG6QHKSOY6o74mZug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,119,1770624000"; d="scan'208";a="217748831"
Received: from lkp-server01.sh.intel.com (HELO 418530b1a366) ([10.239.97.150])
 by fmviesa010.fm.intel.com with ESMTP; 14 Mar 2026 01:09:59 -0700
Received: from kbuild by 418530b1a366 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1w1K4K-000000004qN-3oNt;
 Sat, 14 Mar 2026 08:09:56 +0000
Date: Sat, 14 Mar 2026 16:09:51 +0800
From: kernel test robot <lkp@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 3/3] drm/i915/de: Implement register polling in the
 display code
Message-ID: <202603141514.jgf9tlEy-lkp@intel.com>
References: <20260313111028.25159-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260313111028.25159-4-ville.syrjala@linux.intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[git-scm.com:url,intel.com:dkim,intel.com:email,intel.com:mid,01.org:url,gitlab.freedesktop.org:url]
X-Rspamd-Queue-Id: 28A2928C0EA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Ville,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-i915/for-linux-next]
[also build test WARNING on drm-tip/drm-tip next-20260311]
[cannot apply to drm-i915/for-linux-next-fixes drm-xe/drm-xe-next linus/master v7.0-rc3]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Ville-Syrjala/drm-i915-de-Introduce-intel_de-c-and-move-intel_de_-read-write-8-there/20260314-004939
base:   https://gitlab.freedesktop.org/drm/i915/kernel.git for-linux-next
patch link:    https://lore.kernel.org/r/20260313111028.25159-4-ville.syrjala%40linux.intel.com
patch subject: [PATCH 3/3] drm/i915/de: Implement register polling in the display code
config: sparc64-allmodconfig (https://download.01.org/0day-ci/archive/20260314/202603141514.jgf9tlEy-lkp@intel.com/config)
compiler: clang version 23.0.0git (https://github.com/llvm/llvm-project 7d47b695929cc7f85eeb0f87d0189adc04c1c629)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260314/202603141514.jgf9tlEy-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202603141514.jgf9tlEy-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/display/intel_de.c:72:6: warning: variable 'ret' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
      72 |         if (fast_timeout_us)
         |             ^~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_de.c:77:6: note: uninitialized use occurs here
      77 |         if (ret && slow_timeout_us)
         |             ^~~
   drivers/gpu/drm/i915/display/intel_de.c:72:2: note: remove the 'if' if its condition is always true
      72 |         if (fast_timeout_us)
         |         ^~~~~~~~~~~~~~~~~~~~
      73 |                 ret = __intel_de_wait_for_register(display, reg, mask, value,
   drivers/gpu/drm/i915/display/intel_de.c:70:9: note: initialize the variable 'ret' to silence this warning
      70 |         int ret;
         |                ^
         |                 = 0
   1 warning generated.


vim +72 drivers/gpu/drm/i915/display/intel_de.c

    62	
    63	static int intel_de_wait_for_register(struct intel_display *display,
    64					      i915_reg_t reg, u32 mask, u32 value,
    65					      unsigned int fast_timeout_us,
    66					      unsigned int slow_timeout_us,
    67					      u32 (*read)(struct intel_display *display, i915_reg_t reg),
    68					      u32 *out_value, bool is_atomic)
    69	{
    70		int ret;
    71	
  > 72		if (fast_timeout_us)
    73			ret = __intel_de_wait_for_register(display, reg, mask, value,
    74							   fast_timeout_us, read,
    75							   out_value, is_atomic);
    76	
    77		if (ret && slow_timeout_us)
    78			ret = __intel_de_wait_for_register(display, reg, mask, value,
    79							   slow_timeout_us, read,
    80							   out_value, is_atomic);
    81	
    82		return ret;
    83	}
    84	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
