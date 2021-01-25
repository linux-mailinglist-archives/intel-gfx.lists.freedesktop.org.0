Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D85030227D
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 08:40:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 931D189CE2;
	Mon, 25 Jan 2021 07:40:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E95C489CE2
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 07:40:19 +0000 (UTC)
IronPort-SDR: fspfnsGp1THXtMtAT8jNBUeyLgf3vj7jFTUe6DvLbN4J9tk6pES1yNXMH4iFEOTjyHn0fRtkcX
 8LN0JSbsa3Zw==
X-IronPort-AV: E=McAfee;i="6000,8403,9874"; a="243754478"
X-IronPort-AV: E=Sophos;i="5.79,372,1602572400"; 
 d="gz'50?scan'50,208,50";a="243754478"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2021 23:40:18 -0800
IronPort-SDR: 2IjKRr7740wyO4D7rOUJGz34SRoaCTkt/rQzeh0XFIl8DpfHlWTUdbv0gF5elhYhJIFhLcxJtv
 /ZRID2ectcWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,372,1602572400"; 
 d="gz'50?scan'50,208,50";a="402174904"
Received: from lkp-server02.sh.intel.com (HELO 625d3a354f04) ([10.239.97.151])
 by fmsmga004.fm.intel.com with ESMTP; 24 Jan 2021 23:40:15 -0800
Received: from kbuild by 625d3a354f04 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1l3wTu-00004j-At; Mon, 25 Jan 2021 07:40:14 +0000
Date: Mon, 25 Jan 2021 15:40:00 +0800
From: kernel test robot <lkp@intel.com>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <202101251539.1kEWcAKb-lkp@intel.com>
References: <20210122154547.502685-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="2oS5YaxWCcQjTEyO"
Content-Disposition: inline
In-Reply-To: <20210122154547.502685-1-matthew.auld@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/buddy: document the unused header
 bits
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


--2oS5YaxWCcQjTEyO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Matthew,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on drm-intel/for-linux-next]
[also build test WARNING on drm-tip/drm-tip v5.11-rc5 next-20210122]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Matthew-Auld/drm-i915-buddy-document-the-unused-header-bits/20210125-111101
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
config: i386-randconfig-a012-20210125 (attached as .config)
compiler: gcc-9 (Debian 9.3.0-20) 9.3.0
reproduce (this is a W=1 build):
        # https://github.com/0day-ci/linux/commit/9d12a23788459bd678c0f5979acaaf94a88d808c
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Matthew-Auld/drm-i915-buddy-document-the-unused-header-bits/20210125-111101
        git checkout 9d12a23788459bd678c0f5979acaaf94a88d808c
        # save the attached .config to linux build tree
        make W=1 ARCH=i386 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from include/asm-generic/bug.h:5,
                    from arch/x86/include/asm/bug.h:93,
                    from include/linux/bug.h:5,
                    from include/linux/mmdebug.h:5,
                    from include/linux/gfp.h:5,
                    from include/linux/slab.h:15,
                    from include/linux/kmemleak.h:12,
                    from drivers/gpu/drm/i915/i915_buddy.c:6:
   drivers/gpu/drm/i915/selftests/i915_buddy.c: In function 'igt_buddy_alloc_limit':
