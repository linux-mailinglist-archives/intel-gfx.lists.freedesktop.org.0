Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 624D21C77E
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2019 13:13:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 254AC8929B;
	Tue, 14 May 2019 11:13:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-it1-x143.google.com (mail-it1-x143.google.com
 [IPv6:2607:f8b0:4864:20::143])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EF0689296
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 May 2019 11:13:05 +0000 (UTC)
Received: by mail-it1-x143.google.com with SMTP id q65so4256938itg.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 May 2019 04:13:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fESwSSroFkfl/9amTjZdsPzYCUNmJsZN210LNJ8KCxM=;
 b=J/nAEav9K6+nUqvEr38wx9zuQCagfK0x5Nk95dLi8ixArlblLynQKvxZvcouI7y9i4
 sTask++q+2aduTllYHH5jyWb1EdXJ7m72s5ZUvLt9keI8cdKG4zJd2K857Z5ZEFVyiEm
 ARpTiFn/Oa3+ZC8qNKHuao3clZK+giMaZowVQrrbQWgSLEThjEEfFs+ZZvne2zbewCIL
 prh94ABlRaMFUXGDp8uvTftlnGlguueguhRiqmaDm0XNpIt3d/E/ZPm2/wjNEW2Zbp2G
 bfcn4w07XACejg4dU5casfuX7UfSicB/OJlAEqw+bkczTNx1sShArkdTZJJ2bpcfacfN
 mtxw==
X-Gm-Message-State: APjAAAVMjwmUqqZJFsqQIQ70oeCnLgnZS8r5X6/54CAFBUDqzKCvaExO
 Vylyxnf3mNIA1A0sh54EN/No3rkRpOHFTtUvibHfZw==
X-Google-Smtp-Source: APXvYqyl/7Q60+gg1iM/jGq2WtzoSqSFCXSl61TLAm+4hW67wyM7taB+0QqxmevBHL1isP6ase1UEReu0s25ezadi8Q=
X-Received: by 2002:a02:7f81:: with SMTP id r123mr23307278jac.85.1557832384618; 
 Tue, 14 May 2019 04:13:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190507162745.25600-1-ramalingam.c@intel.com>
 <20190507162745.25600-10-ramalingam.c@intel.com>
 <31dad9a323382628911c5301a6eec179855aa815.camel@bootlin.com>
 <f86f6bbee06a12b9fe498be503100aac62df7903.camel@redhat.com>
In-Reply-To: <f86f6bbee06a12b9fe498be503100aac62df7903.camel@redhat.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 14 May 2019 13:12:53 +0200
Message-ID: <CAKMK7uFfDtCn4ELGQidZYS5gKZS=Nfm+Cs0mFryQ4V3jrXE+ow@mail.gmail.com>
To: Lyude Paul <lyude@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=fESwSSroFkfl/9amTjZdsPzYCUNmJsZN210LNJ8KCxM=;
 b=Vm4H2KQix61jo40hIkcP7f80yAznLekVvy5m0uBG1P4gMeHlKhefntRQqzauJpPxvo
 LHJR/9d2Ci2KPA9pNmMBY1QYWPGKSZubyplB8EPJddb1tMhBIQlrXw/YH+HzTlq5l1tU
 j/49I54fuCR1mtCmg10Ht/st22pFAlP8a32EU=
