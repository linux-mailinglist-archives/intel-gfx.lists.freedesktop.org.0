Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 917A9BE95E
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 02:14:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 273B36EF1A;
	Thu, 26 Sep 2019 00:14:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 372 seconds by postgrey-1.36 at gabe;
 Thu, 26 Sep 2019 00:14:04 UTC
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 694366EF1A
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 00:14:04 +0000 (UTC)
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-87-0XE-OtkVPzKLzpZN25ASiA-1; Wed, 25 Sep 2019 20:07:47 -0400
Received: by mail-qt1-f197.google.com with SMTP id o34so634931qtf.22
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 17:07:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=TwMdANyPCuTBKWvGlZIgB5FkOW+RddXDtzVf4yxu5T8=;
 b=iWXg/Bxkm2EvcPBg9d2bSam6H0VdJLmDMo1sHtvNYIy73uJW1wkfxy5ITzN1PUGwfx
 xct4aLyik2NGEutwxwSz4f0cV+n+RToYiUthaN3hzWB9dSNNj7WWlXRriYhlOZqiKKlo
 Ct/+n4z3St/0yPBZgeJtU3bKxS2siCg3PmuoDNnalshGqZtXkAErTb+Ftq63ygnCF2Lj
 OMGsLLGw7B6K1jq+3fWNILpi4BC/geQK9jSmNO/KLQlBqSlh1yaET/gSfmHI+fp/P7qj
 1hIX93w8yjf+9TxSxxhr4mLFTGoDljdbrcjRTqZkFCg44QFq9PzGsPVmfA/UxvhkKT4R
 Jt6Q==
X-Gm-Message-State: APjAAAXvOX38MgFycuizPyczjnEoCvBgDWt3Bqi81DkU2YMCqszVebJL
 5sdtK2L3oJmvhGz27i0kFY+yOvGnU/V/LVLhCzxnBqn59a8Edlp4KhrQWoFB5YtBkBrDbZbC6Po
 it/onvuTIQpnoZjXZFzarIksjqASv
X-Received: by 2002:a05:620a:389:: with SMTP id q9mr649939qkm.81.1569456467316; 
 Wed, 25 Sep 2019 17:07:47 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwHabMTs7N0BJyhTEj9bR0YWvWdaoiXk7nuYWL5FLTx8C8gDoH9sZvX0rhD0VSGVphbfNDsUQ==
X-Received: by 2002:a05:620a:389:: with SMTP id q9mr649919qkm.81.1569456467063; 
 Wed, 25 Sep 2019 17:07:47 -0700 (PDT)
Received: from dhcp-10-20-1-34.bss.redhat.com ([144.121.20.162])
 by smtp.gmail.com with ESMTPSA id z141sm191435qka.126.2019.09.25.17.07.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2019 17:07:46 -0700 (PDT)
Message-ID: <44bfc8fa3ddaa4d36542f3fa9fef412e88a0bd6b.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, 
 dri-devel@lists.freedesktop.org, Mikita Lipski <mikita.lipski@amd.com>
Date: Wed, 25 Sep 2019 20:07:44 -0400
In-Reply-To: <20190925141442.23236-3-ville.syrjala@linux.intel.com>
References: <20190925141442.23236-1-ville.syrjala@linux.intel.com>
 <20190925141442.23236-3-ville.syrjala@linux.intel.com>
Organization: Red Hat
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30)
MIME-Version: 1.0
X-MC-Unique: 0XE-OtkVPzKLzpZN25ASiA-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1569456843;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=AzffTTdXgYC15Qc6S8ABk8EAmdsNUUJM/VWDyCAQhi8=;
 b=Q0EyKiRkbQZ7cJMpsO8IowktMp7tej/HQVtWaCpSUak09VUiMIIaEexd/4fe/g3ZrWYnSq
 cvk9Wxnyaizwggwk9t1Map3zF0zceuoGT3sOOOwFH7FIl9KyKP+pdLhJ1Bv8AWkQHwt66G
 JB9Y5LhZXu9uQg9U5apNL6ZF74xJnOQ=
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/dp/mst: Replace the fixed point
 thing with straight calculation
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
Cc: Alex Deucher <alexander.deucher@amd.com>, intel-gfx@lists.freedesktop.org,
 Harry Wentland <harry.wentland@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmV2aWV3ZWQtYnk6IEx5dWRlIFBhdWwgPGx5dWRlQHJlZGhhdC5jb20+CgpDYzogTWlraXRhIExp
