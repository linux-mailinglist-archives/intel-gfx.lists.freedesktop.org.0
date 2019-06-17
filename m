Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA25485EB
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 16:45:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F0E488CBF;
	Mon, 17 Jun 2019 14:45:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52DD988CBF
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 14:45:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 07:45:42 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga001.fm.intel.com with ESMTP; 17 Jun 2019 07:45:42 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x5HEjf6e007945; Mon, 17 Jun 2019 15:45:41 +0100
To: intel-gfx@lists.freedesktop.org, "Jani Nikula" <jani.nikula@intel.com>
References: <20190617095108.22118-1-jani.nikula@intel.com>
 <20190617095108.22118-9-jani.nikula@intel.com>
Date: Mon, 17 Jun 2019 16:45:41 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z3i9yfupxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <20190617095108.22118-9-jani.nikula@intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH 08/11] drm/i915: make intel_guc_reg.h
 self-contained
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

T24gTW9uLCAxNyBKdW4gMjAxOSAxMTo1MTowNSArMDIwMCwgSmFuaSBOaWt1bGEgPGphbmkubmlr
dWxhQGludGVsLmNvbT4gIAp3cm90ZToKCj4gQWRkIHRoZSBtaW5pbWFsIGluY2x1ZGVzL2RlY2xh
cmF0aW9ucyB0byBtYWtlIHRoZSBoZWFkZXIgc2VsZi1jb250YWluZWQsCj4gYW5kIGVuc3VyZSBp
dCBzdGF5cyB0aGF0IHdheS4KPgo+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5p
a3VsYUBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlLmhl
YWRlci10ZXN0IHwgMSArCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19yZWcuaCAg
ICAgIHwgMyArKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKPgo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZS5oZWFkZXItdGVzdCAgCj4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZS5oZWFkZXItdGVzdAo+IGluZGV4IGIxNDBhZmVi
NjE3ZS4uMDg1ZmJhOGU3MWYyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01h
a2VmaWxlLmhlYWRlci10ZXN0Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUu
aGVhZGVyLXRlc3QKPiBAQCAtMjIsNiArMjIsNyBAQCBoZWFkZXJfdGVzdCA6PSBcCj4gIAlpbnRl
bF9kcnYuaCBcCj4gIAlpbnRlbF9ndWNfY3QuaCBcCj4gIAlpbnRlbF9ndWNfZndpZi5oIFwKPiAr
CWludGVsX2d1Y19yZWcuaCBcCj4gIAlpbnRlbF9wbS5oIFwKPiAgCWludGVsX3J1bnRpbWVfcG0u
aCBcCj4gIAlpbnRlbF9zaWRlYmFuZC5oIFwKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZ3VjX3JlZy5oICAKPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1
Y19yZWcuaAo+IGluZGV4IGEyMTRmOGI3MTkyOS4uMDJmNGIxZDYxYTk4IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19yZWcuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2d1Y19yZWcuaAo+IEBAIC0yNCw2ICsyNCw5IEBACj4gICNpZm5kZWYg
X0lOVEVMX0dVQ19SRUdfSF8KPiAgI2RlZmluZSBfSU5URUxfR1VDX1JFR19IXwo+ICsjaW5jbHVk
ZSA8bGludXgvY29tcGlsZXIuaD4KPiArI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+Cj4gKwo+ICAv
KiBEZWZpbml0aW9ucyBvZiBHdUMgSC9XIHJlZ2lzdGVycywgYml0cywgZXRjICovCj4gI2RlZmlu
ZSBHVUNfU1RBVFVTCQkJX01NSU8oMHhjMDAwKQoKc2hvdWxkbid0IHdlIGFsc28gaW5jbHVkZSBp
OTE1X3JlZy5oIGZvciBfTU1JTyBkZWZpbml0aW9uPwpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
