Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A351254AF
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2019 18:00:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D299B891A3;
	Tue, 21 May 2019 16:00:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com
 [IPv6:2607:f8b0:4864:20::243])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFCEE891C7
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2019 16:00:48 +0000 (UTC)
Received: by mail-oi1-x243.google.com with SMTP id q186so6515667oia.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2019 09:00:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NhMdeTlwpp1ipABlk4vrZFRm+ansgm/gZL6cQawSF+c=;
 b=b/cZPiL/o5a/HJBKBp1AAcTN3jvWmUDI45/UquijlKeGjVfJQaqh/3bYymZemRfPrW
 jlxMv9H4PbjrGy4SmGwDh3d3XKEIMfF4twp1/SESKo5rh/N/iMVAZLvt5ykk6fi1DDOo
 ndCkZitvwvAQj4O4qjB2ywR0jULiraxXAVRqWUOxd8r/u00cvpu47oU91HlPcMgwge2r
 4H7gScAjSWlxRplGiKi0uoH3CPw8DTfmtv4/u9rloqbMTArPUgiK8nr+SaxD2UTsPuC0
 DZD1Hy0ma1oeS/nm9FBs+zrxmi/2oAKgjyirFLnWVZRTrd/xg194dKmafIhKR+dnC1xH
 OyKQ==
X-Gm-Message-State: APjAAAXxc17SrqMGiGLBL5QAbE8RBGjk/U64DUmCEmUnnM1ik53uJm3i
 vaWEM8/mh22GYhccJkph5R+CwkNR8hV0KCR9QmbdNw==
X-Google-Smtp-Source: APXvYqz1HRnyxysQSyfGmkEPM6kIYzznd5oq6OhQwPIPC1dkDjzOHTKgjff5dHGhujv1bAcBk2AFzcykzlU6H9OZNBk=
X-Received: by 2002:aca:e4c8:: with SMTP id b191mr4039039oih.110.1558454448157; 
 Tue, 21 May 2019 09:00:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190520213945.17046-1-daniel.vetter@ffwll.ch>
 <20190520213945.17046-4-daniel.vetter@ffwll.ch>
 <20190521154059.GC3836@redhat.com>
In-Reply-To: <20190521154059.GC3836@redhat.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 21 May 2019 18:00:36 +0200
Message-ID: <CAKMK7uEaKJiT__=dt=ROUP4Kkq1NgwScLJFQcMuBs2GYjMWOLw@mail.gmail.com>
To: Jerome Glisse <jglisse@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=NhMdeTlwpp1ipABlk4vrZFRm+ansgm/gZL6cQawSF+c=;
 b=iWPYjGwyHiS4RY9vwsXeZ8i6fKnHYt4FFltlGbL8zLBXNA8i8brUrULMsuEhL8dHVf
 mFcmOyqSuXprZfVNumy/KKsfMmPjtpula612aIpH4kUKtfFSu1IVVl9/lN7lo1EbO5Di
 Nm953Hx97nGZEsz7iDskJM7qE79xpAl3pv/ys=
