Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D34D83AD099
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jun 2021 18:39:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC1D76E123;
	Fri, 18 Jun 2021 16:39:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4DDDC6E123;
 Fri, 18 Jun 2021 16:39:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4771EA008A;
 Fri, 18 Jun 2021 16:39:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Fri, 18 Jun 2021 16:39:30 -0000
Message-ID: <162403437026.1294.9913574225992966364@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210618150036.2507653-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20210618150036.2507653-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Document_the_Virtual_Engine_uAPI_=28rev4=29?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Document the Virtual Engine uAPI (rev4)
URL   : https://patchwork.freedesktop.org/series/91406/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
043a7f21361b drm/i915: Document the Virtual Engine uAPI
-:80: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#80: FILE: include/uapi/drm/i915_drm.h:1831:
+ * ^II915_DEFINE_CONTEXT_ENGINES_LOAD_BALANCE(virtual, 2) = {$

-:81: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#81: FILE: include/uapi/drm/i915_drm.h:1832:
+ * ^I^I.base.name = I915_CONTEXT_ENGINES_EXT_LOAD_BALANCE,$

-:82: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#82: FILE: include/uapi/drm/i915_drm.h:1833:
+ * ^I^I.engine_index = 0, // Place this virtual engine into engine map slot 0$

-:83: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#83: FILE: include/uapi/drm/i915_drm.h:1834:
+ * ^I^I.num_siblings = 2,$

-:84: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#84: FILE: include/uapi/drm/i915_drm.h:1835:
+ * ^I^I.engines = { { I915_ENGINE_CLASS_VIDEO, 0 },$

-:85: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#85: FILE: include/uapi/drm/i915_drm.h:1836:
+ * ^I^I^I     { I915_ENGINE_CLASS_VIDEO, 1 }, },$

-:86: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#86: FILE: include/uapi/drm/i915_drm.h:1837:
+ * ^I};$

-:87: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#87: FILE: include/uapi/drm/i915_drm.h:1838:
+ * ^II915_DEFINE_CONTEXT_PARAM_ENGINES(engines, 1) = {$

-:88: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#88: FILE: include/uapi/drm/i915_drm.h:1839:
+ * ^I^I.engines = { { I915_ENGINE_CLASS_INVALID,$

-:89: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#89: FILE: include/uapi/drm/i915_drm.h:1840:
+ * ^I^I^I       I915_ENGINE_CLASS_INVALID_NONE } },$

-:90: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#90: FILE: include/uapi/drm/i915_drm.h:1841:
+ * ^I^I.extensions = to_user_pointer(&virtual), // Chains after load_balance extension$

-:91: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#91: FILE: include/uapi/drm/i915_drm.h:1842:
+ * ^I};$

-:92: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#92: FILE: include/uapi/drm/i915_drm.h:1843:
+ * ^Istruct drm_i915_gem_context_create_ext_setparam p_engines = {$

-:93: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#93: FILE: include/uapi/drm/i915_drm.h:1844:
+ * ^I^I.base = {$

-:94: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#94: FILE: include/uapi/drm/i915_drm.h:1845:
+ * ^I^I^I.name = I915_CONTEXT_CREATE_EXT_SETPARAM,$

-:95: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#95: FILE: include/uapi/drm/i915_drm.h:1846:
+ * ^I^I},$

-:96: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#96: FILE: include/uapi/drm/i915_drm.h:1847:
+ * ^I^I.param = {$

-:97: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#97: FILE: include/uapi/drm/i915_drm.h:1848:
+ * ^I^I^I.param = I915_CONTEXT_PARAM_ENGINES,$

-:98: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#98: FILE: include/uapi/drm/i915_drm.h:1849:
+ * ^I^I^I.value = to_user_pointer(&engines),$

-:99: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#99: FILE: include/uapi/drm/i915_drm.h:1850:
+ * ^I^I^I.size = sizeof(engines),$

-:100: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#100: FILE: include/uapi/drm/i915_drm.h:1851:
+ * ^I^I},$

-:101: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#101: FILE: include/uapi/drm/i915_drm.h:1852:
+ * ^I};$

