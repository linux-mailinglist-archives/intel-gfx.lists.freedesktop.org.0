Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F48391B46
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 17:11:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3497E6EDAB;
	Wed, 26 May 2021 15:11:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5EBB6E20E
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 May 2021 15:11:15 +0000 (UTC)
Received: by mail-wr1-x433.google.com with SMTP id x8so1502373wrq.9
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 May 2021 08:11:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Lu2TDipopelvZEJA1rp7trPo6hjwUN0ffNWynpYycRQ=;
 b=Xy3i/CfvxdcDfy47sXh18bh++H72kPLDPA+JrLgoTQN/IFFMMcdypskEp/WzIyBgFz
 KptfaLkOpVBsR1T963oILaWMuXp3ZfxU5KMHCgtvoGkK81C7veNAYW+1iQkk9P0VbC5I
 R5FiPWWKJ98LJa20TNzDWOztJeI3mu/XZjy+8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Lu2TDipopelvZEJA1rp7trPo6hjwUN0ffNWynpYycRQ=;
 b=cpwaNwX6pfh5bHAVE3DqlB2WS+VZEXEIDVUS7MpIAY/jlMJ9zmti7tiUmywZRdPqwl
 wivNUOs0k+dGQCoetvN7ijbgExvLKIZlbHBLTN1B00rbDQU8pcqqVblGcd2AuqdRemaN
 ryGqcm+PU+cYuLL+dKr72NwXlsPcD/wqqxmmuhe9T3cYOtVytXNxk8GNIU+zlShkw4yU
 nFFyDcQgmS1CAaOp0pydaqdnrgnVJ0/IaPWZ/f3QhB4oSaCft8tK2imO1Z0OC93RCW/p
 N2U34n0jnsKsdfG9cA33omMtmc3WRQ9hKxgz5J5fFAEm0b1EJbed9qF/PaMmQf589CjG
 1rcg==
X-Gm-Message-State: AOAM533e3lwaYQvIdByc39iOGEWh24Mr0bvIVCEuSXHdS9teF4sV9B+q
 /oaoQTV2ZwNLnP+VdFOggOx3QIxHFwmnfw==
X-Google-Smtp-Source: ABdhPJwe3bp+a+Oaknn3NFX5OHPwwngJ/PwVe2l3/hn8lIIqQ984uj/AS+o03p/YJvTuIXNfewbS5Q==
X-Received: by 2002:adf:d081:: with SMTP id y1mr32715059wrh.179.1622041873853; 
 Wed, 26 May 2021 08:11:13 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id r17sm7270038wmh.25.2021.05.26.08.11.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 May 2021 08:11:13 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Wed, 26 May 2021 17:11:06 +0200
