Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A5704A0C4
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 14:28:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEEE76E157;
	Tue, 18 Jun 2019 12:28:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA5146E157;
 Tue, 18 Jun 2019 12:28:30 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: gtucker) with ESMTPSA id 203EB2861E9
From: Guillaume Tucker <guillaume.tucker@collabora.com>
To: Arkadiusz Hiler <arkadiusz.hiler@intel.com>,
 Petri Latvala <petri.latvala@intel.com>, "Ser, Simon" <simon.ser@intel.com>
Date: Tue, 18 Jun 2019 13:27:43 +0100
Message-Id: <20190618122746.61310-2-guillaume.tucker@collabora.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190618122746.61310-1-guillaume.tucker@collabora.com>
References: <20190618122746.61310-1-guillaume.tucker@collabora.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v3 1/4] meson: add libatomic dependency
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

QWRkIGNvbmRpdGlvbmFsIGRlcGVuZGVuY3kgb24gbGliYXRvbWljIGluIG9yZGVyIHRvIGJlIGFi
bGUgdG8gdXNlIHRoZQpfX2F0b21pY18qIGZ1bmN0aW9ucyBpbnN0ZWFkIG9mIHRoZSBvbGRlciBf
X3N5bmNfKiBvbmVzLiAgVGhlCmxpYmF0b21pYyBsaWJyYXJ5IGlzIG9ubHkgbmVlZGVkIHdoZW4g
dGhlcmUgYXJlbid0IGFueSBuYXRpdmUgc3VwcG9ydApvbiB0aGUgY3VycmVudCBhcmNoaXRlY3R1
cmUsIHNvIGEgbGlua2VyIHRlc3QgaXMgdXNlZCBmb3IgdGhpcwpwdXJwb3NlLiAgVGhpcyBlbmFi
bGVzIGF0b21pYyBvcGVyYXRpb25zIHRvIGJlIG9uIGEgd2lkZXIgbnVtYmVyIG9mCmFyY2hpdGVj
dHVyZXMgaW5jbHVkaW5nIE1JUFMuCgpTaWduZWQtb2ZmLWJ5OiBHdWlsbGF1bWUgVHVja2VyIDxn
dWlsbGF1bWUudHVja2VyQGNvbGxhYm9yYS5jb20+Ci0tLQoKTm90ZXM6CiAgICB2MjogYWRkIGxp
bmtlciB0ZXN0IGZvciBsaWJhdG9taWMKICAgIHYzOiB1c2UgbnVsbF9kZXAKCiBtZXNvbi5idWls
ZCB8IDE0ICsrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKQoK
ZGlmZiAtLWdpdCBhL21lc29uLmJ1aWxkIGIvbWVzb24uYnVpbGQKaW5kZXggNjI2OGM1OGQzNjM0
Li4xMThhZDY2N2ZmYjUgMTAwNjQ0Ci0tLSBhL21lc29uLmJ1aWxkCisrKyBiL21lc29uLmJ1aWxk
CkBAIC0xODAsNiArMTgwLDIwIEBAIHJlYWx0aW1lID0gY2MuZmluZF9saWJyYXJ5KCdydCcpCiBk
bHN5bSA9IGNjLmZpbmRfbGlicmFyeSgnZGwnKQogemxpYiA9IGNjLmZpbmRfbGlicmFyeSgneicp
CiAKK2lmIGNjLmxpbmtzKCcnJworI2luY2x1ZGUgPHN0ZGludC5oPgoraW50IG1haW4odm9pZCkg
eworICB1aW50MzJfdCB4MzIgPSAwOworICB1aW50NjRfdCB4NjQgPSAwOworICBfX2F0b21pY19s
b2FkX24oJngzMiwgX19BVE9NSUNfU0VRX0NTVCk7CisgIF9fYXRvbWljX2xvYWRfbigmeDY0LCBf
X0FUT01JQ19TRVFfQ1NUKTsKKyAgcmV0dXJuIDA7Cit9JycnLCBuYW1lIDogJ2J1aWx0LWluIGF0
b21pY3MnKQorCWxpYmF0b21pYyA9IG51bGxfZGVwCitlbHNlCisJbGliYXRvbWljID0gY2MuZmlu
ZF9saWJyYXJ5KCdhdG9taWMnKQorZW5kaWYKKwogaWYgY2MuaGFzX2hlYWRlcignbGludXgva2Qu
aCcpCiAJY29uZmlnLnNldCgnSEFWRV9MSU5VWF9LRF9IJywgMSkKIGVuZGlmCi0tIAoyLjIwLjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
