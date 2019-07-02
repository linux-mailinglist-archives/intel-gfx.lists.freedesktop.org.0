Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BD365C881
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2019 06:44:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D343989B01;
	Tue,  2 Jul 2019 04:44:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C89189B01
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jul 2019 04:44:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Jul 2019 21:44:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,442,1557212400"; d="scan'208";a="157506400"
Received: from vandita-desktop.iind.intel.com ([10.223.74.126])
 by orsmga008.jf.intel.com with ESMTP; 01 Jul 2019 21:44:21 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 Jul 2019 09:48:48 +0530
Message-Id: <20190702041850.4293-3-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
In-Reply-To: <20190702041850.4293-1-vandita.kulkarni@intel.com>
References: <20190702041850.4293-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/tgl/dsi: Set latency PCS_DW1 for
 tgl
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

UmVzdCBvZiB0aGUgbGF0ZW5jeSBwcm9ncmFtbWluZyByZW1haW5zIHNhbWUgYXMKdGhhdCBvZiBJ
Q0wuCgpTaWduZWQtb2ZmLWJ5OiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYyB8IDQg
KystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jCmluZGV4IDU1NmViYTI2MzZmZS4uZTM5
ODA2NzZiY2VmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9k
c2kuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYwpAQCAtNDA0
LDggKzQwNCw4IEBAIHN0YXRpYyB2b2lkIGdlbjExX2RzaV9jb25maWdfcGh5X2xhbmVzX3NlcXVl
bmNlKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKQogCQl0bXAgfD0gRlJDX0xBVEVOQ1lf
T1BUSU1fVkFMKDB4NSk7CiAJCUk5MTVfV1JJVEUoSUNMX1BPUlRfVFhfRFcyX0dSUChwb3J0KSwg
dG1wKTsKIAotCQkvKiBGb3IgRUhMIHNldCBsYXRlbmN5IG9wdGltaXphdGlvbiBmb3IgUENTX0RX
MSBsYW5lcyAqLwotCQlpZiAoSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpKSB7CisJCS8qIEVITCBh
bmQgVEdMLCBzZXQgbGF0ZW5jeSBvcHRpbWl6YXRpb24gZm9yIFBDU19EVzEgbGFuZXMgKi8KKwkJ
aWYgKElTX0VMS0hBUlRMQUtFKGRldl9wcml2KSB8fCAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAx
MikpIHsKIAkJCXRtcCA9IEk5MTVfUkVBRChJQ0xfUE9SVF9QQ1NfRFcxX0FVWChwb3J0KSk7CiAJ
CQl0bXAgJj0gfkxBVEVOQ1lfT1BUSU1fTUFTSzsKIAkJCXRtcCB8PSBMQVRFTkNZX09QVElNX1ZB
TCgwKTsKLS0gCjIuMjEuMC41LmdhZWI1ODJhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