Message-Id: <20210526151106.3390006-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Use generic_access_phys
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Michel Lespinasse <walken@google.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U2luY2UKCmNvbW1pdCA5NjY2N2Y4YTQzODJkYjllZDA0MjMzMmNhNmVlMTY1YWU5YjkxMzA3CkF1
dGhvcjogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KRGF0ZTogICBGcmkg
Tm92IDI3IDE3OjQxOjIxIDIwMjAgKzAxMDAKCiAgICBtbTogQ2xvc2UgcmFjZSBpbiBnZW5lcmlj
X2FjY2Vzc19waHlzCgppdCBpcyByYWNlLWZyZWUgYW5kIGNhbiB0aGVyZWZvcmUgYmUgc2FmZWx5
IHVzZWQgZm9yIGR5bmFtaWMgbWFwcGluZ3MKbGlrZSB3ZSBoYXZlIHRvby4KCkNjOiBKb24gQmxv
b21maWVsZCA8am9uLmJsb29tZmllbGRAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwg
VmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmll
bC52ZXR0ZXJAZmZ3bGwuY2g+CkNjOiAiVGhvbWFzIEhlbGxzdHLDtm0iIDx0aG9tYXMuaGVsbHN0
cm9tQGxpbnV4LmludGVsLmNvbT4KQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgpDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4Lmlu
dGVsLmNvbT4KQ2M6IEFuZHJldyBNb3J0b24gPGFrcG1AbGludXgtZm91bmRhdGlvbi5vcmc+CkNj
OiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KQ2M6ICJWaWxs
ZSBTeXJqw6Rsw6QiIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IE1pY2hlbCBM
ZXNwaW5hc3NlIDx3YWxrZW5AZ29vZ2xlLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fbW1hbi5jIHwgNjAgKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUg
Y2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA1NCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYwppbmRleCBmNmZlNWNiMDE0MzguLjcxNzc5ODI5MzA0
NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jCkBAIC00MTQsNTgg
KzQxNCw2IEBAIHN0YXRpYyB2bV9mYXVsdF90IHZtX2ZhdWx0X2d0dChzdHJ1Y3Qgdm1fZmF1bHQg
KnZtZikKIAlyZXR1cm4gaTkxNV9lcnJvcl90b192bWZfZmF1bHQocmV0KTsKIH0KIAotc3RhdGlj
IGludAotdm1fYWNjZXNzKHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqYXJlYSwgdW5zaWduZWQgbG9u
ZyBhZGRyLAotCSAgdm9pZCAqYnVmLCBpbnQgbGVuLCBpbnQgd3JpdGUpCi17Ci0Jc3RydWN0IGk5
MTVfbW1hcF9vZmZzZXQgKm1tbyA9IGFyZWEtPnZtX3ByaXZhdGVfZGF0YTsKLQlzdHJ1Y3QgZHJt
X2k5MTVfZ2VtX29iamVjdCAqb2JqID0gbW1vLT5vYmo7Ci0Jc3RydWN0IGk5MTVfZ2VtX3d3X2N0
eCB3dzsKLQl2b2lkICp2YWRkcjsKLQlpbnQgZXJyID0gMDsKLQotCWlmIChpOTE1X2dlbV9vYmpl
Y3RfaXNfcmVhZG9ubHkob2JqKSAmJiB3cml0ZSkKLQkJcmV0dXJuIC1FQUNDRVM7Ci0KLQlhZGRy
IC09IGFyZWEtPnZtX3N0YXJ0OwotCWlmIChhZGRyID49IG9iai0+YmFzZS5zaXplKQotCQlyZXR1
cm4gLUVJTlZBTDsKLQotCWk5MTVfZ2VtX3d3X2N0eF9pbml0KCZ3dywgdHJ1ZSk7Ci1yZXRyeToK
LQllcnIgPSBpOTE1X2dlbV9vYmplY3RfbG9jayhvYmosICZ3dyk7Ci0JaWYgKGVycikKLQkJZ290
byBvdXQ7Ci0KLQkvKiBBcyB0aGlzIGlzIHByaW1hcmlseSBmb3IgZGVidWdnaW5nLCBsZXQncyBm
b2N1cyBvbiBzaW1wbGljaXR5ICovCi0JdmFkZHIgPSBpOTE1X2dlbV9vYmplY3RfcGluX21hcChv
YmosIEk5MTVfTUFQX0ZPUkNFX1dDKTsKLQlpZiAoSVNfRVJSKHZhZGRyKSkgewotCQllcnIgPSBQ
VFJfRVJSKHZhZGRyKTsKLQkJZ290byBvdXQ7Ci0JfQotCi0JaWYgKHdyaXRlKSB7Ci0JCW1lbWNw
eSh2YWRkciArIGFkZHIsIGJ1ZiwgbGVuKTsKLQkJX19pOTE1X2dlbV9vYmplY3RfZmx1c2hfbWFw
KG9iaiwgYWRkciwgbGVuKTsKLQl9IGVsc2UgewotCQltZW1jcHkoYnVmLCB2YWRkciArIGFkZHIs
IGxlbik7Ci0JfQotCi0JaTkxNV9nZW1fb2JqZWN0X3VucGluX21hcChvYmopOwotb3V0OgotCWlm
IChlcnIgPT0gLUVERUFETEspIHsKLQkJZXJyID0gaTkxNV9nZW1fd3dfY3R4X2JhY2tvZmYoJnd3
KTsKLQkJaWYgKCFlcnIpCi0JCQlnb3RvIHJldHJ5OwotCX0KLQlpOTE1X2dlbV93d19jdHhfZmlu
aSgmd3cpOwotCi0JaWYgKGVycikKLQkJcmV0dXJuIGVycjsKLQotCXJldHVybiBsZW47Ci19Ci0K
IHZvaWQgX19pOTE1X2dlbV9vYmplY3RfcmVsZWFzZV9tbWFwX2d0dChzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX29iamVjdCAqb2JqKQogewogCXN0cnVjdCBpOTE1X3ZtYSAqdm1hOwpAQCAtODAxLDE0ICs3
NDksMTggQEAgc3RhdGljIHZvaWQgdm1fY2xvc2Uoc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEp
CiAKIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgdm1fb3BlcmF0aW9uc19zdHJ1Y3Qgdm1fb3BzX2d0dCA9
IHsKIAkuZmF1bHQgPSB2bV9mYXVsdF9ndHQsCi0JLmFjY2VzcyA9IHZtX2FjY2VzcywKKyNpZmRl
ZiBDT05GSUdfSEFWRV9JT1JFTUFQX1BST1QKKwkuYWNjZXNzID0gZ2VuZXJpY19hY2Nlc3NfcGh5
cworI2VuZGlmCiAJLm9wZW4gPSB2bV9vcGVuLAogCS5jbG9zZSA9IHZtX2Nsb3NlLAogfTsKIAog
c3RhdGljIGNvbnN0IHN0cnVjdCB2bV9vcGVyYXRpb25zX3N0cnVjdCB2bV9vcHNfY3B1ID0gewog
CS5mYXVsdCA9IHZtX2ZhdWx0X2NwdSwKLQkuYWNjZXNzID0gdm1fYWNjZXNzLAorI2lmZGVmIENP
TkZJR19IQVZFX0lPUkVNQVBfUFJPVAorCS5hY2Nlc3MgPSBnZW5lcmljX2FjY2Vzc19waHlzCisj
ZW5kaWYKIAkub3BlbiA9IHZtX29wZW4sCiAJLmNsb3NlID0gdm1fY2xvc2UsCiB9OwotLSAKMi4z
MS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
