Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3D0DF05A
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2019 16:50:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA85E6E140;
	Mon, 21 Oct 2019 14:50:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C4E66E135
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Oct 2019 14:50:24 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id i16so13668280wmd.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Oct 2019 07:50:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hFgIZJg0qD7xL/sTNg6c6IkqHgDSAfaSE3LB/HJNtZk=;
 b=latIZV+wwf7b/rd/ObDHOJARXGwoMKX3IEMXfS09dqhEmxBqp71EWePuvjFegewJEz
 mkARtCn1fgQkACULVtgDFvYKsPgV1ykuG9sNSEonkkfwDzNBZvKEDB3vNdRcYX77FxjB
 dxszQW9XydQye4xC7IjfYDYlwISle/77WBAOeVhQVZwprW6afTvdvmoiSAs1RkRKfnRV
 1ROLCa4n7ncpB4yTW/5/lSsvDvRb0WezhMTN8tMZ8nljMc60KY1P0fpOmxHOytFwS/xg
 qIBWQVxOXwEuS29IlPtpujF9EW2LK2LOIJTj3OzhnzPHB758lcoWrQSy7ndMF6PKRHgo
 0YEQ==
X-Gm-Message-State: APjAAAUmffbuytEf5AmfX1YS/kqHL4chsURfDzaYXt9JXU14lTPJRJOQ
 mQZ8yhchSmrSfoTYBZlbFjAMFqhkTcE=
X-Google-Smtp-Source: APXvYqw6wHiABU/9ZGV8jTCxoo1N2f1tMcoLUXHH589joghLChOjar8Q9qAdsgxUP4KhIQUlgDznEA==
X-Received: by 2002:a7b:c7d4:: with SMTP id z20mr20170753wmk.145.1571669423047; 
 Mon, 21 Oct 2019 07:50:23 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id u7sm7712053wre.59.2019.10.21.07.50.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 07:50:22 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 21 Oct 2019 16:50:14 +0200
Message-Id: <20191021145017.17384-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hFgIZJg0qD7xL/sTNg6c6IkqHgDSAfaSE3LB/HJNtZk=;
 b=JvrX1U2LPho9X8Gzfk0omaJQzoP4cwf1quiNU+tV330rJ6VDHoysZPlNW4itN2STHx
 cqPG3ojh+Mk/wZT5Ht2iWLvUZVHgl2trusUFucopIeB3V0rUv3s+V00KkFMrt3u3BebG
 aa+iIW7nfCm2qCuC8w7Nb+aneSui7Hn247R9w=
Subject: [Intel-gfx] [PATCH 0/3] dma_resv lockdep annotations/priming
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgYWxsLAoKRXNzZW50aWFsbHkganVzdCBhIHJlc2VuZCBvZiB0aGUgbGF0ZXN0IHJldmlzaW9u
LCBzaW5jZSB0aGUgc2VyaWVzIGlzCnN0dWNrIG9uIHRoZSBub3V2ZWF1IHBhdGNoLiBJbGlhIHRy
aWVkIGl0IG9uIGFuIG52NSBhbmQgaXQgZGlkbid0IGV4cGxvZGUsCmJ1dCBoZSBub3RpY2VkIHNv
bWUgaW5zdGFiaWxpdHkuIE5vIGNhbGwgeWV0IG9uIHdoZXRoZXIgdGhhdCB3YXMganVzdCB0aGUK
a2VybmVsIHVwZ3JhZGUgb2YgYSBmZXcgdmVyc2lvbnMsIG9yIG15IHBhdGNoLgoKU28geWVhaCBJ
IG5lZWQgdG8gZ2V0IHNvbWUgcmV2aWV3L3Rlc3Rpbmcgb24gdGhhdCBwYXRjaCB0byBsYW5kIHRo
ZSBvdGhlcgp0d28sIGFuZCBJJ2QgcmVhbGx5IGxpa2UgdG8gbGFuZCB0aGVzZSB0byBtYWtlIHN1
cmUgYWxsIHRoZSBsb2NraW5nIHJld29yawppbiBpOTE1IGRvZXNuJ3QgbWlzcyBvbmUgb2YgdGhl
c2UgZGV0YWlscy4KClRoYW5rcywgRGFuaWVsCgpEYW5pZWwgVmV0dGVyICgzKToKICBkbWFfcmVz
djogcHJpbWUgbG9ja2RlcCBhbm5vdGF0aW9ucwogIGRybS9ub3V2ZWF1OiBzbG93cGF0aCBmb3Ig
cHVzaGJ1ZiBpb2N0bAogIGRybS90dG06IHJlbW92ZSB0dG1fYm9fd2FpdF91bnJlc2VydmVkCgog
ZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgICAgICAgICAgICB8IDI0ICsrKysrKysrKysrCiBk
cml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2ZWF1X2dlbS5jIHwgNTcgKysrKysrKysrKysrKysr
KysrLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jICAgICAgICAgIHwgMzYg
LS0tLS0tLS0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvX3V0aWwuYyAgICAg
fCAgMSAtCiBkcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9ib192bS5jICAgICAgIHwgMTggKysrLS0t
LS0tCiBpbmNsdWRlL2RybS90dG0vdHRtX2JvX2FwaS5oICAgICAgICAgIHwgIDQgLS0KIDYgZmls
ZXMgY2hhbmdlZCwgNjcgaW5zZXJ0aW9ucygrKSwgNzMgZGVsZXRpb25zKC0pCgotLSAKMi4yMy4w
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
