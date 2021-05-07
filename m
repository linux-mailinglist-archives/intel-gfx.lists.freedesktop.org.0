Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A2B376BBD
	for <lists+intel-gfx@lfdr.de>; Fri,  7 May 2021 23:28:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5C8C88EAA;
	Fri,  7 May 2021 21:28:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53A016EE7D
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 May 2021 21:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1620422889;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pVNjq4cwxRpZVEM9G+ZCz6caWZiQ6FKaXq/9liRlvVI=;
 b=CB4eAEN+0/XWMhVEhiFZnsako52IYSDJfMjnmqIOhL9e90i0+tbqbOVFUkGQO22MZACY54
 Jry2hKiaXS8oD7/eqdC47hfe7WN2IU0hugfCMbbSl5NRRYe/NTgBtVfJao2TOtyoSzn3jU
 tiIjALcFtd9Fv4cMhL4GzEnnuf2c7nA=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-415-d3EUyrcxMjGtCyRG5GbAEg-1; Fri, 07 May 2021 17:28:06 -0400
X-MC-Unique: d3EUyrcxMjGtCyRG5GbAEg-1
Received: by mail-qv1-f69.google.com with SMTP id
 x6-20020a0cda060000b02901c4b3f7d3d9so7634489qvj.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 07 May 2021 14:28:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=pVNjq4cwxRpZVEM9G+ZCz6caWZiQ6FKaXq/9liRlvVI=;
 b=fJTodGf34NIgHo+Rq3MBSGO21dxLTCu4GZijz9kIkgzh0pGmKTdynTpFdcAb0agtBT
 fEtWaNusLo8AQOwJInW2ogKA8ll3iVtjAtaIhug724FOVlO0FcieVXR9Eek04HOJM3Q4
 YjHif6Z/vlsXKXU1PqksmoEvhc7aVN2EZQrvFi6U7YzK9aPoXo1Ofeelpf+4UEMVS7WE
 PrKPkuQrlLZjSvZB/ATcd5Q/z62ZsNVvviC356V+OFOW8ZZENx5WcxYKO03nXwS60FRL
 OdTfsnYtceYs1Ejb6Mv7nFOpNbxg/6bFC6oUEvcpvINrIeqIyUnh9tWiC2dxWnDwPd4n
 uFgA==
X-Gm-Message-State: AOAM530FEDoiXAAhKCw54rmYpB/K5/XVBiqiU2VfsQP/1+Gsd5hVcjts
 2pIzelWL5PCvkNcSkKmKqa51L6EViqKbgZAYvRuW1RiiNh/TpHOh3/2d7jOsLGp/tuBHmvd0j1k
 Ar0LEsGB2UnqLiEEMzxv1u2+n3ffe
X-Received: by 2002:ac8:109a:: with SMTP id a26mr11012789qtj.156.1620422885957; 
 Fri, 07 May 2021 14:28:05 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx4umG7ULJ2428gNNMYBy++wm63s5NWc12Pht4FLFgn8RWxeg/DGz3zuQqldKEj2lf9x+1nFA==
X-Received: by 2002:ac8:109a:: with SMTP id a26mr11012759qtj.156.1620422885691; 
 Fri, 07 May 2021 14:28:05 -0700 (PDT)
