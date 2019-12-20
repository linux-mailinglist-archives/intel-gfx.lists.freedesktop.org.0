Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A4BE81272A0
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 02:02:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89E556EBB7;
	Fri, 20 Dec 2019 01:02:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 652296EBB7
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 01:02:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 17:02:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,333,1571727600"; d="scan'208";a="267386844"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.54.75.49])
 by FMSMGA003.fm.intel.com with ESMTP; 19 Dec 2019 17:02:35 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Dec 2019 17:04:03 -0800
Message-Id: <20191220010403.29111-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI v4] drm/i915/dp: Disable Port sync mode correctly
 on teardown
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
ZC5yb3BlckBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kZGkuYyB8IDcgKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCA2IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCmluZGV4
IGM5YmE3ZDdmMzc4Ny4uZTUzNWEzYjg1NTc1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGRpLmMKQEAgLTM4NjAsOCArMzg2MCw2IEBAIHN0YXRpYyB2b2lkIGljbF9kaXNh
YmxlX3RyYW5zY29kZXJfcG9ydF9zeW5jKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpv
bGRfCiB7CiAJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKG9sZF9jcnRj
X3N0YXRlLT51YXBpLmNydGMpOwogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9
IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwotCWk5MTVfcmVnX3QgcmVnOwotCXUzMiB0cmFuc19k
ZGlfZnVuY19jdGwyX3ZhbDsKIAogCWlmIChvbGRfY3J0Y19zdGF0ZS0+bWFzdGVyX3RyYW5zY29k
ZXIgPT0gSU5WQUxJRF9UUkFOU0NPREVSKQogCQlyZXR1cm47CkBAIC0zODY5LDEwICszODY3LDcg
QEAgc3RhdGljIHZvaWQgaWNsX2Rpc2FibGVfdHJhbnNjb2Rlcl9wb3J0X3N5bmMoY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF8KIAlEUk1fREVCVUdfS01TKCJEaXNhYmxpbmcgVHJh
bnNjb2RlciBQb3J0IFN5bmMgb24gU2xhdmUgVHJhbnNjb2RlciAlc1xuIiwKIAkJICAgICAgdHJh
bnNjb2Rlcl9uYW1lKG9sZF9jcnRjX3N0YXRlLT5jcHVfdHJhbnNjb2RlcikpOwogCi0JcmVnID0g
VFJBTlNfRERJX0ZVTkNfQ1RMMihvbGRfY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXIpOwotCXRy
YW5zX2RkaV9mdW5jX2N0bDJfdmFsID0gfihQT1JUX1NZTkNfTU9ERV9FTkFCTEUgfAotCQkJCSAg
ICBQT1JUX1NZTkNfTU9ERV9NQVNURVJfU0VMRUNUX01BU0spOwotCUk5MTVfV1JJVEUocmVnLCB0
cmFuc19kZGlfZnVuY19jdGwyX3ZhbCk7CisJSTkxNV9XUklURShUUkFOU19ERElfRlVOQ19DVEwy
KG9sZF9jcnRjX3N0YXRlLT5jcHVfdHJhbnNjb2RlciksIDApOwogfQogCiBzdGF0aWMgdm9pZCBp
bnRlbF9kZGlfcG9zdF9kaXNhYmxlKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAotLSAK
Mi4xOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
