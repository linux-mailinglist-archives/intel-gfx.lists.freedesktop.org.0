Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A39DF061
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2019 16:50:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 386F06E148;
	Mon, 21 Oct 2019 14:50:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33F7B89DD5
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Oct 2019 14:50:29 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id e11so5633422wrv.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Oct 2019 07:50:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xqqfh/cCN086WbSlj3AViaXGM56ddikEibSoBp4t4qU=;
 b=gyEMBijthDt3qc4u2v37y7EGiqtXHINz0lfvUerRuBrDGY/mbaevkt6CM4P3tRPzzM
 6tUcBSegTm6vgrXMeoOBvyYsbKeOyyIC3cWAXT3i0QODL8QzgszpBn3gMaFxjK5SxYjO
 6rAZ+xrssJUc2/fbb6ROi4t4MX5J1GyEKR0PwpDKKeXK/fvSP79Y9OpAC4DV+wKBp2K/
 QRbGqLEHccWkaWurwwIqA7pT9T5iMuitzPznSGy0CsUTaMajDmvN+QyFFfk9Rtj7ip+z
 Yj19xaYg1mkAhPs1Beb/A5g3ubz/DMJp0PS0pM2rA6haUBeBsavvSvm7YiqaSHz8yV3t
 hzCQ==
X-Gm-Message-State: APjAAAWol6/qCjawYtLTkk6V8ezZE3gujZidg7PwNiMMZVJyd4Y25ZN3
 x5lzup4j1FuPWNCaLoHWoRIfaA==
X-Google-Smtp-Source: APXvYqwv9JAa0L8zsns1YBlt/Jepb93RUhrtckZMB24osikGkziZqIRVne4hL2s4T5Mf15t8uEjciA==
X-Received: by 2002:adf:f004:: with SMTP id j4mr21826720wro.68.1571669427499; 
 Mon, 21 Oct 2019 07:50:27 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id u7sm7712053wre.59.2019.10.21.07.50.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 07:50:26 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 21 Oct 2019 16:50:17 +0200
