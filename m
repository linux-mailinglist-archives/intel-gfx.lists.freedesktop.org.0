Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EDF913D8E5
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 12:25:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AC146ECB2;
	Thu, 16 Jan 2020 11:25:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9BAB6ECB2
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2020 11:25:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jan 2020 03:25:02 -0800
X-IronPort-AV: E=Sophos;i="5.70,326,1574150400"; d="scan'208";a="214045802"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jan 2020 03:24:59 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Lyude Paul <lyude@redhat.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <5bb57d7b4cd05ec6832cc113addc81d0c8e79d7b.camel@redhat.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1579010266.git.jani.nikula@intel.com>
 <99df51313fd8112a9eb8d30dde19dde51e0c618b.1579010266.git.jani.nikula@intel.com>
 <fc4b86e27577d0467e3ca1bff52d7645b1e71e31.camel@redhat.com>
 <87ftghjf27.fsf@intel.com>
 <5bb57d7b4cd05ec6832cc113addc81d0c8e79d7b.camel@redhat.com>
Date: Thu, 16 Jan 2020 13:24:56 +0200
Message-ID: <87d0bjk5iv.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 5/5] drm/i915: Force DPCD backlight mode
 on X1 Extreme 2nd Gen 4K AMOLED panel
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
Cc: AceLan Kao <acelan.kao@canonical.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAxNSBKYW4gMjAyMCwgTHl1ZGUgUGF1bCA8bHl1ZGVAcmVkaGF0LmNvbT4gd3JvdGU6
Cj4gc2lnaOKApiBzbyBJIGp1c3Qgd2VudCB0aHJvdWdoIHRoZSBjb3JyZXNwb25kZW5jZSB3aXRo
IHRoZSB2ZW5kb3IgSSBtZW50aW9uZWQKPiBhbmQgdW5mb3J0dW5hdGVseSB0aGUgYW5zd2VyIGlz
IHN0aWxsIHVuY2xlYXIuIEl0IGxvb2tzIGxpa2UgdGhhdCBmb3Igc29tZSBvZgo+IHRoZXNlIHBh
bmVscyB0aGVyZSBtaWdodCBhY3R1YWxseSBiZSBzb21lIGJpdHMgaW4gdGhlIEVESUQgKCE/IT8p
IHRoYXQgYXJlCj4gc3VwcG9zZWQgdG8gY29ycmVzcG9uZCB0byB0aGUgYmFja2xpZ2h0IGludGVy
ZmFjZS4gd2VpcmQuIG9uIHRvcCBvZiB0aGF0IEknbQo+IG5vdCBldmVuIHN1cmUgaWYgdGhlc2Ug
RURJRCBiaXRzIGFyZSBhY3R1YWxseSBzdGFuZGFyZC4gSW50ZXJlc3RpbmdseSBlbm91Z2gKPiBp
dCBzZWVtcyBsaWtlIHRoZXkncmUgYWxzbyBpbnRlbmRpbmcgZm9yIHNvbWUgb2YgdGhlaXIgcGFu
ZWxzIHRvIGJlIGFibGUgdG8gYmUKPiB1c2VkIGluIGJvdGggUFdNIGFuZCBEUENEIG1vZGUsIGFu
ZCB3aWxsIGV2ZW50dWFsbHkgZHJvcCB0aGUgUFdNCj4gY29tcGF0aWJpbGl0eS4KPgo+IE5vdGUg
dGhpcyB2ZW5kb3IgaXNuJ3QgTGVub3ZvLCBzbyBJJ20gYXNzdW1pbmcgdGhhdCdzIHByb2JhYmx5
IHdoeSBwd20gbW9kZQo+IGRvZXNuJ3Qgd29yayBhdCBhbGwgb24gdGhpcyBYMSBleHRyZW1lLgo+
Cj4gVGhhdCBiZWluZyBzYWlkIGFsbCBJJ3ZlIHNlZW4gYXJlIHN5c3RlbXMgdGhhdCBkb24ndCBz
cGVjaWZ5IHRoaXMgY29ycmVjdGx5IGluCj4gdGhlIHZidCBidXQgZG8gaW4gdGhlIGRwY2QsIHNv
IEknbSBnb2luZyB0byBnbyBhaGVhZCBhbmQgY2hhbmdlIHRoaXMgcGF0Y2gKPiBzZXJpZXMgb3Zl
ciB0byB1c2luZyB0aGUgZHBjZCBieSBkZWZhdWx0IGluc3RlYWQuIElmIHRoaXMgYWN0dWFsbHkg
YnJlYWtzIGFueQo+IHN5c3RlbXMgb3V0IHRoZXJlIHdlIGNhbiBjaGFuZ2UgdGhlIGRlZmF1bHQg
YmVoYXZpb3IgbGF0ZXIuIEkgd2lsbCBkbyBhIHJlc3Bpbgo+IG9mIHRoZSBzZXJpZXMgYXNhcCAo
d2lsbCBoYXZlIGl0IG9uIHRoZSBsaXN0IHRvZGF5IG9yIHRvbW1vcnJvdywgd2lsbCBtZXJnZQo+
IGFmdGVyIENJIGdpdmVzIHRoZSBPSykuCgpEb24ndCB3b3JyeSwgbm90aGluZyBhYm91dCBkaXNw
bGF5cyByZWFsbHkgc3VycHJpc2VzIG1lIGFueW1vcmUuCgpJJ20gZmluZSB3aXRoIHRoZSBpZGVh
IG9mIHRyeWluZyB0byB1c2UgdGhlIERQQ0QgYWxvbmUgdG8gZW5hYmxlIGF1eApiYWNrbGlnaHQu
IFdlIG5lZWQgdG8gdHJ5IHRvIG1ha2UgdGhpcyB3b3JrIG91dCBvZiB0aGUgYm94LCB3aXRob3V0
Cm1vZHVsZSBwYXJhbWV0ZXJzLgoKSnVzdCBtYWtlIHN1cmUgaXQncyByZWFzb25hYmx5IGVhc3kg
dG8gcmV2ZXJ0IGluIGNhc2UgaXNzdWVzIGRvIGFyaXNlLi4uCgpCUiwKSmFuaS4KCgotLSAKSmFu
aSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