cHNraSAtIGZpZ3VyZWQgeW91J2Qgd2FudCB0byBrbm93IGFoZWFkIG9mIHRpbWUgeW91J2xsIG5l
ZWQgdG8KdXBkYXRlIHlvdXIgY2hhbmdlcyB0byBkcm1fZHBfY2FsY19wYm5fbW9kZSgpIHRvIG1h
dGNoCgpPbiBXZWQsIDIwMTktMDktMjUgYXQgMTc6MTQgKzAzMDAsIFZpbGxlIFN5cmphbGEgd3Jv
dGU6Cj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4KPiAKPiBHZXQgcmlkIG9mIHRoZSBkcm1fZml4cF9mcm9tX2ZyYWN0aW9uKCkgdXNhZ2UgYW5k
IGp1c3QgZG8gdGhlCj4gc3RyYWlnaHRmb3J3YXJkIGNhbGN1bGF0aW9uIGRpcmVjdGx5Lgo+IAo+
IENjOiBMeXVkZSBQYXVsIDxseXVkZUByZWRoYXQuY29tPgo+IENjOiBIYXJyeSBXZW50bGFuZCA8
aGFycnkud2VudGxhbmRAYW1kLmNvbT4KPiBDYzogQWxleCBEZXVjaGVyIDxhbGV4YW5kZXIuZGV1
Y2hlckBhbWQuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9kcm1fZHBfbXN0
X3RvcG9sb2d5LmMgfCAxOCArKy0tLS0tLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKSwgMTYgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9kcm1fZHBfbXN0X3RvcG9sb2d5LmMKPiBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZHBf
bXN0X3RvcG9sb2d5LmMKPiBpbmRleCBkNDY0NGEzYzEzMjQuLmY4OTlhNDQzMjMxMSAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX21zdF90b3BvbG9neS5jCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2RybV9kcF9tc3RfdG9wb2xvZ3kuYwo+IEBAIC0zMiw3ICszMiw2IEBACj4g
ICNpbmNsdWRlIDxkcm0vZHJtX2F0b21pY19oZWxwZXIuaD4KPiAgI2luY2x1ZGUgPGRybS9kcm1f
ZHBfbXN0X2hlbHBlci5oPgo+ICAjaW5jbHVkZSA8ZHJtL2RybV9kcnYuaD4KPiAtI2luY2x1ZGUg
PGRybS9kcm1fZml4ZWQuaD4KPiAgI2luY2x1ZGUgPGRybS9kcm1fcHJpbnQuaD4KPiAgI2luY2x1
ZGUgPGRybS9kcm1fcHJvYmVfaGVscGVyLmg+Cj4gIAo+IEBAIC0zODQwLDEzICszODM5LDYgQEAg
RVhQT1JUX1NZTUJPTChkcm1fZHBfY2hlY2tfYWN0X3N0YXR1cyk7Cj4gICAqLwo+ICBpbnQgZHJt
X2RwX2NhbGNfcGJuX21vZGUoaW50IGNsb2NrLCBpbnQgYnBwKQo+ICB7Cj4gLQl1NjQga2JwczsK
PiAtCXM2NCBwZWFrX2ticHM7Cj4gLQl1MzIgbnVtZXJhdG9yOwo+IC0JdTMyIGRlbm9taW5hdG9y
Owo+IC0KPiAtCWticHMgPSBjbG9jayAqIGJwcDsKPiAtCj4gIAkvKgo+ICAJICogbWFyZ2luIDUz
MDBwcG0gKyAzMDBwcG0gfiAwLjYlIGFzIHBlciBzcGVjLCBmYWN0b3IgaXMgMS4wMDYKPiAgCSAq
IFRoZSB1bml0IG9mIDU0LzY0TWJ5dGVzL3NlYyBpcyBhbiBhcmJpdHJhcnkgdW5pdCBjaG9zZW4g
YmFzZWQgb24KPiBAQCAtMzg1NywxNCArMzg0OSw4IEBAIGludCBkcm1fZHBfY2FsY19wYm5fbW9k
ZShpbnQgY2xvY2ssIGludCBicHApCj4gIAkgKiBwZWFrX2ticHMgKj0gKDY0LzU0KQo+ICAJICog
cGVha19rYnBzICo9IDggICAgY29udmVydCB0byBieXRlcwo+ICAJICovCj4gLQo+IC0JbnVtZXJh
dG9yID0gNjQgKiAxMDA2Owo+IC0JZGVub21pbmF0b3IgPSA1NCAqIDggKiAxMDAwICogMTAwMDsK
PiAtCj4gLQlrYnBzICo9IG51bWVyYXRvcjsKPiAtCXBlYWtfa2JwcyA9IGRybV9maXhwX2Zyb21f
ZnJhY3Rpb24oa2JwcywgZGVub21pbmF0b3IpOwo+IC0KPiAtCXJldHVybiBkcm1fZml4cDJpbnRf
Y2VpbChwZWFrX2ticHMpOwo+ICsJcmV0dXJuIERJVl9ST1VORF9VUF9VTEwobXVsX3UzMl91MzIo
Y2xvY2sgKiBicHAsIDY0ICogMTAwNiksCj4gKwkJCQk4ICogNTQgKiAxMDAwICogMTAwMCk7Cj4g
IH0KPiAgRVhQT1JUX1NZTUJPTChkcm1fZHBfY2FsY19wYm5fbW9kZSk7Cj4gIAotLSAKQ2hlZXJz
LAoJTHl1ZGUgUGF1bAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
