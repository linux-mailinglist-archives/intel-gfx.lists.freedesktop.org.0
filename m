Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0692FD1039
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 15:34:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA8FF6E9A4;
	Wed,  9 Oct 2019 13:34:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB5546E9A4
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2019 13:34:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 06:34:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,276,1566889200"; d="scan'208";a="187625293"
Received: from sviswa2-mobl.ger.corp.intel.com (HELO [10.252.54.89])
 ([10.252.54.89])
 by orsmga008.jf.intel.com with ESMTP; 09 Oct 2019 06:34:50 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191009064224.25348-1-chris@chris-wilson.co.uk>
 <f81948d2-c2f1-3ed7-6949-cf6376c31ad9@intel.com>
 <157062513722.18808.4229271875352720814@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <b1e31605-cdbc-ac57-9112-5aaf2995accd@intel.com>
Date: Wed, 9 Oct 2019 16:34:49 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157062513722.18808.4229271875352720814@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 1/9] drm/i915/perf: store the associated
 engine of a stream
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
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMDkvMTAvMjAxOSAxNTo0NSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMTAtMDkgMTM6NDM6MzIpCj4+IERvIHlvdSBoYXZlIGJyYW5jaCBz
b21ld2hlcmUgd2l0aCB0aGlzIHNlcmllcz8KPiBodHRwczovL2NnaXQuZnJlZWRlc2t0b3Aub3Jn
L35pY2tsZS9saW51eC0yLjYvbG9nLz9oPXdpcC1wZXJmCj4gLUNocmlzCj4KQ2hlZXJzLAoKCkkn
dmUgbW9kaWZpZWQgdGhlIHRvcCBwYXRjaCB0byBzZXQgdGhlIG5vcHJlZW1wdCBmbGFnIGZvciBh
cyBsb25nIGFzIHRoZSAKY29udGV4dCBoYXMgYmVlbiBmbGFnZ2VkIChhcyBsb25nIGF0IHRoZSBw
ZXJmIHN0cmVhbSBpcyBvcGVuZWQpIDogCmh0dHBzOi8vZ2l0aHViLmNvbS9kamRlYXRoL2xpbnV4
L2NvbW1pdC9kMzMyN2IzMGM2MTQxZmFjOThhM2Q0NmYzMzk4Yzg3ZmU3MDk3NmFhCgoKTm90IHNl
ZWluZyBwcmVlbXB0aW9uIGlzc3VlcyBhbnltb3JlIFxvLwoKCi1MaW9uZWwKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
