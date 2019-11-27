Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C08E210B373
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 17:33:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04AA86E544;
	Wed, 27 Nov 2019 16:33:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30E726E546;
 Wed, 27 Nov 2019 16:33:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 08:33:49 -0800
X-IronPort-AV: E=Sophos;i="5.69,250,1571727600"; d="scan'208";a="261045075"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 08:33:47 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: linux-fbdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 27 Nov 2019 18:32:09 +0200
Message-Id: <fc8342eef9fcd2f55c86fcd78f7df52f7c76fa87.1574871797.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1574871797.git.jani.nikula@intel.com>
References: <cover.1574871797.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 13/13] samples: vfio-mdev: constify fb ops
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
 Kirti Wankhede <kwankhede@nvidia.com>, kvm@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Tm93IHRoYXQgdGhlIGZib3BzIG1lbWJlciBvZiBzdHJ1Y3QgZmJfaW5mbyBpcyBjb25zdCwgd2Ug
Y2FuIHN0YXIgbWFraW5nCnRoZSBvcHMgY29uc3QgYXMgd2VsbC4KCkNjOiBLaXJ0aSBXYW5raGVk
ZSA8a3dhbmtoZWRlQG52aWRpYS5jb20+CkNjOiBrdm1Admdlci5rZXJuZWwub3JnClNpZ25lZC1v
ZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Ci0tLQogc2FtcGxlcy92
ZmlvLW1kZXYvbWRweS1mYi5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvc2FtcGxlcy92ZmlvLW1kZXYvbWRweS1mYi5j
IGIvc2FtcGxlcy92ZmlvLW1kZXYvbWRweS1mYi5jCmluZGV4IDI3MTliYjI1OTY1My4uMjFkYmY2
M2Q2ZTQxIDEwMDY0NAotLS0gYS9zYW1wbGVzL3ZmaW8tbWRldi9tZHB5LWZiLmMKKysrIGIvc2Ft
cGxlcy92ZmlvLW1kZXYvbWRweS1mYi5jCkBAIC04Niw3ICs4Niw3IEBAIHN0YXRpYyB2b2lkIG1k
cHlfZmJfZGVzdHJveShzdHJ1Y3QgZmJfaW5mbyAqaW5mbykKIAkJaW91bm1hcChpbmZvLT5zY3Jl
ZW5fYmFzZSk7CiB9CiAKLXN0YXRpYyBzdHJ1Y3QgZmJfb3BzIG1kcHlfZmJfb3BzID0geworc3Rh
dGljIGNvbnN0IHN0cnVjdCBmYl9vcHMgbWRweV9mYl9vcHMgPSB7CiAJLm93bmVyCQk9IFRISVNf
TU9EVUxFLAogCS5mYl9kZXN0cm95CT0gbWRweV9mYl9kZXN0cm95LAogCS5mYl9zZXRjb2xyZWcJ
PSBtZHB5X2ZiX3NldGNvbHJlZywKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
