Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D4398F58CF
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 21:49:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D37D6FA77;
	Fri,  8 Nov 2019 20:49:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C34E06FA73;
 Fri,  8 Nov 2019 20:49:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19134342-1500050 
 for multiple; Fri, 08 Nov 2019 20:49:36 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Nov 2019 20:49:32 +0000
Message-Id: <20191108204932.6197-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191108204932.6197-1-chris@chris-wilson.co.uk>
References: <20191108204932.6197-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 3/3] i915/gem_exec_scheduler: Exercise
 priority inversion from resource contention
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T25lIG9mIHRoZSBoYXJkZXN0IHByaW9yaXR5IGludmVyc2lvbiB0YXNrcyB0byBib3RoIGhhbmRs
ZSBhbmQgdG8Kc2ltdWxhdGUgaW4gdGVzdGluZyBpcyBpbnZlcnNpb24gZHVlIHRvIHJlc291cmNl
IGNvbnRlbnRpb24uIFRoZQpjaGFsbGVuZ2UgaXMgdGhhdCBhIGhpZ2ggcHJpb3JpdHkgY29udGV4
dCBzaG91bGQgbmV2ZXIgYmUgYmxvY2tlZCBieSBhCmxvdyBwcmlvcml0eSBjb250ZXh0LCBldmVu
IGlmIGJvdGggYXJlIHN0YXJ2aW5nIGZvciByZXNvdXJjZXMgLS0KaWRlYWxseSwgYXQgbGVhc3Qg
Zm9yIHNvbWUgUlQgT1NlcywgdGhlIGhpZ2hlciBwcmlvcml0eSBjb250ZXh0IGhhcwpmaXJzdCBw
aWNrIG9mIHRoZSBtZWFncmUgcmVzb3VyY2VzIHNvIHRoYXQgaXQgY2FuIGJlIGV4ZWN1dGVkIHdp
dGgKbWluaW11bSBsYXRlbmN5LgoKdXNlcmZhdWx0ZmQgYWxsb3dzIHVzIHRvIGhhbmRsZSBhIHBh
Z2UgZmF1bHQgaW4gdXNlcnNwYWNlLCBhbmQgc28KYXJiaXRyYXJ5IGltcG9zZSBhIGRlbGF5IG9u
IHRoZSBmYXVsdCBoYW5kbGVyLCBjcmVhdGluZyBhIHNpdHVhdGlvbgp3aGVyZSBhIGxvdyBwcmlv
cml0eSBjb250ZXh0IGlzIGJsb2NrZWQgd2FpdGluZyBmb3IgdGhlIGZhdWx0LiBUaGlzCmJsb2Nr
ZWQgY29udGV4dCBzaG91bGQgbm90IHByZXZlbnQgYSBoaWdoIHByaW9yaXR5IGNvbnRleHQgZnJv
bSBiZWluZwpleGVjdXRlZC4gV2hpbGUgdGhlIHVzZXJmYXVsdCB0cmllcyB0byBlbXVsYXRlIGEg
c2xvdyBmYXVsdCAoZS5nLiBmcm9tIGEKZmFpbGluZyBzd2FwIGRldmljZSksIGl0IGlzIHVuZm9y
dHVuYXRlbHkgbGltaXRlZCB0byBhIHNpbmdsZSBvYmplY3QKdHlwZTogdGhlIHVzZXJwdHIuIEhv
cGVmdWxseSwgd2Ugd2lsbCBmaW5kIG90aGVyIHdheXMgdG8gaW1wb3NlIG90aGVyCnN0YXJ2YXRp
b24gY29uZGl0aW9ucyBvbiBnbG9iYWwgcmVzb3VyY2VzLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBKb29uYXMgTGFodGluZW4gPGpv
b25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+CkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtv
LnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIHRlc3RzL2k5MTUvZ2VtX2V4ZWNfc2NoZWR1bGUuYyB8
IDE1NSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAx
NTUgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfc2NoZWR1
bGUuYyBiL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfc2NoZWR1bGUuYwppbmRleCA4NDU4MWJmZmUuLjBh
ZjdiNGM2ZCAxMDA2NDQKLS0tIGEvdGVzdHMvaTkxNS9nZW1fZXhlY19zY2hlZHVsZS5jCisrKyBi
L3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfc2NoZWR1bGUuYwpAQCAtMjMsMTAgKzIzLDE2IEBACiAKICNp
bmNsdWRlICJjb25maWcuaCIKIAorI2luY2x1ZGUgPGxpbnV4L3VzZXJmYXVsdGZkLmg+CisKKyNp
bmNsdWRlIDxwdGhyZWFkLmg+CiAjaW5jbHVkZSA8c3lzL3BvbGwuaD4KICNpbmNsdWRlIDxzeXMv
aW9jdGwuaD4KKyNpbmNsdWRlIDxzeXMvbW1hbi5oPgorI2luY2x1ZGUgPHN5cy9zeXNjYWxsLmg+
CiAjaW5jbHVkZSA8c2NoZWQuaD4KICNpbmNsdWRlIDxzaWduYWwuaD4KKyNpbmNsdWRlIDx1bmlz
dGQuaD4KIAogI2luY2x1ZGUgImlndC5oIgogI2luY2x1ZGUgImlndF9yYW5kLmgiCkBAIC0xNjI1
LDYgKzE2MzEsMTUyIEBAIHN0YXRpYyB2b2lkIHRlc3RfcGlfcmluZ2Z1bGwoaW50IGZkLCB1bnNp
Z25lZCBpbnQgZW5naW5lLCB1bnNpZ25lZCBpbnQgZmxhZ3MpCiAJbXVubWFwKHJlc3VsdCwgNDA5
Nik7CiB9CiAKK3N0YXRpYyBpbnQgdXNlcmZhdWx0ZmQoaW50IGZsYWdzKQoreworCXJldHVybiBz
eXNjYWxsKFNZU191c2VyZmF1bHRmZCwgZmxhZ3MpOworfQorCitzdHJ1Y3QgdWZkX3RocmVhZCB7
CisJcHRocmVhZF90IHRocmVhZDsKKwl1aW50MzJfdCBiYXRjaDsKKwl1aW50MzJfdCAqcGFnZTsK
Kwl1bnNpZ25lZCBpbnQgZW5naW5lOworCWludCBpOTE1OworfTsKKworc3RhdGljIHVpbnQzMl90
IGNyZWF0ZV91c2VycHRyKGludCBpOTE1LCB2b2lkICpwYWdlKQoreworCXVpbnQzMl90IGhhbmRs
ZTsKKworCWdlbV91c2VycHRyKGk5MTUsIHBhZ2UsIDQwOTYsIDAsIDAsICZoYW5kbGUpOworCXJl
dHVybiBoYW5kbGU7Cit9CisKK3N0YXRpYyB2b2lkICp1ZmRfdGhyZWFkKHZvaWQgKmFyZykKK3sK
KwlzdHJ1Y3QgdWZkX3RocmVhZCAqdCA9IGFyZzsKKwlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNf
b2JqZWN0MiBvYmpbMl0gPSB7CisJCXsgLmhhbmRsZSA9IGNyZWF0ZV91c2VycHRyKHQtPmk5MTUs
IHQtPnBhZ2UpIH0sCisJCXsgLmhhbmRsZSA9IHQtPmJhdGNoIH0sCisJfTsKKwlzdHJ1Y3QgZHJt
X2k5MTVfZ2VtX2V4ZWNidWZmZXIyIGViID0geworCQkuYnVmZmVyc19wdHIgPSB0b191c2VyX3Bv
aW50ZXIob2JqKSwKKwkJLmJ1ZmZlcl9jb3VudCA9IEFSUkFZX1NJWkUob2JqKSwKKwkJLmZsYWdz
ID0gdC0+ZW5naW5lLAorCQkucnN2ZDEgPSBnZW1fY29udGV4dF9jcmVhdGUodC0+aTkxNSksCisJ
fTsKKwlnZW1fY29udGV4dF9zZXRfcHJpb3JpdHkodC0+aTkxNSwgZWIucnN2ZDEsIE1JTl9QUklP
KTsKKworCWlndF9kZWJ1Zygic3VibWl0dGluZyBmYXVsdFxuIik7CisJZ2VtX2V4ZWNidWYodC0+
aTkxNSwgJmViKTsKKwlnZW1fc3luYyh0LT5pOTE1LCBvYmpbMF0uaGFuZGxlKTsKKwlnZW1fY2xv
c2UodC0+aTkxNSwgb2JqWzBdLmhhbmRsZSk7CisKKwlnZW1fY29udGV4dF9kZXN0cm95KHQtPmk5
MTUsIGViLnJzdmQxKTsKKworCXQtPmk5MTUgPSAtMTsKKwlyZXR1cm4gTlVMTDsKK30KKworc3Rh
dGljIHZvaWQgdGVzdF9waV91c2VyZmF1bHQoaW50IGk5MTUsIHVuc2lnbmVkIGludCBlbmdpbmUp
Cit7CisJc3RydWN0IHVmZmRpb19hcGkgYXBpID0geyAuYXBpID0gVUZGRF9BUEkgfTsKKwlzdHJ1
Y3QgdWZmZGlvX3JlZ2lzdGVyIHJlZzsKKwlzdHJ1Y3QgdWZmZGlvX2NvcHkgY29weTsKKwlzdHJ1
Y3QgdWZmZF9tc2cgbXNnOworCXN0cnVjdCB1ZmRfdGhyZWFkIHQ7CisJY2hhciBwb2lzb25bNDA5
Nl07CisJaW50IHVmZDsKKworCS8qCisJICogUmVzb3VyY2UgY29udGVudGlvbiBjYW4gZWFzaWx5
IGxlYWQgdG8gcHJpb3JpdHkgaW52ZXJzaW9uIHByb2JsZW1zLAorCSAqIHRoYXQgd2Ugd2lzaCB0
byBhdm9pZC4gSGVyZSwgd2Ugc2ltdWxhdGUgb25lIHNpbXBsZSBmb3JtIG9mIHJlc291cmNlCisJ
ICogc3RhcnZhdGlvbiBieSB1c2luZyBhbiBhcmJpdHJhcnkgc2xvdyB1c2Vyc3BhY2UgZmF1bHQg
aGFuZGxlciB0byBjYXVzZQorCSAqIHRoZSBsb3cgcHJpb3JpdHkgY29udGV4dCB0byBibG9jayB3
YWl0aW5nIGZvciBpdHMgcmVzb3VyY2UuIFdoaWxlIGl0CisJICogaXMgYmxvY2tlZCwgaXQgc2hv
dWxkIG5vdCBwcmV2ZW50IGEgaGlnaGVyIHByaW9yaXR5IGNvbnRleHQgZnJvbQorCSAqIGV4ZWN1
dGluZy4KKwkgKgorCSAqIFRoaXMgaXMgb25seSBhIHZlcnkgc2ltcGxlIHNjZW5hcmlvLCBpbiBt
b3JlIGdlbmVyYWwgdGVzdHMgd2Ugd2lsbAorCSAqIG5lZWQgdG8gc2ltdWxhdGUgY29udGVudGlv
biBvbiB0aGUgc2hhcmVkIHJlc291cmNlIHN1Y2ggdGhhdCBib3RoCisJICogbG93IGFuZCBoaWdo
IHByaW9yaXR5IGNvbnRleHRzIGFyZSBzdGFydmluZyBhbmQgbXVzdCBmaWdodCBvdmVyCisJICog
dGhlIG1lYWdyZSByZXNvdXJjZXMuIE9uZSBzdGVwIGF0IGEgdGltZS4KKwkgKi8KKworCXVmZCA9
IHVzZXJmYXVsdGZkKDApOworCWlndF9yZXF1aXJlX2YodWZkICE9IC0xLCAia2VybmVsIHN1cHBv
cnQgZm9yIHVzZXJmYXVsdGZkXG4iKTsKKwlpZ3RfcmVxdWlyZV9mKGlvY3RsKHVmZCwgVUZGRElP
X0FQSSwgJmFwaSkgPT0gMCAmJiBhcGkuYXBpID09IFVGRkRfQVBJLAorCQkgICAgICAidXNlcmZh
dWx0ZmQgQVBJIHYlbGxkOiVsbGRcbiIsIFVGRkRfQVBJLCBhcGkuYXBpKTsKKworCXQuaTkxNSA9
IGk5MTU7CisJdC5lbmdpbmUgPSBlbmdpbmU7CisKKwl0LnBhZ2UgPSBtbWFwKE5VTEwsIDQwOTYs
IFBST1RfV1JJVEUsIE1BUF9TSEFSRUQgfCBNQVBfQU5PTiwgMCwgMCk7CisJaWd0X2Fzc2VydCh0
LnBhZ2UgIT0gTUFQX0ZBSUxFRCk7CisKKwl0LmJhdGNoID0gZ2VtX2NyZWF0ZShpOTE1LCA0MDk2
KTsKKwltZW1zZXQocG9pc29uLCAweGZmLCBzaXplb2YocG9pc29uKSk7CisJZ2VtX3dyaXRlKGk5
MTUsIHQuYmF0Y2gsIDAsIHBvaXNvbiwgNDA5Nik7CisKKwkvKiBSZWdpc3RlciBvdXIgZmF1bHQg
aGFuZGxlciBmb3IgdC5wYWdlICovCisJbWVtc2V0KCZyZWcsIDAsIHNpemVvZihyZWcpKTsKKwly
ZWcubW9kZSA9IFVGRkRJT19SRUdJU1RFUl9NT0RFX01JU1NJTkc7CisJcmVnLnJhbmdlLnN0YXJ0
ID0gdG9fdXNlcl9wb2ludGVyKHQucGFnZSk7CisJcmVnLnJhbmdlLmxlbiA9IDQwOTY7CisJZG9f
aW9jdGwodWZkLCBVRkZESU9fUkVHSVNURVIsICZyZWcpOworCWlndF9hc3NlcnQocmVnLmlvY3Rs
cyA9PSBVRkZEX0FQSV9SQU5HRV9JT0NUTFMpOworCisJLyogS2ljayBvZmYgdGhlIGxvdyBwcmlv
cml0eSBzdWJtaXNzaW9uICovCisJaWd0X2Fzc2VydChwdGhyZWFkX2NyZWF0ZSgmdC50aHJlYWQs
IE5VTEwsIHVmZF90aHJlYWQsICZ0KSA9PSAwKTsKKworCS8qIFdhaXQgdW50aWwgdGhlIGxvdyBw
cmlvcml0eSB0aHJlYWQgaXMgYmxvY2tlZCBvbiBhIGZhdWx0ICovCisJaWd0X2Fzc2VydF9lcShy
ZWFkKHVmZCwgJm1zZywgc2l6ZW9mKG1zZykpLCBzaXplb2YobXNnKSk7CisJaWd0X2Fzc2VydF9l
cShtc2cuZXZlbnQsIFVGRkRfRVZFTlRfUEFHRUZBVUxUKTsKKwlpZ3RfYXNzZXJ0KGZyb21fdXNl
cl9wb2ludGVyKG1zZy5hcmcucGFnZWZhdWx0LmFkZHJlc3MpID09IHQucGFnZSk7CisKKwkvKiBX
aGlsZSB0aGUgbG93IHByaW9yaXR5IGNvbnRleHQgaXMgYmxvY2tlZDsgZXhlY3V0ZSBhIHZpcCAq
LworCWlmICgxKSB7CisJCWNvbnN0IHVpbnQzMl90IGJiZSA9IE1JX0JBVENIX0JVRkZFUl9FTkQ7
CisJCXN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY19vYmplY3QyIG9iaiA9IHsKKwkJCS5oYW5kbGUg
PSB0LmJhdGNoLAorCQl9OworCQlzdHJ1Y3QgcG9sbGZkIHBmZDsKKwkJc3RydWN0IGRybV9pOTE1
X2dlbV9leGVjYnVmZmVyMiBlYiA9IHsKKwkJCS5idWZmZXJzX3B0ciA9IHRvX3VzZXJfcG9pbnRl
cigmb2JqKSwKKwkJCS5idWZmZXJfY291bnQgPSAxLAorCQkJLmZsYWdzID0gZW5naW5lIHwgSTkx
NV9FWEVDX0ZFTkNFX09VVCwKKwkJCS5yc3ZkMSA9IGdlbV9jb250ZXh0X2NyZWF0ZShpOTE1KSwK
KwkJfTsKKwkJZ2VtX2NvbnRleHRfc2V0X3ByaW9yaXR5KGk5MTUsIGViLnJzdmQxLCBNQVhfUFJJ
Tyk7CisJCWdlbV93cml0ZShpOTE1LCBvYmouaGFuZGxlLCAwLCAmYmJlLCBzaXplb2YoYmJlKSk7
CisJCWdlbV9leGVjYnVmX3dyKGk5MTUsICZlYik7CisKKwkJbWVtc2V0KCZwZmQsIDAsIHNpemVv
ZihwZmQpKTsKKwkJcGZkLmZkID0gZWIucnN2ZDIgPj4gMzI7CisJCXBmZC5ldmVudHMgPSBQT0xM
SU47CisJCXBvbGwoJnBmZCwgMSwgLTEpOworCQlpZ3RfYXNzZXJ0X2VxKHN5bmNfZmVuY2Vfc3Rh
dHVzKHBmZC5mZCksIDEpOworCQljbG9zZShwZmQuZmQpOworCisJCWdlbV9jb250ZXh0X2Rlc3Ry
b3koaTkxNSwgZWIucnN2ZDEpOworCX0KKworCS8qIENvbmZpcm0gdGhlIGxvdyBwcmlvcml0eSBj
b250ZXh0IGlzIHN0aWxsIHdhaXRpbmcgKi8KKwlpZ3RfYXNzZXJ0X2VxKHQuaTkxNSwgaTkxNSk7
CisKKwkvKiBTZXJ2aWNlIHRoZSBmYXVsdDsgcmVsZWFzaW5nIHRoZSBsb3cgcHJpb3JpdHkgY29u
dGV4dCAqLworCW1lbXNldCgmY29weSwgMCwgc2l6ZW9mKGNvcHkpKTsKKwljb3B5LmRzdCA9IG1z
Zy5hcmcucGFnZWZhdWx0LmFkZHJlc3M7CisJY29weS5zcmMgPSB0b191c2VyX3BvaW50ZXIobWVt
c2V0KHBvaXNvbiwgMHhjNSwgc2l6ZW9mKHBvaXNvbikpKTsKKwljb3B5LmxlbiA9IDQwOTY7CisJ
ZG9faW9jdGwodWZkLCBVRkZESU9fQ09QWSwgJmNvcHkpOworCisJcHRocmVhZF9qb2luKHQudGhy
ZWFkLCBOVUxMKTsKKworCWdlbV9jbG9zZShpOTE1LCB0LmJhdGNoKTsKKwltdW5tYXAodC5wYWdl
LCA0MDk2KTsKKwljbG9zZSh1ZmQpOworfQorCiBzdGF0aWMgdm9pZCBtZWFzdXJlX3NlbWFwaG9y
ZV9wb3dlcihpbnQgaTkxNSkKIHsKIAlzdHJ1Y3QgcmFwbCBncHUsIHBrZzsKQEAgLTE4NjQsNiAr
MjAxNiw5IEBAIGlndF9tYWluCiAKIAkJCQlpZ3Rfc3VidGVzdF9mKCJwaS1jb21tb24tJXMiLCBl
LT5uYW1lKQogCQkJCQl0ZXN0X3BpX3JpbmdmdWxsKGZkLCBlYl9yaW5nKGUpLCBTSEFSRUQpOwor
CisJCQkJaWd0X3N1YnRlc3RfZigicGktdXNlcmZhdWx0LSVzIiwgZS0+bmFtZSkKKwkJCQkJdGVz
dF9waV91c2VyZmF1bHQoZmQsIGViX3JpbmcoZSkpOwogCQkJfQogCQl9CiAJfQotLSAKMi4yNC4w
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
