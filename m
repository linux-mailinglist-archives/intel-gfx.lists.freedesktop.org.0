Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA76E825121
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jan 2024 10:47:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36D9610E583;
	Fri,  5 Jan 2024 09:47:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A713E10E583
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jan 2024 09:47:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704448044; x=1735984044;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=/y43BU9fJ/IxEVZ7FIThMeuCkYbE3wxFwgsuY6JfVXM=;
 b=m5JTNTi9k9DeHaioVYWwX2L5wWEo6tGfePa0kU1t654yA9tLbUcXpCbZ
 bvP/S6gPRM7adeKjuWSCPTRzIUe/EEm6Iuvh3U9dQE2mpEUhWD9CedMVO
 YrCgEi0kx2WPyYRIfNcz8+B63RC9XArdDHmoBqtcB28t4XXVOi0L9GQyZ
 stVyaBPjmmuqVOYFpOAbIl2Dr4HzX1tq4MXEIJQrLHz4scaLvdvPxcltA
 n+W4Cw84MQJQWm+AKKsMEZgKt+XbQPQe9NNdIhl71DvzRyQeUwLA86Wf6
 6UljP4rwTUmL0ACDgKP7y61sIuM5AR2TK6t+CVeibNgqvWTrwWx3TctOT Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="4241666"
X-IronPort-AV: E=Sophos;i="6.04,333,1695711600"; 
   d="scan'208";a="4241666"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 01:47:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="846532793"
X-IronPort-AV: E=Sophos;i="6.04,333,1695711600"; d="scan'208";a="846532793"
Received: from ftrahe-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.36.116])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 01:47:21 -0800
Date: Fri, 5 Jan 2024 10:47:17 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH] drm/i915: don't make assumptions about intel_wakeref_t
 type
Message-ID: <ZZfQJbdGvim9fpkF@ashyti-mobl2.lan>
References: <20240104164600.783371-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240104164600.783371-1-jani.nikula@intel.com>
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, intel-gfx@lists.freedesktop.org,
 Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani,

On Thu, Jan 04, 2024 at 06:46:00PM +0200, Jani Nikula wrote:
> intel_wakeref_t is supposed to be a mostly opaque cookie to its
> users. It should only be checked for being non-zero and set to
> zero. Debug logging its actual value is meaningless. Switch to just
> debug logging whether the async_put_wakeref is non-zero.
> 
> The issue dates back to much earlier than
> commit b49e894c3fd8 ("drm/i915: Replace custom intel runtime_pm tracker
> with ref_tracker library"), but this is the one that brought about a
> build failure due to the printf format.
> 
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Closes: https://lore.kernel.org/r/20240102111222.2db11208@canb.auug.org.au
> Fixes: b49e894c3fd8 ("drm/i915: Replace custom intel runtime_pm tracker with ref_tracker library")
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi
