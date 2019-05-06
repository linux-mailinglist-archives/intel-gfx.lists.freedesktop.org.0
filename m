Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39DE5155CE
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2019 23:47:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E67C89C25;
	Mon,  6 May 2019 21:47:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B4A289C25
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2019 21:47:15 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 May 2019 14:47:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,439,1549958400"; 
 d="gz'50?scan'50,208,50";a="168670920"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 06 May 2019 14:47:12 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hNlS4-000BoY-24; Tue, 07 May 2019 05:47:12 +0800
Date: Tue, 7 May 2019 05:46:29 +0800
From: kbuild test robot <lkp@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <201905070510.fo3THliv%lkp@intel.com>
References: <20190506134801.28751-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="2fHTh5uZTiUOsy+g"
Content-Disposition: inline
In-Reply-To: <20190506134801.28751-1-jani.nikula@intel.com>
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: add force_probe module parameter
 to replace alpha_support
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org, kbuild-all@01.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--2fHTh5uZTiUOsy+g
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Jani,

I love your patch! Yet something to improve:

[auto build test ERROR on drm-intel/for-linux-next]
[also build test ERROR on next-20190506]
[cannot apply to v5.1]
[if your patch is applied to the wrong git tree, please drop us a note to help improve the system]

url:    https://github.com/0day-ci/linux/commits/Jani-Nikula/drm-i915-add-force_probe-module-parameter-to-replace-alpha_support/20190507-045927
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
config: x86_64-randconfig-x009-201918 (attached as .config)
compiler: gcc-7 (Debian 7.3.0-1) 7.3.0
reproduce:
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

   In file included from arch/x86/include/asm/bug.h:83:0,
                    from include/linux/bug.h:5,
                    from include/linux/mmdebug.h:5,
                    from include/linux/gfp.h:5,
                    from include/linux/firmware.h:7,
                    from drivers/gpu/drm/i915/intel_csr.c:25:
   drivers/gpu/drm/i915/intel_csr.c: In function 'intel_csr_ucode_init':
>> drivers/gpu/drm/i915/intel_csr.c:532:12: error: implicit declaration of function 'IS_ALPHA_SUPPORT'; did you mean 'DP_PSR_SUPPORT'? [-Werror=implicit-function-declaration]
      WARN_ON(!IS_ALPHA_SUPPORT(INTEL_INFO(dev_priv)));
               ^
   include/asm-generic/bug.h:131:25: note: in definition of macro 'WARN'
     int __ret_warn_on = !!(condition);    \
                            ^~~~~~~~~
>> drivers/gpu/drm/i915/intel_csr.c:532:3: note: in expansion of macro 'WARN_ON'
      WARN_ON(!IS_ALPHA_SUPPORT(INTEL_INFO(dev_priv)));
      ^~~~~~~
   cc1: some warnings being treated as errors

vim +532 drivers/gpu/drm/i915/intel_csr.c

