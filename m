Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A50579972E4
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 19:19:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EF5A10E792;
	Wed,  9 Oct 2024 17:19:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DrUrJZuO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5760E10E792;
 Wed,  9 Oct 2024 17:19:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728494378; x=1760030378;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=v/JPioXe++14ZDFHiq+cgGFiIuQsyuyd3jf5IlQmoS8=;
 b=DrUrJZuOLIYj1keTSydNrU+ZEwnfSwAkeq/HU5BkGdiIPywNLGOfduzT
 zKRqy6XIhWuZv9RbsP6JHEh0D8iNs+goemMy06c2sJAP1fNrIFCmMIPGj
 LAqzriiTXnZVfM7X7SJ7tUTwUywH8nNL7f/KzYb6/xabbUXfskDZ0vY90
 NeKr/4PRWNBD2W79e4lBvqTRnY3raL5bf0iQZX9wMWIyrxs45KHHT2h7K
 NdVruh5JTh50msg9KVfnD4KNXQ140Ah93J/XyVzi7lwgOZI3FBsoEu2jJ
 iKkJkOVDAF9kORSDqfyCRbY4i6H4MWH+H9UrVVzhQU4J8cwhS8Y3nwqrR Q==;
X-CSE-ConnectionGUID: LLmnRVfGTte9J45JMrjT5Q==
X-CSE-MsgGUID: EdBhJ6peQVKijWnL2Af+TQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="27292262"
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="27292262"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 10:19:38 -0700
X-CSE-ConnectionGUID: DzPPD9lnQxOwkla3tJEbyQ==
X-CSE-MsgGUID: Sy2McQJYSS21zMnLOh4J4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="76265486"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.102.138.187])
 by orviesa009-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2024 10:19:37 -0700
Date: Wed, 9 Oct 2024 19:19:34 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 Tejas Upadhyay <tejas.upadhyay@intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH i-g-t] xe: Add test to check pci memory barrier capability
Message-ID: <20241009171934.t2cvb6j7tdxaflrd@kamilkon-desk.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org, Jani Nikula <jani.nikula@intel.com>,
 Tejas Upadhyay <tejas.upadhyay@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20241009095608.663743-1-tejas.upadhyay@intel.com>
 <20241009103608.uw7fbirmms2dfv62@kamilkon-desk.igk.intel.com>
 <875xq1a3i5.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <875xq1a3i5.fsf@intel.com>
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

Hi Jani,
On 2024-10-09 at 15:02:10 +0300, Jani Nikula wrote:
> On Wed, 09 Oct 2024, Kamil Konieczny <kamil.konieczny@linux.intel.com> wrote:
> > Hi Tejas,
> > On 2024-10-09 at 15:26:08 +0530, Tejas Upadhyay wrote:
> >> We want to make sure that direct mmap mapping of physical
> >> page at doorbell space and whole page is accessible in order
> >> to use pci memory barrier effect effectively.
> >> 
> >> This is basic pci memory barrier test to showcase xe driver
> >> support for feature. In follow up patches we will have more
> >> of corner and negative tests added later.
> >> 
> >> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
> >> ---
> >>  include/drm-uapi/xe_drm.h       |  3 ++
> >
> > Please send updates to drm-uapi with a separate patch.
> 
> Possibly the best way to codify kernel header updates would be to script
> them.

This is documented in README.md, see section about drm-uapi,

make INSTALL_HDR_PATH=<dest-dir> headers_install

also 

git log -- include/drm-uapi/xe_drm.h

could show you how it was done in the past.

Regards,
Kamil

> 
> This is what I did with intel_vbt_defs.h to automate. Should be pretty
> easy to tweak for other headers.
> 
> BR,
> Jani.
> 
> 
> #!/bin/bash
> 
> SINCE=962601ac4c78
> INFILE=drivers/gpu/drm/i915/display/intel_vbt_defs.h
> OUTFILE=tools/intel_vbt_defs.h
> KERNEL=$HOME/src/linux
> IGT=$HOME/src/intel-gpu-tools
> 
> 
> cd $KERNEL
> 
> for commit in $(git log --reverse --pretty=%h $SINCE..HEAD -- $INFILE); do
> 	ref=$(git cite $commit)
> 	git show $commit:$INFILE > $IGT/$OUTFILE
> 	cd $IGT
> 	git commit -as \
> 	    -m "tools/intel_vbt_decode: sync intel_vbt_defs.h with kernel commit $commit" \
> 	    -m "Synchronize intel_vbt_defs.h with kernel commit:" \
> 	    -m "$ref"
> 	cd -
> done
> 
> 
> -- 
> Jani Nikula, Intel
