Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D3425C259
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Sep 2020 16:18:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 749786EA02;
	Thu,  3 Sep 2020 14:18:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa1.bahnhof.se (ste-pvt-msa1.bahnhof.se
 [213.80.101.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE20F6EA02
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Sep 2020 14:18:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTP id 1627E42D6D
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Sep 2020 16:18:40 +0200 (CEST)
Authentication-Results: ste-pvt-msa1.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=MA756Tgx; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -4.502
X-Spam-Level: 
X-Spam-Status: No, score=-4.502 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-2.403,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Received: from ste-pvt-msa1.bahnhof.se ([127.0.0.1])
 by localhost (ste-pvt-msa1.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JeA74iZLt6Ir for <intel-gfx@lists.freedesktop.org>;
 Thu,  3 Sep 2020 16:18:38 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id 112AE42D68
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Sep 2020 16:18:34 +0200 (CEST)
Received: from Win10-1tb-87.SSPE.ch.intel.com (jfdmzpr03-ext.jf.intel.com
 [134.134.139.72])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 848F5360378
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Sep 2020 16:18:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1599142714; bh=DN2cUlzCtLmdUXiishBPEEWNt7S0iVk8sD0cNUnHioM=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=MA756TgxP/MhW8yWesEns7o7DVAHGNE/59OkShoVOa+wwQZansB2q3UFgm0dtm8qS
 b5k6dPhxqAUH7caPnJGX+7l0Ng0LIphqZ0gbw/Df3aK1VYcrVMDTF92Y2uT0zbfMTp
 P8JLo673TkXC9fF2T4ojNEqLOyNShiUNtAuhXGeY=
To: intel-gfx@lists.freedesktop.org
References: <20200903133144.740-1-mika.kuoppala@linux.intel.com>
 <159914171489.16735.10329798270889946153@build.alporthouse.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <4cfe7c4e-12fd-ccc6-2011-1b3369578e85@shipmail.org>
Date: Thu, 3 Sep 2020 16:18:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <159914171489.16735.10329798270889946153@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Unlock the shared hwsp_gtt object
 after pinning
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDkvMy8yMCA0OjAxIFBNLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gUXVvdGluZyBNaWthIEt1
b3BwYWxhICgyMDIwLTA5LTAzIDE0OjMxOjQ0KQo+PiBGcm9tOiBUaG9tYXMgSGVsbHN0csO2bSA8
dGhvbWFzLmhlbGxzdHJvbUBpbnRlbC5jb20+Cj4+Cj4+IFRoZSBod3NwX2d0dCBvYmplY3QgaXMg
dXNlZCBmb3Igc3ViLWFsbG9jYXRpb24gYW5kIGNvdWxkIHRoZXJlZm9yZQo+PiBiZSBzaGFyZWQg
YnkgbWFueSBjb250ZXh0cyBjYXVzaW5nIHVubmVjZXNzYXJ5IGNvbnRlbnRpb24gZHVyaW5nCj4+
IGNvbmN1cnJlbnQgY29udGV4dCBwaW5uaW5nLgo+PiBIb3dldmVyIHNpbmNlIHdlJ3JlIGN1cnJl
bnRseSBsb2NraW5nIGl0IG9ubHkgZm9yIHBpbm5pbmcsIGl0IHJlbWFpbnMKPj4gcmVzaWRlbnQg
dW50aWwgd2UgdW5waW4gaXQsIGFuZCB0aGVyZWZvcmUgaXQncyBzYWZlIHRvIGRyb3AgdGhlCj4+
IGxvY2sgZWFybHksIGFsbG93aW5nIGZvciBjb25jdXJyZW50IHRocmVhZCBhY2Nlc3MuCj4+Cj4+
IFNpZ25lZC1vZmYtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGludGVs
LmNvbT4KPj4gLS0tCj4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5j
IHwgNyArKysrKysrCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQo+Pgo+PiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5jCj4+IGluZGV4IDYxYjA1Y2Q0YzQ3
YS4uNjVlOTU2YmExOWUxIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9jb250ZXh0LmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29u
dGV4dC5jCj4+IEBAIC0yNzEsNiArMjcxLDEzIEBAIGludCBfX2ludGVsX2NvbnRleHRfZG9fcGlu
X3d3KHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKPj4gICAgICAgICAgaTkxNV9hY3RpdmVfcmVs
ZWFzZSgmY2UtPmFjdGl2ZSk7Cj4+ICAgZXJyX2N0eF91bnBpbjoKPj4gICAgICAgICAgaW50ZWxf
Y29udGV4dF9wb3N0X3VucGluKGNlKTsKPj4gKwo+PiArICAgICAgIC8qCj4+ICsgICAgICAgICog
VW5sb2NrIHRoZSBod3NwX2dndHQgb2JqZWN0IHNpbmNlIGl0J3Mgc2hhcmVkLiBUaGlzIGlzIGZp
bmUgZm9yIG5vdwo+PiArICAgICAgICAqIHNpbmNlIHRoZSBsb2NrIGhhcyBiZWVuIHVzZWQgZm9y
IHBpbm5pbmcgb25seSwgbm90IGZlbmNpbmcuCj4+ICsgICAgICAgICovCj4+ICsgICAgICAgaTkx
NV9nZW1fd3dfdW5sb2NrX3NpbmdsZShjZS0+dGltZWxpbmUtPmh3c3BfZ2d0dC0+b2JqKTsKPiBU
aGUgdGltZWxpbmUgaXMgbm90IHNwZWNpYWwgaGVyZSwgdGhlIHNhbWUgcnVsZXMgZm9yIGxvY2tp
bmcvdW5sb2NrIGNhbgo+IGVxdWFsbHkgYmUgYXBwbGllZCB0byBhbGwgdGhlIGdsb2JhbCBzdGF0
ZS4gWW91IG1heSBldmVuIGdvIGFzIGZhciBhcwo+IHB1dHRpbmcgYSBsb2NhbCBhY3F1aXJlIGNv
bnRleHQgaGVyZSwgd2hpY2ggd291bGQgdGhlbiBoYXZlIGF2b2lkZWQgdGhlCj4gY3Jvc3MgZHJp
dmVyIHBvbGx1dGlvbi4KPgo+IEFueXdheSwgaWYgaXQgd29ya3MgZm9yIHRoZSB0aW1lbGluZSwg
dGhlcmUgaXMgbm8gcmVhc29uIHRvIGtlZXAgdGhlCj4gb3RoZXIgZ2xvYmFscyBsb2NrZWQuIFRo
ZXkgYXJlIHBpbm5lZCBhbmQgb24gY29tcGxldGVseSBkaWZmZXJlbnQgdXNhZ2UKPiBjeWNsZXMg
dG8gdGhlIHVzZXIgb2JqZWN0cy4KCkFncmVlZC7CoCBJbiBwcmluY2lwbGUgZXZlcnl0aGluZyB3
ZSB3YW50IHRvIHBlcm1hLXBpbiB3ZSBjYW4gdW5sb2NrIAplYXJseSwgS2VlcGluZyBpdCB1bmRl
ciB0aGUgc2FtZSBhY3F1aXJlIGNvbnRleHQgbWFrZXMgaXQgcG9zc2libGUgdG8gZG8gCnRoaXMg
YXMgcGFydCBvZiBhIGJpZ2dlciB3dyB0cmFuc2FjdGlvbi4gQWx0aG91Z2ggaW5pdGlhbGx5IHRo
aXMgCnNvbHV0aW9uIHdhcyBkaXNjYXJkZWQgaW4gZmF2b3VyIG9mIHJlbW92aW5nIHRoZSBzdWJh
bGxvY2F0aW9uIHRvIGJlIAphYmxlIHRvIGRpdGNoIHRoZSBwZXJtYS1waW5uaW5nIGluIHRoZSBm
dXR1cmUuCgpCdXQgaXMgdGhpcyBhY2NlcHRhYmxlIHRvIGFkZHJlc3MgdGhlIHBpLWlzb2xhdGVk
IGlzc3VlIHVudGlsIHdlIGhhdmUgCnNvbWV0aGluZyBtb3JlIHRob3VnaHQtdGhyb3VnaCBpbiBw
bGFjZT8gT3IgaXMgdGhlcmUgc29tZXRoaW4gc3BlY2lmaWMgCnlvdSB3YW50IG1lIHRvIGNoYW5n
ZSBmb3IgYSBSLUI/CgpUaGFua3MsCgpUaG9tYXMKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
