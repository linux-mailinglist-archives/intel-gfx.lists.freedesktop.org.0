Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D456410CA0E
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 15:03:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38C616E81F;
	Thu, 28 Nov 2019 14:03:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp.domeneshop.no (smtp.domeneshop.no
 [IPv6:2a01:5b40:0:3005::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24CD46E81F;
 Thu, 28 Nov 2019 14:03:53 +0000 (UTC)
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:60986
 helo=[192.168.10.174])
 by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <noralf@tronnes.org>)
 id 1iaKOd-0004AZ-3s; Thu, 28 Nov 2019 15:03:51 +0100
To: Jani Nikula <jani.nikula@intel.com>, linux-fbdev@vger.kernel.org,
 dri-devel@lists.freedesktop.org
References: <cover.1574871797.git.jani.nikula@intel.com>
 <e2b1685703878612093a37189d37685303fa15e9.1574871797.git.jani.nikula@intel.com>
 <f8292d00-5d62-cd3c-9d17-37a3feebd74b@tronnes.org> <87lfs0mcjh.fsf@intel.com>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <a725ccfb-1da9-6659-c3ab-1187077897d6@tronnes.org>
Date: Thu, 28 Nov 2019 15:03:47 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <87lfs0mcjh.fsf@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=tronnes.org
 ; s=ds201810; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nvJP6Jz4RDMtaJnCRzBV01F/F1vdDhvbXGhtYZx1GcA=; b=MeKKMMmlj6jgpVKdYU0nkAanUp
 uu0svRRVgX4xK4c3Pve96wA02MYhH3L72ttIxus1A7T/ifWHLxK0Z50KX4TlZF+g0sipde8vdA26I
 ER8YXvmrdiK1eCBA9wovdNX3XBuepim1Gb+qf1FYy3uEn/Qq5zoRhV4oLVOp+D+yq4T0qlz7refI5
 D2XeCB2DVx40zrr02Cgqs2CIRmxY8VX/VYXS1T/MgUjcVclsmQOY1RDEZVDTpn/Qx72tOdV6yASwa
 O/QJH8rqJy2CM/VU34rYxyPcZFSbxkgWRfk6C5BV9wF1ryb2vMBaLG5OmQ22G5jXihBJe/ZFKinWF
 i4B6rUdA==;
Subject: Re: [Intel-gfx] [PATCH 02/13] drm/fb-helper: don't preserve fb_ops
 across deferred IO use
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

