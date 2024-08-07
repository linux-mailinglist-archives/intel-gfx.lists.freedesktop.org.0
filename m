Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6BA494AA91
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2024 16:45:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 697C910E557;
	Wed,  7 Aug 2024 14:45:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fREnD0Vs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4349C10E557
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2024 14:45:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723041950; x=1754577950;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=0/pshSqcmQJD++2/WXMfhDpvl4BdNNTe70SVfyKRofc=;
 b=fREnD0Vsm6wGa8nj2hAQxJoJT5M66vCC4NOVUgOqzAViuywSwSSSIFqe
 XLRn8yVK68DJKYjkltOYdvg/6zKeKzpC3PSiv0YHcJRgi6QRH79d6DvXo
 +ZkWUue5kVsF+fLnyAvlmaRI0+mYGG5XF8UbQR11TcAaxcxH7HBuZjcuL
 3F79Lz5HsQZGhUvq+HLwvQOS1geXLdr/v8i6SAH5Xv7JRMKuH7+Yr6TzD
 wpx+R7XDGNZyObsk1uzV62HbBKYYoot2wbYzUGmmaVWAJG0h/zvtbKqjm
 06Fw5gFef8SDEqgIKmRI8h9YeEd6Vg4oQwGDrInj79r0+PT9WcwbRnuPd A==;
X-CSE-ConnectionGUID: XzcbnbqLRbe2riDyAVyWsg==
X-CSE-MsgGUID: GS9CHCeLQTG9C9fmehoR2g==
X-IronPort-AV: E=McAfee;i="6700,10204,11157"; a="21235900"
X-IronPort-AV: E=Sophos;i="6.09,270,1716274800"; d="scan'208";a="21235900"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 07:45:50 -0700
X-CSE-ConnectionGUID: uNK4eB+4TPK+61W7+G6PYA==
X-CSE-MsgGUID: s2Quah7SQty4mT9p5trkAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,270,1716274800"; d="scan'208";a="80123946"
Received: from oandoniu-mobl3.ger.corp.intel.com (HELO intel.com)
 ([10.245.245.8])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 07:45:48 -0700
Date: Wed, 7 Aug 2024 15:45:44 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 3/3] drm/i915: remove __i915_printk()
Message-ID: <ZrOImI3g0RWuYge5@ashyti-mobl2.lan>
References: <cover.1722951405.git.jani.nikula@intel.com>
 <be9baeab281f75999e96cc7ad1c06c6680494bc1.1722951405.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <be9baeab281f75999e96cc7ad1c06c6680494bc1.1722951405.git.jani.nikula@intel.com>
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

On Tue, Aug 06, 2024 at 04:38:32PM +0300, Jani Nikula wrote:
> With the previous cleanups, the last remaining user of __i915_printk()
> is i915_probe_error(). Switch that to use drm_dbg() and drm_err()
> instead, dropping the request to report bugs in the few remaining
> specific cases.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Good cleanup, thanks!

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi
