Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B15537004
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 11:36:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05669893D0;
	Thu,  6 Jun 2019 09:36:49 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D1F9893D0
 for <Intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2019 09:36:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jun 2019 02:36:46 -0700
X-ExtLoop1: 1
Received: from ssirotki-mobl3.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.93.246])
 by orsmga006.jf.intel.com with ESMTP; 06 Jun 2019 02:36:45 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu,  6 Jun 2019 10:36:18 +0100
Message-Id: <20190606093639.9372-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/21] Implicit dev_priv removal
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCk1vc3RseSBw
YXRjaGVzIHJld29ya2luZyB0aGUgY29kZSBhbmQgR0VNIGluaXQgcGF0aHMgdG8gcmVtb3ZlIHNv
bWUgaW1wbGljaXQKZGV2X3ByaXYgZGVwZW5kZW5jaWVzIChJOTE1X1JFQUQvSTkxNV9XUklURSks
IHBsdXMgc29tZSBzbWFsbCB0d2Vha3MgdG8gdGlkeQpHRU0gaW5pdCBwYXRocyB0byB1c2UgbW9y
ZSBsb2dpY2FsIGlucHV0IHBhcmFtZXRlcnMgKGVuYWJsZWQgYnkgdGhlIGNvbnZlcnNpb24KdG8g
dW5jb3JlIG1taW8gYWNjZXNzb3JzKS4KCkEgZmV3IHRpbnkgZml4dXBzL3R3ZWFrcyBhcyB3ZWxs
IHdoaWNoIEkgc3BvdHRlZCBieSBkb2luZyB0aGUgY29udmVyc2lvbi4KClR2cnRrbyBVcnN1bGlu
ICgyMSk6CiAgZHJtL2k5MTU6IFJlc2V0IG9ubHkgYWZmZWN0ZWQgZW5naW5lcyB3aGVuIGhhbmRs
aW5nIGVycm9yIGNhcHR1cmUKICBkcm0vaTkxNTogVGlkeSBlbmdpbmUgbWFzayB0eXBlcyBpbiBo
YW5nY2hlY2sKICBkcm0vaTkxNTogTWFrZSBHZW42LzcgUklOR19GQVVMVF9SRUcgYWNjZXNzIGVu
Z2luZSBjZW50cmljCiAgZHJtL2k5MTU6IEV4dHJhY3QgZW5naW5lIGZhdWx0IHJlc2V0IHRvIGEg
aGVscGVyCiAgZHJtL2k5MTU6IE1ha2UgaTkxNV9jbGVhcl9lcnJvcl9yZWdpc3RlcnMgdGFrZSB1
bmNvcmUKICBkcm0vaTkxNTogQ29udmVydCBzb21lIG1vcmUgYml0cyB0byB1c2UgZW5naW5lIG1t
aW8gYWNjZXNzb3JzCiAgZHJtL2k5MTU6IE1ha2UgcmVhZF9zdWJzbGljZV9yZWcgdGFrZSB1bmNv
cmUKICBkcm0vaTkxNTogVGlkeSBpbnRlbF9leGVjbGlzdHNfc3VibWlzc2lvbl9pbml0CiAgZHJt
L2k5MTU6IE1ha2UgaTkxNV9jaGVja19hbmRfY2xlYXJfZmF1bHRzIHRha2UgdW5jb3JlCiAgZHJt
L2k5MTU6IE1vdmUgc2NoZWR1bGVyIGNhcHMgaW5pdCB0byBpOTE1X2dlbV9pbml0CiAgZHJtL2k5
MTU6IFJlbW92ZSBpbXBvc3NpYmxlIHBhdGggZnJvbSBpOTE1X2dlbV9pbml0X3N3aXp6bGluZwog
IGRybS9pOTE1OiBDb252ZXJ0IGk5MTVfZ2VtX2luaXRfc3dpenpsaW5nIHRvIHVuY29yZQogIGRy
bS9pOTE1OiBDb252ZXJ0IGluaXRfdW51c2VkX3JpbmdzIHRvIHVuY29yZQogIGRybS9pOTE1OiBD
b252ZXJ0IGd0IHdvcmthcm91bmRzIHRvIHVuY29yZQogIGRybS9pOTE1OiBDb252ZXJ0IGludGVs
X21vY3NfaW5pdF9sM2NjX3RhYmxlIHRvIHVuY29yZQogIGRybS9pOTE1OiBDb252ZXJ0IGk5MTVf
cHBndHRfaW5pdF9odyB0byB1bmNvcmUKICBkcm0vaTkxNTogQ29uc29saWRhdGUgc29tZSBvcGVu
IGNvZGVkIG1taW8gcm13CiAgZHJtL2k5MTU6IENvbnZlcnQgaTkxNV9nZW1faW5pdF9odyB0byB1
bmNvcmUKICBkcm0vaTkxNTogQ29udmVydCBpbnRlbF92Z3RfKGRlKWJhbGxvb24gdG8gdW5jb3Jl
CiAgZHJtL2k5MTU6IE1ha2UgR3VDIEdHVFQgcmVzZXJ2YXRpb24gd29yayBvbiBnZ3R0CiAgZHJt
L2k5MTU6IFVuZXhwb3J0IGk5MTVfZ2VtX2luaXQvZmluaV9hbGlhc2luZ19wcGd0dAoKIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZS5oICAgICAgfCAgMTggKysrCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyAgIHwgIDIyICstLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfaGFuZ2NoZWNrLmMgICB8ICAgNiArLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgICAgICAgICB8ICAzOCArKy0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jICAgICAgICB8ICAyMCArKy0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX21vY3MuaCAgICAgICAgfCAgIDMgKy0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3Jlc2V0LmMgICAgICAgfCAgMjEgKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9yZXNldC5oICAgICAgIHwgICA0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF93b3JrYXJvdW5kcy5jIHwgIDEwICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF93b3JrYXJvdW5kcy5oIHwgICA2ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5jICAgICAgICAgICAgIHwgICA2ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5o
ICAgICAgICAgICAgIHwgICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jICAg
ICAgICAgICAgIHwgMTQwICsrKysrKysrKystLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dlbV9ndHQuYyAgICAgICAgIHwgMTYzICsrKysrKysrKysrLS0tLS0tLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuaCAgICAgICAgIHwgICA3ICstCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jICAgICAgIHwgICA0ICstCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgIHwgICAyICstCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3ZncHUuYyAgICAgICAgICAgIHwgIDI0ICstLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV92Z3B1LmggICAgICAgICAgICB8ICAgNCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZ3VjLmMgICAgICAgICAgICB8ICAxOCArLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2d1Yy5oICAgICAgICAgICAgfCAgIDYgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2d1Y19zdWJtaXNzaW9uLmMgfCAgIDQgKy0KIDIyIGZpbGVzIGNoYW5nZWQsIDI5OCBpbnNlcnRp
b25zKCspLCAyMzAgZGVsZXRpb25zKC0pCgotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
