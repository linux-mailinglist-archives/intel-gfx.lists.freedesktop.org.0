Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E3C168EBB
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Feb 2020 13:10:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C3196E88A;
	Sat, 22 Feb 2020 12:10:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72E966E88A
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Feb 2020 12:10:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582373423;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=HNc2tDKiZydIGlMLZ0mo1TkZuRzrYTwX5ZYIbtMYxwI=;
 b=Q+Zsw2UCE4DmlJd7w77fewiE1xaYzjyrSta8EbJsrof9GdPwbJ+L20IjLEVBy5yis5GjCQ
 RTgQKMMZoEf9MGh/rNLLyxMuFydmE4ak2HME+BW8zO+w2q87z1M+Tx7/66J5Ge5oAOX7Qz
 HnTQcjeZpDzQ85thwi2rLMBwrvZJF5c=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-307-OYKXpaEVOui7tODSikG70Q-1; Sat, 22 Feb 2020 07:10:19 -0500
X-MC-Unique: OYKXpaEVOui7tODSikG70Q-1
Received: by mail-wr1-f71.google.com with SMTP id p8so2415908wrw.5
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Feb 2020 04:10:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=5wP2LniC4N2lZniDkb9cIicuw8LIy0nZFCV8DaVkoiY=;
 b=sFD0rYIRtYPs7fPp4ecOVMt93g2lc2TtzpCQELh4fvAAZXd+3tRaSvCTXhT/NAX69T
 Hzu5AbBnXwoKML2x88PnuImU9IFj7JSZ8pdtqRuDEo4fQ/6v4g46HDSToiGq8jTfZJuI
 QhhO2j/Ks06JfuFhmQfDdWnn8nBp7SnQRDITGDQT6Qsoaa44NgdFhA4nTkdzrGuWehbl
 tzwdsfhd7SqpxwchGvkZ46wT85gJxbHQX1RwFyW7Z3CNH/Z/7OufZZ1jQc2PD+HXA4bN
 VsJoQWyMmPi8tcqVO8bzCqcYQ+fl+x7rj9VB743NaiuiJLjGfD5ChsE2l95ITkW2SLoo
 7QAw==
X-Gm-Message-State: APjAAAXPRr6rGfpwnWhR2TOyxVtUOA1OMgfYsXfzcLdQeEFTGi89LlwL
 J586GSUeQvB2Hj8I6oudfkJHkfIQc/g1x+DoQgvHoHhxeIeWiE2don3TsDzHaZ11RFtsGRU9pZU
 c4JEe7nzfMV2AASzSt4s7Mjm9XRTP
X-Received: by 2002:adf:fcc4:: with SMTP id f4mr57218016wrs.247.1582373418565; 
 Sat, 22 Feb 2020 04:10:18 -0800 (PST)
X-Google-Smtp-Source: APXvYqwzj55xenJywQRlSr2mOE2AgJdvJJ0Y4DWkkGQswnBI+VpiHP+quB0vA2RAB7z0bY6O03Mo/Q==
X-Received: by 2002:adf:fcc4:: with SMTP id f4mr57217990wrs.247.1582373418275; 
 Sat, 22 Feb 2020 04:10:18 -0800 (PST)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-7a91-34f6-66f7-d87c.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:7a91:34f6:66f7:d87c])
 by smtp.gmail.com with ESMTPSA id c141sm7783161wme.41.2020.02.22.04.10.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 22 Feb 2020 04:10:17 -0800 (PST)
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
 <20200221210319.2245170-44-daniel.vetter@ffwll.ch>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <b605f540-ec61-e3da-1337-f7763766734b@redhat.com>
Date: Sat, 22 Feb 2020 13:10:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200221210319.2245170-44-daniel.vetter@ffwll.ch>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH 43/51] drm/gm12u320: Use devm_drm_dev_init
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

