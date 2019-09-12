Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54703B1270
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 17:52:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D03516EDB2;
	Thu, 12 Sep 2019 15:52:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 079C46EDB2
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 15:52:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Sep 2019 08:52:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,497,1559545200"; d="scan'208";a="186165561"
Received: from avrahamr-mobl1.ger.corp.intel.com (HELO [10.252.3.203])
 ([10.252.3.203])
 by fmsmga007.fm.intel.com with ESMTP; 12 Sep 2019 08:52:25 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190912133816.1382-1-mika.kuoppala@linux.intel.com>
 <20190912133816.1382-2-mika.kuoppala@linux.intel.com>
 <fd3c4e97-4cb6-23d9-b58f-faeed6bcf2e9@linux.intel.com>
 <156830251708.4926.17549575347943381945@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <e1111116-11c6-5fec-aaf7-34514cc91a5d@linux.intel.com>
Date: Thu, 12 Sep 2019 16:52:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156830251708.4926.17549575347943381945@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/tgl: s/ss/eu fuse reading
 support
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
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDEyLzA5LzIwMTkgMTY6MzUsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA5LTEyIDE2OjE4OjA4KQo+Pgo+PiBPbiAxMi8wOS8yMDE5IDE0OjM4
LCBNaWthIEt1b3BwYWxhIHdyb3RlOgo+Pj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9kcm0v
aTkxNV9kcm0uaCBiL2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaAo+Pj4gaW5kZXggNDY5ZGM1
MTJjY2EzLi4zMGM1NDIxNDQwMTYgMTAwNjQ0Cj4+PiAtLS0gYS9pbmNsdWRlL3VhcGkvZHJtL2k5
MTVfZHJtLmgKPj4+ICsrKyBiL2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaAo+Pj4gQEAgLTIw
MzMsOCArMjAzMywxMCBAQCBzdHJ1Y3QgZHJtX2k5MTVfcXVlcnkgewo+Pj4gICAgICogICAgICAg
ICAgIChkYXRhW1ggLyA4XSA+PiAoWCAlIDgpKSAmIDEKPj4+ICAgICAqCj4+PiAgICAgKiAtIHRo
ZSBzdWJzbGljZSBtYXNrIGZvciBlYWNoIHNsaWNlIHdpdGggb25lIGJpdCBwZXIgc3Vic2xpY2Ug
dGVsbGluZwo+Pj4gLSAqICAgd2hldGhlciBhIHN1YnNsaWNlIGlzIGF2YWlsYWJsZS4gVGhlIGF2
YWlsYWJpbGl0eSBvZiBzdWJzbGljZSBZIGluIHNsaWNlCj4+PiAtICogICBYIGNhbiBiZSBxdWVy
aWVkIHdpdGggdGhlIGZvbGxvd2luZyBmb3JtdWxhIDoKPj4+ICsgKiAgIHdoZXRoZXIgYSBzdWJz
bGljZSBpcyBhdmFpbGFibGUuIEdlbjEyIGhhcyBkdWFsLXN1YnNsaWNlcywgd2hpY2ggYXJlCj4+
PiArICogICBzaW1pbGFyIHRvIHR3byBnZW4xMSBzdWJzbGljZXMuIEZvciBnZW4xMiwgdGhpcyBh
cnJheSByZXByZXNlbnRzIGR1YWwtCj4+Cj4+IEl0J3MgdWdseSBpbiB1c2VyIGZhY2luZyBkb2N1
bWVudGF0aW9uIGlmIHdlIGNhbm5vdCBkZWNpZGUgd2hldGhlciBpdCBpcwo+PiBHZW4xMiBvciBn
ZW4xMi4gR2VuMTIgc3BlY2lhbCBjYXNlIGFsc28gcHJvYmFibHkgd2FycmFudHMgdG8gYmUgaW4g
aXRzCj4+IG93biBwYXJhZ3JhcGguCj4gCj4gSGVyZSBpdCB3YXMgdXNpbmcgc2VudGVuY2UgY2Fw
aXRhbGlzYXRpb24sIHdoaWNoIHN1aXRzIGl0IGlmIHdlIGFyZQo+IHRyZWF0aW5nIGl0IGFzIGFu
IG9yZGluYXJ5IG5vdW4uIElmIHdlbnQgd2l0aCBhIHByb3BlciBub3VuLCB0aGVuIEdlbjEyCj4g
dGhyb3VnaG91dC4gSSBtaWdodCBiZSB3cm9uZywgYnV0IG15IGltcHJlc3Npb24gaXMgdGhhdCB3
ZSd2ZQo+IGhpc3RvcmljYWxseSB1c2VkIG9yZGluYXJ5IG5vdW5zIChnZW41LTgsIGdlbjExLCBl
dGMpLgoKTXkgYmFkLgoKUmVnYXJkcywKClR2cnRrbwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
