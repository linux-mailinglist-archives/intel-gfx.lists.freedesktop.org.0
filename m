Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58B1414FD1
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2019 17:16:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6DA089A0F;
	Mon,  6 May 2019 15:16:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com
 [IPv6:2607:f8b0:4864:20::641])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B00889A0F
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2019 15:16:16 +0000 (UTC)
Received: by mail-pl1-x641.google.com with SMTP id d9so6529970pls.8
 for <intel-gfx@lists.freedesktop.org>; Mon, 06 May 2019 08:16:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1u7drWIJX0vlIQB/ygcUGyKLjxAddZMS8JK32/Eg9hU=;
 b=Tf5qDXD2NNRLdKgd45FIN1dxmRXtF1V2vYYk92y0r1EkzOqw0/HlY0Yni7VPEKrplf
 etKvB9uW9jT92y4XtwPUQ5S+ece/fNJ6/jaNc0bQgsaoJUv+F8cBzGrNhv/ETXPSw5vn
 h2nj3W43dHg5pjqyg1RFJ0Yu0hZwdlYljKoTnz6E2N+4OD3PQZdk9welj9SUaBzr+tz1
 aJ9NALENRRyUp0P+Wx3au9IZxzUAlKBDfCC575i20TpOV3/tg3axZSvQ/bSxbxm1vpXM
 88eb/pyxzPYi1fH6SMUxLxagYkTpNYPtoMEBf4FpxNr9CWqCQfaWu+rRNIMv7ti8UUgs
 ix/w==
X-Gm-Message-State: APjAAAWiafgjj6x0dhWCC04hQcSIHgp7s+a2A4EUFBrMAu4Wx3WrmBjv
 EEE/0OxJJPHDMwBos54zzcON3Q==
X-Google-Smtp-Source: APXvYqwIbUKO147fnZOB17UUDrHH0ucZxXj2tg3GkjqUJZP2G1mbEvn9k/V2uaDJP2/lyedoAKCdVw==
X-Received: by 2002:a17:902:a5ca:: with SMTP id
 t10mr33215767plq.234.1557155775870; 
 Mon, 06 May 2019 08:16:15 -0700 (PDT)
Received: from localhost ([2620:10d:c091:500::3:32a0])
 by smtp.gmail.com with ESMTPSA id 9sm18661441pgv.5.2019.05.06.08.16.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 06 May 2019 08:16:14 -0700 (PDT)
Date: Mon, 6 May 2019 11:16:13 -0400
From: Johannes Weiner <hannes@cmpxchg.org>
To: Brian Welty <brian.welty@intel.com>
Message-ID: <20190506151613.GB11505@cmpxchg.org>
References: <20190501140438.9506-1-brian.welty@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190501140438.9506-1-brian.welty@intel.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cmpxchg-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=1u7drWIJX0vlIQB/ygcUGyKLjxAddZMS8JK32/Eg9hU=;
 b=Gfz6Scb+O2dfTb/uucuXrirZqRMDgF4/Zjl9BTGZrZWKo+QHDsRDtuCj0izcdOXzTi
 MRBYqwsmnC2e2iTWV7mY/5X9K21nxVs2DTJAYxgib2P1a+J58VF/oe3ppYcf122tjBG0
 TdTWNtw0PM50AuDnCjlp6SQh1sXgMUgz3L3qfAAH8WUHGjcdrxTBumA4E5k4dL4a/tnk
 NuAuY8j86JpTdsunWHDaWqHuo1cFDDCNrIvoaG4ce5U7gbS8hrHFTAAS8fdpC9vdt2f4
 EE5MHAXTmTgxlGGESYMm5dW8lsmAavNw3P1AYOoXPR1FPuJoAow1sFOgo+ssLmNOwUao
 fB1Q==
