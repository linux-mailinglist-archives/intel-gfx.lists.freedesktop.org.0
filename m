Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 756053A67F0
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Jun 2021 15:32:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E66EF8997C;
	Mon, 14 Jun 2021 13:32:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5A3E78997C;
 Mon, 14 Jun 2021 13:32:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 52054AA0ED;
 Mon, 14 Jun 2021 13:32:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Mon, 14 Jun 2021 13:32:55 -0000
Message-ID: <162367757531.10185.17907514126137116200@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210614090959.1527987-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20210614090959.1527987-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Document_the_Virtual_Engine_uAPI_=28rev2=29?=
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

Series: drm/i915: Document the Virtual Engine uAPI (rev2)
URL   : https://patchwork.freedesktop.org/series/91406/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
af02f5aa318e drm/i915: Document the Virtual Engine uAPI
-:76: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#76: FILE: include/uapi/drm/i915_drm.h:1831:
+ * ^II915_DEFINE_CONTEXT_ENGINES_LOAD_BALANCE(virtual, 2) = {$

-:77: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#77: FILE: include/uapi/drm/i915_drm.h:1832:
+ * ^I^I.base.name = I915_CONTEXT_ENGINES_EXT_LOAD_BALANCE,$

-:78: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#78: FILE: include/uapi/drm/i915_drm.h:1833:
+ * ^I^I.engine_index = 0, // Place this virtual engine into engine map slot 0$

-:79: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#79: FILE: include/uapi/drm/i915_drm.h:1834:
+ * ^I^I.num_siblings = 2,$

-:80: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#80: FILE: include/uapi/drm/i915_drm.h:1835:
+ * ^I^I.engines = { { I915_ENGINE_CLASS_VIDEO, 0 },$

-:81: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#81: FILE: include/uapi/drm/i915_drm.h:1836:
+ * ^I^I^I     { I915_ENGINE_CLASS_VIDEO, 1 }, },$

-:82: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#82: FILE: include/uapi/drm/i915_drm.h:1837:
+ * ^I};$

-:83: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#83: FILE: include/uapi/drm/i915_drm.h:1838:
+ * ^II915_DEFINE_CONTEXT_PARAM_ENGINES(engines, 1) = {$

-:84: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#84: FILE: include/uapi/drm/i915_drm.h:1839:
+ * ^I^I.engines = { { I915_ENGINE_CLASS_INVALID,$

-:85: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#85: FILE: include/uapi/drm/i915_drm.h:1840:
+ * ^I^I^I       I915_ENGINE_CLASS_INVALID_NONE } },$

-:86: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#86: FILE: include/uapi/drm/i915_drm.h:1841:
+ * ^I^I.extensions = to_user_pointer(&virtual), // Chains after load_balance extension$

-:87: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#87: FILE: include/uapi/drm/i915_drm.h:1842:
+ * ^I};$

-:88: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#88: FILE: include/uapi/drm/i915_drm.h:1843:
+ * ^Istruct drm_i915_gem_context_create_ext_setparam p_engines = {$

-:89: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#89: FILE: include/uapi/drm/i915_drm.h:1844:
+ * ^I^I.base = {$

-:90: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#90: FILE: include/uapi/drm/i915_drm.h:1845:
+ * ^I^I^I.name = I915_CONTEXT_CREATE_EXT_SETPARAM,$

-:91: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#91: FILE: include/uapi/drm/i915_drm.h:1846:
+ * ^I^I},$

-:92: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#92: FILE: include/uapi/drm/i915_drm.h:1847:
+ * ^I^I.param = {$

-:93: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#93: FILE: include/uapi/drm/i915_drm.h:1848:
+ * ^I^I^I.param = I915_CONTEXT_PARAM_ENGINES,$

-:94: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#94: FILE: include/uapi/drm/i915_drm.h:1849:
+ * ^I^I^I.value = to_user_pointer(&engines),$

-:95: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#95: FILE: include/uapi/drm/i915_drm.h:1850:
+ * ^I^I^I.size = sizeof(engines),$

-:96: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#96: FILE: include/uapi/drm/i915_drm.h:1851:
+ * ^I^I},$

-:97: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#97: FILE: include/uapi/drm/i915_drm.h:1852:
+ * ^I};$