SGksCgpPbiAyLzIxLzIwIDEwOjAzIFBNLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+IE9ubHkgZHJv
cHMgdGhlIGRybV9kZXZfcHV0LCBidXQgaGV5IGEgZmV3IGxpbmVzIQo+IAo+IFNpZ25lZC1vZmYt
Ynk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgo+IENjOiBIYW5zIGRl
IEdvZWRlIDxoZGVnb2VkZUByZWRoYXQuY29tPgo+IENjOiAiTm9yYWxmIFRyw7hubmVzIiA8bm9y
YWxmQHRyb25uZXMub3JnPgoKUGF0Y2ggbG9va3MgZ29vZCB0byBtZToKClJldmlld2VkLWJ5OiBI
YW5zIGRlIEdvZWRlIDxoZGVnb2VkZUByZWRoYXQuY29tPgoKUmVnYXJkcywKCkhhbnMKCgoKPiAt
LS0KPiAgIGRyaXZlcnMvZ3B1L2RybS90aW55L2dtMTJ1MzIwLmMgfCAxOSArKysrKysrLS0tLS0t
LS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMo
LSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3RpbnkvZ20xMnUzMjAuYyBiL2Ry
aXZlcnMvZ3B1L2RybS90aW55L2dtMTJ1MzIwLmMKPiBpbmRleCA1YmQyNmZjNmZhZmEuLjY1ZGZi
ODdjY2IxMyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vdGlueS9nbTEydTMyMC5jCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL3RpbnkvZ20xMnUzMjAuYwo+IEBAIC02NzgsNyArNjc4LDcg
QEAgc3RhdGljIGludCBnbTEydTMyMF91c2JfcHJvYmUoc3RydWN0IHVzYl9pbnRlcmZhY2UgKmlu
dGVyZmFjZSwKPiAgIAlpbml0X3dhaXRxdWV1ZV9oZWFkKCZnbTEydTMyMC0+ZmJfdXBkYXRlLndh
aXRxKTsKPiAgIAo+ICAgCWRldiA9ICZnbTEydTMyMC0+ZGV2Owo+IC0JcmV0ID0gZHJtX2Rldl9p
bml0KGRldiwgJmdtMTJ1MzIwX2RybV9kcml2ZXIsICZpbnRlcmZhY2UtPmRldik7Cj4gKwlyZXQg
PSBkZXZtX2RybV9kZXZfaW5pdCgmaW50ZXJmYWNlLT5kZXYsIGRldiwgJmdtMTJ1MzIwX2RybV9k
cml2ZXIpOwo+ICAgCWlmIChyZXQpIHsKPiAgIAkJa2ZyZWUoZ20xMnUzMjApOwo+ICAgCQlyZXR1
cm4gcmV0Owo+IEBAIC02ODgsNyArNjg4LDcgQEAgc3RhdGljIGludCBnbTEydTMyMF91c2JfcHJv
YmUoc3RydWN0IHVzYl9pbnRlcmZhY2UgKmludGVyZmFjZSwKPiAgIAo+ICAgCXJldCA9IGRybV9t
b2RlX2NvbmZpZ19pbml0KGRldik7Cj4gICAJaWYgKHJldCkKPiAtCQlnb3RvIGVycl9wdXQ7Cj4g
KwkJcmV0dXJuIHJldDsKPiAgIAo+ICAgCWRldi0+bW9kZV9jb25maWcubWluX3dpZHRoID0gR00x
MlUzMjBfVVNFUl9XSURUSDsKPiAgIAlkZXYtPm1vZGVfY29uZmlnLm1heF93aWR0aCA9IEdNMTJV
MzIwX1VTRVJfV0lEVEg7Cj4gQEAgLTY5OCwxNSArNjk4LDE1IEBAIHN0YXRpYyBpbnQgZ20xMnUz
MjBfdXNiX3Byb2JlKHN0cnVjdCB1c2JfaW50ZXJmYWNlICppbnRlcmZhY2UsCj4gICAKPiAgIAly
ZXQgPSBnbTEydTMyMF91c2JfYWxsb2MoZ20xMnUzMjApOwo+ICAgCWlmIChyZXQpCj4gLQkJZ290
byBlcnJfcHV0Owo+ICsJCXJldHVybiByZXQ7Cj4gICAKPiAgIAlyZXQgPSBnbTEydTMyMF9zZXRf
ZWNvbW9kZShnbTEydTMyMCk7Cj4gICAJaWYgKHJldCkKPiAtCQlnb3RvIGVycl9wdXQ7Cj4gKwkJ
cmV0dXJuIHJldDsKPiAgIAo+ICAgCXJldCA9IGdtMTJ1MzIwX2Nvbm5faW5pdChnbTEydTMyMCk7
Cj4gICAJaWYgKHJldCkKPiAtCQlnb3RvIGVycl9wdXQ7Cj4gKwkJcmV0dXJuIHJldDsKPiAgIAo+
ICAgCXJldCA9IGRybV9zaW1wbGVfZGlzcGxheV9waXBlX2luaXQoJmdtMTJ1MzIwLT5kZXYsCj4g
ICAJCQkJCSAgICZnbTEydTMyMC0+cGlwZSwKPiBAQCAtNzE2LDIyICs3MTYsMTggQEAgc3RhdGlj
IGludCBnbTEydTMyMF91c2JfcHJvYmUoc3RydWN0IHVzYl9pbnRlcmZhY2UgKmludGVyZmFjZSwK
PiAgIAkJCQkJICAgZ20xMnUzMjBfcGlwZV9tb2RpZmllcnMsCj4gICAJCQkJCSAgICZnbTEydTMy
MC0+Y29ubik7Cj4gICAJaWYgKHJldCkKPiAtCQlnb3RvIGVycl9wdXQ7Cj4gKwkJcmV0dXJuIHJl
dDsKPiAgIAo+ICAgCWRybV9tb2RlX2NvbmZpZ19yZXNldChkZXYpOwo+ICAgCj4gICAJdXNiX3Nl
dF9pbnRmZGF0YShpbnRlcmZhY2UsIGRldik7Cj4gICAJcmV0ID0gZHJtX2Rldl9yZWdpc3Rlcihk
ZXYsIDApOwo+ICAgCWlmIChyZXQpCj4gLQkJZ290byBlcnJfcHV0Owo+ICsJCXJldHVybiByZXQ7
Cj4gICAKPiAgIAlkcm1fZmJkZXZfZ2VuZXJpY19zZXR1cChkZXYsIDApOwo+ICAgCj4gICAJcmV0
dXJuIDA7Cj4gLQo+IC1lcnJfcHV0Ogo+IC0JZHJtX2Rldl9wdXQoZGV2KTsKPiAtCXJldHVybiBy
ZXQ7Cj4gICB9Cj4gICAKPiAgIHN0YXRpYyB2b2lkIGdtMTJ1MzIwX3VzYl9kaXNjb25uZWN0KHN0
cnVjdCB1c2JfaW50ZXJmYWNlICppbnRlcmZhY2UpCj4gQEAgLTc0MSw3ICs3MzcsNiBAQCBzdGF0
aWMgdm9pZCBnbTEydTMyMF91c2JfZGlzY29ubmVjdChzdHJ1Y3QgdXNiX2ludGVyZmFjZSAqaW50
ZXJmYWNlKQo+ICAgCj4gICAJZ20xMnUzMjBfc3RvcF9mYl91cGRhdGUoZ20xMnUzMjApOwo+ICAg
CWRybV9kZXZfdW5wbHVnKGRldik7Cj4gLQlkcm1fZGV2X3B1dChkZXYpOwo+ICAgfQo+ICAgCj4g
ICBzdGF0aWMgX19tYXliZV91bnVzZWQgaW50IGdtMTJ1MzIwX3N1c3BlbmQoc3RydWN0IHVzYl9p
bnRlcmZhY2UgKmludGVyZmFjZSwKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
