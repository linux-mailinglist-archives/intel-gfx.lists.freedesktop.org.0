Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD8F55BDFBB
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Sep 2022 10:20:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EEE510E3A4;
	Tue, 20 Sep 2022 08:20:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0218310E3A4
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Sep 2022 08:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663662007; x=1695198007;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=0sXH9r8zsAmVV3K3xzk20R5qUOxR1YyQZVnBpNNeWfM=;
 b=bdPAJaQL5Xl6Sr/EEgoaWbY+Pl5H+ctJFl6r4XOtLZa2lf42SG0Liyyg
 U8L3i2bi4RsTSxdVOOsVSX5e4vreqZnl+LkxLWjsD53P+sFAMU56y/8W6
 y5l1o+N31CXxDZ1nqeWJ3MZytgHXno94BAP0pY6yVWPU7dUq7Q5kAzfX+
 QL7x6U5SusQ3qqz8egQXRR8+ffm8SVXa6m4KE+peaqZvDwxAfd0sTXhgr
 RjEx011yDKrhzG6a5I5xKpIB1hPM+RDQH/LXEiH/JuIb8gl7nvLZjtr6/
 8tFlRknSjnOg7NRciCbJwnhWrOqi+5iCRv3WykLjzfRtla+UpaeKUtqUr w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="297224412"
X-IronPort-AV: E=Sophos;i="5.93,330,1654585200"; d="scan'208";a="297224412"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2022 01:20:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,330,1654585200"; d="scan'208";a="722645245"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga002.fm.intel.com with SMTP; 20 Sep 2022 01:20:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 20 Sep 2022 11:20:01 +0300
Date: Tue, 20 Sep 2022 11:20:01 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <Yyl3sZ/zE4eZR4fH@intel.com>
References: <20220917004404.414981-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220917004404.414981-1-anusha.srivatsa@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 0/6] Introduce struct cdclk_step
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Sep 16, 2022 at 05:43:58PM -0700, Anusha Srivatsa wrote:
> This is a prep series for the actual cdclk refactoring
> that will be sent following this. Idea is to have a
> struct - cdclk_step that holds the following:
> - cdclk action (squash, crawl or modeset)
> - cdclk frequency
> which gets populated in atomic check. Driver
> uses the populated values during atomic commit
> to do the suitable sequence of actions like
> programming squash ctl registers in case of squashing
> or PLL sequence incase of modeset and so on.
> 
> This series just addresses the initial idea. The actual plumming
> in the atomic commit phase will be sent shortly.

OK, people keep ignoring what I say so I just typed up the
code quickly. This to me seems like the most straightforward
way to do what we need:
https://github.com/vsyrjala/linux.git cdclk_crawl_and_squash

Totally untested ofc, apart from me doing a quick scan
through our cdclk tables for the crawl+squahs platforms
to make sure that this approach should produce sane values.

> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> 
> Anusha Srivatsa (6):
>   drm/i915/display Add dg2_prog_squash_ctl() helper
>   drm/i915/display: add cdclk action struct to cdclk_config
>   drm/i915/display: Embed the new struct steps for squashing
>   drm/i915/display: Embed the new struct steps for crawling
>   drm/i915/display: Embed the new struct steps for modeset
>   drm/i915/display: Dump the new cdclk config values
> 
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 77 +++++++++++++++++-----
>  drivers/gpu/drm/i915/display/intel_cdclk.h | 16 ++++-
>  2 files changed, 74 insertions(+), 19 deletions(-)
> 
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
