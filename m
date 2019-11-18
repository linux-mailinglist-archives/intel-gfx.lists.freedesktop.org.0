Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC18100293
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2019 11:36:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 035676E2F0;
	Mon, 18 Nov 2019 10:36:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D44B6E092
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 10:35:59 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id t1so18787898wrv.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 02:35:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=U+mnkihGleGDkz4cDlq1mLe29a8SOWxU0+l2t1XXTsM=;
 b=tYjpYVhk4iTSXyHYigCJMU9t8Kxn9VYcbmyV01r0dxqHQOUBDO7q206Tllin/EgC1S
 S39cFk8TRmalFq0hGM2dtV21fr5jYF/d60Fgi7xhIHYAtg4L5VfqVmiZLdn2s1RKAluZ
 2B2/eBZZldGc9dkIAfbTdPPgPiT58rrYIu4245zortIpARGRixXeaNf9aYP7Mh4fLq1y
 Le87C2V81ADJfKeOwqNmXXlIM75cc5xNLxDakvZowaQzxprpVkX50Vj6FSRO8dHQQO9/
 yYfVKg50Ca1S31kVdsmS/kR5/jIgLkFp0S7s4vsE2ZnmadJpwnUGkrHqZHeIqYwNcta5
 x9rw==
X-Gm-Message-State: APjAAAX/ltqYlv17Kyjzo/3n3v7XNTBIpgNZMr8glJtsp9kjQzf+utTt
 6cVKarfyVykMMEZ2KUjFndGd9A==
X-Google-Smtp-Source: APXvYqzozGBqOejgw5+ZgybYSc6jvyuvTvJnin4nV8lOaRoK+ViPBQ0kjctGRaZWOGVKaQEY//LxDg==
X-Received: by 2002:a5d:6083:: with SMTP id w3mr10863416wrt.308.1574073357688; 
 Mon, 18 Nov 2019 02:35:57 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id j2sm22749200wrt.61.2019.11.18.02.35.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 02:35:57 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 18 Nov 2019 11:35:33 +0100
Message-Id: <20191118103536.17675-13-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191118103536.17675-1-daniel.vetter@ffwll.ch>
References: <20191118103536.17675-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=U+mnkihGleGDkz4cDlq1mLe29a8SOWxU0+l2t1XXTsM=;
 b=RR2OzqVMDpULL+gS2tHr0M+ZMjNZ5gKVSX3SlUePY2ypTYNyj/EXJfTxJIphgLHle3
 mB7l4HfL83nmzQOHXVl9t8F9sUIuceYAkUTLqE+yjK+tSUTWliD5Hu+1E7wn8GyLk6ur
 k+dehpjIQhD43Jts4rOcdlGI3FIOtyAihnPHA=
