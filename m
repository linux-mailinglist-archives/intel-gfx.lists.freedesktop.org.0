Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACBF6110133
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 16:26:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00EBB6E9CB;
	Tue,  3 Dec 2019 15:26:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D95346E9CB
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2019 15:26:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19444541-1500050 
 for multiple; Tue, 03 Dec 2019 15:26:30 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Dec 2019 15:26:31 +0000
Message-Id: <20191203152631.3107653-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191203152631.3107653-1-chris@chris-wilson.co.uk>
References: <20191203152631.3107653-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/execlists: Skip nested spinlock
 for validating pending
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T25seSBhbG9uZyB0aGUgc3VibWlzc2lvbiBwYXRoIGNhbiB3ZSBndWFyYW50ZWUgdGhhdCB0aGUg
bG9ja2VkIHJlcXVlc3QKaXMgaW5kZWVkIGZyb20gYSBmb3JlaWduIGVuZ2luZSwgYW5kIHNvIHRo
ZSBuZXN0aW5nIG9mIGVuZ2luZS9ycSBpcwpwZXJtaXNzaWJsZS4gT24gdGhlIHN1Ym1pc3Npb24g
dGFza2xldCAocHJvY2Vzc19jc2IoKSksIHdlIG1heSBmaW5kCm91cnNlbHZlcyBjb21wZXRpbmcg
d2l0aCB0aGUgbm9ybWFsIG5lc3Rpbmcgb2YgcnEvZW5naW5lLCBpbnZhbGlkYXRpbmcKb3VyIG5l
c3RpbmcuIEFzIHdlIG9ubHkgdXNlIHRoZSBzcGlubG9jayBmb3IgZGVidWcgcHVycG9zZXMsIHNr
aXAgdGhlCmRlYnVnIGlmIHdlIGNhbm5vdCBhY3F1aXJlIHRoZSBzcGlubG9jayBmb3Igc2FmZSB2
YWxpZGF0aW9uIC0gY2F0Y2hpbmcKOTklIG9mIHRoZSBidWdzIGlzIGJldHRlciB0aGFuIGNhdXNp
bmcgYSBoYXJkIGxvY2t1cC4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgpDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyB8IDQgKystLQog
MSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2xyYy5jCmluZGV4IDM3YWI5NzQyYWJlNy4uODI4MDc5MTgzODJkIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwpAQCAtMTMxNSw4ICsxMzE1LDggQEAgYXNz
ZXJ0X3BlbmRpbmdfdmFsaWQoY29uc3Qgc3RydWN0IGludGVsX2VuZ2luZV9leGVjbGlzdHMgKmV4
ZWNsaXN0cywKIAkJY2UgPSBycS0+aHdfY29udGV4dDsKIAogCQkvKiBIb2xkIHRpZ2h0bHkgb250
byB0aGUgbG9jayB0byBwcmV2ZW50IGNvbmN1cnJlbnQgcmV0aXJlcyEgKi8KLQkJc3Bpbl9sb2Nr
X2lycXNhdmVfbmVzdGVkKCZycS0+bG9jaywgZmxhZ3MsCi0JCQkJCSBTSU5HTEVfREVQVEhfTkVT
VElORyk7CisJCWlmICghc3Bpbl90cnlsb2NrX2lycXNhdmUoJnJxLT5sb2NrLCBmbGFncykpCisJ
CQljb250aW51ZTsKIAogCQlpZiAoaTkxNV9yZXF1ZXN0X2NvbXBsZXRlZChycSkpCiAJCQlnb3Rv
IHVubG9jazsKLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
