Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5632014B029
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 08:15:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B46A6ECB4;
	Tue, 28 Jan 2020 07:15:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43C8D6ECB2
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 07:14:56 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id c84so1277665wme.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 23:14:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/eoziu+ikIwjTTn5kSLquQd91NzmgL66uHfM2oZMocM=;
 b=tFjoX3y63fSl+sn8lIVTdWy2nJbSef6C63/fIsGWDHSQjLfMmF+/HTLlw637UdbSaK
 +E4diUkTz1HQu/1NkBbtEe71vuc3Ygo+N0GQbguUzWHWwue+pgazrk9Eu+vr9LB6VKBm
 xn8E/o2UiOGHAWSr6ZHD5CCeLVIR+37cKnUwTDFlqLDUyqRLdA+ZmjjQB0RPq7vzgdiZ
 +xNYjdVgZcfcN/OADHrpXzXLqrQVMpZDK3X4E4ErArQAdtyF/NODRw/WKotEe2zpCEOr
 MHxXnsX7atk7h3EOnR1h/RhxX+2fhP5jiCbU/rxssRQHyH37qcgz7+FwagMpRFxtKF+t
 sfFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/eoziu+ikIwjTTn5kSLquQd91NzmgL66uHfM2oZMocM=;
 b=bdHuWrk3RwKoXJ3BWbkepZKBfD7KGdI0qYtkSFd/CNx/bgXytaJTzudFhl+wV4OKBC
 8ggow1oAGpT5QvKnkLaJzukFeIlURRzrjuW7RtVMQZ3Sq75v8avhpxzL861pxTRyUeyh
 tKshMcTacs6m3i3HNbZTmVgPlyYOjPJgvydiZKbgk9xhvfoLuZkTZrV2R+8GW912UKvP
 mHw6ngM62uFoonfWjSj2tjRMW13UKbFRANu8Bui+4hScHuri5toH4daF9EUjbk6AkWtP
 /XXkD7wSyC0ABNEuoa3u1u5spVE4P2/MeqZCJcf5EK4mEOOrvOBT5nuBrChM0H+raJIS
 hICQ==
X-Gm-Message-State: APjAAAU0E2ArjxrBvPfz0QC6BRbBjZqYdzq+tw5DhNM8CPVWdC1U/d1V
 LEcBv9LCtALAerrv6scKvaM=
X-Google-Smtp-Source: APXvYqzogbf2+sbd952Qh6wlH6Sf/A3atzYka48pskUnk0lF97u/a06M/JRIXXJW5ghsKKcLiDODGQ==
X-Received: by 2002:a7b:c851:: with SMTP id c17mr3029013wml.71.1580195694947; 
 Mon, 27 Jan 2020 23:14:54 -0800 (PST)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id b67sm1794420wmc.38.2020.01.27.23.14.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 23:14:54 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Tue, 28 Jan 2020 10:14:33 +0300
Message-Id: <20200128071437.9284-5-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200128071437.9284-1-wambui.karugax@gmail.com>
References: <20200128071437.9284-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/8] drm/i915/engine_cs: use new drm logging
 macros in gt/intel_engine_cs.c
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Conversion of the remaining printk based drm logging macros to the new
struct drm_device based logging macros in i915/gt/intel_engine_cs.c.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 084abc577b14..b9511e045eee 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -200,10 +200,10 @@ u32 intel_engine_context_size(struct intel_gt *gt, u8 class)
 			 * out in the wash.
 			 */
 			cxt_size = intel_uncore_read(uncore, CXT_SIZE) + 1;
-			DRM_DEBUG_DRIVER("gen%d CXT_SIZE = %d bytes [0x%08x]\n",
-					 INTEL_GEN(gt->i915),
-					 cxt_size * 64,
-					 cxt_size - 1);
+			drm_dbg(&gt->i915->drm,
+				"gen%d CXT_SIZE = %d bytes [0x%08x]\n",
+				INTEL_GEN(gt->i915), cxt_size * 64,
+				cxt_size - 1);
 			return round_up(cxt_size * 64, PAGE_SIZE);
 		case 3:
 		case 2:
@@ -562,7 +562,8 @@ static int init_status_page(struct intel_engine_cs *engine)
 	 */
 	obj = i915_gem_object_create_internal(engine->i915, PAGE_SIZE);
 	if (IS_ERR(obj)) {
-		DRM_ERROR("Failed to allocate status page\n");
+		drm_err(&engine->i915->drm,
+			"Failed to allocate status page\n");
 		return PTR_ERR(obj);
 	}
 
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
