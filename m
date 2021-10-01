Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2194041F7DB
	for <lists+intel-gfx@lfdr.de>; Sat,  2 Oct 2021 00:54:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D7A96F41E;
	Fri,  1 Oct 2021 22:54:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 425096F41E
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Oct 2021 22:54:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1633128870;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=VRuibAzD4usxTf8vGq2IshPiQf0ZGBrLjbZl7aosdOQ=;
 b=hRNeo4g/MkQ8YoCIzsgRK4utA3Euj7kwex27Vic9bW9ROr5clWXV/dJMYgZVnM52Gayj9O
 VrdGDGa9qXsZoHJabLiJt06shF9aJ2IlnLSGd7MyZ5+snfU6ky7wZ6VpJOmH1TzwefZP+D
 VP4JAfpqGtwr3XEuF/e8oEQeGciCv+Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-591-aJNvwhkgOdiqKhSLA8JLJg-1; Fri, 01 Oct 2021 18:54:27 -0400
X-MC-Unique: aJNvwhkgOdiqKhSLA8JLJg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E8F351023F4E;
 Fri,  1 Oct 2021 22:54:25 +0000 (UTC)
Received: from Ruby.redhat.com (unknown [10.22.17.71])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 95F3160BF1;
 Fri,  1 Oct 2021 22:54:24 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 nouveau@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Sean Paul <seanpaul@chromium.org>, linux-kernel@vger.kernel.org (open list)
Date: Fri,  1 Oct 2021 18:53:44 -0400
Message-Id: <20211001225344.1752203-5-lyude@redhat.com>
In-Reply-To: <20211001225344.1752203-1-lyude@redhat.com>
References: <20211001225344.1752203-1-lyude@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Subject: [Intel-gfx] [PATCH v2 4/4] drm/i915: Clarify probing order in
 intel_dp_aux_init_backlight_funcs()
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

Hooray! We've managed to hit enough bugs upstream that I've been able to
come up with a pretty solid explanation for how backlight controls are
actually supposed to be detected and used these days. As well, having the
rest of the PWM bits in VESA's backlight interface implemented seems to
have fixed all of the problematic brightness controls laptop panels that
we've hit so far.

So, let's actually document this instead of just calling the laptop panels
liars. As well, I would like to formally apologize to all of the laptop
panels I called liars. I'm sorry laptop panels, hopefully you can all
forgive me and we can move past this~

Signed-off-by: Lyude Paul <lyude@redhat.com>
---
 .../drm/i915/display/intel_dp_aux_backlight.c    | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 91daf9ab50e8..04a52d6a74ed 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -455,11 +455,17 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
 	}
 
 	/*
-	 * A lot of eDP panels in the wild will report supporting both the
-	 * Intel proprietary backlight control interface, and the VESA
-	 * backlight control interface. Many of these panels are liars though,
-	 * and will only work with the Intel interface. So, always probe for
-	 * that first.
+	 * Since Intel has their own backlight control interface, the majority of machines out there
+	 * using DPCD backlight controls with Intel GPUs will be using this interface as opposed to
+	 * the VESA interface. However, other GPUs (such as Nvidia's) will always use the VESA
+	 * interface. This means that there's quite a number of panels out there that will advertise
+	 * support for both interfaces, primarily systems with Intel/Nvidia hybrid GPU setups.
+	 *
+	 * There's a catch to this though: on many panels that advertise support for both
+	 * interfaces, the VESA backlight interface will stop working once we've programmed the
+	 * panel with Intel's OUI - which is also required for us to be able to detect Intel's
+	 * backlight interface at all. This means that the only sensible way for us to detect both
+	 * interfaces is to probe for Intel's first, and VESA's second.
 	 */
 	if (try_intel_interface && intel_dp_aux_supports_hdr_backlight(connector)) {
 		drm_dbg_kms(dev, "Using Intel proprietary eDP backlight controls\n");
-- 
2.31.1

