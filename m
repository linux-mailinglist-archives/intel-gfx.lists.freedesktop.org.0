Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7587A272176
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Sep 2020 12:49:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F70F6E260;
	Mon, 21 Sep 2020 10:49:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 079216E25C;
 Mon, 21 Sep 2020 10:49:35 +0000 (UTC)
IronPort-SDR: iXyGDoyz9jZefbu17xS114pG9Ygs1ZkJF29eSjTow9yyDZrR3KexBkksFs1fRqAHfE8kqmFT5w
 qTSIscgjM4kA==
X-IronPort-AV: E=McAfee;i="6000,8403,9750"; a="148100850"
X-IronPort-AV: E=Sophos;i="5.77,286,1596524400"; d="scan'208";a="148100850"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2020 03:49:33 -0700
IronPort-SDR: EiBPu+dE3fGUi7EQ+Yls2lvQgJ90MHJyxlP1ErQ8Y4WyU2miqV3ZxSKxzoHNPEqObHlXL4xySz
 0C6FSDztHbhA==
X-IronPort-AV: E=Sophos;i="5.77,286,1596524400"; d="scan'208";a="485392049"
Received: from kbs1-mobl1.gar.corp.intel.com (HELO [10.252.173.129])
 ([10.252.173.129])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2020 03:49:30 -0700
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20200916150824.15749-4-karthik.b.s@intel.com>
 <20200918090234.18038-1-karthik.b.s@intel.com>
 <20200918115132.GI6112@intel.com>
From: Karthik B S <karthik.b.s@intel.com>
Message-ID: <326a1a46-9a17-695e-211d-a8ec95616b1b@intel.com>
Date: Mon, 21 Sep 2020 16:19:28 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200918115132.GI6112@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v10 3/8] drm/i915: Add checks specific to
 async flips
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
Cc: paulo.r.zanoni@intel.com, michel@daenzer.net,
 dri-devel@lists.freedesktop.org, nicholas.kazlauskas@amd.com,
 daniel.vetter@intel.com, harry.wentland@amd.com,
 intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA5LzE4LzIwMjAgNToyMSBQTSwgVmlsbGUgU3lyasOkbMOkIHdyb3RlOgo+IE9uIEZyaSwg
