Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0864A168BF0
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Feb 2020 03:07:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 575206F5AB;
	Sat, 22 Feb 2020 02:07:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6058D6E393
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Feb 2020 02:07:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Feb 2020 18:07:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,470,1574150400"; d="scan'208";a="409315529"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.221])
 by orsmga005.jf.intel.com with ESMTP; 21 Feb 2020 18:07:32 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Feb 2020 18:08:10 -0800
Message-Id: <20200222020815.50599-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200222020815.50599-1-jose.souza@intel.com>
References: <20200222020815.50599-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/8] drm/i915/tgl: Implement Wa_1806527549
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

VGhpcyB3aWxsIHdoaXRlbGlzdCB0aGUgSElaX0NISUNLRU4gcmVnaXN0ZXIgc28gbWVzYSBjYW4g
ZGlzYWJsZSB0aGUKb3B0aW1pemF0aW9ucyBhbmQgdm9pZCBoYW5nIHdoZW4gdXNpbmcgRDE2X1VO
T1JNLgoKQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+CkNjOiBSYWZh
ZWwgQW50b2dub2xsaSA8cmFmYWVsLmFudG9nbm9sbGlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5
OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIHwgNCArKysrCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgIHwgMSArCiAyIGZpbGVzIGNoYW5n
ZWQsIDUgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3Jr
YXJvdW5kcy5jCmluZGV4IDU3YTVhMzllZTkwMi4uZmJlZDViZGM5ZTA0IDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKQEAgLTU5OCw2ICs1OTgsMTAgQEAg
c3RhdGljIHZvaWQgdGdsX2N0eF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVf
Y3MgKmVuZ2luZSwKIAl3YV9hZGQod2FsLCBGRl9NT0RFMiwgRkZfTU9ERTJfVERTX1RJTUVSX01B
U0ssIHZhbCwKIAkgICAgICAgSVNfVEdMX1JFVklEKGVuZ2luZS0+aTkxNSwgVEdMX1JFVklEX0Ew
LCBUR0xfUkVWSURfQTApID8gMCA6CiAJCQkgICAgRkZfTU9ERTJfVERTX1RJTUVSX01BU0spOwor
CisJLyogV2FfMTgwNjUyNzU0OTp0Z2wgKi8KKwlXQV9TRVRfQklUX01BU0tFRChISVpfQ0hJQ0tF
TiwKKwkJCSAgR0VOMTJfSFpfREVQVEhfVEVTVF9MRV9HRV9PUFRJTUlaQVRJT05fRElTQUJMRSk7
CiB9CiAKIHN0YXRpYyB2b2lkCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCBjZmMyMzhmZmQ0
YWUuLjQ5ODcyYTFkYzdhNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC03ODQzLDYgKzc4
NDMsNyBAQCBlbnVtIHsKIAogI2RlZmluZSBISVpfQ0hJQ0tFTgkJCQkJX01NSU8oMHg3MDE4KQog
IyBkZWZpbmUgQ0hWX0haXzhYOF9NT0RFX0lOXzFYCQkJCSgxIDw8IDE1KQorIyBkZWZpbmUgR0VO
MTJfSFpfREVQVEhfVEVTVF9MRV9HRV9PUFRJTUlaQVRJT05fRElTQUJMRQkoMSA8PCAxMykKICMg
ZGVmaW5lIEJEV19ISVpfUE9XRVJfQ09NUElMRVJfQ0xPQ0tfR0FUSU5HX0RJU0FCTEUJKDEgPDwg
MykKIAogI2RlZmluZSBHRU45X1NMSUNFX0NPTU1PTl9FQ09fQ0hJQ0tFTjAJCV9NTUlPKDB4NzMw
OCkKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
