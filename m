Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DB513A2346
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 06:19:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAA866EB8D;
	Thu, 10 Jun 2021 04:19:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DE246E81E;
 Thu, 10 Jun 2021 04:19:02 +0000 (UTC)
IronPort-SDR: WzsqMIcayKHWUjaIfp0W1owC8t5VMYDKpmu036i9roBArZTqK2tJR39x2/sCPOHxtrz4V34WX/
 dG7bsLlSL0oQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10010"; a="203373016"
X-IronPort-AV: E=Sophos;i="5.83,262,1616482800"; d="scan'208";a="203373016"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 21:19:02 -0700
IronPort-SDR: Dq/Z5de/ETWjIRWXcAY3dpblD4YhHm2wPGCP8UG2yK0g3Y9UAH6Xzf2koGO4c4e6HwiPqhfwif
 kQX+Y1vzqDMg==
X-IronPort-AV: E=Sophos;i="5.83,262,1616482800"; d="scan'208";a="485997290"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 21:19:01 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Wed,  9 Jun 2021 21:36:47 -0700
Message-Id: <20210610043649.144416-12-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210610043649.144416-1-matthew.brost@intel.com>
References: <20210610043649.144416-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/13] drm/i915/guc: Kill ads.client_info
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

RnJvbTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+CgpOZXcg
R3VDIGRvZXMgbm90IHJlcXVpcmUgaXQgYW55IG1vcmUuCgpSZXZpZXdlZC1ieTogTWF0dGhldyBC
cm9zdCA8bWF0dGhldy5icm9zdEBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1pY2hhbCBXYWpk
ZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgpDYzogUGlvdHIgUGnDs3Jrb3dza2kg
PHBpb3RyLnBpb3Jrb3dza2lAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3VjL2ludGVsX2d1Y19hZHMuYyAgfCA3IC0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3VjL2ludGVsX2d1Y19md2lmLmggfCA4ICstLS0tLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspLCAxNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC91Yy9pbnRlbF9ndWNfYWRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9p
bnRlbF9ndWNfYWRzLmMKaW5kZXggNmUyNmZlMDRjZTkyLi5iODIxNDU2NTJkNTcgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19hZHMuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfYWRzLmMKQEAgLTI0LDggKzI0LDYgQEAK
ICAqICAgICAgKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSsKICAqICAg
ICAgfCBndWNfZ3Rfc3lzdGVtX2luZm8gICAgICAgICAgICAgICAgICAgIHwKICAqICAgICAgKy0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSsKLSAqICAgICAgfCBndWNfY2xp
ZW50c19pbmZvICAgICAgICAgICAgICAgICAgICAgIHwKLSAqICAgICAgKy0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSsKICAqICAgICAgfCBwYWRkaW5nICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHwKICAqICAgICAgKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLSsgPD09IDRLIGFsaWduZWQKICAqICAgICAgfCBwcml2YXRlIGRhdGEgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwKQEAgLTM3LDcgKzM1LDYgQEAgc3RydWN0IF9fZ3VjX2Fk
c19ibG9iIHsKIAlzdHJ1Y3QgZ3VjX2FkcyBhZHM7CiAJc3RydWN0IGd1Y19wb2xpY2llcyBwb2xp
Y2llczsKIAlzdHJ1Y3QgZ3VjX2d0X3N5c3RlbV9pbmZvIHN5c3RlbV9pbmZvOwotCXN0cnVjdCBn
dWNfY2xpZW50c19pbmZvIGNsaWVudHNfaW5mbzsKIH0gX19wYWNrZWQ7CiAKIHN0YXRpYyB1MzIg
Z3VjX2Fkc19wcml2YXRlX2RhdGFfc2l6ZShzdHJ1Y3QgaW50ZWxfZ3VjICpndWMpCkBAIC0xNTIs
MTMgKzE0OSw5IEBAIHN0YXRpYyB2b2lkIF9fZ3VjX2Fkc19pbml0KHN0cnVjdCBpbnRlbF9ndWMg
Kmd1YykKIAogCWJhc2UgPSBpbnRlbF9ndWNfZ2d0dF9vZmZzZXQoZ3VjLCBndWMtPmFkc192bWEp
OwogCi0JLyogQ2xpZW50cyBpbmZvICAqLwotCWJsb2ItPmNsaWVudHNfaW5mby5jbGllbnRzX251
bSA9IDE7Ci0KIAkvKiBBRFMgKi8KIAlibG9iLT5hZHMuc2NoZWR1bGVyX3BvbGljaWVzID0gYmFz
ZSArIHB0cl9vZmZzZXQoYmxvYiwgcG9saWNpZXMpOwogCWJsb2ItPmFkcy5ndF9zeXN0ZW1faW5m
byA9IGJhc2UgKyBwdHJfb2Zmc2V0KGJsb2IsIHN5c3RlbV9pbmZvKTsKLQlibG9iLT5hZHMuY2xp
ZW50c19pbmZvID0gYmFzZSArIHB0cl9vZmZzZXQoYmxvYiwgY2xpZW50c19pbmZvKTsKIAogCS8q
IFByaXZhdGUgRGF0YSAqLwogCWJsb2ItPmFkcy5wcml2YXRlX2RhdGEgPSBiYXNlICsgZ3VjX2Fk
c19wcml2YXRlX2RhdGFfb2Zmc2V0KGd1Yyk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC91Yy9pbnRlbF9ndWNfZndpZi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMv
aW50ZWxfZ3VjX2Z3aWYuaAppbmRleCAyMjY2NDQ0ZDA3NGYuLmYyZGY1YzExYzExZCAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2Z3aWYuaAorKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfZndpZi5oCkBAIC0yOTQsMTkgKzI5
NCwxMyBAQCBzdHJ1Y3QgZ3VjX2d0X3N5c3RlbV9pbmZvIHsKIAl1MzIgZ2VuZXJpY19ndF9zeXNp
bmZvW0dVQ19HRU5FUklDX0dUX1NZU0lORk9fTUFYXTsKIH0gX19wYWNrZWQ7CiAKLS8qIENsaWVu
dHMgaW5mbyAqLwotc3RydWN0IGd1Y19jbGllbnRzX2luZm8gewotCXUzMiBjbGllbnRzX251bTsK
LQl1MzIgcmVzZXJ2ZWRbMTldOwotfSBfX3BhY2tlZDsKLQogLyogR3VDIEFkZGl0aW9uYWwgRGF0
YSBTdHJ1Y3QgKi8KIHN0cnVjdCBndWNfYWRzIHsKIAlzdHJ1Y3QgZ3VjX21taW9fcmVnX3NldCBy
ZWdfc3RhdGVfbGlzdFtHVUNfTUFYX0VOR0lORV9DTEFTU0VTXVtHVUNfTUFYX0lOU1RBTkNFU19Q
RVJfQ0xBU1NdOwogCXUzMiByZXNlcnZlZDA7CiAJdTMyIHNjaGVkdWxlcl9wb2xpY2llczsKIAl1
MzIgZ3Rfc3lzdGVtX2luZm87Ci0JdTMyIGNsaWVudHNfaW5mbzsKKwl1MzIgcmVzZXJ2ZWQxOwog
CXUzMiBjb250cm9sX2RhdGE7CiAJdTMyIGdvbGRlbl9jb250ZXh0X2xyY2FbR1VDX01BWF9FTkdJ
TkVfQ0xBU1NFU107CiAJdTMyIGVuZ19zdGF0ZV9zaXplW0dVQ19NQVhfRU5HSU5FX0NMQVNTRVNd
OwotLSAKMi4yOC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
