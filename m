Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA188FD8B6
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 10:21:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C4786E22F;
	Fri, 15 Nov 2019 09:21:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC8766E1F8
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 09:21:34 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id b11so8907455wmb.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 01:21:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7bn7YokeAeXm5BBJ6T/lvBeGEKknPiOWxZqo9r4HuKg=;
 b=a3dv7967QdeI3Kre2+tIvHQyIFGYksU/4l0XIDe79/In0Uv8e5cjkf21qCCF8F7rnI
 vwuQ/a0L8cXjSK4Z4yh6X/JYuyeGMTxhyxP8oBDS/f8DlMJ9kJgTMQHLwrdEqcqiz4Wp
 o94rXHyIyvgP1n8Y0jDlxMQOVkhxbGrZ1JLYRHO+QhMtAjbVkL4iEYjPwt8G3Shgx4AX
 pglwMXaiZP3mq24Wcx8LGV85n9XwyUWWmIGNcV1HUN6gTU7o6D/p6lDNkAK+0Qrnsay3
 l6fflSThHuA8UuWztP36OJaVa+Kg0aOiuB0XHDmcqwwf7FWnLC6OEFk0U5N1P2J82gad
 B6Pg==
X-Gm-Message-State: APjAAAUeVmlYffl0QoiH68EFETd98Q4htM4Zf4V2hc6e91OuPGCYpLLY
 bU4HEHwxbwtYZEWBw8q/YwH4EA==
X-Google-Smtp-Source: APXvYqw5pA6Z4/To2HtwhxA8s+cQMEm12J+4VegYlzVpaDN9QcIFr5+3oidjgBd15trxx9d517+bhw==
X-Received: by 2002:a1c:62c5:: with SMTP id w188mr13020645wmb.77.1573809693584; 
 Fri, 15 Nov 2019 01:21:33 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id 11sm8987506wmi.8.2019.11.15.01.21.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 01:21:32 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 15 Nov 2019 10:21:18 +0100
Message-Id: <20191115092120.4445-7-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191115092120.4445-1-daniel.vetter@ffwll.ch>
References: <20191115092120.4445-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7bn7YokeAeXm5BBJ6T/lvBeGEKknPiOWxZqo9r4HuKg=;
 b=iPsLs/5cfYIlrdmZTkqsrS08Xzs+mb1WigGIc8UF9mWaopmOt67NMkE/lXX4F+eOoG
 sp3k+sinSMfKknbC2E/NHc0xpYuS/w/dMw/+BuJ86EZXz8bPRSoOq9QAXYjPCB1Yvifq
 U2y8J/LVbYpFVejCPFSt7NoNf07QSjEGvzgEU=
Subject: [Intel-gfx] [PATCH 6/8] drm/xen: Simplify fb_create
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
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>,
 xen-devel@lists.xenproject.org, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIGN1cnJlbnQgY29kZSBpcyBhIHByZXR0eSBnb29kIHd0ZiBtb21lbnQsIHNpbmNlIHdlIGRy
b3AgdGhlCnJlZmVyZW5jZSBiZWZvcmUgd2UgdXNlIGl0LiBJdCdzIG5vdCBhIGJpZyBkZWFsLCBi
ZWNhdXNlIGEpIHdlIG9ubHkKdXNlIHRoZSBwb2ludGVyLCBzbyBkb2Vzbid0IGJsb3cgdXAgYW5k
IHRoZSByZWFsIHJlYXNvbiBiKSBmYi0+b2JqWzBdCmFscmVhZHkgaG9sZHMgYSBmdWxsIHJlZmVy
ZW5jZSBmb3IgdXMuCgpNaWdodCBhcyB3ZWxsIHRha2UgdGhlIHJlYWwgcG9pbnRlciBpbnMndCBv
ZiBjb21wbGljYXRlZCBnYW1lcyB0aGF0CmJhZmZsZS4KClNpZ25lZC1vZmYtYnk6IERhbmllbCBW
ZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgpDYzogT2xla3NhbmRyIEFuZHJ1c2hjaGVu
a28gPG9sZWtzYW5kcl9hbmRydXNoY2hlbmtvQGVwYW0uY29tPgpDYzogeGVuLWRldmVsQGxpc3Rz
LnhlbnByb2plY3Qub3JnCi0tLQogZHJpdmVycy9ncHUvZHJtL3hlbi94ZW5fZHJtX2Zyb250X2tt
cy5jIHwgOSArLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgOCBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0veGVuL3hlbl9kcm1fZnJvbnRf
a21zLmMgYi9kcml2ZXJzL2dwdS9kcm0veGVuL3hlbl9kcm1fZnJvbnRfa21zLmMKaW5kZXggZmY1
MDZiYzk5NDE0Li40ZjM0YzUyMDgxODAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS94ZW4v
eGVuX2RybV9mcm9udF9rbXMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0veGVuL3hlbl9kcm1fZnJv
bnRfa21zLmMKQEAgLTYzLDE0ICs2Myw3IEBAIGZiX2NyZWF0ZShzdHJ1Y3QgZHJtX2RldmljZSAq
ZGV2LCBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbHAsCiAJaWYgKElTX0VSUl9PUl9OVUxMKGZiKSkKIAkJ
cmV0dXJuIGZiOwogCi0JZ2VtX29iaiA9IGRybV9nZW1fb2JqZWN0X2xvb2t1cChmaWxwLCBtb2Rl
X2NtZC0+aGFuZGxlc1swXSk7Ci0JaWYgKCFnZW1fb2JqKSB7Ci0JCURSTV9FUlJPUigiRmFpbGVk
IHRvIGxvb2t1cCBHRU0gb2JqZWN0XG4iKTsKLQkJcmV0ID0gLUVOT0VOVDsKLQkJZ290byBmYWls
OwotCX0KLQotCWRybV9nZW1fb2JqZWN0X3B1dF91bmxvY2tlZChnZW1fb2JqKTsKKwlnZW1fb2Jq
ID0gZmItPm9ialswXTsKIAogCXJldCA9IHhlbl9kcm1fZnJvbnRfZmJfYXR0YWNoKGRybV9pbmZv
LT5mcm9udF9pbmZvLAogCQkJCSAgICAgIHhlbl9kcm1fZnJvbnRfZGJ1Zl90b19jb29raWUoZ2Vt
X29iaiksCi0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
