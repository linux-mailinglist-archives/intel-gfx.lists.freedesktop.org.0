Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F42615BEB8
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 13:53:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 839CD6F5B1;
	Thu, 13 Feb 2020 12:53:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8B4E6F5B1
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2020 12:53:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 04:53:32 -0800
X-IronPort-AV: E=Sophos;i="5.70,436,1574150400"; d="scan'208";a="227223846"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 04:53:30 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200212150102.7600-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200212150102.7600-1-ville.syrjala@linux.intel.com>
Date: Thu, 13 Feb 2020 14:53:26 +0200
Message-ID: <87lfp6y7g9.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Force state->modeset=true when
 distrust_bios_wm==true
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

T24gV2VkLCAxMiBGZWIgMjAyMCwgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+IHdyb3RlOgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4KPiBDdXJyZW50bHkgd2hlbiB3ZSBsb2FkIHRoZSBkcml2ZXIgd2Ug
c2V0IGRpc3RydXN0X2Jpb3Nfd209dHJ1ZSwgd2hpY2gKPiB3aWxsIGNhdXNlIGFjdGl2ZV9waXBl
X2NoYW5nZXMgdG8gZ2V0IGZsYWdnZWQgZXZlbiB3aGVuIHdlJ3JlIG5vdAo+IHRvZ2dsaW5nIGFu
eSBwaXBlcyBvbi9vZmYuIFRoZSByZWFzb24gYmVpbmcgdGhhdCB3ZSB3YW50IHRvIGZ1bGx5Cj4g
cmVkaXN0cmlidXRlIHRoZSBkYnVmIGFtb25nIHRoZSBhY3RpdmUgcGlwZXMgYW5kIGlnbm9yZSB3
aGF0ZXZlcgo+IHN0YXRlIHRoZSBmaXJtd2FyZSBsZWZ0IGJlaGluZC4KPgo+IFVuZm9ydHVuYXRl
bHkgd2hlbiB0aGUgY29kZSBmbGFncyBhY3RpdmVfcGlwZV9jaGFuZ2VzIGl0IGRvZXNuJ3QKPiBz
ZXQgc3RhdGUtPm1vZGVzZXQgdG8gdHJ1ZSwgd2hpY2ggbWVhbnMgdGhlIGhhcmR3YXJlIGRidWYg
c3RhdGUKPiB3b24ndCBhY3R1YWxseSBnZXQgdXBkYXRlZC4gSGVuY2UgdGhlIGhhcmR3YXJlIGFu
ZCBzb2Z0d2FyZQo+IHN0YXRlcyBnbyBvdXQgb2Ygc3luYywgd2hpY2ggY2FuIHJlc3VsdCBpbiBw
bGFuZXMgdHJ5aW5nIHRvIHVzZSBhCj4gZGlzYWJsZWQgZGJ1ZiBzbGljZS4gU3VwcmlzaW5nbHkg
dGhhdCBvbmx5IHNlZW1zIHRvIGNvcnJ1cHQgdGhlCj4gZGlzcGxheSByYXRoZXIgdGhhbiBtYWtp
bmcgdGhlIHdob2xlIGRpc3BsYXkgZW5naW5lIGtlZWwgb3Zlci4KPgo+IExldCdzIGZpeCB0aGlz
IGZvciBub3cgYnkgZmxhZ2dpbmcgc3RhdGUtPm1vZGVzZXQgd2hlbmV2ZXIKPiBkaXN0cnVzdF9i
aW9zX3dtIGlzIHNldC4KPgo+IEV2ZW50dWFsbHkgd2UnbGwgbGlrZWx5IHdhbnQgdG8gcmlwIG91
dCBhbGwgb2YgdGhpcyBtZXNzIGFuZAo+IGludHJvZHVjZSBwcm9wZXIgc3RhdHllIHRyYWNraW5n
IGZvciBkYnVmLiBCdXQgdGhhdCByZXF1aXJlcwo+IG1vcmUgd29yay4gVG9zcyBpbiBhIEZJWE1F
IHRvIHRoYXQgZWZmZWN0LgoKSSBoYXZlIGEgaGFyZCB0aW1lIGZvbGxvd2luZyBhbGwgdGhlIGlt
cGxpY2F0aW9ucyBvZiB0aGlzIGNoYW5nZS4gV291bGQKdGhpcyB1bmRlciBzb21lIGNpcmN1bXN0
YW5jZXMgbGVhZCB0byBhIGNhc2Ugd2hlcmUgd2UgdXNlIHRoZSBzdGF0ZSByZWFkCmF0IHByb2Jl
LCBhbmQgZG8gYSBmdWxsIG1vZGVzZXQgb24gdGhhdCBzdGF0ZT8KCkRTQywgbGFja2luZyBmdWxs
IHN0YXRlIHJlYWRvdXQsIGZhaWxzIGJhZGx5IHdpdGggdGhpcyBjaGFuZ2UgWzFdLiBXZSdsbApk
byBEU0MgZW5hYmxlIHVzaW5nIGEgbW9zdGx5IHplcm9lZCBvdXQgRFNDIGNvbmZpZyBpbiBzdGF0
ZS4gTGVhZGluZyB0bwpkaXZpc2lvbiBieSB6ZXJvLgoKQlIsCkphbmkuCgoKWzFdIGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE2NTQ0L2ZpLXRnbC1k
c2kvYm9vdDAudHh0Cgo+Cj4gQ2M6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNv
dnNraXlAaW50ZWwuY29tPgo+IEZpeGVzOiBmZjJjZDg2MzVlNDEgKCJkcm0vaTkxNTogQ29ycmVj
dGx5IG1hcCBEQlVGIHNsaWNlcyB0byBwaXBlcyIpCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAxNCArKysrKysrKysrKysrKwo+
ICAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBpbmRleCA2MWJhMWYyMjU2YTAuLjllNGY5
OWFlODFmYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jCj4gQEAgLTE1MDI3LDYgKzE1MDI3LDIwIEBAIHN0YXRpYyBpbnQgaW50ZWxfYXRvbWlj
X2NoZWNrKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCj4gIAlpZiAobmV3X2NkY2xrX3N0YXRlICYm
IG5ld19jZGNsa19zdGF0ZS0+Zm9yY2VfbWluX2NkY2xrX2NoYW5nZWQpCj4gIAkJYW55X21zID0g
dHJ1ZTsKPiAgCj4gKwkvKgo+ICsJICogZGlzdHJ1c3RfYmlvc193bSB3aWxsIGZvcmNlIGEgZnVs
bCBkYnVmIHJlY29tcHV0YXRpb24KPiArCSAqIGJ1dCB0aGUgaGFyZHdhcmUgc3RhdGUgd2lsbCBv
bmx5IGdldCB1cGRhdGVkIGFjY29yZGluZ2x5Cj4gKwkgKiBpZiBzdGF0ZS0+bW9kZXNldD09dHJ1
ZS4gSGVuY2UgZGlzdHJ1c3RfYmlvc193bT09dHJ1ZSAmJgo+ICsJICogc3RhdGUtPm1vZGVzZXQ9
PWZhbHNlIGlzIGFuIGludmFsaWQgY29tYmluYXRpb24gd2hpY2gKPiArCSAqIHdvdWxkIGNhdXNl
IHRoZSBoYXJkd2FyZSBhbmQgc29mdHdhcmUgZGJ1ZiBzdGF0ZSB0byBnZXQKPiArCSAqIG91dCBv
ZiBzeW5jLiBXZSBtdXN0IHByZXZlbnQgdGhhdC4KPiArCSAqCj4gKwkgKiBGSVhNRSBjbGVhbiB1
cCB0aGlzIG1lc3MgYW5kIGludHJvZHVjZSBiZXR0ZXIKPiArCSAqIHN0YXRlIHRyYWNraW5nIGZv
ciBkYnVmLgo+ICsJICovCj4gKwlpZiAoZGV2X3ByaXYtPndtLmRpc3RydXN0X2Jpb3Nfd20pCj4g
KwkJYW55X21zID0gdHJ1ZTsKPiArCj4gIAlpZiAoYW55X21zKSB7Cj4gIAkJcmV0ID0gaW50ZWxf
bW9kZXNldF9jaGVja3Moc3RhdGUpOwo+ICAJCWlmIChyZXQpCgotLSAKSmFuaSBOaWt1bGEsIElu
dGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
