Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A837EE631
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2019 18:38:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 717606E79E;
	Mon,  4 Nov 2019 17:38:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9AE06E796
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Nov 2019 17:38:10 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id a15so18089811wrf.9
 for <intel-gfx@lists.freedesktop.org>; Mon, 04 Nov 2019 09:38:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ta7fdEFonyFHm5+r4rQNiGIwkBDHcdYO7qGIdCPa6ys=;
 b=cQhZiqW/sWEQw8aTA5K9vNkEG57MsjRdclKNCLJi9vGQLHJRrnlOjk4X/VBkOlOUhq
 LsIButopwg9qYId4LmFCAg+RVGTZ2R6zZqWpez7PZKzBvKSZR6VfR4MehPPeKVjnIHHt
 zXUqdvzDS6cstebjnlz3Q4fRumLUWbfwWw5OuyFUZwBvo64xBAoPNd4rFPSIhkTwRsRw
 wSeAhpJXBJFjJnp3uhrsLzi2RJFD64tskeZwIOsb5JJH5Ed/fA2tmrTWsM1lfypyEAEz
 7GhTrbX9E6bS/rWj7/Pz4MzSNdoomWvrQuV4WEpMcleFRfp0NI7nTx+3a+y6DZNFIeMf
 VBtQ==
X-Gm-Message-State: APjAAAUaW+9/pfDFbkn1S4gtf1Vpjs/x0ZAYftbc0JJwnz9k9q83Ih4Z
 XD8xTiv3zSzYUxDyKtpPIUimkg==
X-Google-Smtp-Source: APXvYqzOVHlBv8b2LclYaUIVM3M3mnlxcwdFgKTgQ2Tfjr/Gp6eNUcc1T6BEUcU1AWAGqhb6hUIcdQ==
X-Received: by 2002:adf:db41:: with SMTP id f1mr9422498wrj.351.1572889089482; 
 Mon, 04 Nov 2019 09:38:09 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id h140sm17991468wme.22.2019.11.04.09.38.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Nov 2019 09:38:08 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon,  4 Nov 2019 18:38:01 +0100
Message-Id: <20191104173801.2972-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.0.rc2
In-Reply-To: <20191104173801.2972-1-daniel.vetter@ffwll.ch>
References: <20191104173801.2972-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ta7fdEFonyFHm5+r4rQNiGIwkBDHcdYO7qGIdCPa6ys=;
 b=ecFUkUxEEnp4ELHHBa7eZkyYXEJJJqqRaSPiu6XfJZUL+QGjJPSYUQuTDUHtwDu7rK
 Mw7UohrT+D+H6A+8IO5Jx6NlVObeC5Qju5gvMByPp7N/C6dcptJVS8KNKMZyTdb048Lu
 6wRuA46pHaHIin3vGyiFTpRZe2BOEbGCeWqb4=