eb805623 Daniel Vetter   2015-05-04  462  
aa9145c4 Animesh Manna   2015-05-13  463  /**
aa9145c4 Animesh Manna   2015-05-13  464   * intel_csr_ucode_init() - initialize the firmware loading.
f4448375 Daniel Vetter   2015-10-28  465   * @dev_priv: i915 drm device.
aa9145c4 Animesh Manna   2015-05-13  466   *
aa9145c4 Animesh Manna   2015-05-13  467   * This function is called at the time of loading the display driver to read
aa9145c4 Animesh Manna   2015-05-13  468   * firmware from a .bin file and copied into a internal memory.
aa9145c4 Animesh Manna   2015-05-13  469   */
f4448375 Daniel Vetter   2015-10-28  470  void intel_csr_ucode_init(struct drm_i915_private *dev_priv)
eb805623 Daniel Vetter   2015-05-04  471  {
eb805623 Daniel Vetter   2015-05-04  472  	struct intel_csr *csr = &dev_priv->csr;
8144ac59 Daniel Vetter   2015-10-28  473  
8144ac59 Daniel Vetter   2015-10-28  474  	INIT_WORK(&dev_priv->csr.work, csr_load_work_fn);
eb805623 Daniel Vetter   2015-05-04  475  
f4448375 Daniel Vetter   2015-10-28  476  	if (!HAS_CSR(dev_priv))
eb805623 Daniel Vetter   2015-05-04  477  		return;
eb805623 Daniel Vetter   2015-05-04  478  
d8a5b7d7 Jani Nikula     2018-09-26  479  	/*
d8a5b7d7 Jani Nikula     2018-09-26  480  	 * Obtain a runtime pm reference, until CSR is loaded, to avoid entering
d8a5b7d7 Jani Nikula     2018-09-26  481  	 * runtime-suspend.
d8a5b7d7 Jani Nikula     2018-09-26  482  	 *
d8a5b7d7 Jani Nikula     2018-09-26  483  	 * On error, we return with the rpm wakeref held to prevent runtime
d8a5b7d7 Jani Nikula     2018-09-26  484  	 * suspend as runtime suspend *requires* a working CSR for whatever
d8a5b7d7 Jani Nikula     2018-09-26  485  	 * reason.
d8a5b7d7 Jani Nikula     2018-09-26  486  	 */
0e6e0be4 Chris Wilson    2019-01-14  487  	intel_csr_runtime_pm_get(dev_priv);
d8a5b7d7 Jani Nikula     2018-09-26  488  
02c07b76 Lucas De Marchi 2018-11-16  489  	if (INTEL_GEN(dev_priv) >= 12) {
02c07b76 Lucas De Marchi 2018-11-16  490  		/* Allow to load fw via parameter using the last known size */
02c07b76 Lucas De Marchi 2018-11-16  491  		csr->max_fw_size = GEN12_CSR_MAX_FW_SIZE;
4b225248 Anusha Srivatsa 2019-03-22  492  	} else if (IS_GEN(dev_priv, 11)) {
7fe78985 Jani Nikula     2018-09-27  493  		csr->fw_path = ICL_CSR_PATH;
180e9d23 Jani Nikula     2018-09-26  494  		csr->required_version = ICL_CSR_VERSION_REQUIRED;
d8a5b7d7 Jani Nikula     2018-09-26  495  		csr->max_fw_size = ICL_CSR_MAX_FW_SIZE;
180e9d23 Jani Nikula     2018-09-26  496  	} else if (IS_CANNONLAKE(dev_priv)) {
7fe78985 Jani Nikula     2018-09-27  497  		csr->fw_path = CNL_CSR_PATH;
180e9d23 Jani Nikula     2018-09-26  498  		csr->required_version = CNL_CSR_VERSION_REQUIRED;
7fe78985 Jani Nikula     2018-09-27  499  		csr->max_fw_size = CNL_CSR_MAX_FW_SIZE;
180e9d23 Jani Nikula     2018-09-26  500  	} else if (IS_GEMINILAKE(dev_priv)) {
7fe78985 Jani Nikula     2018-09-27  501  		csr->fw_path = GLK_CSR_PATH;
180e9d23 Jani Nikula     2018-09-26  502  		csr->required_version = GLK_CSR_VERSION_REQUIRED;
d8a5b7d7 Jani Nikula     2018-09-26  503  		csr->max_fw_size = GLK_CSR_MAX_FW_SIZE;
180e9d23 Jani Nikula     2018-09-26  504  	} else if (IS_KABYLAKE(dev_priv) || IS_COFFEELAKE(dev_priv)) {
7fe78985 Jani Nikula     2018-09-27  505  		csr->fw_path = KBL_CSR_PATH;
180e9d23 Jani Nikula     2018-09-26  506  		csr->required_version = KBL_CSR_VERSION_REQUIRED;
7fe78985 Jani Nikula     2018-09-27  507  		csr->max_fw_size = KBL_CSR_MAX_FW_SIZE;
180e9d23 Jani Nikula     2018-09-26  508  	} else if (IS_SKYLAKE(dev_priv)) {
7fe78985 Jani Nikula     2018-09-27  509  		csr->fw_path = SKL_CSR_PATH;
180e9d23 Jani Nikula     2018-09-26  510  		csr->required_version = SKL_CSR_VERSION_REQUIRED;
7fe78985 Jani Nikula     2018-09-27  511  		csr->max_fw_size = SKL_CSR_MAX_FW_SIZE;
180e9d23 Jani Nikula     2018-09-26  512  	} else if (IS_BROXTON(dev_priv)) {
7fe78985 Jani Nikula     2018-09-27  513  		csr->fw_path = BXT_CSR_PATH;
180e9d23 Jani Nikula     2018-09-26  514  		csr->required_version = BXT_CSR_VERSION_REQUIRED;
d8a5b7d7 Jani Nikula     2018-09-26  515  		csr->max_fw_size = BXT_CSR_MAX_FW_SIZE;
180e9d23 Jani Nikula     2018-09-26  516  	}
abd41dc9 Damien Lespiau  2015-06-04  517  
d8a5b7d7 Jani Nikula     2018-09-26  518  	if (i915_modparams.dmc_firmware_path) {
e7351a84 Jani Nikula     2018-09-26  519  		if (strlen(i915_modparams.dmc_firmware_path) == 0) {
e7351a84 Jani Nikula     2018-09-26  520  			csr->fw_path = NULL;
b598a88e Colin Ian King  2018-11-07  521  			DRM_INFO("Disabling CSR firmware and runtime PM\n");
e7351a84 Jani Nikula     2018-09-26  522  			return;
e7351a84 Jani Nikula     2018-09-26  523  		}
e7351a84 Jani Nikula     2018-09-26  524  
d8a5b7d7 Jani Nikula     2018-09-26  525  		csr->fw_path = i915_modparams.dmc_firmware_path;
d8a5b7d7 Jani Nikula     2018-09-26  526  		/* Bypass version check for firmware override. */
d8a5b7d7 Jani Nikula     2018-09-26  527  		csr->required_version = 0;
d8a5b7d7 Jani Nikula     2018-09-26  528  	}
dc174300 Suketu Shah     2015-04-17  529  
ad3c776b Imre Deak       2018-08-15  530  	if (csr->fw_path == NULL) {
ad3c776b Imre Deak       2018-08-15  531  		DRM_DEBUG_KMS("No known CSR firmware for platform, disabling runtime PM\n");
ad3c776b Imre Deak       2018-08-15 @532  		WARN_ON(!IS_ALPHA_SUPPORT(INTEL_INFO(dev_priv)));
ad3c776b Imre Deak       2018-08-15  533  
ad3c776b Imre Deak       2018-08-15  534  		return;
ad3c776b Imre Deak       2018-08-15  535  	}
ad3c776b Imre Deak       2018-08-15  536  
ad3c776b Imre Deak       2018-08-15  537  	DRM_DEBUG_KMS("Loading %s\n", csr->fw_path);
8144ac59 Daniel Vetter   2015-10-28  538  	schedule_work(&dev_priv->csr.work);
eb805623 Daniel Vetter   2015-05-04  539  }
eb805623 Daniel Vetter   2015-05-04  540  

:::::: The code at line 532 was first introduced by commit
:::::: ad3c776b171078a10ace07616a34ed6266beb0e7 drm/i915: Fix PM refcounting w/o DMC firmware

:::::: TO: Imre Deak <imre.deak@intel.com>
:::::: CC: Imre Deak <imre.deak@intel.com>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

--2fHTh5uZTiUOsy+g
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
AQA=

--2fHTh5uZTiUOsy+g
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--2fHTh5uZTiUOsy+g--
