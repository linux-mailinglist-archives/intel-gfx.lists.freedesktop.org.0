Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C89BD18999
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2019 14:22:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE31D89BF8;
	Thu,  9 May 2019 12:22:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9221589BF8
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2019 12:22:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 May 2019 05:22:01 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 09 May 2019 05:21:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 May 2019 15:21:59 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 May 2019 15:21:51 +0300
Message-Id: <20190509122159.24376-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 0/8] drm/i915: GTT remapping for display
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkhl
cmUncyBhIG5ldyB2ZXJzaW9uIG9mIHRoZSBHVFQgcmVtYXBwaW5nIHNlcmllcy4KCkNoYW5nZXMg
c2luY2UgbGFzdCB0aW1lOgotIFNwbGl0IHVwIHNvbWUgY29kZSBzaHVmZmxpbmcgZnJvbSB0aGUg
bWFpbiBwYXRjaAotIE1hZGUgdGhlIGR1bWIgc3RyaWRlIGFsaWdubWVudCBwcm9wZXIKLSBGaW5p
c2hlZCB0aGUgdGVzdCBjYXNlCi0gRml4ZWQgYSBmZXcgYnVncyBmb3VuZCBpbiB0ZXN0aW5nCgpU
aGUgb25lIHRoaW5nIEkgZGlkbid0IGRvIGlzIG1ha2UgcmVtYXBwaW5nIGFsd2F5cyBoYXBwZW4u
ClRoZSBtYWluIHJlYXNvbiBpcyB0aGF0IGl0IHdvdWxkIGJyZWFrIEZCQywgYW5kIEkgZG9uJ3QK
d2FudCB0byByZXdyaXRlIHRoZSBGQkMgY29kZSByaWdodCBub3cuCgpUZXN0LXdpdGg6IDIwMTkw
NTA4MTYyOTA2LjIwODA4LTEtdmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20KClZpbGxlIFN5
cmrDpGzDpCAoOCk6CiAgZHJtL2k5MTU6IEFkZCBhIG5ldyAicmVtYXBwZWQiIGd0dF92aWV3CiAg
ZHJtL2k5MTUvc2VsZnRlc3RzOiBBZGQgbW9jayBzZWxmdGVzdCBmb3IgcmVtYXBwZWQgdm1hcwog
IGRybS9pOTE1L3NlbGZ0ZXN0czogQWRkIGxpdmUgdm1hIHNlbGZ0ZXN0CiAgZHJtL2k5MTU6IFNo
dWZmbGUgc3RyaWRlIGNoZWNraW5nIGNvZGUgYXJvdW5kCiAgZHJtL2k5MTU6IE92ZXJjb21lIGRp
c3BsYXkgZW5naW5lIHN0cmlkZSBsaW1pdHMgdmlhIEdUVCByZW1hcHBpbmcKICBkcm0vaTkxNTog
QWxpZ24gZHVtYiBidWZmZXIgc3RyaWRlIHRvIDRrIHRvIGFsbG93IGZvciBndHQgcmVtYXBwaW5n
CiAgZHJtL2k5MTU6IEJ1bXAgZmIgc3RyaWRlIGxpbWl0IHRvIDEyOEtpQiBmb3IgZ2VuNCsgYW5k
IDI1NktpQiBmb3IKICAgIGdlbjcrCiAgZHJtL2k5MTU6IEJ1bXAgZ2VuNysgZmIgc2l6ZSBsaW1p
dHMgdG8gMTZreDE2awoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jICAgICAg
ICAgICB8ICAxMiArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAg
ICAgfCAgIDQgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyAgICAgICAgICAgICAg
IHwgIDQzICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyAgICAgICAgICAg
fCAgODggKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmggICAgICAgICAg
IHwgIDI1ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jICAgICAgICAgICAgICAg
fCAgMTAgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmggICAgICAgICAgICAgICB8
ICAgMyArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMgICAgICAgICAgfCA0
NTMgKysrKysrKysrKysrKystLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5
LmggICAgICAgICAgfCAgIDQgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHJ2LmggICAg
ICAgICAgICAgIHwgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Nwcml0ZS5jICAg
ICAgICAgICB8ICAzNCArLQogLi4uL2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2xpdmVfc2VsZnRl
c3RzLmggIHwgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3ZtYS5j
ICAgICB8IDI0NiArKysrKysrKystCiAxMyBmaWxlcyBjaGFuZ2VkLCA3OTggaW5zZXJ0aW9ucygr
KSwgMTI2IGRlbGV0aW9ucygtKQoKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
