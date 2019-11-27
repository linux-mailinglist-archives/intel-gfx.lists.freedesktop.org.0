Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F5B10B370
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 17:33:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0D806E53E;
	Wed, 27 Nov 2019 16:33:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74C7A6E392;
 Wed, 27 Nov 2019 16:33:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 08:33:38 -0800
X-IronPort-AV: E=Sophos;i="5.69,250,1571727600"; d="scan'208";a="409063466"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 08:33:35 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: linux-fbdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 27 Nov 2019 18:32:07 +0200
Message-Id: <a578b8c791e1223112b43d0e209766ba4e4ddcbc.1574871797.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1574871797.git.jani.nikula@intel.com>
References: <cover.1574871797.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 11/13] HID: picoLCD: constify fb ops
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org,
 =?UTF-8?q?Bruno=20Pr=C3=A9mont?= <bonbons@linux-vserver.org>,
 linux-input@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Tm93IHRoYXQgdGhlIGZib3BzIG1lbWJlciBvZiBzdHJ1Y3QgZmJfaW5mbyBpcyBjb25zdCwgd2Ug
Y2FuIHN0YXIgbWFraW5nCnRoZSBvcHMgY29uc3QgYXMgd2VsbC4KCkNjOiBCcnVubyBQcsOpbW9u
dCA8Ym9uYm9uc0BsaW51eC12c2VydmVyLm9yZz4KQ2M6IGxpbnV4LWlucHV0QHZnZXIua2VybmVs
Lm9yZwpTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvaGlkL2hpZC1waWNvbGNkX2ZiLmMgfCAzICstLQogMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvaGlk
L2hpZC1waWNvbGNkX2ZiLmMgYi9kcml2ZXJzL2hpZC9oaWQtcGljb2xjZF9mYi5jCmluZGV4IGUx
NjJhNjY4ZmI3ZS4uYTU0OWM0MmU4YzkwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2hpZC9oaWQtcGlj
b2xjZF9mYi5jCisrKyBiL2RyaXZlcnMvaGlkL2hpZC1waWNvbGNkX2ZiLmMKQEAgLTQxNyw4ICs0
MTcsNyBAQCBzdGF0aWMgaW50IHBpY29sY2Rfc2V0X3BhcihzdHJ1Y3QgZmJfaW5mbyAqaW5mbykK
IAlyZXR1cm4gMDsKIH0KIAotLyogTm90ZSB0aGlzIGNhbid0IGJlIGNvbnN0IGJlY2F1c2Ugb2Yg
c3RydWN0IGZiX2luZm8gZGVmaW5pdGlvbiAqLwotc3RhdGljIHN0cnVjdCBmYl9vcHMgcGljb2xj
ZGZiX29wcyA9IHsKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgZmJfb3BzIHBpY29sY2RmYl9vcHMgPSB7
CiAJLm93bmVyICAgICAgICA9IFRISVNfTU9EVUxFLAogCS5mYl9kZXN0cm95ICAgPSBwaWNvbGNk
X2ZiX2Rlc3Ryb3ksCiAJLmZiX3JlYWQgICAgICA9IGZiX3N5c19yZWFkLAotLSAKMi4yMC4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
