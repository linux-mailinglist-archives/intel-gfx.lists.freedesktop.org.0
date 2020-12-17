Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE732DDACC
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Dec 2020 22:26:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EB8589956;
	Thu, 17 Dec 2020 21:26:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C364898F0
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Dec 2020 21:26:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1608240372;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=8nV0LCyfixdfGh/2f8wGsNWYKQY807RENP66c1/bg9U=;
 b=OoCMSBB6gjjrDlD3tTLktKbbXjbCJj3RmpWa1C8v9iHNMCAVU1R8kgvZ1C+IA9aeH+2n6N
 88fMHUd5qyn+cmuGf3vmovAglu1QcOMkG+r5VOW0p5AniSSfTt+magJAbFT6yjLwgMT2H2
 hWK6qZN94FOexltUrIbCdu/2+CFXudQ=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-216-sUAlcid7NfO_q4MpDIW-xw-1; Thu, 17 Dec 2020 16:26:10 -0500
X-MC-Unique: sUAlcid7NfO_q4MpDIW-xw-1
Received: by mail-qk1-f200.google.com with SMTP id p13so95415qki.14
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Dec 2020 13:26:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:date
 :in-reply-to:references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=8nV0LCyfixdfGh/2f8wGsNWYKQY807RENP66c1/bg9U=;
 b=TV9Q85/vZpKol/ICaLcGnOo6Sk/DERGQXQjtcrcqOqvjdKX47rzoET4DPrhh6k6krm
 rcF7LDcrxixjdsccrsb0pQWBuhpe6oQQ+J5h6SwoB6QY4c2LVllcwYpVyWLrFSp8RBOh
 6l+N9vUVzPvcY9sc5dO6PFwRop0HAgxKKEgaaS0b1aqUUUblWNlTlxHBeKmq/J+nx/0p
 eStRnLd2gReUXlpvpkJhTVHwD1ZjX424odyVTQciV2CpfxQ+whHOQ15WRIIGC5NJg25L
 DRv/EzCQDRv+fhFmKEpJN0QViHwjLAkHdSqv2GINgLhGJQM0NXOq7KZrvh3a6nbWI3+g
 nnIQ==
X-Gm-Message-State: AOAM531Dm6rFlRheYU7MpFuYdqT92BD8BQRirEqZsTkXLr+IeRc+sStt
 mo2ONuDMySNt7vPlZIxJbykx71ctsbCMp9I98uvAyiSuFNTTsAiT6R3oDiHA5FLJRFd1zZ8tq3U
 zJa757Gw3IXRCC5ZH+/cElv7LyTtI
X-Received: by 2002:a37:62cf:: with SMTP id w198mr1365257qkb.363.1608240370204; 
 Thu, 17 Dec 2020 13:26:10 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxi+SEVv4xATdJAzk4WcVBDNYd0qouv6NZPB0N/75fFFqo2Y8XM4lXjjuro1JQHL5b3ZFS0Ag==
X-Received: by 2002:a37:62cf:: with SMTP id w198mr1365245qkb.363.1608240370040; 
 Thu, 17 Dec 2020 13:26:10 -0800 (PST)
