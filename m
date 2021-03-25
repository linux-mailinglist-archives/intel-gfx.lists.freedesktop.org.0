Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD154349CA6
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Mar 2021 00:02:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A77346EE52;
	Thu, 25 Mar 2021 23:02:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A87B6EE52
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 23:02:54 +0000 (UTC)
IronPort-SDR: xlyHAclj61P+bexOHiqcNFwabVD791sm5zLfJIWuiyExTUtC2J61Kp6TmPTNfl1XDCZVD04/8+
 +/QVv55IukcQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="252392983"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; 
 d="gz'50?scan'50,208,50";a="252392983"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 16:02:53 -0700
IronPort-SDR: GusFLBfBdAqZgA4wKEF8HP0SdQGxYGa7Ggco4IgaViDRq4t1YyUbedMXMzy5CgeNbpNl2B2VYG
 6WmNMNMr2kVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; 
 d="gz'50?scan'50,208,50";a="375259391"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 25 Mar 2021 16:02:49 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lPZ04-0002JZ-VY; Thu, 25 Mar 2021 23:02:48 +0000
Date: Fri, 26 Mar 2021 07:02:31 +0800
From: kernel test robot <lkp@intel.com>
To: Dale B Stimson <dale.b.stimson@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <202103260613.7kxmIYcN-lkp@intel.com>
References: <20210325195230.97238-1-dale.b.stimson@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="rwEMma7ioTxnRzrJ"
Content-Disposition: inline
In-Reply-To: <20210325195230.97238-1-dale.b.stimson@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg1: Add HWMON power sensor support
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


--rwEMma7ioTxnRzrJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Dale,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on drm-intel/for-linux-next]
[also build test WARNING on drm-tip/drm-tip next-20210325]
[cannot apply to v5.12-rc4]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Dale-B-Stimson/drm-i915-dg1-Add-HWMON-power-sensor-support/20210326-035458
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
config: x86_64-randconfig-s022-20210325 (attached as .config)
compiler: gcc-9 (Debian 9.3.0-22) 9.3.0
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.3-277-gc089cd2d-dirty
        # https://github.com/0day-ci/linux/commit/a4d0cd77d477a9f1389f4af775878deea0749632
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Dale-B-Stimson/drm-i915-dg1-Add-HWMON-power-sensor-support/20210326-035458
        git checkout a4d0cd77d477a9f1389f4af775878deea0749632
        # save the attached .config to linux build tree
        make W=1 C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__' ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)
>> drivers/gpu/drm/i915/i915_hwmon.c:720:48: sparse: sparse: incorrect type in argument 1 (different base types) @@     expected restricted __le32 [usertype] v @@     got unsigned int [assigned] [usertype] val_sku_unit @@
   drivers/gpu/drm/i915/i915_hwmon.c:720:48: sparse:     expected restricted __le32 [usertype] v
   drivers/gpu/drm/i915/i915_hwmon.c:720:48: sparse:     got unsigned int [assigned] [usertype] val_sku_unit
   drivers/gpu/drm/i915/i915_hwmon.c:721:49: sparse: sparse: incorrect type in argument 1 (different base types) @@     expected restricted __le32 [usertype] v @@     got unsigned int [assigned] [usertype] val_sku_unit @@
   drivers/gpu/drm/i915/i915_hwmon.c:721:49: sparse:     expected restricted __le32 [usertype] v
   drivers/gpu/drm/i915/i915_hwmon.c:721:49: sparse:     got unsigned int [assigned] [usertype] val_sku_unit
   drivers/gpu/drm/i915/i915_hwmon.c:722:47: sparse: sparse: incorrect type in argument 1 (different base types) @@     expected restricted __le32 [usertype] v @@     got unsigned int [assigned] [usertype] val_sku_unit @@
   drivers/gpu/drm/i915/i915_hwmon.c:722:47: sparse:     expected restricted __le32 [usertype] v
   drivers/gpu/drm/i915/i915_hwmon.c:722:47: sparse:     got unsigned int [assigned] [usertype] val_sku_unit
>> drivers/gpu/drm/i915/i915_hwmon.c:63:35: sparse: sparse: incorrect type in argument 1 (different base types) @@     expected restricted __le32 [usertype] v @@     got unsigned int [assigned] [usertype] reg_value @@
   drivers/gpu/drm/i915/i915_hwmon.c:63:35: sparse:     expected restricted __le32 [usertype] v
   drivers/gpu/drm/i915/i915_hwmon.c:63:35: sparse:     got unsigned int [assigned] [usertype] reg_value
