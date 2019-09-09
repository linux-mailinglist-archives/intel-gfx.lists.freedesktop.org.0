Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 810D5ADFBC
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 21:56:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB56789E41;
	Mon,  9 Sep 2019 19:56:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 898C889E41
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 19:56:27 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 12:56:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,486,1559545200"; 
 d="gz'50?scan'50,208,50";a="385078659"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 09 Sep 2019 12:56:25 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1i7Plx-0004fQ-2k; Tue, 10 Sep 2019 03:56:25 +0800
Date: Tue, 10 Sep 2019 03:55:36 +0800
From: kbuild test robot <lkp@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <201909100353.inTm3u3p%lkp@intel.com>
References: <20190909110011.8958-5-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="gmtkmckrhqdyo3sn"
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


--gmtkmckrhqdyo3sn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Chris,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on drm-intel/for-linux-next]
[cannot apply to v5.3-rc8 next-20190904]
[if your patch is applied to the wrong git tree, please drop us a note to help improve the system]

url:    https://github.com/0day-ci/linux/commits/Chris-Wilson/drm-i915-selftests-Take-runtime-wakeref-for-igt_ggtt_lowlevel/20190909-201355
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
config: x86_64-randconfig-a004-201936 (attached as .config)
compiler: gcc-5 (Ubuntu 5.5.0-12ubuntu1) 5.5.0 20171010
reproduce:
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

   drivers/iommu/intel-iommu.c: In function 'domain_update_iommu_coherency':
