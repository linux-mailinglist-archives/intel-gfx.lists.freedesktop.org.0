Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DAE379C60
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 00:20:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E588D89B9E;
	Mon, 29 Jul 2019 22:20:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 922B889B9E
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2019 22:20:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jul 2019 15:20:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,324,1559545200"; d="scan'208";a="162372087"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 29 Jul 2019 15:20:43 -0700
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190729211937.19731-1-lucas.demarchi@intel.com>
 <20190729211937.19731-4-lucas.demarchi@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <05ed9413-8b39-ac90-d69b-25602d9d831a@intel.com>
Date: Mon, 29 Jul 2019 15:20:32 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190729211937.19731-4-lucas.demarchi@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 3/5] drm/i915/tgl: Define MOCS entries
 for Tigerlake
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
Cc: Mika Kuoppala <mika.kuoppala@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA3LzI5LzE5IDI6MTkgUE0sIEx1Y2FzIERlIE1hcmNoaSB3cm90ZToKPiBGcm9tOiBUb21h
c3ogTGlzIDx0b21hc3oubGlzQGludGVsLmNvbT4KPiAKPiBUaGUgTU9DUyB0YWJsZSBpcyBwdWJs
aXNoZWQgYXMgcGFydCBvZiBic3BlYywgYW5kIHZlcnNpb25lZC4gRW50cmllcwo+IGFyZSBzdXBw
b3NlZCB0byBuZXZlciBiZSBtb2RpZmllZCwgYnV0IG5ldyBvbmVzIGNhbiBiZSBhZGRlZC4gQWRk
aW5nCj4gZW50cmllcyBpbmNyZWFzZXMgdGFibGUgdmVyc2lvbi4gVGhlIHBhdGNoIGluY2x1ZGVz
IHZlcnNpb24gMSBlbnRyaWVzLgo+IAo+IFR3byBvZiB0aGUgMyBsZWdhY3kgZW50cmllcyB1c2Vk
IGZvciBnZW45IGFyZSBubyBsb25nZXIgZXhwZWN0ZWQgdG8gd29yay4KPiBBbHRob3VnaCB3ZSBh
cmUgY2hhbmdpbmcgdGhlIGdlbjExIHRhYmxlLCB0aG9zZSBjaGFuZ2VzIGFyZSBzdXBwb3NlZCB0
bwo+IGJlIGJhY2t3YXJkIGNvbXBhdGlibGUgc2luY2Ugd2UgYXJlIG9ubHkgdG91Y2hpbmcgcHJl
dmlvdXNseSB1bmRlZmluZWQKPiBlbnRyaWVzLgo+IAo+IHYyOiBBZGQgdGhlIG1pc3NpbmcgZW50
cmllcyBpbiA0OS01MSByYW5nZSBhbmQgcmVwbGFjZSAiSFcgcmVzZXJ2ZWQiCj4gICAgICB0ZXJt
aW5vbG9neSB0byB3aGF0IGl0IGFjdHVhbGx5IGlzOiBMMSBpcyBpbXBsaWNpdGx5IGVuYWJsZWQg
KGZyb20gRGFuaWVsZSkKPiB2MzogVXNlIGEgZGlmZmVyZW50IHRhYmxlIGZvciBUaWdlciBMYWtl
IHNpbmNlIGVudHJpZXMgMCBhbmQgMSBhcmUgbm90Cj4gICAgICB0aGUgc2FtZSAoZnJvbSBEYW5p
ZWxlKQo+IAo+IENjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRl
bC5jb20+Cj4gQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAaW50ZWwuY29tPgo+IENj
OiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29t
Pgo+IFNpZ25lZC1vZmYtYnk6IFRvbWFzeiBMaXMgPHRvbWFzei5saXNAaW50ZWwuY29tPgo+IFNp
Z25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgoK
UmV2aWV3ZWQtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJp
b0BpbnRlbC5jb20+CgpEYW5pZWxlCgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfbW9jcy5jIHwgNjggKysrKysrKysrKysrKysrKysrKysrKystLS0tLQo+ICAgMSBmaWxl
IGNoYW5nZWQsIDU3IGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9tb2NzLmMKPiBpbmRleCAyOTBhNWU5YjkwYjkuLmM1MTFlNjk4MzA3
MiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmMKPiBAQCAtNjIsNiArNjIs
MTAgQEAgc3RydWN0IGRybV9pOTE1X21vY3NfdGFibGUgewo+ICAgI2RlZmluZSBHRU4xMV9OVU1f
TU9DU19FTlRSSUVTCTY0ICAvKiA2My02NCBhcmUgcmVzZXJ2ZWQsIGJ1dCBjb25maWd1cmVkLiAq
Lwo+ICAgCj4gICAvKiAoZSlMTEMgY2FjaGluZyBvcHRpb25zICovCj4gKy8qCj4gKyAqIE5vdGU6
IExFXzBfUEFHRVRBQkxFIHdvcmtzIG9ubHkgdXAgdG8gR2VuMTE7IGZvciBuZXdlciBnZW5zIGl0
IG1lYW5zCj4gKyAqIHRoZSBzYW1lIGFzIExFX1VDCj4gKyAqLwo+ICAgI2RlZmluZSBMRV8wX1BB
R0VUQUJMRQkJX0xFX0NBQ0hFQUJJTElUWSgwKQo+ICAgI2RlZmluZSBMRV8xX1VDCQkJX0xFX0NB
Q0hFQUJJTElUWSgxKQo+ICAgI2RlZmluZSBMRV8yX1dUCQkJX0xFX0NBQ0hFQUJJTElUWSgyKQo+
IEBAIC0xMDAsOCArMTA0LDkgQEAgc3RydWN0IGRybV9pOTE1X21vY3NfdGFibGUgewo+ICAgICog
b2YgYnNwZWMuCj4gICAgKgo+ICAgICogRW50cmllcyBub3QgcGFydCBvZiB0aGUgZm9sbG93aW5n
IHRhYmxlcyBhcmUgdW5kZWZpbmVkIGFzIGZhciBhcwo+IC0gKiB1c2Vyc3BhY2UgaXMgY29uY2Vy
bmVkIGFuZCBzaG91bGRuJ3QgYmUgcmVsaWVkIHVwb24uICBGb3IgdGhlIHRpbWUKPiAtICogYmVp
bmcgdGhleSB3aWxsIGJlIGluaXRpYWxpemVkIHRvIFBURS4KPiArICogdXNlcnNwYWNlIGlzIGNv
bmNlcm5lZCBhbmQgc2hvdWxkbid0IGJlIHJlbGllZCB1cG9uLiAgRm9yIEdlbiA8IDEyCj4gKyAq
IHRoZXkgd2lsbCBiZSBpbml0aWFsaXplZCB0byBQVEUuIEdlbiA+PSAxMiBvbndhcmRzIGRvbid0
IGhhdmUgYSBzZXR0aW5nIGZvcgo+ICsgKiBQVEUgYW5kIHdpbGwgYmUgaW5pdGlhbGl6ZWQgdG8g
YW4gaW52YWxpZCB2YWx1ZS4KPiAgICAqCj4gICAgKiBUaGUgbGFzdCB0d28gZW50cmllcyBhcmUg
cmVzZXJ2ZWQgYnkgdGhlIGhhcmR3YXJlLiBGb3IgSUNMKyB0aGV5Cj4gICAgKiBzaG91bGQgYmUg
aW5pdGlhbGl6ZWQgYWNjb3JkaW5nIHRvIGJzcGVjIGFuZCBuZXZlciB1c2VkLCBmb3Igb2xkZXIK
PiBAQCAtMTM3LDE0ICsxNDIsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9pOTE1X21vY3Nf
ZW50cnkgYnJveHRvbl9tb2NzX3RhYmxlW10gPSB7Cj4gICB9Owo+ICAgCj4gICAjZGVmaW5lIEdF
TjExX01PQ1NfRU5UUklFUyBcCj4gLQkvKiBCYXNlIC0gVW5jYWNoZWQgKERlcHJlY2F0ZWQpICov
IFwKPiAtCU1PQ1NfRU5UUlkoSTkxNV9NT0NTX1VOQ0FDSEVELCBcCj4gLQkJICAgTEVfMV9VQyB8
IExFX1RDXzFfTExDLCBcCj4gLQkJICAgTDNfMV9VQyksIFwKPiAtCS8qIEJhc2UgLSBMMyArIExl
Q0M6UEFUIChEZXByZWNhdGVkKSAqLyBcCj4gLQlNT0NTX0VOVFJZKEk5MTVfTU9DU19QVEUsIFwK
PiAtCQkgICBMRV8wX1BBR0VUQUJMRSB8IExFX1RDXzFfTExDLCBcCj4gLQkJICAgTDNfM19XQiks
IFwKPiArCS8qIEVudHJpZXMgMCBhbmQgMSBhcmUgZGVmaW5lZCBwZXItcGxhdGZvcm0gKi8gXAo+
ICAgCS8qIEJhc2UgLSBMMyArIExMQyAqLyBcCj4gICAJTU9DU19FTlRSWSgyLCBcCj4gICAJCSAg
IExFXzNfV0IgfCBMRV9UQ18xX0xMQyB8IExFX0xSVU0oMyksIFwKPiBAQCAtMjQyLDcgKzI0MCw1
MCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9pOTE1X21vY3NfZW50cnkgYnJveHRvbl9tb2Nz
X3RhYmxlW10gPSB7Cj4gICAJCSAgIExFXzNfV0IgfCBMRV9UQ18xX0xMQyB8IExFX0xSVU0oMyks
IFwKPiAgIAkJICAgTDNfMV9VQykKPiAgIAo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9pOTE1
X21vY3NfZW50cnkgdGlnZXJsYWtlX21vY3NfdGFibGVbXSA9IHsKPiArCS8qIEJhc2UgLSBFcnJv
ciAoUmVzZXJ2ZWQgZm9yIE5vbi1Vc2UpICovCj4gKwlNT0NTX0VOVFJZKDAsIDB4MCwgMHgwKSwK
PiArCS8qIEJhc2UgLSBSZXNlcnZlZCAqLwo+ICsJTU9DU19FTlRSWSgxLCAweDAsIDB4MCksCj4g
Kwo+ICsJR0VOMTFfTU9DU19FTlRSSUVTLAo+ICsKPiArCS8qIEltcGxpY2l0bHkgZW5hYmxlIEwx
IC0gSERDOkwxICsgTDMgKyBMTEMgKi8KPiArCU1PQ1NfRU5UUlkoNDgsCj4gKwkJICAgTEVfM19X
QiB8IExFX1RDXzFfTExDIHwgTEVfTFJVTSgzKSwKPiArCQkgICBMM18zX1dCKSwKPiArCS8qIElt
cGxpY2l0bHkgZW5hYmxlIEwxIC0gSERDOkwxICsgTDMgKi8KPiArCU1PQ1NfRU5UUlkoNDksCj4g
KwkJICAgTEVfMV9VQyB8IExFX1RDXzFfTExDLAo+ICsJCSAgIEwzXzNfV0IpLAo+ICsJLyogSW1w
bGljaXRseSBlbmFibGUgTDEgLSBIREM6TDEgKyBMTEMgKi8KPiArCU1PQ1NfRU5UUlkoNTAsCj4g
KwkJICAgTEVfM19XQiB8IExFX1RDXzFfTExDIHwgTEVfTFJVTSgzKSwKPiArCQkgICBMM18xX1VD
KSwKPiArCS8qIEltcGxpY2l0bHkgZW5hYmxlIEwxIC0gSERDOkwxICovCj4gKwlNT0NTX0VOVFJZ
KDUxLAo+ICsJCSAgIExFXzFfVUMgfCBMRV9UQ18xX0xMQywKPiArCQkgICBMM18xX1VDKSwKPiAr
CS8qIEhXIFNwZWNpYWwgQ2FzZSAoQ0NTKSAqLwo+ICsJTU9DU19FTlRSWSg2MCwKPiArCQkgICBM
RV8zX1dCIHwgTEVfVENfMV9MTEMgfCBMRV9MUlVNKDMpLAo+ICsJCSAgIEwzXzFfVUMpLAo+ICsJ
LyogSFcgU3BlY2lhbCBDYXNlIChEaXNwbGF5YWJsZSkgKi8KPiArCU1PQ1NfRU5UUlkoNjEsCj4g
KwkJICAgTEVfMV9VQyB8IExFX1RDXzFfTExDIHwgTEVfU0NGKDEpLAo+ICsJCSAgIEwzXzNfV0Ip
LAo+ICt9Owo+ICsKPiAgIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfbW9jc19lbnRyeSBp
Y2VsYWtlX21vY3NfdGFibGVbXSA9IHsKPiArCS8qIEJhc2UgLSBVbmNhY2hlZCAoRGVwcmVjYXRl
ZCkgKi8KPiArCU1PQ1NfRU5UUlkoSTkxNV9NT0NTX1VOQ0FDSEVELAo+ICsJCSAgIExFXzFfVUMg
fCBMRV9UQ18xX0xMQywKPiArCQkgICBMM18xX1VDKSwKPiArCS8qIEJhc2UgLSBMMyArIExlQ0M6
UEFUIChEZXByZWNhdGVkKSAqLwo+ICsJTU9DU19FTlRSWShJOTE1X01PQ1NfUFRFLAo+ICsJCSAg
IExFXzBfUEFHRVRBQkxFIHwgTEVfVENfMV9MTEMsCj4gKwkJICAgTDNfM19XQiksCj4gKwo+ICAg
CUdFTjExX01PQ1NfRU5UUklFUwo+ICAgfTsKPiAgIAo+IEBAIC0yNjQsNyArMzA1LDEyIEBAIHN0
YXRpYyBib29sIGdldF9tb2NzX3NldHRpbmdzKHN0cnVjdCBpbnRlbF9ndCAqZ3QsCj4gICAJc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBndC0+aTkxNTsKPiAgIAlib29sIHJlc3VsdCA9
IGZhbHNlOwo+ICAgCj4gLQlpZiAoSU5URUxfR0VOKGk5MTUpID49IDExKSB7Cj4gKwlpZiAoSU5U
RUxfR0VOKGk5MTUpID49IDEyKSB7Cj4gKwkJdGFibGUtPnNpemUgID0gQVJSQVlfU0laRSh0aWdl
cmxha2VfbW9jc190YWJsZSk7Cj4gKwkJdGFibGUtPnRhYmxlID0gdGlnZXJsYWtlX21vY3NfdGFi
bGU7Cj4gKwkJdGFibGUtPm5fZW50cmllcyA9IEdFTjExX05VTV9NT0NTX0VOVFJJRVM7Cj4gKwkJ
cmVzdWx0ID0gdHJ1ZTsKPiArCX0gZWxzZSBpZiAoSVNfR0VOKGk5MTUsIDExKSkgewo+ICAgCQl0
YWJsZS0+c2l6ZSAgPSBBUlJBWV9TSVpFKGljZWxha2VfbW9jc190YWJsZSk7Cj4gICAJCXRhYmxl
LT50YWJsZSA9IGljZWxha2VfbW9jc190YWJsZTsKPiAgIAkJdGFibGUtPm5fZW50cmllcyA9IEdF
TjExX05VTV9NT0NTX0VOVFJJRVM7Cj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
