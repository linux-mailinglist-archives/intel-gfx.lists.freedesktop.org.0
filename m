Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB34E2C56AB
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 15:09:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F4076E976;
	Thu, 26 Nov 2020 14:09:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71CCE6E976
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Nov 2020 14:08:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23117628-1500050 
 for multiple; Thu, 26 Nov 2020 14:08:42 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Nov 2020 14:08:41 +0000
Message-Id: <20201126140841.1982-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201126105539.2661-1-chris@chris-wilson.co.uk>
References: <20201126105539.2661-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Program mocs:63 for cache eviction
 on gen9
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
Cc: stable@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VmlsbGUgbm90aWNlZCB0aGF0IHRoZSBsYXN0IG1vY3MgZW50cnkgaXMgdXNlZCB1bmNvbmRpdGlv
bmFsbHkgYnkgdGhlIEhXCndoZW4gaXQgcGVyZm9ybXMgY2FjaGUgZXZpY3Rpb25zLCBhbmQgbm90
ZWQgdGhhdCB3aGlsZSB0aGUgdmFsdWUgaXMgbm90Cm1lYW50IHRvIGJlIHdyaXRhYmxlIGJ5IHRo
ZSBkcml2ZXIsIHdlIHNob3VsZCBwcm9ncmFtIGl0IHRvIGEgcmVhc29uYWJsZQp2YWx1ZSBuZXZl
cnRoZWxlc3MuCgpBcyBpdCB0dXJucyBvdXQsIHdlIGNhbiBjaGFuZ2UgdGhlIHZhbHVlIG9mIG1v
Y3M6NjMgYW5kIHRoZSB2YWx1ZSB3ZQp3ZXJlIHByb2dyYW1taW5nIGludG8gaXQgd291bGQgY2F1
c2UgaGFyZCBoYW5ncyBpbiBjb25qdW5jdGlvbiB3aXRoCmF0b21pYyBvcGVyYXRpb25zLgoKdjI6
IEFkZCBkZXRhaWxzIGZyb20gYnNwZWMgYWJvdXQgaG93IGl0IGlzIHVzZWQgYnkgSFcKClN1Z2dl
c3RlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4K
Q2xvc2VzOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsLy0vaXNzdWVz
LzI3MDcKRml4ZXM6IDNiYmFiYTBjZWFhMiAoImRybS9pOTE1OiBBZGRlZCBQcm9ncmFtbWluZyBv
ZiB0aGUgTU9DUyIpClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KQ2M6IEphc29uIEVrc3RyYW5kIDxqYXNvbkBqbGVrc3RyYW5kLm5ldD4KQ2M6IDxzdGFi
bGVAdmdlci5rZXJuZWwub3JnPiAjIHY0LjMrCi0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfbW9jcy5jIHwgMTQgKysrKysrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfbW9jcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5j
CmluZGV4IDI1NDg3M2UxNjQ2ZS4uMjZjZWRkZTgwNDc2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfbW9jcy5jCkBAIC0xMzEsNyArMTMxLDE5IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJt
X2k5MTVfbW9jc19lbnRyeSBza2xfbW9jc190YWJsZVtdID0gewogCUdFTjlfTU9DU19FTlRSSUVT
LAogCU1PQ1NfRU5UUlkoSTkxNV9NT0NTX0NBQ0hFRCwKIAkJICAgTEVfM19XQiB8IExFX1RDXzJf
TExDX0VMTEMgfCBMRV9MUlVNKDMpLAotCQkgICBMM18zX1dCKQorCQkgICBMM18zX1dCKSwKKwor
CS8qCisJICogbW9jczo2MworCSAqIC0gdXNlZCBieSB0aGUgTDMgZm9yIGFsbCBpdHMgZXZpY3Rp
b25zLgorCSAqICAgVGh1cyBpdCBpcyBleHBlY3RlZCB0byBhbGxvdyBMTEMgY2FjaGVhYmlsaXR5
IHRvIGVuYWJsZSBjb2hlcmVudAorCSAqICAgZmxvd3MgdG8gYmUgbWFpbnRhaW5lZC4KKwkgKiAt
IHVzZWQgdG8gZm9yY2UgTDMgdW5jYWNoYWJsZSBjeWNsZXMuCisJICogICBUaHVzIGl0IGlzIGV4
cGVjdGVkIHRvIG1ha2UgdGhlIHN1cmNlIEwzIHVuY2FjaGVhYmxlLgorCSAqLworCU1PQ1NfRU5U
UlkoNjMsCisJCSAgIExFXzNfV0IgfCBMRV9UQ18xX0xMQyB8IExFX0xSVU0oMyksCisJCSAgIEwz
XzFfVUMpCiB9OwogCiAvKiBOT1RFOiB0aGUgTEVfVEdUX0NBQ0hFIGlzIG5vdCB1c2VkIG9uIEJy
b3h0b24gKi8KLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
