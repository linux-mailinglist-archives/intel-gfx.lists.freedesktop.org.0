Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC99963F9
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 17:18:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B95676E820;
	Tue, 20 Aug 2019 15:18:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05F0C6E429
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 15:18:15 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id h8so6746261edv.7
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 08:18:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=WWDlGa28vuh6oyYZfImriVv5lKQQ+IIy5I7j/w5T4Gg=;
 b=J/cSTc5UfX3QTjafHF8/bVSJuUvvvsPqBSdXKNtnB32tOpyY2rKUQWDfMScJVCI/cq
 mu/54h3FUSuuClG/memRVY5bDMgZ0qXU8I7fcA3mdrJKHfvH+8ttYUkqlOZtSBDMvaHJ
 hZbBLh2jdoX16qLZjuyl8OkS3y2DREFExcRvb/niBZpIiINqJ9kaKy4kr+iCmYI4t4gj
 YAI03cDzr9zgmJut2mK31/XkUXQplLzlQGJqpQAvFWFck0hd9qjEQCmNPnDhuqQ2mTK2
 UVaFOLe3dlUU0dAXniw9R2XUE/xgRkS0033l7rwF4zg3Yi2BO/vznM682K4HmvbwqHwl
 k9rw==
X-Gm-Message-State: APjAAAWQKpatEmlGE8YKk5k0Y97LHSpBXLn8CZMFyqJ+QU9oxQ0jR2+l
 qiNc/8tMw8DjfaC3dQtrr7YVww==
X-Google-Smtp-Source: APXvYqwfJ8KGQhdIP9dJFoc5GtYy4qaMCSLIJx0+QTRiFkwBVEZaoyD3Z4vkA0GYiSFo+zVsSSDxmA==
X-Received: by 2002:a17:906:cc81:: with SMTP id
 oq1mr26923934ejb.124.1566314293557; 
 Tue, 20 Aug 2019 08:18:13 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id oa21sm2669585ejb.60.2019.08.20.08.18.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 08:18:12 -0700 (PDT)
Date: Tue, 20 Aug 2019 17:18:10 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <20190820151810.GG11147@phenom.ffwll.local>
Mail-Followup-To: Jason Gunthorpe <jgg@ziepe.ca>,
 LKML <linux-kernel@vger.kernel.org>, Linux MM <linux-mm@kvack.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Michal Hocko <mhocko@suse.com>,
 David Rientjes <rientjes@google.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 Daniel Vetter <daniel.vetter@intel.com>
References: <20190820081902.24815-1-daniel.vetter@ffwll.ch>
 <20190820081902.24815-5-daniel.vetter@ffwll.ch>
 <20190820133418.GG29246@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190820133418.GG29246@ziepe.ca>
X-Operating-System: Linux phenom 5.2.0-2-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=WWDlGa28vuh6oyYZfImriVv5lKQQ+IIy5I7j/w5T4Gg=;
 b=aYdoPW4Mvo6YtazOhtnc4ypyhm+qnjOhOXk3ZP2Z58IiJkGhlIoOoy4vFST6kEbhnd
 V1wp+g3K8u0R1/NnJLA6jmPSQTsJFvmcgGqg9sx+I4Ybv+Atic0BqKdJYciuXoPn4GTu
 MVJmP+fAaX12IxRXdt8Yz7aCXLWYef4u5coho=
Subject: Re: [Intel-gfx] [PATCH 4/4] mm,
 notifier: Catch sleeping/blocking for !blockable
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
Cc: Michal Hocko <mhocko@suse.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Linux MM <linux-mm@kvack.org>,
 =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 David Rientjes <rientjes@google.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBBdWcgMjAsIDIwMTkgYXQgMTA6MzQ6MThBTSAtMDMwMCwgSmFzb24gR3VudGhvcnBl
