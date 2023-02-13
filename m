Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B866869520E
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 21:41:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9D1610E2AD;
	Mon, 13 Feb 2023 20:41:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EFC410E2AD
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Feb 2023 20:41:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676320877; x=1707856877;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=8wuaXo4+Zr6L1Fxd612ktYYZfROioVe/IQETnVh79F0=;
 b=j9WbEzMA+laY45IXdM7HHpuGfM1hqoNTn63JcpHubzc/yyiRAHpx9FlZ
 ipVOYbhTNY8KdR5xYjSXf2ISiqURJVwL7vBSgRRgPlHv0ni5NRjkfvZ9M
 IZrOhZ+LC99fvj/9KOCP6nEoVV3qcIuEF8LONogqAl/VInoaRBcJcbSGw
 ex2dXv7vNhKFEen/vRQk9HvCFJIrL4ATA7Ux81CXqjC/MsfzdSxLtp4tp
 PN3HfGBkpYvzff6yRmkbxBZfLzXq6Q2SUjR8F3wvYpGnWmamWxDjHgtdd
 aXp9r66SlODeiYu3yJYuztVXxOsZqRDdiYOqBmG4H3r8Z7OPIEmYsxIA/ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="393396087"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="393396087"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 12:41:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="701412676"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="701412676"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga001.jf.intel.com with SMTP; 13 Feb 2023 12:41:14 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 13 Feb 2023 22:41:13 +0200
Date: Mon, 13 Feb 2023 22:41:13 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y+qgabuwH4PScspI@intel.com>
References: <cover.1676317696.git.jani.nikula@intel.com>
 <ddf04a07a37f0368b3fef85d4ebb924082fec6cd.1676317696.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ddf04a07a37f0368b3fef85d4ebb924082fec6cd.1676317696.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 2/7] drm/i915/wm: move remaining
 watermark code out of intel_pm.c
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

On Mon, Feb 13, 2023 at 09:59:57PM +0200, Jani Nikula wrote:
> Add new files intel_wm.[ch] and i9xx_wm.[ch] under display/ to hold
> generic and pre-SKL watermark code, respectively. SKL+ watermark code
> has already been split out to skl_watermark.[ch].
> 
> Use the _wm.[ch] naming for brevity; we may want to rename
> skl_watermark.[ch] later accordingly.
> 
> Add new intel_wm_init() to call either skl_wm_init() or
> i9xx_wm_init(i915) depending on the platform, the latter comprising of
> the remains of intel_init_pm().
> 
> Sprinkle in some minor checkpatch fixes while moving the code.
> 
> v2:
> - Rebase
> - Fix copyright year
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

-- 
Ville Syrjälä
Intel
