Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8929BA6E22
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2019 18:25:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6BF3893BC;
	Tue,  3 Sep 2019 16:25:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E08C8935A;
 Tue,  3 Sep 2019 16:25:01 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 91A702343A;
 Tue,  3 Sep 2019 16:25:00 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Tue,  3 Sep 2019 12:24:14 -0400
Message-Id: <20190903162424.6877-13-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190903162424.6877-1-sashal@kernel.org>
References: <20190903162424.6877-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=default; t=1567527901;
 bh=I4pIN+mEaSuT392rHzLLHJemMjxOuk9bFdVUaNZkqDw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=U7tKk0i45ekBuKenlqD6dNwEImjyPsTyHQuQQ50S/mlwnSQ0LSFtjpscQr3XzaM04
 6+8HYpsAtH+Gq0tIDU+ThjYrUtYSZVsOlDXEFvId0Rc5zZqyMjlO8LbQGDYPGWy/iL
 P9OKmsjtc+T74/Pn4HMl313ZLvA1oH+RC+iYvdVw=
Subject: [Intel-gfx] [PATCH AUTOSEL 5.2 13/23] drm/i915/userptr: Acquire the
 page lock around set_page_dirty()
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
Cc: Sasha Levin <sashal@kernel.org>, Jani Nikula <jani.nikula@intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CgpbIFVwc3RyZWFt
IGNvbW1pdCBhYTU2YTI5MmNlNjIzNzM0ZGRkMzBmNTJkNzNmNTI3ZDFmMzUyOWI1IF0KCnNldF9w
YWdlX2RpcnR5IHNheXM6CgoJRm9yIHBhZ2VzIHdpdGggYSBtYXBwaW5nIHRoaXMgc2hvdWxkIGJl
IGRvbmUgdW5kZXIgdGhlIHBhZ2UgbG9jawoJZm9yIHRoZSBiZW5lZml0IG9mIGFzeW5jaHJvbm91
cyBtZW1vcnkgZXJyb3JzIHdobyBwcmVmZXIgYQoJY29uc2lzdGVudCBkaXJ0eSBzdGF0ZS4gVGhp
cyBydWxlIGNhbiBiZSBicm9rZW4gaW4gc29tZSBzcGVjaWFsCgljYXNlcywgYnV0IHNob3VsZCBi
ZSBiZXR0ZXIgbm90IHRvLgoKVW5kZXIgdGhvc2UgcnVsZXMsIGl0IGlzIG9ubHkgc2FmZSBmb3Ig
dXMgdG8gdXNlIHRoZSBwbGFpbiBzZXRfcGFnZV9kaXJ0eQpjYWxscyBmb3Igc2htZW1mcy9hbm9u
eW1vdXMgbWVtb3J5LiBVc2VycHRyIG1heSBiZSB1c2VkIHdpdGggcmVhbAptYXBwaW5ncyBhbmQg
c28gbmVlZHMgdG8gdXNlIHRoZSBsb2NrZWQgdmVyc2lvbiAoc2V0X3BhZ2VfZGlydHlfbG9jayku
CgpCdWd6aWxsYTogaHR0cHM6Ly9idWd6aWxsYS5rZXJuZWwub3JnL3Nob3dfYnVnLmNnaT9pZD0y
MDMzMTcKRml4ZXM6IDVjYzllZDRiOWE3YSAoImRybS9pOTE1OiBJbnRyb2R1Y2UgbWFwcGluZyBv
ZiB1c2VyIHBhZ2VzIGludG8gdmlkZW8gbWVtb3J5ICh1c2VycHRyKSBpb2N0bCIpClJlZmVyZW5j
ZXM6IDZkY2M2OTNiYzU3ZiAoImV4dDQ6IHdhcm4gd2hlbiBwYWdlIGlzIGRpcnRpZWQgd2l0aG91
dCBidWZmZXJzIikKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+CkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgpD
Yzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2
cnRrby51cnN1bGluQGludGVsLmNvbT4KTGluazogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0
b3Aub3JnL3BhdGNoL21zZ2lkLzIwMTkwNzA4MTQwMzI3LjI2ODI1LTEtY2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrCihjaGVycnkgcGlja2VkIGZyb20gY29tbWl0IGNiNmQ3YzdkYzdmZjhjYWNlNjY2
ZGRlYzY2MzM0MTE3YTYwNjhjZTIpClNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5p
a3VsYUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFNhc2hhIExldmluIDxzYXNoYWxAa2VybmVs
Lm9yZz4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV91c2VycHRyLmMgfCAxMCAr
KysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fdXNlcnB0ci5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fdXNlcnB0ci5jCmluZGV4IDgwNzllYTNhZjEw
MzkuLmIxZmMxNWM3ZjU5OTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z2VtX3VzZXJwdHIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV91c2VycHRy
LmMKQEAgLTY3OCw3ICs2NzgsMTUgQEAgaTkxNV9nZW1fdXNlcnB0cl9wdXRfcGFnZXMoc3RydWN0
IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKIAogCWZvcl9lYWNoX3NndF9wYWdlKHBhZ2UsIHNn
dF9pdGVyLCBwYWdlcykgewogCQlpZiAob2JqLT5tbS5kaXJ0eSkKLQkJCXNldF9wYWdlX2RpcnR5
KHBhZ2UpOworCQkJLyoKKwkJCSAqIEFzIHRoaXMgbWF5IG5vdCBiZSBhbm9ueW1vdXMgbWVtb3J5
IChlLmcuIHNobWVtKQorCQkJICogYnV0IGV4aXN0IG9uIGEgcmVhbCBtYXBwaW5nLCB3ZSBoYXZl
IHRvIGxvY2sKKwkJCSAqIHRoZSBwYWdlIGluIG9yZGVyIHRvIGRpcnR5IGl0IC0tIGhvbGRpbmcK
KwkJCSAqIHRoZSBwYWdlIHJlZmVyZW5jZSBpcyBub3Qgc3VmZmljaWVudCB0bworCQkJICogcHJl
dmVudCB0aGUgaW5vZGUgZnJvbSBiZWluZyB0cnVuY2F0ZWQuCisJCQkgKiBQbGF5IHNhZmUgYW5k
IHRha2UgdGhlIGxvY2suCisJCQkgKi8KKwkJCXNldF9wYWdlX2RpcnR5X2xvY2socGFnZSk7CiAK
IAkJbWFya19wYWdlX2FjY2Vzc2VkKHBhZ2UpOwogCQlwdXRfcGFnZShwYWdlKTsKLS0gCjIuMjAu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
