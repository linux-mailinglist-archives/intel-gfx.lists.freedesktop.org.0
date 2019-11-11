Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62DE2F72CC
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 12:10:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8C718923D;
	Mon, 11 Nov 2019 11:10:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 630178923D
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 11:10:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Nov 2019 03:10:13 -0800
X-IronPort-AV: E=Sophos;i="5.68,292,1569308400"; d="scan'208";a="197637404"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Nov 2019 03:10:12 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
In-Reply-To: <20191108181852.f2ce7uthomzgf4vx@ldmartin-desk1>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191108003602.33526-1-lucas.demarchi@intel.com>
 <20191108003602.33526-4-lucas.demarchi@intel.com> <87eeyi62o4.fsf@intel.com>
 <20191108181852.f2ce7uthomzgf4vx@ldmartin-desk1>
Date: Mon, 11 Nov 2019 13:10:10 +0200
Message-ID: <87zhh24qjx.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/bios: do not discard address
 space
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

T24gRnJpLCAwOCBOb3YgMjAxOSwgTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRl
bC5jb20+IHdyb3RlOgo+IE9uIEZyaSwgTm92IDA4LCAyMDE5IGF0IDAxOjE0OjAzUE0gKzAyMDAs
IEphbmkgTmlrdWxhIHdyb3RlOgo+PkZvbGxvdy11cDogc3RvcmUgcG9pbnRlciB0byB0aGUgb3By
b20gdmJ0IHNvbWV3aGVyZSB1bmRlciBpOTE1LT52YnQsIGFuZAo+PmhhdmUgZGVidWdmcyBpOTE1
X3ZidCgpIGhhbmRsZSB0aGF0IHByb3Blcmx5Lgo+Cj4gSSBkb24ndCB0aGluayB0aGlzIGlzIG5l
ZWRlZC4gVGhlIHRoaW5nIEknbSBkb2luZyBoZXJlIGlzIHRoZSBzYW1lIGFzCj4gd2hhdCBjYW4g
YmUgYWNjb21wbGlzaGVkIGJ5IHJlYWRpbmcgdGhlIHJvbSBmcm9tIHN5c2ZzOgo+Cj4gZmluZCAv
c3lzL2J1cy9wY2kvZGV2aWNlcy8qLyAtbmFtZSByb20KPiAuLi4gY2hvb3NlIG9uZQo+Cj4gZWNo
byAxID4gcm9tICMgdG8gYWxsb3cgcmVhZGluZyB0aGUgcm9tCj4gaGV4ZHVtcCAtQyByb20KCkkg
dGhpbmsgaXQnbGwgZXZlbnR1YWxseSBiZSBuZWVkZWQgYmVjYXVzZSB1c2luZyBkZWJ1Z2ZzIGk5
MTVfdmJ0IGlzIGhvdwp3ZSB0ZWxsIHBlb3BsZSB0byBkdW1wIHRoZSBWQlQgZm9yIGRlYnVnZ2lu
ZywgYW5kIHRoYXQncyB3aGF0IHRoZXkncmUKYWNjdXN0b21lZCB0by4gKEFuZCB5ZWFoLCB3ZSdy
ZSBtaXNzaW5nIHRoYXQgZm9yIHByZS1vcHJlZ2lvbiBtYWNoaW5lcy4pCgpCUiwKSmFuaS4KCgot
LSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
