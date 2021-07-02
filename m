Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C35B3BA4C7
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jul 2021 22:46:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16BB56E202;
	Fri,  2 Jul 2021 20:46:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B33D6E202
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jul 2021 20:46:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10033"; a="206958479"
X-IronPort-AV: E=Sophos;i="5.83,320,1616482800"; d="scan'208";a="206958479"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2021 13:46:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,320,1616482800"; d="scan'208";a="421280761"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 02 Jul 2021 13:46:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 02 Jul 2021 23:46:06 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Jul 2021 23:45:56 +0300
Message-Id: <20210702204603.596-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210702204603.596-1-ville.syrjala@linux.intel.com>
References: <20210702204603.596-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/8] drm/i915/fbc: Rewrite the FBC tiling check
 a bit
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldy
aXRlIHRoZSB0aWxpbmcgY2hlY2sgaW4gYSBuaWNlciBmb3JtLiBObyBmdW5jdGlvbmFsCmNoYW5n
ZXMgZHVlIHRvIFktdGlsZSBzY2Fub3V0IGJlaW5nIGEgZ2VuOSsgZmVhdHVyZS4KClJldmlld2Vk
LWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgfCA2ICsrLS0tLQogMSBmaWxlIGNo
YW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9mYmMuYwppbmRleCA4MmVmZmI2NGEzYjkuLjg1Y2ZiMGRhODU3NiAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCkBAIC02NzUsMTEgKzY3
NSw5IEBAIHN0YXRpYyBib29sIHRpbGluZ19pc192YWxpZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYsCiB7CiAJc3dpdGNoIChtb2RpZmllcikgewogCWNhc2UgRFJNX0ZPUk1BVF9N
T0RfTElORUFSOgotCQlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDkpCi0JCQlyZXR1cm4g
dHJ1ZTsKLQkJcmV0dXJuIGZhbHNlOwotCWNhc2UgSTkxNV9GT1JNQVRfTU9EX1hfVElMRUQ6CiAJ
Y2FzZSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRDoKKwkJcmV0dXJuIERJU1BMQVlfVkVSKGRldl9w
cml2KSA+PSA5OworCWNhc2UgSTkxNV9GT1JNQVRfTU9EX1hfVElMRUQ6CiAJCXJldHVybiB0cnVl
OwogCWRlZmF1bHQ6CiAJCXJldHVybiBmYWxzZTsKLS0gCjIuMzEuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