U2VwIDE4LCAyMDIwIGF0IDAyOjMyOjM0UE0gKzA1MzAsIEthcnRoaWsgQiBTIHdyb3RlOgo+PiBJ
ZiBmbGlwIGlzIHJlcXVlc3RlZCBvbiBhbnkgb3RoZXIgcGxhbmUsIHJlamVjdCBpdC4KPj4KPj4g
TWFrZSBzdXJlIHRoZXJlIGlzIG5vIGNoYW5nZSBpbiBmYmMsIG9mZnNldCBhbmQgZnJhbWVidWZm
ZXIgbW9kaWZpZXJzCj4+IHdoZW4gYXN5bmMgZmxpcCBpcyByZXF1ZXN0ZWQuCj4+Cj4+IElmIGFu
eSBvZiB0aGVzZSBhcmUgbW9kaWZpZWQsIHJlamVjdCBhc3luYyBmbGlwLgo+Pgo+PiB2MjogLVJl
cGxhY2UgRFJNX0VSUk9SIChQYXVsbykKPj4gICAgICAtQWRkIGNoZWNrIGZvciBjaGFuZ2VzIGlu
IE9GRlNFVCwgRkJDLCBSQyhQYXVsbykKPj4KPj4gdjM6IC1SZW1vdmVkIFRPRE8gYXMgYmVuY2ht
YXJraW5nIHRlc3RzIGhhdmUgYmVlbiBydW4gbm93Lgo+Pgo+PiB2NDogLUFkZGVkIG1vcmUgc3Rh
dGUgY2hlY2tzIGZvciBhc3luYyBmbGlwIChWaWxsZSkKPj4gICAgICAtTW92ZWQgaW50ZWxfYXRv
bWljX2NoZWNrX2FzeW5jIHRvIHRoZSBlbmQgb2YgaW50ZWxfYXRvbWljX2NoZWNrCj4+ICAgICAg
IGFzIHRoZSBwbGFuZSBjaGVja3MgbmVlZHMgdG8gcGFzcyBiZWZvcmUgdGhpcy4gKFZpbGxlKQo+
PiAgICAgIC1SZW1vdmVkIGNydGNfc3RhdGUtPmVuYWJsZV9mYmMgY2hlY2suIChWaWxsZSkKPj4g
ICAgICAtU2V0IHRoZSBJOTE1X01PREVfRkxBR19HRVRfU0NBTkxJTkVfRlJPTV9USU1FU1RBTVAg
ZmxhZyBmb3IgYXN5bmMKPj4gICAgICAgZmxpcCBjYXNlIGFzIHNjYW5saW5lIGNvdW50ZXIgaXMg
bm90IHJlbGlhYmxlIGhlcmUuCj4+Cj4+IHY1OiAtRml4IHR5cG8gYW5kIG90aGVyIGNoZWNrIHBh
dGNoIGVycm9ycyBzZWVuIGluIENJCj4+ICAgICAgIGluICdpbnRlbF9hdG9taWNfY2hlY2tfYXN5
bmMnIGZ1bmN0aW9uLgo+Pgo+PiB2NjogLURvbid0IGNhbGwgaW50ZWxfYXRvbWljX2NoZWNrX2Fz
eW5jIG11bHRpcGxlIHRpbWVzLiAoVmlsbGUpCj4+ICAgICAgLVJlbW92ZSB0aGUgY2hlY2sgZm9y
IG5fcGxhbmVzIGluIGludGVsX2F0b21pY19jaGVja19hc3luYwo+PiAgICAgIC1BZGRlZCBkb2N1
bWVudGF0aW9uIGZvciBhc3luYyBmbGlwcy4gKFBhdWxvKQo+Pgo+PiB2NzogLVJlcGxhY2UgJ2lu
dGVsX3BsYW5lJyB3aXRoICdwbGFuZScuIChWaWxsZSkKPj4gICAgICAtUmVwbGFjZSBhbGwgdWFw
aS5mb28gYXMgaHcuZm9vLiAoVmlsbGUpCj4+ICAgICAgLURvIG5vdCB1c2UgaW50ZWxfd21fbmVl
ZF91cGRhdGUgZnVuY3Rpb24uIChWaWxsZSkKPj4gICAgICAtQWRkIGRlc3RpbmF0aW9uIGNvb3Jk
aW5hdGUgY2hlY2suIChWaWxsZSkKPj4gICAgICAtRG8gbm90IGFsbG93IGFzeW5jIGZsaXAgd2l0
aCBsaW5lYXIgYnVmZmVyCj4+ICAgICAgIG9uIG9sZGVyIGh3IGFzIGl0IGhhcyBpc3N1ZXMgd2l0
aCB0aGlzLiAoVmlsbGUpCj4+ICAgICAgLVJlbW92ZSBicmVhayBhZnRlciBpbnRlbF9hdG9taWNf
Y2hlY2tfYXN5bmMuIChWaWxsZSkKPj4KPj4gdjg6IC1SZWJhc2VkLgo+Pgo+PiB2OTogLVJlcGxh
Y2UgRFJNX0RFQlVHX0tNUyB3aXRoIGRybV9kYmdfa21zKCkuIChWaWxsZSkKPj4gICAgICAtRml4
IGNvbW1lbnQgZm9ybWF0dGluZy4gKFZpbGxlKQo+PiAgICAgIC1SZW1vdmUgZ2VuIHNwZWNpZmlj
IGNoZWNrcy4gKFZpbGxlKQo+PiAgICAgIC1SZW1vdmUgaXJyZWxldmFudCBGQiBzaXplIGNoZWNr
LiAoVmlsbGUpCj4+ICAgICAgLUFkZCBtaXNzaW5nIHN0cmlkZSBjaGVjay4gKFZpbGxlKQo+PiAg
ICAgIC1Vc2UgZHJtX3JlY3RfZXF1YWxzKCkgaW5zdGVhZCBvZiBpbmRpdmlkdWFsIGNoZWNrcy4g
KFZpbGxlKQo+PiAgICAgIC1DYWxsIGludGVsX2F0b21pY19jaGVja19hc3luYyBiZWZvcmUgc3Rh
dGUgZHVtcC4gKFZpbGxlKQo+Pgo+PiB2MTA6IC1GaXggdGhlIGNoZWNrcGF0Y2ggZXJyb3JzIHNl
ZW4gb24gQ0kuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEthcnRoaWsgQiBTIDxrYXJ0aGlrLmIuc0Bp
bnRlbC5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IFZhbmRpdGEgS3Vsa2FybmkgPHZhbmRpdGEua3Vs
a2FybmlAaW50ZWwuY29tPgo+PiAtLS0KPj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYyB8IDEzNyArKysrKysrKysrKysrKysrKysrCj4+ICAgMSBmaWxlIGNo
YW5nZWQsIDEzNyBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jCj4+IGluZGV4IDMwZTg5MDhlZTI2My4uNzMyN2VkNGEwNGY4
IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
Ywo+PiBAQCAtMTQ4NzcsNiArMTQ4NzcsMTM3IEBAIHN0YXRpYyBib29sIGludGVsX2NwdV90cmFu
c2NvZGVyc19uZWVkX21vZGVzZXQoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCj4+
ICAgCXJldHVybiBmYWxzZTsKPj4gICB9Cj4+ICAgCj4+ICsvKioKPj4gKyAqIERPQzogYXN5bmNo
cm9ub3VzIGZsaXAgaW1wbGVtZW50YXRpb24KPj4gKyAqCj4+ICsgKiBBc3luY2hyb25vdXMgcGFn
ZSBmbGlwIGlzIHRoZSBpbXBsZW1lbnRhdGlvbiBmb3IgdGhlIERSTV9NT0RFX1BBR0VfRkxJUF9B
U1lOQwo+PiArICogZmxhZy4gQ3VycmVudGx5IGFzeW5jIGZsaXAgaXMgb25seSBzdXBwb3J0ZWQg
dmlhIHRoZSBkcm1Nb2RlUGFnZUZsaXAgSU9DVEwuCj4+ICsgKiBDb3JyZXNwb25kaW5nbHksIHN1
cHBvcnQgaXMgY3VycmVudGx5IGFkZGVkIGZvciBwcmltYXJ5IHBsYW5lIG9ubHkuCj4+ICsgKgo+
PiArICogQXN5bmMgZmxpcCBjYW4gb25seSBjaGFuZ2UgdGhlIHBsYW5lIHN1cmZhY2UgYWRkcmVz
cywgc28gYW55dGhpbmcgZWxzZQo+PiArICogY2hhbmdpbmcgaXMgcmVqZWN0ZWQgZnJvbSB0aGUg
aW50ZWxfYXRvbWljX2NoZWNrX2FzeW5jKCkgZnVuY3Rpb24uCj4+ICsgKiBPbmNlIHRoaXMgY2hl
Y2sgaXMgY2xlYXJlZCwgZmxpcCBkb25lIGludGVycnVwdCBpcyBlbmFibGVkIHVzaW5nCj4+ICsg
KiB0aGUgc2tsX2VuYWJsZV9mbGlwX2RvbmUoKSBmdW5jdGlvbi4KPj4gKyAqCj4+ICsgKiBBcyBz
b29uIGFzIHRoZSBzdXJmYWNlIGFkZHJlc3MgcmVnaXN0ZXIgaXMgd3JpdHRlbiwgZmxpcCBkb25l
IGludGVycnVwdCBpcwo+PiArICogZ2VuZXJhdGVkIGFuZCB0aGUgcmVxdWVzdGVkIGV2ZW50cyBh
cmUgc2VudCB0byB0aGUgdXNlcnNhcGNlIGluIHRoZSBpbnRlcnJ1cHQKPj4gKyAqIGhhbmRsZXIg
aXRzZWxmLiBUaGUgdGltZXN0YW1wIGFuZCBzZXF1ZW5jZSBzZW50IGR1cmluZyB0aGUgZmxpcCBk
b25lIGV2ZW50Cj4+ICsgKiBjb3JyZXNwb25kIHRvIHRoZSBsYXN0IHZibGFuayBhbmQgaGF2ZSBu
byByZWxhdGlvbiB0byB0aGUgYWN0dWFsIHRpbWUgd2hlbgo+PiArICogdGhlIGZsaXAgZG9uZSBl
dmVudCB3YXMgc2VudC4KPj4gKyAqLwo+PiArCj4+ICtzdGF0aWMgaW50IGludGVsX2F0b21pY19j
aGVja19hc3luYyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKPj4gK3sKPj4gKwlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoc3RhdGUtPmJhc2UuZGV2KTsK
Pj4gKwlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUsICpuZXdfY3J0Y19z
dGF0ZTsKPj4gKwlzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKm5ld19wbGFuZV9zdGF0ZSwgKm9s
ZF9wbGFuZV9zdGF0ZTthCj4gCj4gQWxsIHBsYW5lL2NydGMgc3RhdGVzIGNhbiBiZSBjb25zdCBJ
IGJlbGlldmUuCj4gCgpUaGFua3MgZm9yIHRoZSByZXZpZXcuClN1cmUsIEknbGwgdXBkYXRlIHRo
aXMuCj4+ICsJc3RydWN0IGludGVsX2NydGMgKmNydGM7Cj4+ICsJc3RydWN0IGludGVsX3BsYW5l
ICpwbGFuZTsKPj4gKwlpbnQgaTsKPj4gKwo+PiArCWZvcl9lYWNoX29sZG5ld19pbnRlbF9jcnRj
X2luX3N0YXRlKHN0YXRlLCBjcnRjLCBvbGRfY3J0Y19zdGF0ZSwKPj4gKwkJCQkJICAgIG5ld19j
cnRjX3N0YXRlLCBpKSB7Cj4+ICsJCWlmIChuZWVkc19tb2Rlc2V0KG5ld19jcnRjX3N0YXRlKSkg
ewo+PiArCQkJZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwgIk1vZGVzZXQgUmVxdWlyZWQuIEFzeW5j
IGZsaXAgbm90IHN1cHBvcnRlZFxuIik7Cj4+ICsJCQlyZXR1cm4gLUVJTlZBTDsKPj4gKwkJfQo+
PiArCj4+ICsJCWlmICghbmV3X2NydGNfc3RhdGUtPmh3LmFjdGl2ZSkgewo+PiArCQkJZHJtX2Ri
Z19rbXMoJmk5MTUtPmRybSwgIkNSVEMgaW5hY3RpdmVcbiIpOwo+PiArCQkJcmV0dXJuIC1FSU5W
QUw7Cj4+ICsJCX0KPj4gKwkJaWYgKG9sZF9jcnRjX3N0YXRlLT5hY3RpdmVfcGxhbmVzICE9IG5l
d19jcnRjX3N0YXRlLT5hY3RpdmVfcGxhbmVzKSB7Cj4+ICsJCQlkcm1fZGJnX2ttcygmaTkxNS0+
ZHJtLAo+PiArCQkJCSAgICAiQWN0aXZlIHBsYW5lcyBjYW5ub3QgYmUgY2hhbmdlZCBkdXJpbmcg
YXN5bmMgZmxpcFxuIik7Cj4+ICsJCQlyZXR1cm4gLUVJTlZBTDsKPj4gKwkJfQo+PiArCX0KPj4g
Kwo+PiArCWZvcl9lYWNoX29sZG5ld19pbnRlbF9wbGFuZV9pbl9zdGF0ZShzdGF0ZSwgcGxhbmUs
IG9sZF9wbGFuZV9zdGF0ZSwKPj4gKwkJCQkJICAgICBuZXdfcGxhbmVfc3RhdGUsIGkpIHsKPj4g
KwkJLyoKPj4gKwkJICogVE9ETzogQXN5bmMgZmxpcCBpcyBvbmx5IHN1cHBvcnRlZCB0aHJvdWdo
IHRoZSBwYWdlIGZsaXAgSU9DVEwKPj4gKwkJICogYXMgb2Ygbm93LiBTbyBzdXBwb3J0IGN1cnJl
bnRseSBhZGRlZCBmb3IgcHJpbWFyeSBwbGFuZSBvbmx5Lgo+PiArCQkgKiBTdXBwb3J0IGZvciBv
dGhlciBwbGFuZXMgb24gcGxhdGZvcm1zIG9uIHdoaWNoIHN1cHBvcnRzCj4+ICsJCSAqIHRoaXMo
dmx2L2NodiBhbmQgaWNsKykgc2hvdWxkIGJlIGFkZGVkIHdoZW4gYXN5bmMgZmxpcCBpcwo+PiAr
CQkgKiBlbmFibGVkIGluIHRoZSBhdG9taWMgSU9DVEwgcGF0aC4KPj4gKwkJICovCj4+ICsJCWlm
IChwbGFuZS0+aWQgIT0gUExBTkVfUFJJTUFSWSkKPj4gKwkJCXJldHVybiAtRUlOVkFMOwo+PiAr
Cj4+ICsJCS8qCj4+ICsJCSAqIEZJWE1FOiBUaGlzIGNoZWNrIGlzIGtlcHQgZ2VuZXJpYyBmb3Ig
YWxsIHBsYXRmb3Jtcy4KPj4gKwkJICogTmVlZCB0byB2ZXJpZnkgdGhpcyBmb3IgYWxsIGdlbjkg
YW5kIGdlbjEwIHBsYXRmb3JtcyB0byBlbmFibGUKPj4gKwkJICogdGhpcyBzZWxlY3RpdmVseSBp
ZiByZXF1aXJlZC4KPj4gKwkJICovCj4+ICsJCWlmICghKG5ld19wbGFuZV9zdGF0ZS0+aHcuZmIt
Pm1vZGlmaWVyICE9IEk5MTVfRk9STUFUX01PRF9YX1RJTEVEIHx8Cj4+ICsJCSAgICAgIG5ld19w
bGFuZV9zdGF0ZS0+aHcuZmItPm1vZGlmaWVyICE9IEk5MTVfRk9STUFUX01PRF9ZX1RJTEVEIHx8
Cj4+ICsJCSAgICAgIG5ld19wbGFuZV9zdGF0ZS0+aHcuZmItPm1vZGlmaWVyICE9IEk5MTVfRk9S
TUFUX01PRF9ZZl9USUxFRCkpIHsKPiAKPiBJIHN1c3BlY3QgYSBzd2l0Y2goKSB3b3VsZCBiZSBs
ZXNzIHVnbHkKPiAKClN1cmUsIEknbGwgY2hhbmdlIHRoaXMgdG8gc3dpdGNoKCkuCgo+IGxvb2tz
IGdvb2Qgb3RoZXJ3aXNlCj4gUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCgpUaGFua3MsCkthcnRoaWsuQi5TCj4+ICsJCQlkcm1f
ZGJnX2ttcygmaTkxNS0+ZHJtLAo+PiArCQkJCSAgICAiTGluZWFyIG1lbW9yeS9DQ1MgZG9lcyBu
b3Qgc3VwcG9ydCBhc3luYyBmbGlwc1xuIik7Cj4+ICsJCQlyZXR1cm4gLUVJTlZBTDsKPj4gKwkJ
fQo+PiArCj4+ICsJCWlmIChvbGRfcGxhbmVfc3RhdGUtPmNvbG9yX3BsYW5lWzBdLnN0cmlkZSAh
PQo+PiArCQkgICAgbmV3X3BsYW5lX3N0YXRlLT5jb2xvcl9wbGFuZVswXS5zdHJpZGUpIHsKPj4g
KwkJCWRybV9kYmdfa21zKCZpOTE1LT5kcm0sICJTdHJpZGUgY2Fubm90IGJlIGNoYW5nZWQgaW4g
YXN5bmMgZmxpcFxuIik7Cj4+ICsJCQlyZXR1cm4gLUVJTlZBTDsKPj4gKwkJfQo+PiArCj4+ICsJ
CWlmIChvbGRfcGxhbmVfc3RhdGUtPmh3LmZiLT5tb2RpZmllciAhPQo+PiArCQkgICAgbmV3X3Bs
YW5lX3N0YXRlLT5ody5mYi0+bW9kaWZpZXIpIHsKPj4gKwkJCWRybV9kYmdfa21zKCZpOTE1LT5k
cm0sCj4+ICsJCQkJICAgICJGcmFtZWJ1ZmZlciBtb2RpZmllcnMgY2Fubm90IGJlIGNoYW5nZWQg
aW4gYXN5bmMgZmxpcFxuIik7Cj4+ICsJCQlyZXR1cm4gLUVJTlZBTDsKPj4gKwkJfQo+PiArCj4+
ICsJCWlmIChvbGRfcGxhbmVfc3RhdGUtPmh3LmZiLT5mb3JtYXQgIT0KPj4gKwkJICAgIG5ld19w
bGFuZV9zdGF0ZS0+aHcuZmItPmZvcm1hdCkgewo+PiArCQkJZHJtX2RiZ19rbXMoJmk5MTUtPmRy
bSwKPj4gKwkJCQkgICAgIkZyYW1lYnVmZmVyIGZvcm1hdCBjYW5ub3QgYmUgY2hhbmdlZCBpbiBh
c3luYyBmbGlwXG4iKTsKPj4gKwkJCXJldHVybiAtRUlOVkFMOwo+PiArCQl9Cj4+ICsKPj4gKwkJ
aWYgKG9sZF9wbGFuZV9zdGF0ZS0+aHcucm90YXRpb24gIT0KPj4gKwkJICAgIG5ld19wbGFuZV9z
dGF0ZS0+aHcucm90YXRpb24pIHsKPj4gKwkJCWRybV9kYmdfa21zKCZpOTE1LT5kcm0sICJSb3Rh
dGlvbiBjYW5ub3QgYmUgY2hhbmdlZCBpbiBhc3luYyBmbGlwXG4iKTsKPj4gKwkJCXJldHVybiAt
RUlOVkFMOwo+PiArCQl9Cj4+ICsKPj4gKwkJaWYgKCFkcm1fcmVjdF9lcXVhbHMoJm9sZF9wbGFu
ZV9zdGF0ZS0+dWFwaS5zcmMsICZuZXdfcGxhbmVfc3RhdGUtPnVhcGkuc3JjKSB8fAo+PiArCQkg
ICAgIWRybV9yZWN0X2VxdWFscygmb2xkX3BsYW5lX3N0YXRlLT51YXBpLmRzdCwgJm5ld19wbGFu
ZV9zdGF0ZS0+dWFwaS5kc3QpKSB7Cj4+ICsJCQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLAo+PiAr
CQkJCSAgICAiUGxhbmUgc2l6ZS9jby1vcmRpbmF0ZXMgY2Fubm90IGJlIGNoYW5nZWQgaW4gYXN5
bmMgZmxpcFxuIik7Cj4+ICsJCQlyZXR1cm4gLUVJTlZBTDsKPj4gKwkJfQo+PiArCj4+ICsJCWlm
IChvbGRfcGxhbmVfc3RhdGUtPmh3LmFscGhhICE9IG5ld19wbGFuZV9zdGF0ZS0+aHcuYWxwaGEp
IHsKPj4gKwkJCWRybV9kYmdfa21zKCZpOTE1LT5kcm0sICJBbHBoYSB2YWx1ZSBjYW5ub3QgYmUg
Y2hhbmdlZCBpbiBhc3luYyBmbGlwXG4iKTsKPj4gKwkJCXJldHVybiAtRUlOVkFMOwo+PiArCQl9
Cj4+ICsKPj4gKwkJaWYgKG9sZF9wbGFuZV9zdGF0ZS0+aHcucGl4ZWxfYmxlbmRfbW9kZSAhPQo+
PiArCQkgICAgbmV3X3BsYW5lX3N0YXRlLT5ody5waXhlbF9ibGVuZF9tb2RlKSB7Cj4+ICsJCQlk
cm1fZGJnX2ttcygmaTkxNS0+ZHJtLAo+PiArCQkJCSAgICAiUGl4ZWwgYmxlbmQgbW9kZSBjYW5u
b3QgYmUgY2hhbmdlZCBpbiBhc3luYyBmbGlwXG4iKTsKPj4gKwkJCXJldHVybiAtRUlOVkFMOwo+
PiArCQl9Cj4+ICsKPj4gKwkJaWYgKG9sZF9wbGFuZV9zdGF0ZS0+aHcuY29sb3JfZW5jb2Rpbmcg
IT0gbmV3X3BsYW5lX3N0YXRlLT5ody5jb2xvcl9lbmNvZGluZykgewo+PiArCQkJZHJtX2RiZ19r
bXMoJmk5MTUtPmRybSwKPj4gKwkJCQkgICAgIkNvbG9yIGVuY29kaW5nIGNhbm5vdCBiZSBjaGFu
Z2VkIGluIGFzeW5jIGZsaXBcbiIpOwo+PiArCQkJcmV0dXJuIC1FSU5WQUw7Cj4+ICsJCX0KPj4g
Kwo+PiArCQlpZiAob2xkX3BsYW5lX3N0YXRlLT5ody5jb2xvcl9yYW5nZSAhPSBuZXdfcGxhbmVf
c3RhdGUtPmh3LmNvbG9yX3JhbmdlKSB7Cj4+ICsJCQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLCAi
Q29sb3IgcmFuZ2UgY2Fubm90IGJlIGNoYW5nZWQgaW4gYXN5bmMgZmxpcFxuIik7Cj4+ICsJCQly
ZXR1cm4gLUVJTlZBTDsKPj4gKwkJfQo+PiArCX0KPj4gKwo+PiArCXJldHVybiAwOwo+PiArfQo+
PiArCj4+ICAgLyoqCj4+ICAgICogaW50ZWxfYXRvbWljX2NoZWNrIC0gdmFsaWRhdGUgc3RhdGUg
b2JqZWN0Cj4+ICAgICogQGRldjogZHJtIGRldmljZQo+PiBAQCAtMTUwNDUsNiArMTUxNzYsMTIg
QEAgc3RhdGljIGludCBpbnRlbF9hdG9taWNfY2hlY2soc3RydWN0IGRybV9kZXZpY2UgKmRldiwK
Pj4gICAKPj4gICAJZm9yX2VhY2hfb2xkbmV3X2ludGVsX2NydGNfaW5fc3RhdGUoc3RhdGUsIGNy
dGMsIG9sZF9jcnRjX3N0YXRlLAo+PiAgIAkJCQkJICAgIG5ld19jcnRjX3N0YXRlLCBpKSB7Cj4+
ICsJCWlmIChuZXdfY3J0Y19zdGF0ZS0+dWFwaS5hc3luY19mbGlwKSB7Cj4+ICsJCQlyZXQgPSBp
bnRlbF9hdG9taWNfY2hlY2tfYXN5bmMoc3RhdGUpOwo+PiArCQkJaWYgKHJldCkKPj4gKwkJCQln
b3RvIGZhaWw7Cj4+ICsJCX0KPj4gKwo+PiAgIAkJaWYgKCFuZWVkc19tb2Rlc2V0KG5ld19jcnRj
X3N0YXRlKSAmJgo+PiAgIAkJICAgICFuZXdfY3J0Y19zdGF0ZS0+dXBkYXRlX3BpcGUpCj4+ICAg
CQkJY29udGludWU7Cj4+IC0tIAo+PiAyLjIyLjAKPiAKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
