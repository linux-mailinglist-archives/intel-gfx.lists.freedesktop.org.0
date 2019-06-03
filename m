Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5817D32DB5
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2019 12:33:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9B1689218;
	Mon,  3 Jun 2019 10:33:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 820FD89218;
 Mon,  3 Jun 2019 10:33:01 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jun 2019 03:33:00 -0700
X-ExtLoop1: 1
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.38])
 by FMSMGA003.fm.intel.com with ESMTP; 03 Jun 2019 03:32:59 -0700
Received: from platvala by thrakatuluk with local (Exim 4.91)
 (envelope-from <petri.latvala@intel.com>)
 id 1hXkGr-0005tm-O5; Mon, 03 Jun 2019 13:32:53 +0300
Date: Mon, 3 Jun 2019 13:32:53 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20190603103253.GZ22949@platvala-desk.ger.corp.intel.com>
Mail-Followup-To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 intel-gfx@lists.freedesktop.org, igt-dev@lists.freedesktop.org
References: <20190529132421.27905-1-chris@chris-wilson.co.uk>
 <dcc8f38f-2c9b-cb95-3061-0384e95fb7a2@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dcc8f38f-2c9b-cb95-3061-0384e95fb7a2@linux.intel.com>
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

T24gTW9uLCBKdW4gMDMsIDIwMTkgYXQgMTE6MTk6NDhBTSArMDEwMCwgVHZydGtvIFVyc3VsaW4g
d3JvdGU6Cj4gCj4gT24gMjkvMDUvMjAxOSAxNDoyNCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4g
SWYgd2UgcnVuIG91dCBvZiBlbmdpbmVzLCBpbnRlbF9nZXRfY3VycmVudF9waHlzaWNhbF9lbmdp
bmUoKSBkZWdyYWRlcwo+ID4gaW50byBhbiBpbmZpbml0ZSBsb29wIGFzIGFsdGhvdWdoIGl0IGFk
dmFuY2VkIHRoZSBpdGVyYXRvciwgaXQgZGlkIG5vdAo+ID4gdXBkYXRlIGl0cyBsb2NhbCBlbmdp
bmUgcG9pbnRlci4KPiAKPiBXZSBoYWQgb25lIGluZmluaXRlIGxvb3AgaW4gdGhlcmUgYWxyZWFk
eS4uIEFGQUlSIGl0IHdhcyBvbiBvbmUgZW5naW5lCj4gcGxhdGZvcm1zLiBEb2VzIHRoZSBuZXcg
aW5jYXJuYXRpb24gaGFwcGVuIGFjdHVhbGx5IHZpYSB0aGUKPiBfX2Zvcl9lYWNoX3BoeXNpY2Fs
X2VuZ2luZSBpdGVyYXRvciBvciBwZXJoYXBzIG9ubHkgd2hlbiBjYWxsaW5nCj4gaW50ZWxfZ2V0
X2N1cnJlbnRfcGh5c2ljYWxfZW5naW5lIGFmdGVyIGxvb3AgZW5kPyBXaHkgaXQgd2Fzbid0IHNl
ZW4gaW4KPiB0ZXN0aW5nPwoKClRoZSBuZXcgaW5jYXJuYXRpb24gaGFwcGVucyB3aXRoIGEgd2Vk
Z2VkIEdQVS4gVGhhdCdzIGEgY2FzZSB0aGF0J3MKaGFyZCB0byBjb21lIGJ5IGluIHRlc3Rpbmcu
CgoKLS0gClBldHJpIExhdHZhbGEKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
