Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1654EFD95
	for <lists+intel-gfx@lfdr.de>; Sat,  2 Apr 2022 03:05:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B213310E039;
	Sat,  2 Apr 2022 01:05:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0836C10E039
 for <intel-gfx@lists.freedesktop.org>; Sat,  2 Apr 2022 01:05:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648861511; x=1680397511;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=7jVlny9eKCOZGz+JpaTeaYkMxEayrQ2fC9IOPYubG+0=;
 b=mZAR7bxbziNsemM5It/oMosXpRTRuyvjLx6ushuZIxcYiOKjNDvbL9Cj
 7S6BPd3qmo7vqTGlnUOfNjffI3Gfz2bwA3H9ZRLShEulUAQna6tRLrDsD
 bkFKdxGYZOwkSjPsR22n+0DM/boeOTXDgw8VX+rQmymuQb3n2oBCrTcEm
 QKnA7WloQMQv/7Qs6pztBA09IS0MqdPDPTLgQrYYuWjGefI+9naT5cGFF
 i1GSNh6+nJOo34yEbKDTS/wxPeeDK8z9oKnGQ0orxnuGl/rjY9wMo9xW5
 qr+fV+/nxgYXQtH+98heQKNcTQD58g1S87gsXszpulWSP589EWf6kV6yu g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10304"; a="285197759"
X-IronPort-AV: E=Sophos;i="5.90,229,1643702400"; d="scan'208";a="285197759"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 18:05:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,229,1643702400"; d="scan'208";a="567973947"
Received: from lkp-server02.sh.intel.com (HELO 3231c491b0e2) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 01 Apr 2022 18:05:09 -0700
Received: from kbuild by 3231c491b0e2 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1naSCS-0001e8-9L;
 Sat, 02 Apr 2022 01:05:08 +0000
Date: Sat, 2 Apr 2022 09:04:48 +0800
From: kernel test robot <lkp@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202204020818.P5BApjRe-lkp@intel.com>
References: <20220401222911.199284-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220401222911.199284-2-jose.souza@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/display/psr: Lock and unlock
 PSR around pipe updates
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
Cc: llvm@lists.linux.dev, kbuild-all@lists.01.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi "José,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on drm-tip/drm-tip]
[also build test WARNING on v5.17 next-20220401]
[cannot apply to drm-intel/for-linux-next]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/intel-lab-lkp/linux/commits/Jos-Roberto-de-Souza/drm-i915-display-psr-Set-partial-frame-enable-when-forcing-full-frame-fetch/20220402-062837
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
config: x86_64-randconfig-a005 (https://download.01.org/0day-ci/archive/20220402/202204020818.P5BApjRe-lkp@intel.com/config)
compiler: clang version 15.0.0 (https://github.com/llvm/llvm-project cc2e2b80a1f36a28fa7c96c38c2674b10868f09f)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/955b4bf1a2fd2e6652980814983464f3db8f955f
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Jos-Roberto-de-Souza/drm-i915-display-psr-Set-partial-frame-enable-when-forcing-full-frame-fetch/20220402-062837
        git checkout 955b4bf1a2fd2e6652980814983464f3db8f955f
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/gpu/drm/i915/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/display/intel_psr.c:2485: warning: expecting prototype for intel_psr_lock(). Prototype was for intel_psr_unlock() instead


vim +2485 drivers/gpu/drm/i915/display/intel_psr.c

  2477	
  2478	/**
  2479	 * intel_psr_lock - grab psr.lock mutex
  2480	 * @crtc_state: the crtc state
  2481	 *
  2482	 * Release the PSR lock that was held during pipe update.
  2483	 */
  2484	void intel_psr_unlock(const struct intel_crtc_state *crtc_state)
> 2485	{

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
