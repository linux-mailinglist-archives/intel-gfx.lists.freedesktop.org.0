Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 019072EF4D1
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 16:28:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 682156E825;
	Fri,  8 Jan 2021 15:28:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19C7A6E825
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 15:28:50 +0000 (UTC)
IronPort-SDR: IEQjF5W1PhuJiNrYAKwkfj0Mj21igkRAXPW6Q+S9WySnSvFMPL+52kb9rlPlwL7AO2igSUqNQb
 kNoWqLqV4eAQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9857"; a="177708064"
X-IronPort-AV: E=Sophos;i="5.79,331,1602572400"; d="scan'208";a="177708064"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 07:28:49 -0800
IronPort-SDR: 7Qrub/0/lotRIytBUK740ZAyP/alAL4cAmCBVBlvkEDGdLuM6VrUJS2hLlhDeaow+F4hcwwT5r
 xfv0GkgRs4PQ==
X-IronPort-AV: E=Sophos;i="5.79,331,1602572400"; d="scan'208";a="380153181"
Received: from rgwhiteh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.205.160])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 07:28:46 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Jan 2021 17:28:41 +0200
Message-Id: <20210108152841.6944-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/backlight: fix CPU mode backlight
 takeover on LPT
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
Cc: jani.nikula@intel.com, stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIHBjaF9nZXRfYmFja2xpZ2h0KCksIGxwdF9nZXRfYmFja2xpZ2h0KCksIGFuZCBscHRfc2V0
X2JhY2tsaWdodCgpCmZ1bmN0aW9ucyBvcGVyYXRlIGRpcmVjdGx5IG9uIHRoZSBoYXJkd2FyZSBy
ZWdpc3RlcnMuIElmIGludmVydGluZyB0aGUKdmFsdWUgaXMgbmVlZGVkLCB1c2luZyBpbnRlbF9w
YW5lbF9jb21wdXRlX2JyaWdodG5lc3MoKSwgaXQgc2hvdWxkIG9ubHkKYmUgZG9uZSBpbiB0aGUg
aW50ZXJmYWNlIGJldHdlZW4gaGFyZHdhcmUgcmVnaXN0ZXJzIGFuZApwYW5lbC0+YmFja2xpZ2h0
LmxldmVsLgoKVGhlIENQVSBtb2RlIHRha2VvdmVyIGNvZGUgYWRkZWQgaW4gY29tbWl0IDViMWVj
OWFjN2FiNQooImRybS9pOTE1L2JhY2tsaWdodDogRml4IGJhY2tsaWdodCB0YWtlb3ZlciBvbiBM
UFQsIHYzLiIpIHJlYWRzIHRoZQpoYXJkd2FyZSByZWdpc3RlciBhbmQgY29udmVydHMgdG8gcGFu
ZWwtPmJhY2tsaWdodC5sZXZlbCBjb3JyZWN0bHksCmhvd2V2ZXIgdGhlIHZhbHVlIHdyaXR0ZW4g
YmFjayBzaG91bGQgcmVtYWluIGluIHRoZSBoYXJkd2FyZSByZWdpc3RlcgoiZG9tYWluIi4KClRo
aXMgaGFzbid0IGJlZW4gYW4gaXNzdWUsIGJlY2F1c2UgR000NSBtYWNoaW5lcyBhcmUgdGhlIG9u
bHkga25vd24KdXNlcnMgb2YgaTkxNS5pbnZlcnRfYnJpZ2h0bmVzcyBhbmQgdGhlIGJyaWdodG5l
c3MgaW52ZXJ0IHF1aXJrLCBhbmQKd2l0aG91dCBvbmUgb2YgdGhlbSBubyBjb252ZXJzaW9uIGlz
IG1hZGUuIEl0J3MgbGlrZWx5IG5vYm9keSdzIGV2ZXIgaGl0CnRoZSBwcm9ibGVtLgoKRml4ZXM6
IDViMWVjOWFjN2FiNSAoImRybS9pOTE1L2JhY2tsaWdodDogRml4IGJhY2tsaWdodCB0YWtlb3Zl
ciBvbiBMUFQsIHYzLiIpCkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RA
bGludXguaW50ZWwuY29tPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4KQ2M6IEx5dWRlIFBhdWwgPGx5dWRlQHJlZGhhdC5jb20+CkNjOiA8c3RhYmxl
QHZnZXIua2VybmVsLm9yZz4gIyB2NS4xKwpTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFu
aS5uaWt1bGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcGFuZWwuYyB8IDkgKysrKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCsp
LCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcGFuZWwuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcGFu
ZWwuYwppbmRleCA2N2Y4MWFlOTk1YzQuLjdhNDIzOWQxYzI0MSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wYW5lbC5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcGFuZWwuYwpAQCAtMTY0OSwxNiArMTY0OSwxMyBAQCBzdGF0
aWMgaW50IGxwdF9zZXR1cF9iYWNrbGlnaHQoc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVj
dG9yLCBlbnVtIHBpcGUgdW51cwogCQl2YWwgPSBwY2hfZ2V0X2JhY2tsaWdodChjb25uZWN0b3Ip
OwogCWVsc2UKIAkJdmFsID0gbHB0X2dldF9iYWNrbGlnaHQoY29ubmVjdG9yKTsKLQl2YWwgPSBp
bnRlbF9wYW5lbF9jb21wdXRlX2JyaWdodG5lc3MoY29ubmVjdG9yLCB2YWwpOwotCXBhbmVsLT5i
YWNrbGlnaHQubGV2ZWwgPSBjbGFtcCh2YWwsIHBhbmVsLT5iYWNrbGlnaHQubWluLAotCQkJCSAg
ICAgICBwYW5lbC0+YmFja2xpZ2h0Lm1heCk7CiAKIAlpZiAoY3B1X21vZGUpIHsKIAkJZHJtX2Ri
Z19rbXMoJmRldl9wcml2LT5kcm0sCiAJCQkgICAgIkNQVSBiYWNrbGlnaHQgcmVnaXN0ZXIgd2Fz
IGVuYWJsZWQsIHN3aXRjaGluZyB0byBQQ0ggb3ZlcnJpZGVcbiIpOwogCiAJCS8qIFdyaXRlIGNv
bnZlcnRlZCBDUFUgUFdNIHZhbHVlIHRvIFBDSCBvdmVycmlkZSByZWdpc3RlciAqLwotCQlscHRf
c2V0X2JhY2tsaWdodChjb25uZWN0b3ItPmJhc2Uuc3RhdGUsIHBhbmVsLT5iYWNrbGlnaHQubGV2
ZWwpOworCQlscHRfc2V0X2JhY2tsaWdodChjb25uZWN0b3ItPmJhc2Uuc3RhdGUsIHZhbCk7CiAJ
CWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBCTENfUFdNX1BDSF9DVEwxLAogCQkJICAgICAgIHBj
aF9jdGwxIHwgQkxNX1BDSF9PVkVSUklERV9FTkFCTEUpOwogCkBAIC0xNjY2LDYgKzE2NjMsMTAg
QEAgc3RhdGljIGludCBscHRfc2V0dXBfYmFja2xpZ2h0KHN0cnVjdCBpbnRlbF9jb25uZWN0b3Ig
KmNvbm5lY3RvciwgZW51bSBwaXBlIHVudXMKIAkJCSAgICAgICBjcHVfY3RsMiAmIH5CTE1fUFdN
X0VOQUJMRSk7CiAJfQogCisJdmFsID0gaW50ZWxfcGFuZWxfY29tcHV0ZV9icmlnaHRuZXNzKGNv
bm5lY3RvciwgdmFsKTsKKwlwYW5lbC0+YmFja2xpZ2h0LmxldmVsID0gY2xhbXAodmFsLCBwYW5l
bC0+YmFja2xpZ2h0Lm1pbiwKKwkJCQkgICAgICAgcGFuZWwtPmJhY2tsaWdodC5tYXgpOworCiAJ
cmV0dXJuIDA7CiB9CiAKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
