Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D08D22AA090
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Nov 2020 23:55:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C2DA6EB46;
	Fri,  6 Nov 2020 22:55:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B7836EB40
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Nov 2020 22:55:54 +0000 (UTC)
IronPort-SDR: 1LxRSjqXTcT8lvS+4MQgU2NUow+sZBwkzuD2bXC0wqTBbFgsgXOAdIdwUvh5BEDVswhsewBAsi
 9gkX/2cmncXA==
X-IronPort-AV: E=McAfee;i="6000,8403,9797"; a="167022952"
X-IronPort-AV: E=Sophos;i="5.77,457,1596524400"; d="scan'208";a="167022952"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2020 14:55:53 -0800
IronPort-SDR: vZqxZNiM2S6JcUREhSb/VNhoiiYEVmwIhzqlP064XL5jD+CAEZuLfnq/xyd2grhN7DIAUGGGQp
 3+zlj32wvKfw==
X-IronPort-AV: E=Sophos;i="5.77,457,1596524400"; d="scan'208";a="540022747"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2020 14:55:52 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Nov 2020 14:55:27 -0800
Message-Id: <20201106225531.920641-4-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20201106225531.920641-1-lucas.demarchi@intel.com>
References: <20201106225531.920641-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/8] drm/i915/display: return earlier from
 intel_modeset_init() without display
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KCiFIQVNfRElTUExBWSgp
IGltcGxpZXMgIUhBU19PVkVSTEFZKCksIHNraXBwaW5nIG92ZXJsYXkgc2V0dXAgYW55d2F5LCBz
bwpyZXR1cm4gZWFybGllciBmcm9tIGludGVsX21vZGVzZXRfaW5pdCgpIGZvciBjbGFyaXR5LgoK
Q2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+ClNpZ25lZC1vZmYt
Ynk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNCArKy0tCiAxIGZpbGUg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggYjZhOWQ0MWEwNDNlLi5iM2U2
YzQzZjBjYjIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jCkBAIC0xODM2NCwxMSArMTgzNjQsMTEgQEAgaW50IGludGVsX21vZGVzZXRfaW5pdChzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIHsKIAlpbnQgcmV0OwogCi0JaW50ZWxfb3Zlcmxh
eV9zZXR1cChpOTE1KTsKLQogCWlmICghSEFTX0RJU1BMQVkoaTkxNSkpCiAJCXJldHVybiAwOwog
CisJaW50ZWxfb3ZlcmxheV9zZXR1cChpOTE1KTsKKwogCXJldCA9IGludGVsX2ZiZGV2X2luaXQo
Jmk5MTUtPmRybSk7CiAJaWYgKHJldCkKIAkJcmV0dXJuIHJldDsKLS0gCjIuMjkuMAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
