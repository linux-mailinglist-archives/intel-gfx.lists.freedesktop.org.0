Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9FD1C90520
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Nov 2025 00:04:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C07310E757;
	Thu, 27 Nov 2025 23:04:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mwTbhEWO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0199810E002;
 Thu, 27 Nov 2025 23:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764284664; x=1795820664;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=LyEJOqPLceMadefBpBCTy/0C0veaGg8VzHeq/WqCxcw=;
 b=mwTbhEWOCtdZGAsPQQKSd2Aspzw4QhSiztsbJBMfixU+TCG6pJM4Tx4R
 a5MDAsPtXQ20nb1ugaZKKnnD4zj4hEHvW6LpJoCAxKIkejzh5HE8eVIxe
 JM8D5wR2nSoPoSU43BUr2GRawWZNpA7acGjZqv2wnXu7KvSVp6eLevKUP
 I+kx07kwJPJ+tLS12sCJQWgHWSIUWqgX3/+JOo/vQsG/F27UQe8Kxw68g
 S75sCAi+dH7RSMMMZmtOpShoFVGlbT2avjf5+nOy3WHZt8otCdiTglYdI
 y4xLgEByRy6M3puG+2MGBMhTPth+2s9idhPgG5RDMLtCli4M3UxxzCpZb A==;
X-CSE-ConnectionGUID: /sPDI2AcTI6RRzgmK8xoOA==
X-CSE-MsgGUID: mTo7+u++QmCCpAXFdttTaQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="83936299"
X-IronPort-AV: E=Sophos;i="6.20,232,1758610800"; d="scan'208";a="83936299"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 15:04:23 -0800
X-CSE-ConnectionGUID: 6EwrI3MNRIimZrvAtuj97Q==
X-CSE-MsgGUID: iEGlSNKxRfSSvkvVS+YpyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,232,1758610800"; d="scan'208";a="230605734"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.140])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 15:04:21 -0800
Date: Fri, 28 Nov 2025 01:04:17 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: brauner@kernel.org,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: Re: REGRESSION on drm-tip
Message-ID: <aSjY8et1QDyvFq9x@intel.com>
References: <03c013c0-be12-42ab-91d1-f87395c890e3@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <03c013c0-be12-42ab-91d1-f87395c890e3@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Thu, Nov 27, 2025 at 11:55:54AM +0530, Borah, Chaitanya Kumar wrote:
> Hello Christian,
> 
> This is Chaitanya (again!).
> 
> This mail is regarding another regression we are seeing in our CI 
> runs[1] on drm-tip (with both xe and i915).
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

-       if (freeze_all_ptr && !(sb->s_type->fs_flags & FS_POWER_FREEZE))
+	if (!freeze_all_ptr && !(sb->s_type->fs_flags & FS_POWER_FREEZE))

?

-- 
Ville Syrjälä
Intel
