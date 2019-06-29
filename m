Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0675A916
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Jun 2019 06:52:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A23B56E992;
	Sat, 29 Jun 2019 04:52:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CE466E992
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Jun 2019 04:52:37 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jun 2019 21:52:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,430,1557212400"; 
 d="gz'50?scan'50,208,50";a="361284253"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 28 Jun 2019 21:52:34 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hh5Lm-0001uW-2l; Sat, 29 Jun 2019 12:52:34 +0800
Date: Sat, 29 Jun 2019 12:52:11 +0800
From: kbuild test robot <lkp@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <201906291209.OtRrYgMT%lkp@intel.com>
References: <20190629003709.14513-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="d6Gm4EdcadzBjdND"
Content-Disposition: inline
In-Reply-To: <20190629003709.14513-1-anusha.srivatsa@intel.com>
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Define GuC firmware version
 for Comet Lake
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
Cc: intel-gfx@lists.freedesktop.org, kbuild-all@01.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--d6Gm4EdcadzBjdND
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Anusha,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on drm-intel/for-linux-next]
[also build test WARNING on next-20190625]
[cannot apply to v5.2-rc6]
[if your patch is applied to the wrong git tree, please drop us a note to help improve the system]

url:    https://github.com/0day-ci/linux/commits/Anusha-Srivatsa/drm-i915-guc-Define-GuC-firmware-version-for-Comet-Lake/20190629-110106
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
config: i386-randconfig-x004-201925 (attached as .config)
compiler: gcc-7 (Debian 7.3.0-1) 7.3.0
reproduce:
        # save the attached .config to linux build tree
        make ARCH=i386 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from include/asm-generic/bug.h:5:0,
                    from arch/x86/include/asm/bug.h:83,
                    from include/linux/bug.h:5,
                    from include/linux/mmdebug.h:5,
                    from include/linux/gfp.h:5,
                    from include/linux/slab.h:15,
                    from include/linux/io-mapping.h:22,
                    from drivers/gpu/drm/i915/i915_drv.h:36,
                    from drivers/gpu/drm/i915/intel_guc_fw.c:31:
   drivers/gpu/drm/i915/intel_guc_fw.c: In function 'guc_fw_select':
   drivers/gpu/drm/i915/intel_guc_fw.c:104:13: error: implicit declaration of function 'IS_COMETLAKE'; did you mean 'IS_COFFEELAKE'? [-Werror=implicit-function-declaration]
     } else if (IS_COMETLAKE(i915)) {
                ^
   include/linux/compiler.h:58:52: note: in definition of macro '__trace_if_var'
    #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                       ^~~~
>> drivers/gpu/drm/i915/intel_guc_fw.c:104:9: note: in expansion of macro 'if'
     } else if (IS_COMETLAKE(i915)) {
            ^~
   drivers/gpu/drm/i915/intel_guc_fw.c:105:7: error: implicit declaration of function 'REVID'; did you mean 'READ'? [-Werror=implicit-function-declaration]
      if (REVID(dev_priv) == 5) {
          ^
   include/linux/compiler.h:58:52: note: in definition of macro '__trace_if_var'
    #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                       ^~~~
   drivers/gpu/drm/i915/intel_guc_fw.c:105:3: note: in expansion of macro 'if'
      if (REVID(dev_priv) == 5) {
      ^~
   drivers/gpu/drm/i915/intel_guc_fw.c:105:13: error: 'dev_priv' undeclared (first use in this function); did you mean 'dev_crit'?
      if (REVID(dev_priv) == 5) {
                ^
   include/linux/compiler.h:58:52: note: in definition of macro '__trace_if_var'
    #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                       ^~~~
   drivers/gpu/drm/i915/intel_guc_fw.c:105:3: note: in expansion of macro 'if'
      if (REVID(dev_priv) == 5) {
      ^~
   drivers/gpu/drm/i915/intel_guc_fw.c:105:13: note: each undeclared identifier is reported only once for each function it appears in
      if (REVID(dev_priv) == 5) {
                ^
   include/linux/compiler.h:58:52: note: in definition of macro '__trace_if_var'
    #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                       ^~~~
   drivers/gpu/drm/i915/intel_guc_fw.c:105:3: note: in expansion of macro 'if'
      if (REVID(dev_priv) == 5) {
      ^~
   cc1: some warnings being treated as errors

vim +/if +104 drivers/gpu/drm/i915/intel_guc_fw.c

  > 31	#include "i915_drv.h"
    32	
    33	#define __MAKE_GUC_FW_PATH(KEY) \
    34		"i915/" \
    35		__stringify(KEY##_GUC_FW_PREFIX) "_guc_" \
    36		__stringify(KEY##_GUC_FW_MAJOR) "." \
    37		__stringify(KEY##_GUC_FW_MINOR) "." \
    38		__stringify(KEY##_GUC_FW_PATCH) ".bin"
    39	
    40	#define SKL_GUC_FW_PREFIX skl
    41	#define SKL_GUC_FW_MAJOR 32
    42	#define SKL_GUC_FW_MINOR 0
    43	#define SKL_GUC_FW_PATCH 3
    44	#define SKL_GUC_FIRMWARE_PATH __MAKE_GUC_FW_PATH(SKL)
    45	MODULE_FIRMWARE(SKL_GUC_FIRMWARE_PATH);
    46	
    47	#define BXT_GUC_FW_PREFIX bxt
    48	#define BXT_GUC_FW_MAJOR 32
    49	#define BXT_GUC_FW_MINOR 0
    50	#define BXT_GUC_FW_PATCH 3
    51	#define BXT_GUC_FIRMWARE_PATH __MAKE_GUC_FW_PATH(BXT)
    52	MODULE_FIRMWARE(BXT_GUC_FIRMWARE_PATH);
    53	
    54	#define KBL_GUC_FW_PREFIX kbl
    55	#define KBL_GUC_FW_MAJOR 32
    56	#define KBL_GUC_FW_MINOR 0
    57	#define KBL_GUC_FW_PATCH 3
    58	#define KBL_GUC_FIRMWARE_PATH __MAKE_GUC_FW_PATH(KBL)
    59	MODULE_FIRMWARE(KBL_GUC_FIRMWARE_PATH);
    60	
    61	#define CML_GUC_FW_PREFIX cml
    62	#define CML_GUC_FW_MAJOR 33
    63	#define CML_GUC_FW_MINOR 0
    64	#define CML_GUC_FW_PATCH 0
    65	#define CML_GUC_FIRMWARE_PATH __MAKE_GUC_FW_PATH(KBL)
    66	MODULE_FIRMWARE(CML_GUC_FIRMWARE_PATH);
    67	
    68	#define GLK_GUC_FW_PREFIX glk
    69	#define GLK_GUC_FW_MAJOR 32
    70	#define GLK_GUC_FW_MINOR 0
    71	#define GLK_GUC_FW_PATCH 3
    72	#define GLK_GUC_FIRMWARE_PATH __MAKE_GUC_FW_PATH(GLK)
    73	MODULE_FIRMWARE(GLK_GUC_FIRMWARE_PATH);
    74	
    75	#define ICL_GUC_FW_PREFIX icl
    76	#define ICL_GUC_FW_MAJOR 32
    77	#define ICL_GUC_FW_MINOR 0
    78	#define ICL_GUC_FW_PATCH 3
    79	#define ICL_GUC_FIRMWARE_PATH __MAKE_GUC_FW_PATH(ICL)
    80	MODULE_FIRMWARE(ICL_GUC_FIRMWARE_PATH);
    81	
    82	static void guc_fw_select(struct intel_uc_fw *guc_fw)
    83	{
    84		struct intel_guc *guc = container_of(guc_fw, struct intel_guc, fw);
    85		struct drm_i915_private *i915 = guc_to_i915(guc);
    86	
    87		GEM_BUG_ON(guc_fw->type != INTEL_UC_FW_TYPE_GUC);
    88	
    89		if (!HAS_GUC(i915))
    90			return;
    91	
    92		if (i915_modparams.guc_firmware_path) {
    93			guc_fw->path = i915_modparams.guc_firmware_path;
    94			guc_fw->major_ver_wanted = 0;
    95			guc_fw->minor_ver_wanted = 0;
    96		} else if (IS_ICELAKE(i915)) {
    97			guc_fw->path = ICL_GUC_FIRMWARE_PATH;
    98			guc_fw->major_ver_wanted = ICL_GUC_FW_MAJOR;
    99			guc_fw->minor_ver_wanted = ICL_GUC_FW_MINOR;
   100		} else if (IS_GEMINILAKE(i915)) {
   101			guc_fw->path = GLK_GUC_FIRMWARE_PATH;
   102			guc_fw->major_ver_wanted = GLK_GUC_FW_MAJOR;
   103			guc_fw->minor_ver_wanted = GLK_GUC_FW_MINOR;
 > 104		} else if (IS_COMETLAKE(i915)) {
   105			if (REVID(dev_priv) == 5) {
   106				guc_fw->path = CML_GUC_FIRMWARE_PATH;
   107				guc_fw->major_ver_wanted = CML_GUC_FW_MAJOR;
   108				guc_fw->minor_ver_wanted = CML_GUC_FW_MINOR;
   109			} else {
   110				guc_fw->path = KBL_GUC_FIRMWARE_PATH;
   111				guc_fw->major_ver_wanted = KBL_GUC_FW_MAJOR;
   112				guc_fw->minor_ver_wanted = KBL_GUC_FW_MINOR;
   113			}
   114		} else if (IS_KABYLAKE(i915) || IS_COFFEELAKE(i915)) {
   115			guc_fw->path = KBL_GUC_FIRMWARE_PATH;
   116			guc_fw->major_ver_wanted = KBL_GUC_FW_MAJOR;
   117			guc_fw->minor_ver_wanted = KBL_GUC_FW_MINOR;
   118		} else if (IS_BROXTON(i915)) {
   119			guc_fw->path = BXT_GUC_FIRMWARE_PATH;
   120			guc_fw->major_ver_wanted = BXT_GUC_FW_MAJOR;
   121			guc_fw->minor_ver_wanted = BXT_GUC_FW_MINOR;
   122		} else if (IS_SKYLAKE(i915)) {
   123			guc_fw->path = SKL_GUC_FIRMWARE_PATH;
   124			guc_fw->major_ver_wanted = SKL_GUC_FW_MAJOR;
   125			guc_fw->minor_ver_wanted = SKL_GUC_FW_MINOR;
   126		}
   127	}
   128	

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

--d6Gm4EdcadzBjdND
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--d6Gm4EdcadzBjdND
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--d6Gm4EdcadzBjdND--
