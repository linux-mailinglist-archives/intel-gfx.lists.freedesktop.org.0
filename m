Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D0C3010EA
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Jan 2021 00:22:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62E236EA78;
	Fri, 22 Jan 2021 23:22:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D8D36E900
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 23:22:30 +0000 (UTC)
IronPort-SDR: 2RSCY3mUIesnyKYdMTGC0tUdpc02haIFvsXEHPpDFuzPeLFwqtxW++3/oxjC+wNotmJ1Ib3VIh
 DysZATYN2YBg==
X-IronPort-AV: E=McAfee;i="6000,8403,9872"; a="264344446"
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="264344446"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 15:22:29 -0800
IronPort-SDR: pTE7ubBE7FvLgSsqzzehQxODBgEv4hnPXu5RYIF2eQ4ta6QxZCJTSTcda1nNTvyGSHriGgMhXw
 7RpTOM4ge3WA==
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="392466003"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 22 Jan 2021 15:22:29 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Jan 2021 15:26:33 -0800
Message-Id: <20210122232647.22688-4-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20210122232647.22688-1-manasi.d.navare@intel.com>
References: <20210122232647.22688-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI v5 04/18] drm/i915: Extract
 intel_mode_vblank_start()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldl
IHdhbnQgdG8gY2FsY3VsYXRlIHRoZSB2Ymxhbmtfc3RhcnQgZm9yIHZibGFuayBldmFzaW9uCmRp
ZmZlcmVudGx5IGZvciB2cnIuIFRvIG1ha2UgdGhhdCBuaWNlciBsZXRzIGZpcnN0IGV4dHJhY3QK
dGhlIGN1cnJlbnQgbm9uLXZyciBjYXNlIHRvIGEgaGVscGVyLgoKU2lnbmVkLW9mZi1ieTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6
IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYyB8IDE0ICsrKysrKysrKysrLS0tCiAx
IGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYwppbmRleCA4MTFjZjIyODk4ZDIu
LjQwYzQ4Yjg5M2IzZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9zcHJpdGUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nw
cml0ZS5jCkBAIC02Miw2ICs2MiwxNiBAQCBpbnQgaW50ZWxfdXNlY3NfdG9fc2NhbmxpbmVzKGNv
bnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICphZGp1c3RlZF9tb2RlLAogCQkJICAgIDEwMDAg
KiBhZGp1c3RlZF9tb2RlLT5jcnRjX2h0b3RhbCk7CiB9CiAKK3N0YXRpYyBpbnQgaW50ZWxfbW9k
ZV92Ymxhbmtfc3RhcnQoY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKm1vZGUpCit7CisJ
aW50IHZibGFua19zdGFydCA9IG1vZGUtPmNydGNfdmJsYW5rX3N0YXJ0OworCisJaWYgKG1vZGUt
PmZsYWdzICYgRFJNX01PREVfRkxBR19JTlRFUkxBQ0UpCisJCXZibGFua19zdGFydCA9IERJVl9S
T1VORF9VUCh2Ymxhbmtfc3RhcnQsIDIpOworCisJcmV0dXJuIHZibGFua19zdGFydDsKK30KKwog
LyoqCiAgKiBpbnRlbF9waXBlX3VwZGF0ZV9zdGFydCgpIC0gc3RhcnQgdXBkYXRlIG9mIGEgc2V0
IG9mIGRpc3BsYXkgcmVnaXN0ZXJzCiAgKiBAbmV3X2NydGNfc3RhdGU6IHRoZSBuZXcgY3J0YyBz
dGF0ZQpAQCAtOTAsOSArMTAwLDcgQEAgdm9pZCBpbnRlbF9waXBlX3VwZGF0ZV9zdGFydChjb25z
dCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUpCiAJaWYgKG5ld19jcnRj
X3N0YXRlLT51YXBpLmFzeW5jX2ZsaXApCiAJCXJldHVybjsKIAotCXZibGFua19zdGFydCA9IGFk
anVzdGVkX21vZGUtPmNydGNfdmJsYW5rX3N0YXJ0OwotCWlmIChhZGp1c3RlZF9tb2RlLT5mbGFn
cyAmIERSTV9NT0RFX0ZMQUdfSU5URVJMQUNFKQotCQl2Ymxhbmtfc3RhcnQgPSBESVZfUk9VTkRf
VVAodmJsYW5rX3N0YXJ0LCAyKTsKKwl2Ymxhbmtfc3RhcnQgPSBpbnRlbF9tb2RlX3ZibGFua19z
dGFydChhZGp1c3RlZF9tb2RlKTsKIAogCS8qIEZJWE1FIG5lZWRzIHRvIGJlIGNhbGlicmF0ZWQg
c2Vuc2libHkgKi8KIAltaW4gPSB2Ymxhbmtfc3RhcnQgLSBpbnRlbF91c2Vjc190b19zY2FubGlu
ZXMoYWRqdXN0ZWRfbW9kZSwKLS0gCjIuMTkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
