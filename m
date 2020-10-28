Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 398FC29D235
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Oct 2020 22:07:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C5F66E3DF;
	Wed, 28 Oct 2020 21:07:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B73426E3DF
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Oct 2020 21:07:40 +0000 (UTC)
IronPort-SDR: sE9ykeLGMjbaTY0bN7tqaxq5YVG+YwJHIGebiTRWvGCqqJhw7CxCmzV/Sws05eTnlf3/4cqKS1
 bdeVeMQJmJQQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9788"; a="164839121"
X-IronPort-AV: E=Sophos;i="5.77,428,1596524400"; d="scan'208";a="164839121"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 14:07:36 -0700
IronPort-SDR: K8YgXAYzNV3jJMc29Cj3Le7X8LU2xK7L+AZ4PymW7jBr7M3VzuLFbChMmY7aw+iWmp7rLEDkED
 5IKqBJfgThzQ==
X-IronPort-AV: E=Sophos;i="5.77,428,1596524400"; d="scan'208";a="351160130"
Received: from vhurezea-mobl.amr.corp.intel.com (HELO josouza-mobl2.intel.com)
 ([10.209.10.178])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 14:07:35 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Oct 2020 14:07:12 -0700
Message-Id: <20201028210712.66475-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.29.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Force initial atomic check in all eDP
 panels
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

QWZ0ZXIgY29tbWl0IDAwZTVkZWI1YzRmNSAoImRybS9pOTE1OiBGaXggZW5jb2RlciBsb29rdXAg
ZHVyaW5nIFBTUgphdG9taWMgY2hlY2siKSBkaWdfcG9ydCB3YXMgbm90IGJlaW5nIHVzZWQgYnV0
IHdoaWxlIGZpeGluZyBpdCBJCnJlYWxpemVkIHRoYXQgd291bGQgYmUgYmV0dGVyIHRvIG1hcmsg
YWxsIENSVENzIHRoYXQgaGFzIGEgZURQCmNvbm5lY3RvciBhcyBuZWVkaW5nIHRvIGhhdmUgdGhl
aXIgc3RhdGUgY29tcHV0ZWQuClRoZSBwcmluY2lwYWwgcmVhc29uIGlzIHRoYXQgaW4gZnV0dXJl
IHdlIHdpbGwgc3VwcG9ydCBQU1IgaW4KbXVsdGlwbGUgcGFuZWxzLgpBbmQgdGhpcyBpcyBvbmx5
IGZvcmNpbmcgdGhlIHN0YXRlIGNvbXB1dGUgaWYgbm8gcmVnaXN0ZXIgY2hhbmdlIGlzCm5lZWQg
b3VyIGF0b21pYyBoYW5kbGluZyB3aWxsIGp1c3QgaWdub3JlIHRoaXMgQ1JUQyArIGNvbm5lY3Rv
cgpkdXJpbmcgdGhlIGF0b21pYyBjb21taXQgcGhhc2UuCgpDYzogSW1yZSBEZWFrIDxpbXJlLmRl
YWtAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3Nl
LnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jIHwgMTAgKystLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwg
OCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwpp
bmRleCAxNTc2YzM3MjJkMGIuLmI1NDQxZjBiNWI1OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jCkBAIC0xODc1LDE3ICsxODc1LDExIEBAIHZvaWQgaW50ZWxfcHNy
X2F0b21pY19jaGVjayhzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLAogCQkJICAgIHN0
cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlICpuZXdfc3RhdGUpCiB7CiAJc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjb25uZWN0b3ItPmRldik7Ci0Jc3RydWN0IGlu
dGVsX2Nvbm5lY3RvciAqaW50ZWxfY29ubmVjdG9yOwotCXN0cnVjdCBpbnRlbF9kaWdpdGFsX3Bv
cnQgKmRpZ19wb3J0OwogCXN0cnVjdCBkcm1fY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZTsKIAogCWlm
ICghQ0FOX1BTUihkZXZfcHJpdikgfHwgIW5ld19zdGF0ZS0+Y3J0YyB8fAotCSAgICAhZGV2X3By
aXYtPnBzci5mb3JjZV9tb2RlX2NoYW5nZWQpCi0JCXJldHVybjsKLQotCWludGVsX2Nvbm5lY3Rv
ciA9IHRvX2ludGVsX2Nvbm5lY3Rvcihjb25uZWN0b3IpOwotCWRpZ19wb3J0ID0gZW5jX3RvX2Rp
Z19wb3J0KHRvX2ludGVsX2VuY29kZXIobmV3X3N0YXRlLT5iZXN0X2VuY29kZXIpKTsKLQlpZiAo
ZGV2X3ByaXYtPnBzci5kcCAhPSAmZGlnX3BvcnQtPmRwKQorCSAgICAhZGV2X3ByaXYtPnBzci5m
b3JjZV9tb2RlX2NoYW5nZWQgfHwKKwkgICAgY29ubmVjdG9yLT5jb25uZWN0b3JfdHlwZSAhPSBE
Uk1fTU9ERV9DT05ORUNUT1JfZURQKQogCQlyZXR1cm47CiAKIAljcnRjX3N0YXRlID0gZHJtX2F0
b21pY19nZXRfbmV3X2NydGNfc3RhdGUobmV3X3N0YXRlLT5zdGF0ZSwKLS0gCjIuMjkuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
