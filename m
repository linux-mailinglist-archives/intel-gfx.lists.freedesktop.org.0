Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D086CBFBE
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2019 17:51:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3D7D6E12A;
	Fri,  4 Oct 2019 15:51:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18EF96EBD8
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Oct 2019 15:51:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Oct 2019 08:51:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,256,1566889200"; d="scan'208";a="205884097"
Received: from wurth-mobl.ger.corp.intel.com (HELO [10.252.56.3])
 ([10.252.56.3])
 by fmsmga001.fm.intel.com with ESMTP; 04 Oct 2019 08:51:16 -0700
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20191004113514.17064-1-maarten.lankhorst@linux.intel.com>
 <20191004113514.17064-10-maarten.lankhorst@linux.intel.com>
 <20191004133154.GC1208@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <53f2d46c-1732-4426-9f48-6901dfba0b87@linux.intel.com>
Date: Fri, 4 Oct 2019 17:51:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20191004133154.GC1208@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 09/24] drm/i915: Handle a few more cases for
 crtc hw/uapi split
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

T3AgMDQtMTAtMjAxOSBvbSAxNTozMSBzY2hyZWVmIFZpbGxlIFN5cmrDpGzDpDoKPiBPbiBGcmks
IE9jdCAwNCwgMjAxOSBhdCAwMTozNDo1OVBNICswMjAwLCBNYWFydGVuIExhbmtob3JzdCB3cm90
ZToKPj4gV2UgYXJlIHN0aWxsIGxvb2tpbmcgYXQgZHJtX2NydGNfc3RhdGUgaW4gYSBmZXcgcGxh
Y2VzLCBjb252ZXJ0IHRob3NlCj4+IHRvIHVzZSBpbnRlbF9jcnRjX3N0YXRlIGluc3RlYWQuIExv
b2sgYXQgdWFwaS9odyB3aGVyZSBhcHByb3ByaWF0ZS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogTWFh
cnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPj4gUmV2
aWV3ZWQtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Cj4+IC0tLQo+
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAxNCArKysr
KysrLS0tLS0tLQo+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3Qu
YyAgfCAgMiArLQo+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyAg
ICAgfCAgNCArKy0tCj4+ICAzIGZpbGVzIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDEwIGRl
bGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYwo+PiBpbmRleCBmNTU1ZmY2YjFmNmEuLmZjZDI5NWVkODBlZCAxMDA2NDQKPj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPj4gQEAgLTE2MTI2
LDggKzE2MTI2LDggQEAgc3RhdGljIGludCBpbnRlbF9pbml0aWFsX2NvbW1pdChzdHJ1Y3QgZHJt
X2RldmljZSAqZGV2KQo+PiAgewo+PiAgCXN0cnVjdCBkcm1fYXRvbWljX3N0YXRlICpzdGF0ZSA9
IE5VTEw7Cj4+ICAJc3RydWN0IGRybV9tb2Rlc2V0X2FjcXVpcmVfY3R4IGN0eDsKPj4gLQlzdHJ1
Y3QgZHJtX2NydGMgKmNydGM7Cj4+IC0Jc3RydWN0IGRybV9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
Owo+PiArCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOwo+PiArCXN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlOwo+IEknZCBwcmVmZXIgdG8gbGlmdCBtb3N0IG9mIHRoaXMgcGF0Y2gg
dG8gYmVmb3JlIHdlIGRvIHRoYXQgc3RhdGUgc3BsaXQKPiBzbyBpdCBjYW4gYmUgcHVzaGVkIG91
dCBvZiB0aGUgd2F5LgoKSWYgeW91IGFwcGx5CgpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9hcmNoaXZlcy9pbnRlbC1nZngvMjAxOS1TZXB0ZW1iZXIvMjE0MjY4Lmh0bWwKCmFuZCBJIHB1
dCB0aGlzIGJlZm9yZSB0aGUgaHcgc3BsaXQgcGF0Y2gsIGRvIEkgZ2V0IHlvdXIgci1iIHVwIHRv
IFtQQVRDSCAxMi8yNF0gZHJtL2k5MTU6IFNwbGl0IHBsYW5lIGh3IGFuZCB1YXBpIHN0YXRlID8K
Cn5NYWFydGVuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
