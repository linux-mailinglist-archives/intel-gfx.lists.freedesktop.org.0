Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFA42305083
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 05:12:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 909F86E505;
	Wed, 27 Jan 2021 04:12:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 719846E4F9
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 04:12:32 +0000 (UTC)
IronPort-SDR: A3nQT1hQ+SRdZWVuXeGHKHrdv10rP2yPnYuaInDVebsldB4QnT2Q/kTrAjtopBG5KfZrsohaT6
 6HdtdGUfFUNA==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="167110821"
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="167110821"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 20:12:31 -0800
IronPort-SDR: bWb9lX3SQjW9otITF+3mHt3w2M+Vb6MPkC1wNJAsNtkgsV5A2PxBgSq8FuG1iUCMe6mLnz1Pgp
 7iRk+Df99UPg==
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="473006398"
Received: from njcaminx-mobl.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.251.9.202])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 20:12:31 -0800
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Jan 2021 20:11:57 -0800
Message-Id: <20210127041159.136409-8-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210127041159.136409-1-aditya.swarup@intel.com>
References: <20210127041159.136409-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 7/9] drm/i915/adl_s: Update memory bandwidth
 parameters
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVGVqYXMgVXBhZGh5YXkgPHRlamFza3VtYXJ4LnN1cmVuZHJha3VtYXIudXBhZGh5YXlA
aW50ZWwuY29tPgoKSnVzdCBsaWtlIFJLTCwgdGhlIEFETF9TIHBsYXRmb3JtIGFsc28gaGFzIGRp
ZmZlcmVudCBtZW1vcnkKY2hhcmFjdGVyaXN0aWNzIGZyb20gcGFzdCBwbGF0Zm9ybXMuICBVcGRh
dGUgdGhlIHZhbHVlcyB1c2VkCmJ5IG91ciBtZW1vcnkgYmFuZHdpZHRoIGNhbGN1bGF0aW9ucyBh
Y2NvcmRpbmdseS4KCkJzcGVjOiA2NDYzMQpDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVy
QGludGVsLmNvbT4KQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29t
PgpDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KQ2M6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBJbXJlIERlYWsgPGltcmUu
ZGVha0BpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFRlamFzIFVwYWRoeWF5IDx0ZWphc2t1bWFy
eC5zdXJlbmRyYWt1bWFyLnVwYWRoeWF5QGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQWRpdHlh
IFN3YXJ1cCA8YWRpdHlhLnN3YXJ1cEBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBBbnVzaGEgU3Jp
dmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9idy5jIHwgOCArKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDggaW5z
ZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYncuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYwppbmRleCBi
ZDA2MDQwNGQyNDkuLjMyNTIyZWMxZmZiOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9idy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYncuYwpAQCAtMjA1LDYgKzIwNSwxMiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVs
X3NhX2luZm8gcmtsX3NhX2luZm8gPSB7CiAJLmRpc3BsYXlydGlkcyA9IDEyOCwKIH07CiAKK3N0
YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfc2FfaW5mbyBhZGxzX3NhX2luZm8gPSB7CisJLmRlYnVy
c3QgPSAxNiwKKwkuZGVwcm9nYndsaW1pdCA9IDM4LCAvKiBHQi9zICovCisJLmRpc3BsYXlydGlk
cyA9IDI1NiwKK307CisKIHN0YXRpYyBpbnQgaWNsX2dldF9id19pbmZvKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwgY29uc3Qgc3RydWN0IGludGVsX3NhX2luZm8gKnNhKQogewog
CXN0cnVjdCBpbnRlbF9xZ3ZfaW5mbyBxaSA9IHt9OwpAQCAtMzE3LDYgKzMyMyw4IEBAIHZvaWQg
aW50ZWxfYndfaW5pdF9odyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAKIAlp
ZiAoSVNfUk9DS0VUTEFLRShkZXZfcHJpdikpCiAJCWljbF9nZXRfYndfaW5mbyhkZXZfcHJpdiwg
JnJrbF9zYV9pbmZvKTsKKwllbHNlIGlmIChJU19BTERFUkxBS0VfUyhkZXZfcHJpdikpCisJCWlj
bF9nZXRfYndfaW5mbyhkZXZfcHJpdiwgJmFkbHNfc2FfaW5mbyk7CiAJZWxzZSBpZiAoSVNfR0VO
KGRldl9wcml2LCAxMikpCiAJCWljbF9nZXRfYndfaW5mbyhkZXZfcHJpdiwgJnRnbF9zYV9pbmZv
KTsKIAllbHNlIGlmIChJU19HRU4oZGV2X3ByaXYsIDExKSkKLS0gCjIuMjcuMAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