>> include/linux/log2.h:194:8: warning: left shift count >= width of type [-Wshift-count-overflow]
     194 |   (1UL << ilog2(n))) :  \
         |        ^~
   include/linux/compiler.h:58:52: note: in definition of macro '__trace_if_var'
      58 | #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
         |                                                    ^~~~
   drivers/gpu/drm/i915/selftests/i915_buddy.c:761:2: note: in expansion of macro 'if'
     761 |  if (i915_buddy_block_size(&mm, block) != rounddown_pow_of_two(size)) {
         |  ^~
   drivers/gpu/drm/i915/selftests/i915_buddy.c:761:43: note: in expansion of macro 'rounddown_pow_of_two'
     761 |  if (i915_buddy_block_size(&mm, block) != rounddown_pow_of_two(size)) {
         |                                           ^~~~~~~~~~~~~~~~~~~~
>> include/linux/log2.h:194:8: warning: left shift count >= width of type [-Wshift-count-overflow]
     194 |   (1UL << ilog2(n))) :  \
         |        ^~
   include/linux/compiler.h:69:3: note: in definition of macro '__trace_if_value'
      69 |  (cond) ?     \
         |   ^~~~
   include/linux/compiler.h:56:28: note: in expansion of macro '__trace_if_var'
      56 | #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
         |                            ^~~~~~~~~~~~~~
   drivers/gpu/drm/i915/selftests/i915_buddy.c:761:2: note: in expansion of macro 'if'
     761 |  if (i915_buddy_block_size(&mm, block) != rounddown_pow_of_two(size)) {
         |  ^~
   drivers/gpu/drm/i915/selftests/i915_buddy.c:761:43: note: in expansion of macro 'rounddown_pow_of_two'
     761 |  if (i915_buddy_block_size(&mm, block) != rounddown_pow_of_two(size)) {
         |                                           ^~~~~~~~~~~~~~~~~~~~
   In file included from include/linux/kernel.h:12,
                    from include/asm-generic/bug.h:20,
                    from arch/x86/include/asm/bug.h:93,
                    from include/linux/bug.h:5,
                    from include/linux/mmdebug.h:5,
                    from include/linux/gfp.h:5,
                    from include/linux/slab.h:15,
                    from include/linux/kmemleak.h:12,
                    from drivers/gpu/drm/i915/i915_buddy.c:6:
>> include/linux/log2.h:194:8: warning: left shift count >= width of type [-Wshift-count-overflow]
     194 |   (1UL << ilog2(n))) :  \
         |        ^~
   include/linux/printk.h:343:33: note: in expansion of macro 'rounddown_pow_of_two'
     343 |  printk(KERN_ERR pr_fmt(fmt), ##__VA_ARGS__)
         |                                 ^~~~~~~~~~~
   drivers/gpu/drm/i915/selftests/i915_buddy.c:762:3: note: in expansion of macro 'pr_err'
     762 |   pr_err("block size(%llu) != %lu\n",
         |   ^~~~~~


vim +194 include/linux/log2.h

b311e921b385b5a Robert P. J. Day 2007-10-16   69  
f0d1b0b30d250a0 David Howells    2006-12-08   70  /**
dbef91ec5482239 Martin Wilck     2018-04-18   71   * const_ilog2 - log base 2 of 32-bit or a 64-bit constant unsigned value
a1c4d24e02d093e Randy Dunlap     2017-09-30   72   * @n: parameter
f0d1b0b30d250a0 David Howells    2006-12-08   73   *
dbef91ec5482239 Martin Wilck     2018-04-18   74   * Use this where sparse expects a true constant expression, e.g. for array
dbef91ec5482239 Martin Wilck     2018-04-18   75   * indices.
f0d1b0b30d250a0 David Howells    2006-12-08   76   */
dbef91ec5482239 Martin Wilck     2018-04-18   77  #define const_ilog2(n)				\
f0d1b0b30d250a0 David Howells    2006-12-08   78  (						\
f0d1b0b30d250a0 David Howells    2006-12-08   79  	__builtin_constant_p(n) ? (		\
474c90156c8dcc2 Linus Torvalds   2017-03-02   80  		(n) < 2 ? 0 :			\
f0d1b0b30d250a0 David Howells    2006-12-08   81  		(n) & (1ULL << 63) ? 63 :	\
f0d1b0b30d250a0 David Howells    2006-12-08   82  		(n) & (1ULL << 62) ? 62 :	\
f0d1b0b30d250a0 David Howells    2006-12-08   83  		(n) & (1ULL << 61) ? 61 :	\
f0d1b0b30d250a0 David Howells    2006-12-08   84  		(n) & (1ULL << 60) ? 60 :	\
f0d1b0b30d250a0 David Howells    2006-12-08   85  		(n) & (1ULL << 59) ? 59 :	\
f0d1b0b30d250a0 David Howells    2006-12-08   86  		(n) & (1ULL << 58) ? 58 :	\
f0d1b0b30d250a0 David Howells    2006-12-08   87  		(n) & (1ULL << 57) ? 57 :	\
f0d1b0b30d250a0 David Howells    2006-12-08   88  		(n) & (1ULL << 56) ? 56 :	\
f0d1b0b30d250a0 David Howells    2006-12-08   89  		(n) & (1ULL << 55) ? 55 :	\
f0d1b0b30d250a0 David Howells    2006-12-08   90  		(n) & (1ULL << 54) ? 54 :	\
f0d1b0b30d250a0 David Howells    2006-12-08   91  		(n) & (1ULL << 53) ? 53 :	\
f0d1b0b30d250a0 David Howells    2006-12-08   92  		(n) & (1ULL << 52) ? 52 :	\
f0d1b0b30d250a0 David Howells    2006-12-08   93  		(n) & (1ULL << 51) ? 51 :	\
f0d1b0b30d250a0 David Howells    2006-12-08   94  		(n) & (1ULL << 50) ? 50 :	\
f0d1b0b30d250a0 David Howells    2006-12-08   95  		(n) & (1ULL << 49) ? 49 :	\
f0d1b0b30d250a0 David Howells    2006-12-08   96  		(n) & (1ULL << 48) ? 48 :	\
f0d1b0b30d250a0 David Howells    2006-12-08   97  		(n) & (1ULL << 47) ? 47 :	\
f0d1b0b30d250a0 David Howells    2006-12-08   98  		(n) & (1ULL << 46) ? 46 :	\
f0d1b0b30d250a0 David Howells    2006-12-08   99  		(n) & (1ULL << 45) ? 45 :	\
f0d1b0b30d250a0 David Howells    2006-12-08  100  		(n) & (1ULL << 44) ? 44 :	\
f0d1b0b30d250a0 David Howells    2006-12-08  101  		(n) & (1ULL << 43) ? 43 :	\
f0d1b0b30d250a0 David Howells    2006-12-08  102  		(n) & (1ULL << 42) ? 42 :	\
f0d1b0b30d250a0 David Howells    2006-12-08  103  		(n) & (1ULL << 41) ? 41 :	\
f0d1b0b30d250a0 David Howells    2006-12-08  104  		(n) & (1ULL << 40) ? 40 :	\
f0d1b0b30d250a0 David Howells    2006-12-08  105  		(n) & (1ULL << 39) ? 39 :	\
f0d1b0b30d250a0 David Howells    2006-12-08  106  		(n) & (1ULL << 38) ? 38 :	\
f0d1b0b30d250a0 David Howells    2006-12-08  107  		(n) & (1ULL << 37) ? 37 :	\
f0d1b0b30d250a0 David Howells    2006-12-08  108  		(n) & (1ULL << 36) ? 36 :	\
f0d1b0b30d250a0 David Howells    2006-12-08  109  		(n) & (1ULL << 35) ? 35 :	\
f0d1b0b30d250a0 David Howells    2006-12-08  110  		(n) & (1ULL << 34) ? 34 :	\
f0d1b0b30d250a0 David Howells    2006-12-08  111  		(n) & (1ULL << 33) ? 33 :	\
f0d1b0b30d250a0 David Howells    2006-12-08  112  		(n) & (1ULL << 32) ? 32 :	\
f0d1b0b30d250a0 David Howells    2006-12-08  113  		(n) & (1ULL << 31) ? 31 :	\
f0d1b0b30d250a0 David Howells    2006-12-08  114  		(n) & (1ULL << 30) ? 30 :	\
f0d1b0b30d250a0 David Howells    2006-12-08  115  		(n) & (1ULL << 29) ? 29 :	\
f0d1b0b30d250a0 David Howells    2006-12-08  116  		(n) & (1ULL << 28) ? 28 :	\
f0d1b0b30d250a0 David Howells    2006-12-08  117  		(n) & (1ULL << 27) ? 27 :	\
f0d1b0b30d250a0 David Howells    2006-12-08  118  		(n) & (1ULL << 26) ? 26 :	\
f0d1b0b30d250a0 David Howells    2006-12-08  119  		(n) & (1ULL << 25) ? 25 :	\
f0d1b0b30d250a0 David Howells    2006-12-08  120  		(n) & (1ULL << 24) ? 24 :	\
f0d1b0b30d250a0 David Howells    2006-12-08  121  		(n) & (1ULL << 23) ? 23 :	\
f0d1b0b30d250a0 David Howells    2006-12-08  122  		(n) & (1ULL << 22) ? 22 :	\
f0d1b0b30d250a0 David Howells    2006-12-08  123  		(n) & (1ULL << 21) ? 21 :	\
f0d1b0b30d250a0 David Howells    2006-12-08  124  		(n) & (1ULL << 20) ? 20 :	\
f0d1b0b30d250a0 David Howells    2006-12-08  125  		(n) & (1ULL << 19) ? 19 :	\
f0d1b0b30d250a0 David Howells    2006-12-08  126  		(n) & (1ULL << 18) ? 18 :	\
f0d1b0b30d250a0 David Howells    2006-12-08  127  		(n) & (1ULL << 17) ? 17 :	\
f0d1b0b30d250a0 David Howells    2006-12-08  128  		(n) & (1ULL << 16) ? 16 :	\
f0d1b0b30d250a0 David Howells    2006-12-08  129  		(n) & (1ULL << 15) ? 15 :	\
f0d1b0b30d250a0 David Howells    2006-12-08  130  		(n) & (1ULL << 14) ? 14 :	\
f0d1b0b30d250a0 David Howells    2006-12-08  131  		(n) & (1ULL << 13) ? 13 :	\
f0d1b0b30d250a0 David Howells    2006-12-08  132  		(n) & (1ULL << 12) ? 12 :	\
f0d1b0b30d250a0 David Howells    2006-12-08  133  		(n) & (1ULL << 11) ? 11 :	\
f0d1b0b30d250a0 David Howells    2006-12-08  134  		(n) & (1ULL << 10) ? 10 :	\
f0d1b0b30d250a0 David Howells    2006-12-08  135  		(n) & (1ULL <<  9) ?  9 :	\
f0d1b0b30d250a0 David Howells    2006-12-08  136  		(n) & (1ULL <<  8) ?  8 :	\
f0d1b0b30d250a0 David Howells    2006-12-08  137  		(n) & (1ULL <<  7) ?  7 :	\
f0d1b0b30d250a0 David Howells    2006-12-08  138  		(n) & (1ULL <<  6) ?  6 :	\
f0d1b0b30d250a0 David Howells    2006-12-08  139  		(n) & (1ULL <<  5) ?  5 :	\
f0d1b0b30d250a0 David Howells    2006-12-08  140  		(n) & (1ULL <<  4) ?  4 :	\
f0d1b0b30d250a0 David Howells    2006-12-08  141  		(n) & (1ULL <<  3) ?  3 :	\
f0d1b0b30d250a0 David Howells    2006-12-08  142  		(n) & (1ULL <<  2) ?  2 :	\
474c90156c8dcc2 Linus Torvalds   2017-03-02  143  		1) :				\
dbef91ec5482239 Martin Wilck     2018-04-18  144  	-1)
dbef91ec5482239 Martin Wilck     2018-04-18  145  
dbef91ec5482239 Martin Wilck     2018-04-18  146  /**
dbef91ec5482239 Martin Wilck     2018-04-18  147   * ilog2 - log base 2 of 32-bit or a 64-bit unsigned value
dbef91ec5482239 Martin Wilck     2018-04-18  148   * @n: parameter
dbef91ec5482239 Martin Wilck     2018-04-18  149   *
dbef91ec5482239 Martin Wilck     2018-04-18  150   * constant-capable log of base 2 calculation
dbef91ec5482239 Martin Wilck     2018-04-18  151   * - this can be used to initialise global variables from constant data, hence
dbef91ec5482239 Martin Wilck     2018-04-18  152   * the massive ternary operator construction
dbef91ec5482239 Martin Wilck     2018-04-18  153   *
dbef91ec5482239 Martin Wilck     2018-04-18  154   * selects the appropriately-sized optimised version depending on sizeof(n)
dbef91ec5482239 Martin Wilck     2018-04-18  155   */
dbef91ec5482239 Martin Wilck     2018-04-18  156  #define ilog2(n) \
dbef91ec5482239 Martin Wilck     2018-04-18  157  ( \
dbef91ec5482239 Martin Wilck     2018-04-18  158  	__builtin_constant_p(n) ?	\
2f78788b55baa34 Jakub Jelinek    2020-12-15  159  	((n) < 2 ? 0 :			\
2f78788b55baa34 Jakub Jelinek    2020-12-15  160  	 63 - __builtin_clzll(n)) :	\
f0d1b0b30d250a0 David Howells    2006-12-08  161  	(sizeof(n) <= 4) ?		\
f0d1b0b30d250a0 David Howells    2006-12-08  162  	__ilog2_u32(n) :		\
f0d1b0b30d250a0 David Howells    2006-12-08  163  	__ilog2_u64(n)			\
f0d1b0b30d250a0 David Howells    2006-12-08  164   )
f0d1b0b30d250a0 David Howells    2006-12-08  165  
312a0c170945b49 David Howells    2006-12-08  166  /**
312a0c170945b49 David Howells    2006-12-08  167   * roundup_pow_of_two - round the given value up to nearest power of two
a1c4d24e02d093e Randy Dunlap     2017-09-30  168   * @n: parameter
312a0c170945b49 David Howells    2006-12-08  169   *
6fb189c2a4f3bea Robert P. J. Day 2007-02-17  170   * round the given value up to the nearest power of two
312a0c170945b49 David Howells    2006-12-08  171   * - the result is undefined when n == 0
312a0c170945b49 David Howells    2006-12-08  172   * - this can be used to initialise global variables from constant data
312a0c170945b49 David Howells    2006-12-08  173   */
312a0c170945b49 David Howells    2006-12-08  174  #define roundup_pow_of_two(n)			\
312a0c170945b49 David Howells    2006-12-08  175  (						\
312a0c170945b49 David Howells    2006-12-08  176  	__builtin_constant_p(n) ? (		\
428fc0aff4e5939 Jason Gunthorpe  2020-09-04  177  		((n) == 1) ? 1 :		\
312a0c170945b49 David Howells    2006-12-08  178  		(1UL << (ilog2((n) - 1) + 1))	\
312a0c170945b49 David Howells    2006-12-08  179  				   ) :		\
312a0c170945b49 David Howells    2006-12-08  180  	__roundup_pow_of_two(n)			\
312a0c170945b49 David Howells    2006-12-08  181   )
312a0c170945b49 David Howells    2006-12-08  182  
b311e921b385b5a Robert P. J. Day 2007-10-16  183  /**
b311e921b385b5a Robert P. J. Day 2007-10-16  184   * rounddown_pow_of_two - round the given value down to nearest power of two
a1c4d24e02d093e Randy Dunlap     2017-09-30  185   * @n: parameter
b311e921b385b5a Robert P. J. Day 2007-10-16  186   *
b311e921b385b5a Robert P. J. Day 2007-10-16  187   * round the given value down to the nearest power of two
b311e921b385b5a Robert P. J. Day 2007-10-16  188   * - the result is undefined when n == 0
b311e921b385b5a Robert P. J. Day 2007-10-16  189   * - this can be used to initialise global variables from constant data
b311e921b385b5a Robert P. J. Day 2007-10-16  190   */
b311e921b385b5a Robert P. J. Day 2007-10-16  191  #define rounddown_pow_of_two(n)			\
b311e921b385b5a Robert P. J. Day 2007-10-16  192  (						\
b311e921b385b5a Robert P. J. Day 2007-10-16  193  	__builtin_constant_p(n) ? (		\
b311e921b385b5a Robert P. J. Day 2007-10-16 @194  		(1UL << ilog2(n))) :		\
b311e921b385b5a Robert P. J. Day 2007-10-16  195  	__rounddown_pow_of_two(n)		\
b311e921b385b5a Robert P. J. Day 2007-10-16  196   )
b311e921b385b5a Robert P. J. Day 2007-10-16  197  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--2oS5YaxWCcQjTEyO
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--2oS5YaxWCcQjTEyO
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--2oS5YaxWCcQjTEyO--
