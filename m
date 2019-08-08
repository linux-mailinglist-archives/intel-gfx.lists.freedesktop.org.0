Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 890438575D
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 03:00:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F32656E77F;
	Thu,  8 Aug 2019 01:00:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60B486E77F
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 01:00:43 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 18:00:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,358,1559545200"; d="scan'208";a="350004560"
Received: from tmkhan-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.255.228.245])
 by orsmga005.jf.intel.com with ESMTP; 07 Aug 2019 18:00:42 -0700
Date: Wed, 7 Aug 2019 18:00:42 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: =?utf-8?B?Sm9zw6k=?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20190808010042.embac76qaf2f7gxs@ldmartin-desk1>
References: <20190808004935.1787-1-jose.souza@intel.com>
 <20190808004935.1787-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808004935.1787-2-jose.souza@intel.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH v4 2/2] drm/i915/tgl: Fix the read of the
 DDI that transcoder is attached to
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

T24gV2VkLCBBdWcgMDcsIDIwMTkgYXQgMDU6NDk6MzVQTSAtMDcwMCwgSm9zZSBTb3V6YSB3cm90
ZToKPk9uIFRHTCB0aGlzIHJlZ2lzdGVyIGRvIG5vdCBtYXAgZGlyZWN0bHkgdG8gcG9ydCwgaXQg
d2FzIGFscmVhZHkKPmhhbmRsZWQgd2hlbiBzZXR0aW5nIGl0KFRHTF9UUkFOU19ERElfU0VMRUNU
X1BPUlQoKSkgYnV0IG5vdCB3aGVuCj5yZWFkaW5nIGl0Lgo+Cj5UbyBtYWtlIGl0IGNvbnNpc250
ZW50IGFkZGluZyBhIG1hY3JvIGZvciB0aGUgb2xkZXIgZ2VucyB0b28uCj4KPnYyOgo+QWRkaW5n
IFRHTF9QT1JUX1RSQU5TX0RESV9TRUxFQ1QoKSBzbyBhbGwgZnV0dXJlIHVzZXJzIGNhbiByZXVz
ZSBpdAo+KEx1Y2FzKQo+Cj52MzoKPk1pc3NlZCBwYXJlbnRoZXNlcyBhcnJvdW5kIHZhbCAoSm9z
ZSkKPgo+djQ6Cj5SZW5hbWVkIFRHTF9QT1JUX1RSQU5TX0RESV9TRUxFQ1QgdG8gVEdMX1RSQU5T
X0RESV9GVU5DX0NUTF9WQUxfVE9fUE9SVAo+KEx1Y2FzKQo+QWRkZWQgVFJBTlNfRERJX0ZVTkNf
Q1RMX1ZBTF9UT19QT1JUIChMdWNhcykKPgo+Q2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVt
YXJjaGlAaW50ZWwuY29tPgo+U2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8
am9zZS5zb3V6YUBpbnRlbC5jb20+CgoKUmV2aWV3ZWQtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVj
YXMuZGVtYXJjaGlAaW50ZWwuY29tPgoKTHVjYXMgRGUgTWFyY2hpCgo+LS0tCj4gZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA1ICsrLS0tCj4gZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAgfCAyICsrCj4gMiBmaWxlcyBjaGFu
Z2VkLCA0IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4KPmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj5pbmRleCA5MzVhZWM3NjYwYWYuLjBhMzFk
OTExMzY5OSAxMDA2NDQKPi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jCj4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYwo+QEAgLTEwMzU0LDEwICsxMDM1NCw5IEBAIHN0YXRpYyB2b2lkIGhhc3dlbGxfZ2V0X2Rk
aV9wb3J0X3N0YXRlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAo+IAl0bXAgPSBJOTE1X1JFQUQo
VFJBTlNfRERJX0ZVTkNfQ1RMKHBpcGVfY29uZmlnLT5jcHVfdHJhbnNjb2RlcikpOwo+Cj4gCWlm
IChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKQo+LQkJcG9ydCA9ICh0bXAgJiBUR0xfVFJBTlNf
RERJX1BPUlRfTUFTSykgPj4KPi0JCQlUR0xfVFJBTlNfRERJX1BPUlRfU0hJRlQ7Cj4rCQlwb3J0
ID0gVEdMX1RSQU5TX0RESV9GVU5DX0NUTF9WQUxfVE9fUE9SVCh0bXApOwo+IAllbHNlCj4tCQlw
b3J0ID0gKHRtcCAmIFRSQU5TX0RESV9QT1JUX01BU0spID4+IFRSQU5TX0RESV9QT1JUX1NISUZU
Owo+KwkJcG9ydCA9IFRSQU5TX0RESV9GVU5DX0NUTF9WQUxfVE9fUE9SVCh0bXApOwo+Cj4gCWlm
IChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKQo+IAkJaWNlbGFrZV9nZXRfZGRpX3BsbChkZXZf
cHJpdiwgcG9ydCwgcGlwZV9jb25maWcpOwo+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj5pbmRleCBk
NzYwODMwY2ZkN2IuLjNkMWMzMGE4MjMwMiAxMDA2NDQKPi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVnLmgKPisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPkBA
IC05NDMyLDYgKzk0MzIsOCBAQCBlbnVtIHNrbF9wb3dlcl9nYXRlIHsKPiAjZGVmaW5lICBUR0xf
VFJBTlNfRERJX1BPUlRfTUFTSwkoMHhmIDw8IFRHTF9UUkFOU19ERElfUE9SVF9TSElGVCkKPiAj
ZGVmaW5lICBUUkFOU19ERElfU0VMRUNUX1BPUlQoeCkJKCh4KSA8PCBUUkFOU19ERElfUE9SVF9T
SElGVCkKPiAjZGVmaW5lICBUR0xfVFJBTlNfRERJX1NFTEVDVF9QT1JUKHgpCSgoKHgpICsgMSkg
PDwgVEdMX1RSQU5TX0RESV9QT1JUX1NISUZUKQo+KyNkZWZpbmUgIFRSQU5TX0RESV9GVU5DX0NU
TF9WQUxfVE9fUE9SVCh2YWwpCSAoKCh2YWwpICYgVFJBTlNfRERJX1BPUlRfTUFTSykgPj4gVFJB
TlNfRERJX1BPUlRfU0hJRlQpCj4rI2RlZmluZSAgVEdMX1RSQU5TX0RESV9GVU5DX0NUTF9WQUxf
VE9fUE9SVCh2YWwpICgoKHZhbCkgJiBUR0xfVFJBTlNfRERJX1BPUlRfTUFTSyA+PiBUR0xfVFJB
TlNfRERJX1BPUlRfU0hJRlQpIC0gMSkKPiAjZGVmaW5lICBUUkFOU19ERElfTU9ERV9TRUxFQ1Rf
TUFTSwkoNyA8PCAyNCkKPiAjZGVmaW5lICBUUkFOU19ERElfTU9ERV9TRUxFQ1RfSERNSQkoMCA8
PCAyNCkKPiAjZGVmaW5lICBUUkFOU19ERElfTU9ERV9TRUxFQ1RfRFZJCSgxIDw8IDI0KQo+LS0g
Cj4yLjIyLjAKPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
