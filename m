Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D7F35F09A
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 11:17:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59EAB6E8FB;
	Wed, 14 Apr 2021 09:17:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C34D96E8FB
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 09:17:44 +0000 (UTC)
IronPort-SDR: 4dOGb0cq9Lzpod8vUbgurGOb8ZNthHH4AgLQWh/Z905GbGyNlcsKaGeiRFY3jqJectp4Vli5un
 RjP+cBls7wgA==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="174099946"
X-IronPort-AV: E=Sophos;i="5.82,221,1613462400"; d="scan'208";a="174099946"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 02:17:43 -0700
IronPort-SDR: LQqyBST9xDQNJilVg3DA6K+D5B4A7Ko5cvUc/JKF3pQvbQgG68txtq7i8PLWJNeb0L0rWx+7BT
 OmbZTU4txr0A==
X-IronPort-AV: E=Sophos;i="5.82,221,1613462400"; d="scan'208";a="418252267"
Received: from dgeiger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.63.90])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 02:17:42 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <87r1jdfct7.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210412054607.18133-1-ville.syrjala@linux.intel.com>
 <20210412054607.18133-2-ville.syrjala@linux.intel.com>
 <87r1jdfct7.fsf@intel.com>
Date: Wed, 14 Apr 2021 12:17:39 +0300
Message-ID: <87o8ehfcng.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915: Restore lost glk FBC 16bpp w/a
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAxNCBBcHIgMjAyMSwgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGxpbnV4LmludGVs
LmNvbT4gd3JvdGU6Cj4gT24gTW9uLCAxMiBBcHIgMjAyMSwgVmlsbGUgU3lyamFsYSA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+IHdyb3RlOgo+PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+Pgo+PiBXZSBsb3N0IHRoZSBGQkMgMTZi
cHAgNTEyYnl0ZSBzdHJpZGUgcmVxdWlyZW1lbnQgb24gZ2xrIHdoZW4KPj4gd2Ugc3dpdGNoZWQg
ZnJvbSBkaXNwbGF5IHZlcnNpb24gOSB0byAxMC4gUmVzdG9yZSB0aGUgdy9hIHRvCj4+IGF2b2lk
IGVuYWJsaW5nIEZCQyB3aXRoIGEgYmFkIHN0cmlkZSBhbmQgdGh1cyBkaXNwbGF5IGdhcmJhZ2Uu
Cj4+Cj4+IENjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgo+PiBGaXhl
czogMmI1YTQ1NjJlZGQwICgiZHJtL2k5MTUvZGlzcGxheTogU2ltcGxpZnkgR0xLIGRpc3BsYXkg
dmVyc2lvbiB0ZXN0cyIpCj4KPiBJIHRoaW5rIHRoaXMgc2hvdWxkIGJlOgo+Cj4gRml4ZXM6IDAw
NWU5NTM3NzI0OSAoImRybS9pOTE1L2Rpc3BsYXk6IEVsaW1pbmF0ZSBtb3N0IHVzYWdlIG9mIElO
VEVMX0dFTigpIikKClN0cmlrZSB0aGF0LCB0aGUgcmVncmVzc2lvbiBpcyBpbiB0aGUgb25lIHlv
dSBtZW50aW9uLCB0aG91Z2ggYXJndWFibHkKaXQgd2FzIHRoZSBjb21iaW5hdGlvbiBvZiB0aGUg
dHdvIHRoYXQgYnJva2UgdGhpcywgcmVhbGx5LgoKPgo+IFJpZ2h0Pwo+Cj4gUmV2aWV3ZWQtYnk6
IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4KPj4gU2lnbmVkLW9mZi1ieTog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPj4gLS0tCj4+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIHwgMiArLQo+PiAgMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYwo+PiBpbmRleCAwNGQ5YzdkMjJiMDQuLmRj
YzBmNzNlYTIyNSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9mYmMuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Zi
Yy5jCj4+IEBAIC01OTgsNyArNTk4LDcgQEAgc3RhdGljIGJvb2wgc3RyaWRlX2lzX3ZhbGlkKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPj4gIAkJcmV0dXJuIGZhbHNlOwo+PiAg
Cj4+ICAJLyogRGlzcGxheSBXQSAjMTEwNTogc2tsLGJ4dCxrYmwsY2ZsLGdsayAqLwo+PiAtCWlm
IChJU19ESVNQTEFZX1ZFUihkZXZfcHJpdiwgOSkgJiYKPj4gKwlpZiAoKElTX0RJU1BMQVlfVkVS
KGRldl9wcml2LCA5KSB8fCBJU19HRU1JTklMQUtFKGRldl9wcml2KSkgJiYKPj4gIAkgICAgbW9k
aWZpZXIgPT0gRFJNX0ZPUk1BVF9NT0RfTElORUFSICYmIHN0cmlkZSAmIDUxMSkKPj4gIAkJcmV0
dXJuIGZhbHNlOwoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBD
ZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
