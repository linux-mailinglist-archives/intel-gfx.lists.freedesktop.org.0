Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3191D7A4B
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 17:45:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 031E96E83B;
	Tue, 15 Oct 2019 15:45:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B73B38970B
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 15:45:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 08:45:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,300,1566889200"; d="scan'208";a="195316436"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by fmsmga007.fm.intel.com with ESMTP; 15 Oct 2019 08:45:20 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 003C8840766; Tue, 15 Oct 2019 18:44:50 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 18:44:41 +0300
Message-Id: <20191015154449.10338-3-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191015154449.10338-1-mika.kuoppala@linux.intel.com>
References: <20191015154449.10338-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] [PATCH 03/11] drm/i915/tgl: Add HDC Pipeline Flush
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkIGhkYyBwaXBlbGluZSBmbHVzaCB0byBlbnN1cmUgbWVtb3J5IHN0YXRlIGlzIGNvaGVyZW50
CmluIEwzIHdoZW4gd2UgYXJlIGRvbmUuCgp2MjogRmx1c2ggYWxzbyBpbiBicmVhZGNydW1icyAo
Q2hyaXMpCgpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ClNpZ25l
ZC1vZmYtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dwdV9jb21tYW5kcy5oIHwgMSArCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyAgICAgICAgICB8IDUgKysrKy0KIDIg
ZmlsZXMgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmggYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVfY29tbWFuZHMuaAppbmRleCA0NTg2YTZhMWZhZDQu
LmQ2YmYyNzJkOGM1OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
Z3B1X2NvbW1hbmRzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1X2Nv
bW1hbmRzLmgKQEAgLTIzNSw2ICsyMzUsNyBAQAogI2RlZmluZSAgIFBJUEVfQ09OVFJPTF9URVhU
VVJFX0NBQ0hFX0lOVkFMSURBVEUJCSgxPDwxMCkgLyogR000NSsgb25seSAqLwogI2RlZmluZSAg
IFBJUEVfQ09OVFJPTF9MM19ST19DQUNIRV9JTlZBTElEQVRFCQkoMTw8MTApIC8qIGdlbjEyICov
CiAjZGVmaW5lICAgUElQRV9DT05UUk9MX0lORElSRUNUX1NUQVRFX0RJU0FCTEUJCSgxPDw5KQor
I2RlZmluZSAgIFBJUEVfQ09OVFJPTF9IRENfUElQRUxJTkVfRkxVU0gJCSgxPDw5KSAgLyogZ2Vu
IDEyICovCiAjZGVmaW5lICAgUElQRV9DT05UUk9MX05PVElGWQkJCQkoMTw8OCkKICNkZWZpbmUg
ICBQSVBFX0NPTlRST0xfRkxVU0hfRU5BQkxFCQkJKDE8PDcpIC8qIGdlbjcrICovCiAjZGVmaW5l
ICAgUElQRV9DT05UUk9MX0RDX0ZMVVNIX0VOQUJMRQkJCSgxPDw1KQpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9scmMuYwppbmRleCAyZmUzMzkyMjhiODIuLjI3YjUyNTlmMmY2NiAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKQEAgLTMyMDYsNiArMzIwNiw3IEBAIHN0YXRpYyBpbnQg
Z2VuMTJfZW1pdF9mbHVzaF9yZW5kZXIoc3RydWN0IGk5MTVfcmVxdWVzdCAqcmVxdWVzdCwKIAkJ
ZmxhZ3MgfD0gUElQRV9DT05UUk9MX0RFUFRIX0NBQ0hFX0ZMVVNIOwogCQlmbGFncyB8PSBQSVBF
X0NPTlRST0xfRENfRkxVU0hfRU5BQkxFOwogCQlmbGFncyB8PSBQSVBFX0NPTlRST0xfRkxVU0hf
RU5BQkxFOworCQlmbGFncyB8PSBQSVBFX0NPTlRST0xfSERDX1BJUEVMSU5FX0ZMVVNIOwogCiAJ
CWZsYWdzIHw9IFBJUEVfQ09OVFJPTF9TVE9SRV9EQVRBX0lOREVYOwogCQlmbGFncyB8PSBQSVBF
X0NPTlRST0xfUVdfV1JJVEU7CkBAIC0zNDE2LDcgKzM0MTcsOSBAQCBnZW4xMl9lbWl0X2Zpbmlf
YnJlYWRjcnVtYl9yY3Moc3RydWN0IGk5MTVfcmVxdWVzdCAqcmVxdWVzdCwgdTMyICpjcykKIAkJ
CQkgICAgICBQSVBFX0NPTlRST0xfUkVOREVSX1RBUkdFVF9DQUNIRV9GTFVTSCB8CiAJCQkJICAg
ICAgUElQRV9DT05UUk9MX0RFUFRIX0NBQ0hFX0ZMVVNIIHwKIAkJCQkgICAgICBQSVBFX0NPTlRS
T0xfRENfRkxVU0hfRU5BQkxFIHwKLQkJCQkgICAgICBQSVBFX0NPTlRST0xfRkxVU0hfRU5BQkxF
KTsKKwkJCQkgICAgICBQSVBFX0NPTlRST0xfRkxVU0hfRU5BQkxFIHwKKwkJCQkgICAgICBQSVBF
X0NPTlRST0xfSERDX1BJUEVMSU5FX0ZMVVNIKTsKKwogCiAJcmV0dXJuIGdlbjEyX2VtaXRfZmlu
aV9icmVhZGNydW1iX2Zvb3RlcihyZXF1ZXN0LCBjcyk7CiB9Ci0tIAoyLjE3LjEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
