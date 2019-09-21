Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E3280BA276
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Sep 2019 14:08:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02AFB6E094;
	Sun, 22 Sep 2019 12:05:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E091B6E071
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Sep 2019 15:36:13 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Sep 2019 08:36:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,532,1559545200"; 
 d="gz'50?scan'50,208,50";a="212865711"
Received: from xsang-optiplex-9020.sh.intel.com (HELO xsang-OptiPlex-9020)
 ([10.239.159.135])
 by fmsmga004.fm.intel.com with ESMTP; 21 Sep 2019 08:36:10 -0700
Date: Sat, 21 Sep 2019 23:42:04 +0800
From: kbuild test robot <lkp@intel.com>
To: Ramalingam C <ramalingam.c@intel.com>
Message-ID: <20190921154203.GM13091@xsang-OptiPlex-9020>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="S66JdqtemGhvbcZP"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190919180433.12442-1-ramalingam.c@intel.com>
user-agent: NeoMutt/20170113 (1.7.2)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Create dumb buffer from LMEM
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
Reply-To: kbuild test robot <lkp@intel.com>
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>, kbuild-all@01.org,
 Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--S66JdqtemGhvbcZP
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi Ramalingam,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on drm-intel/for-linux-next]
[cannot apply to v5.3 next-20190919]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Ramalingam-C/drm-i915-Create-dumb-buffer-from-LMEM/20190920-020825
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
config: i386-randconfig-f003-201937 (attached as .config)
compiler: gcc-7 (Debian 7.4.0-13) 7.4.0
reproduce:
        # save the attached .config to linux build tree
        make ARCH=i386 
