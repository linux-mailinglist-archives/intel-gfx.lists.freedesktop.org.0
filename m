Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wH67FOJ8z2mvwgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Apr 2026 10:40:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3CFD392365
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Apr 2026 10:40:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2922D10F3EA;
	Fri,  3 Apr 2026 08:40:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FVzHWgHJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAE8510F3E8;
 Fri,  3 Apr 2026 08:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775205599; x=1806741599;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=W6AAC1cFGrVaftZaq2zuawySYDraS9aSNOJr+kIsTgY=;
 b=FVzHWgHJjLENw6UUBif0VEgEQtu9h8OeasqafZJhy3VjADrNpb8jEWh/
 GbvkengQTVTVC3NrQeuy17qtUB6XuiE6k+zNrppNOUW+VVO/KA9InnjqF
 m2a9aNbUl0PpbURwkV9ZRdOqVUlOIfvFJrsi52hDEF+tzVMJVdwS9jGOV
 Slm7/8m2CwCQek5iPkIvJeB2VV+HFniaMMHobhrarKGdp0XUy7akOdvGE
 cAfJuqBweBu34hNc5zENll+LJt7v6kPwiXAQH8xJYvnY59iMwzmn2s3eS
 plLW3RQHvugSZzV6iWxNS3MukTFulRzv6k0wVyty1MYdchfsGEhIMpUOY Q==;
X-CSE-ConnectionGUID: rafHWFx6Q12VxVMDN4SMQQ==
X-CSE-MsgGUID: B7LONFc/QAiI4XmJ3USFwg==
X-IronPort-AV: E=McAfee;i="6800,10657,11747"; a="76153057"
X-IronPort-AV: E=Sophos;i="6.23,157,1770624000"; d="scan'208";a="76153057"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2026 01:39:59 -0700
X-CSE-ConnectionGUID: O1ijKYzWRyyhp/jUp/q4aw==
X-CSE-MsgGUID: AmcFNb/UTg+SshydyO7axw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,157,1770624000"; d="scan'208";a="257678123"
Received: from lkp-server01.sh.intel.com (HELO 064ad336901d) ([10.239.97.150])
 by orviesa002.jf.intel.com with ESMTP; 03 Apr 2026 01:39:56 -0700
Received: from kbuild by 064ad336901d with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1w8a4H-0000000011X-3GiD;
 Fri, 03 Apr 2026 08:39:53 +0000
Date: Fri, 3 Apr 2026 16:39:07 +0800
From: kernel test robot <lkp@intel.com>
To: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 Jani Nikula <jani.nikula@linux.intel.com>,
 =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>
Subject: Re: [PATCH v1 08/16] drm/i915/bios: support VS/PE Override per each
 ddi port
Message-ID: <202604021026.aZi3LxDW-lkp@intel.com>
References: <20260331183332.1773886-9-michal.grzelak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260331183332.1773886-9-michal.grzelak@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,01.org:url,git-scm.com:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: C3CFD392365
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Michał,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-i915/for-linux-next]
[also build test ERROR on drm-i915/for-linux-next-fixes drm-tip/drm-tip linus/master v7.0-rc6 next-20260331]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Micha-Grzelak/drm-i915-lt-align-xe3plpd-with-VS-PE-Override-layout/20260401-092928
base:   https://gitlab.freedesktop.org/drm/i915/kernel.git for-linux-next
patch link:    https://lore.kernel.org/r/20260331183332.1773886-9-michal.grzelak%40intel.com
patch subject: [PATCH v1 08/16] drm/i915/bios: support VS/PE Override per each ddi port
config: loongarch-allmodconfig (https://download.01.org/0day-ci/archive/20260402/202604021026.aZi3LxDW-lkp@intel.com/config)
compiler: clang version 19.1.7 (https://github.com/llvm/llvm-project cd708029e0b2869e80abe31ddb175f7c35361f90)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260402/202604021026.aZi3LxDW-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202604021026.aZi3LxDW-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/i915/display/intel_bios.c:2767:34: error: cast to union type from type 'int' not present in union
    2767 |         devdata->vswing_preemph.index = (union ddi_vswing_preemph_index) -1;
         |                                         ^                                ~~
   drivers/gpu/drm/i915/display/intel_bios.c:3178:4: error: cast to union type from type 'int' not present in union
    3178 |                         (union ddi_vswing_preemph_index) -1;
         |                         ^                                ~~
   2 errors generated.


vim +/int +2767 drivers/gpu/drm/i915/display/intel_bios.c

  2761	
  2762	static void override_vswing_preemph(struct intel_bios_encoder_data *devdata)
  2763	{
  2764		struct intel_ddi_buf_trans *buf_trans;
  2765	
  2766		devdata->vswing_preemph.buf_trans = NULL;
> 2767		devdata->vswing_preemph.index = (union ddi_vswing_preemph_index) -1;
  2768	
  2769		if (!intel_bios_encoder_overrides_vswing(devdata))
  2770			return;
  2771	
  2772		buf_trans = kzalloc(sizeof(*buf_trans), GFP_KERNEL);
  2773		devdata->vswing_preemph.buf_trans = buf_trans;
  2774	}
  2775	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
