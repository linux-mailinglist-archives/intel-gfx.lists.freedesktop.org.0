Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C33320044
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Feb 2021 22:21:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA18C6EC12;
	Fri, 19 Feb 2021 21:21:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D3696EC12
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Feb 2021 21:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1613769665;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=C5YOWjYKKEPw7ARjbo3Y9O1C3wAwe1ANRaLyLA4Al9c=;
 b=LyGX3THI8Syhv2zXBkeDGl8zzOriiLBuzMP9thgugv8xHHTr5zRSZk2xpXPiyhVbTaN6SO
 aV93b6y8sO++Lf+uxtzytceG27Y2mSUqsMbkoWsz9W5vPsf4RPaTy0YN/020xsMiVebhV6
 y0U4Wzex+u8weDA5AgoF1kaJoD6i1Dw=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-22-LL80LsHOMmamlN4v9-3JeQ-1; Fri, 19 Feb 2021 16:14:17 -0500
X-MC-Unique: LL80LsHOMmamlN4v9-3JeQ-1
Received: by mail-qk1-f200.google.com with SMTP id d66so4425774qke.9
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Feb 2021 13:14:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
 :in-reply-to:references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=C5YOWjYKKEPw7ARjbo3Y9O1C3wAwe1ANRaLyLA4Al9c=;
 b=Klz1ddm8BaCR6v7P8OrdBEsk0sOOWfZwDUKendRR6mvP2kOlZdVOJjtlOXa5jrRNQf
 HoZZj3pfhMW5/1F8BoEUuXSYTVUlw5doLDLaNt22KcMb8WUAtfCpFYfg3NMovK8XKKQq
 g44IXt1p7KpBL5lvlpQ6+sVtzfTku3hKM5ii75P5HvpZlN7nyEk2/okGTMaAE/gyI3UO
 HiJIqaD79AlNeRwOA7y95gBCFumcOkxjou5jcYzZClksc3LbiYQh4t9j7f2p0e9XUkIr
 hAZr3IQMuBC5LWAzcrZjyX8j/2YHeInSMsk6QYnenhqemeyrjdMV04t34WZhXAF6+EPF
 Ri3A==
X-Gm-Message-State: AOAM530jy7MlQvGDavc+q6wGmXknkGJ0gIHdORVEkmlSd3lfXX1URWsV
 Wam3FlPVMoXxL18tZdXDxKqMaWk94gWS7u4MqTw3eGdf4vbfOUqJL9x7QWg/aFSVY4bkQ/EYbVk
 gn4Se7hAwC0sAqjwkx0fnvzu9vJaq
X-Received: by 2002:a37:40d2:: with SMTP id
 n201mr11380054qka.287.1613769257495; 
 Fri, 19 Feb 2021 13:14:17 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwbodzFZyQN8nD+5Bv9iM7n2ksdk2GmMPOXXn65rtO9bRFBynvgjG56MCH9CX8Bne5kBB5QcQ==
X-Received: by 2002:a37:40d2:: with SMTP id
 n201mr11379951qka.287.1613769256237; 
 Fri, 19 Feb 2021 13:14:16 -0800 (PST)
