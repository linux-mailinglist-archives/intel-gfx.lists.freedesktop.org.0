Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3AAB66D9
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2019 17:15:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85AFC6F3DA;
	Wed, 18 Sep 2019 15:15:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44B9E6F3DA
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2019 15:15:13 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Sep 2019 08:15:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,521,1559545200"; d="scan'208";a="270889570"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga001.jf.intel.com with ESMTP; 18 Sep 2019 08:15:11 -0700
Date: Wed, 18 Sep 2019 08:16:54 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20190918151651.GB29798@intel.com>
References: <20190909034325.20006-1-manasi.d.navare@intel.com>
 <20190909034325.20006-6-manasi.d.navare@intel.com>
 <156576de-c2a0-bbdc-7434-209df041e97c@linux.intel.com>
 <20190917163707.GA29180@intel.com>
 <33373f28-9e14-6753-55f6-47bf73bc1fec@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <33373f28-9e14-6753-55f6-47bf73bc1fec@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915/display/icl: Disable
 transcoder port sync as part of crtc_disable() sequence
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBTZXAgMTgsIDIwMTkgYXQgMTA6NTE6NTRBTSArMDIwMCwgTWFhcnRlbiBMYW5raG9y
c3Qgd3JvdGU6Cj4gT3AgMTctMDktMjAxOSBvbSAxODozNyBzY2hyZWVmIE1hbmFzaSBOYXZhcmU6
Cj4gPiBPbiBUdWUsIFNlcCAxNywgMjAxOSBhdCAwNTowNDoyOFBNICswMjAwLCBNYWFydGVuIExh
bmtob3JzdCB3cm90ZToKPiA+PiBPcCAwOS0wOS0yMDE5IG9tIDA1OjQzIHNjaHJlZWYgTWFuYXNp
IE5hdmFyZToKPiA+Pj4gVGhpcyBjbGVhcnMgdGhlIHRyYW5zY29kZXIgcG9ydCBzeW5jIGJpdHMg
b2YgdGhlIFRSQU5TX0RESV9GVU5DX0NUTDIKPiA+Pj4gcmVnaXN0ZXIgZHVyaW5nIGNydGNfZGlz
YWJsZSgpLgo+ID4+Pgo+ID4+PiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4KPiA+Pj4gQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmto
b3JzdEBsaW51eC5pbnRlbC5jb20+Cj4gPj4+IENjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9w
ZXJAaW50ZWwuY29tPgo+ID4+PiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNv
bT4KPiA+Pj4gU2lnbmVkLW9mZi1ieTogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGlu
dGVsLmNvbT4KPiA+Pj4gLS0tCj4gPj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYyB8IDIzICsrKysrKysrKysrKysrKysrKysrCj4gPj4+ICAxIGZpbGUgY2hh
bmdlZCwgMjMgaW5zZXJ0aW9ucygrKQo+ID4+Pgo+ID4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+ID4+PiBpbmRleCAzNTFjOTBhZDcwNTkuLjA3ZGVi
MGI5M2Y1YyAxMDA2NDQKPiA+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMKPiA+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMKPiA+Pj4gQEAgLTQ0MzgsNiArNDQzOCwyNiBAQCBzdGF0aWMgdm9pZCBp
Y2xfZW5hYmxlX3RyYW5zX3BvcnRfc3luYyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZQo+ID4+PiAgCQkgICB0cmFuc19kZGlfZnVuY19jdGwyX3ZhbCk7Cj4gPj4+ICB9
Cj4gPj4+ICAKPiA+Pj4gK3N0YXRpYyB2b2lkIGljbF9kaXNhYmxlX3RyYW5zY29kZXJfcG9ydF9z
eW5jKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0ZSkKPiA+Pj4g
K3sKPiA+Pj4gKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMob2xkX2Ny
dGNfc3RhdGUtPmJhc2UuY3J0Yyk7Cj4gPj4+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7Cj4gPj4+ICsJaTkxNV9yZWdfdCByZWc7
Cj4gPj4+ICsJdTMyIHRyYW5zX2RkaV9mdW5jX2N0bDJfdmFsOwo+ID4+PiArCj4gPj4+ICsJaWYg
KG9sZF9jcnRjX3N0YXRlLT5tYXN0ZXJfdHJhbnNjb2RlciA9PSBJTlZBTElEX1RSQU5TQ09ERVIp
Cj4gPj4+ICsJCXJldHVybjsKPiA+Pj4gKwo+ID4+PiArCURSTV9ERUJVR19LTVMoIkRpc2FibGlu
ZyBUcmFuc2NvZGVyIFBvcnQgU3luYyBvbiBTbGF2ZSBUcmFuc2NvZGVyICVzXG4iLAo+ID4+PiAr
CQkgICAgICB0cmFuc2NvZGVyX25hbWUob2xkX2NydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyKSk7
Cj4gPj4+ICsKPiA+Pj4gKwlyZWcgPSBUUkFOU19ERElfRlVOQ19DVEwyKG9sZF9jcnRjX3N0YXRl
LT5jcHVfdHJhbnNjb2Rlcik7Cj4gPj4+ICsJdHJhbnNfZGRpX2Z1bmNfY3RsMl92YWwgPSBJOTE1
X1JFQUQocmVnKTsKPiA+Pj4gKwl0cmFuc19kZGlfZnVuY19jdGwyX3ZhbCAmPSB+KFBPUlRfU1lO
Q19NT0RFX0VOQUJMRSB8Cj4gPj4+ICsJCQkJICAgICBQT1JUX1NZTkNfTU9ERV9NQVNURVJfU0VM
RUNUX01BU0spOwo+ID4+PiArCUk5MTVfV1JJVEUocmVnLCB0cmFuc19kZGlfZnVuY19jdGwyX3Zh
bCk7Cj4gPj4+ICt9Cj4gPj4+ICsKPiA+PiBXb3VsZCBhbnl0aGluZyBicmVhayBpZiB3ZSBqdXN0
IHdyb3RlIDAgaGVyZT8KPiA+IFdlIGRvbnQgd2FudCB0byBhY2NpZGVudGx5IHJlc2V0IG90aGVy
IGJpdHMgaW4gdGhlIHJlZ2lzdGVyIHdoaWNoIGFyZSBmb3IgRFNJIGFuZCBub3QgdXNlZCBjdXJy
ZW50bHkgYnV0Cj4gPiB0byBtYWtlIHRoaXMgZnVuY3Rpb24gbW9yZSBmdXR1cmUgcHJvb2YsIEkg
aGF2ZSBhdm9pZGVkIHdyaXRpbmcgYSAwCj4gPgo+ID4gQnV0IGlmIHlvdSBzdHJvbmdseSBmZWVs
IGFnYWluc3QgdGhpcywgSSBjYW4gc3dpdGNoIHRoaXMgdG8gd3JpdGluZyAwIGRpcmVjdGx5Lgo+
IAo+IFdlIG92ZXJ3cml0ZSBmdW5jX2N0bDIgaW4gZW5hYmxlX3BvcnRfc3luYyBzbyBpdCBtYWtl
cyBzZW5zZSB0byBkbyB0aGUgc2FtZSBpbiBkaXNhYmxlLiA6KQoKWWVzIGFzIHBlciB0aGUgcmV2
aWV3cyBvbiB0aGUgZW5hYmxlIHBhdGNoLCB0aGUgUk1XIHdhcyBub3QgcmVjb21tZW5kZWQsIHNv
IGV2ZW4gaGVyZSBJIHdpbGwganVzdCBvdmVyd3JpdGUgd2l0aCB+KFBPUlRfU1lOQ19NT0RFX0VO
QUJMRSB8IFBPUlRfU1lOQ19NT0RFX01BU1RFUl9TRUxFQ1RfTUFTSyk7CgpUaGlzIHNvdW5kcyBn
b29kPwoKTWFuYXNpCgo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
