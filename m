Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QMVDDDZpn2lRagQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 22:27:18 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FFC319DD2F
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 22:27:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB6E310E836;
	Wed, 25 Feb 2026 21:27:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SiS2qVMj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9670410E836
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Feb 2026 21:27:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772054832; x=1803590832;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Nsorh1kh3hpyh+6trpLGSmBhLEg+aUTWDG1dOyA2OOs=;
 b=SiS2qVMj5QKGAorNB452jrh/i8181+cLbheDeAAFyQWSaw3IT7Y3Uq5j
 0QrMF72qUypl7DoZghwD2Cs5cPL/+MvARjxEbxBupqlJAwUga4NIVrJi1
 53grCChuhlc4ia8a2DjcbzEKXu47tviIsB5fkqWvdmR7ZfYNQGnxJA0Ov
 a/iwh/BSczW+9NGbO68UDtixM9QVwkjwWuK8SdwNxVuXTXnw8AATEfh5J
 M077uuxVV+j8P6e4yCWOOxll2+EFQvYVtBHAefT6sC+V7SdnDsaxkEW/T
 FTEuE38JlT0JD8kGv3ethpmdT6I8ny7FNwfSZHhJB1dBdRz0f0o6HcknO w==;
X-CSE-ConnectionGUID: T+CPFzB/Rm6I1EDGViOnEQ==
X-CSE-MsgGUID: 19dAPu5yQrKof5x7fzxnqg==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="73212169"
X-IronPort-AV: E=Sophos;i="6.21,311,1763452800"; d="scan'208";a="73212169"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 13:27:12 -0800
X-CSE-ConnectionGUID: p/nN14WxQ0aRuj/MGzeNRA==
X-CSE-MsgGUID: lVGSLezITIOEQ/wel91mmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,311,1763452800"; d="scan'208";a="216243485"
Received: from lkp-server02.sh.intel.com (HELO a3936d6a266d) ([10.239.97.151])
 by orviesa009.jf.intel.com with ESMTP; 25 Feb 2026 13:27:11 -0800
Received: from kbuild by a3936d6a266d with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vvMPU-000000007PV-2A6h;
 Wed, 25 Feb 2026 21:27:08 +0000
Date: Thu, 26 Feb 2026 05:26:36 +0800
From: kernel test robot <lkp@intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>, intel-gfx@lists.freedesktop.org
Cc: oe-kbuild-all@lists.linux.dev
Subject: Re: [i915-ci-only NO-REVIEW 24/25] PREEMPT_RT injection
Message-ID: <202602260529.oLe52BkR-lkp@intel.com>
References: <20260225131931.60724-25-dev@lankhorst.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260225131931.60724-25-dev@lankhorst.se>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[lkp@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS(0.00)[m:dev@lankhorst.se,m:oe-kbuild-all@lists.linux.dev,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 5FFC319DD2F
X-Rspamd-Action: no action

Hi Maarten,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-i915/for-linux-next]
[also build test WARNING on next-20260225]
[cannot apply to drm-i915/for-linux-next-fixes drm-misc/drm-misc-next drm-xe/drm-xe-next linus/master v7.0-rc1]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Maarten-Lankhorst/drm-vblank_work-Add-methods-to-schedule-vblank_work-in-2-stages/20260226-012447
base:   https://gitlab.freedesktop.org/drm/i915/kernel.git for-linux-next
patch link:    https://lore.kernel.org/r/20260225131931.60724-25-dev%40lankhorst.se
patch subject: [i915-ci-only NO-REVIEW 24/25] PREEMPT_RT injection
config: i386-randconfig-141-20260226 (https://download.01.org/0day-ci/archive/20260226/202602260529.oLe52BkR-lkp@intel.com/config)
compiler: clang version 20.1.8 (https://github.com/llvm/llvm-project 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)
smatch version: v0.5.0-8994-gd50c5a4c
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260226/202602260529.oLe52BkR-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202602260529.oLe52BkR-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/platform/x86/lenovo/wmi-gamezone.c:34:31: warning: unused variable 'gz_chain_head' [-Wunused-variable]
      34 | static BLOCKING_NOTIFIER_HEAD(gz_chain_head);
         |                               ^~~~~~~~~~~~~
   include/linux/notifier.h:119:32: note: expanded from macro 'BLOCKING_NOTIFIER_HEAD'
     119 |         struct blocking_notifier_head name =                    \
         |                                       ^~~~
   1 warning generated.


vim +/gz_chain_head +34 drivers/platform/x86/lenovo/wmi-gamezone.c

22024ac5366f06 Derek J. Clark 2025-07-01  33  
22024ac5366f06 Derek J. Clark 2025-07-01 @34  static BLOCKING_NOTIFIER_HEAD(gz_chain_head);
22024ac5366f06 Derek J. Clark 2025-07-01  35  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