-:98: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#98: FILE: include/uapi/drm/i915_drm.h:1853:
+ * ^Istruct drm_i915_gem_context_create_ext create = {$

-:99: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#99: FILE: include/uapi/drm/i915_drm.h:1854:
+ * ^I^I.flags = I915_CONTEXT_CREATE_FLAGS_USE_EXTENSIONS,$

-:100: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#100: FILE: include/uapi/drm/i915_drm.h:1855:
+ * ^I^I.extensions = to_user_pointer(&p_engines);$

-:101: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#101: FILE: include/uapi/drm/i915_drm.h:1856:
+ * ^I};$

-:103: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#103: FILE: include/uapi/drm/i915_drm.h:1858:
+ * ^Ictx_id = gem_context_create_ext(drm_fd, &create);$

-:105: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#105: FILE: include/uapi/drm/i915_drm.h:1860:
+ * ^I// Now we have created a GEM context with its engine map containing a$

-:106: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#106: FILE: include/uapi/drm/i915_drm.h:1861:
+ * ^I// single virtual engine. Submissions to this slot can go either to$

-:107: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#107: FILE: include/uapi/drm/i915_drm.h:1862:
+ * ^I// vcs0 or vcs1, depending on the load balancing algorithm used inside$

-:108: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#108: FILE: include/uapi/drm/i915_drm.h:1863:
+ * ^I// the driver. The load balancing is dynamic from one batch buffer to$

-:109: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#109: FILE: include/uapi/drm/i915_drm.h:1864:
+ * ^I// another and transparent to userspace.$

-:111: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#111: FILE: include/uapi/drm/i915_drm.h:1866:
+ * ^I...$

-:112: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#112: FILE: include/uapi/drm/i915_drm.h:1867:
+ * ^Iexecbuf.rsvd1 = ctx_id;$

-:113: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#113: FILE: include/uapi/drm/i915_drm.h:1868:
+ * ^Iexecbuf.flags = 0; // Submits to index 0 which is the virtual engine$

-:114: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#114: FILE: include/uapi/drm/i915_drm.h:1869:
+ * ^Igem_execbuf(drm_fd, &execbuf);$

-:143: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#143: FILE: include/uapi/drm/i915_drm.h:1967:
+ * ^II915_DEFINE_CONTEXT_PARAM_ENGINES(engines, 2) = {$

-:144: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#144: FILE: include/uapi/drm/i915_drm.h:1968:
+ * ^I^I.engines = { { I915_ENGINE_CLASS_RENDER, 0 },$

-:145: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#145: FILE: include/uapi/drm/i915_drm.h:1969:
+ * ^I^I^I     { I915_ENGINE_CLASS_COPY, 0 } }$

-:146: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#146: FILE: include/uapi/drm/i915_drm.h:1970:
+ * ^I};$

-:147: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#147: FILE: include/uapi/drm/i915_drm.h:1971:
+ * ^Istruct drm_i915_gem_context_create_ext_setparam p_engines = {$

-:148: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#148: FILE: include/uapi/drm/i915_drm.h:1972:
+ * ^I^I.base = {$

-:149: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#149: FILE: include/uapi/drm/i915_drm.h:1973:
+ * ^I^I^I.name = I915_CONTEXT_CREATE_EXT_SETPARAM,$

-:150: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#150: FILE: include/uapi/drm/i915_drm.h:1974:
+ * ^I^I},$

-:151: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#151: FILE: include/uapi/drm/i915_drm.h:1975:
+ * ^I^I.param = {$

-:152: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#152: FILE: include/uapi/drm/i915_drm.h:1976:
+ * ^I^I^I.param = I915_CONTEXT_PARAM_ENGINES,$

-:153: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#153: FILE: include/uapi/drm/i915_drm.h:1977:
+ * ^I^I^I.value = to_user_pointer(&engines),$

-:154: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#154: FILE: include/uapi/drm/i915_drm.h:1978:
+ * ^I^I^I.size = sizeof(engines),$

-:155: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#155: FILE: include/uapi/drm/i915_drm.h:1979:
+ * ^I^I},$

-:156: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#156: FILE: include/uapi/drm/i915_drm.h:1980:
+ * ^I};$

