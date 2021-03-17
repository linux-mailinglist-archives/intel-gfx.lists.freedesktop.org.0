Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F9433FBF1
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Mar 2021 00:40:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18ACC6E86F;
	Wed, 17 Mar 2021 23:40:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com
 [IPv6:2607:f8b0:4864:20::1032])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 527B26E869
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Mar 2021 23:40:31 +0000 (UTC)
Received: by mail-pj1-x1032.google.com with SMTP id
 cl21-20020a17090af695b02900c61ac0f0e9so5974726pjb.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Mar 2021 16:40:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lRejNTfaou+cFz37pxLRRrRcN4Yc2BmRAizHBWyvhR8=;
 b=SLNGAQEYzSKuF+pY2L3+DFXWZGAB9Y+BOISabapCuRbQPo5l4Z4s2Tj0fb9WG0Aw60
 5iq/9ssxHzAUu1PF/+IkM+oqTSzfSbzkZ0SPXL2hTPePqn6rtRMqDYIyvojvevlQkZ99
 G33iXeZPcoL/NEf+gCMw+lHw+SOvE7RV2QCQngW6yyqgj+72kflb/r0xIE1viV//nnPI
 cAybC8N37xiKGke5ncpOjSU4FKoZDt/gySG03MwmVle0h1PiKipzGbSc2VgZoXYJtmXF
 TugA/eR+NeDeQPlI09tpqSJ9cdKS2PjDpgmT8bm+zgGWk1Qir7qSQz32tT4ebrqRY1Kf
 eO9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lRejNTfaou+cFz37pxLRRrRcN4Yc2BmRAizHBWyvhR8=;
 b=ujhH8baVHPynuyKt8sotQImzjv1kaB3elgjVQj0VyQYpBoZVmPc5aiKVUd9tlpsTpd
 /LTulfuHO/xyt7oAVBkd2GsnA/F4kcSPsgmyhzpjeLTnR7yVfFRrbEfxCeHZuwDk9xBa
 DKnIZ6H0vECmRYyoBDYiterRlRIiNrlP8Bm6fyB2w3K3zUsWjpZSuZxzkeRszo8bOFVS
 lTRFJ+MtVqwfDDf15TchSz0gOUPII/W+vthZX/MHYSCzF3xA+SdWz4dmtKCnEOabGfs3
 ma3Vg30Of/d7Yftp2rDP/DsiTewKyY+PeGbImX3bO4cjeVDdev6uAW4qC87YSeNIj0hU
 xkzA==
X-Gm-Message-State: AOAM5333LATWCno/i4l3uod93vl1MBXsV3SvMXhPN47SxxR02aATC8rZ
 VJFd4cWGAgT0gjVHQQYOyTjJAeJv2EguDQ==
X-Google-Smtp-Source: ABdhPJwnhaXD5FWKGbHYOommaAwtWJmSDDSBx8CKXf/lrty2EeWDCDI1HUSoNzm0ohbTeIA9wpPrLA==
X-Received: by 2002:a17:90a:e64a:: with SMTP id
 ep10mr1263911pjb.105.1616024430805; 
 Wed, 17 Mar 2021 16:40:30 -0700 (PDT)
Received: from omlet.lan (jfdmzpr05-ext.jf.intel.com. [134.134.139.74])
 by smtp.gmail.com with ESMTPSA id p3sm148399pgi.24.2021.03.17.16.40.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 16:40:30 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 17 Mar 2021 18:40:14 -0500
