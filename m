Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CCDEEB4D7F
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 14:09:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C13BD6EC0C;
	Tue, 17 Sep 2019 12:09:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09A446EC07
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2019 12:09:45 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id v38so3082655edm.7
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2019 05:09:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uoNxYn2nhvjPSGE7EeOkhJ437kQbsmarcp1tf/DXfT4=;
 b=hK+AskUw0bVHkQcuMzyUD6qBZAg7vVwH7W12IlRtbTuiE5CWEpNfXomMhXIWwhrgQY
 miMbbfxTBziPCgN2xTnFBde6YSQKHmZ65GQNrd+4g4tfraPeNeepbX6gl8y9fD7kQAOs
 gTpLvxLj0BfwzDcobRQzkUwjK4itoJH3CLvuKIZ+DeryUMD9v9dswO2Bv3MdSLT/2xnA
 9I8BChIoJl/8txrQczksl0Ty3dUyQrb5wCuup7XnR+k22I7yEjcdcjRIBpEcQDIsNIww
 UZtYFDow+Op6HqId7OZY0AlrL4wdPwAWwafT9DsKiNKXJHVbxBSiBqAgAHLn51EONDmm
 pp/Q==
X-Gm-Message-State: APjAAAXYWz1Axm6GjkcI6+O0ls/+OJXaTcgVoubagjVExMBHbXQA6fB2
 T2i2GMLNBg7F6Q0sV7gcjelg9ByFIxk=
X-Google-Smtp-Source: APXvYqyMT3by64vqg0/kP21aKL/HQ2EKsdFgWkDyqPqwjk9yedDoJrG0xMk7ui+zwdLnWSIgHuhKJg==
X-Received: by 2002:a17:906:6448:: with SMTP id
 l8mr4421628ejn.233.1568722183520; 
 Tue, 17 Sep 2019 05:09:43 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id t9sm251326eji.26.2019.09.17.05.09.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 05:09:42 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 17 Sep 2019 14:09:36 +0200
Message-Id: <20190917120936.7501-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190917120936.7501-1-daniel.vetter@ffwll.ch>
References: <20190917120936.7501-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uoNxYn2nhvjPSGE7EeOkhJ437kQbsmarcp1tf/DXfT4=;
 b=FskHLrrfTOoiEChEPeZSfz4V8e4XP7Y6503IBJnY/NcN0mAHaDCpJs9ajPaVXsdxLg
 Ti4i1aHl6xE4tbaAjsBNAQu34cI2NRaKyvslEtZKeMwuYkPy+u0nMFDVLQnbu4KBWGCc
 KqPcVuVQ3sSsq9MgVBIXXUZrFb4FTxafFa1Lk=
Subject: [Intel-gfx] [PATCH 2/2] drm/doc: Improve docs around connector
 (un)registration
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
 =?UTF-8?q?Michel=20D=C3=A4nzer?= <michel@daenzer.net>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q3VycmVudCBjb2RlIGlzIHF1aXRlIGEgbWVzcyB1bmZvcnR1bmF0ZWx5LCBzbyBhbHNvIGFkZCBh
