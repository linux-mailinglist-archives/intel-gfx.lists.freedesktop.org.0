Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46BD82B27B0
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Nov 2020 23:04:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C7A66E85B;
	Fri, 13 Nov 2020 22:04:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6CF76E85B
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Nov 2020 22:04:01 +0000 (UTC)
IronPort-SDR: +qzeDgUSCX/S8hPt2aBzgmXwx/o1DUqPcd1pHyhYcBmXqNYwEt/nswoAe1XCheYjneAkhPV7yX
 zCeDl0fj10Gw==
X-IronPort-AV: E=McAfee;i="6000,8403,9804"; a="234696334"
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; d="scan'208";a="234696334"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 14:04:01 -0800
IronPort-SDR: MNMhtqPFtaGWFJIuJ5vHYWlSPnuXKZc8mtSX9dGq0E8tyTVepGMBUOlLSdFaizk7i+9pnnPejz
 TdsAbO/Ji1dA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; d="scan'208";a="355681678"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 13 Nov 2020 14:03:59 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 14 Nov 2020 00:03:58 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 14 Nov 2020 00:03:35 +0200
Message-Id: <20201113220358.24794-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/23] drm/i915: Big bigjoiner series
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
aXMgc2hvdWxkIGhhdmUgZXZlcnl0aGluZyB3ZSBuZWVkIHRvIGVuYWJsZSBiaWdqb2luZXIuCkdv
dCByaWQgb2YgdGhlIHBsYW5lIGxpbmtpbmcgc3R1ZmYsIGFuZCBmaXhlZCBidW5jaCBvZgppc3N1
ZXMgYWxsIG92ZXIuIFNtb2tlIHRlc3RlZCBvbiB0Z2wgYnkgaGFja2luZyBkc2MrYmlnam9pbmVy
Cm9uIGV2ZW4gd2hlbiB0aGV5IHNob3VsZG4ndCBiZSBuZWVkZWQvcG9zc2libGUuCgpUaGUgd20g
c3R1ZmYgc2hvdWxkIGJlIHByZXR0eSBtdWNoIHJlYWR5IHRvIG1lcmdlIGJ1dCBDSQppcyB0YWtp
bmcgaXRzIHN3ZWV0IHRpbWUgc28gSSdtIGluY2x1ZGluZyBpdCBhbGwgaGVyZSBmb3IKdGhlIHRp
bWUgYmVpbmcuCgpFbnRpcmUgdGhpbmcgKCsgdGVzdCBoYWNrcykgaXMgaGVyZToKZ2l0Oi8vZ2l0
aHViLmNvbS92c3lyamFsYS9saW51eC5naXQgYmlnam9pbmVyXzMKCk1hYXJ0ZW4gTGFua2hvcnN0
ICg0KToKICBkcm0vaTkxNS9kcDogQWxsb3cgYmlnIGpvaW5lciBtb2RlcyBpbiBpbnRlbF9kcF9t
b2RlX3ZhbGlkKCksIHYzLgogIGRybS9pOTE1OiBUcnkgdG8gbWFrZSBiaWdqb2luZXIgd29yayBp
biBhdG9taWMgY2hlY2sKICBkcm0vaTkxNTogQWRkIGJpZ2pvaW5lciBhd2FyZSBwbGFuZSBjbGlw
cGluZyBjaGVja3MKICBkcm0vaTkxNTogQWRkIGRlYnVnZnMgZHVtcGluZyBmb3IgYmlnam9pbmVy
LCB2My4KCk1hbmFzaSBOYXZhcmUgKDUpOgogIGRybS9pOTE1OiBQYXNzIGludGVsX2F0b21pY19z
dGF0ZSBpbnN0ZWFkIG9mIGRybV9hdG9taWNfc3RhdGUKICBkcm0vaTkxNS9kcDogQWRkIGZyb21f
Y3J0Y19zdGF0ZSB0byBjb3B5IGNvbG9yIGJsb2JzCiAgZHJtL2k5MTUvZHA6IE1vZGlmeSBWRFND
IGhlbHBlcnMgdG8gY29uZmlndXJlIERTQyBmb3IgQmlnam9pbmVyIHNsYXZlCiAgZHJtL2k5MTUv
ZHA6IE1hc3Rlci9TbGF2ZSBlbmFibGUvZGlzYWJsZSBzZXF1ZW5jZSBmb3IgYmlnam9pbmVyCiAg
ZHJtL2k5MTU6IEhXIHN0YXRlIHJlYWRvdXQgZm9yIEJpZ2pvaW5lciBjYXNlCgpWaWxsZSBTeXJq
w6Rsw6QgKDE0KToKICBkcm0vaTkxNTogQ29weSB0aGUgcGxhbmUgaHcgc3RhdGUgZGlyZWN0bHkg
Zm9yIFkgcGxhbmVzCiAgZHJtL2k5MTU6IFBhc3MgaW50ZWxfYXRvbWljX3N0YXRlIGFyb3VuZAog
IGRybS9pOTE1OiBOdWtlIGludGVsX2F0b21pY19jcnRjX3N0YXRlX2Zvcl9lYWNoX3BsYW5lX3N0
YXRlKCkgZnJvbQogICAgc2tsKyB3bSBjb2RlCiAgZHJtL2k5MTU6IFBpbXAgdGhlIHdhdGVybWFy
ayBkb2N1bWVudGF0aW9uIGEgYml0CiAgZHJtL2k5MTU6IFByZWNvbXB1dGUgY2FuX3NhZ3YgZm9y
IGVhY2ggd20gbGV2ZWwKICBkcm0vaTkxNTogU3RvcmUgcGxhbmUgcmVsYXRpdmUgZGF0YSByYXRl
IGluIGNydGNfc3RhdGUKICBkcm0vaTkxNTogUmVtb3ZlIHNrbF9hZGp1c3RlZF9wbGFuZV9waXhl
bF9yYXRlKCkKICBkcm0vaTkxNTogQWRkIGNydGNzIGFmZmVjdGVkIGJ5IGJpZ2pvaW5lciB0byB0
aGUgc3RhdGUKICBkcm0vaTkxNTogQWRkIHBsYW5lcyBhZmZlY3RlZCBieSBiaWdqb2luZXIgdG8g
dGhlIHN0YXRlCiAgZHJtL2k5MTU6IEdldCB0aGUgdWFwaSBzdGF0ZSBmcm9tIHRoZSBjb3JyZWN0
IHBsYW5lIHdoZW4gYmlnam9pbmVyIGlzCiAgICB1c2VkCiAgZHJtL2k5MTU6IERpc2FibGUgbGVn
YWN5IGN1cnNvciBmYXN0cGF0aCBmb3IgYmlnam9pbmVyCiAgZHJtL2k5MTU6IEZpeCBjdXJzb3Ig
c3JjL2RzdCByZWN0YW5nbGUgd2l0aCBiaWdqb2luZXIKICBkcm0vaTkxNTogQWRkIGJpZ2pvaW5l
ciBzdGF0ZSBkdW1wCiAgZHJtL2k5MTU6IEVuYWJsZSBiaWdqb2luZXIKCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYyAgICAgICAgfCAgIDIgLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuYyAgIHwgICA5ICstCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5oICAgfCAgIDMgKy0KIC4uLi9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYyB8IDEzMSArKystCiAuLi4vZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmggfCAgIDkgKy0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgICAgICB8ICA2OSArLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgNzIyICsrKysrKysrKysrKysrLS0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmggIHwgICAzICstCiAuLi4v
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMuYyAgfCAgMjUgKy0KIC4uLi9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICA2MyArLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jICAgICAgIHwgMTAwICsrLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oICAgICAgIHwgICAxICsKIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMgICB8ICAgMiArLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2kuYyAgICAgIHwgICAyICstCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyAgICAgfCAgIDIgKy0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMgICB8ICAyMSArLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMgICAgIHwgMTk3ICsrLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuaCAgICAgfCAgIDYgKy0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3BtLmMgICAgICAgICAgICAgICB8IDE5NiArKystLQogMTkgZmlsZXMg
Y2hhbmdlZCwgMTA5OSBpbnNlcnRpb25zKCspLCA0NjQgZGVsZXRpb25zKC0pCgotLSAKMi4yNi4y
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
