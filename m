Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F006959DDE
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 16:36:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A67216E931;
	Fri, 28 Jun 2019 14:36:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E99216E931
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2019 14:36:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jun 2019 07:36:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,428,1557212400"; d="scan'208";a="165079305"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by orsmga003.jf.intel.com with ESMTP; 28 Jun 2019 07:36:39 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jun 2019 17:36:12 +0300
Message-Id: <20190628143635.22066-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 00/23] drm/i915: Fix TypeC port mode switching
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

VGhpcyBpcyB2MyBvZiBbMV0gYWRkcmVzc2luZyB0aGUgY29tbWVudHMgZnJvbSBWaWxsZSBhbmQg
YWRkaW5nIHRoZSBSLWIKbGluZXMgZXZlcnl3aGVyZS4KClsxXSBodHRwczovL3BhdGNod29yay5m
cmVlZGVza3RvcC5vcmcvc2VyaWVzLzYxNTkwLyNyZXYzCgpDYzogTWFuYXNpIE5hdmFyZSA8bWFu
YXNpLmQubmF2YXJlQGludGVsLmNvbT4KQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uu
c291emFAaW50ZWwuY29tPgpDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29t
PgpDYzogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+CkNjOiBQYXVsbyBa
YW5vbmkgPHBhdWxvLnIuemFub25pQGludGVsLmNvbT4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0
dGVyQGZmd2xsLmNoPgpDYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5j
b20+CkNjOiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+CkNjOiBN
YWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgoKSW1y
ZSBEZWFrICgyMyk6CiAgZHJtL2k5MTUvaWNsOiBBZGQgc3VwcG9ydCB0byByZWFkIG91dCB0aGUg
VEJUIFBMTCBIVyBzdGF0ZQogIGRybS9pOTE1OiBUdW5lIGRvd24gV0FSTnMgYWJvdXQgVEJUIEFV
WCBwb3dlciB3ZWxsIGVuYWJsaW5nCiAgZHJtL2k5MTU6IE1vdmUgdGhlIFR5cGVDIHBvcnQgaGFu
ZGxpbmcgY29kZSB0byBhIHNlcGFyYXRlIGZpbGUKICBkcm0vaTkxNTogU2FuaXRpemUgdGhlIHRl
cm1pbm9sb2d5IHVzZWQgZm9yIFR5cGVDIHBvcnQgbW9kZXMKICBkcm0vaTkxNTogRG9uJ3QgZW5h
YmxlIHRoZSBEREktSU8gcG93ZXIgaW4gdGhlIFR5cGVDIFRCVC1hbHQgbW9kZQogIGRybS9pOTE1
OiBGaXggdGhlIFRCVCBBVVggcG93ZXIgd2VsbCBlbmFibGluZwogIGRybS9pOTE1OiBVc2UgdGhl
IGNvcnJlY3QgQVVYIHBvd2VyIGRvbWFpbiBpbiBUeXBlQyBUQlQtYWx0IG1vZGUKICBkcm0vaTkx
NTogVW5pZnkgdGhlIFR5cGVDIHBvcnQgbm90YXRpb24gaW4gZGVidWcvZXJyb3IgbWVzc2FnZXMK
ICBkcm0vaTkxNTogRmFjdG9yIG91dCBjb21tb24gcGFydHMgZnJvbSBUeXBlQyBwb3J0IGhhbmRs
aW5nIGZ1bmN0aW9ucwogIGRybS9pOTE1OiBXYWl0IGZvciBUeXBlQyBQSFkgY29tcGxldGUgZmxh
ZyB0byBjbGVhciBpbiBzYWZlIG1vZGUKICBkcm0vaTkxNTogSGFuZGxlIHRoZSBUQ0NPTEQgcG93
ZXItZG93biBldmVudAogIGRybS9pOTE1OiBTYW5pdGl6ZSB0aGUgVHlwZUMgY29ubmVjdC9kZXRl
Y3Qgc2VxdWVuY2VzCiAgZHJtL2k5MTU6IEZpeCB0aGUgVHlwZUMgcG9ydCBtb2RlIHNhbml0aXph
dGlvbiBkdXJpbmcgbG9hZGluZy9yZXN1bWUKICBkcm0vaTkxNTogS2VlcCB0aGUgVHlwZUMgcG9y
dCBtb2RlIGZpeGVkIGZvciBkZXRlY3QvQVVYIHRyYW5zZmVycwogIGRybS9pOTE1OiBTYW5pdGl6
ZSB0aGUgVHlwZUMgRklBIGxhbmUgY29uZmlndXJhdGlvbiBkZWNvZGluZwogIGRybS9pOTE1OiBT
YW5pdGl6ZSB0aGUgc2hhcmVkIERQTEwgcmVzZXJ2ZS9yZWxlYXNlIGludGVyZmFjZQogIGRybS9p
OTE1OiBTYW5pdGl6ZSB0aGUgc2hhcmVkIERQTEwgZmluZC9yZWZlcmVuY2UgaW50ZXJmYWNlCiAg
ZHJtL2k5MTUvaWNsOiBTcGxpdCBnZXR0aW5nIHRoZSBEUExMcyB0byBwb3J0IHR5cGUgc3BlY2lm
aWMgZnVuY3Rpb25zCiAgZHJtL2k5MTUvaWNsOiBSZXNlcnZlIGFsbCByZXF1aXJlZCBQTExzIGZv
ciBUeXBlQyBwb3J0cwogIGRybS9pOTE1OiBLZWVwIHRoZSBUeXBlQyBwb3J0IG1vZGUgZml4ZWQg
d2hlbiB0aGUgcG9ydCBpcyBhY3RpdmUKICBkcm0vaTkxNTogQWRkIHN0YXRlIHZlcmlmaWNhdGlv
biBmb3IgdGhlIFR5cGVDIHBvcnQgbW9kZQogIGRybS9pOTE1OiBSZW1vdmUgdW5uZWVkZWQgZGlz
Y29ubmVjdCBpbiBUeXBlQyBsZWdhY3kgcG9ydCBtb2RlCiAgZHJtL2k5MTU6IFdBUk4gYWJvdXQg
aW52YWxpZCBsYW5lIHJldmVyc2FsIGluIFRCVC1hbHQvRFAtYWx0IG1vZGVzCgogZHJpdmVycy9n
cHUvZHJtL2k5MTUvTWFrZWZpbGUgICAgICAgICAgICAgICAgIHwgICAzICstCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jICAgICAgfCAxMjQgKysrLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICB8IDE2NiArKysrKy0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oICB8ICAgNyArLQogLi4uL2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jICAgIHwgMTA4ICsrKy0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyAgICAgICB8IDIzNiArLS0tLS0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oICAgICAgIHwgICAyIC0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmggICB8ICAgOCArLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jIHwgNTI1ICsrKysrKysr
KysrKystLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5o
IHwgIDI1ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMgICAgICAg
fCA0NjggKysrKysrKysrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF90Yy5oICAgICAgIHwgIDMyICsrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcnYuaCAg
ICAgICAgICAgICAgfCAgMjEgKy0KIDEzIGZpbGVzIGNoYW5nZWQsIDEyNTAgaW5zZXJ0aW9ucygr
KSwgNDc1IGRlbGV0aW9ucygtKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfdGMuYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuaAoKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
