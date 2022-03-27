Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCF024E855A
	for <lists+intel-gfx@lfdr.de>; Sun, 27 Mar 2022 06:04:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0B3310E501;
	Sun, 27 Mar 2022 04:04:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4C8910E501
 for <intel-gfx@lists.freedesktop.org>; Sun, 27 Mar 2022 04:04:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648353891; x=1679889891;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=kYaeggezkwVJxfT8ztKy1RtD5FymTJ42AHIIaKNKUKM=;
 b=PAE+jniOFrQ6RvXqpHxJDD/XHkFQt5WlsviLOyYkSXq6sd+OWTUHlc7H
 SX/+OUNlm55oYYNU9iGYWbRfcX4sqf0r8uy/Jl9SlHHdVJ/gcypVirrHH
 HJb/NPuHmWqA+N6fJnBv3iK/51Z0m2atphlgyyaGMfM2xY3ziAZoVwHFP
 1A7Can97cNsZxdyebnDn3UoGh9F7ugsKlqWywAYG+kTxB/+X1nKGb5mC9
 c9f3uKXW1KNksXmWJW7NynkKSQAyjALx20ZH44Q0wEY3/EJTrA2XCmye3
 TMhmQKma3tzEykiI9Jw9XHzs1rpAosCQTZOxTgPYCT0AOSF8i4ePVlA/O A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10298"; a="239421227"
X-IronPort-AV: E=Sophos;i="5.90,214,1643702400"; d="scan'208";a="239421227"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2022 21:04:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,214,1643702400"; d="scan'208";a="520612903"
Received: from lkp-server02.sh.intel.com (HELO 89b41b6ae01c) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 26 Mar 2022 21:04:49 -0700
Received: from kbuild by 89b41b6ae01c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nYK93-0000hz-1R; Sun, 27 Mar 2022 04:04:49 +0000
Date: Sun, 27 Mar 2022 12:04:18 +0800
From: kernel test robot <lkp@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202203271159.aOWDCD1Q-lkp@intel.com>
References: <20220325153436.95045-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220325153436.95045-1-jose.souza@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] docs: gpu: i915.rst: Update DRRS functions
 names
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
Cc: kbuild-all@lists.01.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi "José,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on drm-intel/for-linux-next]
[also build test WARNING on v5.17 next-20220325]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/intel-lab-lkp/linux/commits/Jos-Roberto-de-Souza/docs-gpu-i915-rst-Update-DRRS-functions-names/20220325-233423
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
reproduce: make htmldocs

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/display/intel_drrs.c:1: warning: 'intel_drrs_activate' not found
>> drivers/gpu/drm/i915/display/intel_drrs.c:1: warning: 'intel_drrs_deactivate' not found

vim +/intel_drrs_activate +1 drivers/gpu/drm/i915/display/intel_drrs.c

a1b63119ee839c8 José Roberto de Souza 2021-08-27 @1  // SPDX-License-Identifier: MIT
a1b63119ee839c8 José Roberto de Souza 2021-08-27  2  /*
a1b63119ee839c8 José Roberto de Souza 2021-08-27  3   * Copyright © 2021 Intel Corporation
a1b63119ee839c8 José Roberto de Souza 2021-08-27  4   */
a1b63119ee839c8 José Roberto de Souza 2021-08-27  5  

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