Message-Id: <20210317234014.2271006-6-jason@jlekstrand.net>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210317234014.2271006-1-jason@jlekstrand.net>
References: <20210315143428.1471489-1-jason@jlekstrand.net>
 <20210317234014.2271006-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/5] drm/i915: Drop I915_CONTEXT_PARAM_RINGSIZE
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyByZXZlcnRzIGNvbW1pdCA4OGJlNzZjZGFmYzdlNjBlMmU0ZWQ4ODNiZmU3ZThkZDdmMzVm
YTNhLiAgVGhpcyBBUEkKaGFzIG5ldmVyIGJlZW4gdXNlZCBieSBhbnkgcmVhbCB1c2Vyc3BhY2Uu
CgpTaWduZWQtb2ZmLWJ5OiBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxla3N0cmFuZC5uZXQ+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUgICAgICAgICAgICAgICAgIHwgIDEgLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYyAgIHwgOTQgKystLS0t
LS0tLS0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dF9wYXJh
bS5jIHwgNjMgLS0tLS0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29u
dGV4dF9wYXJhbS5oIHwgMTQgLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMu
YyAgICAgICAgICAgfCAgMSAtCiBpbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmggICAgICAgICAg
ICAgICAgICAgfCAyMCArLS0tCiA2IGZpbGVzIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDE4
MSBkZWxldGlvbnMoLSkKIGRlbGV0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9jb250ZXh0X3BhcmFtLmMKIGRlbGV0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0X3BhcmFtLmgKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9NYWtlZmlsZSBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCmluZGV4
IGJjNjEzODg4MGM2N2MuLmMyMDc3MzVmYjY1NzkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L01ha2VmaWxlCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCkBAIC04
OCw3ICs4OCw2IEBAIGd0LXkgKz0gXAogCWd0L2dlbjhfcHBndHQubyBcCiAJZ3QvaW50ZWxfYnJl
YWRjcnVtYnMubyBcCiAJZ3QvaW50ZWxfY29udGV4dC5vIFwKLQlndC9pbnRlbF9jb250ZXh0X3Bh
cmFtLm8gXAogCWd0L2ludGVsX2NvbnRleHRfc3NldS5vIFwKIAlndC9pbnRlbF9lbmdpbmVfY3Mu
byBcCiAJZ3QvaW50ZWxfZW5naW5lX2hlYXJ0YmVhdC5vIFwKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCmluZGV4IDkyMjU2ZjRlNTA3NjQuLjgwZmE3ZTI0OWY3
NDYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYwpAQCAt
NjksNyArNjksNiBAQAogCiAjaW5jbHVkZSAiZ3QvZ2VuNl9wcGd0dC5oIgogI2luY2x1ZGUgImd0
L2ludGVsX2NvbnRleHQuaCIKLSNpbmNsdWRlICJndC9pbnRlbF9jb250ZXh0X3BhcmFtLmgiCiAj
aW5jbHVkZSAiZ3QvaW50ZWxfZW5naW5lX2hlYXJ0YmVhdC5oIgogI2luY2x1ZGUgImd0L2ludGVs
X2VuZ2luZV91c2VyLmgiCiAjaW5jbHVkZSAiZ3QvaW50ZWxfZXhlY2xpc3RzX3N1Ym1pc3Npb24u
aCIgLyogdmlydHVhbF9lbmdpbmUgKi8KQEAgLTc3NCwzMiArNzczLDI1IEBAIF9fY29udGV4dF9l
bmdpbmVzX2F3YWl0KGNvbnN0IHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgsCiAJcmV0dXJu
IGVuZ2luZXM7CiB9CiAKLXN0YXRpYyBpbnQKK3N0YXRpYyB2b2lkCiBjb250ZXh0X2FwcGx5X2Fs
bChzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LAotCQkgIGludCAoKmZuKShzdHJ1Y3QgaW50
ZWxfY29udGV4dCAqY2UsIHZvaWQgKmRhdGEpLAorCQkgIHZvaWQgKCpmbikoc3RydWN0IGludGVs
X2NvbnRleHQgKmNlLCB2b2lkICpkYXRhKSwKIAkJICB2b2lkICpkYXRhKQogewogCXN0cnVjdCBp
OTE1X2dlbV9lbmdpbmVzX2l0ZXIgaXQ7CiAJc3RydWN0IGk5MTVfZ2VtX2VuZ2luZXMgKmU7CiAJ
c3RydWN0IGludGVsX2NvbnRleHQgKmNlOwotCWludCBlcnIgPSAwOwogCiAJZSA9IF9fY29udGV4
dF9lbmdpbmVzX2F3YWl0KGN0eCwgTlVMTCk7Ci0JZm9yX2VhY2hfZ2VtX2VuZ2luZShjZSwgZSwg
aXQpIHsKLQkJZXJyID0gZm4oY2UsIGRhdGEpOwotCQlpZiAoZXJyKQotCQkJYnJlYWs7Ci0JfQor
CWZvcl9lYWNoX2dlbV9lbmdpbmUoY2UsIGUsIGl0KQorCQlmbihjZSwgZGF0YSk7CiAJaTkxNV9z
d19mZW5jZV9jb21wbGV0ZSgmZS0+ZmVuY2UpOwotCi0JcmV0dXJuIGVycjsKIH0KIAotc3RhdGlj
IGludCBfX2FwcGx5X3BwZ3R0KHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwgdm9pZCAqdm0pCitz
dGF0aWMgdm9pZCBfX2FwcGx5X3BwZ3R0KHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwgdm9pZCAq
dm0pCiB7CiAJaTkxNV92bV9wdXQoY2UtPnZtKTsKIAljZS0+dm0gPSBpOTE1X3ZtX2dldCh2bSk7
Ci0JcmV0dXJuIDA7CiB9CiAKIHN0YXRpYyBzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICoKQEAg
LTgzOSwxMCArODMxLDkgQEAgc3RhdGljIHZvaWQgX19zZXRfdGltZWxpbmUoc3RydWN0IGludGVs
X3RpbWVsaW5lICoqZHN0LAogCQlpbnRlbF90aW1lbGluZV9wdXQob2xkKTsKIH0KIAotc3RhdGlj
IGludCBfX2FwcGx5X3RpbWVsaW5lKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwgdm9pZCAqdGlt
ZWxpbmUpCitzdGF0aWMgdm9pZCBfX2FwcGx5X3RpbWVsaW5lKHN0cnVjdCBpbnRlbF9jb250ZXh0
ICpjZSwgdm9pZCAqdGltZWxpbmUpCiB7CiAJX19zZXRfdGltZWxpbmUoJmNlLT50aW1lbGluZSwg
dGltZWxpbmUpOwotCXJldHVybiAwOwogfQogCiBzdGF0aWMgdm9pZCBfX2Fzc2lnbl90aW1lbGlu
ZShzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LApAQCAtMTM2OSw2MyArMTM2MCw2IEBAIHN0
YXRpYyBpbnQgc2V0X3BwZ3R0KHN0cnVjdCBkcm1faTkxNV9maWxlX3ByaXZhdGUgKmZpbGVfcHJp
diwKIAlyZXR1cm4gZXJyOwogfQogCi1zdGF0aWMgaW50IF9fYXBwbHlfcmluZ3NpemUoc3RydWN0
IGludGVsX2NvbnRleHQgKmNlLCB2b2lkICpzeikKLXsKLQlyZXR1cm4gaW50ZWxfY29udGV4dF9z
ZXRfcmluZ19zaXplKGNlLCAodW5zaWduZWQgbG9uZylzeik7Ci19Ci0KLXN0YXRpYyBpbnQgc2V0
X3JpbmdzaXplKHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgsCi0JCQlzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX2NvbnRleHRfcGFyYW0gKmFyZ3MpCi17Ci0JaWYgKCFIQVNfTE9HSUNBTF9SSU5HX0NP
TlRFWFRTKGN0eC0+aTkxNSkpCi0JCXJldHVybiAtRU5PREVWOwotCi0JaWYgKGFyZ3MtPnNpemUp
Ci0JCXJldHVybiAtRUlOVkFMOwotCi0JaWYgKCFJU19BTElHTkVEKGFyZ3MtPnZhbHVlLCBJOTE1
X0dUVF9QQUdFX1NJWkUpKQotCQlyZXR1cm4gLUVJTlZBTDsKLQotCWlmIChhcmdzLT52YWx1ZSA8
IEk5MTVfR1RUX1BBR0VfU0laRSkKLQkJcmV0dXJuIC1FSU5WQUw7Ci0KLQlpZiAoYXJncy0+dmFs
dWUgPiAxMjggKiBJOTE1X0dUVF9QQUdFX1NJWkUpCi0JCXJldHVybiAtRUlOVkFMOwotCi0JcmV0
dXJuIGNvbnRleHRfYXBwbHlfYWxsKGN0eCwKLQkJCQkgX19hcHBseV9yaW5nc2l6ZSwKLQkJCQkg
X19pbnRlbF9jb250ZXh0X3Jpbmdfc2l6ZShhcmdzLT52YWx1ZSkpOwotfQotCi1zdGF0aWMgaW50
IF9fZ2V0X3JpbmdzaXplKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwgdm9pZCAqYXJnKQotewot
CWxvbmcgc3o7Ci0KLQlzeiA9IGludGVsX2NvbnRleHRfZ2V0X3Jpbmdfc2l6ZShjZSk7Ci0JR0VN
X0JVR19PTihzeiA+IElOVF9NQVgpOwotCi0JcmV0dXJuIHN6OyAvKiBzdG9wIG9uIGZpcnN0IGVu
Z2luZSAqLwotfQotCi1zdGF0aWMgaW50IGdldF9yaW5nc2l6ZShzdHJ1Y3QgaTkxNV9nZW1fY29u
dGV4dCAqY3R4LAotCQkJc3RydWN0IGRybV9pOTE1X2dlbV9jb250ZXh0X3BhcmFtICphcmdzKQot
ewotCWludCBzejsKLQotCWlmICghSEFTX0xPR0lDQUxfUklOR19DT05URVhUUyhjdHgtPmk5MTUp
KQotCQlyZXR1cm4gLUVOT0RFVjsKLQotCWlmIChhcmdzLT5zaXplKQotCQlyZXR1cm4gLUVJTlZB
TDsKLQotCXN6ID0gY29udGV4dF9hcHBseV9hbGwoY3R4LCBfX2dldF9yaW5nc2l6ZSwgTlVMTCk7
Ci0JaWYgKHN6IDwgMCkKLQkJcmV0dXJuIHN6OwotCi0JYXJncy0+dmFsdWUgPSBzejsKLQlyZXR1
cm4gMDsKLX0KLQogaW50CiBpOTE1X2dlbV91c2VyX3RvX2NvbnRleHRfc3NldShzdHJ1Y3QgaW50
ZWxfZ3QgKmd0LAogCQkJICAgICAgY29uc3Qgc3RydWN0IGRybV9pOTE1X2dlbV9jb250ZXh0X3Bh
cmFtX3NzZXUgKnVzZXIsCkBAIC0xOTY2LDE5ICsxOTAwLDE3IEBAIHNldF9wZXJzaXN0ZW5jZShz
dHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LAogCXJldHVybiBfX2NvbnRleHRfc2V0X3BlcnNp
c3RlbmNlKGN0eCwgYXJncy0+dmFsdWUpOwogfQogCi1zdGF0aWMgaW50IF9fYXBwbHlfcHJpb3Jp
dHkoc3RydWN0IGludGVsX2NvbnRleHQgKmNlLCB2b2lkICphcmcpCitzdGF0aWMgdm9pZCBfX2Fw
cGx5X3ByaW9yaXR5KHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwgdm9pZCAqYXJnKQogewogCXN0
cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHggPSBhcmc7CiAKIAlpZiAoIWludGVsX2VuZ2luZV9o
YXNfdGltZXNsaWNlcyhjZS0+ZW5naW5lKSkKLQkJcmV0dXJuIDA7CisJCXJldHVybjsKIAogCWlm
IChjdHgtPnNjaGVkLnByaW9yaXR5ID49IEk5MTVfUFJJT1JJVFlfTk9STUFMKQogCQlpbnRlbF9j
b250ZXh0X3NldF91c2Vfc2VtYXBob3JlcyhjZSk7CiAJZWxzZQogCQlpbnRlbF9jb250ZXh0X2Ns
ZWFyX3VzZV9zZW1hcGhvcmVzKGNlKTsKLQotCXJldHVybiAwOwogfQogCiBzdGF0aWMgaW50IHNl
dF9wcmlvcml0eShzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LApAQCAtMjA3MSwxMSArMjAw
Myw4IEBAIHN0YXRpYyBpbnQgY3R4X3NldHBhcmFtKHN0cnVjdCBkcm1faTkxNV9maWxlX3ByaXZh
dGUgKmZwcml2LAogCQlyZXQgPSBzZXRfcGVyc2lzdGVuY2UoY3R4LCBhcmdzKTsKIAkJYnJlYWs7
CiAKLQljYXNlIEk5MTVfQ09OVEVYVF9QQVJBTV9SSU5HU0laRToKLQkJcmV0ID0gc2V0X3Jpbmdz
aXplKGN0eCwgYXJncyk7Ci0JCWJyZWFrOwotCiAJY2FzZSBJOTE1X0NPTlRFWFRfUEFSQU1fQkFO
X1BFUklPRDoKKwljYXNlIEk5MTVfQ09OVEVYVF9QQVJBTV9SSU5HU0laRToKIAlkZWZhdWx0Ogog
CQlyZXQgPSAtRUlOVkFMOwogCQlicmVhazsKQEAgLTIzMTcsMTEgKzIyNDYsOCBAQCBpbnQgaTkx
NV9nZW1fY29udGV4dF9nZXRwYXJhbV9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lk
ICpkYXRhLAogCQlhcmdzLT52YWx1ZSA9IGk5MTVfZ2VtX2NvbnRleHRfaXNfcGVyc2lzdGVudChj
dHgpOwogCQlicmVhazsKIAotCWNhc2UgSTkxNV9DT05URVhUX1BBUkFNX1JJTkdTSVpFOgotCQly
ZXQgPSBnZXRfcmluZ3NpemUoY3R4LCBhcmdzKTsKLQkJYnJlYWs7Ci0KIAljYXNlIEk5MTVfQ09O
VEVYVF9QQVJBTV9CQU5fUEVSSU9EOgorCWNhc2UgSTkxNV9DT05URVhUX1BBUkFNX1JJTkdTSVpF
OgogCWRlZmF1bHQ6CiAJCXJldCA9IC1FSU5WQUw7CiAJCWJyZWFrOwpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dF9wYXJhbS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dF9wYXJhbS5jCmRlbGV0ZWQgZmlsZSBtb2RlIDEwMDY0
NAppbmRleCA2NWRjZDA5MDI0NWQ2Li4wMDAwMDAwMDAwMDAwCi0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2NvbnRleHRfcGFyYW0uYworKysgL2Rldi9udWxsCkBAIC0xLDYzICsw
LDAgQEAKLS8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKLS8qCi0gKiBDb3B5cmlnaHQg
wqkgMjAxOSBJbnRlbCBDb3Jwb3JhdGlvbgotICovCi0KLSNpbmNsdWRlICJpOTE1X2FjdGl2ZS5o
IgotI2luY2x1ZGUgImludGVsX2NvbnRleHQuaCIKLSNpbmNsdWRlICJpbnRlbF9jb250ZXh0X3Bh
cmFtLmgiCi0jaW5jbHVkZSAiaW50ZWxfcmluZy5oIgotCi1pbnQgaW50ZWxfY29udGV4dF9zZXRf
cmluZ19zaXplKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwgbG9uZyBzeikKLXsKLQlpbnQgZXJy
OwotCi0JaWYgKGludGVsX2NvbnRleHRfbG9ja19waW5uZWQoY2UpKQotCQlyZXR1cm4gLUVJTlRS
OwotCi0JZXJyID0gaTkxNV9hY3RpdmVfd2FpdCgmY2UtPmFjdGl2ZSk7Ci0JaWYgKGVyciA8IDAp
Ci0JCWdvdG8gdW5sb2NrOwotCi0JaWYgKGludGVsX2NvbnRleHRfaXNfcGlubmVkKGNlKSkgewot
CQllcnIgPSAtRUJVU1k7IC8qIEluIGFjdGl2ZSB1c2UsIGNvbWUgYmFjayBsYXRlciEgKi8KLQkJ
Z290byB1bmxvY2s7Ci0JfQotCi0JaWYgKHRlc3RfYml0KENPTlRFWFRfQUxMT0NfQklULCAmY2Ut
PmZsYWdzKSkgewotCQlzdHJ1Y3QgaW50ZWxfcmluZyAqcmluZzsKLQotCQkvKiBSZXBsYWNlIHRo
ZSBleGlzdGluZyByaW5nYnVmZmVyICovCi0JCXJpbmcgPSBpbnRlbF9lbmdpbmVfY3JlYXRlX3Jp
bmcoY2UtPmVuZ2luZSwgc3opOwotCQlpZiAoSVNfRVJSKHJpbmcpKSB7Ci0JCQllcnIgPSBQVFJf
RVJSKHJpbmcpOwotCQkJZ290byB1bmxvY2s7Ci0JCX0KLQotCQlpbnRlbF9yaW5nX3B1dChjZS0+
cmluZyk7Ci0JCWNlLT5yaW5nID0gcmluZzsKLQotCQkvKiBDb250ZXh0IGltYWdlIHdpbGwgYmUg
dXBkYXRlZCBvbiBuZXh0IHBpbiAqLwotCX0gZWxzZSB7Ci0JCWNlLT5yaW5nID0gX19pbnRlbF9j
b250ZXh0X3Jpbmdfc2l6ZShzeik7Ci0JfQotCi11bmxvY2s6Ci0JaW50ZWxfY29udGV4dF91bmxv
Y2tfcGlubmVkKGNlKTsKLQlyZXR1cm4gZXJyOwotfQotCi1sb25nIGludGVsX2NvbnRleHRfZ2V0
X3Jpbmdfc2l6ZShzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UpCi17Ci0JbG9uZyBzeiA9ICh1bnNp
Z25lZCBsb25nKVJFQURfT05DRShjZS0+cmluZyk7Ci0KLQlpZiAodGVzdF9iaXQoQ09OVEVYVF9B
TExPQ19CSVQsICZjZS0+ZmxhZ3MpKSB7Ci0JCWlmIChpbnRlbF9jb250ZXh0X2xvY2tfcGlubmVk
KGNlKSkKLQkJCXJldHVybiAtRUlOVFI7Ci0KLQkJc3ogPSBjZS0+cmluZy0+c2l6ZTsKLQkJaW50
ZWxfY29udGV4dF91bmxvY2tfcGlubmVkKGNlKTsKLQl9Ci0KLQlyZXR1cm4gc3o7Ci19CmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0X3BhcmFtLmggYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0X3BhcmFtLmgKZGVsZXRlZCBmaWxl
IG1vZGUgMTAwNjQ0CmluZGV4IGYwNTNkODYzM2ZlMmEuLjAwMDAwMDAwMDAwMDAKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dF9wYXJhbS5oCisrKyAvZGV2L251bGwK
QEAgLTEsMTQgKzAsMCBAQAotLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVCAqLwotLyoK
LSAqIENvcHlyaWdodCDCqSAyMDE5IEludGVsIENvcnBvcmF0aW9uCi0gKi8KLQotI2lmbmRlZiBJ
TlRFTF9DT05URVhUX1BBUkFNX0gKLSNkZWZpbmUgSU5URUxfQ09OVEVYVF9QQVJBTV9ICi0KLXN0
cnVjdCBpbnRlbF9jb250ZXh0OwotCi1pbnQgaW50ZWxfY29udGV4dF9zZXRfcmluZ19zaXplKHN0
cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwgbG9uZyBzeik7Ci1sb25nIGludGVsX2NvbnRleHRfZ2V0
X3Jpbmdfc2l6ZShzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UpOwotCi0jZW5kaWYgLyogSU5URUxf
Q09OVEVYVF9QQVJBTV9IICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCmluZGV4IDg1
MDhiOGQ3MDFjMTAuLjUyYzllNDY1OGU3NDQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2xyYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xy
Yy5jCkBAIC0xMTMxLDcgKzExMzEsNiBAQCB1MzIgbHJjX3VwZGF0ZV9yZWdzKGNvbnN0IHN0cnVj
dCBpbnRlbF9jb250ZXh0ICpjZSwKIAlyZWdzW0NUWF9SSU5HX1NUQVJUXSA9IGk5MTVfZ2d0dF9v
ZmZzZXQocmluZy0+dm1hKTsKIAlyZWdzW0NUWF9SSU5HX0hFQURdID0gaGVhZDsKIAlyZWdzW0NU
WF9SSU5HX1RBSUxdID0gcmluZy0+dGFpbDsKLQlyZWdzW0NUWF9SSU5HX0NUTF0gPSBSSU5HX0NU
TF9TSVpFKHJpbmctPnNpemUpIHwgUklOR19WQUxJRDsKIAogCS8qIFJQQ1MgKi8KIAlpZiAoZW5n
aW5lLT5jbGFzcyA9PSBSRU5ERVJfQ0xBU1MpIHsKZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9k
cm0vaTkxNV9kcm0uaCBiL2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaAppbmRleCAwZWQxYjg4
YWZlZGQ1Li41YTQ1YWMxNThiYmZhIDEwMDY0NAotLS0gYS9pbmNsdWRlL3VhcGkvZHJtL2k5MTVf
ZHJtLmgKKysrIGIvaW5jbHVkZS91YXBpL2RybS9pOTE1X2RybS5oCkBAIC0xNjc1LDI0ICsxNjc1
LDggQEAgc3RydWN0IGRybV9pOTE1X2dlbV9jb250ZXh0X3BhcmFtIHsKICAqLwogI2RlZmluZSBJ
OTE1X0NPTlRFWFRfUEFSQU1fUEVSU0lTVEVOQ0UJMHhiCiAKLS8qCi0gKiBJOTE1X0NPTlRFWFRf
UEFSQU1fUklOR1NJWkU6Ci0gKgotICogU2V0cyB0aGUgc2l6ZSBvZiB0aGUgQ1MgcmluZ2J1ZmZl
ciB0byB1c2UgZm9yIGxvZ2ljYWwgcmluZyBjb250ZXh0cy4gVGhpcwotICogYXBwbGllcyBhIGxp
bWl0IG9mIGhvdyBtYW55IGJhdGNoZXMgY2FuIGJlIHF1ZXVlZCB0byBIVyBiZWZvcmUgdGhlIGNh
bGxlcgotICogaXMgYmxvY2tlZCBkdWUgdG8gbGFjayBvZiBzcGFjZSBmb3IgbW9yZSBjb21tYW5k
cy4KLSAqCi0gKiBPbmx5IHJlbGlhYmx5IHBvc3NpYmxlIHRvIGJlIHNldCBwcmlvciB0byBmaXJz
dCB1c2UsIGkuZS4gZHVyaW5nCi0gKiBjb25zdHJ1Y3Rpb24uIEF0IGFueSBsYXRlciBwb2ludCwg
dGhlIGN1cnJlbnQgZXhlY3V0aW9uIG11c3QgYmUgZmx1c2hlZCBhcwotICogdGhlIHJpbmcgY2Fu
IG9ubHkgYmUgY2hhbmdlZCB3aGlsZSB0aGUgY29udGV4dCBpcyBpZGxlLiBOb3RlLCB0aGUgcmlu
Z3NpemUKLSAqIGNhbiBiZSBzcGVjaWZpZWQgYXMgYSBjb25zdHJ1Y3RvciBwcm9wZXJ0eSwgc2Vl
Ci0gKiBJOTE1X0NPTlRFWFRfQ1JFQVRFX0VYVF9TRVRQQVJBTSwgYnV0IGNhbiBhbHNvIGJlIHNl
dCBsYXRlciBpZiByZXF1aXJlZC4KLSAqCi0gKiBPbmx5IGFwcGxpZXMgdG8gdGhlIGN1cnJlbnQg
c2V0IG9mIGVuZ2luZSBhbmQgbG9zdCB3aGVuIHRob3NlIGVuZ2luZXMKLSAqIGFyZSByZXBsYWNl
ZCBieSBhIG5ldyBtYXBwaW5nIChzZWUgSTkxNV9DT05URVhUX1BBUkFNX0VOR0lORVMpLgotICoK
LSAqIE11c3QgYmUgYmV0d2VlbiA0IC0gNTEyIEtpQiwgaW4gaW50ZXJ2YWxzIG9mIHBhZ2Ugc2l6
ZSBbNCBLaUJdLgotICogRGVmYXVsdCBpcyAxNiBLaUIuCisvKiBUaGlzIEFQSSBoYXMgYmVlbiBy
ZW1vdmVkLiAgT24gdGhlIG9mZiBjaGFuY2Ugc29tZW9uZSBzb21ld2hlcmUgaGFzCisgKiBhdHRl
bXB0ZWQgdG8gdXNlIGl0LCBuZXZlciByZS11c2UgdGhpcyBjb250ZXh0IHBhcmFtIG51bWJlci4K
ICAqLwogI2RlZmluZSBJOTE1X0NPTlRFWFRfUEFSQU1fUklOR1NJWkUJMHhjCiAvKiBNdXN0IGJl
IGtlcHQgY29tcGFjdCAtLSBubyBob2xlcyBhbmQgd2VsbCBkb2N1bWVudGVkICovCi0tIAoyLjI5
LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
