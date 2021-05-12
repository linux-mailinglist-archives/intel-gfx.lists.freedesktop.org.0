Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64F8037BC95
	for <lists+intel-gfx@lfdr.de>; Wed, 12 May 2021 14:34:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF35C6EB83;
	Wed, 12 May 2021 12:34:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E38766E071
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 May 2021 12:34:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1620822848;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=MfeSNCK17/XVlWLn/UEVRnX1O7uSZOTujylmA7xhztQ=;
 b=aVCjF/Ev/xQKGBEQgtGWO7L0T1HxmI+McyZqiUgHBlo9veqvTor+k3FzPIrWpnkyNA/I0z
 HEU2BrCLUUrNUYdjuEhtMJ+nvJFCJUSgeKg0SJ/M+UvhJfRQSZ7DY7C9TyukDw+bEHeTci
 YBJNEx6jXqf/RtYgqz5BuNustHbLF+A=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-339-y4ineaRCOJaQMu4Bq3VlEw-1; Wed, 12 May 2021 08:34:06 -0400
X-MC-Unique: y4ineaRCOJaQMu4Bq3VlEw-1
Received: by mail-ej1-f72.google.com with SMTP id
 z6-20020a17090665c6b02903700252d1ccso7077646ejn.10
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 May 2021 05:34:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=MfeSNCK17/XVlWLn/UEVRnX1O7uSZOTujylmA7xhztQ=;
 b=A8Vgd4jt2VrAQI56yQyBXegPzvdHDUwy8sZDUQfW+S1H0eZHleXMnc+OZJxU/laP2T
 d+faHOBfEi8gZMW2F2Hp/ccFsO5xfSPSBEH6E0XQp8k7LQHyTLAigoqDsaXSRuAcKABY
 5pdlOsBmUhTYLiGYJL62CpVBjib36lBrtNRmEt6JhtWlGUyFUKwAWjJy5haf7AuGk7T5
 gvKMftuXvtrtqgqILwEZ7PvBglMCuHjf0sfd2aX+NlRGFsZTrcLGMYAtWo4IeR327G2B
 P5p+0QISsUis7Hcp2Uxum/NSsHcI1+jmoG7mudg/OYkXJN0CHUiqulhUaaueQMUPjHyP
 jvjg==
X-Gm-Message-State: AOAM533fmZUph16m4KdtjS7Ue1iGeil6qldZM7OVsxrjwLOn7Gh5PsSi
 wE02uMnqNDZwY8WIVlZ5Wgl3enzUPnaG5BeKI4EQ4zi9zE81SO9CNPENtmjOjxgcaF2mxZiwnmt
 UG5/SD4T5s925KnKycFLw02/Dmg4SnswScYYAClmj/cnuzYfmj5ulc2+C+rS118Lv00LTtRMPsb
 z7ZdNu
X-Received: by 2002:a17:906:8904:: with SMTP id
 fr4mr37892233ejc.146.1620822844703; 
 Wed, 12 May 2021 05:34:04 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwxKvG19awocuqCMONsnxw5hE4YwQJIcAhF9iJAiTRiOjIVIYibEz1pQd7M9DmPKVoeFoElIg==
X-Received: by 2002:a17:906:8904:: with SMTP id
 fr4mr37892208ejc.146.1620822844418; 
 Wed, 12 May 2021 05:34:04 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id b9sm17128483edt.2.2021.05.12.05.34.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 12 May 2021 05:34:04 -0700 (PDT)
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Simon Rettberg <simon.rettberg@rz.uni-freiburg.de>
References: <3e2e12f6-a5bd-858f-7454-fce19f70cf30@redhat.com>
 <YJvHgdYh7R/tKEtG@intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <022200b6-0470-2895-fd37-9fcefc9bc684@redhat.com>