:::::: branch date: 4 hours ago
:::::: commit date: 4 hours ago

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   drivers/gpu//drm/i915/i915_gem.c:162:23: error: 'enum intel_region_id' declared inside parameter list will not be visible outside of this definition or declaration [-Werror]
      u32 *handle_p, enum intel_region_id mem_region)
                          ^~~~~~~~~~~~~~~
   drivers/gpu//drm/i915/i915_gem.c:162:39: error: parameter 5 ('mem_region') has incomplete type
      u32 *handle_p, enum intel_region_id mem_region)
                                          ^~~~~~~~~~
   drivers/gpu//drm/i915/i915_gem.c:159:1: error: function declaration isn't a prototype [-Werror=strict-prototypes]
    i915_gem_create(struct drm_file *file,
    ^~~~~~~~~~~~~~~
   drivers/gpu//drm/i915/i915_gem.c: In function 'i915_gem_create':
   drivers/gpu//drm/i915/i915_gem.c:174:20: error: 'INTEL_MEMORY_LMEM' undeclared (first use in this function); did you mean 'INTEL_GEMINILAKE'?
     if (mem_region == INTEL_MEMORY_LMEM)
                       ^~~~~~~~~~~~~~~~~
                       INTEL_GEMINILAKE
   drivers/gpu//drm/i915/i915_gem.c:174:20: note: each undeclared identifier is reported only once for each function it appears in
   drivers/gpu//drm/i915/i915_gem.c:175:9: error: implicit declaration of function 'i915_gem_object_create_lmem'; did you mean 'i915_gem_object_create_shmem'? [-Werror=implicit-function-declaration]
      obj = i915_gem_object_create_lmem(dev_priv, size, 0);
            ^~~~~~~~~~~~~~~~~~~~~~~~~~~
            i915_gem_object_create_shmem
>> drivers/gpu//drm/i915/i915_gem.c:175:7: error: assignment makes pointer from integer without a cast [-Werror=int-conversion]
      obj = i915_gem_object_create_lmem(dev_priv, size, 0);
          ^
   drivers/gpu//drm/i915/i915_gem.c:176:25: error: 'INTEL_MEMORY_STOLEN' undeclared (first use in this function); did you mean 'INTEL_MEMORY_LMEM'?
     else if (mem_region == INTEL_MEMORY_STOLEN)
                            ^~~~~~~~~~~~~~~~~~~
                            INTEL_MEMORY_LMEM
   drivers/gpu//drm/i915/i915_gem.c: In function 'i915_gem_dumb_create':
   drivers/gpu//drm/i915/i915_gem.c:199:7: error: variable 'mem_region' has initializer but incomplete type
     enum intel_region_id mem_region = INTEL_MEMORY_UKNOWN;
          ^~~~~~~~~~~~~~~
   drivers/gpu//drm/i915/i915_gem.c:199:36: error: 'INTEL_MEMORY_UKNOWN' undeclared (first use in this function); did you mean 'INTEL_DRAM_UNKNOWN'?
     enum intel_region_id mem_region = INTEL_MEMORY_UKNOWN;
                                       ^~~~~~~~~~~~~~~~~~~
                                       INTEL_DRAM_UNKNOWN
   drivers/gpu//drm/i915/i915_gem.c:199:23: error: storage size of 'mem_region' isn't known
     enum intel_region_id mem_region = INTEL_MEMORY_UKNOWN;
                          ^~~~~~~~~~
   drivers/gpu//drm/i915/i915_gem.c:227:6: error: implicit declaration of function 'HAS_LMEM'; did you mean 'HAS_GMCH'? [-Werror=implicit-function-declaration]
     if (HAS_LMEM(to_i915(dev)))
         ^~~~~~~~
         HAS_GMCH
   drivers/gpu//drm/i915/i915_gem.c:228:16: error: 'INTEL_MEMORY_LMEM' undeclared (first use in this function); did you mean 'INTEL_MEMORY_UKNOWN'?
      mem_region = INTEL_MEMORY_LMEM;
                   ^~~~~~~~~~~~~~~~~
                   INTEL_MEMORY_UKNOWN
>> drivers/gpu//drm/i915/i915_gem.c:199:23: error: unused variable 'mem_region' [-Werror=unused-variable]
     enum intel_region_id mem_region = INTEL_MEMORY_UKNOWN;
                          ^~~~~~~~~~
   drivers/gpu//drm/i915/i915_gem.c: In function 'i915_gem_create_ioctl':
   drivers/gpu//drm/i915/i915_gem.c:250:39: error: 'INTEL_MEMORY_UKNOWN' undeclared (first use in this function); did you mean 'INTEL_DRAM_UNKNOWN'?
              &args->size, &args->handle, INTEL_MEMORY_UKNOWN);
                                          ^~~~~~~~~~~~~~~~~~~
                                          INTEL_DRAM_UNKNOWN
   drivers/gpu//drm/i915/i915_gem.c: In function 'i915_gem_dumb_create':
   drivers/gpu//drm/i915/i915_gem.c:232:1: error: control reaches end of non-void function [-Werror=return-type]
    }
    ^
   drivers/gpu//drm/i915/i915_gem.c: In function 'i915_gem_create_ioctl':
   drivers/gpu//drm/i915/i915_gem.c:251:1: error: control reaches end of non-void function [-Werror=return-type]
    }
    ^
   cc1: all warnings being treated as errors

# https://github.com/0day-ci/linux/commit/3b75523cb0b12a5692ef98d5dbe775070204c3cb
git remote add linux-review https://github.com/0day-ci/linux
git remote update linux-review
git checkout 3b75523cb0b12a5692ef98d5dbe775070204c3cb
vim +/mem_region +199 drivers/gpu//drm/i915/i915_gem.c

