Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E10DADD4E
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 18:33:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B77089E33;
	Mon,  9 Sep 2019 16:33:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CB5889E33
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 16:33:11 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 09:33:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,486,1559545200"; 
 d="gz'50?scan'50,208,50";a="335644993"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 09 Sep 2019 09:33:08 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1i7MbD-0003za-KI; Tue, 10 Sep 2019 00:33:07 +0800
Date: Tue, 10 Sep 2019 00:32:23 +0800
From: kbuild test robot <lkp@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <201909100040.9SCynHto%lkp@intel.com>
References: <20190909110011.8958-5-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="q4xxaq5zo2bxopsw"
Content-Disposition: inline
In-Reply-To: <20190909110011.8958-5-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915: Force compilation with
 intel-iommu for CI validation
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


--q4xxaq5zo2bxopsw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Chris,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on drm-intel/for-linux-next]
[cannot apply to v5.3-rc8 next-20190904]
[if your patch is applied to the wrong git tree, please drop us a note to help improve the system]

url:    https://github.com/0day-ci/linux/commits/Chris-Wilson/drm-i915-selftests-Take-runtime-wakeref-for-igt_ggtt_lowlevel/20190909-201355
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
config: x86_64-randconfig-s2-201936 (attached as .config)
compiler: gcc-7 (Debian 7.4.0-11) 7.4.0
reproduce:
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

   drivers/iommu/intel-iommu.c: In function 'domain_update_iommu_coherency':
