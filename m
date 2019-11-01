Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C388EC120
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2019 11:12:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1EA26E1B5;
	Fri,  1 Nov 2019 10:11:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0E1B6E11A;
 Fri,  1 Nov 2019 10:11:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19044332-1500050 for multiple; Fri, 01 Nov 2019 10:11:50 +0000
MIME-Version: 1.0
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <157260133827.17607.5789158431345901627@skylake-alporthouse-com>
References: <20191031152857.17143-1-janusz.krzysztofik@linux.intel.com>
 <20191031152857.17143-5-janusz.krzysztofik@linux.intel.com>
 <157260133827.17607.5789158431345901627@skylake-alporthouse-com>
Message-ID: <157260310890.17607.10986783393652062589@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 01 Nov 2019 10:11:48 +0000
Subject: Re: [Intel-gfx] [RFC PATCH i-g-t v4 4/4] tests/gem_ctx_shared:
 Align objects using minimum GTT alignment
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTEtMDEgMDk6NDI6MTgpCj4gUXVvdGluZyBKYW51
c3ogS3J6eXN6dG9maWsgKDIwMTktMTAtMzEgMTU6Mjg6NTcpCj4gPiBleGVjLXNoYXJlZC1ndHQt
KiBzdWJ0ZXN0cyB1c2UgaGFyZGNvZGVkIHZhbHVlcyBmb3Igb2JqZWN0IHNpemUgYW5kCj4gPiBz
b2Z0cGluIG9mZnNldCwgYmFzZWQgb24gNGtCIEdUVCBhbGlnbm1lbnQgYXNzdW1wdGlvbi4gIFRo
YXQgbWF5IHJlc3VsdAo+ID4gaW4gdGhvc2Ugc3VidGVzdHMgZmFpbGluZyB3aGVuIHJ1biBvbiBm
dXR1cmUgYmFja2luZyBzdG9yZXMgd2l0aAo+ID4gcG9zc2libHkgbGFyZ2VyIG1pbmltdW0gcGFn
ZSBzaXplcy4KPiA+IAo+ID4gUmVwbGFjZSBoYXJkY29kZWQgY29uc3RhbnRzIHdpdGggdmFsdWVz
IGNhbGN1bGF0ZWQgZnJvbSBtaW5pbXVtIEdUVAo+ID4gYWxpZ25tZW50IG9mIGFjdHVhbCBiYWNr
aW5nIHN0b3JlIHRoZSB0ZXN0IGlzIHJ1bm5pbmcgb24uCj4gPiAKPiA+IHYyOiBVcGRhdGUgaGVs
cGVyIG5hbWUsIHVzZSAnbWluaW11bSBHVFQgYWxpZ25tZW50JyB0ZXJtIGFjcm9zcyB0aGUKPiA+
ICAgICBjaGFuZ2UsIGFkanVzdCB2YXJpYWJsZSBuYW1lLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5
OiBKYW51c3ogS3J6eXN6dG9maWsgPGphbnVzei5rcnp5c3p0b2Zpa0BsaW51eC5pbnRlbC5jb20+
Cj4gPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiAtLS0K
PiA+ICB0ZXN0cy9pOTE1L2dlbV9jdHhfc2hhcmVkLmMgfCA2ICsrKystLQo+ID4gIDEgZmlsZSBj
aGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1n
aXQgYS90ZXN0cy9pOTE1L2dlbV9jdHhfc2hhcmVkLmMgYi90ZXN0cy9pOTE1L2dlbV9jdHhfc2hh
cmVkLmMKPiA+IGluZGV4IDZkOGNiY2NlLi4xZTljN2Y3OCAxMDA2NDQKPiA+IC0tLSBhL3Rlc3Rz
L2k5MTUvZ2VtX2N0eF9zaGFyZWQuYwo+ID4gKysrIGIvdGVzdHMvaTkxNS9nZW1fY3R4X3NoYXJl
ZC5jCj4gPiBAQCAtMTk1LDYgKzE5NSw3IEBAIHN0YXRpYyB2b2lkIGV4ZWNfc2hhcmVkX2d0dChp
bnQgaTkxNSwgdW5zaWduZWQgaW50IHJpbmcpCj4gPiAgICAgICAgIHVpbnQzMl90IHNjcmF0Y2gs
ICpzOwo+ID4gICAgICAgICB1aW50MzJfdCBiYXRjaCwgY3NbMTZdOwo+ID4gICAgICAgICB1aW50
NjRfdCBvZmZzZXQ7Cj4gPiArICAgICAgIHVpbnQ2NF90IGFsaWdubWVudDsKPiA+ICAgICAgICAg
aW50IGk7Cj4gPiAgCj4gPiAgICAgICAgIGdlbV9yZXF1aXJlX3JpbmcoaTkxNSwgcmluZyk7Cj4g
PiBAQCAtMjAzLDcgKzIwNCw4IEBAIHN0YXRpYyB2b2lkIGV4ZWNfc2hhcmVkX2d0dChpbnQgaTkx
NSwgdW5zaWduZWQgaW50IHJpbmcpCj4gPiAgICAgICAgIGNsb25lID0gZ2VtX2NvbnRleHRfY2xv
bmUoaTkxNSwgMCwgSTkxNV9DT05URVhUX0NMT05FX1ZNLCAwKTsKPiA+ICAKPiA+ICAgICAgICAg
LyogRmluZCBhIGhvbGUgYmlnIGVub3VnaCBmb3IgYm90aCBvYmplY3RzIGxhdGVyICovCj4gPiAt
ICAgICAgIHNjcmF0Y2ggPSBnZW1fY3JlYXRlKGk5MTUsIDE2Mzg0KTsKPiA+ICsgICAgICAgYWxp
Z25tZW50ID0gMiAqIGdlbV9ndHRfbWluX2FsaWdubWVudChpOTE1KTsKPiA+ICsgICAgICAgc2Ny
YXRjaCA9IGdlbV9jcmVhdGUoaTkxNSwgMiAqIGFsaWdubWVudCk7Cj4gPiAgICAgICAgIGdlbV93
cml0ZShpOTE1LCBzY3JhdGNoLCAwLCAmYmJlLCBzaXplb2YoYmJlKSk7Cj4gPiAgICAgICAgIG9i
ai5oYW5kbGUgPSBzY3JhdGNoOwo+ID4gICAgICAgICBnZW1fZXhlY2J1ZihpOTE1LCAmZXhlY2J1
Zik7Cj4gPiBAQCAtMjQ2LDcgKzI0OCw3IEBAIHN0YXRpYyB2b2lkIGV4ZWNfc2hhcmVkX2d0dChp
bnQgaTkxNSwgdW5zaWduZWQgaW50IHJpbmcpCj4gPiAgICAgICAgIGdlbV93cml0ZShpOTE1LCBi
YXRjaCwgMCwgY3MsIHNpemVvZihjcykpOwo+ID4gIAo+ID4gICAgICAgICBvYmouaGFuZGxlID0g
YmF0Y2g7Cj4gPiAtICAgICAgIG9iai5vZmZzZXQgKz0gODE5MjsgLyogbWFrZSBzdXJlIHdlIGRv
bid0IGNhdXNlIGFuIGV2aWN0aW9uISAqLwo+ID4gKyAgICAgICBvYmoub2Zmc2V0ICs9IGFsaWdu
bWVudDsgLyogbWFrZSBzdXJlIHdlIGRvbid0IGNhdXNlIGFuIGV2aWN0aW9uISAqLwo+IAo+IEl0
J3MgJ3N0cmlkZScgaGVyZS4gSXQncyBsZWF2aW5nIGEgZ3VhcmQgcGFnZSBpbiBiZXR3ZWVuLCBq
dXN0IGluIGNhc2UKPiBwYWdlIGNvbG9yaW5nIGRlbWFuZHMgaXQuCgpPdGhlciB0aGFuIHRoYXQs
ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNo
cmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