00731155a73020 Chris Wilson     2014-05-21  157  
ff72145badb834 Dave Airlie      2011-02-07  158  static int
ff72145badb834 Dave Airlie      2011-02-07  159  i915_gem_create(struct drm_file *file,
12d79d78287cdc Tvrtko Ursulin   2016-12-01  160  		struct drm_i915_private *dev_priv,
e163484afa8d6b Michał Winiarski 2019-03-26  161  		u64 *size_p,
3b75523cb0b12a Ramalingam C     2019-09-19  162  		u32 *handle_p, enum intel_region_id mem_region)
673a394b1e3b69 Eric Anholt      2008-07-30  163  {
05394f3975dceb Chris Wilson     2010-11-08  164  	struct drm_i915_gem_object *obj;
a1a2d1d32250f6 Pekka Paalanen   2009-08-23  165  	u32 handle;
e163484afa8d6b Michał Winiarski 2019-03-26  166  	u64 size;
e163484afa8d6b Michał Winiarski 2019-03-26  167  	int ret;
673a394b1e3b69 Eric Anholt      2008-07-30  168  
e163484afa8d6b Michał Winiarski 2019-03-26  169  	size = round_up(*size_p, PAGE_SIZE);
8ffc02468145ac Chris Wilson     2011-09-14  170  	if (size == 0)
8ffc02468145ac Chris Wilson     2011-09-14  171  		return -EINVAL;
673a394b1e3b69 Eric Anholt      2008-07-30  172  
673a394b1e3b69 Eric Anholt      2008-07-30  173  	/* Allocate the new object */
3b75523cb0b12a Ramalingam C     2019-09-19 @174  	if (mem_region == INTEL_MEMORY_LMEM)
3b75523cb0b12a Ramalingam C     2019-09-19 @175  		obj = i915_gem_object_create_lmem(dev_priv, size, 0);
3b75523cb0b12a Ramalingam C     2019-09-19  176  	else if (mem_region == INTEL_MEMORY_STOLEN)
3b75523cb0b12a Ramalingam C     2019-09-19  177  		obj = i915_gem_object_create_stolen(dev_priv, size);
3b75523cb0b12a Ramalingam C     2019-09-19  178  	else
8475355f7a2645 Chris Wilson     2019-05-28  179  		obj = i915_gem_object_create_shmem(dev_priv, size);
fe3db79b0b5019 Chris Wilson     2016-04-25  180  	if (IS_ERR(obj))
fe3db79b0b5019 Chris Wilson     2016-04-25  181  		return PTR_ERR(obj);
673a394b1e3b69 Eric Anholt      2008-07-30  182  
05394f3975dceb Chris Wilson     2010-11-08  183  	ret = drm_gem_handle_create(file, &obj->base, &handle);
202f2fef7a1aa6 Chris Wilson     2010-10-14  184  	/* drop reference from allocate - handle holds it now */
f0cd518206e1a4 Chris Wilson     2016-10-28  185  	i915_gem_object_put(obj);
d861e338765029 Daniel Vetter    2013-07-24  186  	if (ret)
d861e338765029 Daniel Vetter    2013-07-24  187  		return ret;
202f2fef7a1aa6 Chris Wilson     2010-10-14  188  
ff72145badb834 Dave Airlie      2011-02-07  189  	*handle_p = handle;
99534023490686 Chris Wilson     2019-04-17  190  	*size_p = size;
673a394b1e3b69 Eric Anholt      2008-07-30  191  	return 0;
673a394b1e3b69 Eric Anholt      2008-07-30  192  }
673a394b1e3b69 Eric Anholt      2008-07-30  193  
ff72145badb834 Dave Airlie      2011-02-07  194  int
ff72145badb834 Dave Airlie      2011-02-07  195  i915_gem_dumb_create(struct drm_file *file,
ff72145badb834 Dave Airlie      2011-02-07  196  		     struct drm_device *dev,
ff72145badb834 Dave Airlie      2011-02-07  197  		     struct drm_mode_create_dumb *args)
ff72145badb834 Dave Airlie      2011-02-07  198  {
3b75523cb0b12a Ramalingam C     2019-09-19 @199  	enum intel_region_id mem_region = INTEL_MEMORY_UKNOWN;
aa5ca8b7421cdb Ville Syrjälä    2019-05-09  200  	int cpp = DIV_ROUND_UP(args->bpp, 8);
aa5ca8b7421cdb Ville Syrjälä    2019-05-09  201  	u32 format;
aa5ca8b7421cdb Ville Syrjälä    2019-05-09  202  
aa5ca8b7421cdb Ville Syrjälä    2019-05-09  203  	switch (cpp) {
aa5ca8b7421cdb Ville Syrjälä    2019-05-09  204  	case 1:
aa5ca8b7421cdb Ville Syrjälä    2019-05-09  205  		format = DRM_FORMAT_C8;
aa5ca8b7421cdb Ville Syrjälä    2019-05-09  206  		break;
aa5ca8b7421cdb Ville Syrjälä    2019-05-09  207  	case 2:
aa5ca8b7421cdb Ville Syrjälä    2019-05-09  208  		format = DRM_FORMAT_RGB565;
aa5ca8b7421cdb Ville Syrjälä    2019-05-09  209  		break;
aa5ca8b7421cdb Ville Syrjälä    2019-05-09  210  	case 4:
aa5ca8b7421cdb Ville Syrjälä    2019-05-09  211  		format = DRM_FORMAT_XRGB8888;
aa5ca8b7421cdb Ville Syrjälä    2019-05-09  212  		break;
aa5ca8b7421cdb Ville Syrjälä    2019-05-09  213  	default:
aa5ca8b7421cdb Ville Syrjälä    2019-05-09  214  		return -EINVAL;
aa5ca8b7421cdb Ville Syrjälä    2019-05-09  215  	}
aa5ca8b7421cdb Ville Syrjälä    2019-05-09  216  
ff72145badb834 Dave Airlie      2011-02-07  217  	/* have to work out size/pitch and return them */
aa5ca8b7421cdb Ville Syrjälä    2019-05-09  218  	args->pitch = ALIGN(args->width * cpp, 64);
aa5ca8b7421cdb Ville Syrjälä    2019-05-09  219  
aa5ca8b7421cdb Ville Syrjälä    2019-05-09  220  	/* align stride to page size so that we can remap */
aa5ca8b7421cdb Ville Syrjälä    2019-05-09  221  	if (args->pitch > intel_plane_fb_max_stride(to_i915(dev), format,
aa5ca8b7421cdb Ville Syrjälä    2019-05-09  222  						    DRM_FORMAT_MOD_LINEAR))
aa5ca8b7421cdb Ville Syrjälä    2019-05-09  223  		args->pitch = ALIGN(args->pitch, 4096);
aa5ca8b7421cdb Ville Syrjälä    2019-05-09  224  
ff72145badb834 Dave Airlie      2011-02-07  225  	args->size = args->pitch * args->height;
3b75523cb0b12a Ramalingam C     2019-09-19  226  
3b75523cb0b12a Ramalingam C     2019-09-19 @227  	if (HAS_LMEM(to_i915(dev)))
3b75523cb0b12a Ramalingam C     2019-09-19  228  		mem_region = INTEL_MEMORY_LMEM;
3b75523cb0b12a Ramalingam C     2019-09-19  229  
12d79d78287cdc Tvrtko Ursulin   2016-12-01  230  	return i915_gem_create(file, to_i915(dev),
3b75523cb0b12a Ramalingam C     2019-09-19  231  			       &args->size, &args->handle, mem_region);
ff72145badb834 Dave Airlie      2011-02-07  232  }
ff72145badb834 Dave Airlie      2011-02-07  233  

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

--S66JdqtemGhvbcZP
Content-Type: application/gzip; name=".config.gz"
Content-Description: .config.gz
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
EFyxMTssLWWMUWxXqUc+m33/AupUM3JqhAEA

--S66JdqtemGhvbcZP
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--S66JdqtemGhvbcZP--