Received: from Whitewolf.lyude.net
 (pool-108-49-102-102.bstnma.fios.verizon.net. [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id g20sm6253331qtq.35.2021.02.19.13.14.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Feb 2021 13:14:15 -0800 (PST)
Message-ID: <1755ae053e78a1f0eea1789f84e6206777eb46ac.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Ville =?ISO-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, 
 Jani Nikula <jani.nikula@intel.com>
Date: Fri, 19 Feb 2021 16:14:14 -0500
In-Reply-To: <YC6IZ+BUcA5uDCej@intel.com>
References: <20210208233902.1289693-1-lyude@redhat.com>
 <20210208233902.1289693-11-lyude@redhat.com>
 <20210211041540.GI82362@intel.com>
 <355ce12ec69a9b5f20b4a856a40c8abf413be5c0.camel@redhat.com>
 <87mtw1ai4m.fsf@intel.com> <YC6IZ+BUcA5uDCej@intel.com>
Organization: Red Hat
User-Agent: Evolution 3.38.3 (3.38.3-1.fc33)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [RFC v4 10/11] drm/dp: Extract i915's eDP backlight
 code into DRM helpers
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
Cc: David Airlie <airlied@linux.ie>, nouveau@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 open list <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 greg.depoire@gmail.com, Sean Paul <seanpaul@chromium.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIxLTAyLTE4IGF0IDE3OjMxICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
Cj4gT24gVGh1LCBGZWIgMTgsIDIwMjEgYXQgMTA6MzU6MDVBTSArMDIwMCwgSmFuaSBOaWt1bGEg
d3JvdGU6Cj4gPiBPbiBGcmksIDEyIEZlYiAyMDIxLCBMeXVkZSBQYXVsIDxseXVkZUByZWRoYXQu
Y29tPiB3cm90ZToKPiA+ID4gSSB0aGluayBpdCB3b3VsZG4ndCBiZSBhIGJhZCBpZGVhIHRvIGp1
c3QgYWRkcmVzcyB0aGlzIHdpdGggYSBmb2xsb3d1cAo+ID4gPiBzZXJpZXMKPiA+ID4gaW5zdGVh
ZCBhbmQgdXNlIHRoZSBvbGQgRFJNX0RFQlVHXyogbWFjcm9zIGluIHRoZSBtZWFuIHRpbWUuCj4g
PiAKPiA+IGF1eC0+ZGV2IGlzIHRoZXJlLCBjb3VsZCBhbHNvIHVzZSBkZXZfZGJnIGV0IGFsLiBp
biB0aGUgbWVhbiB0aW1lLiBUaGV5Cj4gPiBoYW5kbGUgTlVMTCBkZXYgZ3JhY2VmdWxseSB0b28g
aWYgdGhlIGRyaXZlciBkaWRuJ3Qgc2V0IHRoYXQuCj4gCj4gTGFzdCBJIGxvb2tlZCBhdXgtPmRl
diB3YXMgcmFuZG9tLiBTb21lIGRyaXZlcnMgcG9pbnQgaXQgYXQgdGhlCj4gY29ubmVjdG9yIHZz
LiBzb21lIGF0IHRoZSB0aGUgcGNpL3BsYXRmb3JtIGRldmljZS4KPiAKClRoYXQncyBjb3JyZWN0
LWZvciBtb3N0IFNvQ3MgdGhlIEFVWCBjaGFubmVsIGlzIGFjdHVhbGx5IGEgc3RhbmRhbG9uZSBw
bGF0Zm9ybQpkZXZpY2UgdGhhdCBpc24ndCBhc3NvY2lhdGVkIHdpdGggdGhlIERSTSBkZXZpY2Ug
YnkgZGVmYXVsdC4gL0J1dC8gSSB3ZW50CnRocm91Z2ggdGhlIHRyZWUgeWVzdGVyZGF5IGFuZCB0
aGUgZGF5IGJlZm9yZSBhbmQgZGlkIGEgYnVuY2ggb2YgY2xlYW51cCBhcm91bmQKRFAgYXV4IHJl
Z2lzdHJhdGlvbiwgYWRkZWQgYSBkcm1fZGV2IGZpZWxkIGFuZCBob29rZWQgaXQgdXAgaW4gZXZl
cnkgZHJpdmVyIHdpdGgKYW4gYXV4IGNoYW5uZWwsIGFuZCB0aGVuIGNvbnZlcnRlZCBhbGwgb2Yg
dGhlIERQIGhlbHBlcnMgKGluY2x1ZGluZyBkdWFsIG1vZGUKYW5kIE1TVCkgb3ZlciB0byB1c2lu
ZyBkcm1fZGJnXyooKSB2YXJpYW50cy4gT25jZSBJJ3ZlIGdvdHRlbiB0aHJvdWdoIHJlYWRpbmcK
YWxsIG15IGVtYWlsIGZvciB0b2RheSBJJ20gZ29pbmcgdG8gZG8gYSBxdWljayBzYW5pdHkgY2hl
Y2sgb24gaXQgYW5kIHRoZW4gcG9zdAp0aGUgc2VyaWVzIHRvIGRyaS1kZXZlbC4KCi0tIApTaW5j
ZXJlbHksCiAgIEx5dWRlIFBhdWwgKHNoZS9oZXIpCiAgIFNvZnR3YXJlIEVuZ2luZWVyIGF0IFJl
ZCBIYXQKICAgCk5vdGU6IEkgZGVhbCB3aXRoIGEgbG90IG9mIGVtYWlscyBhbmQgaGF2ZSBhIGxv
dCBvZiBidWdzIG9uIG15IHBsYXRlLiBJZiB5b3UndmUKYXNrZWQgbWUgYSBxdWVzdGlvbiwgYXJl
IHdhaXRpbmcgZm9yIGEgcmV2aWV3L21lcmdlIG9uIGEgcGF0Y2gsIGV0Yy4gYW5kIEkKaGF2ZW4n
dCByZXNwb25kZWQgaW4gYSB3aGlsZSwgcGxlYXNlIGZlZWwgZnJlZSB0byBzZW5kIG1lIGFub3Ro
ZXIgZW1haWwgdG8gY2hlY2sKb24gbXkgc3RhdHVzLiBJIGRvbid0IGJpdGUhCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