Subject: [Intel-gfx] [PATCH 3/3] drm/ttm: remove ttm_bo_wait_unreserved
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thellstrom@vmware.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Huang Rui <ray.huang@amd.com>,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 Gerd Hoffmann <kraxel@redhat.com>, Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2l0aCBub3V2ZWF1IGZpeGVkIGFsbCB0dG0tdXNpbmcgZHJpdmVzIGhhdmUgdGhlIGNvcnJlY3Qg
bmVzdGluZyBvZgptbWFwX3NlbSB2cyBkbWFfcmVzdiwgYW5kIHdlIGNhbiBqdXN0IGxvY2sgdGhl
IGJ1ZmZlci4KCkFzc3VtaW5nIEkgZGlkbid0IHNjcmV3IHVwIGFueXRoaW5nIHdpdGggbXkgYXVk
aXQgb2YgY291cnNlLgoKdjI6Ci0gRG9udCBmb3JnZXQgd3VfbXV0ZXggKENocmlzdGlhbiBLw7Zu
aWcpCi0gS2VlcCB0aGUgbW1hcF9zZW0tbGVzcyB3YWl0IG9wdGltaXphdGlvbiAoVGhvbWFzKQot
IFVzZSBfbG9ja19pbnRlcnJ1cHRpYmxlIHRvIGJlIGdvb2QgY2l0aXplbnMgKFRob21hcykKCnYz
OiBSZWJhc2Ugb3ZlciBmYXVsdCBoYW5kbGVyIGhlbHBlcmlmaWNhdGlvbi4KClJldmlld2VkLWJ5
OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+ICh2MikKUmV2aWV3
ZWQtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aGVsbHN0cm9tQHZtd2FyZS5jb20+ICh2MikKU2ln
bmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBD
aHJpc3RpYW4gS29lbmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+CkNjOiBIdWFuZyBSdWkg
PHJheS5odWFuZ0BhbWQuY29tPgpDYzogR2VyZCBIb2ZmbWFubiA8a3JheGVsQHJlZGhhdC5jb20+
CkNjOiAiVk13YXJlIEdyYXBoaWNzIiA8bGludXgtZ3JhcGhpY3MtbWFpbnRhaW5lckB2bXdhcmUu
Y29tPgpDYzogVGhvbWFzIEhlbGxzdHJvbSA8dGhlbGxzdHJvbUB2bXdhcmUuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvLmMgICAgICB8IDM2IC0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvX3V0aWwuYyB8ICAxIC0KIGRy
aXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvX3ZtLmMgICB8IDE4ICsrKysrLS0tLS0tLS0tLS0KIGlu
Y2x1ZGUvZHJtL3R0bS90dG1fYm9fYXBpLmggICAgICB8ICA0IC0tLS0KIDQgZmlsZXMgY2hhbmdl
ZCwgNSBpbnNlcnRpb25zKCspLCA1NCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vdHRtL3R0bV9iby5jIGIvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYwppbmRl
eCA4ZDkxYjA0MjhhZjEuLjVkZjU5NmZiMDI4MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L3R0bS90dG1fYm8uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jCkBAIC0xNjEs
NyArMTYxLDYgQEAgc3RhdGljIHZvaWQgdHRtX2JvX3JlbGVhc2VfbGlzdChzdHJ1Y3Qga3JlZiAq
bGlzdF9rcmVmKQogCWRtYV9mZW5jZV9wdXQoYm8tPm1vdmluZyk7CiAJaWYgKCF0dG1fYm9fdXNl
c19lbWJlZGRlZF9nZW1fb2JqZWN0KGJvKSkKIAkJZG1hX3Jlc3ZfZmluaSgmYm8tPmJhc2UuX3Jl
c3YpOwotCW11dGV4X2Rlc3Ryb3koJmJvLT53dV9tdXRleCk7CiAJYm8tPmRlc3Ryb3koYm8pOwog
CXR0bV9tZW1fZ2xvYmFsX2ZyZWUoJnR0bV9tZW1fZ2xvYiwgYWNjX3NpemUpOwogfQpAQCAtMTI5
OSw3ICsxMjk4LDYgQEAgaW50IHR0bV9ib19pbml0X3Jlc2VydmVkKHN0cnVjdCB0dG1fYm9fZGV2
aWNlICpiZGV2LAogCUlOSVRfTElTVF9IRUFEKCZiby0+ZGRlc3Ryb3kpOwogCUlOSVRfTElTVF9I
RUFEKCZiby0+c3dhcCk7CiAJSU5JVF9MSVNUX0hFQUQoJmJvLT5pb19yZXNlcnZlX2xydSk7Ci0J
bXV0ZXhfaW5pdCgmYm8tPnd1X211dGV4KTsKIAliby0+YmRldiA9IGJkZXY7CiAJYm8tPnR5cGUg
PSB0eXBlOwogCWJvLT5udW1fcGFnZXMgPSBudW1fcGFnZXM7CkBAIC0xOTAzLDM3ICsxOTAxLDMg
QEAgdm9pZCB0dG1fYm9fc3dhcG91dF9hbGwoc3RydWN0IHR0bV9ib19kZXZpY2UgKmJkZXYpCiAJ
d2hpbGUgKHR0bV9ib19zd2Fwb3V0KCZ0dG1fYm9fZ2xvYiwgJmN0eCkgPT0gMCk7CiB9CiBFWFBP
UlRfU1lNQk9MKHR0bV9ib19zd2Fwb3V0X2FsbCk7Ci0KLS8qKgotICogdHRtX2JvX3dhaXRfdW5y
ZXNlcnZlZCAtIGludGVycnVwdGlibGUgd2FpdCBmb3IgYSBidWZmZXIgb2JqZWN0IHRvIGJlY29t
ZQotICogdW5yZXNlcnZlZAotICoKLSAqIEBibzogUG9pbnRlciB0byBidWZmZXIKLSAqLwotaW50
IHR0bV9ib193YWl0X3VucmVzZXJ2ZWQoc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0ICpibykKLXsK
LQlpbnQgcmV0OwotCi0JLyoKLQkgKiBJbiB0aGUgYWJzZW5zZSBvZiBhIHdhaXRfdW5sb2NrZWQg
QVBJLAotCSAqIFVzZSB0aGUgYm86Ond1X211dGV4IHRvIGF2b2lkIHRyaWdnZXJpbmcgbGl2ZWxv
Y2tzIGR1ZSB0bwotCSAqIGNvbmN1cnJlbnQgdXNlIG9mIHRoaXMgZnVuY3Rpb24uIE5vdGUgdGhh
dCB0aGlzIHVzZSBvZgotCSAqIGJvOjp3dV9tdXRleCBjYW4gZ28gYXdheSBpZiB3ZSBjaGFuZ2Ug
bG9ja2luZyBvcmRlciB0bwotCSAqIG1tYXBfc2VtIC0+IGJvOjpyZXNlcnZlLgotCSAqLwotCXJl
dCA9IG11dGV4X2xvY2tfaW50ZXJydXB0aWJsZSgmYm8tPnd1X211dGV4KTsKLQlpZiAodW5saWtl
bHkocmV0ICE9IDApKQotCQlyZXR1cm4gLUVSRVNUQVJUU1lTOwotCWlmICghZG1hX3Jlc3ZfaXNf
bG9ja2VkKGJvLT5iYXNlLnJlc3YpKQotCQlnb3RvIG91dF91bmxvY2s7Ci0JcmV0ID0gZG1hX3Jl
c3ZfbG9ja19pbnRlcnJ1cHRpYmxlKGJvLT5iYXNlLnJlc3YsIE5VTEwpOwotCWlmIChyZXQgPT0g
LUVJTlRSKQotCQlyZXQgPSAtRVJFU1RBUlRTWVM7Ci0JaWYgKHVubGlrZWx5KHJldCAhPSAwKSkK
LQkJZ290byBvdXRfdW5sb2NrOwotCWRtYV9yZXN2X3VubG9jayhiby0+YmFzZS5yZXN2KTsKLQot
b3V0X3VubG9jazoKLQltdXRleF91bmxvY2soJmJvLT53dV9tdXRleCk7Ci0JcmV0dXJuIHJldDsK
LX0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvX3V0aWwuYyBiL2RyaXZl
cnMvZ3B1L2RybS90dG0vdHRtX2JvX3V0aWwuYwppbmRleCA2YjA4ODNhMTc3NmUuLjJiMGU1YTA4
OGRhMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdXRpbC5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvX3V0aWwuYwpAQCAtNTA0LDcgKzUwNCw2IEBAIHN0
YXRpYyBpbnQgdHRtX2J1ZmZlcl9vYmplY3RfdHJhbnNmZXIoc3RydWN0IHR0bV9idWZmZXJfb2Jq
ZWN0ICpibywKIAlJTklUX0xJU1RfSEVBRCgmZmJvLT5iYXNlLmxydSk7CiAJSU5JVF9MSVNUX0hF
QUQoJmZiby0+YmFzZS5zd2FwKTsKIAlJTklUX0xJU1RfSEVBRCgmZmJvLT5iYXNlLmlvX3Jlc2Vy
dmVfbHJ1KTsKLQltdXRleF9pbml0KCZmYm8tPmJhc2Uud3VfbXV0ZXgpOwogCWZiby0+YmFzZS5t
b3ZpbmcgPSBOVUxMOwogCWRybV92bWFfbm9kZV9yZXNldCgmZmJvLT5iYXNlLmJhc2Uudm1hX25v
ZGUpOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9ib192bS5jIGIvZHJp
dmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdm0uYwppbmRleCAxMTg2M2ZiZGQ1ZDYuLjkxNDY2Y2Zi
NmYxNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdm0uYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9ib192bS5jCkBAIC0xMjgsMzAgKzEyOCwyMiBAQCBzdGF0
aWMgdW5zaWduZWQgbG9uZyB0dG1fYm9faW9fbWVtX3BmbihzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmpl
Y3QgKmJvLAogdm1fZmF1bHRfdCB0dG1fYm9fdm1fcmVzZXJ2ZShzdHJ1Y3QgdHRtX2J1ZmZlcl9v
YmplY3QgKmJvLAogCQkJICAgICBzdHJ1Y3Qgdm1fZmF1bHQgKnZtZikKIHsKLQkvKgotCSAqIFdv
cmsgYXJvdW5kIGxvY2tpbmcgb3JkZXIgcmV2ZXJzYWwgaW4gZmF1bHQgLyBub3BmbgotCSAqIGJl
dHdlZW4gbW1hcF9zZW0gYW5kIGJvX3Jlc2VydmU6IFBlcmZvcm0gYSB0cnlsb2NrIG9wZXJhdGlv
bgotCSAqIGZvciByZXNlcnZlLCBhbmQgaWYgaXQgZmFpbHMsIHJldHJ5IHRoZSBmYXVsdCBhZnRl
ciB3YWl0aW5nCi0JICogZm9yIHRoZSBidWZmZXIgdG8gYmVjb21lIHVucmVzZXJ2ZWQuCi0JICov
CiAJaWYgKHVubGlrZWx5KCFkbWFfcmVzdl90cnlsb2NrKGJvLT5iYXNlLnJlc3YpKSkgewogCQlp
ZiAodm1mLT5mbGFncyAmIEZBVUxUX0ZMQUdfQUxMT1dfUkVUUlkpIHsKIAkJCWlmICghKHZtZi0+
ZmxhZ3MgJiBGQVVMVF9GTEFHX1JFVFJZX05PV0FJVCkpIHsKIAkJCQl0dG1fYm9fZ2V0KGJvKTsK
IAkJCQl1cF9yZWFkKCZ2bWYtPnZtYS0+dm1fbW0tPm1tYXBfc2VtKTsKLQkJCQkodm9pZCkgdHRt
X2JvX3dhaXRfdW5yZXNlcnZlZChibyk7CisJCQkJaWYgKCFkbWFfcmVzdl9sb2NrX2ludGVycnVw
dGlibGUoYm8tPmJhc2UucmVzdiwKKwkJCQkJCQkJIE5VTEwpKQorCQkJCQlkbWFfcmVzdl91bmxv
Y2soYm8tPmJhc2UucmVzdik7CiAJCQkJdHRtX2JvX3B1dChibyk7CiAJCQl9CiAKIAkJCXJldHVy
biBWTV9GQVVMVF9SRVRSWTsKIAkJfQogCi0JCS8qCi0JCSAqIElmIHdlJ2Qgd2FudCB0byBjaGFu
Z2UgbG9ja2luZyBvcmRlciB0bwotCQkgKiBtbWFwX3NlbSAtPiBibzo6cmVzZXJ2ZSwgd2UnZCB1
c2UgYSBibG9ja2luZyByZXNlcnZlIGhlcmUKLQkJICogaW5zdGVhZCBvZiByZXRyeWluZyB0aGUg
ZmF1bHQuLi4KLQkJICovCi0JCXJldHVybiBWTV9GQVVMVF9OT1BBR0U7CisJCWlmIChkbWFfcmVz
dl9sb2NrX2ludGVycnVwdGlibGUoYm8tPmJhc2UucmVzdiwgTlVMTCkpCisJCQlyZXR1cm4gVk1f
RkFVTFRfTk9QQUdFOwogCX0KIAogCXJldHVybiAwOwpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0v
dHRtL3R0bV9ib19hcGkuaCBiL2luY2x1ZGUvZHJtL3R0bS90dG1fYm9fYXBpLmgKaW5kZXggNjVl
Mzk5ZDI4MGY3Li5lOGIwZjBjNjYwNTkgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvZHJtL3R0bS90dG1f
Ym9fYXBpLmgKKysrIGIvaW5jbHVkZS9kcm0vdHRtL3R0bV9ib19hcGkuaApAQCAtMTU0LDcgKzE1
NCw2IEBAIHN0cnVjdCB0dG1fdHQ7CiAgKiBAb2Zmc2V0OiBUaGUgY3VycmVudCBHUFUgb2Zmc2V0
LCB3aGljaCBjYW4gaGF2ZSBkaWZmZXJlbnQgbWVhbmluZ3MKICAqIGRlcGVuZGluZyBvbiB0aGUg
bWVtb3J5IHR5cGUuIEZvciBTWVNURU0gdHlwZSBtZW1vcnksIGl0IHNob3VsZCBiZSAwLgogICog
QGN1cl9wbGFjZW1lbnQ6IEhpbnQgb2YgY3VycmVudCBwbGFjZW1lbnQuCi0gKiBAd3VfbXV0ZXg6
IFdhaXQgdW5yZXNlcnZlZCBtdXRleC4KICAqCiAgKiBCYXNlIGNsYXNzIGZvciBUVE0gYnVmZmVy
IG9iamVjdCwgdGhhdCBkZWFscyB3aXRoIGRhdGEgcGxhY2VtZW50IGFuZCBDUFUKICAqIG1hcHBp
bmdzLiBHUFUgbWFwcGluZ3MgYXJlIHJlYWxseSB1cCB0byB0aGUgZHJpdmVyLCBidXQgZm9yIHNp
bXBsZXIgR1BVcwpAQCAtMjIyLDggKzIyMSw2IEBAIHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCB7
CiAJdWludDY0X3Qgb2Zmc2V0OyAvKiBHUFUgYWRkcmVzcyBzcGFjZSBpcyBpbmRlcGVuZGVudCBv
ZiBDUFUgd29yZCBzaXplICovCiAKIAlzdHJ1Y3Qgc2dfdGFibGUgKnNnOwotCi0Jc3RydWN0IG11
dGV4IHd1X211dGV4OwogfTsKIAogLyoqCkBAIC03MDcsNyArNzA0LDYgQEAgc3NpemVfdCB0dG1f
Ym9faW8oc3RydWN0IHR0bV9ib19kZXZpY2UgKmJkZXYsIHN0cnVjdCBmaWxlICpmaWxwLAogaW50
IHR0bV9ib19zd2Fwb3V0KHN0cnVjdCB0dG1fYm9fZ2xvYmFsICpnbG9iLAogCQkJc3RydWN0IHR0
bV9vcGVyYXRpb25fY3R4ICpjdHgpOwogdm9pZCB0dG1fYm9fc3dhcG91dF9hbGwoc3RydWN0IHR0
bV9ib19kZXZpY2UgKmJkZXYpOwotaW50IHR0bV9ib193YWl0X3VucmVzZXJ2ZWQoc3RydWN0IHR0
bV9idWZmZXJfb2JqZWN0ICpibyk7CiAKIC8qKgogICogdHRtX2JvX3VzZXNfZW1iZWRkZWRfZ2Vt
X29iamVjdCAtIGNoZWNrIGlmIHRoZSBnaXZlbiBibyB1c2VzIHRoZQotLSAKMi4yNC4wLnJjMgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
