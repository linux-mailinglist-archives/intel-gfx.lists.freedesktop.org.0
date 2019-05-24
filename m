Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF91293AC
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 10:55:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 966466E0D6;
	Fri, 24 May 2019 08:54:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 427F06E0CF
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 08:54:29 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id e24so13342956edq.6
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 01:54:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cm6Zk7GljL6jePfAIeGXLYQwMTWG8I+jBNPdQ08bAaA=;
 b=eRHVhIA/hf/K4cWE/IjnrQ0USBgZoyf+LdeoBT5B38pWZ+gsG6s8kYAQInUzX1v9Sq
 7zX96BGzYHCKD0pouqbqLZSFq0mWZmkdY2zk5qklAwilBg8dsm0vVGn62g00iO+VQKrE
 DCXB7/sKicdDoI7OJiC30BC+c+IUyZ3V1tAC0DgmGo/y3xD2Il7xirvkvwZT0GY0HQT7
 Wmi80g44oPZbvvKhSa6GFOazoOwAp5jkxdFdSjUAxMpzg9x8oP/GbNMjhY9i+MRylSKN
 /496iKGc3knNIipD9RDulFYv3snAVFNqrzRkc1HSlkDFaYQTbCE+SmMP8LRB3Xbl1sPV
 zlnQ==
X-Gm-Message-State: APjAAAU5sfvUQfr3HEaEJiSgA/R33MH4rwMt6/lfP/a3tTfXAvCYdbiL
 S+AhCHCckAP7PS2s5HoY/6jUJQ==
X-Google-Smtp-Source: APXvYqyVkgMZkhO9exZuZqDajdXFWZm65cyatM+vsxYx3gghMw1oBX7yhuzBrT0RXlVCw+gR5jtxJQ==
X-Received: by 2002:a17:906:4442:: with SMTP id
 i2mr12809671ejp.178.1558688066918; 
 Fri, 24 May 2019 01:54:26 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id 96sm567082edq.68.2019.05.24.01.54.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 01:54:26 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: LKML <linux-kernel@vger.kernel.org>
Date: Fri, 24 May 2019 10:53:40 +0200
Message-Id: <20190524085354.27411-20-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190524085354.27411-1-daniel.vetter@ffwll.ch>
References: <20190524085354.27411-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cm6Zk7GljL6jePfAIeGXLYQwMTWG8I+jBNPdQ08bAaA=;
 b=bRkx/z0EyYVtpBt/oj0ErHn1XAliHb9LCtrj5M5meP50p063vhmea6sd9/mf7IQiZz
 imaHmNxuAIW7JcxB2TRz7+ouZg/Qgzkry1168vXhgHsvyi2urrKimUEQAEQoTLV4Ney/
 u9++WAq/GqqyoMUXo87bavXa0VV8rwPCtdMpI=
Subject: [Intel-gfx] [PATCH 19/33] fbdev: unify unlink_framebuffer paths
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
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>,
 Mikulas Patocka <mpatocka@redhat.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Peter Rosin <peda@axentia.se>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rm9yIHNvbWUgcmVhc29ucyB0aGUgcG1fdnRfc3dpdGNoX3VucmVnaXN0ZXIgY2FsbCB3YXMgbWlz
