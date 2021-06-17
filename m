Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F6D3AB067
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jun 2021 11:55:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 891636E8D2;
	Thu, 17 Jun 2021 09:55:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4A826E8D2;
 Thu, 17 Jun 2021 09:55:14 +0000 (UTC)
IronPort-SDR: cKlFkL0ggHmXe01Bpl/Izejc22dXp4kgqssDiX1N8yUpkxagJ3hZXzJpzr3eTRTm52IE3taJ4h
 ELjJxRh6Ya4Q==
X-IronPort-AV: E=McAfee;i="6200,9189,10017"; a="206158115"
X-IronPort-AV: E=Sophos;i="5.83,280,1616482800"; d="scan'208";a="206158115"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2021 02:54:55 -0700
IronPort-SDR: 1+4wM5q0fSkC9Ahwg7Q7Vd5xHQCO3NJ9P14blvcmCMyQVBeUk8AIBqu47KoXmkHW1Y1CnLaqyM
 V8nIXnBoSrBw==
X-IronPort-AV: E=Sophos;i="5.83,280,1616482800"; d="scan'208";a="554351645"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.205])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2021 02:54:53 -0700
Date: Thu, 17 Jun 2021 15:26:20 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <20210617095620.GA15664@intel.com>
References: <20210615113600.30660-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210615113600.30660-1-thomas.hellstrom@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Perform execbuffer object locking
 as a separate step
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: intel-gfx@lists.freedesktop.org, matthew.auld@intel.com,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAyMS0wNi0xNSBhdCAxMzozNjowMCArMDIwMCwgVGhvbWFzIEhlbGxzdHLDtm0gd3JvdGU6
Cj4gVG8gaGVscCBhdm9pZCBldmljdGluZyBhbHJlYWR5IHJlc2lkZW50IGJ1ZmZlcnMgZnJvbSB0
aGUgYmF0Y2ggd2UncmUKPiBwcm9jZXNzaW5nLCBwZXJmb3JtIGxvY2tpbmcgYXMgYSBzZXBhcmF0
ZSBzdGVwLgo+IApMb29rcyByZWFzb25hYmxlIHRvIG1lLgoKUmV2aWV3ZWQtYnk6IFJhbWFsaW5n
YW0gQyA8cmFtYWxpbmdhbS5jQGludGVsLmNvbT4KCj4gU2lnbmVkLW9mZi1ieTogVGhvbWFzIEhl
bGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICAuLi4v
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMgICAgfCAyNSArKysrKysrKysr
KysrKysrLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyMSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9u
cygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
ZXhlY2J1ZmZlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZm
ZXIuYwo+IGluZGV4IDIwMWZlZDE5ZDEyMC4uMzk0ZWI0MGM5NWI1IDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCj4gQEAgLTkyMiwyMSAr
OTIyLDM4IEBAIHN0YXRpYyBpbnQgZWJfbG9va3VwX3ZtYXMoc3RydWN0IGk5MTVfZXhlY2J1ZmZl
ciAqZWIpCj4gIAlyZXR1cm4gZXJyOwo+ICB9Cj4gIAo+IC1zdGF0aWMgaW50IGViX3ZhbGlkYXRl
X3ZtYXMoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIpCj4gK3N0YXRpYyBpbnQgZWJfbG9ja192
bWFzKHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViKQo+ICB7Cj4gIAl1bnNpZ25lZCBpbnQgaTsK
PiAgCWludCBlcnI7Cj4gIAo+IC0JSU5JVF9MSVNUX0hFQUQoJmViLT51bmJvdW5kKTsKPiAtCj4g
IAlmb3IgKGkgPSAwOyBpIDwgZWItPmJ1ZmZlcl9jb3VudDsgaSsrKSB7Cj4gLQkJc3RydWN0IGRy
bV9pOTE1X2dlbV9leGVjX29iamVjdDIgKmVudHJ5ID0gJmViLT5leGVjW2ldOwo+ICAJCXN0cnVj
dCBlYl92bWEgKmV2ID0gJmViLT52bWFbaV07Cj4gIAkJc3RydWN0IGk5MTVfdm1hICp2bWEgPSBl
di0+dm1hOwo+ICAKPiAgCQllcnIgPSBpOTE1X2dlbV9vYmplY3RfbG9jayh2bWEtPm9iaiwgJmVi
LT53dyk7Cj4gIAkJaWYgKGVycikKPiAgCQkJcmV0dXJuIGVycjsKPiArCX0KPiArCj4gKwlyZXR1
cm4gMDsKPiArfQo+ICsKPiArc3RhdGljIGludCBlYl92YWxpZGF0ZV92bWFzKHN0cnVjdCBpOTE1
X2V4ZWNidWZmZXIgKmViKQo+ICt7Cj4gKwl1bnNpZ25lZCBpbnQgaTsKPiArCWludCBlcnI7Cj4g
Kwo+ICsJSU5JVF9MSVNUX0hFQUQoJmViLT51bmJvdW5kKTsKPiArCj4gKwllcnIgPSBlYl9sb2Nr
X3ZtYXMoZWIpOwo+ICsJaWYgKGVycikKPiArCQlyZXR1cm4gZXJyOwo+ICsKPiArCWZvciAoaSA9
IDA7IGkgPCBlYi0+YnVmZmVyX2NvdW50OyBpKyspIHsKPiArCQlzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X2V4ZWNfb2JqZWN0MiAqZW50cnkgPSAmZWItPmV4ZWNbaV07Cj4gKwkJc3RydWN0IGViX3ZtYSAq
ZXYgPSAmZWItPnZtYVtpXTsKPiArCQlzdHJ1Y3QgaTkxNV92bWEgKnZtYSA9IGV2LT52bWE7Cj4g
IAo+ICAJCWVyciA9IGViX3Bpbl92bWEoZWIsIGVudHJ5LCBldik7Cj4gIAkJaWYgKGVyciA9PSAt
RURFQURMSykKPiAtLSAKPiAyLjMxLjEKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
