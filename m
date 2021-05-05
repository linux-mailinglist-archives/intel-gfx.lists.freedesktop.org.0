Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F571373838
	for <lists+intel-gfx@lfdr.de>; Wed,  5 May 2021 11:57:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACE506E486;
	Wed,  5 May 2021 09:56:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C420A6E486;
 Wed,  5 May 2021 09:56:57 +0000 (UTC)
IronPort-SDR: TuWt6y/T5xveLFK3kYua4mT+S2KDanB9zE12BWXCYtF2rQGNXtMXPQmlNXIy9dasKiOtor2itm
 bLN5oTse6I3g==
X-IronPort-AV: E=McAfee;i="6200,9189,9974"; a="185306597"
X-IronPort-AV: E=Sophos;i="5.82,274,1613462400"; d="scan'208";a="185306597"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2021 02:56:57 -0700
IronPort-SDR: wli7nKK1Fk6TKmMmNSG+Vl6MnKbXa6zg05dI6xfebKk++izdvpUUHWymHxRxtLqDB6dG877Al6
 UsqQlTAptFdQ==
X-IronPort-AV: E=Sophos;i="5.82,274,1613462400"; d="scan'208";a="433734781"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.13.142])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2021 02:56:55 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Date: Wed, 05 May 2021 11:56:53 +0200
Message-ID: <2304292.ECZNHGQPT7@jkrzyszt-mobl1.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <bd835d14-d17d-390f-5dff-2348e220be60@intel.com>
References: <20210430161808.323225-1-janusz.krzysztofik@linux.intel.com>
 <bd835d14-d17d-390f-5dff-2348e220be60@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC PATCH i-g-t] lib/i915/perf: Fix non-card0
 processing
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

