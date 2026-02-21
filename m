Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4FKtM+u2mWlqWQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Feb 2026 14:45:15 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 200E816CF27
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Feb 2026 14:45:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D068410E05D;
	Sat, 21 Feb 2026 13:45:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nI/mSWAh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9303410E052;
 Sat, 21 Feb 2026 13:45:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771681510; x=1803217510;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=j9mLpPmmkj5iALmUlbiD4bCPcvEQ/uprDhW79GL1tLA=;
 b=nI/mSWAhux6li3tUH+RO+KkrPy6OQUgTgYKVc2hqa2cfyi1GdTWV794R
 hvUvAVRyZy0Idmoo6Fn3bGkDVEsGe/2o6THwDigi+PaC0VCURLC9J2I7K
 InxFMNEYoPoWVlYLPk/N/2RWAVmdE+DvIZG+aoysZH5cv67iV6byLb8NY
 tWOeJatzxUxbtepyXbPkVb/n6J2sRsezEqn+e5mo3BMPUUSXvGK3i3fcv
 ZPgcuITsdrHUVWa0e05WTWi2AUQ61WSRH5xCtqmTckj1vQq1b+NTxC4h/
 8ax7rpHdi3RCK8u5gXKnhaWT0aHeZjM1sIuzFJxDNeYA1aZ/1m5zn2VvP Q==;
X-CSE-ConnectionGUID: xnSBMI/TQKiD4L/GIEghAg==
X-CSE-MsgGUID: GxkSBNBKQwOMMJmlIk8UOg==
X-IronPort-AV: E=McAfee;i="6800,10657,11708"; a="72656734"
X-IronPort-AV: E=Sophos;i="6.21,302,1763452800"; d="scan'208";a="72656734"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2026 05:45:10 -0800
X-CSE-ConnectionGUID: JMTUy+hlRRiwzLnpuxddVQ==
X-CSE-MsgGUID: ArSPyctASx2kfyciROyByQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,302,1763452800"; d="scan'208";a="218766921"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by fmviesa004.fm.intel.com with ESMTP; 21 Feb 2026 05:45:08 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vtnIA-000000014x0-1XtK;
 Sat, 21 Feb 2026 13:45:06 +0000
Date: Sat, 21 Feb 2026 21:44:34 +0800
From: kernel test robot <lkp@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: oe-kbuild-all@lists.linux.dev, vinod.govindapillai@intel.com,
 ville.syrjala@intel.com, uma.shankar@intel.com
Subject: Re: [PATCH v2 3/6] drm/i915/fbdev: Extract
 intel_fbdev_fb_prefer_stolen()
Message-ID: <202602212127.uexnS3FE-lkp@intel.com>
References: <20260220170908.201422-4-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260220170908.201422-4-vinod.govindapillai@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[01.org:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email,gitlab.freedesktop.org:url]
X-Rspamd-Queue-Id: 200E816CF27
X-Rspamd-Action: no action

Hi Vinod,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-i915/for-linux-next]
[also build test ERROR on drm-tip/drm-tip linus/master next-20260220]
[cannot apply to drm-i915/for-linux-next-fixes drm-xe/drm-xe-next v6.19]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Vinod-Govindapillai/drm-xe-fbdev-Fix-BIOS-FB-vs-s-stolen-size-check/20260221-013114
base:   https://gitlab.freedesktop.org/drm/i915/kernel.git for-linux-next
patch link:    https://lore.kernel.org/r/20260220170908.201422-4-vinod.govindapillai%40intel.com
patch subject: [PATCH v2 3/6] drm/i915/fbdev: Extract intel_fbdev_fb_prefer_stolen()
config: x86_64-randconfig-011-20260221 (https://download.01.org/0day-ci/archive/20260221/202602212127.uexnS3FE-lkp@intel.com/config)
compiler: gcc-14 (Debian 14.2.0-19) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260221/202602212127.uexnS3FE-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202602212127.uexnS3FE-lkp@intel.com/

All errors (new ones prefixed by >>, old ones prefixed by <<):

>> ERROR: modpost: "intel_fbdev_fb_prefer_stolen" [drivers/gpu/drm/i915/i915.ko] undefined!

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