-:102: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#102: FILE: include/uapi/drm/i915_drm.h:1853:
+ * ^Istruct drm_i915_gem_context_create_ext create = {$

-:103: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#103: FILE: include/uapi/drm/i915_drm.h:1854:
+ * ^I^I.flags = I915_CONTEXT_CREATE_FLAGS_USE_EXTENSIONS,$

-:104: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#104: FILE: include/uapi/drm/i915_drm.h:1855:
+ * ^I^I.extensions = to_user_pointer(&p_engines);$

-:105: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#105: FILE: include/uapi/drm/i915_drm.h:1856:
+ * ^I};$

-:107: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#107: FILE: include/uapi/drm/i915_drm.h:1858:
+ * ^Ictx_id = gem_context_create_ext(drm_fd, &create);$

-:109: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#109: FILE: include/uapi/drm/i915_drm.h:1860:
+ * ^I// Now we have created a GEM context with its engine map containing a$

-:110: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#110: FILE: include/uapi/drm/i915_drm.h:1861:
+ * ^I// single virtual engine. Submissions to this slot can go either to$

-:111: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#111: FILE: include/uapi/drm/i915_drm.h:1862:
+ * ^I// vcs0 or vcs1, depending on the load balancing algorithm used inside$

-:112: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#112: FILE: include/uapi/drm/i915_drm.h:1863:
+ * ^I// the driver. The load balancing is dynamic from one batch buffer to$

-:113: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#113: FILE: include/uapi/drm/i915_drm.h:1864:
+ * ^I// another and transparent to userspace.$

-:115: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#115: FILE: include/uapi/drm/i915_drm.h:1866:
+ * ^I...$

-:116: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#116: FILE: include/uapi/drm/i915_drm.h:1867:
+ * ^Iexecbuf.rsvd1 = ctx_id;$

-:117: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#117: FILE: include/uapi/drm/i915_drm.h:1868:
+ * ^Iexecbuf.flags = 0; // Submits to index 0 which is the virtual engine$

-:118: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#118: FILE: include/uapi/drm/i915_drm.h:1869:
+ * ^Igem_execbuf(drm_fd, &execbuf);$

-:147: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#147: FILE: include/uapi/drm/i915_drm.h:1967:
+ * ^II915_DEFINE_CONTEXT_PARAM_ENGINES(engines, 2) = {$

-:148: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#148: FILE: include/uapi/drm/i915_drm.h:1968:
+ * ^I^I.engines = { { I915_ENGINE_CLASS_RENDER, 0 },$

-:149: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#149: FILE: include/uapi/drm/i915_drm.h:1969:
+ * ^I^I^I     { I915_ENGINE_CLASS_COPY, 0 } }$

-:150: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#150: FILE: include/uapi/drm/i915_drm.h:1970:
+ * ^I};$

-:151: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#151: FILE: include/uapi/drm/i915_drm.h:1971:
+ * ^Istruct drm_i915_gem_context_create_ext_setparam p_engines = {$

-:152: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#152: FILE: include/uapi/drm/i915_drm.h:1972:
+ * ^I^I.base = {$

-:153: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#153: FILE: include/uapi/drm/i915_drm.h:1973:
+ * ^I^I^I.name = I915_CONTEXT_CREATE_EXT_SETPARAM,$

-:154: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#154: FILE: include/uapi/drm/i915_drm.h:1974:
+ * ^I^I},$

-:155: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#155: FILE: include/uapi/drm/i915_drm.h:1975:
+ * ^I^I.param = {$

-:156: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#156: FILE: include/uapi/drm/i915_drm.h:1976:
+ * ^I^I^I.param = I915_CONTEXT_PARAM_ENGINES,$

-:157: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#157: FILE: include/uapi/drm/i915_drm.h:1977:
+ * ^I^I^I.value = to_user_pointer(&engines),$

-:158: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#158: FILE: include/uapi/drm/i915_drm.h:1978:
+ * ^I^I^I.size = sizeof(engines),$

-:159: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#159: FILE: include/uapi/drm/i915_drm.h:1979:
+ * ^I^I},$

-:160: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#160: FILE: include/uapi/drm/i915_drm.h:1980:
+ * ^I};$

