Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E77EB21790B
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 22:14:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E37DB89D6C;
	Tue,  7 Jul 2020 20:13:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABD8189733
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jul 2020 20:13:10 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id a6so2451752wmm.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Jul 2020 13:13:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rXr2As7rh2rrJJ3ahJynDuHkNm4sNZ1+ixU/+yJ6OOk=;
 b=jCpkXGY5p769RIVb0rIEa9p0h9fBKQNebf/um2oaUcGoDwZigWKpNG4nfukkQHidFs
 E6lxceTU0TuvUe5FAj8xthM3oTWkjYklv3mDELPUV67jWfa1JuhnpuIRVXm8+h5SzPfO
 Ufhwy9N9nss079z/+kJ7Mrbm2U0wuBymlNZVs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rXr2As7rh2rrJJ3ahJynDuHkNm4sNZ1+ixU/+yJ6OOk=;
 b=pLo9lUZrJKIq+3OOzUiLx7YwPP++ryuDQUuD3xO77IhzfbsBcUvFnn8qXb6QGmvsc6
 aL3PMbCiCQNRWhOg3sII2WC2x6PP2hnUJYBde3G8yySzvvKzM1boYy7ixIz6XUzclNP0
 r8kvovFRm4VP2X5bi6wEpbjN/eDnpiwth2LoP+vsQ/X3Pwr+IiQ5bWnyvj8Qeu2WWSGq
 bMPVDeDzfVQrygj+KE9jGfreFbsnO+I1M7QV1w3zCnNLU3ZVgh25B4nFMAyCGszYYFPF
 59+qVMR+PcErfsLhW5ULZT+eavqiYDu83EPNUqlaHknkUvo+INuS1H8A4a6oW8bjsMFi
 9Y0w==
X-Gm-Message-State: AOAM532QVKI10jpWCLqiIfk2BEIisQNUOLSSLOW+M0Cxe3gxIrLCCZr1
 yorfKKTMS0YUqyjO2oqgeln8/A==
X-Google-Smtp-Source: ABdhPJw0HizUzWXc4vdabJmS3Cgp6vG06A9p7AbsD/W0R1T8bAZ0kiaRqVn6YrSTgdWX5nrJ4Acaug==
X-Received: by 2002:a7b:c394:: with SMTP id s20mr6139458wmj.31.1594152789350; 
 Tue, 07 Jul 2020 13:13:09 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q7sm2515262wra.56.2020.07.07.13.13.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jul 2020 13:13:08 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  7 Jul 2020 22:12:27 +0200
