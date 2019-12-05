Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B0E711427E
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2019 15:23:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EE876E0FC;
	Thu,  5 Dec 2019 14:23:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 583396E0FC
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2019 14:23:30 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Dec 2019 06:23:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,281,1571727600"; d="scan'208";a="386188577"
Received: from aquilante.fi.intel.com (HELO intel.intel) ([10.237.72.158])
 by orsmga005.jf.intel.com with ESMTP; 05 Dec 2019 06:23:28 -0800
Date: Thu, 5 Dec 2019 16:23:28 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191205142328.GA13401@intel.intel>
References: <20191205132912.606868-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191205132912.606868-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.12.2 (2019-09-21)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Reinitialise the local list
 before repeating
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

SGkgQ2hyaXMsCgpPbiBUaHUsIERlYyAwNSwgMjAxOSBhdCAwMToyOToxMlBNICswMDAwLCBDaHJp
cyBXaWxzb24gd3JvdGU6Cj4gQXMgd2UgbWF5IHN0YXJ0IHRoZSBsb29wIGFnYWluLCB3ZSByZXF1
aXJlIG91ciBsb2NhbCBsaXN0IG9mIGk5MTVfdm1hCj4gd2UndmUgcHJvY2Vzc2VkIHRvIGJlIHJl
aW5pdGlhbGlzZWQuCj4gCj4gRml4ZXM6IGFhNWU0NDUzZGMwNSAoImRybS9pOTE1L2dlbTogVHJ5
IHRvIGZsdXNoIHBlbmRpbmcgdW5iaW5kIGV2ZW50cyIpCj4gQ2xvc2VzOiBodHRwczovL2dpdGxh
Yi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy83MzEKPiBTaWduZWQtb2ZmLWJ5OiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAtLS0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9nZW0uYyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCj4gaW5kZXgg
Y2M4YzY5NjBiNjg5Li45OGI2NWI3MThlMWEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW0uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMK
PiBAQCAtMTc1LDcgKzE3NSw3IEBAIGludCBpOTE1X2dlbV9vYmplY3RfdW5iaW5kKHN0cnVjdCBk
cm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCj4gIAkJaTkxNV92bV9jbG9zZSh2bSk7Cj4gIAkJc3Bp
bl9sb2NrKCZvYmotPnZtYS5sb2NrKTsKPiAgCX0KPiAtCWxpc3Rfc3BsaWNlKCZzdGlsbF9pbl9s
aXN0LCAmb2JqLT52bWEubGlzdCk7Cj4gKwlsaXN0X3NwbGljZV9pbml0KCZzdGlsbF9pbl9saXN0
LCAmb2JqLT52bWEubGlzdCk7CgpSZXZpZXdlZC1ieTogQW5kaSBTaHl0aSA8YW5kaS5zaHl0aUBp
bnRlbC5jb20+CgpUaGFua3MsCkFuZGkKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
