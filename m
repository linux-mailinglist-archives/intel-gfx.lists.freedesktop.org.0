Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F86122FC
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 22:06:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0470089842;
	Thu,  2 May 2019 20:06:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B46D89842
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 20:06:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 13:06:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,423,1549958400"; d="scan'208";a="140780179"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 02 May 2019 13:06:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 02 May 2019 23:06:11 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 May 2019 23:06:07 +0300
Message-Id: <20190502200607.14504-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190502200607.14504-1-ville.syrjala@linux.intel.com>
References: <20190502200607.14504-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Allow ICL pipe "HDR mode" when
 the cursor is visible
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClR1
cm5zIG91dCB0aGUgY3Vyc29yIGlzIGNvbXBhdGlibGUgd2l0aCB0aGUgcGlwZSAiSERSIG1vZGUi
LiBJdCdzCm9ubHkgdGhlIGFjdHVhbCBTRFIgcGxhbmVzIHRoYXQgZ2V0IGVudGlyZWx5IGJ5cGFz
c2VkIGR1cmluZwpibGVuZGluZy4gU28gbGV0J3MgaWdub3JlIHRoZSBjdXJzb3Igd2hlbiBjaGVj
a2luZyBpZiB3ZSBoYXZlCmFueSBwbGFuZXMgYWN0aXZlIHRoYXQgYXJlbid0IEhEUiBjb21wYXRp
YmxlLiBUaGlzIGZpeGVzIHRoZQpyZWdyZXNzaW9ucyBpbiB0aGUga21zX2N1cnNvcl9jcmMgYW5k
IGttc19wbGFuZV9jdXJzb3IgdGVzdHMuCgpDYzogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGlu
dGVsLmNvbT4KQ2M6IFNoYXNoYW5rIFNoYXJtYSA8c2hhc2hhbmsuc2hhcm1hQGludGVsLmNvbT4K
QnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEx
MDU3OQpGaXhlczogMDliMjU4MTJkYjEwICgiZHJtL2k5MTU6IEVuYWJsZSBwaXBlIEhEUiBtb2Rl
IG9uIElDTCBpZiBvbmx5IEhEUiBwbGFuZXMgYXJlIHVzZWQiKQpTaWduZWQtb2ZmLWJ5OiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYyB8IDMgKystCiAxIGZpbGUgY2hhbmdlZCwgMiBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxh
eS5jCmluZGV4IDI4MDQyYTE2MDg0ZC4uY2MxMjAzOTAxZWY0IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZGlzcGxheS5jCkBAIC04OTI3LDcgKzg5MjcsOCBAQCBzdGF0aWMgdm9pZCBiZHdfc2V0
X3BpcGVtaXNjKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogCQkJ
UElQRU1JU0NfWVVWNDIwX01PREVfRlVMTF9CTEVORDsKIAogCWlmIChJTlRFTF9HRU4oZGV2X3By
aXYpID49IDExICYmCi0JICAgIChjcnRjX3N0YXRlLT5hY3RpdmVfcGxhbmVzICYgfmljbF9oZHJf
cGxhbmVfbWFzaygpKSA9PSAwKQorCSAgICAoY3J0Y19zdGF0ZS0+YWN0aXZlX3BsYW5lcyAmIH4o
aWNsX2hkcl9wbGFuZV9tYXNrKCkgfAorCQkJCQkgICBCSVQoUExBTkVfQ1VSU09SKSkpID09IDAp
CiAJCXZhbCB8PSBQSVBFTUlTQ19IRFJfTU9ERV9QUkVDSVNJT047CiAKIAlJOTE1X1dSSVRFKFBJ
UEVNSVNDKGNydGMtPnBpcGUpLCB2YWwpOwotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
