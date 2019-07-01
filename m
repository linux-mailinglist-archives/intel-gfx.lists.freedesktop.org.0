Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 766DE5BB33
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 14:05:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5F0B89B84;
	Mon,  1 Jul 2019 12:05:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25E1089B84
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jul 2019 12:05:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17084441-1500050 for multiple; Mon, 01 Jul 2019 13:05:30 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190701113437.4043-1-lionel.g.landwerlin@intel.com>
 <20190701113437.4043-9-lionel.g.landwerlin@intel.com>
In-Reply-To: <20190701113437.4043-9-lionel.g.landwerlin@intel.com>
Message-ID: <156198272652.1583.5781402206923683541@skylake-alporthouse-com>
Date: Mon, 01 Jul 2019 13:05:26 +0100
Subject: Re: [Intel-gfx] [PATCH v6 08/11] drm/i915: add a new perf
 configuration execbuf parameter
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNy0wMSAxMjozNDozNCkKPiArc3RhdGlj
IGludCBlYl9vYV9jb25maWcoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIpCj4gK3sKPiArICAg
ICAgIGludCBlcnI7Cj4gKwo+ICsgICAgICAgaWYgKCFlYi0+b2FfY29uZmlnKQo+ICsgICAgICAg
ICAgICAgICByZXR1cm4gMDsKPiArCj4gKyAgICAgICBlcnIgPSBpOTE1X2FjdGl2ZV9yZXF1ZXN0
X3NldCgmZWItPmVuZ2luZS0+bGFzdF9vYV9jb25maWcsCj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBlYi0+cmVxdWVzdCk7Cj4gKyAgICAgICBpZiAoZXJyKQo+ICsgICAg
ICAgICAgICAgICByZXR1cm4gZXJyOwo+ICsKPiArICAgICAgIC8qCj4gKyAgICAgICAgKiBJZiB0
aGUgY29uZmlnIGhhc24ndCBjaGFuZ2VkLCBza2lwIHJlY29uZmlndXJpbmcgdGhlIEhXICh0aGlz
IGlzCj4gKyAgICAgICAgKiBzdWJqZWN0IHRvIGEgZGVsYXkgd2Ugd2FudCB0byBhdm9pZCBoYXMg
bXVjaCBhcyBwb3NzaWJsZSkuCj4gKyAgICAgICAgKi8KPiArICAgICAgIGlmIChlYi0+b2FfY29u
ZmlnID09IGViLT5pOTE1LT5wZXJmLm9hLmV4Y2x1c2l2ZV9zdHJlYW0tPm9hX2NvbmZpZykKPiAr
ICAgICAgICAgICAgICAgcmV0dXJuIDA7CgpTbyB3aGF0J3MgdGhlIHN0b3J5IGZvciByZXNldHM/
IEkgcHJlc3VtZSB0aGUgT0EgY29uZmlnIGlzIGxvc3Qgb24gYQpkZXZpY2UgcmVzZXQsIGFuZCBw
b3NzaWJsZSBhbiBlbmdpbmUgcmVzZXQ/IElmIHNvLCB0aGVuIGlmIHdlIHJlc2V0LCB3ZQpsb3Nl
IHRoZSBjb25maWcgYW5kIGRvIG5vdCBub3RpY2UuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
