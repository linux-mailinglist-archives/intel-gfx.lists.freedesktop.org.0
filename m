Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D6EC6762BE
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 11:51:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BC036ED00;
	Fri, 26 Jul 2019 09:51:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 908E46ED00
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2019 09:51:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jul 2019 02:51:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,310,1559545200"; d="scan'208";a="345782288"
Received: from hinestho-mobl1.amr.corp.intel.com (HELO [10.252.1.47])
 ([10.252.1.47])
 by orsmga005.jf.intel.com with ESMTP; 26 Jul 2019 02:51:02 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190723183842.20372-1-chris@chris-wilson.co.uk>
 <20190723183842.20372-7-chris@chris-wilson.co.uk>
 <f9893cc8-ae33-c7ba-9e20-467e54cfec85@linux.intel.com>
 <156413359650.30723.4362365063332311124@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <5454f79a-fa15-a811-6cb4-20e7177d7c32@linux.intel.com>
Date: Fri, 26 Jul 2019 10:51:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156413359650.30723.4362365063332311124@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 07/23] drm/i915/gt: Move the [class][inst]
 lookup for engines onto the GT
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

Ck9uIDI2LzA3LzIwMTkgMTA6MzMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA3LTI2IDEwOjIyOjA4KQo+Pgo+PiBPbiAyMy8wNy8yMDE5IDE5OjM4
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+IEkgcmVhZCBpdCwgcmVsYXRpdmVseSBydXNoZWQsIHNp
bmNlIHByZXNzdXJlIGtlZXBzIGdldHRpbmcgYXBwbGllZCEgOi8KPj4KPj4gVGhlcmUgYXJlIHNv
bWUgZ29vZCBwYXJ0cyBhbmQgaW1wbGVtZW50YXRpb24gbG9va3Mgb2theSwgYnV0IEkgYW0gbm90
Cj4+IHN1cmUgd2UgbmVlZCBhIHRyZWUuIE5vZGVzIGFyZSBiaWdnZXIgdGhhbiBwb2ludGVycywg
bWFuYWdlbWVudCBjb2RlIGlzCj4+IGJpZ2dlciwgbG9va3VwIGlzIHNsb3dlci4uIGlzIGl0IGEg
d2luIGFsbCB0aGluZ3MgY29uc2lkZXJlZD8KPiAKPiBBIGJpZyB3aW4gaW1vLiBDb25zaWRlciB0
aGF0IHRoaXMgaW50ZXJmYWNlIGlzIHB1cmVseSBkZWJ1ZywgdGhlIHByaW1hcnkKPiBpbnRlcmZh
Y2UgcnVudGltZSB3aWxsIGJlIHZpYSBndC0+ZW5naW5lcywgdGhlIG5vZGVzIGFyZSBtdWNoIHNt
YWxsZXIKPiB0aGFuIHRoZSBzcGFyc2UgYXJyYXkuCgpJIGd1ZXNzIGl0IGRlcGVuZHMuIE9uZSBy
Yl9ub2RlIGlzIHRocmVlIHBvaW50ZXJzIGFuZCBjYW4gb25seSBiZSB1c2VkIApmcm9tIGEgc2lu
Z2xlIHRyZWUuIE5vciBkb2VzIHRoZSBwYXRjaCByZXBsYWNlcyBhbGwgc3BhcnNlIGFycmF5cy4K
Cj4gSSBhbSBhZGFtYW50IHRoYXQgd2UgYXJlIG5vdCBhZGRpbmcgbW9yZSBzcGFyc2UgYXJyYXlz
LiBBIDJEIGxvb2t1cAo+IHRhYmxlIHNpbmNlIHRoYXQgbWF0Y2hlcyB0aGUgSFcsIGJ1dCBldmVu
IHRoZW4gd2UgbWF5IGp1c3QgZW5kIHVwIHdpdGgKPiBMVVQgKDEgZXh0cmEgcG9pbnRlciBsb2Fk
IHRvIHJlcGxhY2UgdGhlIHNwYXJzZSBhcnJheSB3aXRoIGEgY29tcGFjdD8pCgpJIGZlZWwgaXQn
cyB0b28gZWFybHkgZm9yIHRoaXMgc3BlY2lmaWMgcGF0Y2guCgpSZWdhcmRzLAoKVHZydGtvCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
