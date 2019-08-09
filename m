Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C77B873BC
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 10:05:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 838E16ED1A;
	Fri,  9 Aug 2019 08:05:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACAD86ED1A
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2019 08:04:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Aug 2019 01:04:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,364,1559545200"; d="scan'208";a="326562845"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.25.45])
 by orsmga004.jf.intel.com with ESMTP; 09 Aug 2019 01:04:57 -0700
MIME-Version: 1.0
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20190808092748.28800-1-chris@chris-wilson.co.uk>
References: <20190808092748.28800-1-chris@chris-wilson.co.uk>
Message-ID: <156533789610.5047.2458968814186640869@lmkuo-mobl1.gar.corp.intel.com>
User-Agent: alot/0.7
Date: Fri, 09 Aug 2019 11:04:56 +0300
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Replace global bsd_dispatch_index
 with random seed
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDgtMDggMTI6Mjc6NDgpCj4gV2Uga2VlcCBhIGds
b2JhbCBzZWVkIGZvciB0aGUgbGVnYWN5IEJTRCByb3VuZC1yb2JpbiBzZWxlY3RvciwgYnV0IGlu
Cj4gb3VyIHRlc3Rpbmcgb2YgbXVsdGlwbGUgc2ltdWx0YW5lb3VzIGNsaWVudCB3b3JrbG9hZHMs
IGEgcmFuZG9tIHNlZWQKPiBzcHJlYWRzIHRoZSBsb2FkIG1vcmUgZXZlbmx5LiAoQXMgZXZlbiBh
cyBhbiBpbml0aWFsIHJvdW5kLXJvYmluIHNlbGVjdG9yCj4gY2FuIGJlISkKCkEgc2VudGVuY2Ug
Y291bGQgYmUgYWRkZWQgYWJvdXQgdGhlIHRlc3Qgc2NlbmFyaW8uCgo+IFNpZ25lZC1vZmYtYnk6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBUdnJ0a28gVXJz
dWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IENjOiBKb29uYXMgTGFodGluZW4gPGpv
b25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogSm9vbmFzIExhaHRp
bmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgoKUmVnYXJkcywgSm9vbmFzCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
