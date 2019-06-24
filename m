Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6FAF5186E
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2019 18:23:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C45E89CDB;
	Mon, 24 Jun 2019 16:23:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B41189CDB;
 Mon, 24 Jun 2019 16:23:05 +0000 (UTC)
Received: from submarine.cbg.collabora.co.uk (unknown
 [IPv6:2a00:5f00:102:0:6dae:eb08:2e0f:5281])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: gtucker)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id D3D9E285484;
 Mon, 24 Jun 2019 17:23:03 +0100 (BST)
From: Guillaume Tucker <guillaume.tucker@collabora.com>
To: Arkadiusz Hiler <arkadiusz.hiler@intel.com>,
 Petri Latvala <petri.latvala@intel.com>, "Ser, Simon" <simon.ser@intel.com>
Date: Mon, 24 Jun 2019 17:22:32 +0100
Message-Id: <cover.1561393147.git.guillaume.tucker@collabora.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v4 0/4] Use C11 atomics
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
dXNlIG51bGxfZGVwIGluIG1lc29uLmJ1aWxkCgp2NDoKIC0gcmViYXNlIHdpdGggY2hhbmdlcyBp
biBEb2NrZXJmaWxlLmRlYmlhbi1taW5pbWFsCgpHdWlsbGF1bWUgVHVja2VyICg0KToKICBtZXNv
bjogYWRkIGxpYmF0b21pYyBkZXBlbmRlbmN5CiAgZ2l0bGFiLWNpOiBhZGQgbGliYXRvbWljIHRv
IGRvY2tlciBpbWFnZXMKICBpOTE1L2dlbV9jcmVhdGU6IHVzZSBhdG9taWNfKiBpbnN0ZWFkIG9m
IF9fc3luY18qCiAgdGVzdHMvc3dfc3luYzogdXNlIGF0b21pY18qIGluc3RlYWQgb2YgX19zeW5j
XyoKCiBEb2NrZXJmaWxlLmRlYmlhbi1hcm02NCAgIHwgIDEgKwogRG9ja2VyZmlsZS5kZWJpYW4t
YXJtaGYgICB8ICAxICsKIERvY2tlcmZpbGUuZGViaWFuLW1pbmltYWwgfCAgMSArCiBEb2NrZXJm
aWxlLmZlZG9yYSAgICAgICAgIHwgIDIgKy0KIG1lc29uLmJ1aWxkICAgICAgICAgICAgICAgfCAx
NCArKysrKysrKysrKysrKwogdGVzdHMvTWFrZWZpbGUuYW0gICAgICAgICB8ICAzICsrLQogdGVz
dHMvaTkxNS9nZW1fY3JlYXRlLmMgICB8IDE2ICsrKysrKysrKysrKy0tLS0KIHRlc3RzL21lc29u
LmJ1aWxkICAgICAgICAgfCAxNyArKysrKysrKysrKysrKystLQogdGVzdHMvc3dfc3luYy5jICAg
ICAgICAgICB8IDEyICsrKysrKy0tLS0tLQogOSBmaWxlcyBjaGFuZ2VkLCA1MyBpbnNlcnRpb25z
KCspLCAxNCBkZWxldGlvbnMoLSkKCi0tCjIuMjAuMQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
