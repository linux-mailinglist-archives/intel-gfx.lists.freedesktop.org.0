Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51DF633799D
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 17:41:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B26236E4F8;
	Thu, 11 Mar 2021 16:41:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DC6C6E4F8
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 16:41:12 +0000 (UTC)
Received: by mail-ej1-x62b.google.com with SMTP id mj10so47530010ejb.5
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 08:41:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=m/FeYrx17SS+gOiQek3l9jKsFiAYMuTY2tZvPsNdW/4=;
 b=OJM492BxeZxilecBamCl7nKt8yBeJIhTE78QQMXcdE7+1OAkKAovV+mDxfBkpLDBaz
 km/pmr2eoBa6v/kjINxnaTCYiuzShWFSjtdS5GSOMnS6yaD71lfj0vzKtOqFiGiCzdp9
 qZurSQiVGZ2Kwo5Q+DRkx0pbmfzzp69Lc7/7k1yxe0bNKio1rqcnXP/mhqhqwuemzNft
 G0ppIaGzHPqYWlob4mjulfnzU57ze8uSK4zNikjthOXAlh7RT8nmzZBerJ8US7FRwC5d
 ri5mZdN7q8HCAmJnbMa6UivdOMjthLD3dNO4NIQk+VdSdJYofB5rElQRqN2TzZ0RXq+8
 +siA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=m/FeYrx17SS+gOiQek3l9jKsFiAYMuTY2tZvPsNdW/4=;
 b=A6TvyFJ4U+72r4fPyszPFQ8QNtNkvWL3KBVwGykIJeGpTWyDqmXbwz16NNvcG1I9k1
 FF/7FvO6dAppmSbTFbOqehpvuEFZMoiNOJzszO5732qpJq4eWMVJ0OCIwwakJ5Zww2Xb
 1Cckc9yVT9luwz/kd95KkpTferbqzg0Scw0qnq3dQdc938zYTMbTx5Si/qv0O/x/4hPC
 bbWR6rMt2KkMVoG98QQZEAaWVpEJ1WBwQa/B3RtfkJZc++Wu9AtfFdcaqo2uKaL44Ycp
 cSiX/sJSYer8yaIAk/AywSHEn3/kBZ9ZZMuoemLaY5mbqwN2UjGBJ+xnhImRzbpCs0yg
 SXog==
X-Gm-Message-State: AOAM530cluNerea1XhsyAcQqNaIEKh69A7Jc93MtMXLXWBorTa/edJu5
 MgECg7/X7Oku2BQ5x6mlO846yIZcuWXq4NCx9GVfFQ==
X-Google-Smtp-Source: ABdhPJyQQ+bOAL/5/cFgJwxxQ7SQHBhA921Krf8AGbq3OhRjpVyR5nFZ6rTK5xs7l0KD8EgAgm9MxCVPhTBZEB2uPDI=
X-Received: by 2002:a17:906:b288:: with SMTP id
 q8mr3919061ejz.210.1615480870640; 
 Thu, 11 Mar 2021 08:41:10 -0800 (PST)
MIME-Version: 1.0
References: <20210310212606.766121-1-jason@jlekstrand.net>
 <20210310215007.782649-1-jason@jlekstrand.net>
 <20210311114432.GB101473@zkempczy-mobl2>
 <161548027193.13836.14203592427794395157@build.alporthouse.com>
In-Reply-To: <161548027193.13836.14203592427794395157@build.alporthouse.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Thu, 11 Mar 2021 10:40:59 -0600
Message-ID: <CAOFGe973meQ84Yzhd+bXb+i3Lsc9bXJCiarfcukM8tos78xBFA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] i915: Drop relocation support on all new
 hardware (v3)
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
Cc: Dave Airlie <airlied@redhat.com>,
 Intel GFX <intel-gfx@lists.freedesktop.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBNYXIgMTEsIDIwMjEgYXQgMTA6MzEgQU0gQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gUXVvdGluZyBaYmlnbmlldyBLZW1wY3p5xYRza2kg
