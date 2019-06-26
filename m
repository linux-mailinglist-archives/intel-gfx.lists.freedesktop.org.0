Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45FB1569A9
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 14:47:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCBA06E416;
	Wed, 26 Jun 2019 12:47:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 771666E40E
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 12:47:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17031101-1500050 for multiple; Wed, 26 Jun 2019 13:46:49 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190626123826.39760-1-michal.wajdeczko@intel.com>
References: <20190626123826.39760-1-michal.wajdeczko@intel.com>
Message-ID: <156155320544.2637.2792208469247178449@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 26 Jun 2019 13:46:45 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Move OA files to separate folder
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA2LTI2IDEzOjM4OjI2KQo+IE9BIGZpbGVz
IGxvb2sgdG8gYmUgYXV0by1nZW5lcmF0ZWQgc28gd2UgY2FuIGtlZXAgdGhlbSBhbGwgaW4KPiBk
ZWRpY2F0ZWQgc3ViZGlyZWN0b3J5LgoKVGhlIHF1ZXN0aW9uIEkgY291bGRuJ3QgYW5zd2VyIHdh
cyBob3cgY291cGxlZCBpbnRvIHRoZSBHRU0gYXBpIGlzIHRoZQppOTE1X3BlcmYgaW9jdGwuIElz
IHRoZSBHRU0gY29udGV4dCBmaWx0ZXJpbmcgYW4gYWRqdW5jdCBvciBjb3JlPyBUaGUKbW92ZSBt
YWtlcyBzZW5zZSwgYnV0IEkgY291bGRuJ3QgZGVjaWRlIGlmIGl0IHNob3VsZCBiZSBnZW0vb2Eg
aW5zdGVhZC4KIAo+IFNpZ25lZC1vZmYtYnk6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpk
ZWN6a29AaW50ZWwuY29tPgo+IENjOiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVsLmcubGFuZHdl
cmxpbkBpbnRlbC5jb20+Cj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgo+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgoKPiAtLS0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUgICAgICAgICAgICAgICAgIHwgMzYgKysrKysr
KysrKy0tLS0tLS0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyAgICAgICAg
ICAgICAgfCAyOCArKysrKysrLS0tLS0tLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvb2EvTWFr
ZWZpbGUgICAgICAgICAgICAgIHwgIDAKCk9rLCBzbyB5b3UgY2hvc2Ugbm90IHRvIGhvb2sgdXAg
dGhlIHN0YW5kYWxvbmUgaGVhZGVyIHRlc3QgKHRvIGJlCnJlcGxhY2VkIGJ5IGJ1aWx0aW4ga2J1
aWxkIG1hZ2ljKSAtLSBpaXJjLCBKYW5pIHNhaWQgdGhlIGF1dG9nZW5lcmF0ZWQKaGVhZGVycyB3
ZXJlIG5vdCBzdGFuZGFsb25lLiBPaCB3ZWxsLgoKQWNrZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