Subject: Re: [Intel-gfx] [PATCH v7 09/11] drm: uevent for connector status
 change
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
Cc: "Ser, Simon" <simon.ser@intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Pekka Paalanen <ppaalanen@gmail.com>, David Airlie <airlied@linux.ie>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBNYXkgMTMsIDIwMTkgYXQgMTE6MjAgUE0gTHl1ZGUgUGF1bCA8bHl1ZGVAcmVkaGF0
LmNvbT4gd3JvdGU6Cj4KPiBIaS1qdXN0IHdhbnRlZCB0byBnaXZlIHNvbWUgZ2VuZXJhbCB0aG91
Z2h0cyBoZXJlLgo+Cj4gRmlyc3Qgb2ZmIEknbSAxMDAlIGJlaGluZCB0aGUgZXBvY2ggaWRlYSwg
dGhhdCB3YXMgb25lIG9mIHRoZSBpZGVhcyBJIGhhZCBiZWVuCj4gdGhpbmtpbmcgb2YgcHJvcG9z
aW5nIGhlcmUgaW4gdGhlIGZpcnN0IHBsYWNlIGJ1dCBwcm9iYWJseSBmb3Jnb3QgYXQgc29tZQo+
IHBvaW50IGRvd24gdGhlIHJvYWQuCj4KPiBBIGNvdXBsZSBvZiBvdGhlciB0aGluZ3M6Cj4gICog
SSB0aGluayBpdCB3b3VsZCBhbHNvIHByb2JhYmx5IGJlIGdvb2QgdG8gaGF2ZSBldmVudHMgZm9y
IHdoZW4gY29ubmVjdG9ycwo+ICAgIGFyZSBhZGRlZCBvciByZW1vdmVkIGZyb20gdGhlIHN5c3Rl
bSAobWFpbmx5IGZvciBNU1QpCgpDdXJyZW50IHVldmVudCArIHVzZXJzcGFjZSBsb29rcyBhdCB0
aGUgY29ubmVjdG9yIGxpc3QgZnJvbQpkcm1HZXRSZXNvdXJjZXM/IFRoYXQgc2hvdWxkIGJlIGVu
b3VnaCB0byBmaWd1cmUgdGhpcyBvdXQgSSB0aGluayAuLi4KCj4gICogSGF2ZSB3ZSBjb25zaWRl
cmVkIGhhdmluZyBhbnkgc29ydCBvZiBTWU5DIGV2ZW50LCBsaWtlIHdoYXQgZXZkZXYgdXNlcyBm
b3IKPiAgICBzaWduYWxpbmcgdGhlIGVuZCBvZiBhIGZyYW1lIG9mIGV2ZW50cyBmb3IgaW5wdXQg
ZGV2aWNlcz8KCklmIHdlIGdvIHdpdGgganVzdCAxIGV2ZW50LCB0aGVuIHRoYXQncyB0aGUgbmF0
dXJhbCBzeW5jIG1hcmtlcgpzdGF0aW5nICJldmVyeXRoaW5nIHdlIHVwZGF0ZWQgZm9yIHRoaXMg
Y29ubmVjdG9yIGlzIG5vdyB1cGRhdGVkIi4gRm9yCm1vcmUgZ2xvYmFsIGV2ZW50cyB0aGUgZ2xv
YmFsIHVldmVudCBjb3VsZCBzZXJ2ZSB0aGF0IHJvbGUgKEkgZ3Vlc3MKdGhpcyBpcyB1c2VmdWwg
Zm9yIGhvdHBsdWdnaW4vdW5wbHVnZ2luIGVudGlyZSBtc3QgY2hhaW5zIC0gd2UgbWlnaHQKd2Fu
dCB0byBjb2FsZXNjZSB0aGVzZSBpbmRlZWQpLgoKSSBhbHNvIGRvbid0IHRoaW5rIHdlIG5lZWQg
dG8gbWFrZSB0aGlzIGFuIHVhcGkgZ3VhcmFudGVlLCBqdXN0IGJlc3QKZWZmb3J0IGtlcm5lbCBp
bXBsZW1lbnRhdGlvbiAtIHVzZXJzcGFjZSBuZWVkcyB0byBhbHdheXMgYmUgYWJsZSB0bwpkZWFs
IHdpdGggYW4gZXZlbnQgcmlnaHQgYWZ0ZXIgdGhlIG9uZSBpdCdzIGp1c3QgcHJvY2Vzc2luZy4K
LURhbmllbAoKPgo+IE9uIEZyaSwgMjAxOS0wNS0xMCBhdCAxNDoxMiArMDIwMCwgUGF1bCBLb2Np
YWxrb3dza2kgd3JvdGU6Cj4gPiBIaSwKPiA+Cj4gPiBPbiBUdWUsIDIwMTktMDUtMDcgYXQgMjE6
NTcgKzA1MzAsIFJhbWFsaW5nYW0gQyB3cm90ZToKPiA+ID4gRFJNIEFQSSBmb3IgZ2VuZXJhdGlu
ZyB1ZXZlbnQgZm9yIGEgc3RhdHVzIGNoYW5nZXMgb2YgY29ubmVjdG9yJ3MKPiA+ID4gcHJvcGVy
dHkuCj4gPiA+Cj4gPiA+IFRoaXMgdWV2ZW50IHdpbGwgaGF2ZSBmb2xsb3dpbmcgZGV0YWlscyBy
ZWxhdGVkIHRvIHRoZSBzdGF0dXMgY2hhbmdlOgo+ID4gPgo+ID4gPiAgIEhPVFBMVUc9MSwgQ09O
TkVDVE9SPTxjb25uZWN0b3JfaWQ+IGFuZCBQUk9QRVJUWT08cHJvcGVydHlfaWQ+Cj4gPiA+Cj4g
PiA+IE5lZWQgQUNLIGZyb20gdGhpcyB1ZXZlbnQgZnJvbSB1c2Vyc3BhY2UgY29uc3VtZXIuCj4g
Pgo+ID4gU28gd2UganVzdCBoYWQgc29tZSBkaXNjdXNzaW9ucyBvdmVyIG9uIElSQyBhbmQgYXQg
YWJvdXQgdGhlIGhvdHBsdWcKPiA+IGlzc3VlIGFuZCBjYW1lIHVwIHdpdGggc2ltaWxhciBpZGVh
czoKPiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL2FyY2hpdmVzL2RyaS1kZXZlbC8y
MDE5LU1heS8yMTc0MDguaHRtbAo+ID4KPiA+IFRoZSBjb25jbHVzaW9ucyBvZiB0aGVzZSBkaXNj
dXNzaW9ucyBzbyBmYXIgd291bGQgYmUgdG8gaGF2ZSBhIG1vcmUgb3IKPiA+IGxlc3MgZmluZSBn
cmFpbiBvZiB1ZXZlbnQgcmVwb3J0aW5nIGRlcGVuZGluZyBvbiB3aGF0IGhhcHBlbmVkLiBUaGUK
PiA+IHBvaW50IGlzIHRoYXQgd2UgbmVlZCB0byBjb3ZlciBkaWZmZXJlbnQgY2FzZXM6Cj4gPiAt
IG9uZSBvciBtb3JlIHByb3BlcnRpZXMgY2hhbmdlZDsKPiA+IC0gdGhlIGNvbm5lY3RvciBzdGF0
dXMgY2hhbmdlZDsKPiA+IC0gc29tZXRoaW5nIGVsc2UgYWJvdXQgdGhlIGNvbm5lY3RvciBjaGFu
Z2VkIChlLmcuIEVESUQvbW9kZXMpCj4gPgo+ID4gRm9yIHRoZSBmaXJzdCBjYXNlLCB3ZSBjYW4g
c2VuZCBvdXQ6Cj4gPiBIT1RQTFVHPTEKPiA+IENPTk5FQ1RPUj08aWQ+Cj4gPiBQUk9QRVJUWT08
aWQ+Cj4gPgo+ID4gYW5kIG5vIHJlcHJvYmUgaXMgcmVxdWlyZWQuCj4gPgo+ID4gRm9yIHRoZSBz
ZWNvbmQgb25lLCBzb21ldGhpbmcgbGlrZToKPiA+IEhPVFBMVUc9MQo+ID4gQ09OTkVDVE9SPTxp
ZD4KPiA+IFNUQVRVUz1Db25uZWN0ZWQvRGlzY29ubmVjdGVkCj4gPgo+ID4gYW5kIGEgY29ubmVj
dG9yIHByb2JlIGlzIG5lZWRlZCBmb3IgY29ubmVjdGVkLCBidXQgbm90IGZvcgo+ID4gZGlzY29u
bmVjdGVkOwo+ID4KPiA+IEZvciB0aGUgdGhpcmQgb25lLCB3ZSBjYW4gb25seSBpbmRpY2F0ZSB0
aGUgY29ubmVjdG9yOgo+ID4gSE9UUExVRz0xCj4gPiBDT05ORUNUT1I9PGlkPgo+ID4KPiA+IGFu
ZCBhIHJlcHJvYmUgb2YgdGhlIGNvbm5lY3RvciBpcyBhbHdheXMgbmVlZGVkCj4gPgo+ID4gVGhl
biB3ZSBzdGlsbCBoYXZlIHRoZSBsZWdhY3kgY2FzZToKPiA+IEhPVFBMVUc9MQo+ID4KPiA+IHdo
ZXJlIHVzZXJzcGFjZSBpcyBleHBlY3RlZCB0byByZXByb2JlIGFsbCB0aGUgY29ubmVjdG9ycy4K
PiA+Cj4gPiBJIHRoaW5rIHRoaXMgd291bGQgZGVzZXJ2ZSB0byBiZSBhIHNlcGFyYXRlIHNlcmll
cyBvbiBpdHMgb3duLiBTbyBJIGFtCj4gPiBwcm9wb3NpbmcgdG8gdGFrZSB0aGlzIG9uZSBvZmYg
eW91ciBwbGF0ZSBhbmQgY29tZSB1cCB3aXRoIGFub3RoZXIKPiA+IHNlcmVzIGltcGxlbWVudGlu
ZyB0aGlzIHByb3Bvc2FsLiBXaGF0IGRvIHlvdSB0aGluaz8KPiA+Cj4gPiBDaGVlcnMsCj4gPgo+
ID4gUGF1bAo+ID4KPiA+ID4gdjI6Cj4gPiA+ICAgTWlub3IgZml4ZXMgYXQgS0RvYyBjb21tZW50
cyBbRGFuaWVsXQo+ID4gPiB2MzoKPiA+ID4gICBDaGVjayB0aGUgcHJvcGVydHkgaXMgcmVhbGx5
IGF0dGFjaGVkIHdpdGggY29ubmVjdG9yIFtEYW5pZWxdCj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYt
Ynk6IFJhbWFsaW5nYW0gQyA8cmFtYWxpbmdhbS5jQGludGVsLmNvbT4KPiA+ID4gUmV2aWV3ZWQt
Ynk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+Cj4gPiA+IC0tLQo+ID4g
PiAgZHJpdmVycy9ncHUvZHJtL2RybV9zeXNmcy5jIHwgMzUgKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysKPiA+ID4gIGluY2x1ZGUvZHJtL2RybV9zeXNmcy5oICAgICB8ICA1ICsr
KystCj4gPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDM5IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24o
LSkKPiA+ID4KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fc3lzZnMuYyBi
L2RyaXZlcnMvZ3B1L2RybS9kcm1fc3lzZnMuYwo+ID4gPiBpbmRleCAxOGIxYWM0NDI5OTcuLjYz
ZmE5NTFhMjBkYiAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9zeXNmcy5j
Cj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fc3lzZnMuYwo+ID4gPiBAQCAtMjEsNiAr
MjEsNyBAQAo+ID4gPiAgI2luY2x1ZGUgPGRybS9kcm1fc3lzZnMuaD4KPiA+ID4gICNpbmNsdWRl
IDxkcm0vZHJtUC5oPgo+ID4gPiAgI2luY2x1ZGUgImRybV9pbnRlcm5hbC5oIgo+ID4gPiArI2lu
Y2x1ZGUgImRybV9jcnRjX2ludGVybmFsLmgiCj4gPiA+Cj4gPiA+ICAjZGVmaW5lIHRvX2RybV9t
aW5vcihkKSBkZXZfZ2V0X2RydmRhdGEoZCkKPiA+ID4gICNkZWZpbmUgdG9fZHJtX2Nvbm5lY3Rv
cihkKSBkZXZfZ2V0X2RydmRhdGEoZCkKPiA+ID4gQEAgLTMyMCw2ICszMjEsOSBAQCB2b2lkIGRy
bV9zeXNmc19sZWFzZV9ldmVudChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQo+ID4gPiAgICogU2Vu
ZCBhIHVldmVudCBmb3IgdGhlIERSTSBkZXZpY2Ugc3BlY2lmaWVkIGJ5IEBkZXYuICBDdXJyZW50
bHkgd2Ugb25seQo+ID4gPiAgICogc2V0IEhPVFBMVUc9MSBpbiB0aGUgdWV2ZW50IGVudmlyb25t
ZW50LCBidXQgdGhpcyBjb3VsZCBiZSBleHBhbmRlZCB0bwo+ID4gPiAgICogZGVhbCB3aXRoIG90
aGVyIHR5cGVzIG9mIGV2ZW50cy4KPiA+ID4gKyAqCj4gPiA+ICsgKiBBbnkgbmV3IHVhcGkgc2hv
dWxkIGJlIHVzaW5nIHRoZSBkcm1fc3lzZnNfY29ubmVjdG9yX3N0YXR1c19ldmVudCgpCj4gPiA+
ICsgKiBmb3IgdWV2ZW50cyBvbiBjb25uZWN0b3Igc3RhdHVzIGNoYW5nZS4KPiA+ID4gICAqLwo+
ID4gPiAgdm9pZCBkcm1fc3lzZnNfaG90cGx1Z19ldmVudChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2
KQo+ID4gPiAgewo+ID4gPiBAQCAtMzMyLDYgKzMzNiwzNyBAQCB2b2lkIGRybV9zeXNmc19ob3Rw
bHVnX2V2ZW50KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCj4gPiA+ICB9Cj4gPiA+ICBFWFBPUlRf
U1lNQk9MKGRybV9zeXNmc19ob3RwbHVnX2V2ZW50KTsKPiA+ID4KPiA+ID4gKy8qKgo+ID4gPiAr
ICogZHJtX3N5c2ZzX2Nvbm5lY3Rvcl9zdGF0dXNfZXZlbnQgLSBnZW5lcmF0ZSBhIERSTSB1ZXZl
bnQgZm9yIGNvbm5lY3Rvcgo+ID4gPiArICogcHJvcGVydHkgc3RhdHVzIGNoYW5nZQo+ID4gPiAr
ICogQGNvbm5lY3RvcjogY29ubmVjdG9yIG9uIHdoaWNoIHByb3BlcnR5IHN0YXR1cyBjaGFuZ2Vk
Cj4gPiA+ICsgKiBAcHJvcGVydHk6IGNvbm5lY3RvciBwcm9wZXJ0eSB3aG9lcyBzdGF0dXMgY2hh
bmdlZC4KPiA+ID4gKyAqCj4gPiA+ICsgKiBTZW5kIGEgdWV2ZW50IGZvciB0aGUgRFJNIGRldmlj
ZSBzcGVjaWZpZWQgYnkgQGRldi4gIEN1cnJlbnRseSB3ZQo+ID4gPiArICogc2V0IEhPVFBMVUc9
MSBhbmQgY29ubmVjdG9yIGlkIGFsb25nIHdpdGggdGhlIGF0dGFjaGVkIHByb3BlcnR5IGlkCj4g
PiA+ICsgKiByZWxhdGVkIHRvIHRoZSBzdGF0dXMgY2hhbmdlLgo+ID4gPiArICovCj4gPiA+ICt2
b2lkIGRybV9zeXNmc19jb25uZWN0b3Jfc3RhdHVzX2V2ZW50KHN0cnVjdCBkcm1fY29ubmVjdG9y
ICpjb25uZWN0b3IsCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1
Y3QgZHJtX3Byb3BlcnR5ICpwcm9wZXJ0eSkKPiA+ID4gK3sKPiA+ID4gKyAgIHN0cnVjdCBkcm1f
ZGV2aWNlICpkZXYgPSBjb25uZWN0b3ItPmRldjsKPiA+ID4gKyAgIGNoYXIgaG90cGx1Z19zdHJb
XSA9ICJIT1RQTFVHPTEiLCBjb25uX2lkWzMwXSwgcHJvcF9pZFszMF07Cj4gPiA+ICsgICBjaGFy
ICplbnZwWzRdID0geyBob3RwbHVnX3N0ciwgY29ubl9pZCwgcHJvcF9pZCwgTlVMTCB9Owo+ID4g
PiArCj4gPiA+ICsgICBXQVJOX09OKCFkcm1fbW9kZV9vYmpfZmluZF9wcm9wX2lkKCZjb25uZWN0
b3ItPmJhc2UsCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHBy
b3BlcnR5LT5iYXNlLmlkKSk7Cj4gPiA+ICsKPiA+ID4gKyAgIHNucHJpbnRmKGNvbm5faWQsIEFS
UkFZX1NJWkUoY29ubl9pZCksCj4gPiA+ICsgICAgICAgICAgICAiQ09OTkVDVE9SPSV1IiwgY29u
bmVjdG9yLT5iYXNlLmlkKTsKPiA+ID4gKyAgIHNucHJpbnRmKHByb3BfaWQsIEFSUkFZX1NJWkUo
cHJvcF9pZCksCj4gPiA+ICsgICAgICAgICAgICAiUFJPUEVSVFk9JXUiLCBwcm9wZXJ0eS0+YmFz
ZS5pZCk7Cj4gPiA+ICsKPiA+ID4gKyAgIERSTV9ERUJVRygiZ2VuZXJhdGluZyBjb25uZWN0b3Ig
c3RhdHVzIGV2ZW50XG4iKTsKPiA+ID4gKwo+ID4gPiArICAga29iamVjdF91ZXZlbnRfZW52KCZk
ZXYtPnByaW1hcnktPmtkZXYtPmtvYmosIEtPQkpfQ0hBTkdFLCBlbnZwKTsKPiA+ID4gK30KPiA+
ID4gK0VYUE9SVF9TWU1CT0woZHJtX3N5c2ZzX2Nvbm5lY3Rvcl9zdGF0dXNfZXZlbnQpOwo+ID4g
PiArCj4gPiA+ICBzdGF0aWMgdm9pZCBkcm1fc3lzZnNfcmVsZWFzZShzdHJ1Y3QgZGV2aWNlICpk
ZXYpCj4gPiA+ICB7Cj4gPiA+ICAgICBrZnJlZShkZXYpOwo+ID4gPiBkaWZmIC0tZ2l0IGEvaW5j
bHVkZS9kcm0vZHJtX3N5c2ZzLmggYi9pbmNsdWRlL2RybS9kcm1fc3lzZnMuaAo+ID4gPiBpbmRl
eCA0ZjMxMWU4MzZjZGMuLmQ0NTRlZjYxN2IyYyAxMDA2NDQKPiA+ID4gLS0tIGEvaW5jbHVkZS9k
cm0vZHJtX3N5c2ZzLmgKPiA+ID4gKysrIGIvaW5jbHVkZS9kcm0vZHJtX3N5c2ZzLmgKPiA+ID4g
QEAgLTQsMTAgKzQsMTMgQEAKPiA+ID4KPiA+ID4gIHN0cnVjdCBkcm1fZGV2aWNlOwo+ID4gPiAg
c3RydWN0IGRldmljZTsKPiA+ID4gK3N0cnVjdCBkcm1fY29ubmVjdG9yOwo+ID4gPiArc3RydWN0
IGRybV9wcm9wZXJ0eTsKPiA+ID4KPiA+ID4gIGludCBkcm1fY2xhc3NfZGV2aWNlX3JlZ2lzdGVy
KHN0cnVjdCBkZXZpY2UgKmRldik7Cj4gPiA+ICB2b2lkIGRybV9jbGFzc19kZXZpY2VfdW5yZWdp
c3RlcihzdHJ1Y3QgZGV2aWNlICpkZXYpOwo+ID4gPgo+ID4gPiAgdm9pZCBkcm1fc3lzZnNfaG90
cGx1Z19ldmVudChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KTsKPiA+ID4gLQo+ID4gPiArdm9pZCBk
cm1fc3lzZnNfY29ubmVjdG9yX3N0YXR1c19ldmVudChzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29u
bmVjdG9yLAo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGRy
bV9wcm9wZXJ0eSAqcHJvcGVydHkpOwo+ID4gPiAgI2VuZGlmCj4gLS0KPiBDaGVlcnMsCj4gICAg
ICAgICBMeXVkZSBQYXVsCj4KCgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwg
SW50ZWwgQ29ycG9yYXRpb24KKzQxICgwKSA3OSAzNjUgNTcgNDggLSBodHRwOi8vYmxvZy5mZnds
bC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