Message-Id: <20200707201229.472834-24-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
References: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 23/25] drm/amdgpu: use dma-fence annotations for
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
 amd-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 linaro-mm-sig@lists.linaro.org,
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
bWRncHVfZGV2aWNlLmMKaW5kZXggYTY0OWU0MGZkOTZmLi4zYTNiY2NkN2YxYzcgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kZXZpY2UuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZGV2aWNlLmMKQEAgLTQyNjEsNiArNDI2MSw5
IEBAIGludCBhbWRncHVfZGV2aWNlX2dwdV9yZWNvdmVyKHN0cnVjdCBhbWRncHVfZGV2aWNlICph
ZGV2LAogCQkoYW1kZ3B1X2FzaWNfcmVzZXRfbWV0aG9kKGFkZXYpID09IEFNRF9SRVNFVF9NRVRI
T0RfQkFDTykgPwogCQl0cnVlIDogZmFsc2U7CiAJYm9vbCBhdWRpb19zdXNwZW5kZWQgPSBmYWxz
ZTsKKwlib29sIGZlbmNlX2Nvb2tpZTsKKworCWZlbmNlX2Nvb2tpZSA9IGRtYV9mZW5jZV9iZWdp
bl9zaWduYWxsaW5nKCk7CiAKIAkvKgogCSAqIEZsdXNoIFJBTSB0byBkaXNrIHNvIHRoYXQgYWZ0
ZXIgcmVib290CkBAIC00Mjg5LDYgKzQyOTIsNyBAQCBpbnQgYW1kZ3B1X2RldmljZV9ncHVfcmVj
b3ZlcihzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldiwKIAkJRFJNX0lORk8oIkJhaWxpbmcgb24g
VERSIGZvciBzX2pvYjolbGx4LCBoaXZlOiAlbGx4IGFzIGFub3RoZXIgYWxyZWFkeSBpbiBwcm9n
cmVzcyIsCiAJCQkgIGpvYiA/IGpvYi0+YmFzZS5pZCA6IC0xLCBoaXZlLT5oaXZlX2lkKTsKIAkJ
bXV0ZXhfdW5sb2NrKCZoaXZlLT5oaXZlX2xvY2spOworCQlkbWFfZmVuY2VfZW5kX3NpZ25hbGxp
bmcoZmVuY2VfY29va2llKTsKIAkJcmV0dXJuIDA7CiAJfQogCkBAIC00Mjk5LDggKzQzMDMsMTAg
QEAgaW50IGFtZGdwdV9kZXZpY2VfZ3B1X3JlY292ZXIoc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFk
ZXYsCiAJICovCiAJSU5JVF9MSVNUX0hFQUQoJmRldmljZV9saXN0KTsKIAlpZiAoYWRldi0+Z21j
LnhnbWkubnVtX3BoeXNpY2FsX25vZGVzID4gMSkgewotCQlpZiAoIWhpdmUpCisJCWlmICghaGl2
ZSkgeworCQkJZG1hX2ZlbmNlX2VuZF9zaWduYWxsaW5nKGZlbmNlX2Nvb2tpZSk7CiAJCQlyZXR1
cm4gLUVOT0RFVjsKKwkJfQogCQlpZiAoIWxpc3RfaXNfZmlyc3QoJmFkZXYtPmdtYy54Z21pLmhl
YWQsICZoaXZlLT5kZXZpY2VfbGlzdCkpCiAJCQlsaXN0X3JvdGF0ZV90b19mcm9udCgmYWRldi0+
Z21jLnhnbWkuaGVhZCwgJmhpdmUtPmRldmljZV9saXN0KTsKIAkJZGV2aWNlX2xpc3RfaGFuZGxl
ID0gJmhpdmUtPmRldmljZV9saXN0OwpAQCAtNDMxNSw2ICs0MzIxLDcgQEAgaW50IGFtZGdwdV9k
ZXZpY2VfZ3B1X3JlY292ZXIoc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsCiAJCQlEUk1fSU5G
TygiQmFpbGluZyBvbiBURFIgZm9yIHNfam9iOiVsbHgsIGFzIGFub3RoZXIgYWxyZWFkeSBpbiBw
cm9ncmVzcyIsCiAJCQkJICBqb2IgPyBqb2ItPmJhc2UuaWQgOiAtMSk7CiAJCQltdXRleF91bmxv
Y2soJmhpdmUtPmhpdmVfbG9jayk7CisJCQlkbWFfZmVuY2VfZW5kX3NpZ25hbGxpbmcoZmVuY2Vf
Y29va2llKTsKIAkJCXJldHVybiAwOwogCQl9CiAKQEAgLTQ0NTUsNiArNDQ2Miw3IEBAIGludCBh
bWRncHVfZGV2aWNlX2dwdV9yZWNvdmVyKHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2LAogCiAJ
aWYgKHIpCiAJCWRldl9pbmZvKGFkZXYtPmRldiwgIkdQVSByZXNldCBlbmQgd2l0aCByZXQgPSAl
ZFxuIiwgcik7CisJZG1hX2ZlbmNlX2VuZF9zaWduYWxsaW5nKGZlbmNlX2Nvb2tpZSk7CiAJcmV0
dXJuIHI7CiB9CiAKLS0gCjIuMjcuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
