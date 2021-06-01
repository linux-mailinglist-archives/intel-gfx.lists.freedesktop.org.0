Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CEBF397145
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jun 2021 12:18:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A367F6EA15;
	Tue,  1 Jun 2021 10:18:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF1B16EA12
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Jun 2021 10:18:09 +0000 (UTC)
IronPort-SDR: WRXq5H7SLWQ57ukKgTh4tK14VAb3eTnX3gRYYlQN2mOoNEvc+cTa/O1HI4XJNvG/V8Kr2JP7NK
 gxZ3EVwWjb6Q==
X-IronPort-AV: E=McAfee;i="6200,9189,10001"; a="190872116"
X-IronPort-AV: E=Sophos;i="5.83,239,1616482800"; d="scan'208";a="190872116"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 03:18:09 -0700
IronPort-SDR: PusxI8cpOR6+KAwW1SXETc5s9QY9JHyZG36U8e9zAd8A6QDH1TD0WHS0ulwzfbY1iuY4KWGfef
 +9tlPCnEN8yQ==
X-IronPort-AV: E=Sophos;i="5.83,239,1616482800"; d="scan'208";a="446906699"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.179])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 03:18:07 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Jun 2021 15:32:28 +0530
Message-Id: <20210601100228.6064-3-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210601100228.6064-1-anshuman.gupta@intel.com>
References: <20210601100228.6064-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC v3 2/2] drm/i915/display: Use AUDIO_VERBS for crtc
 power domain mask
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

VXNlIFBPV0VSX0RPTUFJTl9BVURJT19WRVJCUyBwb3dlciBkb21haW4gaW5zdGVhZCBvZgpQT1dF
Ul9ET01BSU5fQVVESU8gaW4gY3J0YyBwb3dlciBkb21haW4gbWFzay4KCkl0IHdpbGwgc2F2ZSB0
aGUgcG93ZXIgaW4gdXNlIGNhc2VzIHdoZW4gRFAvSERNSSBjb25uZWN0b3JzCmNvbmZpZ3VyZWQg
d2l0aCBQSVBFX0Egd2l0aG91dCBhbnkgYXVkaW8gcGxheWJhY2suCgpDYzogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IEthaSBWZWhtYW5lbiA8a2Fp
LnZlaG1hbmVuQGxpbnV4LmludGVsLmNvbT4KQ2M6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBp
bnRlbC5jb20+CkNjOiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+ClNpZ25lZC1vZmYt
Ynk6IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyAgICAgfCAyICstCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDIgKy0KIDIgZmlsZXMgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RkaS5jCmluZGV4IDNkODkxODY3NDE1My4uNTVjMzkyMTE0MjcyIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKQEAgLTM0OTQsNyArMzQ5NCw3
IEBAIHN0YXRpYyBib29sIGludGVsX2RkaV9pc19hdWRpb19lbmFibGVkKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwKIAlpZiAoY3B1X3RyYW5zY29kZXIgPT0gVFJBTlNDT0RFUl9F
RFApCiAJCXJldHVybiBmYWxzZTsKIAotCWlmICghaW50ZWxfZGlzcGxheV9wb3dlcl9pc19lbmFi
bGVkKGRldl9wcml2LCBQT1dFUl9ET01BSU5fQVVESU8pKQorCWlmICghaW50ZWxfZGlzcGxheV9w
b3dlcl9pc19lbmFibGVkKGRldl9wcml2LCBQT1dFUl9ET01BSU5fQVVESU9fVkVSQlMpKQogCQly
ZXR1cm4gZmFsc2U7CiAKIAlyZXR1cm4gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgSFNXX0FVRF9Q
SU5fRUxEX0NQX1ZMRCkgJgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYwppbmRleCAwYmIyZTU4MmM4N2YuLmMyNDQ2NTczOWFmNSAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTM4MjksNyArMzgyOSw3IEBA
IHN0YXRpYyB1NjQgZ2V0X2NydGNfcG93ZXJfZG9tYWlucyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSkKIAl9CiAKIAlpZiAoSEFTX0RESShkZXZfcHJpdikgJiYgY3J0Y19zdGF0
ZS0+aGFzX2F1ZGlvKQotCQltYXNrIHw9IEJJVF9VTEwoUE9XRVJfRE9NQUlOX0FVRElPKTsKKwkJ
bWFzayB8PSBCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVURJT19WRVJCUyk7CiAKIAlpZiAoY3J0Y19z
dGF0ZS0+c2hhcmVkX2RwbGwpCiAJCW1hc2sgfD0gQklUX1VMTChQT1dFUl9ET01BSU5fRElTUExB
WV9DT1JFKTsKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
