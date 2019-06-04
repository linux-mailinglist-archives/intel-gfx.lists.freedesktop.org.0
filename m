Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2FEA34B1F
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 16:59:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48C2389686;
	Tue,  4 Jun 2019 14:59:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 730BF89686
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2019 14:59:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2019 07:59:12 -0700
X-ExtLoop1: 1
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by orsmga003.jf.intel.com with ESMTP; 04 Jun 2019 07:59:09 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jun 2019 17:58:03 +0300
Message-Id: <20190604145826.16424-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/23] drm/i915: Fix TypeC port mode switching
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
Cc: Paulo Zanoni <paulo.r.zanoni@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXRtIHdlIHN3aXRjaCB0aGUgVHlwZUMgcG9ydCBtb2RlIHVwb24gcmVjZWl2aW5nIGFuIEhQRCBp
bnRlcnJ1cHQuClRoYXQncyB1bnNhZmUgc2luY2UgdGhlIHBvcnQgY291bGQgYmUgYWN0aXZlIChh
ZnRlciBhIG1vZGVzZXQpIG9yIHRoZXJlCmNvdWxkIGJlIG90aGVyIHVzZXJzIHRoYXQgZGVwZW5k
IG9uIHRoZSBwb3J0IG1vZGUgdG8gc3RheSBmaXhlZC4gVG8gbWFrZQp0aGUgbW9kZSBzd2l0Y2hp
bmcgcm9idXN0IGFkZCBhIFR5cGVDIHBvcnQgbW9kZSByZWZjb3VudGluZyByZWZsZWN0aW5nCnRo
ZSBhY3RpdmUgc3RhdGUgb2YgdGhlIHBvcnQgYW5kIGxvY2tpbmcgZm9yIGFueSBvdGhlciB1c2Vy
cyBvZiBpdAooY29ubmVjdG9yIGRldGVjdGlvbi9BVVggdHJhbnNmZXJzKS4KClRoZSBwb3J0IG1v
ZGUgd2lsbCBiZSByZXNldCBpZiBuZWVkZWQsIHdoZW5ldmVyIHRoZSBUeXBlQyBsb2NrIGlzIHRh
a2VuCmFuZCB0aGUgcG9ydCBpcyBpbmFjdGl2ZS4gRHVyaW5nIGEgbW9kZXNldCByZXNldHRpbmcg
dGhlIHBvcnQgYW5kCnNlbGVjdGluZyB0aGUgcHJvcGVyIFBMTCBmb3IgdGhlIG5ldyBtb2RlIG11
c3QgaGFwcGVuIGR1cmluZyB0aGUgYXRvbWljCmNvbW1pdCBwaGFzZSwgYWZ0ZXIgdGhlIHBvcnQg
YW5kIGl0cyBQTEwgZ290IGRpc2FibGVkLiBGb3IgdGhhdCB3ZSBuZWVkCnRvIHJlc2VydmUgYm90
aCB0aGUgVEJUIGFuZCBNRyBQSFkgUExMcyBmb3IgdGhlIHBvcnQgYW5kIHNlbGVjdCB0aGUKY29y
cmVjdCBvbmUgYWZ0ZXIgdGhlIHBvcnQgbW9kZSBnb3QgcmVzZXQvbG9ja2VkIGRvd24gZm9yIHRo
ZSBkdXJhdGlvbgpvZiB0aGUgcG9ydCdzIGFjdGl2ZSBzdGF0ZS4KClRoZSBwYXRjaHNldCBoYXMg
YSBmZXcgcmVmYWN0b3JpbmdzIGdldHRpbmcgdG8gdGhlIHN0YXRlIGRlc2NyaWJlZCBhYm92ZQpn
cmFkdWFsbHksIHNvIHRoYXQgcmV2aWV3aW5nIHRoZSBhY3R1YWwgY2hhbmdlcyBpcyBzb21ld2hh
dCBlYXNpZXIuIEkKYWxzbyBwdXNoZWQgdGhlIHdob2xlIGxvdCB0byBbMV0uCgpUaGUgcGF0Y2hz
ZXQgYWxzbyBoYXMgYSBmZXcgZml4ZXMgbW9zdGx5IHJlbGF0ZWQgdG8gdGhlIFRCVC1hbHQgbW9k
ZS4KClsxXSBodHRwczovL2dpdGh1Yi5jb20vaWRlYWsvbGludXgvY29tbWl0cy90eXBlYy1tb2Rl
LXN3aXRjaAoKQ2M6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+CkNj
OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KQ2M6IFJvZHJp
Z28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KQ2M6IEFuaW1lc2ggTWFubmEgPGFuaW1l
c2gubWFubmFAaW50ZWwuY29tPgpDYzogUGF1bG8gWmFub25pIDxwYXVsby5yLnphbm9uaUBpbnRl
bC5jb20+CkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
PgpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KQ2M6IEx1Y2FzIERl
IE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpDYzogQW51c2hhIFNyaXZhdHNhIDxh
bnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgpDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4u
bGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KCkltcmUgRGVhayAoMjMpOgogIGRybS9pOTE1L2lj
bDogQWRkIHN1cHBvcnQgdG8gcmVhZCBvdXQgdGhlIFRCVCBQTEwgSFcgc3RhdGUKICBkcm0vaTkx
NTogVHVuZSBkb3duIFdBUk5zIGFib3V0IFRCVCBBVVggcG93ZXIgd2VsbCBlbmFibGluZwogIGRy
bS9pOTE1OiBNb3ZlIHRoZSBUeXBlQyBwb3J0IGhhbmRsaW5nIGNvZGUgdG8gYSBzZXBhcmF0ZSBm
aWxlCiAgZHJtL2k5MTU6IFNhbml0aXplIHRoZSB0ZXJtaW5vbG9neSB1c2VkIGZvciBUeXBlQyBw
b3J0IG1vZGVzCiAgZHJtL2k5MTU6IERvbid0IGVuYWJsZSB0aGUgRERJLUlPIHBvd2VyIGluIHRo
ZSBUeXBlQyBUQlQtYWx0IG1vZGUKICBkcm0vaTkxNTogRml4IHRoZSBUQlQgQVVYIHBvd2VyIHdl
bGwgZW5hYmxpbmcKICBkcm0vaTkxNTogVXNlIHRoZSBjb3JyZWN0IEFVWCBwb3dlciBkb21haW4g
aW4gVHlwZUMgVEJULWFsdCBtb2RlCiAgZHJtL2k5MTU6IFVuaWZ5IHRoZSBUeXBlQyBwb3J0IG5v
dGF0aW9uIGluIGRlYnVnL2Vycm9yIG1lc3NhZ2VzCiAgZHJtL2k5MTU6IEZhY3RvciBvdXQgY29t
bW9uIHBhcnRzIGZyb20gVHlwZUMgcG9ydCBoYW5kbGluZyBmdW5jdGlvbnMKICBkcm0vaTkxNTog
V2FpdCBmb3IgVHlwZUMgUEhZIGNvbXBsZXRlIGZsYWcgdG8gY2xlYXIgaW4gc2FmZSBtb2RlCiAg
ZHJtL2k5MTU6IEhhbmRsZSB0aGUgVENDT0xEIHBvd2VyLWRvd24gZXZlbnQKICBkcm0vaTkxNTog
U2FuaXRpemUgdGhlIFR5cGVDIGNvbm5lY3QvZGV0ZWN0IHNlcXVlbmNlcwogIGRybS9pOTE1OiBG
aXggdGhlIFR5cGVDIHBvcnQgbW9kZSBzYW5pdGl6YXRpb24gZHVyaW5nIGxvYWRpbmcvcmVzdW1l
CiAgZHJtL2k5MTU6IEtlZXAgdGhlIFR5cGVDIHBvcnQgbW9kZSBmaXhlZCBmb3IgZGV0ZWN0L0FV
WCB0cmFuc2ZlcnMKICBkcm0vaTkxNTogU2FuaXRpemUgdGhlIFR5cGVDIEZJQSBsYW5lIGNvbmZp
Z3VyYXRpb24gZGVjb2RpbmcKICBkcm0vaTkxNTogU2FuaXRpemUgdGhlIHNoYXJlZCBEUExMIHJl
c2VydmUvcmVsZWFzZSBpbnRlcmZhY2UKICBkcm0vaTkxNTogU2FuaXRpemUgdGhlIHNoYXJlZCBE
UExMIGZpbmQvcmVmZXJlbmNlIGludGVyZmFjZQogIGRybS9pOTE1L2ljbDogU3BsaXQgZ2V0dGlu
ZyB0aGUgRFBMTHMgdG8gcG9ydCB0eXBlIHNwZWNpZmljIGZ1bmN0aW9ucwogIGRybS9pOTE1L2lj
bDogUmVzZXJ2ZSBhbGwgcmVxdWlyZWQgUExMcyBmb3IgVHlwZUMgcG9ydHMKICBkcm0vaTkxNTog
S2VlcCB0aGUgVHlwZUMgcG9ydCBtb2RlIGZpeGVkIHdoZW4gdGhlIHBvcnQgaXMgYWN0aXZlCiAg
ZHJtL2k5MTU6IEFkZCBzdGF0ZSB2ZXJpZmljYXRpb24gZm9yIHRoZSBUeXBlQyBwb3J0IG1vZGUK
ICBkcm0vaTkxNTogUmVtb3ZlIHVubmVlZGVkIGRpc2Nvbm5lY3QgaW4gVHlwZUMgbGVnYWN5IHBv
cnQgbW9kZQogIGRybS9pOTE1OiBXQVJOIGFib3V0IGludmFsaWQgbGFuZSByZXZlcnNhbCBpbiBU
QlQtYWx0L0RQLWFsdCBtb2RlcwoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlICAgICAg
ICAgICAgICB8ICAgMyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUuaGVhZGVyLXRl
c3QgIHwgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RkaS5jICAgICAgICAgICB8
IDEyMyArKy0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGRpLmggICAgICAgICAgIHwg
ICA3ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYyAgICAgICB8IDE2MCAr
KysrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmggICAgICAgfCAgIDcg
Ky0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyB8IDExMSArKysr
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYyAgICAgICAgICAgIHwgMjQzICstLS0t
LS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmggICAgICAgICAgICB8ICAgMiAt
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcF9tc3QuYyAgICAgICAgfCAgIDYgKwogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHBfbXN0LmggICAgICAgIHwgICA4ICstCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9kcGxsX21nci5jICAgICAgfCA1MjQgKysrKysrKysrKysrKysr
LS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcGxsX21nci5oICAgICAgfCAgMjUg
Ky0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rydi5oICAgICAgICAgICB8ICAyMSArLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfaGRtaS5jICAgICAgICAgIHwgICA3ICsKIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3RjLmMgICAgICAgICAgICB8IDQ2OSArKysrKysrKysrKysr
KysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3RjLmggICAgICAgICAgICB8ICAyNyAr
KwogMTcgZmlsZXMgY2hhbmdlZCwgMTI3MiBpbnNlcnRpb25zKCspLCA0NzIgZGVsZXRpb25zKC0p
CiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdGMuYwogY3Jl
YXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3RjLmgKCi0tIAoyLjE3
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
