Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C8BA14DB
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 11:26:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 854E46E072;
	Thu, 29 Aug 2019 09:26:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E68886E045
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2019 09:26:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Aug 2019 02:26:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,442,1559545200"; d="scan'208";a="175211171"
Received: from tbthomps-mobl.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.254.111.220])
 by orsmga008.jf.intel.com with ESMTP; 29 Aug 2019 02:26:01 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Aug 2019 02:25:47 -0700
Message-Id: <20190829092554.32198-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 0/7] Tiger Lake batch 3.5
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

TW9zdGx5IHRoZSBzYW1lIHBhdGNoZXMgYXMgcmV2aXNpb24gNSBvZgpodHRwczovL3BhdGNod29y
ay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY1MjkwLyB3aXRoIHNvbWUgZHJvcHBlZCBhbmQKc29t
ZSB0cml2aWFsIG9uZXMgYWRkZWQuCgpJbXBsZW1lbnRhdGlvbiBmb3IgdGhlIGZpcnN0IHBhdGNo
ZXMgY2hhbmdlZCB0aG91Z2gsIGluIG9yZGVyIHRvIGFkZHJlc3MKdGhlIHJldmlldyBjb21tZW50
cy4gSW50ZW50aW9uIGhlcmUgaXMgdG8gZ2V0IHRoZXNlIGZpcnN0IDQgcGF0Y2hlcyBhcwpzb29u
IGFzIHBvc3NpYmxlIHNvIHdlIGNhbiBoYXZlIENJIGVuYWJsZWQgd2l0aCBUR0wuCgpBbHNvIGxh
c3QgcGF0Y2ggaXMgbm90IHRvIGJlIG1lcmdlZCwgaXQncyBvbmx5IGhlcmUgdG8gaGVscCB3aXRo
IENJIGFzCmNvbW1lbnRzIGZyb20gcHJldmlvdXMgdmVyc2lvbnMgbmVlZCB0byBiZSBoYW5kbGVk
LiBEYW5pZWxlLCBkbyB5b3UgcGxhbgp0byBzdWJtaXQgaXQgeW91cnNlbGY/CgpJIHdpbGwgYmUg
b3V0IGZvciB0aGUgbmV4dCAyLjV3LCBzbyBkb24ndCBleHBlY3QgbWUgdG8gaGFuZGxlIHRoZQpj
b21tZW50cyBoZXJlLiBIb3dldmVyIEpvc8OpIGFuZC9vciBvdGhlciBwZW9wbGUgY2FuIGhhbmRs
ZSB0aGVtLgoKdGhhbmtzCkx1Y2FzIERlIE1hcmNoaQoKSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSAo
Mik6CiAgZHJtL2k5MTUvcHNyOiBPbmx5IGhhbmRsZSBpbnRlcnJ1cHRpb25zIG9mIHRoZSB0cmFu
c2NvZGVyIGluIHVzZQogIGRybS9pOTE1L3RnbDogQWNjZXNzIHRoZSByaWdodCByZWdpc3RlciB3
aGVuIGhhbmRsaW5nIFBTUgogICAgaW50ZXJydXB0aW9ucwoKTHVjYXMgRGUgTWFyY2hpICg0KToK
ICBkcm0vaTkxNTogcHJvdGVjdCBhY2Nlc3MgdG8gRFBfVFBfKiBvbiBub24tZHAKICBkcm0vaTkx
NS90Z2w6IG1vdmUgRFBfVFBfKiB0byB0cmFuc2NvZGVyCiAgZHJtL2k5MTUvdGdsOiBkaXNhYmxl
IFNBR1YgdGVtcG9yYXJpbHkKICBkcm0vaTkxNS90Z2w6IGFkZCBnZW4xMiB0byBzdG9sZW4gaW5p
dGlhbGl6YXRpb24KCk1pY2hlbCBUaGllcnJ5ICgxKToKICBGSVhNRTogZHJtL2k5MTUvdGdsOiBS
ZWdpc3RlciBzdGF0ZSBjb250ZXh0IGRlZmluaXRpb24gZm9yIEdlbjEyCgogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyAgICAgIHwgIDQ5ICsrKystLQogLi4uL2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgICA5ICsKIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyAgICAgICB8ICAxMyArLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYyAgIHwgICA4ICstCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jICAgICAgfCAxNjMgKysrKysrKysrLS0tLS0tLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc3RvbGVuLmMgICAgfCAgIDUgKy0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jICAgICAgICAgICB8IDE1NiArKysr
KysrKysrKystLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmggICAgICAg
ICAgIHwgICAyICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyY19yZWcuaCAgICAg
ICB8ICAzMCArKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jICAgICAgICAgICAg
ICAgfCAgNTEgKysrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAg
ICAgICAgfCAgMjcgKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jICAgICAgICAg
ICAgICAgfCAgIDQgKwogMTIgZmlsZXMgY2hhbmdlZCwgMzQ1IGluc2VydGlvbnMoKyksIDE3MiBk
ZWxldGlvbnMoLSkKCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
