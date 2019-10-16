Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E37C7D8D32
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 12:03:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39C116E917;
	Wed, 16 Oct 2019 10:03:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B9CA6E913
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2019 10:03:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Oct 2019 03:03:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,303,1566889200"; d="scan'208";a="189633966"
Received: from linuxpresi1-desktop.iind.intel.com ([10.223.74.143])
 by orsmga008.jf.intel.com with ESMTP; 16 Oct 2019 03:03:48 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Oct 2019 16:02:49 +0530
Message-Id: <20191016103249.32121-7-uma.shankar@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191016103249.32121-1-uma.shankar@intel.com>
References: <20191016103249.32121-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v1 6/6] drm/i915/display: Reduce blanking to support
 4k60@10bpp for LSPCON
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

QmxhbmtpbmcgbmVlZHMgdG8gYmUgcmVkdWNlZCB0byBpbmNvcnBvcmF0ZSBEUCBhbmQgSERNSSB0
aW1pbmcvbGluawpiYW5kd2lkdGggbGltaXRhdGlvbnMgZm9yIENFQSBtb2RlcyAoNGtANjAgYXQg
MTAgYnBwKS4gRFAgY2FuIGRyaXZlCjE3LjI4R2JzIHdoaWxlIDRrIG1vZGVzIChWSUM5NyBldGMp
IGF0IDEwIGJwcCByZXF1aXJlZCAxNy44IEdicHMuClRoaXMgd2lsbCBjYXVzZSBtb2RlIHRvIGJs
YW5rIG91dC4gUmVkdWNlZCBIdG90YWwgYnkgc2hvcnRlbmluZyB0aGUKYmFjayBwb3JjaCBhbmQg
ZnJvbnQgcG9yY2ggd2l0aGluIHBlcm1pc3NpYmxlIGxpbWl0cy4KClNpZ25lZC1vZmYtYnk6IFVt
YSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgMTcgKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFu
Z2VkLCAxNyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jCmluZGV4IGQ5Mjc3N2JkM2JlZC4uYTEyYjY5MTYwMjNkIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jCkBAIC01OTcsOCArNTk3LDEwIEBAIGludGVsX2RwX21vZGVf
dmFsaWQoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwKIHsKIAlzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwID0gaW50ZWxfYXR0YWNoZWRfZHAoY29ubmVjdG9yKTsKIAlzdHJ1Y3QgaW50
ZWxfY29ubmVjdG9yICppbnRlbF9jb25uZWN0b3IgPSB0b19pbnRlbF9jb25uZWN0b3IoY29ubmVj
dG9yKTsKKwlzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqaW50ZWxfZW5jb2RlciA9IGludGVsX2F0dGFj
aGVkX2VuY29kZXIoY29ubmVjdG9yKTsKIAlzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqZml4ZWRf
bW9kZSA9IGludGVsX2Nvbm5lY3Rvci0+cGFuZWwuZml4ZWRfbW9kZTsKIAlzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNvbm5lY3Rvci0+ZGV2KTsKKwlzdHJ1Y3Qg
aW50ZWxfbHNwY29uICpsc3Bjb24gPSBlbmNfdG9faW50ZWxfbHNwY29uKCZpbnRlbF9lbmNvZGVy
LT5iYXNlKTsKIAlpbnQgdGFyZ2V0X2Nsb2NrID0gbW9kZS0+Y2xvY2s7CiAJaW50IG1heF9yYXRl
LCBtb2RlX3JhdGUsIG1heF9sYW5lcywgbWF4X2xpbmtfY2xvY2s7CiAJaW50IG1heF9kb3RjbGs7
CkBAIC02MjAsNiArNjIyLDIxIEBAIGludGVsX2RwX21vZGVfdmFsaWQoc3RydWN0IGRybV9jb25u
ZWN0b3IgKmNvbm5lY3RvciwKIAkJdGFyZ2V0X2Nsb2NrID0gZml4ZWRfbW9kZS0+Y2xvY2s7CiAJ
fQogCisJLyoKKwkgKiBSZWR1Y2luZyBCbGFua2luZyB0byBpbmNvcnBvcmF0ZSBEUCBhbmQgSERN
SSB0aW1pbmcvbGluayBiYW5kd2lkdGgKKwkgKiBsaW1pdGF0aW9ucyBmb3IgQ0VBIG1vZGVzICg0
a0A2MCBhdCAxMCBicHApLiBEUCBjYW4gZHJpdmUgMTcuMjhHYnMKKwkgKiB3aGlsZSA0ayBtb2Rl
cyAoVklDOTcgZXRjKSBhdCAxMCBicHAgcmVxdWlyZWQgMTcuOCBHYnBzLiBUaGlzIHdpbGwKKwkg
KiBjYXVzZSBtb2RlIHRvIGJsYW5rIG91dC4gUmVkdWNlZCBIdG90YWwgYnkgc2hvcnRlbmluZyB0
aGUgYmFjayBwb3JjaAorCSAqIGFuZCBmcm9udCBwb3JjaCB3aXRoaW4gcGVybWlzc2libGUgbGlt
aXRzLgorCSAqLworCWlmIChsc3Bjb24tPmFjdGl2ZSAmJiBsc3Bjb24tPmhkcl9zdXBwb3J0ZWQg
JiYKKwkgICAgbW9kZS0+Y2xvY2sgPiA1NzAwMDApIHsKKwkJbW9kZS0+Y2xvY2sgPSA1NzAwMDA7
CisJCW1vZGUtPmh0b3RhbCAtPSAxODA7CisJCW1vZGUtPmhzeW5jX3N0YXJ0IC09IDcyOworCQlt
b2RlLT5oc3luY19lbmQgLT0gNzI7CisJfQorCiAJbWF4X2xpbmtfY2xvY2sgPSBpbnRlbF9kcF9t
YXhfbGlua19yYXRlKGludGVsX2RwKTsKIAltYXhfbGFuZXMgPSBpbnRlbF9kcF9tYXhfbGFuZV9j
b3VudChpbnRlbF9kcCk7CiAKLS0gCjIuMjIuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
