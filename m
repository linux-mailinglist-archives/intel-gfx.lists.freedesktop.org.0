Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E6B9792360
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Sep 2023 16:14:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E248110E51E;
	Tue,  5 Sep 2023 14:14:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51AD710E4C8
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Sep 2023 11:39:38 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id
 4fb4d7f45d1cf-52c74a2e8edso3471147a12.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 Sep 2023 04:39:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=grsecurity.net; s=grsec; t=1693913976; x=1694518776;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=QGdTC/XWOulfCm7ows95THXM2NBg/NPW/sREmIlfTlE=;
 b=I20l/3iT+UBWPh8n7RpM1odYSCnO5f7P+rzhmH8i4YU2wZfB9qgm3P3UVaNKxHVk23
 9pd52sAyWQhcIEJ3gJasx+wWLn/bSrOBokfYiw8uEH7uClehQsckJyJaRuZ/R2sVwwEE
 rC8o1SjT0NuVXFl8+dar5lluLjlnYF+pkKuUZggfFMD67b1S3I/CSzaTohye5Xrqv5Ea
 yl/daaJGBET5/TZB3946Zywu4rhgDzobRkjkSSoDfx92eHqOUuBFuDUbevniSafc+ejQ
 WmdnFCrOTaN29cbKlNU+0PEBXauiiwfCjHIEzpsT/Sk+qpyZhJU9+HVquIbDsbwh1VNT
 mLHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1693913976; x=1694518776;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=QGdTC/XWOulfCm7ows95THXM2NBg/NPW/sREmIlfTlE=;
 b=CjyQ9J7173Ic33OdZQ9LNFY5/C8J//5T8pEsS9M6oeCxvpMBH/330IuyGcW55HjMPk
 bs4e4PPeN7aYrEtdrPyXoeWCvK+4jAS+kZ8Mr0MhpFAviStaQS+pnpUngFjZvGOdN5LJ
 L5KRKnuVTn9r+FEXIOniXtxEkToR8sSgPev2d8nr0+xdnoObcYECXpcYnPBYgk6kNqxv
 ffa323V8CVGfGlDhHVGbB0wSMVp+MmUC5yfx0xqjXAr5fZJ09CvI43iOdUpss2mfchKk
 iGThKF65Jq+dELRKv9tWyFjFHEMxSvY9HlMDYk0tddK4BHt1Qi6GQ2dO1NbSHrH6Dcni
 JOcg==
X-Gm-Message-State: AOJu0YxEVR3ZUj/O3brmpBI0UnMsnBT3gjWDIgPw1irhc8DgklfWq5hl
 pxfwWz1zs+K5SMMnjaUaw1E7MKLG4mAaYBz9TyQ=
X-Google-Smtp-Source: AGHT+IFCfBtbryZr5Qm/JwjgACsVcZC4/l0ui4Qh9tXPRbCuOwN7wnnIWBBY5FU4x3Td1X/pNFCwmA==
X-Received: by 2002:aa7:df0d:0:b0:523:c10d:1d5b with SMTP id
 c13-20020aa7df0d000000b00523c10d1d5bmr9999337edy.37.1693913976251; 
 Tue, 05 Sep 2023 04:39:36 -0700 (PDT)
Received: from x1.fritz.box
 (p200300f6af30f500da79246c82d39696.dip0.t-ipconnect.de.
 [2003:f6:af30:f500:da79:246c:82d3:9696])
 by smtp.gmail.com with ESMTPSA id
 w16-20020a056402129000b005255f5735adsm6989036edv.24.2023.09.05.04.39.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Sep 2023 04:39:35 -0700 (PDT)
From: Mathias Krause <minipli@grsecurity.net>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Sep 2023 13:39:20 +0200
Message-Id: <20230905113921.14071-2-minipli@grsecurity.net>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230905113921.14071-1-minipli@grsecurity.net>
References: <20230905113921.14071-1-minipli@grsecurity.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 05 Sep 2023 14:14:03 +0000
Subject: [Intel-gfx] [PATCH 1/2] Revert "drm/i915: Use uabi engines for the
 default engine map"
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
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Mathias Krause <minipli@grsecurity.net>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Commit 1ec23ed7126e ("drm/i915: Use uabi engines for the default engine
map") switched from using for_each_engine() to for_each_uabi_engine() to
iterate over the user engines. While this seems to be a sensible change,
it's only safe to do when the engines are actually chained using the
rb-tree structure which is not the case during early driver
initialization where it can be either a lock-less list or regular
double-linked list.

In fact, the modesetting initialization code may end up calling
default_engines() through the fb helper code while the engines list
is still llist_node-based:

  i915_driver_probe() ->
    intel_modeset_init() ->
      intel_fbdev_init() ->
        drm_fb_helper_init() ->
          drm_client_init() ->
            drm_client_open() ->
              drm_file_alloc() ->
                i915_driver_open() ->
                  i915_gem_open() ->
                    i915_gem_context_open() ->
                      i915_gem_create_context() ->
                        default_engines()

Using for_each_uabi_engine() in default_engines() is therefore wrong, as
it would try to interpret the llist as rb-tree, making it find no engine
at all, as the rb_left and rb_right members will still be NULL, as they
haven't been iniitalized yet.

Revert back to use for_each_engine() which will look at each individual
engine based on its id, i.e. purely array-index based, avoiding the type
confusion mess.

Reported-by: sanitiy checks in grsecurity
Fixes: 1ec23ed7126e ("drm/i915: Use uabi engines for the default engine map")
Signed-off-by: Mathias Krause <minipli@grsecurity.net>
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 9a9ff84c90d7..e4f7ebbd2690 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1100,15 +1100,16 @@ static struct i915_gem_engines *alloc_engines(unsigned int count)
 static struct i915_gem_engines *default_engines(struct i915_gem_context *ctx,
 						struct intel_sseu rcs_sseu)
 {
-	const unsigned int max = I915_NUM_ENGINES;
+	const struct intel_gt *gt = to_gt(ctx->i915);
 	struct intel_engine_cs *engine;
 	struct i915_gem_engines *e, *err;
+	enum intel_engine_id id;
 
-	e = alloc_engines(max);
+	e = alloc_engines(I915_NUM_ENGINES);
 	if (!e)
 		return ERR_PTR(-ENOMEM);
 
-	for_each_uabi_engine(engine, ctx->i915) {
+	for_each_engine(engine, gt, id) {
 		struct intel_context *ce;
 		struct intel_sseu sseu = {};
 		int ret;
@@ -1116,7 +1117,7 @@ static struct i915_gem_engines *default_engines(struct i915_gem_context *ctx,
 		if (engine->legacy_idx == INVALID_ENGINE)
 			continue;
 
-		GEM_BUG_ON(engine->legacy_idx >= max);
+		GEM_BUG_ON(engine->legacy_idx >= I915_NUM_ENGINES);
 		GEM_BUG_ON(e->engines[engine->legacy_idx]);
 
 		ce = intel_context_create(engine);
-- 
2.39.2

