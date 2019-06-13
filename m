Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E516445F2
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 18:48:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94A57893CB;
	Thu, 13 Jun 2019 16:48:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D840893CB
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 16:48:17 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jun 2019 09:48:16 -0700
X-ExtLoop1: 1
Received: from ldmartin-desk.jf.intel.com (HELO
 ldmartin-desk.amr.corp.intel.com) ([10.24.8.201])
 by orsmga003.jf.intel.com with ESMTP; 13 Jun 2019 09:48:16 -0700
Date: Thu, 13 Jun 2019 09:48:16 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20190613164816.akb3ju625b74qclo@ldmartin-desk.amr.corp.intel.com>
References: <20190612162900.13777-1-lucas.demarchi@intel.com>
 <87pnnhwrwa.fsf@intel.com>
 <20190613162948.pwmt36nzstimrjuj@ldmartin-desk.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613162948.pwmt36nzstimrjuj@ldmartin-desk.amr.corp.intel.com>
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

T24gVGh1LCBKdW4gMTMsIDIwMTkgYXQgMDk6Mjk6NDhBTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+T24gVGh1LCBKdW4gMTMsIDIwMTkgYXQgMDQ6MTI6MzdQTSArMDMwMCwgSmFuaSBO
aWt1bGEgd3JvdGU6Cj4+T24gV2VkLCAxMiBKdW4gMjAxOSwgTHVjYXMgRGUgTWFyY2hpIDxsdWNh
cy5kZW1hcmNoaUBpbnRlbC5jb20+IHdyb3RlOgo+Pj5XZSBhcmUgc2xvd2x5IGNvbnZlcnRpbmcg
ZGV2X3ByaXYgdG8gaTkxNSBldmVyeXdoZXJlLCBzcHJlYWQgaW50bwo+Pj5zbWFsbGVyIHNlcmll
cy4gV2hpbGUgdGhpcyBpcyBnb29kIHRvIGF2b2lkIHVucmVsYXRlZCBicmVha2FnZXMgdG8gb3Ro
ZXIKPj4+aW5mbGlnaHQgcGF0Y2hlcywgaXQncyBiYWQgYmVjYXVzZSBpbmZsaWdodCBwYXRjaGVz
IG9uIG5lYXJieSBwYXRocyBrZWVwCj4+PmJyZWFraW5nLiBQYWlyZWQgd2l0aCBvdGhlciBjb2Rl
IG1vdmVzIGFuZCByZWZhY3RvcmVzIHRoaXMgaXMgYmVjb21pbmcgYQo+Pj5uaWdodG1hcmUuCj4+
Pgo+Pj5Ob3cgdGhhdCBJOTE1X3tSRUFELFdSSVRFfSBhcmUgZ29uZSBhbmQgaW1wbGljaXQgYWNj
ZXNzIHRvIGRldl9wcml2IG5vCj4+PmxvbmdlciBleGlzdHMgd2UgY2FuIHNpbXBseSBzZWQgYWxs
IGZpbGVzIGFuZCBiZSBkb25lIHdpdGggdGhlCj4+PmNvbnZlcnNpb24uIFRoaXMgd2FzIGdlbmVy
YXRlZCB3aXRoIHRoZSBmb2xsb3dpbmcgY29tbWFuZHMgd2l0aCBubwo+Pj5hZGRpdGlvbmFsIGZp
eHVwczoKPj4+Cj4+PglnaXQgbHMtZmlsZXMgLS1mdWxsLW5hbWUgLXogLS0gZHJpdmVycy9ncHUv
ZHJtL2k5MTUvIHwgXAo+Pj4JCXhhcmdzIC0wIHNlZCAtaSAncy9cYmRldl9wcml2XGIvaTkxNS9n
Jwo+Pj4KPj4+QW55IHBlbmRpbmcgc2VyaWVzIGNhbiBhcHBseSB0aGUgc2FtZSBzZWFyY2ggYW5k
IHJlcGxhY2Ugd2hlbiByZWJhc2luZy4KPj4KPj5JJ20gcHJldHR5IHN0cm9uZ2x5IGFnYWluc3Qg
cmVuYW1pbmcgdGhlIGltcGxpY2l0IGRldl9wcml2IGxvY2FsCj4+dmFyaWFibGUgYmVmb3JlIHdl
J3ZlIGdvdHRlbiByaWQgb2YgaXQuIFJlbmFtaW5nIHMvZGV2X3ByaXYvaTkxNS8gdXBvbgo+PmNv
bnZlcnRpbmcgYSBmdW5jdGlvbiB0byBub3QgdXNlIHRoZSBpbXBsaWNpdCBkZXZfcHJpdiBoZWxw
cyB1cyBieQo+PmNhdGNoaW5nIGFueSBsZWZ0b3ZlciByZWZlcmVuY2VzLgo+Cj5JIGRvbid0IHRo
aW5rIHRoaXMgaXMgc3Ryb25nIGVub3VnaCByZWFzb24gdG8gYmxvY2sgdGhlIGNvbnZlcnNpb24u
IFRoZQo+Y29udmVyc2lvbiBpcyB0YWtpbmcgZm9yZXZlciBhbmQgaXMgZ29ubmEgdGFrZSB5ZWFy
KyBpZiBpdCBjb250aW51ZXMgYXQKPnRoaXMgcGFjZS4gSXQgYWZmZWN0cyBtdWx0aXBsZSBkZXZl
bG9wZXJzIHJlYmFzaW5nIHRoZWlyIHdvcmsgYW5kCj5pbnRyb2R1Y2UgYnVncyBvbiBwZW5kaW5n
IHNlcmllcy4KPgo+UmVtb3ZpbmcgYW55IGZpbGUtc2NvcGUgcmVmZXJlbmNlIChJIGRpZG4ndCBy
ZXZpZXcgeWV0IGlmIHdlIHN0aWxsIGhhdmUKPmFueSkgYW5kIHJldmlld2luZyB0aGUgbWFjcm9z
IGlzIHN1ZmZpY2llbnQuIEFuZCBpZiB3ZSBsYXRlciB3ZSBmaW5kIG91dAo+d2UgbWlzc2VkIG9u
ZSwgd2UganVzdCBnbyBhbmQgZml4IGl0LiBJIHNlZSB6ZXJvIGFkdmFudGFnZSBvbiBzbG93IGFu
ZAo+Zm9yZXZlci4gWW91IGhhdmUgYSBtaXhlZCBjb2RlIGJhc2UgYW5kIG5ldyBjb2RlIGZvbGxv
d2luZyB3aGF0J3MgYXJvdW5kCj53aWxsIGp1c3QgcHJvcGFnYXRlIG1vcmUgdGhlIG1peGVkIGNv
ZGUgYmFzZSA6KAoKYnR3LCBsZXQgbWUgYmUgY2xlYXIgdGhlIHByb3Bvc2FsIGlzIG5vdCAidGhp
cyBzaG91bGQgYmUgZG9uZSBub3ciLiBJIGRvCnRoaW5rIHdlIHNob3VsZCBiZSBzbWFydCBhbmQg
dGhpbmsgb24gdGhlIGJlc3Qgb3Bwb3J0dW5pdHkgdG8gZG8gaXQuClByb2JhYmx5IGxpa2UgYWZ0
ZXIgdGhlIGJpZyBjb2RlIG1vdmVzIGd0LywgZ2VtLywgZGlzcGxheS8sIGV0YyBlbmQuCgpMdWNh
cyBEZSBNYXJjaGkKCj4KPkx1Y2FzIERlIE1hcmNoaQo+Cj4+Cj4+QlIsCj4+SmFuaS4KPj4KPj4K
Pj4tLSAKPj5KYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
