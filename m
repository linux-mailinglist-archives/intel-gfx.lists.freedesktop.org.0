Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E18168ED5
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Feb 2020 13:31:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 535E96E8BB;
	Sat, 22 Feb 2020 12:30:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 818296E8BE
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Feb 2020 12:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582374657;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hDweOxLbxXJh52ijtyoh8VSKsnT6aqZrd1ybKc6sObk=;
 b=HZQbjzKGn4inHraLPf+tOoz8EsYiHgFFkjd05tWO46aipegEKscXG28elf04ha9KT1hW+h
 6jU+nSyU3dAfNFEmeS4m6Wutlnh7GHiQWw7EbgjEOIwOPk5rWLGJV8gI06ifHPQa7+chlY
 QGxAmZfmtgg7xf6jvX7QraGihajxREE=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-186-kMkdLBdhN3yY7xRRT7HOog-1; Sat, 22 Feb 2020 07:30:55 -0500
X-MC-Unique: kMkdLBdhN3yY7xRRT7HOog-1
Received: by mail-wr1-f71.google.com with SMTP id u18so2419138wrn.11
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Feb 2020 04:30:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=m2QhiVtRP1EfFGWOJZci60yF5aoSIz+JcCji81Us0Ko=;
 b=AzMnAR+l56GR6komwPHeT8bJ+M/EfFNOZu3XTjwZMQ+q0oEC8Gavurfc1FKd8pKbjx
 HQoc9GwmADGL2pAMtaKCkUgQ0ogL8wwnBOCwX5jfmf5dU+XlTxe+x/4nXYWE3sgrF1+B
 nhZIjYrxWErm5L8NMOM4gP0gsGWg8zUa+67gZoRYYksJ4C5qV9LRrjruPzGEW2XyrpmD
 DV7knhyjFzt4vTS81MEmxZVHvhdHhl5/16uL+3iKDKst/Y7GkgtihUAVteZJCeYMpFL0
 92oxW9mYSvX5kxb3BHOhVaGZ68FI4FX9ykEMupVbkP/aZP+3aGKJ8A+xkevsP9zsHW1Y
 YDJA==
X-Gm-Message-State: APjAAAUxF0oKjzLb1vgshXDzPfAMpZVl1Io/07O/+kVeQvgWc3vSwnIs
 rSItAIwonTM4pdRoaslZEiAROLVr015D52wWmcXYZT77nmrk33K6YEoT/yrirIQt+UdknBL6XTY
 fHQvV9UvSYIbTKCTq7fM08ye5zCD/
X-Received: by 2002:adf:fe4d:: with SMTP id m13mr57521950wrs.179.1582374653768; 
 Sat, 22 Feb 2020 04:30:53 -0800 (PST)
X-Google-Smtp-Source: APXvYqyRg3ivf4ZsilL7Z4UseXgVzl8izhVMpufJa3CJKyjCkvwUZCil4uC7gXQ5n3nj1DadPlKxuw==
X-Received: by 2002:adf:fe4d:: with SMTP id m13mr57521912wrs.179.1582374653369; 
 Sat, 22 Feb 2020 04:30:53 -0800 (PST)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-7a91-34f6-66f7-d87c.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:7a91:34f6:66f7:d87c])
 by smtp.gmail.com with ESMTPSA id s8sm8779807wrt.57.2020.02.22.04.30.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 22 Feb 2020 04:30:52 -0800 (PST)
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
 <20200221210319.2245170-46-daniel.vetter@ffwll.ch>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <ffd15759-0b7b-fa3f-c670-e83ccdfe11fc@redhat.com>
