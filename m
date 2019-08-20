Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7756496711
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 19:06:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D3966E838;
	Tue, 20 Aug 2019 17:06:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAEDB6E838
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 17:06:38 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id t50so4179094edd.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 10:06:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yDjXHVtQjJobTZqDsmnLwaZjZ95OSIZ845oXtMqR7YA=;
 b=Fr3KtY8qcTCXrfaEZjnAw+q1ZZzT+ELDqTeSeRSwm6A34SLbVku/xvLUjluXLsL72B
 6t9ULaBoiyWHSu07Q2gmsHKAQZuxWpYM7tYniPXq4udCAFNxVzhYMi4bbsA37EkBnrbF
 FV+lvYQ44nBVSfBtbijHvcO0E1piEd9T1/gkg3Ru8MaYlU1u82sYs2OLTlVjq2QJb25b
 zHtc0+4bxgTd9FTBJkOfu6g6aQbVZs/BuM9HY3Oy0Rx/A0TsWfX+QYJP/qdn83CfJLN/
 0xhPZuWSq8IkjLLK+syVQHuBDuHPfvehMsa9i8UP+R9P1a2gAc49ZqiNQ/fJpVNZK242
 8yGg==
X-Gm-Message-State: APjAAAX85ZGETnBYpqWysg90ahosWvblIvejCYPowWDOyY6Q6xZ++EUp
 TNJHXgRuwOZjDJ+5mw082BeLSMzYhF3bOA==
X-Google-Smtp-Source: APXvYqxn1rTOQ3fAWoz3PLIVL4kQgtZ/+bOrOV8Xo5s1VXB3rlzo26K5w9q8G3eK6sxDgFZ5Bj/YTg==
X-Received: by 2002:a17:907:217b:: with SMTP id
 rl27mr27171757ejb.154.1566320796975; 
 Tue, 20 Aug 2019 10:06:36 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id x11sm2695201eju.26.2019.08.20.10.06.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 10:06:35 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Tue, 20 Aug 2019 19:06:31 +0200
Message-Id: <20190820170631.26570-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yDjXHVtQjJobTZqDsmnLwaZjZ95OSIZ845oXtMqR7YA=;
 b=aZsU3uIIiTF7s4i30eGGuvOoafw49j2bGkYPXNqFdVj8Bjb07hL8KokQxH6YDIs+E8
 rT2GS6BIN6PTZi1N7efU0IOJrWoGWvjBVA5/NWGuRde4Xf6OCtSDkYP3LQRYkm61ZzyW
 AzJk1c5uDbBFDT0+MtPxdVXpFZE0qiZWwloMQ=
Subject: [Intel-gfx] [PATCH] drm/i915: disable set/get_tiling ioctl on gen12+
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
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Kenneth Graunke <kenneth@whitecape.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIGNwdSAoZGUpdGlsZXIgaHcgaXMgZ29uZSwgdGhpcyBzdG9wcGVkIGJlaW5nIHVzZWZ1bC4g
UGx1cyBpdCBuZXZlcgpzdXBwb3J0ZWQgYW55IG9mIHRoZSBmYW5jeSBuZXcgdGlsaW5nIGZvcm1h
dHMsIHdoaWNoIG1lYW5zIHVzZXJzcGFjZQphbHNvIHN0b3BwZWQgdXNpbmcgdGhlIG1hZ2ljIHNp
ZGUtY2hhbm5lbCB0aGlzIHByb3ZpZGVzLgoKVGhpcyB3b3VsZCB0b3RhbGx5IGJyZWFrIGEgbG90
IG9mIHRoZSBpZ3RzLCBidXQgdGhleSdyZSBhbHJlYWR5IGJyb2tlbgpmb3IgdGhlIHNhbWUgcmVh
c29ucyBhcyB1c2Vyc3BhY2Ugb24gZ2VuMTIgd291bGQgYmUuCgpDYzogS2VubmV0aCBHcmF1bmtl
IDxrZW5uZXRoQHdoaXRlY2FwZS5vcmc+CkNjOiBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxla3N0
cmFuZC5uZXQ+CkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6
IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5
OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdGlsaW5nLmMgfCA4ICsrKysrKysrCiAxIGZpbGUgY2hh
bmdlZCwgOCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX3RpbGluZy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X3RpbGluZy5jCmluZGV4IGNhMGMyZjQ1MTc0Mi4uMmVlOTZmMjdhMjk0IDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdGlsaW5nLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3RpbGluZy5jCkBAIC0zMTMsMTAgKzMxMywxNSBAQCBp
bnQKIGk5MTVfZ2VtX3NldF90aWxpbmdfaW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9p
ZCAqZGF0YSwKIAkJCSAgc3RydWN0IGRybV9maWxlICpmaWxlKQogeworCXN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGV2KTsKIAlzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X3NldF90aWxpbmcgKmFyZ3MgPSBkYXRhOwogCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpv
Ymo7CiAJaW50IGVycjsKIAorCS8qIHRoZXJlIGlzIG5vIGNwdSAoZGUpdGlsaW5nIGluIHRoZSBo
dyBhbnltb3JlIG9uIGdlbjEyKyAqLworCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKQor
CQlyZXR1cm4gLUVPUE5PVFNVUFA7CisKIAlvYmogPSBpOTE1X2dlbV9vYmplY3RfbG9va3VwKGZp
bGUsIGFyZ3MtPmhhbmRsZSk7CiAJaWYgKCFvYmopCiAJCXJldHVybiAtRU5PRU5UOwpAQCAtNDAy
LDYgKzQwNyw5IEBAIGk5MTVfZ2VtX2dldF90aWxpbmdfaW9jdGwoc3RydWN0IGRybV9kZXZpY2Ug
KmRldiwgdm9pZCAqZGF0YSwKIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOwogCWlu
dCBlcnIgPSAtRU5PRU5UOwogCisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpCisJCXJl
dHVybiAtRU9QTk9UU1VQUDsKKwogCXJjdV9yZWFkX2xvY2soKTsKIAlvYmogPSBpOTE1X2dlbV9v
YmplY3RfbG9va3VwX3JjdShmaWxlLCBhcmdzLT5oYW5kbGUpOwogCWlmIChvYmopIHsKLS0gCjIu
MjMuMC5yYzEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
