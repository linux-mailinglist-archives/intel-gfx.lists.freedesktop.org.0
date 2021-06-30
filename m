Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE0C43B808B
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jun 2021 12:05:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1DC46E97F;
	Wed, 30 Jun 2021 10:05:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3196C6E97D;
 Wed, 30 Jun 2021 10:05:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10030"; a="208271095"
X-IronPort-AV: E=Sophos;i="5.83,311,1616482800"; d="scan'208";a="208271095"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2021 03:05:43 -0700
X-IronPort-AV: E=Sophos;i="5.83,311,1616482800"; d="scan'208";a="457157823"
Received: from teutenbb-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.61.253])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2021 03:05:38 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, Dave Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
In-Reply-To: <YNtsfguvCRSROBUZ@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <YNtsfguvCRSROBUZ@intel.com>
Date: Wed, 30 Jun 2021 13:05:35 +0300
Message-ID: <87zgv7r7kg.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PULL] drm-intel-next-fixes
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
Cc: dim-tools@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyOSBKdW4gMjAyMSwgUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29t
PiB3cm90ZToKPiBIaSBEYXZlIGFuZCBEYW5pZWwsCj4KPiBIZXJlIGdvZXMgZHJtLWludGVsLW5l
eHQtZml4ZXMtMjAyMS0wNi0yOToKPgo+IFRoZSBiaWdnZXN0IGZpeCBpcyB0aGUgcmVzdG9yYXRp
b24gb2YgbW1hcCBpb2N0bCBmb3IgZ2VuMTIgaW50ZWdyYXRlZCBwYXJ0cwo+IHdoaWNoIGxhY2sg
d2FzIGJyZWFraW5nIEFETC1QIHdpdGggbWVkaWEgc3RhY2suCj4gQmVzaWRlcyB0aGF0IGEgc21h
bGwgc2VsZnRlc3QgZml4IGFuZCBhIHRoZW9yZXRpY2FsIG92ZXJmbG93IG9uCj4gaTkxNS0+cGlw
ZV90b19jcnRjX21hcHBpbmcuCgpNeSBsYXN0IGZpeGVzIHB1bGwgZm9yIHY1LjEzIGZlbGwgYmV0
d2VlbiB0aGUgY3JhY2tzIFsxXS4gVGhlcmUgd2FzIG9uZQpzdGFibGUgd29ydGh5IGZpeCwgYnV0
IHNpbmNlIGl0IHdhcyBzdGlsbCBpbiBkcm0taW50ZWwtZml4ZXMgd2hlbiB5b3UKcmFuIGRpbSBj
aGVycnktcGljay1uZXh0LWZpeGVzLCBpdCB3YXMgc2tpcHBlZCBmb3IgZHJtLWludGVsLW5leHQt
Zml4ZXMuCgpJJ3ZlIG5vdyBkcm9wcGVkIHRoZSBjb21taXQgYW5kIHB1c2hlZCB2NS4xMyB0byBk
cm0taW50ZWwtZml4ZXMsIGFzCndlJ3JlIHBhc3QgdGhhdCBwb2ludC4gU3Vic2VxdWVudCBkaW0g
Y2hlcnJ5LXBpY2stbmV4dC1maXhlcyBzaG91bGQgcGljawppdCB1cCBub3cuCgpQbGVhc2UgZG8g
YW5vdGhlciBuZXh0IGZpeGVzIHB1bGwgcmVxdWVzdCB3aXRoIHRoYXQuIChJdCdzIG9rYXkgdG8g
cHVsbAp0aGlzIG9uZSBhbHJlYWR5IHRob3VnaCwgZG9lc24ndCBtYWtlIGEgZGlmZmVyZW5jZS4p
CgoKQlIsCkphbmkuCgoKWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvODdjenNidTE1ci5m
c2ZAaW50ZWwuY29tCgoKCj4KPiBUaGFua3MsCj4gUm9kcmlnby4KPgo+IFRoZSBmb2xsb3dpbmcg
Y2hhbmdlcyBzaW5jZSBjb21taXQgMWJkOGE3ZGMyOGMxYzQxMGYxY2VlZmFlMWYyYTk3YzA2ZDFh
NjdjMjoKPgo+ICAgTWVyZ2UgdGFnICdleHlub3MtZHJtLW5leHQtZm9yLXY1LjE0JyBvZiBnaXQ6
Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvZGFlaW5raS9kcm0tZXh5
bm9zIGludG8gZHJtLW5leHQgKDIwMjEtMDYtMTEgMTQ6MTk6MTIgKzEwMDApCj4KPiBhcmUgYXZh
aWxhYmxlIGluIHRoZSBHaXQgcmVwb3NpdG9yeSBhdDoKPgo+ICAgZ2l0Oi8vYW5vbmdpdC5mcmVl
ZGVza3RvcC5vcmcvZHJtL2RybS1pbnRlbCB0YWdzL2RybS1pbnRlbC1uZXh0LWZpeGVzLTIwMjEt
MDYtMjkKPgo+IGZvciB5b3UgdG8gZmV0Y2ggY2hhbmdlcyB1cCB0byBjOTBjNGM2NTc0ZjNmZWFm
MjIwM2I1NjcxZGIxOTA3YTFlMTVjNjUzOgo+Cj4gICBkcm0vaTkxNTogUmVpbnN0YXRlIHRoZSBt
bWFwIGlvY3RsIGZvciBzb21lIHBsYXRmb3JtcyAoMjAyMS0wNi0yOCAwNzo0Mzo1NiAtMDQwMCkK
Pgo+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0KPiBUaGUgYmlnZ2VzdCBmaXggaXMgdGhlIHJlc3RvcmF0aW9uIG9mIG1tYXAg
aW9jdGwgZm9yIGdlbjEyIGludGVncmF0ZWQgcGFydHMKPiB3aGljaCBsYWNrIHdhcyBicmVha2lu
ZyBBREwtUCB3aXRoIG1lZGlhIHN0YWNrLgo+IEJlc2lkZXMgdGhhdCBhIHNtYWxsIHNlbGZ0ZXN0
IGZpeCBhbmQgYSB0aGVvcmV0aWNhbCBvdmVyZmxvdyBvbgo+IGk5MTUtPnBpcGVfdG9fY3J0Y19t
YXBwaW5nLgo+Cj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLQo+IENocmlzIFdpbHNvbiAoMSk6Cj4gICAgICAgZHJtL2k5MTUv
c2VsZnRlc3RzOiBSZW9yZGVyIHRhc2tsZXRfZGlzYWJsZSB2cyBsb2NhbF9iaF9kaXNhYmxlCj4K
PiBKYW5pIE5pa3VsYSAoMSk6Cj4gICAgICAgZHJtL2k5MTUvZHNjOiBhYnN0cmFjdCBoZWxwZXJz
IHRvIGdldCBiaWdqb2luZXIgcHJpbWFyeS9zZWNvbmRhcnkgY3J0Ywo+Cj4gVGhvbWFzIEhlbGxz
dHLDtm0gKDEpOgo+ICAgICAgIGRybS9pOTE1OiBSZWluc3RhdGUgdGhlIG1tYXAgaW9jdGwgZm9y
IHNvbWUgcGxhdGZvcm1zCj4KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMgICAgICAgfCAgNyArKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3R5cGVzLmggfCAgOCArKysrCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfdmRzYy5jICAgICAgICAgIHwgNDAgKysrKysrKysrKystLS0tLQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuaCAgICAgICAgICB8ICAxICsKPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYyAgICAgICAgICAgfCAgNyAr
LS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfZXhlY2xpc3RzLmMgICAgICAg
fCA1NSArKysrKysrKysrKysrLS0tLS0tLS0tCj4gIDYgZmlsZXMgY2hhbmdlZCwgNzYgaW5zZXJ0
aW9ucygrKSwgNDIgZGVsZXRpb25zKC0pCgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291
cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