-:161: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#161: FILE: include/uapi/drm/i915_drm.h:1981:
+ * ^Istruct drm_i915_gem_context_create_ext create = {$

-:162: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#162: FILE: include/uapi/drm/i915_drm.h:1982:
+ * ^I^I.flags = I915_CONTEXT_CREATE_FLAGS_USE_EXTENSIONS,$

-:163: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#163: FILE: include/uapi/drm/i915_drm.h:1983:
+ * ^I^I.extensions = to_user_pointer(&p_engines);$

-:164: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#164: FILE: include/uapi/drm/i915_drm.h:1984:
+ * ^I};$

-:166: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#166: FILE: include/uapi/drm/i915_drm.h:1986:
+ * ^Ictx_id = gem_context_create_ext(drm_fd, &create);$

-:168: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#168: FILE: include/uapi/drm/i915_drm.h:1988:
+ * ^I// We have now created a GEM context with two engines in the map:$

-:169: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#169: FILE: include/uapi/drm/i915_drm.h:1989:
+ * ^I// Index 0 points to rcs0 while index 1 points to bcs0. Other engines$

-:170: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#170: FILE: include/uapi/drm/i915_drm.h:1990:
+ * ^I// will not be accessible from this context.$

-:172: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#172: FILE: include/uapi/drm/i915_drm.h:1992:
+ * ^I...$

-:173: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#173: FILE: include/uapi/drm/i915_drm.h:1993:
+ * ^Iexecbuf.rsvd1 = ctx_id;$

-:174: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#174: FILE: include/uapi/drm/i915_drm.h:1994:
+ * ^Iexecbuf.flags = 0; // Submits to index 0, which is rcs0 for this context$

-:175: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#175: FILE: include/uapi/drm/i915_drm.h:1995:
+ * ^Igem_execbuf(drm_fd, &execbuf);$

-:177: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#177: FILE: include/uapi/drm/i915_drm.h:1997:
+ * ^I...$

-:178: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#178: FILE: include/uapi/drm/i915_drm.h:1998:
+ * ^Iexecbuf.rsvd1 = ctx_id;$

-:179: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#179: FILE: include/uapi/drm/i915_drm.h:1999:
+ * ^Iexecbuf.flags = 1; // Submits to index 0, which is bcs0 for this context$

-:180: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#180: FILE: include/uapi/drm/i915_drm.h:2000:
+ * ^Igem_execbuf(drm_fd, &execbuf);$

-:209: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#209: FILE: include/uapi/drm/i915_drm.h:2515:
+ * ^Istruct drm_i915_query_engine_info *info;$

-:210: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#210: FILE: include/uapi/drm/i915_drm.h:2516:
+ * ^Istruct drm_i915_query_item item = {$

-:211: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#211: FILE: include/uapi/drm/i915_drm.h:2517:
+ * ^I^I.query_id = DRM_I915_QUERY_ENGINE_INFO;$

-:212: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#212: FILE: include/uapi/drm/i915_drm.h:2518:
+ * ^I};$

-:213: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#213: FILE: include/uapi/drm/i915_drm.h:2519:
+ * ^Istruct drm_i915_query query = {$

-:214: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#214: FILE: include/uapi/drm/i915_drm.h:2520:
+ * ^I^I.num_items = 1,$

-:215: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#215: FILE: include/uapi/drm/i915_drm.h:2521:
+ * ^I^I.items_ptr = (uintptr_t)&item,$

-:216: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#216: FILE: include/uapi/drm/i915_drm.h:2522:
+ * ^I};$

