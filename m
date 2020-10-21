Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB4B29541E
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 23:25:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D58246F51A;
	Wed, 21 Oct 2020 21:25:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8DDA6F51A
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 21:25:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1603315546;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=UwGfz0tY9AjE0sLb7Dt67Mk9FtxXlJcalXgozQ5UAR0=;
 b=YDPUWnK3/q2dDC6ZQqui4XZS5uMetGod29Pzi7nEDu8yrH5trN+OjbTYEVxcpmZ/04UT02
 FL8dxbJaQYQiGGRxSk7zz0lVMeFyEO1DwXvWcyH26BZ7GZYdivmxl/Adlmjn0GHig61FQm
 bcx/NhvSlgE/1DfoXUon/X00B4T0BOE=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-390-qiUNeueuMAi-CFFkMDFTwA-1; Wed, 21 Oct 2020 17:25:42 -0400
X-MC-Unique: qiUNeueuMAi-CFFkMDFTwA-1
Received: by mail-qk1-f199.google.com with SMTP id x5so2636719qkn.2
 for <Intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 14:25:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
 :in-reply-to:references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=UwGfz0tY9AjE0sLb7Dt67Mk9FtxXlJcalXgozQ5UAR0=;
 b=C92maTWp/Ruu+YWVXT1FFJjEfi2B9Nhm544lfUvAGMkWXJ80uBNALOGqx4MoBIWN0V
 8chJDqcEtwzEre3iqi8Y+zkEwmKDlqoMN0ZZPgWyt33oJlsU80q3ZBPvOKnqsx8G+jDK
 oimkx/uydGh3o/OeoqiaBsp7O6gwb/q1cF4WjlYK4zk4tUXUCSkW6jT+YFgjz/VPgv+Y
 7n9++r8wMY+rQcuzfnNKax3vYhRNJpA0UoSDnwRNq0WIxrOrYZz26Rn5q42o5wdEZWiL
 K97ybcuBNuSU0/NK/p/EhgmD26BSWZqMuIropJW2iH7Iib7F/YdRoJkpwouiq7UXynrh
 yHaw==
X-Gm-Message-State: AOAM532v7dwzPRv/drZd0y8gVuK/mFTuP5H+OFGOv62rhWptznFwbaMC
 OAEL4RsOo8iO7pCNSeT7jSOztyDYVKXXO+kTSzfM5Z/sIUStyxS5X208gUsRryQItqsOyUfideb
 cZLLIe/0LP0i6XUviJDvT+x1V0ie2
X-Received: by 2002:ac8:5793:: with SMTP id v19mr4686260qta.83.1603315542421; 
 Wed, 21 Oct 2020 14:25:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzAe0N43BBM9ytRsqTFfEkQ1zj8woCctHbHgDVfTkdzAZgY0FJnzu5Y94FO3GKYUyfkhC99Gg==
X-Received: by 2002:ac8:5793:: with SMTP id v19mr4686234qta.83.1603315542020; 
 Wed, 21 Oct 2020 14:25:42 -0700 (PDT)
