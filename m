Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E81EC14A3F
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2019 14:52:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0A33898F5;
	Mon,  6 May 2019 12:52:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2AE9898F5
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2019 12:52:18 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 May 2019 05:52:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,438,1549958400"; d="scan'208";a="168404995"
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by fmsmga002.fm.intel.com with ESMTP; 06 May 2019 05:52:17 -0700
Date: Mon, 6 May 2019 15:52:01 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20190506125201.GD28365@ideak-desk.fi.intel.com>
References: <20190503193143.28240-1-ville.syrjala@linux.intel.com>
 <20190503193143.28240-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190503193143.28240-2-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Move the hsw/bdw pc8 code to
 intel_runtime_pm.c
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBNYXkgMDMsIDIwMTkgYXQgMTA6MzE6NDNQTSArMDMwMCwgVmlsbGUgU3lyamFsYSB3
cm90ZToKPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgo+IAo+IGhzd19lbmFibGVfcGM4KCkvaHN3X2Rpc2FibGVfcGM4KCkgYXJlIG1vcmUgbGVz
cyBlcXVpdmFsZW50IHRvCj4gdGhlIGRpc3BsYXkgY29yZSBpbml0L3VuaXQgZnVuY3Rpb25zIG9m
IGxhdGVyIHBsYXRmb3Jtcy4gUmVsb2NhdGUKPiB0aGUgaHN3L2JkdyBjb2RlIGludG8gaW50ZWxf
cnVudGltZV9wbS5jIHNvIHRoYXQgaXQgc2l0cyBuZXh0IHRvCj4gaXRzIGNvdXNpbnMuCj4gCj4g
U2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KClJldmlld2VkLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+Cgo+IC0t
LQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMgICAgfCAyMjIgKy0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5o
ICAgIHwgICA0ICsKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHJ2LmggICAgICAgIHwg
ICAyIC0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5jIHwgMjIzICsr
KysrKysrKysrKysrKysrKysrKysrKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ydW50
aW1lX3BtLmggfCAgIDIgKwo+ICA1IGZpbGVzIGNoYW5nZWQsIDIzMCBpbnNlcnRpb25zKCspLCAy
MjMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYwo+IGlu
ZGV4IGQ4MWVjODBlMzRmNi4uYTM1MWM4ZTIxOWJhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2Rpc3BsYXkuYwo+IEBAIC04NzI1LDcgKzg3MjUsNyBAQCBzdGF0aWMgdm9pZCBscHRfZW5h
YmxlX2Nsa291dF9kcChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gIH0KPiAg
Cj4gIC8qIFNlcXVlbmNlIHRvIGRpc2FibGUgQ0xLT1VUX0RQICovCj4gLXN0YXRpYyB2b2lkIGxw
dF9kaXNhYmxlX2Nsa291dF9kcChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4g
K3ZvaWQgbHB0X2Rpc2FibGVfY2xrb3V0X2RwKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdikKPiAgewo+ICAJdTMyIHJlZywgdG1wOwo+ICAKPiBAQCAtOTQ4MiwyMjYgKzk0ODIsNiBA
QCBzdGF0aWMgYm9vbCBpcm9ubGFrZV9nZXRfcGlwZV9jb25maWcoc3RydWN0IGludGVsX2NydGMg
KmNydGMsCj4gIAo+ICAJcmV0dXJuIHJldDsKPiAgfQo+IC0KPiAtc3RhdGljIHZvaWQgYXNzZXJ0
X2Nhbl9kaXNhYmxlX2xjcGxsKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAt
ewo+IC0Jc3RydWN0IGRybV9kZXZpY2UgKmRldiA9ICZkZXZfcHJpdi0+ZHJtOwo+IC0Jc3RydWN0
IGludGVsX2NydGMgKmNydGM7Cj4gLQo+IC0JZm9yX2VhY2hfaW50ZWxfY3J0YyhkZXYsIGNydGMp
Cj4gLQkJSTkxNV9TVEFURV9XQVJOKGNydGMtPmFjdGl2ZSwgIkNSVEMgZm9yIHBpcGUgJWMgZW5h
YmxlZFxuIiwKPiAtCQkgICAgIHBpcGVfbmFtZShjcnRjLT5waXBlKSk7Cj4gLQo+IC0JSTkxNV9T
VEFURV9XQVJOKEk5MTVfUkVBRChIU1dfUFdSX1dFTExfQ1RMMiksCj4gLQkJCSJEaXNwbGF5IHBv
d2VyIHdlbGwgb25cbiIpOwo+IC0JSTkxNV9TVEFURV9XQVJOKEk5MTVfUkVBRChTUExMX0NUTCkg
JiBTUExMX1BMTF9FTkFCTEUsICJTUExMIGVuYWJsZWRcbiIpOwo+IC0JSTkxNV9TVEFURV9XQVJO
KEk5MTVfUkVBRChXUlBMTF9DVEwoMCkpICYgV1JQTExfUExMX0VOQUJMRSwgIldSUExMMSBlbmFi
bGVkXG4iKTsKPiAtCUk5MTVfU1RBVEVfV0FSTihJOTE1X1JFQUQoV1JQTExfQ1RMKDEpKSAmIFdS
UExMX1BMTF9FTkFCTEUsICJXUlBMTDIgZW5hYmxlZFxuIik7Cj4gLQlJOTE1X1NUQVRFX1dBUk4o
STkxNV9SRUFEKFBQX1NUQVRVUygwKSkgJiBQUF9PTiwgIlBhbmVsIHBvd2VyIG9uXG4iKTsKPiAt
CUk5MTVfU1RBVEVfV0FSTihJOTE1X1JFQUQoQkxDX1BXTV9DUFVfQ1RMMikgJiBCTE1fUFdNX0VO
QUJMRSwKPiAtCSAgICAgIkNQVSBQV00xIGVuYWJsZWRcbiIpOwo+IC0JaWYgKElTX0hBU1dFTEwo
ZGV2X3ByaXYpKQo+IC0JCUk5MTVfU1RBVEVfV0FSTihJOTE1X1JFQUQoSFNXX0JMQ19QV00yX0NU
TCkgJiBCTE1fUFdNX0VOQUJMRSwKPiAtCQkgICAgICJDUFUgUFdNMiBlbmFibGVkXG4iKTsKPiAt
CUk5MTVfU1RBVEVfV0FSTihJOTE1X1JFQUQoQkxDX1BXTV9QQ0hfQ1RMMSkgJiBCTE1fUENIX1BX
TV9FTkFCTEUsCj4gLQkgICAgICJQQ0ggUFdNMSBlbmFibGVkXG4iKTsKPiAtCUk5MTVfU1RBVEVf
V0FSTihJOTE1X1JFQUQoVVRJTF9QSU5fQ1RMKSAmIFVUSUxfUElOX0VOQUJMRSwKPiAtCSAgICAg
IlV0aWxpdHkgcGluIGVuYWJsZWRcbiIpOwo+IC0JSTkxNV9TVEFURV9XQVJOKEk5MTVfUkVBRChQ
Q0hfR1RDX0NUTCkgJiBQQ0hfR1RDX0VOQUJMRSwgIlBDSCBHVEMgZW5hYmxlZFxuIik7Cj4gLQo+
IC0JLyoKPiAtCSAqIEluIHRoZW9yeSB3ZSBjYW4gc3RpbGwgbGVhdmUgSVJRcyBlbmFibGVkLCBh
cyBsb25nIGFzIG9ubHkgdGhlIEhQRAo+IC0JICogaW50ZXJydXB0cyByZW1haW4gZW5hYmxlZC4g
V2UgdXNlZCB0byBjaGVjayBmb3IgdGhhdCwgYnV0IHNpbmNlIGl0J3MKPiAtCSAqIGdlbi1zcGVj
aWZpYyBhbmQgc2luY2Ugd2Ugb25seSBkaXNhYmxlIExDUExMIGFmdGVyIHdlIGZ1bGx5IGRpc2Fi
bGUKPiAtCSAqIHRoZSBpbnRlcnJ1cHRzLCB0aGUgY2hlY2sgYmVsb3cgc2hvdWxkIGJlIGVub3Vn
aC4KPiAtCSAqLwo+IC0JSTkxNV9TVEFURV9XQVJOKGludGVsX2lycXNfZW5hYmxlZChkZXZfcHJp
diksICJJUlFzIGVuYWJsZWRcbiIpOwo+IC19Cj4gLQo+IC1zdGF0aWMgdTMyIGhzd19yZWFkX2Rj
b21wKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAtewo+IC0JaWYgKElTX0hB
U1dFTEwoZGV2X3ByaXYpKQo+IC0JCXJldHVybiBJOTE1X1JFQUQoRF9DT01QX0hTVyk7Cj4gLQll
bHNlCj4gLQkJcmV0dXJuIEk5MTVfUkVBRChEX0NPTVBfQkRXKTsKPiAtfQo+IC0KPiAtc3RhdGlj
IHZvaWQgaHN3X3dyaXRlX2Rjb21wKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwg
dTMyIHZhbCkKPiAtewo+IC0JaWYgKElTX0hBU1dFTEwoZGV2X3ByaXYpKSB7Cj4gLQkJaWYgKHNh
bmR5YnJpZGdlX3Bjb2RlX3dyaXRlKGRldl9wcml2LCBHRU42X1BDT0RFX1dSSVRFX0RfQ09NUCwK
PiAtCQkJCQkgICAgdmFsKSkKPiAtCQkJRFJNX0RFQlVHX0tNUygiRmFpbGVkIHRvIHdyaXRlIHRv
IERfQ09NUFxuIik7Cj4gLQl9IGVsc2Ugewo+IC0JCUk5MTVfV1JJVEUoRF9DT01QX0JEVywgdmFs
KTsKPiAtCQlQT1NUSU5HX1JFQUQoRF9DT01QX0JEVyk7Cj4gLQl9Cj4gLX0KPiAtCj4gLS8qCj4g
LSAqIFRoaXMgZnVuY3Rpb24gaW1wbGVtZW50cyBwaWVjZXMgb2YgdHdvIHNlcXVlbmNlcyBmcm9t
IEJTcGVjOgo+IC0gKiAtIFNlcXVlbmNlIGZvciBkaXNwbGF5IHNvZnR3YXJlIHRvIGRpc2FibGUg
TENQTEwKPiAtICogLSBTZXF1ZW5jZSBmb3IgZGlzcGxheSBzb2Z0d2FyZSB0byBhbGxvdyBwYWNr
YWdlIEM4Kwo+IC0gKiBUaGUgc3RlcHMgaW1wbGVtZW50ZWQgaGVyZSBhcmUganVzdCB0aGUgc3Rl
cHMgdGhhdCBhY3R1YWxseSB0b3VjaCB0aGUgTENQTEwKPiAtICogcmVnaXN0ZXIuIENhbGxlcnMg
c2hvdWxkIHRha2UgY2FyZSBvZiBkaXNhYmxpbmcgYWxsIHRoZSBkaXNwbGF5IGVuZ2luZQo+IC0g
KiBmdW5jdGlvbnMsIGRvaW5nIHRoZSBtb2RlIHVuc2V0LCBmaXhpbmcgaW50ZXJydXB0cywgZXRj
Lgo+IC0gKi8KPiAtc3RhdGljIHZvaWQgaHN3X2Rpc2FibGVfbGNwbGwoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2LAo+IC0JCQkgICAgICBib29sIHN3aXRjaF90b19mY2xrLCBib29s
IGFsbG93X3Bvd2VyX2Rvd24pCj4gLXsKPiAtCXUzMiB2YWw7Cj4gLQo+IC0JYXNzZXJ0X2Nhbl9k
aXNhYmxlX2xjcGxsKGRldl9wcml2KTsKPiAtCj4gLQl2YWwgPSBJOTE1X1JFQUQoTENQTExfQ1RM
KTsKPiAtCj4gLQlpZiAoc3dpdGNoX3RvX2ZjbGspIHsKPiAtCQl2YWwgfD0gTENQTExfQ0RfU09V
UkNFX0ZDTEs7Cj4gLQkJSTkxNV9XUklURShMQ1BMTF9DVEwsIHZhbCk7Cj4gLQo+IC0JCWlmICh3
YWl0X2Zvcl91cyhJOTE1X1JFQUQoTENQTExfQ1RMKSAmCj4gLQkJCQlMQ1BMTF9DRF9TT1VSQ0Vf
RkNMS19ET05FLCAxKSkKPiAtCQkJRFJNX0VSUk9SKCJTd2l0Y2hpbmcgdG8gRkNMSyBmYWlsZWRc
biIpOwo+IC0KPiAtCQl2YWwgPSBJOTE1X1JFQUQoTENQTExfQ1RMKTsKPiAtCX0KPiAtCj4gLQl2
YWwgfD0gTENQTExfUExMX0RJU0FCTEU7Cj4gLQlJOTE1X1dSSVRFKExDUExMX0NUTCwgdmFsKTsK
PiAtCVBPU1RJTkdfUkVBRChMQ1BMTF9DVEwpOwo+IC0KPiAtCWlmIChpbnRlbF93YWl0X2Zvcl9y
ZWdpc3RlcigmZGV2X3ByaXYtPnVuY29yZSwKPiAtCQkJCSAgICBMQ1BMTF9DVEwsIExDUExMX1BM
TF9MT0NLLCAwLCAxKSkKPiAtCQlEUk1fRVJST1IoIkxDUExMIHN0aWxsIGxvY2tlZFxuIik7Cj4g
LQo+IC0JdmFsID0gaHN3X3JlYWRfZGNvbXAoZGV2X3ByaXYpOwo+IC0JdmFsIHw9IERfQ09NUF9D
T01QX0RJU0FCTEU7Cj4gLQloc3dfd3JpdGVfZGNvbXAoZGV2X3ByaXYsIHZhbCk7Cj4gLQluZGVs
YXkoMTAwKTsKPiAtCj4gLQlpZiAod2FpdF9mb3IoKGhzd19yZWFkX2Rjb21wKGRldl9wcml2KSAm
IERfQ09NUF9SQ09NUF9JTl9QUk9HUkVTUykgPT0gMCwKPiAtCQkgICAgIDEpKQo+IC0JCURSTV9F
UlJPUigiRF9DT01QIFJDT01QIHN0aWxsIGluIHByb2dyZXNzXG4iKTsKPiAtCj4gLQlpZiAoYWxs
b3dfcG93ZXJfZG93bikgewo+IC0JCXZhbCA9IEk5MTVfUkVBRChMQ1BMTF9DVEwpOwo+IC0JCXZh
bCB8PSBMQ1BMTF9QT1dFUl9ET1dOX0FMTE9XOwo+IC0JCUk5MTVfV1JJVEUoTENQTExfQ1RMLCB2
YWwpOwo+IC0JCVBPU1RJTkdfUkVBRChMQ1BMTF9DVEwpOwo+IC0JfQo+IC19Cj4gLQo+IC0vKgo+
IC0gKiBGdWxseSByZXN0b3JlcyBMQ1BMTCwgZGlzYWxsb3dpbmcgcG93ZXIgZG93biBhbmQgc3dp
dGNoaW5nIGJhY2sgdG8gTENQTEwKPiAtICogc291cmNlLgo+IC0gKi8KPiAtc3RhdGljIHZvaWQg
aHN3X3Jlc3RvcmVfbGNwbGwoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+IC17
Cj4gLQl1MzIgdmFsOwo+IC0KPiAtCXZhbCA9IEk5MTVfUkVBRChMQ1BMTF9DVEwpOwo+IC0KPiAt
CWlmICgodmFsICYgKExDUExMX1BMTF9MT0NLIHwgTENQTExfUExMX0RJU0FCTEUgfCBMQ1BMTF9D
RF9TT1VSQ0VfRkNMSyB8Cj4gLQkJICAgIExDUExMX1BPV0VSX0RPV05fQUxMT1cpKSA9PSBMQ1BM
TF9QTExfTE9DSykKPiAtCQlyZXR1cm47Cj4gLQo+IC0JLyoKPiAtCSAqIE1ha2Ugc3VyZSB3ZSdy
ZSBub3Qgb24gUEM4IHN0YXRlIGJlZm9yZSBkaXNhYmxpbmcgUEM4LCBvdGhlcndpc2UKPiAtCSAq
IHdlJ2xsIGhhbmcgdGhlIG1hY2hpbmUuIFRvIHByZXZlbnQgUEM4IHN0YXRlLCBqdXN0IGVuYWJs
ZSBmb3JjZV93YWtlLgo+IC0JICovCj4gLQlpbnRlbF91bmNvcmVfZm9yY2V3YWtlX2dldCgmZGV2
X3ByaXYtPnVuY29yZSwgRk9SQ0VXQUtFX0FMTCk7Cj4gLQo+IC0JaWYgKHZhbCAmIExDUExMX1BP
V0VSX0RPV05fQUxMT1cpIHsKPiAtCQl2YWwgJj0gfkxDUExMX1BPV0VSX0RPV05fQUxMT1c7Cj4g
LQkJSTkxNV9XUklURShMQ1BMTF9DVEwsIHZhbCk7Cj4gLQkJUE9TVElOR19SRUFEKExDUExMX0NU
TCk7Cj4gLQl9Cj4gLQo+IC0JdmFsID0gaHN3X3JlYWRfZGNvbXAoZGV2X3ByaXYpOwo+IC0JdmFs
IHw9IERfQ09NUF9DT01QX0ZPUkNFOwo+IC0JdmFsICY9IH5EX0NPTVBfQ09NUF9ESVNBQkxFOwo+
IC0JaHN3X3dyaXRlX2Rjb21wKGRldl9wcml2LCB2YWwpOwo+IC0KPiAtCXZhbCA9IEk5MTVfUkVB
RChMQ1BMTF9DVEwpOwo+IC0JdmFsICY9IH5MQ1BMTF9QTExfRElTQUJMRTsKPiAtCUk5MTVfV1JJ
VEUoTENQTExfQ1RMLCB2YWwpOwo+IC0KPiAtCWlmIChpbnRlbF93YWl0X2Zvcl9yZWdpc3Rlcigm
ZGV2X3ByaXYtPnVuY29yZSwKPiAtCQkJCSAgICBMQ1BMTF9DVEwsIExDUExMX1BMTF9MT0NLLCBM
Q1BMTF9QTExfTE9DSywKPiAtCQkJCSAgICA1KSkKPiAtCQlEUk1fRVJST1IoIkxDUExMIG5vdCBs
b2NrZWQgeWV0XG4iKTsKPiAtCj4gLQlpZiAodmFsICYgTENQTExfQ0RfU09VUkNFX0ZDTEspIHsK
PiAtCQl2YWwgPSBJOTE1X1JFQUQoTENQTExfQ1RMKTsKPiAtCQl2YWwgJj0gfkxDUExMX0NEX1NP
VVJDRV9GQ0xLOwo+IC0JCUk5MTVfV1JJVEUoTENQTExfQ1RMLCB2YWwpOwo+IC0KPiAtCQlpZiAo
d2FpdF9mb3JfdXMoKEk5MTVfUkVBRChMQ1BMTF9DVEwpICYKPiAtCQkJCSBMQ1BMTF9DRF9TT1VS
Q0VfRkNMS19ET05FKSA9PSAwLCAxKSkKPiAtCQkJRFJNX0VSUk9SKCJTd2l0Y2hpbmcgYmFjayB0
byBMQ1BMTCBmYWlsZWRcbiIpOwo+IC0JfQo+IC0KPiAtCWludGVsX3VuY29yZV9mb3JjZXdha2Vf
cHV0KCZkZXZfcHJpdi0+dW5jb3JlLCBGT1JDRVdBS0VfQUxMKTsKPiAtCj4gLQlpbnRlbF91cGRh
dGVfY2RjbGsoZGV2X3ByaXYpOwo+IC0JaW50ZWxfZHVtcF9jZGNsa19zdGF0ZSgmZGV2X3ByaXYt
PmNkY2xrLmh3LCAiQ3VycmVudCBDRENMSyIpOwo+IC19Cj4gLQo+IC0vKgo+IC0gKiBQYWNrYWdl
IHN0YXRlcyBDOCBhbmQgZGVlcGVyIGFyZSByZWFsbHkgZGVlcCBQQyBzdGF0ZXMgdGhhdCBjYW4g
b25seSBiZQo+IC0gKiByZWFjaGVkIHdoZW4gYWxsIHRoZSBkZXZpY2VzIG9uIHRoZSBzeXN0ZW0g
YWxsb3cgaXQsIHNvIGV2ZW4gaWYgdGhlIGdyYXBoaWNzCj4gLSAqIGRldmljZSBhbGxvd3MgUEM4
KywgaXQgZG9lc24ndCBtZWFuIHRoZSBzeXN0ZW0gd2lsbCBhY3R1YWxseSBnZXQgdG8gdGhlc2UK
PiAtICogc3RhdGVzLiBPdXIgZHJpdmVyIG9ubHkgYWxsb3dzIFBDOCsgd2hlbiBnb2luZyBpbnRv
IHJ1bnRpbWUgUE0uCj4gLSAqCj4gLSAqIFRoZSByZXF1aXJlbWVudHMgZm9yIFBDOCsgYXJlIHRo
YXQgYWxsIHRoZSBvdXRwdXRzIGFyZSBkaXNhYmxlZCwgdGhlIHBvd2VyCj4gLSAqIHdlbGwgaXMg
ZGlzYWJsZWQgYW5kIG1vc3QgaW50ZXJydXB0cyBhcmUgZGlzYWJsZWQsIGFuZCB0aGVzZSBhcmUg
YWxzbwo+IC0gKiByZXF1aXJlbWVudHMgZm9yIHJ1bnRpbWUgUE0uIFdoZW4gdGhlc2UgY29uZGl0
aW9ucyBhcmUgbWV0LCB3ZSBtYW51YWxseSBkbwo+IC0gKiB0aGUgb3RoZXIgY29uZGl0aW9uczog
ZGlzYWJsZSB0aGUgaW50ZXJydXB0cywgY2xvY2tzIGFuZCBzd2l0Y2ggTENQTEwgcmVmY2xrCj4g
LSAqIHRvIEZjbGsuIElmIHdlJ3JlIGluIFBDOCsgYW5kIHdlIGdldCBhbiBub24taG90cGx1ZyBp
bnRlcnJ1cHQsIHdlIGNhbiBoYXJkCj4gLSAqIGhhbmcgdGhlIG1hY2hpbmUuCj4gLSAqCj4gLSAq
IFdoZW4gd2UgcmVhbGx5IHJlYWNoIFBDOCBvciBkZWVwZXIgc3RhdGVzIChub3QganVzdCB3aGVu
IHdlIGFsbG93IGl0KSB3ZSBsb3NlCj4gLSAqIHRoZSBzdGF0ZSBvZiBzb21lIHJlZ2lzdGVycywg
c28gd2hlbiB3ZSBjb21lIGJhY2sgZnJvbSBQQzgrIHdlIG5lZWQgdG8KPiAtICogcmVzdG9yZSB0
aGlzIHN0YXRlLiBXZSBkb24ndCBnZXQgaW50byBQQzgrIGlmIHdlJ3JlIG5vdCBpbiBSQzYsIHNv
IHdlIGRvbid0Cj4gLSAqIG5lZWQgdG8gdGFrZSBjYXJlIG9mIHRoZSByZWdpc3RlcnMga2VwdCBi
eSBSQzYuIE5vdGljZSB0aGF0IHRoaXMgaGFwcGVucyBldmVuCj4gLSAqIGlmIHdlIGRvbid0IHB1
dCB0aGUgZGV2aWNlIGluIFBDSSBEMyBzdGF0ZSAod2hpY2ggaXMgd2hhdCBjdXJyZW50bHkgaGFw
cGVucwo+IC0gKiBiZWNhdXNlIG9mIHRoZSBydW50aW1lIFBNIHN1cHBvcnQpLgo+IC0gKgo+IC0g
KiBGb3IgbW9yZSwgcmVhZCAiRGlzcGxheSBTZXF1ZW5jZXMgZm9yIFBhY2thZ2UgQzgiIG9uIHRo
ZSBoYXJkd2FyZQo+IC0gKiBkb2N1bWVudGF0aW9uLgo+IC0gKi8KPiAtdm9pZCBoc3dfZW5hYmxl
X3BjOChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gLXsKPiAtCXUzMiB2YWw7
Cj4gLQo+IC0JRFJNX0RFQlVHX0tNUygiRW5hYmxpbmcgcGFja2FnZSBDOCtcbiIpOwo+IC0KPiAt
CWlmIChIQVNfUENIX0xQVF9MUChkZXZfcHJpdikpIHsKPiAtCQl2YWwgPSBJOTE1X1JFQUQoU09V
VEhfRFNQQ0xLX0dBVEVfRCk7Cj4gLQkJdmFsICY9IH5QQ0hfTFBfUEFSVElUSU9OX0xFVkVMX0RJ
U0FCTEU7Cj4gLQkJSTkxNV9XUklURShTT1VUSF9EU1BDTEtfR0FURV9ELCB2YWwpOwo+IC0JfQo+
IC0KPiAtCWxwdF9kaXNhYmxlX2Nsa291dF9kcChkZXZfcHJpdik7Cj4gLQloc3dfZGlzYWJsZV9s
Y3BsbChkZXZfcHJpdiwgdHJ1ZSwgdHJ1ZSk7Cj4gLX0KPiAtCj4gLXZvaWQgaHN3X2Rpc2FibGVf
cGM4KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAtewo+IC0JdTMyIHZhbDsK
PiAtCj4gLQlEUk1fREVCVUdfS01TKCJEaXNhYmxpbmcgcGFja2FnZSBDOCtcbiIpOwo+IC0KPiAt
CWhzd19yZXN0b3JlX2xjcGxsKGRldl9wcml2KTsKPiAtCWxwdF9pbml0X3BjaF9yZWZjbGsoZGV2
X3ByaXYpOwo+IC0KPiAtCWlmIChIQVNfUENIX0xQVF9MUChkZXZfcHJpdikpIHsKPiAtCQl2YWwg
PSBJOTE1X1JFQUQoU09VVEhfRFNQQ0xLX0dBVEVfRCk7Cj4gLQkJdmFsIHw9IFBDSF9MUF9QQVJU
SVRJT05fTEVWRUxfRElTQUJMRTsKPiAtCQlJOTE1X1dSSVRFKFNPVVRIX0RTUENMS19HQVRFX0Qs
IHZhbCk7Cj4gLQl9Cj4gLX0KPiAtCj4gIHN0YXRpYyBpbnQgaGFzd2VsbF9jcnRjX2NvbXB1dGVf
Y2xvY2soc3RydWN0IGludGVsX2NydGMgKmNydGMsCj4gIAkJCQkgICAgICBzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKPiAgewo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9kaXNwbGF5LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNw
bGF5LmgKPiBpbmRleCAyMjIwNTg4ZTg2YWMuLjFiNmY1YTcxMTg0ZCAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmgKPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9kaXNwbGF5LmgKPiBAQCAtMjgsNiArMjgsOCBAQAo+ICAjaW5jbHVkZSA8
ZHJtL2RybV91dGlsLmg+Cj4gICNpbmNsdWRlIDxkcm0vaTkxNV9kcm0uaD4KPiAgCj4gK3N0cnVj
dCBkcm1faTkxNV9wcml2YXRlOwo+ICsKPiAgZW51bSBpOTE1X2dwaW8gewo+ICAJR1BJT0EsCj4g
IAlHUElPQiwKPiBAQCAtNDMyLDQgKzQzNCw2IEBAIHZvaWQgaW50ZWxfbGlua19jb21wdXRlX21f
bih1MTYgYnBwLCBpbnQgbmxhbmVzLAo+ICAJCQkgICAgc3RydWN0IGludGVsX2xpbmtfbV9uICpt
X24sCj4gIAkJCSAgICBib29sIGNvbnN0YW50X24pOwo+ICBib29sIGlzX2Njc19tb2RpZmllcih1
NjQgbW9kaWZpZXIpOwo+ICt2b2lkIGxwdF9kaXNhYmxlX2Nsa291dF9kcChzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwo+ICsKPiAgI2VuZGlmCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
ZHJ2LmgKPiBpbmRleCA0MDQ5ZTAzZDJjMGQuLjI0Nzg5M2VkMTU0MyAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcnYuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2Rydi5oCj4gQEAgLTE1NzEsOCArMTU3MSw2IEBAIHZvaWQgYXNzZXJ0X3BpcGUo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBlbnVtIHBpcGUgcGlwZSwgYm9vbCBz
dGF0ZSk7Cj4gICNkZWZpbmUgYXNzZXJ0X3BpcGVfZGlzYWJsZWQoZCwgcCkgYXNzZXJ0X3BpcGUo
ZCwgcCwgZmFsc2UpCj4gIHZvaWQgaW50ZWxfcHJlcGFyZV9yZXNldChzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYpOwo+ICB2b2lkIGludGVsX2ZpbmlzaF9yZXNldChzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwo+IC12b2lkIGhzd19lbmFibGVfcGM4KHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7Cj4gLXZvaWQgaHN3X2Rpc2FibGVfcGM4KHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7Cj4gIHVuc2lnbmVkIGludCBza2xfY2RjbGtf
Z2V0X3Zjbyh1bnNpZ25lZCBpbnQgZnJlcSk7Cj4gIHZvaWQgaW50ZWxfZHBfZ2V0X21fbihzdHJ1
Y3QgaW50ZWxfY3J0YyAqY3J0YywKPiAgCQkgICAgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
cGlwZV9jb25maWcpOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9y
dW50aW1lX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ydW50aW1lX3BtLmMKPiBp
bmRleCBiMWZkMmFlOTkxOTkuLmI4ZmFkZDFiNjg1YyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9ydW50aW1lX3BtLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9ydW50aW1lX3BtLmMKPiBAQCAtMzY0Miw2ICszNjQyLDIyOSBAQCBzdGF0aWMgdm9p
ZCBoc3dfYXNzZXJ0X2NkY2xrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAg
CQlEUk1fRVJST1IoIkxDUExMIGlzIGRpc2FibGVkXG4iKTsKPiAgfQo+ICAKPiArc3RhdGljIHZv
aWQgYXNzZXJ0X2Nhbl9kaXNhYmxlX2xjcGxsKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdikKPiArewo+ICsJc3RydWN0IGRybV9kZXZpY2UgKmRldiA9ICZkZXZfcHJpdi0+ZHJtOwo+
ICsJc3RydWN0IGludGVsX2NydGMgKmNydGM7Cj4gKwo+ICsJZm9yX2VhY2hfaW50ZWxfY3J0Yyhk
ZXYsIGNydGMpCj4gKwkJSTkxNV9TVEFURV9XQVJOKGNydGMtPmFjdGl2ZSwgIkNSVEMgZm9yIHBp
cGUgJWMgZW5hYmxlZFxuIiwKPiArCQkJCXBpcGVfbmFtZShjcnRjLT5waXBlKSk7Cj4gKwo+ICsJ
STkxNV9TVEFURV9XQVJOKEk5MTVfUkVBRChIU1dfUFdSX1dFTExfQ1RMMiksCj4gKwkJCSJEaXNw
bGF5IHBvd2VyIHdlbGwgb25cbiIpOwo+ICsJSTkxNV9TVEFURV9XQVJOKEk5MTVfUkVBRChTUExM
X0NUTCkgJiBTUExMX1BMTF9FTkFCTEUsCj4gKwkJCSJTUExMIGVuYWJsZWRcbiIpOwo+ICsJSTkx
NV9TVEFURV9XQVJOKEk5MTVfUkVBRChXUlBMTF9DVEwoMCkpICYgV1JQTExfUExMX0VOQUJMRSwK
PiArCQkJIldSUExMMSBlbmFibGVkXG4iKTsKPiArCUk5MTVfU1RBVEVfV0FSTihJOTE1X1JFQUQo
V1JQTExfQ1RMKDEpKSAmIFdSUExMX1BMTF9FTkFCTEUsCj4gKwkJCSJXUlBMTDIgZW5hYmxlZFxu
Iik7Cj4gKwlJOTE1X1NUQVRFX1dBUk4oSTkxNV9SRUFEKFBQX1NUQVRVUygwKSkgJiBQUF9PTiwK
PiArCQkJIlBhbmVsIHBvd2VyIG9uXG4iKTsKPiArCUk5MTVfU1RBVEVfV0FSTihJOTE1X1JFQUQo
QkxDX1BXTV9DUFVfQ1RMMikgJiBCTE1fUFdNX0VOQUJMRSwKPiArCQkJIkNQVSBQV00xIGVuYWJs
ZWRcbiIpOwo+ICsJaWYgKElTX0hBU1dFTEwoZGV2X3ByaXYpKQo+ICsJCUk5MTVfU1RBVEVfV0FS
TihJOTE1X1JFQUQoSFNXX0JMQ19QV00yX0NUTCkgJiBCTE1fUFdNX0VOQUJMRSwKPiArCQkJCSJD
UFUgUFdNMiBlbmFibGVkXG4iKTsKPiArCUk5MTVfU1RBVEVfV0FSTihJOTE1X1JFQUQoQkxDX1BX
TV9QQ0hfQ1RMMSkgJiBCTE1fUENIX1BXTV9FTkFCTEUsCj4gKwkJCSJQQ0ggUFdNMSBlbmFibGVk
XG4iKTsKPiArCUk5MTVfU1RBVEVfV0FSTihJOTE1X1JFQUQoVVRJTF9QSU5fQ1RMKSAmIFVUSUxf
UElOX0VOQUJMRSwKPiArCQkJIlV0aWxpdHkgcGluIGVuYWJsZWRcbiIpOwo+ICsJSTkxNV9TVEFU
RV9XQVJOKEk5MTVfUkVBRChQQ0hfR1RDX0NUTCkgJiBQQ0hfR1RDX0VOQUJMRSwKPiArCQkJIlBD
SCBHVEMgZW5hYmxlZFxuIik7Cj4gKwo+ICsJLyoKPiArCSAqIEluIHRoZW9yeSB3ZSBjYW4gc3Rp
bGwgbGVhdmUgSVJRcyBlbmFibGVkLCBhcyBsb25nIGFzIG9ubHkgdGhlIEhQRAo+ICsJICogaW50
ZXJydXB0cyByZW1haW4gZW5hYmxlZC4gV2UgdXNlZCB0byBjaGVjayBmb3IgdGhhdCwgYnV0IHNp
bmNlIGl0J3MKPiArCSAqIGdlbi1zcGVjaWZpYyBhbmQgc2luY2Ugd2Ugb25seSBkaXNhYmxlIExD
UExMIGFmdGVyIHdlIGZ1bGx5IGRpc2FibGUKPiArCSAqIHRoZSBpbnRlcnJ1cHRzLCB0aGUgY2hl
Y2sgYmVsb3cgc2hvdWxkIGJlIGVub3VnaC4KPiArCSAqLwo+ICsJSTkxNV9TVEFURV9XQVJOKGlu
dGVsX2lycXNfZW5hYmxlZChkZXZfcHJpdiksICJJUlFzIGVuYWJsZWRcbiIpOwo+ICt9Cj4gKwo+
ICtzdGF0aWMgdTMyIGhzd19yZWFkX2Rjb21wKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdikKPiArewo+ICsJaWYgKElTX0hBU1dFTEwoZGV2X3ByaXYpKQo+ICsJCXJldHVybiBJOTE1
X1JFQUQoRF9DT01QX0hTVyk7Cj4gKwllbHNlCj4gKwkJcmV0dXJuIEk5MTVfUkVBRChEX0NPTVBf
QkRXKTsKPiArfQo+ICsKPiArc3RhdGljIHZvaWQgaHN3X3dyaXRlX2Rjb21wKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiwgdTMyIHZhbCkKPiArewo+ICsJaWYgKElTX0hBU1dFTEwo
ZGV2X3ByaXYpKSB7Cj4gKwkJaWYgKHNhbmR5YnJpZGdlX3Bjb2RlX3dyaXRlKGRldl9wcml2LAo+
ICsJCQkJCSAgICBHRU42X1BDT0RFX1dSSVRFX0RfQ09NUCwgdmFsKSkKPiArCQkJRFJNX0RFQlVH
X0tNUygiRmFpbGVkIHRvIHdyaXRlIHRvIERfQ09NUFxuIik7Cj4gKwl9IGVsc2Ugewo+ICsJCUk5
MTVfV1JJVEUoRF9DT01QX0JEVywgdmFsKTsKPiArCQlQT1NUSU5HX1JFQUQoRF9DT01QX0JEVyk7
Cj4gKwl9Cj4gK30KPiArCj4gKy8qCj4gKyAqIFRoaXMgZnVuY3Rpb24gaW1wbGVtZW50cyBwaWVj
ZXMgb2YgdHdvIHNlcXVlbmNlcyBmcm9tIEJTcGVjOgo+ICsgKiAtIFNlcXVlbmNlIGZvciBkaXNw
bGF5IHNvZnR3YXJlIHRvIGRpc2FibGUgTENQTEwKPiArICogLSBTZXF1ZW5jZSBmb3IgZGlzcGxh
eSBzb2Z0d2FyZSB0byBhbGxvdyBwYWNrYWdlIEM4Kwo+ICsgKiBUaGUgc3RlcHMgaW1wbGVtZW50
ZWQgaGVyZSBhcmUganVzdCB0aGUgc3RlcHMgdGhhdCBhY3R1YWxseSB0b3VjaCB0aGUgTENQTEwK
PiArICogcmVnaXN0ZXIuIENhbGxlcnMgc2hvdWxkIHRha2UgY2FyZSBvZiBkaXNhYmxpbmcgYWxs
IHRoZSBkaXNwbGF5IGVuZ2luZQo+ICsgKiBmdW5jdGlvbnMsIGRvaW5nIHRoZSBtb2RlIHVuc2V0
LCBmaXhpbmcgaW50ZXJydXB0cywgZXRjLgo+ICsgKi8KPiArc3RhdGljIHZvaWQgaHN3X2Rpc2Fi
bGVfbGNwbGwoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ICsJCQkgICAgICBi
b29sIHN3aXRjaF90b19mY2xrLCBib29sIGFsbG93X3Bvd2VyX2Rvd24pCj4gK3sKPiArCXUzMiB2
YWw7Cj4gKwo+ICsJYXNzZXJ0X2Nhbl9kaXNhYmxlX2xjcGxsKGRldl9wcml2KTsKPiArCj4gKwl2
YWwgPSBJOTE1X1JFQUQoTENQTExfQ1RMKTsKPiArCj4gKwlpZiAoc3dpdGNoX3RvX2ZjbGspIHsK
PiArCQl2YWwgfD0gTENQTExfQ0RfU09VUkNFX0ZDTEs7Cj4gKwkJSTkxNV9XUklURShMQ1BMTF9D
VEwsIHZhbCk7Cj4gKwo+ICsJCWlmICh3YWl0X2Zvcl91cyhJOTE1X1JFQUQoTENQTExfQ1RMKSAm
Cj4gKwkJCQlMQ1BMTF9DRF9TT1VSQ0VfRkNMS19ET05FLCAxKSkKPiArCQkJRFJNX0VSUk9SKCJT
d2l0Y2hpbmcgdG8gRkNMSyBmYWlsZWRcbiIpOwo+ICsKPiArCQl2YWwgPSBJOTE1X1JFQUQoTENQ
TExfQ1RMKTsKPiArCX0KPiArCj4gKwl2YWwgfD0gTENQTExfUExMX0RJU0FCTEU7Cj4gKwlJOTE1
X1dSSVRFKExDUExMX0NUTCwgdmFsKTsKPiArCVBPU1RJTkdfUkVBRChMQ1BMTF9DVEwpOwo+ICsK
PiArCWlmIChpbnRlbF93YWl0X2Zvcl9yZWdpc3RlcigmZGV2X3ByaXYtPnVuY29yZSwgTENQTExf
Q1RMLAo+ICsJCQkJICAgIExDUExMX1BMTF9MT0NLLCAwLCAxKSkKPiArCQlEUk1fRVJST1IoIkxD
UExMIHN0aWxsIGxvY2tlZFxuIik7Cj4gKwo+ICsJdmFsID0gaHN3X3JlYWRfZGNvbXAoZGV2X3By
aXYpOwo+ICsJdmFsIHw9IERfQ09NUF9DT01QX0RJU0FCTEU7Cj4gKwloc3dfd3JpdGVfZGNvbXAo
ZGV2X3ByaXYsIHZhbCk7Cj4gKwluZGVsYXkoMTAwKTsKPiArCj4gKwlpZiAod2FpdF9mb3IoKGhz
d19yZWFkX2Rjb21wKGRldl9wcml2KSAmCj4gKwkJICAgICAgRF9DT01QX1JDT01QX0lOX1BST0dS
RVNTKSA9PSAwLCAxKSkKPiArCQlEUk1fRVJST1IoIkRfQ09NUCBSQ09NUCBzdGlsbCBpbiBwcm9n
cmVzc1xuIik7Cj4gKwo+ICsJaWYgKGFsbG93X3Bvd2VyX2Rvd24pIHsKPiArCQl2YWwgPSBJOTE1
X1JFQUQoTENQTExfQ1RMKTsKPiArCQl2YWwgfD0gTENQTExfUE9XRVJfRE9XTl9BTExPVzsKPiAr
CQlJOTE1X1dSSVRFKExDUExMX0NUTCwgdmFsKTsKPiArCQlQT1NUSU5HX1JFQUQoTENQTExfQ1RM
KTsKPiArCX0KPiArfQo+ICsKPiArLyoKPiArICogRnVsbHkgcmVzdG9yZXMgTENQTEwsIGRpc2Fs
bG93aW5nIHBvd2VyIGRvd24gYW5kIHN3aXRjaGluZyBiYWNrIHRvIExDUExMCj4gKyAqIHNvdXJj
ZS4KPiArICovCj4gK3N0YXRpYyB2b2lkIGhzd19yZXN0b3JlX2xjcGxsKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdikKPiArewo+ICsJdTMyIHZhbDsKPiArCj4gKwl2YWwgPSBJOTE1
X1JFQUQoTENQTExfQ1RMKTsKPiArCj4gKwlpZiAoKHZhbCAmIChMQ1BMTF9QTExfTE9DSyB8IExD
UExMX1BMTF9ESVNBQkxFIHwgTENQTExfQ0RfU09VUkNFX0ZDTEsgfAo+ICsJCSAgICBMQ1BMTF9Q
T1dFUl9ET1dOX0FMTE9XKSkgPT0gTENQTExfUExMX0xPQ0spCj4gKwkJcmV0dXJuOwo+ICsKPiAr
CS8qCj4gKwkgKiBNYWtlIHN1cmUgd2UncmUgbm90IG9uIFBDOCBzdGF0ZSBiZWZvcmUgZGlzYWJs
aW5nIFBDOCwgb3RoZXJ3aXNlCj4gKwkgKiB3ZSdsbCBoYW5nIHRoZSBtYWNoaW5lLiBUbyBwcmV2
ZW50IFBDOCBzdGF0ZSwganVzdCBlbmFibGUgZm9yY2Vfd2FrZS4KPiArCSAqLwo+ICsJaW50ZWxf
dW5jb3JlX2ZvcmNld2FrZV9nZXQoJmRldl9wcml2LT51bmNvcmUsIEZPUkNFV0FLRV9BTEwpOwo+
ICsKPiArCWlmICh2YWwgJiBMQ1BMTF9QT1dFUl9ET1dOX0FMTE9XKSB7Cj4gKwkJdmFsICY9IH5M
Q1BMTF9QT1dFUl9ET1dOX0FMTE9XOwo+ICsJCUk5MTVfV1JJVEUoTENQTExfQ1RMLCB2YWwpOwo+
ICsJCVBPU1RJTkdfUkVBRChMQ1BMTF9DVEwpOwo+ICsJfQo+ICsKPiArCXZhbCA9IGhzd19yZWFk
X2Rjb21wKGRldl9wcml2KTsKPiArCXZhbCB8PSBEX0NPTVBfQ09NUF9GT1JDRTsKPiArCXZhbCAm
PSB+RF9DT01QX0NPTVBfRElTQUJMRTsKPiArCWhzd193cml0ZV9kY29tcChkZXZfcHJpdiwgdmFs
KTsKPiArCj4gKwl2YWwgPSBJOTE1X1JFQUQoTENQTExfQ1RMKTsKPiArCXZhbCAmPSB+TENQTExf
UExMX0RJU0FCTEU7Cj4gKwlJOTE1X1dSSVRFKExDUExMX0NUTCwgdmFsKTsKPiArCj4gKwlpZiAo
aW50ZWxfd2FpdF9mb3JfcmVnaXN0ZXIoJmRldl9wcml2LT51bmNvcmUsIExDUExMX0NUTCwKPiAr
CQkJCSAgICBMQ1BMTF9QTExfTE9DSywgTENQTExfUExMX0xPQ0ssIDUpKQo+ICsJCURSTV9FUlJP
UigiTENQTEwgbm90IGxvY2tlZCB5ZXRcbiIpOwo+ICsKPiArCWlmICh2YWwgJiBMQ1BMTF9DRF9T
T1VSQ0VfRkNMSykgewo+ICsJCXZhbCA9IEk5MTVfUkVBRChMQ1BMTF9DVEwpOwo+ICsJCXZhbCAm
PSB+TENQTExfQ0RfU09VUkNFX0ZDTEs7Cj4gKwkJSTkxNV9XUklURShMQ1BMTF9DVEwsIHZhbCk7
Cj4gKwo+ICsJCWlmICh3YWl0X2Zvcl91cygoSTkxNV9SRUFEKExDUExMX0NUTCkgJgo+ICsJCQkJ
IExDUExMX0NEX1NPVVJDRV9GQ0xLX0RPTkUpID09IDAsIDEpKQo+ICsJCQlEUk1fRVJST1IoIlN3
aXRjaGluZyBiYWNrIHRvIExDUExMIGZhaWxlZFxuIik7Cj4gKwl9Cj4gKwo+ICsJaW50ZWxfdW5j
b3JlX2ZvcmNld2FrZV9wdXQoJmRldl9wcml2LT51bmNvcmUsIEZPUkNFV0FLRV9BTEwpOwo+ICsK
PiArCWludGVsX3VwZGF0ZV9jZGNsayhkZXZfcHJpdik7Cj4gKwlpbnRlbF9kdW1wX2NkY2xrX3N0
YXRlKCZkZXZfcHJpdi0+Y2RjbGsuaHcsICJDdXJyZW50IENEQ0xLIik7Cj4gK30KPiArCj4gKy8q
Cj4gKyAqIFBhY2thZ2Ugc3RhdGVzIEM4IGFuZCBkZWVwZXIgYXJlIHJlYWxseSBkZWVwIFBDIHN0
YXRlcyB0aGF0IGNhbiBvbmx5IGJlCj4gKyAqIHJlYWNoZWQgd2hlbiBhbGwgdGhlIGRldmljZXMg
b24gdGhlIHN5c3RlbSBhbGxvdyBpdCwgc28gZXZlbiBpZiB0aGUgZ3JhcGhpY3MKPiArICogZGV2
aWNlIGFsbG93cyBQQzgrLCBpdCBkb2Vzbid0IG1lYW4gdGhlIHN5c3RlbSB3aWxsIGFjdHVhbGx5
IGdldCB0byB0aGVzZQo+ICsgKiBzdGF0ZXMuIE91ciBkcml2ZXIgb25seSBhbGxvd3MgUEM4KyB3
aGVuIGdvaW5nIGludG8gcnVudGltZSBQTS4KPiArICoKPiArICogVGhlIHJlcXVpcmVtZW50cyBm
b3IgUEM4KyBhcmUgdGhhdCBhbGwgdGhlIG91dHB1dHMgYXJlIGRpc2FibGVkLCB0aGUgcG93ZXIK
PiArICogd2VsbCBpcyBkaXNhYmxlZCBhbmQgbW9zdCBpbnRlcnJ1cHRzIGFyZSBkaXNhYmxlZCwg
YW5kIHRoZXNlIGFyZSBhbHNvCj4gKyAqIHJlcXVpcmVtZW50cyBmb3IgcnVudGltZSBQTS4gV2hl
biB0aGVzZSBjb25kaXRpb25zIGFyZSBtZXQsIHdlIG1hbnVhbGx5IGRvCj4gKyAqIHRoZSBvdGhl
ciBjb25kaXRpb25zOiBkaXNhYmxlIHRoZSBpbnRlcnJ1cHRzLCBjbG9ja3MgYW5kIHN3aXRjaCBM
Q1BMTCByZWZjbGsKPiArICogdG8gRmNsay4gSWYgd2UncmUgaW4gUEM4KyBhbmQgd2UgZ2V0IGFu
IG5vbi1ob3RwbHVnIGludGVycnVwdCwgd2UgY2FuIGhhcmQKPiArICogaGFuZyB0aGUgbWFjaGlu
ZS4KPiArICoKPiArICogV2hlbiB3ZSByZWFsbHkgcmVhY2ggUEM4IG9yIGRlZXBlciBzdGF0ZXMg
KG5vdCBqdXN0IHdoZW4gd2UgYWxsb3cgaXQpIHdlIGxvc2UKPiArICogdGhlIHN0YXRlIG9mIHNv
bWUgcmVnaXN0ZXJzLCBzbyB3aGVuIHdlIGNvbWUgYmFjayBmcm9tIFBDOCsgd2UgbmVlZCB0bwo+
ICsgKiByZXN0b3JlIHRoaXMgc3RhdGUuIFdlIGRvbid0IGdldCBpbnRvIFBDOCsgaWYgd2UncmUg
bm90IGluIFJDNiwgc28gd2UgZG9uJ3QKPiArICogbmVlZCB0byB0YWtlIGNhcmUgb2YgdGhlIHJl
Z2lzdGVycyBrZXB0IGJ5IFJDNi4gTm90aWNlIHRoYXQgdGhpcyBoYXBwZW5zIGV2ZW4KPiArICog
aWYgd2UgZG9uJ3QgcHV0IHRoZSBkZXZpY2UgaW4gUENJIEQzIHN0YXRlICh3aGljaCBpcyB3aGF0
IGN1cnJlbnRseSBoYXBwZW5zCj4gKyAqIGJlY2F1c2Ugb2YgdGhlIHJ1bnRpbWUgUE0gc3VwcG9y
dCkuCj4gKyAqCj4gKyAqIEZvciBtb3JlLCByZWFkICJEaXNwbGF5IFNlcXVlbmNlcyBmb3IgUGFj
a2FnZSBDOCIgb24gdGhlIGhhcmR3YXJlCj4gKyAqIGRvY3VtZW50YXRpb24uCj4gKyAqLwo+ICt2
b2lkIGhzd19lbmFibGVfcGM4KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAr
ewo+ICsJdTMyIHZhbDsKPiArCj4gKwlEUk1fREVCVUdfS01TKCJFbmFibGluZyBwYWNrYWdlIEM4
K1xuIik7Cj4gKwo+ICsJaWYgKEhBU19QQ0hfTFBUX0xQKGRldl9wcml2KSkgewo+ICsJCXZhbCA9
IEk5MTVfUkVBRChTT1VUSF9EU1BDTEtfR0FURV9EKTsKPiArCQl2YWwgJj0gflBDSF9MUF9QQVJU
SVRJT05fTEVWRUxfRElTQUJMRTsKPiArCQlJOTE1X1dSSVRFKFNPVVRIX0RTUENMS19HQVRFX0Qs
IHZhbCk7Cj4gKwl9Cj4gKwo+ICsJbHB0X2Rpc2FibGVfY2xrb3V0X2RwKGRldl9wcml2KTsKPiAr
CWhzd19kaXNhYmxlX2xjcGxsKGRldl9wcml2LCB0cnVlLCB0cnVlKTsKPiArfQo+ICsKPiArdm9p
ZCBoc3dfZGlzYWJsZV9wYzgoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICt7
Cj4gKwl1MzIgdmFsOwo+ICsKPiArCURSTV9ERUJVR19LTVMoIkRpc2FibGluZyBwYWNrYWdlIEM4
K1xuIik7Cj4gKwo+ICsJaHN3X3Jlc3RvcmVfbGNwbGwoZGV2X3ByaXYpOwo+ICsJaW50ZWxfaW5p
dF9wY2hfcmVmY2xrKGRldl9wcml2KTsKPiArCj4gKwlpZiAoSEFTX1BDSF9MUFRfTFAoZGV2X3By
aXYpKSB7Cj4gKwkJdmFsID0gSTkxNV9SRUFEKFNPVVRIX0RTUENMS19HQVRFX0QpOwo+ICsJCXZh
bCB8PSBQQ0hfTFBfUEFSVElUSU9OX0xFVkVMX0RJU0FCTEU7Cj4gKwkJSTkxNV9XUklURShTT1VU
SF9EU1BDTEtfR0FURV9ELCB2YWwpOwo+ICsJfQo+ICt9Cj4gKwo+ICBzdGF0aWMgdm9pZCBpbnRl
bF9wY2hfcmVzZXRfaGFuZHNoYWtlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwK
PiAgCQkJCSAgICAgIGJvb2wgZW5hYmxlKQo+ICB7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3J1bnRpbWVfcG0uaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X3J1bnRpbWVfcG0uaAo+IGluZGV4IDY5MjI3NzU2ZGUzZS4uZTMwYjM4NjMyYmQyIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1bnRpbWVfcG0uaAo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1bnRpbWVfcG0uaAo+IEBAIC0zNyw2ICszNyw4IEBA
IHZvaWQgaW50ZWxfcG93ZXJfZG9tYWluc19kaXNhYmxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdik7Cj4gIHZvaWQgaW50ZWxfcG93ZXJfZG9tYWluc19zdXNwZW5kKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiAgCQkJCSBlbnVtIGk5MTVfZHJtX3N1c3BlbmRf
bW9kZSk7Cj4gIHZvaWQgaW50ZWxfcG93ZXJfZG9tYWluc19yZXN1bWUoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2KTsKPiArdm9pZCBoc3dfZW5hYmxlX3BjOChzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwo+ICt2b2lkIGhzd19kaXNhYmxlX3BjOChzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwo+ICB2b2lkIGJ4dF9kaXNwbGF5X2NvcmVfaW5pdChz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGJvb2wgcmVzdW1lKTsKPiAgdm9pZCBi
eHRfZGlzcGxheV9jb3JlX3VuaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYp
Owo+ICB2b2lkIGludGVsX3J1bnRpbWVfcG1fZW5hYmxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdik7Cj4gLS0gCj4gMi4yMS4wCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
