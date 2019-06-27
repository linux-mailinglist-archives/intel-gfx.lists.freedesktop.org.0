Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C375E58E36
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 01:00:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8050F6E854;
	Thu, 27 Jun 2019 23:00:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DD8C6E854
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 23:00:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17050567-1500050 for multiple; Fri, 28 Jun 2019 00:00:01 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190627205633.1143-1-matthew.auld@intel.com>
 <20190627205633.1143-4-matthew.auld@intel.com>
In-Reply-To: <20190627205633.1143-4-matthew.auld@intel.com>
Message-ID: <156167639887.21507.1587232309147673939@skylake-alporthouse-com>
Date: Thu, 27 Jun 2019 23:59:58 +0100
Subject: Re: [Intel-gfx] [PATCH v2 03/37] drm/i915/region: support basic
 eviction
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDYtMjcgMjE6NTU6NTkpCj4gK2ludCBpOTE1X21l
bW9yeV9yZWdpb25fZXZpY3Qoc3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gKm1lbSwKCldoYXQg
dHlwZSBpcyB0aGlzIGFnYWluPwoKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlc291
cmNlX3NpemVfdCB0YXJnZXQpCj4gK3sKPiArICAgICAgIHN0cnVjdCBkcm1faTkxNV9nZW1fb2Jq
ZWN0ICpvYmosICpvbjsKPiArICAgICAgIHJlc291cmNlX3NpemVfdCBmb3VuZDsKPiArICAgICAg
IExJU1RfSEVBRChwdXJnZWFibGUpOwo+ICsgICAgICAgaW50IGVycjsKPiArCj4gKyAgICAgICBl
cnIgPSAwOwo+ICsgICAgICAgZm91bmQgPSAwOwo+ICsKPiArICAgICAgIG11dGV4X2xvY2soJm1l
bS0+b2JqX2xvY2spOwo+ICsKPiArICAgICAgIGxpc3RfZm9yX2VhY2hfZW50cnkob2JqLCAmbWVt
LT5wdXJnZWFibGUsIHJlZ2lvbl9saW5rKSB7Cj4gKyAgICAgICAgICAgICAgIGlmICghaTkxNV9n
ZW1fb2JqZWN0X2hhc19wYWdlcyhvYmopKQo+ICsgICAgICAgICAgICAgICAgICAgICAgIGNvbnRp
bnVlOwo+ICsKPiArICAgICAgICAgICAgICAgaWYgKFJFQURfT05DRShvYmotPnBpbl9nbG9iYWwp
KQo+ICsgICAgICAgICAgICAgICAgICAgICAgIGNvbnRpbnVlOwo+ICsKPiArICAgICAgICAgICAg
ICAgaWYgKGF0b21pY19yZWFkKCZvYmotPmJpbmRfY291bnQpKQo+ICsgICAgICAgICAgICAgICAg
ICAgICAgIGNvbnRpbnVlOwo+ICsKPiArICAgICAgICAgICAgICAgbGlzdF9hZGQoJm9iai0+ZXZp
Y3Rpb25fbGluaywgJnB1cmdlYWJsZSk7Cj4gKwo+ICsgICAgICAgICAgICAgICBmb3VuZCArPSBv
YmotPmJhc2Uuc2l6ZTsKPiArICAgICAgICAgICAgICAgaWYgKGZvdW5kID49IHRhcmdldCkKPiAr
ICAgICAgICAgICAgICAgICAgICAgICBnb3RvIGZvdW5kOwo+ICsgICAgICAgfQo+ICsKPiArICAg
ICAgIGVyciA9IC1FTk9TUEM7Cj4gK2ZvdW5kOgo+ICsgICAgICAgbGlzdF9mb3JfZWFjaF9lbnRy
eV9zYWZlKG9iaiwgb24sICZwdXJnZWFibGUsIGV2aWN0aW9uX2xpbmspIHsKPiArICAgICAgICAg
ICAgICAgaWYgKCFlcnIpIHsKPiArICAgICAgICAgICAgICAgICAgICAgICBfX2k5MTVfZ2VtX29i
amVjdF9wdXRfcGFnZXMob2JqLCBJOTE1X01NX1NIUklOS0VSKTsKCkhvdyBjb21lIHB1dF9wYWdl
cyBpcyBub3QgdGFraW5nIG1tLT5vYmpfbG9jayB0byByZW1vdmUgdGhlCm9iai0+cmVnaW9uX2xp
bms/CgpJJ20gZ2V0dGluZyBmaXNoeSB2aWJlcy4KCj4gKwo+ICsgICAgICAgICAgICAgICAgICAg
ICAgIG11dGV4X2xvY2tfbmVzdGVkKCZvYmotPm1tLmxvY2ssIEk5MTVfTU1fU0hSSU5LRVIpOwoK
PiArICAgICAgICAgICAgICAgICAgICAgICBpZiAoIWk5MTVfZ2VtX29iamVjdF9oYXNfcGFnZXMo
b2JqKSkKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG9iai0+bW0ubWFkdiA9IF9f
STkxNV9NQURWX1BVUkdFRDsKClRoYXQgc2hvdWxkIGJlIHB1c2hlZCB0byBwdXRfcGFnZXMoKSBh
cyByZWFzb24uIFRoZSB1bmxvY2svbG9jayBpcyBqdXN0CmFza2luZyBmb3IgdHJvdWJsZS4KCj4g
KyAgICAgICAgICAgICAgICAgICAgICAgbXV0ZXhfdW5sb2NrKCZvYmotPm1tLmxvY2spOwo+ICsg
ICAgICAgICAgICAgICB9Cj4gKwo+ICsgICAgICAgICAgICAgICBsaXN0X2RlbCgmb2JqLT5ldmlj
dGlvbl9saW5rKTsKPiArICAgICAgIH0KCllvdSB3aWxsIGhhdmUgbm90aWNlZCB0aGF0IGEgc2Vw
YXJhdGUgZXZpY3Rpb25fbGluayBpcyBzdXBlcmZsdW91cz8gSWYKYm90aCByZWdpb25fbGluayBh
bmQgZXZjdGlvbl9saW5rIGFyZSBvbmx5IHZhbGlkIHVuZGVybmVhdGggb2JqX2xvY2ssCnlvdSBj
YW4gbGlzdF9tb3ZlKCZvYmotPnJlZ2lvbl9saW5rLCAmcHVyZ2VhYmxlKSBpbiB0aGUgZmlyc3Qg
cGFzcywgYW5kCnVud2luZCBvbiBlcnJvci4KCkhvd2V2ZXIsIEknbSBnb2luZyBobW0uCgpTbyB5
b3Uga2VlcCBhbGwgb2JqZWN0cyBvbiB0aGUgc2hyaW5rIGxpc3RzIGV2ZW4gd2hlbiBub3QgYWxs
b2NhdGVkLiBIbwpodW0uIFdpdGggYSBiaXQgbW9yZSBjcmVhdGl2ZSBsb2NraW5nLCByZWFkIGNh
cmVmdWwgYWNxdWlzaXRpb24gb2YKcmVzb3VyY2VzIHRoZW4gZHJvcHBpbmcgdGhlIGxvY2sgYmVm
b3JlIGFjdHVhbGx5IGV2aWN0aW5nLCBpdCBzaG91bGQKd29yayBvdXQuCi1DaHJpcwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
