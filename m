Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D7AFB899
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2019 20:16:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D461C6EE1D;
	Wed, 13 Nov 2019 19:16:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDC736EE1D
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Nov 2019 19:16:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Nov 2019 11:16:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,301,1569308400"; d="scan'208";a="406069016"
Received: from invictus.jf.intel.com ([10.54.75.159])
 by fmsmga006.fm.intel.com with ESMTP; 13 Nov 2019 11:16:39 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Nov 2019 11:18:39 -0800
Message-Id: <20191113191840.23620-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/tgl: Wa_1606679103
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

RXh0ZW5kIGRpc2FibGluZyBTQU1QTEVSX1NUQVRFIHByZWZldGNoIHdvcmthcm91bmQgdG8gZ2Vu
MTIuCgpCU3BlYzogNTI4OTAKQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXgu
aW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBSYWRoYWtyaXNobmEgU3JpcGFkYSA8cmFkaGFrcmlz
aG5hLnNyaXBhZGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3dvcmthcm91bmRzLmMgfCAxMiArKysrKysrLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2Vy
dGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3dvcmthcm91bmRzLmMKaW5kZXggZTRiY2NjMTQ2MDJmLi42ODE4ZDZiM2NjOTAgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwpAQCAtMTM3MCwxMSArMTM3
MCw2IEBAIHJjc19lbmdpbmVfd2FfaW5pdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUs
IHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkKIAkJCQkgICAgR0VON19TQVJDSEtNRCwKIAkJCQkg
ICAgR0VON19ESVNBQkxFX0RFTUFORF9QUkVGRVRDSCk7CiAKLQkJLyogV2FfMTYwNjY4MjE2Njpp
Y2wgKi8KLQkJd2Ffd3JpdGVfb3Iod2FsLAotCQkJICAgIEdFTjdfU0FSQ0hLTUQsCi0JCQkgICAg
R0VON19ESVNBQkxFX1NBTVBMRVJfUFJFRkVUQ0gpOwotCiAJCS8qIFdhXzE0MDkxNzgwOTI6aWNs
ICovCiAJCXdhX3dyaXRlX21hc2tlZF9vcih3YWwsCiAJCQkJICAgR0VOMTFfU0NSQVRDSDIsCkBA
IC0xMzgyLDYgKzEzNzcsMTMgQEAgcmNzX2VuZ2luZV93YV9pbml0KHN0cnVjdCBpbnRlbF9lbmdp
bmVfY3MgKmVuZ2luZSwgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQogCQkJCSAgIDApOwogCX0K
IAorCWlmIChJU19HRU5fUkFOR0UoaTkxNSwgMTEsIDEyKSkgeworCQkvKiBXYV8xNjA2NjgyMTY2
OmljbCx0Z2wgKi8KKwkJd2Ffd3JpdGVfb3Iod2FsLAorCQkJICAgIEdFTjdfU0FSQ0hLTUQsCisJ
CQkgICAgR0VON19ESVNBQkxFX1NBTVBMRVJfUFJFRkVUQ0gpOworCX0KKwogCWlmIChJU19HRU5f
UkFOR0UoaTkxNSwgOSwgMTEpKSB7CiAJCS8qIEZ0clBlckN0eHRQcmVlbXB0aW9uR3JhbnVsYXJp
dHlDb250cm9sOnNrbCxieHQsa2JsLGNmbCxjbmwsaWNsICovCiAJCXdhX21hc2tlZF9lbih3YWws
Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
