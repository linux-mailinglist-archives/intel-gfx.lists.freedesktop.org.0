Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 152E1436F5
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 15:54:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7454689A92;
	Thu, 13 Jun 2019 13:54:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98EE389A8B;
 Thu, 13 Jun 2019 13:53:59 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: gtucker) with ESMTPSA id 55AA5264D42
From: Guillaume Tucker <guillaume.tucker@collabora.com>
To: Arkadiusz Hiler <arkadiusz.hiler@intel.com>,
 Petri Latvala <petri.latvala@intel.com>
Date: Thu, 13 Jun 2019 14:53:18 +0100
Message-Id: <cover.1560433744.git.guillaume.tucker@collabora.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v2 0/4] Use C11 atomics
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

VGhpcyBzZXJpZXMgcmVwbGFjZXMgY2FsbHMgdG8gdGhlIF9fc3luY18qIGZ1bmN0aW9ucyB3aXRo
IHRoZSBtb3JlCnJlY2VudCBhdG9taWNfKiBvbmVzIGRlZmluZWQgaW4gc3RkYXRvbWljLmggaW4g
Z2VtX2NyZWF0ZSBhbmQKc3dfc3luYy4gIEl0IGFsc28gYWRkcyBkZXBlbmRlbmN5IG9uIGxpYmF0
b21pYyB3aGVuIHJlcXVpcmVkLCB0aGF0IGlzCnRvIHNheSB3aGVuIHRoZSBDUFUgYXJjaGl0ZWN0
dXJlIGRvZXNuJ3QgcHJvdmlkZSBuYXRpdmUgc3VwcG9ydCBmb3IKc29tZSBhdG9taWMgb3BlcmF0
aW9ucy4gIFRoaXMgbWFrZXMgdGhlIHRlc3RzIG1vcmUgcG9ydGFibGUsIGluCnBhcnRpY3VsYXIg
Zm9yIDMyLWJpdCBNSVBTIHdoaWNoIGRvZXNuJ3Qgc3VwcG9ydCA2NC1iaXQgYXRvbWljcy4KCnYy
OgogLSBhZGQgbGlua2VyIHRlc3QgdG8gb25seSBhZGQgZGVwZW5kZW5jeSBvbiBsaWJhdG9taWMg
d2hlbiBuZWVkZWQKIC0gb25seSBhZGQgbGliYXRvbWljIGRlcGVuZGVuY3kgdG8gZ2VtX2NyZWF0
ZSBhbmQgc3dfc3luYwogLSB1c2Ugc3RkYXRvbWljLmggYW5kIF9BdG9taWMgdHlwZSBtb2RpZmll
cgogLSBleHBsaWNpdGx5IHJlcXVpcmUgbGliYXRvbWljIGluIGFsbCBEb2NrZXIgaW1hZ2VzCgpH
dWlsbGF1bWUgVHVja2VyICg0KToKICBtZXNvbjogYWRkIGxpYmF0b21pYyBkZXBlbmRlbmN5CiAg
Z2l0bGFiLWNpOiBhZGQgbGliYXRvbWljIHRvIGRvY2tlciBpbWFnZXMKICBpOTE1L2dlbV9jcmVh
dGU6IHVzZSBhdG9taWNfKiBpbnN0ZWFkIG9mIF9fc3luY18qCiAgdGVzdHMvc3dfc3luYzogdXNl
IGF0b21pY18qIGluc3RlYWQgb2YgX19zeW5jXyoKCiBEb2NrZXJmaWxlLmRlYmlhbiAgICAgICB8
ICAxICsKIERvY2tlcmZpbGUuZGViaWFuLWFybTY0IHwgIDEgKwogRG9ja2VyZmlsZS5kZWJpYW4t
YXJtaGYgfCAgMSArCiBEb2NrZXJmaWxlLmZlZG9yYSAgICAgICB8ICAyICstCiBtZXNvbi5idWls
ZCAgICAgICAgICAgICB8IDEzICsrKysrKysrKysrKysKIHRlc3RzL01ha2VmaWxlLmFtICAgICAg
IHwgIDMgKystCiB0ZXN0cy9pOTE1L2dlbV9jcmVhdGUuYyB8IDE2ICsrKysrKysrKysrKy0tLS0K
IHRlc3RzL21lc29uLmJ1aWxkICAgICAgIHwgMTcgKysrKysrKysrKysrKysrLS0KIHRlc3RzL3N3
X3N5bmMuYyAgICAgICAgIHwgMTIgKysrKysrLS0tLS0tCiA5IGZpbGVzIGNoYW5nZWQsIDUyIGlu
c2VydGlvbnMoKyksIDE0IGRlbGV0aW9ucygtKQoKLS0KMi4yMC4xCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
