Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DAC41771FA
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 10:07:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C77FF6EA45;
	Tue,  3 Mar 2020 09:07:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 400606EA44
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 09:07:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 01:07:47 -0800
X-IronPort-AV: E=Sophos;i="5.70,510,1574150400"; d="scan'208";a="412675751"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 01:07:46 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <20200302171109.GN13686@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200302170218.16496-1-jani.nikula@intel.com>
 <20200302171109.GN13686@intel.com>
Date: Tue, 03 Mar 2020 11:07:43 +0200
Message-ID: <87tv35q00w.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: fix documentation build after
 rename
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

T24gTW9uLCAwMiBNYXIgMjAyMCwgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6Cj4gT24gTW9uLCBNYXIgMDIsIDIwMjAgYXQgMDc6MDI6MThQTSAr
MDIwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4+IGludGVsX2Nzci5jIHdhcyBtb3ZlZCB1bmRlciBk
aXNwbGF5Lgo+PiAKPj4gRml4ZXM6IDA2ZDNmZjZlNzQ1MSAoImRybS9pOTE1OiBtb3ZlIGludGVs
X2Nzci5bY2hdIHVuZGVyIGRpc3BsYXkvIikKPj4gUmVwb3J0ZWQtYnk6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IEphbmkg
TmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4KPiBSZXZpZXdlZC1ieTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClB1c2hlZCwgdGhhbmtzIGZv
ciB0aGUgcmV2aWV3LgoKQlIsCkphbmkuCgo+Cj4+IC0tLQo+PiAgRG9jdW1lbnRhdGlvbi9ncHUv
aTkxNS5yc3QgfCA0ICsrLS0KPj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIg
ZGVsZXRpb25zKC0pCj4+IAo+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9ncHUvaTkxNS5y
c3QgYi9Eb2N1bWVudGF0aW9uL2dwdS9pOTE1LnJzdAo+PiBpbmRleCBlNTM5YzQyYTNlNzguLmNj
NzRlMjRjYTNiNSAxMDA2NDQKPj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9ncHUvaTkxNS5yc3QKPj4g
KysrIGIvRG9jdW1lbnRhdGlvbi9ncHUvaTkxNS5yc3QKPj4gQEAgLTIwNywxMCArMjA3LDEwIEBA
IERQSU8KPj4gIENTUiBmaXJtd2FyZSBzdXBwb3J0IGZvciBETUMKPj4gIC0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0KPj4gIAo+PiAtLi4ga2VybmVsLWRvYzo6IGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2Nzci5jCj4+ICsuLiBrZXJuZWwtZG9jOjogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jc3IuYwo+PiAgICAgOmRvYzogY3NyIHN1cHBvcnQgZm9yIGRtYwo+PiAg
Cj4+IC0uLiBrZXJuZWwtZG9jOjogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY3NyLmMKPj4g
Ky4uIGtlcm5lbC1kb2M6OiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nzci5j
Cj4+ICAgICA6aW50ZXJuYWw6Cj4+ICAKPj4gIFZpZGVvIEJJT1MgVGFibGUgKFZCVCkKPj4gLS0g
Cj4+IDIuMjAuMQoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBD
ZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