>> drivers/gpu/drm/i915/i915_hwmon.c:114:21: sparse: sparse: incorrect type in assignment (different base types) @@     expected unsigned int [usertype] bits_to_set @@     got restricted __le32 @@
   drivers/gpu/drm/i915/i915_hwmon.c:114:21: sparse:     expected unsigned int [usertype] bits_to_set
   drivers/gpu/drm/i915/i915_hwmon.c:114:21: sparse:     got restricted __le32
>> drivers/gpu/drm/i915/i915_hwmon.c:87:35: sparse: sparse: incorrect type in argument 1 (different base types) @@     expected restricted __le64 [usertype] v @@     got unsigned long long [assigned] [usertype] reg_value @@
   drivers/gpu/drm/i915/i915_hwmon.c:87:35: sparse:     expected restricted __le64 [usertype] v
   drivers/gpu/drm/i915/i915_hwmon.c:87:35: sparse:     got unsigned long long [assigned] [usertype] reg_value
>> drivers/gpu/drm/i915/i915_hwmon.c:87:35: sparse: sparse: incorrect type in argument 1 (different base types) @@     expected restricted __le64 [usertype] v @@     got unsigned long long [assigned] [usertype] reg_value @@
   drivers/gpu/drm/i915/i915_hwmon.c:87:35: sparse:     expected restricted __le64 [usertype] v
   drivers/gpu/drm/i915/i915_hwmon.c:87:35: sparse:     got unsigned long long [assigned] [usertype] reg_value
>> drivers/gpu/drm/i915/i915_hwmon.c:63:35: sparse: sparse: incorrect type in argument 1 (different base types) @@     expected restricted __le32 [usertype] v @@     got unsigned int [assigned] [usertype] reg_value @@
   drivers/gpu/drm/i915/i915_hwmon.c:63:35: sparse:     expected restricted __le32 [usertype] v
   drivers/gpu/drm/i915/i915_hwmon.c:63:35: sparse:     got unsigned int [assigned] [usertype] reg_value
>> drivers/gpu/drm/i915/i915_hwmon.c:63:35: sparse: sparse: incorrect type in argument 1 (different base types) @@     expected restricted __le32 [usertype] v @@     got unsigned int [assigned] [usertype] reg_value @@
   drivers/gpu/drm/i915/i915_hwmon.c:63:35: sparse:     expected restricted __le32 [usertype] v
   drivers/gpu/drm/i915/i915_hwmon.c:63:35: sparse:     got unsigned int [assigned] [usertype] reg_value
>> drivers/gpu/drm/i915/i915_hwmon.c:114:21: sparse: sparse: incorrect type in assignment (different base types) @@     expected unsigned int [usertype] bits_to_set @@     got restricted __le32 @@
   drivers/gpu/drm/i915/i915_hwmon.c:114:21: sparse:     expected unsigned int [usertype] bits_to_set
   drivers/gpu/drm/i915/i915_hwmon.c:114:21: sparse:     got restricted __le32
>> drivers/gpu/drm/i915/i915_hwmon.c:114:21: sparse: sparse: incorrect type in assignment (different base types) @@     expected unsigned int [usertype] bits_to_set @@     got restricted __le32 @@
   drivers/gpu/drm/i915/i915_hwmon.c:114:21: sparse:     expected unsigned int [usertype] bits_to_set
   drivers/gpu/drm/i915/i915_hwmon.c:114:21: sparse:     got restricted __le32
>> drivers/gpu/drm/i915/i915_hwmon.c:63:35: sparse: sparse: incorrect type in argument 1 (different base types) @@     expected restricted __le32 [usertype] v @@     got unsigned int [assigned] [usertype] reg_value @@
   drivers/gpu/drm/i915/i915_hwmon.c:63:35: sparse:     expected restricted __le32 [usertype] v
   drivers/gpu/drm/i915/i915_hwmon.c:63:35: sparse:     got unsigned int [assigned] [usertype] reg_value
>> drivers/gpu/drm/i915/i915_hwmon.c:114:21: sparse: sparse: incorrect type in assignment (different base types) @@     expected unsigned int [usertype] bits_to_set @@     got restricted __le32 @@
   drivers/gpu/drm/i915/i915_hwmon.c:114:21: sparse:     expected unsigned int [usertype] bits_to_set
   drivers/gpu/drm/i915/i915_hwmon.c:114:21: sparse:     got restricted __le32

