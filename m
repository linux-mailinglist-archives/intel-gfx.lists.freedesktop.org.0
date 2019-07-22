Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2224A70D3B
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 01:21:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE8CC89F41;
	Mon, 22 Jul 2019 23:21:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E21C89F41
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2019 23:21:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jul 2019 16:21:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,296,1559545200"; d="scan'208";a="188709281"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga001.fm.intel.com with ESMTP; 22 Jul 2019 16:21:14 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Jul 2019 16:20:39 -0700
Message-Id: <20190722232048.9970-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/9] uC fw path unification + misc clean-up
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

VGhlIG1haW4gYWltIG9mIHRoaXMgcGF0Y2ggc2VyaWVzIGlzIHVuaWZ5IHRoZSBndWNfZncgYW5k
IGh1Y19mdwpoYW5kbGluZyBwYXRocyBhbmQgaW1wcm92ZSB0aGUgcmVsYXRlZCBzdGF0ZSB0cmFj
a2luZy4gVWx0aW1hdGVseSwgSSdkCmxpa2UgdG8gcmVhY2ggdGhlIHBvaW50IHdoZXJlIHdlIGNh
biBraWxsIHRoZSBpbnRlbF9ndWNfZncgYW5kCmludGVsX2h1Y19mdyBmaWxlcyBhbmQganVzdCBr
ZWVwIHRoZSBmZXcgZGlmZmVyZW5jZXMgaW4gb3RoZXIgZmlsZXMuIE5vdAp5ZXQgZ29pbmcgdGhh
dCBmYXIgaW4gdGhpcyBzZXJpZXMgdGhvdWdoLgoKQnVuZGxlZCBpbiBpcyBzb21lIG1vcmUgZ3Qt
ZmljYXRpb24gYW5kIG1pbm9yIGNsZWFuLXVwLgoKQ2M6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hh
bC53YWpkZWN6a29AaW50ZWwuY29tPgpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+CgpEYW5pZWxlIENlcmFvbG8gU3B1cmlvICg5KToKICBkcm0vaTkxNS91YzogR3Qt
ZnkgdWMgcmVzZXQKICBkcm0vaTkxNS91YzogVW5pZnkgdUMgcGxhdGZvcm0gY2hlY2sKICBkcm0v
aTkxNS91YzogVW5pZnkgdUMgRlcgc2VsZWN0aW9uCiAgZHJtL2k5MTUvdWM6IFNhbml0aXplIHVD
IHdoZW4gR1QgaXMgc2FuaXRpemVkCiAgZHJtL2k5MTUvdWM6IFVuaWZ5IHVjX2Z3IHN0YXR1cyB0
cmFja2luZwogIGRybS9pOTE1L3VjOiBNb3ZlIHhmZXIgcnNhIGxvZ2ljIHRvIGNvbW1vbiBmdW5j
dGlvbgogIGRybS9pOTE1L2h1YzogQ29weSBodWMgcnNhIG9ubHkgb25jZQogIGRybS9pOTE1L3Vj
OiBQbHVtYiB0aGUgZ3QgdGhyb3VnaCBmd191cGxvYWQKICBkcm0vaTkxNS91YzogVW5pZnkgdUMg
ZmlybXdhcmUgdXBsb2FkCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMg
ICAgfCAgIDEgLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uYyAgICAgfCAg
IDIgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYyAgICAgfCAgIDIgKy0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19mdy5jIHwgMjI5ICsrKysrKy0t
LS0tLS0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2h1Yy5jICAg
IHwgIDI1ICsrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjLmggICAgfCAg
IDEgLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjX2Z3LmMgfCAxODQgKysr
LS0tLS0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMgICAg
IHwgICA4ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jICB8IDIy
MCArKysrKysrKysrKysrKy0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVs
X3VjX2Z3LmggIHwgIDg0ICsrKysrLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9zZWxm
dGVzdF9ndWMuYyB8ICAgNCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMg
ICAgICAgfCAgIDYgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAg
IHwgIDE1ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jICAgICB8ICAg
NCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyAgICAgICAgICAgfCAgIDIgKy0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgICAgICAgICAgIHwgICA0ICstCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oICB8ICAgMiArLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfcG0uYyAgICAgICAgICAgfCAgIDQgKy0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX3dvcGNtLmMgICAgICAgIHwgICA0ICstCiAxOSBmaWxlcyBjaGFuZ2VkLCAz
MzAgaW5zZXJ0aW9ucygrKSwgNDcxIGRlbGV0aW9ucygtKQoKLS0gCjIuMjIuMAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
