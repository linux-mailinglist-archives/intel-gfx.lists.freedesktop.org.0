Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF038165B59
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 11:21:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10E0E6ED14;
	Thu, 20 Feb 2020 10:21:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BABCF6ED14
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Feb 2020 10:21:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Feb 2020 02:21:19 -0800
X-IronPort-AV: E=Sophos;i="5.70,464,1574150400"; d="scan'208";a="224819481"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Feb 2020 02:21:16 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Kees Cook <keescook@chromium.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
In-Reply-To: <20200220062258.68854-1-keescook@chromium.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200220062258.68854-1-keescook@chromium.org>
Date: Thu, 20 Feb 2020 12:21:14 +0200
Message-ID: <877e0hv9t1.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Distribute switch variables for
 initialization
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
Cc: intel-gfx@lists.freedesktop.org, Alexander Potapenko <glider@google.com>,
 Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAxOSBGZWIgMjAyMCwgS2VlcyBDb29rIDxrZWVzY29va0BjaHJvbWl1bS5vcmc+IHdy
b3RlOgo+IFZhcmlhYmxlcyBkZWNsYXJlZCBpbiBhIHN3aXRjaCBzdGF0ZW1lbnQgYmVmb3JlIGFu
eSBjYXNlIHN0YXRlbWVudHMKPiBjYW5ub3QgYmUgYXV0b21hdGljYWxseSBpbml0aWFsaXplZCB3
aXRoIGNvbXBpbGVyIGluc3RydW1lbnRhdGlvbiAoYXMKPiB0aGV5IGFyZSBub3QgcGFydCBvZiBh
bnkgZXhlY3V0aW9uIGZsb3cpLiBXaXRoIEdDQydzIHByb3Bvc2VkIGF1dG9tYXRpYwo+IHN0YWNr
IHZhcmlhYmxlIGluaXRpYWxpemF0aW9uIGZlYXR1cmUsIHRoaXMgdHJpZ2dlcnMgYSB3YXJuaW5n
IChhbmQgdGhleQo+IGRvbid0IGdldCBpbml0aWFsaXplZCkuIENsYW5nJ3MgYXV0b21hdGljIHN0
YWNrIHZhcmlhYmxlIGluaXRpYWxpemF0aW9uCj4gKHZpYSBDT05GSUdfSU5JVF9TVEFDS19BTEw9
eSkgZG9lc24ndCB0aHJvdyBhIHdhcm5pbmcsIGJ1dCBpdCBhbHNvCj4gZG9lc24ndCBpbml0aWFs
aXplIHN1Y2ggdmFyaWFibGVzWzFdLiBOb3RlIHRoYXQgdGhlc2Ugd2FybmluZ3MgKG9yIHNpbGVu
dAo+IHNraXBwaW5nKSBoYXBwZW4gYmVmb3JlIHRoZSBkZWFkLXN0b3JlIGVsaW1pbmF0aW9uIG9w
dGltaXphdGlvbiBwaGFzZSwKPiBzbyBldmVuIHdoZW4gdGhlIGF1dG9tYXRpYyBpbml0aWFsaXph
dGlvbnMgYXJlIGxhdGVyIGVsaWRlZCBpbiBmYXZvciBvZgo+IGRpcmVjdCBpbml0aWFsaXphdGlv
bnMsIHRoZSB3YXJuaW5ncyByZW1haW4uCj4KPiBUbyBhdm9pZCB0aGVzZSBwcm9ibGVtcywgbW92
ZSBzdWNoIHZhcmlhYmxlcyBpbnRvIHRoZSAiY2FzZSIgd2hlcmUKPiB0aGV5J3JlIHVzZWQgb3Ig
bGlmdCB0aGVtIHVwIGludG8gdGhlIG1haW4gZnVuY3Rpb24gYm9keS4KPgo+IGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jOiBJbiBmdW5jdGlvbiDigJhjaGVja19k
aWdpdGFsX3BvcnRfY29uZmxpY3Rz4oCZOgo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jOjEyOTYzOjE3OiB3YXJuaW5nOiBzdGF0ZW1lbnQgd2lsbCBuZXZlciBi
ZSBleGVjdXRlZCBbLVdzd2l0Y2gtdW5yZWFjaGFibGVdCj4gMTI5NjMgfCAgICB1bnNpZ25lZCBp
bnQgcG9ydF9tYXNrOwo+ICAgICAgIHwgICAgICAgICAgICAgICAgIF5+fn5+fn5+fgo+Cj4gZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYzogSW4gZnVuY3Rpb24g4oCYdmx2X2dldF9maWZv
X3NpemXigJk6Cj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYzo0NzQ6Nzogd2Fybmlu
Zzogc3RhdGVtZW50IHdpbGwgbmV2ZXIgYmUgZXhlY3V0ZWQgWy1Xc3dpdGNoLXVucmVhY2hhYmxl
XQo+ICAgNDc0IHwgICB1MzIgZHNwYXJiLCBkc3BhcmIyLCBkc3BhcmIzOwo+ICAgICAgIHwgICAg
ICAgXn5+fn5+Cj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYzogSW4gZnVuY3Rpb24g
4oCYdmx2X2F0b21pY191cGRhdGVfZmlmb+KAmToKPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9wbS5jOjE5OTc6Nzogd2FybmluZzogc3RhdGVtZW50IHdpbGwgbmV2ZXIgYmUgZXhlY3V0ZWQg
Wy1Xc3dpdGNoLXVucmVhY2hhYmxlXQo+ICAxOTk3IHwgICB1MzIgZHNwYXJiLCBkc3BhcmIyLCBk
c3BhcmIzOwo+ICAgICAgIHwgICAgICAgXn5+fn5+Cj4KPiBbMV0gaHR0cHM6Ly9idWdzLmxsdm0u
b3JnL3Nob3dfYnVnLmNnaT9pZD00NDkxNgo+Cj4gU2lnbmVkLW9mZi1ieTogS2VlcyBDb29rIDxr
ZWVzY29va0BjaHJvbWl1bS5vcmc+CgpSZXZpZXdlZC1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlr
dWxhQGludGVsLmNvbT4KCklmIHlvdSBsb29rIGF0IGk5MTUvTWFrZWZpbGUsIHlvdSdsbCBzZWUg
dGhhdCB3ZSBkb24ndCBzaHkgYXdheSBmcm9tCmVuYWJsaW5nIGxvdHMgb2YgZXh0cmEgd2Fybmlu
Z3MsIGFuZCB3ZSBydW4gb3VyIENJIHdpdGggLVdlcnJvciB0byBrZWVwCml0IGNsZWFuLiBJdCBk
b2VzIG5vdCBzZWVtIGxpa2UgLVdzd2l0Y2gtdW5yZWFjaGFibGUgZG9lcyBtZSBhbnkgZ29vZCwK
dGhvdWdoLi4uIGlzIGl0IG5ldz8KCkJSLApKYW5pLgoKCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgICAgNiArKysrLS0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfcG0uYyAgICAgICAgICAgICAgfCAgICA0ICsrLS0KPiAgMiBmaWxl
cyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IGluZGV4IDA2NGRkOTliYmM0
OS4uYzgyOWNkMjZmOTllIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMKPiBAQCAtMTI5NjAsMTQgKzEyOTYwLDE1IEBAIHN0YXRpYyBib29sIGNo
ZWNrX2RpZ2l0YWxfcG9ydF9jb25mbGljdHMoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3Rh
dGUpCj4gIAkJV0FSTl9PTighY29ubmVjdG9yX3N0YXRlLT5jcnRjKTsKPiAgCj4gIAkJc3dpdGNo
IChlbmNvZGVyLT50eXBlKSB7Cj4gLQkJCXVuc2lnbmVkIGludCBwb3J0X21hc2s7Cj4gIAkJY2Fz
ZSBJTlRFTF9PVVRQVVRfRERJOgo+ICAJCQlpZiAoV0FSTl9PTighSEFTX0RESSh0b19pOTE1KGRl
dikpKSkKPiAgCQkJCWJyZWFrOwo+ICAJCQkvKiBlbHNlLCBmYWxsIHRocm91Z2ggKi8KPiAgCQlj
YXNlIElOVEVMX09VVFBVVF9EUDoKPiAgCQljYXNlIElOVEVMX09VVFBVVF9IRE1JOgo+IC0JCWNh
c2UgSU5URUxfT1VUUFVUX0VEUDoKPiArCQljYXNlIElOVEVMX09VVFBVVF9FRFA6IHsKPiArCQkJ
dW5zaWduZWQgaW50IHBvcnRfbWFzazsKPiArCj4gIAkJCXBvcnRfbWFzayA9IDEgPDwgZW5jb2Rl
ci0+cG9ydDsKPiAgCj4gIAkJCS8qIHRoZSBzYW1lIHBvcnQgbXVzdG4ndCBhcHBlYXIgbW9yZSB0
aGFuIG9uY2UgKi8KPiBAQCAtMTI5NzYsNiArMTI5NzcsNyBAQCBzdGF0aWMgYm9vbCBjaGVja19k
aWdpdGFsX3BvcnRfY29uZmxpY3RzKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQo+
ICAKPiAgCQkJdXNlZF9wb3J0cyB8PSBwb3J0X21hc2s7Cj4gIAkJCWJyZWFrOwo+ICsJCX0KPiAg
CQljYXNlIElOVEVMX09VVFBVVF9EUF9NU1Q6Cj4gIAkJCXVzZWRfbXN0X3BvcnRzIHw9Cj4gIAkJ
CQkxIDw8IGVuY29kZXItPnBvcnQ7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCj4gaW5kZXggYmQy
ZDMwZWNjMDMwLi4xN2Q4ODMzNzg3YzQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfcG0uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKPiBA
QCAtNDY5LDkgKzQ2OSw5IEBAIHN0YXRpYyB2b2lkIHZsdl9nZXRfZmlmb19zaXplKHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+ICAJc3RydWN0IHZsdl9maWZvX3N0YXRlICpm
aWZvX3N0YXRlID0gJmNydGNfc3RhdGUtPndtLnZsdi5maWZvX3N0YXRlOwo+ICAJZW51bSBwaXBl
IHBpcGUgPSBjcnRjLT5waXBlOwo+ICAJaW50IHNwcml0ZTBfc3RhcnQsIHNwcml0ZTFfc3RhcnQ7
Cj4gKwl1MzIgZHNwYXJiLCBkc3BhcmIyLCBkc3BhcmIzOwo+ICAKPiAgCXN3aXRjaCAocGlwZSkg
ewo+IC0JCXUzMiBkc3BhcmIsIGRzcGFyYjIsIGRzcGFyYjM7Cj4gIAljYXNlIFBJUEVfQToKPiAg
CQlkc3BhcmIgPSBJOTE1X1JFQUQoRFNQQVJCKTsKPiAgCQlkc3BhcmIyID0gSTkxNV9SRUFEKERT
UEFSQjIpOwo+IEBAIC0xOTY5LDYgKzE5NjksNyBAQCBzdGF0aWMgdm9pZCB2bHZfYXRvbWljX3Vw
ZGF0ZV9maWZvKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAo+ICAJY29uc3Qgc3Ry
dWN0IHZsdl9maWZvX3N0YXRlICpmaWZvX3N0YXRlID0KPiAgCQkmY3J0Y19zdGF0ZS0+d20udmx2
LmZpZm9fc3RhdGU7Cj4gIAlpbnQgc3ByaXRlMF9zdGFydCwgc3ByaXRlMV9zdGFydCwgZmlmb19z
aXplOwo+ICsJdTMyIGRzcGFyYiwgZHNwYXJiMiwgZHNwYXJiMzsKPiAgCj4gIAlpZiAoIWNydGNf
c3RhdGUtPmZpZm9fY2hhbmdlZCkKPiAgCQlyZXR1cm47Cj4gQEAgLTE5OTQsNyArMTk5NSw2IEBA
IHN0YXRpYyB2b2lkIHZsdl9hdG9taWNfdXBkYXRlX2ZpZm8oc3RydWN0IGludGVsX2F0b21pY19z
dGF0ZSAqc3RhdGUsCj4gIAlzcGluX2xvY2soJnVuY29yZS0+bG9jayk7Cj4gIAo+ICAJc3dpdGNo
IChjcnRjLT5waXBlKSB7Cj4gLQkJdTMyIGRzcGFyYiwgZHNwYXJiMiwgZHNwYXJiMzsKPiAgCWNh
c2UgUElQRV9BOgo+ICAJCWRzcGFyYiA9IGludGVsX3VuY29yZV9yZWFkX2Z3KHVuY29yZSwgRFNQ
QVJCKTsKPiAgCQlkc3BhcmIyID0gaW50ZWxfdW5jb3JlX3JlYWRfZncodW5jb3JlLCBEU1BBUkIy
KTsKPgoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
