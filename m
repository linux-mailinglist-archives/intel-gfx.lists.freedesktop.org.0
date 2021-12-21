Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 80CE347C374
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Dec 2021 17:06:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2BED11AC65;
	Tue, 21 Dec 2021 16:05:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74D6C11AC65
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Dec 2021 16:05:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640102757; x=1671638757;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=OVb4fuidJkyR0m2J0hseMJgcfirCoxC4VDS7MyLd1K4=;
 b=NAHLbVn3A99TkYssNtaS3UlrSlVznOiz8HZgJT+jO9TVXickwqRQ9Z0D
 ONfqg90cfe8PdBIRjVBluc06c8WKcxdSacmPyTop5fhNjdDwUhBps1kGu
 UZWi5u8svmwC+DweMfRlM22vkkHrV8l9D2jgOnK95w735JBotvphy5Kgf
 +UcwwuRq+GDFwxIhpEHo8S6e08P3Q9kmkSCxlmxHkBuHr8RMaTGUpls2J
 IrbpaWNhxPVUMdUtuexcYYzIzQmZxH5Iv7SUPDeyu7Z0HcB6KQe0B/1Om
 uqJ6xdhvFwomS0Phwi5+P7Wp2IOJ21HwzOLd5/f/LRKZ7TaZ77sPyisTh Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10204"; a="239168577"
X-IronPort-AV: E=Sophos;i="5.88,223,1635231600"; d="scan'208";a="239168577"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2021 08:05:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,223,1635231600"; d="scan'208";a="548112443"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga001.jf.intel.com with SMTP; 21 Dec 2021 08:05:35 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 21 Dec 2021 18:05:34 +0200
Date: Tue, 21 Dec 2021 18:05:34 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Nathan Chancellor <nathan@kernel.org>
Message-ID: <YcH7Tn9pOh4N43cL@intel.com>
References: <20211213134450.3082-5-ville.syrjala@linux.intel.com>
 <20211213151435.9700-1-ville.syrjala@linux.intel.com>
 <Yb6EP13FeEhmvq5c@archlinux-ax161>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Yb6EP13FeEhmvq5c@archlinux-ax161>
X-Patchwork-Hint: comment
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

On Sat, Dec 18, 2021 at 06:00:47PM -0700, Nathan Chancellor wrote:
> Hi Ville,
> 
> On Mon, Dec 13, 2021 at 05:14:35PM +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Expose FBC debugfs files for each crtc. These may or may not point
> > to the same FBC instance depending on the platform.
> > 
> > We leave the old global debugfs files in place until
> > igt catches up to the new per-crtc approach.
> > 
> > v2: Take a trip via intel_crtc_debugfs_add() (Jani)
> > 
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Apologies if this has already been reported and fixed, I have not seen
> anything on lore.kernel.org or drm-intel about it.
> 
> This patch as commit e74c6aa955ca ("drm/i915/fbc: Register per-crtc
> debugfs files") breaks the build when CONFIG_DEBUG_FS is disabled.
> 
> drivers/gpu/drm/i915/display/intel_fbc.c: In function ‘intel_fbc_crtc_debugfs_add’:
> drivers/gpu/drm/i915/display/intel_fbc.c:1817:61: error: ‘struct drm_crtc’ has no member named ‘debugfs_entry’
>  1817 |                 intel_fbc_debugfs_add(plane->fbc, crtc->base.debugfs_entry);
>       |                                                             ^

Doh. I guess I didn't actually build test the final version with
DEBUGFS=n.

Does this fix it for you?

diff --git a/include/drm/drm_crtc.h b/include/drm/drm_crtc.h
index 13eeba2a750a..4d01b4d89775 100644
--- a/include/drm/drm_crtc.h
+++ b/include/drm/drm_crtc.h
@@ -1135,14 +1135,12 @@ struct drm_crtc {
 	 */
 	spinlock_t commit_lock;
 
-#ifdef CONFIG_DEBUG_FS
 	/**
 	 * @debugfs_entry:
 	 *
 	 * Debugfs directory for this CRTC.
 	 */
 	struct dentry *debugfs_entry;
-#endif
 
 	/**
 	 * @crc:
-- 
2.32.0

-- 
Ville Syrjälä
Intel
