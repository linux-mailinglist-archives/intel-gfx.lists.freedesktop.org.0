Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 566CE85569
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 23:48:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BD846E49C;
	Wed,  7 Aug 2019 21:48:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11D5F6E49C
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2019 21:48:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 14:48:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,358,1559545200"; d="scan'208";a="326102367"
Received: from jssummer-xeon.ra.intel.com ([10.23.184.90])
 by orsmga004.jf.intel.com with ESMTP; 07 Aug 2019 14:48:03 -0700
Message-ID: <1565214535.30036.1.camel@intel.com>
From: Stuart Summers <stuart.summers@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
Date: Wed, 07 Aug 2019 14:48:55 -0700
In-Reply-To: <156521337006.17543.2674431519733362990@skylake-alporthouse-com>
References: <20190807205556.40435-1-stuart.summers@intel.com>
 <156521337006.17543.2674431519733362990@skylake-alporthouse-com>
X-Mailer: Evolution 3.22.6 (3.22.6-14.el7) 
Mime-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Add MOCS state dump to debugfs
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

T24gV2VkLCAyMDE5LTA4LTA3IGF0IDIyOjI5ICswMTAwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4g
UXVvdGluZyBTdHVhcnQgU3VtbWVycyAoMjAxOS0wOC0wNyAyMTo1NTo1NSkKPiA+IFVzZXIgYXBw
bGljYXRpb25zIG1pZ2h0IG5lZWQgdG8gdmVyaWZ5IGhhcmR3YXJlIGNvbmZpZ3VyYXRpb24KPiA+
IG9mIHRoZSBNT0NTIGVudHJpZXMuIFRvIGZhY2lsaXRhdGUgdGhpcyBkZWJ1ZywgYWRkIGEgbmV3
IGRlYnVnZnMKPiA+IGVudHJ5IHRvIGFsbG93IGEgZHVtcCBvZiB0aGUgTU9DUyBzdGF0ZSB0byB2
ZXJpZnkgZXhwZWN0ZWQgdmFsdWVzCj4gPiBhcmUgc2V0IGJ5IGk5MTUuCj4gCj4gVXNlciBhcHBs
aWNhdGlvbnMgKyBkZWJ1Z2ZzPyBJdCdzIG5vdCBhbiBhdmVudWUgZm9yIEFCSS4KPiAKPiBJZiB5
b3UgcmVhbGx5IHdhbnQgdG8gcHJvdmlkZSB0aGUgc2V0dGluZ3MgYmFjayB0byB1c2Vyc3BhY2Us
IGxvb2sgYXQKPiBzb21ldGhpbmcgbGlrZSBhbiBpOTE1X3F1ZXJ5IG9yIHN5c2ZzLgo+IAo+IE9y
IGlmIHlvdSBqdXN0IG1lYW4gaWd0LCB0aGVuIGFkZCBhIFRlc3RjYXNlOgo+IAo+IElmIHlvdSBq
dXN0IG5lZWQgdG8gdmFsaWRhdGUgdGhhdCB3ZSBhcmUgc2V0dGluZyBhbmQgcmVzdG9yaW5nIHRo
ZW0sCj4gc2VsZnRlc3RzLgo+IAo+IElmIHlvdSBuZWVkIHRoZW0gZm9yIGRlYnVnZ2luZyBlcnJv
cnMsIGFkZCB0aGVtIHRvIHRoZSBlcnJvciBzdGF0ZS4KClRoaXMgd2FzIHByb2JhYmx5IHBvb3Js
eSB3b3JkZWQsIHlvdSdyZSByaWdodC4gSSdsbCB1cGRhdGUgdGhlIGNvbW1pdAptZXNzYWdlIHRv
wqBiZSBtb3JlIHNwZWNpZmljLgoKSSBkbyB3YW50IHRoaXMgZm9yIGRlYnVnZ2luZywgYnV0IG5v
dCBzdXJlIGVycm9yIHN0YXRlIGlzIHRoZSByaWdodApwbGFjZS4gVGhpcyBpcyBmb3IgZGVidWdn
aW5nIHBlcmZvcm1hbmNlIGlzc3Vlcywgc28gbm8gc3BlY2lmaWMKZmFpbHVyZXMuIElmIHlvdSBm
ZWVsIHN5c2ZzIG9yIGk5MTVfcXVlcnkgYXJlIG1vcmUgY29ycmVjdCBoZXJlLCBJIGNhbgpsb29r
IGF0IGFkZGluZyB0aGlzIHRoZXJlIGluc3RlYWQuIElzIHRoZXJlIGEgcmVhc29uIHdlIGRvbid0
IHdhbnQgdGhpcwppbiBkZWJ1Z2ZzIHNwZWNpZmljYWxseT8KClRoYW5rcywKU3R1YXJ0Cgo+IC1D
aHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
