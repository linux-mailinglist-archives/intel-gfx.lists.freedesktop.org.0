Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A06C1EDF66
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 10:13:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3A9689803;
	Thu,  4 Jun 2020 08:12:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1E9089452
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2020 08:12:52 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id p5so5015785wrw.9
 for <intel-gfx@lists.freedesktop.org>; Thu, 04 Jun 2020 01:12:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mPAnyNEtS0uY+bUuM8GxOFOVsLMIhBxwz7ItIj7lR3A=;
 b=Cw6DE8iprZ3uQg5gII/9i5sihculizd8rViFXjzCXSdVxul9CqWdFgOfY71gVkGiuV
 juGxO+Tm75A9A2e/W5n2HP7py+rVnr9u2LxOwSRBXRkhwJHpkeuFJDFWdS3KfjcSOmQG
 RdZmXaDOTVBzfxFPq9ypg/Dpc5CyQyRF0HX2w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mPAnyNEtS0uY+bUuM8GxOFOVsLMIhBxwz7ItIj7lR3A=;
 b=Izyqu8x4xIawq0f2EnD12mCsfsPy0cEQ/SX38Oo24WqVvygJzUXce643FtHOOeIu50
 gM5XWkUg1/MVkhSp5+yHFiLxuvEpE82Mt/DkhAZ47gTvlnlivETSrSr+a6JW9Zmod0/0
 2nYsEVw/e3FPiOagesEeUXxnV7JTqZ2cvo3KK88LulxSyIbwz6dH6NIpEcC/vzGrpBr/
 3JqxBz5dHWNZOp9Q4R9AIayojEOSUfwJ1FF73s6ENhwGG4gZ8c72a4Y+9WVRFn0iM2xY
 tajf2lHu1FQMt9h0yok4os5bJor24yxfLJ039XhGoUt0irUs71fDXJ/MAHn43G0Qxgfz
 8DAw==
X-Gm-Message-State: AOAM531hmO2wHLOfOz/fIHIroFJxtVFbaRsj3Z/1npnxQgzDH+SaciW5
 EZheUFb6EaYwYF6QULZmOCcr7Q==
X-Google-Smtp-Source: ABdhPJzqUtEw7Ja3sjtBGx+terae6/AGLT+5Iphc3r7rUYdY/P0UYh8UASXP+HWl66kBwvknWv+Dcg==
X-Received: by 2002:a5d:6391:: with SMTP id p17mr3458296wru.118.1591258371351; 
 Thu, 04 Jun 2020 01:12:51 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f11sm6873305wrj.2.2020.06.04.01.12.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 01:12:50 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu,  4 Jun 2020 10:12:21 +0200