Subject: [Intel-gfx] [PATCH 12/15] drm/tee_shm: Drop dma_buf_k(unmap) support
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
Cc: Arnd Bergmann <arnd@arndb.de>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 tee-dev@lists.linaro.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Jens Wiklander <jens.wiklander@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlcmUncyBubyBpbi10cmVlIHVzZXJzIGFueW1vcmUuCgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwg
VmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KQ2M6IEFybmQgQmVyZ21hbm4gPGFybmRA
YXJuZGIuZGU+CkNjOiBHcmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24u
b3JnPgpDYzogSmVucyBXaWtsYW5kZXIgPGplbnMud2lrbGFuZGVyQGxpbmFyby5vcmc+CkNjOiB0
ZWUtZGV2QGxpc3RzLmxpbmFyby5vcmcKLS0KQWNrIGZvciBtZXJnaW5nIHRoaXMgdGhyb3VnaCBk
cm0gdHJlZXMgdmVyeSBtdWNoIGFwcHJlY2lhdGVkLgotRGFuaWVsCi0tLQogZHJpdmVycy9taXNj
L2Zhc3RycGMuYyB8IDggLS0tLS0tLS0KIGRyaXZlcnMvdGVlL3RlZV9zaG0uYyAgfCA2IC0tLS0t
LQogMiBmaWxlcyBjaGFuZ2VkLCAxNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L21pc2MvZmFzdHJwYy5jIGIvZHJpdmVycy9taXNjL2Zhc3RycGMuYwppbmRleCAxYjFhNzk0ZDYz
OWQuLmQwY2JlZjllYzI4YSAxMDA2NDQKLS0tIGEvZHJpdmVycy9taXNjL2Zhc3RycGMuYworKysg
Yi9kcml2ZXJzL21pc2MvZmFzdHJwYy5jCkBAIC01NTUsMTMgKzU1NSw2IEBAIHN0YXRpYyB2b2lk
IGZhc3RycGNfZG1hX2J1Zl9kZXRhdGNoKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsCiAJa2ZyZWUo
YSk7CiB9CiAKLXN0YXRpYyB2b2lkICpmYXN0cnBjX2ttYXAoc3RydWN0IGRtYV9idWYgKmRtYWJ1
ZiwgdW5zaWduZWQgbG9uZyBwZ251bSkKLXsKLQlzdHJ1Y3QgZmFzdHJwY19idWYgKmJ1ZiA9IGRt
YWJ1Zi0+cHJpdjsKLQotCXJldHVybiBidWYtPnZpcnQgPyBidWYtPnZpcnQgKyBwZ251bSAqIFBB
R0VfU0laRSA6IE5VTEw7Ci19Ci0KIHN0YXRpYyB2b2lkICpmYXN0cnBjX3ZtYXAoc3RydWN0IGRt
YV9idWYgKmRtYWJ1ZikKIHsKIAlzdHJ1Y3QgZmFzdHJwY19idWYgKmJ1ZiA9IGRtYWJ1Zi0+cHJp
djsKQEAgLTU4NSw3ICs1NzgsNiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRtYV9idWZfb3BzIGZh
c3RycGNfZG1hX2J1Zl9vcHMgPSB7CiAJLm1hcF9kbWFfYnVmID0gZmFzdHJwY19tYXBfZG1hX2J1
ZiwKIAkudW5tYXBfZG1hX2J1ZiA9IGZhc3RycGNfdW5tYXBfZG1hX2J1ZiwKIAkubW1hcCA9IGZh
c3RycGNfbW1hcCwKLQkubWFwID0gZmFzdHJwY19rbWFwLAogCS52bWFwID0gZmFzdHJwY192bWFw
LAogCS5yZWxlYXNlID0gZmFzdHJwY19yZWxlYXNlLAogfTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
dGVlL3RlZV9zaG0uYyBiL2RyaXZlcnMvdGVlL3RlZV9zaG0uYwppbmRleCAwOWRkY2QwNmM3MTUu
LjkzN2FjNWFhYTZkOCAxMDA2NDQKLS0tIGEvZHJpdmVycy90ZWUvdGVlX3NobS5jCisrKyBiL2Ry
aXZlcnMvdGVlL3RlZV9zaG0uYwpAQCAtNzEsMTEgKzcxLDYgQEAgc3RhdGljIHZvaWQgdGVlX3No
bV9vcF9yZWxlYXNlKHN0cnVjdCBkbWFfYnVmICpkbWFidWYpCiAJdGVlX3NobV9yZWxlYXNlKHNo
bSk7CiB9CiAKLXN0YXRpYyB2b2lkICp0ZWVfc2htX29wX21hcChzdHJ1Y3QgZG1hX2J1ZiAqZG1h
YnVmLCB1bnNpZ25lZCBsb25nIHBnbnVtKQotewotCXJldHVybiBOVUxMOwotfQotCiBzdGF0aWMg
aW50IHRlZV9zaG1fb3BfbW1hcChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCBzdHJ1Y3Qgdm1fYXJl
YV9zdHJ1Y3QgKnZtYSkKIHsKIAlzdHJ1Y3QgdGVlX3NobSAqc2htID0gZG1hYnVmLT5wcml2OwpA
QCAtOTMsNyArODgsNiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRtYV9idWZfb3BzIHRlZV9zaG1f
ZG1hX2J1Zl9vcHMgPSB7CiAJLm1hcF9kbWFfYnVmID0gdGVlX3NobV9vcF9tYXBfZG1hX2J1ZiwK
IAkudW5tYXBfZG1hX2J1ZiA9IHRlZV9zaG1fb3BfdW5tYXBfZG1hX2J1ZiwKIAkucmVsZWFzZSA9
IHRlZV9zaG1fb3BfcmVsZWFzZSwKLQkubWFwID0gdGVlX3NobV9vcF9tYXAsCiAJLm1tYXAgPSB0
ZWVfc2htX29wX21tYXAsCiB9OwogCi0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
