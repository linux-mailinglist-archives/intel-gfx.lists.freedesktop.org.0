Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 606481D9493
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2020 12:45:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EDEF6E2F3;
	Tue, 19 May 2020 10:45:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DE3B6E2F3;
 Tue, 19 May 2020 10:45:36 +0000 (UTC)
IronPort-SDR: ln3wYUpIWpqGIwrPnx1GwwAuU0Vu5OWKwuxGtqezIatFQGgRKED2DBU2b0yMCv7AFuSdAn3gHn
 PebcVrC76W0A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 03:45:35 -0700
IronPort-SDR: QxBex4fLVE6o/REoRqSff6zQOPjyp4TrlaAmLaJxxY+Nf5As4j70kd8i8KVL+p8Z8eMydPSbYB
 7AmmzCdtYvcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,409,1583222400"; d="scan'208";a="299535528"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga002.fm.intel.com with ESMTP; 19 May 2020 03:45:34 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id F280C5C1DF0; Tue, 19 May 2020 13:43:16 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200519100217.1761103-1-chris@chris-wilson.co.uk>
References: <20200519100217.1761103-1-chris@chris-wilson.co.uk>
Date: Tue, 19 May 2020 13:43:16 +0300
Message-ID: <87367wmchn.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915: Add gem_exec_endless
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
Cc: igt-dev@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gU3RhcnQg
b3VyIHByZXBhcmF0aW9ucyBmb3IgZ3VhcmFudGVlaW5nIGVuZGxlc3MgZXhlY3V0aW9uLgo+Cj4g
Rmlyc3QsIHdlIGp1c3Qgd2FudCB0byBlc3RpbWF0ZSB0aGUgJ3VsdGEtbG93IGxhdGVuY3knIGRp
c3BhdGNoIG92ZXJoZWFkCj4gYnkgcnVubmluZyBhbiBlbmRsZXNzIGNoYWluIG9mIGJhdGNoIGJ1
ZmZlcnMuIFRoZSBsZWdhY3kgYmluZGluZyBwcm9jZXNzCj4gaGVyZSB3aWxsIGJlIHJlcGxhY2Vk
IGJ5IGFzeW5jIFZNX0JJTkQsIGJ1dCBmb3IgdGhlIG1vbWVudCB0aGlzCj4gc3VmZmljZXMgdG8g
Y29uc3RydWN0IHRoZSBHVFQgYXMgcmVxdWlyZWQgZm9yIGFyYml0cmFyeQo+ICp1c2VyLWNvbnRy
b2xsZWQqIGluZGlyZWN0IGV4ZWN1dGlvbi4KPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBKb29uYXMgTGFodGluZW4gPGpvb25h
cy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3Vv
cHBhbGFAbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICBsaWIvaWd0X2NvcmUuaCAgICAgICAgICAg
ICAgICB8ICAgMSArCj4gIHRlc3RzL01ha2VmaWxlLnNvdXJjZXMgICAgICAgIHwgICAzICsKPiAg
dGVzdHMvaTkxNS9nZW1fZXhlY19lbmRsZXNzLmMgfCAzNTQgKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKwo+ICB0ZXN0cy9tZXNvbi5idWlsZCAgICAgICAgICAgICB8ICAgMSArCj4g
IDQgZmlsZXMgY2hhbmdlZCwgMzU5IGluc2VydGlvbnMoKykKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0
IHRlc3RzL2k5MTUvZ2VtX2V4ZWNfZW5kbGVzcy5jCj4KPiBkaWZmIC0tZ2l0IGEvbGliL2lndF9j
b3JlLmggYi9saWIvaWd0X2NvcmUuaAo+IGluZGV4IGI5N2ZhMmZhYS4uYzU4NzE1MjA0IDEwMDY0
NAo+IC0tLSBhL2xpYi9pZ3RfY29yZS5oCj4gKysrIGIvbGliL2lndF9jb3JlLmgKPiBAQCAtMTM2
OSw2ICsxMzY5LDcgQEAgdm9pZCBpZ3Rfa21zZyhjb25zdCBjaGFyICpmb3JtYXQsIC4uLik7Cj4g
ICNkZWZpbmUgS01TR19ERUJVRwkiPDc+W0lHVF0gIgo+ICAKPiAgI2RlZmluZSBSRUFEX09OQ0Uo
eCkgKCoodm9sYXRpbGUgdHlwZW9mKHgpICopKCYoeCkpKQo+ICsjZGVmaW5lIFdSSVRFX09OQ0Uo
eCwgdikgZG8gKih2b2xhdGlsZSB0eXBlb2YoeCkgKikoJih4KSkgPSAodik7IHdoaWxlICgwKQo+
ICAKPiAgI2RlZmluZSBNU0VDX1BFUl9TRUMgKDEwMDApCj4gICNkZWZpbmUgVVNFQ19QRVJfU0VD
ICgxMDAwKk1TRUNfUEVSX1NFQykKPiBkaWZmIC0tZ2l0IGEvdGVzdHMvTWFrZWZpbGUuc291cmNl
cyBiL3Rlc3RzL01ha2VmaWxlLnNvdXJjZXMKPiBpbmRleCBjNDUwZmEwZWQuLmQxZjdjZjgxOSAx
MDA2NDQKPiAtLS0gYS90ZXN0cy9NYWtlZmlsZS5zb3VyY2VzCj4gKysrIGIvdGVzdHMvTWFrZWZp
bGUuc291cmNlcwo+IEBAIC0yNjUsNiArMjY1LDkgQEAgZ2VtX2V4ZWNfc2NoZWR1bGVfU09VUkNF
UyA9IGk5MTUvZ2VtX2V4ZWNfc2NoZWR1bGUuYwo+ICBURVNUU19wcm9ncyArPSBnZW1fZXhlY19z
dG9yZQo+ICBnZW1fZXhlY19zdG9yZV9TT1VSQ0VTID0gaTkxNS9nZW1fZXhlY19zdG9yZS5jCj4g
IAo+ICtURVNUU19wcm9ncyArPSBnZW1fZXhlY19lbmRsZXNzCj4gK2dlbV9leGVjX2VuZGxlc3Nf
U09VUkNFUyA9IGk5MTUvZ2VtX2V4ZWNfZW5kbGVzcy5jCj4gKwo+ICBURVNUU19wcm9ncyArPSBn
ZW1fZXhlY19zdXNwZW5kCj4gIGdlbV9leGVjX3N1c3BlbmRfU09VUkNFUyA9IGk5MTUvZ2VtX2V4
ZWNfc3VzcGVuZC5jCj4gIAo+IGRpZmYgLS1naXQgYS90ZXN0cy9pOTE1L2dlbV9leGVjX2VuZGxl
c3MuYyBiL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfZW5kbGVzcy5jCj4gbmV3IGZpbGUgbW9kZSAxMDA2
NDQKPiBpbmRleCAwMDAwMDAwMDAuLmMyNWM5NDY0MQo+IC0tLSAvZGV2L251bGwKPiArKysgYi90
ZXN0cy9pOTE1L2dlbV9leGVjX2VuZGxlc3MuYwo+IEBAIC0wLDAgKzEsMzU0IEBACj4gKy8qCj4g
KyAqIENvcHlyaWdodCDCqSAyMDE5IEludGVsIENvcnBvcmF0aW9uCj4gKyAqCj4gKyAqIFBlcm1p
c3Npb24gaXMgaGVyZWJ5IGdyYW50ZWQsIGZyZWUgb2YgY2hhcmdlLCB0byBhbnkgcGVyc29uIG9i
dGFpbmluZyBhCj4gKyAqIGNvcHkgb2YgdGhpcyBzb2Z0d2FyZSBhbmQgYXNzb2NpYXRlZCBkb2N1
bWVudGF0aW9uIGZpbGVzICh0aGUgIlNvZnR3YXJlIiksCj4gKyAqIHRvIGRlYWwgaW4gdGhlIFNv
ZnR3YXJlIHdpdGhvdXQgcmVzdHJpY3Rpb24sIGluY2x1ZGluZyB3aXRob3V0IGxpbWl0YXRpb24K
PiArICogdGhlIHJpZ2h0cyB0byB1c2UsIGNvcHksIG1vZGlmeSwgbWVyZ2UsIHB1Ymxpc2gsIGRp
c3RyaWJ1dGUsIHN1YmxpY2Vuc2UsCj4gKyAqIGFuZC9vciBzZWxsIGNvcGllcyBvZiB0aGUgU29m
dHdhcmUsIGFuZCB0byBwZXJtaXQgcGVyc29ucyB0byB3aG9tIHRoZQo+ICsgKiBTb2Z0d2FyZSBp
cyBmdXJuaXNoZWQgdG8gZG8gc28sIHN1YmplY3QgdG8gdGhlIGZvbGxvd2luZyBjb25kaXRpb25z
Ogo+ICsgKgo+ICsgKiBUaGUgYWJvdmUgY29weXJpZ2h0IG5vdGljZSBhbmQgdGhpcyBwZXJtaXNz
aW9uIG5vdGljZSAoaW5jbHVkaW5nIHRoZSBuZXh0Cj4gKyAqIHBhcmFncmFwaCkgc2hhbGwgYmUg
aW5jbHVkZWQgaW4gYWxsIGNvcGllcyBvciBzdWJzdGFudGlhbCBwb3J0aW9ucyBvZiB0aGUKPiAr
ICogU29mdHdhcmUuCj4gKyAqCj4gKyAqIFRIRSBTT0ZUV0FSRSBJUyBQUk9WSURFRCAiQVMgSVMi
LCBXSVRIT1VUIFdBUlJBTlRZIE9GIEFOWSBLSU5ELCBFWFBSRVNTIE9SCj4gKyAqIElNUExJRUQs
IElOQ0xVRElORyBCVVQgTk9UIExJTUlURUQgVE8gVEhFIFdBUlJBTlRJRVMgT0YgTUVSQ0hBTlRB
QklMSVRZLAo+ICsgKiBGSVRORVNTIEZPUiBBIFBBUlRJQ1VMQVIgUFVSUE9TRSBBTkQgTk9OSU5G
UklOR0VNRU5ULiAgSU4gTk8gRVZFTlQgU0hBTEwKPiArICogVEhFIEFVVEhPUlMgT1IgQ09QWVJJ
R0hUIEhPTERFUlMgQkUgTElBQkxFIEZPUiBBTlkgQ0xBSU0sIERBTUFHRVMgT1IgT1RIRVIKPiAr
ICogTElBQklMSVRZLCBXSEVUSEVSIElOIEFOIEFDVElPTiBPRiBDT05UUkFDVCwgVE9SVCBPUiBP
VEhFUldJU0UsIEFSSVNJTkcKPiArICogRlJPTSwgT1VUIE9GIE9SIElOIENPTk5FQ1RJT04gV0lU
SCBUSEUgU09GVFdBUkUgT1IgVEhFIFVTRSBPUiBPVEhFUiBERUFMSU5HUwo+ICsgKiBJTiBUSEUg
U09GVFdBUkUuCj4gKyAqLwo+ICsKPiArI2luY2x1ZGUgPHN5cy9pb2N0bC5oPgo+ICsKPiArI2lu
Y2x1ZGUgImk5MTUvZ2VtLmgiCj4gKyNpbmNsdWRlICJpOTE1L2dlbV9yaW5nLmgiCj4gKyNpbmNs
dWRlICJpZ3QuaCIKPiArI2luY2x1ZGUgInN3X3N5bmMuaCIKPiArCj4gKyNkZWZpbmUgTUFYX0VO
R0lORVMgNjQKPiArCj4gKyNkZWZpbmUgTUlfU0VNQVBIT1JFX1dBSVQJCSgweDFjIDw8IDIzKQo+
ICsjZGVmaW5lICAgTUlfU0VNQVBIT1JFX1BPTEwgICAgICAgICAgICAgKDEgPDwgMTUpCj4gKyNk
ZWZpbmUgICBNSV9TRU1BUEhPUkVfU0FEX0dUX1NERCAgICAgICAoMCA8PCAxMikKPiArI2RlZmlu
ZSAgIE1JX1NFTUFQSE9SRV9TQURfR1RFX1NERCAgICAgICgxIDw8IDEyKQo+ICsjZGVmaW5lICAg
TUlfU0VNQVBIT1JFX1NBRF9MVF9TREQgICAgICAgKDIgPDwgMTIpCj4gKyNkZWZpbmUgICBNSV9T
RU1BUEhPUkVfU0FEX0xURV9TREQgICAgICAoMyA8PCAxMikKPiArI2RlZmluZSAgIE1JX1NFTUFQ
SE9SRV9TQURfRVFfU0REICAgICAgICg0IDw8IDEyKQo+ICsjZGVmaW5lICAgTUlfU0VNQVBIT1JF
X1NBRF9ORVFfU0REICAgICAgKDUgPDwgMTIpCj4gKwo+ICtzdGF0aWMgdWludDMyX3QgYmF0Y2hf
Y3JlYXRlKGludCBpOTE1KQo+ICt7Cj4gKwljb25zdCB1aW50MzJfdCBiYmUgPSBNSV9CQVRDSF9C
VUZGRVJfRU5EOwo+ICsJdWludDMyX3QgaGFuZGxlID0gZ2VtX2NyZWF0ZShpOTE1LCA0MDk2KTsK
PiArCWdlbV93cml0ZShpOTE1LCBoYW5kbGUsIDAsICZiYmUsIHNpemVvZihiYmUpKTsKPiArCXJl
dHVybiBoYW5kbGU7Cj4gK30KPiArCj4gK3N0cnVjdCBzdXBlcnZpc29yIHsKPiArCWludCBkZXZp
Y2U7Cj4gKwl1aW50MzJfdCBoYW5kbGU7Cj4gKwl1aW50MzJfdCBjb250ZXh0Owo+ICsKPiArCXVp
bnQzMl90ICptYXA7Cj4gKwl1aW50MzJfdCAqc2VtYXBob3JlOwo+ICsJdWludDMyX3QgKnRlcm1p
bmF0ZTsKPiArCXVpbnQ2NF90ICpkaXNwYXRjaDsKPiArfTsKPiArCj4gK3N0YXRpYyB1bnNpZ25l
ZCBpbnQgb2Zmc2V0X2luX3BhZ2Uodm9pZCAqYWRkcikKPiArewo+ICsJcmV0dXJuICh1aW50cHRy
X3QpYWRkciAmIDQwOTU7Cj4gK30KPiArCj4gK3N0YXRpYyB1aW50MzJfdCBfX3N1cGVydmlzb3Jf
Y3JlYXRlX2NvbnRleHQoaW50IGk5MTUsCj4gKwkJCQkJICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9l
eGVjdXRpb25fZW5naW5lMiAqZSkKPiArewo+ICsJSTkxNV9ERUZJTkVfQ09OVEVYVF9QQVJBTV9F
TkdJTkVTKGVuZ2luZXMsIDIpOwo+ICsJc3RydWN0IGRybV9pOTE1X2dlbV9jb250ZXh0X2NyZWF0
ZV9leHRfc2V0cGFyYW0gcF9yaW5nID0gewo+ICsJCXsKPiArCQkJLm5hbWUgPSBJOTE1X0NPTlRF
WFRfQ1JFQVRFX0VYVF9TRVRQQVJBTSwKPiArCQkJLm5leHRfZXh0ZW5zaW9uID0gMAo+ICsJCX0s
Cj4gKwkJewo+ICsJCQkucGFyYW0gPSBJOTE1X0NPTlRFWFRfUEFSQU1fUklOR1NJWkUsCj4gKwkJ
CS52YWx1ZSA9IDQwOTYsCj4gKwkJfSwKPiArCX07Cj4gKwlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2Nv
bnRleHRfY3JlYXRlX2V4dF9zZXRwYXJhbSBwX2VuZ2luZXMgPSB7Cj4gKwkJewo+ICsJCQkubmFt
ZSA9IEk5MTVfQ09OVEVYVF9DUkVBVEVfRVhUX1NFVFBBUkFNLAo+ICsJCQkubmV4dF9leHRlbnNp
b24gPSB0b191c2VyX3BvaW50ZXIoJnBfcmluZykKPiArCj4gKwkJfSwKPiArCQl7Cj4gKwkJCS5w
YXJhbSA9IEk5MTVfQ09OVEVYVF9QQVJBTV9FTkdJTkVTLAo+ICsJCQkudmFsdWUgPSB0b191c2Vy
X3BvaW50ZXIoJmVuZ2luZXMpLAo+ICsJCQkuc2l6ZSA9IHNpemVvZihlbmdpbmVzKSwKPiArCQl9
LAo+ICsJfTsKPiArCXN0cnVjdCBkcm1faTkxNV9nZW1fY29udGV4dF9jcmVhdGVfZXh0X3NldHBh
cmFtIHBfcGVyc2lzdGVuY2UgPSB7Cj4gKwkJewo+ICsJCQkubmFtZSA9IEk5MTVfQ09OVEVYVF9D
UkVBVEVfRVhUX1NFVFBBUkFNLAo+ICsJCQkubmV4dF9leHRlbnNpb24gPSB0b191c2VyX3BvaW50
ZXIoJnBfZW5naW5lcykKPiArCj4gKwkJfSwKPiArCQl7Cj4gKwkJCS5wYXJhbSA9IEk5MTVfQ09O
VEVYVF9QQVJBTV9QRVJTSVNURU5DRSwKPiArCQkJLnZhbHVlID0gMAo+ICsJCX0sCj4gKwl9Owo+
ICsJc3RydWN0IGRybV9pOTE1X2dlbV9jb250ZXh0X2NyZWF0ZV9leHQgY3JlYXRlID0gewo+ICsJ
CS5mbGFncyA9IEk5MTVfQ09OVEVYVF9DUkVBVEVfRkxBR1NfVVNFX0VYVEVOU0lPTlMsCj4gKwkJ
LmV4dGVuc2lvbnMgPSB0b191c2VyX3BvaW50ZXIoJnBfcGVyc2lzdGVuY2UpLAo+ICsJfTsKPiAr
Cj4gKwlmb3IgKGludCBuID0gMDsgbiA8IDI7IG4rKykgeyAvKiBbZXhlYywgYmluZF0gKi8KPiAr
CQllbmdpbmVzLmVuZ2luZXNbbl0uZW5naW5lX2NsYXNzID0gZS0+Y2xhc3M7Cj4gKwkJZW5naW5l
cy5lbmdpbmVzW25dLmVuZ2luZV9pbnN0YW5jZSA9IGUtPmluc3RhbmNlOwo+ICsJfQo+ICsKPiAr
CWlvY3RsKGk5MTUsIERSTV9JT0NUTF9JOTE1X0dFTV9DT05URVhUX0NSRUFURV9FWFQsICZjcmVh
dGUpOwo+ICsJcmV0dXJuIGNyZWF0ZS5jdHhfaWQ7Cj4gK30KPiArCj4gK3N0YXRpYyB2b2lkIF9f
c3VwZXJ2aXNvcl9jcmVhdGUoaW50IGk5MTUsCj4gKwkJCQljb25zdCBzdHJ1Y3QgaW50ZWxfZXhl
Y3V0aW9uX2VuZ2luZTIgKmUsCj4gKwkJCQlzdHJ1Y3Qgc3VwZXJ2aXNvciAqc3YpCj4gK3sKPiAr
CXN2LT5kZXZpY2UgPSBpOTE1Owo+ICsJc3YtPmNvbnRleHQgPSBfX3N1cGVydmlzb3JfY3JlYXRl
X2NvbnRleHQoaTkxNSwgZSk7Cj4gKwlpZ3RfcmVxdWlyZShzdi0+Y29udGV4dCk7Cj4gKwo+ICsJ
c3YtPmhhbmRsZSA9IGdlbV9jcmVhdGUoaTkxNSwgNDA5Nik7Cj4gKwlzdi0+bWFwID0gZ2VtX21t
YXBfX2RldmljZV9jb2hlcmVudChpOTE1LCBzdi0+aGFuZGxlLAo+ICsJCQkJCSAgICAwLCA0MDk2
LCBQUk9UX1dSSVRFKTsKPiArfQo+ICsKPiArc3RhdGljIHZvaWQgX19zdXBlcnZpc29yX3J1bihz
dHJ1Y3Qgc3VwZXJ2aXNvciAqc3YpCj4gK3sKPiArCXN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY19v
YmplY3QyIG9iaiA9IHsKPiArCQkuaGFuZGxlID0gc3YtPmhhbmRsZSwKPiArCQkuZmxhZ3MgPSBF
WEVDX09CSkVDVF9QSU5ORUQKPiArCX07Cj4gKwlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNidWZm
ZXIyIGV4ZWNidWYgPSB7Cj4gKwkJLmJ1ZmZlcnNfcHRyID0gdG9fdXNlcl9wb2ludGVyKCZvYmop
LAo+ICsJCS5idWZmZXJfY291bnQgPSAxLAo+ICsJCS5yc3ZkMSA9IHN2LT5jb250ZXh0LAo+ICsJ
fTsKPiArCXVpbnQzMl90ICpjcyA9IHN2LT5tYXA7Cj4gKwo+ICsJc3YtPnNlbWFwaG9yZSA9IGNz
ICsgMTAwMDsKPiArCj4gKwkqY3MrKyA9IE1JX1NFTUFQSE9SRV9XQUlUIHwKPiArCQlNSV9TRU1B
UEhPUkVfUE9MTCB8Cj4gKwkJTUlfU0VNQVBIT1JFX1NBRF9FUV9TREQgfAo+ICsJCSg0IC0gMik7
Cj4gKwkqY3MrKyA9IDE7Cj4gKwkqY3MrKyA9IG9mZnNldF9pbl9wYWdlKHN2LT5zZW1hcGhvcmUp
Owo+ICsJKmNzKysgPSAwOwo+ICsKPiArCXN2LT50ZXJtaW5hdGUgPSBjczsKPiArCSpjcysrID0g
TUlfU1RPUkVfRFdPUkRfSU1NOwo+ICsJKmNzKysgPSBvZmZzZXRfaW5fcGFnZShzdi0+c2VtYXBo
b3JlKTsKPiArCSpjcysrID0gMDsKPiArCSpjcysrID0gMDsKPiArCj4gKwkqY3MrKyA9IE1JX0JB
VENIX0JVRkZFUl9TVEFSVCB8IDEgPDwgOCB8IDE7Cj4gKwlzdi0+ZGlzcGF0Y2ggPSAodWludDY0
X3QgKiljczsgLyogdG8gYmUgZmlsbGVkIGluIGxhdGVyICovCj4gKwo+ICsJZ2VtX2V4ZWNidWYo
c3YtPmRldmljZSwgJmV4ZWNidWYpOwo+ICsJaWd0X2Fzc2VydF9lcV91NjQob2JqLm9mZnNldCwg
MCk7Cj4gK30KPiArCj4gK3N0YXRpYyB2b2lkIHN1cGVydmlzb3Jfb3BlbihpbnQgaTkxNSwKPiAr
CQkJICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9leGVjdXRpb25fZW5naW5lMiAqZSwKPiArCQkJICAg
IHN0cnVjdCBzdXBlcnZpc29yICpzdikKPiArewo+ICsJX19zdXBlcnZpc29yX2NyZWF0ZShpOTE1
LCBlLCBzdik7Cj4gKwlfX3N1cGVydmlzb3JfcnVuKHN2KTsKPiArfQo+ICsKPiArc3RhdGljIHZv
aWQgc3VwZXJ2aXNvcl9kaXNwYXRjaChzdHJ1Y3Qgc3VwZXJ2aXNvciAqc3YsIHVpbnQ2NF90IGFk
ZHIpCj4gK3sKPiArCVdSSVRFX09OQ0UoKnN2LT5kaXNwYXRjaCwgNjQgPDwgMTApOwoKYWRkciA8
PCAxMCA/CgotTWlrYQoKPiArCVdSSVRFX09OQ0UoKnN2LT5zZW1hcGhvcmUsIDEpOwo+ICsJX19z
eW5jX3N5bmNocm9uaXplKCk7Cj4gK30KPiArCj4gK3N0YXRpYyB2b2lkIGxlZ2FjeV9zdXBlcnZp
c29yX2JpbmQoc3RydWN0IHN1cGVydmlzb3IgKnN2LCB1aW50MzJfdCBoYW5kbGUsIHVpbnQ2NF90
IGFkZHIpCj4gK3sKPiArCXN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY19vYmplY3QyIG9ialsyXSA9
IHsKPiArCQl7Cj4gKwkJCS5oYW5kbGUgPSBoYW5kbGUsCj4gKwkJCS5vZmZzZXQgPSBhZGRyLAo+
ICsJCQkuZmxhZ3MgPSBFWEVDX09CSkVDVF9QSU5ORUQKPiArCQl9LAo+ICsJCXsKPiArCQkJLmhh
bmRsZSA9IGJhdGNoX2NyZWF0ZShzdi0+ZGV2aWNlKQo+ICsJCX0KPiArCX07Cj4gKwlzdHJ1Y3Qg
ZHJtX2k5MTVfZ2VtX2V4ZWNidWZmZXIyIGV4ZWNidWYgPSB7Cj4gKwkJLmJ1ZmZlcnNfcHRyID0g
dG9fdXNlcl9wb2ludGVyKG9iaiksCj4gKwkJLmJ1ZmZlcl9jb3VudCA9IEFSUkFZX1NJWkUob2Jq
KSwKPiArCQkucnN2ZDEgPSBzdi0+Y29udGV4dCwKPiArCQkuZmxhZ3MgPSAxLCAvKiBsZWdhY3kg
YmluZCBlbmdpbmUgKi8KPiArCX07Cj4gKwo+ICsJZ2VtX2V4ZWNidWYoc3YtPmRldmljZSwgJmV4
ZWNidWYpOwo+ICsJZ2VtX2Nsb3NlKHN2LT5kZXZpY2UsIG9ialsxXS5oYW5kbGUpOwo+ICsKPiAr
CWdlbV9zeW5jKHN2LT5kZXZpY2UsIGhhbmRsZSk7IC8qIG11c3Qgd2FpdCBmb3IgYXN5bmMgYmlu
ZHMgKi8KPiArfQo+ICsKPiArc3RhdGljIHZvaWQgZW1pdF9iYmVfY2hhaW4odWludDMyX3QgKmNz
KQo+ICt7Cj4gKwkqY3MrKyA9IE1JX0JBVENIX0JVRkZFUl9TVEFSVCB8IDEgPDwgOCB8IDE7Cj4g
KwkqY3MrKyA9IDA7Cj4gKwkqY3MrKyA9IDA7Cj4gK30KPiArCj4gK3N0YXRpYyB2b2lkIHN1cGVy
dmlzb3JfY2xvc2Uoc3RydWN0IHN1cGVydmlzb3IgKnN2KQo+ICt7Cj4gKwlXUklURV9PTkNFKCpz
di0+dGVybWluYXRlLCBNSV9CQVRDSF9CVUZGRVJfRU5EKTsKPiArCVdSSVRFX09OQ0UoKnN2LT5z
ZW1hcGhvcmUsIDEpOwo+ICsJX19zeW5jX3N5bmNocm9uaXplKCk7Cj4gKwltdW5tYXAoc3YtPm1h
cCwgNDA5Nik7Cj4gKwo+ICsJZ2VtX3N5bmMoc3YtPmRldmljZSwgc3YtPmhhbmRsZSk7Cj4gKwln
ZW1fY2xvc2Uoc3YtPmRldmljZSwgc3YtPmhhbmRsZSk7Cj4gKwo+ICsJZ2VtX2NvbnRleHRfZGVz
dHJveShzdi0+ZGV2aWNlLCBzdi0+Y29udGV4dCk7Cj4gK30KPiArCj4gK3N0YXRpYyBpbnQgcmVh
ZF90aW1lc3RhbXBfZnJlcXVlbmN5KGludCBpOTE1KQo+ICt7Cj4gKwlpbnQgdmFsdWUgPSAwOwo+
ICsJZHJtX2k5MTVfZ2V0cGFyYW1fdCBncCA9IHsKPiArCQkudmFsdWUgPSAmdmFsdWUsCj4gKwkJ
LnBhcmFtID0gSTkxNV9QQVJBTV9DU19USU1FU1RBTVBfRlJFUVVFTkNZLAo+ICsJfTsKPiArCWlv
Y3RsKGk5MTUsIERSTV9JT0NUTF9JOTE1X0dFVFBBUkFNLCAmZ3ApOwo+ICsJcmV0dXJuIHZhbHVl
Owo+ICt9Cj4gKwo+ICtzdGF0aWMgaW50IGNtcF91MzIoY29uc3Qgdm9pZCAqQSwgY29uc3Qgdm9p
ZCAqQikKPiArewo+ICsJY29uc3QgdWludDMyX3QgKmEgPSBBLCAqYiA9IEI7Cj4gKwo+ICsJaWYg
KCphIDwgKmIpCj4gKwkJcmV0dXJuIC0xOwo+ICsJZWxzZSBpZiAoKmEgPiAqYikKPiArCQlyZXR1
cm4gMTsKPiArCWVsc2UKPiArCQlyZXR1cm4gMDsKPiArfQo+ICsKPiArc3RhdGljIHVpbnQzMl90
IHRyaWZpbHRlcih1aW50MzJfdCAqeCkKPiArewo+ICsJcXNvcnQoeCwgNSwgc2l6ZW9mKCp4KSwg
Y21wX3UzMik7Cj4gKwlyZXR1cm4gKHhbMV0gKyAyICogeFsyXSArIHhbM10pIC8gNDsKPiArfQo+
ICsKPiArI2RlZmluZSBUSU1FU1RBTVAgKDB4MzU4KQo+ICtzdGF0aWMgdm9pZCBlbmRsZXNzX2Rp
c3BhdGNoKGludCBpOTE1LCBjb25zdCBzdHJ1Y3QgaW50ZWxfZXhlY3V0aW9uX2VuZ2luZTIgKmUp
Cj4gK3sKPiArCWNvbnN0IHVpbnQzMl90IG1taW9fYmFzZSA9IGdlbV9lbmdpbmVfbW1pb19iYXNl
KGk5MTUsIGUtPm5hbWUpOwo+ICsJY29uc3QgaW50IGNzX3RpbWVzdGFtcF9mcmVxID0gcmVhZF90
aW1lc3RhbXBfZnJlcXVlbmN5KGk5MTUpOwo+ICsJdWludDMyX3QgaGFuZGxlLCAqY3MsICptYXA7
Cj4gKwlzdHJ1Y3Qgc3VwZXJ2aXNvciBzdjsKPiArCXVpbnQzMl90IGxhdGVuY3lbNV07Cj4gKwl1
aW50MzJfdCAqdGltZXN0YW1wOwo+ICsJdWludDMyX3QgKnJlc3VsdDsKPiArCj4gKwkvKgo+ICsJ
ICogTGF1bmNoIGEgc3VwZXJ2aXNvciBiYi4KPiArCSAqIFdhaXQgb24gc2VtYXBob3JlLgo+ICsJ
ICogQmluZCBzZWNvbmQgYmIuCj4gKwkgKiBXcml0ZSBuZXcgYWRkcmVzcyBpbnRvIE1JX0JCX1NU
QVJUCj4gKwkgKiBSZWxlYXNlIHNlbWFwaG9yZS4KPiArCSAqCj4gKwkgKiBDaGVjayB3ZSBzZWUg
dGhlIHNlY29uZCBiYiBleGVjdXRlLgo+ICsJICoKPiArCSAqIENoYWluIE1JX0JCX1NUQVJUIHRv
IHN1cGVydmlzb3IgYmIgKHJlcGxhY2luZyBCQkUpLgo+ICsJICoKPiArCSAqIEZpbmFsIGRpc3Bh
dGNoIGlzIEJCRS4KPiArCSAqLwo+ICsKPiArCWlndF9yZXF1aXJlKGdlbV9jbGFzc19oYXNfbXV0
YWJsZV9zdWJtaXNzaW9uKGk5MTUsIGUtPmNsYXNzKSk7Cj4gKwo+ICsJaWd0X3JlcXVpcmUobW1p
b19iYXNlKTsKPiArCXRpbWVzdGFtcCA9ICh2b2lkICopaWd0X2dsb2JhbF9tbWlvICsgbW1pb19i
YXNlICsgVElNRVNUQU1QOwo+ICsKPiArCXN1cGVydmlzb3Jfb3BlbihpOTE1LCBlLCAmc3YpOwo+
ICsJcmVzdWx0ID0gc3Yuc2VtYXBob3JlICsgMTsKPiArCj4gKwloYW5kbGUgPSBnZW1fY3JlYXRl
KGk5MTUsIDQwOTYpOwo+ICsJY3MgPSBtYXAgPSBnZW1fbW1hcF9fZGV2aWNlX2NvaGVyZW50KGk5
MTUsIGhhbmRsZSwgMCwgNDA5NiwgUFJPVF9XUklURSk7Cj4gKwkqY3MrKyA9IDB4MjQgPDwgMjMg
fCAyOyAvKiBTUk0gKi8KPiArCSpjcysrID0gbW1pb19iYXNlICsgVElNRVNUQU1QOwo+ICsJKmNz
KysgPSBvZmZzZXRfaW5fcGFnZShyZXN1bHQpOwo+ICsJKmNzKysgPSAwOwo+ICsJZW1pdF9iYmVf
Y2hhaW4oY3MpOwo+ICsJbXVubWFwKG1hcCwgNDA5Nik7Cj4gKwlsZWdhY3lfc3VwZXJ2aXNvcl9i
aW5kKCZzdiwgaGFuZGxlLCA2NCA8PCAxMCk7Cj4gKwo+ICsJZm9yIChpbnQgcGFzcyA9IDA7IHBh
c3MgPCBBUlJBWV9TSVpFKGxhdGVuY3kpOyBwYXNzKyspIHsKPiArCQl1aW50MzJfdCBzdGFydCwg
ZW5kOwo+ICsKPiArCQlXUklURV9PTkNFKCpyZXN1bHQsIDApOwo+ICsJCXN0YXJ0ID0gUkVBRF9P
TkNFKCp0aW1lc3RhbXApOwo+ICsJCXN1cGVydmlzb3JfZGlzcGF0Y2goJnN2LCA2NCA8PCAxMCk7
Cj4gKwkJd2hpbGUgKCEoZW5kID0gUkVBRF9PTkNFKCpyZXN1bHQpKSkKPiArCQkJOwo+ICsKPiAr
CQlpZ3RfYXNzZXJ0X2VxKFJFQURfT05DRSgqc3Yuc2VtYXBob3JlKSwgMCk7Cj4gKwkJbGF0ZW5j
eVtwYXNzXSA9IGVuZCAtIHN0YXJ0Owo+ICsJfQo+ICsKPiArCWxhdGVuY3lbMF0gPSB0cmlmaWx0
ZXIobGF0ZW5jeSk7Cj4gKwlpZ3RfaW5mbygiRGlzcGF0Y2ggbGF0ZW5jeTogJXUgY3ljbGVzLCAl
LjBmbnNcbiIsCj4gKwkJIGxhdGVuY3lbMF0sIGxhdGVuY3lbMF0gKiAxZTkgLyBjc190aW1lc3Rh
bXBfZnJlcSk7Cj4gKwo+ICsJc3VwZXJ2aXNvcl9jbG9zZSgmc3YpOwo+ICsKPiArCWdlbV9jbG9z
ZShpOTE1LCBoYW5kbGUpOwo+ICt9Cj4gKwo+ICsjZGVmaW5lIHRlc3RfZWFjaF9lbmdpbmUoVCwg
aTkxNSwgZSkgXAo+ICsJaWd0X3N1YnRlc3Rfd2l0aF9keW5hbWljKFQpIF9fZm9yX2VhY2hfcGh5
c2ljYWxfZW5naW5lKGk5MTUsIGUpIFwKPiArCQlmb3JfZWFjaF9pZihnZW1fY2xhc3NfY2FuX3N0
b3JlX2R3b3JkKGk5MTUsIChlKS0+Y2xhc3MpKSBcCj4gKwkJCWlndF9keW5hbWljX2YoIiVzIiwg
KGUpLT5uYW1lKQo+ICtpZ3RfbWFpbgo+ICt7Cj4gKwljb25zdCBzdHJ1Y3QgaW50ZWxfZXhlY3V0
aW9uX2VuZ2luZTIgKmU7Cj4gKwlpbnQgaTkxNSA9IC0xOwo+ICsKPiArCWlndF9za2lwX29uX3Np
bXVsYXRpb24oKTsKPiArCj4gKwlpZ3RfZml4dHVyZSB7Cj4gKwkJaTkxNSA9IGRybV9vcGVuX2Ry
aXZlcihEUklWRVJfSU5URUwpOwo+ICsJCWlndF9yZXF1aXJlX2dlbShpOTE1KTsKPiArCX0KPiAr
Cj4gKwlpZ3Rfc3VidGVzdF9ncm91cCB7Cj4gKwkJc3RydWN0IGludGVsX21taW9fZGF0YSBtbWlv
Owo+ICsKPiArCQlpZ3RfZml4dHVyZSB7Cj4gKwkJCWlndF9yZXF1aXJlKGdlbV9zY2hlZHVsZXJf
ZW5hYmxlZChpOTE1KSk7Cj4gKwkJCWlndF9yZXF1aXJlKGdlbV9zY2hlZHVsZXJfaGFzX3ByZWVt
cHRpb24oaTkxNSkpOwo+ICsKPiArCQkJaW50ZWxfcmVnaXN0ZXJfYWNjZXNzX2luaXQoJm1taW8s
Cj4gKwkJCQkJCSAgIGludGVsX2dldF9wY2lfZGV2aWNlKCksCj4gKwkJCQkJCSAgIGZhbHNlLCBp
OTE1KTsKPiArCQl9Cj4gKwo+ICsJCXRlc3RfZWFjaF9lbmdpbmUoImRpc3BhdGNoIiwgaTkxNSwg
ZSkKPiArCQkJCWVuZGxlc3NfZGlzcGF0Y2goaTkxNSwgZSk7Cj4gKwo+ICsJCWlndF9maXh0dXJl
Cj4gKwkJCWludGVsX3JlZ2lzdGVyX2FjY2Vzc19maW5pKCZtbWlvKTsKPiArCX0KPiArfQo+IGRp
ZmYgLS1naXQgYS90ZXN0cy9tZXNvbi5idWlsZCBiL3Rlc3RzL21lc29uLmJ1aWxkCj4gaW5kZXgg
ODhlNDg3NWI2Li45MzEyYjY5NDQgMTAwNjQ0Cj4gLS0tIGEvdGVzdHMvbWVzb24uYnVpbGQKPiAr
KysgYi90ZXN0cy9tZXNvbi5idWlsZAo+IEBAIC0xNDAsNiArMTQwLDcgQEAgaTkxNV9wcm9ncyA9
IFsKPiAgCSdnZW1fZXhlY19iaWcnLAo+ICAJJ2dlbV9leGVjX2NhcHR1cmUnLAo+ICAJJ2dlbV9l
eGVjX2NyZWF0ZScsCj4gKwknZ2VtX2V4ZWNfZW5kbGVzcycsCj4gIAknZ2VtX2V4ZWNfZmVuY2Un
LAo+ICAJJ2dlbV9leGVjX2ZsdXNoJywKPiAgCSdnZW1fZXhlY19ndHRmaWxsJywKPiAtLSAKPiAy
LjI2LjIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
