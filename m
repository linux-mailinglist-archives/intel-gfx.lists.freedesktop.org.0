Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30DB078A552
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Aug 2023 07:42:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C9DD10E072;
	Mon, 28 Aug 2023 05:42:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 097D910E05C
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Aug 2023 05:42:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693201322; x=1724737322;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=iD/wtL6bzclPvTEt1J98IbqWQkFhAk7pgDkoy9LfAIo=;
 b=VMSSfhwfst8AxwNHhWIwBws2V/4aecAkgbhCM+6XyIz1YFM8EfiKKJx4
 yqaNlrwDBctSdv2BmYmcI4loeCN0nPaK23BMmcX474FLtN+5749DpQE2u
 fTSI+xrWO3bTp8cqSKJA6GhXFrLyQymytTtfbjNbf/On9gPlpLDvpHAKk
 yHDLDYw5MgOnUfdL0nkEuK/e70eG9TAhWfwxSLaz76CE+CIL3w6iBVSTh
 SHoVfKP5PiGiQRH7WPObamx7JQ8JXtyBmL3eZJESs0OEa6zQ+gIg8/xAz
 rkka4qK/hZzgYIxDBK9nFUHwfpo4ZZ0B+dKwIVSW8aE7V1pzRHH1G3OFG w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="372420541"
X-IronPort-AV: E=Sophos;i="6.02,206,1688454000"; d="scan'208";a="372420541"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2023 22:42:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="852707986"
X-IronPort-AV: E=Sophos;i="6.02,206,1688454000"; d="scan'208";a="852707986"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga002.fm.intel.com with SMTP; 27 Aug 2023 22:41:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 28 Aug 2023 08:41:59 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Aug 2023 08:41:40 +0300
Message-ID: <20230828054140.28054-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230828054140.28054-1-ville.syrjala@linux.intel.com>
References: <20230828054140.28054-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/6] drm/i915: Optimize out redundant M/N updates
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Don't perform a seamless M/N update if the values aren't actually
changing. This avoids doing extra shenanigans during vblank evasion
needlessly.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6196ef76390b..c20eaf0e7a91 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5525,7 +5525,9 @@ static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_sta
 	else
 		new_crtc_state->uapi.mode_changed = false;
 
-	if (intel_crtc_needs_modeset(new_crtc_state))
+	if (intel_crtc_needs_modeset(new_crtc_state) ||
+	    intel_compare_link_m_n(&old_crtc_state->dp_m_n,
+				   &new_crtc_state->dp_m_n))
 		new_crtc_state->update_m_n = false;
 
 	if (!intel_crtc_needs_modeset(new_crtc_state))
-- 
2.41.0

