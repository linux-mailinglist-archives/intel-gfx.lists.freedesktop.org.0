Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B37F201AF0
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jun 2020 21:11:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16EAA6E4D4;
	Fri, 19 Jun 2020 19:11:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61B4B6E430;
 Fri, 19 Jun 2020 19:11:25 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id y20so10062122wmi.2;
 Fri, 19 Jun 2020 12:11:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=chbWz7xzFy579TbWBa7IgoDaVrcNNu3e+ZV8C+3+5ts=;
 b=olNdwx7EKNULbKgME9rHSKmUDJKGownFmH7K7UdqCiyAe31tms05xsgDMDHl0NOZyn
 e4JT2rb2s3q5lfqM11BP72moDoCJO7fo8XhUHqRhLmM9Rkjt/Mcz6AzymyLaafuA8Ulb
 XTVeNEMS1qKMS0ZFjOH4/+4FZ+XMgy0Z+itG4tjjFKBv1tiJ5h7bNhFkbXDaSQ/Fpz4X
 ea1xDim6+696Be1q0Zr3RvYmOvlbnd3iJrBAwzkYAU7fiPUm1Tydf4L5z5X/RqFkIs6D
 rXFOo0qB32FQo9vj/cdysyW33DCxg/zYBiOMh8UCXO3mP8EhhV49/E8yMaB/+LvgfTFf
 Q3rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=chbWz7xzFy579TbWBa7IgoDaVrcNNu3e+ZV8C+3+5ts=;
 b=U+9zevBiTWKbG7VPPzBFjrAsiJZcyrMcAMNfwDNKSXfCcHErqSbGmZlkLoW9UjYfQI
 D3sNMRonLFCMIJhh5okvaRPu0tCNbTwcPSLHE4vZiB/ES3L1E4Ji4EEyUzZvwN7ZSElw
 9PTemgikYaaw3sql7Hel3ij+yGubxUx7+/KCUY9TPSDbXHyWG2vDh5wJPCA2+zjgLOx0
 wkDHvDyswOq427N3sf2QLafhNgI9OjKlfQpj76/3aKEMK2hu6GuGzx2ZqQioouJ5Jf/w
 dGc0LV9zOZimVbSiOa6MtfZAF7FKjoHNl3cxjxq/gwoP+1IBTEmjIXpMW+zVm6+ErIwy
 u8Uw==
X-Gm-Message-State: AOAM530kGCDGRjiGQZjlf1v6t+PuT18c0MJO5s8ksSBYa3TkHuQ4B1+Q
 w8d5CdNiVLyY4cRgSTWGpIeytYqcHUR+0SvYKuw=
X-Google-Smtp-Source: ABdhPJwcHFy0tih4Jg9lH/i7Ldu0yNdrmwrIvxAKTo0TP4xm3PszQ+8aXnDybDwn0lmkl3Yy4KGqnVo3R2CnXN9sXgU=
X-Received: by 2002:a7b:cd96:: with SMTP id y22mr5280023wmj.56.1592593883868; 
 Fri, 19 Jun 2020 12:11:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAKMK7uE7DKUo9Z+yCpY+mW5gmKet8ugbF3yZNyHGqsJ=e-g_hA@mail.gmail.com>
 <20200617152835.GF6578@ziepe.ca> <20200618150051.GS20149@phenom.ffwll.local>
 <20200618172338.GM6578@ziepe.ca>
 <CAKMK7uEbqTu4q-amkLXyd1i8KNtLaoO2ZFoGqYiG6D0m0FKpOg@mail.gmail.com>
 <20200619113934.GN6578@ziepe.ca>
 <CAKMK7uE-kWA==Cko5uenMrcnopEjq42HxoDTDywzBAbHqsN13g@mail.gmail.com>
 <20200619151551.GP6578@ziepe.ca>
 <CAKMK7uEvkshAM6KUYZu8_OCpF4+1Y_SM7cQ9nJWpagfke8s8LA@mail.gmail.com>
 <20200619172308.GQ6578@ziepe.ca> <20200619180935.GA10009@redhat.com>
