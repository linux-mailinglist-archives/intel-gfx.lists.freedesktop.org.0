Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1229B2D770
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 10:12:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1D016E2A6;
	Wed, 29 May 2019 08:12:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EC0B6E2A5;
 Wed, 29 May 2019 08:12:47 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 May 2019 01:12:46 -0700
X-ExtLoop1: 1
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.38])
 by fmsmga007.fm.intel.com with ESMTP; 29 May 2019 01:12:45 -0700
Received: from platvala by thrakatuluk with local (Exim 4.91)
 (envelope-from <petri.latvala@intel.com>)
 id 1hVthU-0000pw-Rl; Wed, 29 May 2019 11:12:44 +0300
Date: Wed, 29 May 2019 11:12:44 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190529081244.GR22949@platvala-desk.ger.corp.intel.com>
Mail-Followup-To: Chris Wilson <chris@chris-wilson.co.uk>,
 intel-gfx@lists.freedesktop.org, igt-dev@lists.freedesktop.org
References: <20190527083616.27372-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527083616.27372-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] prime_vgem: Fix typo in
 checking for invalid engines
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBNYXkgMjcsIDIwMTkgYXQgMDk6MzY6MTZBTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IE1vdmUgdGhlIHN0cmF5ICcpJyBmcm9tCj4gCj4gCWdlbV9jYW5fc3RvcmVfZHdvcmQo
ZXhlY19pZCkgfCBleGVjX2ZsYWdzCj4gCj4gdG8KPiAKPiAJZ2VtX2Nhbl9zdG9yZV9kd29yZChl
eGVjX2lkIHwgZXhlY19mbGFncykKPiAKPiBCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVkZXNr
dG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwNzY0Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CgpSZXZpZXdlZC1ieTogUGV0cmkgTGF0dmFs
YSA8cGV0cmkubGF0dmFsYUBpbnRlbC5jb20+Cgo+IC0tLQo+ICB0ZXN0cy9wcmltZV92Z2VtLmMg
fCA4ICsrKystLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVsZXRp
b25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3Rlc3RzL3ByaW1lX3ZnZW0uYyBiL3Rlc3RzL3ByaW1l
X3ZnZW0uYwo+IGluZGV4IDA5ZTMzNzNiZS4uNjlhZThjOWIwIDEwMDY0NAo+IC0tLSBhL3Rlc3Rz
L3ByaW1lX3ZnZW0uYwo+ICsrKyBiL3Rlc3RzL3ByaW1lX3ZnZW0uYwo+IEBAIC04NDUsNyArODQ1
LDcgQEAgaWd0X21haW4KPiAgCQkJICAgICAgZS0+ZXhlY19pZCA9PSAwID8gImJhc2ljLSIgOiAi
IiwKPiAgCQkJICAgICAgZS0+bmFtZSkgewo+ICAJCQlnZW1fcmVxdWlyZV9yaW5nKGk5MTUsIGUt
PmV4ZWNfaWQgfCBlLT5mbGFncyk7Cj4gLQkJCWlndF9yZXF1aXJlKGdlbV9jYW5fc3RvcmVfZHdv
cmQoaTkxNSwgZS0+ZXhlY19pZCkgfCBlLT5mbGFncyk7Cj4gKwkJCWlndF9yZXF1aXJlKGdlbV9j
YW5fc3RvcmVfZHdvcmQoaTkxNSwgZS0+ZXhlY19pZCB8IGUtPmZsYWdzKSk7Cj4gIAo+ICAJCQln
ZW1fcXVpZXNjZW50X2dwdShpOTE1KTsKPiAgCQkJdGVzdF9zeW5jKGk5MTUsIHZnZW0sIGUtPmV4
ZWNfaWQsIGUtPmZsYWdzKTsKPiBAQCAtODU3LDcgKzg1Nyw3IEBAIGlndF9tYWluCj4gIAkJCSAg
ICAgIGUtPmV4ZWNfaWQgPT0gMCA/ICJiYXNpYy0iIDogIiIsCj4gIAkJCSAgICAgIGUtPm5hbWUp
IHsKPiAgCQkJZ2VtX3JlcXVpcmVfcmluZyhpOTE1LCBlLT5leGVjX2lkIHwgZS0+ZmxhZ3MpOwo+
IC0JCQlpZ3RfcmVxdWlyZShnZW1fY2FuX3N0b3JlX2R3b3JkKGk5MTUsIGUtPmV4ZWNfaWQpIHwg
ZS0+ZmxhZ3MpOwo+ICsJCQlpZ3RfcmVxdWlyZShnZW1fY2FuX3N0b3JlX2R3b3JkKGk5MTUsIGUt
PmV4ZWNfaWQgfCBlLT5mbGFncykpOwo+ICAKPiAgCQkJZ2VtX3F1aWVzY2VudF9ncHUoaTkxNSk7
Cj4gIAkJCXRlc3RfYnVzeShpOTE1LCB2Z2VtLCBlLT5leGVjX2lkLCBlLT5mbGFncyk7Cj4gQEAg
LTg2OSw3ICs4NjksNyBAQCBpZ3RfbWFpbgo+ICAJCQkgICAgICBlLT5leGVjX2lkID09IDAgPyAi
YmFzaWMtIiA6ICIiLAo+ICAJCQkgICAgICBlLT5uYW1lKSB7Cj4gIAkJCWdlbV9yZXF1aXJlX3Jp
bmcoaTkxNSwgZS0+ZXhlY19pZCB8IGUtPmZsYWdzKTsKPiAtCQkJaWd0X3JlcXVpcmUoZ2VtX2Nh
bl9zdG9yZV9kd29yZChpOTE1LCBlLT5leGVjX2lkKSB8IGUtPmZsYWdzKTsKPiArCQkJaWd0X3Jl
cXVpcmUoZ2VtX2Nhbl9zdG9yZV9kd29yZChpOTE1LCBlLT5leGVjX2lkIHwgZS0+ZmxhZ3MpKTsK
PiAgCj4gIAkJCWdlbV9xdWllc2NlbnRfZ3B1KGk5MTUpOwo+ICAJCQl0ZXN0X3dhaXQoaTkxNSwg
dmdlbSwgZS0+ZXhlY19pZCwgZS0+ZmxhZ3MpOwo+IEBAIC04OTIsNyArODkyLDcgQEAgaWd0X21h
aW4KPiAgCQkJCQllLT5leGVjX2lkID09IDAgPyAiYmFzaWMtIiA6ICIiLAo+ICAJCQkJCWUtPm5h
bWUpIHsKPiAgCQkJCWdlbV9yZXF1aXJlX3JpbmcoaTkxNSwgZS0+ZXhlY19pZCB8IGUtPmZsYWdz
KTsKPiAtCQkJCWlndF9yZXF1aXJlKGdlbV9jYW5fc3RvcmVfZHdvcmQoaTkxNSwgZS0+ZXhlY19p
ZCkgfCBlLT5mbGFncyk7Cj4gKwkJCQlpZ3RfcmVxdWlyZShnZW1fY2FuX3N0b3JlX2R3b3JkKGk5
MTUsIGUtPmV4ZWNfaWQgfCBlLT5mbGFncykpOwo+ICAKPiAgCQkJCWdlbV9xdWllc2NlbnRfZ3B1
KGk5MTUpOwo+ICAJCQkJdGVzdF9mZW5jZV93YWl0KGk5MTUsIHZnZW0sIGUtPmV4ZWNfaWQsIGUt
PmZsYWdzKTsKPiAtLSAKPiAyLjIwLjEKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IGlndC1kZXYgbWFpbGluZyBsaXN0Cj4gaWd0LWRldkBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2lndC1kZXYKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
