Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF8DC9F259
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Dec 2025 14:34:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4067B10E7E1;
	Wed,  3 Dec 2025 13:34:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jr8eXVt2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D8CC10E123;
 Wed,  3 Dec 2025 13:34:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764768865; x=1796304865;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=uIwKU4z0XFz0x3nPc31cD73tNxK9Ux33rmyKxojLqlo=;
 b=Jr8eXVt2VT+RxaY0/3ZjdU68gjpJMJNXwpv9aEEGP7Nhcb3TgiZdYA2e
 GVkJvz3SQL0Zt88GgrTKhnnQjwHrJouVd07RFopzRMJ3r6PTRA8le2PtS
 8eAB7zlHPSFqUfNA9L58TRX1eBYZgEX4KOXdEPVTv3nsc2rQgsz+CHQ2J
 t4/4/Dyrhgq2dKCuCRmZIb/377oEiTpGJg1/O93XZA1wjMitSEICl60nK
 KEJfYMAP5gZg4yyeaAxSqgURkWpChUDRWWJz07kfGin/c/HgSSZCnZAXL
 OjBt0m9HhdsR2Wgu5FZ0cd9ajgYLnjBYvdy0trGhvYMZO1x6Lb8a4hzgW A==;
X-CSE-ConnectionGUID: BLF8DsPTTW2BVwZS3lXcsA==
X-CSE-MsgGUID: KLMgUCRrR1GK2187uzFGLA==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="77868625"
X-IronPort-AV: E=Sophos;i="6.20,246,1758610800"; d="scan'208";a="77868625"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 05:34:25 -0800
X-CSE-ConnectionGUID: X/LGW7UvTeukrck5Kx1Prg==
X-CSE-MsgGUID: Uyj04tfgS76mM+P5yLmVYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,246,1758610800"; d="scan'208";a="194574716"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.226])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 05:34:22 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 brauner@kernel.org
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Saarinen,  Jani" <jani.saarinen@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>, Thorsten Leemhuis
 <regressions@leemhuis.info>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Subject: Re: BISECTED REGRESSION on v6.18 (was: REGRESSION on drm-tip)
In-Reply-To: <03c013c0-be12-42ab-91d1-f87395c890e3@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <03c013c0-be12-42ab-91d1-f87395c890e3@intel.com>
Date: Wed, 03 Dec 2025 15:34:19 +0200
Message-ID: <c711e3ac455a552c130851d7a45916a3ac992390@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 27 Nov 2025, "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com> wrote:
> Hello Christian,
>
> This is Chaitanya (again!).
>
> This mail is regarding another regression we are seeing in our CI 
> runs[1] on drm-tip (with both xe and i915).

Referring to drm-tip is downplaying the problem. The bisected regression
is in v6.18 release. It's breaking suspend/resume across a lot of
platforms on two drivers, i915 and xe.

a3f8f8662771 ("power: always freeze efivarfs")

As far as regressions go, it's pretty bad. Please prioritize.


BR,
Jani.



>
> `````````````````````````````````````````````````````````````````````````````````
> <4> [157.687644] ------------[ cut here ]------------
> <4> [157.687768] WARNING: CPU: 5 PID: 2277 at kernel/freezer.c:139 
> __set_task_frozen+0x7f/0xb0
> ...
> <4> [157.687923] PKRU: 55555554
> <4> [157.687924] Call Trace:
> <4> [157.687925]  <TASK>
> <4> [157.687926]  ? __pfx___set_task_frozen+0x10/0x10
> <4> [157.687929]  task_call_func+0x6d/0x120
> <4> [157.687932]  ? cgroup_freezing+0x89/0x200
> <4> [157.687937]  freeze_task+0x98/0x100
> <4> [157.687940]  try_to_freeze_tasks+0xd2/0x440
> <4> [157.687946]  freeze_processes+0x56/0xd0
> <4> [157.687948]  hibernate+0x129/0x4a0
> <4> [157.687951]  state_store+0xd3/0xe0
> <4> [157.687954]  kobj_attr_store+0x12/0x40
> <4> [157.687959]  sysfs_kf_write+0x4d/0x80
> <4> [157.687963]  kernfs_fop_write_iter+0x188/0x240
> <4> [157.687967]  vfs_write+0x283/0x540
> <4> [157.687969]  ? free_to_partial_list+0x46d/0x640
> <4> [157.687976]  ksys_write+0x6f/0xf0
> <4> [157.687980]  __x64_sys_write+0x19/0x30
> <4> [157.687982]  x64_sys_call+0x79/0x26a0
> <4> [157.687984]  do_syscall_64+0x93/0xd60
> <4> [157.687987]  ? putname+0x65/0x90
> <4> [157.687990]  ? kmem_cache_free+0x553/0x680
> <4> [157.687995]  ? putname+0x65/0x90
> <4> [157.687997]  ? putname+0x65/0x90
> <4> [157.687999]  ? do_sys_openat2+0x8b/0xd0
> <4> [157.688003]  ? __x64_sys_openat+0x54/0xa0
> <4> [157.688007]  ? do_syscall_64+0x1b7/0xd60
> <4> [157.688009]  ? __fput+0x1bf/0x2f0
> <4> [157.688012]  ? fput_close_sync+0x3d/0xa0
> <4> [157.688015]  ? __x64_sys_close+0x3e/0x90
> <4> [157.688017]  ? do_syscall_64+0x1b7/0xd60
> <4> [157.688019]  ? putname+0x65/0x90
> <4> [157.688021]  ? putname+0x65/0x90
> <4> [157.688023]  ? do_sys_openat2+0x8b/0xd0
> <4> [157.688024]  ? __fput+0x1bf/0x2f0
> <4> [157.688028]  ? __x64_sys_openat+0x54/0xa0
> <4> [157.688032]  ? do_syscall_64+0x1b7/0xd60
> <4> [157.688034]  ? do_syscall_64+0x1b7/0xd60
> <4> [157.688036]  ? irqentry_exit+0x77/0xb0
> <4> [157.688038]  ? exc_page_fault+0xbd/0x2c0
> <4> [157.688042]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
> <4> [157.688044] RIP: 0033:0x72523c91c574
> `````````````````````````````````````````````````````````````````````````````````
> Details log can be found in [2].
>
> After bisecting the tree, the following patch [3] seems to be the first 
> "bad" commit
>
> `````````````````````````````````````````````````````````````````````````````````````````````````````````
> commit a3f8f8662771285511ae26c4c8d3ba1cd22159b9
> Author: Christian Brauner <brauner@kernel.org>
> Date:   Wed Nov 5 14:39:45 2025 +0100
>
>      power: always freeze efivarfs
> `````````````````````````````````````````````````````````````````````````````````````````````````````````
>
> We also verified that if we revert the patch the issue is not seen.
>
> Could you please check why the patch causes this regression and provide 
> a fix if necessary?
>
> Thank you.
>
> Regards
>
> Chaitanya
>
> [1]
> https://intel-gfx-ci.01.org/tree/drm-tip/index.html?testfilter=suspend
> [2]
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17595/shard-mtlp-6/igt@gem_exec_suspend@basic-s4-devices.html
> [3] 
> https://gitlab.com/freedesktop-mirror/drm-tip/-/commit/a3f8f8662771285511ae26c4c8d3ba1cd22159b9

-- 
Jani Nikula, Intel
