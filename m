Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3915A151396
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 01:07:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E22A6E45F;
	Tue,  4 Feb 2020 00:07:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A17B6E45F
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 00:07:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Feb 2020 16:07:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,398,1574150400"; d="scan'208";a="249170106"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by orsmga002.jf.intel.com with ESMTP; 03 Feb 2020 16:07:16 -0800
Received: from vkasired-desk2.fm.intel.com (10.22.254.140) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 3 Feb 2020 16:07:16 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Mon, 3 Feb 2020 16:02:42 -0800
Message-ID: <20200204000242.30542-1-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-Originating-IP: [10.22.254.140]
Subject: [Intel-gfx] [PATCH] drm/i915/ehl: Check VBT before updating the
 transcoder for pipe
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

U2luY2UgdGhlIHBpcGUtPnRyYW5zY29kZXIgbWFwcGluZyBpcyBub3QgZXhwZWN0ZWQgdG8gY2hh
bmdlIHVubGVzcwp0aGVyZSBpcyBlaXRoZXIgZURQIG9yIERTSSBjb25uZWN0b3JzIHByZXNlbnQs
IGNoZWNrIHRoZSBWQlQgdG8gY29uZmlybQp0aGVpciBwcmVzZW5jZSBpbiBhZGRpdGlvbiB0byBj
aGVja2luZyBUUkFOU19ERElfRlVOQ19DVEwodHJhbnNjb2RlcikuClRoaXMgYWRkaXRpb25hbCBj
aGVjayBpcyBuZWVkZWQgb24gcGxhdGZvcm1zIGxpa2UgRWxraGFydCBMYWtlIGJlY2F1c2UKd2Ug
Y2Fubm90IGp1c3QgcmVseSBvbiBHT1AvRmlybXdhcmUgcHJvZ3JhbW1lZCB2YWx1ZXMgaW4KVFJB
TlNfRERJX0ZVTkNfQ1RMKHRyYW5zY29kZXIpIGJlZm9yZSB1cGRhdGluZyB0aGUgdHJhbnNjb2Rl
ciBtYXBwaW5nLgoKVGhpcyBwYXRjaCBpcyBvbmx5IHJlbGV2YW50IHRvIEVITCAtLSBhbmQgYSBu
by1vcCBvbiBvdGhlcnMgLS0KYmVjYXVzZSBzb21lIG9mIHRoZSBQSFlzIGFyZSBzaGFyZWQgYmV0
d2VlbiB0aGUgZGlmZmVyZW50IERESXMgYW5kCndlIHJlbHkgb24gdGhlIFZCVCB0byBwcmVzZW50
IHRoZSBtb3N0IGFjY3VyYXRlIGluZm9ybWF0aW9uIHRvIHRoZQpkcml2ZXIuCgpDYzogTWF0dCBS
b3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291
emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBWaXZlayBLYXNpcmVkZHkg
PHZpdmVrLmthc2lyZWRkeUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMgfCAxNSArKysrKysrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2Vk
LCAxNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCBjMGU1MDAyY2U2NGMuLjRiMzhmMjkzYmQ4
OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAg
LTEwODA1LDYgKzEwODA1LDE4IEBAIHN0YXRpYyB2b2lkIGhzd19nZXRfZGRpX3BsbChzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gcG9ydCBwb3J0LAogCXBpcGVfY29uZmln
LT5zaGFyZWRfZHBsbCA9IGludGVsX2dldF9zaGFyZWRfZHBsbF9ieV9pZChkZXZfcHJpdiwgaWQp
OwogfQogCitzdGF0aWMgYm9vbCBlaGxfdmJ0X2VkcF9kc2lfcHJlc2VudChzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCisJCQkJICAgIGVudW0gdHJhbnNjb2RlciB0cmFuc2NvZGVy
KQoreworCWJvb2wgZWRwX3ByZXNlbnQgPSBpbnRlbF9iaW9zX2lzX3BvcnRfcHJlc2VudChkZXZf
cHJpdiwgUE9SVF9BKTsKKwlib29sIGRzaV9wcmVzZW50ID0gaW50ZWxfYmlvc19pc19kc2lfcHJl
c2VudChkZXZfcHJpdiwgTlVMTCk7CisKKwlpZiAoSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpKQor
CQlyZXR1cm4gdHJhbnNjb2RlciA9PSBUUkFOU0NPREVSX0VEUCA/IGVkcF9wcmVzZW50IDogZHNp
X3ByZXNlbnQ7CisKKwlyZXR1cm4gdHJ1ZTsKK30KKwogc3RhdGljIGJvb2wgaHN3X2dldF90cmFu
c2NvZGVyX3N0YXRlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCQkJCSAgICAgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnLAogCQkJCSAgICAgdTY0ICpwb3dlcl9kb21haW5f
bWFzaywKQEAgLTEwODQ0LDcgKzEwODU2LDggQEAgc3RhdGljIGJvb2wgaHN3X2dldF90cmFuc2Nv
ZGVyX3N0YXRlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCiAJCXRtcCA9IGludGVsX2RlX3Jl
YWQoZGV2X3ByaXYsCiAJCQkJICAgIFRSQU5TX0RESV9GVU5DX0NUTChwYW5lbF90cmFuc2NvZGVy
KSk7Ci0JCWlmICghKHRtcCAmIFRSQU5TX0RESV9GVU5DX0VOQUJMRSkpCisJCWlmICghKHRtcCAm
IFRSQU5TX0RESV9GVU5DX0VOQUJMRSkgfHwKKwkJICAgICFlaGxfdmJ0X2VkcF9kc2lfcHJlc2Vu
dChkZXZfcHJpdiwgcGFuZWxfdHJhbnNjb2RlcikpCiAJCQljb250aW51ZTsKIAogCQkvKgotLSAK
Mi4yMS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