-:157: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#157: FILE: include/uapi/drm/i915_drm.h:1981:
+ * ^Istruct drm_i915_gem_context_create_ext create = {$

-:158: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#158: FILE: include/uapi/drm/i915_drm.h:1982:
+ * ^I^I.flags = I915_CONTEXT_CREATE_FLAGS_USE_EXTENSIONS,$

-:159: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#159: FILE: include/uapi/drm/i915_drm.h:1983:
+ * ^I^I.extensions = to_user_pointer(&p_engines);$

-:160: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#160: FILE: include/uapi/drm/i915_drm.h:1984:
+ * ^I};$

-:162: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#162: FILE: include/uapi/drm/i915_drm.h:1986:
+ * ^Ictx_id = gem_context_create_ext(drm_fd, &create);$

-:164: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#164: FILE: include/uapi/drm/i915_drm.h:1988:
+ * ^I// We have now created a GEM context with two engines in the map:$

-:165: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#165: FILE: include/uapi/drm/i915_drm.h:1989:
+ * ^I// Index 0 points to rcs0 while index 1 points to bcs0. Other engines$

-:166: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#166: FILE: include/uapi/drm/i915_drm.h:1990:
+ * ^I// will not be accessible from this context.$

-:168: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#168: FILE: include/uapi/drm/i915_drm.h:1992:
+ * ^I...$

-:169: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#169: FILE: include/uapi/drm/i915_drm.h:1993:
+ * ^Iexecbuf.rsvd1 = ctx_id;$

-:170: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#170: FILE: include/uapi/drm/i915_drm.h:1994:
+ * ^Iexecbuf.flags = 0; // Submits to index 0, which is rcs0 for this context$

-:171: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#171: FILE: include/uapi/drm/i915_drm.h:1995:
+ * ^Igem_execbuf(drm_fd, &execbuf);$

-:173: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#173: FILE: include/uapi/drm/i915_drm.h:1997:
+ * ^I...$

-:174: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#174: FILE: include/uapi/drm/i915_drm.h:1998:
+ * ^Iexecbuf.rsvd1 = ctx_id;$

-:175: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#175: FILE: include/uapi/drm/i915_drm.h:1999:
+ * ^Iexecbuf.flags = 1; // Submits to index 0, which is bcs0 for this context$

-:176: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#176: FILE: include/uapi/drm/i915_drm.h:2000:
+ * ^Igem_execbuf(drm_fd, &execbuf);$

-:205: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#205: FILE: include/uapi/drm/i915_drm.h:2515:
+ * ^Istruct drm_i915_query_engine_info *info;$

-:206: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#206: FILE: include/uapi/drm/i915_drm.h:2516:
+ * ^Istruct drm_i915_query_item item = {$

-:207: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#207: FILE: include/uapi/drm/i915_drm.h:2517:
+ * ^I^I.query_id = DRM_I915_QUERY_ENGINE_INFO;$

-:208: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#208: FILE: include/uapi/drm/i915_drm.h:2518:
+ * ^I};$

-:209: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#209: FILE: include/uapi/drm/i915_drm.h:2519:
+ * ^Istruct drm_i915_query query = {$

-:210: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#210: FILE: include/uapi/drm/i915_drm.h:2520:
+ * ^I^I.num_items = 1,$

-:211: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#211: FILE: include/uapi/drm/i915_drm.h:2521:
+ * ^I^I.items_ptr = (uintptr_t)&item,$

-:212: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#212: FILE: include/uapi/drm/i915_drm.h:2522:
+ * ^I};$