c2luZyBmcm9tIHRoZQpkaXJlY3QgdW5yZWdpc3Rlcl9mcmFtZWJ1ZmZlciBwYXRoLiBGaXggdGhp
cy4KCnYyOiBmYmluZm8tPmRldiBpcyB1c2VkIHRvIGRlY2lkZWQgd2hldGhlciB1bmxpbmtfZnJh
bWVidWZmZXIgaGFzIGJlZW4KY2FsbGVkIGFscmVhZHkuIEkgYm90Y2hlZCB0aGF0IGluIHYxLiBN
YWtlIHRoaXMgYWxsIGNsZWFyZXIgYnkKaW5saW5pbmcgX191bmxpbmtfZnJhbWVidWZmZXIuCgp2
MzogRml4IHR5cG9lIGluIHN1YmplY3QgKE1hYXJ0ZW4pLgoKU2lnbmVkLW9mZi1ieTogRGFuaWVs
IFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBNYWFydGVuIExhbmtob3JzdCA8
bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgpDYzogQmFydGxvbWllaiBab2xuaWVy
a2lld2ljeiA8Yi56b2xuaWVya2llQHNhbXN1bmcuY29tPgpDYzogRGFuaWVsIFZldHRlciA8ZGFu
aWVsLnZldHRlckBmZndsbC5jaD4KQ2M6ICJNaWNoYcWCIE1pcm9zxYJhdyIgPG1pcnEtbGludXhA
cmVyZS5xbXFtLnBsPgpDYzogUGV0ZXIgUm9zaW4gPHBlZGFAYXhlbnRpYS5zZT4KQ2M6IEhhbnMg
ZGUgR29lZGUgPGhkZWdvZWRlQHJlZGhhdC5jb20+CkNjOiBNaWt1bGFzIFBhdG9ja2EgPG1wYXRv
Y2thQHJlZGhhdC5jb20+Ci0tLQogZHJpdmVycy92aWRlby9mYmRldi9jb3JlL2ZibWVtLmMgfCA0
NyArKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDIwIGlu
c2VydGlvbnMoKyksIDI3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvdmlkZW8v
ZmJkZXYvY29yZS9mYm1lbS5jIGIvZHJpdmVycy92aWRlby9mYmRldi9jb3JlL2ZibWVtLmMKaW5k
ZXggZjNiY2FkMzBkM2JhLi5iZWU0NWU5NDA1YjggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvdmlkZW8v
ZmJkZXYvY29yZS9mYm1lbS5jCisrKyBiL2RyaXZlcnMvdmlkZW8vZmJkZXYvY29yZS9mYm1lbS5j
CkBAIC0xNzIyLDE1ICsxNzIyLDMwIEBAIHN0YXRpYyB2b2lkIHVuYmluZF9jb25zb2xlKHN0cnVj
dCBmYl9pbmZvICpmYl9pbmZvKQogCWNvbnNvbGVfdW5sb2NrKCk7CiB9CiAKLXN0YXRpYyB2b2lk
IF9fdW5saW5rX2ZyYW1lYnVmZmVyKHN0cnVjdCBmYl9pbmZvICpmYl9pbmZvKTsKLQotc3RhdGlj
IHZvaWQgZG9fdW5yZWdpc3Rlcl9mcmFtZWJ1ZmZlcihzdHJ1Y3QgZmJfaW5mbyAqZmJfaW5mbykK
K3ZvaWQgdW5saW5rX2ZyYW1lYnVmZmVyKHN0cnVjdCBmYl9pbmZvICpmYl9pbmZvKQogewotCXVu
YmluZF9jb25zb2xlKGZiX2luZm8pOworCWludCBpOworCisJaSA9IGZiX2luZm8tPm5vZGU7CisJ
aWYgKFdBUk5fT04oaSA8IDAgfHwgaSA+PSBGQl9NQVggfHwgcmVnaXN0ZXJlZF9mYltpXSAhPSBm
Yl9pbmZvKSkKKwkJcmV0dXJuOworCisJaWYgKCFmYl9pbmZvLT5kZXYpCisJCXJldHVybjsKKwor
CWRldmljZV9kZXN0cm95KGZiX2NsYXNzLCBNS0RFVihGQl9NQUpPUiwgaSkpOwogCiAJcG1fdnRf
c3dpdGNoX3VucmVnaXN0ZXIoZmJfaW5mby0+ZGV2KTsKIAotCV9fdW5saW5rX2ZyYW1lYnVmZmVy
KGZiX2luZm8pOworCXVuYmluZF9jb25zb2xlKGZiX2luZm8pOworCisJZmJfaW5mby0+ZGV2ID0g
TlVMTDsKK30KK0VYUE9SVF9TWU1CT0wodW5saW5rX2ZyYW1lYnVmZmVyKTsKKworc3RhdGljIHZv
aWQgZG9fdW5yZWdpc3Rlcl9mcmFtZWJ1ZmZlcihzdHJ1Y3QgZmJfaW5mbyAqZmJfaW5mbykKK3sK
Kwl1bmxpbmtfZnJhbWVidWZmZXIoZmJfaW5mbyk7CiAJaWYgKGZiX2luZm8tPnBpeG1hcC5hZGRy
ICYmCiAJICAgIChmYl9pbmZvLT5waXhtYXAuZmxhZ3MgJiBGQl9QSVhNQVBfREVGQVVMVCkpCiAJ
CWtmcmVlKGZiX2luZm8tPnBpeG1hcC5hZGRyKTsKQEAgLTE3NTMsMjggKzE3NjgsNiBAQCBzdGF0
aWMgdm9pZCBkb191bnJlZ2lzdGVyX2ZyYW1lYnVmZmVyKHN0cnVjdCBmYl9pbmZvICpmYl9pbmZv
KQogCXB1dF9mYl9pbmZvKGZiX2luZm8pOwogfQogCi1zdGF0aWMgdm9pZCBfX3VubGlua19mcmFt
ZWJ1ZmZlcihzdHJ1Y3QgZmJfaW5mbyAqZmJfaW5mbykKLXsKLQlpbnQgaTsKLQotCWkgPSBmYl9p
bmZvLT5ub2RlOwotCWlmIChXQVJOX09OKGkgPCAwIHx8IGkgPj0gRkJfTUFYIHx8IHJlZ2lzdGVy
ZWRfZmJbaV0gIT0gZmJfaW5mbykpCi0JCXJldHVybjsKLQotCWlmIChmYl9pbmZvLT5kZXYpIHsK
LQkJZGV2aWNlX2Rlc3Ryb3koZmJfY2xhc3MsIE1LREVWKEZCX01BSk9SLCBpKSk7Ci0JCWZiX2lu
Zm8tPmRldiA9IE5VTEw7Ci0JfQotfQotCi12b2lkIHVubGlua19mcmFtZWJ1ZmZlcihzdHJ1Y3Qg
ZmJfaW5mbyAqZmJfaW5mbykKLXsKLQlfX3VubGlua19mcmFtZWJ1ZmZlcihmYl9pbmZvKTsKLQot
CXVuYmluZF9jb25zb2xlKGZiX2luZm8pOwotfQotRVhQT1JUX1NZTUJPTCh1bmxpbmtfZnJhbWVi
dWZmZXIpOwotCiAvKioKICAqIHJlbW92ZV9jb25mbGljdGluZ19mcmFtZWJ1ZmZlcnMgLSByZW1v
dmUgZmlybXdhcmUtY29uZmlndXJlZCBmcmFtZWJ1ZmZlcnMKICAqIEBhOiBtZW1vcnkgcmFuZ2Us
IHVzZXJzIG9mIHdoaWNoIGFyZSB0byBiZSByZW1vdmVkCi0tIAoyLjIwLjEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
