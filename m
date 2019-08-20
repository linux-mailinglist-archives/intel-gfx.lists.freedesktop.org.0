Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 282E69604F
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 15:40:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FA656E7C1;
	Tue, 20 Aug 2019 13:40:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12EF86E7C1
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 13:40:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 06:40:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,408,1559545200"; d="scan'208";a="195772675"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 20 Aug 2019 06:40:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Aug 2019 16:40:16 +0300
Message-Id: <20190820134019.13229-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190820134019.13229-1-jani.nikula@intel.com>
References: <20190820134019.13229-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 2/5] drm/i915/dp: avoid shadowing variables
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RXZlcnl0aGluZyBzZWVtcyB0byBiZSBhbGwgcmlnaHQsIGJ1dCBzaGFkb3dpbmcgaXMgdG8gYmUg
YXZvaWRlZC4KCkNjOiBSYW1hbGluZ2FtIEMgPHJhbWFsaW5nYW0uY0BpbnRlbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgOCArKysrLS0tLQogMSBmaWxlIGNo
YW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMKaW5kZXggMDAxZDUyMDY2MGE5Li4wZDhhOGM0NzI5NmIgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKQEAgLTU4MjAsNyArNTgyMCw3
IEBAIHN0cnVjdCBoZGNwMl9kcF9tc2dfZGF0YSB7CiAJdTMyIHRpbWVvdXQyOyAvKiBBZGRlZCBm
b3Igbm9uX3BhaXJlZCBzaXR1YXRpb24gKi8KIH07CiAKLXN0YXRpYyBzdHJ1Y3QgaGRjcDJfZHBf
bXNnX2RhdGEgaGRjcDJfbXNnX2RhdGFbXSA9IHsKK3N0YXRpYyBzdHJ1Y3QgaGRjcDJfZHBfbXNn
X2RhdGEgaGRjcDJfZHBfbXNnX2RhdGFbXSA9IHsKIAl7IEhEQ1BfMl8yX0FLRV9JTklULCBEUF9I
RENQXzJfMl9BS0VfSU5JVF9PRkZTRVQsIGZhbHNlLCAwLCAwIH0sCiAJeyBIRENQXzJfMl9BS0Vf
U0VORF9DRVJULCBEUF9IRENQXzJfMl9BS0VfU0VORF9DRVJUX09GRlNFVCwKIAkgIGZhbHNlLCBI
RENQXzJfMl9DRVJUX1RJTUVPVVRfTVMsIDAgfSwKQEAgLTU5NTEsOSArNTk1MSw5IEBAIHN0YXRp
YyBzdHJ1Y3QgaGRjcDJfZHBfbXNnX2RhdGEgKmdldF9oZGNwMl9kcF9tc2dfZGF0YSh1OCBtc2df
aWQpCiB7CiAJaW50IGk7CiAKLQlmb3IgKGkgPSAwOyBpIDwgQVJSQVlfU0laRShoZGNwMl9tc2df
ZGF0YSk7IGkrKykKLQkJaWYgKGhkY3AyX21zZ19kYXRhW2ldLm1zZ19pZCA9PSBtc2dfaWQpCi0J
CQlyZXR1cm4gJmhkY3AyX21zZ19kYXRhW2ldOworCWZvciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpF
KGhkY3AyX2RwX21zZ19kYXRhKTsgaSsrKQorCQlpZiAoaGRjcDJfZHBfbXNnX2RhdGFbaV0ubXNn
X2lkID09IG1zZ19pZCkKKwkJCXJldHVybiAmaGRjcDJfZHBfbXNnX2RhdGFbaV07CiAKIAlyZXR1
cm4gTlVMTDsKIH0KLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
