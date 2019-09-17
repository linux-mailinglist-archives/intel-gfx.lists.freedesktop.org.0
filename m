Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A18B5453
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 19:33:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 180C36ED1F;
	Tue, 17 Sep 2019 17:33:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F4D46ED1F
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2019 17:33:52 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Sep 2019 10:33:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,517,1559545200"; d="scan'208";a="186208724"
Received: from orsosgc001.ra.intel.com (HELO orsosgc001.amr.corp.intel.com)
 ([10.23.184.150])
 by fmsmga008.fm.intel.com with ESMTP; 17 Sep 2019 10:33:51 -0700
Date: Tue, 17 Sep 2019 10:33:51 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Ashutosh Dixit <ashutosh.dixit@intel.com>
Message-ID: <20190917173351.GA1279@orsosgc001.amr.corp.intel.com>
References: <20190913230620.15906-1-umesh.nerlige.ramappa@intel.com>
 <20190913230620.15906-3-umesh.nerlige.ramappa@intel.com>
 <814defdf-c6d6-c009-f454-67b2a09b32a1@intel.com>
 <20190916191754.GA72596@orsosgc001.amr.corp.intel.com>
 <87tv9b36k1.wl-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87tv9b36k1.wl-ashutosh.dixit@intel.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/perf: Add support for report
 sizes that are not power of 2
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBTZXAgMTYsIDIwMTkgYXQgMDk6MTE6NThQTSAtMDcwMCwgQXNodXRvc2ggRGl4aXQg
d3JvdGU6Cj5PbiBNb24sIDE2IFNlcCAyMDE5IDEyOjE3OjU0IC0wNzAwLCBVbWVzaCBOZXJsaWdl
IFJhbWFwcGEgd3JvdGU6Cj4+Cj4+IE9uIFN1biwgU2VwIDE1LCAyMDE5IGF0IDAyOjI0OjQxUE0g
KzAzMDAsIExpb25lbCBMYW5kd2VybGluIHdyb3RlOgo+PiA+IE9uIDE0LzA5LzIwMTkgMDI6MDYs
IFVtZXNoIE5lcmxpZ2UgUmFtYXBwYSB3cm90ZToKPj4gPj4gT0EgcGVyZiB1bml0IHN1cHBvcnRz
IG5vbi1wb3dlciBvZiAyIHJlcG9ydCBzaXplcy4gRW5hYmxlIHN1cHBvcnQgZm9yCj4+ID4+IHRo
ZXNlIHNpemVzIGluIHRoZSBkcml2ZXIuCj4+ID4+Cj4+ID4+IFNpZ25lZC1vZmYtYnk6IFVtZXNo
IE5lcmxpZ2UgUmFtYXBwYSA8dW1lc2gubmVybGlnZS5yYW1hcHBhQGludGVsLmNvbT4KPj4gPj4g
LS0tCj4+ID4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyB8IDU5ICsrKysrKysr
KysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tCj4+ID4+ICAxIGZpbGUgY2hhbmdlZCwgMjEgaW5zZXJ0
aW9ucygrKSwgMzggZGVsZXRpb25zKC0pCj4+ID4+Cj4+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVy
Zi5jCj4+ID4+IGluZGV4IDUwYjZkMTU0ZmQ0Ni4uNDgyZmNhM2RhN2RlIDEwMDY0NAo+PiA+PiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwo+PiA+PiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwo+PiA+PiBAQCAtNDUwLDcgKzQ1MCw3IEBAIHN0YXRp
YyBib29sIG9hX2J1ZmZlcl9jaGVja191bmxvY2tlZChzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAq
c3RyZWFtKQo+PiA+Pgl1MzIgZ3R0X29mZnNldCA9IGk5MTVfZ2d0dF9vZmZzZXQoc3RyZWFtLT5v
YV9idWZmZXIudm1hKTsKPj4gPj4JaW50IHJlcG9ydF9zaXplID0gc3RyZWFtLT5vYV9idWZmZXIu
Zm9ybWF0X3NpemU7Cj4+ID4+CXVuc2lnbmVkIGxvbmcgZmxhZ3M7Cj4+ID4+IC0JdTMyIGh3X3Rh
aWw7Cj4+ID4+ICsJdTMyIGh3X3RhaWwsIGFnaW5nX3RhaWw7Cj4+ID4+CXU2NCBub3c7Cj4+ID4+
CS8qIFdlIGhhdmUgdG8gY29uc2lkZXIgdGhlICh1bmxpa2VseSkgcG9zc2liaWxpdHkgdGhhdCBy
ZWFkKCkgZXJyb3JzCj4+ID4+IEBAIC00NTksMTYgKzQ1OSwxNyBAQCBzdGF0aWMgYm9vbCBvYV9i
dWZmZXJfY2hlY2tfdW5sb2NrZWQoc3RydWN0IGk5MTVfcGVyZl9zdHJlYW0gKnN0cmVhbSkKPj4g
Pj4JICovCj4+ID4+CXNwaW5fbG9ja19pcnFzYXZlKCZzdHJlYW0tPm9hX2J1ZmZlci5wdHJfbG9j
aywgZmxhZ3MpOwo+PiA+PiAtCWh3X3RhaWwgPSBkZXZfcHJpdi0+cGVyZi5vcHMub2FfaHdfdGFp
bF9yZWFkKHN0cmVhbSk7Cj4+ID4+ICsJaHdfdGFpbCA9IGRldl9wcml2LT5wZXJmLm9wcy5vYV9o
d190YWlsX3JlYWQoc3RyZWFtKSAtIGd0dF9vZmZzZXQ7Cj4+ID4+ICsJYWdpbmdfdGFpbCA9IHN0
cmVhbS0+b2FfYnVmZmVyLmFnaW5nX3RhaWwgLSBndHRfb2Zmc2V0Owo+PiA+PgkvKiBUaGUgdGFp
bCBwb2ludGVyIGluY3JlYXNlcyBpbiA2NCBieXRlIGluY3JlbWVudHMsCj4+ID4+CSAqIG5vdCBp
biByZXBvcnRfc2l6ZSBzdGVwcy4uLgo+PiA+PgkgKi8KPj4gPj4gLQlod190YWlsICY9IH4ocmVw
b3J0X3NpemUgLSAxKTsKPj4gPj4gKwlod190YWlsID0gT0FfVEFLRU4oaHdfdGFpbCwgKE9BX1RB
S0VOKGh3X3RhaWwsIGFnaW5nX3RhaWwpICUgcmVwb3J0X3NpemUpKTsKPj4gPgo+PiA+Cj4+ID4g
SSdtIHN0cnVnZ2xpbmcgdG8gcGFyc2UgdGhpcyBsaW5lIGFib3ZlIGFuZCBJJ20gbm90IDEwMCUg
c3VyZSBpdCdzIGNvcnJlY3QuCj4+ID4KPj4gPiBDb3VsZCBhZGQgYSBjb21tZW50IHRvIGV4cGxh
aW4gd2hhdCBpcyBnb2luZyBvbj8KPj4KPj4gVGhlIGFnaW5nIHRhaWwgaXMgYWx3YXlzIHBvaW50
aW5nIHRvIHRoZSBib3VuZGFyeSBvZiBhIHJlcG9ydCB3aGVyZWFzCj4+IHRoZSBod190YWlsIGlz
IGFkdmFuY2luZyBpbiA2NCBieXRlIGluY3JlbWVudHMuCj4+Cj4+IFRoZSBpbm5lcm1vc3QgT0Ff
VEFLRU4gaXMgcmV0dXJuaW5nIHRoZSBudW1iZXIgb2YgYnl0ZXMgYmV0d2VlbiB0aGUKPj4gaHdf
dGFpbCBhbmQgdGhlIGFnaW5nX3RhaWwuIFRoZSBtb2R1bG8gaXMgZ2V0dGluZyB0aGUgc2l6ZSBv
ZiB0aGUKPj4gcGFydGlhbCByZXBvcnQgKGlmIGFueSkuCj4+Cj4+IFRoZSBvdXRlcm1vc3QgT0Ff
VEFLRU4gaXMgc3VidHJhY3RpbmcgdGhlIHNpemUgb2YgcGFydGlhbCByZXBvcnQgZnJvbQo+PiB0
aGUgaHdfdGFpbCB0byBnZXQgYSBod190YWlsIHRoYXQgcG9pbnRzIHRvIHRoZSBib3VuZGFyeSBv
ZiB0aGUgbGFzdAo+PiBmdWxsIHJlcG9ydC4KPj4KPj4gVGhlIHZhbHVlIG9mIGh3X3RhaWwgd291
bGQgYmUgdGhlIHNhbWUgYXMgZnJvbSB0aGUgZGVsZXRlZCBsaW5lIG9mIGNvZGUKPj4gYWJvdmUg
dGhpcyBsaW5lLgo+Cj5Mb29rcyBsaWtlIGFnaW5nX3RhaWwgc2hvdWxkIG5vdCBiZSBuZWVkZWQg
KGl0IGlzIGNvbXBsaWNhdGluZyB0aGUKPmV4cHJlc3Npb24gYW5kIGlzIG5vdCB0aGVyZSBpbiB0
aGUgb3JpZ2luYWwgZXhwcmVzc2lvbikuIEFsbCB3ZSBuZWVkIGlzIGEKPiJjaXJjdWxhciBtb2R1
bHVzIi4gRm9yIGV4YW1wbGUgd291bGQgdGhlIGZvbGxvd2luZyB3b3JrPwoKb3JpZ2luYWwgZXhw
cmVzc2lvbiBhc3N1bWVzIGFsbCByZXBvcnQgc2l6ZXMgYXJlIHBvd2VycyBvZiAyIGFuZCBoZW5j
ZSAKZG9lcyBub3QgbmVlZCBhIHJlZmVyZW5jZSAobGlrZSBhZ2luZ190YWlsKSB0byByb3VuZGRv
d24gdGhlIGh3X3RhaWwuCgo+Cj4gICAgaWYgKGh3X3RhaWwgPCByZXBvcnRfc2l6ZSkKPiAgICAg
ICAgaHdfdGFpbCArPSBPQV9CVUZGRVJfU0laRTsKCkFzc3VtaW5nIHRoYXQgdGhpcyBjb25kaXRp
b24gaXMgZGV0ZWN0aW5nIGEgcmVwb3J0IHNwbGl0IGFjcm9zcyB0aGUgT0EgCmJ1ZmZlciBib3Vu
ZGFyeSwgdGhlIGFib3ZlIGNoZWNrIHdpbGwgbm90IGNhdGNoIHRoZSBzcGxpdCBpbiBjYXNlcyB3
aGVyZSAKdGhlcmUgYXJlIG11bHRpcGxlIHJlcG9ydHMgZ2VuZXJhdGVkIGJlZm9yZSB3ZSByZWFk
IHRoZSBod190YWlsLgoKPiAgICBod190YWlsID0gcm91bmRkb3duKGh3X3RhaWwsIHJlcG9ydF9z
aXplKTsKPgo+QW5vdGhlciB3YXkgKGlmIHdlIHdhbnQgdG8gYXZvaWQgdGhlIGRpdmlzaW9uKSB3
b3VsZCBiZSB0byBtYWludGFpbiBhCj5jYWNoZWQgY29weSBvZiBod190YWlsIGluIFNXIHdoaWNo
IGlzIHN1Y2Nlc3NpdmVseSAoYW5kIGNpcmN1bGFybHkpCj5pbmNyZW1lbnRlZCBieSByZXBvcnRf
c2l6ZSB0aWxsIGl0IGNhdGNoZXMgdXAgd2l0aCBod190YWlsIHJlYWQgZnJvbQo+SFcuIEJ1dCBw
cm9iYWJseSB0aGUgZmlyc3QgbWV0aG9kIGFib3ZlIGlzIHNpbXBsZXIuCgphZ2luZ190YWlsIGlz
IGEgY2FjaGVkIGNvcHkgb2YgdGhlIGh3X3RhaWwgdGhhdCBhZHZhbmNlcyBvbmx5IGluIHJlcG9y
dCAKc2l6ZSBpbmNyZW1lbnRzLgoKVGhhbmtzLApVbWVzaApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
