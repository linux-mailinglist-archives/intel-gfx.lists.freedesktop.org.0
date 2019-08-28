Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA4AA0B1D
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2019 22:10:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3E4189E57;
	Wed, 28 Aug 2019 20:10:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1A9789E57
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2019 20:10:31 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Aug 2019 13:10:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,442,1559545200"; d="scan'208";a="381398531"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by fmsmga006.fm.intel.com with ESMTP; 28 Aug 2019 13:10:30 -0700
Date: Wed, 28 Aug 2019 13:12:10 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Madhumitha Tolakanahalli Pradeep
 <madhumitha.tolakanahalli.pradeep@intel.com>
Message-ID: <20190828201210.GH701@intel.com>
References: <20190823004655.28905-1-madhumitha.tolakanahalli.pradeep@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190823004655.28905-1-madhumitha.tolakanahalli.pradeep@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Enabling DSC on Pipe A for TGL
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

VGhhbmtzIGZvciB0aGUgcGF0Y2ggYW5kIHJldmlld3MsIHB1c2hlZCB0byBkaW5xCgpSZWdhcmRz
Ck1hbmFzaQoKT24gVGh1LCBBdWcgMjIsIDIwMTkgYXQgMDU6NDY6NTVQTSAtMDcwMCwgTWFkaHVt
aXRoYSBUb2xha2FuYWhhbGxpIFByYWRlZXAgd3JvdGU6Cj4gRFNDIHdhcyBub3Qgc3VwcG9ydGVk
IG9uIFBpcGUgQSBmb3IgcHJldmlvdXMgcGxhdGZvcm1zLiBUaWdlcmxha2Ugb253YXJkcywKPiBh
bGwgdGhlIHBpcGVzIHN1cHBvcnQgRFNDLiBIZW5jZSwgdGhlIERTQyBhbmQgRkVDIHJlc3RyaWN0
aW9uIG9uCj4gUGlwZSBBIG5lZWRzIHRvIGJlIHJlbW92ZWQuCj4gCj4gdjI6IENoYW5nZXMgaW4g
dGhlIGxvZ2ljIGFyb3VuZCByZW1vdmluZyB0aGUgcmVzdHJpY3Rpb24gYXJvdW5kCj4gICAgIFBp
cGUgQSAoTWFuYXNpLCBMdWNhcykKPiAKPiBDYzogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2
YXJlQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBNYWRodW1pdGhhIFRvbGFrYW5haGFsbGkg
UHJhZGVlcCA8bWFkaHVtaXRoYS50b2xha2FuYWhhbGxpLnByYWRlZXBAaW50ZWwuY29tPgo+IC0t
LQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCAyMSArKysrKysr
KysrKysrKysrKy0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDQgZGVs
ZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+IGlu
ZGV4IDQ4ODRjODdjOGVkNy4uZTJjOGZlMjc0Yzg0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuYwo+IEBAIC0xNzM5LDggKzE3MzksMTQgQEAgc3RhdGljIGJvb2wg
aW50ZWxfZHBfc291cmNlX3N1cHBvcnRzX2ZlYyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAo+
ICB7Cj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBkcF90b19pOTE1KGlu
dGVsX2RwKTsKPiAgCj4gLQlyZXR1cm4gSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSAmJgo+IC0J
CXBpcGVfY29uZmlnLT5jcHVfdHJhbnNjb2RlciAhPSBUUkFOU0NPREVSX0E7Cj4gKwkvKiBPbiBU
R0wsIEZFQyBpcyBzdXBwb3J0ZWQgb24gYWxsIFBpcGVzICovCj4gKwlpZiAoSU5URUxfR0VOKGRl
dl9wcml2KSA+PSAxMikKPiArCQlyZXR1cm4gdHJ1ZTsKPiArCj4gKwlpZiAoSVNfR0VOKGRldl9w
cml2LCAxMSkgJiYgcGlwZV9jb25maWctPmNwdV90cmFuc2NvZGVyICE9IFRSQU5TQ09ERVJfQSkK
PiArCQlyZXR1cm4gdHJ1ZTsKPiArCj4gKwlyZXR1cm4gZmFsc2U7Cj4gIH0KPiAgCj4gIHN0YXRp
YyBib29sIGludGVsX2RwX3N1cHBvcnRzX2ZlYyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAo+
IEBAIC0xNzU1LDggKzE3NjEsMTUgQEAgc3RhdGljIGJvb2wgaW50ZWxfZHBfc291cmNlX3N1cHBv
cnRzX2RzYyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAo+ICB7Cj4gIAlzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBkcF90b19pOTE1KGludGVsX2RwKTsKPiAgCj4gLQlyZXR1
cm4gSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMCAmJgo+IC0JCXBpcGVfY29uZmlnLT5jcHVfdHJh
bnNjb2RlciAhPSBUUkFOU0NPREVSX0E7Cj4gKwkvKiBPbiBUR0wsIERTQyBpcyBzdXBwb3J0ZWQg
b24gYWxsIFBpcGVzICovCj4gKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikKPiArCQly
ZXR1cm4gdHJ1ZTsKPiArCj4gKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMCAmJgo+ICsJ
ICAgIHBpcGVfY29uZmlnLT5jcHVfdHJhbnNjb2RlciAhPSBUUkFOU0NPREVSX0EpCj4gKwkJcmV0
dXJuIHRydWU7Cj4gKwo+ICsJcmV0dXJuIGZhbHNlOwo+ICB9Cj4gIAo+ICBzdGF0aWMgYm9vbCBp
bnRlbF9kcF9zdXBwb3J0c19kc2Moc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKPiAtLSAKPiAy
LjE3LjEKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
