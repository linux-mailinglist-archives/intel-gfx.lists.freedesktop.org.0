Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC4B64899D4
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 14:24:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 345ED12ABB5;
	Mon, 10 Jan 2022 13:24:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C03C010E8A9
 for <intel-gfx@lists.freedesktop.org>; Sun, 19 Dec 2021 01:00:52 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id B7FDD60C6D;
 Sun, 19 Dec 2021 01:00:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 555F9C36AE0;
 Sun, 19 Dec 2021 01:00:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1639875651;
 bh=0XxAgF4gI6d6b2auC34kR/8rwKzozniUGRMCYFATiG0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=poumE6IMhA1RCOiOQy0/WXWlL/orsnWYyWWvoQPRBFZ+njZuR/ERNFSiJLZqHp6mn
 huCfkvImIJEWMA7IUpKlXTdhoCw7LBh5Xw4mEd71g4zZCNwILcWXZsqxwqeihT6ZNc
 A8a0KihnC+3reZjOjn+VDd5HGUlE0fGFAAu4aPCEA12y0gd4zgHyLBnpcYk+kemTlx
 kW+vCFkcm8rxkdmjKo2kA2Gp2xfrYl2J49LeWdG4g4N5gVf6POF/xYiSa8YFEvf958
 jNaSXID13qNhKjdccs/mwP5/etY1qDn3+v9QmKIWepjUK4Qf8kH8ors7z9NrFwCXVd
 nLZx73IrcaDqg==
Date: Sat, 18 Dec 2021 18:00:47 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <Yb6EP13FeEhmvq5c@archlinux-ax161>
References: <20211213134450.3082-5-ville.syrjala@linux.intel.com>
 <20211213151435.9700-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211213151435.9700-1-ville.syrjala@linux.intel.com>
X-Mailman-Approved-At: Mon, 10 Jan 2022 13:24:14 +0000
Subject: Re: [Intel-gfx] [PATCH v3 4/4] drm/i915/fbc: Register per-crtc
 debugfs files
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Ville,

On Mon, Dec 13, 2021 at 05:14:35PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Expose FBC debugfs files for each crtc. These may or may not point
> to the same FBC instance depending on the platform.
> 
> We leave the old global debugfs files in place until
> igt catches up to the new per-crtc approach.
> 
> v2: Take a trip via intel_crtc_debugfs_add() (Jani)
> 
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Apologies if this has already been reported and fixed, I have not seen
anything on lore.kernel.org or drm-intel about it.

This patch as commit e74c6aa955ca ("drm/i915/fbc: Register per-crtc
debugfs files") breaks the build when CONFIG_DEBUG_FS is disabled.

drivers/gpu/drm/i915/display/intel_fbc.c: In function ‘intel_fbc_crtc_debugfs_add’:
drivers/gpu/drm/i915/display/intel_fbc.c:1817:61: error: ‘struct drm_crtc’ has no member named ‘debugfs_entry’
 1817 |                 intel_fbc_debugfs_add(plane->fbc, crtc->base.debugfs_entry);
      |                                                             ^

Cheers,
Nathan
