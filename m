Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA8E72C5C
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2019 12:32:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CCD46E492;
	Wed, 24 Jul 2019 10:32:51 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA1BF6E492
 for <Intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2019 10:32:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jul 2019 03:32:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,302,1559545200"; d="scan'208";a="368747081"
Received: from jsartini-mobl.ger.corp.intel.com (HELO [10.252.0.141])
 ([10.252.0.141])
 by fmsmga005.fm.intel.com with ESMTP; 24 Jul 2019 03:32:49 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20190724100716.10731-1-tvrtko.ursulin@linux.intel.com>
 <20190724100716.10731-2-tvrtko.ursulin@linux.intel.com>
 <156396328470.31349.6273691818655517005@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <a0378a8b-89b2-a999-6dc6-2f67a87a420b@linux.intel.com>
Date: Wed, 24 Jul 2019 11:32:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156396328470.31349.6273691818655517005@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915: Avoid one round-tip through
 global i915 when getting to gt
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

Ck9uIDI0LzA3LzIwMTkgMTE6MTQsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA3LTI0IDExOjA3OjEzKQo+PiBGcm9tOiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Pgo+PiBHbyB0byBndC0+YWN0aXZlX3JpbmdzIHZp
YSB0aW1lbGluZSBpbnN0ZWFkIG9mIGdsb2JhbCBpOTE1IGZvciBtb3JlCj4+IGxvZ2ljYWwgb3Jn
YW5pemF0aW9uLgo+IAo+IEdyciwgSSd2ZSBiZWVuIHNlbmRpbmcgcGF0Y2hlcyB0byBraWxsIHRo
aXMgZm9yIG92ZXIgNiBtb250aHMuCgpBcyBwYXJ0IG9mIHNvbWV0aGluZyBiaWdnZXIgSSBiZXQ/
IDopCgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
