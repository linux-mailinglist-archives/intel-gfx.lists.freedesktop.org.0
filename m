Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9822FD157
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jan 2021 14:41:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CC716E2DF;
	Wed, 20 Jan 2021 13:41:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 518 seconds by postgrey-1.36 at gabe;
 Wed, 20 Jan 2021 13:41:29 UTC
Received: from pio-pvt-msa1.bahnhof.se (pio-pvt-msa1.bahnhof.se [79.136.2.40])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA8386E255
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Jan 2021 13:41:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by pio-pvt-msa1.bahnhof.se (Postfix) with ESMTP id 220723F535;
 Wed, 20 Jan 2021 14:32:49 +0100 (CET)
Authentication-Results: pio-pvt-msa1.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b="Ikq/LmUs";
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.351
X-Spam-Level: 
X-Spam-Status: No, score=-2.351 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.252,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Received: from pio-pvt-msa1.bahnhof.se ([127.0.0.1])
 by localhost (pio-pvt-msa1.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DN34TIPCnyNF; Wed, 20 Jan 2021 14:32:48 +0100 (CET)
Received: by pio-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id CC1573F32B;
 Wed, 20 Jan 2021 14:32:46 +0100 (CET)
Received: from [10.249.254.218] (unknown [134.191.232.70])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 2D72E36014B;
 Wed, 20 Jan 2021 14:32:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1611149565; bh=rvC6Fw2cBEZCxAlYHb7hrkl32ab1Rzkx+a/pXlgkWoU=;
 h=Subject:From:To:References:Date:In-Reply-To:From;
 b=Ikq/LmUsJ+UhfhZZTkItwSkA/E4j3+Atbv3uEzqI1Cy7S03xnT2Mi9cNHjSJtlkux
 YYWgl9lsDFlfCwXbUZM7AkFUq4wEItZb712pqPnh+ftoW9fGtNC/7BD1DnXx6EF4vi
 LAezJrcpH7XIDELS0Q7P7rjeVPeR2oketR+Fd3rg=
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210105153558.134272-1-maarten.lankhorst@linux.intel.com>
 <20210105153558.134272-17-maarten.lankhorst@linux.intel.com>
 <5b38d4b5-ded7-9f4d-118e-74f706c6a8ad@shipmail.org>
 <a72fabc9-0ba1-daa7-a690-e9530f9ce5bc@linux.intel.com>
 <a1d2c25b-6035-c4c8-8703-7c6a3ddb675f@shipmail.org>
Message-ID: <ced964a4-5893-8d21-52ab-9bad56a9677e@shipmail.org>
Date: Wed, 20 Jan 2021 14:32:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <a1d2c25b-6035-c4c8-8703-7c6a3ddb675f@shipmail.org>
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

Ck9uIDEvMTgvMjEgMTo1NSBQTSwgVGhvbWFzIEhlbGxzdHLDtm0gKEludGVsKSB3cm90ZToKPgo+
IE9uIDEvMTgvMjEgMTo0MyBQTSwgTWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6Cj4+IE9wIDE4LTAx
LTIwMjEgb20gMTI6MzAgc2NocmVlZiBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwpOgo+Pj4gSGks
Cj4+Pgo+Pj4gT24gMS81LzIxIDQ6MzUgUE0sIE1hYXJ0ZW4gTGFua2hvcnN0IHdyb3RlOgo+Pj4+
IEluc3RlYWQgb2YgZG9pbmcgd2hhdCB3ZSBkbyBjdXJyZW50bHksIHdoaWNoIHdpbGwgbmV2ZXIg
d29yayB3aXRoCj4+Pj4gUFJPVkVfTE9DS0lORywgZG8gdGhlIHNhbWUgYXMgQU1EIGRvZXMsIGFu
ZCBzb21ldGhpbmcgc2ltaWxhciB0bwo+Pj4+IHJlbG9jYXRpb24gc2xvd3BhdGguIFdoZW4gYWxs
IGxvY2tzIGFyZSBkcm9wcGVkLCB3ZSBhY3F1aXJlIHRoZQo+Pj4+IHBhZ2VzIGZvciBwaW5uaW5n
LiBXaGVuIHRoZSBsb2NrcyBhcmUgdGFrZW4sIHdlIHRyYW5zZmVyIHRob3NlCj4+Pj4gcGFnZXMg
aW4gLmdldF9wYWdlcygpIHRvIHRoZSBiby4gQXMgYSBmaW5hbCBjaGVjayBiZWZvcmUgaW5zdGFs
bGluZwo+Pj4+IHRoZSBmZW5jZXMsIHdlIGVuc3VyZSB0aGF0IHRoZSBtbXUgbm90aWZpZXIgd2Fz
IG5vdCBjYWxsZWQ7IGlmIGl0IGlzLAo+Pj4+IHdlIHJldHVybiAtRUFHQUlOIHRvIHVzZXJzcGFj
ZSB0byBzaWduYWwgaXQgaGFzIHRvIHN0YXJ0IG92ZXIuCj4+Pj4KPj4+PiBDaGFuZ2VzIHNpbmNl
IHYxOgo+Pj4+IC0gVW5iaW5kaW5nIGlzIGRvbmUgaW4gc3VibWl0X2luaXQgb25seS4gc3VibWl0
X2JlZ2luKCkgcmVtb3ZlZC4KPj4+PiAtIE1NVV9OT1RGSUVSIC0+IE1NVV9OT1RJRklFUgo+Pj4+
IENoYW5nZXMgc2luY2UgdjI6Cj4+Pj4gLSBNYWtlIGk5MTUtPm1tLm5vdGlmaWVyIGEgc3Bpbmxv
Y2suCj4+Pj4gQ2hhbmdlcyBzaW5jZSB2MzoKPj4+PiAtIEFkZCBXQVJOX09OIGlmIHRoZXJlIGFy
ZSBhbnkgcGFnZSByZWZlcmVuY2VzIGxlZnQsIHNob3VsZCBoYXZlIAo+Pj4+IGJlZW4gMC4KPj4+
PiAtIFJldHVybiAwIG9uIHN1Y2Nlc3MgaW4gc3VibWl0X2luaXQoKSwgYnVnIGZyb20gc3Bpbmxv
Y2sgY29udmVyc2lvbi4KPj4+PiAtIFJlbGVhc2UgcHZlYyBvdXRzaWRlIG9mIG5vdGlmaWVyX2xv
Y2sgKFRob21hcykuCj4+Pj4gQ2hhbmdlcyBzaW5jZSB2NDoKPj4+PiAtIE1lbnRpb24gd2h5IHdl
J3JlIGNsZWFyaW5nIGViLT5baSArIDFdLnZtYSBpbiB0aGUgY29kZS4gKFRob21hcykKPj4+PiAt
IEFjdHVhbGx5IGNoZWNrIGFsbCBpbnZhbGlkYXRpb25zIGluIGViX21vdmVfdG9fZ3B1LiAoVGhv
bWFzKQo+Pj4+IC0gRG8gbm90IHdhaXQgd2hlbiBwcm9jZXNzIGlzIGV4aXRpbmcgdG8gZml4IAo+
Pj4+IGdlbV9jdHhfcGVyc2lzdGVuY2UudXNlcnB0ci4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6
IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4+
Pgo+Pj4gLi4uCj4+Pgo+Pj4+IMKgwqAgLXN0YXRpYyBpbnQKPj4+PiAtdXNlcnB0cl9tbl9pbnZh
bGlkYXRlX3JhbmdlX3N0YXJ0KHN0cnVjdCBtbXVfbm90aWZpZXIgKl9tbiwKPj4+PiAtwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb25zdCBzdHJ1Y3QgbW11X25vdGlmaWVyX3Jh
bmdlICpyYW5nZSkKPj4+PiAtewo+Pj4+IC3CoMKgwqAgc3RydWN0IGk5MTVfbW11X25vdGlmaWVy
ICptbiA9Cj4+Pj4gLcKgwqDCoMKgwqDCoMKgIGNvbnRhaW5lcl9vZihfbW4sIHN0cnVjdCBpOTE1
X21tdV9ub3RpZmllciwgbW4pOwo+Pj4+IC3CoMKgwqAgc3RydWN0IGludGVydmFsX3RyZWVfbm9k
ZSAqaXQ7Cj4+Pj4gLcKgwqDCoCB1bnNpZ25lZCBsb25nIGVuZDsKPj4+PiAtwqDCoMKgIGludCBy
ZXQgPSAwOwo+Pj4+IC0KPj4+PiAtwqDCoMKgIGlmIChSQl9FTVBUWV9ST09UKCZtbi0+b2JqZWN0
cy5yYl9yb290KSkKPj4+PiAtwqDCoMKgwqDCoMKgwqAgcmV0dXJuIDA7Cj4+Pj4gLQo+Pj4+IC3C
oMKgwqAgLyogaW50ZXJ2YWwgcmFuZ2VzIGFyZSBpbmNsdXNpdmUsIGJ1dCBpbnZhbGlkYXRlIHJh
bmdlIGlzIAo+Pj4+IGV4Y2x1c2l2ZSAqLwo+Pj4+IC3CoMKgwqAgZW5kID0gcmFuZ2UtPmVuZCAt
IDE7Cj4+Pj4gLQo+Pj4+IC3CoMKgwqAgc3Bpbl9sb2NrKCZtbi0+bG9jayk7Cj4+Pj4gLcKgwqDC
oCBpdCA9IGludGVydmFsX3RyZWVfaXRlcl9maXJzdCgmbW4tPm9iamVjdHMsIHJhbmdlLT5zdGFy
dCwgZW5kKTsKPj4+PiAtwqDCoMKgIHdoaWxlIChpdCkgewo+Pj4+IC3CoMKgwqDCoMKgwqDCoCBz
dHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOwo+Pj4+IC0KPj4+PiAtwqDCoMKgwqDCoMKg
wqAgaWYgKCFtbXVfbm90aWZpZXJfcmFuZ2VfYmxvY2thYmxlKHJhbmdlKSkgewo+Pj4+IC3CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHJldCA9IC1FQUdBSU47Cj4+Pj4gLcKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgYnJlYWs7Cj4+Pj4gLcKgwqDCoMKgwqDCoMKgIH0KPj4+PiArwqDCoMKgIHNwaW5fbG9j
aygmaTkxNS0+bW0ubm90aWZpZXJfbG9jayk7Cj4+Pj4gwqDCoCAtwqDCoMKgwqDCoMKgwqAgLyoK
Pj4+PiAtwqDCoMKgwqDCoMKgwqDCoCAqIFRoZSBtbXVfb2JqZWN0IGlzIHJlbGVhc2VkIGxhdGUg
d2hlbiBkZXN0cm95aW5nIHRoZQo+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgICogR0VNIG9iamVjdCBz
byBpdCBpcyBlbnRpcmVseSBwb3NzaWJsZSB0byBnYWluIGEKPj4+PiAtwqDCoMKgwqDCoMKgwqDC
oCAqIHJlZmVyZW5jZSBvbiBhbiBvYmplY3QgaW4gdGhlIHByb2Nlc3Mgb2YgYmVpbmcgZnJlZWQK
Pj4+PiAtwqDCoMKgwqDCoMKgwqDCoCAqIHNpbmNlIG91ciBzZXJpYWxpc2F0aW9uIGlzIHZpYSB0
aGUgc3BpbmxvY2sgYW5kIG5vdAo+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgICogdGhlIHN0cnVjdF9t
dXRleCAtIGFuZCBjb25zZXF1ZW50bHkgdXNlIGl0IGFmdGVyIGl0Cj4+Pj4gLcKgwqDCoMKgwqDC
oMKgwqAgKiBpcyBmcmVlZCBhbmQgdGhlbiBkb3VibGUgZnJlZSBpdC4gVG8gcHJldmVudCB0aGF0
Cj4+Pj4gLcKgwqDCoMKgwqDCoMKgwqAgKiB1c2UtYWZ0ZXItZnJlZSB3ZSBvbmx5IGFjcXVpcmUg
YSByZWZlcmVuY2Ugb24gdGhlCj4+Pj4gLcKgwqDCoMKgwqDCoMKgwqAgKiBvYmplY3QgaWYgaXQg
aXMgbm90IGluIHRoZSBwcm9jZXNzIG9mIGJlaW5nIGRlc3Ryb3llZC4KPj4+PiAtwqDCoMKgwqDC
oMKgwqDCoCAqLwo+Pj4+IC3CoMKgwqDCoMKgwqDCoCBvYmogPSBjb250YWluZXJfb2YoaXQsIHN0
cnVjdCBpOTE1X21tdV9vYmplY3QsIGl0KS0+b2JqOwo+Pj4+IC3CoMKgwqDCoMKgwqDCoCBpZiAo
IWtyZWZfZ2V0X3VubGVzc196ZXJvKCZvYmotPmJhc2UucmVmY291bnQpKSB7Cj4+Pj4gLcKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgaXQgPSBpbnRlcnZhbF90cmVlX2l0ZXJfbmV4dChpdCwgcmFuZ2Ut
PnN0YXJ0LCBlbmQpOwo+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnRpbnVlOwo+Pj4+
IC3CoMKgwqDCoMKgwqDCoCB9Cj4+Pj4gLcKgwqDCoMKgwqDCoMKgIHNwaW5fdW5sb2NrKCZtbi0+
bG9jayk7Cj4+Pj4gK8KgwqDCoCBtbXVfaW50ZXJ2YWxfc2V0X3NlcShtbmksIGN1cl9zZXEpOwo+
Pj4+IMKgwqAgLcKgwqDCoMKgwqDCoMKgIHJldCA9IGk5MTVfZ2VtX29iamVjdF91bmJpbmQob2Jq
LAo+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
STkxNV9HRU1fT0JKRUNUX1VOQklORF9BQ1RJVkUgfAo+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgSTkxNV9HRU1fT0JKRUNUX1VOQklORF9CQVJS
SUVSKTsKPj4+PiAtwqDCoMKgwqDCoMKgwqAgaWYgKHJldCA9PSAwKQo+Pj4+IC3CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHJldCA9IF9faTkxNV9nZW1fb2JqZWN0X3B1dF9wYWdlcyhvYmopOwo+Pj4+
IC3CoMKgwqDCoMKgwqDCoCBpOTE1X2dlbV9vYmplY3RfcHV0KG9iaik7Cj4+Pj4gLcKgwqDCoMKg
wqDCoMKgIGlmIChyZXQpCj4+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIHJldDsK
Pj4+PiArwqDCoMKgIHNwaW5fdW5sb2NrKCZpOTE1LT5tbS5ub3RpZmllcl9sb2NrKTsKPj4+PiDC
oMKgIC3CoMKgwqDCoMKgwqDCoCBzcGluX2xvY2soJm1uLT5sb2NrKTsKPj4+PiArwqDCoMKgIC8q
IER1cmluZyBleGl0IHRoZXJlJ3Mgbm8gbmVlZCB0byB3YWl0ICovCj4+Pj4gK8KgwqDCoCBpZiAo
Y3VycmVudC0+ZmxhZ3MgJiBQRl9FWElUSU5HKQo+Pj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4g
dHJ1ZTsKPj4+IERpZCB3ZSBldmVyIGZpbmQgb3V0IHdoeSB0aGlzIGlzIG5lZWRlZCwgdGhhdCBp
cyB3aHkgdGhlIG9sZCB1c2VycHRyIAo+Pj4gaW52YWxpZGF0aW9uIGNhbGxlZCBkb2Vzbid0IGhh
bmcgaGVyZSBpbiBhIHNpbWlsYXIgd2F5Pwo+PiBJdCdzIGFuIG9wdGltaXphdGlvbiBmb3IgdGVh
cmRvd24gYmVjYXVzZSB1c2VycHRyIHdpbGwgYmUgaW52YWxpZGF0ZWQgCj4+IGFueXdheSwgYnV0
IGFsc28gZm9yIGdlbV9jdHhfcGVyc2lzdGVuY2UudXNlcnB0ciwgYWx0aG91Z2gKPj4KPj4gd2l0
aCB1bGxzIHRoYXQgdGVzdCBtYXkgc3RvcCB3b3JraW5nIGFueXdheSBiZWNhdXNlIGl0IHRha2Vz
IGFuIAo+PiBvdXRfZmVuY2UuCj4KPiBTdXJlLCBidXQgd2hhdCBJIG1lYW50IHdhczogRGlkIHdl
IGZpbmQgb3V0IHdoYXQncyBkaWZmZXJlbnQgaW4gdGhlIAo+IG5ldyBjb2RlIGNvbXBhcmVkIHRv
IHRoZSBvbGQgb25lPyBCZWNhdXNlIHRoZSBvbGQgY29kZSBhbHNvIHdhaXRzIGZvciAKPiBncHUg
d2hlbiB1bmJpbmRpbmcgaW4gdGhlIG1tdV9ub3RpZmllciwgYnV0IGl0IGFwcGVhcnMgbGlrZSBp
biB0aGUgb2xkIAo+IGNvZGUsIHRoZSBtbXUgbm90aWZpZXIgaXMgbmV2ZXIgY2FsbGVkIGhlcmUu
IEF0IGxlYXN0IHRvIG1lIGl0IHNlZW1zIAo+IGl0IHdvdWxkIGJlIGdvb2QgaWYgd2UgdW5kZXJz
dGFuZCB3aGF0IHRoYXQgZGlmZmVyZW5jZSBpcy4KPgo+IC9UaG9tYXMKPgpJSVJDIEkgZGlkIHNv
bWUgaW52ZXN0aWdhdGlvbiBoZXJlIGFzIHdlbGwgYW5kIGZyb20gd2hhdCBJIGNvdWxkIHRlbGws
IAp0aGUgbm90aWZpZXIgd2FzIG5vdCBjYWxsZWQgYXQgYWxsIGZvciB0aGUgb2xkIGNvZGUuIEkg
ZG9uJ3QgcmVhbGx5IGZlZWwgCmNvbWZvcnRhYmxlIHdpdGggYW4gUi1CIHVudGlsIHdlJ3ZlIHJl
YWxseSB1bmRlcnN0b29kIHdoeS4KCkFsc28gdGhlcmUgd2FzIGEgZGlzY3Vzc2lvbiB3aXRoIHlv
dSwgU3VkZWVwIGFuZCBDaHJpcyBhYm91dCB3aGV0aGVyIAp1c2VyLXNwYWNlIHdhcyBhY3R1YWxs
eSBub3QgY29tZm9ydGFibGUgd2l0aCB0aGlzLCB5b3Ugc2F5aW5nIGl0IHdvcmtlZCwgCkNocmlz
IHNhaWQgdGVzdHMgd2VyZSBzaG93aW5nIG90aGVyd2lzZS4gV2hhdCB3ZXJlIHRob3NlIHRlc3Rz
PwoKVGhhbmtzLAoKVGhvbWFzCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
