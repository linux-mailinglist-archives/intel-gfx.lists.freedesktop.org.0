Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 473BD7C4C8C
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 10:01:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8784910E298;
	Wed, 11 Oct 2023 08:01:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4EEC10E27C
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 08:01:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697011267; x=1728547267;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=5HYR9EmDj0uEqC5cgJoVp4caOwW7LPtQN+7Ju70lz2Q=;
 b=T4wRzv5+9i8rmHjS8GlqIHcSFfT+Cma2q+TYWLRHjHUiAj8IBPcOtuRT
 K9m9abkDiYu9XfHlSRpKFOsTorglGvh6zncaYU4qCqBwYGNL7P7mlNCOV
 a5byY+LTba4uKPW3dU2ZR5sowyt1+eEyO+aKQKJnSNf/5wx/VX8MKUDAK
 oM7wcRIvB75N9CRgFyEsLyKllhm/DwcwZqIuiHp1HJQXlEs4cMtyMFGen
 NTZzCj7nw2Y7Mn5jBaaV+XLTsOfjxqRhvg8AFrznto6e2uwdfN6Ee/18l
 3BmmhQR2sYrTyzMVaJnS7mRJkPI5Qz44VSrG+JcM4lATx5IO5AvRLI/xW A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="383468229"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="383468229"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 01:01:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="819601967"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="819601967"
Received: from lkp-server02.sh.intel.com (HELO f64821696465) ([10.239.97.151])
 by fmsmga008.fm.intel.com with ESMTP; 11 Oct 2023 01:00:53 -0700
Received: from kbuild by f64821696465 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qqU9D-0001xj-2D;
 Wed, 11 Oct 2023 08:00:51 +0000
