Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E995594C5D
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2019 20:08:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E0356E260;
	Mon, 19 Aug 2019 18:08:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4228B6E260
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2019 18:08:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Aug 2019 11:08:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,405,1559545200"; 
 d="scan'208,223";a="168828723"
Received: from mdroper-desk.fm.intel.com ([10.105.128.126])
 by orsmga007.jf.intel.com with ESMTP; 19 Aug 2019 11:08:43 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Aug 2019 11:08:22 -0700
Message-Id: <20190819180822.15665-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190819164606.GF27240@mdroper-desk.amr.corp.intel.com>
References: <20190819164606.GF27240@mdroper-desk.amr.corp.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/gen11: Add Wa_1604278689:icl,ehl
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

RnJvbSB0aGUgYnNwZWM6CgogICAgICAgICJTVyBtdXN0IGFsd2F5cyBwcm9ncmFtIHRoZSBGQkNf
UlRfQkFTRV9BRERSX1JFR0lTVEVSXyogcmVnaXN0ZXIKICAgICAgICBpbiBSZW5kZXIgRW5naW5l
IHRvIGEgcmVzZXJ2ZWQgdmFsdWUgKDB4RkZGRl9GRkZGKSBzdWNoIHRoYXQgdGhlCiAgICAgICAg
cHJvZ3JhbW1lZCB2YWx1ZSBkb2VzbuKAmXQgbWF0Y2ggdGhlIHJlbmRlciB0YXJnZXQgc3VyZmFj
ZSBhZGRyZXNzCiAgICAgICAgcHJvZ3JhbW1lZC4gVGhpcyB3b3VsZCBkaXNhYmxlIHJlbmRlciBl
bmdpbmUgZnJvbSBnZW5lcmF0aW5nCiAgICAgICAgbW9kaWZ5IG1lc3NhZ2VzIHRvIEZCQyB1bml0
IGluIGRpc3BsYXkuIgoKVGhpcyB3b3JrYXJvdW5kIHNlZW1zIGEgYml0IHF1ZXN0aW9uYWJsZSBh
cyB3cml0dGVuIHNpbmNlIHVzaW5nIGFsbCAxJ3MKdG8gdGhlIFJUX0JBU0UgcmVnaXN0ZXIgaW1w
bGllcyBzZXR0aW5nIGJpdCAwLCB3aGljaCBpcyBhIGZsYWcgdG8KaW5kaWNhdGUgd2hldGhlciB0
aGUgYWRkcmVzcyBpcyB2YWxpZC4gIEluZGVlZCwgd2Ugc3RhcnQgc2VlaW5nIENJCmZhaWx1cmVz
IHdoZW4gd2UgZm9sbG93IHRoZSBkaXJlY3Rpb25zIGhlcmUgbGl0ZXJhbGx5LiAgTGV0J3Mgc2xp
Z2h0bHkKZGV2aWF0ZSBmcm9tIHRoZSB3b3JrYXJvdW5kIGluc3RydWN0aW9ucyBhbmQgc2V0IGFs
bCBiaXRzIF9leGNlcHRfIGZvcgpiaXQgMCBvZiBGQkNfUlRfQkFTRV9BRERSX1JFR0lTVEVSLgoK
djI6CiAtIE1hc2sgb2ZmIHRoZSBSVF9WQUxJRCBiaXQuICBFeHBlcmltZW50YXRpb24gd2l0aCBD
SSB0cnlib3QgaW5kaWNhdGVzCiAgIHRoYXQgdGhpcyBpcyBuZWNlc3NhcnkgdG8gYXZvaWQgcmVz
ZXQgZmFpbHVyZXMgb24gQkNTLgoKQnNwZWM6IDExMzg4CkJzcGVjOiAzMzQ1MQpDYzogSm9zw6kg
Um9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CkNjOiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcu
ZC5yb3BlckBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29y
a2Fyb3VuZHMuYyB8IDYgKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAg
ICAgICAgICAgIHwgMSArCiAyIGZpbGVzIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCmluZGV4IDcwNGFjZTAxZTdm
NS4uZjcwYjdhOTViYzIzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF93b3JrYXJvdW5kcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmth
cm91bmRzLmMKQEAgLTU2Nyw2ICs1NjcsMTIgQEAgc3RhdGljIHZvaWQgaWNsX2N0eF93b3JrYXJv
dW5kc19pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKIAkvKiBhbGxvdyBoZWFk
ZXJsZXNzIG1lc3NhZ2VzIGZvciBwcmVlbXB0aWJsZSBHUEdQVSBjb250ZXh0ICovCiAJV0FfU0VU
X0JJVF9NQVNLRUQoR0VOMTBfU0FNUExFUl9NT0RFLAogCQkJICBHRU4xMV9TQU1QTEVSX0VOQUJM
RV9IRUFETEVTU19NU0cpOworCisJLyogV2FfMTYwNDI3ODY4OTppY2wsZWhsICovCisJd2Ffd3Jp
dGVfbWFza2VkX29yKHdhbCwgSVZCX0ZCQ19SVF9CQVNFX1VQUEVSLAorCQkJICAgMCwgLyogd3Jp
dGUtb25seSByZWdpc3Rlcjsgc2tpcCB2YWxpZGF0aW9uICovCisJCQkgICAweEZGRkZGRkZGKTsK
Kwl3YV93cml0ZSh3YWwsIElWQl9GQkNfUlRfQkFTRSwgMHhGRkZGRkZGRiAmIH5JTEtfRkJDX1JU
X1ZBTElEKTsKIH0KIAogc3RhdGljIHZvaWQKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IGVh
MmYwZmEyNDAyZC4uYmNlNzMyNjMyOWRiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTMx
NzAsNiArMzE3MCw3IEBAIHN0YXRpYyBpbmxpbmUgYm9vbCBpOTE1X21taW9fcmVnX3ZhbGlkKGk5
MTVfcmVnX3QgcmVnKQogCiAvKiBGcmFtZWJ1ZmZlciBjb21wcmVzc2lvbiBmb3IgSXZ5YnJpZGdl
ICovCiAjZGVmaW5lIElWQl9GQkNfUlRfQkFTRQkJCV9NTUlPKDB4NzAyMCkKKyNkZWZpbmUgSVZC
X0ZCQ19SVF9CQVNFX1VQUEVSCQlfTU1JTygweDcwMjQpCiAKICNkZWZpbmUgSVBTX0NUTAkJX01N
SU8oMHg0MzQwOCkKICNkZWZpbmUgICBJUFNfRU5BQkxFCSgxIDw8IDMxKQotLSAKMi4yMC4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
