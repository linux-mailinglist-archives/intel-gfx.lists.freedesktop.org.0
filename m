Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A516A4430A
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 18:29:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01D3489272;
	Thu, 13 Jun 2019 16:29:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 458D989272
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 16:29:49 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jun 2019 09:29:48 -0700
X-ExtLoop1: 1
Received: from ldmartin-desk.jf.intel.com (HELO
 ldmartin-desk.amr.corp.intel.com) ([10.24.8.201])
 by orsmga004.jf.intel.com with ESMTP; 13 Jun 2019 09:29:48 -0700
Date: Thu, 13 Jun 2019 09:29:48 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20190613162948.pwmt36nzstimrjuj@ldmartin-desk.amr.corp.intel.com>
References: <20190612162900.13777-1-lucas.demarchi@intel.com>
 <87pnnhwrwa.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87pnnhwrwa.fsf@intel.com>
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH] gpu/drm/i915: globally replace dev_priv
 with i915
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

T24gVGh1LCBKdW4gMTMsIDIwMTkgYXQgMDQ6MTI6MzdQTSArMDMwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj5PbiBXZWQsIDEyIEp1biAyMDE5LCBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hp
QGludGVsLmNvbT4gd3JvdGU6Cj4+IFdlIGFyZSBzbG93bHkgY29udmVydGluZyBkZXZfcHJpdiB0
byBpOTE1IGV2ZXJ5d2hlcmUsIHNwcmVhZCBpbnRvCj4+IHNtYWxsZXIgc2VyaWVzLiBXaGlsZSB0
aGlzIGlzIGdvb2QgdG8gYXZvaWQgdW5yZWxhdGVkIGJyZWFrYWdlcyB0byBvdGhlcgo+PiBpbmZs
aWdodCBwYXRjaGVzLCBpdCdzIGJhZCBiZWNhdXNlIGluZmxpZ2h0IHBhdGNoZXMgb24gbmVhcmJ5
IHBhdGhzIGtlZXAKPj4gYnJlYWtpbmcuIFBhaXJlZCB3aXRoIG90aGVyIGNvZGUgbW92ZXMgYW5k
IHJlZmFjdG9yZXMgdGhpcyBpcyBiZWNvbWluZyBhCj4+IG5pZ2h0bWFyZS4KPj4KPj4gTm93IHRo
YXQgSTkxNV97UkVBRCxXUklURX0gYXJlIGdvbmUgYW5kIGltcGxpY2l0IGFjY2VzcyB0byBkZXZf
cHJpdiBubwo+PiBsb25nZXIgZXhpc3RzIHdlIGNhbiBzaW1wbHkgc2VkIGFsbCBmaWxlcyBhbmQg
YmUgZG9uZSB3aXRoIHRoZQo+PiBjb252ZXJzaW9uLiBUaGlzIHdhcyBnZW5lcmF0ZWQgd2l0aCB0
aGUgZm9sbG93aW5nIGNvbW1hbmRzIHdpdGggbm8KPj4gYWRkaXRpb25hbCBmaXh1cHM6Cj4+Cj4+
IAlnaXQgbHMtZmlsZXMgLS1mdWxsLW5hbWUgLXogLS0gZHJpdmVycy9ncHUvZHJtL2k5MTUvIHwg
XAo+PiAJCXhhcmdzIC0wIHNlZCAtaSAncy9cYmRldl9wcml2XGIvaTkxNS9nJwo+Pgo+PiBBbnkg
cGVuZGluZyBzZXJpZXMgY2FuIGFwcGx5IHRoZSBzYW1lIHNlYXJjaCBhbmQgcmVwbGFjZSB3aGVu
IHJlYmFzaW5nLgo+Cj5JJ20gcHJldHR5IHN0cm9uZ2x5IGFnYWluc3QgcmVuYW1pbmcgdGhlIGlt
cGxpY2l0IGRldl9wcml2IGxvY2FsCj52YXJpYWJsZSBiZWZvcmUgd2UndmUgZ290dGVuIHJpZCBv
ZiBpdC4gUmVuYW1pbmcgcy9kZXZfcHJpdi9pOTE1LyB1cG9uCj5jb252ZXJ0aW5nIGEgZnVuY3Rp
b24gdG8gbm90IHVzZSB0aGUgaW1wbGljaXQgZGV2X3ByaXYgaGVscHMgdXMgYnkKPmNhdGNoaW5n
IGFueSBsZWZ0b3ZlciByZWZlcmVuY2VzLgoKSSBkb24ndCB0aGluayB0aGlzIGlzIHN0cm9uZyBl
bm91Z2ggcmVhc29uIHRvIGJsb2NrIHRoZSBjb252ZXJzaW9uLiBUaGUKY29udmVyc2lvbiBpcyB0
YWtpbmcgZm9yZXZlciBhbmQgaXMgZ29ubmEgdGFrZSB5ZWFyKyBpZiBpdCBjb250aW51ZXMgYXQK
dGhpcyBwYWNlLiBJdCBhZmZlY3RzIG11bHRpcGxlIGRldmVsb3BlcnMgcmViYXNpbmcgdGhlaXIg
d29yayBhbmQKaW50cm9kdWNlIGJ1Z3Mgb24gcGVuZGluZyBzZXJpZXMuCgpSZW1vdmluZyBhbnkg
ZmlsZS1zY29wZSByZWZlcmVuY2UgKEkgZGlkbid0IHJldmlldyB5ZXQgaWYgd2Ugc3RpbGwgaGF2
ZQphbnkpIGFuZCByZXZpZXdpbmcgdGhlIG1hY3JvcyBpcyBzdWZmaWNpZW50LiBBbmQgaWYgd2Ug
bGF0ZXIgd2UgZmluZCBvdXQKd2UgbWlzc2VkIG9uZSwgd2UganVzdCBnbyBhbmQgZml4IGl0LiBJ
IHNlZSB6ZXJvIGFkdmFudGFnZSBvbiBzbG93IGFuZApmb3JldmVyLiBZb3UgaGF2ZSBhIG1peGVk
IGNvZGUgYmFzZSBhbmQgbmV3IGNvZGUgZm9sbG93aW5nIHdoYXQncyBhcm91bmQKd2lsbCBqdXN0
IHByb3BhZ2F0ZSBtb3JlIHRoZSBtaXhlZCBjb2RlIGJhc2UgOigKCkx1Y2FzIERlIE1hcmNoaQoK
Pgo+QlIsCj5KYW5pLgo+Cj4KPi0tIAo+SmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdy
YXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
