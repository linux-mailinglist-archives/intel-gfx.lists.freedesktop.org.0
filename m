Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D03EA3243C9
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Feb 2021 19:31:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 046396E072;
	Wed, 24 Feb 2021 18:31:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FEA96E06D
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Feb 2021 18:31:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1614191496;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+/gCQg/tEM71zxcoR7zjR5gmsskJ0eZ/dRc7gd53l/g=;
 b=YUUMsE4/zk59pfUiom4zfPmPMdS6qturAC7MzZrIL3Jq8gvFDQBvrvJluOF9eaJeDts40W
 PPO2rxEfnk2OReTll1McgopPauLoz1hNLMtXsdenpfvW4YjXyLICac8lVZeLXiRv47XXqM
 U0UOWt7UQvwJgkWODqYxplkOeS8FJdw=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-84-B0E_vnrjNVyzSPS_QsGs5Q-1; Wed, 24 Feb 2021 13:31:34 -0500
X-MC-Unique: B0E_vnrjNVyzSPS_QsGs5Q-1
Received: by mail-qt1-f197.google.com with SMTP id o20so2284506qtx.22
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Feb 2021 10:31:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
 :in-reply-to:references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=+/gCQg/tEM71zxcoR7zjR5gmsskJ0eZ/dRc7gd53l/g=;
 b=XnNLaQ2IeUjSVMeWVcdoTp7/gxDm4TSnct3yLXyrrL37G2XX5dK1KPrfuws+ePOc9P
 MLmIWc8lM3n0CPMfLmhQ0nXyTXEiUBFgfpAN60VyVSLu40nXtw0keEhoaECYaSshUmxg
 EFkG9Z78ClCphACnCYuwYbtDMO1/l+7UBLuUtj8V5+8gB6Ba13+7z5y+euUF/GlHXTiR
 E+7LhEfEGgL9hqFP7ijAnuVEkoWiLdIW1H29fIZOTyBPqZSmiZ+7dCOIiIVl1dnCBfnK
 A7FmCytRP+ssKxfWzzpGBLNCLrJCYr2G3IxL+CFBIszNiZOnmmdMOr9ImgjAfsoaFrFx
 LhZA==
X-Gm-Message-State: AOAM531uJU4X/J4NXR7lQv0Ucp4hgAGw8Is1bErmusR27EsZKkSmMXm2
 3qNc7r5MEDhT2RCyQh8dOSbVF6PLYnrvI0+YMGuHiKKb9ZDreszXwa2k07wXxO+FOUGLSTVOn5m
 qJmkMDLhVt1VUAOCwcRrKEJ2+/4F0
X-Received: by 2002:a37:4e04:: with SMTP id c4mr33312004qkb.340.1614191493636; 
 Wed, 24 Feb 2021 10:31:33 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwW9RlbVM9pqZTZ8CABHHXQBMB2R40gfT6GhFa2haWyMC4079fPiV1sq4fr+b91tAm6uQeTbA==
X-Received: by 2002:a37:4e04:: with SMTP id c4mr33311985qkb.340.1614191493402; 
 Wed, 24 Feb 2021 10:31:33 -0800 (PST)
