Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B0D2A8DFB
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Nov 2020 05:02:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEA766EDFA;
	Fri,  6 Nov 2020 04:01:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D9566EA2A
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Nov 2020 04:01:53 +0000 (UTC)
IronPort-SDR: WFx4E0g4CUN9VAOOUfsp1CiJPgHfNEzDHdp0Z8vp22koTJnz90eyFr6qrmYCAcHF9F1OdbOaUR
 O5ayZScG5+Ow==
X-IronPort-AV: E=McAfee;i="6000,8403,9796"; a="157278276"
X-IronPort-AV: E=Sophos;i="5.77,455,1596524400"; d="scan'208";a="157278276"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2020 20:01:51 -0800
IronPort-SDR: 8TZR2SaRjV3Uj0SNt1TDr4rPuaLguQhMexEDQkJDIQSRl95xzdbM6PFG5N0TvmiVatLtCq64c9
 HrOjPGawEUCw==
X-IronPort-AV: E=Sophos;i="5.77,455,1596524400"; d="scan'208";a="471918690"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 05 Nov 2020 20:01:51 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Nov 2020 20:03:42 -0800
Message-Id: <20201106040355.12809-2-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20201106040355.12809-1-manasi.d.navare@intel.com>
References: <20201106040355.12809-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v15 01/14] drm/i915/dp: Some reshuffling in
 mode_valid as prep for bigjoiner modes
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

Tm8gZnVuY3Rpb25hbCBjaGFuZ2VzLiBUaGlzIHBhdGNoIGp1c3QgbW92ZXMgc29tZSBtb2RlIGNo
ZWNrcwphcm91bmQgdG8gcHJlcGFyZSBmb3IgYWRkaW5nIGJpZ2pvaW5lciByZWxhdGVkIG1vZGUg
dmFsaWRhdGlvbgoKQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+ClNpZ25lZC1vZmYtYnk6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRl
bC5jb20+ClJldmlld2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8
IDEyICsrKysrKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNiBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKaW5kZXggM2Iw
ZGJkYTU5MTlhLi5lYzgzNTlmMDNhYWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmMKQEAgLTcyMSw2ICs3MjEsOSBAQCBpbnRlbF9kcF9tb2RlX3ZhbGlkKHN0cnVjdCBk
cm1fY29ubmVjdG9yICpjb25uZWN0b3IsCiAJaWYgKG1vZGUtPmZsYWdzICYgRFJNX01PREVfRkxB
R19EQkxTQ0FOKQogCQlyZXR1cm4gTU9ERV9OT19EQkxFU0NBTjsKIAorCWlmIChtb2RlLT5mbGFn
cyAmIERSTV9NT0RFX0ZMQUdfREJMQ0xLKQorCQlyZXR1cm4gTU9ERV9IX0lMTEVHQUw7CisKIAlp
ZiAoaW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSAmJiBmaXhlZF9tb2RlKSB7CiAJCWlmIChtb2Rl
LT5oZGlzcGxheSA+IGZpeGVkX21vZGUtPmhkaXNwbGF5KQogCQkJcmV0dXJuIE1PREVfUEFORUw7
CkBAIC03MzEsNiArNzM0LDkgQEAgaW50ZWxfZHBfbW9kZV92YWxpZChzdHJ1Y3QgZHJtX2Nvbm5l
Y3RvciAqY29ubmVjdG9yLAogCQl0YXJnZXRfY2xvY2sgPSBmaXhlZF9tb2RlLT5jbG9jazsKIAl9
CiAKKwlpZiAobW9kZS0+Y2xvY2sgPCAxMDAwMCkKKwkJcmV0dXJuIE1PREVfQ0xPQ0tfTE9XOwor
CiAJbWF4X2xpbmtfY2xvY2sgPSBpbnRlbF9kcF9tYXhfbGlua19yYXRlKGludGVsX2RwKTsKIAlt
YXhfbGFuZXMgPSBpbnRlbF9kcF9tYXhfbGFuZV9jb3VudChpbnRlbF9kcCk7CiAKQEAgLTc3MSwx
MiArNzc3LDYgQEAgaW50ZWxfZHBfbW9kZV92YWxpZChzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29u
bmVjdG9yLAogCSAgICB0YXJnZXRfY2xvY2sgPiBtYXhfZG90Y2xrKQogCQlyZXR1cm4gTU9ERV9D
TE9DS19ISUdIOwogCi0JaWYgKG1vZGUtPmNsb2NrIDwgMTAwMDApCi0JCXJldHVybiBNT0RFX0NM
T0NLX0xPVzsKLQotCWlmIChtb2RlLT5mbGFncyAmIERSTV9NT0RFX0ZMQUdfREJMQ0xLKQotCQly
ZXR1cm4gTU9ERV9IX0lMTEVHQUw7Ci0KIAlzdGF0dXMgPSBpbnRlbF9kcF9tb2RlX3ZhbGlkX2Rv
d25zdHJlYW0oaW50ZWxfY29ubmVjdG9yLAogCQkJCQkJbW9kZSwgdGFyZ2V0X2Nsb2NrKTsKIAlp
ZiAoc3RhdHVzICE9IE1PREVfT0spCi0tIAoyLjE5LjEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
