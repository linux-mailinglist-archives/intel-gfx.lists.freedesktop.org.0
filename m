Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 422328811BD
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 13:37:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA8BD10E457;
	Wed, 20 Mar 2024 12:37:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ax9BP7W7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7E6910E457
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 12:37:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710938232; x=1742474232;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=XBRiPptpP5QfbyLgXuretVzTSYQdT/5KiBa31jhu0Nk=;
 b=Ax9BP7W7FbeP0EmP/PTkEpVjzDo4H0ZvWlZfP/3MbgvBbmD1pOzNEw7d
 p+puk3eKKpD7azWMOacxZ0zMsuzjzAfBXOev9QpJAyX2lQzjYwvnkHecd
 oXF0CAh2Kkdhk9cznKKYD+aV9jwPLtA4FZExeoRIqllMP2/FZ3F+gv3KX
 qXMsjM/lFkghlO4Mstav/nKvlCTD9z+J15LYb320+cWkCF0BzFgykxzE1
 u3WkeNmGedLGRct9STMbrCdUBS6iQvXJWx+GCSqSy4wLI8pvTr1Znk5H3
 JVRCrQXRphEkFc19nw+ALk05LMHsBtMbzLIrGa+90maJcqrjej+LMXQvY A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11018"; a="17314227"
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; d="scan'208";a="17314227"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 05:37:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11018"; a="827782517"
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; d="scan'208";a="827782517"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 20 Mar 2024 05:37:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 20 Mar 2024 14:37:07 +0200
Date: Wed, 20 Mar 2024 14:37:07 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: cocci@systeme.lip6.fr
Cc: Julia Lawall <julia.lawall@inria.fr>,
 Jani Nikula <jani.nikula@linux.intel.com>, intel-gfx@lists.freedesktop.org
Subject: Weirdness in parsing cpp macros
Message-ID: <ZfrYc_rKGETrJsE4@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
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

Hi Julia et al,

In Linux drm/i915 driver (drivers/gpu/drm/i915/display/intel_pps.[ch])
we have a magic macro like this:

#define with_intel_pps_lock(dp, wf) \
        for ((wf) = intel_pps_lock(dp); (wf); (wf) = intel_pps_unlock((dp), (wf)))


which we can then use like so:
...
with_intel_pps_lock(intel_dp, wakeref)
	wait_panel_power_cycle(intel_dp);
...


If I try to modify this code with eg.

@@
@@
- wait_panel_power_cycle
+ _wait_panel_power_cycle

spatch fails to parse the macro and won't do the changes here.


While experimenting with this I discovered that
I can make it work by:
- moving the macro definition into intel_pps.c file from intel_pps.h
- renaming the macro to contain the substring "for" (doesn't matter
  where in the macro name the "for" appears)

What on earth is going on here?

-- 
Ville Syrjälä
Intel
