Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5798CF7441
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 13:44:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C60A6E1E2;
	Mon, 11 Nov 2019 12:44:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D8A06E1E2
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 12:44:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Nov 2019 04:44:37 -0800
X-IronPort-AV: E=Sophos;i="5.68,293,1569308400"; d="scan'208";a="197659597"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.20.50])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Nov 2019 04:44:36 -0800
MIME-Version: 1.0
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20191110185806.17413-13-chris@chris-wilson.co.uk>
References: <20191110185806.17413-1-chris@chris-wilson.co.uk>
 <20191110185806.17413-13-chris@chris-wilson.co.uk>
Message-ID: <157347627386.7478.15884359771534108496@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Mon, 11 Nov 2019 14:44:33 +0200
Subject: Re: [Intel-gfx] [PATCH 13/25] drm/i915: Taint the kernel on dumping
 the GEM ftrace buffer
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTEtMTAgMjA6NTc6NTQpCj4gQXMgdGhlIGZ0cmFj
ZSBidWZmZXIgaXMgc2luZ2xlIHNob3QsIG9uY2UgZHVtcGVkIGl0IHdpbGwgbm90IHVwZGF0ZS4g
QXMKPiBzdWNoLCBpdCBvbmx5IHByb3ZpZGVzIGluZm9ybWF0aW9uIGZvciB0aGUgZmlyc3QgYnVn
IGFuZCBhbGwgc3Vic2VxdWVudAo+IGJ1Z3MgYXJlIG5vaXNlLiBUaGUgZ29hbCBvZiBDSSBpcyB0
byBoYXZlIHplcm8gYnVncywgc28gdGFpbnQgdGhlIGtlcm5lbAo+IGNhdXNpbmcgQ0kgdG8gcmVi
b290IHRoZSBtYWNoaW5lOyBmaXggdGhlIGJ1ZyBhbmQgbW92ZSBvbi4KPiAKPiBTaWduZWQtb2Zm
LWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogTWlrYSBL
dW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IFR2cnRrbyBVcnN1
bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogSm9vbmFzIExhaHRp
bmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgoKUmVnYXJkcywgSm9vbmFzCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
