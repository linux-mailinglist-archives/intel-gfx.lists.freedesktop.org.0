Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74EF3FCB76
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2019 18:07:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2ACF6EDCA;
	Thu, 14 Nov 2019 17:07:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F15706EDCA
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Nov 2019 17:07:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Nov 2019 09:07:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,304,1569308400"; d="scan'208";a="257508152"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.135])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Nov 2019 09:07:17 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Nov 2019 09:08:08 -0800
Message-Id: <20191114170810.14829-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 0/2] VBT "generic DTD" block
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VkJUIHJldmlzaW9uIDIyOSBpbnRyb2R1Y2VzIGEgbmV3ICJHZW5lcmljIERURCIgYmxvY2sgdG8g
ZGVmaW5lIG1vbml0b3IKdGltaW5nIGluZm9ybWF0aW9uIGFuZCBkZXByZWNhdGVzIHRoZSBvbGQg
TEZQIHBhbmVsIG1vZGUgZGF0YSB3ZSd2ZSBiZWVuCnVzaW5nIHVudGlsIG5vdy4KCnY0OiBSZWJh
c2UgJiByZXNlbmQ7IHBhdGNod29yayBnb3QgYSBiaXQgY29uZnVzZWQgYnkgdGhlIHRocmVhZGlu
ZyB3aGVuCiAgICB2MyB3YXMgc2VudCBhbmQgaXQgZmVsbCB0aHJvdWdoIHRoZSBjcmFja3MuCgpN
YXR0IFJvcGVyICgyKToKICBkcm0vaTkxNS92YnQ6IFBhcnNlIHBhbmVsIG9wdGlvbnMgc2VwYXJh
dGVseSBmcm9tIHRpbWluZyBkYXRhCiAgZHJtL2k5MTUvdmJ0OiBIYW5kbGUgZ2VuZXJpYyBEVEQg
YmxvY2sKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyAgICAgfCAx
MTEgKysrKysrKysrKysrKysrKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3ZidF9kZWZzLmggfCAgMzEgKysrKysKIDIgZmlsZXMgY2hhbmdlZCwgMTMyIGluc2VydGlvbnMo
KyksIDEwIGRlbGV0aW9ucygtKQoKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