vim +720 drivers/gpu/drm/i915/i915_hwmon.c

   664	
   665	static void
   666	i915_hwmon_get_preregistration_info(struct drm_i915_private *i915)
   667	{
   668		struct i915_hwmon *hwmon = &i915->hwmon;
   669		struct intel_uncore *uncore = &i915->uncore;
   670		intel_wakeref_t wakeref;
   671		u32 val_sku_unit;
   672	
   673		if (IS_DG1(i915)) {
   674			hwmon->rg.pkg_power_sku_unit = PCU_PACKAGE_POWER_SKU_UNIT;
   675			hwmon->rg.pkg_power_sku = PCU_PACKAGE_POWER_SKU;
   676			hwmon->rg.pkg_energy_status = PCU_PACKAGE_ENERGY_STATUS;
   677			hwmon->rg.pkg_rapl_limit = PCU_PACKAGE_RAPL_LIMIT;
   678			hwmon->rg.pkg_rapl_limit_udw = PCU_PACKAGE_RAPL_LIMIT_UDW;
   679			hwmon->rg.plt_energy_status = PCU_PLATFORM_ENERGY_STATUS;
   680		} else {
   681			hwmon->rg.pkg_power_sku_unit = INVALID_MMIO_REG;
   682			hwmon->rg.pkg_power_sku = INVALID_MMIO_REG;
   683			hwmon->rg.pkg_energy_status = INVALID_MMIO_REG;
   684			hwmon->rg.pkg_rapl_limit = INVALID_MMIO_REG;
   685			hwmon->rg.pkg_rapl_limit_udw = INVALID_MMIO_REG;
   686			hwmon->rg.plt_energy_status = INVALID_MMIO_REG;
   687		}
   688	
   689		/*
   690		 * If a platform does not support *_PLATFORM_ENERGY_STATUS,
   691		 * try *PACKAGE_ENERGY_STATUS.
   692		 */
   693		if (i915_mmio_reg_valid(hwmon->rg.plt_energy_status))
   694			hwmon->rg.reg_energy_status = hwmon->rg.plt_energy_status;
   695		else
   696			hwmon->rg.reg_energy_status = hwmon->rg.pkg_energy_status;
   697	
   698		wakeref = intel_runtime_pm_get(uncore->rpm);
   699	
   700		/*
   701		 * The contents of register hwmon->rg.pkg_power_sku_unit do not change,
   702		 * so read it once and store the shift values.
   703		 */
   704		if (i915_mmio_reg_valid(hwmon->rg.pkg_power_sku_unit))
   705			val_sku_unit = intel_uncore_read(uncore,
   706							 hwmon->rg.pkg_power_sku_unit);
   707		else
   708			val_sku_unit = 0;
   709	
   710		hwmon->energy_counter_overflow = 0;
   711	
   712		if (i915_mmio_reg_valid(hwmon->rg.reg_energy_status))
   713			hwmon->energy_counter_prev =
   714				intel_uncore_read(uncore, hwmon->rg.reg_energy_status);
   715		else
   716			hwmon->energy_counter_prev = 0;
   717	
   718		intel_runtime_pm_put(uncore->rpm, wakeref);
   719	
 > 720		hwmon->scl_shift_power = le32_get_bits(val_sku_unit, PKG_PWR_UNIT);
   721		hwmon->scl_shift_energy = le32_get_bits(val_sku_unit, PKG_ENERGY_UNIT);
   722		hwmon->scl_shift_time = le32_get_bits(val_sku_unit, PKG_TIME_UNIT);
   723	
   724		/*
   725		 * There is no direct way to obtain the power default_limit.
   726		 * The best known workaround is to use the initial value of power1_max.
   727		 *
   728		 * The value of power1_max is reset to the default on reboot, but is
   729		 * not reset by a module unload/load sequence.  To allow proper
   730		 * functioning after a module reload, the value for power1_max is
   731		 * restored to its original value at module unload time in
   732		 * i915_hwmon_fini().
   733		 */
   734		hwmon->power_max_initial_value =
   735			(u32)_field_read_and_scale(uncore,
   736						   hwmon->rg.pkg_rapl_limit,
   737						   PKG_PWR_LIM_1,
   738						   hwmon->scl_shift_power, SF_POWER);
   739	}
   740	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--rwEMma7ioTxnRzrJ
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
J3zQ+ZAoKwT79PwXIKjICrQUAgA=

--rwEMma7ioTxnRzrJ
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--rwEMma7ioTxnRzrJ--