SGkgTGlvbmVsLAoKT24gcG9uaWVkemlhxYJlaywgMyBtYWphIDIwMjEgMDk6MDc6MDkgQ0VTVCBM
aW9uZWwgTGFuZHdlcmxpbiB3cm90ZToKPiBPbiAzMC8wNC8yMDIxIDE5OjE4LCBKYW51c3ogS3J6
eXN6dG9maWsgd3JvdGU6Cj4gPiBJR1QgaTkxNS9wZXJmIGxpYnJhcnkgZnVuY3Rpb25zIG5vdyBh
bHdheXMgb3BlcmF0ZSBvbiBzeXNmcyBwZXJmCj4gPiBhdHRyaWJ1dGVzIG9mIGNhcmQwIGRldmlj
ZSBub2RlLCBubyBtYXR0ZXIgd2hpY2ggRFJNIGRldmljZSBmZCBhIHVzZXIKPiA+IHBhc3Nlcy4g
IFRoZSBpbnRlbnRpb24gd2FzIHRvIGFsd2F5cyBzd2l0Y2ggdG8gcHJpbWFyeSBkZXZpY2Ugbm9k
ZSBpZgo+ID4gYSB1c2VyIHBhc3NlcyBhIHJlbmRlciBkZXZpY2Ugbm9kZSBmZCwgYnV0IHRoYXQg
YnJlYWtzIGhhbmRsaW5nIG9mCj4gPiBub24tY2FyZDAgZGV2aWNlcy4KPiA+Cj4gPiBJbnN0ZWFk
IG9mIGZvcmNpYmx5IHVzaW5nIERSTSBkZXZpY2UgbWlub3IgbnVtYmVyIDAgd2hlbiBvcGVuaW5n
IGEKPiA+IGRldmljZSBzeXNmcyBhcmVhLCBjb252ZXJ0IGRldmljZSBtaW5vciBudW1iZXIgb2Yg
YSB1c2VyIHBhc3NlZCBkZXZpY2UKPiA+IGZkIHRvIHRoZSBtaW5vciBudW1iZXIgb2YgcmVzcGVj
dGl2ZSBwcmltYXJ5IChjYXJkWCkgZGV2aWNlIG5vZGUuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTog
SmFudXN6IEtyenlzenRvZmlrIDxqYW51c3oua3J6eXN6dG9maWtAbGludXguaW50ZWwuY29tPgo+
ID4gLS0tCj4gPiAgIGxpYi9pOTE1L3BlcmYuYyB8IDQgKystLQo+ID4gICAxIGZpbGUgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9s
aWIvaTkxNS9wZXJmLmMgYi9saWIvaTkxNS9wZXJmLmMKPiA+IGluZGV4IDU2ZDVjMGIzYS4uMzM2
ODI0ZGY3IDEwMDY0NAo+ID4gLS0tIGEvbGliL2k5MTUvcGVyZi5jCj4gPiArKysgYi9saWIvaTkx
NS9wZXJmLmMKPiA+IEBAIC0zNzYsOCArMzc2LDggQEAgb3Blbl9tYXN0ZXJfc3lzZnNfZGlyKGlu
dCBkcm1fZmQpCj4gPiAgIAlpZiAoZnN0YXQoZHJtX2ZkLCAmc3QpIHx8ICFTX0lTQ0hSKHN0LnN0
X21vZGUpKQo+ID4gICAgICAgICAgICAgICAgICAgcmV0dXJuIC0xOwo+ID4gICAKPiA+IC0gICAg
ICAgIHNucHJpbnRmKHBhdGgsIHNpemVvZihwYXRoKSwgIi9zeXMvZGV2L2NoYXIvJWQ6MCIsCj4g
PiAtICAgICAgICAgICAgICAgICBtYWpvcihzdC5zdF9yZGV2KSk7Cj4gPiArICAgICAgICBzbnBy
aW50ZihwYXRoLCBzaXplb2YocGF0aCksICIvc3lzL2Rldi9jaGFyLyVkOiVkIiwKPiA+ICsgICAg
ICAgICAgICAgICAgIG1ham9yKHN0LnN0X3JkZXYpLCBtaW5vcihzdC5zdF9yZGV2KSAmIH4xMjgp
Owo+IAo+IAo+IElzbid0IGl0IG1pbm9yKHN0LnN0X3JkZXYpICYgMHhmZiA/IAoKRGlkIHlvdSBt
ZWFuIDB4N2Y/Cgo+IG9yIGV2ZW4gMHgzZiA/Cj4gCj4gTG9va3MgbGlrZSAvZGV2L2RyaS9jb250
cm9sRDY0IGNhbiBleGlzdCB0b28uCgpOb3QgYW55IGxvbmdlciwgc2VlIGNvbW1pdCAwZDQ5ZjMw
M2U4YTcgKCJkcm06IHJlbW92ZSBhbGwgY29udHJvbCBub2RlIGNvZGUiKS4KCkhvd2V2ZXIsIG15
IGFwcHJvYWNoIG9mIGFwcGx5aW5nIGEgbWFzayBpcyBvdmVyc2ltcGxpZmllZC4gIE1pbm9yIG51
bWJlcnMgZm9yIApkaWZmZXJlbnQgbm9kZSB0eXBlcyAocHJpbWFyeSBhbmQgcmVuZGVyKSBhcmUg
aGFuZGxlZCBzZXBhcmF0ZWx5LiAgSSdtIGdvaW5nIAp0byBwcm9wb3NlIGEgbWV0aG9kIHNpbWls
YXIgdG8gdGhhdCBpbXBsZW1lbnRlZCBpbiBpZ3RfZGVidWdmc19wYXRoKCkuCgpUaGFua3MsCkph
bnVzegoKCj4gCj4gCj4gLUxpb25lbAo+IAo+IAo+ID4gICAKPiA+ICAgCXJldHVybiBvcGVuKHBh
dGgsIE9fRElSRUNUT1JZKTsKPiA+ICAgfQo+IAo+IAo+IAoKCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
