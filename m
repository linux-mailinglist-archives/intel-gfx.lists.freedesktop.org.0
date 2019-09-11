Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED5F0AFA89
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 12:37:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C3F46EA79;
	Wed, 11 Sep 2019 10:36:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08DAC6E22E
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 10:36:57 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 03:36:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="196855669"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 11 Sep 2019 03:36:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 11 Sep 2019 13:36:53 +0300
Date: Wed, 11 Sep 2019 13:36:53 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190911103653.GW7482@intel.com>
References: <20190911074727.32585-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190911074727.32585-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Put glk_cdclk_table
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBTZXAgMTEsIDIwMTkgYXQgMDg6NDc6MjdBTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IENvbW1pdCA3MzZkYTgxMTJmZWUgKCJkcm0vaTkxNTogVXNlIGxpdGVyYWwgcmVwcmVz
ZW50YXRpb24gb2YgY2RjbGsKPiB0YWJsZXMiKSBwdXNoZWQgdGhlIGNkY2xrIGxvZ2ljIGludG8g
dGFibGVzLCBhZGRpbmcgZ2xrX2NkY2xrX3RhYmxlIGJ1dAo+IG5vdCB1c2luZyB5ZXQ6Cj4gCj4g
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jOjExNzM6Mzg6IGVycm9y
OiDigJhnbGtfY2RjbGtfdGFibGXigJkgZGVmaW5lZCBidXQgbm90IHVzZWQgWy1XZXJyb3I9dW51
c2VkLWNvbnN0LXZhcmlhYmxlPV0KPiAKPiBGaXhlczogNzM2ZGE4MTEyZmVlICgiZHJtL2k5MTU6
IFVzZSBsaXRlcmFsIHJlcHJlc2VudGF0aW9uIG9mIGNkY2xrIHRhYmxlcyIpCj4gU2lnbmVkLW9m
Zi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IE1hdHQgUm9w
ZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Cj4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5p
a3VsYUBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY2RjbGsuYyB8IDUgKysrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9u
cygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2NkY2xrLmMKPiBpbmRleCA2MThhOTNiYWQwYTguLjEzNzc5YjYwMjlmNSAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKPiBAQCAtMjUxMSw3ICsy
NTExLDEwIEBAIHZvaWQgaW50ZWxfaW5pdF9jZGNsa19ob29rcyhzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYpCj4gIAkJZGV2X3ByaXYtPmRpc3BsYXkuc2V0X2NkY2xrID0gYnh0X3Nl
dF9jZGNsazsKPiAgCQlkZXZfcHJpdi0+ZGlzcGxheS5tb2Rlc2V0X2NhbGNfY2RjbGsgPSBieHRf
bW9kZXNldF9jYWxjX2NkY2xrOwo+ICAJCWRldl9wcml2LT5kaXNwbGF5LmNhbGNfdm9sdGFnZV9s
ZXZlbCA9IGJ4dF9jYWxjX3ZvbHRhZ2VfbGV2ZWw7Cj4gLQkJZGV2X3ByaXYtPmNkY2xrLnRhYmxl
ID0gYnh0X2NkY2xrX3RhYmxlOwo+ICsJCWlmIChJU19HRU1JTklMQUtFKGRldl9wcml2KSkKPiAr
CQkJZGV2X3ByaXYtPmNkY2xrLnRhYmxlID0gZ2xrX2NkY2xrX3RhYmxlOwo+ICsJCWVsc2UKPiAr
CQkJZGV2X3ByaXYtPmNkY2xrLnRhYmxlID0gYnh0X2NkY2xrX3RhYmxlOwoKV2hvb3BzLgoKUmV2
aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
Cgo+ICAJfSBlbHNlIGlmIChJU19HRU45X0JDKGRldl9wcml2KSkgewo+ICAJCWRldl9wcml2LT5k
aXNwbGF5LnNldF9jZGNsayA9IHNrbF9zZXRfY2RjbGs7Cj4gIAkJZGV2X3ByaXYtPmRpc3BsYXku
bW9kZXNldF9jYWxjX2NkY2xrID0gc2tsX21vZGVzZXRfY2FsY19jZGNsazsKPiAtLSAKPiAyLjIz
LjAKCi0tIApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
