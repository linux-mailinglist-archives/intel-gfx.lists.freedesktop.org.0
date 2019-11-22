Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 937E9105E4A
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2019 02:36:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66C216F4C9;
	Fri, 22 Nov 2019 01:36:19 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4F786F4C9
 for <Intel-GFX@lists.freedesktop.org>; Fri, 22 Nov 2019 01:36:17 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Nov 2019 17:36:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,228,1571727600"; d="scan'208";a="408743962"
Received: from unknown (HELO sdutt) ([10.165.21.200])
 by fmsmga006.fm.intel.com with ESMTP; 21 Nov 2019 17:36:16 -0800
Date: Thu, 21 Nov 2019 17:29:59 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <20191122012959.GA64720@sdutt>
References: <20191120235604.29047-1-John.C.Harrison@Intel.com>
 <20191120235604.29047-3-John.C.Harrison@Intel.com>
 <op.0blswcryxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <20191121155606.GA28379@sdutt>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191121155606.GA28379@sdutt>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/guc: Optimized CTB writes and
 reads
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
Cc: Intel-GFX@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBOb3YgMjEsIDIwMTkgYXQgMDc6NTY6MDdBTSAtMDgwMCwgTWF0dGhldyBCcm9zdCB3
cm90ZToKPk9uIFRodSwgTm92IDIxLCAyMDE5IGF0IDEyOjU4OjUwUE0gKzAxMDAsIE1pY2hhbCBX
YWpkZWN6a28gd3JvdGU6Cj4+T24gVGh1LCAyMSBOb3YgMjAxOSAwMDo1NjowMyArMDEwMCwgPEpv
aG4uQy5IYXJyaXNvbkBpbnRlbC5jb20+IHdyb3RlOgo+Pgo+Pj5Gcm9tOiBNYXR0aGV3IEJyb3N0
IDxtYXR0aGV3LmJyb3N0QGludGVsLmNvbT4KPj4+Cj4+PkNUQiB3cml0ZXMgYXJlIG5vdyBpbiB0
aGUgcGF0aCBvZiBjb21tYW5kIHN1Ym1pc3Npb24gYW5kIHNob3VsZCBiZQo+Pj5vcHRpbWl6ZWQg
Zm9yIHBlcmZvcm1hbmNlLiBSYXRoZXIgdGhhbiByZWFkaW5nIENUQiBkZXNjcmlwdG9yIHZhbHVl
cwo+Pj4oZS5nLiBoZWFkLCB0YWlsLCBzaXplKSB3aGljaCBjb3VsZCByZXN1bHQgaW4gYWNjZXNz
ZXMgYWNyb3NzIHRoZSBQQ0llCj4+PmJ1cywgc3RvcmUgc2hhZG93IGxvY2FsIGNvcGllcyBhbmQg
b25seSByZWFkL3dyaXRlIHRoZSBkZXNjcmlwdG9yCj4+PnZhbHVlcyB3aGVuIGFic29sdXRlbHkg
bmVjZXNzYXJ5Lgo+Pj4KPj4+Q2M6IEpvaG4gSGFycmlzb24gPGpvaG4uYy5oYXJyaXNvbkBpbnRl
bC5jb20+Cj4+PlNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgQnJvc3QgPG1hdHRoZXcuYnJvc3RAaW50
ZWwuY29tPgo+Pj4tLS0KPj4+ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2N0
LmMgfCA3OSArKysrKysrKysrKy0tLS0tLS0tLS0tLQo+Pj5kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC91Yy9pbnRlbF9ndWNfY3QuaCB8ICA4ICsrKwo+Pj4yIGZpbGVzIGNoYW5nZWQsIDQ1IGluc2Vy
dGlvbnMoKyksIDQyIGRlbGV0aW9ucygtKQo+Pj4KPj4+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19jdC5jIAo+Pj5iL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3VjL2ludGVsX2d1Y19jdC5jCj4+PmluZGV4IGU1MGQ5NjhiMTVkNS4uNGQ4YTRjNmFmZDcx
IDEwMDY0NAo+Pj4tLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfY3Qu
Ywo+Pj4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfY3QuYwo+Pj5A
QCAtNjgsMjMgKzY4LDI5IEBAIHN0YXRpYyBpbmxpbmUgY29uc3QgY2hhciAKPj4+Kmd1Y19jdF9i
dWZmZXJfdHlwZV90b19zdHIodTMyIHR5cGUpCj4+Pgl9Cj4+Pn0KPj4+LXN0YXRpYyB2b2lkIGd1
Y19jdF9idWZmZXJfZGVzY19pbml0KHN0cnVjdCBndWNfY3RfYnVmZmVyX2Rlc2MgKmRlc2MsCj4+
PitzdGF0aWMgdm9pZCBndWNfY3RfYnVmZmVyX2Rlc2NfaW5pdChzdHJ1Y3QgaW50ZWxfZ3VjX2N0
X2J1ZmZlciAqY3RiLAo+Pj4JCQkJICAgIHUzMiBjbWRzX2FkZHIsIHUzMiBzaXplLCB1MzIgb3du
ZXIpCj4+Cj4+YXMgbm93IHRoaXMgZnVuY3Rpb24gdGFrZXMgY3RiIGluc3RlYWQgb2YgZGVzYywg
aXQgc2hvdWxkIGJlIHJlbmFtZWQKPj5vciBtYWtlIGl0IHNlcGFyYXRlIGZyb20gZ3VjX2N0X2J1
ZmZlcl9kZXNjX2luaXQKPj4KPgo+WWVzLCBtYWtlcyBzZW5zZS4KPgo+Pj57Cj4+PisJc3RydWN0
IGd1Y19jdF9idWZmZXJfZGVzYyAqZGVzYyA9IGN0Yi0+ZGVzYzsKPj4+CUNUX0RFQlVHX0RSSVZF
UigiQ1Q6IGRlc2MgJXAgaW5pdCBhZGRyPSUjeCBzaXplPSV1IG93bmVyPSV1XG4iLAo+Pj4JCQlk
ZXNjLCBjbWRzX2FkZHIsIHNpemUsIG93bmVyKTsKPj4+CW1lbXNldChkZXNjLCAwLCBzaXplb2Yo
KmRlc2MpKTsKPj4+CWRlc2MtPmFkZHIgPSBjbWRzX2FkZHI7Cj4+Pi0JZGVzYy0+c2l6ZSA9IHNp
emU7Cj4+PisJY3RiLT5zaXplID0gZGVzYy0+c2l6ZSA9IHNpemU7Cj4+PglkZXNjLT5vd25lciA9
IG93bmVyOwo+Pj4rCWN0Yi0+dGFpbCA9IDA7Cj4+PisJY3RiLT5oZWFkID0gMDsKPj4+KwljdGIt
PnNwYWNlID0gQ0lSQ19TUEFDRShjdGItPnRhaWwsIGN0Yi0+aGVhZCwgY3RiLT5zaXplKTsKPj4+
fQo+Pj4tc3RhdGljIHZvaWQgZ3VjX2N0X2J1ZmZlcl9kZXNjX3Jlc2V0KHN0cnVjdCBndWNfY3Rf
YnVmZmVyX2Rlc2MgKmRlc2MpCj4+PitzdGF0aWMgdm9pZCBndWNfY3RfYnVmZmVyX2Rlc2NfcmVz
ZXQoc3RydWN0IGludGVsX2d1Y19jdF9idWZmZXIgKmN0YikKPj4KPj5zYW1lIGhlcmUKPj4KPgo+
U2FtZS4KPgo+Pj57Cj4+PisJc3RydWN0IGd1Y19jdF9idWZmZXJfZGVzYyAqZGVzYyA9IGN0Yi0+
ZGVzYzsKPj4+CUNUX0RFQlVHX0RSSVZFUigiQ1Q6IGRlc2MgJXAgcmVzZXQgaGVhZD0ldSB0YWls
PSV1XG4iLAo+Pj4JCQlkZXNjLCBkZXNjLT5oZWFkLCBkZXNjLT50YWlsKTsKPj4+LQlkZXNjLT5o
ZWFkID0gMDsKPj4+LQlkZXNjLT50YWlsID0gMDsKPj4+KwljdGItPmhlYWQgPSBkZXNjLT5oZWFk
ID0gMDsKPj4+KwljdGItPnRhaWwgPSBkZXNjLT50YWlsID0gMDsKPj4+KwljdGItPnNwYWNlID0g
Q0lSQ19TUEFDRShjdGItPnRhaWwsIGN0Yi0+aGVhZCwgY3RiLT5zaXplKTsKPj4+CWRlc2MtPmlz
X2luX2Vycm9yID0gMDsKPj4+fQo+Pj5AQCAtMjIwLDcgKzIyNiw3IEBAIHN0YXRpYyBpbnQgY3Rj
aF9lbmFibGUoc3RydWN0IGludGVsX2d1YyAqZ3VjLAo+Pj4JICovCj4+Pglmb3IgKGkgPSAwOyBp
IDwgQVJSQVlfU0laRShjdGNoLT5jdGJzKTsgaSsrKSB7Cj4+PgkJR0VNX0JVR19PTigoaSAhPSBD
VEJfU0VORCkgJiYgKGkgIT0gQ1RCX1JFQ1YpKTsKPj4+LQkJZ3VjX2N0X2J1ZmZlcl9kZXNjX2lu
aXQoY3RjaC0+Y3Ric1tpXS5kZXNjLAo+Pj4rCQlndWNfY3RfYnVmZmVyX2Rlc2NfaW5pdCgmY3Rj
aC0+Y3Ric1tpXSwKPj4+CQkJCQliYXNlICsgUEFHRV9TSVpFLzQgKiBpICsgUEFHRV9TSVpFLzIs
Cj4+PgkJCQkJUEFHRV9TSVpFLzQsCj4+PgkJCQkJY3RjaC0+b3duZXIpOwo+Pj5AQCAtMzAxLDMy
ICszMDcsMTYgQEAgc3RhdGljIGludCBjdGJfd3JpdGUoc3RydWN0IAo+Pj5pbnRlbF9ndWNfY3Rf
YnVmZmVyICpjdGIsCj4+PgkJICAgICBib29sIHdhbnRfcmVzcG9uc2UpCj4+PnsKPj4+CXN0cnVj
dCBndWNfY3RfYnVmZmVyX2Rlc2MgKmRlc2MgPSBjdGItPmRlc2M7Cj4+Pi0JdTMyIGhlYWQgPSBk
ZXNjLT5oZWFkIC8gNDsJLyogaW4gZHdvcmRzICovCj4+Pi0JdTMyIHRhaWwgPSBkZXNjLT50YWls
IC8gNDsJLyogaW4gZHdvcmRzICovCj4+Pi0JdTMyIHNpemUgPSBkZXNjLT5zaXplIC8gNDsJLyog
aW4gZHdvcmRzICovCj4+Pi0JdTMyIHVzZWQ7CQkJLyogaW4gZHdvcmRzICovCj4+PisJdTMyIHRh
aWwgPSBjdGItPnRhaWwgLyA0OwkvKiBpbiBkd29yZHMgKi8KPj4+Kwl1MzIgc2l6ZSA9IGN0Yi0+
c2l6ZSAvIDQ7CS8qIGluIGR3b3JkcyAqLwo+Pj4JdTMyIGhlYWRlcjsKPj4+CXUzMiAqY21kcyA9
IGN0Yi0+Y21kczsKPj4+CXVuc2lnbmVkIGludCBpOwo+Pj4tCUdFTV9CVUdfT04oZGVzYy0+c2l6
ZSAlIDQpOwo+Pj4tCUdFTV9CVUdfT04oZGVzYy0+aGVhZCAlIDQpOwo+Pj4tCUdFTV9CVUdfT04o
ZGVzYy0+dGFpbCAlIDQpOwo+Pj4rCUdFTV9CVUdfT04oY3RiLT5zaXplICUgNCk7Cj4+PisJR0VN
X0JVR19PTihjdGItPnRhaWwgJSA0KTsKPj4+CUdFTV9CVUdfT04odGFpbCA+PSBzaXplKTsKPj4+
LQkvKgo+Pj4tCSAqIHRhaWwgPT0gaGVhZCBjb25kaXRpb24gaW5kaWNhdGVzIGVtcHR5LiBHdUMg
RlcgZG9lcyBub3Qgc3VwcG9ydAo+Pj4tCSAqIHVzaW5nIHVwIHRoZSBlbnRpcmUgYnVmZmVyIHRv
IGdldCB0YWlsID09IGhlYWQgbWVhbmluZyBmdWxsLgo+Pj4tCSAqLwo+Pj4tCWlmICh0YWlsIDwg
aGVhZCkKPj4+LQkJdXNlZCA9IChzaXplIC0gaGVhZCkgKyB0YWlsOwo+Pj4tCWVsc2UKPj4+LQkJ
dXNlZCA9IHRhaWwgLSBoZWFkOwo+Pj4tCj4+Pi0JLyogbWFrZSBzdXJlIHRoZXJlIGlzIGEgc3Bh
Y2UgaW5jbHVkaW5nIGV4dHJhIGR3IGZvciB0aGUgZmVuY2UgKi8KPj4+LQlpZiAodW5saWtlbHko
dXNlZCArIGxlbiArIDEgPj0gc2l6ZSkpCj4+Pi0JCXJldHVybiAtRU5PU1BDOwo+Pj4tCj4+Pgkv
Kgo+Pj4JICogV3JpdGUgdGhlIG1lc3NhZ2UuIFRoZSBmb3JtYXQgaXMgdGhlIGZvbGxvd2luZzoK
Pj4+CSAqIERXMDogaGVhZGVyIChpbmNsdWRpbmcgYWN0aW9uIGNvZGUpCj4+PkBAIC0zNTQsMTUg
KzM0NCwxNiBAQCBzdGF0aWMgaW50IGN0Yl93cml0ZShzdHJ1Y3QgCj4+PmludGVsX2d1Y19jdF9i
dWZmZXIgKmN0YiwKPj4+CX0KPj4+CS8qIG5vdyB1cGRhdGUgZGVzYyB0YWlsIChiYWNrIGluIGJ5
dGVzKSAqLwo+Pj4tCWRlc2MtPnRhaWwgPSB0YWlsICogNDsKPj4+LQlHRU1fQlVHX09OKGRlc2Mt
PnRhaWwgPiBkZXNjLT5zaXplKTsKPj4+KwljdGItPnRhaWwgPSBkZXNjLT50YWlsID0gdGFpbCAq
IDQ7Cj4+PisJY3RiLT5zcGFjZSAtPSAobGVuICsgMSkgKiA0Owo+Pj4rCUdFTV9CVUdfT04oY3Ri
LT50YWlsID4gY3RiLT5zaXplKTsKPj4+CXJldHVybiAwOwo+Pj59Cj4+Pi8qKgo+Pj4gKiB3YWl0
X2Zvcl9jdGJfZGVzY191cGRhdGUgLSBXYWl0IGZvciB0aGUgQ1QgYnVmZmVyIGRlc2NyaXB0b3Ig
dXBkYXRlLgo+Pj4tICogQGRlc2M6CWJ1ZmZlciBkZXNjcmlwdG9yCj4+PisgKiBAY3RiOgljdGIg
YnVmZmVyCj4+PiAqIEBmZW5jZToJcmVzcG9uc2UgZmVuY2UKPj4+ICogQHN0YXR1czoJcGxhY2Vo
b2xkZXIgZm9yIHN0YXR1cwo+Pj4gKgo+Pj5AQCAtMzc2LDExICszNjcsMTIgQEAgc3RhdGljIGlu
dCBjdGJfd3JpdGUoc3RydWN0IAo+Pj5pbnRlbF9ndWNfY3RfYnVmZmVyICpjdGIsCj4+PiAqICoJ
LUVUSU1FRE9VVCBubyByZXNwb25zZSB3aXRoaW4gaGFyZGNvZGVkIHRpbWVvdXQKPj4+ICogKgkt
RVBST1RPIG5vIHJlc3BvbnNlLCBDVCBidWZmZXIgaXMgaW4gZXJyb3IKPj4+ICovCj4+Pi1zdGF0
aWMgaW50IHdhaXRfZm9yX2N0Yl9kZXNjX3VwZGF0ZShzdHJ1Y3QgZ3VjX2N0X2J1ZmZlcl9kZXNj
ICpkZXNjLAo+Pj4rc3RhdGljIGludCB3YWl0X2Zvcl9jdGJfZGVzY191cGRhdGUoc3RydWN0IGlu
dGVsX2d1Y19jdF9idWZmZXIgKmN0YiwKPj4+CQkJCSAgICB1MzIgZmVuY2UsCj4+PgkJCQkgICAg
dTMyICpzdGF0dXMpCj4+PnsKPj4+CWludCBlcnI7Cj4+PisJc3RydWN0IGd1Y19jdF9idWZmZXJf
ZGVzYyAqZGVzYyA9IGN0Yi0+ZGVzYzsKPj4+CS8qCj4+PgkgKiBGYXN0IGNvbW1hbmRzIHNob3Vs
ZCBjb21wbGV0ZSBpbiBsZXNzIHRoYW4gMTB1cywgc28gc2FtcGxlIHF1aWNrbHkKPj4+QEAgLTQw
MSw3ICszOTMsNyBAQCBzdGF0aWMgaW50IHdhaXRfZm9yX2N0Yl9kZXNjX3VwZGF0ZShzdHJ1Y3Qg
Cj4+Pmd1Y19jdF9idWZmZXJfZGVzYyAqZGVzYywKPj4+CQkJLyogU29tZXRoaW5nIHdlbnQgd3Jv
bmcgd2l0aCB0aGUgbWVzc2FnaW5nLCB0cnkgdG8gcmVzZXQKPj4+CQkJICogdGhlIGJ1ZmZlciBh
bmQgaG9wZSBmb3IgdGhlIGJlc3QKPj4+CQkJICovCj4+Pi0JCQlndWNfY3RfYnVmZmVyX2Rlc2Nf
cmVzZXQoZGVzYyk7Cj4+PisJCQlndWNfY3RfYnVmZmVyX2Rlc2NfcmVzZXQoY3RiKTsKPj4+CQkJ
ZXJyID0gLUVQUk9UTzsKPj4+CQl9Cj4+Pgl9Cj4+PkBAIC00NDYsMTIgKzQzOCwxNyBAQCBzdGF0
aWMgaW50IHdhaXRfZm9yX2N0X3JlcXVlc3RfdXBkYXRlKHN0cnVjdCAKPj4+Y3RfcmVxdWVzdCAq
cmVxLCB1MzIgKnN0YXR1cykKPj4+CXJldHVybiBlcnI7Cj4+Pn0KPj4+LXN0YXRpYyBpbmxpbmUg
Ym9vbCBjdGJfaGFzX3Jvb20oc3RydWN0IGd1Y19jdF9idWZmZXJfZGVzYyAqZGVzYywgCj4+PnUz
MiBsZW4pCj4+PitzdGF0aWMgaW5saW5lIGJvb2wgY3RiX2hhc19yb29tKHN0cnVjdCBpbnRlbF9n
dWNfY3RfYnVmZmVyICpjdGIsIAo+Pj51MzIgbGVuKQo+Pj57Cj4+Pi0JdTMyIGhlYWQgPSBSRUFE
X09OQ0UoZGVzYy0+aGVhZCk7Cj4+PisJdTMyIGhlYWQ7Cj4+Pgl1MzIgc3BhY2U7Cj4+Pi0Jc3Bh
Y2UgPSBDSVJDX1NQQUNFKGRlc2MtPnRhaWwsIGhlYWQsIGRlc2MtPnNpemUpOwo+Pj4rCWlmIChj
dGItPnNwYWNlID49IGxlbikKPj4+KwkJcmV0dXJuIHRydWU7Cj4+PisKPj4+KwloZWFkID0gUkVB
RF9PTkNFKGN0Yi0+ZGVzYy0+aGVhZCk7Cj4+PisJc3BhY2UgPSBDSVJDX1NQQUNFKGN0Yi0+dGFp
bCwgaGVhZCwgY3RiLT5zaXplKTsKPj4+KwljdGItPnNwYWNlID0gc3BhY2U7Cj4+PglyZXR1cm4g
c3BhY2UgPj0gbGVuOwo+Pj59Cj4+PkBAIC00NjIsNyArNDU5LDYgQEAgaW50IGludGVsX2d1Y19z
ZW5kX25iKHN0cnVjdCBpbnRlbF9ndWNfY3QgKmN0LAo+Pj57Cj4+PglzdHJ1Y3QgaW50ZWxfZ3Vj
X2N0X2NoYW5uZWwgKmN0Y2ggPSAmY3QtPmhvc3RfY2hhbm5lbDsKPj4+CXN0cnVjdCBpbnRlbF9n
dWNfY3RfYnVmZmVyICpjdGIgPSAmY3RjaC0+Y3Ric1tDVEJfU0VORF07Cj4+Pi0Jc3RydWN0IGd1
Y19jdF9idWZmZXJfZGVzYyAqZGVzYyA9IGN0Yi0+ZGVzYzsKPj4+CWludCBlcnI7Cj4+PglHRU1f
QlVHX09OKCFjdGNoLT5lbmFibGVkKTsKPj4+QEAgLTQ3MCw3ICs0NjYsNyBAQCBpbnQgaW50ZWxf
Z3VjX3NlbmRfbmIoc3RydWN0IGludGVsX2d1Y19jdCAqY3QsCj4+PglHRU1fQlVHX09OKGxlbiAm
IH5HVUNfQ1RfTVNHX0xFTl9NQVNLKTsKPj4+CWxvY2tkZXBfYXNzZXJ0X2hlbGQoJmN0LT5zZW5k
X2xvY2spOwo+Pj4tCWlmICh1bmxpa2VseSghY3RiX2hhc19yb29tKGRlc2MsIChsZW4gKyAxKSAq
IDQpKSkgewo+Pj4rCWlmICh1bmxpa2VseSghY3RiX2hhc19yb29tKGN0YiwgKGxlbiArIDEpICog
NCkpKSB7Cj4+PgkJY3QtPnJldHJ5Kys7Cj4+PgkJaWYgKGN0LT5yZXRyeSA+PSBNQVhfUkVUUlkp
Cj4+PgkJCXJldHVybiAtRURFQURMSzsKPj4+QEAgLTQ5Niw3ICs0OTIsNiBAQCBzdGF0aWMgaW50
IGN0Y2hfc2VuZChzdHJ1Y3QgaW50ZWxfZ3VjX2N0ICpjdCwKPj4+CQkgICAgIHUzMiAqc3RhdHVz
KQo+Pj57Cj4+PglzdHJ1Y3QgaW50ZWxfZ3VjX2N0X2J1ZmZlciAqY3RiID0gJmN0Y2gtPmN0YnNb
Q1RCX1NFTkRdOwo+Pj4tCXN0cnVjdCBndWNfY3RfYnVmZmVyX2Rlc2MgKmRlc2MgPSBjdGItPmRl
c2M7Cj4+PglzdHJ1Y3QgY3RfcmVxdWVzdCByZXF1ZXN0Owo+Pj4JdW5zaWduZWQgbG9uZyBmbGFn
czsKPj4+CXUzMiBmZW5jZTsKPj4+QEAgLTUxNCw3ICs1MDksNyBAQCBzdGF0aWMgaW50IGN0Y2hf
c2VuZChzdHJ1Y3QgaW50ZWxfZ3VjX2N0ICpjdCwKPj4+CSAqLwo+Pj5yZXRyeToKPj4+CXNwaW5f
bG9ja19pcnFzYXZlKCZjdC0+c2VuZF9sb2NrLCBmbGFncyk7Cj4+Pi0JaWYgKHVubGlrZWx5KCFj
dGJfaGFzX3Jvb20oZGVzYywgKGxlbiArIDEpICogNCkpKSB7Cj4+PisJaWYgKHVubGlrZWx5KCFj
dGJfaGFzX3Jvb20oY3RiLCAobGVuICsgMSkgKiA0KSkpIHsKPj4+CQlzcGluX3VubG9ja19pcnFy
ZXN0b3JlKCZjdC0+c2VuZF9sb2NrLCBmbGFncyk7Cj4+PgkJY3QtPnJldHJ5Kys7Cj4+PgkJaWYg
KGN0LT5yZXRyeSA+PSBNQVhfUkVUUlkpCj4+PkBAIC01NDQsNyArNTM5LDcgQEAgc3RhdGljIGlu
dCBjdGNoX3NlbmQoc3RydWN0IGludGVsX2d1Y19jdCAqY3QsCj4+PglpZiAocmVzcG9uc2VfYnVm
KQo+Pj4JCWVyciA9IHdhaXRfZm9yX2N0X3JlcXVlc3RfdXBkYXRlKCZyZXF1ZXN0LCBzdGF0dXMp
Owo+Pj4JZWxzZQo+Pj4tCQllcnIgPSB3YWl0X2Zvcl9jdGJfZGVzY191cGRhdGUoZGVzYywgZmVu
Y2UsIHN0YXR1cyk7Cj4+PisJCWVyciA9IHdhaXRfZm9yX2N0Yl9kZXNjX3VwZGF0ZShjdGIsIGZl
bmNlLCBzdGF0dXMpOwo+Pj4JaWYgKHVubGlrZWx5KGVycikpCj4+PgkJZ290byB1bmxpbms7Cj4+
PkBAIC02MTgsOSArNjEzLDkgQEAgc3RhdGljIGlubGluZSBib29sIGN0X2hlYWRlcl9pc19yZXNw
b25zZSh1MzIgaGVhZGVyKQo+Pj5zdGF0aWMgaW50IGN0Yl9yZWFkKHN0cnVjdCBpbnRlbF9ndWNf
Y3RfYnVmZmVyICpjdGIsIHUzMiAqZGF0YSkKPj4+ewo+Pj4Jc3RydWN0IGd1Y19jdF9idWZmZXJf
ZGVzYyAqZGVzYyA9IGN0Yi0+ZGVzYzsKPj4+LQl1MzIgaGVhZCA9IGRlc2MtPmhlYWQgLyA0Owkv
KiBpbiBkd29yZHMgKi8KPj4+Kwl1MzIgaGVhZCA9IGN0Yi0+aGVhZCAvIDQ7CS8qIGluIGR3b3Jk
cyAqLwo+Pj4JdTMyIHRhaWwgPSBkZXNjLT50YWlsIC8gNDsJLyogaW4gZHdvcmRzICovCj4+Pi0J
dTMyIHNpemUgPSBkZXNjLT5zaXplIC8gNDsJLyogaW4gZHdvcmRzICovCj4+PisJdTMyIHNpemUg
PSBjdGItPnNpemUgLyA0OwkvKiBpbiBkd29yZHMgKi8KPj4+CXUzMiAqY21kcyA9IGN0Yi0+Y21k
czsKPj4+CXMzMiBhdmFpbGFibGU7CQkJLyogaW4gZHdvcmRzICovCj4+Pgl1bnNpZ25lZCBpbnQg
bGVuOwo+Pj5AQCAtNjY0LDcgKzY1OSw3IEBAIHN0YXRpYyBpbnQgY3RiX3JlYWQoc3RydWN0IGlu
dGVsX2d1Y19jdF9idWZmZXIgCj4+PipjdGIsIHUzMiAqZGF0YSkKPj4+CX0KPj4+CUNUX0RFQlVH
X0RSSVZFUigiQ1Q6IHJlY2VpdmVkICUqcGhcbiIsIDQgKiBsZW4sIGRhdGEpOwo+Pj4tCWRlc2Mt
PmhlYWQgPSBoZWFkICogNDsKPj4+KwljdGItPmhlYWQgPSBkZXNjLT5oZWFkID0gaGVhZCAqIDQ7
Cj4+PglyZXR1cm4gMDsKPj4+fQo+Pj5kaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvdWMvaW50ZWxfZ3VjX2N0LmggCj4+PmIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfZ3VjX2N0LmgKPj4+aW5kZXggYmM2NzBhNzk2YmQ4Li4xYmZmNGYwYjkxZjcgMTAwNjQ0Cj4+
Pi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19jdC5oCj4+PisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19jdC5oCj4+PkBAIC0yOSwxMCAr
MjksMTggQEAgc3RydWN0IGludGVsX2d1YzsKPj4+ICoKPj4+ICogQGRlc2M6IHBvaW50ZXIgdG8g
dGhlIGJ1ZmZlciBkZXNjcmlwdG9yCj4+PiAqIEBjbWRzOiBwb2ludGVyIHRvIHRoZSBjb21tYW5k
cyBidWZmZXIKPj4+KyAqIEBzaXplOiBsb2NhbCBzaGFkb3cgY29weSBvZiBzaXplCj4+Cj4+SSB3
b3VsZCByYXRoZXIgZXhwZWN0IHRoaXMgYXMgcmVhbCBmaXhlZCBzaXplLAo+Pm5vdGUgdGhhdCBz
aXplIGlzIG5vdCBleHBlY3RlZCB0byBjaGFuZ2UKPj4KPgo+WWVzLCBpdCBpcyBmaXhlZCBvdmVy
IHRoZSBsaWZlIG9mIHRoZSBDVEIgYnV0IG5vdCBhbGwgQ1RCcyBuZWVkIHRvIGJlIHRoZSBzYW1l
Cj5zaXplLiBlLmcuIFRoZSBIMkcgJiBHMkggbWF5IGFuZCBsaWtlbHkgd2lsbCBiZSBkaWZmZXJl
bnQgc2l6ZXMgd2l0aCB0aGUgbmV3IEd1Ywo+aW50ZXJmYWNlLgo+Cj4+PisgKiBAaGVhZDogbG9j
YWwgc2hhZG93IGNvcHkgb2YgaGVhZAo+Pj4rICogQHRhaWw6IGxvY2FsIHNoYWRvdyBjb3B5IG9m
IHRhaWwKPj4+KyAqIEBzcGFjZTogbG9jYWwgc2hhZG93IGNvcHkgb2Ygc3BhY2UKPj4+ICovCj4+
PnN0cnVjdCBpbnRlbF9ndWNfY3RfYnVmZmVyIHsKPj4+CXN0cnVjdCBndWNfY3RfYnVmZmVyX2Rl
c2MgKmRlc2M7Cj4+Pgl1MzIgKmNtZHM7Cj4+PisJdTMyIHNpemU7Cj4+PisJdTMyIHRhaWw7Cj4+
PisJdTMyIGhlYWQ7Cj4+PisJdTMyIHNwYWNlOwo+Pj59Owo+Pj4vKiogUmVwcmVzZW50cyBwYWly
IG9mIGNvbW1hbmQgdHJhbnNwb3J0IGJ1ZmZlcnMuCj4+Cj4+Q2FuIHdlIHJlb3JkZXIgdGhpcyBw
YXRjaCB0byBiZSBmaXJzdCBpbiB0aGUgc2VyaWVzID8KPj4KPj5NaWNoYWwKClRyaWVkIHRoaXMg
YW5kIEkgdGhpbmsgaXQgbWFrZXMgbW9yZSBzZW5zZSB0aGUgd2F5IGl0IGlzLiBUaGUgJ3NwYWNl
JyB2YWx1ZQpkb2Vzbid0IGhhdmUgYSBtZWFuaW5nIGJlZm9yZSB0aGUgbm9uIGJsb2NraW5nIGNh
bGwgaXMgaW50cm9kdWNlZC4gQWxzbyBpdCBlbmRzCnVwIGNoYW5naW5nIGEgYnVuY2ggb2YgY29k
ZSB0aGF0IGlzIHRoZW4gZGVsZXRlZCBpbiB0aGUgbm9uIGJsb2NraW5nIGNhbGwgcGF0Y2guCkJl
dHRlciB0byBsZWF2ZSBpdCBhcyBpcy4KCk1hdHQKCj4+X19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPgo+WWVzLgo+Cj4+SW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dAo+PkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPj5odHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo+X19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPkludGVsLWdmeCBtYWlsaW5nIGxpc3QKPklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