Date: Wed, 11 Oct 2023 15:59:59 +0800
From: kernel test robot <lkp@intel.com>
To: Shekhar Chauhan <shekhar.chauhan@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202310111502.XJyXwhlX-lkp@intel.com>
References: <20231011045600.2710486-1-shekhar.chauhan@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231011045600.2710486-1-shekhar.chauhan@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add new DG2 PCI IDs
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
Cc: matthew.d.roper@intel.com, oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Shekhar,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Shekhar-Chauhan/drm-i915-Add-new-DG2-PCI-IDs/20231011-125855
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20231011045600.2710486-1-shekhar.chauhan%40intel.com
patch subject: [Intel-gfx] [PATCH] drm/i915: Add new DG2 PCI IDs
config: x86_64-randconfig-073-20231011 (https://download.01.org/0day-ci/archive/20231011/202310111502.XJyXwhlX-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231011/202310111502.XJyXwhlX-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202310111502.XJyXwhlX-lkp@intel.com/

All errors (new ones prefixed by >>):

   In file included from arch/x86/kernel/early-quirks.c:21:
>> include/drm/i915_pciids.h:695:2: error: expected ';' before 'extern'
     695 | h
         |  ^
         |  ;


vim +695 include/drm/i915_pciids.h

    27	
    28	/*
    29	 * A pci_device_id struct {
    30	 *	__u32 vendor, device;
    31	 *      __u32 subvendor, subdevice;
    32	 *	__u32 class, class_mask;
    33	 *	kernel_ulong_t driver_data;
    34	 * };
    35	 * Don't use C99 here because "class" is reserved and we want to
    36	 * give userspace flexibility.
    37	 */
    38	#define INTEL_VGA_DEVICE(id, info) {		\
    39		0x8086,	id,				\
    40		~0, ~0,					\
    41		0x030000, 0xff0000,			\
    42		(unsigned long) info }
    43	
    44	#define INTEL_QUANTA_VGA_DEVICE(info) {		\
    45		0x8086,	0x16a,				\
    46		0x152d,	0x8990,				\
    47		0x030000, 0xff0000,			\
    48		(unsigned long) info }
    49	
    50	#define INTEL_I810_IDS(info)					\
    51		INTEL_VGA_DEVICE(0x7121, info), /* I810 */		\
    52		INTEL_VGA_DEVICE(0x7123, info), /* I810_DC100 */	\
    53		INTEL_VGA_DEVICE(0x7125, info)  /* I810_E */
    54	
    55	#define INTEL_I815_IDS(info)					\
    56		INTEL_VGA_DEVICE(0x1132, info)  /* I815*/
    57	
    58	#define INTEL_I830_IDS(info)				\
    59		INTEL_VGA_DEVICE(0x3577, info)
    60	
    61	#define INTEL_I845G_IDS(info)				\
    62		INTEL_VGA_DEVICE(0x2562, info)
    63	
    64	#define INTEL_I85X_IDS(info)				\
    65		INTEL_VGA_DEVICE(0x3582, info), /* I855_GM */ \
    66		INTEL_VGA_DEVICE(0x358e, info)
    67	
    68	#define INTEL_I865G_IDS(info)				\
    69		INTEL_VGA_DEVICE(0x2572, info) /* I865_G */
    70	
    71	#define INTEL_I915G_IDS(info)				\
    72		INTEL_VGA_DEVICE(0x2582, info), /* I915_G */ \
    73		INTEL_VGA_DEVICE(0x258a, info)  /* E7221_G */
    74	
    75	#define INTEL_I915GM_IDS(info)				\
    76		INTEL_VGA_DEVICE(0x2592, info) /* I915_GM */
    77	
    78	#define INTEL_I945G_IDS(info)				\
    79		INTEL_VGA_DEVICE(0x2772, info) /* I945_G */
    80	
    81	#define INTEL_I945GM_IDS(info)				\
    82		INTEL_VGA_DEVICE(0x27a2, info), /* I945_GM */ \
    83		INTEL_VGA_DEVICE(0x27ae, info)  /* I945_GME */
    84	
    85	#define INTEL_I965G_IDS(info)				\
    86		INTEL_VGA_DEVICE(0x2972, info), /* I946_GZ */	\
    87		INTEL_VGA_DEVICE(0x2982, info),	/* G35_G */	\
    88		INTEL_VGA_DEVICE(0x2992, info),	/* I965_Q */	\
    89		INTEL_VGA_DEVICE(0x29a2, info)	/* I965_G */
    90	
    91	#define INTEL_G33_IDS(info)				\
    92		INTEL_VGA_DEVICE(0x29b2, info), /* Q35_G */ \
    93		INTEL_VGA_DEVICE(0x29c2, info),	/* G33_G */ \
    94		INTEL_VGA_DEVICE(0x29d2, info)	/* Q33_G */
    95	
    96	#define INTEL_I965GM_IDS(info)				\
    97		INTEL_VGA_DEVICE(0x2a02, info),	/* I965_GM */ \
    98		INTEL_VGA_DEVICE(0x2a12, info)  /* I965_GME */
    99	
   100	#define INTEL_GM45_IDS(info)				\
   101		INTEL_VGA_DEVICE(0x2a42, info) /* GM45_G */
   102	
   103	#define INTEL_G45_IDS(info)				\
   104		INTEL_VGA_DEVICE(0x2e02, info), /* IGD_E_G */ \
   105		INTEL_VGA_DEVICE(0x2e12, info), /* Q45_G */ \
   106		INTEL_VGA_DEVICE(0x2e22, info), /* G45_G */ \
   107		INTEL_VGA_DEVICE(0x2e32, info), /* G41_G */ \
   108		INTEL_VGA_DEVICE(0x2e42, info), /* B43_G */ \
   109		INTEL_VGA_DEVICE(0x2e92, info)	/* B43_G.1 */
   110	
   111	#define INTEL_PINEVIEW_G_IDS(info) \
   112		INTEL_VGA_DEVICE(0xa001, info)
   113	
   114	#define INTEL_PINEVIEW_M_IDS(info) \
   115		INTEL_VGA_DEVICE(0xa011, info)
   116	
   117	#define INTEL_IRONLAKE_D_IDS(info) \
   118		INTEL_VGA_DEVICE(0x0042, info)
   119	
   120	#define INTEL_IRONLAKE_M_IDS(info) \
   121		INTEL_VGA_DEVICE(0x0046, info)
   122	
   123	#define INTEL_SNB_D_GT1_IDS(info) \
   124		INTEL_VGA_DEVICE(0x0102, info), \
   125		INTEL_VGA_DEVICE(0x010A, info)
   126	
   127	#define INTEL_SNB_D_GT2_IDS(info) \
   128		INTEL_VGA_DEVICE(0x0112, info), \
   129		INTEL_VGA_DEVICE(0x0122, info)
   130	
   131	#define INTEL_SNB_D_IDS(info) \
   132		INTEL_SNB_D_GT1_IDS(info), \
   133		INTEL_SNB_D_GT2_IDS(info)
   134	
   135	#define INTEL_SNB_M_GT1_IDS(info) \
   136		INTEL_VGA_DEVICE(0x0106, info)
   137	
   138	#define INTEL_SNB_M_GT2_IDS(info) \
   139		INTEL_VGA_DEVICE(0x0116, info), \
   140		INTEL_VGA_DEVICE(0x0126, info)
   141	
   142	#define INTEL_SNB_M_IDS(info) \
   143		INTEL_SNB_M_GT1_IDS(info), \
   144		INTEL_SNB_M_GT2_IDS(info)
   145	
   146	#define INTEL_IVB_M_GT1_IDS(info) \
   147		INTEL_VGA_DEVICE(0x0156, info) /* GT1 mobile */
   148	
   149	#define INTEL_IVB_M_GT2_IDS(info) \
   150		INTEL_VGA_DEVICE(0x0166, info) /* GT2 mobile */
   151	
   152	#define INTEL_IVB_M_IDS(info) \
   153		INTEL_IVB_M_GT1_IDS(info), \
   154		INTEL_IVB_M_GT2_IDS(info)
   155	
   156	#define INTEL_IVB_D_GT1_IDS(info) \
   157		INTEL_VGA_DEVICE(0x0152, info), /* GT1 desktop */ \
   158		INTEL_VGA_DEVICE(0x015a, info)  /* GT1 server */
   159	
   160	#define INTEL_IVB_D_GT2_IDS(info) \
   161		INTEL_VGA_DEVICE(0x0162, info), /* GT2 desktop */ \
   162		INTEL_VGA_DEVICE(0x016a, info)  /* GT2 server */
   163	
   164	#define INTEL_IVB_D_IDS(info) \
   165		INTEL_IVB_D_GT1_IDS(info), \
   166		INTEL_IVB_D_GT2_IDS(info)
   167	
   168	#define INTEL_IVB_Q_IDS(info) \
   169		INTEL_QUANTA_VGA_DEVICE(info) /* Quanta transcode */
   170	
   171	#define INTEL_HSW_ULT_GT1_IDS(info) \
   172		INTEL_VGA_DEVICE(0x0A02, info), /* ULT GT1 desktop */ \
   173		INTEL_VGA_DEVICE(0x0A06, info), /* ULT GT1 mobile */ \
   174		INTEL_VGA_DEVICE(0x0A0A, info), /* ULT GT1 server */ \
   175		INTEL_VGA_DEVICE(0x0A0B, info)  /* ULT GT1 reserved */
   176	
   177	#define INTEL_HSW_ULX_GT1_IDS(info) \
   178		INTEL_VGA_DEVICE(0x0A0E, info) /* ULX GT1 mobile */
   179	
   180	#define INTEL_HSW_GT1_IDS(info) \
   181		INTEL_HSW_ULT_GT1_IDS(info), \
   182		INTEL_HSW_ULX_GT1_IDS(info), \
   183		INTEL_VGA_DEVICE(0x0402, info), /* GT1 desktop */ \
   184		INTEL_VGA_DEVICE(0x0406, info), /* GT1 mobile */ \
   185		INTEL_VGA_DEVICE(0x040A, info), /* GT1 server */ \
   186		INTEL_VGA_DEVICE(0x040B, info), /* GT1 reserved */ \
   187		INTEL_VGA_DEVICE(0x040E, info), /* GT1 reserved */ \
   188		INTEL_VGA_DEVICE(0x0C02, info), /* SDV GT1 desktop */ \
   189		INTEL_VGA_DEVICE(0x0C06, info), /* SDV GT1 mobile */ \
   190		INTEL_VGA_DEVICE(0x0C0A, info), /* SDV GT1 server */ \
   191		INTEL_VGA_DEVICE(0x0C0B, info), /* SDV GT1 reserved */ \
   192		INTEL_VGA_DEVICE(0x0C0E, info), /* SDV GT1 reserved */ \
   193		INTEL_VGA_DEVICE(0x0D02, info), /* CRW GT1 desktop */ \
   194		INTEL_VGA_DEVICE(0x0D06, info), /* CRW GT1 mobile */	\
   195		INTEL_VGA_DEVICE(0x0D0A, info), /* CRW GT1 server */ \
   196		INTEL_VGA_DEVICE(0x0D0B, info), /* CRW GT1 reserved */ \
   197		INTEL_VGA_DEVICE(0x0D0E, info)  /* CRW GT1 reserved */
   198	
   199	#define INTEL_HSW_ULT_GT2_IDS(info) \
   200		INTEL_VGA_DEVICE(0x0A12, info), /* ULT GT2 desktop */ \
   201		INTEL_VGA_DEVICE(0x0A16, info), /* ULT GT2 mobile */	\
   202		INTEL_VGA_DEVICE(0x0A1A, info), /* ULT GT2 server */ \
   203		INTEL_VGA_DEVICE(0x0A1B, info)  /* ULT GT2 reserved */ \
   204	
   205	#define INTEL_HSW_ULX_GT2_IDS(info) \
   206		INTEL_VGA_DEVICE(0x0A1E, info) /* ULX GT2 mobile */ \
   207	
   208	#define INTEL_HSW_GT2_IDS(info) \
   209		INTEL_HSW_ULT_GT2_IDS(info), \
   210		INTEL_HSW_ULX_GT2_IDS(info), \
   211		INTEL_VGA_DEVICE(0x0412, info), /* GT2 desktop */ \
   212		INTEL_VGA_DEVICE(0x0416, info), /* GT2 mobile */ \
   213		INTEL_VGA_DEVICE(0x041A, info), /* GT2 server */ \
   214		INTEL_VGA_DEVICE(0x041B, info), /* GT2 reserved */ \
   215		INTEL_VGA_DEVICE(0x041E, info), /* GT2 reserved */ \
   216		INTEL_VGA_DEVICE(0x0C12, info), /* SDV GT2 desktop */ \
   217		INTEL_VGA_DEVICE(0x0C16, info), /* SDV GT2 mobile */ \
   218		INTEL_VGA_DEVICE(0x0C1A, info), /* SDV GT2 server */ \
   219		INTEL_VGA_DEVICE(0x0C1B, info), /* SDV GT2 reserved */ \
   220		INTEL_VGA_DEVICE(0x0C1E, info), /* SDV GT2 reserved */ \
   221		INTEL_VGA_DEVICE(0x0D12, info), /* CRW GT2 desktop */ \
   222		INTEL_VGA_DEVICE(0x0D16, info), /* CRW GT2 mobile */ \
   223		INTEL_VGA_DEVICE(0x0D1A, info), /* CRW GT2 server */ \
   224		INTEL_VGA_DEVICE(0x0D1B, info), /* CRW GT2 reserved */ \
   225		INTEL_VGA_DEVICE(0x0D1E, info)  /* CRW GT2 reserved */
   226	
   227	#define INTEL_HSW_ULT_GT3_IDS(info) \
   228		INTEL_VGA_DEVICE(0x0A22, info), /* ULT GT3 desktop */ \
   229		INTEL_VGA_DEVICE(0x0A26, info), /* ULT GT3 mobile */ \
   230		INTEL_VGA_DEVICE(0x0A2A, info), /* ULT GT3 server */ \
   231		INTEL_VGA_DEVICE(0x0A2B, info), /* ULT GT3 reserved */ \
   232		INTEL_VGA_DEVICE(0x0A2E, info)  /* ULT GT3 reserved */
   233	
   234	#define INTEL_HSW_GT3_IDS(info) \
   235		INTEL_HSW_ULT_GT3_IDS(info), \
   236		INTEL_VGA_DEVICE(0x0422, info), /* GT3 desktop */ \
   237		INTEL_VGA_DEVICE(0x0426, info), /* GT3 mobile */ \
   238		INTEL_VGA_DEVICE(0x042A, info), /* GT3 server */ \
   239		INTEL_VGA_DEVICE(0x042B, info), /* GT3 reserved */ \
   240		INTEL_VGA_DEVICE(0x042E, info), /* GT3 reserved */ \
   241		INTEL_VGA_DEVICE(0x0C22, info), /* SDV GT3 desktop */ \
   242		INTEL_VGA_DEVICE(0x0C26, info), /* SDV GT3 mobile */ \
   243		INTEL_VGA_DEVICE(0x0C2A, info), /* SDV GT3 server */ \
   244		INTEL_VGA_DEVICE(0x0C2B, info), /* SDV GT3 reserved */ \
   245		INTEL_VGA_DEVICE(0x0C2E, info), /* SDV GT3 reserved */ \
   246		INTEL_VGA_DEVICE(0x0D22, info), /* CRW GT3 desktop */ \
   247		INTEL_VGA_DEVICE(0x0D26, info), /* CRW GT3 mobile */ \
   248		INTEL_VGA_DEVICE(0x0D2A, info), /* CRW GT3 server */ \
   249		INTEL_VGA_DEVICE(0x0D2B, info), /* CRW GT3 reserved */ \
   250		INTEL_VGA_DEVICE(0x0D2E, info)  /* CRW GT3 reserved */
   251	
   252	#define INTEL_HSW_IDS(info) \
   253		INTEL_HSW_GT1_IDS(info), \
   254		INTEL_HSW_GT2_IDS(info), \
   255		INTEL_HSW_GT3_IDS(info)
   256	
   257	#define INTEL_VLV_IDS(info) \
   258		INTEL_VGA_DEVICE(0x0f30, info), \
   259		INTEL_VGA_DEVICE(0x0f31, info), \
   260		INTEL_VGA_DEVICE(0x0f32, info), \
   261		INTEL_VGA_DEVICE(0x0f33, info)
   262	
   263	#define INTEL_BDW_ULT_GT1_IDS(info) \
   264		INTEL_VGA_DEVICE(0x1606, info), /* GT1 ULT */ \
   265		INTEL_VGA_DEVICE(0x160B, info)  /* GT1 Iris */
   266	
   267	#define INTEL_BDW_ULX_GT1_IDS(info) \
   268		INTEL_VGA_DEVICE(0x160E, info) /* GT1 ULX */
   269	
   270	#define INTEL_BDW_GT1_IDS(info) \
   271		INTEL_BDW_ULT_GT1_IDS(info), \
   272		INTEL_BDW_ULX_GT1_IDS(info), \
   273		INTEL_VGA_DEVICE(0x1602, info), /* GT1 ULT */ \
   274		INTEL_VGA_DEVICE(0x160A, info), /* GT1 Server */ \
   275		INTEL_VGA_DEVICE(0x160D, info)  /* GT1 Workstation */
   276	
   277	#define INTEL_BDW_ULT_GT2_IDS(info) \
   278		INTEL_VGA_DEVICE(0x1616, info), /* GT2 ULT */ \
   279		INTEL_VGA_DEVICE(0x161B, info)  /* GT2 ULT */
   280	
   281	#define INTEL_BDW_ULX_GT2_IDS(info) \
   282		INTEL_VGA_DEVICE(0x161E, info) /* GT2 ULX */
   283	
   284	#define INTEL_BDW_GT2_IDS(info) \
   285		INTEL_BDW_ULT_GT2_IDS(info), \
   286		INTEL_BDW_ULX_GT2_IDS(info), \
   287		INTEL_VGA_DEVICE(0x1612, info), /* GT2 Halo */	\
   288		INTEL_VGA_DEVICE(0x161A, info), /* GT2 Server */ \
   289		INTEL_VGA_DEVICE(0x161D, info)  /* GT2 Workstation */
   290	
   291	#define INTEL_BDW_ULT_GT3_IDS(info) \
   292		INTEL_VGA_DEVICE(0x1626, info), /* ULT */ \
   293		INTEL_VGA_DEVICE(0x162B, info)  /* Iris */ \
   294	
   295	#define INTEL_BDW_ULX_GT3_IDS(info) \
   296		INTEL_VGA_DEVICE(0x162E, info)  /* ULX */
   297	
   298	#define INTEL_BDW_GT3_IDS(info) \
   299		INTEL_BDW_ULT_GT3_IDS(info), \
   300		INTEL_BDW_ULX_GT3_IDS(info), \
   301		INTEL_VGA_DEVICE(0x1622, info), /* ULT */ \
   302		INTEL_VGA_DEVICE(0x162A, info), /* Server */ \
   303		INTEL_VGA_DEVICE(0x162D, info)  /* Workstation */
   304	
   305	#define INTEL_BDW_ULT_RSVD_IDS(info) \
   306		INTEL_VGA_DEVICE(0x1636, info), /* ULT */ \
   307		INTEL_VGA_DEVICE(0x163B, info)  /* Iris */
   308	
   309	#define INTEL_BDW_ULX_RSVD_IDS(info) \
   310		INTEL_VGA_DEVICE(0x163E, info) /* ULX */
   311	
   312	#define INTEL_BDW_RSVD_IDS(info) \
   313		INTEL_BDW_ULT_RSVD_IDS(info), \
   314		INTEL_BDW_ULX_RSVD_IDS(info), \
   315		INTEL_VGA_DEVICE(0x1632, info), /* ULT */ \
   316		INTEL_VGA_DEVICE(0x163A, info), /* Server */ \
   317		INTEL_VGA_DEVICE(0x163D, info)  /* Workstation */
   318	
   319	#define INTEL_BDW_IDS(info) \
   320		INTEL_BDW_GT1_IDS(info), \
   321		INTEL_BDW_GT2_IDS(info), \
   322		INTEL_BDW_GT3_IDS(info), \
   323		INTEL_BDW_RSVD_IDS(info)
   324	
   325	#define INTEL_CHV_IDS(info) \
   326		INTEL_VGA_DEVICE(0x22b0, info), \
   327		INTEL_VGA_DEVICE(0x22b1, info), \
   328		INTEL_VGA_DEVICE(0x22b2, info), \
   329		INTEL_VGA_DEVICE(0x22b3, info)
   330	
   331	#define INTEL_SKL_ULT_GT1_IDS(info) \
   332		INTEL_VGA_DEVICE(0x1906, info), /* ULT GT1 */ \
   333		INTEL_VGA_DEVICE(0x1913, info)  /* ULT GT1.5 */
   334	
   335	#define INTEL_SKL_ULX_GT1_IDS(info) \
   336		INTEL_VGA_DEVICE(0x190E, info), /* ULX GT1 */ \
   337		INTEL_VGA_DEVICE(0x1915, info)  /* ULX GT1.5 */
   338	
   339	#define INTEL_SKL_GT1_IDS(info)	\
   340		INTEL_SKL_ULT_GT1_IDS(info), \
   341		INTEL_SKL_ULX_GT1_IDS(info), \
   342		INTEL_VGA_DEVICE(0x1902, info), /* DT  GT1 */ \
   343		INTEL_VGA_DEVICE(0x190A, info), /* SRV GT1 */ \
   344		INTEL_VGA_DEVICE(0x190B, info), /* Halo GT1 */ \
   345		INTEL_VGA_DEVICE(0x1917, info)  /* DT  GT1.5 */
   346	
   347	#define INTEL_SKL_ULT_GT2_IDS(info) \
   348		INTEL_VGA_DEVICE(0x1916, info), /* ULT GT2 */ \
   349		INTEL_VGA_DEVICE(0x1921, info)  /* ULT GT2F */
   350	
   351	#define INTEL_SKL_ULX_GT2_IDS(info) \
   352		INTEL_VGA_DEVICE(0x191E, info) /* ULX GT2 */
   353	
   354	#define INTEL_SKL_GT2_IDS(info)	\
   355		INTEL_SKL_ULT_GT2_IDS(info), \
   356		INTEL_SKL_ULX_GT2_IDS(info), \
   357		INTEL_VGA_DEVICE(0x1912, info), /* DT  GT2 */ \
   358		INTEL_VGA_DEVICE(0x191A, info), /* SRV GT2 */ \
   359		INTEL_VGA_DEVICE(0x191B, info), /* Halo GT2 */ \
   360		INTEL_VGA_DEVICE(0x191D, info)  /* WKS GT2 */
   361	
   362	#define INTEL_SKL_ULT_GT3_IDS(info) \
   363		INTEL_VGA_DEVICE(0x1923, info), /* ULT GT3 */ \
   364		INTEL_VGA_DEVICE(0x1926, info), /* ULT GT3e */ \
   365		INTEL_VGA_DEVICE(0x1927, info)  /* ULT GT3e */
   366	
   367	#define INTEL_SKL_GT3_IDS(info) \
   368		INTEL_SKL_ULT_GT3_IDS(info), \
   369		INTEL_VGA_DEVICE(0x192A, info), /* SRV GT3 */ \
   370		INTEL_VGA_DEVICE(0x192B, info), /* Halo GT3e */ \
   371		INTEL_VGA_DEVICE(0x192D, info)  /* SRV GT3e */
   372	
   373	#define INTEL_SKL_GT4_IDS(info) \
   374		INTEL_VGA_DEVICE(0x1932, info), /* DT GT4 */ \
   375		INTEL_VGA_DEVICE(0x193A, info), /* SRV GT4e */ \
   376		INTEL_VGA_DEVICE(0x193B, info), /* Halo GT4e */ \
   377		INTEL_VGA_DEVICE(0x193D, info) /* WKS GT4e */
   378	
   379	#define INTEL_SKL_IDS(info)	 \
   380		INTEL_SKL_GT1_IDS(info), \
   381		INTEL_SKL_GT2_IDS(info), \
   382		INTEL_SKL_GT3_IDS(info), \
   383		INTEL_SKL_GT4_IDS(info)
   384	
   385	#define INTEL_BXT_IDS(info) \
   386		INTEL_VGA_DEVICE(0x0A84, info), \
   387		INTEL_VGA_DEVICE(0x1A84, info), \
   388		INTEL_VGA_DEVICE(0x1A85, info), \
   389		INTEL_VGA_DEVICE(0x5A84, info), /* APL HD Graphics 505 */ \
   390		INTEL_VGA_DEVICE(0x5A85, info)  /* APL HD Graphics 500 */
   391	
   392	#define INTEL_GLK_IDS(info) \
   393		INTEL_VGA_DEVICE(0x3184, info), \
   394		INTEL_VGA_DEVICE(0x3185, info)
   395	
   396	#define INTEL_KBL_ULT_GT1_IDS(info) \
   397		INTEL_VGA_DEVICE(0x5906, info), /* ULT GT1 */ \
   398		INTEL_VGA_DEVICE(0x5913, info)  /* ULT GT1.5 */
   399	
   400	#define INTEL_KBL_ULX_GT1_IDS(info) \
   401		INTEL_VGA_DEVICE(0x590E, info), /* ULX GT1 */ \
   402		INTEL_VGA_DEVICE(0x5915, info)  /* ULX GT1.5 */
   403	
   404	#define INTEL_KBL_GT1_IDS(info)	\
   405		INTEL_KBL_ULT_GT1_IDS(info), \
   406		INTEL_KBL_ULX_GT1_IDS(info), \
   407		INTEL_VGA_DEVICE(0x5902, info), /* DT  GT1 */ \
   408		INTEL_VGA_DEVICE(0x5908, info), /* Halo GT1 */ \
   409		INTEL_VGA_DEVICE(0x590A, info), /* SRV GT1 */ \
   410		INTEL_VGA_DEVICE(0x590B, info) /* Halo GT1 */
   411	
   412	#define INTEL_KBL_ULT_GT2_IDS(info) \
   413		INTEL_VGA_DEVICE(0x5916, info), /* ULT GT2 */ \
   414		INTEL_VGA_DEVICE(0x5921, info)  /* ULT GT2F */
   415	
   416	#define INTEL_KBL_ULX_GT2_IDS(info) \
   417		INTEL_VGA_DEVICE(0x591E, info)  /* ULX GT2 */
   418	
   419	#define INTEL_KBL_GT2_IDS(info)	\
   420		INTEL_KBL_ULT_GT2_IDS(info), \
   421		INTEL_KBL_ULX_GT2_IDS(info), \
   422		INTEL_VGA_DEVICE(0x5912, info), /* DT  GT2 */ \
   423		INTEL_VGA_DEVICE(0x5917, info), /* Mobile GT2 */ \
   424		INTEL_VGA_DEVICE(0x591A, info), /* SRV GT2 */ \
   425		INTEL_VGA_DEVICE(0x591B, info), /* Halo GT2 */ \
   426		INTEL_VGA_DEVICE(0x591D, info) /* WKS GT2 */
   427	
   428	#define INTEL_KBL_ULT_GT3_IDS(info) \
   429		INTEL_VGA_DEVICE(0x5926, info) /* ULT GT3 */
   430	
   431	#define INTEL_KBL_GT3_IDS(info) \
   432		INTEL_KBL_ULT_GT3_IDS(info), \
   433		INTEL_VGA_DEVICE(0x5923, info), /* ULT GT3 */ \
   434		INTEL_VGA_DEVICE(0x5927, info) /* ULT GT3 */
   435	
   436	#define INTEL_KBL_GT4_IDS(info) \
   437		INTEL_VGA_DEVICE(0x593B, info) /* Halo GT4 */
   438	
   439	/* AML/KBL Y GT2 */
   440	#define INTEL_AML_KBL_GT2_IDS(info) \
   441		INTEL_VGA_DEVICE(0x591C, info),  /* ULX GT2 */ \
   442		INTEL_VGA_DEVICE(0x87C0, info) /* ULX GT2 */
   443	
   444	/* AML/CFL Y GT2 */
   445	#define INTEL_AML_CFL_GT2_IDS(info) \
   446		INTEL_VGA_DEVICE(0x87CA, info)
   447	
   448	/* CML GT1 */
   449	#define INTEL_CML_GT1_IDS(info)	\
   450		INTEL_VGA_DEVICE(0x9BA2, info), \
   451		INTEL_VGA_DEVICE(0x9BA4, info), \
   452		INTEL_VGA_DEVICE(0x9BA5, info), \
   453		INTEL_VGA_DEVICE(0x9BA8, info)
   454	
   455	#define INTEL_CML_U_GT1_IDS(info) \
   456		INTEL_VGA_DEVICE(0x9B21, info), \
   457		INTEL_VGA_DEVICE(0x9BAA, info), \
   458		INTEL_VGA_DEVICE(0x9BAC, info)
   459	
   460	/* CML GT2 */
   461	#define INTEL_CML_GT2_IDS(info)	\
   462		INTEL_VGA_DEVICE(0x9BC2, info), \
   463		INTEL_VGA_DEVICE(0x9BC4, info), \
   464		INTEL_VGA_DEVICE(0x9BC5, info), \
   465		INTEL_VGA_DEVICE(0x9BC6, info), \
   466		INTEL_VGA_DEVICE(0x9BC8, info), \
   467		INTEL_VGA_DEVICE(0x9BE6, info), \
   468		INTEL_VGA_DEVICE(0x9BF6, info)
   469	
   470	#define INTEL_CML_U_GT2_IDS(info) \
   471		INTEL_VGA_DEVICE(0x9B41, info), \
   472		INTEL_VGA_DEVICE(0x9BCA, info), \
   473		INTEL_VGA_DEVICE(0x9BCC, info)
   474	
   475	#define INTEL_KBL_IDS(info) \
   476		INTEL_KBL_GT1_IDS(info), \
   477		INTEL_KBL_GT2_IDS(info), \
   478		INTEL_KBL_GT3_IDS(info), \
   479		INTEL_KBL_GT4_IDS(info), \
   480		INTEL_AML_KBL_GT2_IDS(info)
   481	
   482	/* CFL S */
   483	#define INTEL_CFL_S_GT1_IDS(info) \
   484		INTEL_VGA_DEVICE(0x3E90, info), /* SRV GT1 */ \
   485		INTEL_VGA_DEVICE(0x3E93, info), /* SRV GT1 */ \
   486		INTEL_VGA_DEVICE(0x3E99, info)  /* SRV GT1 */
   487	
   488	#define INTEL_CFL_S_GT2_IDS(info) \
   489		INTEL_VGA_DEVICE(0x3E91, info), /* SRV GT2 */ \
   490		INTEL_VGA_DEVICE(0x3E92, info), /* SRV GT2 */ \
   491		INTEL_VGA_DEVICE(0x3E96, info), /* SRV GT2 */ \
   492		INTEL_VGA_DEVICE(0x3E98, info), /* SRV GT2 */ \
   493		INTEL_VGA_DEVICE(0x3E9A, info)  /* SRV GT2 */
   494	
   495	/* CFL H */
   496	#define INTEL_CFL_H_GT1_IDS(info) \
   497		INTEL_VGA_DEVICE(0x3E9C, info)
   498	
   499	#define INTEL_CFL_H_GT2_IDS(info) \
   500		INTEL_VGA_DEVICE(0x3E94, info),  /* Halo GT2 */ \
   501		INTEL_VGA_DEVICE(0x3E9B, info) /* Halo GT2 */
   502	
   503	/* CFL U GT2 */
   504	#define INTEL_CFL_U_GT2_IDS(info) \
   505		INTEL_VGA_DEVICE(0x3EA9, info)
   506	
   507	/* CFL U GT3 */
   508	#define INTEL_CFL_U_GT3_IDS(info) \
   509		INTEL_VGA_DEVICE(0x3EA5, info), /* ULT GT3 */ \
   510		INTEL_VGA_DEVICE(0x3EA6, info), /* ULT GT3 */ \
   511		INTEL_VGA_DEVICE(0x3EA7, info), /* ULT GT3 */ \
   512		INTEL_VGA_DEVICE(0x3EA8, info)  /* ULT GT3 */
   513	
   514	/* WHL/CFL U GT1 */
   515	#define INTEL_WHL_U_GT1_IDS(info) \
   516		INTEL_VGA_DEVICE(0x3EA1, info), \
   517		INTEL_VGA_DEVICE(0x3EA4, info)
   518	
   519	/* WHL/CFL U GT2 */
   520	#define INTEL_WHL_U_GT2_IDS(info) \
   521		INTEL_VGA_DEVICE(0x3EA0, info), \
   522		INTEL_VGA_DEVICE(0x3EA3, info)
   523	
   524	/* WHL/CFL U GT3 */
   525	#define INTEL_WHL_U_GT3_IDS(info) \
   526		INTEL_VGA_DEVICE(0x3EA2, info)
   527	
   528	#define INTEL_CFL_IDS(info)	   \
   529		INTEL_CFL_S_GT1_IDS(info), \
   530		INTEL_CFL_S_GT2_IDS(info), \
   531		INTEL_CFL_H_GT1_IDS(info), \
   532		INTEL_CFL_H_GT2_IDS(info), \
   533		INTEL_CFL_U_GT2_IDS(info), \
   534		INTEL_CFL_U_GT3_IDS(info), \
   535		INTEL_WHL_U_GT1_IDS(info), \
   536		INTEL_WHL_U_GT2_IDS(info), \
   537		INTEL_WHL_U_GT3_IDS(info), \
   538		INTEL_AML_CFL_GT2_IDS(info), \
   539		INTEL_CML_GT1_IDS(info), \
   540		INTEL_CML_GT2_IDS(info), \
   541		INTEL_CML_U_GT1_IDS(info), \
   542		INTEL_CML_U_GT2_IDS(info)
   543	
   544	/* CNL */
   545	#define INTEL_CNL_PORT_F_IDS(info) \
   546		INTEL_VGA_DEVICE(0x5A44, info), \
   547		INTEL_VGA_DEVICE(0x5A4C, info), \
   548		INTEL_VGA_DEVICE(0x5A54, info), \
   549		INTEL_VGA_DEVICE(0x5A5C, info)
   550	
   551	#define INTEL_CNL_IDS(info) \
   552		INTEL_CNL_PORT_F_IDS(info), \
   553		INTEL_VGA_DEVICE(0x5A40, info), \
   554		INTEL_VGA_DEVICE(0x5A41, info), \
   555		INTEL_VGA_DEVICE(0x5A42, info), \
   556		INTEL_VGA_DEVICE(0x5A49, info), \
   557		INTEL_VGA_DEVICE(0x5A4A, info), \
   558		INTEL_VGA_DEVICE(0x5A50, info), \
   559		INTEL_VGA_DEVICE(0x5A51, info), \
   560		INTEL_VGA_DEVICE(0x5A52, info), \
   561		INTEL_VGA_DEVICE(0x5A59, info), \
   562		INTEL_VGA_DEVICE(0x5A5A, info)
   563	
   564	/* ICL */
   565	#define INTEL_ICL_PORT_F_IDS(info) \
   566		INTEL_VGA_DEVICE(0x8A50, info), \
   567		INTEL_VGA_DEVICE(0x8A52, info), \
   568		INTEL_VGA_DEVICE(0x8A53, info), \
   569		INTEL_VGA_DEVICE(0x8A54, info), \
   570		INTEL_VGA_DEVICE(0x8A56, info), \
   571		INTEL_VGA_DEVICE(0x8A57, info), \
   572		INTEL_VGA_DEVICE(0x8A58, info),	\
   573		INTEL_VGA_DEVICE(0x8A59, info),	\
   574		INTEL_VGA_DEVICE(0x8A5A, info), \
   575		INTEL_VGA_DEVICE(0x8A5B, info), \
   576		INTEL_VGA_DEVICE(0x8A5C, info), \
   577		INTEL_VGA_DEVICE(0x8A70, info), \
   578		INTEL_VGA_DEVICE(0x8A71, info)
   579	
   580	#define INTEL_ICL_11_IDS(info) \
   581		INTEL_ICL_PORT_F_IDS(info), \
   582		INTEL_VGA_DEVICE(0x8A51, info), \
   583		INTEL_VGA_DEVICE(0x8A5D, info)
   584	
   585	/* EHL */
   586	#define INTEL_EHL_IDS(info) \
   587		INTEL_VGA_DEVICE(0x4541, info), \
   588		INTEL_VGA_DEVICE(0x4551, info), \
   589		INTEL_VGA_DEVICE(0x4555, info), \
   590		INTEL_VGA_DEVICE(0x4557, info), \
   591		INTEL_VGA_DEVICE(0x4570, info), \
   592		INTEL_VGA_DEVICE(0x4571, info)
   593	
   594	/* JSL */
   595	#define INTEL_JSL_IDS(info) \
   596		INTEL_VGA_DEVICE(0x4E51, info), \
   597		INTEL_VGA_DEVICE(0x4E55, info), \
   598		INTEL_VGA_DEVICE(0x4E57, info), \
   599		INTEL_VGA_DEVICE(0x4E61, info), \
   600		INTEL_VGA_DEVICE(0x4E71, info)
   601	
   602	/* TGL */
   603	#define INTEL_TGL_12_GT1_IDS(info) \
   604		INTEL_VGA_DEVICE(0x9A60, info), \
   605		INTEL_VGA_DEVICE(0x9A68, info), \
   606		INTEL_VGA_DEVICE(0x9A70, info)
   607	
   608	#define INTEL_TGL_12_GT2_IDS(info) \
   609		INTEL_VGA_DEVICE(0x9A40, info), \
   610		INTEL_VGA_DEVICE(0x9A49, info), \
   611		INTEL_VGA_DEVICE(0x9A59, info), \
   612		INTEL_VGA_DEVICE(0x9A78, info), \
   613		INTEL_VGA_DEVICE(0x9AC0, info), \
   614		INTEL_VGA_DEVICE(0x9AC9, info), \
   615		INTEL_VGA_DEVICE(0x9AD9, info), \
   616		INTEL_VGA_DEVICE(0x9AF8, info)
   617	
   618	#define INTEL_TGL_12_IDS(info) \
   619		INTEL_TGL_12_GT1_IDS(info), \
   620		INTEL_TGL_12_GT2_IDS(info)
   621	
   622	/* RKL */
   623	#define INTEL_RKL_IDS(info) \
   624		INTEL_VGA_DEVICE(0x4C80, info), \
   625		INTEL_VGA_DEVICE(0x4C8A, info), \
   626		INTEL_VGA_DEVICE(0x4C8B, info), \
   627		INTEL_VGA_DEVICE(0x4C8C, info), \
   628		INTEL_VGA_DEVICE(0x4C90, info), \
   629		INTEL_VGA_DEVICE(0x4C9A, info)
   630	
   631	/* DG1 */
   632	#define INTEL_DG1_IDS(info) \
   633		INTEL_VGA_DEVICE(0x4905, info), \
   634		INTEL_VGA_DEVICE(0x4906, info), \
   635		INTEL_VGA_DEVICE(0x4907, info), \
   636		INTEL_VGA_DEVICE(0x4908, info), \
   637		INTEL_VGA_DEVICE(0x4909, info)
   638	
   639	/* ADL-S */
   640	#define INTEL_ADLS_IDS(info) \
   641		INTEL_VGA_DEVICE(0x4680, info), \
   642		INTEL_VGA_DEVICE(0x4682, info), \
   643		INTEL_VGA_DEVICE(0x4688, info), \
   644		INTEL_VGA_DEVICE(0x468A, info), \
   645		INTEL_VGA_DEVICE(0x468B, info), \
   646		INTEL_VGA_DEVICE(0x4690, info), \
   647		INTEL_VGA_DEVICE(0x4692, info), \
   648		INTEL_VGA_DEVICE(0x4693, info)
   649	
   650	/* ADL-P */
   651	#define INTEL_ADLP_IDS(info) \
   652		INTEL_VGA_DEVICE(0x46A0, info), \
   653		INTEL_VGA_DEVICE(0x46A1, info), \
   654		INTEL_VGA_DEVICE(0x46A2, info), \
   655		INTEL_VGA_DEVICE(0x46A3, info), \
   656		INTEL_VGA_DEVICE(0x46A6, info), \
   657		INTEL_VGA_DEVICE(0x46A8, info), \
   658		INTEL_VGA_DEVICE(0x46AA, info), \
   659		INTEL_VGA_DEVICE(0x462A, info), \
   660		INTEL_VGA_DEVICE(0x4626, info), \
   661		INTEL_VGA_DEVICE(0x4628, info), \
   662		INTEL_VGA_DEVICE(0x46B0, info), \
   663		INTEL_VGA_DEVICE(0x46B1, info), \
   664		INTEL_VGA_DEVICE(0x46B2, info), \
   665		INTEL_VGA_DEVICE(0x46B3, info), \
   666		INTEL_VGA_DEVICE(0x46C0, info), \
   667		INTEL_VGA_DEVICE(0x46C1, info), \
   668		INTEL_VGA_DEVICE(0x46C2, info), \
   669		INTEL_VGA_DEVICE(0x46C3, info)
   670	
   671	/* ADL-N */
   672	#define INTEL_ADLN_IDS(info) \
   673		INTEL_VGA_DEVICE(0x46D0, info), \
   674		INTEL_VGA_DEVICE(0x46D1, info), \
   675		INTEL_VGA_DEVICE(0x46D2, info)
   676	
   677	/* RPL-S */
   678	#define INTEL_RPLS_IDS(info) \
   679		INTEL_VGA_DEVICE(0xA780, info), \
   680		INTEL_VGA_DEVICE(0xA781, info), \
   681		INTEL_VGA_DEVICE(0xA782, info), \
   682		INTEL_VGA_DEVICE(0xA783, info), \
   683		INTEL_VGA_DEVICE(0xA788, info), \
   684		INTEL_VGA_DEVICE(0xA789, info), \
   685		INTEL_VGA_DEVICE(0xA78A, info), \
   686		INTEL_VGA_DEVICE(0xA78B, info)
   687	
   688	/* RPL-U */
   689	#define INTEL_RPLU_IDS(info) \
   690		INTEL_VGA_DEVICE(0xA721, info), \
   691		INTEL_VGA_DEVICE(0xA7A1, info), \
   692		INTEL_VGA_DEVICE(0xA7A9, info), \
   693		INTEL_VGA_DEVICE(0xA7AC, info), \
   694		INTEL_VGA_DEVICE(0xA7AD, info)
 > 695	h
   696	/* RPL-P */
   697	#define INTEL_RPLP_IDS(info) \
   698		INTEL_RPLU_IDS(info), \
   699		INTEL_VGA_DEVICE(0xA720, info), \
   700		INTEL_VGA_DEVICE(0xA7A0, info), \
   701		INTEL_VGA_DEVICE(0xA7A8, info), \
   702		INTEL_VGA_DEVICE(0xA7AA, info), \
   703		INTEL_VGA_DEVICE(0xA7AB, info)
   704	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
