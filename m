Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4186FFD9E
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2019 05:57:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B46489F27;
	Mon, 18 Nov 2019 04:57:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CFB089F27
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 04:57:11 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Nov 2019 20:57:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,319,1569308400"; d="scan'208";a="380534674"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga005.jf.intel.com with ESMTP; 17 Nov 2019 20:57:10 -0800
Date: Sun, 17 Nov 2019 21:00:16 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: Animesh Manna <animesh.manna@intel.com>
Message-ID: <20191118050016.GD1135@intel.com>
References: <20191115152549.23047-1-animesh.manna@intel.com>
 <20191115152549.23047-6-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191115152549.23047-6-animesh.manna@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [RFC 5/7] drm/i915/dp: Register definition for DP
 compliance register
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
Cc: jani.nikula@intel.com, nidhi1.gupta@intel.com,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBOb3YgMTUsIDIwMTkgYXQgMDg6NTU6NDdQTSArMDUzMCwgQW5pbWVzaCBNYW5uYSB3
cm90ZToKPiBEUF9DT01QX0NUTCBhbmQgRFBfQ09NUF9QQVQgcmVnaXN0ZXIgdXNlZCB0byBwcm9n
cmFtIERQCj4gY29tcGxpYW5jZSBwYXR0ZXJuLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEFuaW1lc2gg
TWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPgoKUmV2aWV3ZWQtYnk6IE1hbmFzaSBOYXZh
cmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+CgpNYW5hc2kKCj4gLS0tCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmggfCAyMCArKysrKysrKysrKysrKysrKysrKwo+ICAxIGZp
bGUgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+
IGluZGV4IDQ3OGY1ZmY2YzU1NC4uODc3NzQzMzdjMmEyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oCj4gQEAgLTk3NzIsNiArOTc3MiwyNiBAQCBlbnVtIHNrbF9wb3dlcl9nYXRlIHsKPiAg
I2RlZmluZSAgRERJX0JVRl9CQUxBTkNFX0xFR19FTkFCTEUJKDEgPDwgMzEpCj4gICNkZWZpbmUg
RERJX0JVRl9UUkFOU19ISShwb3J0LCBpKQlfTU1JTyhfUE9SVChwb3J0LCBfRERJX0JVRl9UUkFO
U19BLCBfRERJX0JVRl9UUkFOU19CKSArIChpKSAqIDggKyA0KQo+ICAKPiArLyogRERJIERQIENv
bXBsaWFuY2UgQ29udHJvbCAqLwo+ICsjZGVmaW5lIERESV9EUF9DT01QX0NUTF9BICAgICAgICAg
ICAgICAgICAgICAgIDB4NjA1RjAKPiArI2RlZmluZSBERElfRFBfQ09NUF9DVExfQiAgICAgICAg
ICAgICAgICAgICAgICAweDYxNUYwCj4gKyNkZWZpbmUgRERJX0RQX0NPTVBfQ1RMKHBvcnQpIF9N
TUlPX1BPUlQocG9ydCwgRERJX0RQX0NPTVBfQ1RMX0EsIFwKPiArCQkJCQkgRERJX0RQX0NPTVBf
Q1RMX0IpCj4gKyNkZWZpbmUgIERESV9EUF9DT01QX0NUTF9FTkFCTEUgICAgICAgICAgICAgICAg
ICAgICAgICAoMSA8PCAzMSkKPiArI2RlZmluZSAgRERJX0RQX0NPTVBfQ1RMX0QxMF8yICAgICAg
ICAgICAgICAgICAoMCA8PCAyOCkKPiArI2RlZmluZSAgRERJX0RQX0NPTVBfQ1RMX1NDUkFNQkxF
RF8wICAgICAgICAgICAoMSA8PCAyOCkKPiArI2RlZmluZSAgRERJX0RQX0NPTVBfQ1RMX1BSQlM3
ICAgICAgICAgICAgICAgICAoMiA8PCAyOCkKPiArI2RlZmluZSAgRERJX0RQX0NPTVBfQ1RMX0NV
U1RPTTgwICAgICAgICAgICAgICAgICAgICAgICgzIDw8IDI4KQo+ICsjZGVmaW5lICBERElfRFBf
Q09NUF9DVExfSEJSMiAgICAgICAgICAgICAgICAgICg0IDw8IDI4KQo+ICsjZGVmaW5lICBERElf
RFBfQ09NUF9DVExfU0NSQU1CTEVEXzEgICAgICAgICAgICg1IDw8IDI4KQo+ICsjZGVmaW5lICBE
RElfRFBfQ09NUF9DVExfSEJSMl9SRVNFVCAgICAgICAgICAgICgweEZDIDw8IDApCj4gKwo+ICsv
KiBEREkgRFAgQ29tcGxpYW5jZSBQYXR0ZXJuICovCj4gKyNkZWZpbmUgRERJX0RQX0NPTVBfUEFU
X0EgICAgICAgICAgICAgICAgICAgICAgMHg2MDVGNAo+ICsjZGVmaW5lIERESV9EUF9DT01QX1BB
VF9CICAgICAgICAgICAgICAgICAgICAgIDB4NjE1RjQKPiArI2RlZmluZSBERElfRFBfQ09NUF9Q
QVQocG9ydCwgaSkgX01NSU8oX1BPUlQocG9ydCwgRERJX0RQX0NPTVBfUEFUX0EsIFwKPiArCQkJ
CQkgICAgIERESV9EUF9DT01QX1BBVF9CKSArIChpKSAqIDQpCj4gKwo+ICAvKiBTaWRlYmFuZCBJ
bnRlcmZhY2UgKFNCSSkgaXMgcHJvZ3JhbW1lZCBpbmRpcmVjdGx5LCB2aWEKPiAgICogU0JJX0FE
RFIsIHdoaWNoIGNvbnRhaW5zIHRoZSByZWdpc3RlciBvZmZzZXQ7IGFuZCBTQklfREFUQSwKPiAg
ICogd2hpY2ggY29udGFpbnMgdGhlIHBheWxvYWQgKi8KPiAtLSAKPiAyLjIyLjAKPiAKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
