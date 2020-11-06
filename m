Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 721CC2A9ACA
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Nov 2020 18:30:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B87E16EAB1;
	Fri,  6 Nov 2020 17:30:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72EF16EAB1
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Nov 2020 17:30:55 +0000 (UTC)
IronPort-SDR: catN8+iow8/s2uVSivXZwDbANDx5b3+01+KdnL/TWqkQ72rBK5traw3TjEwaSlLzDGFFDpNUas
 Wzfqne73nxmw==
X-IronPort-AV: E=McAfee;i="6000,8403,9797"; a="148854603"
X-IronPort-AV: E=Sophos;i="5.77,457,1596524400"; d="scan'208";a="148854603"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2020 09:30:54 -0800
IronPort-SDR: P2V+MW8/xFeLJrq3FtdtGDKG6rUo90rkIlsa/lhPP+Az9Z+J23MXExM23Pkp73s4VKG+UsJh2w
 YQDSzAYkby3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,457,1596524400"; d="scan'208";a="326483325"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 06 Nov 2020 09:30:52 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 06 Nov 2020 19:30:51 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Nov 2020 19:30:39 +0200
Message-Id: <20201106173042.7534-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201106173042.7534-1-ville.syrjala@linux.intel.com>
References: <20201106173042.7534-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/6] drm/i915: Pimp the watermark documentation
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkRv
Y3VtZW50IHdoYXQgZWFjaCBvZiB0aGUgInJhdyIgdnMuICJvcHRpbWFsIiB2cy4gImludGVybWVk
aWF0ZSIKd2F0ZXJtYXJrcyBkby4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgNDggKysrKysrKysrKy0tLS0tLS0tLQogMSBmaWxlIGNo
YW5nZWQsIDI1IGluc2VydGlvbnMoKyksIDIzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKaW5kZXggNmIyNDk5
NjljMzk0Li5iOTc3ZTcwZTM0ZDcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCkBAIC03MzcsMjUgKzczNywzNCBAQCBzdHJ1Y3Qg
ZzR4X3dtX3N0YXRlIHsKIAogc3RydWN0IGludGVsX2NydGNfd21fc3RhdGUgewogCXVuaW9uIHsK
KwkJLyoKKwkJICogcmF3OgorCQkgKiBUaGUgInJhdyIgd2F0ZXJtYXJrIHZhbHVlcyBwcm9kdWNl
ZCBieSB0aGUgZm9ybXVsYQorCQkgKiBnaXZlbiB0aGUgcGxhbmUncyBjdXJyZW50IHN0YXRlLiBU
aGV5IGRvIG5vdCBjb25zaWRlcgorCQkgKiBob3cgbXVjaCBGSUZPIGlzIGFjdHVhbGx5IGFsbG9j
YXRlZCBmb3IgZWFjaCBwbGFuZS4KKwkJICoKKwkJICogb3B0aW1hbDoKKwkJICogVGhlICJvcHRp
bWFsIiB3YXRlcm1hcmsgdmFsdWVzIGdpdmVuIHRoZSBjdXJyZW50CisJCSAqIHN0YXRlIG9mIHRo
ZSBwbGFuZXMgYW5kIHRoZSBhbW91bnQgb2YgRklGTworCQkgKiBhbGxvY2F0ZWQgdG8gZWFjaCwg
aWdub3JpbmcgYW55IHByZXZpb3VzIHN0YXRlCisJCSAqIG9mIHRoZSBwbGFuZXMuCisJCSAqCisJ
CSAqIGludGVybWVkaWF0ZToKKwkJICogVGhlICJpbnRlcm1lZGlhdGUiIHdhdGVybWFyayB2YWx1
ZXMgd2hlbiB0cmFuc2l0aW9uaW5nCisJCSAqIGJldHdlZW4gdGhlIG9sZCBhbmQgbmV3ICJvcHRp
bWFsIiB2YWx1ZXMuIFVzZWQgd2hlbgorCQkgKiB0aGUgd2F0ZXJtYXJrIHJlZ2lzdGVycyBhcmUg
c2luZ2xlIGJ1ZmZlcmVkIGFuZCBoZW5jZQorCQkgKiB0aGVpciBzdGF0ZSBjaGFuZ2VzIGFzeW5j
aHJvbm91c2x5IHdpdGggcmVnYXJkcyB0byB0aGUKKwkJICogYWN0dWFsIHBsYW5lIHJlZ2lzdGVy
cy4gVGhlc2UgYXJlIGVzc2VudGlhbGx5IHRoZQorCQkgKiB3b3JzdCBjYXNlIGNvbWJpbmF0aW9u
IG9mIHRoZSBvbGQgYW5kIG5ldyAib3B0aW1hbCIKKwkJICogd2F0ZXJtYXJrcywgd2hpY2ggYXJl
IHRoZXJlZm9yZSBzYWZlIHRvIHVzZSB3aGVuIHRoZQorCQkgKiBwbGFuZSBpcyBpbiBlaXRoZXIg
aXRzIG9sZCBvciBuZXcgc3RhdGUuCisJCSAqLwogCQlzdHJ1Y3QgewotCQkJLyoKLQkJCSAqIElu
dGVybWVkaWF0ZSB3YXRlcm1hcmtzOyB0aGVzZSBjYW4gYmUKLQkJCSAqIHByb2dyYW1tZWQgaW1t
ZWRpYXRlbHkgc2luY2UgdGhleSBzYXRpc2Z5Ci0JCQkgKiBib3RoIHRoZSBjdXJyZW50IGNvbmZp
Z3VyYXRpb24gd2UncmUKLQkJCSAqIHN3aXRjaGluZyBhd2F5IGZyb20gYW5kIHRoZSBuZXcKLQkJ
CSAqIGNvbmZpZ3VyYXRpb24gd2UncmUgc3dpdGNoaW5nIHRvLgotCQkJICovCiAJCQlzdHJ1Y3Qg
aW50ZWxfcGlwZV93bSBpbnRlcm1lZGlhdGU7Ci0KLQkJCS8qCi0JCQkgKiBPcHRpbWFsIHdhdGVy
bWFya3MsIHByb2dyYW1tZWQgcG9zdC12YmxhbmsKLQkJCSAqIHdoZW4gdGhpcyBzdGF0ZSBpcyBj
b21taXR0ZWQuCi0JCQkgKi8KIAkJCXN0cnVjdCBpbnRlbF9waXBlX3dtIG9wdGltYWw7CiAJCX0g
aWxrOwogCiAJCXN0cnVjdCB7Ci0JCQkvKiAicmF3IiB3YXRlcm1hcmtzICovCiAJCQlzdHJ1Y3Qg
c2tsX3BpcGVfd20gcmF3OwogCQkJLyogZ2VuOSsgb25seSBuZWVkcyAxLXN0ZXAgd20gcHJvZ3Jh
bW1pbmcgKi8KIAkJCXN0cnVjdCBza2xfcGlwZV93bSBvcHRpbWFsOwpAQCAtNzY1LDIyICs3NzQs
MTUgQEAgc3RydWN0IGludGVsX2NydGNfd21fc3RhdGUgewogCQl9IHNrbDsKIAogCQlzdHJ1Y3Qg
ewotCQkJLyogInJhdyIgd2F0ZXJtYXJrcyAobm90IGludmVydGVkKSAqLwotCQkJc3RydWN0IGc0
eF9waXBlX3dtIHJhd1tOVU1fVkxWX1dNX0xFVkVMU107Ci0JCQkvKiBpbnRlcm1lZGlhdGUgd2F0
ZXJtYXJrcyAoaW52ZXJ0ZWQpICovCi0JCQlzdHJ1Y3Qgdmx2X3dtX3N0YXRlIGludGVybWVkaWF0
ZTsKLQkJCS8qIG9wdGltYWwgd2F0ZXJtYXJrcyAoaW52ZXJ0ZWQpICovCi0JCQlzdHJ1Y3Qgdmx2
X3dtX3N0YXRlIG9wdGltYWw7Ci0JCQkvKiBkaXNwbGF5IEZJRk8gc3BsaXQgKi8KKwkJCXN0cnVj
dCBnNHhfcGlwZV93bSByYXdbTlVNX1ZMVl9XTV9MRVZFTFNdOyAvKiBub3QgaW52ZXJ0ZWQgKi8K
KwkJCXN0cnVjdCB2bHZfd21fc3RhdGUgaW50ZXJtZWRpYXRlOyAvKiBpbnZlcnRlZCAqLworCQkJ
c3RydWN0IHZsdl93bV9zdGF0ZSBvcHRpbWFsOyAvKiBpbnZlcnRlZCAqLwogCQkJc3RydWN0IHZs
dl9maWZvX3N0YXRlIGZpZm9fc3RhdGU7CiAJCX0gdmx2OwogCiAJCXN0cnVjdCB7Ci0JCQkvKiAi
cmF3IiB3YXRlcm1hcmtzICovCiAJCQlzdHJ1Y3QgZzR4X3BpcGVfd20gcmF3W05VTV9HNFhfV01f
TEVWRUxTXTsKLQkJCS8qIGludGVybWVkaWF0ZSB3YXRlcm1hcmtzICovCiAJCQlzdHJ1Y3QgZzR4
X3dtX3N0YXRlIGludGVybWVkaWF0ZTsKLQkJCS8qIG9wdGltYWwgd2F0ZXJtYXJrcyAqLwogCQkJ
c3RydWN0IGc0eF93bV9zdGF0ZSBvcHRpbWFsOwogCQl9IGc0eDsKIAl9OwotLSAKMi4yNi4yCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