Date: Wed, 12 May 2021 14:34:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <YJvHgdYh7R/tKEtG@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-gfx] i915 clear-residuals BYT + IVB rendering issue +
 possible fix
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpPbiA1LzEyLzIxIDI6MTggUE0sIFZpbGxlIFN5cmrDpGzDpCB3cm90ZToKPiBPbiBXZWQs
IE1heSAxMiwgMjAyMSBhdCAxMjowNjoyM1BNICswMjAwLCBIYW5zIGRlIEdvZWRlIHdyb3RlOgo+
PiBIaSBBbGwsCj4+Cj4+IFdlIChGZWRvcmEpIHJlY2VpdmVkIGEgYnVnLXJlcG9ydCBhYm91dCBy
ZW5kZXJpbmcgaXNzdWVzCj4+IG9uIEJZVCBhbmQgSVZCIGNhdXNlZCBieSB0aGUgaTkxNSBjbGVh
ci1yZXNpZHVhbHMgd29yawo+PiB3aGljaCBsYW5kZWQgaW4gNS4xMC55IDoKPj4KPj4gVGhlIEZl
ZG9yYSBidWc6Cj4+IGh0dHBzOi8vYnVnemlsbGEucmVkaGF0LmNvbS9zaG93X2J1Zy5jZ2k/aWQ9
MTk1OTU4MQo+Pgo+PiBQb2ludHMgdG8gdGhlc2UgaTkxNSBidWdzOgo+PiBodHRwczovL2dpdGxh
Yi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsLy0vaXNzdWVzLzMwNzEKPj4gaHR0cHM6Ly9naXRs
YWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vlcy8zMDgxI25vdGVfODkwNjA2Cj4+
Cj4+IFdpdGggdGhlIHNlY29uZCBsaW5rIGNvbnRhaW5pbmcgYSBwb3NzaWJsZSBmaXggd2hpY2gg
bG9va3MgcHJvbWlzaW5nCj4+IGlmIHNvbWVvbmUgY2FuIHRha2UgYSBsb29rIGF0IHRoaXMsIHRo
ZW4gdGhhdCB3b3VsZCBiZSBncmVhdDoKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2dlbjdfcmVuZGVyY2xlYXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2dl
bjdfcmVuZGVyY2xlYXIuYwo+PiBpbmRleCBkZTU3NWZkYjAuLjA1NGEwZjViOCAxMDA2NDQKPj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZ2VuN19yZW5kZXJjbGVhci5jCj4+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2dlbjdfcmVuZGVyY2xlYXIuYwo+PiBAQCAtMzk3LDcg
KzM5Nyw3IEBAIHN0YXRpYyB2b2lkIGVtaXRfYmF0Y2goc3RydWN0IGk5MTVfdm1hICogY29uc3Qg
dm1hLAo+PiAgICAgICAgIGdlbjdfZW1pdF9waXBlbGluZV9pbnZhbGlkYXRlKCZjbWRzKTsKPj4g
ICAgICAgICBiYXRjaF9hZGQoJmNtZHMsIE1JX0xPQURfUkVHSVNURVJfSU1NKDIpKTsKPj4gICAg
ICAgICBiYXRjaF9hZGQoJmNtZHMsIGk5MTVfbW1pb19yZWdfb2Zmc2V0KENBQ0hFX01PREVfMF9H
RU43KSk7Cj4+IC0gICAgICAgYmF0Y2hfYWRkKCZjbWRzLCAweGZmZmYwMDAwKTsKPj4gKyAgICAg
ICBiYXRjaF9hZGQoJmNtZHMsIDB4ZmZmYjAwMDApOwo+PiAgICAgICAgIGJhdGNoX2FkZCgmY21k
cywgaTkxNV9tbWlvX3JlZ19vZmZzZXQoQ0FDSEVfTU9ERV8xKSk7Cj4+ICAgICAgICAgYmF0Y2hf
YWRkKCZjbWRzLCAweGZmZmYwMDAwIHwgUElYRUxfU1VCU1BBTl9DT0xMRUNUX09QVF9ESVNBQkxF
KTsKPj4gICAgICAgICBnZW43X2VtaXRfcGlwZWxpbmVfaW52YWxpZGF0ZSgmY21kcyk7Cj4+Cj4+
IE5vdGUgdGhlOgo+PiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsLy0v
aXNzdWVzLzMwODEjbm90ZV84OTA2MDYKPj4KPj4gTGluayBjb250YWlucyBkZXRhaWxzIGFib3V0
IHRoZSB3aGF0IGFuZCB3aHkgb2YgdGhpcyBjaGFuZ2UuCj4gCj4gVGhlcmUncyBhIHBhdGNoIG9u
IHRoZSBsaXN0IGFscmVhZHkKPiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0
Y2gvNDMxMTA5Lz9zZXJpZXM9ODk1MDImcmV2PTEKClNvIHRoYXQgd2FzIHBvc3RlZCAyIHdlZWtz
IGFnbzsgYW5kIHdlIChGZWRvcmEpIGhhdmUgaGFkIHNldmVyYWwgYnVnIHJlcG9ydHMKYWJvdXQg
ZmlyZWZveCByZW5kZXJpbmcgY29ycnVwdGlvbiBvbiBCWVQgKyBJVkIgbWFjaGluZXMsIGV2ZXIg
c2luY2UgdGhlCmk5MTUgY2xlYXItcmVzaWR1YWxzIGNoYW5nZXMgbGFuZGVkIGluIDUuMTAueSwg
SSB0b29rIGFjdGlvbiBvbiB0aGlzIGxhc3QKb25lIHNpbmNlIG5vdyB0aGVpciBzZWVtcyB0byBi
ZSBhIGNsZWFyIGZpeC4KCj4gSSBzdXBwb3NlIGl0IG5lZWRzIGEgcy9JVkJfR1QxL0lWQi8gdG8g
YmUgY29uc2lzdGVudCB3aXRoIHRoZSBjdXJyZW50Cj4gdy9hIHNldHVwLiBPdGhlciB0aGFuIHRo
YXQgaXQgc2VlbXMgY29ycmVjdC4KPiAKPiBCdXQgSSBzdGlsbCBkb24ndCB1bmRlcnN0YW5kIGhv
dyBpdCBmaXhlcyByZW5kZXJpbmcgY29ycnVwdGlvbi4KCllvdSBtZWFuIHRoZSByZW1hcmsgYWJv
dXQgaG93IHRoZSBjaGFuZ2Ugc2hvdWxkIG5vdCBpbXBhY3Qgb3RoZXIKcmVuZGVyaW5nIGNvbnRl
eHRzPyBJIGd1ZXNzIGl0IG1heSBiZSBnbG9iYWwsIHJjc19lbmdpbmVfd2FfaW5pdCgpCndoaWNo
IGRvZXMgbm90IHNvdW5kIGxpa2UgaXQgaXMgYSBwZXIgY29udGV4dCBmdW5jdGlvbiwgYnV0IEkg
Y291bGQKdmVyeSB3ZWxsIGJlIHdyb25nLCBoYXMgdGhpczoKCiAgICAgICAgaWYgKElTX0lWWUJS
SURHRShpOTE1KSkgewogICAgICAgICAgICAgICAgLyogV2FEaXNhYmxlRWFybHlDdWxsOml2YiAq
LwogICAgICAgICAgICAgICAgd2FfbWFza2VkX2VuKHdhbCwKICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBfM0RfQ0hJQ0tFTjMsCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXzNEX0NI
SUNLRU5fU0ZfRElTQUJMRV9PQkpFTkRfQ1VMTCk7CgogICAgICAgICAgICAgICAgaWYgKDApIHsg
LyogY2F1c2VzIEhpWiBjb3JydXB0aW9uIG9uIGl2YjpndDEgKi8KICAgICAgICAgICAgICAgICAg
ICAgICAgLyogZW5hYmxlIEhpWiBSYXcgU3RhbGwgT3B0aW1pemF0aW9uICovCiAgICAgICAgICAg
ICAgICAgICAgICAgIHdhX21hc2tlZF9kaXMod2FsLAogICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIENBQ0hFX01PREVfMF9HRU43LAogICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIEhJWl9SQVdfU1RBTExfT1BUX0RJU0FCTEUpOwogICAgICAgICAgICAgICAg
fQoJCS4uLgoKTm90aWNlIGhvdyB0aGUgY29tbWVudCBleHBsaWN0bHkgc2F5cyB0aGF0IGRpc2Fi
bGluZyB0aGUKSElaX1JBV19TVEFMTF9PUFRfRElTQUJMRSAodGh1cyBlbmFibGluZyB0aGUgb3B0
KSBpcyBrbm93biB0bwpjYXVzZSBIaVogY29ycnVwdGlvbiwgc28gdGhhdCBhdCBsZWFzdCBleHBs
YWlucyB3aHkgdGhpcyBiaXQKbWF0dGVycy4gIE1heWJlIHRoZSBidWcgaXMgc3VjaCB0aGF0IHRy
aWdnZXJpbmcgaXQgZnJvbSB3aXRoIHRoZQpjbGVhci1yZXNpZHVhbHMgY29udGV4dCBhbHNvIGlt
cGFjdHMgb3RoZXIgY29udGV4dHM/CgpBbmQgYXMgSSBhbHJlYWR5IHNhaWQgdGhpcyBpcyBhIHJl
Z3Jlc3Npb24gd2hpY2ggaGFzIGJlZW4gYml0aW5nIEZlZG9yYQp1c2VycyBmb3IgYSB3aGlsZSBu
b3cgYW5kIHRoZSBmaXggb2J2aW91c2x5IHNlZW1zIGNvcnJlY3QgZ2l2ZW4gdGhlCmFib3ZlIGNv
bW1lbnQgd2hpY2ggSSBxdW90ZWQsIHNvIGNhbiB3ZSBwbGVhc2UgZ2V0IHRoaXMgbWVyZ2VkID8K
ClJlZ2FyZHMsCgpIYW5zCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
