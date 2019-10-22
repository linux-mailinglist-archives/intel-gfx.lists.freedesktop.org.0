Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EF55DFEBE
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 09:53:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C78656E424;
	Tue, 22 Oct 2019 07:53:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA8D96E424
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 07:52:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 00:52:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,326,1566889200"; d="scan'208";a="372437518"
Received: from vanderss-mobl1.ger.corp.intel.com ([10.249.254.134])
 by orsmga005.jf.intel.com with ESMTP; 22 Oct 2019 00:52:57 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191021104811.25663-1-abdiel.janulgue@linux.intel.com>
 <20191021104811.25663-4-abdiel.janulgue@linux.intel.com>
 <157166491547.29536.1978879286617090513@skylake-alporthouse-com>
From: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Message-ID: <96f79055-5f3a-7774-825e-00855105b7d4@linux.intel.com>
Date: Tue, 22 Oct 2019 10:52:55 +0300
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157166491547.29536.1978879286617090513@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915: cpu-map based dumb buffers
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiAyMS8xMC8yMDE5IDE2LjM1LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gUXVvdGluZyBBYmRp
ZWwgSmFudWxndWUgKDIwMTktMTAtMjEgMTE6NDg6MTApCj4+ICtpbnQKPj4gK2k5MTVfZ2VtX21t
YXBfZHVtYihzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUsCj4+ICsgICAgICAgICAgICAgICAgIHN0cnVj
dCBkcm1fZGV2aWNlICpkZXYsCj4+ICsgICAgICAgICAgICAgICAgIHUzMiBoYW5kbGUsCj4+ICsg
ICAgICAgICAgICAgICAgIHU2NCAqb2Zmc2V0KQo+PiArewo+PiArICAgICAgIHJldHVybiBfX2Fz
c2lnbl9nZW1fb2JqZWN0X21tYXBfZGF0YShmaWxlLCBoYW5kbGUsIEk5MTVfTU1BUF9UWVBFX1dD
LAo+IAo+IEl0IHN0aWxsIG5lZWRzIHRvIGRvIGJvb3RfY3B1X2hhcyhQQVQpLAoKU28gd2UgcHJv
YmFibHkgbmVlZCBhIHNwZWNpYWwgdXNlLWNhc2UgZm9yIEdUVCBtbWFwcyBpbiB0aG9zZSBraW5k
IG9mCmh3LCBubz8KCgogYnV0IGl0IGxvb2tzIGxpa2UKPiBrbXNfZnJvbnRidWZmZXIgaXMgbm90
IGRvaW5nIGVub3VnaCBkaXJ0eWZiIGZvciBpdHMgZHVtYiBidWZmZXIgdXNhZ2UuCj4gQmFkIElH
VCAoaXQncyBlaXRoZXIgYSBidWcgaW4gdGhlIHRlc3QgZm9yIG5vdCBhZGhlcmluZyB0byB0aGUg
dWFiaQo+IGZvciBkdW1iIGJ1ZmZlcnMsIG9yIHdlIGhhdmUgc29tZSB0cmFja2luZyBidWcgaW50
ZWxfZnJvbnRidWZmZXIpLgo+IC1DaHJpcwo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
