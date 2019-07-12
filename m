Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A00266FED
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 15:22:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EA126E03D;
	Fri, 12 Jul 2019 13:22:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02FF26E03D;
 Fri, 12 Jul 2019 13:22:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17248747-1500050 for multiple; Fri, 12 Jul 2019 14:22:20 +0100
MIME-Version: 1.0
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Patchwork <patchwork@emeril.freedesktop.org>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190712131434.29167.50330@emeril.freedesktop.org>
References: <20190712112429.740-1-janusz.krzysztofik@linux.intel.com>
 <20190712131434.29167.50330@emeril.freedesktop.org>
Message-ID: <156293773916.15207.12443881623881852221@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 12 Jul 2019 14:22:19 +0100
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Rename_functions_to_match_their_entry_points_=28rev3?=
 =?utf-8?q?=29?=
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBQYXRjaHdvcmsgKDIwMTktMDctMTIgMTQ6MTQ6MzQpCj4gPT0gU2VyaWVzIERldGFp
bHMgPT0KPiAKPiBTZXJpZXM6IGRybS9pOTE1OiBSZW5hbWUgZnVuY3Rpb25zIHRvIG1hdGNoIHRo
ZWlyIGVudHJ5IHBvaW50cyAocmV2MykKPiBVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVk
ZXNrdG9wLm9yZy9zZXJpZXMvNjM1NDEvCj4gU3RhdGUgOiBzdWNjZXNzCj4gCj4gPT0gU3VtbWFy
eSA9PQo+IAo+IENJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzY0NzIgLT4gUGF0Y2h3
b3JrXzEzNjQzCj4gPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PQo+IAo+IFN1bW1hcnkKPiAtLS0tLS0tCj4gCj4gICAqKlNVQ0NFU1MqKgo+IAo+ICAg
Tm8gcmVncmVzc2lvbnMgZm91bmQuCj4gCj4gICBFeHRlcm5hbCBVUkw6IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNjQzLwoKQW5kIHB1c2hlZC4g
VGhhbmtzIGZvciB0aGUgY29udGludWFsIGltcHJvdmVtZW50cywKLUNocmlzCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