Subject: Re: [Intel-gfx] [PATCH 4/4] mm,
 notifier: Add a lockdep map for invalidate_range_start
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
Cc: Michal Hocko <mhocko@suse.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Linux MM <linux-mm@kvack.org>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 David Rientjes <rientjes@google.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBNYXkgMjEsIDIwMTkgYXQgNTo0MSBQTSBKZXJvbWUgR2xpc3NlIDxqZ2xpc3NlQHJl
ZGhhdC5jb20+IHdyb3RlOgo+Cj4gT24gTW9uLCBNYXkgMjAsIDIwMTkgYXQgMTE6Mzk6NDVQTSAr
MDIwMCwgRGFuaWVsIFZldHRlciB3cm90ZToKPiA+IFRoaXMgaXMgYSBzaW1pbGFyIGlkZWEgdG8g
dGhlIGZzX3JlY2xhaW0gZmFrZSBsb2NrZGVwIGxvY2suIEl0J3MKPiA+IGZhaXJseSBlYXN5IHRv
IHByb3Zva2UgYSBzcGVjaWZpYyBub3RpZmllciB0byBiZSBydW4gb24gYSBzcGVjaWZpYwo+ID4g
cmFuZ2U6IEp1c3QgcHJlcCBpdCwgYW5kIHRoZW4gbXVubWFwKCkgaXQuCj4gPgo+ID4gQSBiaXQg
aGFyZGVyLCBidXQgc3RpbGwgZG9hYmxlLCBpcyB0byBwcm92b2tlIHRoZSBtbXUgbm90aWZpZXJz
IGZvcgo+ID4gYWxsIHRoZSB2YXJpb3VzIGNhbGxjaGFpbnMgdGhhdCBtaWdodCBsZWFkIHRvIHRo
ZW0uIEJ1dCBib3RoIGF0IHRoZQo+ID4gc2FtZSB0aW1lIGlzIHJlYWxseSBoYXJkIHRvIHJlbGlh
YmxlIGhpdCwgZXNwZWNpYWxseSB3aGVuIHlvdSB3YW50IHRvCj4gPiBleGVyY2lzZSBwYXRocyBs
aWtlIGRpcmVjdCByZWNsYWltIG9yIGNvbXBhY3Rpb24sIHdoZXJlIGl0J3Mgbm90Cj4gPiBlYXN5
IHRvIGNvbnRyb2wgd2hhdCBleGFjdGx5IHdpbGwgYmUgdW5tYXBwZWQuCj4gPgo+ID4gQnkgaW50
cm9kdWNpbmcgYSBsb2NrZGVwIG1hcCB0byB0aWUgdGhlbSBhbGwgdG9nZXRoZXIgd2UgYWxsb3cg
bG9ja2RlcAo+ID4gdG8gc2VlIGEgbG90IG1vcmUgZGVwZW5kZW5jaWVzLCB3aXRob3V0IGhhdmlu
ZyB0byBhY3R1YWxseSBoaXQgdGhlbQo+ID4gaW4gYSBzaW5nbGUgY2hhbGxjaGFpbiB3aGlsZSB0
ZXN0aW5nLgo+ID4KPiA+IEFzaWRlOiBTaW5jZSBJIHR5cGVkIHRoaXMgdG8gdGVzdCBpOTE1IG1t
dSBub3RpZmllcnMgSSd2ZSBvbmx5IHJvbGxlZAo+ID4gdGhpcyBvdXQgZm9yIHRoZSBpbnZhbGlh
dGVfcmFuZ2Vfc3RhcnQgY2FsbGJhY2suIElmIHRoZXJlJ3MKPiA+IGludGVyZXN0LCB3ZSBzaG91
bGQgcHJvYmFibHkgcm9sbCB0aGlzIG91dCB0byBhbGwgb2YgdGhlbS4gQnV0IG15Cj4gPiB1bmRl
c3RhbmRpbmcgb2YgY29yZSBtbSBpcyBzZXJpb3VzbHkgbGFja2luZywgYW5kIEknbSBub3QgY2xl
YXIgb24KPiA+IHdoZXRoZXIgd2UgbmVlZCBhIGxvY2tkZXAgbWFwIGZvciBlYWNoIGNhbGxiYWNr
LCBvciB3aGV0aGVyIHNvbWUgY2FuCj4gPiBiZSBzaGFyZWQuCj4KPiBJIG5lZWQgdG8gcmVhZCBt
b3JlIG9uIGxvY2tkZXAgYnV0IGl0IGlzIGxlZ2FsIHRvIGhhdmUgbW11IG5vdGlmaWVyCj4gaW52
YWxpZGF0aW9uIHdpdGhpbiBlYWNoIG90aGVyLiBGb3IgaW5zdGFuY2Ugd2hlbiB5b3UgbXVubWFw
IHlvdQo+IG1pZ2h0IHNwbGl0IGEgaHVnZSBwbWQgYW5kIGl0IHdpbGwgdHJpZ2dlciBhIHNlY29u
ZCBpbnZhbGlkYXRlIHJhbmdlCj4gd2hpbGUgdGhlIG11bm1hcCBvbmUgaXMgbm90IGRvbmUgeWV0
LiBXb3VsZCB0aGF0IHRyaWdnZXIgdGhlIGxvY2tkZXAKPiBoZXJlID8KCkRlcGVuZHMgaG93IGl0
J3MgbmVzdGluZy4gSSdtIHdyYXBwaW5nIHRoZSBhbm5vdGF0aW9uIG9ubHkganVzdCBhcm91bmQK
dGhlIGluZGl2aWR1YWwgbW11IG5vdGlmaWVyIGNhbGxiYWNrLCBzbyBpZiB0aGUgbmVzdGluZyBp
cyBqdXN0Ci0gbXVubWFwIHN0YXJ0cwotIGludmFsaWRhdGVfcmFuZ2Vfc3RhcnQgIzEKLSB3ZSBu
b3RpY2VkIHRoYXQgdGhlcmUncyBhIGh1Z2UgcG1kIHdlIG5lZWQgdG8gc3BsaXQKLSBpbnZhbGlk
YXRlX3JhbmdlX3N0YXJ0ICMyCi0gaW52YWxpZGF0ZV9yZWFuZ2VfZW5kICMyCi0gaW52YWxpZGF0
ZV9yYW5nZV9lbmQgIzEKLSBtdW5tYXAgaXMgZG9uZQoKQnV0IGlmIG90b2ggaXQncyBvayB0byB0
cmlnZ2VyIHRoZSAybmQgaW52YWxpZGF0ZSByYW5nZSBmcm9tIHdpdGhpbiBhbgptbXVfbm90aWZp
ZXItPmludmFsaWRhdGVfcmFuZ2Vfc3RhcnQgY2FsbGJhY2ssIHRoZW4gbG9ja2RlcCB3aWxsIGJl
CnBpc3NlZCBhYm91dCB0aGF0LgoKPiBXb3JzdCBjYXNlIGkgY2FuIHRoaW5rIG9mIGlzIDIgaW52
YWxpZGF0ZV9yYW5nZV9zdGFydCBjaGFpbiBvbmUgYWZ0ZXIKPiB0aGUgb3RoZXIuIEkgZG9uJ3Qg
dGhpbmsgeW91IGNhbiB0cmlnZ2VycyBhIDMgbGV2ZWxzIG5lc3RpbmcgYnV0IG1heWJlLgoKTG9j
a2RlcCBoYXMgc3BlY2lhbCBuZXN0aW5nIGFubm90YXRpb25zLiBJIHRoaW5rIGl0J2QgYmUgbW9y
ZSBhbiBpc3N1ZQpvZiBnZXR0aW5nIHRob3NlIGZ1bm5lbGVkIHRocm91Z2ggdGhlIGVudGlyZSBj
YWxsIGNoYWluLCBhc3N1bWluZyB3ZQpyZWFsbHkgbmVlZCB0aGF0LgotRGFuaWVsCi0tIApEYW5p
ZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgorNDEgKDApIDc5
IDM2NSA1NyA0OCAtIGh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
