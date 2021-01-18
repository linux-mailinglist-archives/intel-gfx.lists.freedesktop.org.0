Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E127A2FA085
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 13:56:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 576BC6E1E0;
	Mon, 18 Jan 2021 12:56:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa1.bahnhof.se (ste-pvt-msa1.bahnhof.se
 [213.80.101.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6270A6E1E0
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 12:55:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTP id 7DEEF3F4DE;
 Mon, 18 Jan 2021 13:55:57 +0100 (CET)
Authentication-Results: ste-pvt-msa1.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=RGDi6CoX; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.138
X-Spam-Level: 
X-Spam-Status: No, score=-2.138 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.039,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Received: from ste-pvt-msa1.bahnhof.se ([127.0.0.1])
 by localhost (ste-pvt-msa1.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YTdxF9EiH60Q; Mon, 18 Jan 2021 13:55:56 +0100 (CET)
Received: by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id 2CA923F3A9;
 Mon, 18 Jan 2021 13:55:54 +0100 (CET)
Received: from [10.252.7.161] (unknown [134.191.232.70])
 by mail1.shipmail.org (Postfix) with ESMTPSA id B95E636018C;
 Mon, 18 Jan 2021 13:55:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1610974554; bh=s6nrDHhCvcuo180GQrQ93DZy0KQaIIlB7bA6dFeSYW8=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=RGDi6CoXD2Kh8bGyVtsRAIOJuOEhb/FQ37RQ5gTdTWuOt/8mhh6vcEDiJE/otG/wn
 xeTV8QzLagjwK+/4/NkGHNpCb1DbCyPlIXiv04L2dbDW4WsBBTYlD6hcz14UVcgPzm
 b6dQ8jdOlX6Vq8BZ8MSNXGnZ5CwQSO1eHAjRLUC0=
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210105153558.134272-1-maarten.lankhorst@linux.intel.com>
 <20210105153558.134272-17-maarten.lankhorst@linux.intel.com>
 <5b38d4b5-ded7-9f4d-118e-74f706c6a8ad@shipmail.org>
 <a72fabc9-0ba1-daa7-a690-e9530f9ce5bc@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <a1d2c25b-6035-c4c8-8703-7c6a3ddb675f@shipmail.org>
Date: Mon, 18 Jan 2021 13:55:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <a72fabc9-0ba1-daa7-a690-e9530f9ce5bc@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v6 16/64] drm/i915: Fix userptr so we do not
 have to worry about obj->mm.lock, v5.
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

Ck9uIDEvMTgvMjEgMTo0MyBQTSwgTWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6Cj4gT3AgMTgtMDEt
MjAyMSBvbSAxMjozMCBzY2hyZWVmIFRob21hcyBIZWxsc3Ryw7ZtIChJbnRlbCk6Cj4+IEhpLAo+
Pgo+PiBPbiAxLzUvMjEgNDozNSBQTSwgTWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6Cj4+PiBJbnN0
ZWFkIG9mIGRvaW5nIHdoYXQgd2UgZG8gY3VycmVudGx5LCB3aGljaCB3aWxsIG5ldmVyIHdvcmsg
d2l0aAo+Pj4gUFJPVkVfTE9DS0lORywgZG8gdGhlIHNhbWUgYXMgQU1EIGRvZXMsIGFuZCBzb21l
dGhpbmcgc2ltaWxhciB0bwo+Pj4gcmVsb2NhdGlvbiBzbG93cGF0aC4gV2hlbiBhbGwgbG9ja3Mg
YXJlIGRyb3BwZWQsIHdlIGFjcXVpcmUgdGhlCj4+PiBwYWdlcyBmb3IgcGlubmluZy4gV2hlbiB0
aGUgbG9ja3MgYXJlIHRha2VuLCB3ZSB0cmFuc2ZlciB0aG9zZQo+Pj4gcGFnZXMgaW4gLmdldF9w
YWdlcygpIHRvIHRoZSBiby4gQXMgYSBmaW5hbCBjaGVjayBiZWZvcmUgaW5zdGFsbGluZwo+Pj4g
dGhlIGZlbmNlcywgd2UgZW5zdXJlIHRoYXQgdGhlIG1tdSBub3RpZmllciB3YXMgbm90IGNhbGxl
ZDsgaWYgaXQgaXMsCj4+PiB3ZSByZXR1cm4gLUVBR0FJTiB0byB1c2Vyc3BhY2UgdG8gc2lnbmFs
IGl0IGhhcyB0byBzdGFydCBvdmVyLgo+Pj4KPj4+IENoYW5nZXMgc2luY2UgdjE6Cj4+PiAtIFVu
YmluZGluZyBpcyBkb25lIGluIHN1Ym1pdF9pbml0IG9ubHkuIHN1Ym1pdF9iZWdpbigpIHJlbW92
ZWQuCj4+PiAtIE1NVV9OT1RGSUVSIC0+IE1NVV9OT1RJRklFUgo+Pj4gQ2hhbmdlcyBzaW5jZSB2
MjoKPj4+IC0gTWFrZSBpOTE1LT5tbS5ub3RpZmllciBhIHNwaW5sb2NrLgo+Pj4gQ2hhbmdlcyBz
aW5jZSB2MzoKPj4+IC0gQWRkIFdBUk5fT04gaWYgdGhlcmUgYXJlIGFueSBwYWdlIHJlZmVyZW5j
ZXMgbGVmdCwgc2hvdWxkIGhhdmUgYmVlbiAwLgo+Pj4gLSBSZXR1cm4gMCBvbiBzdWNjZXNzIGlu
IHN1Ym1pdF9pbml0KCksIGJ1ZyBmcm9tIHNwaW5sb2NrIGNvbnZlcnNpb24uCj4+PiAtIFJlbGVh
c2UgcHZlYyBvdXRzaWRlIG9mIG5vdGlmaWVyX2xvY2sgKFRob21hcykuCj4+PiBDaGFuZ2VzIHNp
bmNlIHY0Ogo+Pj4gLSBNZW50aW9uIHdoeSB3ZSdyZSBjbGVhcmluZyBlYi0+W2kgKyAxXS52bWEg
aW4gdGhlIGNvZGUuIChUaG9tYXMpCj4+PiAtIEFjdHVhbGx5IGNoZWNrIGFsbCBpbnZhbGlkYXRp
b25zIGluIGViX21vdmVfdG9fZ3B1LiAoVGhvbWFzKQo+Pj4gLSBEbyBub3Qgd2FpdCB3aGVuIHBy
b2Nlc3MgaXMgZXhpdGluZyB0byBmaXggZ2VtX2N0eF9wZXJzaXN0ZW5jZS51c2VycHRyLgo+Pj4K
Pj4+IFNpZ25lZC1vZmYtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBs
aW51eC5pbnRlbC5jb20+Cj4+Cj4+IC4uLgo+Pgo+Pj4gIMKgIC1zdGF0aWMgaW50Cj4+PiAtdXNl
cnB0cl9tbl9pbnZhbGlkYXRlX3JhbmdlX3N0YXJ0KHN0cnVjdCBtbXVfbm90aWZpZXIgKl9tbiwK
Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnN0IHN0cnVjdCBtbXVf
bm90aWZpZXJfcmFuZ2UgKnJhbmdlKQo+Pj4gLXsKPj4+IC3CoMKgwqAgc3RydWN0IGk5MTVfbW11
X25vdGlmaWVyICptbiA9Cj4+PiAtwqDCoMKgwqDCoMKgwqAgY29udGFpbmVyX29mKF9tbiwgc3Ry
dWN0IGk5MTVfbW11X25vdGlmaWVyLCBtbik7Cj4+PiAtwqDCoMKgIHN0cnVjdCBpbnRlcnZhbF90
cmVlX25vZGUgKml0Owo+Pj4gLcKgwqDCoCB1bnNpZ25lZCBsb25nIGVuZDsKPj4+IC3CoMKgwqAg
aW50IHJldCA9IDA7Cj4+PiAtCj4+PiAtwqDCoMKgIGlmIChSQl9FTVBUWV9ST09UKCZtbi0+b2Jq
ZWN0cy5yYl9yb290KSkKPj4+IC3CoMKgwqDCoMKgwqDCoCByZXR1cm4gMDsKPj4+IC0KPj4+IC3C
oMKgwqAgLyogaW50ZXJ2YWwgcmFuZ2VzIGFyZSBpbmNsdXNpdmUsIGJ1dCBpbnZhbGlkYXRlIHJh
bmdlIGlzIGV4Y2x1c2l2ZSAqLwo+Pj4gLcKgwqDCoCBlbmQgPSByYW5nZS0+ZW5kIC0gMTsKPj4+
IC0KPj4+IC3CoMKgwqAgc3Bpbl9sb2NrKCZtbi0+bG9jayk7Cj4+PiAtwqDCoMKgIGl0ID0gaW50
ZXJ2YWxfdHJlZV9pdGVyX2ZpcnN0KCZtbi0+b2JqZWN0cywgcmFuZ2UtPnN0YXJ0LCBlbmQpOwo+
Pj4gLcKgwqDCoCB3aGlsZSAoaXQpIHsKPj4+IC3CoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX29iamVjdCAqb2JqOwo+Pj4gLQo+Pj4gLcKgwqDCoMKgwqDCoMKgIGlmICghbW11X25v
dGlmaWVyX3JhbmdlX2Jsb2NrYWJsZShyYW5nZSkpIHsKPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHJldCA9IC1FQUdBSU47Cj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBicmVhazsKPj4+
IC3CoMKgwqDCoMKgwqDCoCB9Cj4+PiArwqDCoMKgIHNwaW5fbG9jaygmaTkxNS0+bW0ubm90aWZp
ZXJfbG9jayk7Cj4+PiAgwqAgLcKgwqDCoMKgwqDCoMKgIC8qCj4+PiAtwqDCoMKgwqDCoMKgwqDC
oCAqIFRoZSBtbXVfb2JqZWN0IGlzIHJlbGVhc2VkIGxhdGUgd2hlbiBkZXN0cm95aW5nIHRoZQo+
Pj4gLcKgwqDCoMKgwqDCoMKgwqAgKiBHRU0gb2JqZWN0IHNvIGl0IGlzIGVudGlyZWx5IHBvc3Np
YmxlIHRvIGdhaW4gYQo+Pj4gLcKgwqDCoMKgwqDCoMKgwqAgKiByZWZlcmVuY2Ugb24gYW4gb2Jq
ZWN0IGluIHRoZSBwcm9jZXNzIG9mIGJlaW5nIGZyZWVkCj4+PiAtwqDCoMKgwqDCoMKgwqDCoCAq
IHNpbmNlIG91ciBzZXJpYWxpc2F0aW9uIGlzIHZpYSB0aGUgc3BpbmxvY2sgYW5kIG5vdAo+Pj4g
LcKgwqDCoMKgwqDCoMKgwqAgKiB0aGUgc3RydWN0X211dGV4IC0gYW5kIGNvbnNlcXVlbnRseSB1
c2UgaXQgYWZ0ZXIgaXQKPj4+IC3CoMKgwqDCoMKgwqDCoMKgICogaXMgZnJlZWQgYW5kIHRoZW4g
ZG91YmxlIGZyZWUgaXQuIFRvIHByZXZlbnQgdGhhdAo+Pj4gLcKgwqDCoMKgwqDCoMKgwqAgKiB1
c2UtYWZ0ZXItZnJlZSB3ZSBvbmx5IGFjcXVpcmUgYSByZWZlcmVuY2Ugb24gdGhlCj4+PiAtwqDC
oMKgwqDCoMKgwqDCoCAqIG9iamVjdCBpZiBpdCBpcyBub3QgaW4gdGhlIHByb2Nlc3Mgb2YgYmVp
bmcgZGVzdHJveWVkLgo+Pj4gLcKgwqDCoMKgwqDCoMKgwqAgKi8KPj4+IC3CoMKgwqDCoMKgwqDC
oCBvYmogPSBjb250YWluZXJfb2YoaXQsIHN0cnVjdCBpOTE1X21tdV9vYmplY3QsIGl0KS0+b2Jq
Owo+Pj4gLcKgwqDCoMKgwqDCoMKgIGlmICgha3JlZl9nZXRfdW5sZXNzX3plcm8oJm9iai0+YmFz
ZS5yZWZjb3VudCkpIHsKPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGl0ID0gaW50ZXJ2YWxf
dHJlZV9pdGVyX25leHQoaXQsIHJhbmdlLT5zdGFydCwgZW5kKTsKPj4+IC3CoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGNvbnRpbnVlOwo+Pj4gLcKgwqDCoMKgwqDCoMKgIH0KPj4+IC3CoMKgwqDCoMKg
wqDCoCBzcGluX3VubG9jaygmbW4tPmxvY2spOwo+Pj4gK8KgwqDCoCBtbXVfaW50ZXJ2YWxfc2V0
X3NlcShtbmksIGN1cl9zZXEpOwo+Pj4gIMKgIC3CoMKgwqDCoMKgwqDCoCByZXQgPSBpOTE1X2dl
bV9vYmplY3RfdW5iaW5kKG9iaiwKPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgSTkxNV9HRU1fT0JKRUNUX1VOQklORF9BQ1RJVkUgfAo+Pj4gLcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBJOTE1X0dFTV9P
QkpFQ1RfVU5CSU5EX0JBUlJJRVIpOwo+Pj4gLcKgwqDCoMKgwqDCoMKgIGlmIChyZXQgPT0gMCkK
Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldCA9IF9faTkxNV9nZW1fb2JqZWN0X3B1dF9w
YWdlcyhvYmopOwo+Pj4gLcKgwqDCoMKgwqDCoMKgIGk5MTVfZ2VtX29iamVjdF9wdXQob2JqKTsK
Pj4+IC3CoMKgwqDCoMKgwqDCoCBpZiAocmV0KQo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
cmV0dXJuIHJldDsKPj4+ICvCoMKgwqAgc3Bpbl91bmxvY2soJmk5MTUtPm1tLm5vdGlmaWVyX2xv
Y2spOwo+Pj4gIMKgIC3CoMKgwqDCoMKgwqDCoCBzcGluX2xvY2soJm1uLT5sb2NrKTsKPj4+ICvC
oMKgwqAgLyogRHVyaW5nIGV4aXQgdGhlcmUncyBubyBuZWVkIHRvIHdhaXQgKi8KPj4+ICvCoMKg
wqAgaWYgKGN1cnJlbnQtPmZsYWdzICYgUEZfRVhJVElORykKPj4+ICvCoMKgwqDCoMKgwqDCoCBy
ZXR1cm4gdHJ1ZTsKPj4gRGlkIHdlIGV2ZXIgZmluZCBvdXQgd2h5IHRoaXMgaXMgbmVlZGVkLCB0
aGF0IGlzIHdoeSB0aGUgb2xkIHVzZXJwdHIgaW52YWxpZGF0aW9uIGNhbGxlZCBkb2Vzbid0IGhh
bmcgaGVyZSBpbiBhIHNpbWlsYXIgd2F5Pwo+IEl0J3MgYW4gb3B0aW1pemF0aW9uIGZvciB0ZWFy
ZG93biBiZWNhdXNlIHVzZXJwdHIgd2lsbCBiZSBpbnZhbGlkYXRlZCBhbnl3YXksIGJ1dCBhbHNv
IGZvciBnZW1fY3R4X3BlcnNpc3RlbmNlLnVzZXJwdHIsIGFsdGhvdWdoCj4KPiB3aXRoIHVsbHMg
dGhhdCB0ZXN0IG1heSBzdG9wIHdvcmtpbmcgYW55d2F5IGJlY2F1c2UgaXQgdGFrZXMgYW4gb3V0
X2ZlbmNlLgoKU3VyZSwgYnV0IHdoYXQgSSBtZWFudCB3YXM6IERpZCB3ZSBmaW5kIG91dCB3aGF0
J3MgZGlmZmVyZW50IGluIHRoZSBuZXcgCmNvZGUgY29tcGFyZWQgdG8gdGhlIG9sZCBvbmU/IEJl
Y2F1c2UgdGhlIG9sZCBjb2RlIGFsc28gd2FpdHMgZm9yIGdwdSAKd2hlbiB1bmJpbmRpbmcgaW4g
dGhlIG1tdV9ub3RpZmllciwgYnV0IGl0IGFwcGVhcnMgbGlrZSBpbiB0aGUgb2xkIGNvZGUsIAp0
aGUgbW11IG5vdGlmaWVyIGlzIG5ldmVyIGNhbGxlZCBoZXJlLiBBdCBsZWFzdCB0byBtZSBpdCBz
ZWVtcyBpdCB3b3VsZCAKYmUgZ29vZCBpZiB3ZSB1bmRlcnN0YW5kIHdoYXQgdGhhdCBkaWZmZXJl
bmNlIGlzLgoKL1Rob21hcwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