Received: from Ruby.lyude.net (pool-108-49-102-102.bstnma.fios.verizon.net.
 [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id v18sm1635624qkv.34.2021.05.07.14.28.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 May 2021 14:28:05 -0700 (PDT)
Message-ID: <cbbd22463a3af9efa7f12dc90b74231dc0ae5771.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Ville =?ISO-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Date: Fri, 07 May 2021 17:28:03 -0400
In-Reply-To: <YI9otSh/ftvLqMxb@intel.com>
References: <20210430223428.10514-1-lyude@redhat.com>
 <20210430223428.10514-2-lyude@redhat.com> <YI9otSh/ftvLqMxb@intel.com>
Organization: Red Hat
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/dp: Drop open-coded
 drm_dp_is_branch() in drm_dp_read_downstream_info()
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 open list <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 dri-devel@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIxLTA1LTAzIGF0IDA2OjA2ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
Cj4gT24gRnJpLCBBcHIgMzAsIDIwMjEgYXQgMDY6MzQ6MjhQTSAtMDQwMCwgTHl1ZGUgUGF1bCB3
cm90ZToKPiA+IE5vdGljZWQgdGhpcyB3aGlsZSBmaXhpbmcgYW5vdGhlciBpc3N1ZSBpbiBkcm1f
ZHBfcmVhZF9kb3duc3RyZWFtX2luZm8oKSwKPiA+IHRoZSBvcGVuIGNvZGVkIERQX0RPV05TVFJF
QU1QT1JUX1BSRVNFTlQgY2hlY2sgaGVyZSBqdXN0IGR1cGxpY2F0ZXMgd2hhdAo+ID4gd2UKPiA+
IGFscmVhZHkgZG8gaW4gZHJtX2RwX2lzX2JyYW5jaCgpLCBzbyBqdXN0IGdldCByaWQgb2YgaXQu
Cj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IEx5dWRlIFBhdWwgPGx5dWRlQHJlZGhhdC5jb20+Cj4g
PiAtLS0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2RybV9kcF9oZWxwZXIuYyB8IDQgKy0tLQo+ID4g
wqAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDMgZGVsZXRpb25zKC0pCj4gPiAKPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX2hlbHBlci5jCj4gPiBiL2RyaXZl
cnMvZ3B1L2RybS9kcm1fZHBfaGVscGVyLmMKPiA+IGluZGV4IDI3YzhjNWJkZjdkOS4uMGY4NGRm
ODc5OGFiIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9kcF9oZWxwZXIuYwo+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9kcF9oZWxwZXIuYwo+ID4gQEAgLTY3Nyw5ICs2
NzcsNyBAQCBpbnQgZHJtX2RwX3JlYWRfZG93bnN0cmVhbV9pbmZvKHN0cnVjdCBkcm1fZHBfYXV4
Cj4gPiAqYXV4LAo+ID4gwqDCoMKgwqDCoMKgwqDCoG1lbXNldChkb3duc3RyZWFtX3BvcnRzLCAw
LCBEUF9NQVhfRE9XTlNUUkVBTV9QT1JUUyk7Cj4gPiDCoAo+ID4gwqDCoMKgwqDCoMKgwqDCoC8q
IE5vIGRvd25zdHJlYW0gaW5mbyB0byByZWFkICovCj4gPiAtwqDCoMKgwqDCoMKgwqBpZiAoIWRy
bV9kcF9pc19icmFuY2goZHBjZCkgfHwKPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoCBkcGNkW0RQ
X0RQQ0RfUkVWXSA8IERQX0RQQ0RfUkVWXzEwIHx8Cj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqAg
IShkcGNkW0RQX0RPV05TVFJFQU1QT1JUX1BSRVNFTlRdICYgRFBfRFdOX1NUUk1fUE9SVF9QUkVT
RU5UKSkKPiA+ICvCoMKgwqDCoMKgwqDCoGlmICghZHJtX2RwX2lzX2JyYW5jaChkcGNkKSB8fCBk
cGNkW0RQX0RQQ0RfUkVWXSA8IERQX0RQQ0RfUkVWXzEwKQo+IAo+IEJUVyB0aGF0IERQQ0RfUkVW
IGNoZWNrIGxvb2tzIHJhdGhlciB3cm9uZy4KPiAKPiBSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkknbGwgc2VuZCBvdXQgYSBzZXBh
cmF0ZSBmaXggZm9yIHRoaXMgaW4ganVzdCBhIG1vbWVudCwgdGhhbmtzIGZvciBwb2ludGluZyBp
dApvdXQhCgo+IAo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gMDsK
PiA+IMKgCj4gPiDCoMKgwqDCoMKgwqDCoMKgLyogU29tZSBicmFuY2hlcyBhZHZlcnRpc2UgaGF2
aW5nIDAgZG93bnN0cmVhbSBwb3J0cywgZGVzcGl0ZSBhbHNvCj4gPiBhZHZlcnRpc2luZyB0aGV5
IGhhdmUgYQo+ID4gLS0gCj4gPiAyLjMwLjIKPiA+IAo+ID4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiA+
IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cj4gCgotLSAKQ2hlZXJzLAogTHl1
ZGUgUGF1bCAoc2hlL2hlcikKIFNvZnR3YXJlIEVuZ2luZWVyIGF0IFJlZCBIYXQKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
