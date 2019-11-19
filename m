Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF5EB102DF7
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 22:08:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC7686E3F3;
	Tue, 19 Nov 2019 21:08:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41FA36E3F3
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 21:08:52 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id 8so5501889wmo.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 13:08:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lFJdMagUel06mMXNDWGQkTwShRL7t6pQn6DEe+09zlY=;
 b=fE8AjsxE0STrnpsYvZK6Pu7AcxIvlYDb9F3MpzaVjy89VpAc91MJNyuq9u0flXeWZx
 OdVHlTll63WLxES9khdoq6kOExDSVZz/RujMLSsmeqmVOanTruNBsZuv79fx60cvB7P8
 ztK42yE3SXQhc7iV4klUH5cEMdWKha9Gg8ruqvlfalU+cpEHEsbHPa8W/ZhCg7VnI7xl
 SSTuBUBs6tr2uOZ8z9sc4rYVK4IaSBLwkblr9eMtGameaFhWszlTbx/zEBvbUB1pnshB
 o3hocU0F2ApRCcGHc9kIs2o1pIS4aF9eAJ/IKW0vV+WMXNOS0joS5f6VdO3oYnKZoTX6
 DUnw==
X-Gm-Message-State: APjAAAWdU6giTODRU2OLe+PverF0meySYRI2HyHJW+IkjTXrxPhcu8aR
 0PtnPXyo7zBIbkrHiwSAFVMRAXnS28k=
X-Google-Smtp-Source: APXvYqwivJmhi4Os3RCqsnYj/E91ZPdyhytUQXj3+7/ohIDi4sF6cvMLTAM3OVQUOAE17TPHOX12Gw==
X-Received: by 2002:a1c:48c1:: with SMTP id v184mr8454110wma.120.1574197730513; 
 Tue, 19 Nov 2019 13:08:50 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id z14sm28005126wrl.60.2019.11.19.13.08.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Nov 2019 13:08:49 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 19 Nov 2019 22:08:41 +0100
Message-Id: <20191119210844.16947-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lFJdMagUel06mMXNDWGQkTwShRL7t6pQn6DEe+09zlY=;
 b=UnLGJIjrUmj9yOiPO+80JkAHyZQVCld4ULE4HfiBQMsg6AsslDHr9kRmepWsvNZ3DO
 XmE2/dlIY4FxVYF2ejF0QfUFqPz28R6FqJ3WhT1cpN8nz1s6YIDsv+ZGxixjneoGoeRc
 BcLoqd8XKyw9JrjTlA8TIupMUJE/xD7XFEAHA=
Subject: [Intel-gfx] [PATCH 0/3] more dma-buf lockdep priming
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgYWxsLAoKV2hpbGUgbG9va2luZyBhdCAoZHluYW1pYykgZG1hLWJ1ZiBpc3N1ZXMgYW5kIGlk
ZWFzIEkndmUgc3BvdHRlZCBhIGJpdAptb3JlIHJvb20gZm9yIGxvY2tpbmcgZG93biB0aGUgY3Jv
c3MtZHJpdmVyIGRtYV9yZXN2IHJ1bGVzLgoKT25seSBmdW5jdGlvbmFsIGZhbGxvdXQgaXMgYSB0
aW55IHBhdGNoIGZvciBtc20sIGFzc3VtaW5nIEkgZGlkbid0IGJvdGNoCmFueXRoaW5nIGluIHRo
ZSBhdWRpdGluZyBvZiBhbGwgcmVsZXZhbnQgY29kZS4KCkNvbW1lbnRzLCByZXZpZXcgYW5kIHRl
c3RpbmcgdmVyeSBtdWNoIGFwcHJlY2lhdGVkLCBhcyB1c3VhbC4KCkNoZWVycywgRGFuaWVsCgpE
YW5pZWwgVmV0dGVyICgzKToKICBkcm0vbW9kZXNldDogUHJpbWUgbW9kZXNldCBsb2NrIHZzIGRt
YV9yZXN2CiAgZG1hLXJlc3Y6IEFsc28gcHJpbWUgYWNxdWlyZSBjdHggZm9yIGxvY2tkZXAKICBk
cm0vbXNtOiBEb24ndCBpbml0IHd3X211dGVjIGFjcXVpcmUgY3R4IGJlZm9yZSBuZWVkZWQKCiBk
cml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYyAgICAgICAgICAgfCAgOCArKysrKysrLQogZHJpdmVy
cy9ncHUvZHJtL2RybV9tb2RlX2NvbmZpZy5jICAgIHwgMjggKysrKysrKysrKysrKysrKysrKysr
KysrKysrKwogZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtX3N1Ym1pdC5jIHwgIDIgKy0KIDMg
ZmlsZXMgY2hhbmdlZCwgMzYgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCi0tIAoyLjI0
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
