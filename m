Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DEE82EC0B5
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2019 10:42:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9D926F7A7;
	Fri,  1 Nov 2019 09:42:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DB916F7A6;
 Fri,  1 Nov 2019 09:42:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19043655-1500050 for multiple; Fri, 01 Nov 2019 09:42:20 +0000
MIME-Version: 1.0
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191031152857.17143-5-janusz.krzysztofik@linux.intel.com>
References: <20191031152857.17143-1-janusz.krzysztofik@linux.intel.com>
 <20191031152857.17143-5-janusz.krzysztofik@linux.intel.com>
Message-ID: <157260133827.17607.5789158431345901627@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 01 Nov 2019 09:42:18 +0000
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

UXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMTktMTAtMzEgMTU6Mjg6NTcpCj4gZXhlYy1z
aGFyZWQtZ3R0LSogc3VidGVzdHMgdXNlIGhhcmRjb2RlZCB2YWx1ZXMgZm9yIG9iamVjdCBzaXpl
IGFuZAo+IHNvZnRwaW4gb2Zmc2V0LCBiYXNlZCBvbiA0a0IgR1RUIGFsaWdubWVudCBhc3N1bXB0
aW9uLiAgVGhhdCBtYXkgcmVzdWx0Cj4gaW4gdGhvc2Ugc3VidGVzdHMgZmFpbGluZyB3aGVuIHJ1
biBvbiBmdXR1cmUgYmFja2luZyBzdG9yZXMgd2l0aAo+IHBvc3NpYmx5IGxhcmdlciBtaW5pbXVt
IHBhZ2Ugc2l6ZXMuCj4gCj4gUmVwbGFjZSBoYXJkY29kZWQgY29uc3RhbnRzIHdpdGggdmFsdWVz
IGNhbGN1bGF0ZWQgZnJvbSBtaW5pbXVtIEdUVAo+IGFsaWdubWVudCBvZiBhY3R1YWwgYmFja2lu
ZyBzdG9yZSB0aGUgdGVzdCBpcyBydW5uaW5nIG9uLgo+IAo+IHYyOiBVcGRhdGUgaGVscGVyIG5h
bWUsIHVzZSAnbWluaW11bSBHVFQgYWxpZ25tZW50JyB0ZXJtIGFjcm9zcyB0aGUKPiAgICAgY2hh
bmdlLCBhZGp1c3QgdmFyaWFibGUgbmFtZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBKYW51c3ogS3J6
eXN6dG9maWsgPGphbnVzei5rcnp5c3p0b2Zpa0BsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IC0tLQo+ICB0ZXN0cy9pOTE1L2dl
bV9jdHhfc2hhcmVkLmMgfCA2ICsrKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25z
KCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS90ZXN0cy9pOTE1L2dlbV9jdHhf
c2hhcmVkLmMgYi90ZXN0cy9pOTE1L2dlbV9jdHhfc2hhcmVkLmMKPiBpbmRleCA2ZDhjYmNjZS4u
MWU5YzdmNzggMTAwNjQ0Cj4gLS0tIGEvdGVzdHMvaTkxNS9nZW1fY3R4X3NoYXJlZC5jCj4gKysr
IGIvdGVzdHMvaTkxNS9nZW1fY3R4X3NoYXJlZC5jCj4gQEAgLTE5NSw2ICsxOTUsNyBAQCBzdGF0
aWMgdm9pZCBleGVjX3NoYXJlZF9ndHQoaW50IGk5MTUsIHVuc2lnbmVkIGludCByaW5nKQo+ICAg
ICAgICAgdWludDMyX3Qgc2NyYXRjaCwgKnM7Cj4gICAgICAgICB1aW50MzJfdCBiYXRjaCwgY3Nb
MTZdOwo+ICAgICAgICAgdWludDY0X3Qgb2Zmc2V0Owo+ICsgICAgICAgdWludDY0X3QgYWxpZ25t
ZW50Owo+ICAgICAgICAgaW50IGk7Cj4gIAo+ICAgICAgICAgZ2VtX3JlcXVpcmVfcmluZyhpOTE1
LCByaW5nKTsKPiBAQCAtMjAzLDcgKzIwNCw4IEBAIHN0YXRpYyB2b2lkIGV4ZWNfc2hhcmVkX2d0
dChpbnQgaTkxNSwgdW5zaWduZWQgaW50IHJpbmcpCj4gICAgICAgICBjbG9uZSA9IGdlbV9jb250
ZXh0X2Nsb25lKGk5MTUsIDAsIEk5MTVfQ09OVEVYVF9DTE9ORV9WTSwgMCk7Cj4gIAo+ICAgICAg
ICAgLyogRmluZCBhIGhvbGUgYmlnIGVub3VnaCBmb3IgYm90aCBvYmplY3RzIGxhdGVyICovCj4g
LSAgICAgICBzY3JhdGNoID0gZ2VtX2NyZWF0ZShpOTE1LCAxNjM4NCk7Cj4gKyAgICAgICBhbGln
bm1lbnQgPSAyICogZ2VtX2d0dF9taW5fYWxpZ25tZW50KGk5MTUpOwo+ICsgICAgICAgc2NyYXRj
aCA9IGdlbV9jcmVhdGUoaTkxNSwgMiAqIGFsaWdubWVudCk7Cj4gICAgICAgICBnZW1fd3JpdGUo
aTkxNSwgc2NyYXRjaCwgMCwgJmJiZSwgc2l6ZW9mKGJiZSkpOwo+ICAgICAgICAgb2JqLmhhbmRs
ZSA9IHNjcmF0Y2g7Cj4gICAgICAgICBnZW1fZXhlY2J1ZihpOTE1LCAmZXhlY2J1Zik7Cj4gQEAg
LTI0Niw3ICsyNDgsNyBAQCBzdGF0aWMgdm9pZCBleGVjX3NoYXJlZF9ndHQoaW50IGk5MTUsIHVu
c2lnbmVkIGludCByaW5nKQo+ICAgICAgICAgZ2VtX3dyaXRlKGk5MTUsIGJhdGNoLCAwLCBjcywg
c2l6ZW9mKGNzKSk7Cj4gIAo+ICAgICAgICAgb2JqLmhhbmRsZSA9IGJhdGNoOwo+IC0gICAgICAg
b2JqLm9mZnNldCArPSA4MTkyOyAvKiBtYWtlIHN1cmUgd2UgZG9uJ3QgY2F1c2UgYW4gZXZpY3Rp
b24hICovCj4gKyAgICAgICBvYmoub2Zmc2V0ICs9IGFsaWdubWVudDsgLyogbWFrZSBzdXJlIHdl
IGRvbid0IGNhdXNlIGFuIGV2aWN0aW9uISAqLwoKSXQncyAnc3RyaWRlJyBoZXJlLiBJdCdzIGxl
YXZpbmcgYSBndWFyZCBwYWdlIGluIGJldHdlZW4sIGp1c3QgaW4gY2FzZQpwYWdlIGNvbG9yaW5n
IGRlbWFuZHMgaXQuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