Message-Id: <20191021145017.17384-4-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191021145017.17384-1-daniel.vetter@ffwll.ch>
References: <20191021145017.17384-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xqqfh/cCN086WbSlj3AViaXGM56ddikEibSoBp4t4qU=;
 b=N3XPgrek54EzlJTSvOMCfGAe+zGBiEqzTXLzRQHTSNqyh9XE9M91ed6qlwXpBgTQm5
 bIf0GwMdVJ1QcJfWkX93YpvYWdvkAwtsRBpQY4rlrODxHWOqNgSAe5m2XWp6Yr2qMOLS
 O6OTTgnl3nHHUtgw3SaU9DqIjg6475iBcOqZ8=
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
IFVzZSBfbG9ja19pbnRlcnJ1cHRpYmxlIHRvIGJlIGdvb2QgY2l0aXplbnMgKFRob21hcykKClJl
dmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+ClJl
dmlld2VkLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhlbGxzdHJvbUB2bXdhcmUuY29tPgpTaWdu
ZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KQ2M6IENo
cmlzdGlhbiBLb2VuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KQ2M6IEh1YW5nIFJ1aSA8
cmF5Lmh1YW5nQGFtZC5jb20+CkNjOiBHZXJkIEhvZmZtYW5uIDxrcmF4ZWxAcmVkaGF0LmNvbT4K
Q2M6ICJWTXdhcmUgR3JhcGhpY3MiIDxsaW51eC1ncmFwaGljcy1tYWludGFpbmVyQHZtd2FyZS5j
b20+CkNjOiBUaG9tYXMgSGVsbHN0cm9tIDx0aGVsbHN0cm9tQHZtd2FyZS5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYyAgICAgIHwgMzYgLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdXRpbC5jIHwgIDEgLQogZHJp
dmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdm0uYyAgIHwgMTggKysrKystLS0tLS0tLS0tLQogaW5j
bHVkZS9kcm0vdHRtL3R0bV9ib19hcGkuaCAgICAgIHwgIDQgLS0tLQogNCBmaWxlcyBjaGFuZ2Vk
LCA1IGluc2VydGlvbnMoKyksIDU0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS90dG0vdHRtX2JvLmMgYi9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jCmluZGV4
IGYwMGIyZTc5ODgyZi4uN2E5YjAxYWVhYTNmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
dHRtL3R0bV9iby5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvLmMKQEAgLTE2Miw3
ICsxNjIsNiBAQCBzdGF0aWMgdm9pZCB0dG1fYm9fcmVsZWFzZV9saXN0KHN0cnVjdCBrcmVmICps
aXN0X2tyZWYpCiAJZG1hX2ZlbmNlX3B1dChiby0+bW92aW5nKTsKIAlpZiAoIXR0bV9ib191c2Vz
X2VtYmVkZGVkX2dlbV9vYmplY3QoYm8pKQogCQlkbWFfcmVzdl9maW5pKCZiby0+YmFzZS5fcmVz
dik7Ci0JbXV0ZXhfZGVzdHJveSgmYm8tPnd1X211dGV4KTsKIAliby0+ZGVzdHJveShibyk7CiAJ
dHRtX21lbV9nbG9iYWxfZnJlZShiZGV2LT5nbG9iLT5tZW1fZ2xvYiwgYWNjX3NpemUpOwogfQpA
QCAtMTMyMCw3ICsxMzE5LDYgQEAgaW50IHR0bV9ib19pbml0X3Jlc2VydmVkKHN0cnVjdCB0dG1f
Ym9fZGV2aWNlICpiZGV2LAogCUlOSVRfTElTVF9IRUFEKCZiby0+ZGRlc3Ryb3kpOwogCUlOSVRf
TElTVF9IRUFEKCZiby0+c3dhcCk7CiAJSU5JVF9MSVNUX0hFQUQoJmJvLT5pb19yZXNlcnZlX2xy
dSk7Ci0JbXV0ZXhfaW5pdCgmYm8tPnd1X211dGV4KTsKIAliby0+YmRldiA9IGJkZXY7CiAJYm8t
PnR5cGUgPSB0eXBlOwogCWJvLT5udW1fcGFnZXMgPSBudW1fcGFnZXM7CkBAIC0xOTU1LDM3ICsx
OTUzLDMgQEAgdm9pZCB0dG1fYm9fc3dhcG91dF9hbGwoc3RydWN0IHR0bV9ib19kZXZpY2UgKmJk
ZXYpCiAJCTsKIH0KIEVYUE9SVF9TWU1CT0wodHRtX2JvX3N3YXBvdXRfYWxsKTsKLQotLyoqCi0g
KiB0dG1fYm9fd2FpdF91bnJlc2VydmVkIC0gaW50ZXJydXB0aWJsZSB3YWl0IGZvciBhIGJ1ZmZl
ciBvYmplY3QgdG8gYmVjb21lCi0gKiB1bnJlc2VydmVkCi0gKgotICogQGJvOiBQb2ludGVyIHRv
IGJ1ZmZlcgotICovCi1pbnQgdHRtX2JvX3dhaXRfdW5yZXNlcnZlZChzdHJ1Y3QgdHRtX2J1ZmZl
cl9vYmplY3QgKmJvKQotewotCWludCByZXQ7Ci0KLQkvKgotCSAqIEluIHRoZSBhYnNlbnNlIG9m
IGEgd2FpdF91bmxvY2tlZCBBUEksCi0JICogVXNlIHRoZSBibzo6d3VfbXV0ZXggdG8gYXZvaWQg
dHJpZ2dlcmluZyBsaXZlbG9ja3MgZHVlIHRvCi0JICogY29uY3VycmVudCB1c2Ugb2YgdGhpcyBm
dW5jdGlvbi4gTm90ZSB0aGF0IHRoaXMgdXNlIG9mCi0JICogYm86Ond1X211dGV4IGNhbiBnbyBh
d2F5IGlmIHdlIGNoYW5nZSBsb2NraW5nIG9yZGVyIHRvCi0JICogbW1hcF9zZW0gLT4gYm86OnJl
c2VydmUuCi0JICovCi0JcmV0ID0gbXV0ZXhfbG9ja19pbnRlcnJ1cHRpYmxlKCZiby0+d3VfbXV0
ZXgpOwotCWlmICh1bmxpa2VseShyZXQgIT0gMCkpCi0JCXJldHVybiAtRVJFU1RBUlRTWVM7Ci0J
aWYgKCFkbWFfcmVzdl9pc19sb2NrZWQoYm8tPmJhc2UucmVzdikpCi0JCWdvdG8gb3V0X3VubG9j
azsKLQlyZXQgPSBkbWFfcmVzdl9sb2NrX2ludGVycnVwdGlibGUoYm8tPmJhc2UucmVzdiwgTlVM
TCk7Ci0JaWYgKHJldCA9PSAtRUlOVFIpCi0JCXJldCA9IC1FUkVTVEFSVFNZUzsKLQlpZiAodW5s
aWtlbHkocmV0ICE9IDApKQotCQlnb3RvIG91dF91bmxvY2s7Ci0JZG1hX3Jlc3ZfdW5sb2NrKGJv
LT5iYXNlLnJlc3YpOwotCi1vdXRfdW5sb2NrOgotCW11dGV4X3VubG9jaygmYm8tPnd1X211dGV4
KTsKLQlyZXR1cm4gcmV0OwotfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1f
Ym9fdXRpbC5jIGIvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdXRpbC5jCmluZGV4IGZlODFj
NTY1ZTdlZi4uODJlYTI2YTQ5OTU5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0
bV9ib191dGlsLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdXRpbC5jCkBAIC01
MDgsNyArNTA4LDYgQEAgc3RhdGljIGludCB0dG1fYnVmZmVyX29iamVjdF90cmFuc2ZlcihzdHJ1
Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvLAogCUlOSVRfTElTVF9IRUFEKCZmYm8tPmJhc2UubHJ1
KTsKIAlJTklUX0xJU1RfSEVBRCgmZmJvLT5iYXNlLnN3YXApOwogCUlOSVRfTElTVF9IRUFEKCZm
Ym8tPmJhc2UuaW9fcmVzZXJ2ZV9scnUpOwotCW11dGV4X2luaXQoJmZiby0+YmFzZS53dV9tdXRl
eCk7CiAJZmJvLT5iYXNlLm1vdmluZyA9IE5VTEw7CiAJZHJtX3ZtYV9ub2RlX3Jlc2V0KCZmYm8t
PmJhc2UuYmFzZS52bWFfbm9kZSk7CiAJYXRvbWljX3NldCgmZmJvLT5iYXNlLmNwdV93cml0ZXJz
LCAwKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvX3ZtLmMgYi9kcml2
ZXJzL2dwdS9kcm0vdHRtL3R0bV9ib192bS5jCmluZGV4IDc5ZjAxYzVmZjY1ZS4uMjhkNzNlZjE3
MDczIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9ib192bS5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvX3ZtLmMKQEAgLTEyNSwzMCArMTI1LDIyIEBAIHN0YXRp
YyB2bV9mYXVsdF90IHR0bV9ib192bV9mYXVsdChzdHJ1Y3Qgdm1fZmF1bHQgKnZtZikKIAkJJmJk
ZXYtPm1hbltiby0+bWVtLm1lbV90eXBlXTsKIAlzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgY3ZtYTsK
IAotCS8qCi0JICogV29yayBhcm91bmQgbG9ja2luZyBvcmRlciByZXZlcnNhbCBpbiBmYXVsdCAv
IG5vcGZuCi0JICogYmV0d2VlbiBtbWFwX3NlbSBhbmQgYm9fcmVzZXJ2ZTogUGVyZm9ybSBhIHRy
eWxvY2sgb3BlcmF0aW9uCi0JICogZm9yIHJlc2VydmUsIGFuZCBpZiBpdCBmYWlscywgcmV0cnkg
dGhlIGZhdWx0IGFmdGVyIHdhaXRpbmcKLQkgKiBmb3IgdGhlIGJ1ZmZlciB0byBiZWNvbWUgdW5y
ZXNlcnZlZC4KLQkgKi8KIAlpZiAodW5saWtlbHkoIWRtYV9yZXN2X3RyeWxvY2soYm8tPmJhc2Uu
cmVzdikpKSB7CiAJCWlmICh2bWYtPmZsYWdzICYgRkFVTFRfRkxBR19BTExPV19SRVRSWSkgewog
CQkJaWYgKCEodm1mLT5mbGFncyAmIEZBVUxUX0ZMQUdfUkVUUllfTk9XQUlUKSkgewogCQkJCXR0
bV9ib19nZXQoYm8pOwogCQkJCXVwX3JlYWQoJnZtZi0+dm1hLT52bV9tbS0+bW1hcF9zZW0pOwot
CQkJCSh2b2lkKSB0dG1fYm9fd2FpdF91bnJlc2VydmVkKGJvKTsKKwkJCQlpZiAoIWRtYV9yZXN2
X2xvY2tfaW50ZXJydXB0aWJsZShiby0+YmFzZS5yZXN2LAorCQkJCQkJCQkgTlVMTCkpCisJCQkJ
CWRtYV9yZXN2X3VubG9jayhiby0+YmFzZS5yZXN2KTsKIAkJCQl0dG1fYm9fcHV0KGJvKTsKIAkJ
CX0KIAogCQkJcmV0dXJuIFZNX0ZBVUxUX1JFVFJZOwogCQl9CiAKLQkJLyoKLQkJICogSWYgd2Un
ZCB3YW50IHRvIGNoYW5nZSBsb2NraW5nIG9yZGVyIHRvCi0JCSAqIG1tYXBfc2VtIC0+IGJvOjpy
ZXNlcnZlLCB3ZSdkIHVzZSBhIGJsb2NraW5nIHJlc2VydmUgaGVyZQotCQkgKiBpbnN0ZWFkIG9m
IHJldHJ5aW5nIHRoZSBmYXVsdC4uLgotCQkgKi8KLQkJcmV0dXJuIFZNX0ZBVUxUX05PUEFHRTsK
KwkJaWYgKGRtYV9yZXN2X2xvY2tfaW50ZXJydXB0aWJsZShiby0+YmFzZS5yZXN2LCBOVUxMKSkK
KwkJCXJldHVybiBWTV9GQVVMVF9OT1BBR0U7CiAJfQogCiAJLyoKZGlmZiAtLWdpdCBhL2luY2x1
ZGUvZHJtL3R0bS90dG1fYm9fYXBpLmggYi9pbmNsdWRlL2RybS90dG0vdHRtX2JvX2FwaS5oCmlu
ZGV4IGQyMjc3ZTA2MzE2ZC4uYzU4OTYzOWU5YjUwIDEwMDY0NAotLS0gYS9pbmNsdWRlL2RybS90
dG0vdHRtX2JvX2FwaS5oCisrKyBiL2luY2x1ZGUvZHJtL3R0bS90dG1fYm9fYXBpLmgKQEAgLTE1
NSw3ICsxNTUsNiBAQCBzdHJ1Y3QgdHRtX3R0OwogICogQG9mZnNldDogVGhlIGN1cnJlbnQgR1BV
IG9mZnNldCwgd2hpY2ggY2FuIGhhdmUgZGlmZmVyZW50IG1lYW5pbmdzCiAgKiBkZXBlbmRpbmcg
b24gdGhlIG1lbW9yeSB0eXBlLiBGb3IgU1lTVEVNIHR5cGUgbWVtb3J5LCBpdCBzaG91bGQgYmUg
MC4KICAqIEBjdXJfcGxhY2VtZW50OiBIaW50IG9mIGN1cnJlbnQgcGxhY2VtZW50LgotICogQHd1
X211dGV4OiBXYWl0IHVucmVzZXJ2ZWQgbXV0ZXguCiAgKgogICogQmFzZSBjbGFzcyBmb3IgVFRN
IGJ1ZmZlciBvYmplY3QsIHRoYXQgZGVhbHMgd2l0aCBkYXRhIHBsYWNlbWVudCBhbmQgQ1BVCiAg
KiBtYXBwaW5ncy4gR1BVIG1hcHBpbmdzIGFyZSByZWFsbHkgdXAgdG8gdGhlIGRyaXZlciwgYnV0
IGZvciBzaW1wbGVyIEdQVXMKQEAgLTIyOSw4ICsyMjgsNiBAQCBzdHJ1Y3QgdHRtX2J1ZmZlcl9v
YmplY3QgewogCXVpbnQ2NF90IG9mZnNldDsgLyogR1BVIGFkZHJlc3Mgc3BhY2UgaXMgaW5kZXBl
bmRlbnQgb2YgQ1BVIHdvcmQgc2l6ZSAqLwogCiAJc3RydWN0IHNnX3RhYmxlICpzZzsKLQotCXN0
cnVjdCBtdXRleCB3dV9tdXRleDsKIH07CiAKIC8qKgpAQCAtNzYzLDcgKzc2MCw2IEBAIHNzaXpl
X3QgdHRtX2JvX2lvKHN0cnVjdCB0dG1fYm9fZGV2aWNlICpiZGV2LCBzdHJ1Y3QgZmlsZSAqZmls
cCwKIGludCB0dG1fYm9fc3dhcG91dChzdHJ1Y3QgdHRtX2JvX2dsb2JhbCAqZ2xvYiwKIAkJCXN0
cnVjdCB0dG1fb3BlcmF0aW9uX2N0eCAqY3R4KTsKIHZvaWQgdHRtX2JvX3N3YXBvdXRfYWxsKHN0
cnVjdCB0dG1fYm9fZGV2aWNlICpiZGV2KTsKLWludCB0dG1fYm9fd2FpdF91bnJlc2VydmVkKHN0
cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8pOwogCiAvKioKICAqIHR0bV9ib191c2VzX2VtYmVk
ZGVkX2dlbV9vYmplY3QgLSBjaGVjayBpZiB0aGUgZ2l2ZW4gYm8gdXNlcyB0aGUKLS0gCjIuMjMu
MAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
