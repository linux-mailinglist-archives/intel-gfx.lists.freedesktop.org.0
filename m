Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A876C343E40
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 11:45:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 260C589E39;
	Mon, 22 Mar 2021 10:45:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56E4989E39
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 10:45:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1616409943;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wLOlRGmSw6H8c6zYxSZmN4y6MM8bdfuIMK8QdGlAqUc=;
 b=OOLjtC8ZonI3b5vIY3gDkfp/7MaCbM2sswsvRukB5UoGvCEmt9jTAWIlqlB1aITv8yng5I
 TKuZNTsRZSwFCeHIJUge/MtLXriVsJmEpJd7MFZXYm0PgHOfl/hIecv/gapHHjGNIzf+I4
 /foM/KFoQplJBYQF5tkSV1UTfuwU2lo=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-447-DpQ119bWMlao8r5JVPim3A-1; Mon, 22 Mar 2021 06:45:41 -0400
X-MC-Unique: DpQ119bWMlao8r5JVPim3A-1
Received: by mail-ej1-f70.google.com with SMTP id h14so19726202ejg.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 03:45:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=wLOlRGmSw6H8c6zYxSZmN4y6MM8bdfuIMK8QdGlAqUc=;
 b=SUYjwp3QKHtt/C2TjaVhALaKHhMyBZzm0mQpvTihd+ltR7xfI+cfEAzGDP6VCXiO2W
 +f42a7C9UfP4DjIetwG4gztk8TPoNeJuOW6fGrhPDxIGtxvAxMBx/cPwSS5FrBxnqjaL
 uo3h+bWtNxqyU+VzEJFeySBiLGEZObvumcgTSHI/TAT72ZkSybYbJajP3Q/iPe+anXNh
 6sa+dSineZFMFo2uiQn51KeivbcBNxKWYJ+oT7KQO1CVtil1/xm/AxWdSFDKRa7GQp+n
 Mwplk+8YlNO+cUWHzEh6VX+gJ79lnStynbSTCdF10YFV/+Yiaic9QLg4Gf/k3BRKpIFn
 LHdA==
X-Gm-Message-State: AOAM530zoqaiUXk1iLLeVh63M8bwV0AmnnDHFWWRVnYI+pxnqYgwInXk
 PfCtl9aG6hzv3ORn/mWnC25si6K8OWaRUX/iJf9PAij5Y4+GNMJQRRAWnwadN6TaXqmjMWZxaOj
 hCcuezFiTG+L0b5w3SLjsWZkbroLvhTjKb8bdra4mRRgff6HQcxdm26B3z1hfESpDtFGiN7gRhw
 J7LUDM
X-Received: by 2002:a17:906:c45a:: with SMTP id
 ck26mr18290800ejb.125.1616409940377; 
 Mon, 22 Mar 2021 03:45:40 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz1B1FCsOQvuCU/TLfhxHzP/F0ih8FpySlvCLUzguQ9/x1GoUIxfAs+nmAj/C5NtR1/U4T0Lg==
X-Received: by 2002:a17:906:c45a:: with SMTP id
 ck26mr18290777ejb.125.1616409940222; 
 Mon, 22 Mar 2021 03:45:40 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id i10sm9419925ejv.106.2021.03.22.03.45.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 22 Mar 2021 03:45:39 -0700 (PDT)
To: =?UTF-8?Q?Mario_H=c3=bcttel?= <mario.huettel@gmx.net>,
 intel-gfx@lists.freedesktop.org
