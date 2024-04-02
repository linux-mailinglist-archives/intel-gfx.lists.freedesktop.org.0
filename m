Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE4B89568A
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 16:25:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE02010F31A;
	Tue,  2 Apr 2024 14:25:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EY76Fegk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6632310F653
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Apr 2024 14:25:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712067931; x=1743603931;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=EXB1L8myKEBuq1q6AVPpFlh7ZRWspnklUboD7Vcz6yE=;
 b=EY76FegkMCrjVg/PVFt9P1JoxywV8kMrd86YHBP+65+t15abRIjCrkQ5
 8rnoMmR+WIj3nDx+a96zMaaGZVyO+LOc4NTXDDqni34wn8JNm1y6oAEYh
 t0W3tg37JTV13THKMKSpkQE/OBpdM0f01VE4lmizptUqFINS0s7BqlREl
 KrQjcvrQDTWAw1ju+vTHAFDCotOvkev4h7x+NM7uok/OwmlA20S+7VcfO
 jjyA2aBvw1dTR6eZ07PtIRmFtynI0oMbEYe0m/LkmJUMgekO/ZRFLylSe
 73QuRmJxOnbvF5sDqRwu/upjUQAVTP9BExVC6mikwCa2hQyRxNERIdk7k Q==;
X-CSE-ConnectionGUID: F71bh5BFT9WrqWwXEb9ONA==
X-CSE-MsgGUID: J8xkzfgdT2+4S3wAEjsOTw==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="7368322"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; 
   d="scan'208";a="7368322"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 07:25:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="827789426"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="827789426"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 02 Apr 2024 07:25:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 Apr 2024 17:25:27 +0300
Date: Tue, 2 Apr 2024 17:25:27 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 11/13] drm/i915: Implement vblank synchronized MBUS join
 changes
Message-ID: <ZgwVV1Yyl5hTY_P5@intel.com>
References: <20240327174544.983-1-ville.syrjala@linux.intel.com>
 <20240327174544.983-12-ville.syrjala@linux.intel.com>
 <171173610219.2604.2909482202174397972@gjsousa-mobl2>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <171173610219.2604.2909482202174397972@gjsousa-mobl2>
X-Patchwork-Hint: comment
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

On Fri, Mar 29, 2024 at 03:15:02PM -0300, Gustavo Sousa wrote:
> Quoting Ville Syrjala (2024-03-27 14:45:42-03:00)
> >@@ -3663,24 +3659,42 @@ static void intel_dbuf_mdclk_min_tracker_update(struct intel_atomic_state *state
> >                 intel_atomic_get_old_dbuf_state(state);
> >         const struct intel_dbuf_state *new_dbuf_state =
> >                 intel_atomic_get_new_dbuf_state(state);
> >+        int mdclk_cdclk_ratio;
> > 
> >-        if (DISPLAY_VER(i915) >= 20 &&
> >-            old_dbuf_state->mdclk_cdclk_ratio != new_dbuf_state->mdclk_cdclk_ratio) {
> >-                /*
> >-                 * For Xe2LPD and beyond, when there is a change in the ratio
> >-                 * between MDCLK and CDCLK, updates to related registers need to
> >-                 * happen at a specific point in the CDCLK change sequence. In
> >-                 * that case, we defer to the call to
> >-                 * intel_dbuf_mdclk_cdclk_ratio_update() to the CDCLK logic.
> >-                 */
> >-                return;
> >+        if (intel_cdclk_is_decreasing_later(state)) {
> >+                /* cdclk/mdclk will be changed later by intel_set_cdclk_post_plane_update() */
> >+                mdclk_cdclk_ratio = old_dbuf_state->mdclk_cdclk_ratio;
> >+        } else {
> >+                /* cdclk/mdclk already changed by intel_set_cdclk_pre_plane_update() */
> >+                mdclk_cdclk_ratio = new_dbuf_state->mdclk_cdclk_ratio;
> >         }
> > 
> >-        intel_dbuf_mdclk_cdclk_ratio_update(i915, new_dbuf_state->mdclk_cdclk_ratio,
> >+        intel_dbuf_mdclk_cdclk_ratio_update(i915, mdclk_cdclk_ratio,
> >                                             new_dbuf_state->joined_mbus);
> 
> I get the feeling that this part actually belongs to the previous patch.

Hmm, right. In fact I think it can just be its own patch.
I'll carve it out.

-- 
Ville Syrjälä
Intel
