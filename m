Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F752138E8
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jul 2020 12:47:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E34E6E2ED;
	Fri,  3 Jul 2020 10:47:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E12D6E2ED
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jul 2020 10:47:03 +0000 (UTC)
IronPort-SDR: xs0AbJJCxhYux38LQIWPQeEsDioIlOtLkUaApfOA0g0hqtQuKUPcXtGJxkYV87BgsUT47b5HWG
 J+1AlKYJto/w==
X-IronPort-AV: E=McAfee;i="6000,8403,9670"; a="208643573"
X-IronPort-AV: E=Sophos;i="5.75,308,1589266800"; d="scan'208";a="208643573"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2020 03:47:02 -0700
IronPort-SDR: ZtMartRJFrdJl3JTUi1elODA1HItWQQQOdvHEMWrX+6cNq/3pz/jx++htEO+3Hl/zvdDVHUiiC
 P6rP/VtoOSjg==
X-IronPort-AV: E=Sophos;i="5.75,308,1589266800"; d="scan'208";a="455861528"
Received: from kroegerb-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.39.221])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2020 03:47:00 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>,
 Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
In-Reply-To: <20200703000425.GA1225@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200702091526.10096-1-stanislav.lisovskiy@intel.com>
 <20200703000425.GA1225@intel.com>
Date: Fri, 03 Jul 2020 13:46:58 +0300
Message-ID: <87k0zkkh99.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Clamp min_cdclk to
 max_cdclk_freq to unblock 8K
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

T24gVGh1LCAwMiBKdWwgMjAyMCwgTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVs
LmNvbT4gd3JvdGU6Cj4gT24gVGh1LCBKdWwgMDIsIDIwMjAgYXQgMTI6MTU6MjZQTSArMDMwMCwg
U3RhbmlzbGF2IExpc292c2tpeSB3cm90ZToKPj4gV2Ugc3RpbGwgbmVlZCAiQnVtcCB1cCBDRENM
SyIgd29ya2Fyb3VuZCBvdGhlcndpc2UgZ2V0dGluZwo+PiB1bmRlcnJ1bnMgLSBob3dldmVyIGN1
cnJlbnRseSBpdCBibG9ja3MgOEsgYXMgQ0RDTEsgPSBQaXhlbCByYXRlLAo+PiBpbiA4SyBjYXNl
IHdvdWxkIHJlcXVpcmUgQ0RDTEsgdG8gYmUgYXJvdW5kIDEgR2h6IHdoaWNoIGlzIG5vdAo+PiBw
b3NzaWJsZS4KPj4gCj4+IHYyOiAtIENvbnZlcnQgdG8gZXhwcmVzc2lvbihtYXgobWluX2NkY2xr
LCBtaW4ocGl4ZWxfcmF0ZSwgbWF4X2NkY2xrKSkKPj4gICAgICAgKFZpbGxlIFN5cmrDpGzDpCkK
Pj4gICAgIC0gVXNlIHR5cGUgc3BlY2lmaWMgbWluX3QsIG1heF90KFZpbGxlIFN5cmrDpGzDpCkK
Pj4gCj4+IFNpZ25lZC1vZmYtYnk6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNv
dnNraXlAaW50ZWwuY29tPgo+Cj4gSSBoYXZlIHRlc3RlZCB0aGlzIGFuZCB0aGlzIHVuYmxvY2tz
IDhLIAo+Cj4gUmV2aWV3ZWQtYnk6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRl
bC5jb20+CgpUaGFua3MgZm9yIHRoZSBwYXRjaCBhbmQgcmV2aWV3LCBwdXNoZWQgdG8gZGlucS4K
CkJSLApKYW5pLgoKPgo+IE1hbmFzaQo+Cj4+IC0tLQo+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jZGNsay5jIHwgMTEgKysrKysrKysrLS0KPj4gIDEgZmlsZSBjaGFuZ2Vk
LCA5IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4+IAo+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCj4+IGluZGV4IDQ1ZjdmMzNkMTE0NC4uOGY5MzIw
ZTFlMjQ5IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2NkY2xrLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNs
ay5jCj4+IEBAIC0yMDgwLDggKzIwODAsMTUgQEAgaW50IGludGVsX2NydGNfY29tcHV0ZV9taW5f
Y2RjbGsoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCj4+ICAJICog
RXhwbGljaXRseSBzdGF0aW5nIGhlcmUgdGhhdCB0aGlzIHNlZW1zIHRvIGJlIGN1cnJlbnRseQo+
PiAgCSAqIHJhdGhlciBhIEhhY2ssIHRoYW4gZmluYWwgc29sdXRpb24uCj4+ICAJICovCj4+IC0J
aWYgKElTX1RJR0VSTEFLRShkZXZfcHJpdikpCj4+IC0JCW1pbl9jZGNsayA9IG1heChtaW5fY2Rj
bGssIChpbnQpY3J0Y19zdGF0ZS0+cGl4ZWxfcmF0ZSk7Cj4+ICsJaWYgKElTX1RJR0VSTEFLRShk
ZXZfcHJpdikpIHsKPj4gKwkJLyoKPj4gKwkJICogQ2xhbXAgdG8gbWF4X2NkY2xrX2ZyZXEgaW4g
Y2FzZSBwaXhlbCByYXRlIGlzIGhpZ2hlciwKPj4gKwkJICogaW4gb3JkZXIgbm90IHRvIGJyZWFr
IGFuIDhLLCBidXQgc3RpbGwgbGVhdmUgVy9BIGF0IHBsYWNlLgo+PiArCQkgKi8KPj4gKwkJbWlu
X2NkY2xrID0gbWF4X3QoaW50LCBtaW5fY2RjbGssCj4+ICsJCQkJICBtaW5fdChpbnQsIGNydGNf
c3RhdGUtPnBpeGVsX3JhdGUsCj4+ICsJCQkJCWRldl9wcml2LT5tYXhfY2RjbGtfZnJlcSkpOwo+
PiArCX0KPj4gIAo+PiAgCWlmIChtaW5fY2RjbGsgPiBkZXZfcHJpdi0+bWF4X2NkY2xrX2ZyZXEp
IHsKPj4gIAkJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sCj4+IC0tIAo+PiAyLjI0LjEuNDg1
LmdhZDA1YTNkOGU1Cj4+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGlj
cyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
