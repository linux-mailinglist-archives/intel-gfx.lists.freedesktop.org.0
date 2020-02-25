Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C77716EC3C
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 18:13:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EF2D6EB52;
	Tue, 25 Feb 2020 17:13:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 199916EB50
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2020 17:13:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Feb 2020 09:11:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,484,1574150400"; d="scan'208";a="231087534"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 25 Feb 2020 09:11:25 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 25 Feb 2020 19:11:25 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Feb 2020 19:11:05 +0200
Message-Id: <20200225171125.28885-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 00/20] drm/i915: Proper dbuf global state
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk1v
cmUgY29tcGxldGUgdmVyc2lvbiBvZiBpbnRlbF9kYnVmX3N0YXRlLiBXZSBmaW5hbGx5IGdldCBy
aWQgb2YKZGlzdHJ1c3RfYmlvc193bSBhbmQgYWxsIHRoZSB1Z2x5bmVzcyBzdXJyb3VuZGluZyBp
dC4gQW5kIHdlIG5vCmxvbmdlciBoYXZlIHRvIGtub3cgYWhlYWQgb2YgdGltZSB3aGV0aGVyIHRo
ZSBkdWYgYWxsb2NhdGlvbgptaWdodCBjaGFuZ2Ugb3Igbm90LCBhbmQgdGh1cyBkb24ndCBuZWVk
IHRvIHB1bGwgaW4gYWxsIGNydGNzCmludG8gdGhlIHN0YXRlIHVwIGZyb250LiBOb3cgd2UganVz
dCBjb21wdXRlIHRoZSBuZXcgZGJ1ZgpzdGF0ZSwgYW5kIGlmIGl0IGNoYW5nZXMgdGhlIGFmZmVj
dGVkIGNydGNzIGdldCBhZGRlZCB0byB0aGUKc3RhdGUgbmF0dXJhbGx5LgoKKyBhIGJ1bmNoIG9m
IGNsZWFudXBzLgoKRW50aXJlIHNlcmllcyBhdmFpbGFibGUgaGVyZToKZ2l0Oi8vZ2l0aHViLmNv
bS92c3lyamFsYS9saW51eC5naXQgZGJ1Zl9zdGF0ZV8yCgpDYzogU3RhbmlzbGF2IExpc292c2tp
eSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+CgpWaWxsZSBTeXJqw6Rsw6QgKDIwKToK
ICBkcm0vaTkxNTogSGFuZGxlIHNvbWUgbGVmdG92ZXIgcy9pbnRlbF9jcnRjL2NydGMvCiAgZHJt
L2k5MTU6IFJlbW92ZSBnYXJiYWdlIFdBUk5zCiAgZHJtL2k5MTU6IEFkZCBtaXNzaW5nIGNvbW1h
cyB0byBkYnVmIHRhYmxlcwogIGRybS9pOTE1OiBVc2UgYSBzZW50aW5lbCB0byB0ZXJtaW5hdGUg
dGhlIGRidWYgc2xpY2UgYXJyYXlzCiAgZHJtL2k5MTU6IE1ha2Ugc2tsX2NvbXB1dGVfZGJ1Zl9z
bGljZXMoKSBiZWhhdmUgY29uc2lzdGVudGx5IGZvciBhbGwKICAgIHBsYXRmb3JtcwogIGRybS9p
OTE1OiBQb2xpc2ggc29tZSBkYnVmIGRlYnVncwogIGRybS9pOTE1OiBVbmlmeSB0aGUgbG93IGxl
dmVsIGRidWYgY29kZQogIGRybS9pOTE1OiBJbnRyb2R1Y2UgcHJvcGVyIGRidWYgc3RhdGUKICBk
cm0vaTkxNTogTnVrZSBza2xfZGRiX2dldF9od19zdGF0ZSgpCiAgZHJtL2k5MTU6IE1vdmUgdGhl
IGRidWYgcHJlL3Bvc3QgcGxhbmUgdXBkYXRlCiAgZHJtL2k5MTU6IENsZWFuIHVwIGRidWYgZGVi
dWdzIGR1cmluZyAuYXRvbWljX2NoZWNrKCkKICBkcm0vaTkxNTogRXh0cmFjdCBpbnRlbF9jcnRj
X2RkYl93ZWlnaHQoKQogIGRybS9pOTE1OiBQYXNzIHRoZSBjcnRjIHRvIHNrbF9jb21wdXRlX2Ri
dWZfc2xpY2VzKCkKICBkcm0vaTkxNTogSW50cm9kdWNlIGludGVsX2RidWZfc2xpY2Vfc2l6ZSgp
CiAgZHJtL2k5MTU6IEludHJvZHVjZSBza2xfZGRiX2VudHJ5X2Zvcl9zbGljZXMoKQogIGRybS9p
OTE1OiBNb3ZlIHBpcGUgZGRiIGVudHJpZXMgaW50byB0aGUgZGJ1ZiBzdGF0ZQogIGRybS9pOTE1
OiBFeHRyYWN0IGludGVsX2NydGNfZGJ1Zl93ZWlnaHRzKCkKICBkcm0vaTkxNTogRW5jYXBzdWxh
dGUgZGJ1ZiBzdGF0ZSBoYW5kbGluZyBoYXJkZXIKICBkcm0vaTkxNTogRG8gYSBiaXQgbW9yZSBp
bml0aWFsIHJlYWRvdXQgZm9yIGRidWYKICBkcm0vaTkxNTogQ2hlY2sgc2xpY2UgbWFzayBmb3Ig
aG9sZXMKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCAg
OTUgKy0tCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMuYyAgfCAg
IDEgLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jICAgIHwgIDgw
ICstCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmggICAgfCAgIDYg
Ky0KIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICAxNCAt
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICAgfCAgMTYgKy0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgICAgICAgICAgICAgICB8IDc0MSArKysr
KysrKysrLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmggICAgICAgICAg
ICAgICB8ICAzMSArLQogOCBmaWxlcyBjaGFuZ2VkLCA1MjEgaW5zZXJ0aW9ucygrKSwgNDYzIGRl
bGV0aW9ucygtKQoKLS0gCjIuMjQuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
