Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D224B4D007
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 16:08:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B60E6E586;
	Thu, 20 Jun 2019 14:08:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF4486E586
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2019 14:08:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16967338-1500050 for multiple; Thu, 20 Jun 2019 15:08:23 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87v9x05pbn.fsf@gaia.fi.intel.com>
References: <20190620070559.30076-1-chris@chris-wilson.co.uk>
 <20190620070559.30076-3-chris@chris-wilson.co.uk>
 <87v9x05pbn.fsf@gaia.fi.intel.com>
Message-ID: <156103970515.664.11214388171288612871@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 20 Jun 2019 15:08:25 +0100
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/execlists: Force preemption
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA2LTIwIDE1OjAwOjQ0KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBJZiB0aGUgcHJlZW1w
dGVkIGNvbnRleHQgdGFrZXMgdG9vIGxvbmcgdG8gcmVsaW5xdWlzaCBjb250cm9sLCBlLmcuIGl0
Cj4gPiBpcyBzdHVjayBpbnNpZGUgYSBzaGFkZXIgd2l0aCBhcmJpdHJhdGlvbiBkaXNhYmxlZCwg
ZXZpY3QgdGhhdCBjb250ZXh0Cj4gPiB3aXRoIGFuIGVuZ2luZSByZXNldC4gVGhpcyBlbnN1cmVz
IHRoYXQgcHJlZW1wdGlvbnMgYXJlIHJlYXNvbmFibHkKPiA+IHJlc3BvbnNpdmUsIHByb3ZpZGlu
ZyBhIHRpZ2h0ZXIgUW9TIGZvciB0aGUgbW9yZSBpbXBvcnRhbnQgY29udGV4dCBhdAo+ID4gdGhl
IGNvc3Qgb2YgZmxhZ2dpbmcgdW5yZXNwb25zaXZlIGNvbnRleHRzIG1vcmUgZnJlcXVlbnRseSAo
aS5lLiBpbnN0ZWFkCj4gPiBvZiB1c2luZyBhbiB+MTBzIGhhbmdjaGVjaywgd2Ugbm93IGV2aWN0
IGF0IH4xMG1zKS4gIFRoZSBjaGFsbGVuZ2Ugb2YKPiA+IGxpZXMgaW4gcGlja2luZyBhIHRpbWVv
dXQgdGhhdCBjYW4gYmUgcmVhc29uYWJseSBzZXJ2aWNlZCBieSBIVyBmb3IKPiA+IHR5cGljYWwg
d29ya2xvYWRzLCBiYWxhbmNpbmcgdGhlIGV4aXN0aW5nIGNsaWVudHMgYWdhaW5zdCB0aGUgbmVl
ZHMgZm9yCj4gPiByZXNwb25zaXZlbmVzcy4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IENjOiBNaWthIEt1b3BwYWxhIDxt
aWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KPiA+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZy
dGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
S2NvbmZpZy5wcm9maWxlIHwgMTIgKysrKysrCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfbHJjLmMgIHwgNTYgKysrKysrKysrKysrKysrKysrKysrKysrKystLQo+ID4gIDIgZmls
ZXMgY2hhbmdlZCwgNjUgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5wcm9maWxlIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvS2NvbmZpZy5wcm9maWxlCj4gPiBpbmRleCA0OGRmODg4OWE4OGEuLjgyNzNk
M2JhYWZlNCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L0tjb25maWcucHJv
ZmlsZQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5wcm9maWxlCj4gPiBA
QCAtMjUsMyArMjUsMTUgQEAgY29uZmlnIERSTV9JOTE1X1NQSU5fUkVRVUVTVAo+ID4gICAgICAg
ICBNYXkgYmUgMCB0byBkaXNhYmxlIHRoZSBpbml0aWFsIHNwaW4uIEluIHByYWN0aWNlLCB3ZSBl
c3RpbWF0ZQo+ID4gICAgICAgICB0aGUgY29zdCBvZiBlbmFibGluZyB0aGUgaW50ZXJydXB0IChp
ZiBjdXJyZW50bHkgZGlzYWJsZWQpIHRvIGJlCj4gPiAgICAgICAgIGEgZmV3IG1pY3Jvc2Vjb25k
cy4KPiA+ICsKPiA+ICtjb25maWcgRFJNX0k5MTVfUFJFRU1QVF9USU1FT1VUCj4gPiArICAgICBp
bnQgIlByZWVtcHQgdGltZW91dCAobXMpIgo+ID4gKyAgICAgZGVmYXVsdCAxMCAjIG1pbGxpc2Vj
b25kcwo+ID4gKyAgICAgaGVscAo+ID4gKyAgICAgICBIb3cgbG9uZyB0byB3YWl0IChpbiBtaWxs
aXNlY29uZHMpIGZvciBhIHByZWVtcHRpb24gZXZlbnQgdG8gb2NjdXIKPiA+ICsgICAgICAgd2hl
biBzdWJtaXR0aW5nIGEgbmV3IGNvbnRleHQgdmlhIGV4ZWNsaXN0cy4gSWYgdGhlIGN1cnJlbnQg
Y29udGV4dAo+ID4gKyAgICAgICBkb2VzIG5vdCBoaXQgYW4gYXJiaXRyYXRpb24gcG9pbnQgYW5k
IHlpZWxkIHRvIEhXIGJlZm9yZSB0aGUgdGltZXIKPiA+ICsgICAgICAgZXhwaXJlcywgdGhlIEhX
IHdpbGwgYmUgcmVzZXQgdG8gYWxsb3cgdGhlIG1vcmUgaW1wb3J0YW50IGNvbnRleHQKPiA+ICsg
ICAgICAgdG8gZXhlY3V0ZS4KPiA+ICsKPiA+ICsgICAgICAgTWF5IGJlIDAgdG8gZGlzYWJsZSB0
aGUgdGltZW91dC4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gPiBpbmRleCBm
Y2E3OWFkYjRhYTMuLmU4ZDdkZWJhM2U0OSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9scmMuYwo+ID4gQEAgLTg4OSw2ICs4ODksMTUgQEAgZW5hYmxlX3RpbWVzbGljZShzdHJ1
Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4gPiAgICAgICByZXR1cm4gbGFzdCAmJiBuZWVk
X3RpbWVzbGljZShlbmdpbmUsIGxhc3QpOwo+ID4gIH0KPiA+ICAKPiA+ICtzdGF0aWMgdW5zaWdu
ZWQgbG9uZyBwcmVlbXB0X2V4cGlyZXModm9pZCkKPiA+ICt7Cj4gPiArICAgICB1bnNpZ25lZCBs
b25nIHRpbWVvdXQgPQo+IAo+IGNvdWxkIGJlIGNvbnN0Cj4gCj4gPiArICAgICAgICAgICAgIG1z
ZWNzX3RvX2ppZmZpZXNfdGltZW91dChDT05GSUdfRFJNX0k5MTVfUFJFRU1QVF9USU1FT1VUKTsK
PiA+ICsKPiA+ICsgICAgIGJhcnJpZXIoKTsKPiAKPiBUaGlzIG5lZWRzIGEgY29tbWVudC4gSSBm
YWlsIHRvIGNvbm5lY3QgdGhlIGRvdHMgYXMgamlmZmllcwo+IGlzIHZvbGF0aWxlIGJ5IG5hdHVy
ZS4KCkl0J3MganVzdCBjcm9zc2luZyB0aGUgJ3QnIGFuZCBkb3R0aW5nIHRoZSAnaScuIFdoYXQg
SSB3YXMgdGhpbmtpbmcgd2FzCndlIGRvbid0IHdhbnQgdGhlIGNvbXBpbGVyIHRvIGxvYWQgamlm
ZmllcyB0aGVuIGNvbXB1dGUgdGhlIHRpbWVvdXQuIFNvCmJhcnJpZXIoKSB0aGVyZSBzYXlzIHRo
YXQgdGltZW91dCBpcyBhbHdheXMgY29tcHV0ZWQgZmlyc3QuIE5vdyBzaW5jZSBpdAppcyBsaWtl
bHkgdG8gYmUgYSBmdW5jdGlvbiBjYWxsIChidXQgSSdtIHRyeWluZyB0byBmaW5kIGEgd2F5IHRv
IGxldCBpdApwcmVjb21wdXRlIHRoZSBjb25zdGFudCksIGl0IHdpbGwgYWx3YXlzIGJlIHByZWNv
bXB1dGVkLCBidXQgd2hvIHRydXN0cwphIGNvbXBpbGVyLgoKPiA+ICsgICAgIHJldHVybiBqaWZm
aWVzICsgdGltZW91dDsKPiA+ICt9Cj4gPiArCj4gPiAgc3RhdGljIHZvaWQgZXhlY2xpc3RzX2Rl
cXVldWUoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ID4gIHsKPiA+ICAgICAgIHN0
cnVjdCBpbnRlbF9lbmdpbmVfZXhlY2xpc3RzICogY29uc3QgZXhlY2xpc3RzID0gJmVuZ2luZS0+
ZXhlY2xpc3RzOwo+ID4gQEAgLTEyMjAsNiArMTIyOSw5IEBAIHN0YXRpYyB2b2lkIGV4ZWNsaXN0
c19kZXF1ZXVlKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKPiA+ICAgICAgICAgICAg
ICAgKnBvcnQgPSBleGVjbGlzdHNfc2NoZWR1bGVfaW4obGFzdCwgcG9ydCAtIGV4ZWNsaXN0cy0+
cGVuZGluZyk7Cj4gPiAgICAgICAgICAgICAgIG1lbXNldChwb3J0ICsgMSwgMCwgKGxhc3RfcG9y
dCAtIHBvcnQpICogc2l6ZW9mKCpwb3J0KSk7Cj4gPiAgICAgICAgICAgICAgIGV4ZWNsaXN0c19z
dWJtaXRfcG9ydHMoZW5naW5lKTsKPiA+ICsKPiA+ICsgICAgICAgICAgICAgaWYgKENPTkZJR19E
Uk1fSTkxNV9QUkVFTVBUX1RJTUVPVVQpCj4gPiArICAgICAgICAgICAgICAgICAgICAgbW9kX3Rp
bWVyKCZleGVjbGlzdHMtPnRpbWVyLCBwcmVlbXB0X2V4cGlyZXMoKSk7Cj4gPiAgICAgICB9Cj4g
PiAgfQo+ID4gIAo+ID4gQEAgLTEzNzYsMTMgKzEzODgsNDggQEAgc3RhdGljIHZvaWQgcHJvY2Vz
c19jc2Ioc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ID4gICAgICAgaW52YWxpZGF0
ZV9jc2JfZW50cmllcygmYnVmWzBdLCAmYnVmW251bV9lbnRyaWVzIC0gMV0pOwo+ID4gIH0KPiA+
ICAKPiA+IC1zdGF0aWMgdm9pZCBfX2V4ZWNsaXN0c19zdWJtaXNzaW9uX3Rhc2tsZXQoc3RydWN0
IGludGVsX2VuZ2luZV9jcyAqY29uc3QgZW5naW5lKQo+ID4gK3N0YXRpYyBib29sIF9fZXhlY2xp
c3RzX3N1Ym1pc3Npb25fdGFza2xldChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICpjb25zdCBlbmdp
bmUpCj4gPiAgewo+ID4gICAgICAgbG9ja2RlcF9hc3NlcnRfaGVsZCgmZW5naW5lLT5hY3RpdmUu
bG9jayk7Cj4gPiAgCj4gPiAgICAgICBwcm9jZXNzX2NzYihlbmdpbmUpOwo+ID4gLSAgICAgaWYg
KCFlbmdpbmUtPmV4ZWNsaXN0cy5wZW5kaW5nWzBdKQo+ID4gKyAgICAgaWYgKCFlbmdpbmUtPmV4
ZWNsaXN0cy5wZW5kaW5nWzBdKSB7Cj4gPiAgICAgICAgICAgICAgIGV4ZWNsaXN0c19kZXF1ZXVl
KGVuZ2luZSk7Cj4gPiArICAgICAgICAgICAgIHJldHVybiB0cnVlOwo+ID4gKyAgICAgfQo+ID4g
Kwo+ID4gKyAgICAgcmV0dXJuIGZhbHNlOwo+ID4gK30KPiA+ICsKPiA+ICtzdGF0aWMgdm9pZCBw
cmVlbXB0X3Jlc2V0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKPiA+ICt7Cj4gPiAr
ICAgICBjb25zdCB1bnNpZ25lZCBpbnQgYml0ID0gSTkxNV9SRVNFVF9FTkdJTkUgKyBlbmdpbmUt
PmlkOwo+ID4gKyAgICAgdW5zaWduZWQgbG9uZyAqbG9jayA9ICZlbmdpbmUtPmk5MTUtPmdwdV9l
cnJvci5mbGFnczsKPiA+ICsKPiA+ICsgICAgIGlmICh0ZXN0X2FuZF9zZXRfYml0KGJpdCwgbG9j
aykpCj4gPiArICAgICAgICAgICAgIHJldHVybjsKPiA+ICsKPiA+ICsgICAgIHRhc2tsZXRfZGlz
YWJsZV9ub3N5bmMoJmVuZ2luZS0+ZXhlY2xpc3RzLnRhc2tsZXQpOwo+ID4gKyAgICAgc3Bpbl91
bmxvY2soJmVuZ2luZS0+YWN0aXZlLmxvY2spOwo+ID4gKwo+IAo+IFdoeSBkbyB3ZSBuZWVkIHRv
IGRyb3AgdGhlIGxvY2s/CgpXZSB0YWtlIGl0IGFnYWluIGluc2lkZSB0aGUgcmVzZXQsIGFuZCBJ
IGFtIGZhciB0b28gbGF6eSB0byBsaWZ0IGl0IHRvCnRoZSBjYWxsZXIgOikgRGlzYWJsaW5nIHRo
ZSB0YXNrbGV0IHdpbGwgcHJldmVudCBvdGhlciB0aHJlYWRzIGZyb20Kc3VibWl0dGluZyBhcyB3
ZSBkcm9wIHRoZSBsb2NrLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
