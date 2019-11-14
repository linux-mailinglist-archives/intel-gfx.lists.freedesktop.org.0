Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DED46FCBE9
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2019 18:33:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C7286EC5F;
	Thu, 14 Nov 2019 17:33:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6041F6EC5F
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Nov 2019 17:33:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Nov 2019 09:33:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,304,1569308400"; d="scan'208";a="198894538"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga008.jf.intel.com with ESMTP; 14 Nov 2019 09:33:34 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 5AA345C1DD9; Thu, 14 Nov 2019 19:33:22 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191112223600.30993-1-chris@chris-wilson.co.uk>
References: <20191112223600.30993-1-chris@chris-wilson.co.uk>
Date: Thu, 14 Nov 2019 19:33:22 +0200
Message-ID: <87lfsixt0d.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/gt: Set unused mocs entry to
 follow PTE on tgl as on all others
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gQmUgY29u
c2lzdGVudCBpbiBvdXIgbW9jcyBzZXR1cCBvbiBUaWdlcmxha2UgYW5kIHNldCB0aGUgdW51c2Vk
IGNvbnRyb2wKPiB2YWx1ZSB0byBmb2xsb3cgdGhlIFBURSBlbnRyeSBhcyB3ZSBwcmV2aW91c2x5
IGhhdmUgZG9uZS4gVGhlIHVudXNlZAo+IHZhbHVlcyBhcmUgYmV5b25kIHRoZSBkZWZpbmVzIG9m
IHRoZSBBQkksIHRoZSBjb25zaXN0ZW5jeSBzaW1wbGlmaWVzIG91cgo+IGNoZWNraW5nLgo+Cj4g
U2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CgpS
ZXZpZXdlZC1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+
Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmMgfCAyICstCj4g
IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYwo+IGluZGV4IDZlODgxYzczNWIyMC4uZDJiNDQ1ZDZj
MjU4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYwo+IEBAIC00ODksNyAr
NDg5LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfbW9jc19pbml0X2dsb2JhbChzdHJ1Y3QgaW50ZWxf
Z3QgKmd0KQo+ICAJZm9yICg7IGluZGV4IDwgdGFibGUubl9lbnRyaWVzOyBpbmRleCsrKQo+ICAJ
CWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsCj4gIAkJCQkgICBHRU4xMl9HTE9CQUxfTU9DUyhp
bmRleCksCj4gLQkJCQkgICB0YWJsZS50YWJsZVswXS5jb250cm9sX3ZhbHVlKTsKPiArCQkJCSAg
IHRhYmxlLnRhYmxlW0k5MTVfTU9DU19QVEVdLmNvbnRyb2xfdmFsdWUpOwo+ICB9Cj4gIAo+ICB2
b2lkIGludGVsX21vY3NfaW5pdChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQo+IC0tIAo+IDIuMjQuMApf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
