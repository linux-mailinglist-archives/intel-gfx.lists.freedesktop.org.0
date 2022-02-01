Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6C64A61A5
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Feb 2022 17:55:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4A7710E141;
	Tue,  1 Feb 2022 16:55:17 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8648D10E141
 for <Intel-gfx@lists.freedesktop.org>; Tue,  1 Feb 2022 16:55:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643734516; x=1675270516;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=xx0iuhEHaNaBatKew9FY4hkfa2jssOFlz/7f+8rGUMc=;
 b=VFM4DllgYngex8WxjyHjgf6YvqzDdht3II7CXWrwNTeEGeVmxj0ZqNMd
 zwmOZu15F0thWhCPEAQdZ1yO9DW0BIkPisvvUrhYSahJYqkgtTCVDjhOD
 rg8Zf1Dl8S6AMoY9dzA7y1XrVxj1wA7y2NsVb5T94or0BDZhDi4qwN/6s
 gcvIAY6M/Ib15LoxGUrmXVsdKAJGmOWkE6AqUyToRmS2NpcsHJjU5igIo
 Vi2U7KpbdZY0iEDXOlLFzpSiHCkBzA0AITqtnjOb7xBdF1f+9eqYG32fm
 P9OMuDESvarf4L77lQiI8wXesB9k5ucPeXKy+2TAkE3OBiCvPKr5gFR/K g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10245"; a="246567074"
X-IronPort-AV: E=Sophos;i="5.88,334,1635231600"; d="scan'208";a="246567074"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2022 08:55:16 -0800
X-IronPort-AV: E=Sophos;i="5.88,334,1635231600"; d="scan'208";a="497408270"
Received: from manojbab-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.43.7])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2022 08:55:15 -0800
Date: Tue, 1 Feb 2022 08:55:15 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20220201165515.xntdympc4n3pdhif@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220201111533.250242-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20220201111533.250242-1-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [RFC 0/2] Compile out integrated
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
Cc: Jani Nikula <jani.nikula@intel.com>, Intel-gfx@lists.freedesktop.org,
 Michael Cheng <michael.cheng@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 01, 2022 at 11:15:31AM +0000, Tvrtko Ursulin wrote:
>From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>
>Quicky and dirty hack based on some old ideas. Thought maybe the approach might
>interest the Arm port guys. But with IS_GEN_RANGE removed easy gains are not so
>big so meh.. Maybe some more easy wins with IS_DISPLAY_VER but I haven't looked
>into that side.
>
> 3884664  449681    6720 4341065  423d49 i915.ko.tip
> 3599989  429034    6688 4035711  3d947f i915.ko.noigp

By these numbers probably it's hard to justify. Another thing to consider
is that it's very common to have on the same system both
integrated and discrete - doing this would remove at compile time any
chance of driving the integrated one.

Lucas De Marchi

>
>Note debug kconfig so everything is inflated. Whether or not the relative gain
>would change with production kconfig I am not sure.
>
>P.S.
>I was a bit curious there were no build errors around functions no longer used
>so either there were none (would mean patch is not really that effective), or
>something changed with compiler warnings/smarts. Haven't looked into it.
>
>Tvrtko Ursulin (2):
>  igp kconfig
>  jsl/ehl
>
> drivers/gpu/drm/i915/Kconfig                  |   5 +
> drivers/gpu/drm/i915/Kconfig.platforms        |   7 +
> .../drm/i915/display/intel_ddi_buf_trans.c    |   4 +-
> drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   2 +-
> drivers/gpu/drm/i915/i915_drv.h               | 128 +++++++++++-------
> drivers/gpu/drm/i915/i915_pci.c               |  44 +++++-
> 6 files changed, 134 insertions(+), 56 deletions(-)
> create mode 100644 drivers/gpu/drm/i915/Kconfig.platforms
>
>-- 
>2.32.0
>