-:217: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#217: FILE: include/uapi/drm/i915_drm.h:2523:
+ * ^Iint err, i;$

-:219: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#219: FILE: include/uapi/drm/i915_drm.h:2525:
+ * ^I// First query the size of the blob we need, this needs to be large$

-:220: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#220: FILE: include/uapi/drm/i915_drm.h:2526:
+ * ^I// enough to hold our array of engines. The kernel will fill out the$

-:221: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#221: FILE: include/uapi/drm/i915_drm.h:2527:
+ * ^I// item.length for us, which is the number of bytes we need.$

-:222: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#222: FILE: include/uapi/drm/i915_drm.h:2528:
+ * ^I//$

-:223: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#223: FILE: include/uapi/drm/i915_drm.h:2529:
+ * ^I// Alternatively a large buffer can be allocated straight away enabling$

-:224: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#224: FILE: include/uapi/drm/i915_drm.h:2530:
+ * ^I// querying in one pass, in which case item.length should contain the$

-:225: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#225: FILE: include/uapi/drm/i915_drm.h:2531:
+ * ^I// length of the provided buffer.$

-:226: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#226: FILE: include/uapi/drm/i915_drm.h:2532:
+ * ^Ierr = ioctl(fd, DRM_IOCTL_I915_QUERY, &query);$

-:227: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#227: FILE: include/uapi/drm/i915_drm.h:2533:
+ * ^Iif (err) ...$

-:229: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#229: FILE: include/uapi/drm/i915_drm.h:2535:
+ * ^Iinfo = calloc(1, item.length);$

-:230: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#230: FILE: include/uapi/drm/i915_drm.h:2536:
+ * ^I// Now that we allocated the required number of bytes, we call the ioctl$

-:231: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#231: FILE: include/uapi/drm/i915_drm.h:2537:
+ * ^I// again, this time with the data_ptr pointing to our newly allocated$

-:232: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#232: FILE: include/uapi/drm/i915_drm.h:2538:
+ * ^I// blob, which the kernel can then populate with info on all engines.$

-:233: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#233: FILE: include/uapi/drm/i915_drm.h:2539:
+ * ^Iitem.data_ptr = (uintptr_t)&info,$

-:235: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#235: FILE: include/uapi/drm/i915_drm.h:2541:
+ * ^Ierr = ioctl(fd, DRM_IOCTL_I915_QUERY, &query);$

-:236: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#236: FILE: include/uapi/drm/i915_drm.h:2542:
+ * ^Iif (err) ...$

-:238: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#238: FILE: include/uapi/drm/i915_drm.h:2544:
+ * ^I// We can now access each engine in the array$

-:239: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#239: FILE: include/uapi/drm/i915_drm.h:2545:
+ * ^Ifor (i = 0; i < info->num_engines; i++) {$

-:240: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#240: FILE: include/uapi/drm/i915_drm.h:2546:
+ * ^I^Istruct drm_i915_engine_info einfo = info->engines[i];$

-:241: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#241: FILE: include/uapi/drm/i915_drm.h:2547:
+ * ^I^Iu16 class = einfo.engine.class;$

-:242: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#242: FILE: include/uapi/drm/i915_drm.h:2548:
+ * ^I^Iu16 instance = einfo.engine.instance;$

-:243: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#243: FILE: include/uapi/drm/i915_drm.h:2549:
+ * ^I^I....$

-:244: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#244: FILE: include/uapi/drm/i915_drm.h:2550:
+ * ^I}$

-:246: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#246: FILE: include/uapi/drm/i915_drm.h:2552:
+ * ^Ifree(info);$

total: 0 errors, 99 warnings, 0 checks, 231 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
