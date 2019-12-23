Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C6AC9129B7D
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 23:42:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87D0589F92;
	Mon, 23 Dec 2019 22:42:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BC6589F92
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Dec 2019 22:42:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Dec 2019 14:42:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,349,1571727600"; d="scan'208";a="417394154"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.54.75.49])
 by fmsmga005.fm.intel.com with ESMTP; 23 Dec 2019 14:42:48 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Dec 2019 14:44:29 -0800
Message-Id: <20191223224429.5151-3-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20191223224429.5151-1-manasi.d.navare@intel.com>
References: <20191223224429.5151-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 3/3] drm/i915/dp: Disable Port sync mode
 correctly on teardown
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2hpbGUgY2xlYXJpbmcgdGhlIFBvcnRzIHluYyBtb2RlIGVuYWJsZSBhbmQgbWFzdGVyIHNlbGVj
dCBiaXRzCndlIG5lZWQgdG8gY2xlYXIgdGhlIHJlZ2lzdGVyIGNvbXBsZXRlbHkgaW5zdGVhZCBv
ZiB1c2luZyBkaXNhYmxlIG1hc2tzCgp2MzoKKiBSZW1vdmUgcmVnIHZhcmlhYmxlIChNYXR0KQp2
MjoKKiBKdXN0IHdyaXRlIDAgdG8gdGhlIHJlZyAoVmlsbGUpCiogUmViYXNlCgpCdWd6aWxsYTog
aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvNQpDYzogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IEphbmkgTmlr
dWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+CkZpeGVzOiA1MTUyOGFmZTdjNWUgKCJkcm0vaTkx
NS9kaXNwbGF5L2ljbDogRGlzYWJsZSB0cmFuc2NvZGVyIHBvcnQgc3luYyBhcyBwYXJ0IG9mIGNy
dGNfZGlzYWJsZSgpIHNlcXVlbmNlIikKU2lnbmVkLW9mZi1ieTogTWFuYXNpIE5hdmFyZSA8bWFu
YXNpLmQubmF2YXJlQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcu
ZC5yb3BlckBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGRpLmMgfCA3ICstLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
NiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwpp
bmRleCAzYTUzODc4OWM1ODUuLjM4MzhiMzcxODVkZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RkaS5jCkBAIC0zODc4LDggKzM4NzgsNiBAQCBzdGF0aWMgdm9pZCBpY2xf
ZGlzYWJsZV90cmFuc2NvZGVyX3BvcnRfc3luYyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqb2xkXwogewogCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhvbGRf
Y3J0Y19zdGF0ZS0+dWFwaS5jcnRjKTsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKLQlpOTE1X3JlZ190IHJlZzsKLQl1MzIgdHJh
bnNfZGRpX2Z1bmNfY3RsMl92YWw7CiAKIAlpZiAob2xkX2NydGNfc3RhdGUtPm1hc3Rlcl90cmFu
c2NvZGVyID09IElOVkFMSURfVFJBTlNDT0RFUikKIAkJcmV0dXJuOwpAQCAtMzg4NywxMCArMzg4
NSw3IEBAIHN0YXRpYyB2b2lkIGljbF9kaXNhYmxlX3RyYW5zY29kZXJfcG9ydF9zeW5jKGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRfCiAJRFJNX0RFQlVHX0tNUygiRGlzYWJsaW5n
IFRyYW5zY29kZXIgUG9ydCBTeW5jIG9uIFNsYXZlIFRyYW5zY29kZXIgJXNcbiIsCiAJCSAgICAg
IHRyYW5zY29kZXJfbmFtZShvbGRfY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXIpKTsKIAotCXJl
ZyA9IFRSQU5TX0RESV9GVU5DX0NUTDIob2xkX2NydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyKTsK
LQl0cmFuc19kZGlfZnVuY19jdGwyX3ZhbCA9IH4oUE9SVF9TWU5DX01PREVfRU5BQkxFIHwKLQkJ
CQkgICAgUE9SVF9TWU5DX01PREVfTUFTVEVSX1NFTEVDVF9NQVNLKTsKLQlJOTE1X1dSSVRFKHJl
ZywgdHJhbnNfZGRpX2Z1bmNfY3RsMl92YWwpOworCUk5MTVfV1JJVEUoVFJBTlNfRERJX0ZVTkNf
Q1RMMihvbGRfY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXIpLCAwKTsKIH0KIAogc3RhdGljIHZv
aWQgaW50ZWxfZGRpX3Bvc3RfZGlzYWJsZShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwK
LS0gCjIuMTkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
