Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E04D022E82
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 10:23:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDD7A8929F;
	Mon, 20 May 2019 08:22:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1B9D89268
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 08:22:46 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id a8so22559986edx.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 01:22:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gJfGxf8U6KTF1RX+ypC9LJaMGcJl9tQj1nmEL+C/k0Y=;
 b=U3WaZ2YKHPunYtxh94P8HsrAltKxTOmRAGxUGJ9vE6omO+ZYNrtyhNBBD8yByXbxFz
 8ClCwFtvMpOuiW9T3K02Yhdw3tdEYCXuod/PybA9bN6flgk0a8Zq/5oIUv4X8Jl8j2rj
 ygwRtEvBRqACD8qfajJ2MvTfhcflV6yLUPncVO3DYS5LD7ktsyuyrx5rWJE7eLJBfIIA
 OMVuvKJTOH/0iHvARGPS1Hs9hIAzPdvUknbRkb/a0RMdShtsWt0M+oJUvv6TOgrOBahK
 AwspiBpRsm/d2nLZ3bwbp/YKKt9Jf6qXUhlILnuPeXIXKH0eCLAWIucGyCQiKcOXx4Dk
 R0iw==
X-Gm-Message-State: APjAAAUkEzcrcrjplZoyFeBuPIWK/KzqlaHMMenPUKp4Qmn8QcX8jD0v
 9WY4VaAIlpaHMgnL7w3jq5WJBA==
X-Google-Smtp-Source: APXvYqyxJI3lRgguCg2t5GLDmn3fTghiWGf9baTfAAVB0gGJLRcg+SLwvUdHlV6M58vH86eFdcH0+w==
X-Received: by 2002:a17:906:e9c7:: with SMTP id
 kb7mr21611372ejb.259.1558340564829; 
 Mon, 20 May 2019 01:22:44 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id t25sm3021263ejx.8.2019.05.20.01.22.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 01:22:44 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 20 May 2019 10:22:02 +0200
Message-Id: <20190520082216.26273-20-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520082216.26273-1-daniel.vetter@ffwll.ch>
References: <20190520082216.26273-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gJfGxf8U6KTF1RX+ypC9LJaMGcJl9tQj1nmEL+C/k0Y=;
 b=ZfzZMaqwxU5SpCglU4wJiqW//46esqj7/dt+xRvoqOyhLTaWabjwWc1CjWicENmY8B
 HH6xiUbHib3IGW/4+kNXHy+U7xRl+HEAgG0ERBbZcyL4J9CooATaEyNH4ZRKgIJaASV0
 dwpIzTuki0yVR0zlRC3U4sV+hjHGeBf3Vqy/U=
