Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 113974899DC
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 14:25:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4029210F50B;
	Mon, 10 Jan 2022 13:25:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF17010F703
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Dec 2021 16:48:51 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 9570061678;
 Tue, 21 Dec 2021 16:48:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 364EFC36AE9;
 Tue, 21 Dec 2021 16:48:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1640105330;
 bh=fgQjOEK9sm0b9M0tdwJiKcpoJgzPStC9ataiX4jeAos=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=crywY5MlCRyy1dXdPs6KqE6A3HgirbfwF7oQvybEu7ktV1JDSpkqDyQP42VM1g5oA
 0Mc5bEidSDi9gx0WecYaHEO8e5Th5HDWnDypsaATtRxNInLRAGFU/1DuqjjsuuVXpG
 u63FoMeU2q1XArMaWZdfe0vUi5Cx8Nvz0hCDDzCEC6X6KUQaeRJVpNOx4zOVA7+G9s
 LPsUPeCYc0d0dPpuVT0/OIrxprTZGFJp14W+9lizguV0lhRkpaVWKqTiA/J1S9tlH4
 Z8BpBk+5trYrmAGD0funMk8AqEAm/k5MJ9SBfLMwMEArn3fwOHSKgGrXwbQKot/6jO
 jfpWUk0XYxcgw==
Date: Tue, 21 Dec 2021 09:48:46 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <YcIFbqLsMGPxJqAX@archlinux-ax161>
References: <20211213134450.3082-5-ville.syrjala@linux.intel.com>
 <20211213151435.9700-1-ville.syrjala@linux.intel.com>
 <Yb6EP13FeEhmvq5c@archlinux-ax161> <YcH7Tn9pOh4N43cL@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YcH7Tn9pOh4N43cL@intel.com>
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

On Tue, Dec 21, 2021 at 06:05:34PM +0200, Ville Syrjälä wrote:
> On Sat, Dec 18, 2021 at 06:00:47PM -0700, Nathan Chancellor wrote:
> > Hi Ville,
> > 
> > On Mon, Dec 13, 2021 at 05:14:35PM +0200, Ville Syrjala wrote:
> > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > 
> > > Expose FBC debugfs files for each crtc. These may or may not point
> > > to the same FBC instance depending on the platform.
> > > 
> > > We leave the old global debugfs files in place until
> > > igt catches up to the new per-crtc approach.
> > > 
> > > v2: Take a trip via intel_crtc_debugfs_add() (Jani)
> > > 
> > > Cc: Jani Nikula <jani.nikula@intel.com>
> > > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Apologies if this has already been reported and fixed, I have not seen
> > anything on lore.kernel.org or drm-intel about it.
> > 
> > This patch as commit e74c6aa955ca ("drm/i915/fbc: Register per-crtc
> > debugfs files") breaks the build when CONFIG_DEBUG_FS is disabled.
> > 
> > drivers/gpu/drm/i915/display/intel_fbc.c: In function ‘intel_fbc_crtc_debugfs_add’:
> > drivers/gpu/drm/i915/display/intel_fbc.c:1817:61: error: ‘struct drm_crtc’ has no member named ‘debugfs_entry’
> >  1817 |                 intel_fbc_debugfs_add(plane->fbc, crtc->base.debugfs_entry);
> >       |                                                             ^
> 
> Doh. I guess I didn't actually build test the final version with
> DEBUGFS=n.
> 
> Does this fix it for you?

Yes, it does.

Tested-by: Nathan Chancellor <nathan@kernel.org>

> diff --git a/include/drm/drm_crtc.h b/include/drm/drm_crtc.h
> index 13eeba2a750a..4d01b4d89775 100644
> --- a/include/drm/drm_crtc.h
> +++ b/include/drm/drm_crtc.h
> @@ -1135,14 +1135,12 @@ struct drm_crtc {
>  	 */
>  	spinlock_t commit_lock;
>  
> -#ifdef CONFIG_DEBUG_FS
>  	/**
>  	 * @debugfs_entry:
>  	 *
>  	 * Debugfs directory for this CRTC.
>  	 */
>  	struct dentry *debugfs_entry;
> -#endif
>  
>  	/**
>  	 * @crc:
> -- 
> 2.32.0
> 
> -- 
> Ville Syrjälä
> Intel
