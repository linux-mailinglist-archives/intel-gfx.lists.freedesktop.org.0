Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE8D42ED0
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jun 2019 20:38:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9EB28981B;
	Wed, 12 Jun 2019 18:38:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72FF58981B
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jun 2019 18:38:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jun 2019 11:38:06 -0700
X-ExtLoop1: 1
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga005.fm.intel.com with ESMTP; 12 Jun 2019 11:38:06 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Jun 2019 11:37:39 -0700
Message-Id: <20190612183748.7693-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/8] RPM Encapsulation
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

UmViYXNlZCBzZXJpZXMgYWZ0ZXIgdGhlIGRpc3BsYXkgcG93ZXIgY29kZSBoYXMgYmVlbiBzcGxp
dCBvdXQuCk1vc3RseSB0aGUgc2FtZSBhcyBWMSwganVzdCBzbWFsbCBmaXhlcyBiYXNlZCBvbiBy
ZXZpZXcgY29tbWVudHMKYW5kIENJIHJlc3VsdHMuIFRoZSBsYXN0IHBhdGNoIGlzIG5ldy4KClRo
ZSBzZXJpZXMgZ3Jvd3MgdGhlIGNvZGUgYSBiaXQsIGJ1dCBJIGJlbGlldmUgaXQgaXMgd29ydGgg
aXQgZm9yIHRoZQpleHRyYSBsb2dpY2FsIGVuY2Fwc3VsYXRpb24uIFdpdGggYWxsIGRlYnVnIG9w
dGlvbnMgZGlzYWJsZWQ6CgphZGQvcmVtb3ZlOiAwLzAgZ3Jvdy9zaHJpbms6IDkyLzE0IHVwL2Rv
d246IDEyMjUvLTE2MiAoMTA2MykKVG90YWw6IEJlZm9yZT0xMjY2ODkzLCBBZnRlcj0xMjY3OTU2
LCBjaGcgKzAuMDglCgpEYW5pZWxlIENlcmFvbG8gU3B1cmlvICg4KToKICBkcm0vaTkxNTogcHJl
ZmVyIGk5MTVfcnVudGltZV9wbSBpbiBpbnRlbF9ydW50aW1lIGZ1bmN0aW9uCiAgZHJtL2k5MTU6
IFJlbW92ZSBycG0gYXNzZXJ0cyB0aGF0IHVzZSBpOTE1CiAgZHJtL2k5MTU6IG1ha2UgZW5hYmxl
L2Rpc2FibGUgcnBtIGFzc2VydCBmdW5jdGlvbiB1c2UgdGhlIHJwbQogICAgc3RydWN0dXJlCiAg
ZHJtL2k5MTU6IG1vdmUgYW5kIHJlbmFtZSBpOTE1X3J1bnRpbWVfcG0KICBkcm0vaTkxNTogbW92
ZSBhIGZldyBtb3JlIGZ1bmN0aW9ucyB0byBhY2NlcHQgdGhlIHJwbSBzdHJ1Y3R1cmUKICBkcm0v
aTkxNTogdXBkYXRlIHJwbV9nZXQvcHV0IHRvIHVzZSB0aGUgcnBtIHN0cnVjdHVyZQogIGRybS9p
OTE1OiB1cGRhdGUgd2l0aF9pbnRlbF9ydW50aW1lX3BtIHRvIHVzZSB0aGUgcnBtIHN0cnVjdHVy
ZQogIGRybS9pOTE1OiBtYWtlIGludGVsX3dha2VyZWYgd29yayBvbiB0aGUgcnBtIHN0cnVjdAoK
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMgICAgICB8ICAxMSArLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jICAgIHwgICA0ICstCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc2hyaW5rZXIuYyAgfCAgMTIgKy0KIC4u
Li9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9odWdlX3BhZ2VzLmMgICB8ICAgNCArLQogLi4u
L2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jb2hlcmVuY3kuYyAgIHwgICA0ICstCiAuLi4v
ZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMgfCAgMTggKy0KIC4uLi9k
cm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX21tYW4uYyAgICB8ICAgNCArLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5jICAgICAgIHwgICAyICstCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyAgICAgfCAgIDggKy0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wbS5jICAgICB8ICAgNCArLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uYyAgICAgICAgIHwgICA0ICstCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9oYW5nY2hlY2suYyAgICAgfCAgIDQgKy0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMgICAgICAgICB8ICAgNiArLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfaGFuZ2NoZWNrLmMgIHwgIDEyICstCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9zZWxmdGVzdF9scmMuYyAgICAgICAgfCAgMzYgKystLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfcmVzZXQuYyAgICAgIHwgICA2ICstCiAuLi4vZ3B1L2RybS9p
OTE1L2d0L3NlbGZ0ZXN0X3dvcmthcm91bmRzLmMgICAgfCAgMTYgKy0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d2dC9hcGVydHVyZV9nbS5jICAgICAgICB8ICAxNyArLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3Z0L2d2dC5oICAgICAgICAgICAgICAgIHwgICA0ICstCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndnQvc2NoZWRfcG9saWN5LmMgICAgICAgfCAgIDQgKy0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d2dC9zY2hlZHVsZXIuYyAgICAgICAgICB8ICAgNCArLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kZWJ1Z2ZzLmMgICAgICAgICAgIHwgIDc1ICsrKy0tLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmMgICAgICAgICAgICAgICB8ICA2MiArKystLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgICB8ICA1MCArLS0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9nZW0uYyAgICAgICAgICAgICAgIHwgIDE5ICstCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dlbV9mZW5jZV9yZWcuYyAgICAgfCAgIDYgKy0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jICAgICAgICAgICB8ICAxNCArLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9pcnEuYyAgICAgICAgICAgICAgIHwgIDM4ICsrLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcGVyZi5jICAgICAgICAgICAgICB8ICAgNiArLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9wbXUuYyAgICAgICAgICAgICAgIHwgIDE1ICstCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3N5c2ZzLmMgICAgICAgICAgICAgfCAgMTQgKy0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfdm1hLmMgICAgICAgICAgICAgICB8ICAgMiArLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfY3NyLmMgICAgICAgICAgICAgIHwgICAyICstCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9kaXNwbGF5LmMgICAgICAgICAgfCAgMTIgKy0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyAgICB8ICAzOSArKy0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9kcnYuaCAgICAgICAgICAgICAgfCAxMDUgLS0tLS0tLS0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfZmJkZXYuYyAgICAgICAgICAgIHwgICA2ICstCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9ndWNfbG9nLmMgICAgICAgICAgfCAgIDYgKy0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2hvdHBsdWcuYyAgICAgICAgICB8ICAgNCArLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfaHVjLmMgICAgICAgICAgICAgIHwgICAyICstCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9wYW5lbC5jICAgICAgICAgICAgfCAgIDIgKy0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX3BtLmMgICAgICAgICAgICAgICB8ICAgOCArLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfcnVudGltZV9wbS5jICAgICAgIHwgMTYyICsrKysrKystLS0tLS0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5oICAgICAgIHwgMTkxICsrKysrKysr
KysrKysrKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdWMuYyAgICAgICAgICAgICAg
IHwgICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuYyAgICAgICAgICAg
fCAgMjYgKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuaCAgICAgICAgICAg
fCAgIDQgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dha2VyZWYuYyAgICAgICAgICB8
ICAzMiArLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dha2VyZWYuaCAgICAgICAgICB8
ICAxOCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfYWN0aXZlLmMgIHwg
ICA4ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW0uYyAgICAgfCAg
MTAgKy0KIC4uLi9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfZ2VtX2V2aWN0LmMgICB8ICAg
NiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfZ2VtX2d0dC5jIHwgICA4
ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9yZXF1ZXN0LmMgfCAgMjIg
Ky0KIC4uLi9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfdGltZWxpbmUuYyAgICB8ICAxNiAr
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfdm1hLmMgICAgIHwgICA0ICst
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaW50ZWxfZ3VjLmMgICAgfCAgIDggKy0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pbnRlbF91bmNvcmUuYyB8ICAgNCArLQog
Li4uL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9ja19nZW1fZGV2aWNlLmMgIHwgICA0ICstCiA1
OSBmaWxlcyBjaGFuZ2VkLCA1OTQgaW5zZXJ0aW9ucygrKSwgNjAyIGRlbGV0aW9ucygtKQoKLS0g
CjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