KDIwMjEtMDMtMTEgMTE6NDQ6MzIpCj4gPiBPbiBXZWQsIE1hciAxMCwgMjAyMSBhdCAwMzo1MDow
N1BNIC0wNjAwLCBKYXNvbiBFa3N0cmFuZCB3cm90ZToKPiA+ID4gVGhlIFZ1bGthbiBkcml2ZXIg
aW4gTWVzYSBmb3IgSW50ZWwgaGFyZHdhcmUgbmV2ZXIgdXNlcyByZWxvY2F0aW9ucyBpZgo+ID4g
PiBpdCdzIHJ1bm5pbmcgb24gYSB2ZXJzaW9uIG9mIGk5MTUgdGhhdCBzdXBwb3J0cyBhdCBsZWFz
dCBzb2Z0cGluIHdoaWNoCj4gPiA+IGFsbCB2ZXJzaW9ucyBvZiBpOTE1IHN1cHBvcnRpbmcgR2Vu
MTIgZG8uICBPbiB0aGUgT3BlbkdMIHNpZGUsIEdlbjEyKyBpcwo+ID4gPiBvbmx5IHN1cHBvcnRl
ZCBieSBpcmlzIHdoaWNoIG5ldmVyIHVzZXMgcmVsb2NhdGlvbnMuICBUaGUgb2xkZXIgaTk2NQo+
ID4gPiBkcml2ZXIgaW4gTWVzYSBkb2VzIHVzZSByZWxvY2F0aW9ucyBidXQgaXQgb25seSBzdXBw
b3J0cyBJbnRlbCBoYXJkd2FyZQo+ID4gPiB0aHJvdWdoIEdlbjExIGFuZCBoYXMgYmVlbiBkZXBy
ZWNhdGVkIGZvciBhbGwgaGFyZHdhcmUgR2VuOSsuICBUaGUKPiA+ID4gY29tcHV0ZSBkcml2ZXIg
YWxzbyBuZXZlciB1c2VzIHJlbG9jYXRpb25zLiAgVGhpcyBvbmx5IGxlYXZlcyB0aGUgbWVkaWEK
PiA+ID4gZHJpdmVyIHdoaWNoIGlzIHN1cHBvc2VkIHRvIGJlIHN3aXRjaGluZyB0byBzb2Z0cGlu
IGdvaW5nIGZvcndhcmQuCj4gPiA+IE1ha2luZyBzb2Z0cGluIGEgcmVxdWlyZW1lbnQgZm9yIGFs
bCBmdXR1cmUgaGFyZHdhcmUgc2VlbXMgcmVhc29uYWJsZS4KPiA+ID4KPiA+ID4gUmVqZWN0aW5n
IHJlbG9jYXRpb25zIHN0YXJ0aW5nIHdpdGggR2VuMTIgaGFzIHRoZSBiZW5lZml0IHRoYXQgd2Ug
ZG9uJ3QKPiA+ID4gaGF2ZSB0byBib3RoZXIgc3VwcG9ydGluZyBpdCBvbiBwbGF0Zm9ybXMgd2l0
aCBsb2NhbCBtZW1vcnkuICBHaXZlbiBob3cKPiA+ID4gbXVjaCBDUFUgdG91Y2hpbmcgb2YgbWVt
b3J5IGlzIHJlcXVpcmVkIGZvciByZWxvY2F0aW9ucywgbm90IGhhdmluZyB0bwo+ID4gPiBkbyBz
byBvbiBwbGF0Zm9ybXMgd2hlcmUgbm90IGFsbCBtZW1vcnkgaXMgZGlyZWN0bHkgQ1BVLWFjY2Vz
c2libGUKPiA+ID4gY2FycmllcyBzaWduaWZpY2FudCBhZHZhbnRhZ2VzLgo+ID4gPgo+ID4gPiB2
MiAoSmFzb24gRWtzdHJhbmQpOgo+ID4gPiAgLSBBbGxvdyBUR0wtTFAgcGxhdGZvcm1zIGFzIHRo
ZXkndmUgYWxyZWFkeSBzaGlwcGVkCj4gPiA+Cj4gPiA+IHYzIChKYXNvbiBFa3N0cmFuZCk6Cj4g
PiA+ICAtIFdBUk5fT04gcGxhdGZvcm1zIHdpdGggTE1FTSBzdXBwb3J0IGluIGNhc2UgdGhlIGNo
ZWNrIGlzIHdyb25nCj4gPgo+ID4gSSB3YXMgYXNrZWQgdG8gcmV2aWV3IG9mIHRoaXMgcGF0Y2gu
IEl0IHdvcmtzIGFsb25nIHdpdGggZXhwZWN0ZWQKPiA+IElHVCBjaGVjayBodHRwczovL3BhdGNo
d29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvNDIzMzYxLz9zZXJpZXM9ODI5NTQmcmV2PTI1Cj4g
Pgo+ID4gQmVmb3JlIEknbGwgZ2l2ZSB5b3Ugci1iIC0gaXNuJ3QgaTkxNV9nZW1fZXhlY2J1ZmZl
cjJfaW9jdGwoKSBiZXR0ZXIgcGxhY2UKPiA+IHRvIGRvIGZvciBsb29wIGp1c3QgYWZ0ZXIgY29w
eV9mcm9tX3VzZXIoKSBhbmQgY2hlY2sgcmVsb2NhdGlvbl9jb3VudD8KPiA+IFdlIGhhdmUgYW4g
YWNjZXNzIHRvIGV4ZWMyX2xpc3QgdGhlcmUsIHdlIGtub3cgdGhlIGdlbiBzbyB3ZSdyZSBhYmxl
IHRvIHNheQo+ID4gcmVsb2NhdGlvbnMgYXJlIG5vdCBzdXBwb3J0ZWQgaW1tZWRpYXRlLCB3aXRo
b3V0IGVudGVyaW5nIGk5MTVfZ2VtX2RvX2V4ZWNidWZmZXIoKS4KPgo+IFRoZXJlJ3MgYSBOT1JF
TE9DIGZsYWcgeW91IGNhbiBlbmZvcmNlIGFzIG1hbmRhdG9yeS4gVGhhdCdzIHRyaXZpYWwgZm9y
Cj4gdXNlcnNwYWNlIHRvIHNldCwgcmVhbGx5IG1ha2VzIHN1cmUgdGhleSBhcmUgYXdhcmUgb2Yg
dGhlIGNoYW5nZSBhZm9vdCwKPiBhbmQgaTkxNV9nZW1fY2Vja19leGVjYnVmZmVyKCkgd2lsbCBw
ZXJmb3JtIHRoZSB2YWxpZGF0aW9uIHVwZnJvbnQgd2l0aAo+IHRoZSBvdGhlciBmbGFnIGNoZWNr
cy4KCk5PUkVMT0MgZG9lc24ndCBxdWl0ZSBlbnN1cmUgdGhhdCB0aGVyZSBhcmUgbm8gcmVsb2Nh
dGlvbnM7IGl0IGp1c3QKbWFrZXMgdGhpbmdzIG9wdGlvbmFsIGlmIHRoZSBrZXJuZWwgaGFzbid0
IG1vdmVkIGFueXRoaW5nLiAgSSBndWVzcyB3ZQpjb3VsZCByZXF1aXJlIHVzZXJzcGFjZSB0byBz
ZXQgaXQgYnV0IGl0IGFsc28gZG9lc24ndCBkbyBhbnl0aGluZyBpZgp0aGVyZSBhcmUgbm8gcmVs
b2NhdGlvbnMgdG8gYmVnaW4gd2l0aC4gIEkgdGhpbmsgSSdkIHBlcnNvbmFsbHkgZXJyIG9uCnRo
ZSBzaWRlIG9mIG5vdCByZXF1aXJpbmcgcG9pbnRsZXNzIGZsYWdzLgoKLS1KYXNvbgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
