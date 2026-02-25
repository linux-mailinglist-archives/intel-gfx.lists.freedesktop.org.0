Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UPLdB9Vmn2lRagQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 22:17:09 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 479F019DC03
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 22:17:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73BB210E0E5;
	Wed, 25 Feb 2026 21:17:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g4srJCg/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6688910E0E5
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Feb 2026 21:17:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772054224; x=1803590224;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=5zCfJQKeCEB0lzdoGOrfnCTDZrMFnUsuANLuuzaadDw=;
 b=g4srJCg/PrGKLmUHqbRwQYCqU9FAx58qgxmIc7mO5DmP/DF9zhJSz2NP
 AKRmRJLIYH6VsebylO4TtbHu6uaOtYHAQe0/BMTe0knZ1xicEauSHmih0
 ANgo+/R8NzdJeoMzMEVoemrElF44l3co7kZJoVgFZp2OUozA6IOjxhHYK
 t84F4snDHB4OO58VZ03Sr2d7Z14kNFPT/s7YdYZs11aE4ETucnK3TCV3d
 0HnY/vucFS71+/ckfmlVfLVqt7IzFU72WMJ3ef/PgWNukS/g8oEZ+Fv4+
 8ZQ6kLQmrzr64xb3920Y9C/13zFHT4VJOwaUN+u+UmjD8vnDV8qeuoVL8 w==;
X-CSE-ConnectionGUID: rPbHA3AaStO6+95NGjFLPQ==
X-CSE-MsgGUID: bhVRp7qGSa63UaAeG6wTmw==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="83814036"
X-IronPort-AV: E=Sophos;i="6.21,311,1763452800"; d="scan'208";a="83814036"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 13:17:04 -0800
X-CSE-ConnectionGUID: paQp4fl7Rl2py964jvVzlw==
X-CSE-MsgGUID: u7+lPOk5SqygBTo3xndN3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,311,1763452800"; d="scan'208";a="220981828"
Received: from lkp-server02.sh.intel.com (HELO a3936d6a266d) ([10.239.97.151])
 by fmviesa005.fm.intel.com with ESMTP; 25 Feb 2026 13:17:03 -0800
Received: from kbuild by a3936d6a266d with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vvMFZ-000000007Mr-0agr;
 Wed, 25 Feb 2026 21:16:54 +0000
Date: Thu, 26 Feb 2026 05:15:55 +0800
From: kernel test robot <lkp@intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>, intel-gfx@lists.freedesktop.org
Cc: oe-kbuild-all@lists.linux.dev
Subject: Re: [i915-ci-only NO-REVIEW 24/25] PREEMPT_RT injection
Message-ID: <202602260513.DKBDSL6e-lkp@intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dev@lankhorst.se,m:oe-kbuild-all@lists.linux.dev,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[lkp@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gitlab.freedesktop.org:url,git-scm.com:url]
X-Rspamd-Queue-Id: 479F019DC03
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
config: i386-randconfig-014-20260226 (https://download.01.org/0day-ci/archive/20260226/202602260513.DKBDSL6e-lkp@intel.com/config)
compiler: gcc-14 (Debian 14.2.0-19) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260226/202602260513.DKBDSL6e-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202602260513.DKBDSL6e-lkp@intel.com/

All warnings (new ones prefixed by >>):

   In file included from arch/x86/include/asm/uprobes.h:13,
                    from include/linux/uprobes.h:66,
                    from include/linux/mm_types.h:16,
                    from include/linux/mmzone.h:22,
                    from include/linux/gfp.h:7,
                    from include/linux/slab.h:17,
                    from include/linux/resource_ext.h:11,
                    from include/linux/acpi.h:14,
                    from drivers/platform/x86/lenovo/wmi-gamezone.c:11:
>> drivers/platform/x86/lenovo/wmi-gamezone.c:34:31: warning: 'gz_chain_head' defined but not used [-Wunused-variable]
      34 | static BLOCKING_NOTIFIER_HEAD(gz_chain_head);
         |                               ^~~~~~~~~~~~~
   include/linux/notifier.h:119:39: note: in definition of macro 'BLOCKING_NOTIFIER_HEAD'
     119 |         struct blocking_notifier_head name =                    \
         |                                       ^~~~


vim +/gz_chain_head +34 drivers/platform/x86/lenovo/wmi-gamezone.c

22024ac5366f06 Derek J. Clark 2025-07-01 @11  #include <linux/acpi.h>
22024ac5366f06 Derek J. Clark 2025-07-01  12  #include <linux/dmi.h>
22024ac5366f06 Derek J. Clark 2025-07-01  13  #include <linux/export.h>
22024ac5366f06 Derek J. Clark 2025-07-01  14  #include <linux/list.h>
22024ac5366f06 Derek J. Clark 2025-07-01  15  #include <linux/module.h>
22024ac5366f06 Derek J. Clark 2025-07-01  16  #include <linux/notifier.h>
22024ac5366f06 Derek J. Clark 2025-07-01  17  #include <linux/platform_profile.h>
22024ac5366f06 Derek J. Clark 2025-07-01  18  #include <linux/spinlock.h>
22024ac5366f06 Derek J. Clark 2025-07-01  19  #include <linux/spinlock_types.h>
22024ac5366f06 Derek J. Clark 2025-07-01  20  #include <linux/types.h>
22024ac5366f06 Derek J. Clark 2025-07-01  21  #include <linux/wmi.h>
22024ac5366f06 Derek J. Clark 2025-07-01  22  
22024ac5366f06 Derek J. Clark 2025-07-01  23  #include "wmi-events.h"
22024ac5366f06 Derek J. Clark 2025-07-01  24  #include "wmi-gamezone.h"
22024ac5366f06 Derek J. Clark 2025-07-01  25  #include "wmi-helpers.h"
22024ac5366f06 Derek J. Clark 2025-07-01  26  #include "wmi-other.h"
22024ac5366f06 Derek J. Clark 2025-07-01  27  
22024ac5366f06 Derek J. Clark 2025-07-01  28  #define LENOVO_GAMEZONE_GUID "887B54E3-DDDC-4B2C-8B88-68A26A8835D0"
22024ac5366f06 Derek J. Clark 2025-07-01  29  
22024ac5366f06 Derek J. Clark 2025-07-01  30  #define LWMI_GZ_METHOD_ID_SMARTFAN_SUP 43
22024ac5366f06 Derek J. Clark 2025-07-01  31  #define LWMI_GZ_METHOD_ID_SMARTFAN_SET 44
22024ac5366f06 Derek J. Clark 2025-07-01  32  #define LWMI_GZ_METHOD_ID_SMARTFAN_GET 45
22024ac5366f06 Derek J. Clark 2025-07-01  33  
22024ac5366f06 Derek J. Clark 2025-07-01 @34  static BLOCKING_NOTIFIER_HEAD(gz_chain_head);
22024ac5366f06 Derek J. Clark 2025-07-01  35  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
