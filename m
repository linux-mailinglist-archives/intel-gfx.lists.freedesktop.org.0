Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EE3C8765A
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 11:37:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DEB26ED80;
	Fri,  9 Aug 2019 09:37:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4755A6ED80
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2019 09:37:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Aug 2019 02:37:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,364,1559545200"; d="scan'208";a="193357643"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 09 Aug 2019 02:37:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190701062632.456-1-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190701062632.456-1-animesh.manna@intel.com>
Date: Fri, 09 Aug 2019 12:42:04 +0300
Message-ID: <87v9v6hdzn.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 00/15] DSB enablement.
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
Cc: Michel Thierry <michel.thierry@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAwMSBKdWwgMjAxOSwgQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5j
b20+IHdyb3RlOgo+IERpc3BsYXkgU3RhdGUgQnVmZmVyIChEU0IpIGlzIGhhcmR3YXJlIGNhcGFi
aWxpdHkgd2hpY2ggYWxsb3dzCj4gZHJpdmVyIHRvIGJhdGNoIHN1Ym1pdCBIVyBwcm9ncmFtbWlu
Zy4KPgo+IEFzIHBhcnQgb2YgaW5pdGlhbCBlbmFibGVtZW50IGNvbW1vbiBhcGkgY3JlYXRlZCB3
aGljaCBjdXJyZW50bHkgdXNlZAo+IHRvIHByb2dyYW0gZ2FtbWEgbHV0IHByb3JhbW1pbmcuCj4K
PiBHb2luZyBmb3J3YWQgRFNCIHN1cHBvcnQgY2FuIGJlIGFkZGVkIGZvciBIRFIgYW5kIGZsaXAg
cmVsYXRlZCBvcGVyYXRpb24uCj4KPiBGZXcgY2hhbmdlcyBvZiB0aGlzIHBhdGNoIHNlcmllcyBp
cyBub3QgdGVzdGVkLCBzZW5kaW5nIHZlcnNpb24gMQo+IGZvciBkZXNpZ24gcmV2aWV3LCB3aWxs
IGJlIHRlc3RpbmcgaW4gcGFyYWxsZWwuCgpPdXIgQ0kgcmVwb3J0ZWQgb24gdGhlIHNhbWUgZGF5
IHRoYXQgdGhpcyBzZXJpZXMgb29wc2VzIG9uIGEgbG90IG9mCnBsYXRmb3Jtcy4gSGF2ZSB5b3Ug
aW52ZXN0aWdhdGVkIGFuZCBmaXhlZCB0aG9zZSBpc3N1ZXM/IFBsZWFzZSBwb3N0IHRoZQpmaXhl
ZCBzZXJpZXMuCgpCUiwKSmFuaS4KCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2Ug
R3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
