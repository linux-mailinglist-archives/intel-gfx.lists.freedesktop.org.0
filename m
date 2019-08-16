Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98D3B8FD01
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 10:05:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDABD6EB1B;
	Fri, 16 Aug 2019 08:05:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C66D6EB17
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 08:05:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Aug 2019 01:05:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,391,1559545200"; d="scan'208";a="184851505"
Received: from miyoungj-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.254.105.68])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Aug 2019 01:05:46 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Aug 2019 01:04:40 -0700
Message-Id: <20190816080503.28594-17-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190816080503.28594-1-lucas.demarchi@intel.com>
References: <20190816080503.28594-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 16/39] drm/i915: Disable pipes in reverse order
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
THVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAxMCArKysrKysrKystCiAxIGZp
bGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCA2YzZhNWE1ZjQxYmIuLjcy
YzQxZDNhZmZiMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMKQEAgLTEzOTI0LDcgKzEzOTI0LDE1IEBAIHN0YXRpYyB2b2lkIGludGVsX2F0b21pY19j
b21taXRfdGFpbChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKIAlpZiAoc3RhdGUt
Pm1vZGVzZXQpCiAJCXdha2VyZWYgPSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2dldChkZXZfcHJpdiwg
UE9XRVJfRE9NQUlOX01PREVTRVQpOwogCi0JZm9yX2VhY2hfb2xkbmV3X2ludGVsX2NydGNfaW5f
c3RhdGUoc3RhdGUsIGNydGMsIG9sZF9jcnRjX3N0YXRlLCBuZXdfY3J0Y19zdGF0ZSwgaSkgewor
CS8qCisJICogRGlzYWJsZSBDUlRDL3BpcGVzIGluIHJldmVyc2Ugb3JkZXIgYmVjYXVzZSBzb21l
IGZlYXR1cmVzKE1TVCBpbgorCSAqIFRHTCspIHJlcXVpcmVzIG1hc3RlciBhbmQgc2xhdmUgcmVs
YXRpb25zaGlwIGJldHdlZW4gcGlwZXMsIHNvIGl0CisJICogc2hvdWxkIGFsd2F5cyBwaWNrIHRo
ZSBsb3dlc3QgcGlwZSBhcyBtYXN0ZXIgYXMgaXQgd2lsbCBiZSBlbmFibGVkCisJICogZmlyc3Qg
YW5kIGRpc2FibGUgaW4gdGhlIHJldmVyc2Ugb3JkZXIgc28gdGhlIG1hc3RlciB3aWxsIGJlIHRo
ZQorCSAqIGxhc3Qgb25lIHRvIGJlIGRpc2FibGVkLgorCSAqLworCWZvcl9lYWNoX29sZG5ld19p
bnRlbF9jcnRjX2luX3N0YXRlX3JldmVyc2Uoc3RhdGUsIGNydGMsIG9sZF9jcnRjX3N0YXRlLAor
CQkJCQkJICAgIG5ld19jcnRjX3N0YXRlLCBpKSB7CiAJCWlmIChuZWVkc19tb2Rlc2V0KG5ld19j
cnRjX3N0YXRlKSB8fAogCQkgICAgbmV3X2NydGNfc3RhdGUtPnVwZGF0ZV9waXBlKSB7CiAKLS0g
CjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
