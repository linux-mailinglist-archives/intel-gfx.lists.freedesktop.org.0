Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F29FB8EA
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2019 20:32:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F562899BC;
	Wed, 13 Nov 2019 19:32:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DB6589267
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Nov 2019 19:32:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Nov 2019 11:32:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,301,1569308400"; d="scan'208";a="287978891"
Received: from brianwel-mobl1.amr.corp.intel.com (HELO [10.251.144.199])
 ([10.251.144.199])
 by orsmga001.jf.intel.com with ESMTP; 13 Nov 2019 11:32:22 -0800
To: Bruce Chang <yu.bruce.chang@intel.com>, intel-gfx@lists.freedesktop.org
References: <20191113002814.14488-1-yu.bruce.chang@intel.com>
From: Brian Welty <brian.welty@intel.com>
Message-ID: <13d9c11c-8ad9-2190-c255-8b3abf56fa2c@intel.com>
Date: Wed, 13 Nov 2019 11:32:22 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191113002814.14488-1-yu.bruce.chang@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix a bug calling sleep function
 in atomic context
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

CgpPbiAxMS8xMi8yMDE5IDQ6MjggUE0sIEJydWNlIENoYW5nIHdyb3RlOgo+IFRoZXJlIGFyZSBx
dWl0ZSBhIGZldyByZXBvcnRzIHJlZ2FyZGluZyAiQlVHOiBzbGVlcGluZyBmdW5jdGlvbiBjYWxs
ZWQgZnJvbQo+IGludmFsaWQgY29udGV4dCBhdCBtbS9wYWdlX2FsbG9jLmMiCj4gCj4gQmFzaWNh
bGx5IGFmdGVyIHRoZSBpb19tYXBwaW5nX21hcF9hdG9taWNfd2Mva21hcF9hdG9taWMsIGl0IGVu
dGVycyBhdG9taWMKPiBjb250ZXh0LCBidXQgY29tcHJlc3NfcGFnZSBjYW5ub3QgYmUgY2FsbGVk
IGluIGF0b21pYyBjb250ZXh0IGFzIGl0IHdpbGwKPiBjYWxsIHBvb2xfYWxsb2Mgd2l0aCBHRlBf
S0VSTkVMIGZsYWcgd2hpY2ggY2FuIGdvIHRvIHNsZWVwLiBUaGlzIGlzIHdoeQo+IHRoZSBidWcg
Z290IHJlcG9ydGVkLgo+IAo+IFNvLCBjaGFuZ2VkIHRvIG5vbiBhdG9taWMgdmVyc2lvbiBpbnN0
ZWFkLgoKVGhlIGF0b21pYyBmdW5jdGlvbnMgd2VyZSByZWNlbnRseSBhZGRlZCwgc28gc2VlbXMg
d29ydGggYSBub3RlIHRoYXQgCnlvdSBhcmUgZml4aW5nIHRoYXQgcGF0Y2ggYnkgYWRkaW5nOgpG
aXhlczogODk1ZDhlYmVhYTkyNCAoImRybS9pOTE1OiBlcnJvciBjYXB0dXJlIHdpdGggbm8gZ2d0
dCBzbG90IikKCkFuZCB5b3VyIGZpeCBoZXJlIGxvb2tzIGNvcnJlY3QgdG8gbWUsIHNvOgpSZXZp
ZXdlZC1ieTogQnJpYW4gV2VsdHkgPGJyaWFuLndlbHR5QGludGVsLmNvbT4KCgo+IAo+IFNpZ25l
ZC1vZmYtYnk6IEJydWNlIENoYW5nIDx5dS5icnVjZS5jaGFuZ0BpbnRlbC5jb20+Cj4gLS0tCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMgfCA4ICsrKystLS0tCj4gIDEg
ZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jCj4gaW5kZXggMWYyZjI2NmYyNmFmLi43MTE4ZWNi
N2YxNDQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3Iu
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMKPiBAQCAtMTAw
Nyw2NyArMTAwNyw2NyBAQCBpOTE1X2Vycm9yX29iamVjdF9jcmVhdGUoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUsCj4gIAljb21wcmVzcy0+d2MgPSBpOTE1X2dlbV9vYmplY3RfaXNfbG1l
bSh2bWEtPm9iaikgfHwKPiAgCQkgICAgICAgZHJtX21tX25vZGVfYWxsb2NhdGVkKCZnZ3R0LT5l
cnJvcl9jYXB0dXJlKTsKPiAgCj4gIAlyZXQgPSAtRUlOVkFMOwo+ICAJaWYgKGRybV9tbV9ub2Rl
X2FsbG9jYXRlZCgmZ2d0dC0+ZXJyb3JfY2FwdHVyZSkpIHsKPiAgCQl2b2lkIF9faW9tZW0gKnM7
Cj4gIAkJZG1hX2FkZHJfdCBkbWE7Cj4gIAo+ICAJCWZvcl9lYWNoX3NndF9kYWRkcihkbWEsIGl0
ZXIsIHZtYS0+cGFnZXMpIHsKPiAgCQkJZ2d0dC0+dm0uaW5zZXJ0X3BhZ2UoJmdndHQtPnZtLCBk
bWEsIHNsb3QsCj4gIAkJCQkJICAgICBJOTE1X0NBQ0hFX05PTkUsIDApOwo+ICAKPiAgCQkJcyA9
IGlvX21hcHBpbmdfbWFwX3djKCZnZ3R0LT5pb21hcCwgc2xvdCwgUEFHRV9TSVpFKTsKPiAgCQkJ
cmV0ID0gY29tcHJlc3NfcGFnZShjb21wcmVzcywgKHZvaWQgIF9fZm9yY2UgKilzLCBkc3QpOwo+
ICAJCQlpb19tYXBwaW5nX3VubWFwKHMpOwo+ICAJCQlpZiAocmV0KQo+ICAJCQkJYnJlYWs7Cj4g
IAkJfQo+ICAJfSBlbHNlIGlmIChpOTE1X2dlbV9vYmplY3RfaXNfbG1lbSh2bWEtPm9iaikpIHsK
PiAgCQlzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiAqbWVtID0gdm1hLT5vYmotPm1tLnJlZ2lv
bjsKPiAgCQlkbWFfYWRkcl90IGRtYTsKPiAgCj4gIAkJZm9yX2VhY2hfc2d0X2RhZGRyKGRtYSwg
aXRlciwgdm1hLT5wYWdlcykgewo+ICAJCQl2b2lkIF9faW9tZW0gKnM7Cj4gIAo+IC0JCQlzID0g
aW9fbWFwcGluZ19tYXBfYXRvbWljX3djKCZtZW0tPmlvbWFwLCBkbWEpOwo+ICsJCQlzID0gaW9f
bWFwcGluZ19tYXBfd2MoJm1lbS0+aW9tYXAsIGRtYSwgUEFHRV9TSVpFKTsKPiAgCQkJcmV0ID0g
Y29tcHJlc3NfcGFnZShjb21wcmVzcywgKHZvaWQgX19mb3JjZSAqKXMsIGRzdCk7Cj4gLQkJCWlv
X21hcHBpbmdfdW5tYXBfYXRvbWljKHMpOwo+ICsJCQlpb19tYXBwaW5nX3VubWFwKHMpOwo+ICAJ
CQlpZiAocmV0KQo+ICAJCQkJYnJlYWs7Cj4gIAkJfQo+ICAJfSBlbHNlIHsKPiAgCQlzdHJ1Y3Qg
cGFnZSAqcGFnZTsKPiAgCj4gIAkJZm9yX2VhY2hfc2d0X3BhZ2UocGFnZSwgaXRlciwgdm1hLT5w
YWdlcykgewo+ICAJCQl2b2lkICpzOwo+ICAKPiAgCQkJZHJtX2NsZmx1c2hfcGFnZXMoJnBhZ2Us
IDEpOwo+ICAKPiAtCQkJcyA9IGttYXBfYXRvbWljKHBhZ2UpOwo+ICsJCQlzID0ga21hcChwYWdl
KTsKPiAgCQkJcmV0ID0gY29tcHJlc3NfcGFnZShjb21wcmVzcywgcywgZHN0KTsKPiAtCQkJa3Vu
bWFwX2F0b21pYyhzKTsKPiArCQkJa3VubWFwKHMpOwo+ICAKPiAgCQkJZHJtX2NsZmx1c2hfcGFn
ZXMoJnBhZ2UsIDEpOwo+ICAKPiAgCQkJaWYgKHJldCkKPiAgCQkJCWJyZWFrOwo+ICAJCX0KPiAg
CX0KPiAgCj4gIAlpZiAocmV0IHx8IGNvbXByZXNzX2ZsdXNoKGNvbXByZXNzLCBkc3QpKSB7Cj4g
IAkJd2hpbGUgKGRzdC0+cGFnZV9jb3VudC0tKQo+ICAJCQlwb29sX2ZyZWUoJmNvbXByZXNzLT5w
b29sLCBkc3QtPnBhZ2VzW2RzdC0+cGFnZV9jb3VudF0pOwo+ICAJCWtmcmVlKGRzdCk7Cj4gIAkJ
ZHN0ID0gTlVMTDsKPiAgCX0KPiAgCWNvbXByZXNzX2ZpbmlzaChjb21wcmVzcyk7Cj4gIAo+ICAJ
cmV0dXJuIGRzdDsKPiAgfQo+ICAKPiAgLyoKPiAgICogR2VuZXJhdGUgYSBzZW1pLXVuaXF1ZSBl
cnJvciBjb2RlLiBUaGUgY29kZSBpcyBub3QgbWVhbnQgdG8gaGF2ZSBtZWFuaW5nLCBUaGUKPiAg
ICogY29kZSdzIG9ubHkgcHVycG9zZSBpcyB0byB0cnkgdG8gcHJldmVudCBmYWxzZSBkdXBsaWNh
dGVkIGJ1ZyByZXBvcnRzIGJ5Cj4gICAqIGdyb3NzbHkgZXN0aW1hdGluZyBhIEdQVSBlcnJvciBz
dGF0ZS4KPiAgICoKPiAgICogVE9ETyBJZGVhbGx5LCBoYXNoaW5nIHRoZSBiYXRjaGJ1ZmZlciB3
b3VsZCBiZSBhIHZlcnkgbmljZSB3YXkgdG8gZGV0ZXJtaW5lCj4gCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
