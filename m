Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A51108B58
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2019 11:05:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C29E66E0EF;
	Mon, 25 Nov 2019 10:05:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62AF06E0EF
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2019 10:05:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19327109-1500050 for multiple; Mon, 25 Nov 2019 10:05:10 +0000
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191115160546.896305-2-chris@chris-wilson.co.uk>
References: <20191115160546.896305-1-chris@chris-wilson.co.uk>
 <20191115160546.896305-2-chris@chris-wilson.co.uk>
Message-ID: <157467630510.2314.7834296122709280708@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 25 Nov 2019 10:05:05 +0000
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Allow userspace to specify
 ringsize on construction
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTEtMTUgMTY6MDU6NDUpCj4gTm8gZ29vZCByZWFz
b24gd2h5IHdlIG11c3QgYWx3YXlzIHVzZSBhIHN0YXRpYyByaW5nc2l6ZSwgc28gbGV0Cj4gdXNl
cnNwYWNlIHNlbGVjdCBvbmUgZHVyaW5nIGNvbnN0cnVjdGlvbi4KCkRvIHdlIGhhdmUgYW55IG5l
d3Mgb24gd2hldGhlciB1c2Vyc3BhY2UgaGFzIG1hdGVyaWFsaXNlZCBmb3IgdGhpcyB5ZXQ/CgpJ
dCdzIGxpdGVyYWxseSBqdXN0CgotLS0gYS9ydW50aW1lL29zX2ludGVyZmFjZS9saW51eC9kcm1f
bmVvLmNwcAorKysgYi9ydW50aW1lL29zX2ludGVyZmFjZS9saW51eC9kcm1fbmVvLmNwcApAQCAt
MTgyLDYgKzE4MiwxNSBAQCB2b2lkIHNldE5vblBlcnNpc3RlbnQodWludDMyX3QgZHJtQ29udGV4
dElkKSB7CiAgICAgaW9jdGwoRFJNX0lPQ1RMX0k5MTVfR0VNX0NPTlRFWFRfU0VUUEFSQU0sICZn
Y3ApOwogfQoKK3ZvaWQgc2V0TWF4UmluZ1NpemUodWludDMyX3QgZHJtQ29udGV4dElkKSB7Cisg
ICAgZHJtX2k5MTVfZ2VtX2NvbnRleHRfcGFyYW0gZ2NwID0ge307CisgICAgZ2NwLmN0eF9pZCA9
IGRybUNvbnRleHRJZDsKKyAgICBnY3AucGFyYW0gPSAweGM7IC8qIEk5MTVfQ09OVEVYVF9QQVJB
TV9SSU5HU0laRTsgKi8KKyAgICBnY3AudmFsdWUgPSAxMjggPDwgMTI7IC8qIG1heGltdW0gcmlu
ZyBzaXplIGlzIDUxMktpQiwgb3IgMTI4IHBhZ2VzICovCisKKyAgICBpb2N0bChEUk1fSU9DVExf
STkxNV9HRU1fQ09OVEVYVF9TRVRQQVJBTSwgJmdjcCk7Cit9CisKIHVpbnQzMl90IERybTo6Y3Jl
YXRlRHJtQ29udGV4dCgpIHsKICAgICBkcm1faTkxNV9nZW1fY29udGV4dF9jcmVhdGUgZ2NjID0g
e307CiAgICAgYXV0byByZXRWYWwgPSBpb2N0bChEUk1fSU9DVExfSTkxNV9HRU1fQ09OVEVYVF9D
UkVBVEUsICZnY2MpOwpAQCAtMTkwLDYgKzE5OSw5IEBAIHVpbnQzMl90IERybTo6Y3JlYXRlRHJt
Q29udGV4dCgpIHsKICAgICAvKiBlbmFibGUgY2xlYW51cCBvZiByZXNvdXJjZXMgb24gcHJvY2Vz
cyB0ZXJtaW5hdGlvbiAqLwogICAgIHNldE5vblBlcnNpc3RlbnQoZ2NjLmN0eF9pZCk7CgorICAg
IC8qIEJpZyByaW5ncyBmb3Igc2lsbHkgYW1vdW50cyBvZiBub24tYmxvY2tpbmcgd29yayEgKi8K
KyAgICBzZXRNYXhSaW5nU2l6ZShnY2MuY3R4X2lkKTsKCndpdGggc29tZSBqdXN0aWZpY2F0aW9u
LgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
