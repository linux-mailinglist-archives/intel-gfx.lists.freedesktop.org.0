Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2276E7ED
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jul 2019 17:23:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3215B6E84F;
	Fri, 19 Jul 2019 15:23:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 942126E847
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jul 2019 15:23:22 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id d4so34855036edr.13
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jul 2019 08:23:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WWlIQkZTe6LQuA5KTQkgPsDt9/EldhERVA4pYeIqcAw=;
 b=kaDz2ZJrvaI2MYYOEvIq8Xzkb/ktZ1z30VJnuwfPNkQ0pBibMtYH4aBQ1hJWgvNhon
 +/Z8BNDcI83Vz2DAYtYYAM5dQuaffyGrU07OfPAaF1AYiG2i1fMvduUYlfBxCzAn3AUw
 TWozcZxAt9mYUfJu8q175HdUJxovvd6lvr4hctgPekgj3UCzzeQWPCZplxeRj+jqU29k
 nPz/djgSKjKi2CGffP628VCa4gNpO06RNZhPV3PTNLnpPKTxi+3onhY4VcfMSgdXk4Ea
 VL02ldluRtAJbWSZrh9V/1L8q/hEMeCHe7dXz4glmTzobbsGItAI6jiX9fM1zAUErldZ
 DbEw==
X-Gm-Message-State: APjAAAUkCj5ywAiHkDYAx0pWjNNM4VOxBr/wB0VKWPkD4qhbBcz6xJA9
 64kJm9gKknzLjzTv7p8qihM=
X-Google-Smtp-Source: APXvYqyfkLGT2aKqtamMXOfmfLZSnwPQA+lhK7SiBEsVLHZ2b9Hu39LHr80BckD6LJF3aHXjESgtYg==
X-Received: by 2002:aa7:ce91:: with SMTP id y17mr47601734edv.56.1563549801310; 
 Fri, 19 Jul 2019 08:23:21 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id t2sm8882538eda.95.2019.07.19.08.23.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 19 Jul 2019 08:23:20 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 19 Jul 2019 17:23:13 +0200
Message-Id: <20190719152314.7706-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190719152314.7706-1-daniel.vetter@ffwll.ch>
References: <20190719152314.7706-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WWlIQkZTe6LQuA5KTQkgPsDt9/EldhERVA4pYeIqcAw=;
 b=dKlfpJXOJzQ+8LO2HOq7bLbf+GQ7TsiAa0dtPDBwc1+xymllHNcjE7cY4xouIVgJid
 ubTPLiy1vgoShvbGw7Te+yAMderkGmbbxlQ0M3rb6tRXu7C6BHmpzz10O6SuEqFxoX7/
 AZ6//+C+k6i5DCzQrJ4f5RF6ogV9v54yv4LDo=
Subject: [Intel-gfx] [PATCH 2/3] drm/vkms: Use wait_for_flip_done
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
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>,
 Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SXQncyB0aGUgcmVjb21tZW5kZWQgdmVyc2lvbiwgd2FpdF9mb3JfdmJsYW5rcyBpcyBhIGJpdCBh
IGhhY2t5CmludGVyaW0gdGhpbmcgdGhhdCBwcmVkYXRlcyBhbGwgdGhlIGZsaXBfZG9uZSB0cmFj
a2luZy4gSXQncwp1bmZvcnR1bmF0ZWx5IHN0aWxsIHRoZSBkZWZhdWx0IC4uLgoKU2lnbmVkLW9m
Zi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBSb2RyaWdv
IFNpcXVlaXJhIDxyb2RyaWdvc2lxdWVpcmFtZWxvQGdtYWlsLmNvbT4KQ2M6IEhhbmVlbiBNb2hh
bW1lZCA8aGFtb2hhbW1lZC5zYUBnbWFpbC5jb20+CkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxA
ZmZ3bGwuY2g+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3ZrbXMvdmttc19kcnYuYyB8IDIgKy0KIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS92a21zL3ZrbXNfZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vdmttcy92
a21zX2Rydi5jCmluZGV4IDQ0YWI5ZjhlZjhiZS4uODA1MjRhMjI0MTJhIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vdmttcy92a21zX2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS92a21z
L3ZrbXNfZHJ2LmMKQEAgLTgzLDcgKzgzLDcgQEAgc3RhdGljIHZvaWQgdmttc19hdG9taWNfY29t
bWl0X3RhaWwoc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKm9sZF9zdGF0ZSkKIAogCWRybV9hdG9t
aWNfaGVscGVyX2NvbW1pdF9od19kb25lKG9sZF9zdGF0ZSk7CiAKLQlkcm1fYXRvbWljX2hlbHBl
cl93YWl0X2Zvcl92YmxhbmtzKGRldiwgb2xkX3N0YXRlKTsKKwlkcm1fYXRvbWljX2hlbHBlcl93
YWl0X2Zvcl9mbGlwX2RvbmUoZGV2LCBvbGRfc3RhdGUpOwogCiAJZm9yX2VhY2hfb2xkX2NydGNf
aW5fc3RhdGUob2xkX3N0YXRlLCBjcnRjLCBvbGRfY3J0Y19zdGF0ZSwgaSkgewogCQlzdHJ1Y3Qg
dmttc19jcnRjX3N0YXRlICp2a21zX3N0YXRlID0KLS0gCjIuMjIuMAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