References: <28b8cfd3f29d3e5ed4224c687ef173d6c45e028d.camel@gmx.net>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <5ad5226b-91ce-8685-4c3f-e6890dd642a2@redhat.com>
Date: Mon, 22 Mar 2021 11:45:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <28b8cfd3f29d3e5ed4224c687ef173d6c45e028d.camel@gmx.net>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-gfx] [bug report] drm/i915: Computer does not shutdown,
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpPbiAzLzE0LzIxIDExOjMwIEFNLCBNYXJpbyBIw7x0dGVsIHdyb3RlOgo+IEhlbGxvLAo+
IAo+IEl0IHNlZW1zLCBsaWtlIHRoZSBtYWlsaW5nIGxpc3QsIGRpZG4ndCBhY2NlcHQgbXkgZW1h
aWwuIFNvIEknbGwgc2VuZAo+IGl0IGFnYWluOgo+IAo+IEkgd2FudCB0byByZXBvcnQgYSBidWcu
IEkgaGF2ZSBhIFBDIHdpdGggSW50ZWwgaTctNjcwMEsgcHJvY2Vzc29yICh3aXRoCj4gaW50ZWdy
YXRlZCBncmFwaGljcykgYW5kIGFuIEFzUm9jayBGYXRhbDF0eSBaMTcwIEdhbWluZyBLNiBtYWlu
Ym9hcmQuIEkKPiB1c2UgdGhlIENQVSdzIGludGVncmF0ZWQgZ3JhcGhpY3MuCj4gTXkgc3lzdGVt
IGlzIEFyY2hsaW51eCB3aXRoIEtlcm5lbCB2NS4xMS42Lgo+IAo+IFVzaW5nIHRoaXMgc2V0dXAs
IG15IFBDIHdvcmtzIG5vcm1hbGx5LiBIb3dldmVyLCB3aGVuIEkgc2h1dCBpdCBkb3duLAo+IHRo
ZSBwb3dlciBpcyBub3QgY3V0LiBGYW5zIGtlZXAgc3Bpbm5pbmcgYW5kIExFRHMgc3RheSBvbi4g
SSBjb3VsZG4ndAo+IGRldGVjdCBhbnkgb3RoZXIgcHJvYmxlbSB3aGVuIHNodXR0aW5nIGRvd24u
IERyaXZlcyBldGMuIHN0b3AgYXMKPiBleHBlY3RlZCBhbmQgdGhlIHZpZGVvIGlzIGJsYW5rLiBF
dmVuIGFmdGVyIHdhaXRpbmcgc2V2ZXJhbCBob3VycywgdGhlCj4gc3lzdGVtIGRvZXNuJ3QgcG93
ZXIgZG93bi4KPiAKPiBSZXN0YXJ0cyB3b3JrIG5vcm1hbGx5Lgo+IAo+IEkgaGF2ZW4ndCB5ZXQg
Zm91bmQgYW55IG90aGVyIHBlb3BsZSBvbiB0aGUgaW50ZXJuZXQgdGhhdCBoYXZlIHRoZSBzYW1l
Cj4gYnVnLgo+IAo+IEkgdXNlZCBnaXQgYmlzZWN0IHRvIGZpbmQgdGhlIGNvbW1pdCB0aGF0IGNh
dXNlcyB0aGlzIGJlaGF2aW9yIG9uIG15Cj4gbWFjaGluZS4KClRoYW5rIHlvdSBmb3IgZG9pbmcg
YSBiaXNlY3QgdGhhdCBpcyBhbHdheXMgdmVyeSBoZWxwZnVsLgoKPiBUaGUgcmVzdWx0IGlzOiBm
ZTBmMWUzYmZkZmViNTNlMThmMTIwNmFlYTRmNDBiOWJkMWYyOTFjIGlzIHRoZQo+IGZpcnN0IGJh
ZCBjb21taXQuCgpUbyBzYXZlIG90aGVycyB0aGUgdHJvdWJsZSBvZiBoYXZpbmcgdG8gbG9vayB1
cCB0aGUgaGFzaiwgdGhhdCBpczoKCiJkcm0vaTkxNTogU2h1dCBkb3duIGRpc3BsYXlzIGdyYWNl
ZnVsbHkgb24gcmVib290IgoKV2hpY2ggaXMgdGhlIHNhbWUgY29tbWl0IGFzIHdoaWNoIEkndmUg
cmVwb3J0ZWQgaXMgY2F1c2luZyBpc3N1ZXMKd2l0aCBEU0kgcGFuZWxzIG5vdCBsaWdodGluZyB1
cCBvbiByZWJvb3RzIG9uIHNvbWUgQllUL0NIVCBkZXZpY2VzLgoKU2luY2UgdGhpcyBzZWVtcyB0
byBtb3N0bHkgYmUgaW50ZW5kZWQgdG8gZml4IGlzc3VlcyBzdXJyb3VuZGluZwpEUCBNU1Qgc3R1
ZmYsIG1heWJlIHRoZSBncmFjZWZ1bCBzaHV0ZG93biBzaG91bGQgb25seSBiZSBkb25lIHdoZW4K
TVNUIGlzIGluIHVzZT8KClJlZ2FyZHMsCgpIYW5zCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