>> drivers/iommu/intel-iommu.c:622:2: error: implicit declaration of function 'for_each_active_iommu'; did you mean 'for_each_active_irq'? [-Werror=implicit-function-declaration]
     for_each_active_iommu(iommu, drhd) {
     ^~~~~~~~~~~~~~~~~~~~~
     for_each_active_irq
>> drivers/iommu/intel-iommu.c:622:37: error: expected ';' before '{' token
     for_each_active_iommu(iommu, drhd) {
                                        ^
   drivers/iommu/intel-iommu.c: In function 'domain_update_iommu_snooping':
   drivers/iommu/intel-iommu.c:638:37: error: expected ';' before '{' token
     for_each_active_iommu(iommu, drhd) {
                                        ^
   drivers/iommu/intel-iommu.c: In function 'domain_update_iommu_superpage':
   drivers/iommu/intel-iommu.c:663:37: error: expected ';' before '{' token
     for_each_active_iommu(iommu, drhd) {
                                        ^
   drivers/iommu/intel-iommu.c: In function 'device_to_iommu':
   drivers/iommu/intel-iommu.c:781:37: error: expected ';' before '{' token
     for_each_active_iommu(iommu, drhd) {
                                        ^
   drivers/iommu/intel-iommu.c:812:2: warning: label 'out' defined but not used [-Wunused-label]
     out:
     ^~~
   drivers/iommu/intel-iommu.c:756:6: warning: unused variable 'i' [-Wunused-variable]
     int i;
         ^
   drivers/iommu/intel-iommu.c:753:17: warning: unused variable 'tmp' [-Wunused-variable]
     struct device *tmp;
                    ^~~
   drivers/iommu/intel-iommu.c: In function 'si_domain_init':
>> drivers/iommu/intel-iommu.c:2731:3: error: implicit declaration of function 'for_each_active_dev_scope'; did you mean 'for_each_active_irq'? [-Werror=implicit-function-declaration]
      for_each_active_dev_scope(rmrr->devices, rmrr->devices_cnt,
      ^~~~~~~~~~~~~~~~~~~~~~~~~
      for_each_active_irq
   drivers/iommu/intel-iommu.c:2732:16: error: expected ';' before '{' token
           i, dev) {
                   ^
   drivers/iommu/intel-iommu.c: In function 'device_has_rmrr':
>> drivers/iommu/intel-iommu.c:2794:4: error: expected ';' before 'if'
       if (tmp == dev ||
       ^~
   drivers/iommu/intel-iommu.c: In function 'init_dmars':
>> drivers/iommu/intel-iommu.c:3157:2: error: implicit declaration of function 'for_each_drhd_unit'; did you mean 'for_each_rmrr_units'? [-Werror=implicit-function-declaration]
     for_each_drhd_unit(drhd) {
     ^~~~~~~~~~~~~~~~~~
     for_each_rmrr_units
   drivers/iommu/intel-iommu.c:3157:27: error: expected ';' before '{' token
     for_each_drhd_unit(drhd) {
                              ^
   drivers/iommu/intel-iommu.c:3182:2: error: implicit declaration of function 'for_each_iommu'; did you mean 'for_each_cpu'? [-Werror=implicit-function-declaration]
     for_each_iommu(iommu, drhd) {
     ^~~~~~~~~~~~~~
     for_each_cpu
   drivers/iommu/intel-iommu.c:3182:30: error: expected ';' before '{' token
     for_each_iommu(iommu, drhd) {
                                 ^
   drivers/iommu/intel-iommu.c:3293:30: error: expected ';' before '{' token
     for_each_iommu(iommu, drhd) {
                                 ^
   drivers/iommu/intel-iommu.c:3327:37: error: expected ';' before '{' token
     for_each_active_iommu(iommu, drhd) {
                                        ^
   drivers/iommu/intel-iommu.c: In function 'get_private_domain_for_dev':
   drivers/iommu/intel-iommu.c:3391:18: error: expected ';' before '{' token
           i, i_dev) {
                     ^
   drivers/iommu/intel-iommu.c:3376:9: warning: unused variable 'ret' [-Wunused-variable]
     int i, ret;
            ^~~
   In file included from arch/x86/include/asm/bug.h:83:0,
                    from include/linux/bug.h:5,
                    from include/linux/jump_label.h:250,
                    from arch/x86/include/asm/string_64.h:6,
                    from arch/x86/include/asm/string.h:5,
                    from include/linux/string.h:20,
                    from include/linux/bitmap.h:9,
                    from drivers/iommu/intel-iommu.c:17:
   drivers/iommu/intel-iommu.c: In function 'quirk_ioat_snb_local_iommu':
>> drivers/iommu/intel-iommu.c:3827:35: error: dereferencing pointer to incomplete type 'struct dmar_drhd_unit'
     if (WARN_TAINT_ONCE(!drhd || drhd->reg_base_addr - vtbar != 0xa000,
                                      ^
   include/asm-generic/bug.h:173:27: note: in definition of macro 'WARN_TAINT_ONCE'
     int __ret_warn_once = !!(condition);   \
                              ^~~~~~~~~
   drivers/iommu/intel-iommu.c: In function 'init_no_remapping_devices':
   drivers/iommu/intel-iommu.c:3840:27: error: expected ';' before '{' token
     for_each_drhd_unit(drhd) {
                              ^
   drivers/iommu/intel-iommu.c:3838:6: warning: unused variable 'i' [-Wunused-variable]
     int i;
         ^
   drivers/iommu/intel-iommu.c:3837:17: warning: unused variable 'dev' [-Wunused-variable]
     struct device *dev;
                    ^~~
   drivers/iommu/intel-iommu.c: In function 'dmar_parse_one_rmrr':
>> drivers/iommu/intel-iommu.c:4023:19: error: implicit declaration of function 'dmar_alloc_dev_scope'; did you mean 'dmar_alloc_hwirq'? [-Werror=implicit-function-declaration]
     rmrru->devices = dmar_alloc_dev_scope((void *)(rmrr + 1),
                      ^~~~~~~~~~~~~~~~~~~~
                      dmar_alloc_hwirq
>> drivers/iommu/intel-iommu.c:4023:17: warning: assignment makes pointer from integer without a cast [-Wint-conversion]
     rmrru->devices = dmar_alloc_dev_scope((void *)(rmrr + 1),
                    ^
   drivers/iommu/intel-iommu.c: In function 'dmar_parse_one_atsr':
   drivers/iommu/intel-iommu.c:4082:18: warning: assignment makes pointer from integer without a cast [-Wint-conversion]
      atsru->devices = dmar_alloc_dev_scope((void *)(atsr + 1),
                     ^
   drivers/iommu/intel-iommu.c: In function 'intel_iommu_free_atsr':
>> drivers/iommu/intel-iommu.c:4098:2: error: implicit declaration of function 'dmar_free_dev_scope'; did you mean 'dmi_memdev_size'? [-Werror=implicit-function-declaration]
     dmar_free_dev_scope(&atsru->devices, &atsru->devices_cnt);
     ^~~~~~~~~~~~~~~~~~~
     dmi_memdev_size
   drivers/iommu/intel-iommu.c: In function 'dmar_check_one_atsr':
>> drivers/iommu/intel-iommu.c:4133:4: error: expected ';' before 'return'
       return -EBUSY;
       ^~~~~~
   drivers/iommu/intel-iommu.c: In function 'dmar_find_matched_atsr_unit':
>> drivers/iommu/intel-iommu.c:4288:3: error: implicit declaration of function 'for_each_dev_scope'; did you mean 'for_each_node_state'? [-Werror=implicit-function-declaration]
      for_each_dev_scope(atsru->devices, atsru->devices_cnt, i, tmp)
      ^~~~~~~~~~~~~~~~~~
      for_each_node_state
   drivers/iommu/intel-iommu.c:4289:4: error: expected ';' before 'if'
       if (tmp == &bridge->dev)
       ^~
   drivers/iommu/intel-iommu.c: At top level:
>> drivers/iommu/intel-iommu.c:4302:40: warning: 'struct dmar_pci_notify_info' declared inside parameter list will not be visible outside of this definition or declaration
    int dmar_iommu_notify_scope_dev(struct dmar_pci_notify_info *info)
                                           ^~~~~~~~~~~~~~~~~~~~
   drivers/iommu/intel-iommu.c: In function 'dmar_iommu_notify_scope_dev':
>> drivers/iommu/intel-iommu.c:4316:11: error: dereferencing pointer to incomplete type 'struct dmar_pci_notify_info'
      if (info->event == BUS_NOTIFY_ADD_DEVICE) {
              ^~
>> drivers/iommu/intel-iommu.c:4317:10: error: implicit declaration of function 'dmar_insert_dev_scope'; did you mean 'dmar_insert_one_dev_info'? [-Werror=implicit-function-declaration]
       ret = dmar_insert_dev_scope(info, (void *)(rmrr + 1),
             ^~~~~~~~~~~~~~~~~~~~~
             dmar_insert_one_dev_info
>> drivers/iommu/intel-iommu.c:4324:4: error: implicit declaration of function 'dmar_remove_dev_scope'; did you mean 'domain_remove_dev_info'? [-Werror=implicit-function-declaration]
       dmar_remove_dev_scope(info, rmrr->segment,
       ^~~~~~~~~~~~~~~~~~~~~
       domain_remove_dev_info
   drivers/iommu/intel-iommu.c: In function 'intel_iommu_memory_notifier':
>> drivers/iommu/intel-iommu.c:4401:5: error: expected ';' before 'iommu_flush_iotlb_psi'
        iommu_flush_iotlb_psi(iommu, si_domain,
        ^~~~~~~~~~~~~~~~~~~~~
   drivers/iommu/intel-iommu.c: In function 'intel_disable_iommus':
>> drivers/iommu/intel-iommu.c:4455:3: error: expected ';' before 'iommu_disable_translation'
      iommu_disable_translation(iommu);
      ^~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/iommu/intel-iommu.c: In function 'probe_acpi_namespace_devices':
   drivers/iommu/intel-iommu.c:4587:37: error: expected ';' before '{' token
     for_each_active_iommu(iommu, drhd) {
                                        ^
   drivers/iommu/intel-iommu.c:4585:9: warning: unused variable 'ret' [-Wunused-variable]
     int i, ret = 0;
            ^~~
   drivers/iommu/intel-iommu.c:4585:6: warning: unused variable 'i' [-Wunused-variable]
     int i, ret = 0;
         ^
   drivers/iommu/intel-iommu.c:4584:17: warning: unused variable 'dev' [-Wunused-variable]
     struct device *dev;
                    ^~~
>> drivers/iommu/intel-iommu.c:4620:1: warning: no return statement in function returning non-void [-Wreturn-type]
    }
    ^
   drivers/iommu/intel-iommu.c: In function 'intel_iommu_init':
>> drivers/iommu/intel-iommu.c:4640:14: error: 'dmar_global_lock' undeclared (first use in this function); did you mean 'qi_global_iec'?
     down_write(&dmar_global_lock);
                 ^~~~~~~~~~~~~~~~
                 qi_global_iec
   drivers/iommu/intel-iommu.c:4640:14: note: each undeclared identifier is reported only once for each function it appears in
>> drivers/iommu/intel-iommu.c:4641:6: error: implicit declaration of function 'dmar_table_init'; did you mean 'acpi_table_init'? [-Werror=implicit-function-declaration]
     if (dmar_table_init()) {
         ^~~~~~~~~~~~~~~
         acpi_table_init

vim +622 drivers/iommu/intel-iommu.c

8c11e798eee2ce drivers/pci/intel-iommu.c   Weidong Han     2008-12-08  600  
8e604097ddc483 drivers/pci/intel-iommu.c   Weidong Han     2008-12-08  601  static void domain_update_iommu_coherency(struct dmar_domain *domain)
8e604097ddc483 drivers/pci/intel-iommu.c   Weidong Han     2008-12-08  602  {
d0501960874624 drivers/iommu/intel-iommu.c David Woodhouse 2014-03-11  603  	struct dmar_drhd_unit *drhd;
d0501960874624 drivers/iommu/intel-iommu.c David Woodhouse 2014-03-11  604  	struct intel_iommu *iommu;
2f119c7895af56 drivers/iommu/intel-iommu.c Quentin Lambert 2015-02-06  605  	bool found = false;
2f119c7895af56 drivers/iommu/intel-iommu.c Quentin Lambert 2015-02-06  606  	int i;
2e12bc29fc5a12 drivers/iommu/intel-iommu.c Alex Williamson 2011-11-11  607  
d0501960874624 drivers/iommu/intel-iommu.c David Woodhouse 2014-03-11  608  	domain->iommu_coherency = 1;
8e604097ddc483 drivers/pci/intel-iommu.c   Weidong Han     2008-12-08  609  
29a27719abaa4d drivers/iommu/intel-iommu.c Joerg Roedel    2015-07-21  610  	for_each_domain_iommu(i, domain) {
2f119c7895af56 drivers/iommu/intel-iommu.c Quentin Lambert 2015-02-06  611  		found = true;
8e604097ddc483 drivers/pci/intel-iommu.c   Weidong Han     2008-12-08  612  		if (!ecap_coherent(g_iommus[i]->ecap)) {
8e604097ddc483 drivers/pci/intel-iommu.c   Weidong Han     2008-12-08  613  			domain->iommu_coherency = 0;
8e604097ddc483 drivers/pci/intel-iommu.c   Weidong Han     2008-12-08  614  			break;
8e604097ddc483 drivers/pci/intel-iommu.c   Weidong Han     2008-12-08  615  		}
8e604097ddc483 drivers/pci/intel-iommu.c   Weidong Han     2008-12-08  616  	}
d0501960874624 drivers/iommu/intel-iommu.c David Woodhouse 2014-03-11  617  	if (found)
d0501960874624 drivers/iommu/intel-iommu.c David Woodhouse 2014-03-11  618  		return;
d0501960874624 drivers/iommu/intel-iommu.c David Woodhouse 2014-03-11  619  
d0501960874624 drivers/iommu/intel-iommu.c David Woodhouse 2014-03-11  620  	/* No hardware attached; use lowest common denominator */
d0501960874624 drivers/iommu/intel-iommu.c David Woodhouse 2014-03-11  621  	rcu_read_lock();
d0501960874624 drivers/iommu/intel-iommu.c David Woodhouse 2014-03-11 @622  	for_each_active_iommu(iommu, drhd) {
d0501960874624 drivers/iommu/intel-iommu.c David Woodhouse 2014-03-11  623  		if (!ecap_coherent(iommu->ecap)) {
d0501960874624 drivers/iommu/intel-iommu.c David Woodhouse 2014-03-11  624  			domain->iommu_coherency = 0;
d0501960874624 drivers/iommu/intel-iommu.c David Woodhouse 2014-03-11  625  			break;
d0501960874624 drivers/iommu/intel-iommu.c David Woodhouse 2014-03-11  626  		}
d0501960874624 drivers/iommu/intel-iommu.c David Woodhouse 2014-03-11  627  	}
d0501960874624 drivers/iommu/intel-iommu.c David Woodhouse 2014-03-11  628  	rcu_read_unlock();
8e604097ddc483 drivers/pci/intel-iommu.c   Weidong Han     2008-12-08  629  }
8e604097ddc483 drivers/pci/intel-iommu.c   Weidong Han     2008-12-08  630  
161f693460772e drivers/iommu/intel-iommu.c Jiang Liu       2014-07-11  631  static int domain_update_iommu_snooping(struct intel_iommu *skip)
58c610bd1a3f50 drivers/pci/intel-iommu.c   Sheng Yang      2009-03-18  632  {
161f693460772e drivers/iommu/intel-iommu.c Jiang Liu       2014-07-11  633  	struct dmar_drhd_unit *drhd;
161f693460772e drivers/iommu/intel-iommu.c Jiang Liu       2014-07-11  634  	struct intel_iommu *iommu;
161f693460772e drivers/iommu/intel-iommu.c Jiang Liu       2014-07-11  635  	int ret = 1;
58c610bd1a3f50 drivers/pci/intel-iommu.c   Sheng Yang      2009-03-18  636  
161f693460772e drivers/iommu/intel-iommu.c Jiang Liu       2014-07-11  637  	rcu_read_lock();
161f693460772e drivers/iommu/intel-iommu.c Jiang Liu       2014-07-11  638  	for_each_active_iommu(iommu, drhd) {
161f693460772e drivers/iommu/intel-iommu.c Jiang Liu       2014-07-11  639  		if (iommu != skip) {
161f693460772e drivers/iommu/intel-iommu.c Jiang Liu       2014-07-11  640  			if (!ecap_sc_support(iommu->ecap)) {
161f693460772e drivers/iommu/intel-iommu.c Jiang Liu       2014-07-11  641  				ret = 0;
58c610bd1a3f50 drivers/pci/intel-iommu.c   Sheng Yang      2009-03-18  642  				break;
58c610bd1a3f50 drivers/pci/intel-iommu.c   Sheng Yang      2009-03-18  643  			}
58c610bd1a3f50 drivers/pci/intel-iommu.c   Sheng Yang      2009-03-18  644  		}
58c610bd1a3f50 drivers/pci/intel-iommu.c   Sheng Yang      2009-03-18  645  	}
161f693460772e drivers/iommu/intel-iommu.c Jiang Liu       2014-07-11  646  	rcu_read_unlock();
161f693460772e drivers/iommu/intel-iommu.c Jiang Liu       2014-07-11  647  
161f693460772e drivers/iommu/intel-iommu.c Jiang Liu       2014-07-11  648  	return ret;
161f693460772e drivers/iommu/intel-iommu.c Jiang Liu       2014-07-11  649  }
58c610bd1a3f50 drivers/pci/intel-iommu.c   Sheng Yang      2009-03-18  650  
161f693460772e drivers/iommu/intel-iommu.c Jiang Liu       2014-07-11  651  static int domain_update_iommu_superpage(struct intel_iommu *skip)
6dd9a7c73761a8 drivers/pci/intel-iommu.c   Youquan Song    2011-05-25  652  {
8140a95d228efb drivers/iommu/intel-iommu.c Allen Kay       2011-10-14  653  	struct dmar_drhd_unit *drhd;
161f693460772e drivers/iommu/intel-iommu.c Jiang Liu       2014-07-11  654  	struct intel_iommu *iommu;
8140a95d228efb drivers/iommu/intel-iommu.c Allen Kay       2011-10-14  655  	int mask = 0xf;
6dd9a7c73761a8 drivers/pci/intel-iommu.c   Youquan Song    2011-05-25  656  
6dd9a7c73761a8 drivers/pci/intel-iommu.c   Youquan Song    2011-05-25  657  	if (!intel_iommu_superpage) {
161f693460772e drivers/iommu/intel-iommu.c Jiang Liu       2014-07-11  658  		return 0;
6dd9a7c73761a8 drivers/pci/intel-iommu.c   Youquan Song    2011-05-25  659  	}
6dd9a7c73761a8 drivers/pci/intel-iommu.c   Youquan Song    2011-05-25  660  
8140a95d228efb drivers/iommu/intel-iommu.c Allen Kay       2011-10-14  661  	/* set iommu_superpage to the smallest common denominator */
0e242612d9cdb4 drivers/iommu/intel-iommu.c Jiang Liu       2014-02-19  662  	rcu_read_lock();
8140a95d228efb drivers/iommu/intel-iommu.c Allen Kay       2011-10-14  663  	for_each_active_iommu(iommu, drhd) {
161f693460772e drivers/iommu/intel-iommu.c Jiang Liu       2014-07-11  664  		if (iommu != skip) {
8140a95d228efb drivers/iommu/intel-iommu.c Allen Kay       2011-10-14  665  			mask &= cap_super_page_val(iommu->cap);
161f693460772e drivers/iommu/intel-iommu.c Jiang Liu       2014-07-11  666  			if (!mask)
6dd9a7c73761a8 drivers/pci/intel-iommu.c   Youquan Song    2011-05-25  667  				break;
6dd9a7c73761a8 drivers/pci/intel-iommu.c   Youquan Song    2011-05-25  668  		}
6dd9a7c73761a8 drivers/pci/intel-iommu.c   Youquan Song    2011-05-25  669  	}
0e242612d9cdb4 drivers/iommu/intel-iommu.c Jiang Liu       2014-02-19  670  	rcu_read_unlock();
0e242612d9cdb4 drivers/iommu/intel-iommu.c Jiang Liu       2014-02-19  671  
161f693460772e drivers/iommu/intel-iommu.c Jiang Liu       2014-07-11  672  	return fls(mask);
6dd9a7c73761a8 drivers/pci/intel-iommu.c   Youquan Song    2011-05-25  673  }
6dd9a7c73761a8 drivers/pci/intel-iommu.c   Youquan Song    2011-05-25  674  
58c610bd1a3f50 drivers/pci/intel-iommu.c   Sheng Yang      2009-03-18  675  /* Some capabilities may be different across iommus */
58c610bd1a3f50 drivers/pci/intel-iommu.c   Sheng Yang      2009-03-18  676  static void domain_update_iommu_cap(struct dmar_domain *domain)
58c610bd1a3f50 drivers/pci/intel-iommu.c   Sheng Yang      2009-03-18  677  {
58c610bd1a3f50 drivers/pci/intel-iommu.c   Sheng Yang      2009-03-18  678  	domain_update_iommu_coherency(domain);
161f693460772e drivers/iommu/intel-iommu.c Jiang Liu       2014-07-11  679  	domain->iommu_snooping = domain_update_iommu_snooping(NULL);
161f693460772e drivers/iommu/intel-iommu.c Jiang Liu       2014-07-11  680  	domain->iommu_superpage = domain_update_iommu_superpage(NULL);
58c610bd1a3f50 drivers/pci/intel-iommu.c   Sheng Yang      2009-03-18  681  }
58c610bd1a3f50 drivers/pci/intel-iommu.c   Sheng Yang      2009-03-18  682  
26b86092c46503 drivers/iommu/intel-iommu.c Sohil Mehta     2018-09-11  683  struct context_entry *iommu_context_addr(struct intel_iommu *iommu, u8 bus,
26b86092c46503 drivers/iommu/intel-iommu.c Sohil Mehta     2018-09-11  684  					 u8 devfn, int alloc)
03ecc32c527496 drivers/iommu/intel-iommu.c David Woodhouse 2015-02-13  685  {
03ecc32c527496 drivers/iommu/intel-iommu.c David Woodhouse 2015-02-13  686  	struct root_entry *root = &iommu->root_entry[bus];
03ecc32c527496 drivers/iommu/intel-iommu.c David Woodhouse 2015-02-13  687  	struct context_entry *context;
03ecc32c527496 drivers/iommu/intel-iommu.c David Woodhouse 2015-02-13  688  	u64 *entry;
03ecc32c527496 drivers/iommu/intel-iommu.c David Woodhouse 2015-02-13  689  
4df4eab168c1c4 drivers/iommu/intel-iommu.c Joerg Roedel    2015-08-25  690  	entry = &root->lo;
765b6a98c1de3d drivers/iommu/intel-iommu.c Lu Baolu        2018-12-10  691  	if (sm_supported(iommu)) {
03ecc32c527496 drivers/iommu/intel-iommu.c David Woodhouse 2015-02-13  692  		if (devfn >= 0x80) {
03ecc32c527496 drivers/iommu/intel-iommu.c David Woodhouse 2015-02-13  693  			devfn -= 0x80;
03ecc32c527496 drivers/iommu/intel-iommu.c David Woodhouse 2015-02-13  694  			entry = &root->hi;
03ecc32c527496 drivers/iommu/intel-iommu.c David Woodhouse 2015-02-13  695  		}
03ecc32c527496 drivers/iommu/intel-iommu.c David Woodhouse 2015-02-13  696  		devfn *= 2;
03ecc32c527496 drivers/iommu/intel-iommu.c David Woodhouse 2015-02-13  697  	}
03ecc32c527496 drivers/iommu/intel-iommu.c David Woodhouse 2015-02-13  698  	if (*entry & 1)
03ecc32c527496 drivers/iommu/intel-iommu.c David Woodhouse 2015-02-13  699  		context = phys_to_virt(*entry & VTD_PAGE_MASK);
03ecc32c527496 drivers/iommu/intel-iommu.c David Woodhouse 2015-02-13  700  	else {
03ecc32c527496 drivers/iommu/intel-iommu.c David Woodhouse 2015-02-13  701  		unsigned long phy_addr;
03ecc32c527496 drivers/iommu/intel-iommu.c David Woodhouse 2015-02-13  702  		if (!alloc)
03ecc32c527496 drivers/iommu/intel-iommu.c David Woodhouse 2015-02-13  703  			return NULL;
03ecc32c527496 drivers/iommu/intel-iommu.c David Woodhouse 2015-02-13  704  
03ecc32c527496 drivers/iommu/intel-iommu.c David Woodhouse 2015-02-13  705  		context = alloc_pgtable_page(iommu->node);
03ecc32c527496 drivers/iommu/intel-iommu.c David Woodhouse 2015-02-13  706  		if (!context)
03ecc32c527496 drivers/iommu/intel-iommu.c David Woodhouse 2015-02-13  707  			return NULL;
03ecc32c527496 drivers/iommu/intel-iommu.c David Woodhouse 2015-02-13  708  
03ecc32c527496 drivers/iommu/intel-iommu.c David Woodhouse 2015-02-13  709  		__iommu_flush_cache(iommu, (void *)context, CONTEXT_SIZE);
03ecc32c527496 drivers/iommu/intel-iommu.c David Woodhouse 2015-02-13  710  		phy_addr = virt_to_phys((void *)context);
03ecc32c527496 drivers/iommu/intel-iommu.c David Woodhouse 2015-02-13  711  		*entry = phy_addr | 1;
03ecc32c527496 drivers/iommu/intel-iommu.c David Woodhouse 2015-02-13  712  		__iommu_flush_cache(iommu, entry, sizeof(*entry));
03ecc32c527496 drivers/iommu/intel-iommu.c David Woodhouse 2015-02-13  713  	}
03ecc32c527496 drivers/iommu/intel-iommu.c David Woodhouse 2015-02-13  714  	return &context[devfn];
03ecc32c527496 drivers/iommu/intel-iommu.c David Woodhouse 2015-02-13  715  }
03ecc32c527496 drivers/iommu/intel-iommu.c David Woodhouse 2015-02-13  716  
4ed6a540fab8ea drivers/iommu/intel-iommu.c David Woodhouse 2015-05-11  717  static int iommu_dummy(struct device *dev)
4ed6a540fab8ea drivers/iommu/intel-iommu.c David Woodhouse 2015-05-11  718  {
4ed6a540fab8ea drivers/iommu/intel-iommu.c David Woodhouse 2015-05-11  719  	return dev->archdata.iommu == DUMMY_DEVICE_DOMAIN_INFO;
4ed6a540fab8ea drivers/iommu/intel-iommu.c David Woodhouse 2015-05-11  720  }
4ed6a540fab8ea drivers/iommu/intel-iommu.c David Woodhouse 2015-05-11  721  
b9a7f9816483b1 drivers/iommu/intel-iommu.c Eric Auger      2019-06-03  722  /**
b9a7f9816483b1 drivers/iommu/intel-iommu.c Eric Auger      2019-06-03  723   * is_downstream_to_pci_bridge - test if a device belongs to the PCI
b9a7f9816483b1 drivers/iommu/intel-iommu.c Eric Auger      2019-06-03  724   *				 sub-hierarchy of a candidate PCI-PCI bridge
b9a7f9816483b1 drivers/iommu/intel-iommu.c Eric Auger      2019-06-03  725   * @dev: candidate PCI device belonging to @bridge PCI sub-hierarchy
b9a7f9816483b1 drivers/iommu/intel-iommu.c Eric Auger      2019-06-03  726   * @bridge: the candidate PCI-PCI bridge
b9a7f9816483b1 drivers/iommu/intel-iommu.c Eric Auger      2019-06-03  727   *
b9a7f9816483b1 drivers/iommu/intel-iommu.c Eric Auger      2019-06-03  728   * Return: true if @dev belongs to @bridge PCI sub-hierarchy, else false.
b9a7f9816483b1 drivers/iommu/intel-iommu.c Eric Auger      2019-06-03  729   */
b9a7f9816483b1 drivers/iommu/intel-iommu.c Eric Auger      2019-06-03  730  static bool
b9a7f9816483b1 drivers/iommu/intel-iommu.c Eric Auger      2019-06-03  731  is_downstream_to_pci_bridge(struct device *dev, struct device *bridge)
b9a7f9816483b1 drivers/iommu/intel-iommu.c Eric Auger      2019-06-03  732  {
b9a7f9816483b1 drivers/iommu/intel-iommu.c Eric Auger      2019-06-03  733  	struct pci_dev *pdev, *pbridge;
b9a7f9816483b1 drivers/iommu/intel-iommu.c Eric Auger      2019-06-03  734  
b9a7f9816483b1 drivers/iommu/intel-iommu.c Eric Auger      2019-06-03  735  	if (!dev_is_pci(dev) || !dev_is_pci(bridge))
b9a7f9816483b1 drivers/iommu/intel-iommu.c Eric Auger      2019-06-03  736  		return false;
b9a7f9816483b1 drivers/iommu/intel-iommu.c Eric Auger      2019-06-03  737  
b9a7f9816483b1 drivers/iommu/intel-iommu.c Eric Auger      2019-06-03  738  	pdev = to_pci_dev(dev);
b9a7f9816483b1 drivers/iommu/intel-iommu.c Eric Auger      2019-06-03  739  	pbridge = to_pci_dev(bridge);
b9a7f9816483b1 drivers/iommu/intel-iommu.c Eric Auger      2019-06-03  740  
b9a7f9816483b1 drivers/iommu/intel-iommu.c Eric Auger      2019-06-03  741  	if (pbridge->subordinate &&
b9a7f9816483b1 drivers/iommu/intel-iommu.c Eric Auger      2019-06-03  742  	    pbridge->subordinate->number <= pdev->bus->number &&
b9a7f9816483b1 drivers/iommu/intel-iommu.c Eric Auger      2019-06-03  743  	    pbridge->subordinate->busn_res.end >= pdev->bus->number)
b9a7f9816483b1 drivers/iommu/intel-iommu.c Eric Auger      2019-06-03  744  		return true;
b9a7f9816483b1 drivers/iommu/intel-iommu.c Eric Auger      2019-06-03  745  
b9a7f9816483b1 drivers/iommu/intel-iommu.c Eric Auger      2019-06-03  746  	return false;
b9a7f9816483b1 drivers/iommu/intel-iommu.c Eric Auger      2019-06-03  747  }
b9a7f9816483b1 drivers/iommu/intel-iommu.c Eric Auger      2019-06-03  748  
156baca8d31e1a drivers/iommu/intel-iommu.c David Woodhouse 2014-03-09  749  static struct intel_iommu *device_to_iommu(struct device *dev, u8 *bus, u8 *devfn)
c7151a8dfefd11 drivers/pci/intel-iommu.c   Weidong Han     2008-12-08  750  {
c7151a8dfefd11 drivers/pci/intel-iommu.c   Weidong Han     2008-12-08  751  	struct dmar_drhd_unit *drhd = NULL;
b683b230a244c3 drivers/iommu/intel-iommu.c Jiang Liu       2014-02-19  752  	struct intel_iommu *iommu;
156baca8d31e1a drivers/iommu/intel-iommu.c David Woodhouse 2014-03-09  753  	struct device *tmp;
b9a7f9816483b1 drivers/iommu/intel-iommu.c Eric Auger      2019-06-03  754  	struct pci_dev *pdev = NULL;
aa4d066a2a8041 drivers/iommu/intel-iommu.c Yijing Wang     2014-05-26  755  	u16 segment = 0;
c7151a8dfefd11 drivers/pci/intel-iommu.c   Weidong Han     2008-12-08 @756  	int i;
c7151a8dfefd11 drivers/pci/intel-iommu.c   Weidong Han     2008-12-08  757  
4ed6a540fab8ea drivers/iommu/intel-iommu.c David Woodhouse 2015-05-11  758  	if (iommu_dummy(dev))
4ed6a540fab8ea drivers/iommu/intel-iommu.c David Woodhouse 2015-05-11  759  		return NULL;
4ed6a540fab8ea drivers/iommu/intel-iommu.c David Woodhouse 2015-05-11  760  
156baca8d31e1a drivers/iommu/intel-iommu.c David Woodhouse 2014-03-09  761  	if (dev_is_pci(dev)) {
1c387188c60f53 drivers/iommu/intel-iommu.c Ashok Raj       2016-10-21  762  		struct pci_dev *pf_pdev;
1c387188c60f53 drivers/iommu/intel-iommu.c Ashok Raj       2016-10-21  763  
156baca8d31e1a drivers/iommu/intel-iommu.c David Woodhouse 2014-03-09  764  		pdev = to_pci_dev(dev);
5823e330b58c52 drivers/iommu/intel-iommu.c Jon Derrick     2017-08-30  765  

:::::: The code at line 622 was first introduced by commit
:::::: d05019608746240d86a406fbf8d8c1fc71a87101 iommu/vt-d: Be less pessimistic about domain coherency where possible

:::::: TO: David Woodhouse <dwmw2@infradead.org>
:::::: CC: David Woodhouse <David.Woodhouse@intel.com>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

--q4xxaq5zo2bxopsw
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
ZE9xvUGHrxK+86t6B/x/UOHpdDvdAQA=

--q4xxaq5zo2bxopsw
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--q4xxaq5zo2bxopsw--
