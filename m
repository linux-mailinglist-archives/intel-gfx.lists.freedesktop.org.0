Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C997C70DD01
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 14:51:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C482A10E436;
	Tue, 23 May 2023 12:51:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B01F10E436
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 May 2023 12:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1684846286;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=bAprbvbicDzO/i64xE13RGPcGm8TJil9TJRhodKNwUQ=;
 b=hVhRB8enzylof6R4Ig1i3YHEyc4XslDvvqKip/RvEgOazSohscBp03djEdFUT9YdPJuIEa
 S/mqJgilESy2+BW0UXbpPxcoQOg0nRmF7NLwrLdW3sSY3AtEkSOHoDwhc1KOJQlu1NBGaA
 LE/0WbN+STxjdRp0QF6zuJ+PDoAbY6o=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-324-vrc8-oSWPhekVyojsAB-OQ-1; Tue, 23 May 2023 08:51:23 -0400
X-MC-Unique: vrc8-oSWPhekVyojsAB-OQ-1
Received: by mail-qk1-f200.google.com with SMTP id
 af79cd13be357-75b04cf87c0so238690485a.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 May 2023 05:51:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684846283; x=1687438283;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=bAprbvbicDzO/i64xE13RGPcGm8TJil9TJRhodKNwUQ=;
 b=hC5p18jMhTjfGn83vUFqY3YTUb3HE7HXyBLIzHtnWWIbHfcStWpruF34c9Il4Z6l3b
 1JbWYCXY6eKaLeoLuHQx51zxhqlRkEpF1xZhnwlQ1Vwc9P6kZX/NuCgQytBpqqzSi1Kl
 IiVVSWhy36Q5S9D/6zvkjMZMXG1MVu2zADXDcKUfm29xaqL98vN6n7mVboJKojyW8Mn3
 y49Mb1CSRvX+DYExNyXOHBR1B5KbunihRFCCD1HFzrW2klipvlu27cVVwam8Nup1jvtZ
 7mrf4sdNbhbvhMB6B98PS4HGkyPY+Rq6sc5qurlu78+V1y3zBRi8O7+X6QlSEA5MbZA7
 wMrQ==
X-Gm-Message-State: AC+VfDwG16sdoJxb0lhWfu+KAr27HlNd6ggATfa64eEODiw4cqw3RJ24
 bk6Imm5Kpx4Yy80M+fKrRQ3OwmyZeAp4Kzzpum84sfzNaaR0lOTz6dnPeEDwSBPycTUCVBFDoUZ
 6YpQIX4Jmvtn97Pi6QySjSA1xsEm3
X-Received: by 2002:a37:88f:0:b0:75b:23a0:e7ed with SMTP id
 137-20020a37088f000000b0075b23a0e7edmr3850967qki.78.1684846282949; 
 Tue, 23 May 2023 05:51:22 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ7GUZvQqUqL8jnjS5iId8YX67qOidNHrEO9Bxwn07WXAbE7b7d2NbJu1BrYJ46XQnyjQLxqgg==
X-Received: by 2002:a37:88f:0:b0:75b:23a0:e7ed with SMTP id
 137-20020a37088f000000b0075b23a0e7edmr3850948qki.78.1684846282675; 
 Tue, 23 May 2023 05:51:22 -0700 (PDT)
Received: from dell-per740-01.7a2m.lab.eng.bos.redhat.com
 (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id
 c3-20020ae9e203000000b0075b35e72a21sm7626qkc.86.2023.05.23.05.51.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 May 2023 05:51:21 -0700 (PDT)
From: Tom Rix <trix@redhat.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, tvrtko.ursulin@linux.intel.com, airlied@gmail.com,
 daniel@ffwll.ch, nathan@kernel.org, ndesaulniers@google.com,
 ville.syrjala@linux.intel.com, imre.deak@intel.com,
 arun.r.murthy@intel.com, lucas.demarchi@intel.com
Date: Tue, 23 May 2023 08:51:16 -0400
Message-Id: <20230523125116.1669057-1-trix@redhat.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset="US-ASCII"; x-default=true
Subject: [Intel-gfx] [PATCH] drm/i915: simplify switch to if-elseif
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
Cc: Tom Rix <trix@redhat.com>, intel-gfx@lists.freedesktop.org,
 llvm@lists.linux.dev, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

clang with W=1 reports
drivers/gpu/drm/i915/display/intel_display.c:6012:3: error: unannotated
  fall-through between switch labels [-Werror,-Wimplicit-fallthrough]
                case I915_FORMAT_MOD_X_TILED:
                ^

Only one case and the default does anything in this switch, so it should
be changed to an if-elseif.

Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0490c6412ab5..1f852e49fc20 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5994,8 +5994,7 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 		 * Need to verify this for all gen9 platforms to enable
 		 * this selectively if required.
 		 */
-		switch (new_plane_state->hw.fb->modifier) {
-		case DRM_FORMAT_MOD_LINEAR:
+		if (new_plane_state->hw.fb->modifier == DRM_FORMAT_MOD_LINEAR) {
 			/*
 			 * FIXME: Async on Linear buffer is supported on ICL as
 			 * but with additional alignment and fbc restrictions
@@ -6008,13 +6007,10 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 					    plane->base.base.id, plane->base.name);
 				return -EINVAL;
 			}
-
-		case I915_FORMAT_MOD_X_TILED:
-		case I915_FORMAT_MOD_Y_TILED:
-		case I915_FORMAT_MOD_Yf_TILED:
-		case I915_FORMAT_MOD_4_TILED:
-			break;
-		default:
+		} else if (!(new_plane_state->hw.fb->modifier == I915_FORMAT_MOD_X_TILED ||
+			     new_plane_state->hw.fb->modifier == I915_FORMAT_MOD_Y_TILED ||
+			     new_plane_state->hw.fb->modifier == I915_FORMAT_MOD_Yf_TILED ||
+			     new_plane_state->hw.fb->modifier == I915_FORMAT_MOD_4_TILED)) {
 			drm_dbg_kms(&i915->drm,
 				    "[PLANE:%d:%s] Modifier does not support async flips\n",
 				    plane->base.base.id, plane->base.name);
-- 
2.27.0

