Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A67C11039C
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 18:37:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 350786EA36;
	Tue,  3 Dec 2019 17:37:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb43.google.com (mail-yb1-xb43.google.com
 [IPv6:2607:f8b0:4864:20::b43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76BCC6EA35
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2019 17:37:00 +0000 (UTC)
Received: by mail-yb1-xb43.google.com with SMTP id v15so1829209ybp.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Dec 2019 09:37:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xeeGZfYufHDDThZZkCNhlPdUw/ATxZKnbtQlImLeHzE=;
 b=rlC7XLBvBXbYAGRDPWhhH8RnShKxSU76lYnvaYxrXOIl++dKX950B1dgJOjlnqAtUw
 GhWGaHN5Wp3Xv6dXAKk1R+MiINs6dUtMP1f9yXhSRdhqsUxRc+erX+BJeiTfRkQbdGRM
 6rAz1DneMe0h3qJsCGytsKuadjrW6yN3X4j3GyoAsJf4tI8GzdFXZIT43IyGyuRpWILh
 vj79QtsHR89/VShTi4QbwKqeslVYQVL+IEaual88Cd3wP+T/Ubsm9vuGoKGhgfmOqGcN
 UCAcvh4BiOWfPnou2HfoYSjrJb6fjUU9f1WmVdX4mstHtNNtRz7I44ZnZ1oKo+MSPPql
 WWLw==
X-Gm-Message-State: APjAAAUIrv7wm3BOwCgJjoR6MmCVSEAvLfS+gnFZpizqKiviZRQiTOBx
 bugUydc8mcWLGi06/+guFvHrwX1P4+/OMA==
X-Google-Smtp-Source: APXvYqxiMpI/ZJUJfq+HWSgGaFlb7XMaUvg3BmERIw0yoe2xI8QAmfiQBaq40Bq/2cNOSz3TCr1yeQ==
X-Received: by 2002:a25:ae12:: with SMTP id a18mr5204934ybj.120.1575394618477; 
 Tue, 03 Dec 2019 09:36:58 -0800 (PST)
Received: from rosewood.cam.corp.google.com
 ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id g190sm1729426ywf.41.2019.12.03.09.36.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Dec 2019 09:36:58 -0800 (PST)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 ramalingm.c@intel.com
Date: Tue,  3 Dec 2019 12:36:24 -0500
Message-Id: <20191203173638.94919-2-sean@poorly.run>
X-Mailer: git-send-email 2.24.0.393.g34dc348eaf-goog
In-Reply-To: <20191203173638.94919-1-sean@poorly.run>
References: <20191203173638.94919-1-sean@poorly.run>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xeeGZfYufHDDThZZkCNhlPdUw/ATxZKnbtQlImLeHzE=;
 b=e+99GIhkG7gRu6w9n+9FiPQorXrVx8PolI+WOX4gxHjKQ9kjN2F1VF3MMA6BAWBMKD
 CSbaSMkvgQyXIYY++ltCrFJlhhmHx9vO3XOs2WjgIt0bAUFZDmyKqeyxmpTg/R4nq318
 pKEGZRj2IxAEtzQWhINvN0CMBxqD0DowE5gbKDu5XmucGX3Arx1ZDv73Ale6RY9laPmV
 uddaWK7vJNA7K3uEfUbUKRIwPugVjjVdCYsOlTNJLLiAirqWjNy0O4wAEvWo79vO7ma8
 R+r8OqDesE4VQTAlm4Dysii+kmQz5wj0V+HHs0uPgKxNlvb27APnDlvwSdkCgSVjW1S7
 FWDw==
Subject: [Intel-gfx] [PATCH 01/11] drm/i915: Fix sha_text population code
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
Cc: Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, Sean Paul <seanpaul@chromium.org>,
 stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogU2VhbiBQYXVsIDxzZWFucGF1bEBjaHJvbWl1bS5vcmc+CgpUaGlzIHBhdGNoIGZpeGVz
IGEgZmV3IGJ1Z3M6CgoxLSBXZSB3ZXJlbid0IHRha2luZyBpbnRvIGFjY291bnQgc2hhX2xlZnRv
dmVycyB3aGVuIGFkZGluZyBtdWx0aXBsZQogICBrc3ZzIHRvIHNoYV90ZXh0LiBBcyBzdWNoLCB3
ZSB3ZXJlIG9yJ2luZyB0aGUgZW5kIG9mIGtzdltqIC0gMV0gd2l0aAogICB0aGUgYmVnaW5uaW5n
IG9mIGtzdltqXQoKMi0gSW4gdGhlIHNoYV9sZWZ0b3ZlcnMgPT0gMiBhbmQgc2hhX2xlZnRvdmVy
cyA9PSAzIGNhc2UsIGJzdGF0dXMgd2FzCiAgIGJlaW5nIHBsYWNlZCBvbiB0aGUgd3JvbmcgaGFs
ZiBvZiBzaGFfdGV4dCwgb3ZlcmxhcHBpbmcgdGhlIGxlZnRvdmVyCiAgIGtzdiB2YWx1ZQoKMy0g
SW4gdGhlIHNoYV9sZWZ0b3ZlcnMgPT0gMiBjYXNlLCB3ZSBuZWVkIHRvIG1hbnVhbGx5IHRlcm1p
bmF0ZSB0aGUKICAgYnl0ZSBzdHJlYW0gd2l0aCAweDgwIHNpbmNlIHRoZSBoYXJkd2FyZSBkb2Vz
bid0IGhhdmUgZW5vdWdoIHJvb20gdG8KICAgYWRkIGl0IGFmdGVyIHdyaXRpbmcgTTAKClRoZSB1
cHNpZGUgaXMgdGhhdCBhbGwgb2YgdGhlICJIRENQIHN1cHBvcnRlZCIgSERNSSByZXBlYXRlcnMg
SSBjb3VsZApmaW5kIG9uIEFtYXpvbiBqdXN0IHN0cmlwIEhEQ1AgYW55d2F5cywgc28gaXQgdHVy
bnMgb3V0IHRvIGJlIF9yZWFsbHlfCmhhcmQgdG8gaGl0IGFueSBvZiB0aGVzZSBjYXNlcyB3aXRo
b3V0IGFuIE1TVCBodWIsIHdoaWNoIGlzIG5vdCAoeWV0KQpzdXBwb3J0ZWQuIE9oLCBhbmQgdGhl
IHNoYV9sZWZ0b3ZlcnMgPT0gMSBjYXNlIHdvcmtzIHBlcmZlY3RseSEKCkZpeGVzOiBlZTVlNWU3
YTVlMGYgKCJkcm0vaTkxNTogQWRkIEhEQ1AgZnJhbWV3b3JrICsgYmFzZSBpbXBsZW1lbnRhdGlv
biIpCkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IFJhbWFs
aW5nYW0gQyA8cmFtYWxpbmdtLmNAaW50ZWwuY29tPgpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVs
LnZldHRlckBmZndsbC5jaD4KQ2M6IFNlYW4gUGF1bCA8c2VhbnBhdWxAY2hyb21pdW0ub3JnPgpD
YzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IEpvb25hcyBM
YWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KQ2M6IFJvZHJpZ28gVml2
aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKQ2M6IDxzdGFibGVAdmdlci5rZXJuZWwub3JnPiAjIHY0LjE3KwpTaWduZWQtb2ZmLWJ5
OiBTZWFuIFBhdWwgPHNlYW5wYXVsQGNocm9taXVtLm9yZz4KLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2hkY3AuYyB8IDI1ICsrKysrKysrKysrKysrKysrLS0tLS0tCiBp
bmNsdWRlL2RybS9kcm1faGRjcC5oICAgICAgICAgICAgICAgICAgICB8ICAzICsrKwogMiBmaWxl
cyBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRjcC5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZGNwLmMKaW5kZXggZjFmNDFjYTg0MDJiLi44MzI1YmY5
NTAxZTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRj
cC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRjcC5jCkBAIC0z
MzUsOCArMzM1LDEwIEBAIGludCBpbnRlbF9oZGNwX3ZhbGlkYXRlX3ZfcHJpbWUoc3RydWN0IGlu
dGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yLAogCiAJCS8qIEZpbGwgdXAgdGhlIGVtcHR5IHNsb3Rz
IGluIHNoYV90ZXh0IGFuZCB3cml0ZSBpdCBvdXQgKi8KIAkJc2hhX2VtcHR5ID0gc2l6ZW9mKHNo
YV90ZXh0KSAtIHNoYV9sZWZ0b3ZlcnM7Ci0JCWZvciAoaiA9IDA7IGogPCBzaGFfZW1wdHk7IGor
KykKLQkJCXNoYV90ZXh0IHw9IGtzdltqXSA8PCAoKHNpemVvZihzaGFfdGV4dCkgLSBqIC0gMSkg
KiA4KTsKKwkJZm9yIChqID0gMDsgaiA8IHNoYV9lbXB0eTsgaisrKSB7CisJCQl1OCBvZmYgPSAo
KHNpemVvZihzaGFfdGV4dCkgLSBqIC0gMSAtIHNoYV9sZWZ0b3ZlcnMpICogOCk7CisJCQlzaGFf
dGV4dCB8PSBrc3Zbal0gPDwgb2ZmOworCQl9CiAKIAkJcmV0ID0gaW50ZWxfd3JpdGVfc2hhX3Rl
eHQoZGV2X3ByaXYsIHNoYV90ZXh0KTsKIAkJaWYgKHJldCA8IDApCkBAIC00MjYsNyArNDI4LDcg
QEAgaW50IGludGVsX2hkY3BfdmFsaWRhdGVfdl9wcmltZShzdHJ1Y3QgaW50ZWxfY29ubmVjdG9y
ICpjb25uZWN0b3IsCiAJfSBlbHNlIGlmIChzaGFfbGVmdG92ZXJzID09IDIpIHsKIAkJLyogV3Jp
dGUgMzIgYml0cyBvZiB0ZXh0ICovCiAJCUk5MTVfV1JJVEUoSERDUF9SRVBfQ1RMLCByZXBfY3Rs
IHwgSERDUF9TSEExX1RFWFRfMzIpOwotCQlzaGFfdGV4dCB8PSBic3RhdHVzWzBdIDw8IDI0IHwg
YnN0YXR1c1sxXSA8PCAxNjsKKwkJc2hhX3RleHQgfD0gYnN0YXR1c1swXSA8PCA4IHwgYnN0YXR1
c1sxXTsKIAkJcmV0ID0gaW50ZWxfd3JpdGVfc2hhX3RleHQoZGV2X3ByaXYsIHNoYV90ZXh0KTsK
IAkJaWYgKHJldCA8IDApCiAJCQlyZXR1cm4gcmV0OwpAQCAtNDQwLDE2ICs0NDIsMjcgQEAgaW50
IGludGVsX2hkY3BfdmFsaWRhdGVfdl9wcmltZShzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25u
ZWN0b3IsCiAJCQkJcmV0dXJuIHJldDsKIAkJCXNoYV9pZHggKz0gc2l6ZW9mKHNoYV90ZXh0KTsK
IAkJfQorCisJCS8qCisJCSAqIFRlcm1pbmF0ZSB0aGUgU0hBLTEgc3RyZWFtIGJ5IGhhbmQuIEZv
ciB0aGUgb3RoZXIgbGVmdG92ZXIKKwkJICogY2FzZXMgdGhpcyBpcyBhcHBlbmRlZCBieSB0aGUg
aGFyZHdhcmUuCisJCSAqLworCQlJOTE1X1dSSVRFKEhEQ1BfUkVQX0NUTCwgcmVwX2N0bCB8IEhE
Q1BfU0hBMV9URVhUXzMyKTsKKwkJc2hhX3RleHQgPSBEUk1fSERDUF9TSEExX1RFUk1JTkFUT1Ig
PDwgMjQ7CisJCXJldCA9IGludGVsX3dyaXRlX3NoYV90ZXh0KGRldl9wcml2LCBzaGFfdGV4dCk7
CisJCWlmIChyZXQgPCAwKQorCQkJcmV0dXJuIHJldDsKKwkJc2hhX2lkeCArPSBzaXplb2Yoc2hh
X3RleHQpOwogCX0gZWxzZSBpZiAoc2hhX2xlZnRvdmVycyA9PSAzKSB7Ci0JCS8qIFdyaXRlIDMy
IGJpdHMgb2YgdGV4dCAqLworCQkvKiBXcml0ZSAzMiBiaXRzIG9mIHRleHQgKGZpbGxlZCBmcm9t
IExTQikgKi8KIAkJSTkxNV9XUklURShIRENQX1JFUF9DVEwsIHJlcF9jdGwgfCBIRENQX1NIQTFf
VEVYVF8zMik7Ci0JCXNoYV90ZXh0IHw9IGJzdGF0dXNbMF0gPDwgMjQ7CisJCXNoYV90ZXh0IHw9
IGJzdGF0dXNbMF07CiAJCXJldCA9IGludGVsX3dyaXRlX3NoYV90ZXh0KGRldl9wcml2LCBzaGFf
dGV4dCk7CiAJCWlmIChyZXQgPCAwKQogCQkJcmV0dXJuIHJldDsKIAkJc2hhX2lkeCArPSBzaXpl
b2Yoc2hhX3RleHQpOwogCi0JCS8qIFdyaXRlIDggYml0cyBvZiB0ZXh0LCAyNCBiaXRzIG9mIE0w
ICovCisJCS8qIFdyaXRlIDggYml0cyBvZiB0ZXh0IChmaWxsZWQgZnJvbSBMU0IpLCAyNCBiaXRz
IG9mIE0wICovCiAJCUk5MTVfV1JJVEUoSERDUF9SRVBfQ1RMLCByZXBfY3RsIHwgSERDUF9TSEEx
X1RFWFRfOCk7CiAJCXJldCA9IGludGVsX3dyaXRlX3NoYV90ZXh0KGRldl9wcml2LCBic3RhdHVz
WzFdKTsKIAkJaWYgKHJldCA8IDApCmRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1faGRjcC5o
IGIvaW5jbHVkZS9kcm0vZHJtX2hkY3AuaAppbmRleCAwNmExMTIwMmEwOTcuLjIwNDk4YzgyMjIw
NCAxMDA2NDQKLS0tIGEvaW5jbHVkZS9kcm0vZHJtX2hkY3AuaAorKysgYi9pbmNsdWRlL2RybS9k
cm1faGRjcC5oCkBAIC0yOSw2ICsyOSw5IEBACiAvKiBTbGF2ZSBhZGRyZXNzIGZvciB0aGUgSERD
UCByZWdpc3RlcnMgaW4gdGhlIHJlY2VpdmVyICovCiAjZGVmaW5lIERSTV9IRENQX0REQ19BRERS
CQkJMHgzQQogCisvKiBWYWx1ZSB0byB1c2UgYXQgdGhlIGVuZCBvZiB0aGUgU0hBLTEgYnl0ZXN0
cmVhbSB1c2VkIGZvciByZXBlYXRlcnMgKi8KKyNkZWZpbmUgRFJNX0hEQ1BfU0hBMV9URVJNSU5B
VE9SCQkweDgwCisKIC8qIEhEQ1AgcmVnaXN0ZXIgb2Zmc2V0cyBmb3IgSERNSS9EVkkgZGV2aWNl
cyAqLwogI2RlZmluZSBEUk1fSERDUF9ERENfQktTVgkJCTB4MDAKICNkZWZpbmUgRFJNX0hEQ1Bf
RERDX1JJX1BSSU1FCQkJMHgwOAotLSAKU2VhbiBQYXVsLCBTb2Z0d2FyZSBFbmdpbmVlciwgR29v
Z2xlIC8gQ2hyb21pdW0gT1MKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