>> drivers/iommu/intel-iommu.c:622:2: error: implicit declaration of function 'for_each_active_iommu' [-Werror=implicit-function-declaration]
     for_each_active_iommu(iommu, drhd) {
     ^
   drivers/iommu/intel-iommu.c:622:37: error: expected ';' before '{' token
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
     ^
   drivers/iommu/intel-iommu.c:756:6: warning: unused variable 'i' [-Wunused-variable]
     int i;
         ^
   drivers/iommu/intel-iommu.c:753:17: warning: unused variable 'tmp' [-Wunused-variable]
     struct device *tmp;
                    ^
   drivers/iommu/intel-iommu.c: In function 'si_domain_init':
>> drivers/iommu/intel-iommu.c:2731:3: error: implicit declaration of function 'for_each_active_dev_scope' [-Werror=implicit-function-declaration]
      for_each_active_dev_scope(rmrr->devices, rmrr->devices_cnt,
      ^
   drivers/iommu/intel-iommu.c:2732:16: error: expected ';' before '{' token
           i, dev) {
                   ^
   drivers/iommu/intel-iommu.c: In function 'device_has_rmrr':
   drivers/iommu/intel-iommu.c:2794:4: error: expected ';' before 'if'
       if (tmp == dev ||
       ^
   drivers/iommu/intel-iommu.c: In function 'init_dmars':
>> drivers/iommu/intel-iommu.c:3157:2: error: implicit declaration of function 'for_each_drhd_unit' [-Werror=implicit-function-declaration]
     for_each_drhd_unit(drhd) {
     ^
   drivers/iommu/intel-iommu.c:3157:27: error: expected ';' before '{' token
     for_each_drhd_unit(drhd) {
                              ^
>> drivers/iommu/intel-iommu.c:3182:2: error: implicit declaration of function 'for_each_iommu' [-Werror=implicit-function-declaration]
     for_each_iommu(iommu, drhd) {
     ^
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
            ^
   In file included from arch/x86/include/asm/bug.h:83:0,
                    from include/linux/bug.h:5,
                    from include/linux/thread_info.h:12,
                    from arch/x86/include/asm/preempt.h:7,
                    from include/linux/preempt.h:78,
                    from include/linux/spinlock.h:51,
                    from include/linux/wait.h:9,
                    from include/linux/wait_bit.h:8,
                    from include/linux/fs.h:6,
                    from include/linux/debugfs.h:15,
                    from drivers/iommu/intel-iommu.c:18:
   drivers/iommu/intel-iommu.c: In function 'quirk_ioat_snb_local_iommu':
   drivers/iommu/intel-iommu.c:3827:35: error: dereferencing pointer to incomplete type 'struct dmar_drhd_unit'
     if (WARN_TAINT_ONCE(!drhd || drhd->reg_base_addr - vtbar != 0xa000,
                                      ^
   include/asm-generic/bug.h:173:27: note: in definition of macro 'WARN_TAINT_ONCE'
     int __ret_warn_once = !!(condition);   \
                              ^
   drivers/iommu/intel-iommu.c: In function 'init_no_remapping_devices':
   drivers/iommu/intel-iommu.c:3840:27: error: expected ';' before '{' token
     for_each_drhd_unit(drhd) {
                              ^
   drivers/iommu/intel-iommu.c:3838:6: warning: unused variable 'i' [-Wunused-variable]
     int i;
         ^
   drivers/iommu/intel-iommu.c:3837:17: warning: unused variable 'dev' [-Wunused-variable]
     struct device *dev;
                    ^
   drivers/iommu/intel-iommu.c: In function 'dmar_parse_one_rmrr':
>> drivers/iommu/intel-iommu.c:4023:19: error: implicit declaration of function 'dmar_alloc_dev_scope' [-Werror=implicit-function-declaration]
     rmrru->devices = dmar_alloc_dev_scope((void *)(rmrr + 1),
                      ^
   drivers/iommu/intel-iommu.c:4023:17: warning: assignment makes pointer from integer without a cast [-Wint-conversion]
     rmrru->devices = dmar_alloc_dev_scope((void *)(rmrr + 1),
                    ^
   drivers/iommu/intel-iommu.c: In function 'dmar_parse_one_atsr':
   drivers/iommu/intel-iommu.c:4082:18: warning: assignment makes pointer from integer without a cast [-Wint-conversion]
      atsru->devices = dmar_alloc_dev_scope((void *)(atsr + 1),
                     ^
   drivers/iommu/intel-iommu.c: In function 'intel_iommu_free_atsr':
>> drivers/iommu/intel-iommu.c:4098:2: error: implicit declaration of function 'dmar_free_dev_scope' [-Werror=implicit-function-declaration]
     dmar_free_dev_scope(&atsru->devices, &atsru->devices_cnt);
     ^
   drivers/iommu/intel-iommu.c: In function 'dmar_check_one_atsr':
   drivers/iommu/intel-iommu.c:4133:4: error: expected ';' before 'return'
       return -EBUSY;
       ^
   drivers/iommu/intel-iommu.c: In function 'dmar_find_matched_atsr_unit':
>> drivers/iommu/intel-iommu.c:4288:3: error: implicit declaration of function 'for_each_dev_scope' [-Werror=implicit-function-declaration]
      for_each_dev_scope(atsru->devices, atsru->devices_cnt, i, tmp)
      ^
   drivers/iommu/intel-iommu.c:4289:4: error: expected ';' before 'if'
       if (tmp == &bridge->dev)
       ^
   drivers/iommu/intel-iommu.c: At top level:
>> drivers/iommu/intel-iommu.c:4302:40: warning: 'struct dmar_pci_notify_info' declared inside parameter list
    int dmar_iommu_notify_scope_dev(struct dmar_pci_notify_info *info)
                                           ^
>> drivers/iommu/intel-iommu.c:4302:40: warning: its scope is only this definition or declaration, which is probably not what you want
   drivers/iommu/intel-iommu.c: In function 'dmar_iommu_notify_scope_dev':
   drivers/iommu/intel-iommu.c:4316:11: error: dereferencing pointer to incomplete type 'struct dmar_pci_notify_info'
      if (info->event == BUS_NOTIFY_ADD_DEVICE) {
              ^
>> drivers/iommu/intel-iommu.c:4317:10: error: implicit declaration of function 'dmar_insert_dev_scope' [-Werror=implicit-function-declaration]
       ret = dmar_insert_dev_scope(info, (void *)(rmrr + 1),
             ^
>> drivers/iommu/intel-iommu.c:4324:4: error: implicit declaration of function 'dmar_remove_dev_scope' [-Werror=implicit-function-declaration]
       dmar_remove_dev_scope(info, rmrr->segment,
       ^
   drivers/iommu/intel-iommu.c: In function 'intel_iommu_memory_notifier':
   drivers/iommu/intel-iommu.c:4401:5: error: expected ';' before 'iommu_flush_iotlb_psi'
        iommu_flush_iotlb_psi(iommu, si_domain,
        ^
   drivers/iommu/intel-iommu.c: In function 'intel_disable_iommus':
   drivers/iommu/intel-iommu.c:4455:3: error: expected ';' before 'iommu_disable_translation'
      iommu_disable_translation(iommu);
      ^
   drivers/iommu/intel-iommu.c: In function 'probe_acpi_namespace_devices':
   drivers/iommu/intel-iommu.c:4587:37: error: expected ';' before '{' token
     for_each_active_iommu(iommu, drhd) {
                                        ^
   drivers/iommu/intel-iommu.c:4585:9: warning: unused variable 'ret' [-Wunused-variable]
     int i, ret = 0;
            ^
   drivers/iommu/intel-iommu.c:4585:6: warning: unused variable 'i' [-Wunused-variable]
     int i, ret = 0;
         ^
   drivers/iommu/intel-iommu.c:4584:17: warning: unused variable 'dev' [-Wunused-variable]
     struct device *dev;
                    ^
   drivers/iommu/intel-iommu.c:4620:1: warning: no return statement in function returning non-void [-Wreturn-type]
    }
    ^
   drivers/iommu/intel-iommu.c: In function 'intel_iommu_init':
>> drivers/iommu/intel-iommu.c:4640:14: error: 'dmar_global_lock' undeclared (first use in this function)
     down_write(&dmar_global_lock);
                 ^
   drivers/iommu/intel-iommu.c:4640:14: note: each undeclared identifier is reported only once for each function it appears in
>> drivers/iommu/intel-iommu.c:4641:6: error: implicit declaration of function 'dmar_table_init' [-Werror=implicit-function-declaration]
     if (dmar_table_init()) {
         ^
>> drivers/iommu/intel-iommu.c:4647:6: error: implicit declaration of function 'dmar_dev_scope_init' [-Werror=implicit-function-declaration]
     if (dmar_dev_scope_init() < 0) {
         ^
>> drivers/iommu/intel-iommu.c:4659:2: error: implicit declaration of function 'dmar_register_bus_notifier' [-Werror=implicit-function-declaration]
     dmar_register_bus_notifier();
     ^
   drivers/iommu/intel-iommu.c:4674:5: error: expected ';' before 'iommu_disable_protect_mem_regions'
        iommu_disable_protect_mem_regions(iommu);
        ^
   drivers/iommu/intel-iommu.c:4719:37: error: expected ';' before '{' token
     for_each_active_iommu(iommu, drhd) {
                                        ^
   drivers/iommu/intel-iommu.c:4739:30: error: expected ';' before '{' token
     for_each_iommu(iommu, drhd) {
                                 ^
   drivers/iommu/intel-iommu.c: In function 'scalable_mode_support':
   drivers/iommu/intel-iommu.c:5214:37: error: expected ';' before '{' token
     for_each_active_iommu(iommu, drhd) {
                                        ^
   drivers/iommu/intel-iommu.c: In function 'iommu_pasid_support':
   drivers/iommu/intel-iommu.c:5232:37: error: expected ';' before '{' token
     for_each_active_iommu(iommu, drhd) {
                                        ^
   drivers/iommu/intel-iommu.c: In function 'intel_iommu_add_device':
   drivers/iommu/intel-iommu.c:5266:20: error: passing argument 1 of 'iommu_device_link' from incompatible pointer type [-Werror=incompatible-pointer-types]
     iommu_device_link(&iommu->iommu, dev);
                       ^
   In file included from drivers/iommu/intel-iommu.c:33:0:
   include/linux/iommu.h:846:19: note: expected 'struct device *' but argument is of type 'struct iommu_device *'
    static inline int iommu_device_link(struct device *dev, struct device *link)
                      ^
>> drivers/iommu/intel-iommu.c:5271:10: error: implicit declaration of function 'iommu_group_get_for_dev' [-Werror=implicit-function-declaration]
     group = iommu_group_get_for_dev(dev);
             ^
   drivers/iommu/intel-iommu.c:5271:8: warning: assignment makes pointer from integer without a cast [-Wint-conversion]
     group = iommu_group_get_for_dev(dev);
           ^
   drivers/iommu/intel-iommu.c: In function 'intel_iommu_remove_device':
   drivers/iommu/intel-iommu.c:5321:22: error: passing argument 1 of 'iommu_device_unlink' from incompatible pointer type [-Werror=incompatible-pointer-types]
     iommu_device_unlink(&iommu->iommu, dev);
                         ^
   In file included from drivers/iommu/intel-iommu.c:33:0:
   include/linux/iommu.h:851:20: note: expected 'struct device *' but argument is of type 'struct iommu_device *'
    static inline void iommu_device_unlink(struct device *dev, struct device *link)
                       ^
   drivers/iommu/intel-iommu.c: In function 'intel_iommu_get_resv_regions':
   drivers/iommu/intel-iommu.c:5333:13: error: 'dmar_global_lock' undeclared (first use in this function)
     down_read(&dmar_global_lock);
                ^
   drivers/iommu/intel-iommu.c:5336:18: error: expected ';' before '{' token
           i, i_dev) {
                     ^
>> drivers/iommu/intel-iommu.c:5373:8: error: implicit declaration of function 'iommu_alloc_resv_region' [-Werror=implicit-function-declaration]
     reg = iommu_alloc_resv_region(IOAPIC_RANGE_START,
           ^
   drivers/iommu/intel-iommu.c:5373:6: warning: assignment makes pointer from integer without a cast [-Wint-conversion]
     reg = iommu_alloc_resv_region(IOAPIC_RANGE_START,
         ^
   drivers/iommu/intel-iommu.c:5327:6: warning: unused variable 'prot' [-Wunused-variable]
     int prot = DMA_PTE_READ | DMA_PTE_WRITE;
         ^
   drivers/iommu/intel-iommu.c: At top level:
>> drivers/iommu/intel-iommu.c:5610:2: error: unknown field 'capable' specified in initializer
     .capable  = intel_iommu_capable,
     ^
   drivers/iommu/intel-iommu.c:5610:14: warning: excess elements in struct initializer
     .capable  = intel_iommu_capable,
                 ^
   drivers/iommu/intel-iommu.c:5610:14: note: (near initialization for 'intel_iommu_ops')
>> drivers/iommu/intel-iommu.c:5611:2: error: unknown field 'domain_alloc' specified in initializer
     .domain_alloc  = intel_iommu_domain_alloc,
     ^
   drivers/iommu/intel-iommu.c:5611:19: warning: excess elements in struct initializer
     .domain_alloc  = intel_iommu_domain_alloc,
                      ^
   drivers/iommu/intel-iommu.c:5611:19: note: (near initialization for 'intel_iommu_ops')
>> drivers/iommu/intel-iommu.c:5612:2: error: unknown field 'domain_free' specified in initializer
     .domain_free  = intel_iommu_domain_free,
     ^
   drivers/iommu/intel-iommu.c:5612:18: warning: excess elements in struct initializer
     .domain_free  = intel_iommu_domain_free,
                     ^
   drivers/iommu/intel-iommu.c:5612:18: note: (near initialization for 'intel_iommu_ops')

vim +/for_each_active_iommu +622 drivers/iommu/intel-iommu.c

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

--gmtkmckrhqdyo3sn
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICHiQdl0AAy5jb25maWcAlFxbc9w2sn7Pr5hyXpLaciLJto73nNIDhgRJZEgCBsCRRi8o
RR57VbEkn5G0sf/96QZ4AUBwvMe1tZHQjXtfvm409fNPP6/Iy/Pj/c3z3e3Nly/fV5/3D/vD
zfP+4+rT3Zf9/6xyvmq5XtGc6d+Aub57ePn2+7f35+b87erdb29+O3l9uH2z2uwPD/svq+zx
4dPd5xfof/f48NPPP8H/fobG+68w1OG/V59vb1+/W/3S/fny8PwCvd9B79OzF/vr6a+uYXV2
cvpfpyenJ9A3423BSpNlhilTZtnF96EJfjFbKhXj7cW7k3cnJyNvTdpyJJ14Q2SkNTVrN9Mg
0FgRZYhqTMk1nxEuiWxNQ3ZrarqWtUwzUrNrmnuMvFVadpnmUk2tTH4wl1x6M607VueaNdTQ
K03WNTWKSz3RdSUpyQ1rCw7/ZzRR2NmeXmnv48vqaf/88nU6E1yOoe3WEFnCthqmL96c4WEP
C2sEg2k0VXp197R6eHzGESaGCuajckbvqTXPSD0c4qtXqWZDOv/I7A6NIrX2+CuypWZDZUtr
U14zMbH7lDVQztKk+rohacrV9VIPvkR4C4Rx/96qkufjr+0YA67wGP3q+nhvnjj9YMV9W04L
0tXaVFzpljT04tUvD48P+19fTWOqndoykSXnE1yxK9N86GhHkwyZ5EqZhjZc7gzRmmRVkq9T
tGbrxKJJBxYiOnois8oRYG0gOvVEj1qtqIPerJ5e/nz6/vS8v59EvaQtlSyzaiUkX1PPDHgk
VfHLNIUWBc00wwUVBSi02sz5BG1z1lrdTQ/SsFISjfoQ6HnOG8KSbaZiVOIJ7OYDNoqlZ+oJ
s2GDlRAt4TLh4EAdwfKkuSRVVG7tik3DcxouseAyo3lvd2DfE1UJIhXtVzdeuz9yTtddWahQ
PPYPH1ePn6IrnIwyzzaKdzAnGFWdVTn3ZrRS4rPkRJMjZDR9ngn2KFuwz9CZmpoobbJdVidk
xZrh7UwgB7Idj25pq9VRollLTvIMJjrO1oAkkPyPLsnXcGU6gUsedEDf3e8PTyk10CzbGN5S
kHNvqJab6hrNfWMlc7Lv1yDSkvGcpQ2C68fymiZ02RGLzj8f+I8G52W0JNnGSYznbUKaE6+l
gT0jwcoKBdXeifWgoyDNzmHoIySljdAwVEv9NQztW153rSZyl7aDjiuxtKF/xqH7cBuZ6H7X
N09/rZ5hOasbWNrT883z0+rm9vYRQMvdw+fpfrZMQm/RGZLZMQKtShBRCkKltJKZ6m2Nqcoq
0FiyLWPdXKsc7WJGwYBD77S/R0ihNNEqtXXFprngl9HZ5EwhWMn9i/kPjmQUGdgvU7wezKY9
Upl1K5WQbjh+A7RpIfALoCUQYk/aVcBh+0RNuM35OLDzup60xKO0FA5V0TJb18xXUaQVpOWd
vjh/O280NSXFxel5SFE6lnA7Bc/WeBb+KYanMArBxv3gicVmFE+e+c0Ov3kmquYIwgpwg6zQ
F2cnfjteREOuPPrp2ST3rNUbQG4FjcY4fRPIXwdQ10FXK4jWxg2Xqm7/tf/4Ahh/9Wl/8/xy
2D/Z5n6zCWpg3FUnBMBhZdquIWZNAMJngfxbrkvSaiBqO3vXNkQYXa9NUXeqiljHAWFrp2fv
PSNWSt4J79QEKalTeSp9nQIglJVpoGSHcIeQ0KWeLFiu4mmNzH002zcWIMTXVM7aq66ksD+v
XQD20iq0eTzDqXrasfXmdMuSJrmnwwhoO2bLAP0rZo0WAXhaCZIwkpzvnvwMYFWAFGCc0qur
aLYRHO4J/QCAmTQ67W0fRBx2ljTPThUKlgaGHGBR8nIkrYmHxtb1Bs/FAgrpRXX2d9LAaA5X
eBGNzIdAZpwXmpajBCAuRghAC6MDvw+PpoBgIHV5meEC3AZEpehz7W1x2YD+BL4xZlPwQ2I0
xETac/lO7Vl+eu7dteUBw5xRYbEl+nwa9RGZEhtYDVh+XI534sITpti4RzM14IEYiHWglwqU
AgG86fHbEUn4AQfuIsHSMxQVaXMfPboAasQpgfGMfzdt4zlUpyqTzoZnk1zemgACR/iVWlkH
UGsa3f4KNsA7VsF93KZY2ZK68MTbbqLI/UVZrFqkVEZVYAo988q88Jpx08nQUOdbBkvvzzWw
VTDMmkgJMVEq4kXuXeOd7NBiApA+ta4BV8DWUeKda4057BmiwmPgF8AlURyVDRQ5C3+S52H9
CyaHpv3AaC1gebBdgc4q+iE5PvSjeZ60T055YHoTByAiOz15O3jbPtkm9odPj4f7m4fb/Yr+
e/8AIIyAw80QhgF2nrBVOOK4EGvFHRH2bLaNjSiTYd1/OOOIdhs33eBZvY2oulvH/gOTVQR8
u82YTTpak1SeAQcI2XiajazhjiS49x7N+msAGvpdhHxGgqbzZolaEZlDtBZoi6q6ogAgZMHD
GIanDQ1uF+EXRNWYPkwGHrxg9RBR9QceZv0G1vO3az/0vbJZ2OB334m5zCTa6JxmPPcxBiBY
ASDW+gp98Wr/5dP529ff3p+/Pn/7KpB0OLsekr66Odz+CxO/v9/aJO9TnwQ2H/efXIufJtyA
Hx5gmHe0GuJD6zDmtKbxtNjO3SDEky24V+bi6Iuz98cYyBWmQJMMg4QNAy2ME7DBcBO+HyL2
QG69xtHSGAtmApEfo31Ss7XE9EQe4pDRpqCg4EBXKRoBDIQJbGrdd4IDpAgmNqIEiYozcYAO
HZhzQaikHhC1IdBAstYJhpKYQKk6P10e8FnZT7K59bA1la3LPoHrVGxdx0tWncKk2xLZwn17
dKSeg+FriP4NwOk3XuLYphRt56VwoLd4sHSrtb7XUKQFvSY5vzS8KOC4Lk6+ffwE/25Pxn/B
ieIt10ZfzfTRqEYsLaCz+UtPNgoAFZTIepdhms73tKJ00VYNlhQ86TsP8uFlw3qp0ye8bZq5
PKB1D+LweLt/eno8rJ6/f3UhehCVRUeYMp7+DnBXBSW6k9Shed8UIvHqjIiFLBOSG2Eziolp
Sl7nBbPR2+Q2qQb8AlK+OB690iA2KIrHIBRyuiuqhUrHHshCmmmc5RiJcVWYZs38hQ5tTqiO
RC28AaksIJ4YbUPK8+9AsQA7ATgvO+onIuDwCGaP5i2xGx3blWCtzYqGl1ht0QTVa5AZsx0k
ZjoN2qaAGbjyYUEThN2m3waQ2alYnB2OVxhlulJecWAd8gzjIH8QVlccEYtdWAqjZbKdr7rZ
vE8uqhEqLbwNQrp0WAdekzcpiR5MvQ9JB1GULTjh3o67DMu5z1KfLtO0ysLxskZcZVUZeX9M
KG/DFvB2rOkaa7ML0rB65+WzkMFeGARDjfLwQZ9OxFCR1jQLzhFHAoPmtCsd1PccoFxH6dWu
5O1RjgxAJOlSCjNwXFeEX/kvJZWgTr687eRNoLqgBSWRO1BhAB2JscH1BxawtS5PIVIEp7em
JSKI03+epelgnJLUAYYmaEGbsxqqCQ7dNTZZYrVWdvBh1qAZjsSOD42B1ZNUcgyeMBewlnxD
W7PmXGNiedlUNqFpdK7GCwjuHx/unh8PLic+AtkFDn+Rw1sMYI9uzBVPdvb9ZmHTTmKDNcJh
slRghbR31pNG+iIIOlENSJ9l6mKOqcAlw4VmcieC68BE5VJw6B7QXEeSgD0jeRaXOLpVuOEl
Fl/uvDWzuqYl3HTvSPDBq6OIVPY3H0+8f9GpYJINUC1XGKXKziZuFk7JPRtiKvgSDcVk8bRM
Rzh20S6GWhQdBQA7MR8t/LRFweAqunXY0rArv95C0Qwxun8V1bU5PTlJ1zhcm7N3Jylve23e
nJzMR0nzXryZoJ/Tw0riY5wHH+kVDZTMNiAgT2ZcJVEQWXW+iRHVTjHUYZBGidjzNIScEBVg
lNnL04SW7LljWg/THSk3OowLsUfZwrhnwbD5DhAdPjs7aYOoBB88JlvKtai7cny86JvRVqB/
bnyG1Nk5MOAzzYL+ba6CVCfKd7aLbUJqazHnFW/r3bGh8MUw7W2a3MZVsK+0QwMtZAUcT66P
pAxtVFBDCCjwjcIP5o8B8pnFIXluI5TYGjljMtxUf6ZpHiVqgJwCoa32X2nE49/7wwps8c3n
/f3+4dmuhGSCrR6/YsFWEB704Vkax6WwTxjp4LDe6ma/DbdjRVqBueGbLg6bGlZWuq8kwS4i
z6JB4DY0WFLBLzENB4YchpplFiynFcXSBwVBs4kTzW54kUm3wiTKxF0IpmfdED0Vyq0qbTOR
S9Kt4VsqJcvpGAQvs4M9SRRe+BwkPp010eAkdnFrp7X/Cmobt7AIHrUVpJ1tLQdxWprfQkxJ
PxgIuKKhJjyZ2VtaJLMg6R4So3YmmlimFuxVNAcpSwnCt5Sys9y6orJJpusmRbV8VuE6UUqS
xws/RhtCt2iNGcN8ZjqmwRPmAIfBUsVHMeyb8RjtOTFeL8pMFWY23SydgugGLI2ueFr/nRyV
Mv3i2Et33mGFEeZPL4mkBq3zktV04iuod59he/ii4rOHs1resqLLOoIMcMyUzA7Rkihr/0iP
SjHVtRzr50IXc40f7SXDFziQugjcXjnLFdAT/ddX2lxms2Ei0YCfiyjkF80YCk2GvWAzHA8K
syoO+/992T/cfl893d58GWC8F26hbidfB9K9x4HZxy97r5gXi0ICLR9aTMm3AEHyIFMdEBva
BoodEDXli6tzSxj98Q/9oF37+uVpaFj9AjKz2j/f/var96wC2pozSf1Xc2xrGveLn9vGHzD+
Pj2pQuasXZ+dwA4+dCx8/mCKgKlOh2NIyxuCsd0y5t6pYp08kIV9uT3fPdwcvq/o/cuXmwES
DJOSN2fpEM0mAd+cpaCuA3l+ltY1zXAghqLd+VuHU+GetQ+g5quyiy3uDvd/3xz2q/xw9+/g
xYvmXtAAv2BO10+6ysbaJABTEJn4W8kblgwgod09KwdJBQgHCFaIZxXCR8CXNmYp+iSbN+Gl
yYpyHGCczW8fUGgyT8rLmo7L9l4WHEH5xrFvw9yVjelnMUPPgBUuvFUcfrQZBAvHktI07zAM
vrzWrcgH1AlHsvqFfnvePzzd/fllP90aw0fDTze3+19X6uXr18fDs3eBcI5b4r+iYAtVMkBb
AxcgjsXSEeSRmGZsYAtLYSjc2cYTBz8AJVcjcXo28ge9lEQIGi8Vj6fmtsYevbbkdbzwjAjV
YYLfci2sSwe5YJgInx0lx8IJ5ocIGLZrV7e9AdysWTlpaa9E/597GIbt7EKFb5DHpvC5EVux
lgZ0uTI2xSGju+tfOQax0PvPh5vVp2ERH60K+5mjBYaBPFP+ADlsto1/3phJ7vDjDRKnPoJv
LPCJ8+55f4uh2euP+68wFbqHKToabJaN4PsX/8wP+cO2AZe5ZF7fyN2Db6CTQ1v/bG5LX+Cq
r5YAkzdGPAIgpbnP37h3p8Rwf3SNAKe7poF82pxYBnvaKUxIFQufidi10KJgAKhg2V1rrTdW
amWItaNwDlP2+JmIZq1Zq0sSfw7C4OzwJTbxfLmJ381cKz4WpQhcpNv7YQCLmiJVt1R0rXsw
h6gMg5H2D5qFJf+WLQCj04cOdsQKAtmIiJ4abQArO94l3oUV3IBFMa4aP5GFBOeoMQHRl6PN
GVD5XWZggehwimlmh+5W7j4/cgUD5rJimobVsOOLrBpTRtpWYdke0ZCATyE6anP3PNnLAmKV
mE/RD0sXgF81LXbM6viIq0uzhi24SsKIZlOIHlnZBUZMGP7j22MnW/DjcNjMt19xXU5CAjDO
wVyLrY5077FR7eQ0SGL+oQpH9ocWZgenmwrU9QjVr3wKzjzr+rgUK1xmwuKE2xUD909M8Ty9
hveygpmq+HZcP/cmsUDLebfw4t/DQSYy50XGT/kSvLzOPf7UgfT54r40YpZHnrV7PfEaapCZ
iDh7ch9cQv8sH5BnHymE5MVw2O6QaUCVvTjY5+NYZrL5Fxk++YefHDij+8PvDhqO8tnkScMh
SYsPGmj9sUYjIQ6LfEZ0yTGRjsVocTbQXrklYmZTVQES9i6OF9bc6d1sH/nwAkMzUHBPYIDU
YRYSPRR4O6s8iXOiV0yj77Bfm+kA4Y/G1nYfsvKp9QVFSxGDnSDpBcJeUx1UYlyviGlpEJ8l
MVRPtuz4rjAXPLEbfIauY6qT2P5TrLnzhLNlLks9FoN5KAa/IWVln3t+M4sSezqJvLKti7Ni
POvx5mxOmnaKYrZ4lWDiGJi4/mtMeelVZR0hxd2dbCW7p0hjd4mVd53vzYaW6MOsaTcCzhZi
9P6tCE4ohcAAJgQwa3ouwSp+r2xTzWFyxrev/7x52n9c/eUKQr8eHj/dxbkiZOuP5lj+1LIN
qNVV+U7lj0dmGrMngKzxK0uudJZdvPr8j3+E3x3jJ+KOx8dcQWO/q2z19cvL5zsf4U98+Bmh
FaYatXOXGsrgC1WLn2NDnCfSLGgTRrTkHVWCwa/iTyZwghXHFaM/iGFGYcIoA9yHr9y2ZFph
GfDFaWQa/UX3Ymu/8bPR69KbGXJ1bcwx0XvXnhpcyWz8znyhTnvgZOmEbE/Gm4PgOJ1HAzVs
YIWgFrnZYNV4ep3WN9iPzcZnqukttE6/iAgSfcWq2lMviG5Z60o5BVx91/avdL6KTC9pmiPe
lo33dbO9OtcZTohfBk8C8lLRZolotXyBNtoI+5l4nqojW6bEneVluuusfTKYQxm9WdMC/4N4
OPx02eN1b7p98sVLtY2fU7nk07f97cvzDeY78M9ZrGwtyrOn6GvWFo1Gtz1zHSkS/BKG+D2T
yiQLS0R6QsMWqstwGET5SQ1fWrbdU7O/fzx8XzVT/nqWoDhaRDJVoICJ6UiKEkMnNw4qEvU9
klfqcgX64fvYibR1abVZNcyMYz6pVS5jy+bmdPu5ZRlqY/g6nqpsdU/j9lnclV6NxXB93zWW
Bof5bSsP2ULRDFZY4KO9NDquz3eljhzT+J7qNl0iwtwo78yHz2/tsbnvx3N58fbkn+e+6Zoj
6iVv6wJ3XQHUCbIuGcQ3ra05DHa78LnatVgqj7hed2kfcK3m35QMnq9Pfti04JD6CY6AShnG
mdGH/zZlYtvnAdBoJ4Sttg+jiaoByWeY4fHNBtbnbqOgzn1cZLNhgZMCqQMb1WZVQ2TyOdyf
3oYbJIA3yxo8jNBS/xt/CgFuW0qXUrM2oN0///14+Avw0Fz5QVY3NCzYtS0QFZGUToAz8gAo
/gbmrIlasK8/JOD+9NNTIRtruJNU3MmGpt6BWRsumQmXBcU/sJB+AxP4tRliJPApWM2YCqeB
SbTe1bvfTV5lIpoMm21d09JkyCCJTNPtDYmFPyXjiHB9IIlNl8rpOg6ju7aN8rA7wJ+AOdjC
57Ou41annwGRWvDuGG2aduGlEflIutzb0qhaODG3NDSdC7c9bddv7OUs4MvETPwsocvFTKZD
Dkkuf8CBVLgXMDM8/fqFs8OP5Shtie2MPFm39vMKgyEf6Bevbl/+vLt9FY7e5O8iEDtK3fY8
FNPteS/r6IuLBVEFJve1Lxa1mnwBn+Puz49d7fnRuz1PXG64hoaJ82Uqq9NexhIjgfZJiunZ
kUCbOZepi7HkNgcMZlGE3gk66+3E8Mg++seYvlTtCKO9mmW6ouW5qS9/NJ9lA8+S8ppw8PiH
xTB/ia4ndBFCC/zzZ0qxYhdQbBfAKTYNAs6sEYGzBI4xD+rbh/57spTc93/X7bBHRwQI9Xl/
mP3tt9lAkwubkeAn+6fZ7hdJ+LcpPHKB+tRaxx+02r924f7Mx723GUeAoQALpI7VGy5xtj7V
1fYFJ+WTbfI9FUYGXIUW6b0YJrNo4RMNlm9ruNsfjq9YNL72TjhxxcMZl3UHEXPqpQ8GaYkO
Bm2xaiPaCLa5LYRt8YKwrSEKQsK+Ns7f8VzPZgt2f0RP/R9lz7IcOY7jrzj2sDFz6JiU8umN
qANFKTNV1suiMlOui8Jd5Z1yrLtcYbtnev9+CZKSQApU1h7qkQDEN0EABEBZplqJrVKV3m++
vv7x+/OPp283f7xCvpF3ahW2UHN953768fj2z6cP3xcNqw9Jo0a4Xx7EUh0J7cWKCfQoEnMw
flxAigPq1CSJ97qu2RKlIK3u/36xTDQzs738paGQJ1wuJjMltdmv32cmqIHEcVLrURybLl8T
UWxgSqWdTv9ATmFzvMuS+3x5VSTqPDWRptV//QJL3INkUDPF8FfOfodkKlqqW5H1wgaRTKh9
mCWJIUDLwdvMUIqyE85pmjMC6wRuwB247LlEpdWwBy24OUoc6LAQoTwX6ewJ64txLdLifQEJ
/YpDlkxLkMIfaVyZmyMzif/azE0jPV20sGNNl5fETNeGnq5xFjbUlG3weG58c7PRQwW7Ab7R
+aMmBNPZ28xO38Y3AZv5GZgbYHKbbLzHYlSn8YEWuzQKyJNoRnqLKt1t3z6POfeqhYJ7VMY6
9ticfSk6WUMHUGVhQx0GokF6re6o+7tLD7lsYVGW1fRaVyk/gjkyH4DIVpwzVnS7RRjQSU3i
hBcJmUk2Q/qQ/IHj9RuGHTnAe0w5uBkwGuU4pse4Ddf0kLEqIhHVsSw8/HyTlZeKURa+NEkS
6PnaSiA7QrsiM/9RGY1S8F4lQwfQJ5ptIKsg49MqYD58ecZijiLl4gLuC0UJuXnxPonkmmJg
PjyTXS6rpDiLS9p4cr2edSs9opiSGF29PK9o6RckFTvQ/yj8JiLdJkdWtyiyJZwMcMbPURVc
UIpkjTPA1XuVNdGKDMV4k9dMKVg1zn6EEFrrim11rIZ8e+Khs9MxRfeWgQeSEX1OPYJZJ2W7
i0nubNv9bj6e3j+ca1fVwrvmkBQkz5186SCwKRHNEsvl2ZuW5BBzcrtEaFlHkNUniWsLUu9B
Q7NGoQd2TUNbYaCgIqH4oMTw3OKFTXdMYwcgnOo8kVYK42HcUTPnChk1fXhWP1XRy59PH6+v
H99vvj396/lr78FqBdlB03h6YrWnSIk8yz9O4/P6nJFz7K0SnTLyVG5r3xG07+44Fdt3kepD
ZunufH8AhhVY/ErxwUA5LcOdE71ozIewcZMMPJlVnnV5QFGMY6Dm4PG8T7VfQ1cWJ2tGB7I6
gUAKdSsMXmp1coip7FCIXv5IsuyUsVouGydDlkWmEvNAfs+UzEcwdkvb/Cq6JDJ58qSzdcz6
C+B5ykvSUkvHHCfB5IAJtG8JJxA1h7sm0dSYFWLscC31K1Sf/uOP5x/vH29PL933D2TwHEjz
RNCnzkDh7kQXP+43snTRXw3RCUbsYiahRQO6KPVV/VwR8tiNSpFMo/rG9mR5Mo0ec6mkmjpT
xnEu/myggmSzv0CWRkJcb1Al3CQzA6qJMzHTWD2qff63a50+gj89hFqo1FaLke3kOBeW+mlK
1skcBue1en+X4mNW/1ZLaAJMi+rk3K7dVu5vdXmbWqHpBuEfXM5S2ibPk+rYOWnzkTJDWXor
wcDlyK0/3ZOh8Bf3LqWH2Bk3Y8jWZe57DUgKMYoB2mZZYM72Wxl7lmYQrexoEYkRYPpDL9bn
ziQgSxOntr4Bv4nemBSiOCe188Okx7fyI6YJcMvIPhf6AAz4BkiogR6CQUctQYOM/7/nmy7h
mI2qb0SVT8qRsJklg0gU25wnUtGiQg7PL5DB+TElnpDSCWNVB2PfWxKArBpKTlCo6GJPVi7S
CYB85ABwKg5SOG3xMirA1TqZW5/8wDxLYn0OeUV8XekgHaiDR1hmZ+GEOHyW2xDwJQHhyMTg
2shUJWSyK6zp61qFY4KMP1T1uFE6ANSJw6hdNC59tGfRfjA5Gci9ogPsI2qKMRn3Fg6Y7kuz
Xq8XvjoUiXEDIccDE4ujvRh1Pgue3nx9/fHx9voCycVH+VqL2I/fniDrkKR6QmTwpkAfbGgv
ac7iRO4D5VHqX/g9VUJ7bl2t1Z6+fSP/DsjEM2p2S9FM0tYPCDN4k43bQjrRluzCOZ/e48VP
78///HGBWDoYUWUaF54xii8qXd6VMeqp3DHCPCARbu4vM4KzzRlCuOmpH5ZF8uPbz9fnHyii
VO3dIu4jhKzG9PAhit4zHYnkFU2fVg61ZKhtqP/9388fX7/Tq9NmTRdj7WgSOvXufGm4MM5q
+qq/ZlXq6PBj2OPzV3Na35SuI9FJe4Mfk8yJAEVgFfCJEqRLwaHJK1sq72FdDuIgactkRcwy
HSzT96fW1QzB2uqFqV7OGKI/X17lhnsb27y/mIBaJLr0IOUtFsMLByMSHBfZGFo9dmT8SoVl
uYNAonHo99D7kZL2RXbjWU2PBitpBkYgMI72HqP20IIwHNfp2WO+NgTJufYYvzUBrGpTjDxQ
IeSHNl4DGVOOuoZYRVQSU4oyIaoj2fNwE6DPpwyyvEaSa7lBzQfLcU//7tKQT2ACBwkaWJ5j
c13/MX51CSIzVSCRWhR7O2WgXBWK0fchKran/XTbDDkjtO3FegEDgweLQSkFdMffEN5zmCbq
PhSC1KAaK3eL/Knmx0M6ZLmCTNTC/bDca7jnW1Zvh+80j3t8+3iGft/8fHx7d/gafCHHVKUf
mJQ6MrZJEaqMk/zvTa7v71V28ebt8ce7zvtwkz3+r6VWqKaX2FwLEJVrG+xEkDJRWYn7Ztcs
/0dd5v/Yvzy+S376/fkn4st4rHBmOgB8TuKEO2sY4HIdD2+SWf2XJYDdXXlilaTHBlDpCKvi
Tqq2cXPsArtwBxvOYlc2FupPAwIWUi1VuTw9pqS+M7nUHicLjqusfYxS43r0qUkzux01lqAV
oHQALBJOCpCZmdNO8Y8/f4IJ2wDBY15TPX6F3GvO9OpwHhhCuBmb7Abw6XZcMCy8HIvtpq3J
FLCAT/mx1X2yPktEFNaeNImqWXe7xcot1qIQPAq7fcZ8pjNJIrX3j6cXLzpbrRYHygdV9ds2
NauuqBzKZwhlpcye6isp6ukpHR2cr8yGfjTo6eW/fwOZ5lH57MiiZizlqqKcr9eBpxUQbqNG
xl5JA7i71Gmjwom1e5xV8kjl8wBWOy5cVzs61aRC82MVLu/CNXWNr2ZPNOHa2Qsim+yG6jgB
yT8uDNIvNmUDKSPBZqaiA2ysPFOFSRYfhDsj6z+//89v5Y/fOEyGz1ijRqTkBxR/GWlXG3n6
55+C1RTafFqNs399YnFNBVMRqbXDWSX3BgwJNLOop5SmGHUjAlk21eQANKiwBX5+kOPnnWdw
KgZa3yxL1dm0XA15VsVxffOf+t9QyvP5zR/a/588ehSZ3ex79S7seMyYYb5e8KRZpVOyAaq4
rZVyfbRfsgV83tx19ycWWyIWIDRr8INt04ODmjwNBM05RekE0F0yFWssjqUU/51lrgiiJDKX
pOOrZz0OgoQsGbJHgKujW5uypVjBOnGDVlC5x4tGSkynIm0814ESK/lJ01hJFiTwrow+WwCT
TsOCgeObddkmYZbcKn9bASLydx5jYbfc9/4AFgwMuNOXJ1CaTZ11wU6f6QN0lW15MFCpDTnv
nExIKkiNu6fvlBGNMmB6rp57Mtbudttb2q+qp5HMj/KDswJDVFSIuQhSN0ejpPv2+vH69fUF
B9gUlTGe6Tv5c55YBpP+Yh3DtZDy/P4VqQf9zkgKIXedXMNimZ0XIY79j9fhuu3iyg7VRmDQ
hojOYQph2/mkCpk/wHqiPFSiHJ7DRuNyZEVjvY5zAJsmR9Jmk+5zh38r0LZtkfyZcnG7DMVq
Yd0YSwUrKwW8LAFZp1NOuv0epdaWWTZdVsXidrcImS9qRWTh7WKxpHqoUCFKRNwPfyMx2lzp
IKJjsN1aZsweo9pxuyDTNOV8s1xbwnYsgs2OypJ3NgaOIfLQwIGBpGBq5NVyYlwWvcjVzxS2
Y3mf/damwU7E+4RaNhCt2kmFrbVKPles8NhoeejeUeuw26QCMfZ9ktZNwTvWhGgBjcC1tTY0
eJqYzsbnrN3stutJcbdL3m4IaNuupmCpQXW722OViHaCS5JgsVjhg9fp3aDQR9tgMXkHTEN9
FxgIKzeeOOVVn7fBJEn76/H9JoWL9D//UO9tvX9/fJMy1QcoxVD7zYuUsW6+Scby/BP+a2dQ
+39/PV3jwJV8TAacJlUC/coK44JDPsfJXAdQh0OER2jT2mE5A+IYc8rnx2yYc84HJgxJ7F5u
5EkqBaK3p5fHD9nNcfk5JGCOifuEc3al6jmnYfwFT/ckNSAw4bmsbLrR4l5Wbh5PpzXH1/eP
8UMHyR/fvjlI1Sgv/evPIdu4+JDDgKNM/8ZLkf8dCfxD2+NJ+r25AUVWvMu9bdWTv8cHdXQa
tTrhIHg8fELPEiT8SB/sigOxjEP6LE457w0syrnZYhErWMdSSw3F5+1ICel84mScY5H2+smE
YQES4udxqdQHyNx7ElSKQfD9vAmWt6ubv+2f354u8s/fp9Xt0zoBXytkZzaQrnT8wAaEz6F1
JCiF41TXT/Fcm9CUgAtNU8KbBcrm63Hw1K8nYVNciuZHuUk6rDEqi5h2zlEyinUY3Kv0jTNh
xU3CSHMM4+C6bKl7EtR4rDtpBdT01Vnrw4Cu6TGYH3zmBMaFe+EzdobrPKu0Cf5EOV1KaHdW
Y1yXQjJta5zPSeNx8FU+Lu4K6tuR5U7aNUvn0L+lcL0IpsDF2hLzDHgSDmCjORn01CPL/Hbx
119EqQbjURT6qlN5yM+WHi60VEgUr1AuO9I8Hjx+xtPUuYGOn+XJ+/z7n8A6hb7CYyg7j2Xm
6i8/f/GTQUaBRPXWvBhF0NobZykYSoa65B7TIqJhMasmV5EE2SGpqWsfTJIxDvYZbrl9iyyV
h5A/mn34uEnIdBtG5mhEYvOW/rucfbGTdyTyVOhH6WqtngerMIlkREWT0kESmK72xO8OBNCm
0jI9syaj1AMJxltM/kqcrwKPO29GOwHgVpzkCX21M1FdspiT5m6bilsvHUTFJLzEkBonimv1
cnZOT1eXLD8mmfBsf0wmBYdyvgcc8qwWDAs08H4asct4C45ACBA7+StQqTGpamEC29UuzkL0
S5yK2HXP6mHqinO+bEjYjt+LjpLQaamGdMdL7nmMzRBECbU4B+TSrUOqr7KJNVGVuHs4sguV
OAU3/As/2g+ta0hXVPA4ayE5UK6Trl3f1zop+Xx9R5whpgoWC5K/HE/sYr87cUwd3Xj6UboL
121Llqe0DquTtDMQgBcu3cKTbOBAO7tJ+NmTM6L1fSIRnkoA4ytu5WuZRPi+8XCDfR4s7jzd
oYb9c04fDDmrzwn2EM7P7kkp7jxhhHK90s9A4vJl4awofdldeqqU1/Z834ndbkVtLECsEd/X
v7vceg5dfJFfO5qQU1052UYFD3efN+QqK3gbriQOLX7Zq+1q2Xp4m6pBSC55pd8PtX2zKH8H
C89w7xOWedzXUJEFa67XK/8LJmRLIBCh56w4t54G2QXWZVHmV5hJgecj7WTBLsvyjGdxTuOU
uk1HNOWdNZbwTM8VBmTyPyXFIS3sbK7q7YoR8JCAt9EeO+WiYu6z8oCvKu4ztmwxY7vPeGH7
I2pIJ+Qk0GF6hiDmNAMyaP/hdJ/5J61Nio5mzvf2s0f3kGjM38SEDD7HA3MCi0WOzOT3nG0X
eBsZgH1dds/Bvpjjh7vqvHBTf5lKavz6Wb1ZrOgTCtyhmwRnk7QvO3dS4SeNaoBoSnSJZABd
ZbPJHixVzqRrLqmgU2/1ZLsgvLXLVFl861a/WYG6tAs2t55tUcstI9hVraGGeFWqMYhGsFyK
T9iQDicZ7CJP3SJJqKsSTFFmrN7LPzi74d7aB/InXDHSxwvgeAx2JkrjAbRanJPy4Bu5JQ+O
DcUi2sPKpLcO7kHqs21YRFcnQOSebJfWaHFwzWqvSm2iUafLVbLT9ZY/FGUlHnyRyYaqSY6n
xmKtGnKtdDJZFcKfU6RRyB9dDc8FESDHYxHgECLJddphqupL+uUXxN+pP3h/0sYx4kZxsm+t
c14BJjoGEov2tHFLChyVb0xEFFh8EYQw8/C6A7SzZioIh2y9qcUvNSJtIob3dF9Al59aGqq6
VSeeb8YXWLBPqKLQOqklzAD4mIpUSi5O2i6bRm4OiLFMSTslEJQcrB5Ohc1Ranu4GdXxIUtR
9L+4SAgS2ORh1tSpetVSI/Tdc5reyJ9TF6v+mMhjQz7aD4ytA+C0gUHfvkcuwXDy7BbLtrNa
J+dwK2WGCXC3JYA6pr3v7qhGGnOEp1qechYztzNGt/f2JZbz6i8zrnbLXRjaLQRgw3cQJ+mC
d6sdAdxsbeBePU3iNDTlVSZXoa+d+p6qvbAHL0kmwGQRLIKAe7qTtY3dEqMe0UApqbuN1IqM
p/RB7XCKG8BNQGBAmrfBhQr2Zk6rilYW8JkFgbtg7qclGGHIBSphwgFK0WHaZDjP3K5LeSdY
tDTnA9ukXLMpn8zfwNObRIjErsVcyh/kFg3rg3VtYsZZKn+3t+vcMqdVWUqJcVWF3VqqqotE
bN7MRkDJ2jPrHVYATrMAAjSvKjKEsDIZWm3jlQSXiVuEihggBwywKpzAl/hB0L0U2ZH3nA3u
T397f/72dHMSUX9/pb55evr29E05nwKmz4DBvj3+hKxDk9u3i74o6n+ZnAfdJbastEA1Wstz
ubzIhltknvsXmyYn30vAND3js5jhakmWLeEzb/pFNc+F77AC5N6HxO2ZmFRJKsWxfomqlnLo
VULDla4MVZ5IPdrSg/Jmu5n4mW43Tow4gP5ahJ11wmrgJBBPg53y/gpputChWywdQLBGANyV
mpktNgxH3YQtaSa0PhsUQfRdtgt21IcS00H8GI6+AeLbEMtlBiSSSaG3oSfdB2C34ZJRLMTg
IreG3S6ZVppMKt2Fga/YS4oDOAzANpP1QCe/Qd/rySSaxlLwqOFl0qaisVt42e2uTZGw1A35
s7sNaMsX/oz0OMUEthZzyYLQdpu3UC2lGUjEDlt2Lpm9c/Rv17UQt+HLQ8wohQvTKPkyKfCN
y31T7C0B3wBUYCkWTfqkGBeRIruLSrlvZl8dDpfnnLU34Nrw8vT+fhO9vT5++x3e+x3dMLXH
2g/12gI+QT5eZbufTAmAIO5rrxY/dNv2QTjGGWWXklCskGVcPUD6aYfOw6ggcyOPqcWMk4Yl
Uo5YeMs0o4LdEY2U2zf1PlwiNY3CogQsU6pckqw+rxaeZnAerkM6lAJXFe+34Yq2vePCmGQF
FFfD7eF1uGCe1qhFRNuE81bKc5Qj6f70OW3EqbPsqSoYv5uad6WC66tB5fkyyTWoLogYMRv4
BX4SaJHAr855RmsgU3/Zbg0jLk/jOEvAk45WWYESY4yn2c8/P7zuUk5qFfXTOWA1bL+H9zbs
lFIaA+nS5HC5YP1ayJ3ly68xOZPabmswQwjhC2zC5/5l23eniRCJLBJdDdKsMAYysJDJ+h0y
IQX0pOjaT8EiXM3TPHzabnZufZ/LBzoptUYnZ2IwkrM+s9CM+GJ59Ad3yUNUyuMdd7eHyV1W
rX2b0SYiDzSHBBl7RwykdbQs3yOquYtiAn4v9Vc7d4SF2l5p7n0TBuQV10ARm/yF9Wa3JurP
7uh2NZxtVsGGxuxWwY4qK98twyXZF0AtKfYyUEj+v12uqVHNuaCgVR2EAYEokkuDBZcBAWkg
4TQXZAuNvXx+uA9lFu9TcTTBy3P9EU15YRcchDKiToUedKIVTV7RbGrshuQAVJwHmqClXJ4t
NXV52DXliR8lhEJfstViSS/GFtbvfMPAttGRPiAjCavAnkHUHfGcrBeisqqcvNxCzAcJTPBT
8jQ7/LcHdiyraOP+SBI9+B566yngelD+W3lcHgc6qfCzCowkv0rXidxxoSao+YP/oTfUxnQP
T9dTzicjkUosPMkUMuKTDORWT9ZU1P4ENF9yjlBdat2lnpr28IjuL1R1ztX/vTXpqKxpHTrh
LjRhpgK5Bte3W2pvaTx/YBVzlxqMkUnV4BTXY9yoAh/Ztck/i7ZtGe3EZno/LKT5Kkc6EPdp
66s5s+FtFWoRaQKVbNqaUg2BcjspqnHPoyyYKq18piVEdWSF1Cxo7ozI7iD99TWiKjkwcaKY
tyHSi0iqMlIHtnMh607DMtKijp8rpQLpdhq221X5btF2ZWGxX41k8TZYtdPKNNwTmGKRWHKH
wYCtDZiuarKLjXIW2KKHkbqW7aKLTk3juU81PRS51EKjmjkPPLtk8ljfbtYL3eurhLdLOdWw
NOcpd7fhelqiTcWD5Xa37KpLrftCiMC5lGTWpEKlh69izsNNelAzJrqosd/z7HGpSivTJB5l
rpdSpZhfGMo5wrb5fDuDVwnwpF4wV8ZDosxqMxQ8Dxa33kGok8Mpg0k2E+MOBzwmbw2yvVcq
sVmHwc5PwdoqlJuiwiZM860WR+ZmsCdRC3Gmiyf1j7ePFctyuCjxtbHi+/Vis5SLKT8RuN16
u5qAL/9H2Zc1N47k6v4Vxzyc6I575jYXkaIe+oEiKYklbmZSi+uF4Xa5qxzjsips15nu++sv
kMklF6Q856EW4QNzX4BMJFD26yxTfCnNCC+vDqTxygkCenlALPRp7ASytYvLitk+Df3WYFw3
zoW/OJsrESer7odUSDsOG4dR7Dvkaa3A8zSDCYWeIOB/69hol7Q9emEYDMPM0JcFvJRgLX/W
oZzoWpeFtswXxtMcTqQXVw6p/pY4pVxrlI3jmxS+idQa3UuH54Y6v+zBeKB4OkU+phooC50S
BKO2vLt//cLdbOW/1Td4eKE8xFaKRjyO1zj4zz6PnIWnE+Hv4dX8fHTHgaSLvGRJHlcJhiZu
NS1ooCcoXFs/K/K1kO4VahufdNLwgoJgBhLe6BkftAnFHTdqhsPhF3XUcGD6Q/4B2MZlpjoX
GCl9xYIgkhOZkIKSRCc0Kw+us3eJFDcgZYhnScPhLTUW5uePxDmXePPz7f71/gEvEI2X/J1q
qHOkVlaMprmCdb+7k6ayuKmzEoUf5d+9IFQHBQhjFbpfQe95Ft9/Vf25Li0mTP2W0WeS/Dix
Z7btsToUhfXCdjoK0BjGSvFgfOgRDp3iSWfd2VHEHZasj457IBknkOzx9en+2TRgGRqEB5RN
5L1qACJPfdw/ESEn0BwTEBfS0V0XzSc8Rug9wKENXl9S+oDMlIhnfZZClLElV8WLigRkZ3mz
kJGq7Q/cW9uCQlsYS3mZTSxkhbJzl1VpZrFYlBhj1mTQcEc9iAHJnNIPAJXSdV4UUeeuMlPR
MEsflbmxdE5QfaZloYEJfeANL5eNQVddXv6JiQCFjz5+QUQ4kh2SAlHc1x5y0Cz0Zd/Agk1a
5B2l1Q8c6qWcRJTGmp7qJ8ukH2CWb3LLY9aRI0kqi/3LxOGGOVuer9Zu2Ic+dfH2o7EzsH7E
NtjRNOxDTu11ng63Da2mDPCGFTACP8ojQSPXuMIQs9s8geVOUwcnZ1nKcmYkg/cHtvMPWGLR
m3TV0es0h8hbpabR7j6Gl8CJ+fB4lCVBiMTThrRQJHekpvgnS2r56R8HuA9gdK2m09GdiDgq
VsTVGWNdSz8MFxlyc1FhMbJRL74Qlt2NCwKMaY10wkBoab3VS4aKY73ZaMVaG1kSRdudQNqq
UtU6ZyLy2KsgBGk7msE2PggzgLhMKbJiXCyTh+gF45Z9VPzH4bFfrhkSlSebY/ldY7ExhvGw
TXZZshe1o06OEvjT2JqkodqCf5IzQyUZ6Fe+UJSSkYgniPy8h4ZyoFSZqiPKeHU41h1pl49c
lXyahYQxJyWtMQ96DgND0lI38ogcO3TSj/EDzeKzzvc/N7InHR1RdVUD1dRVGHgJ+rIniwkT
QPf0MyCw6hZ3WtyFkWYLujDhg0+10Xm6IVpPatwwYtoDOkRvDqM6hyqqeQutnjoLZ/bQlzWI
educ7EyEudqCrvakRUEYAjXyS19O2wGrci8LRGFrLoytfz6/P/14fvwLqoJF5O4WCXFh+Kzf
NlpgeIOj6JKF71CeJUeOJolXwcI1ytQrVu4jsSzOSVMofk2uFlot0eDuGsV4S4n4ob3cS/Hz
18vr0/u3729KR8Hevq3Xuda+SGySDUWM5SJrCU+ZTZod+uTR3AA1yQ0UDujf0O/OdQ/tItvc
DfzAUk+Ohr5eUiCedWKZLoOQovVsEUXKxdyARa5LuTsd0L5sPDW5PHK0/gdla6cnnLOSPPID
qMnz80LnhxnRJraDW8T5m0UYwwcrC8tBm1/Z2hDQUDE2ErRVeNaLciTfRg4ILJPjgMMpb2qI
PN2kzJXF4++398fvN3+gg+7BWe0v32FgPP998/j9j8cvaED828D1T1AC0Ivtr2qSaYbRxrhH
Kn3P0mBKvbBwykofYlmZHbXe3melmMESrTYu8nm3JjGZt8LU7n3S3IV3RtlliZ6q+axIWNL9
BQv4C4i0wPObmGn3g8U12SOGf0mJ2Bd4/KZn3MV4oX40tbT6/ZtYu4Z8pV41Vl2x/lkqPFzZ
91NYJWXFIVcXbcDTEWU4VMSyW86JNPibM4ePCKRlsdKaWXB5/IDF0COkSum+vXJf6fAEY4wC
bXCoTtQtPUm4pJTq/mE1g1vuYtb8phenQeLEByZzef82RAoel2vD1Am/EpqiovUi9Zzzf8UD
aEqdBnB+RKZ8izcfIPMX1GEW4xZ23JWJXsdxJuvJYWgU0q/ZAKpPALl/3nPTb4rsbDRkUS6d
vigalcqVU+V52EDUpD3uhfccezYlHeDxTYyVAfT8CNZux6ItI8eV0wTs5HNOXTEgdFYfVHMS
X3D0Sny+q27Lpt/essZ00IS00YPrMIa0EQN/NF2Yt21dNxjIw+5JE7m6Igu9M3mUjymrE30i
cWWJorM7mAboS7Xq2rpQi0R6OtjJqi78UERYcd3B5Dg5k7UzJz8/oU9IeWHEJFC0JU8M1KBc
DRE9UIhXDRuTNiVz/CwpcnSCsOcqo57mAPJTYroUI8u8bVAJbBsi3g0W7SsG77h/v7yacmHX
QMEvD/8iit01vRtEUc/1I+nQuon8cOGor7lU5n5/VDzjm7lI5c+rpGvpFzBYIS2C4ICcJJHv
5OLoGTvf/ee/n4Zdah76U4rAO4RQRgva2vLsYGJKmbcgvdfKLO5JqSxRALlg7Pn+f+TrE0hp
mCC7THYNPtGZdkUwAVg4hxIvVY7I/nGE72VSnPIfpeL69lQo/Uzh8HyiWgBETmBN1ad0AJXD
kioAvRKlUAUjGlhGjg1wLaXPnIUNcZfEiBh6Xhr6PGRhfCQjb3Fs9BahfcLJfcz8pUcNTpkJ
/u5ixZG5BMLamyhB1gxMPhwcmNqMx7gplaPPgZvE0CV4SUNT0MamuDOrKejXAknKbIa7lJEJ
n0Uj45ztaDQ0kuchKKwncEYcKFuJAdeSQyreWemp8cBRnEokhVsOvlZHA3InlMbYOkbZ666P
ky5aLYLYRHBUhg5Nj2x0IgdOV1TwEWFrMi71UGRAqY/Wtx6+cic+nDKMV45PFBD6w1066rsZ
DaOlLYXJs7wiG4s9Gu5cZeJDw7nOUzTR0lteaSDh9kgaISOQZh2PNsELvAjlkxGpANxGzoas
fBOBll+4gSIkTn1Vrv3FtbIORllLqu238WGb4Smct1rQb+kmzuEC/Ernt13g+EThudp5YOsm
NbFDwlzHke0tTso7RP6zP+apThoUSOEFTFxm3r+D6kTdoA9u7UEVOmwPrRIQ2wCpVwsTU7r0
XWlLkOgLKz0is0tL1/HoFld5qO1f5QipjBFYWQDfJYGVp87PGeqg2rZb35lnYbH+kTnInAEI
PQuwJCIXCCAgAJYsQ4/IYx+BBtKQleNveEpSXZtSXbsO3TLcSODap925IYqTspAK1YCRFDyX
yihFfxWspE7YJhZuTkh9nAf7Pi4pGXvk2CxdkNQ2ZokQiLzNlkICfxkwExgNcWPZr9f0FUt2
8oXfSN8WgRvJATokwHNIAPbHmKotALZbbsGwy3eh618bqvm6jFWJXEKajLbiGNs6cIiexXOu
YQTqH3TR0qR+ShYelT+IGq3redcKj8EQYWsy0xSLPDFrOLAiSo2XM25ADkiEPPfa2sQ5PGJa
c8BSjoUXkhNNQJTCMA072G5danlBIHRCIj+OuMQiyYGQXLcRWlGbrcTgg6BC9h7G9Ag/WPQ5
j0/ZZyscC6JhOUBFeuHAamkpEhR3dX1xL5PG1zYrjaNLwmBBpQ+rgNVcZujaMqRlsZlheXW8
l0ufHDLl8urwLJfEvAMq2e1FaQmQJzFcExwAJpdmoF8bTEW5oqcD7NUfFGd1vTirwPMJgYUD
C2IWCYCYRE0SLf2QGHQILDxy0FVdIs5CctaR4RcnxqSDeUh2L0LLqz0MHKArEfMEgZVD1L5q
uBcvqi6bKFhJzdKUmmXAxGl91CVLYN7VgmO0qmSzaYjNNW/9wKMEHAAiJyTqlLcNCxYO9Qkr
wgj2aqqzPVCjQstC7K2W1HtpicOPXNtyS5YREM9ZBvTiDctTRKfmLxYLerWLwigievGcwXpP
hchq2AL0T2KoABL44XJFNcUhSVeO1Rhy5vE+4PlchHabyqHkp7LfWDxZjjxs111dogH3/zJr
COSEaPjhZpuQUcvMXVKDJgPBbyE/jZAAz3XISQxQePKcq8UuWbJYllQRB2RF9JvA1j696bGu
Y0uL65g5hRI206v6TOJ6URrZ9DtQa1X5iOJZRt61ucQ5lpTOBA0XketAFXsOIdIgnVrZgO57
tM7RJerbWJNhVybB9YHblY1ru0aTWa5tVpyBbGRAFlcHDzJQrYQuSJPmYNMJAQ6jkDLJmDg6
16OEzWMXeT7ZmqfIXy59yvZT5ohcQjlCYOWmtlRXns2aXeK51sCcgRRPBIJLj/UCR2ItYKEm
nSSoPGFFqJMAhd5yR6igAslIiJ/V0nQuB1NGM+Y0RDs64wzXZOv2jkuecHBRJpYNMQUBI8h1
OVNft41YVmbtNqvwIcxw/o5KfnzXl+x3R2cez8Tmc+cBqDf28vAwwvjCGd2mqtecI0eabeJD
0fXb+oj+H5v+lDP6Vpv6YhPnLewfMRkxh/oA30uhxxs16gfFOdybFEWd6A+Ota/UgpjtrFSN
htE8olcd7cqwUmoC18oqHXHyi1JjdKTZcdNmtxJgNAVGN+FOQq9UfLComL4VZ8eeMzLQ5q74
rtSjWKR4e2ht9J16ijTEOa6TPu1g66jZRnupoTLMFZznIXD4C+d8NQ9kMJuNT9Ox8lq0CfFR
SFd9uKK7mr2SFFRhjY5kMWgikaLC2CQ7pSOVKIP2XEY7fWqxRJcFNWP5WnlSxdbKDxiQrRK/
Fr9K8l3N76OIr0dUJQqnaojx1zX0lyrTjK2TMiY+QbLGJIqV5DL3fMEgc9BXEBMHqy2uPZFj
LueHPFt0vZeU1PwSbJnkiYobEP/58+Xh/enyYnU0XW6McO9Aka745pmKdOYvSSPYEZS1ET4S
B3dWWvLc4wOaUSXyaJihXZHI57AIcLcnjuoSndPTVbB0yxPltIsnyF/ua5mI1/yKPT5vCGFo
SBIlK3Ml/zJOs5YSunj1+cWiUWZ+6O31mokUxUI/+p4YArWoYp0kaD5RApf0KcGrlLhqJBGJ
qFoQyoDuXQagXR6CIGt4RpotnDq0LWV5Qsl5mIBYrW4PcbvnhpPbRrbHK5qkz2WPIUhgqguR
cWXnvQHr40nrXcGhvmBU6f0QXZwGFdNgxD7F1WeYo7USAR4B3UAYacLZiqO3myDTatiEh5bn
imJQnt1FsKQO6QaYb7paRxoXvDM1CimqfOU7UaOFSY1WzpIgqiGmJ7J6Uk3glPLJ0S7UdGdO
zaqN567Jy7LsM3+q0ejfJBafFIihLxG1MuMFvpzK5I0DNG7aRmRk0K3jlIK0aeJr9gMyql1d
c1oSdEFkzPh2Hzm2dmuroAvVEwEkM1z1alJO5nC+WIZnw8qeQ2Xg0AcVHN3fRTA8KQsh8TFT
Xwytz4HjXC0J+qMb9z348fTwenl8fnx4f728PD283Qh/dfnof1IyVp71JWSxLLcCGy12x5ei
/3k2SlE1yyakdXkfl74fgPjIkljf+IrGXy2M7kRTD9IB5JBgUepjlHuPkXSBhoWuo9pmcJML
Z2kbbQKOQr0sgr6ybSeSIYdWRqiDuTkOQEAeY0npGcOV06PwaulXrrY9jlRTGJgQY8cDBBZt
2Rxh9PBjSlIjEh+0+HYAYNSoa8Ma/UEvfXKCFaUfkJ4qeZ66a0VOvC3PZtcdz1Fg32dAE9xV
8ZY0QeZyVJt/rmV/0RKRkgdGiJEBafi6yxbLwlvoH57KQDuQ00DX2ENP5dWNhMPRNXhBegka
QOUAZ6ZRlR4Qe52ncx+DZg5KXmyjedp6V4IgvEQv4fadZGACsdK2bgzOidQsYVXbnOWV76pi
MX45OeSaE5t9dOle3idAhGA51kWn2ALMDPiS+iCe87ODZrE+c+HZBz/6mPiICs/sIE5tI/V5
mwKiiHY1AVSXojCgExh1qesppIG/iqgaxxX801iSthnaSiya+jMjkkJldpChtqhYQK3NKkvo
2T+3XJ0rTLQPcY3FJQdRXAV+EFi6I2fFyiet0xWe0Fu6MZ0CrL0h+ThPYoE9e0kWjiOWpuHm
mx8lPGyZJGKrcyF2hA8aHbnCZfgBF6oWsMteLaWkX9ApcD3j44yicPFRoTkX6Vta5VEUEA3y
LM3GQVJM1Sujbqw6uvpouAu9idzgJKZBz1ZlDBVfRr4NiuQLRxlqXOgLy4hEhYo871FZVHfa
KkaaHc0sk1hKfK7rYCSLaTptMm0OnzPNFlJCj1HkhB+NRs5FB2tReVa2bE6UGeSMz2qbCU3q
mQlpCuCMsGIb6GGqJVTs9FdLxEBLc8KYShwNDFzodzrxUbW4mjoyeYoJjorBmLSMqitais5k
m5ejSvJxEh7d7gJbkCuxqWgomKY6SJjp2FwSfKxXmTOPkDSv1mmSNenPQbYkPk+Gc4C50Eip
6i7f5PJjglZna/EBsiK7FHlLerFMBp9FWqQUDPE8QdRtBp83I4P2aZuE1z/9dEykT2c6q6s7
S5osru7q66nijV5j+bwEkXS/TqkEZLZz2XzEkovHBFd52qQsr/LwZkdXStT1N4/Zxd8wiYed
86XC98cvT/c3D5fXR8qLivguiUt0EjZ8TislnBHk26IGdfhI8Sqc6LmrA9l/ZlX0IM7Txhik
8+NcWdp+mB8OcmtGCFrclg0MNX83XFia/pinWQ1i/9F8RaZwCI2ozCseeqzaygFu0uNam3BI
USJWIwGkC8gobjCi2+9uKEPpXRXjwThPX0s5zdAzDcsSvNHti5oxDCmg8hyKTLt04kODMFsQ
jYKXafZmxxRHxxhS4CRpzSFQrUWn2xoyxIPggTrVyDCnLdHbKZIhE2P78ctNWSa/MRhYo+uM
6eX2zLJ5en3EwFM3v2AkoxvXXy1+HWMbStdtWMVN3mZpd1RbciBOMXuk1rx/eXh6fr5//Xv2
ifL+8wX+/W+o2svbBf/z5D3Arx9P/33z5+vl5R009TfJL8o4lddpe+RuglhWQL9Ker6Yil0X
89sTKXM8tpCqMbV2ck49kHaEo4RWC9U+HhSYKagZYtDydswv+fn2fvn+9P8eb7rjjaigXgPO
j/5PGvUuVka7NHa5b0jbtJ7YIk9+PWCAy7MVhAxk7U5DV5H8NkIBszhYhrYvOWj5suw8RVXX
sdBSE475VswLQyvm+paCYsQf15LfOfEcL7JhgRpsWsEWmqyqlOZcwKeBJeyEwbi0r+kDW7JY
gBxma5f47Lnyywuz97XDZwnfJI7jWq4+dDbyQFNn8q8PdJc2U5QZswXt8FzNygsie/tHUctC
SOXaljqU6hCvHNK6UZ3Cnhssbdnl3colD1hkpjbyHGMFm0aB77jtxjJ8Szd1oWXVp0oGxxqq
uyCXNWqhklewt8cbWNFvNuNCPG4WXHZ6e79/+XL/+uXml7f798fn56f3x1/nNVteYXFXYN3a
AaGcNooSuG6FraBHUEf/UjcaTlSPywdy6LrOX/akQvFOSfkK5xv5sJqDUZQyX9hQUw3wwGM8
/p8b2BheH9/e0fGq2hSyMNKe93rm40KceCn1mJEXO1dnMi9WFUWLpUcRp5IC6Z/M2kWy+HX2
Fq68GE5EVXvleXS+ZbYi+rmAjvSpc7UZXRm9FuzcBfmubuxqT35SMA4ZbamdeFfUAy5pdBAj
yUwJN0+HfFY0dprjyOYE4zdeaAyvY8bcM2kEzD8aFovUVbaVGRKd41NZnY1SH+IrM0mkFBLd
rL5Pn3vf2icwIuWNnOfNYNPUagAzx6hVuY7CWC+FaFAujkxDtwMJ8T+YVKwBScUcCUi1zWmo
nLc0+1yQqf1sGqW+NuNgRqcqpQgXijeIuXYLrcGqcxeardP5gZYHzho/0AZAmq+xaeUAGTI5
MchLJJPURm8HoFsf10jVoe7fEI43K0cfr1ni6jXFiefLkqLoAhDIPaclqAtXPYhAoO0KLyKf
E8+oZwwNXE5thf+curDrotpYp0QhIkceocmw/FvHJk79SJ8Uovk8coyY661Y0pQzPmHR2zHI
vgK97dtN/P3x9enh/uW3/eX18f7lppunzW8J359AKbMWEsah5zja4KzbYHhloZQGya5vmyLr
pPQDc1cutmnn+45tNg5wYPmMfAsicIzHSW4mZIwlPjYPUeBp80vQeqHMmmmpcrAw1Wbpf748
rTyjFWGCRbQ0Oy2QnjN7usXc1H38v/5XRegStMKkZIWFP7kXTp++Pr3fP8tyzM3l5fnvQTb8
rSkKNVUgmNsPblhQO8cWTFXjUq1txGFEloze5UaPzTd/Xl6FMGOIU/7qfPdJW4Cr9c4zBxNS
7SIowI3lcfgE26UevGmlfYVNqD7dBdGY7ajO0/dsYsSzaFvQli4TbpVk424NwqxvrkZhGGji
dX72AifQDne4/uQRUhcu+OTlFYK7uj0wP9amHEvqztOO/HZZkVWTAVxy+f798iLZof2SVYHj
ee6vH/hXHtdqxy4Hch/H/Jvucnl+w6jsMNQeny8/bl4e/22V3g9leddvxJmNqkUZyhJPfPt6
/+MbmtQZzv/ireSNAn7oLvqRxHKmEhS3/MJ4d9tJyuNxG/dxuzYI/Oh02xzkY1OE2Cnvkl3W
1pKJbyr7yIMffZnj0dg6p6hMo6YNrKVn05E5x7jHoLKkqCwrNujMS8X2JRt8givjDZDNGgNY
XHung1wYC6gHfTjFU8lS95s6lJc+YEWw67SyYrSDuUASsEX/mvhIgsCwEjYMv2M7dN5GocfJ
VS2acz6+PFy+wHiHhfDb4/MP+B86jVbHPXwk/MiDUEdqYAMDywtXfgk+0tEpLB78raLzFXC4
d5O8/NrKJsSUtjRjWvGWqcssVRyvy6xqtdo4tYU6QDguU81R+Pjm6eaX+OeXpwssJs3rBdJ9
u7z+iv5+/3z6+vP1Hi2/OOf8Suk/+EDNu6oPxyw+2Jp75Qb6qEMaxkbekfdKOiP3k47RGtbZ
7//4B5ESRhw9tFmftS35Vm9iRHOypjMmE8e2algx3ihfXr//9gTgTfr4x8+vX59evhqjDT89
fZixZien0jXnxBPITrDSVslwMdPX609Z0rFrjCJoSBrbs9oeEioBcvXhUFGf+iI7wkLLo5fx
6M2MbECRwXFdxNW+z44wXj9skSlmVqP4NyWaXe0OGJh/PoFIv/35hI7k6x/vT7ABjYOZ6nXx
tJPfmBxYk1Xp77C7m+3Q5Ohh8vaAbREQBbqWsbJybTN96YRlUKVg8NYmybeK70yx7J22mzNF
g2U/kW3O+RJaxorLp4EWEjQ/1AQXIB9Sy0tNLCGzzctyG289PYckb0HO6W+z8qDn0iZxi264
dynpcHliKY6p1kq350JPbF0nO+qem7eTCLi0bQ5qMs0QWneQ899+PN//fdPcvzw+GxsIZwWh
ARLLWga9RAZumjnNMgu6ebs1Y5ssv8NXv5s70BK8RZp7Yew75OHn9E2OMcv28M/KV907ESz5
Kopc+lJb4q6qusAIJ85y9TmhY7jN3J/SvC86KG6ZOYFFc5uY93m1TXPW4IPyfeqslqmzINso
LtmhwvCFK805p9S+AG8XwdKiE0x8VX2MsfZV568c17b7C966gFXn3BdJiv+tDue8qqny1W3O
0KHmrq87NB5exXQZa5biH9dxOy+Iln3gd/Qd1/wJ/B2zGqNyHY9n19k4/qL6oFXbmDVr2Gvu
8CXyHBWcLlIb36X5AeZVGS7dlUWvo7gj76Ni1Mmet8mnnRMsK2c4Oyb4qnXdt2sYM6lPcozd
z8LUDdMPWDJ/F3sfsIT+J+es+nqx8JXX6yjxRnFsGZksy/d1v/BPx41LGX5InNyUqLiFAdK6
7Oy4lgQFG3MWfucWGXn7Ji8wHTRxfu5Zt1xak5SZotXxg3HQNTXIuI4XddDD17Pv2kNxh7Mt
CFbL/nR73iqirLbIyt+v2zyVXwXMaU6Isk7PCvD69enLV12MFoZHUMW4Oi+js7Zz8ggbQk9T
NZ9DueY6YBrb9B9c2XsQrFS7Mr7/YQzZXd6gL5+0OaM17zbr11HgHP1+c9LzQs2h6Sp/YbFO
FQ2AIn7fsCgkXwIgD6gt8CePNItsAeUrh7Q5H1HF4RpX73Z5hU7hk9CHmrqOp+M12+XrWLxC
WoYLPUsNp2wwORssVptm4WrTG8isCgPoGdW2c9S24vS4DPQLeG1smQNDTSfrqviYUw/K+bhp
k2ZriCrlmW3IsHF5dYf47hz5wVI6GB8B3HU9L6ABX3ZqNwJlDhPNv+1MpM2aWFGHRwBmcaC2
l4Qs/cCmhRzX9ZnbRqmdIGIhax2T6sJn68qWILxKkWuMQJAJrYObkQEGhcBmbKksPsbb6zIX
7MtZ1fGjj/72kLd7TQIr8vUcNZKvJZvX+++PN3/8/PNPjHGja+ObdZ+UKboundMBGreMvZNJ
0v+HExV+vqJ8lcoPPzHlDVqFFUWrWGoNQFI3d5BKbAB5CY2wLnL1E3bH6LQQINNCQE5ramos
Vd1m+baCNS7NY+oQacyxlp0BYhWzDcghWdrLiusGzy+Tw1rLH9ZYJXAO0ND7/RiCaqai4/7h
HEjNDUVwLD0M9S3Zn9/GyFHEWSg2J1dMyMEJaFNSyy1+dgfCln7YK9Oxp+lP41YdAjGs3NDC
an3zknV6j0BjkaIrQIdjxmKdHUg0d7bJ1aG8UG+ysLO2lm/rBje9NlN7gbmp5k0Ck+VB6rSE
h8h19BvsGR8PRYhPpwFCJ9DmR3WQIUF/sjmSbWa5I04Pxny50Pu9yCKQd6lbUxy8PNiL9oUg
wjpfFFkF4rVtCI58d6zLbw/U0jczbdU5I4jK81IpwfiYVWpD8WNEvZk40d5fAy43FPG5PYgG
ToDuziVfqwpMnSzdXZ/omSBxm1VZCwoTqG1X8um3lBQ0YLY6MFq7RMTYjRQ0t64rVVbDspvT
Wjjg+7uWivIJiJ9u9JGEpD5OkoxyBTXi+ig41nVa165K60B69LXUOxC7YT+1rWV7JYWm9JXf
SdyW+sY50GAvjks8C1TOcBQwObCutk4MdEW7PXeLwGKKASxX4kJgdcUzY31eZqgU1aW1W/H+
2SNvEXHdvIMd6qgPIH7aYx0m5VK3GBtEWVIu4fvX+v7hX89PX7+93/zXDY744X22cZGGhxhJ
ETM2PAGZOwKRojv6gXOrFBfpQlqlajiivmy0gcQurb1FqdKO26238L14oZJH8349V9Cq/XC1
2ZKXM7y4JQscd79RdXhEhNxNNjA/xulKH6Rvakeb5rylmWZ8WGDkrGdQe/dHcIjH1ldLMD9T
NSAeCcKSdRmtFm5/KshgDzMfi3exGqZxxqxvyqQSTC6+iO8BjCKL/qpxkf7SpdrMTnYMjD/J
dixV4CBtwCAxNVEQ0M4TpCKgbkA6+5p56LA1UzZHaKllQbkWmpnWaejKz5WldmqTc1JV8oHJ
B/N9TAMkRPTrKY1frtfRwjOetysTqdaDmQ6ZG/f0YwqsPlSq69dKGYMi7mGemuvSTomZk6dz
6Keuzaptt1PQNlZOTQ6YJNWHmNAwTU27mR+PD2izg98SmgB+Gi/w5JLoNA4m7eGslpmTejk4
GafqU5UT2YFScjl0AK2s0FojK/Z5pdLQFKG902k5/NKJ9WEbtyqtjJO4KHRGbg6v0e4akO2Z
SoQO2NZVK5yUSur4SIU2sFQuK5nRQPgqSXYIyGmf95lWum1WrvM21VtyuyFjOSMESfCTbzWd
/Z3RG6e46Gr60TnCxzw78dN3Sz7bu5afLujJ5gl9r8kxeVIi4VO8brW27055tYu1bt9nFQPV
tqs1epFoYeA4MUt1QlUfa72geCJ6ZahzybSsDyzTB1GBopFOvNvAzqk1Oqj/fHToOZc5Pt2r
N5Q4yfG6gmVAHwrloehyomurLlcJddtle5UEqzn6QC3qVmoaiWgMzybr4uKu0uZ6AxMNFl69
PgO5V08FSRZSbSU5bSqMwpOltgVlZElybXSA4FXxA/+EGfVoc5A+LAmyODeadbgD0YgYcarI
K523y+JSzxGIWcFgqSafJXOOQ9UUB20patU9i09HvOeKGRmmHnEhkvfjgFZLUcZt96m+w4ws
n3e5OYFg9WB0cC2O7mDCagtct2tBmZmCbs8ntBJdW0aVHA+4CfYNo8wI+ZKW52XdGfU751VJ
ux1E9HPW1nrNVYa7FDY5i2kRbz/ugLzfkZHX+e5WDN69R4d6xDY8WXGRogKe9wtxQQ0IL/FK
/qFR2VOTmcorTAKBoTfkB8UzspHECCtZjrIIW/f1Lsl7PIIssuG0dO57xOfn5RIRhDwoSMz6
nbqqAEY05UE4SR4POJEJiyFJMhO9+fb329MDNHFx/zdtAVrVDU/wnGQ5fefXxbtjrRdlaocr
uSj16Ldxus3o9a6DSUmffuCHbQ1NKewvrTywAuLZBH2qhAyHgoeSp+b14bRW2vy07k87i2vm
knQpWoJk0+WJ8lxtpFmidJeP3y+vf7P3p4d/0W/nh68PFYs3GcbBPaiHEEYqu8vbO1rfjda+
qeH3eUyzyzdlXzKytJ/4plz1fkS/xhzY2kD2LTSTQXhFywrFRW6VnfgOJSn+8Euo2BStH0WI
WRlBbN3iflmBPNrvTmg3W20zU8FAxdfweM2/jyvf8QLVLkMADWWRKCDmh0rYW1GSpAx9+aJr
pgY6NWkdB59FLDQ69+boUETPJCpB1CbiyjsbdUG6Y4k9yxmE7yY73iTxKiDfrIj00TOpUZcG
9Gj0UlUqAVEnTH3TMZOp7WtCVWdyAzkKSEuHEY1CvUWTIoO1q4zzQgN4PQOzAZFOu3rj8OjZ
EfRqNazWhJJuCDhqetgbyInrLZgT0U8VRKksJ0ocnNz52DJep17kmM05eMpmC1vcJzEFxFGP
LW3DBRmndkmM/pp0apEEK+UppEhidkKtjVXClZo+XfhjDK1ezHc3he+urL04cIg4Q9qywd/P
/PH89PKvX9xf+e7Wbtc3w3nazxe03SbElptfZlnvV3khFx2AYvCVHhQegq1NXJwTxY34SIWO
NyqPJqz2jEDaX0brK8sD+vZY33X08bToRO5oeJjs5PLbvT59/Wquv7g9b5UzJ5nco3Vva8Fq
WPV3dWdUdsTLjpK+FZZdBrL9Oos7SxbE3Z6CJ7KdqILECSgFuXwzpcBjsBi+MvI2evrxjs8M
327eRUPNA6t6fP/z6fkdHwVwK/qbX7A93+9fvz6+m6Nqark2rlhO38qodeAOmqytCHowecqh
MFVZpzxX0VLAczt9C5gaSveHjLdUGGUDjVHvyBGXw99Vvo4rqn8zWDl7WPfQmxFL2oNkOcAh
wpFTRptwtV3SK5YHSMAocWHkRgMypYEYl1MouxMMDcG9aylnYxPVIgwCg2lpAkRQILbKhRnS
Jn+4IAFVoDWrqBq5ACn1RmlzkM/aGKS/LWZKWuGc+vic46fkJS8roBVL43FVDjTV8Gug13Gn
5aTg2HlnFy0k5DRvYXlBxQyKX27LjgKkSp54YXW/WIJqsgnZVK5udqUpEMNPyKM8dhiKPfVi
8vz0+PIu9WLM7qqk785q/eCH9opi6uy+jbl+Oya5PmxuLj/w3YAcKB4T3eRK/JsTp0p6pfhY
yQN+T084FE1cy2gq/eE8GGfPyeyZI6LcKb97PtWcv0AY0AAeLOx3b6Qmm3jrelG4kKbbTIPa
d9nv3vTgIi+xCZM87/Xzts4N9+Q7yiZusSyTIf9EFrbUrSioRm5r3pqBShZKBqg3jCnOqQW6
rutuwv7xj6kyu7jlR3wY9EyZezJCn6JIHFwJIqunVGv4Qup2dY2Fn32SUyfyiDToHWybVXl7
q6SAwTPLGVBSi8lXgIiA6JHUzFdTQv9vxG0pQrCXUCIa/6o9yMohkspNqHqJR+LuSN3xDAy4
UvaGUzk0cNwelNkn3oLovzGKyMEgasvHTB1MJC3lAJ41Rl5TT8EHhHuAIwfEWJJSjRcilH8M
RvF2+fP9Zvf3j8fXfx5vvv58fHsn7tdGMwTlty5xjVSWNMpgH+iHLi/Uk2JBH2pFng19VELp
rrCLYfGjjK/OUSj5ADQ31zjJ0I8p9VhIQHmbFcolFpJ3qbQwxgVIT9xC81RKmyde0/VF3Ahf
7OMimqRrOaYGrG6gQ5XrvKaJQ5LzliJBrKQurziHkS0SldKNFPgPCD95I/zuq/kgHFsizUwM
mqmAXtI6ol3hc7hdd5WRa7umzlM2h095BxumXrORzgNASnMyLvOi7tvNPlddJ2ybFPaaZJ91
eqDhcVw2wvxJGsGNPArmAdxYxg2+I9JKWbJ8pk0pNNPLHIHRa3pdNnFBcIxDH13P6vkhEVQx
/q0iweZpFjdxeiW5Q7uBEe6rowU10z1+N8iH0pWDBAjxFD5HiVy7i7n2BVEMlWs4xVRPAVUW
zeZcBUH522cYgLSQunWMd7pLYzVoaJZlDdUl8rw2Z3q1VokiFZOPWlCgiAojzqt1WUtrjJB2
kd7tDlWateu6UDr2nMegyVhGJA4/bSFpsvjWwo0XUh2+kdQG1fgMY93N80qDdrFsvz1S1UbA
2iZlk+iV41f3x0y2XRbAUawSql4g5zNEqCwTI/ANmvW1HWXKOD0I1GfquVTLKxKv4z3oyfIx
4JjArfzehNtr9NtStu4QCbTMqBe/LwRKpZjYz5XJzTbi4eiGgJ1yuKZh1qIg6vfrQ6fc8A8p
Hqq8o9KEPxnaKd7JDVcW52nbpJQvLxEX6ZAGjJWqyxVDod0hPmXjkJMu1NiPx8cvN4xHwLrp
Hh++vVyeL1//vnmanteYN3aiqfAyuBc+aDmJV1fWQP63GUzycCkOAebCj3aefZM3sgPzXVvj
A/KhUZiO1OZmPwEwn1Rn6CPQrUtFrB19EWsW0gZOhwYa0ULu5JEIQ6OrjbzQtThefl2zg5+S
RXwtWwONyHFNZCg2A0ZVj92xDXX+wfEDWzfcrGSr3m6f8iKpe8tFXwmSQ1zVVwdtUuzRlwmI
m/uD1Eu7+JghBi2UgX4ndxM/pETsd9VRTvJ8efiXsKj99+X1X/Nonb8wQj4hbcfSPZU8ETJR
BVeLKCAxlgfKiy8NCqyQfKOkIgtFS1Ix0uBSYknSJFs6dDUQUyxSZYz7OuqTxpK1iPlxPe/m
VJJpH5PAkurgKb3URdzR3xDd2ZIEeEI/Dhj82lCuxEfs8vOVCqELmWdHWMgiT3Y1CNR1kU7U
uRxUWtLQh20JdFL6ABQqe7ji+mQ8ZCv5ZsJL3j5+v7w//ni9PFAXy22GliGwliRkkxEfi0R/
fH/7SqbXlGxUU+kUlS9n+RaEIJSkxlJD67x84d7U54NQAUBJf2F/v70/fr+poTO/Pf349eYN
b2D+fHqQLrmFF5vvsFsAmV0SpbCjzxoCFt+9iX3H8pmJCrv718v9l4fLd9t3JM4ZqnPz2+b1
8fHt4f758eb28prf2hL5iFVcKfzf8mxLwMDEfn5uFn/9ZXwzDitAz+f+ttxaIk0IvGoyss+J
xHnqtz/vn6E9rA1G4tIhQQ1SU25M1fPT89OLXpVJqi7y6gxLyEGekNQXk03SfzTeZukDzyQ2
bXY7HdmKnzfbCzC+XJRIAAICAeU4vALpa1AFyli1m5bZGhCUYDOMq4R85ipzogEog61QPiKY
4Sk+njWnmLH8aJqYjPUhAqjOlRdyP3VHc0YBeWyb7K/3B1iQxQynUhTsPIIdGel0wDcshg1V
EtsHuhSiWE9yjFNsT1SPljqQ2y5aLWWXfAOdlYEWQ2sAQPxJRkHJIuqUdWu577Ic1lQdZQd2
BHF2fZhcX8LP4XU71bTInMQrNzkvKOsOhDuWuwvFzT1SN/HeHBU8rwv69CazyvHDpRbPevrQ
6P9xPMkCAPwQYqZKkoLFm/xGMHck4o3VptM4pwi7Co0xk6LaMs1U4t0Sgtx+xGLKwavEAwbb
0O5E+1gaMP2sTqzk7S33IUeoXu0tup5QTkuhLXJ66zfSkYYlLBx7i/Vcm7Gsk0LfzG0lEPTe
MAZA5uVtdnc37Ocfb3yJnQs7PtkEWFLlZuLgRlHAU8nWCTrHq2KcdR6yUTcm8DEa43MHaZLe
oNLlbGWE5VmrXpojioMqL89ReWux0RQlPvMbzrncEtic496LqhJ0CvVmRAGxWpbU6yQr6g4v
XdJMuctTG1hKGHcIW3y9MlkbI6sBlfvy+v3+BSYrCNJP75dXxZR2zO8K2zQW1IB/0hmYkWv8
8uX18vRFukKt0rbOlS1yIPXrHJPBQxFySI9JTRtiLOlzFSxFpfZzWnHEY6XTzfvr/cPTy1dz
bjF5RYEfQj0HNVz0pgGgc4ROBbiLVJUEYnE7hLCtlcvdGSMMWYZjoJ1JUReviaoaCUxk8dJK
u8AHOutow9uJoWTUif9ciC4n0yXegY/G1WbLT/cFzVbajAdzhgbHgGYAYEB8zZYLgkn1IOJO
rEw/l7GyJkd6Gk18g+BJn/NMXHmSLZwpzLyOlnGyO9fetUR0B0lD8UAmyz5n/7+yZ1uKY9f1
V6g8nVO11toZIAQe8tD38Zq+0RcGeOkiZDaZWgFSzFA7OV9/LLndLdvywH5IkZHUvluWZV0c
7NiousEUcX1tsGssr0kyQVWPVcrDERinuQsZ0iLhodAnp58ap5rq66ammprhFhKk7KuTRlvP
tmnLqtlBIypH5XpOUYUJTH7+2PwyrOcnekizln2+OKYJ0RWwXZxSKwmAjtE7zazaVtnkYlHV
5LDqSwEs5Eq0VROapqetqLhn9DYXRUg9ZgCgDGggsaS9I5tIKbI9b1g9kLB71ZLmVMwVCH2p
DiB6/4nkgk6GNThaKdsvQ9YMchEHnRQ4WzDTaNlki4CrWojgFZG1l1yDesRUVWrYEIJ+Rw4m
J7yA0QekvF8J6r0EFzKwp72x8WT5QLSv5qb2hFROWzsgUGwDhALgxcwoOlAIptTLvuoMSQQB
YEYB9qWzWp0XIRuJH79YB01pvbZbZfqe9RS2k+xl7sllWnTD1cIGEJN1/CrqchfCvHBC6NW0
PR1YBbNCDuZUpz14nXLk1VXSQGRJeouYYeCYKCA+0hBT7ziOIMjXAYY3yvPKcD8mxCCLcBuR
kED0SOwDW1uRyDGp6ptJWX13/92IPdXiBjIXotpTYJDuiS8yUixF21VZE3CKdU3jxtkZESqi
8JCLtmN5wNhSJTXuNq/fno8g+q3DAUDvaE0eglZwPnNyLiCvCvtVkIBHkxAQpri3XqSE+wdd
fAgEIxfwMBWW4QQi5bUpj5uE29rqY3BmA5+tyRFgxK6SpqSLzbrBysuf85NjaApxHXQdNdDp
M7nTQ1rACBpMix0pyKaxvAwnxpve5GOWiQwe/CLrK/VHby7NRVNxFTR6yrTA787wVLVolWGi
7HiX0Ee2ClOZOns3QS7K796/07Q9NpqjIeNK/ejA143oJCpNTaY648ECUu44i8FahK2UzIOG
Y8FTQXpu3Cqm6TxQgSRrk6hvfHbPigp4I/jfQ+y6Co8a/yjdGvbLCtaAhRcRIULhDL+GQRBF
UDLGqlLOKk9T5reVW6ZV/wxuu9itL8BQ3odS9k4F4DgfJpH8dJnAgvYlOIgk16OrSP0GrwGi
rKgKa+krCLyrwvPqDUcOekUKtZ+J1W9wAchBsNHzabAbRSIHdULzx7emO2XpHKpldKi689Pj
d1UH0/eO+khNh3uuvSHYEaBt1oRv1zkV+eHb5t8/7vabD07RkbpO+8uCNyyn7U1AtQNJJ8XW
Fc/aSmvlwG8q/uBvQymtIDaToMjTL48mebv2aG4U+cDHbW7ARrlM+UlW7cYT3osH0UoZtkoR
llsCmghOPnmtl0RWRznXjaxBYxfJh2niMBC07Z8wEsZA2l6GbV821FxC/R4yuholQLJbgA2r
JjRek0fyWLRgfwjWMMCXwXU7Aq9kfuD0R944dlFSL/kzLZJMi04t/FbSG6fnQywY2K7nlk2R
WM0y1kkAT+hwwvPaGqTqawj94sc77JYiHfFwhvLpnmY8ymcQk4UfUEX4jvYdWq5RFQeDZ6kH
+C2Luqj5mSqpa438MTOa7e75/PzTxZ+LDxQNwZ9RqDw9MSJBGbjPJ3xgMpPoM5cdyyA5N90l
LRy3lCyST2bfCOazD0Oday3Mwt+Ys7cbQ7NVW5hTL+bTgSq5mHEWyYWn4IuTMx/mwJBfsB7T
Jsmpr8rzz1YvRVvB+hrOPR8sjj/5pkKiFiYKvWf48hc8+JgHn/BgT9s/8eAzewg1gosJTvEX
ni6c+ApcnHo32kTi22arSpwPjV0yQjklIyDBs0wKhTTahwZHSd7RR4EZXnZJ31QMpqmkLMuW
ddOIPOdKy4KEhzdJsrK7Agh5a84tx0qXpuwFL6AbfeZDQmuSrm9WgsaEAkTfpcZLc5zz/tF9
KWBxs1oHQ8uojIU2968v2/1v12MOjh56Tccg2LbqCcFjVp/Bf9BA5DwhZcCygy8aUWb8yRKO
RbLIDkL9JLGfYFQwHiIBm/h4CVGYVQwyj7Qy3jTBqavFZ9muER5FL3crtVDGizzwnE5JTlLE
dgKhjU8912yELzDbxOx3pexjj85j9Q1KO1FgKWUcMl7VJW+ToFJVL2VcFyAQfISFQBREO5Mc
iwan5uWXD//afd0+/et1t3l5fP62+VPlbpvOf+3kPQ819TzN2+LLh993j3d//Hi++/Zz+/TH
7u7fG9mu7bc/wLD5AZbsB7WCV5uXp80PjFO+eYL3r3klk4gvR9un7X5792P7f1YqKwE24rIf
0Wooq9JQmmVRNNR5n4kS4ir2UZeDxGjHC+CIwbRY0hoDpUCY6ms1FEAmbpMvi48fyVqaqMA6
XUSe1TlR6RRfoyzueXIU4EqvVgnxrWefHxUpvIWZXvjzAww/mBrtn4vJWMzmN7OKQW7dalLk
vvz+uX8+un9+2cyJ/4g1KRLLPmUBfZc1wMcuPAliFuiShvkqEvUyafwY96OlEcePAF3Shr6e
zDCWkKgArKZ7WxL4Wr+qa5d6RZ/NdAnA611SeXQFGVPuCHc/GB9rWOrpDqmdq02qLF0cnxd9
7iDKPueBbvU1/nXA+IdZC6gXs9wTEAMtZPVkiG1F4RaW5b2OGgsumXpl169ff2zv//xn8/vo
Hhf5A4SH/e2s7aYNnCJjd3klUcTAWMImbifP++B1/33ztN/e3+03346SJ2yK3I9H/9lCwu/d
7vl+i6j4bn/ntC2KCre7DCxaSokgOP5YV/nNwkrBPW2/TLRW+HofjeeWS4iOP529pyD5n7YU
Q9smnlu4Ve9/Qy+b8E7yAlIXn53ykYQsmvcVJtv6dmlA9P7ihuDqmtWzjCs/uRRXzLQmct7l
cWKEx1MW4GjZDxLBzl1WIbf1IjZlkEZ2LneJGF6SRKEDy5s1U111qLo6Ct3tds3UJ+XMdRO4
bLVcHtgLM9KZHy8hTA+3rSCMYmdmxVAWWne7777hN4J/6ONLAe3yr+VA+Nt3pT4aE409bHZ7
t7ImOjl2q1NgO181RXIrBOBybnJ5WPgbdX3Nns/y427xMRYpX7DCvVl4xpZN5ppHoK8+Vdno
7RdzMG7NFELuNBUV5tB+boqYzxFC8FRbNYMlP2OqlYgTNsSZ5gvLYOGUBkC5stvkhClRIoF1
IvpguZ8Wx1MhXBEcWH7DgZkiCgYGxhthlTGN7rJmcXFgo65rrmZcLAOuqKEU02JXgu/253fT
cUqfLS6TkbChY8RfCfasK0CRGh2uUfYhm01Mc0yBgVeZcjlgmFfrVDDbQiOclwkb7+kFROXK
c+HKRxrx1ofjAS155/spj/2koPrgewI4d/cj9HDtbeeuY4Qe+iw243zM0JMhiZPxK//sprys
vFoGt8y9qQ3yNjh2WYaW+Th2OqLebAkEh3YrTJracJU34Xhk+kZG0xwYPELiL6ZwYV0ScIxh
XXkS55gEvoWj0Z6GmOjhZB3c+BtBeu2IA9Hz48+XzW5nqESmhYNP0a7cRM0ZRtj5KXcw57cH
Jhmfr52CRvMH5UJ59/Tt+fGofH38unk5yjZPmxetvHE5VyuGqG7YgDi6P02YWRGKKMYj6Sgc
H1mKknCSKCAc4N8CQv4l4P1R3zhYuC8PnFJDI3gtw4RtfTf/iaIpuZNsQoM+5JAk4djNWfIi
HG2iTN0lsuSkbfBOr4PYdih2iZQXk2BExhnL3YVnLEgHH0+ZS7WkiCJXVAf4ZeDymxEuL+Pn
F59+eaoEgmjM6Mf1GfFnbI4oTzVXnIBqVHXFxSxj6vSWVArMbBeVJUQnPrQIgNr1YObGVdm9
zq/K7U2hdJuoigeDAZcnbV724Dp6t9/sMLbsbvvwdLd/fdkc3X/f3P+zfXqgHEAZl0ihAeM5
tNMLA292+Y6yVVjW7deXu5ffRy/Pr/vt08b04gzQvJnpeihHMIHgaYRrao8sKUaWUX0zpE1V
WGoxSpInpQdbJt0UU8xCpaKMIWuq7H1Is5pGVRPTJy7IU5EMZV+ERoA39RZCs+hMbmSRAF95
epPVKAuMxpJg1hIV9XW0VMYoTZJaFGBOmYLENHoOCJNVRXLJiM7YdNHizKSYrmsEJrp+ML86
ObZ+TmEcHXguoiS8OTd3BcHw76IjSdCsA0/0X0URCl5zGJnBPyWAPywjGhRahO7FOSKv3tMl
d7ZnwlS9pPtMJdS4bS4LoOD1YsPBcBFYvCkcINQRGaiVngnlSnas8GY43xJqbGeBOfrrWwDb
v0ft7DRiIxSd/2pOyzESCCt86wgO2EgsM7Jbyu3ntKGtjby2IzSM/nZgVhjUqZtDditqFmEI
bHr70ldDvVQw4lCVV4ZESqHwxHruQckKfSj5Fd3E9mcUF9IkRfIHmiJ2mMGdGhCi58ZVkFuO
FUHbVpGQ3OwqkUPd0CCswHgky6IOjAqEoU8NVgZwI/hsiQ1WMWdzK78a4jDsblAPVvY45HgY
YziOm6GTArjBndu1qLrcCJWMxAeCxLVZrmaOMIBlEkGkmqwMut6I5VP3RdCuIKYqPhkamKEx
uhxfEuZf5qYZfZTfwpM1badoLjG2HNPEohZW/OdYFBLCkEpoGpMBqTD1VSYPcZqprY/AwLxr
DI8jfAvXa/kqbpkVniUdvI5WaUzXQVrBXdFOKYPQ8190JSIIPE9UDC7mHKvB/9WQ1SdUr7y1
hjTv26X2QaFEOCPrILffiOOkrgyvV+g2PbomUcaRUMzXcC0nIfTny/Zp/8+RvE8dfXvc7B5c
aw90dloNo/078e1AMJgYsq/ekTIUhthVuRR88umt8rOX4rIXSffldFouKhywW8IpMQsBm9yx
KRgcmT1u45sygDBxfidZ7zBMd+Htj82f++3jKA3ukPRewV/cQVOGmuZtZ4aBL1QfJVakkgnb
SuGHNykhRPE6aFJe/iBUYcdnvsricFChTrkbW1Li42vRg/4KmAhZ+5LbJuj09uV8cXFMbQ9k
aZLNgt93wZsnNPICiQVLKo+BkhQTYyggrHI2Jjz2zPDakWVKiVWF3qOPvxphtR98PwpxC9bJ
uSgNxqEKb+WOBieRQrRF0NEzx8bgKAxVSbM/quGpKzyFrA2svTItu56xTxU4pCvDY5Uigb+l
vHclTpsIUg7CTYhGpSbAyZpDzfmXj78WHBXkk6O3ANVoZafudgY8l5zL22ggEm++vj48WDc1
tH1KrjtIycgaoKhygcw64yyEXrqcbwTUUa1LllshUk4bRKCla8KEDyVoN0sjQYVFAZnf3AFp
Kjnvgc9WQNEov8DW/XhEHBLTTcLUkHxMHAaqbn1Y8Mvw4Zqox03lw8tlC9LD6N7so7LmZ1ps
bd6HmtTYHojwqZbwrB/XojxyR8sqa/w0xjtuanf2Y1x66+srTmafTvORZsp3bn7Kg1XMIrSp
cqsbNz/IjN4OY+2roKVGrVGE7UEoiRE/Yi3iQ1RD1YMLtDESCoEckzMFVGglSS6IVSZYfiKO
ZWUOP3AGdxVVhgUB/PZP4lLF11dPy1DoUf58/8/rT8Ugl3dPD4aqBnKlgiKir2UBnVybbM4n
MJYcqZQ0DftH9rQwIgERKq4sMsWAHJYQKreTAjhLtL6UB4s8XuKKF1V8fZsZEgTRBjfHqjbM
SwkYjqI+mXefQqJM3JOEDq3sczy5qhhAU7RBGG5Sm07traSM7YNYzRpUuUqSWjFdpV8DM5Bp
VRz9z+7n9glMQ3Z/HD2+7je/NvI/m/39X3/99b8kK1KlswNmKBW76Wrqprqa4g9wNw4oAbpg
NxHugH2XXCcO19QBL50NPpFbm3u9VjjJ1Ko12MJ6V3Ozbg23OAXFNloHIHp2JbVb2YjwVqGz
/eSJ72sYSXw50FlOfMMm1ztcMJUC4lGj5t5yd5T/YpYNKQqsZA3mhFKYHBQIjC5v3HLNKcXW
AdF4pU6jtykGCE8etHy8QKCT/64g9lLrHLigcHbElBFoVdZy61GhMH6FUCe29VUkLxHgqhuY
krJ6H4t6Q9DSHJnO06x0kQc7xEZkwPzEAgbOKJS4J65xTFg/ftsErOE44JJL6gGno5sajTbH
QTJFJSE3On3YrB6VLVlWHVhYKy2LDqDGuVGMwzkkTVM1kon9rWR6Wl6Vylk/RM/7cGAur7c/
0PcElLlp/RNC5G0ehCZESZnWzkdECjuMwoxymQsTaGHL6MaIzY1PfPPucpUgKHakfakKRaLG
h82aoF7yNPoenupN7EcOa9EtQeXT2vUodIFyJs4UzT+OJBCjAlcmUOJdzCkEHllvLGA0lqaK
npGqwsjk9Kh8mYIjuMDR0xQ8jc2SPMdT6tsucG6JOMFcyIuTi1NUBI6yo652NPaHXQrFjy/Z
U9n5Ku54dogiGj6Ntb7oAUjixYbzmpFM3rngzAwhBHWs7wJkqH2nk2JEGgpdfw3j9cNTgzrs
zk7Ns4h2cZlc23FPrDFQCjdlt80dhZqqjeobp/iVRHRsbClEowqLvFwhMBSdUsWaRUmwZDE5
/xaPFH1v5+Gm2GvUf/vxEEUnlYvXT9HAU1LndSxR4+nznUasiPkscWpBevJ7IvKqQDZ4oPPA
zLx+TWoEa14rppDwXLys8JLKJ/HGN1U5C0MoOemyCBruaollpaIpIBmSM4cqjM6BTviVmeMy
Q/cqv0ccEBm3UD+ZvI9GgVyC/iWNr9rC3TPyS4CzRUucZy+qO/6AGhHJb5u+to/gNoCAzm/c
f7PYeEqA34du6n2Il1TQ3oD6LzAzISGW+Vx9FeQiKwvDxIxoADDYpRhjC1DzNOUbOFIYLK0y
cdzII1OVV9o0D7LWPZGToMlvtOa7b+mz4fnZMMqkqB6n6R3oV56y4jDzfKBS28fUzh0TinUY
j8AMGDkjaL+TVAx11vkCTI2inmEZE1e9ZDO++CXjJTIP8TXFOs8hRKAtz9ApwC02fLz2eEYQ
ioSLuzHh1V5lCwe/wQO3DPV6gQ+YvJlA7Y8ep0rQcoxVcFkIVl04v0jL+RllQ1vTrM9TTJED
5+aB2Bx9uVZRY6Vszu0ejbbV4q5boHqU+n9p/y8cws0BAA==

--gmtkmckrhqdyo3sn
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--gmtkmckrhqdyo3sn--