-:213: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#213: FILE: include/uapi/drm/i915_drm.h:2523:
+ * ^Iint err, i;$

-:215: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#215: FILE: include/uapi/drm/i915_drm.h:2525:
+ * ^I// First query the size of the blob we need, this needs to be large$

-:216: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#216: FILE: include/uapi/drm/i915_drm.h:2526:
+ * ^I// enough to hold our array of engines. The kernel will fill out the$

-:217: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#217: FILE: include/uapi/drm/i915_drm.h:2527:
+ * ^I// item.length for us, which is the number of bytes we need.$

-:218: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#218: FILE: include/uapi/drm/i915_drm.h:2528:
+ * ^I//$

-:219: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#219: FILE: include/uapi/drm/i915_drm.h:2529:
+ * ^I// Alternatively a large buffer can be allocated straight away enabling$

-:220: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#220: FILE: include/uapi/drm/i915_drm.h:2530:
+ * ^I// querying in one pass, in which case item.length should contain the$

-:221: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#221: FILE: include/uapi/drm/i915_drm.h:2531:
+ * ^I// length of the provided buffer.$

-:222: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#222: FILE: include/uapi/drm/i915_drm.h:2532:
+ * ^Ierr = ioctl(fd, DRM_IOCTL_I915_QUERY, &query);$

-:223: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#223: FILE: include/uapi/drm/i915_drm.h:2533:
+ * ^Iif (err) ...$

-:225: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#225: FILE: include/uapi/drm/i915_drm.h:2535:
+ * ^Iinfo = calloc(1, item.length);$

-:226: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#226: FILE: include/uapi/drm/i915_drm.h:2536:
+ * ^I// Now that we allocated the required number of bytes, we call the ioctl$

-:227: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#227: FILE: include/uapi/drm/i915_drm.h:2537:
+ * ^I// again, this time with the data_ptr pointing to our newly allocated$

-:228: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#228: FILE: include/uapi/drm/i915_drm.h:2538:
+ * ^I// blob, which the kernel can then populate with info on all engines.$

-:229: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#229: FILE: include/uapi/drm/i915_drm.h:2539:
+ * ^Iitem.data_ptr = (uintptr_t)&info,$

-:231: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#231: FILE: include/uapi/drm/i915_drm.h:2541:
+ * ^Ierr = ioctl(fd, DRM_IOCTL_I915_QUERY, &query);$

-:232: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#232: FILE: include/uapi/drm/i915_drm.h:2542:
+ * ^Iif (err) ...$

-:234: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#234: FILE: include/uapi/drm/i915_drm.h:2544:
+ * ^I// We can now access each engine in the array$

-:235: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#235: FILE: include/uapi/drm/i915_drm.h:2545:
+ * ^Ifor (i = 0; i < info->num_engines; i++) {$

-:236: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#236: FILE: include/uapi/drm/i915_drm.h:2546:
+ * ^I^Istruct drm_i915_engine_info einfo = info->engines[i];$

-:237: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#237: FILE: include/uapi/drm/i915_drm.h:2547:
+ * ^I^Iu16 class = einfo.engine.class;$

-:238: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#238: FILE: include/uapi/drm/i915_drm.h:2548:
+ * ^I^Iu16 instance = einfo.engine.instance;$

-:239: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#239: FILE: include/uapi/drm/i915_drm.h:2549:
+ * ^I^I....$

-:240: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#240: FILE: include/uapi/drm/i915_drm.h:2550:
+ * ^I}$

-:242: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#242: FILE: include/uapi/drm/i915_drm.h:2552:
+ * ^Ifree(info);$

total: 0 errors, 99 warnings, 0 checks, 230 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
