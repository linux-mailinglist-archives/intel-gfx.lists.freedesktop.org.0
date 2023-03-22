Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F3F6C49C0
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Mar 2023 12:59:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2447F10E920;
	Wed, 22 Mar 2023 11:59:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7613810E91D
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Mar 2023 11:58:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679486337; x=1711022337;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=rIGvCJTZ5CFYoPsxL8BrkoxdGSgk0mhzWlkzD2oBQAg=;
 b=QWI/6zB5hhVI7P9wtF+fHqxNCVyYxm5cV+esUItOeHpAkvlkKAjF/YBc
 5Aor1rRqs+rUBiSKisood6a7jqwsySu2ur0OYK0eFIRwALW5oJU0P5q2Q
 P1BlyO4n9hjBRjP0t1HNY/MpmUkszB2W7AemkQN5AQHJ79Yv5noK29fwm
 Zl6y7/+mKCn7ntHdlOJCyFEQrbcXOWdaE8FijZxPq1FvAS/TRAFljhCSi
 RQksKDZbbUyVqWjOFiVYlR74oIUcjRavonHDHBL2M9fhTRug0BEa3s59w
 S5yNr0GNTk4+hnbI4Hdq4IaFz7DUWu+IqKOjCMjtRryVf7WKQTFq5MkVB A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="425480139"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="425480139"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 04:58:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="675238185"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="675238185"
Received: from jprokopo-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.61.221])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 04:58:55 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Patchwork <patchwork@emeril.freedesktop.org>, Christian =?utf-8?Q?K?=
 =?utf-8?Q?=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <167895512494.19095.7557184368789335373@emeril.freedesktop.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230316082035.567520-1-christian.koenig@amd.com>
 <167895512494.19095.7557184368789335373@emeril.freedesktop.org>
Date: Wed, 22 Mar 2023 13:58:52 +0200
Message-ID: <87lejp6lqb.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5B1/7=5D_drm=3A_remove_drm=5Fdev=5Fset=5Fu?=
 =?utf-8?q?nique?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 16 Mar 2023, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: series starting with [1/7] drm: remove drm_dev_set_unique
> URL   : https://patchwork.freedesktop.org/series/115239/
> State : failure
>
> == Summary ==
>
> Error: patch https://patchwork.freedesktop.org/api/1.0/series/115239/revisions/1/mbox/ not applied
> Applying: drm: remove drm_dev_set_unique
> Applying: drm/tegra: allow compile test on !ARM
> Applying: drm/debugfs: stop calling debugfs_init() for the render node
> Applying: drm/debugfs: rework debugfs directory creation v2
> Applying: drm/debugfs: remove dev->debugfs_list and debugfs_mutex v2
> Applying: drm/debugfs: rework drm_debugfs_create_files implementation
> Applying: drm/debugfs: remove debugfs_root pointer from minor
> error: sha1 information is lacking or useless (drivers/gpu/drm/drm_debugfs.c).
> error: could not build fake ancestor
> hint: Use 'git am --show-current-patch=diff' to see the failed patch
> Patch failed at 0007 drm/debugfs: remove debugfs_root pointer from minor
> When you have resolved this problem, run "git am --continue".
> If you prefer to skip this patch, run "git am --skip" instead.
> To restore the original branch and stop patching, run "git am --abort".

Please send a series based on drm-tip to get a CI run on this.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
