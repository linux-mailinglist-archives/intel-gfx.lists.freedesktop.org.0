Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D1124D8C9
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Aug 2020 17:38:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C5AA8918F;
	Fri, 21 Aug 2020 15:38:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88F2D8918F;
 Fri, 21 Aug 2020 15:38:22 +0000 (UTC)
IronPort-SDR: BPj1tmJW3FSi8bVgUHw2xao5zxp9OdbS4xlEfylU7pDfv+MMasmHHCw4Pyqr7CBCcHNXI5RZNH
 qMouYkjbsT1A==
X-IronPort-AV: E=McAfee;i="6000,8403,9719"; a="240381828"
X-IronPort-AV: E=Sophos;i="5.76,337,1592895600"; d="scan'208";a="240381828"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2020 08:38:21 -0700
IronPort-SDR: vWCoiMM5ptq9OUGLKYX5RpiqyglucXHXTVzOkgBzSNii1KibFcjOE32CUSKhmbIO46eN7qdb3n
 4rXDQ0D8W3Iw==
X-IronPort-AV: E=Sophos;i="5.76,337,1592895600"; d="scan'208";a="473086482"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2020 08:38:19 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 21 Aug 2020 17:37:47 +0200
Message-Id: <20200821153807.18613-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v4 00/20] tests/core_hotunplug: Fixes and
 enhancements
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
Cc: =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2xlYW4gdXAgdGhlIHRlc3QgY29kZSwgYWRkIHNvbWUgbmV3IGJhc2ljIHN1YnRlc3RzLCB0aGVu
IHVuYmxvY2sKdW5iaW5kIHRlc3QgdmFyaWFudHMuCgpTZXJpZXMgY2hhbmdlbG9nOgp2MjogTmV3
IHBhdGNoICJVbi1ibG9ja2xpc3QgKmJpbmQqIHN1YnRlc3RzIGFkZGVkLgp2MzogUGF0Y2ggIkZv
bGxvdyBmYWlsZWQgc3VidGVzdHMgd2l0aCBoZWFsdGhjaGVjayIgcmVuYW1lZCB0byAiUmVjb3Zl
cgogICAgZnJvbSBzdWJ0ZXN0IGZhaWx1cmVzIi4KICAtIGEgbmV3IHBhdGNoZSAiQ2xlYW4gdXAg
ZGV2aWNlIG9wZW4gZXJyb3IgaGFuZGxpbmciIGFkZGVkLCBhbiBvbGQKICAgIHBhdGNoICJGaXgg
bWlzc2luZyBuZXdsaW5lIiBvYnNvbGV0ZWQgYnkgdGhlIG5ldyBvbmUgZHJvcHBlZCwKICAtIG90
aGVyIG5ldyBwYXRjaGVzIGFkZGVkOgogICAgLSAiTGV0IHRoZSBkcml2ZXIgdGltZSBvdXQgZXNz
ZW50aWFsIHN5c2ZzIG9wZXJhdGlvbnMiLAogICAgLSAiTW9yZSB0aG9yb3VnaCBpOTE1IGhlYWx0
aGNoZWNrIGFuZCByZWNvdmVyeSIsCiAgLSBhIHBhdGNoICJBZGQgJ2xhdGVjbG9zZSBiZWZvcmUg
cmVzdG9yZScgdmFyaWFudHMiIGZyb20gYW5vdGhlcgogICAgc2VyaWVzIGluY2x1ZGVkLgp2NDog
T3B0aW9uYWwgcGF0Y2ggIkR1cGxpY2F0ZSBkZWJ1ZyBtZXNzYWdlcyBpbiBkbWVzZyIgZnJvbSBh
bm90aGVyCiAgICBzZXJpZXMgaW5jbHVkZWQuCgpATWljaGHFgjogU2luY2UgbW9zdCB2Mi92MyB1
cGRhdGVzIGFyZSB0cml2aWFsLCBJJ3ZlIHByZXNlcnZlZCB5b3VyCnYxL3YyIFJldmlld2QtYnk6
IGV4Y2VwdCBmb3IgYSBmZXcgcGF0Y2hlcyB3aXRoIG5vbi10cml2aWFsIGNoYW5nZXMsCndoZXJl
IEkgbWFya2VkIHlvdXIgUi1iIGFzIHYxL3YyIGFwcGxpY2FibGUuICBQbGVhc2UgaGF2ZSBhIGxv
b2sgYW5kCmNvbmZpcm0gaWYgeW91IGFyZSBzdGlsbCBPSyB3aXRoIHRoZW0uCgpAVHZydGtvOiBQ
bGVhc2Ugc3VwcG9ydCBteSBhdHRlbXB0IHRvIHJlbW92ZSB0aGUgdW5iaW5kIHRlc3QgdmFyaWFu
dHMKZnJvbSB0aGUgYmxvY2tsaXN0LgoKQFBldHJpLCBATWFydGluOiBBc3N1bWluZyBDSSByZXN1
bHRzIHdpbGwgYmUgcG9zaXRpdmUsIHBsZWFzZSBnaXZlIG1lCnlvdXIgZ3JlZW4gbGlnaHQgZm9y
IG1lcmdpbmcgdGhpcyBzZXJpZXMgaWYgeW91IGhhdmUgbm8gb2JqZWN0aW9ucy4KClRoYW5rcywK
SmFudXN6CgpKYW51c3ogS3J6eXN6dG9maWsgKDIwKToKICB0ZXN0cy9jb3JlX2hvdHVucGx1Zzog
VXNlIGlndF9hc3NlcnRfZmQoKQogIHRlc3RzL2NvcmVfaG90dW5wbHVnOiBDb25zdGlmeSBkZXZf
YnVzX2FkZHIgc3RyaW5nCiAgdGVzdHMvY29yZV9ob3R1bnBsdWc6IENsZWFuIHVwIGRldmljZSBv
cGVuIGVycm9yIGhhbmRsaW5nCiAgdGVzdHMvY29yZV9ob3R1bnBsdWc6IENvbnNvbGlkYXRlIGR1
cGxpY2F0ZWQgZGVidWcgbWVzc2FnZXMKICB0ZXN0cy9jb3JlX2hvdHVucGx1ZzogQXNzZXJ0IHN1
Y2Nlc3NmdWwgZGV2aWNlIGZpbHRlciBhcHBsaWNhdGlvbgogIHRlc3RzL2NvcmVfaG90dW5wbHVn
OiBNYWludGFpbiBhIHNpbmdsZSBkYXRhIHN0cnVjdHVyZSBpbnN0YW5jZQogIHRlc3RzL2NvcmVf
aG90dW5wbHVnOiBQYXNzIGVycm9ycyB2aWEgYSBkYXRhIHN0cnVjdHVyZSBmaWVsZAogIHRlc3Rz
L2NvcmVfaG90dW5wbHVnOiBIYW5kbGUgZGV2aWNlIGNsb3NlIGVycm9ycwogIHRlc3RzL2NvcmVf
aG90dW5wbHVnOiBQcmVwYXJlIGludmFyaWFudCBkYXRhIG9uY2UgcGVyIHRlc3QgcnVuCiAgdGVz
dHMvY29yZV9ob3R1bnBsdWc6IFNraXAgc2VsZWN0aXZlbHkgb24gc3lzZnMgY2xvc2UgZXJyb3Jz
CiAgdGVzdHMvY29yZV9ob3R1bnBsdWc6IFJlY292ZXIgZnJvbSBzdWJ0ZXN0IGZhaWx1cmVzCiAg
dGVzdHMvY29yZV9ob3R1bnBsdWc6IEZhaWwgc3VidGVzdHMgb24gZGV2aWNlIGNsb3NlIGVycm9y
cwogIHRlc3RzL2NvcmVfaG90dW5wbHVnOiBMZXQgdGhlIGRyaXZlciB0aW1lIG91dCBlc3NlbnRp
YWwgc3lzZnMKICAgIG9wZXJhdGlvbnMKICB0ZXN0cy9jb3JlX2hvdHVucGx1ZzogUHJvY2VzcyBy
ZXR1cm4gdmFsdWVzIG9mIHN5c2ZzIG9wZXJhdGlvbnMKICB0ZXN0cy9jb3JlX2hvdHVucGx1Zzog
QXNzZXJ0IGV4cGVjdGVkIGRldmljZSBwcmVzZW5jZS9hYnNlbmNlCiAgdGVzdHMvY29yZV9ob3R1
bnBsdWc6IEV4cGxpY2l0bHkgaWdub3JlIHVudXNlZCByZXR1cm4gdmFsdWVzCiAgdGVzdHMvY29y
ZV9ob3R1bnBsdWc6IE1vcmUgdGhvcm91Z2ggaTkxNSBoZWFsdGhjaGVjayBhbmQgcmVjb3ZlcnkK
ICB0ZXN0cy9jb3JlX2hvdHVucGx1ZzogQWRkICdsYXRlY2xvc2UgYmVmb3JlIHJlc3RvcmUnIHZh
cmlhbnRzCiAgdGVzdHMvY29yZV9ob3R1bnBsdWc6IER1cGxpY2F0ZSBkZWJ1ZyBtZXNzYWdlcyBp
biBkbWVzZwogIHRlc3RzL2NvcmVfaG90dW5wbHVnOiBVbi1ibG9ja2xpc3QgKmJpbmQqIHN1YnRl
c3RzCgogdGVzdHMvY29yZV9ob3R1bnBsdWcuYyAgICAgICB8IDU0MiArKysrKysrKysrKysrKysr
KysrKysrKysrKy0tLS0tLS0tLQogdGVzdHMvaW50ZWwtY2kvYmxhY2tsaXN0LnR4dCB8ICAgMiAr
LQogMiBmaWxlcyBjaGFuZ2VkLCA0MTIgaW5zZXJ0aW9ucygrKSwgMTMyIGRlbGV0aW9ucygtKQoK
LS0gCjIuMjEuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