CgpEZW4gMjguMTEuMjAxOSAxMy4wNSwgc2tyZXYgSmFuaSBOaWt1bGE6Cj4gT24gVGh1LCAyOCBO
b3YgMjAxOSwgTm9yYWxmIFRyw7hubmVzIDxub3JhbGZAdHJvbm5lcy5vcmc+IHdyb3RlOgo+PiBE
ZW4gMjcuMTEuMjAxOSAxNy4zMSwgc2tyZXYgSmFuaSBOaWt1bGE6Cj4+PiBEZWZlcnJlZCBJTyBu
b3cgcHJlc2VydmVzIHRoZSBmYl9vcHMuCj4+Pgo+Pj4gQ2M6IE5vcmFsZiBUcsO4bm5lcyA8bm9y
YWxmQHRyb25uZXMub3JnPgo+Pj4gQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
Pj4+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4+
PiAtLS0KPj4+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX2ZiX2hlbHBlci5jIHwgMTggKystLS0tLS0t
LS0tLS0tLS0tCj4+PiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMTYgZGVsZXRp
b25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZmJfaGVscGVy
LmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2ZiX2hlbHBlci5jCj4+PiBpbmRleCAwYzA4OGVhNzBh
ZDAuLmE1YTJhNTM4ZDA4NSAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZmJf
aGVscGVyLmMKPj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZmJfaGVscGVyLmMKPj4+IEBA
IC0xOTU0LDcgKzE5NTQsNiBAQCBzdGF0aWMgaW50IGRybV9mYmRldl9mYl9yZWxlYXNlKHN0cnVj
dCBmYl9pbmZvICppbmZvLCBpbnQgdXNlcikKPj4+ICBzdGF0aWMgdm9pZCBkcm1fZmJkZXZfY2xl
YW51cChzdHJ1Y3QgZHJtX2ZiX2hlbHBlciAqZmJfaGVscGVyKQo+Pj4gIHsKPj4+ICAJc3RydWN0
IGZiX2luZm8gKmZiaSA9IGZiX2hlbHBlci0+ZmJkZXY7Cj4+PiAtCXN0cnVjdCBmYl9vcHMgKmZi
b3BzID0gTlVMTDsKPj4+ICAJdm9pZCAqc2hhZG93ID0gTlVMTDsKPj4+ICAKPj4+ICAJaWYgKCFm
Yl9oZWxwZXItPmRldikKPj4+IEBAIC0xOTYzLDE1ICsxOTYyLDExIEBAIHN0YXRpYyB2b2lkIGRy
bV9mYmRldl9jbGVhbnVwKHN0cnVjdCBkcm1fZmJfaGVscGVyICpmYl9oZWxwZXIpCj4+PiAgCWlm
IChmYmkgJiYgZmJpLT5mYmRlZmlvKSB7Cj4+PiAgCQlmYl9kZWZlcnJlZF9pb19jbGVhbnVwKGZi
aSk7Cj4+PiAgCQlzaGFkb3cgPSBmYmktPnNjcmVlbl9idWZmZXI7Cj4+PiAtCQlmYm9wcyA9IGZi
aS0+ZmJvcHM7Cj4+PiAgCX0KPj4+ICAKPj4+ICAJZHJtX2ZiX2hlbHBlcl9maW5pKGZiX2hlbHBl
cik7Cj4+PiAgCj4+PiAtCWlmIChzaGFkb3cpIHsKPj4+IC0JCXZmcmVlKHNoYWRvdyk7Cj4+PiAt
CQlrZnJlZShmYm9wcyk7Cj4+PiAtCX0KPj4+ICsJdmZyZWUoc2hhZG93KTsKPj4+ICAKPj4+ICAJ
ZHJtX2NsaWVudF9mcmFtZWJ1ZmZlcl9kZWxldGUoZmJfaGVscGVyLT5idWZmZXIpOwo+Pj4gIH0K
Pj4+IEBAIC0yMDYyLDIzICsyMDU3LDE0IEBAIHN0YXRpYyBpbnQgZHJtX2ZiX2hlbHBlcl9nZW5l
cmljX3Byb2JlKHN0cnVjdCBkcm1fZmJfaGVscGVyICpmYl9oZWxwZXIsCj4+PiAgCWRybV9mYl9o
ZWxwZXJfZmlsbF9pbmZvKGZiaSwgZmJfaGVscGVyLCBzaXplcyk7Cj4+PiAgCj4+PiAgCWlmIChk
cm1fZmJkZXZfdXNlX3NoYWRvd19mYihmYl9oZWxwZXIpKSB7Cj4+PiAtCQlzdHJ1Y3QgZmJfb3Bz
ICpmYm9wczsKPj4+ICAJCXZvaWQgKnNoYWRvdzsKPj4+ICAKPj4+IC0JCS8qCj4+PiAtCQkgKiBm
Yl9kZWZlcnJlZF9pb19jbGVhbnVwKCkgY2xlYXJzICZmYm9wcy0+ZmJfbW1hcCBzbyBhIHBlcgo+
Pj4gLQkJICogaW5zdGFuY2UgdmVyc2lvbiBpcyBuZWNlc3NhcnkuCj4+PiAtCQkgKi8KPj4+IC0J
CWZib3BzID0ga3phbGxvYyhzaXplb2YoKmZib3BzKSwgR0ZQX0tFUk5FTCk7Cj4+PiAgCQlzaGFk
b3cgPSB2emFsbG9jKGZiaS0+c2NyZWVuX3NpemUpOwo+Pj4gLQkJaWYgKCFmYm9wcyB8fCAhc2hh
ZG93KSB7Cj4+PiAtCQkJa2ZyZWUoZmJvcHMpOwo+Pj4gKwkJaWYgKCFzaGFkb3cpIHsKPj4+ICAJ
CQl2ZnJlZShzaGFkb3cpOwo+Pgo+PiBUaGlzIHZmcmVlIGNhbiBpcyBhIG5vLW9wIG5vdyBhbmQg
Y2FuIGJlIGRyb3BwZWQuIFdpdGggdGhhdDoKPiAKPiBEJ29oIQo+IAo+IFdpdGggdGhhdCBJIHRo
aW5rIEknZCBhbHNvIGRyb3AgdGhlIHNoYWRvdyBsb2NhbCB2YXJpYWJsZSBhbmQgYXNzaWduIHRv
Cj4gZmJpLT5zY3JlZW5fYnVmZmVyIGRpcmVjdGx5LiBGaW5lIHdpdGggdGhhdD8KClN1cmUsIHRo
YXQncyBldmVuIGJldHRlci4KCk5vcmFsZi4KCj4gCj4gVGhhbmtzLgo+IAo+IEJSLAo+IEphbmku
Cj4gCj4+Cj4+IFJldmlld2VkLWJ5OiBOb3JhbGYgVHLDuG5uZXMgPG5vcmFsZkB0cm9ubmVzLm9y
Zz4KPj4KPj4+ICAJCQlyZXR1cm4gLUVOT01FTTsKPj4+ICAJCX0KPj4+ICAKPj4+IC0JCSpmYm9w
cyA9ICpmYmktPmZib3BzOwo+Pj4gLQkJZmJpLT5mYm9wcyA9IGZib3BzOwo+Pj4gIAkJZmJpLT5z
Y3JlZW5fYnVmZmVyID0gc2hhZG93Owo+Pj4gIAkJZmJpLT5mYmRlZmlvID0gJmRybV9mYmRldl9k
ZWZpbzsKPj4+ICAKPj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPj4gSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwo+PiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