IHdyb3RlOgo+IE9uIFR1ZSwgQXVnIDIwLCAyMDE5IGF0IDEwOjE5OjAyQU0gKzAyMDAsIERhbmll
bCBWZXR0ZXIgd3JvdGU6Cj4gPiBXZSBuZWVkIHRvIG1ha2Ugc3VyZSBpbXBsZW1lbnRhdGlvbnMg
ZG9uJ3QgY2hlYXQgYW5kIGRvbid0IGhhdmUgYQo+ID4gcG9zc2libGUgc2NoZWR1bGUvYmxvY2tp
bmcgcG9pbnQgZGVlcGx5IGJ1cnJpZWQgd2hlcmUgcmV2aWV3IGNhbid0Cj4gPiBjYXRjaCBpdC4K
PiA+IAo+ID4gSSdtIG5vdCBzdXJlIHdoZXRoZXIgdGhpcyBpcyB0aGUgYmVzdCB3YXkgdG8gbWFr
ZSBzdXJlIGFsbCB0aGUKPiA+IG1pZ2h0X3NsZWVwKCkgY2FsbHNpdGVzIHRyaWdnZXIsIGFuZCBp
dCdzIGEgYml0IHVnbHkgaW4gdGhlIGNvZGUgZmxvdy4KPiA+IEJ1dCBpdCBnZXRzIHRoZSBqb2Ig
ZG9uZS4KPiA+IAo+ID4gSW5zcGlyZWQgYnkgYW4gaTkxNSBwYXRjaCBzZXJpZXMgd2hpY2ggZGlk
IGV4YWN0bHkgdGhhdCwgYmVjYXVzZSB0aGUKPiA+IHJ1bGVzIGhhdmVuJ3QgYmVlbiBlbnRpcmVs
eSBjbGVhciB0byB1cy4KPiA+IAo+ID4gdjI6IFVzZSB0aGUgc2hpbnkgbmV3IG5vbl9ibG9ja19z
dGFydC9lbmQgYW5ub3RhdGlvbnMgaW5zdGVhZCBvZgo+ID4gYWJ1c2luZyBwcmVlbXB0X2Rpc2Fi
bGUvZW5hYmxlLgo+ID4gCj4gPiB2MzogUmViYXNlIG9uIHRvcCBvZiBHbGlzc2UncyBhcmcgcmV3
b3JrLgo+ID4gCj4gPiB2NDogUmViYXNlIG9uIHRvcCBvZiBtb3JlIEdsaXNzZSByZXdvcmsuCj4g
PiAKPiA+IENjOiBKYXNvbiBHdW50aG9ycGUgPGpnZ0B6aWVwZS5jYT4KPiA+IENjOiBBbmRyZXcg
TW9ydG9uIDxha3BtQGxpbnV4LWZvdW5kYXRpb24ub3JnPgo+ID4gQ2M6IE1pY2hhbCBIb2NrbyA8
bWhvY2tvQHN1c2UuY29tPgo+ID4gQ2M6IERhdmlkIFJpZW50amVzIDxyaWVudGplc0Bnb29nbGUu
Y29tPgo+ID4gQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29t
Pgo+ID4gQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+Cj4gPiBDYzog
IkrDqXLDtG1lIEdsaXNzZSIgPGpnbGlzc2VAcmVkaGF0LmNvbT4KPiA+IENjOiBsaW51eC1tbUBr
dmFjay5vcmcKPiA+IFJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29l
bmlnQGFtZC5jb20+Cj4gPiBSZXZpZXdlZC1ieTogSsOpcsO0bWUgR2xpc3NlIDxqZ2xpc3NlQHJl
ZGhhdC5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVy
QGludGVsLmNvbT4KPiA+ICBtbS9tbXVfbm90aWZpZXIuYyB8IDggKysrKysrKy0KPiA+ICAxIGZp
bGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPiAKPiA+IGRpZmYg
LS1naXQgYS9tbS9tbXVfbm90aWZpZXIuYyBiL21tL21tdV9ub3RpZmllci5jCj4gPiBpbmRleCA1
MzhkM2JiODdmOWIuLjg1NjYzNmQwNmVlMCAxMDA2NDQKPiA+ICsrKyBiL21tL21tdV9ub3RpZmll
ci5jCj4gPiBAQCAtMTgxLDcgKzE4MSwxMyBAQCBpbnQgX19tbXVfbm90aWZpZXJfaW52YWxpZGF0
ZV9yYW5nZV9zdGFydChzdHJ1Y3QgbW11X25vdGlmaWVyX3JhbmdlICpyYW5nZSkKPiA+ICAJaWQg
PSBzcmN1X3JlYWRfbG9jaygmc3JjdSk7Cj4gPiAgCWhsaXN0X2Zvcl9lYWNoX2VudHJ5X3JjdSht
biwgJnJhbmdlLT5tbS0+bW11X25vdGlmaWVyX21tLT5saXN0LCBobGlzdCkgewo+ID4gIAkJaWYg
KG1uLT5vcHMtPmludmFsaWRhdGVfcmFuZ2Vfc3RhcnQpIHsKPiA+IC0JCQlpbnQgX3JldCA9IG1u
LT5vcHMtPmludmFsaWRhdGVfcmFuZ2Vfc3RhcnQobW4sIHJhbmdlKTsKPiA+ICsJCQlpbnQgX3Jl
dDsKPiA+ICsKPiA+ICsJCQlpZiAoIW1tdV9ub3RpZmllcl9yYW5nZV9ibG9ja2FibGUocmFuZ2Up
KQo+ID4gKwkJCQlub25fYmxvY2tfc3RhcnQoKTsKPiA+ICsJCQlfcmV0ID0gbW4tPm9wcy0+aW52
YWxpZGF0ZV9yYW5nZV9zdGFydChtbiwgcmFuZ2UpOwo+ID4gKwkJCWlmICghbW11X25vdGlmaWVy
X3JhbmdlX2Jsb2NrYWJsZShyYW5nZSkpCj4gPiArCQkJCW5vbl9ibG9ja19lbmQoKTsKPiAKPiBJ
ZiBzb21lb25lIEFja3MgYWxsIHRoZSBzY2hlZCBjaGFuZ2VzIHRoZW4gSSBjYW4gcGljayB0aGlz
IGZvcgo+IGhtbS5naXQsIGJ1dCBJIHN0aWxsIHRoaW5rIHRoZSBleGlzdGluZyBwcmUtZW1wdGlv
biBkZWJ1Z2dpbmcgaXMgZmluZQo+IGZvciB0aGlzIHVzZSBjYXNlLgoKT2ssIEknbGwgcGluZyBQ
ZXRlciBaLiBmb3IgYW4gYWNrLCBpaXJjIGhlIHdhcyBpbnZvbHZlZC4KCj4gQWxzbywgc2FtZSBj
b21tZW50IGFzIGZvciB0aGUgbG9ja2RlcCBtYXAsIHRoaXMgbmVlZHMgdG8gYXBwbHkgdG8gdGhl
Cj4gbm9uLWJsb2NraW5nIHJhbmdlX2VuZCBhbHNvLgoKSG0sIEkgdGhvdWdodCB0aGUgcGFnZSB0
YWJsZSBsb2NrcyB3ZSdyZSBob2xkaW5nIHRoZXJlIGFscmVhZHkgcHJldmVudCBhbnkKc2xlZXBp
bmcsIHNvIHdvdWxkIGJlIHJlZHVuZGFudD8gQnV0IHJlYWRpbmcgdGhyb3VnaCBjb2RlIEkgdGhp
bmsgdGhhdCdzCm5vdCBndWFyYW50ZWVkLCBzbyB5ZWFoIG1ha2VzIHNlbnNlIHRvIGFkZCBpdCBm
b3IgaW52YWxpZGF0ZV9yYW5nZV9lbmQKdG9vLiBJJ2xsIHJlc3BpbiBvbmNlIEkgaGF2ZSB0aGUg
YWNrL25hY2sgZnJvbSBzY2hlZHVsZXIgcGVvcGxlLgoKPiBBbnlob3csIHNpbmNlIHRoaXMgc2Vy
aWVzIGhhcyBjb25mbGljdHMgd2l0aCBobW0uZ2l0IGl0IHdvdWxkIGJlIGJlc3QKPiB0byBmbG93
IHRocm91Z2ggdGhlIHdob2xlIHRoaW5nIHRocm91Z2ggdGhhdCB0cmVlLiBJZiB0aGVyZSBhcmUg
bm8KPiByZW1hcmtzIG9uIHRoZSBmaXJzdCB0d28gcGF0Y2hlcyBJJ2xsIGdyYWIgdGhlbSBpbiBh
IGZldyBkYXlzLgoKVGhhbmtzLCBEYW5pZWwKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5n
aW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
