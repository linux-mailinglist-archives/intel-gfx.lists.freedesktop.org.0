Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B61D0425D7
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jun 2019 14:33:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B5F0894C9;
	Wed, 12 Jun 2019 12:33:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
 [209.85.208.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88F83894C3
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jun 2019 12:33:08 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id h9so25511672edr.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jun 2019 05:33:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/9+BscyBSG8LtxRtL3bsLVsuCvjxfppgNJUSn3pi0BA=;
 b=M4LMFxPIcm6T83xCvqAlGFMurFUR51DRpyHSt/g5aktSeZaQy2AS9QmTynKQBGrj/k
 tp8vKdddV9JmGUSRtTIedTtEck4KTcKlKQxXiet5MylgUZpCudSnQavRwx54yGyHTJ1n
 IkocmOJBhQGp4iEWyOWCAXXRRfbpxx5NlM3Fu6QHgiK/vUi7iRL99reP1ZURFLgutIqM
 EOi7GP9Nos7Q/d4HhcEETiiTKuyAuC5+VTRZPoxV97kmFSjnKu4ivKPe/FQuPBWJKp2M
 lbC7fKlPphkku8h/k3XlkB5sFScdUlHEKphPDgfvgiJE7whZPKxCHIlPvTMshA65lmxY
 aOaw==
X-Gm-Message-State: APjAAAUvSW4RRG4saRRVE3hJLolqX2ECUF8+rmScB4YZmfh/AqmEQIvZ
 9wqmoln5Phi/01RJWHHwpYTK2w==
X-Google-Smtp-Source: APXvYqwH+EIsTHqwWN3f9HxFMK99PgTbuqj4T1Pw/EUS2brCmPFSeeUdToS6/AutI5NLtTDk9/MaKw==
X-Received: by 2002:a50:b561:: with SMTP id z30mr32633599edd.87.1560342787019; 
 Wed, 12 Jun 2019 05:33:07 -0700 (PDT)
Received: from shalem.localdomain (84-106-84-65.cable.dynamic.v4.ziggo.nl.
 [84.106.84.65])
 by smtp.gmail.com with ESMTPSA id c21sm2784931ejk.79.2019.06.12.05.33.05
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Jun 2019 05:33:06 -0700 (PDT)
To: "dbasehore ." <dbasehore@chromium.org>
References: <20190611040350.90064-1-dbasehore@chromium.org>
 <20190611040350.90064-5-dbasehore@chromium.org> <87zhmoy270.fsf@intel.com>
 <01636500-0be5-acf8-5f93-a57383bf4b20@redhat.com>
 <CAGAzgsoxpsft-vmVOuKSAbLJqR-EZvcceLpMeWkz6ikJEKGJHg@mail.gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <fe774952-6fd5-b4ec-56c9-32fd30546313@redhat.com>
Date: Wed, 12 Jun 2019 14:33:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAGAzgsoxpsft-vmVOuKSAbLJqR-EZvcceLpMeWkz6ikJEKGJHg@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/connector: Split out orientation
 quirk detection
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, Sam Ravnborg <sam@ravnborg.org>,
 David Airlie <airlied@linux.ie>, CK Hu <ck.hu@mediatek.com>,
 devicetree@vger.kernel.org, Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpPbiAxMi0wNi0xOSAwMjoxNiwgZGJhc2Vob3JlIC4gd3JvdGU6Cj4gT24gVHVlLCBKdW4g
MTEsIDIwMTkgYXQgMTo1NCBBTSBIYW5zIGRlIEdvZWRlIDxoZGVnb2VkZUByZWRoYXQuY29tPiB3
cm90ZToKPj4KPj4gSGksCj4+Cj4+IE9uIDExLTA2LTE5IDEwOjA4LCBKYW5pIE5pa3VsYSB3cm90
ZToKPj4+IE9uIE1vbiwgMTAgSnVuIDIwMTksIERlcmVrIEJhc2Vob3JlIDxkYmFzZWhvcmVAY2hy
b21pdW0ub3JnPiB3cm90ZToKPj4+PiBUaGlzIHJlbW92ZXMgdGhlIG9yaWVudGF0aW9uIHF1aXJr
IGRldGVjdGlvbiBmcm9tIHRoZSBjb2RlIHRvIGFkZAo+Pj4+IGFuIG9yaWVudGF0aW9uIHByb3Bl
cnR5IHRvIGEgcGFuZWwuIFRoaXMgaXMgdXNlZCBvbmx5IGZvciBsZWdhY3kgeDg2Cj4+Pj4gc3lz
dGVtcywgeWV0IHdlJ2QgbGlrZSB0byBzdGFydCB1c2luZyB0aGlzIG9uIGRldmljZXRyZWUgc3lz
dGVtcyB3aGVyZQo+Pj4+IHF1aXJrIGRldGVjdGlvbiBsaWtlIHRoaXMgaXMgbm90IG5lZWRlZC4K
Pj4+Cj4+PiBOb3QgbmVlZGVkLCBidXQgbm8gaGFybSBkb25lIGVpdGhlciwgcmlnaHQ/Cj4+Pgo+
Pj4gSSBndWVzcyBJJ2xsIGRlZmVyIGp1ZGdlbWVudCBvbiB0aGlzIHRvIEhhbnMgYW5kIFZpbGxl
IChDYydkKS4KPj4KPj4gSG1tLCBJJ20gbm90IGJpZyBmYW4gb2YgdGhpcyBjaGFuZ2UuIEl0IGFk
ZHMgY29kZSBkdXBsaWNhdGlvbiBhbmQgYXMKPj4gb3RoZXIgbW9kZWxzIHdpdGggdGhlIHNhbWUg
aXNzdWUgdXNpbmcgYSBkaWZmZXJlbnQgZHJpdmVyIG9yIHBhbmVsLXR5cGUKPj4gc2hvdyB1cCB3
ZSB3aWxsIGdldCBtb3JlIGNvZGUgZHVwbGljYXRpb24uCj4+Cj4+IEFsc28gSSdtIG5vdCBjb252
aW5jZWQgdGhhdCBkZXZpY2V0cmVlIGJhc2VkIHBsYXRmb3JtcyB3aWxsIG5vdCBuZWVkCj4+IHRo
aXMuIFRoZSB3aG9sZSBkZXZpY2V0cmVlIGFzIGFuIEFCSSB0aGluZywgd2hpY2ggbWVhbnMgdGhh
dCBhbGwKPj4gZGV2aWNldHJlZSBiaW5kaW5ncyBuZWVkIHRvIGJlIHNldCBpbiBzdG9uZSBiZWZv
cmUgdGhpbmdzIGFyZSBtZXJnZWQKPj4gaW50byB0aGUgbWFpbmxpbmUsIGlzIGRvbmUgc29sZWx5
IHNvIHRoYXQgd2UgY2FuIGdldCB2ZW5kb3JzIHRvIHNoaXAKPj4gaGFyZHdhcmUgd2l0aCB0aGUg
ZHRiIGZpbGVzIGluY2x1ZGVkIGluIHRoZSBmaXJtd2FyZS4KPiAKPiBXZSd2ZSBwb3N0ZWQgZml4
ZXMgdG8gdGhlIGRldmljZXRyZWUgd2VsbCBhZnRlciB0aGUgaW5pdGlhbCBtZXJnZSBpbnRvCj4g
bWFpbmxpbmUgYmVmb3JlLCBzbyBJIGRvbid0IHNlZSB3aGF0IHlvdSBtZWFuIGFib3V0IHRoZSBi
aW5kaW5ncyBiZWluZwo+IHNldCBpbiBzdG9uZS4KClRoYXQgd2FzIGp1c3QgbWUgcmVwZWF0aW5n
IHRoZSBvZmZpY2lhbCBwYXJ0eSBsaW5lIGFib3V0IGRldmljZXRyZWUuCgo+IEkgYWxzbyBkb24n
dCByZWFsbHkgc2VlIHRoZSBwb2ludC4gVGhlIGRldmljZXRyZWUgaXMgaW4KPiB0aGUga2VybmVs
LiBJZiB0aGVyZSdzIHNvbWUgc2V0dGluZyBpbiB0aGUgZGV2aWNldHJlZSB0aGF0IHdlIHdhbnQg
dG8KPiBjaGFuZ2UsIGl0J3MgZWZmZWN0aXZlbHkgdGhlIHNhbWUgdG8gbWFrZSB0aGUgY2hhbmdl
IGluIHRoZSBkZXZpY2V0cmVlCj4gdmVyc3VzIHNvbWUgcXVpcmsgc2V0dGluZy4gVGhlIG9ubHkg
ZGlmZmVyZW5jZSBzZWVtcyB0byBiZSB0aGF0IG1ha2luZwo+IHRoZSBjaGFuZ2UgaW4gdGhlIGRl
dmljZXRyZWUgaXMgY2xlYW5lci4KCkkgYWdyZWUgd2l0aCB5b3UgdGhhdCBkZXZpY2V0cmVlIGlu
IHByYWN0aWNlIGlzIGVhc3kgdG8gdXBkYXRlIGFmdGVyCnNoaXBwaW5nLiBCdXQgYXQgbGVhc3Qg
d2hlbmV2ZXIgSSB0cmllZCB0byBnZXQgbmV3IGJpbmRpbmdzIHJldmlld2VkCkkgd2FzIGFsd2F5
cyB0b2xkIHRoYXQgSSB3YXMgbm90IGFsbG93ZWQgdG8gY291bnQgb24gdGhhdC4KCj4+IEknbSAx
MDAlIHN1cmUgdGhhdCB0aGVyZSBpcyBlLmcuIEFSTSBoYXJkd2FyZSBvdXQgdGhlcmUgd2hpY2gg
dXNlcwo+PiBub24gdXByaWdodCBtb3VudGVkIExDRCBwYW5lbHMgKEkgdXNlZCB0byBoYXZlIGEg
ZmV3IEFsbHdpbm5lcgo+PiB0YWJsZXRzIHdoaWNoIGRpZCB0aGlzKS4gQW5kIGdpdmVuIG15IGV4
cGVyaWVuY2Ugd2l0aCB0aGUgcXVhbGl0eQo+PiBvZiBmaXJtd2FyZSBidW5kbGVkIHRhYmxlcyBs
aWtlIEFDUEkgdGFibGVzIEknbSBxdWl0ZSBzdXJlIHRoYXQKPj4gaWYgd2UgZXZlciBtb3ZlIHRv
IGZpcm13YXJlIGluY2x1ZGVkIGR0YiBmaWxlcyB0aGF0IHdlIHdpbGwgbmVlZAo+PiBxdWlya3Mg
Zm9yIHRob3NlIHRvby4KPiAKPiBJcyB0aGVyZSBhIHRpbWVsaW5lIHRvIHN0YXJ0IHVzaW5nIGZp
cm13YXJlIGJ1bmRsZWQgdGFibGVzPwoKTm9wZSwgYXMgSSBzYWlkICJpZiB3ZSBldmVyIG1vdmUg
dG8gLi4uIi4KCj4gU2luY2UgdGhlCj4gcXVpcmsgY29kZSBvbmx5IHVzZXMgRE1JLCBpdCB3aWxs
IG5lZWQgdG8gYmUgY2hhbmdlZCBhbnl3YXlzIGZvcgo+IGZpcm13YXJlIGJ1bmRsZWQgZGV2aWNl
dHJlZSBmaWxlcyBhbnl3YXlzLgo+IAo+IFdlIGNvdWxkIGNvbnNvbGlkYXRlIHRoZSBkdXBsaWNh
dGVkIGNvZGUgaW50byBhbm90aGVyIGZ1bmN0aW9uIHRoYXQKPiBjYWxscyBkcm1fZ2V0X3BhbmVs
X29yaWVudGF0aW9uX3F1aXJrcyB0b28uIFRoZSBvbmx5IHJlYXNvbiBpdCdzIGxpa2UKPiBpdCBp
cyBpcyBiZWNhdXNlIEkgaW5pdGlhbGx5IG9ubHkgaGFkIHRoZSBjYWxsIHRvCj4gZHJtX2dldF9w
YW5lbF9vcmllbnRhdGlvbl9xdWlyayBvbmNlIGluIHRoZSBjb2RlLgoKWWVzIGlmIHlvdSBjYW4g
YWRkIGEgbmV3IGhlbHBlciBmb3IgdGhlIGN1cnJlbnQgY2FsbGVycywgdGhlbgpJJ20gZmluZSB3
aXRoIGRyb3BwaW5nIHRoZSBxdWlyayBoYW5kbGluZyBmcm9tCmRybV9jb25uZWN0b3JfaW5pdF9w
YW5lbF9vcmllbnRhdGlvbl9wcm9wZXJ0eSgpCgpSZWdhcmRzLAoKSGFucwpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
