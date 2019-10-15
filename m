Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24BEDD7AB9
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 18:02:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 734606E843;
	Tue, 15 Oct 2019 16:02:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 045EE6E843
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 16:02:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18846489-1500050 for multiple; Tue, 15 Oct 2019 17:02:39 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191015154449.10338-1-mika.kuoppala@linux.intel.com>
 <20191015154449.10338-6-mika.kuoppala@linux.intel.com>
In-Reply-To: <20191015154449.10338-6-mika.kuoppala@linux.intel.com>
Message-ID: <157115535809.22469.15202728424108565649@skylake-alporthouse-com>
Date: Tue, 15 Oct 2019 17:02:38 +0100
Subject: Re: [Intel-gfx] [PATCH 06/11] drm/i915/tgl: Wa_1409420604
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTEwLTE1IDE2OjQ0OjQ0KQo+IEF2b2lkIHBvc3Np
YmxlIGhhbmcgaW4gQ1BTUyB1bml0Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1pa2EgS3VvcHBhbGEg
PG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIHwgNSArKysrKwo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgIHwgMyArKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCA4
IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfd29ya2Fyb3VuZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmth
cm91bmRzLmMKPiBpbmRleCBkYjc4NDRkYWFjZTkuLmI3ZDdmZGM1YmE5MCAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+IEBAIC04OTcsNiArODk3
LDExIEBAIGljbF9ndF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1LCBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpCj4gIHN0YXRpYyB2b2lkCj4gIHRnbF9ndF93
b3JrYXJvdW5kc19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBzdHJ1Y3QgaTkx
NV93YV9saXN0ICp3YWwpCj4gIHsKPiArICAgICAgIC8qIFdhXzE0MDk0MjA2MDQ6dGdsICovCj4g
KyAgICAgICBpZiAoSVNfVEdMX1JFVklEKGk5MTUsIFRHTF9SRVZJRF9BMCwgVEdMX1JFVklEX0Ew
KSkKPiArICAgICAgICAgICAgICAgd2Ffd3JpdGVfb3Iod2FsLAo+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICBTVUJTTElDRV9VTklUX0xFVkVMX0NMS0dBVEUyLAo+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICBDUFNTVU5JVF9DTEtHQVRFX0RJUyk7Cj4gIH0KPiAgCj4gIHN0YXRpYyB2
b2lkCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gaW5kZXggNzgxY2ExOGNiNDViLi41MWMzZTc5
NzVkNmIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiBAQCAtNDA1NCw2ICs0MDU0LDkg
QEAgZW51bSB7Cj4gICNkZWZpbmUgU1VCU0xJQ0VfVU5JVF9MRVZFTF9DTEtHQVRFICAgIF9NTUlP
KDB4OTUyNCkKPiAgI2RlZmluZSAgR1dVTklUX0NMS0dBVEVfRElTICAgICAgICAgICAgKDEgPDwg
MTYpCj4gIAo+ICsjZGVmaW5lIFNVQlNMSUNFX1VOSVRfTEVWRUxfQ0xLR0FURTIgICBfTU1JTygw
eDk1MjgpCj4gKyNkZWZpbmUgIENQU1NVTklUX0NMS0dBVEVfRElTICAgICAgICAgICgxIDw8IDkp
CgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1D
aHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
