Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DACC10A0A5
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 15:46:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB5E06E417;
	Tue, 26 Nov 2019 14:45:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33F856E413;
 Tue, 26 Nov 2019 14:45:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 06:45:57 -0800
X-IronPort-AV: E=Sophos;i="5.69,246,1571727600"; d="scan'208";a="202738241"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.17])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 06:45:55 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Daniel Vetter <daniel@ffwll.ch>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Date: Tue, 26 Nov 2019 15:45:34 +0100
Message-Id: <20191126144534.23510-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v3] tests/prime_vgem: Skip
 basic-read/write subtests if not supported
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXMgd2UndmUgYWdyZWVkIHRoYXQgdXNpbmcgSTkxNV9HRU1fUFJFQUQvUFdSSVRFIElPQ1RMcyBv
biBkbWEtYnVmCm9iamVjdHMgZG9lc24ndCBtYWtlIG11Y2ggc2Vuc2UsIHdlIGFyZSBub3QgZ29p
bmcgdG8gZXh0ZW5kIHRoZWlyCmhhbmRsZXJzIGluIHRoZSBpOTE1IGRyaXZlciB3aXRoIG5ldyBw
cm9jZXNzaW5nIHBhdGhzIHJlcXVpcmVkIGZvciB0aGVtCnRvIHdvcmsgY29ycmVjdGx5IHdpdGgg
ZG1hLWJ1ZiBvYmplY3RzIG9uIGZ1dHVyZSBoYXJkd2FyZSB3aXRoIG5vCm1hcHBhYmxlIGFwZXJ0
dXJlLiAgV2hlbiBydW5uaW5nIG9uIHRoYXQga2luZCBvZiBoYXJkd2FyZSwganVzdCBza2lwCnN1
YnRlc3RzIHdoaWNoIHVzZSB0aG9zZSBJT0NUTHMuCgp2MjogRXhhbWluZSBwcmVhZC9wd3JpdGUg
QUJJLCBub3QgbW1hcCBBQkkgKENocmlzKQp2MzogRG9uJ3QgdXNlICJubyBtYXBwYWJsZSBHR1RU
IiB3b3JkaW5nIGluIGNvbW1pdCBtZXNzYWdlIChDaHJpcykKClNpZ25lZC1vZmYtYnk6IEphbnVz
eiBLcnp5c3p0b2ZpayA8amFudXN6LmtyenlzenRvZmlrQGxpbnV4LmludGVsLmNvbT4KQ2M6IERh
bmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFz
LmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGxpYi9pb2N0bF93cmFwcGVycy5jIHwgMiArLQog
bGliL2lvY3RsX3dyYXBwZXJzLmggfCAxICsKIHRlc3RzL3ByaW1lX3ZnZW0uYyAgIHwgNiArKysr
KysKIDMgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZm
IC0tZ2l0IGEvbGliL2lvY3RsX3dyYXBwZXJzLmMgYi9saWIvaW9jdGxfd3JhcHBlcnMuYwppbmRl
eCA2MjhmOGI4My4uNzhiOTJiZDIgMTAwNjQ0Ci0tLSBhL2xpYi9pb2N0bF93cmFwcGVycy5jCisr
KyBiL2xpYi9pb2N0bF93cmFwcGVycy5jCkBAIC0zNTYsNyArMzU2LDcgQEAgdm9pZCBnZW1fd3Jp
dGUoaW50IGZkLCB1aW50MzJfdCBoYW5kbGUsIHVpbnQ2NF90IG9mZnNldCwgY29uc3Qgdm9pZCAq
YnVmLCB1aW50NjQKIAlpZ3RfYXNzZXJ0X2VxKF9fZ2VtX3dyaXRlKGZkLCBoYW5kbGUsIG9mZnNl
dCwgYnVmLCBsZW5ndGgpLCAwKTsKIH0KIAotc3RhdGljIGludCBfX2dlbV9yZWFkKGludCBmZCwg
dWludDMyX3QgaGFuZGxlLCB1aW50NjRfdCBvZmZzZXQsIHZvaWQgKmJ1ZiwgdWludDY0X3QgbGVu
Z3RoKQoraW50IF9fZ2VtX3JlYWQoaW50IGZkLCB1aW50MzJfdCBoYW5kbGUsIHVpbnQ2NF90IG9m
ZnNldCwgdm9pZCAqYnVmLCB1aW50NjRfdCBsZW5ndGgpCiB7CiAJc3RydWN0IGRybV9pOTE1X2dl
bV9wcmVhZCBnZW1fcHJlYWQ7CiAJaW50IGVycjsKZGlmZiAtLWdpdCBhL2xpYi9pb2N0bF93cmFw
cGVycy5oIGIvbGliL2lvY3RsX3dyYXBwZXJzLmgKaW5kZXggZjI0MTJkNzguLjk3ZjI3OGVkIDEw
MDY0NAotLS0gYS9saWIvaW9jdGxfd3JhcHBlcnMuaAorKysgYi9saWIvaW9jdGxfd3JhcHBlcnMu
aApAQCAtNjksNiArNjksNyBAQCB1aW50MzJfdCBnZW1fb3BlbihpbnQgZmQsIHVpbnQzMl90IG5h
bWUpOwogdm9pZCBnZW1fY2xvc2UoaW50IGZkLCB1aW50MzJfdCBoYW5kbGUpOwogaW50IF9fZ2Vt
X3dyaXRlKGludCBmZCwgdWludDMyX3QgaGFuZGxlLCB1aW50NjRfdCBvZmZzZXQsIGNvbnN0IHZv
aWQgKmJ1ZiwgdWludDY0X3QgbGVuZ3RoKTsKIHZvaWQgZ2VtX3dyaXRlKGludCBmZCwgdWludDMy
X3QgaGFuZGxlLCB1aW50NjRfdCBvZmZzZXQsICBjb25zdCB2b2lkICpidWYsIHVpbnQ2NF90IGxl
bmd0aCk7CitpbnQgX19nZW1fcmVhZChpbnQgZmQsIHVpbnQzMl90IGhhbmRsZSwgdWludDY0X3Qg
b2Zmc2V0LCB2b2lkICpidWYsIHVpbnQ2NF90IGxlbmd0aCk7CiB2b2lkIGdlbV9yZWFkKGludCBm
ZCwgdWludDMyX3QgaGFuZGxlLCB1aW50NjRfdCBvZmZzZXQsIHZvaWQgKmJ1ZiwgdWludDY0X3Qg
bGVuZ3RoKTsKIGludCBfX2dlbV9zZXRfZG9tYWluKGludCBmZCwgdWludDMyX3QgaGFuZGxlLCB1
aW50MzJfdCByZWFkLCB1aW50MzJfdCB3cml0ZSk7CiB2b2lkIGdlbV9zZXRfZG9tYWluKGludCBm
ZCwgdWludDMyX3QgaGFuZGxlLCB1aW50MzJfdCByZWFkLCB1aW50MzJfdCB3cml0ZSk7CmRpZmYg
LS1naXQgYS90ZXN0cy9wcmltZV92Z2VtLmMgYi90ZXN0cy9wcmltZV92Z2VtLmMKaW5kZXggMDRj
YzkxM2QuLjY1OTU4MThjIDEwMDY0NAotLS0gYS90ZXN0cy9wcmltZV92Z2VtLmMKKysrIGIvdGVz
dHMvcHJpbWVfdmdlbS5jCkBAIC00Niw2ICs0Niw4IEBAIHN0YXRpYyB2b2lkIHRlc3RfcmVhZChp
bnQgdmdlbSwgaW50IGk5MTUpCiAJaGFuZGxlID0gcHJpbWVfZmRfdG9faGFuZGxlKGk5MTUsIGRt
YWJ1Zik7CiAJY2xvc2UoZG1hYnVmKTsKIAorCWlndF9za2lwX29uKF9fZ2VtX3JlYWQoaTkxNSwg
aGFuZGxlLCAwLCAmaSwgc2l6ZW9mKGkpKSk7CisKIAlwdHIgPSB2Z2VtX21tYXAodmdlbSwgJnNj
cmF0Y2gsIFBST1RfV1JJVEUpOwogCWZvciAoaSA9IDA7IGkgPCAxMDI0OyBpKyspCiAJCXB0clsx
MDI0KmldID0gaTsKQEAgLTgxLDYgKzgzLDggQEAgc3RhdGljIHZvaWQgdGVzdF9mZW5jZV9yZWFk
KGludCBpOTE1LCBpbnQgdmdlbSkKIAloYW5kbGUgPSBwcmltZV9mZF90b19oYW5kbGUoaTkxNSwg
ZG1hYnVmKTsKIAljbG9zZShkbWFidWYpOwogCisJaWd0X3NraXBfb24oX19nZW1fcmVhZChpOTE1
LCBoYW5kbGUsIDAsICZpLCBzaXplb2YoaSkpKTsKKwogCWlndF9mb3JrKGNoaWxkLCAxKSB7CiAJ
CWNsb3NlKG1hc3RlclswXSk7CiAJCWNsb3NlKHNsYXZlWzFdKTsKQEAgLTE5MSw2ICsxOTUsOCBA
QCBzdGF0aWMgdm9pZCB0ZXN0X3dyaXRlKGludCB2Z2VtLCBpbnQgaTkxNSkKIAloYW5kbGUgPSBw
cmltZV9mZF90b19oYW5kbGUoaTkxNSwgZG1hYnVmKTsKIAljbG9zZShkbWFidWYpOwogCisJaWd0
X3NraXBfb24oX19nZW1fd3JpdGUoaTkxNSwgaGFuZGxlLCAwLCAmaSwgc2l6ZW9mKGkpKSk7CisK
IAlwdHIgPSB2Z2VtX21tYXAodmdlbSwgJnNjcmF0Y2gsIFBST1RfUkVBRCk7CiAJZ2VtX2Nsb3Nl
KHZnZW0sIHNjcmF0Y2guaGFuZGxlKTsKIAotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
