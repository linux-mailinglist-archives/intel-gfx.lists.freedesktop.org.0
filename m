Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2764D3010EF
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Jan 2021 00:22:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FE4A6EA74;
	Fri, 22 Jan 2021 23:22:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1899F6EA74
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 23:22:32 +0000 (UTC)
IronPort-SDR: kwHqaI9BGORMYvEYzMh3ekEauxwzvMpYAB3af0FmUOrIf3hHoIAZbLuqsDGeOh+KSUGTfnSlTX
 KD0SOkI6PJ7g==
X-IronPort-AV: E=McAfee;i="6000,8403,9872"; a="158703314"
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="158703314"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 15:22:31 -0800
IronPort-SDR: H7Zk+A+RsDydSsSs4/4Hm5xGEDrNBw2i/QuDUWK642uz30v00Cb4fW8ckl+gbrvgVvKJLNRIbY
 VZN7RDUgi66Q==
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="392466036"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 22 Jan 2021 15:22:29 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Jan 2021 15:26:44 -0800
Message-Id: <20210122232647.22688-15-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20210122232647.22688-1-manasi.d.navare@intel.com>
References: <20210122232647.22688-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI v5 15/18] drm/i915/display: Helpers for VRR vblank
 min and max start
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldp
dGggVlJSIHRoZSBlYXJsaWVzdCB0aGUgcmVnaXN0ZXJzIGNhbiBnZXQgbGF0Y2hlZCBhcmUgYXQK
ZmxpcGxpbmUgZGVjaXNpb24gYm91bmRhcnksIGNhbGN1bGF0ZSB0aGF0IGFzIHZycl92bWluX3Zi
bGFua19zdGFydCgpCmFuZCB0aGUgbGF0ZXN0IHRoZSByZWdzaXRlcnMgY2FuIGdldCBsYXRjaGVk
IGFyZSB2bWF4IGRlY2lzaW9uIGJvdW5kYXJ5CmNhbGN1bGF0ZSB0aGF0IGFzIHZycl92bWF4X3Zi
bGFua19zdGFydCgpCgp2MjoKKiBSZW1vdmUgVE9ETyBhbmQgYWRqdXN0IGV4dHJhIHNjYW5saW5l
IGNvbnN0IChNYW5hc2kpCgpTaWduZWQtb2ZmLWJ5OiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5u
YXZhcmVAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogTWFuYXNpIE5hdmFyZSA8bWFuYXNp
LmQubmF2YXJlQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Zyci5jIHwgMzYgKysrKysrKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Zyci5oIHwgIDIgKysKIDIgZmlsZXMgY2hhbmdlZCwgMzggaW5z
ZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfdnJyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jCmluZGV4
IGM3MTI1NDU2M2ExMC4uNDlmZjVhZGQ5MGUwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfdnJyLmMKQEAgLTQ1LDYgKzQ1LDQyIEBAIGludGVsX3Zycl9jaGVja19tb2Rlc2V0
KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQogCX0KIH0KIAorLyoKKyAqIFdpdGhv
dXQgVlJSIHJlZ2lzdGVycyBnZXQgbGF0Y2hlZCBhdDoKKyAqICB2Ymxhbmtfc3RhcnQKKyAqCisg
KiBXaXRoIFZSUiB0aGUgZWFybGllc3QgcmVnaXN0ZXJzIGNhbiBnZXQgbGF0Y2hlZCBpczoKKyAq
ICBpbnRlbF92cnJfdm1pbl92Ymxhbmtfc3RhcnQoKSwgd2hpY2ggaWYgd2Ugd2FudCB0byBtYWlu
dGFpbgorICogIHRoZSBjb3JyZWN0IG1pbiB2dG90YWwgaXMgPj12Ymxhbmtfc3RhcnQrMQorICoK
KyAqIFRoZSBsYXRlc3QgcG9pbnQgcmVnaXN0ZXJzIGNhbiBnZXQgbGF0Y2hlZCBpcyB0aGUgdm1h
eCBkZWNpc2lvbiBib3VuZGFyeToKKyAqICBpbnRlbF92cnJfdm1heF92Ymxhbmtfc3RhcnQoKQor
ICoKKyAqIEJldHdlZW4gdGhvc2UgdHdvIHBvaW50cyB0aGUgdmJsYW5rIGV4aXQgc3RhcnRzIChh
bmQgaGVuY2UgcmVnaXN0ZXJzIGdldAorICogbGF0Y2hlZCkgQVNBUCBhZnRlciBhIHB1c2ggaXMg
c2VudC4KKyAqCisgKiBmcmFtZXN0YXJ0X2RlbGF5IGlzIHByb2dyYW1tYWJsZSAwLTMuCisgKi8K
K3N0YXRpYyBpbnQgaW50ZWxfdnJyX3ZibGFua19leGl0X2xlbmd0aChjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKK3sKKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9
IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKTsKKwlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOworCisJLyogVGhlIGh3IGlt
cG9zZXMgdGhlIGV4dHJhIHNjYW5saW5lIGJlZm9yZSBmcmFtZSBzdGFydCAqLworCXJldHVybiBj
cnRjX3N0YXRlLT52cnIucGlwZWxpbmVfZnVsbCArIGk5MTUtPmZyYW1lc3RhcnRfZGVsYXkgKyAx
OworfQorCitpbnQgaW50ZWxfdnJyX3ZtaW5fdmJsYW5rX3N0YXJ0KGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQoreworCS8qIE1pbiB2YmxhbmsgYWN0dWFsbHkgZGV0
ZXJtaW5lZCBieSBmbGlwbGluZSB0aGF0IGlzIGFsd2F5cyA+PXZtaW4rMSAqLworCXJldHVybiBj
cnRjX3N0YXRlLT52cnIudm1pbiArIDEgLSBpbnRlbF92cnJfdmJsYW5rX2V4aXRfbGVuZ3RoKGNy
dGNfc3RhdGUpOworfQorCitpbnQgaW50ZWxfdnJyX3ZtYXhfdmJsYW5rX3N0YXJ0KGNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQoreworCXJldHVybiBjcnRjX3N0YXRl
LT52cnIudm1heCAtIGludGVsX3Zycl92YmxhbmtfZXhpdF9sZW5ndGgoY3J0Y19zdGF0ZSk7Cit9
CisKIHZvaWQKIGludGVsX3Zycl9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSwKIAkJCSBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqY29ubl9zdGF0
ZSkKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmgg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5oCmluZGV4IDc2MTAwNTFl
ZGFkMi4uZDhiNmI0NTU1N2NhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Zyci5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
dnJyLmgKQEAgLTI3LDUgKzI3LDcgQEAgdm9pZCBpbnRlbF92cnJfc2VuZF9wdXNoKGNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsKIHZvaWQgaW50ZWxfdnJyX2Rpc2Fi
bGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0YXRlKTsKIHZvaWQg
aW50ZWxfdnJyX2dldF9jb25maWcoc3RydWN0IGludGVsX2NydGMgKmNydGMsCiAJCQkgIHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsKK2ludCBpbnRlbF92cnJfdm1heF92Ymxh
bmtfc3RhcnQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOworaW50
IGludGVsX3Zycl92bWluX3ZibGFua19zdGFydChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSk7CiAKICNlbmRpZiAvKiBfX0lOVEVMX1ZSUl9IX18gKi8KLS0gCjIuMTku
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
