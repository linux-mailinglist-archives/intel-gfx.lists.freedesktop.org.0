Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6C4728134E
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Oct 2020 14:59:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 157DF6E94F;
	Fri,  2 Oct 2020 12:59:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F38EF6E94F
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Oct 2020 12:59:43 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Oct 2020 14:58:38 +0200
Message-Id: <20201002125939.50817-1-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/61] drm/i915: Remove obj->mm.lock!
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RmluYWxseSB0aGVyZSwganVzdCBuZWVkcyBhIGxvdCBvZiBmaXhlcyEKCkEgbG90IG9mIHBsYWNl
cyB3ZXJlIGNhbGxpbmcgY2VydGFpbiBjYWxscyB3aXRob3V0IGFueSBvYmplY3QgbG9jayBoZWxk
LAp3aXRoIHRoZSByZW1vdmFsIG9mIG1tLmxvY2sgd2UgY2FuIG5vIGxvbmdlciBkbyB0aGlzLCBh
bmQgaGF2ZSB0byBmaXggaXQuCgpQaHlzIHBhZ2UgaGFuZGxpbmcgaGFzIHRvIGJlIHJlZG9uZSwg
YXMgbm90aGluZyBwcm90ZWN0cyBvYmotPm9wcyBzdHJ1Y3R1cmUsCndlIGhhdmUgdG8gcmVtb3Zl
IHN3YXBwaW5nIGl0LCBhbmQgbW92ZSBIQVNfU1RSVUNUX1BBR0UgdG8gb2JqLT5mbGFncyBpbnN0
ZWFkLgoKVXNlcnBvaW50ZXIgbG9ja2luZyBpcyBpbnZlcnRlZCwgd2hpY2ggd2UgdHJpZWQgdG8g
Z2V0IGFyb3VuZCB3aXRoIGEgd29ya3F1ZXVlLgpXZSBjb3JyZWN0IHRoZSBsb2NrIG9yZGVyaW5n
IGFuZCB0cnkgdG8gYWNxdWlyZSB1c2VycHRyIHBhZ2VzIGZpcnN0IGJlZm9yZSB0YWtpbmcKYW55
IHd3IGxvY2tzLiBUaGlzIGlzIG1vcmUgY29tcGF0aWJsZSB3aXRoIHRoZSBsb2NraW5nIGhpZXJh
cmNoeSwgYXMgd2UgbWF5IG5lZWQKdG8gYWNxdWlyZSBtbWFwX3NlbS4gVGhpcyBicmVha3MgZ2Vt
X2V4ZWNfc2NoZWR1bGVAcGktc2hhcmVkL2Rpc3RpbmN0LWlvdmEsIGFuZApJIGRvbid0IGtub3cg
eWV0IGhvdyB0byBmaXggdGhhdCB0ZXN0LCBvciB3aGV0aGVyIHdlIHNob3VsZCByZW1vdmUgaXQu
CgpXZSBhbHNvIGhhdmUgdG8gZml4IHNvbWUgZG1hLXdvcmssIHRoZSBjb21tYW5kIHBhcnNlciBh
bmQgY2xmbHVzaCBhcmUgc2xpZ2h0bHkKcmV3b3JrZWQgdG8gcHV0IGFsbCBtZW1vcnkgYWxsb2Nh
dGlvbnMgYW5kIHBpbm5pbmcgaW4gdGhlIHByZXBhcmF0aW9uLApzbyB0aGUgd29yayBjb3VsZCBw
YXNzIGZlbmNlIGFubm90YXRpb25zLgoKSW4gYSBmZXcgcGxhY2VzIGxpa2UgaWd0X3NwaW5uZXIg
YW5kIGV4ZWNsaXN0cywgd2UgbW92ZSBzb21lIHBhcnQgb2YgaW5pdCB0byB0aGUKZmlyc3QgcGlu
LCBiZWNhdXNlIHdlIG5lZWQgdG8gaGF2ZSB0aGUgd3cgbG9jayBoZWxkIGFuZCBpdCBtYWtlcyBp
dCBlYXNpZXIgdGhhdCB3YXkuCgpGaW5hbGx5IHdlIGNvbnZlcnQgYWxsIHNlbGZ0ZXN0cywgYW5k
IHRoZW4gcmVtb3ZlIG9iai0+bW0ubG9jayEKCk1hYXJ0ZW4gTGFua2hvcnN0ICg2MCk6CiAgZHJt
L2k5MTU6IE1vdmUgY21kIHBhcnNlciBwaW5uaW5nIHRvIGV4ZWNidWZmZXIKICBkcm0vaTkxNTog
QWRkIG1pc3NpbmcgLUVERUFETEsgaGFuZGxpbmcgdG8gZXhlY2J1ZiBwaW5uaW5nCiAgZHJtL2k5
MTU6IERvIG5vdCBzaGFyZSBod3NwIGFjcm9zcyBjb250ZXh0cyBhbnkgbW9yZSwgdjIuCiAgZHJt
L2k5MTU6IEVuc3VyZSB3ZSBob2xkIHRoZSBvYmplY3QgbXV0ZXggaW4gcGluIGNvcnJlY3RseS4K
ICBkcm0vaTkxNTogQWRkIGdlbSBvYmplY3QgbG9ja2luZyB0byBtYWR2aXNlLgogIGRybS9pOTE1
OiBNb3ZlIEhBU19TVFJVQ1RfUEFHRSB0byBvYmotPmZsYWdzCiAgZHJtL2k5MTU6IFJld29yayBz
dHJ1Y3QgcGh5cyBhdHRhY2htZW50IGhhbmRsaW5nCiAgZHJtL2k5MTU6IENvbnZlcnQgaTkxNV9n
ZW1fb2JqZWN0X2F0dGFjaF9waHlzKCkgdG8gd3cgbG9ja2luZwogIGRybS9pOTE1OiBtYWtlIGxv
Y2tkZXAgc2xpZ2h0bHkgaGFwcGllciBhYm91dCBleGVjYnVmLgogIGRybS9pOTE1OiBEaXNhYmxl
IHVzZXJwdHIgcHJlYWQvcHdyaXRlIHN1cHBvcnQuCiAgZHJtL2k5MTU6IE5vIGxvbmdlciBhbGxv
dyBleHBvcnRpbmcgdXNlcnB0ciB0aHJvdWdoIGRtYS1idWYKICBkcm0vaTkxNTogUmVqZWN0IG1v
cmUgaW9jdGxzIGZvciB1c2VycHRyCiAgZHJtL2k5MTU6IFJlamVjdCBVTlNZTkNIUk9OSVpFRCBm
b3IgdXNlcnB0cgogIGRybS9pOTE1OiBGaXggdXNlcnB0ciBzbyB3ZSBkbyBub3QgaGF2ZSB0byB3
b3JyeSBhYm91dCBvYmotPm1tLmxvY2sKICBkcm0vaTkxNTogRmxhdHRlbiBvYmotPm1tLmxvY2sK
ICBkcm0vaTkxNTogUGluIHRpbWVsaW5lIG1hcCBhZnRlciBmaXJzdCB0aW1lbGluZSBwaW4uCiAg
ZHJtL2k5MTU6IFBvcHVsYXRlIGxvZ2ljYWwgY29udGV4dCBkdXJpbmcgZmlyc3QgcGluLgogIGRy
bS9pOTE1OiBNYWtlIHJpbmcgc3VibWlzc2lvbiBjb21wYXRpYmxlIHdpdGggb2JqLT5tbS5sb2Nr
IHJlbW92YWwuCiAgZHJtL2k5MTU6IEhhbmRsZSB3dyBsb2NraW5nIGluIGluaXRfc3RhdHVzX3Bh
Z2UKICBkcm0vaTkxNTogUmV3b3JrIGNsZmx1c2ggdG8gd29yayBjb3JyZWN0bHkgd2l0aG91dCBv
YmotPm1tLmxvY2suCiAgZHJtL2k5MTU6IFBhc3Mgd3cgY3R4IHRvIGludGVsX3Bpbl90b19kaXNw
bGF5X3BsYW5lCiAgZHJtL2k5MTU6IEFkZCBvYmplY3QgbG9ja2luZyB0byB2bV9mYXVsdF9jcHUK
ICBkcm0vaTkxNTogTW92ZSBwaW5uaW5nIHRvIGluc2lkZSBlbmdpbmVfd2FfbGlzdF92ZXJpZnko
KQogIGRybS9pOTE1OiBUYWtlIHJlc2VydmF0aW9uIGxvY2sgYXJvdW5kIGk5MTVfdm1hX3Bpbi4K
ICBkcm0vaTkxNTogTWFrZSBpbnRlbF9pbml0X3dvcmthcm91bmRfYmIgbW9yZSBjb21wYXRpYmxl
IHdpdGggd3cKICAgIGxvY2tpbmcuCiAgZHJtL2k5MTU6IE1ha2UgX19lbmdpbmVfdW5wYXJrKCkg
Y29tcGF0aWJsZSB3aXRoIHd3IGxvY2tpbmcuCiAgZHJtL2k5MTU6IFRha2Ugb2JqIGxvY2sgYXJv
dW5kIHNldF9kb21haW4gaW9jdGwKICBkcm0vaTkxNTogRGVmZXIgcGluIGNhbGxzIGluIGJ1ZmZl
ciBwb29sIHVudGlsIGZpcnN0IHVzZSBieSBjYWxsZXIuCiAgZHJtL2k5MTU6IEZpeCBwcmVhZC9w
d3JpdGUgdG8gd29yayB3aXRoIG5ldyBsb2NraW5nIHJ1bGVzLgogIGRybS9pOTE1OiBGaXggd29y
a2Fyb3VuZHMgc2VsZnRlc3QsIHBhcnQgMQogIGRybS9pOTE1OiBBZGQgaWd0X3NwaW5uZXJfcGlu
KCkgdG8gYWxsb3cgZm9yIHd3IGxvY2tpbmcgYXJvdW5kCiAgICBzcGlubmVyLgogIGRybS9pOTE1
OiBBZGQgd3cgbG9ja2luZyBhcm91bmQgdm1fYWNjZXNzKCkKICBkcm0vaTkxNTogSW5jcmVhc2Ug
d3cgbG9ja2luZyBmb3IgcGVyZi4KICBkcm0vaTkxNTogTG9jayB3dyBpbiB1Y29kZSBvYmplY3Rz
IGNvcnJlY3RseQogIGRybS9pOTE1OiBBZGQgd3cgbG9ja2luZyB0byBkbWEtYnVmIG9wcy4KICBk
cm0vaTkxNTogQWRkIG1pc3Npbmcgd3cgbG9jayBpbiBpbnRlbF9kc2JfcHJlcGFyZS4KICBkcm0v
aTkxNTogRml4IHd3IGxvY2tpbmcgaW4gc2htZW1fY3JlYXRlX2Zyb21fb2JqZWN0CiAgZHJtL2k5
MTU6IFVzZSBhIHNpbmdsZSBwYWdlIHRhYmxlIGxvY2sgZm9yIGVhY2ggZ3R0LgogIGRybS9pOTE1
L3NlbGZ0ZXN0czogUHJlcGFyZSBodWdlX3BhZ2VzIHRlc3RjYXNlcyBmb3Igb2JqLT5tbS5sb2Nr
CiAgICByZW1vdmFsLgogIGRybS9pOTE1L3NlbGZ0ZXN0czogUHJlcGFyZSBjbGllbnQgYmxpdCBm
b3Igb2JqLT5tbS5sb2NrIHJlbW92YWwuCiAgZHJtL2k5MTUvc2VsZnRlc3RzOiBQcmVwYXJlIGNv
aGVyZW5jeSB0ZXN0cyBmb3Igb2JqLT5tbS5sb2NrIHJlbW92YWwuCiAgZHJtL2k5MTUvc2VsZnRl
c3RzOiBQcmVwYXJlIGNvbnRleHQgdGVzdHMgZm9yIG9iai0+bW0ubG9jayByZW1vdmFsLgogIGRy
bS9pOTE1L3NlbGZ0ZXN0czogUHJlcGFyZSBkbWEtYnVmIHRlc3RzIGZvciBvYmotPm1tLmxvY2sg
cmVtb3ZhbC4KICBkcm0vaTkxNS9zZWxmdGVzdHM6IFByZXBhcmUgZXhlY2J1ZiB0ZXN0cyBmb3Ig
b2JqLT5tbS5sb2NrIHJlbW92YWwuCiAgZHJtL2k5MTUvc2VsZnRlc3RzOiBQcmVwYXJlIG1tYW4g
dGVzdGNhc2VzIGZvciBvYmotPm1tLmxvY2sgcmVtb3ZhbC4KICBkcm0vaTkxNS9zZWxmdGVzdHM6
IFByZXBhcmUgb2JqZWN0IHRlc3RzIGZvciBvYmotPm1tLmxvY2sgcmVtb3ZhbC4KICBkcm0vaTkx
NS9zZWxmdGVzdHM6IFByZXBhcmUgb2JqZWN0IGJsaXQgdGVzdHMgZm9yIG9iai0+bW0ubG9jawog
ICAgcmVtb3ZhbC4KICBkcm0vaTkxNS9zZWxmdGVzdHM6IFByZXBhcmUgaWd0X2dlbV91dGlscyBm
b3Igb2JqLT5tbS5sb2NrIHJlbW92YWwKICBkcm0vaTkxNS9zZWxmdGVzdHM6IFByZXBhcmUgY29u
dGV4dCBzZWxmdGVzdCBmb3Igb2JqLT5tbS5sb2NrIHJlbW92YWwKICBkcm0vaTkxNS9zZWxmdGVz
dHM6IFByZXBhcmUgaGFuZ2NoZWNrIGZvciBvYmotPm1tLmxvY2sgcmVtb3ZhbAogIGRybS9pOTE1
L3NlbGZ0ZXN0czogUHJlcGFyZSBleGVjbGlzdHMgZm9yIG9iai0+bW0ubG9jayByZW1vdmFsCiAg
ZHJtL2k5MTUvc2VsZnRlc3RzOiBQcmVwYXJlIG1vY3MgdGVzdHMgZm9yIG9iai0+bW0ubG9jayBy
ZW1vdmFsCiAgZHJtL2k5MTUvc2VsZnRlc3RzOiBQcmVwYXJlIHJpbmcgc3VibWlzc2lvbiBmb3Ig
b2JqLT5tbS5sb2NrIHJlbW92YWwKICBkcm0vaTkxNS9zZWxmdGVzdHM6IFByZXBhcmUgdGltZWxp
bmUgdGVzdHMgZm9yIG9iai0+bW0ubG9jayByZW1vdmFsCiAgZHJtL2k5MTUvc2VsZnRlc3RzOiBQ
cmVwYXJlIGk5MTVfcmVxdWVzdCB0ZXN0cyBmb3Igb2JqLT5tbS5sb2NrCiAgICByZW1vdmFsCiAg
ZHJtL2k5MTUvc2VsZnRlc3RzOiBQcmVwYXJlIG1lbW9yeSByZWdpb24gdGVzdHMgZm9yIG9iai0+
bW0ubG9jawogICAgcmVtb3ZhbAogIGRybS9pOTE1L3NlbGZ0ZXN0czogUHJlcGFyZSBjcyBlbmdp
bmUgdGVzdHMgZm9yIG9iai0+bW0ubG9jayByZW1vdmFsCiAgZHJtL2k5MTUvc2VsZnRlc3RzOiBQ
cmVwYXJlIGd0dCB0ZXN0cyBmb3Igb2JqLT5tbS5sb2NrIHJlbW92YWwKICBkcm0vaTkxNTogRmlu
YWxseSByZW1vdmUgb2JqLT5tbS5sb2NrLgogIGRybS9pOTE1OiBLZWVwIHVzZXJwb2ludGVyIGJp
bmRpbmdzIGlmIHNlcWNvdW50IGlzIHVuY2hhbmdlZAoKVGhvbWFzIEhlbGxzdHLDtm0gKDEpOgog
IGRybS9pOTE1OiBQcmVwYXJlIGZvciBvYmotPm1tLmxvY2sgcmVtb3ZhbAoKIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L01ha2VmaWxlICAgICAgICAgICAgICAgICB8ICAgMSAtCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCAgNzEgKy0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oICB8ICAgMiArLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYyAgICAgIHwgICAyICstCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2LmMgICAgfCAgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfb3ZlcmxheS5jICB8ICAzNCArLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX2NsZmx1c2guYyAgIHwgIDE1ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMgICAgfCAgNjIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9kb21haW4uYyAgICB8ICA1MSArLQogLi4uL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fZXhlY2J1ZmZlci5jICAgIHwgMjEyICsrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fZmVuY2UuYyAgICAgfCAgOTUgLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9pbnRlcm5hbC5jICB8ICAgNiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX2xtZW0uYyAgICAgIHwgICA0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fbW1hbi5jICAgICAgfCAgMzUgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9vYmplY3QuYyAgICB8ICAxMCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX29iamVjdC5oICAgIHwgIDgyICstCiAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9vYmplY3RfYmx0LmMgICAgfCAgIDYgKwogLi4uL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fb2JqZWN0X3R5cGVzLmggIHwgIDIzICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fcGFnZXMuYyAgICAgfCAxMDQgKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fcGh5cy5jICAgICAgfCAgOTUgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9yZWdpb24uYyAgICB8ICAgNCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX3JlZ2lvbi5oICAgIHwgICAzICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fc2htZW0uYyAgICAgfCAgMTggKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9zaHJpbmtlci5jICB8ICAzOSArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X3Nocmlua2VyLmggIHwgICA0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
c3RvbGVuLmMgICAgfCAgMTQgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90
aWxpbmcuYyAgICB8ICAgMiAtCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdXNl
cnB0ci5jICAgfCA4NzkgKysrKysrLS0tLS0tLS0tLS0tCiAuLi4vZHJtL2k5MTUvZ2VtL3NlbGZ0
ZXN0cy9odWdlX2dlbV9vYmplY3QuYyAgfCAgIDQgKy0KIC4uLi9ncHUvZHJtL2k5MTUvZ2VtL3Nl
bGZ0ZXN0cy9odWdlX3BhZ2VzLmMgICB8ICAzOCArLQogLi4uL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9p
OTE1X2dlbV9jbGllbnRfYmx0LmMgIHwgICA4ICstCiAuLi4vaTkxNS9nZW0vc2VsZnRlc3RzL2k5
MTVfZ2VtX2NvaGVyZW5jeS5jICAgfCAgMTggKy0KIC4uLi9kcm0vaTkxNS9nZW0vc2VsZnRlc3Rz
L2k5MTVfZ2VtX2NvbnRleHQuYyB8ICAxMCArLQogLi4uL2RybS9pOTE1L2dlbS9zZWxmdGVzdHMv
aTkxNV9nZW1fZG1hYnVmLmMgIHwgICAyICstCiAuLi4vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVf
Z2VtX2V4ZWNidWZmZXIuYyAgfCAgIDIgKy0KIC4uLi9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5
MTVfZ2VtX21tYW4uYyAgICB8ICAyMSArLQogLi4uL2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkx
NV9nZW1fb2JqZWN0LmMgIHwgICAyICstCiAuLi4vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2Vt
X29iamVjdF9ibHQuYyAgfCAgIDYgKy0KIC4uLi9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVf
Z2VtX3BoeXMuYyAgICB8ICAxMCArLQogLi4uL2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaWd0X2dl
bV91dGlscy5jICAgIHwgICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250
ZXh0X3R5cGVzLmggfCAgMTMgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2lu
ZV9jcy5jICAgICB8ICAzNyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5l
X3BtLmMgICAgIHwgICA0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9nZ3R0LmMg
ICAgICAgICAgfCAgMTAgKy0KIC4uLi9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfYnVmZmVyX3Bv
b2wuYyAgICB8ICA0NyArLQogLi4uL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9idWZmZXJfcG9v
bC5oICAgIHwgICA1ICsKIC4uLi9kcm0vaTkxNS9ndC9pbnRlbF9ndF9idWZmZXJfcG9vbF90eXBl
cy5oICB8ICAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF90eXBlcy5oICAg
ICAgfCAgIDQgLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3R0LmMgICAgICAgICAg
IHwgIDM4ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndHQuaCAgICAgICAgICAg
fCAgIDUgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgICAgICAgICAgIHwg
MTUwICstLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcHBndHQuYyAgICAgICAgIHwg
ICAzICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZW5kZXJzdGF0ZS5jICAgfCAg
IDIgKy0KIC4uLi9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ19zdWJtaXNzaW9uLmMgICB8IDE3
NyArKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF90aW1lbGluZS5jICAgICAgfCAz
OTUgKystLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3RpbWVsaW5lLmggICAg
ICB8ICAgMiArCiAuLi4vZ3B1L2RybS9pOTE1L2d0L2ludGVsX3RpbWVsaW5lX3R5cGVzLmggICAg
fCAgMTUgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgICB8
ICAyNCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvbW9ja19lbmdpbmUuYyAgICAgICAgIHwg
IDIyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9jb250ZXh0LmMgICAgfCAg
IDQgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2VuZ2luZV9jcy5jICB8ICAg
NCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfaGFuZ2NoZWNrLmMgIHwgICA4
ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9scmMuYyAgICAgICAgfCAgMzQg
Ky0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X21vY3MuYyAgICAgICB8ICAgMiAr
LQogLi4uL2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3Jpbmdfc3VibWlzc2lvbi5jICAgIHwgICA0ICst
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF90aW1lbGluZS5jICAgfCAgOTggKy0K
IC4uLi9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3Rfd29ya2Fyb3VuZHMuYyAgICB8IDEwMSArLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2htZW1fdXRpbHMuYyAgICAgICAgIHwgICAyICstCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuYyAgICAgICAgfCAgIDIgKy0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19sb2cuYyAgICB8ICAgNCArLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjLmMgICAgICAgIHwgICAyICstCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jICAgICAgfCAgIDIgKy0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d2dC9kbWFidWYuYyAgICAgICAgICAgICB8ICAgMiArLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuYyAgICAgICAgICAgIHwgIDIwICstCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2NtZF9wYXJzZXIuYyAgICAgICAgfCAxMDQgKy0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyAgICAgICAgICAgfCAgIDQgKy0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgICB8ICAxOCArLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9nZW0uYyAgICAgICAgICAgICAgIHwgMjY0ICsrKy0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgICAgICAgICAgIHwgICAyICstCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X21lbWNweS5jICAgICAgICAgICAgfCAgIDIgKy0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfbWVtY3B5LmggICAgICAgICAgICB8ICAgMiArLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMgICAgICAgICAgICAgIHwgIDU2ICstCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYyAgICAgICAgICAgfCAgIDQgLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmggICAgICAgICAgIHwgIDEwIC0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfc2VsZnRlc3QuaCAgICAgICAgICB8ICAgMiArCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3ZtYS5jICAgICAgICAgICAgICAgfCAgMjYgKy0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfdm1hLmggICAgICAgICAgICAgICB8ICAyMCArLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvc2VsZnRlc3RzL2k5MTVfZ2VtX2d0dC5jIHwgIDk0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9zZWxmdGVzdHMvaTkxNV9yZXF1ZXN0LmMgfCAgMTAgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L3NlbGZ0ZXN0cy9pZ3Rfc3Bpbm5lci5jICB8IDEzNiArKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L3NlbGZ0ZXN0cy9pZ3Rfc3Bpbm5lci5oICB8ICAgNSArCiAuLi4vZHJtL2k5MTUvc2VsZnRlc3Rz
L2ludGVsX21lbW9yeV9yZWdpb24uYyAgfCAgMTggKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3Nl
bGZ0ZXN0cy9tb2NrX3JlZ2lvbi5jICB8ICAgNCArLQogOTMgZmlsZXMgY2hhbmdlZCwgMjAxNSBp
bnNlcnRpb25zKCspLCAyMDA3IGRlbGV0aW9ucygtKQogZGVsZXRlIG1vZGUgMTAwNjQ0IGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9mZW5jZS5jCgoKYmFzZS1jb21taXQ6IDRlOWE3
ZTI4ZWEzNGU0YjE0ZTY2Y2JjNTNmYzAwNGU0YTkzZjUxNjgKLS0gCjIuMjguMAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
