Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CFBE91619
	for <lists+intel-gfx@lfdr.de>; Sun, 18 Aug 2019 12:17:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C09426E063;
	Sun, 18 Aug 2019 10:17:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 554E06E063
 for <intel-gfx@lists.freedesktop.org>; Sun, 18 Aug 2019 10:16:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Aug 2019 03:16:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,400,1559545200"; d="scan'208";a="177615224"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga008.fm.intel.com with ESMTP; 18 Aug 2019 03:16:58 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.129.244])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x7IAGv5b008469; Sun, 18 Aug 2019 11:16:57 +0100
To: intel-gfx@lists.freedesktop.org, "Chris Wilson" <chris@chris-wilson.co.uk>
References: <20190818095204.31568-1-michal.wajdeczko@intel.com>
 <20190818095204.31568-4-michal.wajdeczko@intel.com>
 <156612241165.25088.1515760153670282123@skylake-alporthouse-com>
Date: Sun, 18 Aug 2019 12:16:56 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z6pqui1fxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <156612241165.25088.1515760153670282123@skylake-alporthouse-com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/uc: Never fail on HuC firmware
 errors
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU3VuLCAxOCBBdWcgMjAxOSAxMjowMDoxMSArMDIwMCwgQ2hyaXMgV2lsc29uICAKPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4gd3JvdGU6Cgo+IFF1b3RpbmcgTWljaGFsIFdhamRlY3prbyAo
MjAxOS0wOC0xOCAxMDo1MjowNCkKPj4gVGhlcmUgaXMgbm8gbmVlZCB0byBtYXJrIHdob2xlIEdQ
VSBhcyB3ZWRnZWQganVzdCBiZWNhdXNlCj4+IG9mIHRoZSBjdXN0b20gSHVDIGZ3IGZhaWx1cmUg
YXMgdXNlcnMgY2FuIGFsd2F5cyB2ZXJpZnkKPj4gYWN0dWFsIEh1QyBmaXJtd2FyZSBzdGF0dXMg
dXNpbmcgZXhpc3RpbmcgSFVDX1NUQVRVUyBpb2N0bC4KPgo+IElmIHdlIHRyeSBhbmQgZmFpbCwg
d291bGQgaXQgbm90IGJlIHdvcnRoIGEgZGV2X25vdGljZT8KCmlmIEd1QyBpcyBvayBhbmQgaWYg
SHVDIHdhcyBlbmFibGVkIHRoZXJlIHdpbGwgYmUgc29tZXRoaW5nIGxpa2UgdGhpczoKCjw2PiBp
OTE1IDAwMDA6MDA6MDIuMDogR3VDIGZpcm13YXJlIGk5MTUva2JsX2d1Y18zMy4wLjAuYmluIHZl
cnNpb24gMzMuMCAgCnN1Ym1pc3Npb246ZGlzYWJsZWQKPDY+IGk5MTUgMDAwMDowMDowMi4wOiBI
dUMgZmlybXdhcmUgaTkxNS9rYmxfaHVjX3ZlcjAyXzAwXzE4MTAuYmluIHZlcnNpb24gIAoyLjAg
YXV0aGVudGljYXRlZDpubwoKb3RoZXJ3aXNlIHdlIHNob3VsZCBnZXQ6Cgo8NT4gaTkxNSAwMDAw
OjAwOjAyLjA6IEd1QyBpcyB1bmluaXRpYWxpemVkCgo+Cj4+IFNpZ25lZC1vZmYtYnk6IE1pY2hh
bCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgo+PiBDYzogRGFuaWVsZSBD
ZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPj4gQ2M6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+Cj4gRWl0aGVyIHdheSwKPiBS
ZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gLUNo
cmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
