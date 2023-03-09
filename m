Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5B9C6B2BD8
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Mar 2023 18:18:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C39E10E1AA;
	Thu,  9 Mar 2023 17:18:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 935B110E1AA
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Mar 2023 17:18:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678382308; x=1709918308;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Xx+OROiJN/LhdXzg8Oi9gggIPMzMNZCTbu/+GdR4Vwo=;
 b=Vcc8iN+V0tkaND8o0lw5m4VnfqHrfisVCNNTZ7b3NsR56O+zZdadp1xr
 ZzPfULtiRbWVNVAam2i+1Qfm/CF3uPzf+LPYrjOqjp2D89/t0xUdxfUK9
 WJztLHtTFKmek0JzcC65ekQK/aSAyiOxusy/VsBMXk6C3rTKkIvioCaGC
 m7W37YRdNeXW0Ru4dYwsA7FFeID/upjnyJFj6T8exxN8ShVjqFHXUzCce
 9O9E3z1NeZJJXi2HoCnn22ZHQegUhZD5YkqPJ9B9Eh87IvD/UaXWrsf84
 nxLB224AJEGZ0CYKsEzpzObp5un/QtSeo1DMxTH4Sj+U64tBLx3T3YYBS A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="320357460"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="320357460"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 09:18:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="1006810761"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="1006810761"
Received: from pmezinca-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.251.219.71])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 09:18:19 -0800
Date: Thu, 9 Mar 2023 18:18:15 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <ZAoU1wR+6ZLLAq5D@ashyti-mobl2.lan>
References: <20230301201053.928709-1-radhakrishna.sripada@intel.com>
 <20230301201053.928709-5-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230301201053.928709-5-radhakrishna.sripada@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 4/5] drm/i915/fbdev: lock the fbdev obj
 before vma pin
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
Cc: intel-gfx@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>,
 Chris Wilson <chris.p.wilson@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Radhakrishna,

On Wed, Mar 01, 2023 at 12:10:52PM -0800, Radhakrishna Sripada wrote:
> From: Tejas Upadhyay <tejas.upadhyay@intel.com>
> 
> lock the fbdev obj before calling into
> i915_vma_pin_iomap(). This helps to solve below :
> 
> <7>[   93.563308] i915 0000:00:02.0: [drm:intelfb_create [i915]] no BIOS fb, allocating a new one
> <4>[   93.581844] ------------[ cut here ]------------
> <4>[   93.581855] WARNING: CPU: 12 PID: 625 at drivers/gpu/drm/i915/gem/i915_gem_pages.c:424 i915_gem_object_pin_map+0x152/0x1c0 [i915]
> 
> Fixes: f0b6b01b3efe ("drm/i915: Add ww context to intel_dpt_pin, v2.")
> Cc: Chris Wilson <chris.p.wilson@intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi
