Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF7D293609
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Oct 2020 09:45:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2613A6E045;
	Tue, 20 Oct 2020 07:45:58 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4690C6E045
 for <Intel-gfx@lists.freedesktop.org>; Tue, 20 Oct 2020 07:45:57 +0000 (UTC)
IronPort-SDR: H34M9EIb1Zbbjs1MVHwtQJOJZF3NVF06h0vx6K260D0VKWX7ATRjiVdBF3ZPvAFk0TmBLDIb6B
 dZ7gjI7NYHgg==
X-IronPort-AV: E=McAfee;i="6000,8403,9779"; a="184795983"
X-IronPort-AV: E=Sophos;i="5.77,396,1596524400"; d="scan'208";a="184795983"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2020 00:45:56 -0700
IronPort-SDR: QfS6oZ2Z4kplb3l6+SZJAnfZSBtAFxUV9X2N7R18f85FvHyVxLR52cNpQzdfvVx4vTkvli2W3q
 FZycWzJyMlmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,396,1596524400"; d="scan'208";a="532949044"
Received: from kia-desk.jf.intel.com ([10.23.15.19])
 by orsmga005.jf.intel.com with ESMTP; 20 Oct 2020 00:45:56 -0700
From: Khaled Almahallawy <khaled.almahallawy@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue, 20 Oct 2020 00:45:55 -0700
Message-Id: <20201020074555.24315-1-khaled.almahallawy@intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Set drm_crtc_state.active=false
 for all added disconnected CRTCs sharing MST stream.
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
Cc: seanpaul@chromium.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBwYXRjaCBhdm9pZHMgZmFpbGluZyBhdG9taWMgY29tbWl0cyBzZW50IGJ5IHVzZXIgc3Bh
Y2UgYnkgbWFraW5nIHN1cmUgQ1JUQy9Db25uZWN0b3IgYWRkZWQgdG8gZHJtX2F0b21pY19zdGF0
ZSBieSB0aGUgZHJpdmVyIGFyZSBpbiB2YWxpZCBzdGF0ZS4KCldoZW4gZGlzY29ubmVjdGluZyBN
U1QgaHViIHdpdGggdHdvIG9yIG1vcmUgY29ubmVjdGVkIGRpc3BsYXlzLiBUaGUgdXNlciBzcGFj
ZSBzZW5kcyBJT0NUTCBmb3IgZWFjaCBNU1QgcGlwZSB0byBkaXNhYmxlLgpkcm1fYXRvbWljX3N0
YXRlIG9iamVjdCBzZW50IGZyb20gdXNlciBzcGFjZSBjb250YWlucyBvbmx5IHRoZSBzdGF0ZSBv
ZiB0aGUgY3J0Yy9waXBlIGludGVuZGVkIHRvIGRpc2FibGUuCkluIFRHTCwgaW50ZWxfZHBfbXN0
X2F0b21pY19tYXN0ZXJfdHJhbnNfY2hlY2sgd2lsbCBhZGQgYWxsIG90aGVyIENSVEMgYW5kIGNv
bm5lY3RvcnMgdGhhdCBzaGFyZSB0aGUgTVNUIHN0cmVhbSB0byBkcm1fYXRvbWljX3N0YXRlOgoK
ZHJtX2F0b21pY19jb21taXQKICAgZHJtX2F0b21pY19oZWxwZXJfY2hlY2tfbW9kZXNldAogICAg
ICAgdXBkYXRlX2Nvbm5lY3Rvcl9yb3V0aW5nCiAgICAgICBpbnRlbF9kcF9tc3RfYXRvbWljX2No
ZWNrID0gZnVuY3MtPmF0b21pY19jaGVjayhjb25uZWN0b3IsIHN0YXRlKTsKICAgICAgIAkgICBp
bnRlbF9kcF9tc3RfYXRvbWljX21hc3Rlcl90cmFuc19jaGVjawoJCWludGVsX2F0b21pY19nZXRf
ZGlnaXRhbF9jb25uZWN0b3Jfc3RhdGUKCQkJZHJtX2F0b21pY19nZXRfY29ubmVjdG9yX3N0YXRl
ICAgPC0tIEFkZCBhbGwgQ29ubmVjdG9ycwoJCQkgICAgZHJtX2F0b21pY19nZXRfY3J0Y19zdGF0
ZSA8LS0gQWRkIGFsbCBDUlRDcwogICAgICAgdXBkYXRlX2Nvbm5lY3Rvcl9yb3V0aW5nIDwtLSBD
aGVjayBhZGRlZCBDb25uZWN0b3IvQ1JUQ3MgLSBXaWxsIGZhaWwKCkhvd2V2ZXIgdGhlIGFkZGVk
IGNydGMvY29ubmVjdG9yIHBhaXIgd2lsbCBiZSBpbiBpbnZhbGlkIHN0YXRlIChlbmFibGVkIHN0
YXRlIGZvciBhIHJlbW92ZWQgY29ubmVjdG9yKQp0cmlnZ2VyaW5nIHRoaXMgY29uZGl0aW9uIGlu
IGRybV9hdG9taWNfaGVscGVyLmMvdXBkYXRlX2Nvbm5lY3Rvcl9yb3V0aW5nOgoKCWlmICghc3Rh
dGUtPmR1cGxpY2F0ZWQgJiYgZHJtX2Nvbm5lY3Rvcl9pc191bnJlZ2lzdGVyZWQoY29ubmVjdG9y
KSAmJgoJICAgIGNydGNfc3RhdGUtPmFjdGl2ZSkgewoJCURSTV9ERUJVR19BVE9NSUMoIltDT05O
RUNUT1I6JWQ6JXNdIGlzIG5vdCByZWdpc3RlcmVkXG4iLAoJCQkJIGNvbm5lY3Rvci0+YmFzZS5p
ZCwgY29ubmVjdG9yLT5uYW1lKTsKCQlyZXR1cm4gLUVJTlZBTDsKCX0KCldoaWNoIHdpbGwgY2F1
c2UgdGhlIGRybV9hdG9taWNfY29tbWl0L0lPQ1RMIGZvciBkaXNhYmxpbmcgb25lIG9mIE1TVCBz
dHJlYW0gcGlwZXMgKE1haW4gTVNUKSB0byBmYWlsLgoKVGhlIHByb2JsZW0gaGFwcGVucyB3aGVu
IGEgdXNlciBzcGFjZSAoYXMgQ2hyb21lKSBkb2VzbuKAmXQgcmV0cnkgYSBmYWxsaW5nIGNvbW1p
dCwgbGVhdmluZyBhIGRpc2Nvbm5lY3RlZCBNU1QgcGlwZSBzdGlsbCBPTiwKd2hpY2ggd2lsbCBy
ZXN1bHQgaW4gZmFpbGluZyByZWNvbm5lY3Qgb2YgTVNUIGh1YiBvciBldmVuIHdvcnNlIGxlYXZp
bmcgVEMgUEhZIGluIGEgY29ubmVjdGVkIHN0YXRlIHdoaWxlIHRoZSBNU1QgSHViIGlzIGRpc2Nv
bm5lY3RlZC4KClRlc3RlZCBvbiBVYnVudHUoZHJtLXRpcCkgYW5kIENocm9tZShrZXJuZWwtbmV4
dCA1LjkgcmM3KQoKU2lnbmVkLW9mZi1ieTogS2hhbGVkIEFsbWFoYWxsYXd5IDxraGFsZWQuYWxt
YWhhbGxhd3lAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHBfbXN0LmMgfCAzICsrKwogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jCmluZGV4IGU5NDhhYWNi
ZDRhYi4uMWVkZTk4MDg3NmVkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwX21zdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHBfbXN0LmMKQEAgLTI2NSw2ICsyNjUsOSBAQCBpbnRlbF9kcF9tc3RfYXRvbWljX21hc3Rl
cl90cmFuc19jaGVjayhzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IsCiAJCQlyZXR1
cm4gcmV0OwogCQl9CiAJCWNydGNfc3RhdGUtPnVhcGkubW9kZV9jaGFuZ2VkID0gdHJ1ZTsKKwor
CQlpZiAoY29ubmVjdG9yX2l0ZXItPmJhc2Uuc3RhdHVzID09IGNvbm5lY3Rvcl9zdGF0dXNfZGlz
Y29ubmVjdGVkKQorCQkJY3J0Y19zdGF0ZS0+dWFwaS5hY3RpdmUgPSBmYWxzZTsKIAl9CiAJZHJt
X2Nvbm5lY3Rvcl9saXN0X2l0ZXJfZW5kKCZjb25uZWN0b3JfbGlzdF9pdGVyKTsKIAotLSAKMi4y
NS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
