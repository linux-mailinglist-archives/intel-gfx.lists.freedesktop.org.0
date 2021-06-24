Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E6BD83B34F9
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 19:47:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FACE6EC73;
	Thu, 24 Jun 2021 17:47:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com
 [IPv6:2607:f8b0:4864:20::52b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 385656EC73
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Jun 2021 17:47:41 +0000 (UTC)
Received: by mail-pg1-x52b.google.com with SMTP id e22so5339242pgv.10
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Jun 2021 10:47:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Tz/DuF/FND0AtzBbmjaoWlKt/aPhPThKNTwr9Xn43ZY=;
 b=mUdywTQcwlGKOE7OWwYQdxjXsDaW66xFphJXbcZaHPQWM1XW1H9ZUkhuDs0FPkY/9Y
 UEcPpnRE4mIjEccZBgw9PG7DESEF1A/rxrd0sWdpGos5pb0O2am1Q5QOH6SP7bubXQDf
 eY0m3QA3laJ7RO33+PhUpbriBN0v/ETCeccUX+zQvJHN5GzU0yqP2+IhM+BgXkqXQoOI
 h/Ke5l5G3NY8ir8F48Dp+E0i0nlgf4VZRkud9pMwTUAwPVvNv6SSCk+lWaPQPNvcGAC/
 yNT1IcHaebZHyiA72yPR8Jte9dmAtTjtbVQO4+AUJyaAnx9xhfWYc7YrldYbRJNG4iI7
 FOOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Tz/DuF/FND0AtzBbmjaoWlKt/aPhPThKNTwr9Xn43ZY=;
 b=p6XNbx+art489mvczr1XtwE9m86OSCbu2+/STU4vw9R3tfoe7IqeVZu7nT1MO9trlq
 x0mnhwm6pSn3wKaPbH9Ki4vinR1nWo17X1qYPahIu3d3aRKbyD18V5XWN59kXZzz2q0y
 K2hNmryrJV4s8RBxntxVFByhniUserJGriZonCYdQE/u4ocXsi1R/K8vbCC7R0L9kdK4
 pIe2wExBaXbVsl3s+yXYCYynTjsY35nyV1VArRmqwGLU3SdnugKGiSb8JnXLCkOudrKq
 eD3C7bfWtHJnXlqHNBwqMJ6kXU+z7loNAILo/dzkmIMcaLFqVKWU+wjAiqtAwiMOF6+y
 W1Xw==
X-Gm-Message-State: AOAM532lbHZAf4+/Kx1km4clxe8LH54uBuSMZdoxDt6RDIiwxOTKuHrM
 WjdkR7MarSX6KjGKDCwRNsr+yg==
X-Google-Smtp-Source: ABdhPJzAJUXKOu/Owpa4Ppem0EN3JzZS9ocke4+a3A0aamByRKXT2Z/LKeWyDmXuPfBVTGE+1efu+g==
X-Received: by 2002:a65:49c4:: with SMTP id t4mr5784474pgs.108.1624556860603; 
 Thu, 24 Jun 2021 10:47:40 -0700 (PDT)
Received: from omlet.lan (jfdmzpr04-ext.jf.intel.com. [134.134.137.73])
 by smtp.gmail.com with ESMTPSA id y1sm3013280pgr.70.2021.06.24.10.47.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Jun 2021 10:47:40 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Thu, 24 Jun 2021 12:47:32 -0500
Message-Id: <20210624174732.1754546-1-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] dma-buf/sync_file: Don't leak fences on merge
 failure
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
Cc: Gustavo Padovan <gustavo.padovan@collabora.co.uk>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RWFjaCBhZGRfZmVuY2UoKSBjYWxsIGRvZXMgYSBkbWFfZmVuY2VfZ2V0KCkgb24gdGhlIHJlbGV2
YW50IGZlbmNlLiAgSW4KdGhlIGVycm9yIHBhdGgsIHdlIHdlcmVuJ3QgY2FsbGluZyBkbWFfZmVu
Y2VfcHV0KCkgc28gYWxsIHRob3NlIGZlbmNlcwpnb3QgbGVha2VkLiAgQWxzbywgaW4gdGhlIGty
ZWFsbG9jX2FycmF5IGZhaWx1cmUgY2FzZSwgd2Ugd2VyZW4ndApmcmVlaW5nIHRoZSBmZW5jZXMg
YXJyYXkuICBJbnN0ZWFkLCBlbnN1cmUgdGhhdCBpIGFuZCBmZW5jZXMgYXJlIGFsd2F5cwp6ZXJv
LWluaXRpYWxpemVkIGFuZCBkbWFfZmVuY2VfcHV0KCkgYWxsIHRoZSBmZW5jZXMgYW5kIGtmcmVl
KGZlbmNlcykgb24KZXZlcnkgZXJyb3IgcGF0aC4KClNpZ25lZC1vZmYtYnk6IEphc29uIEVrc3Ry
YW5kIDxqYXNvbkBqbGVrc3RyYW5kLm5ldD4KRml4ZXM6IGEwMmI5ZGM5MGQ4NCAoImRtYS1idWYv
c3luY19maWxlOiByZWZhY3RvciBmZW5jZSBzdG9yYWdlIGluIHN0cnVjdCBzeW5jX2ZpbGUiKQpD
YzogR3VzdGF2byBQYWRvdmFuIDxndXN0YXZvLnBhZG92YW5AY29sbGFib3JhLmNvLnVrPgpDYzog
Q2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgotLS0KIGRyaXZlcnMv
ZG1hLWJ1Zi9zeW5jX2ZpbGUuYyB8IDEzICsrKysrKystLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA3
IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEt
YnVmL3N5bmNfZmlsZS5jIGIvZHJpdmVycy9kbWEtYnVmL3N5bmNfZmlsZS5jCmluZGV4IDIwZDli
ZGRiYjk4NWIuLjM5NGU2ZTFlOTY4NjAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9zeW5j
X2ZpbGUuYworKysgYi9kcml2ZXJzL2RtYS1idWYvc3luY19maWxlLmMKQEAgLTIxMSw4ICsyMTEs
OCBAQCBzdGF0aWMgc3RydWN0IHN5bmNfZmlsZSAqc3luY19maWxlX21lcmdlKGNvbnN0IGNoYXIg
Km5hbWUsIHN0cnVjdCBzeW5jX2ZpbGUgKmEsCiAJCQkJCSBzdHJ1Y3Qgc3luY19maWxlICpiKQog
ewogCXN0cnVjdCBzeW5jX2ZpbGUgKnN5bmNfZmlsZTsKLQlzdHJ1Y3QgZG1hX2ZlbmNlICoqZmVu
Y2VzLCAqKm5mZW5jZXMsICoqYV9mZW5jZXMsICoqYl9mZW5jZXM7Ci0JaW50IGksIGlfYSwgaV9i
LCBudW1fZmVuY2VzLCBhX251bV9mZW5jZXMsIGJfbnVtX2ZlbmNlczsKKwlzdHJ1Y3QgZG1hX2Zl
bmNlICoqZmVuY2VzID0gTlVMTCwgKipuZmVuY2VzLCAqKmFfZmVuY2VzLCAqKmJfZmVuY2VzOwor
CWludCBpID0gMCwgaV9hLCBpX2IsIG51bV9mZW5jZXMsIGFfbnVtX2ZlbmNlcywgYl9udW1fZmVu
Y2VzOwogCiAJc3luY19maWxlID0gc3luY19maWxlX2FsbG9jKCk7CiAJaWYgKCFzeW5jX2ZpbGUp
CkBAIC0yMzYsNyArMjM2LDcgQEAgc3RhdGljIHN0cnVjdCBzeW5jX2ZpbGUgKnN5bmNfZmlsZV9t
ZXJnZShjb25zdCBjaGFyICpuYW1lLCBzdHJ1Y3Qgc3luY19maWxlICphLAogCSAqIElmIGEgc3lu
Y19maWxlIGNhbiBvbmx5IGJlIGNyZWF0ZWQgd2l0aCBzeW5jX2ZpbGVfbWVyZ2UKIAkgKiBhbmQg
c3luY19maWxlX2NyZWF0ZSwgdGhpcyBpcyBhIHJlYXNvbmFibGUgYXNzdW1wdGlvbi4KIAkgKi8K
LQlmb3IgKGkgPSBpX2EgPSBpX2IgPSAwOyBpX2EgPCBhX251bV9mZW5jZXMgJiYgaV9iIDwgYl9u
dW1fZmVuY2VzOyApIHsKKwlmb3IgKGlfYSA9IGlfYiA9IDA7IGlfYSA8IGFfbnVtX2ZlbmNlcyAm
JiBpX2IgPCBiX251bV9mZW5jZXM7ICkgewogCQlzdHJ1Y3QgZG1hX2ZlbmNlICpwdF9hID0gYV9m
ZW5jZXNbaV9hXTsKIAkJc3RydWN0IGRtYV9mZW5jZSAqcHRfYiA9IGJfZmVuY2VzW2lfYl07CiAK
QEAgLTI3NywxNSArMjc3LDE2IEBAIHN0YXRpYyBzdHJ1Y3Qgc3luY19maWxlICpzeW5jX2ZpbGVf
bWVyZ2UoY29uc3QgY2hhciAqbmFtZSwgc3RydWN0IHN5bmNfZmlsZSAqYSwKIAkJZmVuY2VzID0g
bmZlbmNlczsKIAl9CiAKLQlpZiAoc3luY19maWxlX3NldF9mZW5jZShzeW5jX2ZpbGUsIGZlbmNl
cywgaSkgPCAwKSB7Ci0JCWtmcmVlKGZlbmNlcyk7CisJaWYgKHN5bmNfZmlsZV9zZXRfZmVuY2Uo
c3luY19maWxlLCBmZW5jZXMsIGkpIDwgMCkKIAkJZ290byBlcnI7Ci0JfQogCiAJc3RybGNweShz
eW5jX2ZpbGUtPnVzZXJfbmFtZSwgbmFtZSwgc2l6ZW9mKHN5bmNfZmlsZS0+dXNlcl9uYW1lKSk7
CiAJcmV0dXJuIHN5bmNfZmlsZTsKIAogZXJyOgorCXdoaWxlIChpKQorCQlkbWFfZmVuY2VfcHV0
KGZlbmNlc1stLWldKTsKKwlrZnJlZShmZW5jZXMpOwogCWZwdXQoc3luY19maWxlLT5maWxlKTsK
IAlyZXR1cm4gTlVMTDsKIAotLSAKMi4zMS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
