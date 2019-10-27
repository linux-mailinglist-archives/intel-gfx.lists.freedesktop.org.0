Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BACAAE641A
	for <lists+intel-gfx@lfdr.de>; Sun, 27 Oct 2019 17:23:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D04B6E284;
	Sun, 27 Oct 2019 16:23:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40E9D6E283;
 Sun, 27 Oct 2019 16:23:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18985095-1500050 
 for multiple; Sun, 27 Oct 2019 16:22:36 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 27 Oct 2019 16:22:34 +0000
Message-Id: <20191027162234.17965-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_suspend: Measure power
 consumption during suspend
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rm9yIHRoaXMgdGVzdCwgd2UgbmVlZCBhIGxhcHRvcCBydW5uaW5nIG9uIGJhdHRlcnkgcG93ZXIg
c28gdGhhdCB3ZSBjYW4KcmVhZCB0aGUgYmF0dGVyeSBjaGFyZ2UgbGV2ZWwgYmVmb3JlIGFuZCBh
ZnRlciBzdXNwZW5kLiBBbmQgdGhlbiB3YWl0CmxvbmcgZW5vdWdoIGZvciBhIHJlbGlhYmxlIG1l
YXN1cmUuCgpSZWZlcmVuY2VzOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMTE5MDkKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+CkNjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVs
LmNvbT4KLS0tCiB0ZXN0cy9pOTE1L2dlbV9leGVjX3N1c3BlbmQuYyB8IDM3ICsrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgMzYgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfc3VzcGVu
ZC5jIGIvdGVzdHMvaTkxNS9nZW1fZXhlY19zdXNwZW5kLmMKaW5kZXggYWY2MTkwZGRkLi4yMWNm
YTg4OGEgMTAwNjQ0Ci0tLSBhL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfc3VzcGVuZC5jCisrKyBiL3Rl
c3RzL2k5MTUvZ2VtX2V4ZWNfc3VzcGVuZC5jCkBAIC0yNyw5ICsyNywxMyBAQAogICogRXhlcmNp
c2UgZXhlY3V0aW5nIGJhdGNoZXMgYWNyb3NzIHN1c3BlbmQgYmVmb3JlIGNoZWNraW5nIHRoZSBy
ZXN1bHRzLgogICovCiAKKyNpbmNsdWRlIDxmY250bC5oPgorI2luY2x1ZGUgPHVuaXN0ZC5oPgor
CiAjaW5jbHVkZSAiaWd0LmgiCi0jaW5jbHVkZSAiaWd0X2d0LmgiCiAjaW5jbHVkZSAiaWd0X2R1
bW15bG9hZC5oIgorI2luY2x1ZGUgImlndF9ndC5oIgorI2luY2x1ZGUgImlndF9zeXNmcy5oIgog
CiAjZGVmaW5lIE5PU0xFRVAgMAogI2RlZmluZSBJRExFIDEKQEAgLTIzMiw2ICsyMzYsMzIgQEAg
c3RhdGljIHZvaWQgcnVuX3Rlc3QoaW50IGZkLCB1bnNpZ25lZCBlbmdpbmUsIHVuc2lnbmVkIGZs
YWdzKQogCQl0ZXN0X2FsbChmZCwgZmxhZ3MpOwogfQogCitzdGF0aWMgdm9pZCBwb3dlcl90ZXN0
KGludCBpOTE1LCB1bnNpZ25lZCBlbmdpbmUsIHVuc2lnbmVkIGZsYWdzKQoreworCXVpbnQ2NF90
IGJlZm9yZSwgYWZ0ZXI7CisJY2hhciAqc3RhdHVzOworCWludCBkaXI7CisKKwlkaXIgPSBvcGVu
KCIvc3lzL2NsYXNzL3Bvd2VyX3N1cHBseS9CQVQwIiwgT19SRE9OTFkpOworCWlndF9yZXF1aXJl
X2YoZGlyICE9IC0xLCAiL3N5cy9jbGFzcy9wb3dlcl9zdXBwbHkvQkFUMCBub3QgYXZhaWxhYmxl
XG4iKTsKKworCXN0YXR1cyA9IGlndF9zeXNmc19nZXQoZGlyLCAic3RhdHVzIik7CisJaWd0X3Jl
cXVpcmVfZihzdGF0dXMgJiYgc3RyY21wKHN0YXR1cywgIkRpc2NoYXJnaW5nIikgPT0gMCwKKwkJ
ICAgICAgInBvd2VyIHRlc3QgbmVlZHMgdG8gYmUgb24gYmF0dGVyeSwgbm90IG1haW5zLCBwb3dl
clxuIik7CisJZnJlZShzdGF0dXMpOworCisJaWd0X3NldF9hdXRvcmVzdW1lX2RlbGF5KDMwICog
NjApOyAvKiAzMCBtaW51dGVzICovCisKKwlpZ3Rfc3lzZnNfc2NhbmYoZGlyLCAiZW5lcmd5X25v
dyIsICIlIlBSSXU2NCwgJmJlZm9yZSk7CisJcnVuX3Rlc3QoaTkxNSwgZW5naW5lLCBmbGFncyk7
CisJaWd0X3N5c2ZzX3NjYW5mKGRpciwgImVuZXJneV9ub3ciLCAiJSJQUkl1NjQsICZhZnRlcik7
CisKKwlpZ3Rfc2V0X2F1dG9yZXN1bWVfZGVsYXkoMCk7CisKKwlpZ3RfaW5mbygiUG93ZXIgY29u
c3VtZWQgd2hpbGUgc3VzcGVuZGVkOiAlLjNmbVdoXG4iLAorCQkgKGJlZm9yZSAtIGFmdGVyKSAq
IDFlLTMpOworfQorCiBpZ3RfbWFpbgogewogCWNvbnN0IHN0cnVjdCB7CkBAIC0yODksNiArMzE5
LDExIEBAIGlndF9tYWluCiAJaWd0X3N1YnRlc3QoImhhbmctUzQiKQogCQlydW5fdGVzdChmZCwg
MCwgSElCRVJOQVRFIHwgSEFORyk7CiAKKwlpZ3Rfc3VidGVzdCgicG93ZXItUzAiKQorCQlwb3dl
cl90ZXN0KGZkLCAwLCBJRExFKTsKKwlpZ3Rfc3VidGVzdCgicG93ZXItUzMiKQorCQlwb3dlcl90
ZXN0KGZkLCAwLCBTVVNQRU5EKTsKKwogCWlndF9maXh0dXJlIHsKIAkJaWd0X2Rpc2FsbG93X2hh
bmcoZmQsIGhhbmcpOwogCQljbG9zZShmZCk7Ci0tIAoyLjI0LjAucmMxCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