Subject: Re: [Intel-gfx] [RFC PATCH 0/5] cgroup support for GPU devices
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
Cc: ChunMing Zhou <David1.Zhou@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>, David Airlie <airlied@linux.ie>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Michal Hocko <mhocko@kernel.org>, linux-mm@kvack.org,
 =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 Li Zefan <lizefan@huawei.com>, Vladimir Davydov <vdavydov.dev@gmail.com>,
 Tejun Heo <tj@kernel.org>, cgroups@vger.kernel.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBNYXkgMDEsIDIwMTkgYXQgMTA6MDQ6MzNBTSAtMDQwMCwgQnJpYW4gV2VsdHkgd3Jv
dGU6Cj4gSW4gY29udGFpbmVyaXplZCBvciB2aXJ0dWFsaXplZCBlbnZpcm9ubWVudHMsIHRoZXJl
IGlzIGRlc2lyZSB0byBoYXZlCj4gY29udHJvbHMgaW4gcGxhY2UgZm9yIHJlc291cmNlcyB0aGF0
IGNhbiBiZSBjb25zdW1lZCBieSB1c2VycyBvZiBhIEdQVQo+IGRldmljZS4gIFRoaXMgUkZDIHBh
dGNoIHNlcmllcyBwcm9wb3NlcyBhIGZyYW1ld29yayBmb3IgaW50ZWdyYXRpbmcgCj4gdXNlIG9m
IGV4aXN0aW5nIGNncm91cCBjb250cm9sbGVycyBpbnRvIGRldmljZSBkcml2ZXJzLgo+IFRoZSBp
OTE1IGRyaXZlciBpcyB1cGRhdGVkIGluIHRoaXMgc2VyaWVzIGFzIG91ciBwcmltYXJ5IHVzZSBj
YXNlIHRvCj4gbGV2ZXJhZ2UgdGhpcyBmcmFtZXdvcmsgYW5kIHRvIHNlcnZlIGFzIGFuIGV4YW1w
bGUgZm9yIGRpc2N1c3Npb24uCj4gCj4gVGhlIHBhdGNoIHNlcmllcyBlbmFibGVzIGRldmljZSBk
cml2ZXJzIHRvIHVzZSBjZ3JvdXBzIHRvIGNvbnRyb2wgdGhlCj4gZm9sbG93aW5nIHJlc291cmNl
cyB3aXRoaW4gYSBHUFUgKG9yIG90aGVyIGFjY2VsZXJhdG9yIGRldmljZSk6Cj4gKiAgY29udHJv
bCBhbGxvY2F0aW9uIG9mIGRldmljZSBtZW1vcnkgKHJldXNlIG9mIG1lbWNnKQo+IGFuZCB3aXRo
IGZ1dHVyZSB3b3JrLCB3ZSBjb3VsZCBleHRlbmQgdG86Cj4gKiAgdHJhY2sgYW5kIGNvbnRyb2wg
c2hhcmUgb2YgR1BVIHRpbWUgKHJldXNlIG9mIGNwdS9jcHVhY2N0KQo+ICogIGFwcGx5IG1hc2sg
b2YgYWxsb3dlZCBleGVjdXRpb24gZW5naW5lcyAocmV1c2Ugb2YgY3B1c2V0cykKClBsZWFzZSBj
cmVhdGUgYSBzZXBhcmF0ZSBjb250cm9sbGVyIGZvciB5b3VyIHB1cnBvc2VzLgoKVGhlIG1lbW9y
eSBjb250cm9sbGVyIGlzIGZvciB0cmFkaXRpb25hbCBSQU0uIEkgZG9uJ3Qgc2VlIGl0IGhhdmlu
ZwptdWNoIGluIGNvbW1vbiB3aXRoIHdoYXQgeW91J3JlIHRyeWluZyB0byBkbywgYW5kIGl0J3Mg
YmFyZWx5IHJldXNpbmcKYW55IG9mIHRoZSBtZW1jZyBjb2RlLiBZb3UgY2FuIHVzZSB0aGUgcGFn
ZV9jb3VudGVyIEFQSSBkaXJlY3RseS4KCj4gSW5zdGVhZCBvZiBpbnRyb2R1Y2luZyBhIG5ldyBj
Z3JvdXAgc3Vic3lzdGVtIGZvciBHUFUgZGV2aWNlcywgYSBuZXcKPiBmcmFtZXdvcmsgaXMgcHJv
cG9zZWQgdG8gYWxsb3cgZGV2aWNlcyB0byByZWdpc3RlciB3aXRoIGV4aXN0aW5nIGNncm91cAo+
IGNvbnRyb2xsZXJzLCB3aGljaCBjcmVhdGVzIHBlci1kZXZpY2UgY2dyb3VwX3N1YnN5c19zdGF0
ZSB3aXRoaW4gdGhlCj4gY2dyb3VwLiAgVGhpcyBnaXZlcyBkZXZpY2UgZHJpdmVycyB0aGVpciBv
d24gcHJpdmF0ZSBjZ3JvdXAgY29udHJvbHMKPiAoc3VjaCBhcyBtZW1vcnkgbGltaXRzIG9yIG90
aGVyIHBhcmFtZXRlcnMpIHRvIGJlIGFwcGxpZWQgdG8gZGV2aWNlCj4gcmVzb3VyY2VzIGluc3Rl
YWQgb2YgaG9zdCBzeXN0ZW0gcmVzb3VyY2VzLgo+IERldmljZSBkcml2ZXJzIChHUFUgb3Igb3Ro
ZXIpIGFyZSB0aGVuIGFibGUgdG8gcmV1c2UgdGhlIGV4aXN0aW5nIGNncm91cAo+IGNvbnRyb2xz
LCBpbnN0ZWFkIG9mIGludmVudGluZyBzaW1pbGFyIG9uZXMuCj4gCj4gUGVyLWRldmljZSBjb250
cm9scyB3b3VsZCBiZSBleHBvc2VkIGluIGNncm91cCBmaWxlc3lzdGVtIGFzOgo+ICAgICBtb3Vu
dC88Y2dyb3VwX25hbWU+LzxzdWJzeXNfbmFtZT4uZGV2aWNlcy88ZGV2X25hbWU+LzxzdWJzeXNf
ZmlsZXM+Cj4gc3VjaCBhcyAoZm9yIGV4YW1wbGUpOgo+ICAgICBtb3VudC88Y2dyb3VwX25hbWU+
L21lbW9yeS5kZXZpY2VzLzxkZXZfbmFtZT4vbWVtb3J5Lm1heAo+ICAgICBtb3VudC88Y2dyb3Vw
X25hbWU+L21lbW9yeS5kZXZpY2VzLzxkZXZfbmFtZT4vbWVtb3J5LmN1cnJlbnQKPiAgICAgbW91
bnQvPGNncm91cF9uYW1lPi9jcHUuZGV2aWNlcy88ZGV2X25hbWU+L2NwdS5zdGF0Cj4gICAgIG1v
dW50LzxjZ3JvdXBfbmFtZT4vY3B1LmRldmljZXMvPGRldl9uYW1lPi9jcHUud2VpZ2h0CgpTdWJk
aXJlY3RvcmllcyBmb3IgYW55dGhpbmcgb3RoZXIgdGhhbiBhY3R1YWwgY2dyb3VwcyBhcmUgYSBu
by1nby4gSWYKeW91IG5lZWQgYSBoaWVyYXJjaHksIHVzZSBkb3R0ZWQgZmlsZW5hbWVzOgoKZ3B1
Lm1lbW9yeS5tYXgKZ3B1LmN5Y2xlcy5tYXgKCmV0Yy4gYW5kIGxvb2sgYXQgRG9jdW1lbnRhdGlv
bi9hZG1pbi1ndWlkZS9jZ3JvdXAtdjIucnN0J3MgJ0Zvcm1hdCcKYW5kICdDb252ZW50aW9ucycs
IGFzIHdlbGwgYXMgaG93IHRoZSBpbyBjb250cm9sbGVyIHdvcmtzLCB0byBzZWUgaG93Cm11bHRp
LWtleSAvIG11bHRpLWRldmljZSBjb250cm9sIGZpbGVzIGFyZSBpbXBsZW1lbnRlZCBpbiBjZ3Jv
dXAyLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
