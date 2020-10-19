Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF84729231E
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Oct 2020 09:53:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 250C36E8F0;
	Mon, 19 Oct 2020 07:53:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from pio-pvt-msa2.bahnhof.se (pio-pvt-msa2.bahnhof.se [79.136.2.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E87FB6E8F0
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Oct 2020 07:53:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by pio-pvt-msa2.bahnhof.se (Postfix) with ESMTP id 5871E3F4B0;
 Mon, 19 Oct 2020 09:52:54 +0200 (CEST)
Authentication-Results: pio-pvt-msa2.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=CUyzjGrr; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.346
X-Spam-Level: 
X-Spam-Status: No, score=-2.346 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.247,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Received: from pio-pvt-msa2.bahnhof.se ([127.0.0.1])
 by localhost (pio-pvt-msa2.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LG3-k73B71q4; Mon, 19 Oct 2020 09:52:53 +0200 (CEST)
Received: by pio-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id 2A9AE3F40E;
 Mon, 19 Oct 2020 09:52:52 +0200 (CEST)
Received: from CitrixDT-070.SSPE.ch.intel.com (jfdmzpr06-ext.jf.intel.com
 [134.134.137.75])
 by mail1.shipmail.org (Postfix) with ESMTPSA id BE3D4361CA4;
 Mon, 19 Oct 2020 09:52:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1603093978; bh=bN9IzCVvVBzC9ozYjllKA725gBk/nuIpHHJvc7/lWbs=;
 h=Subject:From:To:References:Date:In-Reply-To:From;
 b=CUyzjGrrgP+9ZpQ6CVRM3lgVZIEsMN7aKhofFQmCK07m+vj3UYyVRbwWBNIb11vd/
 KEm1MlWlM2x6luxN7yae5ai0dBxeLKxKUacruRUPN6Aakn2ZdADF+ROED8+ZSXiDq3
 yJHIdABlg7oWCb4dEg8MNNhtzeZ7ogaN89koOHuY=
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
 <20201016104444.1492028-16-maarten.lankhorst@linux.intel.com>
 <844623d6-389f-d734-b149-2593dd923ca4@shipmail.org>
Message-ID: <a6402ea7-c299-2eea-a832-9e8027f8556f@shipmail.org>
Date: Mon, 19 Oct 2020 09:52:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <844623d6-389f-d734-b149-2593dd923ca4@shipmail.org>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 15/61] drm/i915: Fix userptr so we do not
 have to worry about obj->mm.lock, v4.
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

Ck9uIDEwLzE5LzIwIDk6MzAgQU0sIFRob21hcyBIZWxsc3Ryw7ZtIChJbnRlbCkgd3JvdGU6Cj4K
PiBPbiAxMC8xNi8yMCAxMjo0MyBQTSwgTWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6Cj4+IEluc3Rl
YWQgb2YgZG9pbmcgd2hhdCB3ZSBkbyBjdXJyZW50bHksIHdoaWNoIHdpbGwgbmV2ZXIgd29yayB3
aXRoCj4+IFBST1ZFX0xPQ0tJTkcsIGRvIHRoZSBzYW1lIGFzIEFNRCBkb2VzLCBhbmQgc29tZXRo
aW5nIHNpbWlsYXIgdG8KPj4gcmVsb2NhdGlvbiBzbG93cGF0aC4gV2hlbiBhbGwgbG9ja3MgYXJl
IGRyb3BwZWQsIHdlIGFjcXVpcmUgdGhlCj4+IHBhZ2VzIGZvciBwaW5uaW5nLiBXaGVuIHRoZSBs
b2NrcyBhcmUgdGFrZW4sIHdlIHRyYW5zZmVyIHRob3NlCj4+IHBhZ2VzIGluIC5nZXRfcGFnZXMo
KSB0byB0aGUgYm8uIEFzIGEgZmluYWwgY2hlY2sgYmVmb3JlIGluc3RhbGxpbmcKPj4gdGhlIGZl
bmNlcywgd2UgZW5zdXJlIHRoYXQgdGhlIG1tdSBub3RpZmllciB3YXMgbm90IGNhbGxlZDsgaWYg
aXQgaXMsCj4+IHdlIHJldHVybiAtRUFHQUlOIHRvIHVzZXJzcGFjZSB0byBzaWduYWwgaXQgaGFz
IHRvIHN0YXJ0IG92ZXIuCj4+Cj4+IENoYW5nZXMgc2luY2UgdjE6Cj4+IC0gVW5iaW5kaW5nIGlz
IGRvbmUgaW4gc3VibWl0X2luaXQgb25seS4gc3VibWl0X2JlZ2luKCkgcmVtb3ZlZC4KPj4gLSBN
TVVfTk9URklFUiAtPiBNTVVfTk9USUZJRVIKPj4gQ2hhbmdlcyBzaW5jZSB2MjoKPj4gLSBNYWtl
IGk5MTUtPm1tLm5vdGlmaWVyIGEgc3BpbmxvY2suCj4+IENoYW5nZXMgc2luY2UgdjM6Cj4+IC0g
QWRkIFdBUk5fT04gaWYgdGhlcmUgYXJlIGFueSBwYWdlIHJlZmVyZW5jZXMgbGVmdCwgc2hvdWxk
IGhhdmUgYmVlbiAwLgo+PiAtIFJldHVybiAwIG9uIHN1Y2Nlc3MgaW4gc3VibWl0X2luaXQoKSwg
YnVnIGZyb20gc3BpbmxvY2sgY29udmVyc2lvbi4KPj4gLSBSZWxlYXNlIHB2ZWMgb3V0c2lkZSBv
ZiBub3RpZmllcl9sb2NrIChUaG9tYXMpLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBNYWFydGVuIExh
bmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+Ci4uLgo+PiArc3Rh
dGljIGJvb2wgaTkxNV9nZW1fdXNlcnB0cl9pbnZhbGlkYXRlKHN0cnVjdCBtbXVfaW50ZXJ2YWxf
bm90aWZpZXIgCj4+ICptbmksCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBjb25zdCBzdHJ1Y3QgbW11X25vdGlmaWVyX3JhbmdlICpyYW5nZSwKPj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHVuc2lnbmVkIGxvbmcgY3VyX3NlcSkKPj4g
wqAgewo+PiAtwqDCoMKgIHN0cnVjdCBpOTE1X21tdV9ub3RpZmllciAqbW4gPQo+PiAtwqDCoMKg
wqDCoMKgwqAgY29udGFpbmVyX29mKF9tbiwgc3RydWN0IGk5MTVfbW11X25vdGlmaWVyLCBtbik7
Cj4+IC3CoMKgwqAgc3RydWN0IGludGVydmFsX3RyZWVfbm9kZSAqaXQ7Cj4+IC3CoMKgwqAgdW5z
aWduZWQgbG9uZyBlbmQ7Cj4+IC3CoMKgwqAgaW50IHJldCA9IDA7Cj4+IC0KPj4gLcKgwqDCoCBp
ZiAoUkJfRU1QVFlfUk9PVCgmbW4tPm9iamVjdHMucmJfcm9vdCkpCj4+IC3CoMKgwqDCoMKgwqDC
oCByZXR1cm4gMDsKPj4gLQo+PiAtwqDCoMKgIC8qIGludGVydmFsIHJhbmdlcyBhcmUgaW5jbHVz
aXZlLCBidXQgaW52YWxpZGF0ZSByYW5nZSBpcyAKPj4gZXhjbHVzaXZlICovCj4+IC3CoMKgwqAg
ZW5kID0gcmFuZ2UtPmVuZCAtIDE7Cj4+IC0KPj4gLcKgwqDCoCBzcGluX2xvY2soJm1uLT5sb2Nr
KTsKPj4gLcKgwqDCoCBpdCA9IGludGVydmFsX3RyZWVfaXRlcl9maXJzdCgmbW4tPm9iamVjdHMs
IHJhbmdlLT5zdGFydCwgZW5kKTsKPj4gLcKgwqDCoCB3aGlsZSAoaXQpIHsKPj4gLcKgwqDCoMKg
wqDCoMKgIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7Cj4+IC0KPj4gLcKgwqDCoMKg
wqDCoMKgIGlmICghbW11X25vdGlmaWVyX3JhbmdlX2Jsb2NrYWJsZShyYW5nZSkpIHsKPj4gLcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0ID0gLUVBR0FJTjsKPj4gLcKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgYnJlYWs7Cj4+IC3CoMKgwqDCoMKgwqDCoCB9Cj4+ICvCoMKgwqAgc3RydWN0IGRybV9p
OTE1X2dlbV9vYmplY3QgKm9iaiA9IGNvbnRhaW5lcl9vZihtbmksIHN0cnVjdCAKPj4gZHJtX2k5
MTVfZ2VtX29iamVjdCwgdXNlcnB0ci5ub3RpZmllcik7Cj4+ICvCoMKgwqAgc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KG9iai0+YmFzZS5kZXYpOwo+PiArwqDCoMKgIGxv
bmcgcjsKPj4gwqAgLcKgwqDCoMKgwqDCoMKgIC8qCj4+IC3CoMKgwqDCoMKgwqDCoMKgICogVGhl
IG1tdV9vYmplY3QgaXMgcmVsZWFzZWQgbGF0ZSB3aGVuIGRlc3Ryb3lpbmcgdGhlCj4+IC3CoMKg
wqDCoMKgwqDCoMKgICogR0VNIG9iamVjdCBzbyBpdCBpcyBlbnRpcmVseSBwb3NzaWJsZSB0byBn
YWluIGEKPj4gLcKgwqDCoMKgwqDCoMKgwqAgKiByZWZlcmVuY2Ugb24gYW4gb2JqZWN0IGluIHRo
ZSBwcm9jZXNzIG9mIGJlaW5nIGZyZWVkCj4+IC3CoMKgwqDCoMKgwqDCoMKgICogc2luY2Ugb3Vy
IHNlcmlhbGlzYXRpb24gaXMgdmlhIHRoZSBzcGlubG9jayBhbmQgbm90Cj4+IC3CoMKgwqDCoMKg
wqDCoMKgICogdGhlIHN0cnVjdF9tdXRleCAtIGFuZCBjb25zZXF1ZW50bHkgdXNlIGl0IGFmdGVy
IGl0Cj4+IC3CoMKgwqDCoMKgwqDCoMKgICogaXMgZnJlZWQgYW5kIHRoZW4gZG91YmxlIGZyZWUg
aXQuIFRvIHByZXZlbnQgdGhhdAo+PiAtwqDCoMKgwqDCoMKgwqDCoCAqIHVzZS1hZnRlci1mcmVl
IHdlIG9ubHkgYWNxdWlyZSBhIHJlZmVyZW5jZSBvbiB0aGUKPj4gLcKgwqDCoMKgwqDCoMKgwqAg
KiBvYmplY3QgaWYgaXQgaXMgbm90IGluIHRoZSBwcm9jZXNzIG9mIGJlaW5nIGRlc3Ryb3llZC4K
Pj4gLcKgwqDCoMKgwqDCoMKgwqAgKi8KPj4gLcKgwqDCoMKgwqDCoMKgIG9iaiA9IGNvbnRhaW5l
cl9vZihpdCwgc3RydWN0IGk5MTVfbW11X29iamVjdCwgaXQpLT5vYmo7Cj4+IC3CoMKgwqDCoMKg
wqDCoCBpZiAoIWtyZWZfZ2V0X3VubGVzc196ZXJvKCZvYmotPmJhc2UucmVmY291bnQpKSB7Cj4+
IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGl0ID0gaW50ZXJ2YWxfdHJlZV9pdGVyX25leHQoaXQs
IHJhbmdlLT5zdGFydCwgZW5kKTsKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29udGludWU7
Cj4+IC3CoMKgwqDCoMKgwqDCoCB9Cj4+IC3CoMKgwqDCoMKgwqDCoCBzcGluX3VubG9jaygmbW4t
PmxvY2spOwo+PiArwqDCoMKgIGlmICghbW11X25vdGlmaWVyX3JhbmdlX2Jsb2NrYWJsZShyYW5n
ZSkpCj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gZmFsc2U7Cj4+IMKgIC3CoMKgwqDCoMKgwqDC
oCByZXQgPSBpOTE1X2dlbV9vYmplY3RfdW5iaW5kKG9iaiwKPj4gLcKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBJOTE1X0dFTV9PQkpFQ1RfVU5CSU5EX0FD
VElWRSB8Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgSTkxNV9HRU1fT0JKRUNUX1VOQklORF9CQVJSSUVSKTsKPj4gLcKgwqDCoMKgwqDCoMKgIGlm
IChyZXQgPT0gMCkKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0ID0gX19pOTE1X2dlbV9v
YmplY3RfcHV0X3BhZ2VzKG9iaik7Cj4+IC3CoMKgwqDCoMKgwqDCoCBpOTE1X2dlbV9vYmplY3Rf
cHV0KG9iaik7Cj4+IC3CoMKgwqDCoMKgwqDCoCBpZiAocmV0KQo+PiAtwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCByZXR1cm4gcmV0Owo+Cj4gSWYgd2UgYWRkIGFuIGFkZGl0aW9uYWwgZmVuY2Ugd2Fp
dCBoZXJlIGJlZm9yZSBzZXR0aW5nIHRoZSBzZXEgKHdoaWNoIAo+IHRha2VzIHRoZSBpbnZhbGlk
YXRpb24gd3JpdGUgc2VxbG9jayksIHdlJ2QgcmVkdWNlIChidXQgZGVmaW5pdGVseSBub3QgCj4g
ZWxpbWluYXRlKSB0aGUgY2hhbmNlIG9mIHdhaXRpbmcgaW5zaWRlIHRoZSBpbnZhbGlkYXRpb24g
d3JpdGUgCj4gc2VxbG9jaywgd2hpY2ggY291bGQgdHJpZ2dlciBhIHdhaXQgaW4gc3VibWl0X2lu
aXQgdW50aWwgdGhlIAo+IHdyaXRlX3NlcWxvY2sgaXMgcmVsZWFzZWQuIFRoYXQgd291bGQgbWFr
ZSB0aGUgbmV3IHVzZXJwdHIgCj4gaW52YWxpZGF0aW9uIHNpbWlsYXJseSB1bmxpa2VseSB0byB0
cmlnZ2VyIGEgd2FpdCBpbiB0aGUgY29tbWFuZCAKPiBzdWJtaXNzaW9uIHBhdGggYXMgdGhlIHBy
ZXZpb3VzIHVzZXJwdHIgaW52YWxpZGF0aW9uLgoKSG1tLiBTY3JhdGNoIHRoYXQsIHRoYXQgd291
bGQgb25seSBhY3R1YWxseSBwb3N0cG9uZSBhIHdhaXQgZHVyaW5nIApjb21tYW5kIHN1Ym1pc3Np
b24gdG8gdGhlIG5leHQgc3VibWlzc2lvbiBzaW5jZSB3ZSdkIGJlIG1vcmUgbGlrZWx5IHRvIApp
bnN0YWxsIHlldCBhbm90aGVyIGZlbmNlLgoKL1Rob21hcwoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
