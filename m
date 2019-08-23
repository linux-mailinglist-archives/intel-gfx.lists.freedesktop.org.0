Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 298D59AADA
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 10:55:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DDAA6EC40;
	Fri, 23 Aug 2019 08:55:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 444536EC33
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 08:54:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Aug 2019 01:21:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,420,1559545200"; d="scan'208";a="203702060"
Received: from zzhan38-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.255.92.52])
 by fmsmga004.fm.intel.com with ESMTP; 23 Aug 2019 01:21:14 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Aug 2019 01:20:44 -0700
Message-Id: <20190823082055.5992-13-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190823082055.5992-1-lucas.demarchi@intel.com>
References: <20190823082055.5992-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 12/23] drm/i915: Disable pipes in reverse
 order
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

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpEaXNh
YmxlIENSVEMvcGlwZXMgaW4gcmV2ZXJzZSBvcmRlciBiZWNhdXNlIHNvbWUgZmVhdHVyZXMgKE1T
VCBpbgpUR0wrKSByZXF1aXJlcyBtYXN0ZXIgYW5kIHNsYXZlIHJlbGF0aW9uc2hpcCBiZXR3ZWVu
IHBpcGVzLCBzbyBpdApzaG91bGQgYWx3YXlzIHBpY2sgdGhlIGxvd2VzdCBwaXBlIGFzIG1hc3Rl
ciBhcyBpdCB3aWxsIGJlIGVuYWJsZWQKZmlyc3QgYW5kIGRpc2FibGUgaW4gdGhlIHJldmVyc2Ug
b3JkZXIgc28gdGhlIG1hc3RlciB3aWxsIGJlIHRoZSBsYXN0Cm9uZSB0byBiZSBkaXNhYmxlZC4K
CkNjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+CkNjOiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PD
qSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTog
THVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBN
aWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMTAgKysrKysrKysrLQogMSBmaWxlIGNoYW5n
ZWQsIDkgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggYjUxZDFjZWI4NzM5Li5kZGI4NDM2ZTIy
MDggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBA
IC0xMzkwOCw3ICsxMzkwOCwxNSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9hdG9taWNfY29tbWl0X3Rh
aWwoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCiAJaWYgKHN0YXRlLT5tb2Rlc2V0
KQogCQl3YWtlcmVmID0gaW50ZWxfZGlzcGxheV9wb3dlcl9nZXQoZGV2X3ByaXYsIFBPV0VSX0RP
TUFJTl9NT0RFU0VUKTsKIAotCWZvcl9lYWNoX29sZG5ld19pbnRlbF9jcnRjX2luX3N0YXRlKHN0
YXRlLCBjcnRjLCBvbGRfY3J0Y19zdGF0ZSwgbmV3X2NydGNfc3RhdGUsIGkpIHsKKwkvKgorCSAq
IERpc2FibGUgQ1JUQy9waXBlcyBpbiByZXZlcnNlIG9yZGVyIGJlY2F1c2Ugc29tZSBmZWF0dXJl
cyhNU1QgaW4KKwkgKiBUR0wrKSByZXF1aXJlcyBtYXN0ZXIgYW5kIHNsYXZlIHJlbGF0aW9uc2hp
cCBiZXR3ZWVuIHBpcGVzLCBzbyBpdAorCSAqIHNob3VsZCBhbHdheXMgcGljayB0aGUgbG93ZXN0
IHBpcGUgYXMgbWFzdGVyIGFzIGl0IHdpbGwgYmUgZW5hYmxlZAorCSAqIGZpcnN0IGFuZCBkaXNh
YmxlIGluIHRoZSByZXZlcnNlIG9yZGVyIHNvIHRoZSBtYXN0ZXIgd2lsbCBiZSB0aGUKKwkgKiBs
YXN0IG9uZSB0byBiZSBkaXNhYmxlZC4KKwkgKi8KKwlmb3JfZWFjaF9vbGRuZXdfaW50ZWxfY3J0
Y19pbl9zdGF0ZV9yZXZlcnNlKHN0YXRlLCBjcnRjLCBvbGRfY3J0Y19zdGF0ZSwKKwkJCQkJCSAg
ICBuZXdfY3J0Y19zdGF0ZSwgaSkgewogCQlpZiAobmVlZHNfbW9kZXNldChuZXdfY3J0Y19zdGF0
ZSkgfHwKIAkJICAgIG5ld19jcnRjX3N0YXRlLT51cGRhdGVfcGlwZSkgewogCi0tIAoyLjIzLjAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
