Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E573743646
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 15:09:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03CB189904;
	Thu, 13 Jun 2019 13:09:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBDC589904
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 13:09:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jun 2019 06:09:42 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 13 Jun 2019 06:09:39 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190612162900.13777-1-lucas.demarchi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190612162900.13777-1-lucas.demarchi@intel.com>
Date: Thu, 13 Jun 2019 16:12:37 +0300
Message-ID: <87pnnhwrwa.fsf@intel.com>
MIME-Version: 1.0
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAxMiBKdW4gMjAxOSwgTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRl
bC5jb20+IHdyb3RlOgo+IFdlIGFyZSBzbG93bHkgY29udmVydGluZyBkZXZfcHJpdiB0byBpOTE1
IGV2ZXJ5d2hlcmUsIHNwcmVhZCBpbnRvCj4gc21hbGxlciBzZXJpZXMuIFdoaWxlIHRoaXMgaXMg
Z29vZCB0byBhdm9pZCB1bnJlbGF0ZWQgYnJlYWthZ2VzIHRvIG90aGVyCj4gaW5mbGlnaHQgcGF0
Y2hlcywgaXQncyBiYWQgYmVjYXVzZSBpbmZsaWdodCBwYXRjaGVzIG9uIG5lYXJieSBwYXRocyBr
ZWVwCj4gYnJlYWtpbmcuIFBhaXJlZCB3aXRoIG90aGVyIGNvZGUgbW92ZXMgYW5kIHJlZmFjdG9y
ZXMgdGhpcyBpcyBiZWNvbWluZyBhCj4gbmlnaHRtYXJlLgo+Cj4gTm93IHRoYXQgSTkxNV97UkVB
RCxXUklURX0gYXJlIGdvbmUgYW5kIGltcGxpY2l0IGFjY2VzcyB0byBkZXZfcHJpdiBubwo+IGxv
bmdlciBleGlzdHMgd2UgY2FuIHNpbXBseSBzZWQgYWxsIGZpbGVzIGFuZCBiZSBkb25lIHdpdGgg
dGhlCj4gY29udmVyc2lvbi4gVGhpcyB3YXMgZ2VuZXJhdGVkIHdpdGggdGhlIGZvbGxvd2luZyBj
b21tYW5kcyB3aXRoIG5vCj4gYWRkaXRpb25hbCBmaXh1cHM6Cj4KPiAJZ2l0IGxzLWZpbGVzIC0t
ZnVsbC1uYW1lIC16IC0tIGRyaXZlcnMvZ3B1L2RybS9pOTE1LyB8IFwKPiAJCXhhcmdzIC0wIHNl
ZCAtaSAncy9cYmRldl9wcml2XGIvaTkxNS9nJwo+Cj4gQW55IHBlbmRpbmcgc2VyaWVzIGNhbiBh
cHBseSB0aGUgc2FtZSBzZWFyY2ggYW5kIHJlcGxhY2Ugd2hlbiByZWJhc2luZy4KCkknbSBwcmV0
dHkgc3Ryb25nbHkgYWdhaW5zdCByZW5hbWluZyB0aGUgaW1wbGljaXQgZGV2X3ByaXYgbG9jYWwK
dmFyaWFibGUgYmVmb3JlIHdlJ3ZlIGdvdHRlbiByaWQgb2YgaXQuIFJlbmFtaW5nIHMvZGV2X3By
aXYvaTkxNS8gdXBvbgpjb252ZXJ0aW5nIGEgZnVuY3Rpb24gdG8gbm90IHVzZSB0aGUgaW1wbGlj
aXQgZGV2X3ByaXYgaGVscHMgdXMgYnkKY2F0Y2hpbmcgYW55IGxlZnRvdmVyIHJlZmVyZW5jZXMu
CgpCUiwKSmFuaS4KCgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNz
IENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
