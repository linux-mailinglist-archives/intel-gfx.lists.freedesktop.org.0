Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE8687E748
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2019 02:50:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AC676E857;
	Fri,  2 Aug 2019 00:50:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A278C6E856
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Aug 2019 00:50:54 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Aug 2019 17:50:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,336,1559545200"; d="scan'208";a="184424203"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.9.111])
 by orsmga002.jf.intel.com with ESMTP; 01 Aug 2019 17:50:53 -0700
Date: Thu, 1 Aug 2019 17:50:53 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: =?utf-8?B?Sm9zw6k=?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20190802005053.pnb7o4aj3hakljqq@ldmartin-desk1>
References: <20190801232812.28375-1-jose.souza@intel.com>
 <20190801232812.28375-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190801232812.28375-2-jose.souza@intel.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/tgl: Fix the read of the DDI
 that transcoder is attached to
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBBdWcgMDEsIDIwMTkgYXQgMDQ6Mjg6MTJQTSAtMDcwMCwgSm9zZSBTb3V6YSB3cm90
ZToKPk9uIFRHTCB0aGlzIHJlZ2lzdGVyIGRvIG5vdCBtYXAgZGlyZWN0bHkgdG8gcG9ydCwgaXQg
d2FzIGFscmVhZHkKPmhhbmRsZWQgd2hlbiBzZXR0aW5nIGl0KFRHTF9UUkFOU19ERElfU0VMRUNU
X1BPUlQoKSkgYnV0IG5vdCB3aGVuCj5yZWFkaW5nIGl0Lgo+Cj5DYzogTHVjYXMgRGUgTWFyY2hp
IDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj5TaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRv
IGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KPi0tLQo+IGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMTAgKysrKysrKystLQo+IDEgZmlsZSBjaGFu
Z2VkLCA4IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4KPmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj5pbmRleCA5ZTRlZTI5ZmQwZmMuLmI5NTI2
YWE0MDJmOSAxMDA2NDQKPi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jCj4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYwo+QEAgLTEwMzUzLDExICsxMDM1MywxNyBAQCBzdGF0aWMgdm9pZCBoYXN3ZWxsX2dldF9k
ZGlfcG9ydF9zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKPgo+IAl0bXAgPSBJOTE1X1JF
QUQoVFJBTlNfRERJX0ZVTkNfQ1RMKHBpcGVfY29uZmlnLT5jcHVfdHJhbnNjb2RlcikpOwo+Cj4t
CWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKQo+KwlpZiAoSU5URUxfR0VOKGRldl9wcml2
KSA+PSAxMikgewo+IAkJcG9ydCA9ICh0bXAgJiBUR0xfVFJBTlNfRERJX1BPUlRfTUFTSykgPj4K
PiAJCQlUR0xfVFJBTlNfRERJX1BPUlRfU0hJRlQ7Cj4tCWVsc2UKPisJCS8qCj4rCQkgKiBSZWdp
c3RlciB2YWx1ZXM6IG5vbmUgPSAwLCBERElBID0gMS4uLiB3aGlsZSBQT1JUX0EgPSAwLi4uCj4r
CQkgKiBzbyBzdWJ0cmFjdCBvbmUKPisJCSAqLwo+KwkJcG9ydC0tOwoKcG9ydCA9IFRHTF9QT1JU
X1RSQU5TX0RESV9TRUxFQ1QodG1wKQoKYW5kIHB1dCB0aGUgbWFjcm8gcmlnaHQgYmVsb3cgdGhl
IFRHTF9UUkFOU19ERElfU0VMRUNUX1BPUlQoKSBzbyB0aGUKaW50ZW50IGlzIGV4cGxpY2l0IGFu
ZCB3ZSBkb24ndCBmb3JnZXQgYWdhaW4uIFRoZW4geW91IGNhbiByZW1vdmUgdGhlCmNvbW1lbnQu
CgphbnkgY2hhbmNlIG9mIHRtcCBiZWluZyBub25lIGFuZCB0aGUgLTEgdW5kZXJmbG93PwoKTHVj
YXMgRGUgTWFyY2hpCgoKPisJfSBlbHNlIHsKPiAJCXBvcnQgPSAodG1wICYgVFJBTlNfRERJX1BP
UlRfTUFTSykgPj4gVFJBTlNfRERJX1BPUlRfU0hJRlQ7Cj4rCX0KPgo+IAlpZiAoSU5URUxfR0VO
KGRldl9wcml2KSA+PSAxMSkKPiAJCWljZWxha2VfZ2V0X2RkaV9wbGwoZGV2X3ByaXYsIHBvcnQs
IHBpcGVfY29uZmlnKTsKPi0tIAo+Mi4yMi4wCj4KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
