Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E2972CF87C
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Dec 2020 02:09:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D333A6E23B;
	Sat,  5 Dec 2020 01:09:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 948AD6E220
 for <intel-gfx@lists.freedesktop.org>; Sat,  5 Dec 2020 01:08:59 +0000 (UTC)
IronPort-SDR: ZO/8+oT8WKKVoxX2u7nJKpLMtc87P/f23jaNH6y/LZct24QCmA/W4hnHWSz9CLJrRMNWqNO8sD
 iHdFUeHWGSXA==
X-IronPort-AV: E=McAfee;i="6000,8403,9825"; a="173570976"
X-IronPort-AV: E=Sophos;i="5.78,394,1599548400"; d="scan'208";a="173570976"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 17:08:54 -0800
IronPort-SDR: 5Th+mvwxSR/oQaCLjkEOBpCTzkqv3dQ/FFfAWh4qwyf3QmbWsoFkZhO/VjmCtam8jHrWIr7I+j
 qqu7AjhqXPXA==
X-IronPort-AV: E=Sophos;i="5.78,394,1599548400"; d="scan'208";a="369062843"
Received: from msdesadl-mobl1.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.251.12.22])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 17:08:52 -0800
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Dec 2020 17:08:22 -0800
Message-Id: <20201205010844.361880-1-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/22] Introduce Alderlake-S
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

UmV2IDMgd2l0aCBhbGwgdGhlIGNvbW1lbnRzIGFkZHJlc3NlZCBmcm9tIFJldiAyOgpodHRwczov
L3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzgyOTE3LwoKQWRpdHlhIFN3YXJ1cCAo
OSk6CiAgZHJtL2k5MTUvdGdsOiBGaXggUkVWSUQgbWFjcm9zIGZvciBUR0wgdG8gZmV0Y2ggY29y
cmVjdCBzdGVwcGluZwogIGRybS9pOTE1L3RnbDogQWRkIGJvdW5kIGNoZWNrcyBhbmQgc2ltcGxp
ZnkgVEdMIFJFVklEIG1hY3JvcwogIGRybS9pOTE1L2FkbF9zOiBDb25maWd1cmUgRFBMTCBmb3Ig
QURMLVMKICBkcm0vaTkxNS9hZGxfczogQ29uZmlndXJlIFBvcnQgY2xvY2sgcmVnaXN0ZXJzIGZv
ciBBREwtUwogIGRybS9pOTE1L2FkbF9zOiBJbml0aWFsaXplIGRpc3BsYXkgZm9yIEFETC1TCiAg
ZHJtL2k5MTUvYWRsX3M6IEFkZCBhZGwtcyBkZGMgcGluIG1hcHBpbmcKICBkcm0vaTkxNS9hZGxf
czogQWRkIHZidCBwb3J0IGFuZCBhdXggY2hhbm5lbCBzZXR0aW5ncyBmb3IgYWRscwogIGRybS9p
OTE1L2FkbF9zOiBBZGQgZGlzcGxheSBXQXMgZm9yIEFETC1TCiAgZHJtL2k5MTUvYWRsX3M6IEFk
ZCBHVCBhbmQgQ1RYIFdBcyBmb3IgQURMLVMKCkFudXNoYSBTcml2YXRzYSAoNCk6CiAgZHJtL2k5
MTUvYWRsX3M6IEFkZCBQQ0ggc3VwcG9ydAogIGRybS9pOTE1L2FkbF9zOiBBZGQgSW50ZXJydXB0
IFN1cHBvcnQKICBkcm0vaTkxNS9hZGxfczogQWRkIFBIWXMgZm9yIEFsZGVybGFrZSBTCiAgZHJt
L2k5MTUvYWRsX3M6IExvYWQgRE1DCgpDYXogWW9rb3lhbWEgKDMpOgogIGRybS9pOTE1L2FkbF9z
OiBBZGQgQURMLVMgcGxhdGZvcm0gaW5mbyBhbmQgUENJIGlkcwogIHg4Ni9ncHU6IGFkZCBBRExf
UyBzdG9sZW4gbWVtb3J5IHN1cHBvcnQKICBkcm0vaTkxNS9hZGxfczogTUNIQkFSIG1lbW9yeSBp
bmZvIHJlZ2lzdGVycyBhcmUgbW92ZWQKCkpvc8OpIFJvYmVydG8gZGUgU291emEgKDEpOgogIGRy
bS9pOTE1L2Rpc3BsYXk6IEFkZCBIQVNfRDEyX1BMQU5FX01JTklNSVpBVElPTgoKTHVjYXMgRGUg
TWFyY2hpICgxKToKICBkcm0vaTkxNS9hZGxfczogQWRkIHBvd2VyIHdlbGxzCgpNYXR0IFJvcGVy
ICgzKToKICBkcm0vaTkxNS9hZGxfczogVXBkYXRlIGNvbWJvIFBIWSBtYXN0ZXIvc2xhdmUgcmVs
YXRpb25zaGlwcwogIGRybS9pOTE1L2FkbF9zOiBVcGRhdGUgUEhZX01JU0MgcHJvZ3JhbW1pbmcK
ICBkcm0vaTkxNS9hZGxfczogUmUtdXNlIFRHTCBHdUMvSHVDIGZpcm13YXJlCgpUZWphcyBVcGFk
aHlheSAoMSk6CiAgZHJtL2k5MTUvYWRsX3M6IFVwZGF0ZSBtZW1vcnkgYmFuZHdpZHRoIHBhcmFt
ZXRlcnMKCiBhcmNoL3g4Ni9rZXJuZWwvZWFybHktcXVpcmtzLmMgICAgICAgICAgICAgICAgfCAg
IDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgICAgIHwgIDcw
ICsrKysrKysrKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMgICAg
ICAgfCAgIDggKysKIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb21ib19waHkuYyAg
ICB8ICAyMyArKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nzci5jICAg
ICAgfCAgMTAgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgICAg
ICB8ICA2NCArKysrKystLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYyAgfCAgMzYgKysrKystCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3Bvd2VyLmMgICAgfCAgMTEgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBsbF9tZ3IuYyB8ICAzOCArKysrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfaGRtaS5jICAgICB8ICAyMCArKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMgICAgICB8ICAgNCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9zcHJpdGUuYyAgIHwgICA4ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3ZidF9kZWZzLmggfCAgIDQgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fy
b3VuZHMuYyAgIHwgMTE5ICsrKysrKysrKysrKy0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvdWMvaW50ZWxfdWNfZncuYyAgICAgIHwgICA0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5oICAgICAgICAgICAgICAgfCAgNzIgKysrKysrKystLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfaXJxLmMgICAgICAgICAgICAgICB8ICAgNSArLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9wY2kuYyAgICAgICAgICAgICAgIHwgIDEzICsrCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgICAgfCAgNTQgKysrKysrKy0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMgICAgICB8ICAgOSArLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaCAgICAgIHwgICAxICsKIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2RyYW0uYyAgICAgICAgICAgICB8ICAyMyArKystCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9wY2guYyAgICAgICAgICAgICAgfCAgIDggKy0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX3BjaC5oICAgICAgICAgICAgICB8ICAgMyArCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9wbS5jICAgICAgICAgICAgICAgfCAgIDIgKy0KIGluY2x1ZGUvZHJtL2k5MTVf
cGNpaWRzLmggICAgICAgICAgICAgICAgICAgICB8ICAxMyArKwogMjYgZmlsZXMgY2hhbmdlZCwg
NDg5IGluc2VydGlvbnMoKyksIDEzNCBkZWxldGlvbnMoLSkKCi0tIAoyLjI3LjAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
