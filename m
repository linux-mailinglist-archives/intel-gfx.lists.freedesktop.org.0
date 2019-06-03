Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CABB32E7B
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2019 13:19:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 400D78922A;
	Mon,  3 Jun 2019 11:19:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 021A78922A;
 Mon,  3 Jun 2019 11:19:21 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jun 2019 04:19:21 -0700
X-ExtLoop1: 1
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.38])
 by fmsmga006.fm.intel.com with ESMTP; 03 Jun 2019 04:19:19 -0700
Received: from platvala by thrakatuluk with local (Exim 4.91)
 (envelope-from <petri.latvala@intel.com>)
 id 1hXkzn-0007ZA-HP; Mon, 03 Jun 2019 14:19:19 +0300
Date: Mon, 3 Jun 2019 14:19:19 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20190603111919.GA22949@platvala-desk.ger.corp.intel.com>
Mail-Followup-To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 intel-gfx@lists.freedesktop.org, igt-dev@lists.freedesktop.org
References: <20190529132421.27905-1-chris@chris-wilson.co.uk>
 <dcc8f38f-2c9b-cb95-3061-0384e95fb7a2@linux.intel.com>
 <20190603103253.GZ22949@platvala-desk.ger.corp.intel.com>
 <2165d563-140f-1fb8-5234-c0099892fe96@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2165d563-140f-1fb8-5234-c0099892fe96@linux.intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] lib: Fix
 intel_get_current_physical_engine() iterator
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

T24gTW9uLCBKdW4gMDMsIDIwMTkgYXQgMTE6Mzk6MjVBTSArMDEwMCwgVHZydGtvIFVyc3VsaW4g
d3JvdGU6Cj4gCj4gT24gMDMvMDYvMjAxOSAxMTozMiwgUGV0cmkgTGF0dmFsYSB3cm90ZToKPiA+
IE9uIE1vbiwgSnVuIDAzLCAyMDE5IGF0IDExOjE5OjQ4QU0gKzAxMDAsIFR2cnRrbyBVcnN1bGlu
IHdyb3RlOgo+ID4gPiAKPiA+ID4gT24gMjkvMDUvMjAxOSAxNDoyNCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+ID4gPiA+IElmIHdlIHJ1biBvdXQgb2YgZW5naW5lcywgaW50ZWxfZ2V0X2N1cnJlbnRf
cGh5c2ljYWxfZW5naW5lKCkgZGVncmFkZXMKPiA+ID4gPiBpbnRvIGFuIGluZmluaXRlIGxvb3Ag
YXMgYWx0aG91Z2ggaXQgYWR2YW5jZWQgdGhlIGl0ZXJhdG9yLCBpdCBkaWQgbm90Cj4gPiA+ID4g
dXBkYXRlIGl0cyBsb2NhbCBlbmdpbmUgcG9pbnRlci4KPiA+ID4gCj4gPiA+IFdlIGhhZCBvbmUg
aW5maW5pdGUgbG9vcCBpbiB0aGVyZSBhbHJlYWR5Li4gQUZBSVIgaXQgd2FzIG9uIG9uZSBlbmdp
bmUKPiA+ID4gcGxhdGZvcm1zLiBEb2VzIHRoZSBuZXcgaW5jYXJuYXRpb24gaGFwcGVuIGFjdHVh
bGx5IHZpYSB0aGUKPiA+ID4gX19mb3JfZWFjaF9waHlzaWNhbF9lbmdpbmUgaXRlcmF0b3Igb3Ig
cGVyaGFwcyBvbmx5IHdoZW4gY2FsbGluZwo+ID4gPiBpbnRlbF9nZXRfY3VycmVudF9waHlzaWNh
bF9lbmdpbmUgYWZ0ZXIgbG9vcCBlbmQ/IFdoeSBpdCB3YXNuJ3Qgc2VlbiBpbgo+ID4gPiB0ZXN0
aW5nPwo+ID4gCj4gPiAKPiA+IFRoZSBuZXcgaW5jYXJuYXRpb24gaGFwcGVucyB3aXRoIGEgd2Vk
Z2VkIEdQVS4gVGhhdCdzIGEgY2FzZSB0aGF0J3MKPiA+IGhhcmQgdG8gY29tZSBieSBpbiB0ZXN0
aW5nLgo+IAo+IDEuCj4gQ29sb3VyIG1lIGNvbmZ1c2VkLiA6KSBIb3cgZG9lcyBhIHdlZGdlZCBH
UFUgYWZmZWN0IHRoaXMgbG9vcD8KCldlZGdpbmcgY291bGQgYmUgYSByZWQgaGVycmluZywgYnV0
IHJlZ2FyZGxlc3MgdGhlIEdQVSB3YXMgaW4gYSBmdW5reQpzdGF0ZS4KCkFuIGVhc3kgcmVwcm9k
dWN0aW9uIG1ldGhvZCBpcyBqdXN0CgojICAuL3BlcmZfcG11CgooYXMgbm9ybWFsIHVzZXIsIG5v
dCByb290ISkKCgotLSAKUGV0cmkgTGF0dmFsYQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
