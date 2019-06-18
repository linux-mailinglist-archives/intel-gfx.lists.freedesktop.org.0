Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F5B4A0C6
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 14:28:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFA326E15C;
	Tue, 18 Jun 2019 12:28:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C67256E15C;
 Tue, 18 Jun 2019 12:28:30 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: gtucker) with ESMTPSA id DD0DC28A116
From: Guillaume Tucker <guillaume.tucker@collabora.com>
To: Arkadiusz Hiler <arkadiusz.hiler@intel.com>,
 Petri Latvala <petri.latvala@intel.com>, "Ser, Simon" <simon.ser@intel.com>
Date: Tue, 18 Jun 2019 13:27:42 +0100
Message-Id: <20190618122746.61310-1-guillaume.tucker@collabora.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v3 0/4] Use C11 atomics
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
cgogLSBleHBsaWNpdGx5IHJlcXVpcmUgbGliYXRvbWljIGluIGFsbCBEb2NrZXIgaW1hZ2VzCgp2
MzoKIC0gdXNlIHN1Yi1hcmNoIGxpYmF0b21pYzEgaW4gRGViaWFuIGRvY2tlciBpbWFnZXMKIC0g
dXNlIG51bGxfZGVwIGluIG1lc29uLmJ1aWxkCgpHdWlsbGF1bWUgVHVja2VyICg0KToKICBtZXNv
bjogYWRkIGxpYmF0b21pYyBkZXBlbmRlbmN5CiAgZ2l0bGFiLWNpOiBhZGQgbGliYXRvbWljIHRv
IGRvY2tlciBpbWFnZXMKICBpOTE1L2dlbV9jcmVhdGU6IHVzZSBhdG9taWNfKiBpbnN0ZWFkIG9m
IF9fc3luY18qCiAgdGVzdHMvc3dfc3luYzogdXNlIGF0b21pY18qIGluc3RlYWQgb2YgX19zeW5j
XyoKCiBEb2NrZXJmaWxlLmRlYmlhbiAgICAgICB8ICAxICsKIERvY2tlcmZpbGUuZGViaWFuLWFy
bTY0IHwgIDEgKwogRG9ja2VyZmlsZS5kZWJpYW4tYXJtaGYgfCAgMSArCiBEb2NrZXJmaWxlLmZl
ZG9yYSAgICAgICB8ICAyICstCiBtZXNvbi5idWlsZCAgICAgICAgICAgICB8IDE0ICsrKysrKysr
KysrKysrCiB0ZXN0cy9NYWtlZmlsZS5hbSAgICAgICB8ICAzICsrLQogdGVzdHMvaTkxNS9nZW1f
Y3JlYXRlLmMgfCAxNiArKysrKysrKysrKystLS0tCiB0ZXN0cy9tZXNvbi5idWlsZCAgICAgICB8
IDE3ICsrKysrKysrKysrKysrKy0tCiB0ZXN0cy9zd19zeW5jLmMgICAgICAgICB8IDEyICsrKysr
Ky0tLS0tLQogOSBmaWxlcyBjaGFuZ2VkLCA1MyBpbnNlcnRpb25zKCspLCAxNCBkZWxldGlvbnMo
LSkKCi0tCjIuMjAuMQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
