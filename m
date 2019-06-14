Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2EC46A68
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 22:37:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA83389452;
	Fri, 14 Jun 2019 20:36:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 243BD89319
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 20:36:49 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id z25so5220210edq.9
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 13:36:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WUyS4oh7ne5G6guKuPCoJTFw8Ikiy+4dtCVWiWa5zOM=;
 b=WJ6zgjZRqjeyU9AHMfQWOLMH9a9AmgcMcbab8Q4JqDtkgeBx3PNBpbVEeaJU0X+t5V
 7D0eOEQBzXN2z1UoM3+ycvJuzJsafybqHWX8VjReC4Zk2skHV4oxvSeZozBW8HosvKiL
 PlDiH00EAisMHYd+scTVqDrlGVq/5XSX7cfh6ZROzO1eWXAvDDVuMGME5dB++9uD4OiV
 02FlNPa0mEaUWv7iNk12sPyta7NNr2l9r4l+VjEeplcdkvhLFpXpcaNe9HaXB+GPy/Sr
 hDwu4vOAnRV2avaHXNLfTxexwIo0GEf40dfPM0e/SJHhXLA9eEdFjad9Rc9KpdyXBGVU
 dh5g==
X-Gm-Message-State: APjAAAVt7UCrxuZ/y1yB34DQHJXvDsBpUKGeKEa4yxPPaStcRfu7Mtnl
 LWUeo/RzdyLLSIM45w46j+vGgGFhjPQ=
X-Google-Smtp-Source: APXvYqzfaPfBwhE/kF9nG/z+DPo2wrV/gVYsQLX/wbCHGWEoZ9Jv+BOD9Ia3qbcMAD9P5neyGwORFQ==
X-Received: by 2002:aa7:d297:: with SMTP id w23mr30363401edq.128.1560544606834; 
 Fri, 14 Jun 2019 13:36:46 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.36.45
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:36:46 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 14 Jun 2019 22:35:37 +0200
Message-Id: <20190614203615.12639-22-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WUyS4oh7ne5G6guKuPCoJTFw8Ikiy+4dtCVWiWa5zOM=;
 b=HfaBpbziLn3BuwY5H6ZWUTIasJ+xUD/GK/Ox0TYfaYrMCqeTDXP8yaG0PKq3zPdTct
 t0BWDfruvSoOMjUI4DpjIyMDqAsJTD1v2VNzAuUjStwtL7kfJaWV1vRamk1ffA4Nsasj
 3GyqnJcO1iDWWvmxcBa6fuyxOQ2fEPdSB+myg=
Subject: [Intel-gfx] [PATCH 21/59] drm/msm: Drop drm_gem_prime_export/import
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: freedreno@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linux-arm-msm@vger.kernel.org, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhleSdyZSB0aGUgZGVmYXVsdC4KCkFzaWRlOiBXb3VsZCBiZSByZWFsbHkgbmljZSB0byBzd2l0
Y2ggdGhlIG90aGVycyBvdmVyIHRvCmRybV9nZW1fb2JqZWN0X2Z1bmNzLgoKU2lnbmVkLW9mZi1i
eTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBSb2IgQ2xhcmsg
PHJvYmRjbGFya0BnbWFpbC5jb20+CkNjOiBTZWFuIFBhdWwgPHNlYW5AcG9vcmx5LnJ1bj4KQ2M6
IGxpbnV4LWFybS1tc21Admdlci5rZXJuZWwub3JnCkNjOiBmcmVlZHJlbm9AbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCi0tLQogZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZHJ2LmMgfCAyIC0tCiAxIGZp
bGUgY2hhbmdlZCwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
bXNtL21zbV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2Rydi5jCmluZGV4IDg3Zjky
ZDM5MDZhYi4uZGE1YTg4NDEzOTY0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vbXNtL21z
bV9kcnYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9kcnYuYwpAQCAtMTAzNCw4ICsx
MDM0LDYgQEAgc3RhdGljIHN0cnVjdCBkcm1fZHJpdmVyIG1zbV9kcml2ZXIgPSB7CiAJLmR1bWJf
bWFwX29mZnNldCAgICA9IG1zbV9nZW1fZHVtYl9tYXBfb2Zmc2V0LAogCS5wcmltZV9oYW5kbGVf
dG9fZmQgPSBkcm1fZ2VtX3ByaW1lX2hhbmRsZV90b19mZCwKIAkucHJpbWVfZmRfdG9faGFuZGxl
ID0gZHJtX2dlbV9wcmltZV9mZF90b19oYW5kbGUsCi0JLmdlbV9wcmltZV9leHBvcnQgICA9IGRy
bV9nZW1fcHJpbWVfZXhwb3J0LAotCS5nZW1fcHJpbWVfaW1wb3J0ICAgPSBkcm1fZ2VtX3ByaW1l
X2ltcG9ydCwKIAkuZ2VtX3ByaW1lX3BpbiAgICAgID0gbXNtX2dlbV9wcmltZV9waW4sCiAJLmdl
bV9wcmltZV91bnBpbiAgICA9IG1zbV9nZW1fcHJpbWVfdW5waW4sCiAJLmdlbV9wcmltZV9nZXRf
c2dfdGFibGUgPSBtc21fZ2VtX3ByaW1lX2dldF9zZ190YWJsZSwKLS0gCjIuMjAuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
