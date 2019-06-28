Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB4D5945B
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 08:47:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DEA06E888;
	Fri, 28 Jun 2019 06:47:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 665146E886;
 Fri, 28 Jun 2019 06:47:24 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 23:47:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,426,1557212400"; d="scan'208";a="183624946"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
 by fmsmga001.fm.intel.com with ESMTP; 27 Jun 2019 23:47:22 -0700
Received: from ahiler-desk1.fi.intel.com (10.237.68.151) by
 IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 28 Jun 2019 07:47:21 +0100
Date: Fri, 28 Jun 2019 09:47:19 +0300
From: Arkadiusz Hiler <arkadiusz.hiler@intel.com>
To: "Ser, Simon" <simon.ser@intel.com>
Message-ID: <20190628064719.25mck7ro3xpw5is4@ahiler-desk1.fi.intel.com>
References: <40326e43def140d19e0d57604e41aa10d1466f7a.1561642240.git.guillaume.tucker@collabora.com>
 <3ce986da0837fd46ebf200e1bf5b63378f8a4448.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3ce986da0837fd46ebf200e1bf5b63378f8a4448.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Patchwork-Hint: comment
User-Agent: NeoMutt/20180716
X-Originating-IP: [10.237.68.151]
Subject: Re: [Intel-gfx] [PATCH i-g-t] gitlab-ci: add tests for MIPS
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdW4gMjcsIDIwMTkgYXQgMDU6NTE6MzJQTSArMDMwMCwgU2VyLCBTaW1vbiB3cm90
ZToKPiBPbiBUaHUsIDIwMTktMDYtMjcgYXQgMTQ6MzAgKzAxMDAsIEd1aWxsYXVtZSBUdWNrZXIg
d3JvdGU6Cj4gPiBVc2UgdGhlIGxpYmF0b21pYzE6bWlwcyBwYWNrYWdlIG9ubHkgaW4gdGhlIERl
YmlhbiBTdHJldGNoIERvY2tlcgo+ID4gaW1hZ2UgZm9yIE1JUFMgYW5kIGFkZCBHaXRsYWIgQ0kg
c3RlcCB0byBydW4gdGVzdHMgb24gTUlQUy4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogR3VpbGxh
dW1lIFR1Y2tlciA8Z3VpbGxhdW1lLnR1Y2tlckBjb2xsYWJvcmEuY29tPgo+IAo+IFdpdGggdGhp
cyB0YWcgYWRkZWQ6Cj4gCj4gRml4ZXM6IDQzOWE5ZjVkNjE1ZiAoImdpdGxhYi1jaTogYWRkIGJ1
aWxkIGZvciBNSVBTIikKPiAKPiBUaGlzIHBhdGNoIGlzOgo+IAo+IFJldmlld2VkLWJ5OiBTaW1v
biBTZXIgPHNpbW9uLnNlckBpbnRlbC5jb20+CgpIZXksCgpodHRwczovL3BhdGNod29yay5mcmVl
ZGVza3RvcC5vcmcvc2VyaWVzLzYyODU5LyBhbmQgY2hlY2sgR2l0TGFiLlBpcGVsaW5lCgpXZSB3
aWxsIGJlIHJ1bm5pbmcgZ2l0bGFiIHBpcGVsaW5lIGZvciBldmVyeXRoaW5nIHByZS1tZXJnZSBh
bmQgaWYgaXQKZmFpbHMgd2Ugd2lsbCBzZW5kIG91dCBhIGVtYWlsIChjdXJyZW50bHkgd2UgYXJl
IHRlc3RpbmcgdGhpcyBhbmQgbm8KZW1haWxzIGFyZSBzZW50KS4KCllvdSBjYW4gY2hlY2sgdGhl
IHBpZWxpbmUgc3RhdHVzIGZyb20gcGF0Y2h3b3JrIGF0IGFsbCB0aW1lcywgZXZlbiBmb3IKc3Vj
ZXNzZnVsIG9uZXMgOi0pCgotLSAKQ2hlZXJzLApBcmVrCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
