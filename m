Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5DF1350E0
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 22:30:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E83D589C84;
	Tue,  4 Jun 2019 20:30:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4F6589C84
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2019 20:30:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2019 13:30:14 -0700
X-ExtLoop1: 1
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga001.fm.intel.com with ESMTP; 04 Jun 2019 13:30:14 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jun 2019 13:29:21 -0700
Message-Id: <20190604202921.22196-2-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190604202921.22196-1-daniele.ceraolospurio@intel.com>
References: <20190604202921.22196-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] HAX: Turn on GuC/HuC auto mode
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

RnJvbTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+CgpSdW4g
R3VDLCBydW4hCgpTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVj
emtvQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oIHwg
MiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuaCBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcGFyYW1zLmgKaW5kZXggYTQ3NzBjZTQ2YmQyLi5kMTY5YTVjYzY4Mjkg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmgKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuaApAQCAtNTQsNyArNTQsNyBAQCBzdHJ1Y3Qg
ZHJtX3ByaW50ZXI7CiAJcGFyYW0oaW50LCBkaXNhYmxlX3Bvd2VyX3dlbGwsIC0xKSBcCiAJcGFy
YW0oaW50LCBlbmFibGVfaXBzLCAxKSBcCiAJcGFyYW0oaW50LCBpbnZlcnRfYnJpZ2h0bmVzcywg
MCkgXAotCXBhcmFtKGludCwgZW5hYmxlX2d1YywgMCkgXAorCXBhcmFtKGludCwgZW5hYmxlX2d1
YywgLTEpIFwKIAlwYXJhbShpbnQsIGd1Y19sb2dfbGV2ZWwsIC0xKSBcCiAJcGFyYW0oY2hhciAq
LCBndWNfZmlybXdhcmVfcGF0aCwgTlVMTCkgXAogCXBhcmFtKGNoYXIgKiwgaHVjX2Zpcm13YXJl
X3BhdGgsIE5VTEwpIFwKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
