Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 472823FE04F
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Sep 2021 18:49:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 850A46E218;
	Wed,  1 Sep 2021 16:49:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C4246E218
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Sep 2021 16:49:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10094"; a="216956791"
X-IronPort-AV: E=Sophos;i="5.84,369,1620716400"; d="scan'208";a="216956791"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 09:49:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,369,1620716400"; d="scan'208";a="460927020"
Received: from lkp-server01.sh.intel.com (HELO 4fbc2b3ce5aa) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 01 Sep 2021 09:49:30 -0700
Received: from kbuild by 4fbc2b3ce5aa with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mLTQX-000850-CV; Wed, 01 Sep 2021 16:49:29 +0000
Date: Thu, 2 Sep 2021 00:48:32 +0800
From: kernel test robot <lkp@intel.com>
To: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>, intel-gfx@lists.freedesktop.org
Cc: kbuild-all@lists.01.org, Srinivasan Shanmugam <srinivasan.s@intel.com>,
 Chris Wilson <chris.p.wilson@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
Message-ID: <202109020016.QpOgZbcT-lkp@intel.com>
References: <20210830162240.3891502-3-ayaz.siddiqui@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210830162240.3891502-3-ayaz.siddiqui@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH V3 2/8] drm/i915/gt: Add support of mocs
 auxiliary registers programming
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

Hi Ayaz,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on drm-intel/for-linux-next]
[also build test WARNING on drm-tip/drm-tip next-20210901]
[cannot apply to v5.14]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Ayaz-A-Siddiqui/drm-i915-gt-Initialize-unused-MOCS-entries-to-L3_WB/20210831-002827
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
compiler: gcc-9 (Debian 9.3.0-22) 9.3.0

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>


includecheck warnings: (new ones prefixed by >>)
>> drivers/gpu/drm/i915/gt/intel_gt.c: intel_mocs.h is included more than once.

Please review and possibly fold the followup patch.

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
