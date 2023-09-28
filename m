Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3FDC7B2521
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Sep 2023 20:20:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDDD810E671;
	Thu, 28 Sep 2023 18:20:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD48910E671
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Sep 2023 18:20:25 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id
 4fb4d7f45d1cf-533c4d20b33so21938069a12.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Sep 2023 11:20:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=grsecurity.net; s=grsec; t=1695925224; x=1696530024;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=EI2YzzcKUCiF7lZbRgcHwM4EN4t6CQq5CMaA4SHlRhs=;
 b=fcE01b/6WQjGMBP2YaY4y6PkmWOEiVNG6xEcJuDmvERG/hz8eEB3cm0e+I6BLx5QIl
 /PCzrj8hbgo2t4pxIVA7L61lYAqPf3PAntEeh4lKCnD5e9OYF+Ba/+MVoRO1P0ja3pED
 WVEdnt6n785/OtMedYK6Go7n4d1f5GuaUCabvSH9J+9W3nuwGPg54rZwuHVVU+7MjZ44
 vaPekcyVZkARvHZYoOSEPNu8ZA+gBGhu9DL3ZUu/2uOC+ktjqAUK7f2pmFaPijtFgupe
 QoVwibJzuYMIVP2qtkAA1FfhL8jhc6HsWdpO9XPH0/hCwKQ44b0V5az1SJEDRXZsU6ay
 D8Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695925224; x=1696530024;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=EI2YzzcKUCiF7lZbRgcHwM4EN4t6CQq5CMaA4SHlRhs=;
 b=gdFu0k9HUu8On2jYqSxr9Mey5OrDZ4KPYfbNMbuRG1QLY1UI1xJWU34Zkt+kZzHUfd
 3cnheICvBqbGT7uW33xRAktFCssmxAukww4AjeB19MWQHPOcpYdOWt12INfhgVbgs6DC
 +oAhV019cNeOra44KIQV/do1UeS8Rg1SA9AZjiGGPnbum/Nvzcb2phY0dXGwcgKyR3f/
 W1fjjvpY0H6iOkuqs6hkE+4Kd146yCHyepH5RNcBkEpHkA8+b42FnuR15u9kSrD6T4K1
 SKoyiv4RNr2Riw9P/mafBZz5S7jdnptjWYBDCATAf5Rb7FgKdLyzgoudIirH3eNuM24e
 +EKg==
X-Gm-Message-State: AOJu0YyN6ueTncSvJ/TMLgAcFaQcQv5P7pD4dx4QZmZ0gYERe+KVZZOJ
 9+2wb4w78ASom3+rkE7WaO87mW9NBvkk/VKdkrw=
X-Google-Smtp-Source: AGHT+IHVwFgPZNfSjlw6S9i5XTnfUacT2QeNagGfUgRz6l2QOaH+jhOhMpjTBvLXmioc+j8ct5JE3w==
X-Received: by 2002:a05:6402:50c8:b0:536:169a:4ac3 with SMTP id
 h8-20020a05640250c800b00536169a4ac3mr1709185edb.8.1695925223969; 
 Thu, 28 Sep 2023 11:20:23 -0700 (PDT)
Received: from x1.fritz.box
 (p200300f6af043200d2a06d439b047d41.dip0.t-ipconnect.de.
 [2003:f6:af04:3200:d2a0:6d43:9b04:7d41])
 by smtp.gmail.com with ESMTPSA id
 g7-20020aa7d1c7000000b0053112d6a40esm10114765edp.82.2023.09.28.11.20.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Sep 2023 11:20:23 -0700 (PDT)
From: Mathias Krause <minipli@grsecurity.net>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Sep 2023 20:20:18 +0200
Message-Id: <20230928182019.10256-2-minipli@grsecurity.net>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230928182019.10256-1-minipli@grsecurity.net>
References: <20230928182019.10256-1-minipli@grsecurity.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915: Register engines early to
 avoid type confusion
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
    intel_display_driver_probe() ->
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
haven't been initialized yet.

To fix this type confusion register the engines earlier and at the same
time reduce the amount of code that has to deal with the intermediate
llist state.

Reported-by: sanitiy checks in grsecurity
Suggested-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Fixes: 1ec23ed7126e ("drm/i915: Use uabi engines for the default engine map")
Signed-off-by: Mathias Krause <minipli@grsecurity.net>
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
Tested on my ADL systems just fine, no rb-tree related type confusion
any more, as expected.

 drivers/gpu/drm/i915/i915_gem.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 1f65bb33dd21..a8551ce322de 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1199,6 +1199,13 @@ int i915_gem_init(struct drm_i915_private *dev_priv)
 			goto err_unlock;
 	}
 
+	/*
+	 * Register engines early to ensure the engine list is in its final
+	 * rb-tree form, lowering the amount of code that has to deal with
+	 * the intermediate llist state.
+	 */
+	intel_engines_driver_register(dev_priv);
+
 	return 0;
 
 	/*
@@ -1246,8 +1253,6 @@ int i915_gem_init(struct drm_i915_private *dev_priv)
 void i915_gem_driver_register(struct drm_i915_private *i915)
 {
 	i915_gem_driver_register__shrinker(i915);
-
-	intel_engines_driver_register(i915);
 }
 
 void i915_gem_driver_unregister(struct drm_i915_private *i915)
-- 
2.39.2

