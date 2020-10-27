Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE4329BAE9
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Oct 2020 17:25:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4E2E6E0AF;
	Tue, 27 Oct 2020 16:25:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from pio-pvt-msa3.bahnhof.se (pio-pvt-msa3.bahnhof.se [79.136.2.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F295C6E0AF
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Oct 2020 16:25:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by pio-pvt-msa3.bahnhof.se (Postfix) with ESMTP id A57E33F6BA;
 Tue, 27 Oct 2020 17:25:42 +0100 (CET)
Authentication-Results: pio-pvt-msa3.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=rdfm4Dfu; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -4.266
X-Spam-Level: 
X-Spam-Status: No, score=-4.266 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-2.167,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Received: from pio-pvt-msa3.bahnhof.se ([127.0.0.1])
 by localhost (pio-pvt-msa3.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VxeJC7jSYK05; Tue, 27 Oct 2020 17:25:41 +0100 (CET)
Received: by pio-pvt-msa3.bahnhof.se (Postfix) with ESMTPA id 3ED033F53E;
 Tue, 27 Oct 2020 17:25:39 +0100 (CET)
Received: from Win10-768gb107.SSPE.ch.intel.com (jfdmzpr04-ext.jf.intel.com
 [134.134.137.73])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 109C33600BE;
 Tue, 27 Oct 2020 17:25:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1603815939; bh=NaQ3xCOIbNV5Q6OPg6NKXByslfTk7Wc9i+3htqJhpVM=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=rdfm4DfuqQo6ZaAHycBM6VwJ/Y3uY32Oj3+bJtNieOb/8BqOPtiFr3ZhtK/i9nB/U
 Gv38hCpnnExV6XSPfc3YM1YXw4zXQ4HpGOhO48reNI/1se9y7cPofNKQc2AcTM86BH
 mYVGvnIcYOoo3W07DNCRJJOxp6aY5Db1mWTcTmeo=
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20201015112627.1142745-1-maarten.lankhorst@linux.intel.com>
 <20201015112627.1142745-5-maarten.lankhorst@linux.intel.com>
 <8677ec74-b31e-05c9-2cdf-514fd11462e4@shipmail.org>
 <89f87f2f-a941-0769-4765-0b659b357703@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <a5e1a5a0-e72c-c7da-5830-7211faa56386@shipmail.org>
Date: Tue, 27 Oct 2020 17:25:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <89f87f2f-a941-0769-4765-0b659b357703@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3 04/63] drm/i915: Pin timeline map after
 first timeline pin, v3.
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

Ck9uIDEwLzI3LzIwIDM6MzEgUE0sIE1hYXJ0ZW4gTGFua2hvcnN0IHdyb3RlOgo+IE9wIDI3LTEw
LTIwMjAgb20gMTI6MDMgc2NocmVlZiBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwpOgo+PiBPbiAx
MC8xNS8yMCAxOjI1IFBNLCBNYWFydGVuIExhbmtob3JzdCB3cm90ZToKPj4+IFdlJ3JlIHN0YXJ0
aW5nIHRvIHJlcXVpcmUgdGhlIHJlc2VydmF0aW9uIGxvY2sgZm9yIHBpbm5pbmcsCj4+PiBzbyB3
YWl0IHVudGlsIHdlIGhhdmUgdGhhdC4KPj4+Cj4+PiBVcGRhdGUgdGhlIHNlbGZ0ZXN0cyB0byBo
YW5kbGUgdGhpcyBjb3JyZWN0bHksIGFuZCBlbnN1cmUgcGluIGlzCj4+PiBjYWxsZWQgaW4gbGl2
ZV9od3NwX3JvbGxvdmVyX3VzZXIoKSBhbmQgbW9ja19od3NwX2ZyZWVsaXN0KCkuCj4+Pgo+Pj4g
Q2hhbmdlcyBzaW5jZSB2MToKPj4+IC0gRml4IE5VTEwgKyBYWCBhcml0aG1hdGljLCB1c2UgY2Fz
dHMuIChrYnVpbGQpCj4+PiBDaGFuZ2VzIHNpbmNlIHYyOgo+Pj4gLSBDbGVhciBlbnRpcmUgY2Fj
aGVsaW5lIHdoZW4gcGlubmluZy4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBNYWFydGVuIExhbmto
b3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+Pj4gUmVwb3J0ZWQtYnk6
IGtlcm5lbCB0ZXN0IHJvYm90IDxsa3BAaW50ZWwuY29tPgo+PiAuLi4KPj4+IEBAIC0xNTAsNiAr
MTYxLDEyIEBAIGludCBpbnRlbF90aW1lbGluZV9waW4oc3RydWN0IGludGVsX3RpbWVsaW5lICp0
bCwgc3RydWN0IGk5MTVfZ2VtX3d3X2N0eCAqd3cpCj4+PiAgwqDCoMKgwqDCoCBpZiAoYXRvbWlj
X2FkZF91bmxlc3MoJnRsLT5waW5fY291bnQsIDEsIDApKQo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDC
oCByZXR1cm4gMDsKPj4+ICDCoCArwqDCoMKgIGlmICghdGwtPmh3c3BfbWFwKSB7Cj4+PiArwqDC
oMKgwqDCoMKgwqAgZXJyID0gaW50ZWxfdGltZWxpbmVfcGluX21hcCh0bCk7Cj4+PiArwqDCoMKg
wqDCoMKgwqAgaWYgKGVycikKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiBlcnI7
Cj4+PiArwqDCoMKgIH0KPj4+ICsKPj4gT24gc3Vic2VxdWVudCBlcnJvcnMgb3IgaWYgc29tZWJv
ZHkgYmVhdHMgdXMgdG8gdGhlIDAtPjEgdHJhbnNpdGlvbiwgd2UgbmVlZCB0byB1bnBpbl9tYXAg
dG8gYXZvaWQgbGVha2luZyBwaW5zLgo+IE5vPyB0bC0+aHdzcF9tYXAgY2FuIHN0YXkgc2V0LiBX
ZSBob2xkIGEgbG9jayB0byB0bC0+aHdzcF9nZ3R0IHRvIHByZXZlbnQgYW55IHJhY2VzLiA6KQoK
T0ssIGJ1dCBpbiB0aGF0IGNhc2Ugd2UgbmVlZCB0byBiZSBjb25zaXN0ZW50LiBFaXRoZXIgdGhl
cmUgYXJlIG5vIHJhY2VzIAphbmQgd2UgY2FuIHJlbW92ZSB0aGUgY29kZSB0aGF0IGhhbmRsZXMg
dGhlbSwgb3IgdGhlcmUgYXJlIHJhY2VzIGFuZCB3ZSAKc2hvdWxkIHRha2UgdGhpcyBpbnRvIGFj
Y291bnQuCgo+Cj4gfk1hYXJ0ZW4KPgo+Pj4gIMKgwqDCoMKgwqAgZXJyID0gaTkxNV9nZ3R0X3Bp
bih0bC0+aHdzcF9nZ3R0LCB3dywgMCwgUElOX0hJR0gpOwo+Pj4gIMKgwqDCoMKgwqAgaWYgKGVy
cikKPj4+ICDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIGVycjsKPj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF90aW1lbGluZS5oIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUuaAo+Pj4gaW5kZXggOTg4MmNkOTExZDhlLi4xY2ZkYzQ2
NzliNjIgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF90aW1l
bGluZS5oCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF90aW1lbGluZS5o
Cj4+PiBAQCAtMTA2LDQgKzEwNiw2IEBAIGludCBpbnRlbF90aW1lbGluZV9yZWFkX2h3c3Aoc3Ry
dWN0IGk5MTVfcmVxdWVzdCAqZnJvbSwKPj4+ICDCoCB2b2lkIGludGVsX2d0X2luaXRfdGltZWxp
bmVzKHN0cnVjdCBpbnRlbF9ndCAqZ3QpOwo+Pj4gIMKgIHZvaWQgaW50ZWxfZ3RfZmluaV90aW1l
bGluZXMoc3RydWN0IGludGVsX2d0ICpndCk7Cj4+PiAgwqAgK0k5MTVfU0VMRlRFU1RfREVDTEFS
RShpbnQgaW50ZWxfdGltZWxpbmVfcGluX21hcChzdHJ1Y3QgaW50ZWxfdGltZWxpbmUgKnRsKSk7
Cj4+PiArCj4+PiAgwqAgI2VuZGlmCj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvbW9ja19lbmdpbmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L21vY2tfZW5naW5l
LmMKPj4+IGluZGV4IDJmODMwMDE3YzUxZC4uZWZmYmFjODc3ZWVjIDEwMDY0NAo+Pj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvbW9ja19lbmdpbmUuYwo+Pj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvbW9ja19lbmdpbmUuYwo+Pj4gQEAgLTMyLDkgKzMyLDIwIEBACj4+PiAg
wqAgI2luY2x1ZGUgIm1vY2tfZW5naW5lLmgiCj4+PiAgwqAgI2luY2x1ZGUgInNlbGZ0ZXN0cy9t
b2NrX3JlcXVlc3QuaCIKPj4+ICDCoCAtc3RhdGljIHZvaWQgbW9ja190aW1lbGluZV9waW4oc3Ry
dWN0IGludGVsX3RpbWVsaW5lICp0bCkKPj4+ICtzdGF0aWMgaW50IG1vY2tfdGltZWxpbmVfcGlu
KHN0cnVjdCBpbnRlbF90aW1lbGluZSAqdGwpCj4+PiAgwqAgewo+Pj4gK8KgwqDCoCBpbnQgZXJy
Owo+Pj4gKwo+Pj4gK8KgwqDCoCBpZiAoV0FSTl9PTighaTkxNV9nZW1fb2JqZWN0X3RyeWxvY2so
dGwtPmh3c3BfZ2d0dC0+b2JqKSkpCj4+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FQlVTWTsK
Pj4gSSB0aGluayB3ZSBzaG91bGQgZWl0aGVyIGFubm90YXRlIHRoaXMgcHJvcGVybHkgYXMgYW4g
aXNvbGF0ZWQgbG9jaywgb3IgYWxsb3cgYSBzaWxlbnQgLUVCVVNZLgo+IFRoaXMgaXMgZG9uZSBp
biBhIGNvbnRyb2xsZWQgc2VsZnRlc3Qgd2hlcmUgd2UgbW9jayB0aGUgZW50aXJlIGk5MTUgZGV2
aWNlLCBzbyBub3JtYWxseSB0aGlzIGNhbid0IGhhcHBlbi4gOikKCkJ1dCBpZiBpdCBkb2VzLCB3
ZSBnZXQgZXJyYXRpYyBCQVQgZmFpbHVyZXMsIGFuZCBpZiBpdCBpbmRlZWQgZG9lc24ndCAKaGFw
cGVuLCB0aGVuIGFuIGFubm90YXRlZCBpc29sYXRlZCBsb2NrIHdvdWxkIGd1YXJhbnRlZSB0aGF0
LgoKL1Rob21hcwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
