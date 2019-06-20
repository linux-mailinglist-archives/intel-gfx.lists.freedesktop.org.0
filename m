Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DDF24CFED
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 16:06:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE4676E586;
	Thu, 20 Jun 2019 14:06:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1B416E586
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2019 14:06:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 07:06:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,397,1557212400"; d="scan'208";a="162531043"
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by orsmga003.jf.intel.com with ESMTP; 20 Jun 2019 07:06:00 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Jun 2019 17:05:37 +0300
Message-Id: <20190620140600.11357-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 00/23] drm/i915: Fix TypeC port mode switching
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

VGhpcyBpcyB2MiBvZiBbMV0gYWRkcmVzc2luZyB0aGUgcmV2aWV3IGNvbW1lbnRzIGZyb20gSmFu
aSwgSm9zw6kgYW5kClZpbGxlLgoKSSBhbHNvIHB1c2hlZCB0aGUgdXBkYXRlZCB2ZXJzaW9uIHRv
OgpodHRwczovL2dpdGh1Yi5jb20vaWRlYWsvbGludXgvY29tbWl0cy90eXBlYy1tb2RlLXN3aXRj
aAoKWzFdIGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjE1OTAvCgpD
YzogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KQ2M6IEpvc8OpIFJv
YmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpDYzogUm9kcmlnbyBWaXZpIDxy
b2RyaWdvLnZpdmlAaW50ZWwuY29tPgpDYzogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBp
bnRlbC5jb20+CkNjOiBQYXVsbyBaYW5vbmkgPHBhdWxvLnIuemFub25pQGludGVsLmNvbT4KQ2M6
IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBEYW5p
ZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgpDYzogTHVjYXMgRGUgTWFyY2hpIDxs
dWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+CkNjOiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2
YXRzYUBpbnRlbC5jb20+CkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RA
bGludXguaW50ZWwuY29tPgoKSW1yZSBEZWFrICgyMyk6CiAgZHJtL2k5MTUvaWNsOiBBZGQgc3Vw
cG9ydCB0byByZWFkIG91dCB0aGUgVEJUIFBMTCBIVyBzdGF0ZQogIGRybS9pOTE1OiBUdW5lIGRv
d24gV0FSTnMgYWJvdXQgVEJUIEFVWCBwb3dlciB3ZWxsIGVuYWJsaW5nCiAgZHJtL2k5MTU6IE1v
dmUgdGhlIFR5cGVDIHBvcnQgaGFuZGxpbmcgY29kZSB0byBhIHNlcGFyYXRlIGZpbGUKICBkcm0v
aTkxNTogU2FuaXRpemUgdGhlIHRlcm1pbm9sb2d5IHVzZWQgZm9yIFR5cGVDIHBvcnQgbW9kZXMK
ICBkcm0vaTkxNTogRG9uJ3QgZW5hYmxlIHRoZSBEREktSU8gcG93ZXIgaW4gdGhlIFR5cGVDIFRC
VC1hbHQgbW9kZQogIGRybS9pOTE1OiBGaXggdGhlIFRCVCBBVVggcG93ZXIgd2VsbCBlbmFibGlu
ZwogIGRybS9pOTE1OiBVc2UgdGhlIGNvcnJlY3QgQVVYIHBvd2VyIGRvbWFpbiBpbiBUeXBlQyBU
QlQtYWx0IG1vZGUKICBkcm0vaTkxNTogVW5pZnkgdGhlIFR5cGVDIHBvcnQgbm90YXRpb24gaW4g
ZGVidWcvZXJyb3IgbWVzc2FnZXMKICBkcm0vaTkxNTogRmFjdG9yIG91dCBjb21tb24gcGFydHMg
ZnJvbSBUeXBlQyBwb3J0IGhhbmRsaW5nIGZ1bmN0aW9ucwogIGRybS9pOTE1OiBXYWl0IGZvciBU
eXBlQyBQSFkgY29tcGxldGUgZmxhZyB0byBjbGVhciBpbiBzYWZlIG1vZGUKICBkcm0vaTkxNTog
SGFuZGxlIHRoZSBUQ0NPTEQgcG93ZXItZG93biBldmVudAogIGRybS9pOTE1OiBTYW5pdGl6ZSB0
aGUgVHlwZUMgY29ubmVjdC9kZXRlY3Qgc2VxdWVuY2VzCiAgZHJtL2k5MTU6IEZpeCB0aGUgVHlw
ZUMgcG9ydCBtb2RlIHNhbml0aXphdGlvbiBkdXJpbmcgbG9hZGluZy9yZXN1bWUKICBkcm0vaTkx
NTogS2VlcCB0aGUgVHlwZUMgcG9ydCBtb2RlIGZpeGVkIGZvciBkZXRlY3QvQVVYIHRyYW5zZmVy
cwogIGRybS9pOTE1OiBTYW5pdGl6ZSB0aGUgVHlwZUMgRklBIGxhbmUgY29uZmlndXJhdGlvbiBk
ZWNvZGluZwogIGRybS9pOTE1OiBTYW5pdGl6ZSB0aGUgc2hhcmVkIERQTEwgcmVzZXJ2ZS9yZWxl
YXNlIGludGVyZmFjZQogIGRybS9pOTE1OiBTYW5pdGl6ZSB0aGUgc2hhcmVkIERQTEwgZmluZC9y
ZWZlcmVuY2UgaW50ZXJmYWNlCiAgZHJtL2k5MTUvaWNsOiBTcGxpdCBnZXR0aW5nIHRoZSBEUExM
cyB0byBwb3J0IHR5cGUgc3BlY2lmaWMgZnVuY3Rpb25zCiAgZHJtL2k5MTUvaWNsOiBSZXNlcnZl
IGFsbCByZXF1aXJlZCBQTExzIGZvciBUeXBlQyBwb3J0cwogIGRybS9pOTE1OiBLZWVwIHRoZSBU
eXBlQyBwb3J0IG1vZGUgZml4ZWQgd2hlbiB0aGUgcG9ydCBpcyBhY3RpdmUKICBkcm0vaTkxNTog
QWRkIHN0YXRlIHZlcmlmaWNhdGlvbiBmb3IgdGhlIFR5cGVDIHBvcnQgbW9kZQogIGRybS9pOTE1
OiBSZW1vdmUgdW5uZWVkZWQgZGlzY29ubmVjdCBpbiBUeXBlQyBsZWdhY3kgcG9ydCBtb2RlCiAg
ZHJtL2k5MTU6IFdBUk4gYWJvdXQgaW52YWxpZCBsYW5lIHJldmVyc2FsIGluIFRCVC1hbHQvRFAt
YWx0IG1vZGVzCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUgICAgICAgICAgICAgICAg
IHwgICAzICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jICAgICAg
fCAxMjQgKysrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
ICB8IDE2NiArKysrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5oICB8ICAgNyArLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5j
ICAgIHwgMTEyICsrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyAg
ICAgICB8IDIzNiArLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5oICAgICAgIHwgICAyIC0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBf
bXN0LmggICB8ICAgOCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxs
X21nci5jIHwgNTIzICsrKysrKysrKysrKystLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcGxsX21nci5oIHwgIDI1ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3RjLmMgICAgICAgfCA0NTIgKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmggICAgICAgfCAgMzIgKysKIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2Rydi5oICAgICAgICAgICAgICB8ICAyMSArLQogMTMgZmlsZXMgY2hhbmdl
ZCwgMTIzNiBpbnNlcnRpb25zKCspLCA0NzUgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2
NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jCiBjcmVhdGUgbW9kZSAx
MDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5oCgotLSAKMi4xNy4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