In-Reply-To: <20200619180935.GA10009@redhat.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Fri, 19 Jun 2020 15:11:12 -0400
Message-ID: <CADnq5_Pw_85Kzh1of=MbDi4g9POeF3jO4AJ7p2FjY5XZW0=vsQ@mail.gmail.com>
To: Jerome Glisse <jglisse@redhat.com>
Subject: Re: [Intel-gfx] [Linaro-mm-sig] [PATCH 04/18] dma-fence: prime
 lockdep annotations
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
Cc: linux-rdma <linux-rdma@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, Thomas Hellstrom <thomas.hellstrom@intel.com>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdW4gMTksIDIwMjAgYXQgMjowOSBQTSBKZXJvbWUgR2xpc3NlIDxqZ2xpc3NlQHJl
ZGhhdC5jb20+IHdyb3RlOgo+Cj4gT24gRnJpLCBKdW4gMTksIDIwMjAgYXQgMDI6MjM6MDhQTSAt
MDMwMCwgSmFzb24gR3VudGhvcnBlIHdyb3RlOgo+ID4gT24gRnJpLCBKdW4gMTksIDIwMjAgYXQg
MDY6MTk6NDFQTSArMDIwMCwgRGFuaWVsIFZldHRlciB3cm90ZToKPiA+Cj4gPiA+IFRoZSBtYWRu
ZXNzIGlzIG9ubHkgdGhhdCBkZXZpY2UgQidzIG1tdSBub3RpZmllciBtaWdodCBuZWVkIHRvIHdh
aXQKPiA+ID4gZm9yIGZlbmNlX0Igc28gdGhhdCB0aGUgZG1hIG9wZXJhdGlvbiBmaW5pc2hlcy4g
V2hpY2ggaW4gdHVybiBoYXMgdG8KPiA+ID4gd2FpdCBmb3IgZGV2aWNlIEEgdG8gZmluaXNoIGZp
cnN0Lgo+ID4KPiA+IFNvLCBpdCBzb3VuZCwgZnVuZGFtZW50YWxseSB5b3UndmUgZ290IHRoaXMg
Z3JhcGggb2Ygb3BlcmF0aW9ucyBhY3Jvc3MKPiA+IGFuIHVua25vd24gc2V0IG9mIGRyaXZlcnMg
YW5kIHRoZSBrZXJuZWwgY2Fubm90IGluc2VydCBpdHNlbGYgaW4KPiA+IGRtYV9mZW5jZSBoYW5k
IG9mZnMgdG8gcmUtdmFsaWRhdGUgYW55IG9mIHRoZSBidWZmZXJzIGludm9sdmVkPwo+ID4gQnVm
ZmVycyB3aGljaCBieSBkZWZpbml0aW9uIGNhbm5vdCBiZSB0b3VjaGVkIGJ5IHRoZSBoYXJkd2Fy
ZSB5ZXQuCj4gPgo+ID4gVGhhdCByZWFsbHkgaXMgYSBwcmV0dHkgaG9ycmlibGUgcGxhY2UgdG8g
ZW5kIHVwLi4KPiA+Cj4gPiBQaW5uaW5nIHJlYWxseSBpcyByaWdodCBhbnN3ZXIgZm9yIHRoaXMg
a2luZCBvZiB3b3JrIGZsb3cuIEkgdGhpbmsKPiA+IGNvbnZlcnRpbmcgcGlubmluZyB0byBub3Rp
ZmVycyBzaG91bGQgbm90IGJlIGRvbmUgdW5sZXNzIG5vdGlmaWVyCj4gPiBpbnZhbGlkYXRpb24g
aXMgcmVsYXRpdmVseSBib3VuZGVkLgo+ID4KPiA+IEkga25vdyBwZW9wbGUgbGlrZSBub3RpZmll
cnMgYmVjYXVzZSB0aGV5IGdpdmUgYSBiaXQgbmljZXIgcGVyZm9ybWFuY2UKPiA+IGluIHNvbWUg
aGFwcHkgY2FzZXMsIGJ1dCB0aGlzIGNyaXBwbGVzIGFsbCB0aGUgYmFkIGNhc2VzLi4KPiA+Cj4g
PiBJZiBwaW5uaW5nIGRvZXNuJ3Qgd29yayBmb3Igc29tZSByZWFzb24gbWF5YmUgd2Ugc2hvdWxk
IGFkZHJlc3MgdGhhdD8KPgo+IE5vdGUgdGhhdCB0aGUgZG1hIGZlbmNlIGlzIG9ubHkgdHJ1ZSBm
b3IgdXNlciBwdHIgYnVmZmVyIHdoaWNoIHByZWRhdGUKPiBhbnkgSE1NIHdvcmsgYW5kIHRodXMg
d2VyZSB1c2luZyBtbXUgbm90aWZpZXIgYWxyZWFkeS4gWW91IG5lZWQgdGhlCj4gbW11IG5vdGlm
aWVyIHRoZXJlIGJlY2F1c2Ugb2YgZm9yayBhbmQgb3RoZXIgY29ybmVyIGNhc2VzLgo+Cj4gRm9y
IG5vdXZlYXUgdGhlIG5vdGlmaWVyIGRvIG5vdCBuZWVkIHRvIHdhaXQgZm9yIGFueXRoaW5nIGl0
IGNhbiB1cGRhdGUKPiB0aGUgR1BVIHBhZ2UgdGFibGUgcmlnaHQgYXdheS4gTW9kdWxvIG5lZWRp
bmcgdG8gd3JpdGUgdG8gR1BVIG1lbW9yeQo+IHVzaW5nIGRtYSBlbmdpbmUgaWYgdGhlIEdQVSBw
YWdlIHRhYmxlIGlzIGluIEdQVSBtZW1vcnkgdGhhdCBpcyBub3QKPiBhY2Nlc3NpYmxlIGZyb20g
dGhlIENQVSBidXQgdGhhdCdzIG5ldmVyIHRoZSBjYXNlIGZvciBub3V2ZWF1IHNvIGZhcgo+IChi
dXQgaSBleHBlY3QgaXQgd2lsbCBiZSBhdCBvbmUgcG9pbnQpLgo+Cj4KPiBTbyBpIHNlZSB0aGlz
IGFzIDIgZGlmZmVyZW50IGNhc2VzLCB0aGUgdXNlciBwdHIgY2FzZSwgd2hpY2ggZG9lcyBwaW4K
PiBwYWdlcyBieSB0aGUgd2F5LCB3aGVyZSB0aGluZ3MgYXJlIHN5bmNocm9ub3VzLiBWZXJzdXMg
dGhlIEhNTSBjYXNlcwo+IHdoZXJlIGV2ZXJ5dGhpbmcgaXMgYXN5bmNocm9ub3VzLgo+Cj4KPiBJ
IHByb2JhYmx5IG5lZWQgdG8gd2FybiBBTUQgZm9sa3MgYWdhaW4gdGhhdCB1c2luZyBITU0gbWVh
bnMgdGhhdCB5b3UKPiBtdXN0IGJlIGFibGUgdG8gdXBkYXRlIHRoZSBHUFUgcGFnZSB0YWJsZSBh
c3luY2hyb25vdXNseSB3aXRob3V0Cj4gZmVuY2Ugd2FpdC4gVGhlIGlzc3VlIGZvciBBTUQgaXMg
dGhhdCB0aGV5IGFscmVhZHkgdXBkYXRlIHRoZWlyIEdQVQo+IHBhZ2UgdGFibGUgdXNpbmcgRE1B
IGVuZ2luZS4gSSBiZWxpZXZlIHRoaXMgaXMgc3RpbGwgZG9hYmxlIGlmIHRoZXkKPiB1c2UgYSBr
ZXJuZWwgb25seSBETUEgZW5naW5lIGNvbnRleHQsIHdoZXJlIG9ubHkga2VybmVsIGNhbiBxdWV1
ZSB1cAo+IGpvYnMgc28gdGhhdCB5b3UgZG8gbm90IG5lZWQgdG8gd2FpdCBmb3IgdW5yZWxhdGVk
IHRoaW5ncyBhbmQgeW91IGNhbgo+IHByaW9yaXRpemUgR1BVIHBhZ2UgdGFibGUgdXBkYXRlIHdo
aWNoIHNob3VsZCB0cmFuc2xhdGUgaW4gZmFzdCBHUFUKPiBwYWdlIHRhYmxlIHVwZGF0ZSB3aXRo
b3V0IERNQSBmZW5jZS4KCkFsbCBkZXZpY2VzIHdoaWNoIHN1cHBvcnQgcmVjb3ZlcmFibGUgcGFn
ZSBmYXVsdHMgYWxzbyBoYXZlIGEKZGVkaWNhdGVkIHBhZ2luZyBlbmdpbmUgZm9yIHRoZSBrZXJu
ZWwgZHJpdmVyIHdoaWNoIHRoZSBkcml2ZXIgYWxyZWFkeQptYWtlcyB1c2Ugb2YuICBXZSBjYW4g
YWxzbyB1cGRhdGUgdGhlIEdQVSBwYWdlIHRhYmxlcyB3aXRoIHRoZSBDUFUuCgpBbGV4Cgo+Cj4K
PiA+ID4gRnVsbCBkaXNjbG9zdXJlOiBXZSBhcmUgYXdhcmUgdGhhdCB3ZSd2ZSBkZXNpZ25lZCBv
dXJzZWx2ZXMgaW50byBhbgo+ID4gPiBpbXByZXNzaXZlIGNvcm5lciBoZXJlLCBhbmQgdGhlcmUn
cyBsb3RzIG9mIHRhbGtzIGdvaW5nIG9uIGFib3V0Cj4gPiA+IHVudGFuZ2xpbmcgdGhlIGRtYSBz
eW5jaHJvbml6YXRpb24gZnJvbSB0aGUgbWVtb3J5IG1hbmFnZW1lbnQKPiA+ID4gY29tcGxldGVs
eS4gQnV0Cj4gPgo+ID4gSSB0aGluayB0aGUgZG9jdW1lbnRpbmcgaXMgcmVhbGx5IGltcG9ydGFu
dDogb25seSBHUFUgc2hvdWxkIGJlIHVzaW5nCj4gPiB0aGlzIHN0dWZmIGFuZCBkcml2aW5nIG5v
dGlmaWVycyB0aGlzIHdheS4gQ29tcGxldGUgTk8gZm9yIGFueQo+ID4gdG90YWxseS1ub3QtYS1H
UFUgdGhpbmdzIGluIGRyaXZlcnMvYWNjZWwgZm9yIHN1cmUuCj4KPiBZZXMgZm9yIHVzZXIgdGhh
dCBleHBlY3QgSE1NIHRoZXkgbmVlZCB0byBiZSBhc3luY2hyb25vdXMuIEJ1dCBpdCBpcwo+IGhh
cmQgdG8gcmV2ZXJ0IHVzZXIgcHRyIGhhcyBpdCB3YXMgZG9uZSBhIGxvbmcgdGltZSBhZ28uCj4K
PiBDaGVlcnMsCj4gSsOpcsO0bWUKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gYW1kLWdmeCBtYWlsaW5nIGxpc3QKPiBhbWQtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vYW1kLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