Message-Id: <20200604081224.863494-16-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
References: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 15/18] drm/amdgpu: use dma-fence annotations for
 gpu reset code
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
Cc: linux-rdma@vger.kernel.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, amd-gfx@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>, linaro-mm-sig@lists.linaro.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VG8gaW1wcm92ZSBjb3ZlcmFnZSBhbHNvIGFubm90YXRlIHRoZSBncHUgcmVzZXQgY29kZSBpdHNl
bGYsIHNpbmNlCnRoYXQncyBjYWxsZWQgZnJvbSBvdGhlciBwbGFjZXMgdGhhbiBkcm0vc2NoZWR1
bGVyICh3aGljaCBpcyBhbHJlYWR5CmFubm90YXRlZCkuIEFubm90YXRpb25zIG5lc3RzLCBzbyB0
aGlzIGRvZXNuJ3QgYnJlYWsgYW55dGhpbmcsIGFuZAphbGxvd3MgZWFzaWVyIHRlc3RpbmcuCgpD
YzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCkNjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKQ2M6IGxpbnV4LXJkbWFAdmdlci5rZXJuZWwub3JnCkNjOiBhbWQtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNYWFydGVuIExhbmto
b3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgpDYzogQ2hyaXN0aWFuIEvD
tm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0
dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2FtZGdwdV9kZXZpY2UuYyB8IDEwICsrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA5IGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9hbWRncHVfZGV2aWNlLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9h
bWRncHVfZGV2aWNlLmMKaW5kZXggYTAyN2E4ZjdiMjgxLi5hYzAyODZhNWYyZmMgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kZXZpY2UuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZGV2aWNlLmMKQEAgLTQyMTUsNiArNDIxNSw5
IEBAIGludCBhbWRncHVfZGV2aWNlX2dwdV9yZWNvdmVyKHN0cnVjdCBhbWRncHVfZGV2aWNlICph
ZGV2LAogCQkoYW1kZ3B1X2FzaWNfcmVzZXRfbWV0aG9kKGFkZXYpID09IEFNRF9SRVNFVF9NRVRI
T0RfQkFDTykgPwogCQl0cnVlIDogZmFsc2U7CiAJYm9vbCBhdWRpb19zdXNwZW5kZWQgPSBmYWxz
ZTsKKwlib29sIGZlbmNlX2Nvb2tpZTsKKworCWZlbmNlX2Nvb2tpZSA9IGRtYV9mZW5jZV9iZWdp
bl9zaWduYWxsaW5nKCk7CiAKIAkvKgogCSAqIEZsdXNoIFJBTSB0byBkaXNrIHNvIHRoYXQgYWZ0
ZXIgcmVib290CkBAIC00MjQzLDYgKzQyNDYsNyBAQCBpbnQgYW1kZ3B1X2RldmljZV9ncHVfcmVj
b3ZlcihzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldiwKIAkJRFJNX0lORk8oIkJhaWxpbmcgb24g
VERSIGZvciBzX2pvYjolbGx4LCBoaXZlOiAlbGx4IGFzIGFub3RoZXIgYWxyZWFkeSBpbiBwcm9n
cmVzcyIsCiAJCQkgIGpvYiA/IGpvYi0+YmFzZS5pZCA6IC0xLCBoaXZlLT5oaXZlX2lkKTsKIAkJ
bXV0ZXhfdW5sb2NrKCZoaXZlLT5oaXZlX2xvY2spOworCQlkbWFfZmVuY2VfZW5kX3NpZ25hbGxp
bmcoZmVuY2VfY29va2llKTsKIAkJcmV0dXJuIDA7CiAJfQogCkBAIC00MjUzLDggKzQyNTcsMTAg
QEAgaW50IGFtZGdwdV9kZXZpY2VfZ3B1X3JlY292ZXIoc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFk
ZXYsCiAJICovCiAJSU5JVF9MSVNUX0hFQUQoJmRldmljZV9saXN0KTsKIAlpZiAoYWRldi0+Z21j
LnhnbWkubnVtX3BoeXNpY2FsX25vZGVzID4gMSkgewotCQlpZiAoIWhpdmUpCisJCWlmICghaGl2
ZSkgeworCQkJZG1hX2ZlbmNlX2VuZF9zaWduYWxsaW5nKGZlbmNlX2Nvb2tpZSk7CiAJCQlyZXR1
cm4gLUVOT0RFVjsKKwkJfQogCQlpZiAoIWxpc3RfaXNfZmlyc3QoJmFkZXYtPmdtYy54Z21pLmhl
YWQsICZoaXZlLT5kZXZpY2VfbGlzdCkpCiAJCQlsaXN0X3JvdGF0ZV90b19mcm9udCgmYWRldi0+
Z21jLnhnbWkuaGVhZCwgJmhpdmUtPmRldmljZV9saXN0KTsKIAkJZGV2aWNlX2xpc3RfaGFuZGxl
ID0gJmhpdmUtPmRldmljZV9saXN0OwpAQCAtNDI2OSw2ICs0Mjc1LDcgQEAgaW50IGFtZGdwdV9k
ZXZpY2VfZ3B1X3JlY292ZXIoc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsCiAJCQlEUk1fSU5G
TygiQmFpbGluZyBvbiBURFIgZm9yIHNfam9iOiVsbHgsIGFzIGFub3RoZXIgYWxyZWFkeSBpbiBw
cm9ncmVzcyIsCiAJCQkJICBqb2IgPyBqb2ItPmJhc2UuaWQgOiAtMSk7CiAJCQltdXRleF91bmxv
Y2soJmhpdmUtPmhpdmVfbG9jayk7CisJCQlkbWFfZmVuY2VfZW5kX3NpZ25hbGxpbmcoZmVuY2Vf
Y29va2llKTsKIAkJCXJldHVybiAwOwogCQl9CiAKQEAgLTQ0MDksNiArNDQxNiw3IEBAIGludCBh
bWRncHVfZGV2aWNlX2dwdV9yZWNvdmVyKHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2LAogCiAJ
aWYgKHIpCiAJCWRldl9pbmZvKGFkZXYtPmRldiwgIkdQVSByZXNldCBlbmQgd2l0aCByZXQgPSAl
ZFxuIiwgcik7CisJZG1hX2ZlbmNlX2VuZF9zaWduYWxsaW5nKGZlbmNlX2Nvb2tpZSk7CiAJcmV0
dXJuIHI7CiB9CiAKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