Received: from Whitewolf.lyude.net
 (pool-108-49-102-102.bstnma.fios.verizon.net. [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id a128sm2146960qkc.92.2020.10.21.14.25.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Oct 2020 14:25:41 -0700 (PDT)
Message-ID: <6f9c166c7b115672e1d427748d7e4d4dfd35b256.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Ville =?ISO-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, 
 "Souza, Jose" <jose.souza@intel.com>
Date: Wed, 21 Oct 2020 17:25:40 -0400
In-Reply-To: <20201021132639.GF6112@intel.com>
References: <20201020074555.24315-1-khaled.almahallawy@intel.com>
 <20201020124108.GX6112@intel.com>
 <ded1023ff55d62717e6c7a7055b8e7f651e19c5b.camel@intel.com>
 <20201021132639.GF6112@intel.com>
Organization: Red Hat
User-Agent: Evolution 3.36.5 (3.36.5-1.fc32)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Set
 drm_crtc_state.active=false for all added disconnected CRTCs sharing MST
 stream.
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
Cc: "daniel.vetter@ffwll.ch" <daniel.vetter@ffwll.ch>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>,
 "seanpaul@chromium.org" <seanpaul@chromium.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIwLTEwLTIxIGF0IDE2OjI2ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
Cj4gT24gVHVlLCBPY3QgMjAsIDIwMjAgYXQgMTE6MjU6NTNQTSArMDAwMCwgU291emEsIEpvc2Ug
d3JvdGU6Cj4gPiBPbiBUdWUsIDIwMjAtMTAtMjAgYXQgMTU6NDEgKzAzMDAsIFZpbGxlIFN5cmrD
g8aSw4LCpGzDg8aSw4LCpCB3cm90ZToKPiA+ID4gT24gVHVlLCBPY3QgMjAsIDIwMjAgYXQgMTI6
NDU6NTVBTSAtMDcwMCwgS2hhbGVkIEFsbWFoYWxsYXd5IHdyb3RlOgo+ID4gPiA+IFRoaXMgcGF0
Y2ggYXZvaWRzIGZhaWxpbmcgYXRvbWljIGNvbW1pdHMgc2VudCBieSB1c2VyIHNwYWNlIGJ5IG1h
a2luZwo+ID4gPiA+IHN1cmUgQ1JUQy9Db25uZWN0b3IgYWRkZWQgdG8gZHJtX2F0b21pY19zdGF0
ZSBieSB0aGUgZHJpdmVyIGFyZSBpbiB2YWxpZAo+ID4gPiA+IHN0YXRlLgo+ID4gPiA+IAo+ID4g
PiA+IFdoZW4gZGlzY29ubmVjdGluZyBNU1QgaHViIHdpdGggdHdvIG9yIG1vcmUgY29ubmVjdGVk
IGRpc3BsYXlzLiBUaGUgdXNlcgo+ID4gPiA+IHNwYWNlIHNlbmRzIElPQ1RMIGZvciBlYWNoIE1T
VCBwaXBlIHRvIGRpc2FibGUuCj4gPiA+ID4gZHJtX2F0b21pY19zdGF0ZSBvYmplY3Qgc2VudCBm
cm9tIHVzZXIgc3BhY2UgY29udGFpbnMgb25seSB0aGUgc3RhdGUgb2YKPiA+ID4gPiB0aGUgY3J0
Yy9waXBlIGludGVuZGVkIHRvIGRpc2FibGUuCj4gPiA+ID4gSW4gVEdMLCBpbnRlbF9kcF9tc3Rf
YXRvbWljX21hc3Rlcl90cmFuc19jaGVjayB3aWxsIGFkZCBhbGwgb3RoZXIgQ1JUQwo+ID4gPiA+
IGFuZCBjb25uZWN0b3JzIHRoYXQgc2hhcmUgdGhlIE1TVCBzdHJlYW0gdG8gZHJtX2F0b21pY19z
dGF0ZToKPiA+ID4gPiAKPiA+ID4gPiBkcm1fYXRvbWljX2NvbW1pdAo+ID4gPiA+IMOD4oCaw4Ig
w4PigJrDgiDDg+KAmsOCIGRybV9hdG9taWNfaGVscGVyX2NoZWNrX21vZGVzZXQKPiA+ID4gPiDD
g+KAmsOCIMOD4oCaw4Igw4PigJrDgiDDg+KAmsOCIMOD4oCaw4Igw4PigJrDgiDDg+KAmsOCIHVw
ZGF0ZV9jb25uZWN0b3Jfcm91dGluZwo+ID4gPiA+IMOD4oCaw4Igw4PigJrDgiDDg+KAmsOCIMOD
4oCaw4Igw4PigJrDgiDDg+KAmsOCIMOD4oCaw4IgaW50ZWxfZHBfbXN0X2F0b21pY19jaGVjayA9
IGZ1bmNzLQo+ID4gPiA+ID5hdG9taWNfY2hlY2soY29ubmVjdG9yLCBzdGF0ZSk7Cj4gPiA+ID4g
w4PigJrDgiDDg+KAmsOCIMOD4oCaw4Igw4PigJrDgiDDg+KAmsOCIMOD4oCaw4Igw4PigJrDgiAJ
ICAgaW50ZWxfZHBfbXN0X2F0b21pY19tYXN0ZXJfdHJhbnNfY2hlYwo+ID4gPiA+IGsKPiA+ID4g
PiAJCWludGVsX2F0b21pY19nZXRfZGlnaXRhbF9jb25uZWN0b3Jfc3RhdGUKPiA+ID4gPiAJCQlk
cm1fYXRvbWljX2dldF9jb25uZWN0b3Jfc3RhdGUgICA8LS0gQWRkIGFsbAo+ID4gPiA+IENvbm5l
Y3RvcnMKPiA+ID4gPiAJCQkgICAgZHJtX2F0b21pY19nZXRfY3J0Y19zdGF0ZSA8LS0gQWRkIGFs
bCBDUlRDcwo+ID4gPiA+IMOD4oCaw4Igw4PigJrDgiDDg+KAmsOCIMOD4oCaw4Igw4PigJrDgiDD
g+KAmsOCIMOD4oCaw4IgdXBkYXRlX2Nvbm5lY3Rvcl9yb3V0aW5nIDwtLSBDaGVjayBhZGRlZAo+
ID4gPiA+IENvbm5lY3Rvci9DUlRDcyAtIFdpbGwgZmFpbAo+ID4gPiA+IAo+ID4gPiA+IEhvd2V2
ZXIgdGhlIGFkZGVkIGNydGMvY29ubmVjdG9yIHBhaXIgd2lsbCBiZSBpbiBpbnZhbGlkIHN0YXRl
IChlbmFibGVkCj4gPiA+ID4gc3RhdGUgZm9yIGEgcmVtb3ZlZCBjb25uZWN0b3IpCj4gPiA+ID4g
dHJpZ2dlcmluZyB0aGlzIGNvbmRpdGlvbiBpbgo+ID4gPiA+IGRybV9hdG9taWNfaGVscGVyLmMv
dXBkYXRlX2Nvbm5lY3Rvcl9yb3V0aW5nOgo+ID4gPiA+IAo+ID4gPiA+IAlpZiAoIXN0YXRlLT5k
dXBsaWNhdGVkICYmCj4gPiA+ID4gZHJtX2Nvbm5lY3Rvcl9pc191bnJlZ2lzdGVyZWQoY29ubmVj
dG9yKSAmJgo+ID4gPiA+IAkgICAgY3J0Y19zdGF0ZS0+YWN0aXZlKSB7Cj4gPiA+ID4gCQlEUk1f
REVCVUdfQVRPTUlDKCJbQ09OTkVDVE9SOiVkOiVzXSBpcyBub3QKPiA+ID4gPiByZWdpc3RlcmVk
XG4iLAo+ID4gPiA+IAkJCQkgY29ubmVjdG9yLT5iYXNlLmlkLCBjb25uZWN0b3ItPm5hbWUpOwo+
ID4gPiA+IAkJcmV0dXJuIC1FSU5WQUw7Cj4gPiA+ID4gCX0KPiA+ID4gCj4gPiA+IFllYWgsIEkg
dGhpbmsgdGhhdCAicmVqZWN0IG1vZGVzZXQgb24gdW5yZWdpc3RlcmVkIGNvbm5lY3RvcnMiIGlk
ZWEgaXMKPiA+ID4gYSBiaXQgYnJva2VuIGdpdmVuIGhvdyB0aGUgdWFwaSBoYXMgd29ya2VkIGlu
IHRoZSBwYXN0LiBDYzppbmcgZGFudmV0Cj4gPiA+IGFuZCBseXVkZSB3aG8gSUlSQyB3ZXJlIGlu
dm9sdmVkIHdpdGggdGhhdC4KPiA+ID4gCj4gPiA+IEhtbS4gTWF5YmUgd2UgY291bGQgYWRkIHRo
ZSBvdGhlciBzdHVmZiB0byB0aGUgc3RhdGUgb25seSBhZnRlciB0aGUKPiA+ID4gY29ubmVjdG9y
IC5hdG9taWNfY2hlY2soKSBzdHVmZiBoYXMgYmVlbiBkb25lPyBJIGRvbid0IHF1aXRlIHJlbWVt
YmVyCj4gPiA+IHdoeSB3ZSBkZWNpZGVkIHRvIGRvIGl0IGhlcmUuIEpvc8ODxpLDgsKpIGRvIHlv
dSByZWNhbGwgdGhlIGRldGFpbHM/Cj4gPiAKPiA+IEJlY2F1c2UgdGhlIGNvbm5lY3RvciBjaGVj
ayBmdW5jdGlvbiBydW5zIHR3aWNlIGluCj4gPiBkcm1fYXRvbWljX2hlbHBlcl9jaGVja19tb2Rl
c2V0KCksIGluIHRoZSBmaXJzdCBpdGVyYXRpb24gaXQgd2lsbCBhZGQgYWxsCj4gPiBjb25uZWN0
b3JzIHRoYXQgc2hhcmUgdGhlCj4gPiBzYW1lIE1TVCBzdHJlYW0gdG8gc3RhdGUsIHRoZSBzZWNv
bmQgb25lIHdpbGwgbWFrZSBzdXJlIGFsbCBvdGhlciBjaGVja3MKPiA+IHBhc3NlZCBpbiBhbGwg
Y29ubmVjdG9ycyBvZiB0aGUgTVNUIHN0cmVhbS4KPiA+IAo+ID4gVG8gbWUgbG9va3MgbGlrZSB0
aGUgQ2hyb21lIHVzZXJzcGFjZSBpcyBub3QgZG9pbmcgdGhlIHJpZ2h0IHRoaW5nLCBpdCBpcwo+
ID4gc2VuZGluZyBhc3luY2hyb25vdXMgYXRvbWljIGNvbW1pdHMgd2l0aCBjb25mbGljdGluZyBz
dGF0ZSBiZXR3ZWVuIGVhY2gKPiA+IGNvbW1pdC4KPiA+IElmIGl0IGhhZCBhIHBvb2wgdGhhdCBk
aXNwYXRjaCBvbmUgYXRvbWljIHN0YXRlIGF0IHRpbWUgd2FpdGluZyBmb3IKPiA+IGNvbXBsZXRp
b24gYmVmb3JlIGRpc3BhdGNoIHRoZSBuZXh0IG9uZSBpdCB3b3VsZCBub3QgYmUgYSBpc3N1ZS4K
PiAKPiBZZWFoLCB3aXRoIGF0b21pYyB1c2Vyc3BhY2UgY291bGQgYXZvaWQgdGhpcyBwb3RlbnRp
YWxseS4gVGhvdWdoIGl0Cj4gbWF5IGJlIHJhY3kgZGVwZW5kaW5nIG9uIHdoZXRoZXIgaXQgaGFz
IG5vdGljZWQgYWxsIHRoZSBNU1QgY29ubmVjdG9ycwo+IGRpc2FwcGVhcmluZyB5ZXQgb3Igbm90
LiBFaXRoZXIgd2F5IGl0J3Mgc3RpbGwgYW4gaXNzdWUgZm9yIGxlZ2FjeQo+IHVhcGkuCgpTaWdo
LUkgaGFkIGhvcGVkIHRoYXQgd2Ugd291bGQgaGF2ZSBob29rZWQgdGhpcyB1cCBzdWNoIHRoYXQg
d2UnZCBhdm9pZCB0aGlzIChhcwpJJ3ZlIGFscmVhZHkgaGFkIHRvIGZpeCBzb21lIGlzc3VlcyB0
aGlzIGNhdXNlZCB3aXRoIGxlZ2FjeSBtb2Rlc2V0dGluZykgYnV0IEkKZ3Vlc3Mgbm90LiBIYXZl
IHlvdSBndXlzIGNvbnNpZGVyZWQgdHJ5aW5nIHRvIHVzZSB0aGUgY29ubmVjdG9yIGVwb2NocyB3
aGVuZXZlcgp5b3UgcmVjZWl2ZSBhIGhvdHBsdWcgZXZlbnQgdG8gZGlmZmVyZW50aWF0ZSBiZXR3
ZWVuIHJlbW92ZWQgKCdzdGFsZScpCmNvbm5lY3RvcnMgYW5kIG90aGVyIGNvbm5lY3RvcnM/IHRi
aCwgaWYgeW91IGNhbid0IGZpbmQgYSBjb25uZWN0b3Igd2l0aCB0aGUKc2FtZSBtc3QgcGF0aCBh
bmQgZXBvY2ggeW91IGxhc3QgaGFkIGFzIHlvdXIgc3RhbGUgY29ubmVjdG9yIHRoZW4gaXQncyBz
YWZlIHRvCmp1c3QgYXNzdW1lIGl0J3MgZ29uZS4KCkFsc28gLSBJJ20gdG90YWxseSBvcGVuIHRv
IGJldHRlciBpZGVhcyBmb3IgaGFuZGxpbmcgdGhpcyBvciBtYWtpbmcgaXQgbW9yZQpvYnZpb3Vz
IHdoZW4gYSBjb25uZWN0b3IgaGFzIGJlZW4gcmVtb3ZlZCwgbW9zdCBvZiB0aGUgcmVhc29uIGZv
ciBhZGRpbmcgdGhlc2UKY2hlY2tzIHdhcyB0byB0cnkgb3VyIGJlc3QgKGFzIHRoaXMgaXMgaW1w
b3NzaWJsZSB0byBmdWxseSBndWFyYW50ZWUpIHRvIGF2b2lkCnNpdHVhdGlvbnMgd2hlcmUgYSBo
b3N0IHRyaWVkIHRvIGVuYWJsZSBhbiBNU1QgZGlzcGxheSB0aGF0IG5vIGxvbmdlciBleGlzdGVk
CmFuZCBwdXQgdGhlIGhhcmR3YXJlIGludG8gYSB3ZWlyZCBzdGF0ZS4gQXQgbGVhc3QgaWYgSSBy
ZW1lbWJlciBjb3JyZWN0bHksIGl0J3MKYmVlbiBhIHdoaWxlLgoKPiAKLS0gClNpbmNlcmVseSwK
ICAgICAgTHl1ZGUgUGF1bCAoc2hlL2hlcikKICAgICAgU29mdHdhcmUgRW5naW5lZXIgYXQgUmVk
IEhhdAoKTm90ZTogSSBkZWFsIHdpdGggYSBsb3Qgb2YgZW1haWxzIGFuZCBoYXZlIGEgbG90IG9m
IGJ1Z3Mgb24gbXkgcGxhdGUuIElmIHlvdSd2ZQphc2tlZCBtZSBhIHF1ZXN0aW9uLCBhcmUgd2Fp
dGluZyBmb3IgYSByZXZpZXcvbWVyZ2Ugb24gYSBwYXRjaCwgZXRjLiBhbmQgSQpoYXZlbid0IHJl
c3BvbmRlZCBpbiBhIHdoaWxlLCBwbGVhc2UgZmVlbCBmcmVlIHRvIHNlbmQgbWUgYW5vdGhlciBl
bWFpbCB0byBjaGVjawpvbiBteSBzdGF0dXMuIEkgZG9uJ3QgYml0ZSEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
