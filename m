Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4C13C5FCB
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jul 2021 17:51:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE75589D2E;
	Mon, 12 Jul 2021 15:51:50 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4439C89CF6;
 Mon, 12 Jul 2021 15:51:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10043"; a="189688690"
X-IronPort-AV: E=Sophos;i="5.84,234,1620716400"; d="scan'208";a="189688690"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2021 08:51:46 -0700
X-IronPort-AV: E=Sophos;i="5.84,234,1620716400"; d="scan'208";a="561785903"
Received: from aaroncar-mobl2.ger.corp.intel.com (HELO [10.213.240.41])
 ([10.213.240.41])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2021 08:51:44 -0700
To: Daniel Vetter <daniel@ffwll.ch>
References: <20210712121719.891536-1-tvrtko.ursulin@linux.intel.com>
 <20210712121719.891536-2-tvrtko.ursulin@linux.intel.com>
 <YOxUuxLqpIDEsmMT@phenom.ffwll.local>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <ba1a6cff-790f-a1e5-1cad-63f429b01f93@linux.intel.com>
Date: Mon, 12 Jul 2021 16:51:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <YOxUuxLqpIDEsmMT@phenom.ffwll.local>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915: Explicitly track DRM clients
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
Cc: Intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDEyLzA3LzIwMjEgMTU6NDIsIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4gT24gTW9uLCBKdWwg
MTIsIDIwMjEgYXQgMDE6MTc6MTJQTSArMDEwMCwgVHZydGtvIFVyc3VsaW4gd3JvdGU6Cj4+IEZy
b206IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4+Cj4+IFRyYWNr
aW5nIERSTSBjbGllbnRzIG1vcmUgZXhwbGljaXRseSB3aWxsIGFsbG93IGxhdGVyIHBhdGNoZXMg
dG8KPj4gYWNjdW11bGF0ZSBwYXN0IGFuZCBjdXJyZW50IEdQVSB1c2FnZSBpbiBhIGNlbnRyYWxp
c2VkIHBsYWNlIGFuZCBhbHNvCj4+IGNvbnNvbGlkYXRlIGFjY2VzcyB0byBvd25pbmcgdGFzayBw
aWQvbmFtZS4KPj4KPj4gVW5pcXVlIGNsaWVudCBpZCBpcyBhbHNvIGFzc2lnbmVkIGZvciB0aGUg
cHVycG9zZSBvZiBkaXN0aW5ndWlzaGluZy8KPj4gY29uc29saWRhdGluZyBiZXR3ZWVuIG11bHRp
cGxlIGZpbGUgZGVzY3JpcHRvcnMgb3duZWQgYnkgdGhlIHNhbWUgcHJvY2Vzcy4KPj4KPj4gdjI6
Cj4+ICAgQ2hyaXMgV2lsc29uOgo+PiAgICogRW5jbG9zZSBuZXcgbWVtYmVycyBpbnRvIGRlZGlj
YXRlZCBzdHJ1Y3RzLgo+PiAgICogUHJvdGVjdCBhZ2FpbnN0IGZhaWxlZCBzeXNmcyByZWdpc3Ry
YXRpb24uCj4+Cj4+IHYzOgo+PiAgICogc3lzZnNfYXR0cl9pbml0Lgo+Pgo+PiB2NDoKPj4gICAq
IEZpeCBmb3IgaW50ZXJuYWwgY2xpZW50cy4KPj4KPj4gdjU6Cj4+ICAgKiBVc2UgY3ljbGljIGlk
YSBmb3IgY2xpZW50IGlkLiAoQ2hyaXMpCj4+ICAgKiBEbyBub3QgbGVhayBwaWQgcmVmZXJlbmNl
LiAoQ2hyaXMpCj4+ICAgKiBUaWR5IGNvZGUgd2l0aCBzb21lIGxvY2Fscy4KPj4KPj4gdjY6Cj4+
ICAgKiBVc2UgeGFfYWxsb2NfY3ljbGljIHRvIHNpbXBsaWZ5IGxvY2tpbmcuIChDaHJpcykKPj4g
ICAqIE5vIG5lZWQgdG8gdW5yZWdpc3RlciBpbmRpdmlkaWFsIHN5c2ZzIGZpbGVzLiAoQ2hyaXMp
Cj4+ICAgKiBSZWJhc2Ugb24gdG9wIG9mIGZwcml2IGtyZWYuCj4+ICAgKiBUcmFjayBjbGllbnQg
Y2xvc2VkIHN0YXR1cyBhbmQgcmVmbGVjdCBpbiBzeXNmcy4KPj4KPj4gdjc6Cj4+ICAgKiBNYWtl
IGRybV9jbGllbnQgbW9yZSBzdGFuZGFsb25lIGNvbmNlcHQuCj4+Cj4+IHY4Ogo+PiAgICogU2lt
cGxpZnkgc3lzZnMgc2hvdy4gKENocmlzKQo+PiAgICogQWx3YXlzIHRyYWNrIG5hbWUgYW5kIHBp
ZC4KPj4KPj4gdjk6Cj4+ICAgKiBGaXggY3ljbGljIGlkIGFzc2lnbm1lbnQuCj4+Cj4+IHYxMDoK
Pj4gICAqIE5vIG5lZWQgZm9yIGEgbXV0ZXggYXJvdW5kIHhhX2FsbG9jX2N5Y2xpYy4KPj4gICAq
IFJlZmFjdG9yIHN5c2ZzIGludG8gb3duIGZ1bmN0aW9uLgo+PiAgICogVW5yZWdpc3RlciBzeXNm
cyBiZWZvcmUgZnJlZWluZyBwaWQgYW5kIG5hbWUuCj4+ICAgKiBNb3ZlIGNsaWVudHMgc2V0dXAg
aW50byBvd24gZnVuY3Rpb24uCj4+Cj4+IHYxMToKPj4gICAqIENhbGwgY2xpZW50cyBpbml0IGRp
cmVjdGx5IGZyb20gZHJpdmVyIGluaXQuIChDaHJpcykKPj4KPj4gdjEyOgo+PiAgICogRG8gbm90
IGZhaWwgY2xpZW50IGFkZCBvbiBpZCB3cmFwLiAoTWFjaWVqKQo+Pgo+PiB2MTMgKEx1Y2FzKTog
UmViYXNlLgo+Pgo+PiB2MTQ6Cj4+ICAgKiBEcm9wcGVkIHN5c2ZzIGJpdHMuCj4+Cj4+IFNpZ25l
ZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4+IFJl
dmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4gIyB2MTEK
Pj4gUmV2aWV3ZWQtYnk6IEFyYXZpbmQgSWRkYW1zZXR0eSA8YXJhdmluZC5pZGRhbXNldHR5QGlu
dGVsLmNvbT4gIyB2MTEKPj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+Cj4gCj4gT24gdGhlIGltcGxlbWVudGF0aW9uOiBJJ20gbm90IGNsZWFy
IHdoeSB0aGlzIGlzIGEgc2VwYXJhdGUgb2JqZWN0LiBBbGwKPiB0aGF0IHNlZW1zIHRvIGFjaGll
dmUgaXMgbWFrZSB0aGUgbGlmZXRpbSBmdW4gd2UgaGF2ZSBpbiBoZXJlIGV2ZW4gbW9yZQo+IGFu
bm95aW5nLCBmb3Igbm90IHJlYWwgZ2Fpbj8KPiAKPiBXaGF0J3MgdGhlIHJlYXNvbnMgZm9yIHRo
aXMgc2VwYXJhdGUgaTkxNV9kcm1fY2xpZW50IHN0cnVjdD8gVGhlIGNvbW1pdAo+IG1lc3NhZ2Ug
dGFsa3MgYWJvdXQgZGUtZHVwaW5nIHRoZXNlIHdpdGhpbiB0aGUgc2FtZSBwcm9jZXNzLCBidXQg
d2l0aAo+IGZkaW5mbyBJJ20gbm90IHNlZWluZyB0aGUgcmVsZXZhbmNlIG9mIHRoaXMgYW55bW9y
ZS4KCkFGQUlSIEkgc3RhcnRlZCB3aXRoIHRoZSBuZXcgZmllbGRzIGRpcmVjdGx5IGluIGZpbGVf
cHJpdiAobm90ZSAKZmlsZV9wcml2IHRoZW4gbmVlZGVkIHRvIGJlIGZyZWVkIHZpYSBSQ1UgZHVl
IHN5c2ZzIGFjY2VzcyB0byBpdCEpLCBidXQgCnRoZW4gdGhlIGlkZWEgdGhlcmUgd2FzIHRvIGNv
bnNvbGlkYXRlIG5ldyBtZW1iZXJzIGludG8gYSBzZXBhcmF0ZSBzdHJ1Y3QuCgpQbGFuIHdhcyAo
YW5kIHN0aWxsIGlzIGluIGludGVybmFsKSB0aGF0IHRoZSBjb25jZXB0IGZvciBEUk0gY2xpZW50
IHdpbGwgCmdhaW4gbW9yZSB1c2Vycy91c2VmdWxuZXNzIGFuZCB3b3VsZCBiZW5lZml0IGZyb20g
ZW5jYXBzdWxhdGlvbiBmcm9tIHRoZSAKc3RhcnQuCgpGb3IgaW5zdGFuY2UgYXQgcGF0Y2ggMyBp
biB0aGUgc2VyaWVzIGl0IGRvZXMgY29uc29saWRhdGUgaTkxNSB1c2VycyBvZiAKY3R4LT5waWQg
dG8gZ28gdmlhIGN0eC0+Y2xpZW50IChwcm9jZXNzIG5hbWUgYXMgd2VsbCkuIFRob3NlIGFyZSBh
c3luYyAKZW50cnkgcG9pbnRzIChjb21wYXJlZCB0byBmaWxlX3ByaXYgbGlmZXRpbWUpIGZyb20g
ZXJyb3IgY2FwdHVyZSBhbmQgCmRlYnVnZnMuIEhtIG5vLCBkZWJ1Z2ZzIGlzIHRoZXJlIG5vIG1v
cmUsIG9ubHkgZXJyb3IgY2FwdHVyZSByZW1haW5zLgoKQXMgeW91IHNheSBzaW5jZSB0aGUgY2hh
bmdlIG9mIGRpcmVjdGlvbiB0byB1c2UgZmRpbmZvLCB0aGUgYXN5bmNocm9ub3VzIAplbnRyeSBw
YXRoIGludG8gdGhvc2UgbWVtYmVycyBmcm9tIHN5c2ZzIGlzIGdvbmUuIEhlbmNlIGlmIHRoZXkg
d2VyZSAKbW92ZWQgYmFjayB0byBmaWxlX3ByaXYsIGFuZCBhc3N1bWluZyBjdHgtPnBpZC9uYW1l
IGNoYW5nZXMgdG8gYmUgCnVuZG9uZSwgdGhlbiBmaWxlX3ByaXYgY291bGQgcmVtYWluIGJlaW5n
IGltbWVkaWF0ZWx5IGZyZWVkIG9uIGZpbGUgCmNsb3NlLiBPciBwZXJoYXBzIHdlIGxvc2UgZWFz
eSBwaWQvbmFtZSB1cGRhdGUgZm9yIGZpbGVzIHBhc3NlZCBvdmVyIApzb2NrZXRzLiBJJ2QgaGF2
ZSB0byB0aGluayBhYm91dCB0aGF0IGEgYml0IGRlZXBlci4KCkJ1dCBlc3NlbnRpYWxseSBJIHRo
aW5rIGN0eC0+Y2xpZW50IGlzIGEgY2xlYW5lciBkZXNpZ24gdGhhdCBjdHgtPnBpZCAKYW5kIGdp
dmVuIGVycm9yIGNhcHR1cmUgYW5kIGRlYnVnZnMgY2FuIGJlIGFzeW5jIHRvIGZpbGVfcHJpdiBs
aWZldGltZSAKdGhhdCdzIGEgYmVuZWZpdCBmb3IgbWUuCgpXaXRoIHJlZ2FyZHMgdG8gZGUtZHVw
aW5nIG11bHRpcGxlIGZkaW5mbyBlbnRyaWVzIHZpYSBjbGllbnQtPmlkIC0gdGhhdCAKaXMgYWN0
dWFsbHkgdGhlIG9wcG9zaXRlIGZyb20gd2hhdCB5b3Ugc3VnZ2VzdC4gV2hlcmVhcyB3aXRoIHRo
ZSBzeXNmcyAKYXBwcm9hY2ggd2UgaGFkIG9uZSBlbnRyeSBwZXIgY2xpZW50LCB3aXRoIGZkaW5m
byB3ZSBoYXZlIGR1cGxpY2F0ZXMuIFNvIApjbGllbnQtPmlkIGlzIGVzc2VudGlhbCBmb3IgdXNl
cnNwYWNlIHRvIGNvcnJlY3RseSBhY2NvdW50IHBlciBjbGllbnQgCnN0YXRpc3RpY3MuCgo+IEFs
c28sIHdpdGggdGhlIGZkaW5mbyBhcHByb2FjaCwgd2h5IGRvIHdlIHN0aWxsIG5lZWQgdG8gZXZl
biB0cmFjayB0aGUKPiBwaWQ/IFRoYXQgY2FuIGJlIGFsbCBmaWd1cmVkIG91dCBmcm9tIHByb2Mg
bm93LCB3aXRoIG11Y2ggY2xlYW5lcgo+IHNlbWFudGljcy4KCk5vdCBzdXJlIHdoYXQgeW91IG1l
YW4gaGVyZS4gQXMgZXhwbGFpbmVkIGFib3ZlIHBpZCBpcyB0cmFja2VkIGFzIApyZXBsYWNlbWVu
dCBmb3IgY3VycmVudCBjdHgtPnBpZCB0cmFja2luZy4gU28gZm9yIHVzZXMgaW5zaWRlIGk5MTUu
CgpBbHNvIG5vdGUgdGhhdCBldmVuIGZyb20gdXNlcnNwYWNlIHNlbWFudGljcyBvZiBnZXR0aW5n
IHRoZSBwaWQgZnJvbSAKcHJvY2ZzIGlzIG5vdCBuZWNlc3NhcmlseSBjbGVhbiwgc2luY2UgYWN0
dWFsbHkgdGhyZWUgZGlmZmVyZW50IGZpbGUgCmRlc2NyaXB0b3JzIG5lZWQgdG8gYmUgb3BlbiB0
byBnZXQgdGhlIHdob2xlIHNldCBvZiBkYXRhLgoKL3Byb2MvPHBpZD4vZmRpbmZvLzxmZD4gLSBv
YnZpb3VzbHkKL3Byb2MvPHBpZD4vZmQvPGZkPiAtIHRvIGZpbHRlciBvdXQgbm9uIGRybSBmZHMg
YXZvaWRpbmcgdGV4dCBwYXJzaW5nIAphYm92ZSBmaWxlCi9wcm9jLzxwaWQ+L3N0YXQgLSB0byBn
ZXQgdGhlIHBpZAoKU2luY2UgaW4gdGhlIGludGVsX2dwdV90b3AgY29udmVyc2lvbiBJIGRvIGtl
ZXAgdGhlIC9wcm9jLzxwaWQ+IG9wZW4gYW5kIApkbyB0aGUgcmVzdCB2aWEgb3BlbmF0LCBJIGFt
IGhvcGluZyBhdCBsZWFzdCB0aGF0J3Mgc2FmZSBhZ2FpbnQgcGlkIApzd2Fwcy4gRm9yIHRoZSBm
aWxlIGRlc2NyaXB0b3IgY3Jvc3MgY2hlY2sgaXQgaXMgbW9yZSBxdWVzdGlvbmFibGUgYnV0IAp3
b3JzdCBjYXNlIHRoZSBkcm0gZmQgY2hlY2sgdmlhIHN0YXQgY291bGQgYmUgZHJvcHBlZCBhbmQg
cmVwbGFjZWQgd2l0aCAKbW9yZSBmZGluZm8gdGV4dCBwYXJzaW5nLgoKSGF2aW5nIHRoZSBwaWQg
YW5kIHByb2Nlc3MgbmFtZSBpbiBmZGluZm8gaGVuY2UgbWFrZXMgdGhpcyBlYXNpZXIgYW5kIApw
b3RlbnRpYWxseSBzYWZlci4gR2l2ZW4gaG93IHdlIGFscmVhZHkgc3RvcmUgY3R4LT5waWQgSSB0
aGluayB0aGF0IApzaG91bGQgYmUgZmluZS4KCkZXSVcgSSBzdGlsbCB0aGluayB0aGUgd2hvbGUg
YXBwcm9hY2ggaXMgYmFkIHNpbmNlIG51bWJlciBvZiBvcGVyYXRpb25zIApyZXF1aXJlZCBzY2Fs
ZXMgd2l0aCBudW1iZXIgb2Ygbm9uIGRybSBwcm9jZXNzZXMgKGV2ZW4gdGhyZWFkcykgb24gdGhl
IApzeXN0ZW0uCgpSZWdhcmRzLAoKVHZydGtvCgo+PiAtLS0KPj4gICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9NYWtlZmlsZSAgICAgICAgICB8ICAgNSArLQo+PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJtX2NsaWVudC5jIHwgMTEzICsrKysrKysrKysrKysrKysrKysrKysrKysKPj4gICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RybV9jbGllbnQuaCB8ICA2MSArKysrKysrKysrKysr
Cj4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAgICAgfCAgIDYgKysKPj4g
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICB8ICAgNSArKwo+PiAgIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgICAgICAgIHwgIDIxICsrKystCj4+ICAgNiBm
aWxlcyBjaGFuZ2VkLCAyMDYgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPj4gICBjcmVh
dGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcm1fY2xpZW50LmMKPj4g
ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcm1fY2xpZW50
LmgKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUKPj4gaW5kZXggMTBiM2JiNjIwN2JhLi43ODRmOTlj
YTExZmMgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCj4+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCj4+IEBAIC0zMyw4ICszMyw5IEBAIHN1
YmRpci1jY2ZsYWdzLXkgKz0gLUkkKHNyY3RyZWUpLyQoc3JjKQo+PiAgICMgUGxlYXNlIGtlZXAg
dGhlc2UgYnVpbGQgbGlzdHMgc29ydGVkIQo+PiAgIAo+PiAgICMgY29yZSBkcml2ZXIgY29kZQo+
PiAtaTkxNS15ICs9IGk5MTVfZHJ2Lm8gXAo+PiAtCSAgaTkxNV9jb25maWcubyBcCj4+ICtpOTE1
LXkgKz0gaTkxNV9jb25maWcubyBcCj4+ICsJICBpOTE1X2RybV9jbGllbnQubyBcCj4+ICsJICBp
OTE1X2Rydi5vIFwKPj4gICAJICBpOTE1X2lycS5vIFwKPj4gICAJICBpOTE1X2dldHBhcmFtLm8g
XAo+PiAgIAkgIGk5MTVfbWl0aWdhdGlvbnMubyBcCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2RybV9jbGllbnQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJtX2NsaWVudC5jCj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+IGluZGV4IDAwMDAwMDAwMDAw
MC4uODMwODBkOTgzNmIwCj4+IC0tLSAvZGV2L251bGwKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcm1fY2xpZW50LmMKPj4gQEAgLTAsMCArMSwxMTMgQEAKPj4gKy8vIFNQRFgt
TGljZW5zZS1JZGVudGlmaWVyOiBNSVQKPj4gKy8qCj4+ICsgKiBDb3B5cmlnaHQgwqkgMjAyMCBJ
bnRlbCBDb3Jwb3JhdGlvbgo+PiArICovCj4+ICsKPj4gKyNpbmNsdWRlIDxsaW51eC9rZXJuZWwu
aD4KPj4gKyNpbmNsdWRlIDxsaW51eC9zbGFiLmg+Cj4+ICsjaW5jbHVkZSA8bGludXgvdHlwZXMu
aD4KPj4gKwo+PiArI2luY2x1ZGUgImk5MTVfZHJtX2NsaWVudC5oIgo+PiArI2luY2x1ZGUgImk5
MTVfZ2VtLmgiCj4+ICsjaW5jbHVkZSAiaTkxNV91dGlscy5oIgo+PiArCj4+ICt2b2lkIGk5MTVf
ZHJtX2NsaWVudHNfaW5pdChzdHJ1Y3QgaTkxNV9kcm1fY2xpZW50cyAqY2xpZW50cywKPj4gKwkJ
CSAgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+PiArewo+PiArCWNsaWVudHMtPmk5
MTUgPSBpOTE1Owo+PiArCj4+ICsJY2xpZW50cy0+bmV4dF9pZCA9IDA7Cj4+ICsJeGFfaW5pdF9m
bGFncygmY2xpZW50cy0+eGFycmF5LCBYQV9GTEFHU19BTExPQyk7Cj4+ICt9Cj4+ICsKPj4gK3N0
YXRpYyBpbnQKPj4gK19faTkxNV9kcm1fY2xpZW50X3JlZ2lzdGVyKHN0cnVjdCBpOTE1X2RybV9j
bGllbnQgKmNsaWVudCwKPj4gKwkJCSAgIHN0cnVjdCB0YXNrX3N0cnVjdCAqdGFzaykKPj4gK3sK
Pj4gKwljaGFyICpuYW1lOwo+PiArCj4+ICsJbmFtZSA9IGtzdHJkdXAodGFzay0+Y29tbSwgR0ZQ
X0tFUk5FTCk7Cj4+ICsJaWYgKCFuYW1lKQo+PiArCQlyZXR1cm4gLUVOT01FTTsKPj4gKwo+PiAr
CWNsaWVudC0+cGlkID0gZ2V0X3Rhc2tfcGlkKHRhc2ssIFBJRFRZUEVfUElEKTsKPj4gKwljbGll
bnQtPm5hbWUgPSBuYW1lOwo+PiArCj4+ICsJcmV0dXJuIDA7Cj4+ICt9Cj4+ICsKPj4gK3N0YXRp
YyB2b2lkIF9faTkxNV9kcm1fY2xpZW50X3VucmVnaXN0ZXIoc3RydWN0IGk5MTVfZHJtX2NsaWVu
dCAqY2xpZW50KQo+PiArewo+PiArCXB1dF9waWQoZmV0Y2hfYW5kX3plcm8oJmNsaWVudC0+cGlk
KSk7Cj4+ICsJa2ZyZWUoZmV0Y2hfYW5kX3plcm8oJmNsaWVudC0+bmFtZSkpOwo+PiArfQo+PiAr
Cj4+ICtzdGF0aWMgdm9pZCBfX3JjdV9pOTE1X2RybV9jbGllbnRfZnJlZShzdHJ1Y3Qgd29ya19z
dHJ1Y3QgKndyaykKPj4gK3sKPj4gKwlzdHJ1Y3QgaTkxNV9kcm1fY2xpZW50ICpjbGllbnQgPQo+
PiArCQljb250YWluZXJfb2Yod3JrLCB0eXBlb2YoKmNsaWVudCksIHJjdS53b3JrKTsKPj4gKwo+
PiArCXhhX2VyYXNlKCZjbGllbnQtPmNsaWVudHMtPnhhcnJheSwgY2xpZW50LT5pZCk7Cj4+ICsK
Pj4gKwlfX2k5MTVfZHJtX2NsaWVudF91bnJlZ2lzdGVyKGNsaWVudCk7Cj4+ICsKPj4gKwlrZnJl
ZShjbGllbnQpOwo+PiArfQo+PiArCj4+ICtzdHJ1Y3QgaTkxNV9kcm1fY2xpZW50ICoKPj4gK2k5
MTVfZHJtX2NsaWVudF9hZGQoc3RydWN0IGk5MTVfZHJtX2NsaWVudHMgKmNsaWVudHMsIHN0cnVj
dCB0YXNrX3N0cnVjdCAqdGFzaykKPj4gK3sKPj4gKwlzdHJ1Y3QgaTkxNV9kcm1fY2xpZW50ICpj
bGllbnQ7Cj4+ICsJaW50IHJldDsKPj4gKwo+PiArCWNsaWVudCA9IGt6YWxsb2Moc2l6ZW9mKCpj
bGllbnQpLCBHRlBfS0VSTkVMKTsKPj4gKwlpZiAoIWNsaWVudCkKPj4gKwkJcmV0dXJuIEVSUl9Q
VFIoLUVOT01FTSk7Cj4+ICsKPj4gKwlrcmVmX2luaXQoJmNsaWVudC0+a3JlZik7Cj4+ICsJY2xp
ZW50LT5jbGllbnRzID0gY2xpZW50czsKPj4gKwlJTklUX1JDVV9XT1JLKCZjbGllbnQtPnJjdSwg
X19yY3VfaTkxNV9kcm1fY2xpZW50X2ZyZWUpOwo+PiArCj4+ICsJcmV0ID0geGFfYWxsb2NfY3lj
bGljKCZjbGllbnRzLT54YXJyYXksICZjbGllbnQtPmlkLCBjbGllbnQsCj4+ICsJCQkgICAgICB4
YV9saW1pdF8zMmIsICZjbGllbnRzLT5uZXh0X2lkLCBHRlBfS0VSTkVMKTsKPj4gKwlpZiAocmV0
IDwgMCkKPj4gKwkJZ290byBlcnJfaWQ7Cj4+ICsKPj4gKwlyZXQgPSBfX2k5MTVfZHJtX2NsaWVu
dF9yZWdpc3RlcihjbGllbnQsIHRhc2spOwo+PiArCWlmIChyZXQpCj4+ICsJCWdvdG8gZXJyX3Jl
Z2lzdGVyOwo+PiArCj4+ICsJcmV0dXJuIGNsaWVudDsKPj4gKwo+PiArZXJyX3JlZ2lzdGVyOgo+
PiArCXhhX2VyYXNlKCZjbGllbnRzLT54YXJyYXksIGNsaWVudC0+aWQpOwo+PiArZXJyX2lkOgo+
PiArCWtmcmVlKGNsaWVudCk7Cj4+ICsKPj4gKwlyZXR1cm4gRVJSX1BUUihyZXQpOwo+PiArfQo+
PiArCj4+ICt2b2lkIF9faTkxNV9kcm1fY2xpZW50X2ZyZWUoc3RydWN0IGtyZWYgKmtyZWYpCj4+
ICt7Cj4+ICsJc3RydWN0IGk5MTVfZHJtX2NsaWVudCAqY2xpZW50ID0KPj4gKwkJY29udGFpbmVy
X29mKGtyZWYsIHR5cGVvZigqY2xpZW50KSwga3JlZik7Cj4+ICsKPj4gKwlxdWV1ZV9yY3Vfd29y
ayhzeXN0ZW1fd3EsICZjbGllbnQtPnJjdSk7Cj4+ICt9Cj4+ICsKPj4gK3ZvaWQgaTkxNV9kcm1f
Y2xpZW50X2Nsb3NlKHN0cnVjdCBpOTE1X2RybV9jbGllbnQgKmNsaWVudCkKPj4gK3sKPj4gKwlH
RU1fQlVHX09OKFJFQURfT05DRShjbGllbnQtPmNsb3NlZCkpOwo+PiArCVdSSVRFX09OQ0UoY2xp
ZW50LT5jbG9zZWQsIHRydWUpOwo+PiArCWk5MTVfZHJtX2NsaWVudF9wdXQoY2xpZW50KTsKPj4g
K30KPj4gKwo+PiArdm9pZCBpOTE1X2RybV9jbGllbnRzX2Zpbmkoc3RydWN0IGk5MTVfZHJtX2Ns
aWVudHMgKmNsaWVudHMpCj4+ICt7Cj4+ICsJd2hpbGUgKCF4YV9lbXB0eSgmY2xpZW50cy0+eGFy
cmF5KSkgewo+PiArCQlyY3VfYmFycmllcigpOwo+PiArCQlmbHVzaF93b3JrcXVldWUoc3lzdGVt
X3dxKTsKPj4gKwl9Cj4+ICsKPj4gKwl4YV9kZXN0cm95KCZjbGllbnRzLT54YXJyYXkpOwo+PiAr
fQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcm1fY2xpZW50Lmgg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RybV9jbGllbnQuaAo+PiBuZXcgZmlsZSBtb2Rl
IDEwMDY0NAo+PiBpbmRleCAwMDAwMDAwMDAwMDAuLjM5NmYxZTMzNmIzZgo+PiAtLS0gL2Rldi9u
dWxsCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJtX2NsaWVudC5oCj4+IEBA
IC0wLDAgKzEsNjEgQEAKPj4gKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQgKi8KPj4g
Ky8qCj4+ICsgKiBDb3B5cmlnaHQgwqkgMjAyMCBJbnRlbCBDb3Jwb3JhdGlvbgo+PiArICovCj4+
ICsKPj4gKyNpZm5kZWYgX19JOTE1X0RSTV9DTElFTlRfSF9fCj4+ICsjZGVmaW5lIF9fSTkxNV9E
Uk1fQ0xJRU5UX0hfXwo+PiArCj4+ICsjaW5jbHVkZSA8bGludXgva3JlZi5oPgo+PiArI2luY2x1
ZGUgPGxpbnV4L3BpZC5oPgo+PiArI2luY2x1ZGUgPGxpbnV4L3JjdXBkYXRlLmg+Cj4+ICsjaW5j
bHVkZSA8bGludXgvc2NoZWQuaD4KPj4gKyNpbmNsdWRlIDxsaW51eC94YXJyYXkuaD4KPj4gKwo+
PiArc3RydWN0IGRybV9pOTE1X3ByaXZhdGU7Cj4+ICsKPj4gK3N0cnVjdCBpOTE1X2RybV9jbGll
bnRzIHsKPj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNTsKPj4gKwo+PiArCXN0cnVj
dCB4YXJyYXkgeGFycmF5Owo+PiArCXUzMiBuZXh0X2lkOwo+PiArfTsKPj4gKwo+PiArc3RydWN0
IGk5MTVfZHJtX2NsaWVudCB7Cj4+ICsJc3RydWN0IGtyZWYga3JlZjsKPj4gKwo+PiArCXN0cnVj
dCByY3Vfd29yayByY3U7Cj4+ICsKPj4gKwl1bnNpZ25lZCBpbnQgaWQ7Cj4+ICsJc3RydWN0IHBp
ZCAqcGlkOwo+PiArCWNoYXIgKm5hbWU7Cj4+ICsJYm9vbCBjbG9zZWQ7Cj4+ICsKPj4gKwlzdHJ1
Y3QgaTkxNV9kcm1fY2xpZW50cyAqY2xpZW50czsKPj4gK307Cj4+ICsKPj4gK3ZvaWQgaTkxNV9k
cm1fY2xpZW50c19pbml0KHN0cnVjdCBpOTE1X2RybV9jbGllbnRzICpjbGllbnRzLAo+PiArCQkJ
ICAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwo+PiArCj4+ICtzdGF0aWMgaW5saW5l
IHN0cnVjdCBpOTE1X2RybV9jbGllbnQgKgo+PiAraTkxNV9kcm1fY2xpZW50X2dldChzdHJ1Y3Qg
aTkxNV9kcm1fY2xpZW50ICpjbGllbnQpCj4+ICt7Cj4+ICsJa3JlZl9nZXQoJmNsaWVudC0+a3Jl
Zik7Cj4+ICsJcmV0dXJuIGNsaWVudDsKPj4gK30KPj4gKwo+PiArdm9pZCBfX2k5MTVfZHJtX2Ns
aWVudF9mcmVlKHN0cnVjdCBrcmVmICprcmVmKTsKPj4gKwo+PiArc3RhdGljIGlubGluZSB2b2lk
IGk5MTVfZHJtX2NsaWVudF9wdXQoc3RydWN0IGk5MTVfZHJtX2NsaWVudCAqY2xpZW50KQo+PiAr
ewo+PiArCWtyZWZfcHV0KCZjbGllbnQtPmtyZWYsIF9faTkxNV9kcm1fY2xpZW50X2ZyZWUpOwo+
PiArfQo+PiArCj4+ICt2b2lkIGk5MTVfZHJtX2NsaWVudF9jbG9zZShzdHJ1Y3QgaTkxNV9kcm1f
Y2xpZW50ICpjbGllbnQpOwo+PiArCj4+ICtzdHJ1Y3QgaTkxNV9kcm1fY2xpZW50ICppOTE1X2Ry
bV9jbGllbnRfYWRkKHN0cnVjdCBpOTE1X2RybV9jbGllbnRzICpjbGllbnRzLAo+PiArCQkJCQkg
ICAgc3RydWN0IHRhc2tfc3RydWN0ICp0YXNrKTsKPj4gKwo+PiArdm9pZCBpOTE1X2RybV9jbGll
bnRzX2Zpbmkoc3RydWN0IGk5MTVfZHJtX2NsaWVudHMgKmNsaWVudHMpOwo+PiArCj4+ICsjZW5k
aWYgLyogIV9fSTkxNV9EUk1fQ0xJRU5UX0hfXyAqLwo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMK
Pj4gaW5kZXggMzBkOGNkOGM2OWIxLi44MjQ3ZGNjNzU4NmUgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuYwo+PiBAQCAtNjgsNiArNjgsNyBAQAo+PiAgICNpbmNsdWRlICJndC9pbnRlbF9y
YzYuaCIKPj4gICAKPj4gICAjaW5jbHVkZSAiaTkxNV9kZWJ1Z2ZzLmgiCj4+ICsjaW5jbHVkZSAi
aTkxNV9kcm1fY2xpZW50LmgiCj4+ICAgI2luY2x1ZGUgImk5MTVfZHJ2LmgiCj4+ICAgI2luY2x1
ZGUgImk5MTVfaW9jMzIuaCIKPj4gICAjaW5jbHVkZSAiaTkxNV9pcnEuaCIKPj4gQEAgLTM0Myw2
ICszNDQsOCBAQCBzdGF0aWMgaW50IGk5MTVfZHJpdmVyX2Vhcmx5X3Byb2JlKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdikKPj4gICAKPj4gICAJaW50ZWxfZ3RfaW5pdF9lYXJseSgm
ZGV2X3ByaXYtPmd0LCBkZXZfcHJpdik7Cj4+ICAgCj4+ICsJaTkxNV9kcm1fY2xpZW50c19pbml0
KCZkZXZfcHJpdi0+Y2xpZW50cywgZGV2X3ByaXYpOwo+PiArCj4+ICAgCWk5MTVfZ2VtX2luaXRf
ZWFybHkoZGV2X3ByaXYpOwo+PiAgIAo+PiAgIAkvKiBUaGlzIG11c3QgYmUgY2FsbGVkIGJlZm9y
ZSBhbnkgY2FsbHMgdG8gSEFTX1BDSF8qICovCj4+IEBAIC0zNjIsNiArMzY1LDcgQEAgc3RhdGlj
IGludCBpOTE1X2RyaXZlcl9lYXJseV9wcm9iZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYpCj4+ICAgCj4+ICAgZXJyX2dlbToKPj4gICAJaTkxNV9nZW1fY2xlYW51cF9lYXJseShk
ZXZfcHJpdik7Cj4+ICsJaTkxNV9kcm1fY2xpZW50c19maW5pKCZkZXZfcHJpdi0+Y2xpZW50cyk7
Cj4+ICAgCWludGVsX2d0X2RyaXZlcl9sYXRlX3JlbGVhc2UoJmRldl9wcml2LT5ndCk7Cj4+ICAg
CWludGVsX3JlZ2lvbl90dG1fZGV2aWNlX2ZpbmkoZGV2X3ByaXYpOwo+PiAgIGVycl90dG06Cj4+
IEBAIC0zODEsNiArMzg1LDcgQEAgc3RhdGljIHZvaWQgaTkxNV9kcml2ZXJfbGF0ZV9yZWxlYXNl
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPj4gICAJaW50ZWxfaXJxX2Zpbmko
ZGV2X3ByaXYpOwo+PiAgIAlpbnRlbF9wb3dlcl9kb21haW5zX2NsZWFudXAoZGV2X3ByaXYpOwo+
PiAgIAlpOTE1X2dlbV9jbGVhbnVwX2Vhcmx5KGRldl9wcml2KTsKPj4gKwlpOTE1X2RybV9jbGll
bnRzX2ZpbmkoJmRldl9wcml2LT5jbGllbnRzKTsKPj4gICAJaW50ZWxfZ3RfZHJpdmVyX2xhdGVf
cmVsZWFzZSgmZGV2X3ByaXYtPmd0KTsKPj4gICAJaW50ZWxfcmVnaW9uX3R0bV9kZXZpY2VfZmlu
aShkZXZfcHJpdik7Cj4+ICAgCXZsdl9zdXNwZW5kX2NsZWFudXAoZGV2X3ByaXYpOwo+PiBAQCAt
OTk2LDYgKzEwMDEsNyBAQCBzdGF0aWMgdm9pZCBpOTE1X2RyaXZlcl9wb3N0Y2xvc2Uoc3RydWN0
IGRybV9kZXZpY2UgKmRldiwgc3RydWN0IGRybV9maWxlICpmaWxlKQo+PiAgIAlzdHJ1Y3QgZHJt
X2k5MTVfZmlsZV9wcml2YXRlICpmaWxlX3ByaXYgPSBmaWxlLT5kcml2ZXJfcHJpdjsKPj4gICAK
Pj4gICAJaTkxNV9nZW1fY29udGV4dF9jbG9zZShmaWxlKTsKPj4gKwlpOTE1X2RybV9jbGllbnRf
Y2xvc2UoZmlsZV9wcml2LT5jbGllbnQpOwo+PiAgIAo+PiAgIAlrZnJlZV9yY3UoZmlsZV9wcml2
LCByY3UpOwo+PiAgIAo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPj4gaW5kZXggYzQ3NDdmNDQw
N2VmLi4zMzhkMzg0YzMxZWIgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmgKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+PiBAQCAt
OTYsNiArOTYsNyBAQAo+PiAgICNpbmNsdWRlICJpbnRlbF93YWtlcmVmLmgiCj4+ICAgI2luY2x1
ZGUgImludGVsX3dvcGNtLmgiCj4+ICAgCj4+ICsjaW5jbHVkZSAiaTkxNV9kcm1fY2xpZW50Lmgi
Cj4+ICAgI2luY2x1ZGUgImk5MTVfZ2VtLmgiCj4+ICAgI2luY2x1ZGUgImk5MTVfZ2VtX2d0dC5o
Igo+PiAgICNpbmNsdWRlICJpOTE1X2dwdV9lcnJvci5oIgo+PiBAQCAtMjg0LDYgKzI4NSw4IEBA
IHN0cnVjdCBkcm1faTkxNV9maWxlX3ByaXZhdGUgewo+PiAgIAkvKiogYmFuX3Njb3JlOiBBY2N1
bXVsYXRlZCBzY29yZSBvZiBhbGwgY3R4IGJhbnMgYW5kIGZhc3QgaGFuZ3MuICovCj4+ICAgCWF0
b21pY190IGJhbl9zY29yZTsKPj4gICAJdW5zaWduZWQgbG9uZyBoYW5nX3RpbWVzdGFtcDsKPj4g
Kwo+PiArCXN0cnVjdCBpOTE1X2RybV9jbGllbnQgKmNsaWVudDsKPj4gICB9Owo+PiAgIAo+PiAg
IC8qIEludGVyZmFjZSBoaXN0b3J5Ogo+PiBAQCAtMTIxOCw2ICsxMjIxLDggQEAgc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgewo+PiAgIAo+PiAgIAlzdHJ1Y3QgaTkxNV9wbXUgcG11Owo+PiAgIAo+
PiArCXN0cnVjdCBpOTE1X2RybV9jbGllbnRzIGNsaWVudHM7Cj4+ICsKPj4gICAJc3RydWN0IGk5
MTVfaGRjcF9jb21wX21hc3RlciAqaGRjcF9tYXN0ZXI7Cj4+ICAgCWJvb2wgaGRjcF9jb21wX2Fk
ZGVkOwo+PiAgIAo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0u
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKPj4gaW5kZXggNTkwZWZjOGIwMjY1
Li5lYTZjODhhOTllZDIgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z2VtLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwo+PiBAQCAtMTE3
OSwyNSArMTE3OSw0MCBAQCB2b2lkIGk5MTVfZ2VtX2NsZWFudXBfZWFybHkoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2KQo+PiAgIGludCBpOTE1X2dlbV9vcGVuKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1LCBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUpCj4+ICAgewo+PiAgIAlz
dHJ1Y3QgZHJtX2k5MTVfZmlsZV9wcml2YXRlICpmaWxlX3ByaXY7Cj4+IC0JaW50IHJldDsKPj4g
KwlzdHJ1Y3QgaTkxNV9kcm1fY2xpZW50ICpjbGllbnQ7Cj4+ICsJaW50IHJldCA9IC1FTk9NRU07
Cj4+ICAgCj4+ICAgCURSTV9ERUJVRygiXG4iKTsKPj4gICAKPj4gICAJZmlsZV9wcml2ID0ga3ph
bGxvYyhzaXplb2YoKmZpbGVfcHJpdiksIEdGUF9LRVJORUwpOwo+PiAgIAlpZiAoIWZpbGVfcHJp
dikKPj4gLQkJcmV0dXJuIC1FTk9NRU07Cj4+ICsJCWdvdG8gZXJyX2FsbG9jOwo+PiArCj4+ICsJ
Y2xpZW50ID0gaTkxNV9kcm1fY2xpZW50X2FkZCgmaTkxNS0+Y2xpZW50cywgY3VycmVudCk7Cj4+
ICsJaWYgKElTX0VSUihjbGllbnQpKSB7Cj4+ICsJCXJldCA9IFBUUl9FUlIoY2xpZW50KTsKPj4g
KwkJZ290byBlcnJfY2xpZW50Owo+PiArCX0KPj4gICAKPj4gICAJZmlsZS0+ZHJpdmVyX3ByaXYg
PSBmaWxlX3ByaXY7Cj4+ICAgCWZpbGVfcHJpdi0+ZGV2X3ByaXYgPSBpOTE1Owo+PiAgIAlmaWxl
X3ByaXYtPmZpbGUgPSBmaWxlOwo+PiArCWZpbGVfcHJpdi0+Y2xpZW50ID0gY2xpZW50Owo+PiAg
IAo+PiAgIAlmaWxlX3ByaXYtPmJzZF9lbmdpbmUgPSAtMTsKPj4gICAJZmlsZV9wcml2LT5oYW5n
X3RpbWVzdGFtcCA9IGppZmZpZXM7Cj4+ICAgCj4+ICAgCXJldCA9IGk5MTVfZ2VtX2NvbnRleHRf
b3BlbihpOTE1LCBmaWxlKTsKPj4gICAJaWYgKHJldCkKPj4gLQkJa2ZyZWUoZmlsZV9wcml2KTsK
Pj4gKwkJZ290byBlcnJfY29udGV4dDsKPj4gKwo+PiArCXJldHVybiAwOwo+PiAgIAo+PiArZXJy
X2NvbnRleHQ6Cj4+ICsJaTkxNV9kcm1fY2xpZW50X2Nsb3NlKGNsaWVudCk7Cj4+ICtlcnJfY2xp
ZW50Ogo+PiArCWtmcmVlKGZpbGVfcHJpdik7Cj4+ICtlcnJfYWxsb2M6Cj4+ICAgCXJldHVybiBy
ZXQ7Cj4+ICAgfQo+PiAgIAo+PiAtLSAKPj4gMi4zMC4yCj4+Cj4gCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