Subject: [Intel-gfx] [PATCH 19/33] fbdev: unify unlink_framebufer paths
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
 LKML <linux-kernel@vger.kernel.org>,
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
YWtlIHRoaXMgYWxsIGNsZWFyZXIgYnkKaW5saW5pbmcgX191bmxpbmtfZnJhbWVidWZmZXIuCgpT
aWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KQ2M6
IEJhcnRsb21pZWogWm9sbmllcmtpZXdpY3ogPGIuem9sbmllcmtpZUBzYW1zdW5nLmNvbT4KQ2M6
IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+CkNjOiAiTWljaGHFgiBNaXJv
c8WCYXciIDxtaXJxLWxpbnV4QHJlcmUucW1xbS5wbD4KQ2M6IFBldGVyIFJvc2luIDxwZWRhQGF4
ZW50aWEuc2U+CkNjOiBIYW5zIGRlIEdvZWRlIDxoZGVnb2VkZUByZWRoYXQuY29tPgpDYzogTWlr
dWxhcyBQYXRvY2thIDxtcGF0b2NrYUByZWRoYXQuY29tPgotLS0KIGRyaXZlcnMvdmlkZW8vZmJk
ZXYvY29yZS9mYm1lbS5jIHwgNDcgKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0KIDEg
ZmlsZSBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspLCAyNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL3ZpZGVvL2ZiZGV2L2NvcmUvZmJtZW0uYyBiL2RyaXZlcnMvdmlkZW8vZmJk
ZXYvY29yZS9mYm1lbS5jCmluZGV4IDAzMjUwNjU3NmFhMC4uZjA1OWIwYjFhMDMwIDEwMDY0NAot
LS0gYS9kcml2ZXJzL3ZpZGVvL2ZiZGV2L2NvcmUvZmJtZW0uYworKysgYi9kcml2ZXJzL3ZpZGVv
L2ZiZGV2L2NvcmUvZmJtZW0uYwpAQCAtMTcxNCwxNSArMTcxNCwzMCBAQCBzdGF0aWMgdm9pZCB1
bmJpbmRfY29uc29sZShzdHJ1Y3QgZmJfaW5mbyAqZmJfaW5mbykKIAljb25zb2xlX3VubG9jaygp
OwogfQogCi1zdGF0aWMgdm9pZCBfX3VubGlua19mcmFtZWJ1ZmZlcihzdHJ1Y3QgZmJfaW5mbyAq
ZmJfaW5mbyk7Ci0KLXN0YXRpYyB2b2lkIGRvX3VucmVnaXN0ZXJfZnJhbWVidWZmZXIoc3RydWN0
IGZiX2luZm8gKmZiX2luZm8pCit2b2lkIHVubGlua19mcmFtZWJ1ZmZlcihzdHJ1Y3QgZmJfaW5m
byAqZmJfaW5mbykKIHsKLQl1bmJpbmRfY29uc29sZShmYl9pbmZvKTsKKwlpbnQgaTsKKworCWkg
PSBmYl9pbmZvLT5ub2RlOworCWlmIChXQVJOX09OKGkgPCAwIHx8IGkgPj0gRkJfTUFYIHx8IHJl
Z2lzdGVyZWRfZmJbaV0gIT0gZmJfaW5mbykpCisJCXJldHVybjsKKworCWlmICghZmJfaW5mby0+
ZGV2KQorCQlyZXR1cm47CisKKwlkZXZpY2VfZGVzdHJveShmYl9jbGFzcywgTUtERVYoRkJfTUFK
T1IsIGkpKTsKIAogCXBtX3Z0X3N3aXRjaF91bnJlZ2lzdGVyKGZiX2luZm8tPmRldik7CiAKLQlf
X3VubGlua19mcmFtZWJ1ZmZlcihmYl9pbmZvKTsKKwl1bmJpbmRfY29uc29sZShmYl9pbmZvKTsK
KworCWZiX2luZm8tPmRldiA9IE5VTEw7Cit9CitFWFBPUlRfU1lNQk9MKHVubGlua19mcmFtZWJ1
ZmZlcik7CisKK3N0YXRpYyB2b2lkIGRvX3VucmVnaXN0ZXJfZnJhbWVidWZmZXIoc3RydWN0IGZi
X2luZm8gKmZiX2luZm8pCit7CisJdW5saW5rX2ZyYW1lYnVmZmVyKGZiX2luZm8pOwogCWlmIChm
Yl9pbmZvLT5waXhtYXAuYWRkciAmJgogCSAgICAoZmJfaW5mby0+cGl4bWFwLmZsYWdzICYgRkJf
UElYTUFQX0RFRkFVTFQpKQogCQlrZnJlZShmYl9pbmZvLT5waXhtYXAuYWRkcik7CkBAIC0xNzM4
LDI4ICsxNzUzLDYgQEAgc3RhdGljIHZvaWQgZG9fdW5yZWdpc3Rlcl9mcmFtZWJ1ZmZlcihzdHJ1
Y3QgZmJfaW5mbyAqZmJfaW5mbykKIAlwdXRfZmJfaW5mbyhmYl9pbmZvKTsKIH0KIAotc3RhdGlj
IHZvaWQgX191bmxpbmtfZnJhbWVidWZmZXIoc3RydWN0IGZiX2luZm8gKmZiX2luZm8pCi17Ci0J
aW50IGk7Ci0KLQlpID0gZmJfaW5mby0+bm9kZTsKLQlpZiAoV0FSTl9PTihpIDwgMCB8fCBpID49
IEZCX01BWCB8fCByZWdpc3RlcmVkX2ZiW2ldICE9IGZiX2luZm8pKQotCQlyZXR1cm47Ci0KLQlp
ZiAoZmJfaW5mby0+ZGV2KSB7Ci0JCWRldmljZV9kZXN0cm95KGZiX2NsYXNzLCBNS0RFVihGQl9N
QUpPUiwgaSkpOwotCQlmYl9pbmZvLT5kZXYgPSBOVUxMOwotCX0KLX0KLQotdm9pZCB1bmxpbmtf
ZnJhbWVidWZmZXIoc3RydWN0IGZiX2luZm8gKmZiX2luZm8pCi17Ci0JX191bmxpbmtfZnJhbWVi
dWZmZXIoZmJfaW5mbyk7Ci0KLQl1bmJpbmRfY29uc29sZShmYl9pbmZvKTsKLX0KLUVYUE9SVF9T
WU1CT0wodW5saW5rX2ZyYW1lYnVmZmVyKTsKLQogLyoqCiAgKiByZW1vdmVfY29uZmxpY3Rpbmdf
ZnJhbWVidWZmZXJzIC0gcmVtb3ZlIGZpcm13YXJlLWNvbmZpZ3VyZWQgZnJhbWVidWZmZXJzCiAg
KiBAYTogbWVtb3J5IHJhbmdlLCB1c2VycyBvZiB3aGljaCBhcmUgdG8gYmUgcmVtb3ZlZAotLSAK
Mi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
