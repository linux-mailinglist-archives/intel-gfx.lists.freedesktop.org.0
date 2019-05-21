Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EEAE24838
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2019 08:40:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A83B389126;
	Tue, 21 May 2019 06:40:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2402589123;
 Tue, 21 May 2019 06:40:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 May 2019 23:40:48 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 20 May 2019 23:40:45 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
In-Reply-To: <20190520092054.30724-3-gwan-gyeong.mun@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190520092054.30724-1-gwan-gyeong.mun@intel.com>
 <20190520092054.30724-3-gwan-gyeong.mun@intel.com>
Date: Tue, 21 May 2019 09:44:04 +0300
Message-ID: <87woik8fyj.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v8 2/6] drm: Rename struct edp_vsc_psr to
 struct dp_sdp
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMCBNYXkgMjAxOSwgR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50
ZWwuY29tPiB3cm90ZToKPiBWU0MgU0RQIFBheWxvYWQgZm9yIFBTUiBpcyBvbmUgb2YgZGF0YSBi
bG9jayB0eXBlIG9mIFNEUCAoU2Vjb25kYXJheSBEYXRhCj4gUGFja2V0KS4gSW4gb3JkZXIgdG8g
Z2VuZXJhbGl6ZSBTRFAgcGFja2V0IHN0cnVjdHVyZSBuYW1lLCBpdCByZW5hbWVzCj4gc3RydWN0
IGVkcF92c2NfcHNyIHRvIHN0cnVjdCBkcF9zZHAuIEFuZCBlYWNoIFNEUCBkYXRhIGJsb2NrcyBo
YXZlCj4gZGlmZmVyZW50IHVzYWdlcywgZWFjaCBTRFAgdHlwZSBoYXMgZGlmZmVyZW50IHJlc2Vy
dmVkIGRhdGEgYmxvY2tzIGFuZAo+IFZpZGVvX1N0cmVhbV9Db25maWd1cmF0aW9uIEV4dGVuc2lv
biBWRVNBIFNEUCBtaWdodCB1c2UgYWxsIG9mIERhdGEgQmxvY2tzCj4gYXMgRXh0ZW5kZWQgSU5G
T1JGUkFNRSBEYXRhIEJ5dGUuIHNvIGl0IG1ha2VzIERhdGEgQmxvY2sgdmFyaWFibGVzIGFzCj4g
YXJyYXkgdHlwZS4gQW5kIGl0IGFkZHMgY29tbWVudHMgb2YgZGV0YWlscyBvZiBEQiBvZiBWU0Mg
U0RQIFBheWxvYWQKPiBmb3IgUGl4ZWwgRW5jb2RpbmcvQ29sb3JpbWV0cnkgRm9ybWF0LiBUaGlz
IGNvbW1lbnRzIGZvbGxvd3MgRFAgMS40YSBzcGVjLAo+IHNlY3Rpb24gMi4yLjUuNy41LCBjaGFw
dGVyICJWU0MgU0RQIFBheWxvYWQgZm9yIFBpeGVsIEVuY29kaW5nL0NvbG9yaW1ldHJ5Cj4gRm9y
bWF0Ii4KPgo+IHY3OiBBZGRyZXNzZWQgcmV2aWV3IGNvbW1lbnRzIGZyb20gVmlsbGUuCj4KPiBD
YzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiBTaWdu
ZWQtb2ZmLWJ5OiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+Cj4g
UmV2aWV3ZWQtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5p
bnRlbC5jb20+CgpBbmRyemVqLCBMYXVyZW50IC0KClNldmVuIHZlcnNpb25zIG9mIHRoZSBwYXRj
aCBhbmQgbG9va3MgbGlrZSB3ZSd2ZSBmYWlsZWQgdG8gbG9vcCB5b3UgaW4Kb24gdGhpcy4gU29y
cnkuIE1heSBJIGhhdmUgeW91ciBhY2sgb24gdGhlIHBhdGNoIHBsZWFzZT8KCklzIGl0IHRvbyBt
dWNoIHRvIGFzayB0byBoYXZlIHRoaXMgbWVyZ2VkIHZpYSBkcm0taW50ZWwgYWxvbmcgd2l0aCB0
aGUKcmVzdCBvZiB0aGUgc2VyaWVzPwoKQlIsCkphbmkuCgoKPiAtLS0KPiAgLi4uL2RybS9icmlk
Z2UvYW5hbG9naXgvYW5hbG9naXhfZHBfY29yZS5jICAgIHwgMTIgKysrLS0tLQo+ICAuLi4vZHJt
L2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeF9kcF9jb3JlLmggICAgfCAgMiArLQo+ICAuLi4vZ3B1
L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXhfZHBfcmVnLmMgfCAxMCArKystLS0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcHNyLmMgICAgICAgICAgICAgIHwgIDIgKy0KPiAgaW5j
bHVkZS9kcm0vZHJtX2RwX2hlbHBlci5oICAgICAgICAgICAgICAgICAgIHwgMzMgKysrKysrKysr
KysrKy0tLS0tLQo+ICA1IGZpbGVzIGNoYW5nZWQsIDM2IGluc2VydGlvbnMoKyksIDIzIGRlbGV0
aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgv
YW5hbG9naXhfZHBfY29yZS5jIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFs
b2dpeF9kcF9jb3JlLmMKPiBpbmRleCAyMjVmNWU1ZGQ2OWIuLmQxYzI2NTlkMGNjZSAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4X2RwX2NvcmUu
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXhfZHBfY29y
ZS5jCj4gQEAgLTExNSw3ICsxMTUsNyBAQCBFWFBPUlRfU1lNQk9MX0dQTChhbmFsb2dpeF9kcF9w
c3JfZW5hYmxlZCk7Cj4gIAo+ICBpbnQgYW5hbG9naXhfZHBfZW5hYmxlX3BzcihzdHJ1Y3QgYW5h
bG9naXhfZHBfZGV2aWNlICpkcCkKPiAgewo+IC0Jc3RydWN0IGVkcF92c2NfcHNyIHBzcl92c2M7
Cj4gKwlzdHJ1Y3QgZHBfc2RwIHBzcl92c2M7Cj4gIAo+ICAJaWYgKCFkcC0+cHNyX2VuYWJsZSkK
PiAgCQlyZXR1cm4gMDsKPiBAQCAtMTI3LDggKzEyNyw4IEBAIGludCBhbmFsb2dpeF9kcF9lbmFi
bGVfcHNyKHN0cnVjdCBhbmFsb2dpeF9kcF9kZXZpY2UgKmRwKQo+ICAJcHNyX3ZzYy5zZHBfaGVh
ZGVyLkhCMiA9IDB4MjsKPiAgCXBzcl92c2Muc2RwX2hlYWRlci5IQjMgPSAweDg7Cj4gIAo+IC0J
cHNyX3ZzYy5EQjAgPSAwOwo+IC0JcHNyX3ZzYy5EQjEgPSBFRFBfVlNDX1BTUl9TVEFURV9BQ1RJ
VkUgfCBFRFBfVlNDX1BTUl9DUkNfVkFMVUVTX1ZBTElEOwo+ICsJcHNyX3ZzYy5EQlswXSA9IDA7
Cj4gKwlwc3JfdnNjLkRCWzFdID0gRURQX1ZTQ19QU1JfU1RBVEVfQUNUSVZFIHwgRURQX1ZTQ19Q
U1JfQ1JDX1ZBTFVFU19WQUxJRDsKPiAgCj4gIAlyZXR1cm4gYW5hbG9naXhfZHBfc2VuZF9wc3Jf
c3BkKGRwLCAmcHNyX3ZzYywgdHJ1ZSk7Cj4gIH0KPiBAQCAtMTM2LDcgKzEzNiw3IEBAIEVYUE9S
VF9TWU1CT0xfR1BMKGFuYWxvZ2l4X2RwX2VuYWJsZV9wc3IpOwo+ICAKPiAgaW50IGFuYWxvZ2l4
X2RwX2Rpc2FibGVfcHNyKHN0cnVjdCBhbmFsb2dpeF9kcF9kZXZpY2UgKmRwKQo+ICB7Cj4gLQlz
dHJ1Y3QgZWRwX3ZzY19wc3IgcHNyX3ZzYzsKPiArCXN0cnVjdCBkcF9zZHAgcHNyX3ZzYzsKPiAg
CWludCByZXQ7Cj4gIAo+ICAJaWYgKCFkcC0+cHNyX2VuYWJsZSkKPiBAQCAtMTQ5LDggKzE0OSw4
IEBAIGludCBhbmFsb2dpeF9kcF9kaXNhYmxlX3BzcihzdHJ1Y3QgYW5hbG9naXhfZHBfZGV2aWNl
ICpkcCkKPiAgCXBzcl92c2Muc2RwX2hlYWRlci5IQjIgPSAweDI7Cj4gIAlwc3JfdnNjLnNkcF9o
ZWFkZXIuSEIzID0gMHg4Owo+ICAKPiAtCXBzcl92c2MuREIwID0gMDsKPiAtCXBzcl92c2MuREIx
ID0gMDsKPiArCXBzcl92c2MuREJbMF0gPSAwOwo+ICsJcHNyX3ZzYy5EQlsxXSA9IDA7Cj4gIAo+
ICAJcmV0ID0gZHJtX2RwX2RwY2Rfd3JpdGViKCZkcC0+YXV4LCBEUF9TRVRfUE9XRVIsIERQX1NF
VF9QT1dFUl9EMCk7Cj4gIAlpZiAocmV0ICE9IDEpIHsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeF9kcF9jb3JlLmggYi9kcml2ZXJzL2dwdS9k
cm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4X2RwX2NvcmUuaAo+IGluZGV4IDc2OTI1NWRjNmU5
OS4uM2U1ZmU5MGVkZjcxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5h
bG9naXgvYW5hbG9naXhfZHBfY29yZS5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9h
bmFsb2dpeC9hbmFsb2dpeF9kcF9jb3JlLmgKPiBAQCAtMjU0LDcgKzI1NCw3IEBAIHZvaWQgYW5h
bG9naXhfZHBfZW5hYmxlX3NjcmFtYmxpbmcoc3RydWN0IGFuYWxvZ2l4X2RwX2RldmljZSAqZHAp
Owo+ICB2b2lkIGFuYWxvZ2l4X2RwX2Rpc2FibGVfc2NyYW1ibGluZyhzdHJ1Y3QgYW5hbG9naXhf
ZHBfZGV2aWNlICpkcCk7Cj4gIHZvaWQgYW5hbG9naXhfZHBfZW5hYmxlX3Bzcl9jcmMoc3RydWN0
IGFuYWxvZ2l4X2RwX2RldmljZSAqZHApOwo+ICBpbnQgYW5hbG9naXhfZHBfc2VuZF9wc3Jfc3Bk
KHN0cnVjdCBhbmFsb2dpeF9kcF9kZXZpY2UgKmRwLAo+IC0JCQkgICAgIHN0cnVjdCBlZHBfdnNj
X3BzciAqdnNjLCBib29sIGJsb2NraW5nKTsKPiArCQkJICAgICBzdHJ1Y3QgZHBfc2RwICp2c2Ms
IGJvb2wgYmxvY2tpbmcpOwo+ICBzc2l6ZV90IGFuYWxvZ2l4X2RwX3RyYW5zZmVyKHN0cnVjdCBh
bmFsb2dpeF9kcF9kZXZpY2UgKmRwLAo+ICAJCQkgICAgIHN0cnVjdCBkcm1fZHBfYXV4X21zZyAq
bXNnKTsKPiAgCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgv
YW5hbG9naXhfZHBfcmVnLmMgYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxv
Z2l4X2RwX3JlZy5jCj4gaW5kZXggYTVmMjc2M2Q3MmU0Li5mNTkxODEwZWYxYmUgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeF9kcF9yZWcuYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXhfZHBfcmVnLmMK
PiBAQCAtMTA0MSw3ICsxMDQxLDcgQEAgc3RhdGljIHNzaXplX3QgYW5hbG9naXhfZHBfZ2V0X3Bz
cl9zdGF0dXMoc3RydWN0IGFuYWxvZ2l4X2RwX2RldmljZSAqZHApCj4gIH0KPiAgCj4gIGludCBh
bmFsb2dpeF9kcF9zZW5kX3Bzcl9zcGQoc3RydWN0IGFuYWxvZ2l4X2RwX2RldmljZSAqZHAsCj4g
LQkJCSAgICAgc3RydWN0IGVkcF92c2NfcHNyICp2c2MsIGJvb2wgYmxvY2tpbmcpCj4gKwkJCSAg
ICAgc3RydWN0IGRwX3NkcCAqdnNjLCBib29sIGJsb2NraW5nKQo+ICB7Cj4gIAl1bnNpZ25lZCBp
bnQgdmFsOwo+ICAJaW50IHJldDsKPiBAQCAtMTA2OSw4ICsxMDY5LDggQEAgaW50IGFuYWxvZ2l4
X2RwX3NlbmRfcHNyX3NwZChzdHJ1Y3QgYW5hbG9naXhfZHBfZGV2aWNlICpkcCwKPiAgCXdyaXRl
bCgweDVELCBkcC0+cmVnX2Jhc2UgKyBBTkFMT0dJWF9EUF9TUERfUEIzKTsKPiAgCj4gIAkvKiBj
b25maWd1cmUgREIwIC8gREIxIHZhbHVlcyAqLwo+IC0Jd3JpdGVsKHZzYy0+REIwLCBkcC0+cmVn
X2Jhc2UgKyBBTkFMT0dJWF9EUF9WU0NfU0hBRE9XX0RCMCk7Cj4gLQl3cml0ZWwodnNjLT5EQjEs
IGRwLT5yZWdfYmFzZSArIEFOQUxPR0lYX0RQX1ZTQ19TSEFET1dfREIxKTsKPiArCXdyaXRlbCh2
c2MtPkRCWzBdLCBkcC0+cmVnX2Jhc2UgKyBBTkFMT0dJWF9EUF9WU0NfU0hBRE9XX0RCMCk7Cj4g
Kwl3cml0ZWwodnNjLT5EQlsxXSwgZHAtPnJlZ19iYXNlICsgQU5BTE9HSVhfRFBfVlNDX1NIQURP
V19EQjEpOwo+ICAKPiAgCS8qIHNldCByZXVzZSBzcGQgaW5mb3JmcmFtZSAqLwo+ICAJdmFsID0g
cmVhZGwoZHAtPnJlZ19iYXNlICsgQU5BTE9HSVhfRFBfVklERU9fQ1RMXzMpOwo+IEBAIC0xMDky
LDggKzEwOTIsOCBAQCBpbnQgYW5hbG9naXhfZHBfc2VuZF9wc3Jfc3BkKHN0cnVjdCBhbmFsb2dp
eF9kcF9kZXZpY2UgKmRwLAo+ICAKPiAgCXJldCA9IHJlYWR4X3BvbGxfdGltZW91dChhbmFsb2dp
eF9kcF9nZXRfcHNyX3N0YXR1cywgZHAsIHBzcl9zdGF0dXMsCj4gIAkJcHNyX3N0YXR1cyA+PSAw
ICYmCj4gLQkJKCh2c2MtPkRCMSAmJiBwc3Jfc3RhdHVzID09IERQX1BTUl9TSU5LX0FDVElWRV9S
RkIpIHx8Cj4gLQkJKCF2c2MtPkRCMSAmJiBwc3Jfc3RhdHVzID09IERQX1BTUl9TSU5LX0lOQUNU
SVZFKSksIDE1MDAsCj4gKwkJKCh2c2MtPkRCWzFdICYmIHBzcl9zdGF0dXMgPT0gRFBfUFNSX1NJ
TktfQUNUSVZFX1JGQikgfHwKPiArCQkoIXZzYy0+REJbMV0gJiYgcHNyX3N0YXR1cyA9PSBEUF9Q
U1JfU0lOS19JTkFDVElWRSkpLCAxNTAwLAo+ICAJCURQX1RJTUVPVVRfUFNSX0xPT1BfTVMgKiAx
MDAwKTsKPiAgCWlmIChyZXQpIHsKPiAgCQlkZXZfd2FybihkcC0+ZGV2LCAiRmFpbGVkIHRvIGFw
cGx5IFBTUiAlZFxuIiwgcmV0KTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfcHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wc3IuYwo+IGluZGV4IDJh
NTQ3YTEyOGEzNy4uMDFjYTUwMjA5OWRmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3Bzci5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcHNyLmMK
PiBAQCAtMzQyLDcgKzM0Miw3IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9zZXR1cF92c2Moc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCwKPiAgewo+ICAJc3RydWN0IGludGVsX2RpZ2l0YWxfcG9y
dCAqaW50ZWxfZGlnX3BvcnQgPSBkcF90b19kaWdfcG9ydChpbnRlbF9kcCk7Cj4gIAlzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBkcF90b19pOTE1KGludGVsX2RwKTsKPiAtCXN0
cnVjdCBlZHBfdnNjX3BzciBwc3JfdnNjOwo+ICsJc3RydWN0IGRwX3NkcCBwc3JfdnNjOwo+ICAK
PiAgCWlmIChkZXZfcHJpdi0+cHNyLnBzcjJfZW5hYmxlZCkgewo+ICAJCS8qIFByZXBhcmUgVlND
IEhlYWRlciBmb3IgU1UgYXMgcGVyIEVEUCAxLjQgc3BlYywgVGFibGUgNi4xMSAqLwo+IGRpZmYg
LS1naXQgYS9pbmNsdWRlL2RybS9kcm1fZHBfaGVscGVyLmggYi9pbmNsdWRlL2RybS9kcm1fZHBf
aGVscGVyLmgKPiBpbmRleCA5N2NlNzkwYTViNWEuLjhkN2M0N2U0NmYyZCAxMDA2NDQKPiAtLS0g
YS9pbmNsdWRlL2RybS9kcm1fZHBfaGVscGVyLmgKPiArKysgYi9pbmNsdWRlL2RybS9kcm1fZHBf
aGVscGVyLmgKPiBAQCAtMTA4MywxNyArMTA4MywzMCBAQCBzdHJ1Y3QgZHBfc2RwX2hlYWRlciB7
Cj4gICNkZWZpbmUgRURQX1NEUF9IRUFERVJfVkFMSURfUEFZTE9BRF9CWVRFUwkweDFGCj4gICNk
ZWZpbmUgRFBfU0RQX1BQU19IRUFERVJfUEFZTE9BRF9CWVRFU19NSU5VU18xIDB4N0YKPiAgCj4g
LXN0cnVjdCBlZHBfdnNjX3BzciB7Cj4gKy8qKgo+ICsgKiBzdHJ1Y3QgZHBfc2RwIC0gRFAgc2Vj
b25kYXJ5IGRhdGEgcGFja2V0Cj4gKyAqIEBzZHBfaGVhZGVyOiBEUCBzZWNvbmRhcnkgZGF0YSBw
YWNrZXQgaGVhZGVyCj4gKyAqIEBEQjogRFAgc2Vjb25kYXJheSBkYXRhIHBhY2tldCBkYXRhIGJs
b2Nrcwo+ICsgKiBWU0MgU0RQIFBheWxvYWQgZm9yIFBTUgo+ICsgKiBEQlswXTogU3RlcmVvIElu
dGVyZmFjZQo+ICsgKiBEQlsxXTogMCAtIFBTUiBTdGF0ZTsgMSAtIFVwZGF0ZSBSRkI7IDIgLSBD
UkMgVmFsaWQKPiArICogREJbMl06IENSQyB2YWx1ZSBiaXRzIDc6MCBvZiB0aGUgUiBvciBDciBj
b21wb25lbnQKPiArICogREJbM106IENSQyB2YWx1ZSBiaXRzIDE1Ojggb2YgdGhlIFIgb3IgQ3Ig
Y29tcG9uZW50Cj4gKyAqIERCWzRdOiBDUkMgdmFsdWUgYml0cyA3OjAgb2YgdGhlIEcgb3IgWSBj
b21wb25lbnQKPiArICogREJbNV06IENSQyB2YWx1ZSBiaXRzIDE1Ojggb2YgdGhlIEcgb3IgWSBj
b21wb25lbnQKPiArICogREJbNl06IENSQyB2YWx1ZSBiaXRzIDc6MCBvZiB0aGUgQiBvciBDYiBj
b21wb25lbnQKPiArICogREJbN106IENSQyB2YWx1ZSBiaXRzIDE1Ojggb2YgdGhlIEIgb3IgQ2Ig
Y29tcG9uZW50Cj4gKyAqIERCWzhdIC0gREJbMzFdOiBSZXNlcnZlZAo+ICsgKiBWU0MgU0RQIFBh
eWxvYWQgZm9yIFBpeGVsIEVuY29kaW5nL0NvbG9yaW1ldHJ5IEZvcm1hdAo+ICsgKiBEQlswXSAt
IERCWzE1XTogUmVzZXJ2ZWQKPiArICogREJbMTZdOiBQaXhlbCBFbmNvZGluZyBhbmQgQ29sb3Jp
bWV0cnkgRm9ybWF0cwo+ICsgKiBEQlsxN106IER5bmFtaWMgUmFuZ2UgYW5kIENvbXBvbmVudCBC
aXQgRGVwdGgKPiArICogREJbMThdOiBDb250ZW50IFR5cGUKPiArICogREJbMTldIC0gREJbMzFd
OiBSZXNlcnZlZAo+ICsgKi8KPiArc3RydWN0IGRwX3NkcCB7Cj4gIAlzdHJ1Y3QgZHBfc2RwX2hl
YWRlciBzZHBfaGVhZGVyOwo+IC0JdTggREIwOyAvKiBTdGVyZW8gSW50ZXJmYWNlICovCj4gLQl1
OCBEQjE7IC8qIDAgLSBQU1IgU3RhdGU7IDEgLSBVcGRhdGUgUkZCOyAyIC0gQ1JDIFZhbGlkICov
Cj4gLQl1OCBEQjI7IC8qIENSQyB2YWx1ZSBiaXRzIDc6MCBvZiB0aGUgUiBvciBDciBjb21wb25l
bnQgKi8KPiAtCXU4IERCMzsgLyogQ1JDIHZhbHVlIGJpdHMgMTU6OCBvZiB0aGUgUiBvciBDciBj
b21wb25lbnQgKi8KPiAtCXU4IERCNDsgLyogQ1JDIHZhbHVlIGJpdHMgNzowIG9mIHRoZSBHIG9y
IFkgY29tcG9uZW50ICovCj4gLQl1OCBEQjU7IC8qIENSQyB2YWx1ZSBiaXRzIDE1Ojggb2YgdGhl
IEcgb3IgWSBjb21wb25lbnQgKi8KPiAtCXU4IERCNjsgLyogQ1JDIHZhbHVlIGJpdHMgNzowIG9m
IHRoZSBCIG9yIENiIGNvbXBvbmVudCAqLwo+IC0JdTggREI3OyAvKiBDUkMgdmFsdWUgYml0cyAx
NTo4IG9mIHRoZSBCIG9yIENiIGNvbXBvbmVudCAqLwo+IC0JdTggREI4XzMxWzI0XTsgLyogUmVz
ZXJ2ZWQgKi8KPiArCXU4IERCWzMyXTsKPiAgfSBfX3BhY2tlZDsKPiAgCj4gICNkZWZpbmUgRURQ
X1ZTQ19QU1JfU1RBVEVfQUNUSVZFCSgxPDwwKQoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVu
IFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
