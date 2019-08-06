Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62827832D3
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 15:37:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 249296E39B;
	Tue,  6 Aug 2019 13:37:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 53BBD6E393;
 Tue,  6 Aug 2019 13:37:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4AEE6A00FE;
 Tue,  6 Aug 2019 13:37:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 06 Aug 2019 13:37:36 -0000
Message-ID: <20190806133736.1118.35546@emeril.freedesktop.org>
References: <20190806124300.24945-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190806124300.24945-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5BCI=2C1/2=5D_drm/i915/gem=3A_Make_cap?=
 =?utf-8?q?s=2Escheduler_static?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW0NJLDEv
Ml0gZHJtL2k5MTUvZ2VtOiBNYWtlIGNhcHMuc2NoZWR1bGVyIHN0YXRpYwpVUkwgICA6IGh0dHBz
Oi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjQ3NzEvClN0YXRlIDogd2Fybmlu
ZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcAowMWM1ZTNm
ODkxMjAgZHJtL2k5MTUvZ2VtOiBNYWtlIGNhcHMuc2NoZWR1bGVyIHN0YXRpYwpiZTJmYTBiYzA2
NjUgZHJtL2k5MTUvZ3Q6IE1vdmUgdGhlIFtjbGFzc11baW5zdF0gbG9va3VwIGZvciBlbmdpbmVz
IG9udG8gdGhlIEdUCi06MzExOiBXQVJOSU5HOkZJTEVfUEFUSF9DSEFOR0VTOiBhZGRlZCwgbW92
ZWQgb3IgZGVsZXRlZCBmaWxlKHMpLCBkb2VzIE1BSU5UQUlORVJTIG5lZWQgdXBkYXRpbmc/CiMz
MTE6IApuZXcgZmlsZSBtb2RlIDEwMDY0NAoKLTozMTY6IFdBUk5JTkc6U1BEWF9MSUNFTlNFX1RB
RzogTWlzc2luZyBvciBtYWxmb3JtZWQgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXIgdGFnIGluIGxp
bmUgMQojMzE2OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdXNl
ci5jOjE6CisvKgoKLTozMTc6IFdBUk5JTkc6U1BEWF9MSUNFTlNFX1RBRzogTWlzcGxhY2VkIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyIHRhZyAtIHVzZSBsaW5lIDEgaW5zdGVhZAojMzE3OiBGSUxF
OiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdXNlci5jOjI6CisgKiBTUERY
LUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCgotOjU1MDogV0FSTklORzpTUERYX0xJQ0VOU0VfVEFH
OiBNaXNzaW5nIG9yIG1hbGZvcm1lZCBTUERYLUxpY2Vuc2UtSWRlbnRpZmllciB0YWcgaW4gbGlu
ZSAxCiM1NTA6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV91c2Vy
Lmg6MToKKy8qCgotOjU1MTogV0FSTklORzpTUERYX0xJQ0VOU0VfVEFHOiBNaXNwbGFjZWQgU1BE
WC1MaWNlbnNlLUlkZW50aWZpZXIgdGFnIC0gdXNlIGxpbmUgMSBpbnN0ZWFkCiM1NTE6IEZJTEU6
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV91c2VyLmg6MjoKKyAqIFNQRFgt
TGljZW5zZS1JZGVudGlmaWVyOiBNSVQKCi06ODI5OiBDSEVDSzpNQUNST19BUkdfUkVVU0U6IE1h
Y3JvIGFyZ3VtZW50IHJldXNlICdlbmdpbmVfXycgLSBwb3NzaWJsZSBzaWRlLWVmZmVjdHM/CiM4
Mjk6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2Lmg6MTkzMToKKyNkZWZpbmUg
Zm9yX2VhY2hfdWFiaV9lbmdpbmUoZW5naW5lX18sIGk5MTVfXykgXAorCWZvciAoKGVuZ2luZV9f
KSA9IHJiX3RvX3VhYmlfZW5naW5lKHJiX2ZpcnN0KCYoaTkxNV9fKS0+dWFiaV9lbmdpbmVzKSk7
XAorCSAgICAgKGVuZ2luZV9fKTsgXAorCSAgICAgKGVuZ2luZV9fKSA9IHJiX3RvX3VhYmlfZW5n
aW5lKHJiX25leHQoJihlbmdpbmVfXyktPnVhYmlfbm9kZSkpKQoKdG90YWw6IDAgZXJyb3JzLCA1
IHdhcm5pbmdzLCAxIGNoZWNrcywgODcwIGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
