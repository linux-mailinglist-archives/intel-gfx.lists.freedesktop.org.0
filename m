Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 156B7ABCCF
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2019 17:43:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50A966E2EF;
	Fri,  6 Sep 2019 15:43:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C90CD6E2EF
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2019 15:43:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Sep 2019 08:43:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,473,1559545200"; d="scan'208";a="183168997"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga008.fm.intel.com with ESMTP; 06 Sep 2019 08:43:05 -0700
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190906122314.2146-1-mika.kuoppala@linux.intel.com>
 <20190906122314.2146-2-mika.kuoppala@linux.intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <919a6fab-e70e-44ec-3011-39909978f799@intel.com>
Date: Fri, 6 Sep 2019 08:42:50 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190906122314.2146-2-mika.kuoppala@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/tgl: Register state context
 definition for Gen12
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
Cc: Michel Thierry <michel.thierry@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA5LzYvMTkgNToyMyBBTSwgTWlrYSBLdW9wcGFsYSB3cm90ZToKPiBGcm9tOiBNaWNoZWwg
VGhpZXJyeSA8bWljaGVsLnRoaWVycnlAaW50ZWwuY29tPgo+IAo+IEdlbjEyIGhhcyBzdWJ0bGUg
Y2hhbmdlcyBpbiB0aGUgcmVnIHN0YXRlIGNvbnRleHQgb2Zmc2V0cyAoc29tZSBmaWVsZHMKPiBh
cmUgZ29uZSwgc29tZSBhcmUgaW4gYSBkaWZmZXJlbnQgbG9jYXRpb24pLCBjb21wYXJlZCB0byBw
cmV2aW91cyBHZW5zLgo+IAo+IFRoZSBzaW1wbGVzdCBhcHByb2FjaCBzZWVtcyB0byBiZSBrZWVw
aW5nIEdlbjEyIChhbmQgZnV0dXJlIHBsYXRmb3JtKQo+IGNoYW5nZXMgYXBhcnQgZnJvbSB0aGUg
cHJldmlvdXMgZ2Vucywgd2hpbGUga2VlcGluZyB0aGUgcmVnaXN0ZXJzIHRoYXQKPiBhcmUgY29u
dGlndW91cyBpbiBmdW5jdGlvbnMgd2UgY2FuIHJldXNlLgo+IAo+IHYyOiBhbGlhcywgdmlydHVh
bCBlbmdpbmUsIHJwY3MsIHBydW5lIHVudXNlZCByZWdzCj4gdjM6IHVzZSBlbmdpbmUgYmFzZSAo
RGFuaWVsZSksIHRha2UgY3R4X2JiIGZvciBhbGwKPiAKPiBCc3BlYzogNDYyNTUKPiBDYzogTWlj
aGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Cj4gQ2M6IERhbmllbGUg
Q2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4gQ2M6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBKb29uYXMgTGFodGlu
ZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IEpvc8OpIFJvYmVydG8g
ZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IE1pY2hlbCBU
aGllcnJ5IDxtaWNoZWwudGhpZXJyeUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTHVjYXMg
RGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTWlr
YSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+CgpJJ3ZlIHRlc3RlZCB0
aGlzIG9uIFRHTCwgYm90aCB0aGUgZ2VtX2N0eF9zd2l0Y2ggdGhhdCBmYWlsZWQgb24gSUNMIGFu
ZCAKZXhlY19iYWxhbmNlckBub3AgcGFzc2VkIGZvciBtZS4KClJldmlld2VkLWJ5OiBEYW5pZWxl
IENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgpUZXN0ZWQt
Ynk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5j
b20+CgpBIGNvdXBsZSBvZiBub24tYmxvY2tpbmcgbml0cyBiZWxvdy4KCj4gLS0tCj4gICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyAgICAgfCAxOTYgKysrKysrKysrKysrKysr
KystLS0tLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmNfcmVnLmggfCAg
IDYgKy0KPiAgIDIgZmlsZXMgY2hhbmdlZCwgMTQ3IGluc2VydGlvbnMoKyksIDU1IGRlbGV0aW9u
cygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gaW5kZXggNmM2OGVkMmJm
M2QyLi5lOWM4NzM4NzcyNTMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfbHJjLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+
IEBAIC04MDgsOCArODA4LDExIEBAIHN0YXRpYyB2b2lkIHZpcnR1YWxfdXBkYXRlX3JlZ2lzdGVy
X29mZnNldHModTMyICpyZWdzLAo+ICAgewo+ICAgCXUzMiBiYXNlID0gZW5naW5lLT5tbWlvX2Jh
c2U7Cj4gICAKPiArCUdFTV9XQVJOX09OKGVuZ2luZS0+Y2xhc3MgPT0gQ09QWV9FTkdJTkVfQ0xB
U1MpOwoKQ291bGQgdXNlIGEgY29tbWVudCB1cCBoZXJlIHRvIGV4cGxhaW4gd2h5LCBzb21ldGhp
bmcgbGlrZToKCi8qIEhXIGRvZXNuJ3Qgbm90IHN1cHBvcnQgcmVsYXRpdmUgTU1JTyBvbiBDT1BZ
X0VOR0lORSBhbmQgd2UgZG9uJ3QKaW1wbGVtZW50IG9mZnNldCByZW1hcCBmb3IgYWxsIGdlbnMg
aW4gU1cgYmVjYXVzZSB0aGVyZSBpcyBvbmx5IDEKaW5zdGFuY2UgKi8KCj4gKyA+ICAgCS8qIE11
c3QgbWF0Y2ggZXhlY2xpc3RzX2luaXRfcmVnX3N0YXRlKCkhICovCj4gICAKPiArCS8qIENvbW1v
biBwYXJ0ICovCj4gICAJcmVnc1tDVFhfQ09OVEVYVF9DT05UUk9MXSA9Cj4gICAJCWk5MTVfbW1p
b19yZWdfb2Zmc2V0KFJJTkdfQ09OVEVYVF9DT05UUk9MKGJhc2UpKTsKPiAgIAlyZWdzW0NUWF9S
SU5HX0hFQURdID0gaTkxNV9tbWlvX3JlZ19vZmZzZXQoUklOR19IRUFEKGJhc2UpKTsKPiBAQCAt
ODIwLDEzICs4MjMsMTYgQEAgc3RhdGljIHZvaWQgdmlydHVhbF91cGRhdGVfcmVnaXN0ZXJfb2Zm
c2V0cyh1MzIgKnJlZ3MsCj4gICAJcmVnc1tDVFhfQkJfSEVBRF9VXSA9IGk5MTVfbW1pb19yZWdf
b2Zmc2V0KFJJTkdfQkJBRERSX1VEVyhiYXNlKSk7Cj4gICAJcmVnc1tDVFhfQkJfSEVBRF9MXSA9
IGk5MTVfbW1pb19yZWdfb2Zmc2V0KFJJTkdfQkJBRERSKGJhc2UpKTsKPiAgIAlyZWdzW0NUWF9C
Ql9TVEFURV0gPSBpOTE1X21taW9fcmVnX29mZnNldChSSU5HX0JCU1RBVEUoYmFzZSkpOwo+ICsK
PiAgIAlyZWdzW0NUWF9TRUNPTkRfQkJfSEVBRF9VXSA9Cj4gICAJCWk5MTVfbW1pb19yZWdfb2Zm
c2V0KFJJTkdfU0JCQUREUl9VRFcoYmFzZSkpOwo+ICAgCXJlZ3NbQ1RYX1NFQ09ORF9CQl9IRUFE
X0xdID0gaTkxNV9tbWlvX3JlZ19vZmZzZXQoUklOR19TQkJBRERSKGJhc2UpKTsKPiAgIAlyZWdz
W0NUWF9TRUNPTkRfQkJfU1RBVEVdID0gaTkxNV9tbWlvX3JlZ19vZmZzZXQoUklOR19TQkJTVEFU
RShiYXNlKSk7Cj4gICAKPiArCS8qIFBQR1RUIHBhcnQgKi8KPiAgIAlyZWdzW0NUWF9DVFhfVElN
RVNUQU1QXSA9Cj4gICAJCWk5MTVfbW1pb19yZWdfb2Zmc2V0KFJJTkdfQ1RYX1RJTUVTVEFNUChi
YXNlKSk7Cj4gKwo+ICAgCXJlZ3NbQ1RYX1BEUDNfVURXXSA9IGk5MTVfbW1pb19yZWdfb2Zmc2V0
KEdFTjhfUklOR19QRFBfVURXKGJhc2UsIDMpKTsKPiAgIAlyZWdzW0NUWF9QRFAzX0xEV10gPSBp
OTE1X21taW9fcmVnX29mZnNldChHRU44X1JJTkdfUERQX0xEVyhiYXNlLCAzKSk7Cj4gICAJcmVn
c1tDVFhfUERQMl9VRFddID0gaTkxNV9tbWlvX3JlZ19vZmZzZXQoR0VOOF9SSU5HX1BEUF9VRFco
YmFzZSwgMikpOwo+IEBAIC0zMTIzLDM3ICszMTI5LDEzIEBAIHN0YXRpYyB1MzIgaW50ZWxfbHJf
aW5kaXJlY3RfY3R4X29mZnNldChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4gICAJ
cmV0dXJuIGluZGlyZWN0X2N0eF9vZmZzZXQ7Cj4gICB9Cj4gICAKPiAtc3RhdGljIHN0cnVjdCBp
OTE1X3BwZ3R0ICp2bV9hbGlhcyhzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSkKPiAtewo+
IC0JaWYgKGk5MTVfaXNfZ2d0dCh2bSkpCj4gLQkJcmV0dXJuIGk5MTVfdm1fdG9fZ2d0dCh2bSkt
PmFsaWFzOwo+IC0JZWxzZQo+IC0JCXJldHVybiBpOTE1X3ZtX3RvX3BwZ3R0KHZtKTsKPiAtfQo+
ICAgCj4gLXN0YXRpYyB2b2lkIGV4ZWNsaXN0c19pbml0X3JlZ19zdGF0ZSh1MzIgKnJlZ3MsCj4g
LQkJCQkgICAgIHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKPiAtCQkJCSAgICAgc3RydWN0IGlu
dGVsX2VuZ2luZV9jcyAqZW5naW5lLAo+IC0JCQkJICAgICBzdHJ1Y3QgaW50ZWxfcmluZyAqcmlu
ZykKPiArc3RhdGljIHZvaWQgaW5pdF9jb21tb25fcmVnX3N0YXRlKHUzMiAqIGNvbnN0IHJlZ3Ms
Cj4gKwkJCQkgIHN0cnVjdCBpOTE1X3BwZ3R0ICogY29uc3QgcHBndHQsCj4gKwkJCQkgIHN0cnVj
dCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKPiArCQkJCSAgc3RydWN0IGludGVsX3JpbmcgKnJp
bmcpCj4gICB7Cj4gLQlzdHJ1Y3QgaTkxNV9wcGd0dCAqcHBndHQgPSB2bV9hbGlhcyhjZS0+dm0p
Owo+IC0JY29uc3QgYm9vbCByY3MgPSBlbmdpbmUtPmNsYXNzID09IFJFTkRFUl9DTEFTUzsKPiAg
IAljb25zdCB1MzIgYmFzZSA9IGVuZ2luZS0+bW1pb19iYXNlOwo+IC0JY29uc3QgdTMyIGxyaV9i
YXNlID0gaW50ZWxfZW5naW5lX2hhc19yZWxhdGl2ZV9tbWlvKGVuZ2luZSkgPwo+IC0JCU1JX0xS
SV9DU19NTUlPIDogMDsKPiAtCj4gLQkvKgo+IC0JICogQSBjb250ZXh0IGlzIGFjdHVhbGx5IGEg
YmlnIGJhdGNoIGJ1ZmZlciB3aXRoIHNldmVyYWwKPiAtCSAqIE1JX0xPQURfUkVHSVNURVJfSU1N
IGNvbW1hbmRzIGZvbGxvd2VkIGJ5IChyZWcsIHZhbHVlKSBwYWlycy4gVGhlCj4gLQkgKiB2YWx1
ZXMgd2UgYXJlIHNldHRpbmcgaGVyZSBhcmUgb25seSBmb3IgdGhlIGZpcnN0IGNvbnRleHQgcmVz
dG9yZToKPiAtCSAqIG9uIGEgc3Vic2VxdWVudCBzYXZlLCB0aGUgR1BVIHdpbGwgcmVjcmVhdGUg
dGhpcyBiYXRjaGJ1ZmZlciB3aXRoIG5ldwo+IC0JICogdmFsdWVzIChpbmNsdWRpbmcgYWxsIHRo
ZSBtaXNzaW5nIE1JX0xPQURfUkVHSVNURVJfSU1NIGNvbW1hbmRzIHRoYXQKPiAtCSAqIHdlIGFy
ZSBub3QgaW5pdGlhbGl6aW5nIGhlcmUpLgo+IC0JICoKPiAtCSAqIE11c3Qga2VlcCBjb25zaXN0
ZW50IHdpdGggdmlydHVhbF91cGRhdGVfcmVnaXN0ZXJfb2Zmc2V0cygpLgo+IC0JICovCj4gLQly
ZWdzW0NUWF9MUklfSEVBREVSXzBdID0gTUlfTE9BRF9SRUdJU1RFUl9JTU0ocmNzID8gMTQgOiAx
MSkgfAo+IC0JCU1JX0xSSV9GT1JDRV9QT1NURUQgfCBscmlfYmFzZTsKPiAgIAo+ICAgCUNUWF9S
RUcocmVncywgQ1RYX0NPTlRFWFRfQ09OVFJPTCwgUklOR19DT05URVhUX0NPTlRST0woYmFzZSks
Cj4gICAJCV9NQVNLRURfQklUX0RJU0FCTEUoQ1RYX0NUUkxfRU5HSU5FX0NUWF9SRVNUT1JFX0lO
SElCSVQpIHwKPiBAQCAtMzE3MSwzOSArMzE1Myw0MyBAQCBzdGF0aWMgdm9pZCBleGVjbGlzdHNf
aW5pdF9yZWdfc3RhdGUodTMyICpyZWdzLAo+ICAgCUNUWF9SRUcocmVncywgQ1RYX0JCX0hFQURf
VSwgUklOR19CQkFERFJfVURXKGJhc2UpLCAwKTsKPiAgIAlDVFhfUkVHKHJlZ3MsIENUWF9CQl9I
RUFEX0wsIFJJTkdfQkJBRERSKGJhc2UpLCAwKTsKPiAgIAlDVFhfUkVHKHJlZ3MsIENUWF9CQl9T
VEFURSwgUklOR19CQlNUQVRFKGJhc2UpLCBSSU5HX0JCX1BQR1RUKTsKPiAtCUNUWF9SRUcocmVn
cywgQ1RYX1NFQ09ORF9CQl9IRUFEX1UsIFJJTkdfU0JCQUREUl9VRFcoYmFzZSksIDApOwo+IC0J
Q1RYX1JFRyhyZWdzLCBDVFhfU0VDT05EX0JCX0hFQURfTCwgUklOR19TQkJBRERSKGJhc2UpLCAw
KTsKPiAtCUNUWF9SRUcocmVncywgQ1RYX1NFQ09ORF9CQl9TVEFURSwgUklOR19TQkJTVEFURShi
YXNlKSwgMCk7Cj4gLQlpZiAocmNzKSB7Cj4gLQkJc3RydWN0IGk5MTVfY3R4X3dvcmthcm91bmRz
ICp3YV9jdHggPSAmZW5naW5lLT53YV9jdHg7Cj4gLQo+IC0JCUNUWF9SRUcocmVncywgQ1RYX1JD
U19JTkRJUkVDVF9DVFgsIFJJTkdfSU5ESVJFQ1RfQ1RYKGJhc2UpLCAwKTsKPiAtCQlDVFhfUkVH
KHJlZ3MsIENUWF9SQ1NfSU5ESVJFQ1RfQ1RYX09GRlNFVCwKPiAtCQkJUklOR19JTkRJUkVDVF9D
VFhfT0ZGU0VUKGJhc2UpLCAwKTsKPiAtCQlpZiAod2FfY3R4LT5pbmRpcmVjdF9jdHguc2l6ZSkg
ewo+IC0JCQl1MzIgZ2d0dF9vZmZzZXQgPSBpOTE1X2dndHRfb2Zmc2V0KHdhX2N0eC0+dm1hKTsK
PiArfQo+ICAgCj4gLQkJCXJlZ3NbQ1RYX1JDU19JTkRJUkVDVF9DVFggKyAxXSA9Cj4gLQkJCQko
Z2d0dF9vZmZzZXQgKyB3YV9jdHgtPmluZGlyZWN0X2N0eC5vZmZzZXQpIHwKPiAtCQkJCSh3YV9j
dHgtPmluZGlyZWN0X2N0eC5zaXplIC8gQ0FDSEVMSU5FX0JZVEVTKTsKPiArc3RhdGljIHZvaWQg
aW5pdF93YV9iYl9yZWdfc3RhdGUodTMyICogY29uc3QgcmVncywKPiArCQkJCSBzdHJ1Y3QgaW50
ZWxfZW5naW5lX2NzICplbmdpbmUsCj4gKwkJCQkgdTMyIHBvc19iYl9wZXJfY3R4KQo+ICt7Cj4g
KwlzdHJ1Y3QgaTkxNV9jdHhfd29ya2Fyb3VuZHMgKiBjb25zdCB3YV9jdHggPSAmZW5naW5lLT53
YV9jdHg7Cj4gKwljb25zdCB1MzIgYmFzZSA9IGVuZ2luZS0+bW1pb19iYXNlOwo+ICsJY29uc3Qg
dTMyIHBvc19pbmRpcmVjdF9jdHggPSBwb3NfYmJfcGVyX2N0eCArIDI7Cj4gKwljb25zdCB1MzIg
cG9zX2luZGlyZWN0X2N0eF9vZmZzZXQgPSBwb3NfaW5kaXJlY3RfY3R4ICsgMjsKPiAgIAo+IC0J
CQlyZWdzW0NUWF9SQ1NfSU5ESVJFQ1RfQ1RYX09GRlNFVCArIDFdID0KPiAtCQkJCWludGVsX2xy
X2luZGlyZWN0X2N0eF9vZmZzZXQoZW5naW5lKSA8PCA2Owo+IC0JCX0KPiArCUNUWF9SRUcocmVn
cywgcG9zX2luZGlyZWN0X2N0eCwgUklOR19JTkRJUkVDVF9DVFgoYmFzZSksIDApOwo+ICsJQ1RY
X1JFRyhyZWdzLCBwb3NfaW5kaXJlY3RfY3R4X29mZnNldCwKPiArCQlSSU5HX0lORElSRUNUX0NU
WF9PRkZTRVQoYmFzZSksIDApOwo+ICsJaWYgKHdhX2N0eC0+aW5kaXJlY3RfY3R4LnNpemUpIHsK
PiArCQljb25zdCB1MzIgZ2d0dF9vZmZzZXQgPSBpOTE1X2dndHRfb2Zmc2V0KHdhX2N0eC0+dm1h
KTsKPiAgIAo+IC0JCUNUWF9SRUcocmVncywgQ1RYX0JCX1BFUl9DVFhfUFRSLCBSSU5HX0JCX1BF
Ul9DVFhfUFRSKGJhc2UpLCAwKTsKPiAtCQlpZiAod2FfY3R4LT5wZXJfY3R4LnNpemUpIHsKPiAt
CQkJdTMyIGdndHRfb2Zmc2V0ID0gaTkxNV9nZ3R0X29mZnNldCh3YV9jdHgtPnZtYSk7Cj4gKwkJ
cmVnc1twb3NfaW5kaXJlY3RfY3R4ICsgMV0gPQo+ICsJCQkoZ2d0dF9vZmZzZXQgKyB3YV9jdHgt
PmluZGlyZWN0X2N0eC5vZmZzZXQpIHwKPiArCQkJKHdhX2N0eC0+aW5kaXJlY3RfY3R4LnNpemUg
LyBDQUNIRUxJTkVfQllURVMpOwo+ICAgCj4gLQkJCXJlZ3NbQ1RYX0JCX1BFUl9DVFhfUFRSICsg
MV0gPQo+IC0JCQkJKGdndHRfb2Zmc2V0ICsgd2FfY3R4LT5wZXJfY3R4Lm9mZnNldCkgfCAweDAx
Owo+IC0JCX0KPiArCQlyZWdzW3Bvc19pbmRpcmVjdF9jdHhfb2Zmc2V0ICsgMV0gPQo+ICsJCQlp
bnRlbF9scl9pbmRpcmVjdF9jdHhfb2Zmc2V0KGVuZ2luZSkgPDwgNjsKPiAgIAl9Cj4gICAKPiAt
CXJlZ3NbQ1RYX0xSSV9IRUFERVJfMV0gPQo+IC0JCU1JX0xPQURfUkVHSVNURVJfSU1NKDkpIHwg
TUlfTFJJX0ZPUkNFX1BPU1RFRCB8IGxyaV9iYXNlOwo+ICsJQ1RYX1JFRyhyZWdzLCBwb3NfYmJf
cGVyX2N0eCwgUklOR19CQl9QRVJfQ1RYX1BUUihiYXNlKSwgMCk7Cj4gKwlpZiAod2FfY3R4LT5w
ZXJfY3R4LnNpemUpIHsKPiArCQljb25zdCB1MzIgZ2d0dF9vZmZzZXQgPSBpOTE1X2dndHRfb2Zm
c2V0KHdhX2N0eC0+dm1hKTsKPiAgIAo+IC0JQ1RYX1JFRyhyZWdzLCBDVFhfQ1RYX1RJTUVTVEFN
UCwgUklOR19DVFhfVElNRVNUQU1QKGJhc2UpLCAwKTsKPiArCQlyZWdzW3Bvc19iYl9wZXJfY3R4
ICsgMV0gPQo+ICsJCQkoZ2d0dF9vZmZzZXQgKyB3YV9jdHgtPnBlcl9jdHgub2Zmc2V0KSB8IDB4
MDE7Cj4gKwl9Cj4gK30KPiArCj4gK3N0YXRpYyB2b2lkIGluaXRfcHBndHRfcmVnX3N0YXRlKHUz
MiAqcmVncywgdTMyIGJhc2UsCj4gKwkJCQkgc3RydWN0IGk5MTVfcHBndHQgKnBwZ3R0KQo+ICt7
Cj4gICAJLyogUERQIHZhbHVlcyB3ZWxsIGJlIGFzc2lnbmVkIGxhdGVyIGlmIG5lZWRlZCAqLwo+
ICAgCUNUWF9SRUcocmVncywgQ1RYX1BEUDNfVURXLCBHRU44X1JJTkdfUERQX1VEVyhiYXNlLCAz
KSwgMCk7Cj4gICAJQ1RYX1JFRyhyZWdzLCBDVFhfUERQM19MRFcsIEdFTjhfUklOR19QRFBfTERX
KGJhc2UsIDMpLCAwKTsKPiBAQCAtMzIyNiw2ICszMjEyLDUzIEBAIHN0YXRpYyB2b2lkIGV4ZWNs
aXN0c19pbml0X3JlZ19zdGF0ZSh1MzIgKnJlZ3MsCj4gICAJCUFTU0lHTl9DVFhfUERQKHBwZ3R0
LCByZWdzLCAxKTsKPiAgIAkJQVNTSUdOX0NUWF9QRFAocHBndHQsIHJlZ3MsIDApOwo+ICAgCX0K
PiArfQo+ICsKPiArc3RhdGljIHN0cnVjdCBpOTE1X3BwZ3R0ICp2bV9hbGlhcyhzdHJ1Y3QgaTkx
NV9hZGRyZXNzX3NwYWNlICp2bSkKPiArewo+ICsJaWYgKGk5MTVfaXNfZ2d0dCh2bSkpCj4gKwkJ
cmV0dXJuIGk5MTVfdm1fdG9fZ2d0dCh2bSktPmFsaWFzOwo+ICsJZWxzZQo+ICsJCXJldHVybiBp
OTE1X3ZtX3RvX3BwZ3R0KHZtKTsKPiArfQo+ICsKPiArc3RhdGljIHZvaWQgZ2VuOF9pbml0X3Jl
Z19zdGF0ZSh1MzIgKiBjb25zdCByZWdzLAo+ICsJCQkJc3RydWN0IGludGVsX2NvbnRleHQgKmNl
LAo+ICsJCQkJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAo+ICsJCQkJc3RydWN0IGlu
dGVsX3JpbmcgKnJpbmcpCj4gK3sKPiArCXN0cnVjdCBpOTE1X3BwZ3R0ICogY29uc3QgcHBndHQg
PSB2bV9hbGlhcyhjZS0+dm0pOwo+ICsJY29uc3QgYm9vbCByY3MgPSBlbmdpbmUtPmNsYXNzID09
IFJFTkRFUl9DTEFTUzsKPiArCWNvbnN0IHUzMiBiYXNlID0gZW5naW5lLT5tbWlvX2Jhc2U7Cj4g
Kwljb25zdCB1MzIgbHJpX2Jhc2UgPSBpbnRlbF9lbmdpbmVfaGFzX3JlbGF0aXZlX21taW8oZW5n
aW5lKSA/Cj4gKwkJTUlfTFJJX0NTX01NSU8gOiAwOwo+ICsKPiArCS8qCj4gKwkgKiBBIGNvbnRl
eHQgaXMgYWN0dWFsbHkgYSBiaWcgYmF0Y2ggYnVmZmVyIHdpdGggc2V2ZXJhbAo+ICsJICogTUlf
TE9BRF9SRUdJU1RFUl9JTU0gY29tbWFuZHMgZm9sbG93ZWQgYnkgKHJlZywgdmFsdWUpIHBhaXJz
LiBUaGUKPiArCSAqIHZhbHVlcyB3ZSBhcmUgc2V0dGluZyBoZXJlIGFyZSBvbmx5IGZvciB0aGUg
Zmlyc3QgY29udGV4dCByZXN0b3JlOgo+ICsJICogb24gYSBzdWJzZXF1ZW50IHNhdmUsIHRoZSBH
UFUgd2lsbCByZWNyZWF0ZSB0aGlzIGJhdGNoYnVmZmVyIHdpdGggbmV3Cj4gKwkgKiB2YWx1ZXMg
KGluY2x1ZGluZyBhbGwgdGhlIG1pc3NpbmcgTUlfTE9BRF9SRUdJU1RFUl9JTU0gY29tbWFuZHMg
dGhhdAo+ICsJICogd2UgYXJlIG5vdCBpbml0aWFsaXppbmcgaGVyZSkuCj4gKwkgKgo+ICsJICog
TXVzdCBrZWVwIGNvbnNpc3RlbnQgd2l0aCB2aXJ0dWFsX3VwZGF0ZV9yZWdpc3Rlcl9vZmZzZXRz
KCkuCj4gKwkgKi8KPiArCXJlZ3NbQ1RYX0xSSV9IRUFERVJfMF0gPSBNSV9MT0FEX1JFR0lTVEVS
X0lNTShyY3MgPyAxNCA6IDExKSB8Cj4gKwkJTUlfTFJJX0ZPUkNFX1BPU1RFRCB8IGxyaV9iYXNl
Owo+ICsKPiArCWluaXRfY29tbW9uX3JlZ19zdGF0ZShyZWdzLCBwcGd0dCwgZW5naW5lLCByaW5n
KTsKPiArCUNUWF9SRUcocmVncywgQ1RYX1NFQ09ORF9CQl9IRUFEX1UsIFJJTkdfU0JCQUREUl9V
RFcoYmFzZSksIDApOwo+ICsJQ1RYX1JFRyhyZWdzLCBDVFhfU0VDT05EX0JCX0hFQURfTCwgUklO
R19TQkJBRERSKGJhc2UpLCAwKTsKPiArCUNUWF9SRUcocmVncywgQ1RYX1NFQ09ORF9CQl9TVEFU
RSwgUklOR19TQkJTVEFURShiYXNlKSwgMCk7Cj4gKwlpZiAocmNzKQo+ICsJCWluaXRfd2FfYmJf
cmVnX3N0YXRlKHJlZ3MsIGVuZ2luZSwgQ1RYX0JCX1BFUl9DVFhfUFRSKTsKPiArCj4gKwlyZWdz
W0NUWF9MUklfSEVBREVSXzFdID0KPiArCQlNSV9MT0FEX1JFR0lTVEVSX0lNTSg5KSB8IE1JX0xS
SV9GT1JDRV9QT1NURUQgfCBscmlfYmFzZTsKPiArCj4gKwlDVFhfUkVHKHJlZ3MsIENUWF9DVFhf
VElNRVNUQU1QLCBSSU5HX0NUWF9USU1FU1RBTVAoYmFzZSksIDApOwo+ICsKPiArCWluaXRfcHBn
dHRfcmVnX3N0YXRlKHJlZ3MsIGJhc2UsIHBwZ3R0KTsKPiAgIAo+ICAgCWlmIChyY3MpIHsKPiAg
IAkJcmVnc1tDVFhfTFJJX0hFQURFUl8yXSA9IE1JX0xPQURfUkVHSVNURVJfSU1NKDEpIHwgbHJp
X2Jhc2U7Cj4gQEAgLTMyMzcsNiArMzI3MCw2MSBAQCBzdGF0aWMgdm9pZCBleGVjbGlzdHNfaW5p
dF9yZWdfc3RhdGUodTMyICpyZWdzLAo+ICAgCQlyZWdzW0NUWF9FTkRdIHw9IEJJVCgwKTsKPiAg
IH0KPiAgIAo+ICtzdGF0aWMgdm9pZCBnZW4xMl9pbml0X3JlZ19zdGF0ZSh1MzIgKiBjb25zdCBy
ZWdzLAo+ICsJCQkJIHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKPiArCQkJCSBzdHJ1Y3QgaW50
ZWxfZW5naW5lX2NzICplbmdpbmUsCj4gKwkJCQkgc3RydWN0IGludGVsX3JpbmcgKnJpbmcpCj4g
K3sKPiArCXN0cnVjdCBpOTE1X3BwZ3R0ICogY29uc3QgcHBndHQgPSBpOTE1X3ZtX3RvX3BwZ3R0
KGNlLT52bSk7Cj4gKwljb25zdCBib29sIHJjcyA9IGVuZ2luZS0+Y2xhc3MgPT0gUkVOREVSX0NM
QVNTOwo+ICsJY29uc3QgdTMyIGJhc2UgPSBlbmdpbmUtPm1taW9fYmFzZTsKPiArCWNvbnN0IHUz
MiBscmlfYmFzZSA9IGludGVsX2VuZ2luZV9oYXNfcmVsYXRpdmVfbW1pbyhlbmdpbmUpID8KPiAr
CQlNSV9MUklfQ1NfTU1JTyA6IDA7Cj4gKwo+ICsJR0VNX0RFQlVHX0VYRUMoRFJNX0lORk9fT05D
RSgiVXNpbmcgR0VOMTIgUmVnaXN0ZXIgU3RhdGUgQ29udGV4dFxuIikpOwo+ICsKPiArCXJlZ3Nb
Q1RYX0xSSV9IRUFERVJfMF0gPSBNSV9MT0FEX1JFR0lTVEVSX0lNTShyY3MgPyAxMSA6IDkpIHwK
Ckkgd291bGQndmUga2VwdCBhIGNvbnN0YW50IDEzIGhlcmUgc2luY2Ugd2UnbGwgbmVlZCB0byBz
ZXQgdGhlIDEzdGggCnJlZ2lzdGVyICh0aGF0J3MgdGhlIHNlbWFwaG9yZSByZWcgeW91IGhhZCBp
biB0aGUgcHJldmlvdXMgcmV2aXNpb24pLCAKYnV0IGFueXdheSB3ZSBjYW4gYnVtcCBpdCB3aGVu
IHRoYXQgc3VwcG9ydCBpcyBhZGRlZCBpbi4KCkRhbmllbGUKCj4gKwkJTUlfTFJJX0ZPUkNFX1BP
U1RFRCB8IGxyaV9iYXNlOwo+ICsKPiArCWluaXRfY29tbW9uX3JlZ19zdGF0ZShyZWdzLCBwcGd0
dCwgZW5naW5lLCByaW5nKTsKPiArCj4gKwkvKiBXZSB3YW50IGN0eF9wdHIgZm9yIGFsbCBlbmdp
bmVzIHRvIGJlIHNldCAqLwo+ICsJaW5pdF93YV9iYl9yZWdfc3RhdGUocmVncywgZW5naW5lLCBH
RU4xMl9DVFhfQkJfUEVSX0NUWF9QVFIpOwo+ICsKPiArCXJlZ3NbQ1RYX0xSSV9IRUFERVJfMV0g
PSBNSV9MT0FEX1JFR0lTVEVSX0lNTSg5KSB8Cj4gKwkJTUlfTFJJX0ZPUkNFX1BPU1RFRCB8IGxy
aV9iYXNlOwo+ICsKPiArCUNUWF9SRUcocmVncywgQ1RYX0NUWF9USU1FU1RBTVAsIFJJTkdfQ1RY
X1RJTUVTVEFNUChiYXNlKSwgMCk7Cj4gKwo+ICsJaW5pdF9wcGd0dF9yZWdfc3RhdGUocmVncywg
YmFzZSwgcHBndHQpOwo+ICsKPiArCWlmIChyY3MpIHsKPiArCQlyZWdzW0dFTjEyX0NUWF9MUklf
SEVBREVSXzNdID0gTUlfTE9BRF9SRUdJU1RFUl9JTU0oMSkgfAo+ICsJCQlscmlfYmFzZTsKPiAr
CQlDVFhfUkVHKHJlZ3MsIENUWF9SX1BXUl9DTEtfU1RBVEUsIEdFTjhfUl9QV1JfQ0xLX1NUQVRF
LCAwKTsKPiArCj4gKwkJLyogVE9ETzogb2FfaW5pdF9yZWdfc3RhdGUgPyAqLwo+ICsJfQo+ICt9
Cj4gKwo+ICtzdGF0aWMgdm9pZCBleGVjbGlzdHNfaW5pdF9yZWdfc3RhdGUodTMyICpyZWdzLAo+
ICsJCQkJICAgICBzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsCj4gKwkJCQkgICAgIHN0cnVjdCBp
bnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKPiArCQkJCSAgICAgc3RydWN0IGludGVsX3JpbmcgKnJp
bmcpCj4gK3sKPiArCS8qIEEgY29udGV4dCBpcyBhY3R1YWxseSBhIGJpZyBiYXRjaCBidWZmZXIg
d2l0aCBzZXZlcmFsCj4gKwkgKiBNSV9MT0FEX1JFR0lTVEVSX0lNTSBjb21tYW5kcyBmb2xsb3dl
ZCBieSAocmVnLCB2YWx1ZSkgcGFpcnMuIFRoZQo+ICsJICogdmFsdWVzIHdlIGFyZSBzZXR0aW5n
IGhlcmUgYXJlIG9ubHkgZm9yIHRoZSBmaXJzdCBjb250ZXh0IHJlc3RvcmU6Cj4gKwkgKiBvbiBh
IHN1YnNlcXVlbnQgc2F2ZSwgdGhlIEdQVSB3aWxsIHJlY3JlYXRlIHRoaXMgYmF0Y2hidWZmZXIg
d2l0aCBuZXcKPiArCSAqIHZhbHVlcyAoaW5jbHVkaW5nIGFsbCB0aGUgbWlzc2luZyBNSV9MT0FE
X1JFR0lTVEVSX0lNTSBjb21tYW5kcyB0aGF0Cj4gKwkgKiB3ZSBhcmUgbm90IGluaXRpYWxpemlu
ZyBoZXJlKS4KPiArCSAqLwo+ICsJaWYgKElOVEVMX0dFTihlbmdpbmUtPmk5MTUpID49IDEyKQo+
ICsJCWdlbjEyX2luaXRfcmVnX3N0YXRlKHJlZ3MsIGNlLCBlbmdpbmUsIHJpbmcpOwo+ICsJZWxz
ZQo+ICsJCWdlbjhfaW5pdF9yZWdfc3RhdGUocmVncywgY2UsIGVuZ2luZSwgcmluZyk7Cj4gK30K
PiArCj4gICBzdGF0aWMgaW50Cj4gICBwb3B1bGF0ZV9scl9jb250ZXh0KHN0cnVjdCBpbnRlbF9j
b250ZXh0ICpjZSwKPiAgIAkJICAgIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpjdHhfb2Jq
LAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmNfcmVnLmgg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmNfcmVnLmgKPiBpbmRleCBiOGYyMGFk
NzExNjkuLjY4Y2FmODU0MTg2NiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9scmNfcmVnLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9s
cmNfcmVnLmgKPiBAQCAtOSw3ICs5LDcgQEAKPiAgIAo+ICAgI2luY2x1ZGUgPGxpbnV4L3R5cGVz
Lmg+Cj4gICAKPiAtLyogR0VOOCsgUmVnIFN0YXRlIENvbnRleHQgKi8KPiArLyogR0VOOCB0byBH
RU4xMSBSZWcgU3RhdGUgQ29udGV4dCAqLwo+ICAgI2RlZmluZSBDVFhfTFJJX0hFQURFUl8wCQkw
eDAxCj4gICAjZGVmaW5lIENUWF9DT05URVhUX0NPTlRST0wJCTB4MDIKPiAgICNkZWZpbmUgQ1RY
X1JJTkdfSEVBRAkJCTB4MDQKPiBAQCAtMzksNiArMzksMTAgQEAKPiAgICNkZWZpbmUgQ1RYX1Jf
UFdSX0NMS19TVEFURQkJMHg0Mgo+ICAgI2RlZmluZSBDVFhfRU5ECQkJCTB4NDQKPiAgIAo+ICsv
KiBHRU4xMisgUmVnIFN0YXRlIENvbnRleHQgKi8KPiArI2RlZmluZSBHRU4xMl9DVFhfQkJfUEVS
X0NUWF9QVFIJCTB4MTIKPiArI2RlZmluZSBHRU4xMl9DVFhfTFJJX0hFQURFUl8zCQkJMHg0MQo+
ICsKPiAgICNkZWZpbmUgQ1RYX1JFRyhyZWdfc3RhdGUsIHBvcywgcmVnLCB2YWwpIGRvIHsgXAo+
ICAgCXUzMiAqcmVnX3N0YXRlX18gPSAocmVnX3N0YXRlKTsgXAo+ICAgCWNvbnN0IHUzMiBwb3Nf
XyA9IChwb3MpOyBcCj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
