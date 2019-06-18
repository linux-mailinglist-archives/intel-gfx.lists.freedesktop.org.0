Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1F44A485
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 16:55:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC8B36E1C0;
	Tue, 18 Jun 2019 14:55:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C64F56E1C0
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 14:55:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16942177-1500050 for multiple; Tue, 18 Jun 2019 15:55:09 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190618142108.9978-1-ville.syrjala@linux.intel.com>
 <20190618142108.9978-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20190618142108.9978-4-ville.syrjala@linux.intel.com>
Message-ID: <156086971035.31375.13192884909397662143@skylake-alporthouse-com>
Date: Tue, 18 Jun 2019 15:55:10 +0100
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Initialize drm_driver vblank
 funcs at compile time
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDE5LTA2LTE4IDE1OjIxOjA4KQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gTW92ZSB0aGUg
LmdldF92YmxhbmtfdGltZXN0YW1wKCkgYW5kIC5nZXRfc2Nhbm91dF9wb3NpdGlvbigpCj4gaW5p
dGlhbGl6YXRpb24gdG8gaGFwcGVuIGF0IGNvbXBpbGUgdGltZS4gTm8gcG9pbnQgaW4gZGVsYXlp
bmcKPiBpdCBzaW5jZSB3ZSBhbHdheXMgYXNzaWduIHRoZSBzYW1lIGZ1bmN0aW9ucy4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIHwgIDMgKysrCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgfCAxMSArKysrLS0tLS0tLQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5oIHwgIDUgKysrKysKPiAgMyBmaWxlcyBjaGFuZ2Vk
LCAxMiBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuYwo+IGluZGV4IGVhNmIwNjEwOWQ1YS4uMTc4ZTk4NzJiOTA1IDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2Rydi5jCj4gQEAgLTMyMTYsNiArMzIxNiw5IEBAIHN0YXRpYyBzdHJ1Y3QgZHJtX2Ry
aXZlciBkcml2ZXIgPSB7Cj4gICAgICAgICAuZ2VtX3ByaW1lX2V4cG9ydCA9IGk5MTVfZ2VtX3By
aW1lX2V4cG9ydCwKPiAgICAgICAgIC5nZW1fcHJpbWVfaW1wb3J0ID0gaTkxNV9nZW1fcHJpbWVf
aW1wb3J0LAo+ICAKPiArICAgICAgIC5nZXRfdmJsYW5rX3RpbWVzdGFtcCA9IGRybV9jYWxjX3Zi
bHRpbWVzdGFtcF9mcm9tX3NjYW5vdXRwb3MsCj4gKyAgICAgICAuZ2V0X3NjYW5vdXRfcG9zaXRp
b24gPSBpOTE1X2dldF9jcnRjX3NjYW5vdXRwb3MsCgpPbmUgbWlnaHQgc3VnZ2VzdCBpbnRlbF9n
ZXRfY3J0Y19zY2Fub3V0cG9zLCBhbmQgYSBwdXNoIGZvciBpdCB0byBiZQpwYXNzZWQgZHJtX2Ny
dGMgaW5zdGVhZCBvZiBkZXYgKyBwaXBlLgoKUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
