Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB43D633C0F
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 13:08:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5BD510E3DA;
	Tue, 22 Nov 2022 12:08:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAF3B10E3DA
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 12:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669118914; x=1700654914;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=+cBezAxdHKLHIeJNCGctOACyMKEoAlRFaZk7Rtvt93w=;
 b=A8PCgUra57RmeEgdaI4hVEmhJkwTAnss/nJuqJ5nnLGmiaqmVTlAKpE6
 aKk7BYPSZQ7VC2H7YPkxGHGHukcMWG9RoQHieNtT2dCp+CNFT7l1TEpMS
 xket+OVW24CUyo1rdRoYS7DakgAMoIa18hb+tpcfGl5CSCkKWiqf+obHJ
 CFP65DidnFs0HePpa831UPT6Pq5xR8Y9Ru8OdqN5FQxaUN0rSFJZ9hn1m
 Dm73Mz9hN84wzcnhvZiidGTTYEg3OwMd2kPTcVOvW0sPkIoJ9kNeUlhel
 v5Z3u9LoqQLzvwJChNA7rD049Ok0OgtQd02npNZwl0UHliwG6xjx/P2D4 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="313829525"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="313829525"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 04:08:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="641395778"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="641395778"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 22 Nov 2022 04:08:31 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 22 Nov 2022 14:08:31 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Nov 2022 14:08:17 +0200
Message-Id: <20221122120825.26338-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221122120825.26338-1-ville.syrjala@linux.intel.com>
References: <20221122120825.26338-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/10] drm/i915/dvo/sil164: Nuke pointless
 return statements
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

Drop the pointless return statements at the end of void
functions.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/dvo_sil164.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/dvo_sil164.c b/drivers/gpu/drm/i915/display/dvo_sil164.c
index 0dfa0a0209ff..32dd3b969946 100644
--- a/drivers/gpu/drm/i915/display/dvo_sil164.c
+++ b/drivers/gpu/drm/i915/display/dvo_sil164.c
@@ -205,7 +205,6 @@ static void sil164_mode_set(struct intel_dvo_device *dvo,
 	  sil164_writeb(sil, 0x0c, 0x89);
 	  sil164_writeb(sil, 0x08, 0x31);*/
 	/* don't do much */
-	return;
 }
 
 /* set the SIL164 power state */
@@ -224,7 +223,6 @@ static void sil164_dpms(struct intel_dvo_device *dvo, bool enable)
 		ch &= ~SIL164_8_PD;
 
 	sil164_writeb(dvo, SIL164_REG8, ch);
-	return;
 }
 
 static bool sil164_get_hw_state(struct intel_dvo_device *dvo)
-- 
2.37.4

