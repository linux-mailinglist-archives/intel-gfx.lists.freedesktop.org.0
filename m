Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 265FD6CF2B1
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 21:04:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A25110E55A;
	Wed, 29 Mar 2023 19:04:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8136C10E55A
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 19:04:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680116688; x=1711652688;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=v4NkpYo6ow2ZIgyvPKbuK3HQU/q1NAchZIstKshxuuQ=;
 b=dFGCgvNE1xEsHx5w9X+nHDt+NjdwN9kcZ5tKvhh9huSI/gQ+xuKmKzYO
 80Pm+TDxCPqzqSuZFrNyUrBXSXxBBPL/BkEKflzNLQnTZ71/GksRLTJso
 PGTWfPSOxZaqIqyWV4D+w0LKdcasWuGLOJ880pHfrBd43voVKGtXXFlBn
 aWd8Zc7LdWqTGx3ZKMo1PTnw6FC6fxwKr9crkPItX0KOKt6P6ikSUPpbe
 FWePXhtDS/Rf0kb7jxSVC9hF96/63JzJA5jvrna7yALxOqNDlMYnKTlMo
 0itL4CPpUVdTtPwZnDCq095HKqWWp+yVwKbYknNZUJclz2MG+QVvXMPL9 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="340995470"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="340995470"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 12:04:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="828005875"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="828005875"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 29 Mar 2023 12:04:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Mar 2023 22:04:45 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 22:04:43 +0300
Message-Id: <20230329190445.13456-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Skip cursor when writing
 PLANE_CHICKEN
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

Cursor is not a universal plane and thus doesn't have the
PLANE_CHICKEN register. Skip it.

Fixes: c5de248484af ("drm/i915/dpt: Add a modparam to disable DPT via the chicken bit")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpt.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
index 2bf5cce232d5..b8027392144d 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
@@ -324,10 +324,14 @@ void intel_dpt_configure(struct intel_crtc *crtc)
 		enum pipe pipe = crtc->pipe;
 		enum plane_id plane_id;
 
-		for_each_plane_id_on_crtc(crtc, plane_id)
+		for_each_plane_id_on_crtc(crtc, plane_id) {
+			if (plane_id == PLANE_CURSOR)
+				continue;
+
 			intel_de_rmw(i915, PLANE_CHICKEN(pipe, plane_id),
 				     PLANE_CHICKEN_DISABLE_DPT,
 				     i915->params.enable_dpt ? 0 : PLANE_CHICKEN_DISABLE_DPT);
+		}
 	} else if (DISPLAY_VER(i915) == 13) {
 		intel_de_rmw(i915, CHICKEN_MISC_2,
 			     CHICKEN_MISC_DISABLE_DPT,
-- 
2.39.2

