Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B61F88CF09
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2019 11:07:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B0DC6E46E;
	Wed, 14 Aug 2019 09:07:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 804C56E46E
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2019 09:07:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Aug 2019 02:07:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,384,1559545200"; d="scan'208";a="184226532"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.30.104])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Aug 2019 02:07:43 -0700
MIME-Version: 1.0
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20190813200905.11369-1-chris@chris-wilson.co.uk>
References: <20190813200905.11369-1-chris@chris-wilson.co.uk>
Message-ID: <156577366276.5083.10002013674695400391@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Wed, 14 Aug 2019 12:07:42 +0300
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Serialise read/write of the
 barrier's engine
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDgtMTMgMjM6MDk6MDUpCj4gV2UgdXNlIHRoZSBy
ZXF1ZXN0IHBvaW50ZXIgaW5zaWRlIHRoZSBpOTE1X2FjdGl2ZV9ub2RlIGFzIHRoZSBpbmRpY2F0
b3IKPiBvZiB0aGUgYmFycmllcidzIHN0YXR1czsgd2UgbWFyayBpdCBhcyB1c2VkIGR1cmluZwo+
IGk5MTVfcmVxdWVzdF9hZGRfYWN0aXZlX2JhcnJpZXJzKCksIGFuZCBzZWFyY2ggZm9yIGFuIGF2
YWlsYWJsZSBiYXJyaWVyCj4gaW4gcmV1c2VfaWRsZV9iYXJyaWVyKCkuIFRoYXQgY2hlY2sgbXVz
dCBiZSBjYXJlZnVsbHkgc2VyaWFsaXNlZCB0bwo+IGVuc3VyZSB3ZSBkbyB1c2UgYW4gZW5naW5l
IGZvciB0aGUgYmFycmllciBhbmQgbm90IGp1c3QgYSByYW5kb20KPiBwb2ludGVyLiAoQWxvbmcg
dGhlIG90aGVyIHJldXNlIHBhdGgsIHdlIGFyZSBmdWxseSBzZXJpYWxpc2VkIGJ5IHRoZQo+IHRp
bWVsaW5lLT5tdXRleC4pIFRoZSBhY3F1aXNpdGlvbiBvZiB0aGUgYmFycmllciBpdHNlbGYgaXMg
b3JkZXJlZCB0aHJvdWdoCj4gdGhlIHN0cm9uZyBtZW1vcnkgYmFycmllciBpbiBsbGlzdF9kZWxf
YWxsKCkuCj4gCj4gRml4ZXM6IGQ4YWYwNWZmMzhhZSAoImRybS9pOTE1OiBBbGxvdyBzaGFyaW5n
IHRoZSBpZGxlLWJhcnJpZXIgZnJvbSBvdGhlciBrZXJuZWwgcmVxdWVzdHMiKQo+IFNpZ25lZC1v
ZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgoKUmV2aWV3ZWQt
Ynk6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KClJl
Z2FyZHMsIEpvb25hcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