Received: from Whitewolf.lyude.net
 (pool-108-49-102-102.bstnma.fios.verizon.net. [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id r3sm2123793qkm.129.2021.02.24.10.31.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Feb 2021 10:31:32 -0800 (PST)
Message-ID: <aea7945a0a481046b3ab73950e71b11a39ad7a81.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Randy Dunlap <rdunlap@infradead.org>, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org, 
 nouveau@lists.freedesktop.org, Ville =?ISO-8859-1?Q?Syrj=E4l=E4?=
 <ville.syrjala@linux.intel.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Zimmermann
 <tzimmermann@suse.de>
Date: Wed, 24 Feb 2021 13:31:31 -0500
In-Reply-To: <712dc0c3-8ef3-ae3a-8838-93276529dff7@infradead.org>
References: <20210219215326.2227596-1-lyude@redhat.com>
 <20210219215326.2227596-2-lyude@redhat.com>
 <712dc0c3-8ef3-ae3a-8838-93276529dff7@infradead.org>
Organization: Red Hat
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH 01/30] drm/dp: Rewrap kdocs for struct
 drm_dp_aux
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
Reply-To: lyude@redhat.com
Cc: David Airlie <airlied@linux.ie>, Maxime Ripard <mripard@kernel.org>,
 open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIxLTAyLTE5IGF0IDE1OjQyIC0wODAwLCBSYW5keSBEdW5sYXAgd3JvdGU6Cj4g
T24gMi8xOS8yMSAxOjUyIFBNLCBMeXVkZSBQYXVsIHdyb3RlOgo+ID4gU2luY2Ugd2UncmUgYWJv
dXQgdG8gYmUgYWRkaW5nIHNvbWUgbW9yZSBmaWVsZHMgYW5kIHVwZGF0ZSB0aGlzCj4gPiBkb2N1
bWVudGF0aW9uLCBsZXQncyByZXdyYXAgaXQgdG8gdGhlIG5ldyBjb2x1bW4gbGltaXQgb2YgMTAw
IGJlZm9yZWhhbmQuCj4gPiBObyBhY3R1YWwgZG9jIG9yIGZ1bmN0aW9uYWwgY2hhbmdlcyBhcmUg
bWFkZSBoZXJlLgo+ID4gCj4gCj4gVGhlIHByZWZlcnJlZCBjb2x1bW4gbGltaXQgaXMgc3RpbGwg
ODAuCj4gRm9yIHNvbWUgKGV4Y2VwdGlvbmFsKSBjYXNlcywgZ29pbmcgdXAgdG8gMTAwIGlzIE9L
LAo+IGJ1dCBJIGRvbid0IHNlZSBhbnkgcmVhc29uIGhlcmUgdG8gZ28gYmV5b25kIDgwLgoKRm91
bmQgc29tZSBwb3N0cyBvbmxpbmUgdGhhdCBkaXNjdXNzZWQgdGhpcyBpbiBkZXRhaWw6CgpodHRw
czovL2xpbnV4LnNsYXNoZG90Lm9yZy9zdG9yeS8yMC8wNS8zMS8yMTEyMTEvbGludXMtdG9ydmFs
ZHMtYXJndWVzLWFnYWluc3QtODAtY29sdW1uLWxpbmUtbGVuZ3RoLWNvZGluZy1zdHlsZS1hcy1s
aW51eC1rZXJuZWwtZGVwcmVjYXRlcy1pdAoKc28gSSBndWVzcyBJJ20gZmluZSB3aXRoIHJld3Jh
cHBpbmcgdGhlc2UgdG8gODAgY29scyAoYWx0aG91Z2ggaG9uZXN0bHksIGl0J2QgYmUKcmVhbGx5
IG5pY2UgdG8ganVzdCBoYXZlIGEgc2luZ2xlIGNvbCBsaW1pdCB0byBtYWtlIHRoaW5ncyBlYXNp
ZXIgb24gdGV4dAplZGl0b3JzIDopIGluIHRoZSBuZXh0IHJlc3Bpbi4KCgo+IFNpZ25lZC1vZmYt
Ynk6IEx5dWRlIFBhdWwgPGx5dWRlQHJlZGhhdC5jb20+Cj4gLS0tCj4gwqBpbmNsdWRlL2RybS9k
cm1fZHBfaGVscGVyLmggfCA0MiArKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0t
Cj4gwqAxIGZpbGUgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKSwgMjQgZGVsZXRpb25zKC0pCj4g
Cj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2RybV9kcF9oZWxwZXIuaCBiL2luY2x1ZGUvZHJt
L2RybV9kcF9oZWxwZXIuaAo+IGluZGV4IGVkZmZkMWRjY2EzZS4uMjg5MWE5OGVlYmM4IDEwMDY0
NAo+IC0tLSBhL2luY2x1ZGUvZHJtL2RybV9kcF9oZWxwZXIuaAo+ICsrKyBiL2luY2x1ZGUvZHJt
L2RybV9kcF9oZWxwZXIuaAo+IEBAIC0xODM5LDM0ICsxODM5LDI4IEBAIHN0cnVjdCBkcm1fZHBf
YXV4X2NlYyB7Cj4gwqAgKiBAY3JjX2NvdW50OiBjb3VudGVyIG9mIGNhcHR1cmVkIGZyYW1lIENS
Q3MKPiDCoCAqIEB0cmFuc2ZlcjogdHJhbnNmZXJzIGEgbWVzc2FnZSByZXByZXNlbnRpbmcgYSBz
aW5nbGUgQVVYIHRyYW5zYWN0aW9uCj4gwqAgKgo+IC0gKiBUaGUgLmRldiBmaWVsZCBzaG91bGQg
YmUgc2V0IHRvIGEgcG9pbnRlciB0byB0aGUgZGV2aWNlIHRoYXQgaW1wbGVtZW50cwo+IC0gKiB0
aGUgQVVYIGNoYW5uZWwuCj4gKyAqIFRoZSAuZGV2IGZpZWxkIHNob3VsZCBiZSBzZXQgdG8gYSBw
b2ludGVyIHRvIHRoZSBkZXZpY2UgdGhhdCBpbXBsZW1lbnRzCj4gdGhlIEFVWCBjaGFubmVsLgo+
IMKgICoKPiAtICogVGhlIC5uYW1lIGZpZWxkIG1heSBiZSB1c2VkIHRvIHNwZWNpZnkgdGhlIG5h
bWUgb2YgdGhlIEkyQyBhZGFwdGVyLiBJZiBzZXQKPiB0bwo+IC0gKiBOVUxMLCBkZXZfbmFtZSgp
IG9mIC5kZXYgd2lsbCBiZSB1c2VkLgo+ICsgKiBUaGUgLm5hbWUgZmllbGQgbWF5IGJlIHVzZWQg
dG8gc3BlY2lmeSB0aGUgbmFtZSBvZiB0aGUgSTJDIGFkYXB0ZXIuIElmIHNldAo+IHRvIE5VTEws
IGRldl9uYW1lKCkgb2YKPiArICogLmRldiB3aWxsIGJlIHVzZWQuCj4gwqAgKgo+IC0gKiBEcml2
ZXJzIHByb3ZpZGUgYSBoYXJkd2FyZS1zcGVjaWZpYyBpbXBsZW1lbnRhdGlvbiBvZiBob3cgdHJh
bnNhY3Rpb25zCj4gLSAqIGFyZSBleGVjdXRlZCB2aWEgdGhlIC50cmFuc2ZlcigpIGZ1bmN0aW9u
LiBBIHBvaW50ZXIgdG8gYSBkcm1fZHBfYXV4X21zZwo+IC0gKiBzdHJ1Y3R1cmUgZGVzY3JpYmlu
ZyB0aGUgdHJhbnNhY3Rpb24gaXMgcGFzc2VkIGludG8gdGhpcyBmdW5jdGlvbi4gVXBvbgo+IC0g
KiBzdWNjZXNzLCB0aGUgaW1wbGVtZW50YXRpb24gc2hvdWxkIHJldHVybiB0aGUgbnVtYmVyIG9m
IHBheWxvYWQgYnl0ZXMKPiAtICogdGhhdCB3ZXJlIHRyYW5zZmVycmVkLCBvciBhIG5lZ2F0aXZl
IGVycm9yLWNvZGUgb24gZmFpbHVyZS4gSGVscGVycwo+IC0gKiBwcm9wYWdhdGUgZXJyb3JzIGZy
b20gdGhlIC50cmFuc2ZlcigpIGZ1bmN0aW9uLCB3aXRoIHRoZSBleGNlcHRpb24gb2YKPiAtICog
dGhlIC1FQlVTWSBlcnJvciwgd2hpY2ggY2F1c2VzIGEgdHJhbnNhY3Rpb24gdG8gYmUgcmV0cmll
ZC4gT24gYSBzaG9ydCwKPiAtICogaGVscGVycyB3aWxsIHJldHVybiAtRVBST1RPIHRvIG1ha2Ug
aXQgc2ltcGxlciB0byBjaGVjayBmb3IgZmFpbHVyZS4KPiArICogRHJpdmVycyBwcm92aWRlIGEg
aGFyZHdhcmUtc3BlY2lmaWMgaW1wbGVtZW50YXRpb24gb2YgaG93IHRyYW5zYWN0aW9ucyBhcmUK
PiBleGVjdXRlZCB2aWEgdGhlCj4gKyAqIC50cmFuc2ZlcigpIGZ1bmN0aW9uLiBBIHBvaW50ZXIg
dG8gYSBkcm1fZHBfYXV4X21zZyBzdHJ1Y3R1cmUgZGVzY3JpYmluZwo+IHRoZSB0cmFuc2FjdGlv
biBpcwo+ICsgKiBwYXNzZWQgaW50byB0aGlzIGZ1bmN0aW9uLiBVcG9uIHN1Y2Nlc3MsIHRoZSBp
bXBsZW1lbnRhdGlvbiBzaG91bGQgcmV0dXJuCj4gdGhlIG51bWJlciBvZiBwYXlsb2FkCj4gKyAq
IGJ5dGVzIHRoYXQgd2VyZSB0cmFuc2ZlcnJlZCwgb3IgYSBuZWdhdGl2ZSBlcnJvci1jb2RlIG9u
IGZhaWx1cmUuIEhlbHBlcnMKPiBwcm9wYWdhdGUgZXJyb3JzIGZyb20KPiArICogdGhlIC50cmFu
c2ZlcigpIGZ1bmN0aW9uLCB3aXRoIHRoZSBleGNlcHRpb24gb2YgdGhlIC1FQlVTWSBlcnJvciwg
d2hpY2gKPiBjYXVzZXMgYSB0cmFuc2FjdGlvbiB0bwo+ICsgKiBiZSByZXRyaWVkLiBPbiBhIHNo
b3J0LCBoZWxwZXJzIHdpbGwgcmV0dXJuIC1FUFJPVE8gdG8gbWFrZSBpdCBzaW1wbGVyIHRvCj4g
Y2hlY2sgZm9yIGZhaWx1cmUuCj4gwqAgKgo+IC0gKiBBbiBBVVggY2hhbm5lbCBjYW4gYWxzbyBi
ZSB1c2VkIHRvIHRyYW5zcG9ydCBJMkMgbWVzc2FnZXMgdG8gYSBzaW5rLiBBCj4gLSAqIHR5cGlj
YWwgYXBwbGljYXRpb24gb2YgdGhhdCBpcyB0byBhY2Nlc3MgYW4gRURJRCB0aGF0J3MgcHJlc2Vu
dCBpbiB0aGUKPiAtICogc2luayBkZXZpY2UuIFRoZSAudHJhbnNmZXIoKSBmdW5jdGlvbiBjYW4g
YWxzbyBiZSB1c2VkIHRvIGV4ZWN1dGUgc3VjaAo+IC0gKiB0cmFuc2FjdGlvbnMuIFRoZSBkcm1f
ZHBfYXV4X3JlZ2lzdGVyKCkgZnVuY3Rpb24gcmVnaXN0ZXJzIGFuIEkyQwo+IC0gKiBhZGFwdGVy
IHRoYXQgY2FuIGJlIHBhc3NlZCB0byBkcm1fcHJvYmVfZGRjKCkuIFVwb24gcmVtb3ZhbCwgZHJp
dmVycwo+IC0gKiBzaG91bGQgY2FsbCBkcm1fZHBfYXV4X3VucmVnaXN0ZXIoKSB0byByZW1vdmUg
dGhlIEkyQyBhZGFwdGVyLgo+IC0gKiBUaGUgSTJDIGFkYXB0ZXIgdXNlcyBsb25nIHRyYW5zZmVy
cyBieSBkZWZhdWx0OyBpZiBhIHBhcnRpYWwgcmVzcG9uc2UgaXMKPiAtICogcmVjZWl2ZWQsIHRo
ZSBhZGFwdGVyIHdpbGwgZHJvcCBkb3duIHRvIHRoZSBzaXplIGdpdmVuIGJ5IHRoZSBwYXJ0aWFs
Cj4gLSAqIHJlc3BvbnNlIGZvciB0aGlzIHRyYW5zYWN0aW9uIG9ubHkuCj4gKyAqIEFuIEFVWCBj
aGFubmVsIGNhbiBhbHNvIGJlIHVzZWQgdG8gdHJhbnNwb3J0IEkyQyBtZXNzYWdlcyB0byBhIHNp
bmsuIEEKPiB0eXBpY2FsIGFwcGxpY2F0aW9uIG9mCj4gKyAqIHRoYXQgaXMgdG8gYWNjZXNzIGFu
IEVESUQgdGhhdCdzIHByZXNlbnQgaW4gdGhlIHNpbmsgZGV2aWNlLiBUaGUKPiAudHJhbnNmZXIo
KSBmdW5jdGlvbiBjYW4gYWxzbyBiZQo+ICsgKiB1c2VkIHRvIGV4ZWN1dGUgc3VjaCB0cmFuc2Fj
dGlvbnMuIFRoZSBkcm1fZHBfYXV4X3JlZ2lzdGVyKCkgZnVuY3Rpb24KPiByZWdpc3RlcnMgYW4g
STJDIGFkYXB0ZXIKPiArICogdGhhdCBjYW4gYmUgcGFzc2VkIHRvIGRybV9wcm9iZV9kZGMoKS4g
VXBvbiByZW1vdmFsLCBkcml2ZXJzIHNob3VsZCBjYWxsCj4gZHJtX2RwX2F1eF91bnJlZ2lzdGVy
KCkKPiArICogdG8gcmVtb3ZlIHRoZSBJMkMgYWRhcHRlci4gVGhlIEkyQyBhZGFwdGVyIHVzZXMg
bG9uZyB0cmFuc2ZlcnMgYnkgZGVmYXVsdDsKPiBpZiBhIHBhcnRpYWwgcmVzcG9uc2UKPiArICog
aXMgcmVjZWl2ZWQsIHRoZSBhZGFwdGVyIHdpbGwgZHJvcCBkb3duIHRvIHRoZSBzaXplIGdpdmVu
IGJ5IHRoZSBwYXJ0aWFsCj4gcmVzcG9uc2UgZm9yIHRoaXMKPiArICogdHJhbnNhY3Rpb24gb25s
eS4KPiDCoCAqCj4gLSAqIE5vdGUgdGhhdCB0aGUgYXV4IGhlbHBlciBjb2RlIGFzc3VtZXMgdGhh
dCB0aGUgLnRyYW5zZmVyKCkgZnVuY3Rpb24KPiAtICogb25seSBtb2RpZmllcyB0aGUgcmVwbHkg
ZmllbGQgb2YgdGhlIGRybV9kcF9hdXhfbXNnIHN0cnVjdHVyZS7CoCBUaGUKPiAtICogcmV0cnkg
bG9naWMgYW5kIGkyYyBoZWxwZXJzIGFzc3VtZSB0aGlzIGlzIHRoZSBjYXNlLgo+ICsgKiBOb3Rl
IHRoYXQgdGhlIGF1eCBoZWxwZXIgY29kZSBhc3N1bWVzIHRoYXQgdGhlIC50cmFuc2ZlcigpIGZ1
bmN0aW9uIG9ubHkKPiBtb2RpZmllcyB0aGUgcmVwbHkgZmllbGQKPiArICogb2YgdGhlIGRybV9k
cF9hdXhfbXNnIHN0cnVjdHVyZS4gVGhlIHJldHJ5IGxvZ2ljIGFuZCBpMmMgaGVscGVycyBhc3N1
bWUKPiB0aGlzIGlzIHRoZSBjYXNlLgo+IMKgICovCj4gwqBzdHJ1Y3QgZHJtX2RwX2F1eCB7Cj4g
wqDCoMKgwqDCoMKgwqDCoGNvbnN0IGNoYXIgKm5hbWU7Cj4gCgoKCgotLSAKU2luY2VyZWx5LAog
ICBMeXVkZSBQYXVsIChzaGUvaGVyKQogICBTb2Z0d2FyZSBFbmdpbmVlciBhdCBSZWQgSGF0CiAg
IApOb3RlOiBJIGRlYWwgd2l0aCBhIGxvdCBvZiBlbWFpbHMgYW5kIGhhdmUgYSBsb3Qgb2YgYnVn
cyBvbiBteSBwbGF0ZS4gSWYgeW91J3ZlCmFza2VkIG1lIGEgcXVlc3Rpb24sIGFyZSB3YWl0aW5n
IGZvciBhIHJldmlldy9tZXJnZSBvbiBhIHBhdGNoLCBldGMuIGFuZCBJCmhhdmVuJ3QgcmVzcG9u
ZGVkIGluIGEgd2hpbGUsIHBsZWFzZSBmZWVsIGZyZWUgdG8gc2VuZCBtZSBhbm90aGVyIGVtYWls
IHRvIGNoZWNrCm9uIG15IHN0YXR1cy4gSSBkb24ndCBiaXRlIQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
