Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B28D6295807
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Oct 2020 07:41:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 783466F3C0;
	Thu, 22 Oct 2020 05:40:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B357E6F3A6
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Oct 2020 05:40:53 +0000 (UTC)
IronPort-SDR: C+rm1jivH9uolktBKvxIJqgVXqt5sbsFL7yWYZzHpcsTOVf5Nt3euFDMQUvB7zHdstzwNM/ygI
 +/4Xf0n8ItZw==
X-IronPort-AV: E=McAfee;i="6000,8403,9781"; a="146768362"
X-IronPort-AV: E=Sophos;i="5.77,403,1596524400"; d="scan'208";a="146768362"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 22:40:53 -0700
IronPort-SDR: 4d60lutti1o5e9anMnQklI6dCCg74b3BIhIhMV4/WWc11HUWLFttJR9HB/l2n9/TOGZi7QvBbX
 7j7JBIVJA+rw==
X-IronPort-AV: E=Sophos;i="5.77,403,1596524400"; d="scan'208";a="523012883"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 21 Oct 2020 22:40:53 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Oct 2020 22:42:14 -0700
Message-Id: <20201022054223.25071-4-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20201022054223.25071-1-manasi.d.navare@intel.com>
References: <20201022054223.25071-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v11 03/12] drm/i915/dp: Some reshuffling in
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
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgMTIg
KysrKysrLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwppbmRleCA4MThkYWFi
MjUyZjMuLjJjMjllN2Y1MjgxYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYwpAQCAtNzIxLDYgKzcyMSw5IEBAIGludGVsX2RwX21vZGVfdmFsaWQoc3RydWN0IGRybV9j
b25uZWN0b3IgKmNvbm5lY3RvciwKIAlpZiAobW9kZS0+ZmxhZ3MgJiBEUk1fTU9ERV9GTEFHX0RC
TFNDQU4pCiAJCXJldHVybiBNT0RFX05PX0RCTEVTQ0FOOwogCisJaWYgKG1vZGUtPmZsYWdzICYg
RFJNX01PREVfRkxBR19EQkxDTEspCisJCXJldHVybiBNT0RFX0hfSUxMRUdBTDsKKwogCWlmIChp
bnRlbF9kcF9pc19lZHAoaW50ZWxfZHApICYmIGZpeGVkX21vZGUpIHsKIAkJaWYgKG1vZGUtPmhk
aXNwbGF5ID4gZml4ZWRfbW9kZS0+aGRpc3BsYXkpCiAJCQlyZXR1cm4gTU9ERV9QQU5FTDsKQEAg
LTczMSw2ICs3MzQsOSBAQCBpbnRlbF9kcF9tb2RlX3ZhbGlkKHN0cnVjdCBkcm1fY29ubmVjdG9y
ICpjb25uZWN0b3IsCiAJCXRhcmdldF9jbG9jayA9IGZpeGVkX21vZGUtPmNsb2NrOwogCX0KIAor
CWlmIChtb2RlLT5jbG9jayA8IDEwMDAwKQorCQlyZXR1cm4gTU9ERV9DTE9DS19MT1c7CisKIAlt
YXhfbGlua19jbG9jayA9IGludGVsX2RwX21heF9saW5rX3JhdGUoaW50ZWxfZHApOwogCW1heF9s
YW5lcyA9IGludGVsX2RwX21heF9sYW5lX2NvdW50KGludGVsX2RwKTsKIApAQCAtNzcxLDEyICs3
NzcsNiBAQCBpbnRlbF9kcF9tb2RlX3ZhbGlkKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0
b3IsCiAJICAgIHRhcmdldF9jbG9jayA+IG1heF9kb3RjbGspCiAJCXJldHVybiBNT0RFX0NMT0NL
X0hJR0g7CiAKLQlpZiAobW9kZS0+Y2xvY2sgPCAxMDAwMCkKLQkJcmV0dXJuIE1PREVfQ0xPQ0tf
TE9XOwotCi0JaWYgKG1vZGUtPmZsYWdzICYgRFJNX01PREVfRkxBR19EQkxDTEspCi0JCXJldHVy
biBNT0RFX0hfSUxMRUdBTDsKLQogCXN0YXR1cyA9IGludGVsX2RwX21vZGVfdmFsaWRfZG93bnN0
cmVhbShpbnRlbF9jb25uZWN0b3IsCiAJCQkJCQltb2RlLCB0YXJnZXRfY2xvY2spOwogCWlmIChz
dGF0dXMgIT0gTU9ERV9PSykKLS0gCjIuMTkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
