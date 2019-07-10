Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03CBB64871
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 16:33:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26D598953E;
	Wed, 10 Jul 2019 14:33:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D07758953E
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 14:33:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 07:33:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,474,1557212400"; d="scan'208";a="341091190"
Received: from avishaiz-mobl2.ger.corp.intel.com (HELO [10.249.32.197])
 ([10.249.32.197])
 by orsmga005.jf.intel.com with ESMTP; 10 Jul 2019 07:33:33 -0700
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190710141257.1062-1-stanislav.lisovskiy@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <ab8278e1-2270-9207-9b16-a0d0f9821ca8@linux.intel.com>
Date: Wed, 10 Jul 2019 16:33:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190710141257.1062-1-stanislav.lisovskiy@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix wrong escape clock divisor
 init for GLK
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
Cc: jani.nikula@intel.com, martin.peres@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMTAtMDctMjAxOSBvbSAxNjoxMiBzY2hyZWVmIFN0YW5pc2xhdiBMaXNvdnNraXk6Cj4gQWNj
b3JkaW5nIHRvIEJzcGVjIGNsb2NrIGRpdmlzb3IgcmVnaXN0ZXJzIGluIEdlbWluaUxha2UKPiBz
aG91bGQgYmUgaW5pdGlhbGl6ZWQgYnkgc2hpZnRpbmcgMSg8PCkgdG8gYW1vdW50IG9mIGNvcnJl
c3BvbmRlbnQKPiBkaXZpc29yLiBXaGlsZSBpOTE1IHdhcyB3cml0aW5nIGFsbCB0aGlzIHRpbWUg
dGhhdCB2YWx1ZSBhcyBpcy4KPgo+IFN1cnByaXNpbmdseSB0aGF0IGl0IGJ5IGFjY2lkZW50IHdv
cmtlZCwgdW50aWwgd2UgbWV0IHNvbWUgaXNzdWVzCj4gd2l0aCBNaWNyb3RlY2ggRXRhYi4KPgo+
IFNpZ25lZC1vZmYtYnk6IFN0YW5pc2xhdi5MaXNvdnNraXlAaW50ZWwuY29tCj4gQnVnemlsbGE6
IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwODgyNgo+IC0t
LQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3Zsdl9kc2lfcGxsLmMgfCA0ICsrLS0K
PiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3Zsdl9kc2lfcGxsLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3Zsdl9kc2lfcGxsLmMKPiBpbmRleCA5OWNjM2Uy
ZTljMmMuLmYwMTZhNzc2YTM5ZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L3Zsdl9kc2lfcGxsLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L3Zsdl9kc2lfcGxsLmMKPiBAQCAtMzk2LDggKzM5Niw4IEBAIHN0YXRpYyB2b2lkIGdsa19kc2lf
cHJvZ3JhbV9lc2NfY2xvY2soc3RydWN0IGRybV9kZXZpY2UgKmRldiwKPiAgCWVsc2UKPiAgCQl0
eGVzYzJfZGl2ID0gMTA7Cj4gIAo+IC0JSTkxNV9XUklURShNSVBJT19UWEVTQ19DTEtfRElWMSwg
dHhlc2MxX2RpdiAmIEdMS19UWF9FU0NfQ0xLX0RJVjFfTUFTSyk7Cj4gLQlJOTE1X1dSSVRFKE1J
UElPX1RYRVNDX0NMS19ESVYyLCB0eGVzYzJfZGl2ICYgR0xLX1RYX0VTQ19DTEtfRElWMl9NQVNL
KTsKPiArCUk5MTVfV1JJVEUoTUlQSU9fVFhFU0NfQ0xLX0RJVjEsICgxIDw8ICh0eGVzYzFfZGl2
IC0gMSkpICYgR0xLX1RYX0VTQ19DTEtfRElWMV9NQVNLKTsKPiArCUk5MTVfV1JJVEUoTUlQSU9f
VFhFU0NfQ0xLX0RJVjIsICgxIDw8ICh0eGVzYzJfZGl2IC0gMSkpICYgR0xLX1RYX0VTQ19DTEtf
RElWMl9NQVNLKTsKPiAgfQo+ICAKPiAgLyogUHJvZ3JhbSBCWFQgTWlwaSBjbG9ja3MgYW5kIGRp
dmlkZXJzICovCgpNaXNzaW5nIGEgZml4ZXMgdGFnPwoKZmluZCB0aGUgb3JpZ2luYWwgY29tbWl0
IHRoYXQgaW50cm9kdWNlZCB0aGlzLCB0aGVuIHJ1biBkaW0gZml4ZXMgJGNvbW1pdGlkLgoKQ2hl
ZXJzLAoKTWFhcnRlbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