Date: Sat, 22 Feb 2020 13:30:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200221210319.2245170-46-daniel.vetter@ffwll.ch>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH 45/51] drm/gm12u320: Simplify upload work
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpPbiAyLzIxLzIwIDEwOjAzIFBNLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+IEluc3RlYWQg
b2YgaGF2aW5nIGEgd29yayBpdGVtIHRoYXQgbmV2ZXIgc3RvcHMgKHdoaWNoIHJlYWxseSBzaG91
bGQgYmUKPiBhIGt0aHJlYWQpLCB3aXRoIGEgZGVkaWNhdGVkIHdvcmtxdWV1ZSB0byBub3QgdXBz
ZXQgYW55b25lIGVsc2UsIHVzZSBhCj4gZGVsYXllZCB3b3JrLiBBIGJ1bmNoIG9mIGNoYW5nZXM6
Cj4gCj4gLSBXZSBjYW4gdGhyb3cgb3V0IGFsbCB0aGUgY3VzdG9tIHdha2V1cCBhbmQgcmVxdWV1
ZSBsb2dpYyBhbmQgc3RhdGUKPiAgICB0cmFja2luZy4gSWYgd2Ugc2NoZWR1bGUgdGhlIHdvcmsg
d2l0aCBhIDAgZGVsYXkgaXQnbGwgZ2V0Cj4gICAgc2NoZWR1bGVkIGltbWVkaWF0ZWx5LgoKSSdt
IGFmcmFpZCB0aGF0IHRoYXQgaXMgbm90IHRydWUsIGZyb20gdGhlIGtkb2Mgb2YKcXVldWVfZGVs
YXllZF93b3JrX29uKCkgICh3aGljaCB0aGUgb3RoZXIgZnVuY3Rpb25zIGFyZSB3cmFwcGVycyBv
ZikgOgoKICAqIFJldHVybjogJWZhbHNlIGlmIEB3b3JrIHdhcyBhbHJlYWR5IG9uIGEgcXVldWUs
ICV0cnVlIG90aGVyd2lzZS4gIElmCiAgKiBAZGVsYXkgaXMgemVybyBhbmQgQGR3b3JrIGlzIGlk
bGUsIGl0IHdpbGwgYmUgc2NoZWR1bGVkIGZvciBpbW1lZGlhdGUKICAqIGV4ZWN1dGlvbi4KCkFu
ZCBzaW5jZSB0aGUgd29yayBnZXRzIHNjaGVkdWxlZCB3aXRoIElETEVfVElNRU9VVCBhdCB0aGUg
ZW5kIG9mCnRoZSAobW9kaWZpZWQpIGdtMTJ1MzIwX2ZiX3VwZGF0ZV93b3JrLCBpdCB3aWxsIG5v
dCBiZSBpZGxlIHdoZW4KZ20xMnUzMjBfZmJfbWFya19kaXJ0eSgpIGRvZXMgdGhlIHNjaGVkdWxl
IHdpdGggMCB0aW1lb3V0LCBzbyBpdAp3aWxsIHN0YXkgc2NoZWR1bGVkIGF0IHRoZSBvbGQgSURM
RV9USU1FT1VUIGFuZCB3ZSB3aWxsIGdldCBhCnZlcnkgbG93IGZyYW1lcmF0ZS4KCkluc3RlYWQg
d2UgY291bGQgdXNlIG1vZF9kZWxheWVkX3dvcmtfb24gaW4gdGhlIGNhc2Ugd2hlcmUgd2Ugd2Fu
dAowIHRpbWVvdXQsIHRoYXQgd2lsbCBiZWhhdmUgYXMgcXVldWVfZGVsYXllZF93b3JrX29uKCkg
d2hlbiB0aGUgd29yawpoYXMgbm90IGJlZW4gc2NoZWR1bGVkIHlldCBhbmQgaXQgd2lsbCBtb2Rp
ZnkgdGhlIHRpbWVvdXQgb3RoZXJ3aXNlLgoKVGhpcyB3aWxsIHN0aWxsIGFsbG93IHVzIHRvIGdl
dCByaWQgb2YgdGhlIHdhaXRxLgoKIyMjCgpNb3JlIGluIGdlbmVyYWwgdGhvdWdoIEknbSBub3Qg
c3VyZSBpZiBnZXR0aW5nIHJpZCBvZiBoYXZpbmcgb3VyIG93bgp3b3JrcXVldWUgaXMgYSBnb29k
IGlkZWEgKGdldHRpbmcgcmlkIG9mIHRoZSB3YWl0cSBpcyBzdGlsbCBhIG5pY2UKY2xlYW51cCku
IFRoZXNlIHByb2plY3RvcnMgY2FuIGJlIGNvbm5lY3RlZCBvdmVyIFVTQjIsIGFuZCB3ZSBzZW5k
IDIwCmJsb2NrcyBmb3IgYSBmcmFtZSB1cGRhdGUuIEZvciBlYWNoIGJsb2NrIHdlIHNlbmQgYSBj
b21tYW5kICsgZGF0YQorIHJlYWRiYWNrIHN0YXR1cywgdGhlIGRhdGEgcGFydCBkb2VzIG5vdCBm
aXQgaW4gYSBzaW5nbGUgVVNCIDIgdGltZXNsaWNlCnNvIHRoYXQgdGFrZXMgMiBtcyArIDEgbXMg
Zm9yIHRoZSBjb21tYW5kICsgMW1zIG9mIHRoZSBzdGF0dXMsIHNvIHRoaXMKdGFrZXMgYXByb3gu
IDgwIG1zIG9uIGFuIGlkbGUgVVNCLTIgYnVzLCBpZiB0aGUgYnVzIGlzIGluIHVzZSB0aGluZ3Mg
Z2V0CndvcnNlIGFuZCB0aGlzIGFzc3VtZXMgaW5zdGFudCB0dXJuIGFyb3VuZCBmb3IgYWxsIHRo
ZSBjb21tYW5kcyBmcm9tIHRoZQpwcm9qZWN0b3IuCgpzY2hlZHVsZV9kZWxheWVkX3dvcmsoKSB1
c2VzIHRoZSBzeXN0ZW1fd3EgYW5kIHRoYXQgaXMgZGVzY3JpYmVkIGluCnRoZSBkb2NzIGFzOgoK
ICAqIHN5c3RlbV93cSBpcyB0aGUgb25lIHVzZWQgYnkgc2NoZWR1bGVbX2RlbGF5ZWRdX3dvcmtb
X29uXSgpLgogICogTXVsdGktQ1BVIG11bHRpLXRocmVhZGVkLiAgVGhlcmUgYXJlIHVzZXJzIHdo
aWNoIGV4cGVjdCByZWxhdGl2ZWx5CiAgKiBzaG9ydCBxdWV1ZSBmbHVzaCB0aW1lLiAgRG9uJ3Qg
cXVldWUgd29ya3Mgd2hpY2ggY2FuIHJ1biBmb3IgdG9vCiAgKiBsb25nLgoKQXJndWFibHkgODAg
bXMgaXMgd2F5IHRvbyBsb25nLCB3aGljaCB3b3VsZCBicmluZyB1cyB0bzoKCiAgKiBzeXN0ZW1f
bG9uZ193cSBpcyBzaW1pbGFyIHRvIHN5c3RlbV93cSBidXQgbWF5IGhvc3QgbG9uZyBydW5uaW5n
CiAgKiB3b3Jrcy4gIFF1ZXVlIGZsdXNoaW5nIG1pZ2h0IHRha2UgcmVsYXRpdmVseSBsb25nLgoK
QnV0IHdoZW4gY29ubmVjdGVkIG92ZXIgVVNCLTMgd2UgY2FuIGVhc2lseSBkbyA2MCBGUFMgYW5k
IHdlIHJlYWxseQpkb24ndCB3YW50IGZyYW1lIHVwZGF0ZXMgdG8gYmUgZGVsYXllZCBieSBvdGhl
ciBsb25nIHJ1bm5pbmcgd29ya3MuCgpTbyBuZWl0aGVyIG9mIHRoZSBzdGFuZGFyZCBhdmFpbGFi
bGUgcXVldWVzIGlzIHJlYWxseSBzdWl0YWJsZQphbmQgdGh1cyB3ZSByZWFsbHkgc2hvdWxkIGtl
ZXAgdXNpbmcgb3VyIG93biBxdWV1ZSBmb3IgdGhpcyBJTUhPLgoKUmVnYXJkcywKCkhhbnMKCgoK
CgoKCj4gCj4gLSBQZXJzaXN0ZW50IHN0YXRlIChmcmFtZSAmIGRyYXdfc3RhdHVzX3RpbWVvdXQp
IG5lZWQgdG8gYmUgbW92ZWQgb3V0Cj4gICAgb2YgdGhlIHdvcmsuCj4gCj4gLSBkaWZmIGlzIGJp
Z2dlciB0aGFuIHRoZSBjaGFuZ2VzLCBiaWdnZXN0IGNodW5rIGlzIHJlaW5kZW50aW5nIHRoZQo+
ICAgIHdvcmsgZm4gYmVjYXVzZSBpdCBsb3N0IGl0cyB3aGlsZSBsb29wLgo+IAo+IExvdHMgb2Yg
Y29kZSBkZWxldGluZyBhcyBjb25zZXF1ZW5jZSBhbGwgb3Zlci4gU3BlY2lmaWNhbGx5IHdlIGNh
bgo+IGRlbGV0ZSB0aGUgZHJtX2RyaXZlci5yZWxlYXNlIGNvZGUgbm93IQo+IAo+IFNpZ25lZC1v
ZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgo+IENjOiBIYW5z
IGRlIEdvZWRlIDxoZGVnb2VkZUByZWRoYXQuY29tPgo+IENjOiAiTm9yYWxmIFRyw7hubmVzIiA8
bm9yYWxmQHRyb25uZXMub3JnPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL3RpbnkvZ20xMnUz
MjAuYyB8IDE3MCArKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLQo+ICAgMSBmaWxlIGNo
YW5nZWQsIDY3IGluc2VydGlvbnMoKyksIDEwMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL3RpbnkvZ20xMnUzMjAuYyBiL2RyaXZlcnMvZ3B1L2RybS90aW55
L2dtMTJ1MzIwLmMKPiBpbmRleCBjMjJiMmVlNDcwZWIuLjQ2ZjVjZWEzMzVhNyAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vdGlueS9nbTEydTMyMC5jCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL3RpbnkvZ20xMnUzMjAuYwo+IEBAIC04OSwxMyArODksMTIgQEAgc3RydWN0IGdtMTJ1MzIw
X2RldmljZSB7Cj4gICAJdW5zaWduZWQgY2hhciAgICAgICAgICAgICAgICAgICAqY21kX2J1ZjsK
PiAgIAl1bnNpZ25lZCBjaGFyICAgICAgICAgICAgICAgICAgICpkYXRhX2J1ZltHTTEyVTMyMF9C
TE9DS19DT1VOVF07Cj4gICAJc3RydWN0IHsKPiAtCQlib29sICAgICAgICAgICAgICAgICAgICAg
cnVuOwo+IC0JCXN0cnVjdCB3b3JrcXVldWVfc3RydWN0ICp3b3JrcTsKPiAtCQlzdHJ1Y3Qgd29y
a19zdHJ1Y3QgICAgICAgd29yazsKPiAtCQl3YWl0X3F1ZXVlX2hlYWRfdCAgICAgICAgd2FpdHE7
Cj4gKwkJc3RydWN0IGRlbGF5ZWRfd29yayAgICAgICB3b3JrOwo+ICAgCQlzdHJ1Y3QgbXV0ZXgg
ICAgICAgICAgICAgbG9jazsKPiAgIAkJc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAgKmZiOwo+ICAg
CQlzdHJ1Y3QgZHJtX3JlY3QgICAgICAgICAgcmVjdDsKPiArCQlpbnQgZnJhbWU7Cj4gKwkJaW50
IGRyYXdfc3RhdHVzX3RpbWVvdXQ7Cj4gICAJfSBmYl91cGRhdGU7Cj4gICB9Owo+ICAgCj4gQEAg
LTE4MywxOSArMTgyLDkgQEAgc3RhdGljIGludCBnbTEydTMyMF91c2JfYWxsb2Moc3RydWN0IGdt
MTJ1MzIwX2RldmljZSAqZ20xMnUzMjApCj4gICAJCSAgICAgICBkYXRhX2Jsb2NrX2Zvb3Rlciwg
REFUQV9CTE9DS19GT09URVJfU0laRSk7Cj4gICAJfQo+ICAgCj4gLQlnbTEydTMyMC0+ZmJfdXBk
YXRlLndvcmtxID0gY3JlYXRlX3NpbmdsZXRocmVhZF93b3JrcXVldWUoRFJJVkVSX05BTUUpOwo+
IC0JaWYgKCFnbTEydTMyMC0+ZmJfdXBkYXRlLndvcmtxKQo+IC0JCXJldHVybiAtRU5PTUVNOwo+
IC0KPiAgIAlyZXR1cm4gMDsKPiAgIH0KPiAgIAo+IC1zdGF0aWMgdm9pZCBnbTEydTMyMF91c2Jf
ZnJlZShzdHJ1Y3QgZ20xMnUzMjBfZGV2aWNlICpnbTEydTMyMCkKPiAtewo+IC0JaWYgKGdtMTJ1
MzIwLT5mYl91cGRhdGUud29ya3EpCj4gLQkJZGVzdHJveV93b3JrcXVldWUoZ20xMnUzMjAtPmZi
X3VwZGF0ZS53b3JrcSk7Cj4gLX0KPiAtCj4gICBzdGF0aWMgaW50IGdtMTJ1MzIwX21pc2NfcmVx
dWVzdChzdHJ1Y3QgZ20xMnUzMjBfZGV2aWNlICpnbTEydTMyMCwKPiAgIAkJCQkgdTggcmVxX2Es
IHU4IHJlcV9iLAo+ICAgCQkJCSB1OCBhcmdfYSwgdTggYXJnX2IsIHU4IGFyZ19jLCB1OCBhcmdf
ZCkKPiBAQCAtMzM4LDgwICszMjcsNzYgQEAgc3RhdGljIHZvaWQgZ20xMnUzMjBfY29weV9mYl90
b19ibG9ja3Moc3RydWN0IGdtMTJ1MzIwX2RldmljZSAqZ20xMnUzMjApCj4gICBzdGF0aWMgdm9p
ZCBnbTEydTMyMF9mYl91cGRhdGVfd29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCj4gICB7
Cj4gICAJc3RydWN0IGdtMTJ1MzIwX2RldmljZSAqZ20xMnUzMjAgPQo+IC0JCWNvbnRhaW5lcl9v
Zih3b3JrLCBzdHJ1Y3QgZ20xMnUzMjBfZGV2aWNlLCBmYl91cGRhdGUud29yayk7Cj4gLQlpbnQg
ZHJhd19zdGF0dXNfdGltZW91dCA9IEZJUlNUX0ZSQU1FX1RJTUVPVVQ7Cj4gKwkJY29udGFpbmVy
X29mKHRvX2RlbGF5ZWRfd29yayh3b3JrKSwgc3RydWN0IGdtMTJ1MzIwX2RldmljZSwKPiArCQkJ
ICAgICBmYl91cGRhdGUud29yayk7Cj4gICAJaW50IGJsb2NrLCBibG9ja19zaXplLCBsZW47Cj4g
LQlpbnQgZnJhbWUgPSAwOwo+ICAgCWludCByZXQgPSAwOwo+ICAgCj4gLQl3aGlsZSAoZ20xMnUz
MjAtPmZiX3VwZGF0ZS5ydW4pIHsKPiAtCQlnbTEydTMyMF9jb3B5X2ZiX3RvX2Jsb2NrcyhnbTEy
dTMyMCk7Cj4gLQo+IC0JCWZvciAoYmxvY2sgPSAwOyBibG9jayA8IEdNMTJVMzIwX0JMT0NLX0NP
VU5UOyBibG9jaysrKSB7Cj4gLQkJCWlmIChibG9jayA9PSBHTTEyVTMyMF9CTE9DS19DT1VOVCAt
IDEpCj4gLQkJCQlibG9ja19zaXplID0gREFUQV9MQVNUX0JMT0NLX1NJWkU7Cj4gLQkJCWVsc2UK
PiAtCQkJCWJsb2NrX3NpemUgPSBEQVRBX0JMT0NLX1NJWkU7Cj4gLQo+IC0JCQkvKiBTZW5kIGRh
dGEgY29tbWFuZCB0byBkZXZpY2UgKi8KPiAtCQkJbWVtY3B5KGdtMTJ1MzIwLT5jbWRfYnVmLCBj
bWRfZGF0YSwgQ01EX1NJWkUpOwo+IC0JCQlnbTEydTMyMC0+Y21kX2J1Zls4XSA9IGJsb2NrX3Np
emUgJiAweGZmOwo+IC0JCQlnbTEydTMyMC0+Y21kX2J1Zls5XSA9IGJsb2NrX3NpemUgPj4gODsK
PiAtCQkJZ20xMnUzMjAtPmNtZF9idWZbMjBdID0gMHhmYyAtIGJsb2NrICogNDsKPiAtCQkJZ20x
MnUzMjAtPmNtZF9idWZbMjFdID0gYmxvY2sgfCAoZnJhbWUgPDwgNyk7Cj4gLQo+IC0JCQlyZXQg
PSB1c2JfYnVsa19tc2coZ20xMnUzMjAtPnVkZXYsCj4gLQkJCQl1c2Jfc25kYnVsa3BpcGUoZ20x
MnUzMjAtPnVkZXYsIERBVEFfU05EX0VQVCksCj4gLQkJCQlnbTEydTMyMC0+Y21kX2J1ZiwgQ01E
X1NJWkUsICZsZW4sCj4gLQkJCQlDTURfVElNRU9VVCk7Cj4gLQkJCWlmIChyZXQgfHwgbGVuICE9
IENNRF9TSVpFKQo+IC0JCQkJZ290byBlcnI7Cj4gLQo+IC0JCQkvKiBTZW5kIGRhdGEgYmxvY2sg
dG8gZGV2aWNlICovCj4gLQkJCXJldCA9IHVzYl9idWxrX21zZyhnbTEydTMyMC0+dWRldiwKPiAt
CQkJCXVzYl9zbmRidWxrcGlwZShnbTEydTMyMC0+dWRldiwgREFUQV9TTkRfRVBUKSwKPiAtCQkJ
CWdtMTJ1MzIwLT5kYXRhX2J1ZltibG9ja10sIGJsb2NrX3NpemUsCj4gLQkJCQkmbGVuLCBEQVRB
X1RJTUVPVVQpOwo+IC0JCQlpZiAocmV0IHx8IGxlbiAhPSBibG9ja19zaXplKQo+IC0JCQkJZ290
byBlcnI7Cj4gLQo+IC0JCQkvKiBSZWFkIHN0YXR1cyAqLwo+IC0JCQlyZXQgPSB1c2JfYnVsa19t
c2coZ20xMnUzMjAtPnVkZXYsCj4gLQkJCQl1c2JfcmN2YnVsa3BpcGUoZ20xMnUzMjAtPnVkZXYs
IERBVEFfUkNWX0VQVCksCj4gLQkJCQlnbTEydTMyMC0+Y21kX2J1ZiwgUkVBRF9TVEFUVVNfU0la
RSwgJmxlbiwKPiAtCQkJCUNNRF9USU1FT1VUKTsKPiAtCQkJaWYgKHJldCB8fCBsZW4gIT0gUkVB
RF9TVEFUVVNfU0laRSkKPiAtCQkJCWdvdG8gZXJyOwo+IC0JCX0KPiArCWdtMTJ1MzIwX2NvcHlf
ZmJfdG9fYmxvY2tzKGdtMTJ1MzIwKTsKPiArCj4gKwlmb3IgKGJsb2NrID0gMDsgYmxvY2sgPCBH
TTEyVTMyMF9CTE9DS19DT1VOVDsgYmxvY2srKykgewo+ICsJCWlmIChibG9jayA9PSBHTTEyVTMy
MF9CTE9DS19DT1VOVCAtIDEpCj4gKwkJCWJsb2NrX3NpemUgPSBEQVRBX0xBU1RfQkxPQ0tfU0la
RTsKPiArCQllbHNlCj4gKwkJCWJsb2NrX3NpemUgPSBEQVRBX0JMT0NLX1NJWkU7Cj4gKwo+ICsJ
CS8qIFNlbmQgZGF0YSBjb21tYW5kIHRvIGRldmljZSAqLwo+ICsJCW1lbWNweShnbTEydTMyMC0+
Y21kX2J1ZiwgY21kX2RhdGEsIENNRF9TSVpFKTsKPiArCQlnbTEydTMyMC0+Y21kX2J1Zls4XSA9
IGJsb2NrX3NpemUgJiAweGZmOwo+ICsJCWdtMTJ1MzIwLT5jbWRfYnVmWzldID0gYmxvY2tfc2l6
ZSA+PiA4Owo+ICsJCWdtMTJ1MzIwLT5jbWRfYnVmWzIwXSA9IDB4ZmMgLSBibG9jayAqIDQ7Cj4g
KwkJZ20xMnUzMjAtPmNtZF9idWZbMjFdID0KPiArCQkJYmxvY2sgfCAoZ20xMnUzMjAtPmZiX3Vw
ZGF0ZS5mcmFtZSA8PCA3KTsKPiAgIAo+IC0JCS8qIFNlbmQgZHJhdyBjb21tYW5kIHRvIGRldmlj
ZSAqLwo+IC0JCW1lbWNweShnbTEydTMyMC0+Y21kX2J1ZiwgY21kX2RyYXcsIENNRF9TSVpFKTsK
PiAgIAkJcmV0ID0gdXNiX2J1bGtfbXNnKGdtMTJ1MzIwLT51ZGV2LAo+ICAgCQkJdXNiX3NuZGJ1
bGtwaXBlKGdtMTJ1MzIwLT51ZGV2LCBEQVRBX1NORF9FUFQpLAo+IC0JCQlnbTEydTMyMC0+Y21k
X2J1ZiwgQ01EX1NJWkUsICZsZW4sIENNRF9USU1FT1VUKTsKPiArCQkJZ20xMnUzMjAtPmNtZF9i
dWYsIENNRF9TSVpFLCAmbGVuLAo+ICsJCQlDTURfVElNRU9VVCk7Cj4gICAJCWlmIChyZXQgfHwg
bGVuICE9IENNRF9TSVpFKQo+ICAgCQkJZ290byBlcnI7Cj4gICAKPiArCQkvKiBTZW5kIGRhdGEg
YmxvY2sgdG8gZGV2aWNlICovCj4gKwkJcmV0ID0gdXNiX2J1bGtfbXNnKGdtMTJ1MzIwLT51ZGV2
LAo+ICsJCQl1c2Jfc25kYnVsa3BpcGUoZ20xMnUzMjAtPnVkZXYsIERBVEFfU05EX0VQVCksCj4g
KwkJCWdtMTJ1MzIwLT5kYXRhX2J1ZltibG9ja10sIGJsb2NrX3NpemUsCj4gKwkJCSZsZW4sIERB
VEFfVElNRU9VVCk7Cj4gKwkJaWYgKHJldCB8fCBsZW4gIT0gYmxvY2tfc2l6ZSkKPiArCQkJZ290
byBlcnI7Cj4gKwo+ICAgCQkvKiBSZWFkIHN0YXR1cyAqLwo+ICAgCQlyZXQgPSB1c2JfYnVsa19t
c2coZ20xMnUzMjAtPnVkZXYsCj4gICAJCQl1c2JfcmN2YnVsa3BpcGUoZ20xMnUzMjAtPnVkZXYs
IERBVEFfUkNWX0VQVCksCj4gICAJCQlnbTEydTMyMC0+Y21kX2J1ZiwgUkVBRF9TVEFUVVNfU0la
RSwgJmxlbiwKPiAtCQkJZHJhd19zdGF0dXNfdGltZW91dCk7Cj4gKwkJCUNNRF9USU1FT1VUKTsK
PiAgIAkJaWYgKHJldCB8fCBsZW4gIT0gUkVBRF9TVEFUVVNfU0laRSkKPiAgIAkJCWdvdG8gZXJy
Owo+IC0KPiAtCQlkcmF3X3N0YXR1c190aW1lb3V0ID0gQ01EX1RJTUVPVVQ7Cj4gLQkJZnJhbWUg
PSAhZnJhbWU7Cj4gLQo+IC0JCS8qCj4gLQkJICogV2UgbXVzdCBkcmF3IGEgZnJhbWUgZXZlcnkg
MnMgb3RoZXJ3aXNlIHRoZSBwcm9qZWN0b3IKPiAtCQkgKiBzd2l0Y2hlcyBiYWNrIHRvIHNob3dp
bmcgaXRzIGxvZ28uCj4gLQkJICovCj4gLQkJd2FpdF9ldmVudF90aW1lb3V0KGdtMTJ1MzIwLT5m
Yl91cGRhdGUud2FpdHEsCj4gLQkJCQkgICAhZ20xMnUzMjAtPmZiX3VwZGF0ZS5ydW4gfHwKPiAt
CQkJCQlnbTEydTMyMC0+ZmJfdXBkYXRlLmZiICE9IE5VTEwsCj4gLQkJCQkgICBJRExFX1RJTUVP
VVQpOwo+ICAgCX0KPiArCj4gKwkvKiBTZW5kIGRyYXcgY29tbWFuZCB0byBkZXZpY2UgKi8KPiAr
CW1lbWNweShnbTEydTMyMC0+Y21kX2J1ZiwgY21kX2RyYXcsIENNRF9TSVpFKTsKPiArCXJldCA9
IHVzYl9idWxrX21zZyhnbTEydTMyMC0+dWRldiwKPiArCQl1c2Jfc25kYnVsa3BpcGUoZ20xMnUz
MjAtPnVkZXYsIERBVEFfU05EX0VQVCksCj4gKwkJZ20xMnUzMjAtPmNtZF9idWYsIENNRF9TSVpF
LCAmbGVuLCBDTURfVElNRU9VVCk7Cj4gKwlpZiAocmV0IHx8IGxlbiAhPSBDTURfU0laRSkKPiAr
CQlnb3RvIGVycjsKPiArCj4gKwkvKiBSZWFkIHN0YXR1cyAqLwo+ICsJcmV0ID0gdXNiX2J1bGtf
bXNnKGdtMTJ1MzIwLT51ZGV2LAo+ICsJCXVzYl9yY3ZidWxrcGlwZShnbTEydTMyMC0+dWRldiwg
REFUQV9SQ1ZfRVBUKSwKPiArCQlnbTEydTMyMC0+Y21kX2J1ZiwgUkVBRF9TVEFUVVNfU0laRSwg
JmxlbiwKPiArCQlnbTEydTMyMC0+ZmJfdXBkYXRlLmRyYXdfc3RhdHVzX3RpbWVvdXQpOwo+ICsJ
aWYgKHJldCB8fCBsZW4gIT0gUkVBRF9TVEFUVVNfU0laRSkKPiArCQlnb3RvIGVycjsKPiArCj4g
KwlnbTEydTMyMC0+ZmJfdXBkYXRlLmRyYXdfc3RhdHVzX3RpbWVvdXQgPSBDTURfVElNRU9VVDsK
PiArCWdtMTJ1MzIwLT5mYl91cGRhdGUuZnJhbWUgPSAhZ20xMnUzMjAtPmZiX3VwZGF0ZS5mcmFt
ZTsKPiArCj4gKwkvKgo+ICsJICogV2UgbXVzdCBkcmF3IGEgZnJhbWUgZXZlcnkgMnMgb3RoZXJ3
aXNlIHRoZSBwcm9qZWN0b3IKPiArCSAqIHN3aXRjaGVzIGJhY2sgdG8gc2hvd2luZyBpdHMgbG9n
by4KPiArCSAqLwo+ICsJc2NoZWR1bGVfZGVsYXllZF93b3JrKCZnbTEydTMyMC0+ZmJfdXBkYXRl
LndvcmssIElETEVfVElNRU9VVCk7Cj4gKwo+ICAgCXJldHVybjsKPiAgIGVycjoKPiAgIAkvKiBE
byBub3QgbG9nIGVycm9ycyBjYXVzZWQgYnkgbW9kdWxlIHVubG9hZCBvciBkZXZpY2UgdW5wbHVn
ICovCj4gQEAgLTQ0NiwzNiArNDMxLDI0IEBAIHN0YXRpYyB2b2lkIGdtMTJ1MzIwX2ZiX21hcmtf
ZGlydHkoc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIsCj4gICAJbXV0ZXhfdW5sb2NrKCZnbTEy
dTMyMC0+ZmJfdXBkYXRlLmxvY2spOwo+ICAgCj4gICAJaWYgKHdha2V1cCkKPiAtCQl3YWtlX3Vw
KCZnbTEydTMyMC0+ZmJfdXBkYXRlLndhaXRxKTsKPiArCQlzY2hlZHVsZV9kZWxheWVkX3dvcmso
JmdtMTJ1MzIwLT5mYl91cGRhdGUud29yaywgMCk7Cj4gICAKPiAgIAlpZiAob2xkX2ZiKQo+ICAg
CQlkcm1fZnJhbWVidWZmZXJfcHV0KG9sZF9mYik7Cj4gICB9Cj4gICAKPiAtc3RhdGljIHZvaWQg
Z20xMnUzMjBfc3RhcnRfZmJfdXBkYXRlKHN0cnVjdCBnbTEydTMyMF9kZXZpY2UgKmdtMTJ1MzIw
KQo+IC17Cj4gLQltdXRleF9sb2NrKCZnbTEydTMyMC0+ZmJfdXBkYXRlLmxvY2spOwo+IC0JZ20x
MnUzMjAtPmZiX3VwZGF0ZS5ydW4gPSB0cnVlOwo+IC0JbXV0ZXhfdW5sb2NrKCZnbTEydTMyMC0+
ZmJfdXBkYXRlLmxvY2spOwo+IC0KPiAtCXF1ZXVlX3dvcmsoZ20xMnUzMjAtPmZiX3VwZGF0ZS53
b3JrcSwgJmdtMTJ1MzIwLT5mYl91cGRhdGUud29yayk7Cj4gLX0KPiAtCj4gICBzdGF0aWMgdm9p
ZCBnbTEydTMyMF9zdG9wX2ZiX3VwZGF0ZShzdHJ1Y3QgZ20xMnUzMjBfZGV2aWNlICpnbTEydTMy
MCkKPiAgIHsKPiAtCW11dGV4X2xvY2soJmdtMTJ1MzIwLT5mYl91cGRhdGUubG9jayk7Cj4gLQln
bTEydTMyMC0+ZmJfdXBkYXRlLnJ1biA9IGZhbHNlOwo+IC0JbXV0ZXhfdW5sb2NrKCZnbTEydTMy
MC0+ZmJfdXBkYXRlLmxvY2spOwo+ICsJc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqb2xkX2ZiOwo+
ICAgCj4gLQl3YWtlX3VwKCZnbTEydTMyMC0+ZmJfdXBkYXRlLndhaXRxKTsKPiAtCWNhbmNlbF93
b3JrX3N5bmMoJmdtMTJ1MzIwLT5mYl91cGRhdGUud29yayk7Cj4gKwljYW5jZWxfZGVsYXllZF93
b3JrX3N5bmMoJmdtMTJ1MzIwLT5mYl91cGRhdGUud29yayk7Cj4gICAKPiAgIAltdXRleF9sb2Nr
KCZnbTEydTMyMC0+ZmJfdXBkYXRlLmxvY2spOwo+IC0JaWYgKGdtMTJ1MzIwLT5mYl91cGRhdGUu
ZmIpIHsKPiAtCQlkcm1fZnJhbWVidWZmZXJfcHV0KGdtMTJ1MzIwLT5mYl91cGRhdGUuZmIpOwo+
IC0JCWdtMTJ1MzIwLT5mYl91cGRhdGUuZmIgPSBOVUxMOwo+IC0JfQo+ICsJb2xkX2ZiID0gZ20x
MnUzMjAtPmZiX3VwZGF0ZS5mYjsKPiArCWdtMTJ1MzIwLT5mYl91cGRhdGUuZmIgPSBOVUxMOwo+
ICAgCW11dGV4X3VubG9jaygmZ20xMnUzMjAtPmZiX3VwZGF0ZS5sb2NrKTsKPiArCj4gKwlkcm1f
ZnJhbWVidWZmZXJfcHV0KG9sZF9mYik7Cj4gICB9Cj4gICAKPiAgIHN0YXRpYyBpbnQgZ20xMnUz
MjBfc2V0X2Vjb21vZGUoc3RydWN0IGdtMTJ1MzIwX2RldmljZSAqZ20xMnUzMjApCj4gQEAgLTU4
MywxMSArNTU2LDExIEBAIHN0YXRpYyB2b2lkIGdtMTJ1MzIwX3BpcGVfZW5hYmxlKHN0cnVjdCBk
cm1fc2ltcGxlX2Rpc3BsYXlfcGlwZSAqcGlwZSwKPiAgIAkJCQkgc3RydWN0IGRybV9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlLAo+ICAgCQkJCSBzdHJ1Y3QgZHJtX3BsYW5lX3N0YXRlICpwbGFuZV9z
dGF0ZSkKPiAgIHsKPiAtCXN0cnVjdCBnbTEydTMyMF9kZXZpY2UgKmdtMTJ1MzIwID0gcGlwZS0+
Y3J0Yy5kZXYtPmRldl9wcml2YXRlOwo+ICAgCXN0cnVjdCBkcm1fcmVjdCByZWN0ID0geyAwLCAw
LCBHTTEyVTMyMF9VU0VSX1dJRFRILCBHTTEyVTMyMF9IRUlHSFQgfTsKPiArCXN0cnVjdCBnbTEy
dTMyMF9kZXZpY2UgKmdtMTJ1MzIwID0gcGlwZS0+Y3J0Yy5kZXYtPmRldl9wcml2YXRlOwo+ICAg
Cj4gKwlnbTEydTMyMC0+ZmJfdXBkYXRlLmRyYXdfc3RhdHVzX3RpbWVvdXQgPSBGSVJTVF9GUkFN
RV9USU1FT1VUOwo+ICAgCWdtMTJ1MzIwX2ZiX21hcmtfZGlydHkocGxhbmVfc3RhdGUtPmZiLCAm
cmVjdCk7Cj4gLQlnbTEydTMyMF9zdGFydF9mYl91cGRhdGUoZ20xMnUzMjApOwo+ICAgfQo+ICAg
Cj4gICBzdGF0aWMgdm9pZCBnbTEydTMyMF9waXBlX2Rpc2FibGUoc3RydWN0IGRybV9zaW1wbGVf
ZGlzcGxheV9waXBlICpwaXBlKQo+IEBAIC02MjIsMTMgKzU5NSw2IEBAIHN0YXRpYyBjb25zdCB1
aW50NjRfdCBnbTEydTMyMF9waXBlX21vZGlmaWVyc1tdID0gewo+ICAgCURSTV9GT1JNQVRfTU9E
X0lOVkFMSUQKPiAgIH07Cj4gICAKPiAtc3RhdGljIHZvaWQgZ20xMnUzMjBfZHJpdmVyX3JlbGVh
c2Uoc3RydWN0IGRybV9kZXZpY2UgKmRldikKPiAtewo+IC0Jc3RydWN0IGdtMTJ1MzIwX2Rldmlj
ZSAqZ20xMnUzMjAgPSBkZXYtPmRldl9wcml2YXRlOwo+IC0KPiAtCWdtMTJ1MzIwX3VzYl9mcmVl
KGdtMTJ1MzIwKTsKPiAtfQo+IC0KPiAgIERFRklORV9EUk1fR0VNX0ZPUFMoZ20xMnUzMjBfZm9w
cyk7Cj4gICAKPiAgIHN0YXRpYyBzdHJ1Y3QgZHJtX2RyaXZlciBnbTEydTMyMF9kcm1fZHJpdmVy
ID0gewo+IEBAIC02NDAsNyArNjA2LDYgQEAgc3RhdGljIHN0cnVjdCBkcm1fZHJpdmVyIGdtMTJ1
MzIwX2RybV9kcml2ZXIgPSB7Cj4gICAJLm1ham9yCQkgPSBEUklWRVJfTUFKT1IsCj4gICAJLm1p
bm9yCQkgPSBEUklWRVJfTUlOT1IsCj4gICAKPiAtCS5yZWxlYXNlCSA9IGdtMTJ1MzIwX2RyaXZl
cl9yZWxlYXNlLAo+ICAgCS5mb3BzCQkgPSAmZ20xMnUzMjBfZm9wcywKPiAgIAlEUk1fR0VNX1NI
TUVNX0RSSVZFUl9PUFMsCj4gICB9Owo+IEBAIC02NzAsOSArNjM1LDggQEAgc3RhdGljIGludCBn
bTEydTMyMF91c2JfcHJvYmUoc3RydWN0IHVzYl9pbnRlcmZhY2UgKmludGVyZmFjZSwKPiAgIAkJ
cmV0dXJuIC1FTk9NRU07Cj4gICAKPiAgIAlnbTEydTMyMC0+dWRldiA9IGludGVyZmFjZV90b191
c2JkZXYoaW50ZXJmYWNlKTsKPiAtCUlOSVRfV09SSygmZ20xMnUzMjAtPmZiX3VwZGF0ZS53b3Jr
LCBnbTEydTMyMF9mYl91cGRhdGVfd29yayk7Cj4gKwlJTklUX0RFTEFZRURfV09SSygmZ20xMnUz
MjAtPmZiX3VwZGF0ZS53b3JrLCBnbTEydTMyMF9mYl91cGRhdGVfd29yayk7Cj4gICAJbXV0ZXhf
aW5pdCgmZ20xMnUzMjAtPmZiX3VwZGF0ZS5sb2NrKTsKPiAtCWluaXRfd2FpdHF1ZXVlX2hlYWQo
JmdtMTJ1MzIwLT5mYl91cGRhdGUud2FpdHEpOwo+ICAgCj4gICAJZGV2ID0gJmdtMTJ1MzIwLT5k
ZXY7Cj4gICAJcmV0ID0gZGV2bV9kcm1fZGV2X2luaXQoJmludGVyZmFjZS0+ZGV2LCBkZXYsICZn
bTEydTMyMF9kcm1fZHJpdmVyKTsKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
