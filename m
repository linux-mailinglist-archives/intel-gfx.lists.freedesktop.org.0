Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2444AE753
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 11:52:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1712B6E82F;
	Tue, 10 Sep 2019 09:52:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B47F6E82F
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 09:52:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 02:52:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="200253337"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga001.fm.intel.com with ESMTP; 10 Sep 2019 02:52:13 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x8A9qC7j009076; Tue, 10 Sep 2019 10:52:12 +0100
To: intel-gfx@lists.freedesktop.org, "Anusha Srivatsa"
 <anusha.srivatsa@intel.com>
References: <20190909192801.3164-1-anusha.srivatsa@intel.com>
 <20190909192801.3164-2-anusha.srivatsa@intel.com>
Date: Tue, 10 Sep 2019 11:52:11 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z7wa09obxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <20190909192801.3164-2-anusha.srivatsa@intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/uc: Update MAKE_HUC_FW_PATH
 macro
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAwOSBTZXAgMjAxOSAyMToyODowMCArMDIwMCwgQW51c2hhIFNyaXZhdHNhICAKPGFu
dXNoYS5zcml2YXRzYUBpbnRlbC5jb20+IHdyb3RlOgoKPiBVcGRhdGUgTUFLRV9IVUNfRldfUEFU
SCBtYWNybyB0byBmb2xsb3cgdGhlIHNhbWUgY29udmVudGlvbgo+IGFzIHRoZSBNQUtFX0dVQ19G
V19QQVRIIHdpdGggdGhlIHNlcGFyYXRvciBjaGFuZ2luZyBmcm9tICJfIiB0byAiLiIKPiBhbmQg
cmVtb3ZpbmcgInZlciIuCgphYm92ZSBjb21taXQgbWVzc2FnZSAoYW5kIHBhdGNoIHRpdGxlKSBp
cyBsaXR0bGUgbWlzbGVhZGluZyBhcyB1cGRhdGluZwphIG1hY3JvIGlzIHNlY29uZGFyeSBjb21w
YXJlZCB0byBpbnRyb2R1Y2VkIG5ldyBmaXJtd2FyZSBuYW1pbmcgY29udmVudGlvbgoKPgo+IFRo
ZSBjdXJyZW50IGNvbnZlbnRpb24gYmVpbmc6Cj4gPHBsYXRmb3JtPl88Zy9oPnVjXzxtYWpvcj4u
PG1pbm9yPi5wYXRjaC5iaW4KPgo+IFVwZGF0ZSB0aGUgdmVyc2lvbnMgb2YgaHVjIGJlaW5nIGxv
YWRlZCBvZiB0aGUgcGxhdGZvcm1zLgoKcy9odWMvSHVDCgo+Cj4gU0tMIC0gdjIuMC4wCj4gQlhU
IC0gdjIuMC4wCj4gS0JMIC0gdjQuMC4wCj4gR0xLIC0gdjQuMC4wCj4gQ0ZMIC0gS0JMIHY0LjAu
MAo+IElDTCAtIHY5LjAuMAo+IENNTCAtIHY0LjAuMAo+Cj4gdjI6IFJlbW92ZSB0aGUgc2VwYXJh
dG9yIHBhcmFtZXRlciBhbHRvZ2V0aGVyIGZyb20KPiBfX01BS0VfVUNfRldfUEFUSC4oRGFuaWVs
ZSkKPiAtIFNxdWFzaCBhbGwgZmlybXdhcmUgdXBkYXRlIHBhdGNoZXMgKERhbmllbGUpCj4KPiBT
dWdnZXN0ZWQtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJp
b0BpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3Jp
dmF0c2FAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRl
bF91Y19mdy5jIHwgMjUgKysrKysrKysrKysrLS0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAxMyBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jICAKPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMKPiBpbmRleCAyOTZhODI2MDNiZTAuLmRhNGJmMjQz
NjhiZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19m
dy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYwo+IEBA
IC00MCwyNSArNDAsMjYgQEAgdm9pZCBpbnRlbF91Y19md19jaGFuZ2Vfc3RhdHVzKHN0cnVjdCBp
bnRlbF91Y19mdyAgCj4gKnVjX2Z3LAo+ICAgKi8KPiAgI2RlZmluZSBJTlRFTF9VQ19GSVJNV0FS
RV9ERUZTKGZ3X2RlZiwgZ3VjX2RlZiwgaHVjX2RlZikgXAo+ICAJZndfZGVmKEVMS0hBUlRMQUtF
LCAwLCBndWNfZGVmKGVobCwgMzMsIDAsIDQpLCBodWNfZGVmKGVobCwgIDksICAwLCAgICAgCj4g
MCkpIFwKPiAtCWZ3X2RlZihJQ0VMQUtFLCAgICAgMCwgZ3VjX2RlZihpY2wsIDMzLCAwLCAwKSwg
aHVjX2RlZihpY2wsICA4LCAgNCwgIAo+IDMyMzgpKSBcCj4gLQlmd19kZWYoQ09GRkVFTEFLRSwg
IDAsIGd1Y19kZWYoa2JsLCAzMywgMCwgMCksIGh1Y19kZWYoa2JsLCAwMiwgMDAsICAKPiAxODEw
KSkgXAo+IC0JZndfZGVmKEdFTUlOSUxBS0UsICAwLCBndWNfZGVmKGdsaywgMzMsIDAsIDApLCBo
dWNfZGVmKGdsaywgMDMsIDAxLCAgCj4gMjg5MykpIFwKPiAtCWZ3X2RlZihLQUJZTEFLRSwgICAg
MCwgZ3VjX2RlZihrYmwsIDMzLCAwLCAwKSwgaHVjX2RlZihrYmwsIDAyLCAwMCwgIAo+IDE4MTAp
KSBcCj4gLQlmd19kZWYoQlJPWFRPTiwgICAgIDAsIGd1Y19kZWYoYnh0LCAzMywgMCwgMCksIGh1
Y19kZWYoYnh0LCAwMSwgIDgsICAKPiAyODkzKSkgXAo+IC0JZndfZGVmKFNLWUxBS0UsICAgICAw
LCBndWNfZGVmKHNrbCwgMzMsIDAsIDApLCBodWNfZGVmKHNrbCwgMDEsIDA3LCAgCj4gMTM5OCkp
Cj4gLQo+IC0jZGVmaW5lIF9fTUFLRV9VQ19GV19QQVRIKHByZWZpeF8sIG5hbWVfLCBzZXBhcmF0
b3JfLCBtYWpvcl8sIG1pbm9yXywgIAo+IHBhdGNoXykgXAo+ICsJZndfZGVmKENPRkZFRUxBS0Us
ICAwLCBndWNfZGVmKGNtbCwgMzMsIDAsIDApLCBodWNfZGVmKGNtbCwgIDQsICAwLCAgICAgCj4g
MCkpIFwKCnRoaXMgaXMgd3JvbmcsIENNTCBpcyBDRkwgcmV2IDUsIGZvciByZWZlcmVuY2Ugc2Vl
IFsxXQoKYW5kIG1hY3JvIG9yZGVyaW5nIGlzIGFsc28gd3JvbmcgKGFscmVhZHkgZGV0ZWN0ZWQg
Ynkgb3VyIGNvZGUsIHllYWghKToKCjwzPiBbMzIxLjQ4NzU1NV0gaW52YWxpZCBGVyBibG9iIG9y
ZGVyOiBDT0ZGRUVMQUtFIHIwIGNvbWVzIGJlZm9yZSBJQ0VMQUtFICAKcjAKCmFuZCB0aGlzIHdy
b25nIG9yZGVyaW5nIGxlYWRzIHRvOgoKPDc+IFszMjEuNDg3NjE2XSBpOTE1IDAwMDA6MDA6MDIu
MDogW2RybTppbnRlbF91Y19pbml0X2Vhcmx5IFtpOTE1XV0gIAplbmFibGVfZ3VjPTIgKGd1Yzpu
byBzdWJtaXNzaW9uOm5vIGh1YzpubykKPDY+IFszMjEuNDg3NjE4XSBpOTE1IDAwMDA6MDA6MDIu
MDogSW5jb21wYXRpYmxlIG9wdGlvbiBlbmFibGVfZ3VjPTIgLSBHdUMgIAppcyBub3Qgc3VwcG9y
dGVkIQo8Nj4gWzMyMS40ODc2MjBdIGk5MTUgMDAwMDowMDowMi4wOiBJbmNvbXBhdGlibGUgb3B0
aW9uIGVuYWJsZV9ndWM9MiAtIEh1QyAgCmlzIG5vdCBzdXBwb3J0ZWQhCgpzZWUgWzJdIGZvciBk
ZXRhaWxzCgpbMV0gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoLzMxOTg2
NC8/c2VyaWVzPTYyOTY5JnJldj01ClsyXSAgCmh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MzMzL2ZpLWNtbC11Mi9pZ3RAaTkxNV9tb2R1bGVfbG9h
ZEByZWxvYWQtd2l0aC1mYXVsdC1pbmplY3Rpb24uaHRtbAoKPiArCWZ3X2RlZihJQ0VMQUtFLCAg
ICAgMCwgZ3VjX2RlZihpY2wsIDMzLCAwLCAwKSwgaHVjX2RlZihpY2wsICA5LCAgMCwgICAgIAo+
IDApKSBcCj4gKwlmd19kZWYoQ09GRkVFTEFLRSwgIDAsIGd1Y19kZWYoa2JsLCAzMywgMCwgMCks
IGh1Y19kZWYoa2JsLCAgNCwgIDAsICAgICAKPiAwKSkgXAo+ICsJZndfZGVmKEdFTUlOSUxBS0Us
ICAwLCBndWNfZGVmKGdsaywgMzMsIDAsIDApLCBodWNfZGVmKGdsaywgIDQsICAwLCAgICAgCj4g
MCkpIFwKPiArCWZ3X2RlZihLQUJZTEFLRSwgICAgMCwgZ3VjX2RlZihrYmwsIDMzLCAwLCAwKSwg
aHVjX2RlZihrYmwsICA0LCAgMCwgICAgIAo+IDApKSBcCj4gKwlmd19kZWYoQlJPWFRPTiwgICAg
IDAsIGd1Y19kZWYoYnh0LCAzMywgMCwgMCksIGh1Y19kZWYoYnh0LCAgMiwgIDAsICAgICAKPiAw
KSkgXAo+ICsJZndfZGVmKFNLWUxBS0UsICAgICAwLCBndWNfZGVmKHNrbCwgMzMsIDAsIDApLCBo
dWNfZGVmKHNrbCwgIDIsICAwLCAgICAgCj4gMCkpCj4gKwo+ICsjZGVmaW5lIF9fTUFLRV9VQ19G
V19QQVRIKHByZWZpeF8sIG5hbWVfLCBtYWpvcl8sIG1pbm9yXywgcGF0Y2hfKSBcCj4gIAkiaTkx
NS8iIFwKPiAgCV9fc3RyaW5naWZ5KHByZWZpeF8pIG5hbWVfIFwKPiAtCV9fc3RyaW5naWZ5KG1h
am9yXykgc2VwYXJhdG9yXyBcCj4gLQlfX3N0cmluZ2lmeShtaW5vcl8pIHNlcGFyYXRvcl8gXAo+
ICsJX19zdHJpbmdpZnkobWFqb3JfKSAiLiIgXAo+ICsJX19zdHJpbmdpZnkobWlub3JfKSAiLiIg
XAo+ICAJX19zdHJpbmdpZnkocGF0Y2hfKSAiLmJpbiIKPiAjZGVmaW5lIE1BS0VfR1VDX0ZXX1BB
VEgocHJlZml4XywgbWFqb3JfLCBtaW5vcl8sIHBhdGNoXykgXAo+IC0JX19NQUtFX1VDX0ZXX1BB
VEgocHJlZml4XywgIl9ndWNfIiwgIi4iLCBtYWpvcl8sIG1pbm9yXywgcGF0Y2hfKQo+ICsJX19N
QUtFX1VDX0ZXX1BBVEgocHJlZml4XywgIl9ndWNfIiwgbWFqb3JfLCBtaW5vcl8sIHBhdGNoXykK
PiAjZGVmaW5lIE1BS0VfSFVDX0ZXX1BBVEgocHJlZml4XywgbWFqb3JfLCBtaW5vcl8sIGJsZF9u
dW1fKSBcCj4gLQlfX01BS0VfVUNfRldfUEFUSChwcmVmaXhfLCAiX2h1Y192ZXIiLCAiXyIsIG1h
am9yXywgbWlub3JfLCBibGRfbnVtXykKPiArCV9fTUFLRV9VQ19GV19QQVRIKHByZWZpeF8sICJf
aHVjXyIsIG1ham9yXywgbWlub3JfLCBibGRfbnVtXykKPiAvKiBBbGwgYmxvYnMgbmVlZCB0byBi
ZSBkZWNsYXJlZCB2aWEgTU9EVUxFX0ZJUk1XQVJFKCkgKi8KPiAgI2RlZmluZSBJTlRFTF9VQ19N
T0RVTEVfRlcocGxhdGZvcm1fLCByZXZpZF8sIGd1Y18sIGh1Y18pIFwKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
