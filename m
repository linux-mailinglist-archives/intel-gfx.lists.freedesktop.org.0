Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B90F2CBF
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2019 11:44:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4244C6E22A;
	Thu,  7 Nov 2019 10:44:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AB2C6E22A
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2019 10:44:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Nov 2019 02:44:23 -0800
X-IronPort-AV: E=Sophos;i="5.68,277,1569308400"; d="scan'208";a="196520050"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Nov 2019 02:44:22 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
In-Reply-To: <20191029201504.GB17819@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191029103947.7535-1-jani.nikula@intel.com>
 <20191029201504.GB17819@intel.com>
Date: Thu, 07 Nov 2019 12:44:20 +0200
Message-ID: <87wocc55kr.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: only include
 intel_dp_link_training.h where needed
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

T24gVHVlLCAyOSBPY3QgMjAxOSwgTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVs
LmNvbT4gd3JvdGU6Cj4gT24gVHVlLCBPY3QgMjksIDIwMTkgYXQgMTI6Mzk6NDdQTSArMDIwMCwg
SmFuaSBOaWt1bGEgd3JvdGU6Cj4+IFRoZSBpbnRlbF9kcF9saW5rX3RyYWluaW5nLmggaW5jbHVk
ZSBoYXMgbm8gbmVlZCBvciBwbGFjZSBpbgo+PiBpbnRlbF9kaXNwbGF5LmguIEluY2x1ZGUgaXQg
aW4gaW50ZWxfZGlzcGxheS5jIGluc3RlYWQuCj4+IAo+PiBDYzoKPj4gCj4+IENjOiBNYW5hc2kg
TmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgo+PiBGaXhlczogZWFkZjZmOTE3MGQ1
ICgiZHJtL2k5MTUvZGlzcGxheS9pY2w6IEVuYWJsZSBtYXN0ZXItc2xhdmVzIGluIHRyYW5zIHBv
cnQgc3luYyIpCj4+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRl
bC5jb20+Cj4KPiBBaCBva2F5IHllcyBtYWtlcyBzZW5zIGV0byBhZGQgaXQgaW4gaW50ZWxfZGlz
cGxheS5jIFRoYW5rcyBmb3IgZml4aW5nIHRoaXMuCj4gQWZ0ZXIgcmVtb3ZpbmcgdGhlIHJlZHVu
ZGFudCBDYzosCj4KPiBSZXZpZXdlZC1ieTogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJl
QGludGVsLmNvbT4KCkZpbmFsbHkgcHVzaGVkLCB0aGFua3MgZm9yIHRoZSByZXZpZXcuCgpCUiwK
SmFuaS4KCj4KPiBNYW5hc2kKPgo+PiAtLS0KPj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jIHwgMSArCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuaCB8IDEgLQo+PiAgMiBmaWxlcyBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgMSBkZWxldGlvbigtKQo+PiAKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMKPj4gaW5kZXggOWRjZTJlOWU1Mzc2Li41MDVkNjk3ZjZiNGMgMTAwNjQ0
Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4+IEBA
IC02Niw2ICs2Niw3IEBACj4+ICAjaW5jbHVkZSAiaW50ZWxfY2RjbGsuaCIKPj4gICNpbmNsdWRl
ICJpbnRlbF9jb2xvci5oIgo+PiAgI2luY2x1ZGUgImludGVsX2Rpc3BsYXlfdHlwZXMuaCIKPj4g
KyNpbmNsdWRlICJpbnRlbF9kcF9saW5rX3RyYWluaW5nLmgiCj4+ICAjaW5jbHVkZSAiaW50ZWxf
ZmJjLmgiCj4+ICAjaW5jbHVkZSAiaW50ZWxfZmJkZXYuaCIKPj4gICNpbmNsdWRlICJpbnRlbF9m
aWZvX3VuZGVycnVuLmgiCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5oCj4+IGluZGV4IGNhN2NhMjgwNGQ4Yi4uNzI3OGY5YWVlOGNhIDEwMDY0NAo+PiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaAo+PiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaAo+PiBAQCAtMjcs
NyArMjcsNiBAQAo+PiAgCj4+ICAjaW5jbHVkZSA8ZHJtL2RybV91dGlsLmg+Cj4+ICAjaW5jbHVk
ZSA8ZHJtL2k5MTVfZHJtLmg+Cj4+IC0jaW5jbHVkZSAiaW50ZWxfZHBfbGlua190cmFpbmluZy5o
Igo+PiAgCj4+ICBlbnVtIGxpbmtfbV9uX3NldDsKPj4gIHN0cnVjdCBkcGxsOwo+PiAtLSAKPj4g
Mi4yMC4xCj4+IAoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBD
ZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
