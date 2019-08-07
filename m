Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 818F385196
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 19:00:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4C316E748;
	Wed,  7 Aug 2019 17:00:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DE5F6E749
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2019 17:00:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 10:00:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,358,1559545200"; d="scan'208";a="186056942"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga002.jf.intel.com with ESMTP; 07 Aug 2019 10:00:47 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x77H0h7t010955; Wed, 7 Aug 2019 18:00:46 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Aug 2019 17:00:32 +0000
Message-Id: <20190807170034.8440-6-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190807170034.8440-1-michal.wajdeczko@intel.com>
References: <20190807170034.8440-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/7] drm/i915: Make wopcm_to_i915() private
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

Tm8gbmVlZCB0byBkZWZpbmUgaXQgZ2xvYmFsbHkgYXMgd2UncmUgb25seSB1c2luZyBpdCBpbiB3
b3BjbS5jCgpTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtv
QGludGVsLmNvbT4KQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3Nw
dXJpb0BpbnRlbC5jb20+CkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgIHwgNSAtLS0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd29wY20uYyB8IDUgKysrKysKIDIgZmlsZXMgY2hhbmdl
ZCwgNSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5o
CmluZGV4IGM5NDc2ZjI0ZjVjMS4uZDUxNmU5MDk5ZDE1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmgKQEAgLTE5MDcsMTEgKzE5MDcsNiBAQCBzdGF0aWMgaW5saW5lIHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpwZGV2X3RvX2k5MTUoc3RydWN0IHBjaV9kZXYgKnBkZXYpCiAJcmV0dXJuIHBjaV9n
ZXRfZHJ2ZGF0YShwZGV2KTsKIH0KIAotc3RhdGljIGlubGluZSBzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqd29wY21fdG9faTkxNShzdHJ1Y3QgaW50ZWxfd29wY20gKndvcGNtKQotewotCXJldHVy
biBjb250YWluZXJfb2Yod29wY20sIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlLCB3b3BjbSk7Ci19
Ci0KIC8qIFNpbXBsZSBpdGVyYXRvciBvdmVyIGFsbCBpbml0aWFsaXNlZCBlbmdpbmVzICovCiAj
ZGVmaW5lIGZvcl9lYWNoX2VuZ2luZShlbmdpbmVfXywgZGV2X3ByaXZfXywgaWRfXykgXAogCWZv
ciAoKGlkX18pID0gMDsgXApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
d29wY20uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dvcGNtLmMKaW5kZXggNWU1YzNm
ZDM0NzJkLi4yYmRhMjQyMDA0OTggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3dvcGNtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd29wY20uYwpAQCAt
NjQsNiArNjQsMTEgQEAKICNkZWZpbmUgR0VOOV9HVUNfRldfUkVTRVJWRUQJU1pfMTI4SwogI2Rl
ZmluZSBHRU45X0dVQ19XT1BDTV9PRkZTRVQJKEdVQ19XT1BDTV9SRVNFUlZFRCArIEdFTjlfR1VD
X0ZXX1JFU0VSVkVEKQogCitzdGF0aWMgaW5saW5lIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICp3
b3BjbV90b19pOTE1KHN0cnVjdCBpbnRlbF93b3BjbSAqd29wY20pCit7CisJcmV0dXJuIGNvbnRh
aW5lcl9vZih3b3BjbSwgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUsIHdvcGNtKTsKK30KKwogLyoq
CiAgKiBpbnRlbF93b3BjbV9pbml0X2Vhcmx5KCkgLSBFYXJseSBpbml0aWFsaXphdGlvbiBvZiB0
aGUgV09QQ00uCiAgKiBAd29wY206IHBvaW50ZXIgdG8gaW50ZWxfd29wY20uCi0tIAoyLjE5LjIK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