Received: from Whitewolf.lyude.net
 (pool-108-49-102-102.bstnma.fios.verizon.net. [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id x2sm3884907qtw.3.2020.12.17.13.26.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Dec 2020 13:26:09 -0800 (PST)
Message-ID: <89ff6b15530fc489df87ef70978af072e5e2b011.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, Dave Airlie <airlied@gmail.com>, 
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Date: Thu, 17 Dec 2020 16:26:08 -0500
In-Reply-To: <20201204223603.249878-1-lyude@redhat.com>
References: <20201204223603.249878-1-lyude@redhat.com>
Organization: Red Hat
User-Agent: Evolution 3.38.1 (3.38.1-1.fc33)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH v3 0/9] drm/i915: Add support for Intel's
 eDP backlight controls
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UG9rZSwgY2FuIHdlIHBsZWFzZSBnZXQgc29tZSByZXZpZXdzIG9uIHRoaXM/IEl0J3MgYmVlbiBv
dmVyIGEgd2Vlay4KCk9uIEZyaSwgMjAyMC0xMi0wNCBhdCAxNzozNSAtMDUwMCwgTHl1ZGUgUGF1
bCB3cm90ZToKPiBBIHdoaWxlIGFnbyB3ZSByYW4gaW50byBpc3N1ZXMgd2hpbGUgdHJ5aW5nIHRv
IGVuYWJsZSB0aGUgZURQIGJhY2tsaWdodAo+IGNvbnRyb2wgaW50ZXJmYWNlIGFzIGRlZmluZWQg
YnkgVkVTQSwgaW4gb3JkZXIgdG8gbWFrZSB0aGUgRFBDRAo+IGJhY2tsaWdodCBjb250cm9scyBv
biBuZXdlciBsYXB0b3AgcGFuZWxzIHdvcmsuIFRoZSBpc3N1ZSBlbmRlZCB1cCBiZWluZwo+IG11
Y2ggbW9yZSBjb21wbGljYXRlZCBob3dldmVyLCBhcyB3ZSBhbHNvIGFwcGFyZW50bHkgbmVlZGVk
IHRvIGFkZAo+IHN1cHBvcnQgZm9yIGFuIEludGVsLXNwZWNpZmljIERQQ0QgYmFja2xpZ2h0IGNv
bnRyb2wgaW50ZXJmYWNlIGFzIHRoZQo+IFZFU0EgaW50ZXJmYWNlIGlzIGJyb2tlbiBvbiBtYW55
IGxhcHRvcCBwYW5lbHMuIEZvciBsYWNrIG9mIGEgYmV0dGVyCj4gbmFtZSwgd2UganVzdCBjYWxs
IHRoaXMgdGhlIEludGVsIEhEUiBiYWNrbGlnaHQgaW50ZXJmYWNlLgo+IAo+IFdoaWxlIHRoaXMg
b25seSBhZGRzIHN1cHBvcnQgZm9yIHRoZSBTRFIgYmFja2xpZ2h0IG1vZGUgKEkgdGhpbmspLCB0
aGlzCj4gd2lsbCBmaXggYSBsb3Qgb2YgdXNlcidzIGxhcHRvcCBwYW5lbHMgdGhhdCB3ZSB3ZXJl
bid0IGFibGUgdG8gcHJvcGVybHkKPiBhdXRvbWF0aWNhbGx5IGRldGVjdCBEUENEIGJhY2tsaWdo
dCBjb250cm9scyBvbiBwcmV2aW91c2x5Lgo+IAo+IFNlcmllcy13aWRlIGNoYW5nZXMgaW4gdjM6
Cj4gKiBQYXNzIGRvd24gYnJpZ2h0bmVzcyB2YWx1ZXMgdG8gZW5hYmxlL2Rpc2FibGUgYmFja2xp
Z2h0IGNhbGxiYWNrcyBpbiBhCj4gwqAgc2VwYXJhdGUgcGF0Y2gKPiAqIFJlYmFzZQo+IAo+IEx5
dWRlIFBhdWwgKDkpOgo+IMKgIGRybS9pOTE1L2RwOiBQcm9ncmFtIHNvdXJjZSBPVUkgb24gZURQ
IHBhbmVscwo+IMKgIGRybS9pOTE1OiBSZW5hbWUgcHdtXyogYmFja2xpZ2h0IGNhbGxiYWNrcyB0
byBleHRfcHdtXyoKPiDCoCBkcm0vaTkxNTogUGFzcyBkb3duIGJyaWdodG5lc3MgdmFsdWVzIHRv
IGVuYWJsZS9kaXNhYmxlIGJhY2tsaWdodAo+IMKgwqDCoCBjYWxsYmFja3MKPiDCoCBkcm0vaTkx
NTogS2VlcCB0cmFjayBvZiBwd20tcmVsYXRlZCBiYWNrbGlnaHQgaG9va3Mgc2VwYXJhdGVseQo+
IMKgIGRybS9pOTE1L2RwOiBSZW5hbWUgZURQIFZFU0EgYmFja2xpZ2h0IGludGVyZmFjZSBmdW5j
dGlvbnMKPiDCoCBkcm0vaTkxNS9kcDogQWRkIHJlZ2lzdGVyIGRlZmluaXRpb25zIGZvciBJbnRl
bCBIRFIgYmFja2xpZ2h0Cj4gwqDCoMKgIGludGVyZmFjZQo+IMKgIGRybS9pOTE1L2RwOiBFbmFi
bGUgSW50ZWwncyBIRFIgYmFja2xpZ2h0IGludGVyZmFjZSAob25seSBTRFIgZm9yIG5vdykKPiDC
oCBkcm0vaTkxNS9kcDogQWxsb3cgZm9yY2luZyBzcGVjaWZpYyBpbnRlcmZhY2VzIHRocm91Z2gK
PiDCoMKgwqAgZW5hYmxlX2RwY2RfYmFja2xpZ2h0Cj4gwqAgZHJtL2RwOiBSZXZlcnQgImRybS9k
cDogSW50cm9kdWNlIEVESUQtYmFzZWQgcXVpcmtzIgo+IAo+IMKgZHJpdmVycy9ncHUvZHJtL2Ry
bV9kcF9oZWxwZXIuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDgzICstLS0KPiDC
oGRyaXZlcnMvZ3B1L2RybS9kcm1fZHBfbXN0X3RvcG9sb2d5LmPCoMKgwqDCoMKgwqDCoMKgIHzC
oMKgIDMgKy0KPiDCoC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaMKg
wqDCoCB8wqAgMTggKy0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
Y8KgwqDCoMKgwqDCoCB8wqAgNDIgKy0KPiDCoC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
X2F1eF9iYWNrbGlnaHQuYyB8IDM5NCArKysrKysrKysrKysrLS0tCj4gwqBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jwqDCoCB8wqDCoCAzICstCj4gwqAuLi4vaTkx
NS9kaXNwbGF5L2ludGVsX2RzaV9kY3NfYmFja2xpZ2h0LmPCoMKgwqAgfMKgwqAgNyArLQo+IMKg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wYW5lbC5jwqDCoMKgIHwgNDM1ICsr
KysrKysrKystLS0tLS0tLQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
YW5lbC5owqDCoMKgIHzCoMKgIDQgKwo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuY8KgwqDCoMKgwqAgfMKgwqAgMiArLQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9wYXJhbXMuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqAgMiArLQo+IMKgaW5jbHVk
ZS9kcm0vZHJtX2RwX2hlbHBlci5owqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHzCoCAyMSArLQo+IMKgMTIgZmlsZXMgY2hhbmdlZCwgNjU1IGluc2VydGlvbnMoKyksIDM1OSBk
ZWxldGlvbnMoLSkKPiAKCi0tIApTaW5jZXJlbHksCiAgIEx5dWRlIFBhdWwgKHNoZS9oZXIpCiAg
IFNvZnR3YXJlIEVuZ2luZWVyIGF0IFJlZCBIYXQKICAgCk5vdGU6IEkgZGVhbCB3aXRoIGEgbG90
IG9mIGVtYWlscyBhbmQgaGF2ZSBhIGxvdCBvZiBidWdzIG9uIG15IHBsYXRlLiBJZiB5b3UndmUK
YXNrZWQgbWUgYSBxdWVzdGlvbiwgYXJlIHdhaXRpbmcgZm9yIGEgcmV2aWV3L21lcmdlIG9uIGEg
cGF0Y2gsIGV0Yy4gYW5kIEkKaGF2ZW4ndCByZXNwb25kZWQgaW4gYSB3aGlsZSwgcGxlYXNlIGZl
ZWwgZnJlZSB0byBzZW5kIG1lIGFub3RoZXIgZW1haWwgdG8gY2hlY2sKb24gbXkgc3RhdHVzLiBJ
IGRvbid0IGJpdGUhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
