Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A39EE1CEC9
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2019 20:13:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12E8489319;
	Tue, 14 May 2019 18:13:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77A4F89319
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 May 2019 18:13:15 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 May 2019 11:13:14 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.54.134.77])
 by fmsmga007.fm.intel.com with ESMTP; 14 May 2019 11:13:14 -0700
Date: Tue, 14 May 2019 11:14:01 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Message-ID: <20190514181400.GA8091@localhost.localdomain>
References: <20190502231315.7388-1-umesh.nerlige.ramappa@intel.com>
 <2f27cddc-3ca2-c347-bbbc-eddee3024e7e@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2f27cddc-3ca2-c347-bbbc-eddee3024e7e@intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: Refactor oa object to better
 manage resources
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

T24gVHVlLCBNYXkgMTQsIDIwMTkgYXQgMTA6MzQ6NDlBTSArMDEwMCwgTGlvbmVsIExhbmR3ZXJs
aW4gd3JvdGU6Cj5IaSBVbWVzaCwKPgo+SSBqdXN0IG5vdGljZWQgdGhpcyBkaWZmZXJlbnQgYmV0
d2VlbiB2MSAmIHYyLgo+TXkgdW5kZXJzdGFuZGluZyBpcyB0aGF0IGlmIGRlc3Ryb3koKSBpcyBj
YWxsZWQsIHN0cmVhbSBzaG91bGQgYmUgdGhlIAo+c2FtZSBhcyBkZXZfcHJpdi0+cGVyZi5leGNs
dXNpdmVfc3RyZWFtLgo+SWYgaXQncyBub3QgaXQgc291bmRzIGxpa2UgYSBidWcuIFNvIHdoeSBj
aGFuZ2UgdGhpcz8KPgp2MiBmaXhlcyBvbmx5IGNoZWNrcGF0Y2ggd2FybmluZ3MuIGl0IHdhcm5l
ZCBvbiB1c2Ugb2YgQlVHX09OLiBCVUdfT04gaXMgCmludGVuZGVkIHRvIGNyYXNoIHRoZSBzeXN0
ZW0gaW4gc2V2ZXJlIGNhc2VzIHdoZXJlIHRoZSBkcml2ZXIva2VybmVsIGlzIAp1bnVzYWJsZS4g
SW4gdGhpcyBjYXNlLCB0aGUgbWlzbWF0Y2ggYmV0d2VlbiB1c2VyIHBhc3NlZCBpbmZvcm1hdGlv
biBhbmQgCmV4Y2x1c2l2ZV9zdHJlYW0gbWF5IG5vdCByZXF1aXJlIGEgY3Jhc2guCj4tTGlvbmVs
Cj4KPk9uIDAzLzA1LzIwMTkgMDA6MTMsIFVtZXNoIE5lcmxpZ2UgUmFtYXBwYSB3cm90ZToKPj4g
IHN0YXRpYyB2b2lkIGk5MTVfb2Ffc3RyZWFtX2Rlc3Ryb3koc3RydWN0IGk5MTVfcGVyZl9zdHJl
YW0gKnN0cmVhbSkKPj4gIHsKPj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYg
PSBzdHJlYW0tPmRldl9wcml2Owo+Pi0JQlVHX09OKHN0cmVhbSAhPSBkZXZfcHJpdi0+cGVyZi5v
YS5leGNsdXNpdmVfc3RyZWFtKTsKPj4rCWlmIChzdHJlYW0gIT0gZGV2X3ByaXYtPnBlcmYuZXhj
bHVzaXZlX3N0cmVhbSkgewo+PisJCVdBUk5fT05fT05DRShzdHJlYW0gIT0gZGV2X3ByaXYtPnBl
cmYuZXhjbHVzaXZlX3N0cmVhbSk7Cj4+KwkJcmV0dXJuOwo+PisJfQo+PiAgCS8qCj4KPgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