IHRvZG8ucnN0CmVudHJ5IHRvIG1heWJlIGZpeCBpdCB1cCBldmVudHVhbGx5LgoKQ2M6IE1pY2hl
bCBEw6RuemVyIDxtaWNoZWxAZGFlbnplci5uZXQ+ClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0
ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgotLS0KIERvY3VtZW50YXRpb24vZ3B1L3RvZG8u
cnN0ICAgICAgfCAxMiArKysrKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9kcm1fY29ubmVjdG9y
LmMgfCAxMCArKysrKysrKy0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2RwX2hlbHBlci5jIHwgIDgg
KysrKysrKysKIDMgZmlsZXMgY2hhbmdlZCwgMjggaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2dwdS90b2RvLnJzdCBiL0RvY3VtZW50YXRp
b24vZ3B1L3RvZG8ucnN0CmluZGV4IDMyNzg3YWNmZjBhOC4uOGRjMTQ3YzkzYzljIDEwMDY0NAot
LS0gYS9Eb2N1bWVudGF0aW9uL2dwdS90b2RvLnJzdAorKysgYi9Eb2N1bWVudGF0aW9uL2dwdS90
b2RvLnJzdApAQCAtMjg0LDYgKzI4NCwxOCBAQCBkcm1fZmJfaGVscGVyIHRhc2tzCiAgIHJlbW92
ZWQ6IGRybV9mYl9oZWxwZXJfc2luZ2xlX2FkZF9hbGxfY29ubmVjdG9ycygpLAogICBkcm1fZmJf
aGVscGVyX2FkZF9vbmVfY29ubmVjdG9yKCkgYW5kIGRybV9mYl9oZWxwZXJfcmVtb3ZlX29uZV9j
b25uZWN0b3IoKS4KIAorY29ubmVjdG9yIHJlZ2lzdGVyL3VucmVnaXN0ZXIgZml4ZXMKKy0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCisKKy0gRm9yIG1vc3QgY29ubmVjdG9ycyBp
dCdzIGEgbm8tb3AgdG8gY2FsbCBkcm1fY29ubmVjdG9yX3JlZ2lzdGVyL3VucmVnaXN0ZXIKKyAg
ZGlyZWN0bHkgZnJvbSBkcml2ZXIgY29kZSwgZHJtX2Rldl9yZWdpc3Rlci91bnJlZ2lzdGVyIHRh
a2UgY2FyZSBvZiB0aGlzCisgIGFscmVhZHkuIFdlIGNhbiByZW1vdmUgYWxsIG9mIHRoZW0uCisK
Ky0gRm9yIGRwIGRyaXZlcnMgaXQncyBhIGJpdCBtb3JlIGEgbWVzcywgc2luY2Ugd2UgbmVlZCB0
aGUgY29ubmVjdG9yIHRvIGJlCisgIHJlZ2lzdGVyZWQgd2hlbiBjYWxsaW5nIGRybV9kcF9hdXhf
cmVnaXN0ZXIuIEZpeCB0aGlzIGJ5IGluc3RlYWQgY2FsbGluZworICBkcm1fZHBfYXV4X2luaXQs
IGFuZCBtb3ZpbmcgdGhlIGFjdHVhbCByZWdpc3RlcmluZyBpbnRvIGEgbGF0ZV9yZWdpc3Rlcgor
ICBjYWxsYmFjayBhcyByZWNvbW1lbmRlZCBpbiB0aGUga2VybmVsZG9jLgorCiBDb3JlIHJlZmFj
dG9yaW5ncwogPT09PT09PT09PT09PT09PT0KIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2RybV9jb25uZWN0b3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fY29ubmVjdG9yLmMKaW5kZXgg
NGM3NjY2MjRiMjBkLi5jZDUwNDhjZWFiMWQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9k
cm1fY29ubmVjdG9yLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9jb25uZWN0b3IuYwpAQCAt
NDgwLDcgKzQ4MCwxMCBAQCBFWFBPUlRfU1lNQk9MKGRybV9jb25uZWN0b3JfY2xlYW51cCk7CiAg
KiBkcm1fY29ubmVjdG9yX3JlZ2lzdGVyIC0gcmVnaXN0ZXIgYSBjb25uZWN0b3IKICAqIEBjb25u
ZWN0b3I6IHRoZSBjb25uZWN0b3IgdG8gcmVnaXN0ZXIKICAqCi0gKiBSZWdpc3RlciB1c2Vyc3Bh
Y2UgaW50ZXJmYWNlcyBmb3IgYSBjb25uZWN0b3IKKyAqIFJlZ2lzdGVyIHVzZXJzcGFjZSBpbnRl
cmZhY2VzIGZvciBhIGNvbm5lY3Rvci4gT25seSBjYWxsIHRoaXMgZm9yIGNvbm5lY3RvcnMKKyAq
IHdoaWNoIGNhbiBiZSBob3RwbHVnZ2VkIGFmdGVyIGRybV9kZXZfcmVnaXN0ZXIoKSBoYXMgYmVl
biBjYWxsZWQgYWxyZWFkeSwKKyAqIGUuZy4gRFAgTVNUIGNvbm5lY3RvcnMuIEFsbCBvdGhlciBj
b25uZWN0b3JzIHdpbGwgYmUgcmVnaXN0ZXJlZCBhdXRvbWF0aWNhbGx5CisgKiB3aGVuIGNhbGxp
bmcgZHJtX2Rldl9yZWdpc3RlcigpLgogICoKICAqIFJldHVybnM6CiAgKiBaZXJvIG9uIHN1Y2Nl
c3MsIGVycm9yIGNvZGUgb24gZmFpbHVyZS4KQEAgLTUyNiw3ICs1MjksMTAgQEAgRVhQT1JUX1NZ
TUJPTChkcm1fY29ubmVjdG9yX3JlZ2lzdGVyKTsKICAqIGRybV9jb25uZWN0b3JfdW5yZWdpc3Rl
ciAtIHVucmVnaXN0ZXIgYSBjb25uZWN0b3IKICAqIEBjb25uZWN0b3I6IHRoZSBjb25uZWN0b3Ig
dG8gdW5yZWdpc3RlcgogICoKLSAqIFVucmVnaXN0ZXIgdXNlcnNwYWNlIGludGVyZmFjZXMgZm9y
IGEgY29ubmVjdG9yCisgKiBVbnJlZ2lzdGVyIHVzZXJzcGFjZSBpbnRlcmZhY2VzIGZvciBhIGNv
bm5lY3Rvci4gT25seSBjYWxsIHRoaXMgZm9yCisgKiBjb25uZWN0b3JzIHdoaWNoIGhhdmUgcmVn
aXN0ZXJlZCBleHBsaWNpdGx5IGJ5IGNhbGxpbmcgZHJtX2Rldl9yZWdpc3RlcigpLAorICogc2lu
Y2UgY29ubmVjdG9ycyBhcmUgdW5yZWdpc3RlcmVkIGF1dG9tYXRpY2FsbHkgd2hlbiBkcm1fZGV2
X3VucmVnaXN0ZXIoKSBpcworICogY2FsbGVkLgogICovCiB2b2lkIGRybV9jb25uZWN0b3JfdW5y
ZWdpc3RlcihzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yKQogewpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2RybV9kcF9oZWxwZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZHBf
aGVscGVyLmMKaW5kZXggZmZjNjhkMzA1YWZlLi5mMzczNzk4ZDgyZjYgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9kcm1fZHBfaGVscGVyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9k
cF9oZWxwZXIuYwpAQCAtMTEwOSw2ICsxMTA5LDE0IEBAIEVYUE9SVF9TWU1CT0woZHJtX2RwX2F1
eF9pbml0KTsKICAqIEBhdXg6IERpc3BsYXlQb3J0IEFVWCBjaGFubmVsCiAgKgogICogQXV0b21h
dGljYWxseSBjYWxscyBkcm1fZHBfYXV4X2luaXQoKSBpZiB0aGlzIGhhc24ndCBiZWVuIGRvbmUg
eWV0LgorICogVGhpcyBzaG91bGQgb25seSBiZSBjYWxsZWQgd2hlbiB0aGUgdW5kZXJseWluZyAm
c3RydWN0IGRybV9jb25uZWN0b3IgaXMKKyAqIGluaXRpYWxpYXplZCBhbHJlYWR5LiBUaGVyZWZv
cmUgdGhlIGJlc3QgcGxhY2UgdG8gY2FsbCB0aGlzIGlzIGZyb20KKyAqICZkcm1fY29ubmVjdG9y
X2Z1bmNzLmxhdGVfcmVnaXN0ZXIuIE5vdCB0aGF0IGRyaXZlcnMgd2hpY2ggZG9uJ3QgZm9sbG93
IHRoaXMKKyAqIHdpbGwgT29wcyB3aGVuIENPTkZJR19EUk1fRFBfQVVYX0NIQVJERVYgaXMgZW5h
YmxlZC4KKyAqCisgKiBEcml2ZXJzIHdoaWNoIG5lZWQgdG8gdXNlIHRoZSBhdXggY2hhbm5lbCBi
ZWZvcmUgdGhhdCBwb2ludCAoZS5nLiBhdCBkcml2ZXIKKyAqIGxvYWQgdGltZSwgYmVmb3JlIGRy
bV9kZXZfcmVnaXN0ZXIoKSBoYXMgYmVlbiBjYWxsZWQpIG5lZWQgdG8gY2FsbAorICogZHJtX2Rw
X2F1eF9pbml0KCkuCiAgKgogICogUmV0dXJucyAwIG9uIHN1Y2Nlc3Mgb3IgYSBuZWdhdGl2ZSBl
cnJvciBjb2RlIG9uIGZhaWx1cmUuCiAgKi8KLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
