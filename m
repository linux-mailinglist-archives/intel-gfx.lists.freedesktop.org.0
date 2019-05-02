Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFEE71250E
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 01:27:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFBD1893B8;
	Thu,  2 May 2019 23:27:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A2C2893B8
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 23:27:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 16:27:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,423,1549958400"; d="scan'208";a="147715139"
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by orsmga003.jf.intel.com with ESMTP; 02 May 2019 16:27:01 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 May 2019 02:26:38 +0300
Message-Id: <20190502232648.4450-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/10] drm/i915: Add support for asynchronous
 display power disabling
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

VGhpcyBpcyBhIHByZXBhcmF0aW9uIGZvciBtYWtpbmcgaG90cGx1ZyB1c2VhYmxlIG9uIElDTCBU
eXBlQyBwb3J0cy4gT24KSUNMIHdlIG5lZWQgYSBzdHJpY3RlciBjb250cm9sIG9uIHdoZW4gZWl0
aGVyIGtpbmQgb2YgQVVYIHBvd2VyIGRvbWFpbgooVEJULWFsdCBvciBEUC1hbHQpIGlzIGVuYWJs
ZWQuIFRoYXQgY29udHJvbCBiZWNvbWVzIHVuZmVhc2libGUgaWYgdGhlCnJlZmVyZW5jZSBjYW4g
YmUgaGVsZCBmb3IgYXJiaXRyYXRyeSBwZXJpb2RzIGR1ZSB0byBsb2NraW5nCmRlcGVuZGVuY2ll
cy4gT1RPSCBpdCBtYWtlcyBzZW5zZSB0byByZXN0cmljdCBob2xkaW5nIHRoZSByZWZlcmVuY2Ug
b25seQpmb3IgdGhlIGR1cmF0aW9uIHdoZW4gaXQncyBhY3R1YWxseSBuZWVkZWQuIE9uZSByZXN1
bHQgb2YgdGhhdCB3b3VsZCBiZQp0aGUgdW5uZWNlc3Nhcnkgb24tb2ZmLW9uIHBvd2VyIHRvZ2ds
aW5ncyB3aGVuIHRoZSByZWZlcmVuY2UgaXMgZHJvcHBlZAphbmQgcmVhY3F1aXJlZCBxdWlja2x5
LgoKVGhpcyBwYXRjaHNldCBhZGRzIHN1cHBvcnQgZm9yIGRyb3BwaW5nIGRpc3BsYXkgcG93ZXIg
ZG9tYWluIHJlZmVyZW5jZXMKYXN5bmNocm9ub3VzbHkgd2l0aCBhIGRlbGF5IHRvIGF2b2lkIHRo
ZSB1bmVjZXNzYXJ5IHBvd2VyIHRvZ2dsaW5ncywgYW5kCnJlc3RyaWN0cyBob2xkaW5nIHRoZSBB
VVggcG93ZXIgZG9tYWluIHJlZmVyZW5jZSB0byB0aGUgc2VxdWVuY2Ugd2hlcmUKaXQncyByZXF1
aXJlZCBkdXJpbmcgZGV0ZWN0aW9uIGFuZCBIUEQgcHVsc2UgaGFuZGxpbmcuCgpDYzogVmlsbGUg
U3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZp
QGludGVsLmNvbT4KQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPgoKSW1yZSBEZWFrICgxMCk6CiAgZHJtL2k5MTU6IEFkZCBzdXBwb3J0IGZvciB0cmFja2lu
ZyB3YWtlcmVmcyB3L28gcG93ZXItb24gZ3VhcmFudGVlCiAgZHJtL2k5MTU6IFZlcmlmeSBwb3dl
ciBkb21haW5zIHN0YXRlIGR1cmluZyBzdXNwZW5kIGluIGFsbCBjYXNlcwogIGRybS9pOTE1OiBB
ZGQgc3VwcG9ydCBmb3IgYXN5bmNocm9ub3VzIGRpc3BsYXkgcG93ZXIgZGlzYWJsaW5nCiAgZHJt
L2k5MTU6IERpc2FibGUgcG93ZXIgYXN5bmNocm9ub3VzbHkgZHVyaW5nIERQIEFVWCB0cmFuc2Zl
cnMKICBkcm0vaTkxNTogV0FSTiBmb3IgZURQIGVuY29kZXJzIGluIGludGVsX2RwX2RldGVjdF9k
cGNkKCkKICBkcm0vaTkxNTogUmVtb3ZlIHRoZSB1bm5lZWRlZCBBVVggcG93ZXIgcmVmIGZyb20g
aW50ZWxfZHBfZGV0ZWN0KCkKICBkcm0vaTkxNTogUmVtb3ZlIHRoZSB1bm5lZWRlZCBBVVggcG93
ZXIgcmVmIGZyb20gaW50ZWxfZHBfaHBkX3B1bHNlKCkKICBkcm0vaTkxNTogUmVwbGFjZSB1c2Ug
b2YgUExMUyBwb3dlciBkb21haW4gd2l0aCBESVNQTEFZX0NPUkUgZG9tYWluCiAgZHJtL2k5MTU6
IEF2b2lkIHRha2luZyB0aGUgUFBTIGxvY2sgZm9yIG5vbi1lRFAvVkxWL0NIVgogIGRybS9pOTE1
OiBBc3NlcnQgdGhhdCBUeXBlQyBwb3J0cyBhcmUgbm90IHVzZWQgZm9yIGVEUAoKIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICB8ICAgNiArCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9kaXNwbGF5LmMgICAgfCAgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2Rpc3BsYXkuaCAgICB8ICAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAu
YyAgICAgICAgIHwgIDc2ICsrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwbGxfbWdy
LmMgICB8ICAzNiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcHNyLmMgICAgICAgIHwg
ICA2ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1bnRpbWVfcG0uYyB8IDQ0MyArKysr
KysrKysrKysrKysrKysrKysrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1bnRpbWVf
cG0uaCB8ICAgNCArCiA4IGZpbGVzIGNoYW5nZWQsIDQ5MSBpbnNlcnRpb25zKCspLCA4NCBkZWxl
dGlvbnMoLSkKCi0tIAoyLjE3LjEKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
