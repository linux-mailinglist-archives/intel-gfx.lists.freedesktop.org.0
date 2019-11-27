Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E45810A74D
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 01:02:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4FCB89D7D;
	Wed, 27 Nov 2019 00:02:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1A5B896ED
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 00:02:32 +0000 (UTC)
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-319-EyeSpPxOOpGfFiOJVjO4xQ-1; Tue, 26 Nov 2019 19:02:28 -0500
Received: by mail-qk1-f200.google.com with SMTP id e23so8621393qka.23
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 16:02:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=yXqbrtwRgrJm4BhT6T9i2BgUaLDCs85lMF10UJJ2I+s=;
 b=e2aJJfSXvIL8BEzsT+Cvw0m9XGTLznujn0k9tp54m12s/2PmAIzc8pieMds0a7jw/s
 WOPSvHWKOfvLhSUpHSSL4NHIfjvXPi0P3BintjSOtMGAQamhVHYX/rj83xa/faOzBhMa
 nI9VqaY07uCRzmonpaFe+1SIXus/ebyoYppj3S+E2BB/POywsZU4hx2Ox0urVt2FEmek
 kRS6oMhKWWlDPlzCdrpye65xH5Z6QwgcWEVKy0Mum61xelv8XWjJOz5GSh01+g/1nmZk
 5j3LQ5F5ysIxhXsiJjcqMJ7MDdjVub2ksoGms8cl3nhUt/t6fxMQl6lqnHFqjHW4SPv6
 K2rg==
X-Gm-Message-State: APjAAAViGibaun5EK/jYKHJHpXbrUj/GUV/ZvXKc9ZStLTkiRQuHz/4M
 bdFtu0YYB9Isk2Xfc8J7zw+iavsHT0XYwDhXDKcA5Peb9WBXFVylYtB/En5GjxsFAce2hClS/2J
 DmBcVVfWYxb1ENC24fHWQDAwUxWcj
X-Received: by 2002:ad4:4391:: with SMTP id s17mr1762289qvr.232.1574812947281; 
 Tue, 26 Nov 2019 16:02:27 -0800 (PST)
X-Google-Smtp-Source: APXvYqw3q4ewcikY7OI7dL9fkaVTaIVqmxDFDDTUeaf3kPEvU6p+qdGfBZYAO6JO3MhH1/cwek7Qsg==
X-Received: by 2002:ad4:4391:: with SMTP id s17mr1762255qvr.232.1574812946987; 
 Tue, 26 Nov 2019 16:02:26 -0800 (PST)
Received: from dhcp-10-20-1-90.bss.redhat.com ([144.121.20.162])
 by smtp.gmail.com with ESMTPSA id z16sm6607336qtn.24.2019.11.26.16.02.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Nov 2019 16:02:26 -0800 (PST)
Message-ID: <ef19849f04e05f239c5459bc05a541412792fb58.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Jani Nikula <jani.nikula@intel.com>, Adam Jackson <ajax@redhat.com>, 
 "20191004215851.31446-1-shawn.c.lee@intel.com"
 <20191004215851.31446-1-shawn.c.lee@intel.com>, 
 "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "dri-devel@lists.freedesktop.org"
 <dri-devel@lists.freedesktop.org>
Date: Tue, 26 Nov 2019 19:02:24 -0500
In-Reply-To: <87pnj7h9wk.fsf@intel.com>
References: <20191004215851.31446-1-shawn.c.lee@intel.com>
 <33dcaf669eae3acfc3b716e68b69c0fe76dd2dbc.camel@redhat.com>
 <87d0fce4mh.fsf@intel.com>
 <D42A2A322A1FCA4089E30E9A9BA36AC65D6A9C66@PGSMSX111.gar.corp.intel.com>
 <877e5gj52f.fsf@intel.com>
 <75105bb4d3c4ea37aaf53144be5d644f998f3626.camel@redhat.com>
 <87pnj7h9wk.fsf@intel.com>
Organization: Red Hat
User-Agent: Evolution 3.34.1 (3.34.1-1.fc31)
MIME-Version: 1.0
X-MC-Unique: EyeSpPxOOpGfFiOJVjO4xQ-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1574812950;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=v4WVof2FFH3tts3n/m6ms5ryGIwtPeaw+XxgdH6aKvw=;
 b=hhP5Y9QD7PpFGyvgGMJsOmYO++1ipaWWm6jYeqpVD54el580/dgcBDAppMpo59WCnL19Fu
 sDnec4O1D1mcaYBbrpg92lHBy6pOK3WDRp7n87p+QFzyzYkcwecHV7UdG/gpZXho+mM6KC
 xthEUXnEdeQuUThJzZQhuN4/QnhTpHk=
Subject: Re: [Intel-gfx] [PATCH] drm/i915: customize DPCD brightness control
 for specific panel
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
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>,
 Gustavo Padovan <gustavo@padovan.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SSdtIGFib3V0IHRvIHBvc3Qgc29tZSBtb3JlIHJldmlldyBjb21tZW50cyBmb3IgdGhlIHYyIHZl
cnNpb24gb2YgdGhpcywgYnV0CnNvbWUgY29tbWVudHMgZG93biBiZWxvdy4uLgoKT24gVHVlLCAy
MDE5LTEwLTA4IGF0IDEyOjE5ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToKPiBPbiBNb24sIDA3
IE9jdCAyMDE5LCBBZGFtIEphY2tzb24gPGFqYXhAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gPiBPbiBN
b24sIDIwMTktMTAtMDcgYXQgMTI6MDggKzAzMDAsIEphbmkgTmlrdWxhIHdyb3RlOgo+ID4gCj4g
PiA+IFRoZSBwcm9ibGVtIHdpdGggdGhlIEVESUQgcXVpcmtzIGlzIHRoYXQgZXhwb3NpbmcgdGhl
IHF1aXJrcyBzdGlja3Mgb3V0Cj4gPiA+IGxpa2UgYSBzb3JlIHRodW1iLiBUaHVzIGZhciBhbGwg
b2YgaXQgaGFzIGJlZW4gY29udGFpbmVkIGluIGRybV9lZGlkLmMKPiA+ID4gYW5kIHRoZXkgYWZm
ZWN0IGhvdyB0aGUgRURJRCBnZXRzIHBhcnNlZCwgZm9yIGFsbCBkcml2ZXJzLiBPYnZpb3VzbHkK
PiA+ID4gdGhpcyBjb3VsZCBiZSBjaGFuZ2VkLCBidXQgaXMgaXQgdGhlIHJpZ2h0IHRoaW5nIHRv
IGRvPwo+ID4gPiAKPiA+ID4gV2hhdCBJIHN1Z2dlc3RlZCB3YXMsIGNoZWNrIHRoZSBPVUkgb25s
eSwgYW5kIGlmIGl0IG1hdGNoZXMsIGRvCj4gPiA+IG1vcmUuIFBlcmhhcHMgdGhlcmUncyBzb21l
dGhpbmcgaW4gdGhlIDB4MzAwIHJhbmdlIG9mIERQQ0Qgb2Zmc2V0cyB0aGF0Cj4gPiA+IHlvdSBj
YW4gcmVhZD8gT3IgcGVyaGFwcyB5b3UgbmVlZCB0byB3cml0ZSB0aGUgc291cmNlIE9VSSBmaXJz
dCwgYW5kCj4gPiA+IHRoZW4gZG8gdGhhdC4KPiA+IAo+ID4gTXkgaXNzdWUgaXNuJ3QgcmVhbGx5
IHdpdGggaWRlbnRpZnlpbmcgdGhlIHBhbmVsIGZyb20gRURJRCByYXRoZXIgdGhhbgo+ID4gRFBD
RCwgd2hpY2hldmVyIGlkZW50aWZpZXIgaXMgbW9zdCBzcGVjaWZpYyBpcyBwcm9iYWJseSB0aGUg
YmVzdCB0aGluZwo+ID4gdG8gdXNlLiBJdCdzIG1vcmUgdGhhdCB0aGlzIHF1aXJrIGlzIGlkZW50
aWZpZWQgaW4gY29tbW9uIGNvZGUgYnV0IG9ubHkKPiA+IGFwcGxpZWQgaW4gb25lIGRyaXZlci4g
SWYgdGhpcyBwYW5lbCB3ZXJlIGV2ZXIgdG8gYmUgYXR0YWNoZWQgdG8gc29tZQo+ID4gb3RoZXIg
c291cmNlLCB0aGV5IG1pZ2h0IHdlbGwgd2FudCB0byBhcHBseSB0aGUgc2FtZSBraW5kIG9mIGZp
eC4gTXkKPiA+IChhZG1pdHRlZGx5IG5hw692ZSkgcmVhZGluZyBvZiB0aGUgT1VJIGhhbmRzaGFr
ZSBwcm9jZXNzIGlzIHRoYXQgd2hlbgo+ID4gdGhlIHNvdXJjZSBkZXZpY2Ugd3JpdGVzIGFuIE9V
SSB0byBEUF9TT1VSQ0VfT1VJIGl0IGlzIHRlbGxpbmcgdGhlIHNpbmsKPiA+ICJJJ20gYWJvdXQg
dG8gaXNzdWUgY29tbWFuZHMgdGhhdCBjb25mb3JtIHRvIF90aGlzXyB2ZW5kb3IncyBvd24KPiA+
IGNvbnZlbnRpb25zIi4gSWYgdGhhdCBjb252ZW50aW9uIGNvbW11bmljYXRlcyBpbmZvcm1hdGlv
biB0aGF0IGlzCj4gPiBlbnRpcmVseSBjb250YWluZWQgd2l0aGluIEFVWENIIHRyYW5zYWN0aW9u
cyAoYW5kIGRvZXNuJ3QsIGZvciBleGFtcGxlLAo+ID4gcmVxdWlyZSBsb29raW5nIGF0IHNvbWUg
b3RoZXIgc3RyYXBwaW5nIHBpbiBvciBleHRlcm5hbCBkZXZpY2UpIHRoZW4gaW4KPiA+IHByaW5j
aXBsZSBpdCBkb2Vzbid0IG1hdHRlciBpZiB0aGUgc291cmNlIGRldmljZSAibWF0Y2hlcyIgdGhh
dCBPVUk7IGl0Cj4gPiB3b3VsZCBiZSBsZWdhbCBmb3IgYW4gQU1EIEdQVSB0byB3cml0ZSB0aGUg
c2FtZSBzZXF1ZW5jZSBhbmQgZXhwZWN0IHRoZQo+ID4gc2FtZSByZWFjdGlvbiwgc2hvdWxkIHRo
YXQgcGFuZWwgYmUgYXR0YWNoZWQgdG8gYW4gQU1EIEdQVS4KPiA+IAo+ID4gU28sIGl0IHdvdWxk
IGJlIG5pY2UgdG8ga25vdyBleGFjdGx5IHdoYXQgdGhhdCBwcm90b2NvbCBpcyBtZWFudCB0byBk
bywKPiA+IGlmIGl0IGFwcGxpZXMgb25seSB0byB0aGlzIHNwZWNpZmljIHBhbmVsIG9yIGFueXRo
aW5nIGVsc2Ugd2l0aCB0aGUKPiA+IHNhbWUgVENPTiwgaG93IG9uZSB3b3VsZCBpZGVudGlmeSBz
dWNoIFRDT05zIGluIHRoZSB3aWxkIG90aGVyIHRoYW4KPiA+IEVESUQsIGlmIGl0IHJlbGllcyBv
biBhbiBleHRlcm5hbCBQV00gb3Igc29tZXRoaW5nLCBldGMuIEFuZCBpdCBtaWdodAo+ID4gbWFr
ZSBzZW5zZSBmb3Igbm93IHRvIG1ha2UgdGhpcyBhIChzaHVkZGVyKSBkcml2ZXItc3BlY2lmaWMg
RURJRCBxdWlyawo+ID4gcmF0aGVyIHRoYW4gbWF0Y2ggYnkgRFBDRCwgYXQgbGVhc3QgdW50aWwg
d2Uga25vdyBpZiB0aGUgcGFuZWwgaXMgZXZlcgo+ID4gc2VlbiBhdHRhY2hlZCB0byBvdGhlciBz
b3VyY2UgZGV2aWNlcyBhbmQgaWYgdGhlIE9VSSBjb252ZW50aW9uIGlzCj4gPiBzZWxmLWNvbnRh
aW5lZC4KPiAKPiBUaGFua3MgZm9yIGNsYXJpZnlpbmcuIFByZXR0eSBtdWNoIGFncmVlZCwgdW5m
b3J0dW5hdGVseSBhbHNvIG9uIHRoZQo+ICJ3b3VsZCBiZSBuaWNlIHRvIGtub3cgbW9yZSIgcGFy
dC4uLgo+IAo+IElmIHRoaXMgd2VyZSB0byBiZSBhbiBFRElEIHF1aXJrIGFmdGVyIGFsbCwgSSB3
b25kZXIgaWYgaXQgd291bGQgYmUKPiBiZXR0ZXIgdG8gc3RvcmUgdGhlIHBhcnNlZCBxdWlya3Mg
dG8sIHNheSwgc3RydWN0IGRybV9kaXNwbGF5X2luZm8sIGFuZAo+IGhhdmUgYSBkcm1fY29ubmVj
dG9yX2hhc19xdWlyaygpIGZ1bmN0aW9uIHNpbWlsYXIgdG8gZHJtX2RwX2hhc19xdWlyaygpLgo+
IAo+IFRoaXMgd291bGQgYWxzbyBhbGxvdyB1cyB0byBub3QgcmV0dXJuIHF1aXJrcyBmcm9tCj4g
ZHJtX2FkZF9kaXNwbGF5X2luZm8oKSwgd2hpY2ggd291bGQgYXJndWFibHkgY2xlYW4gdXAgdGhl
IGludGVyZmFjZS4KCkRpZCBhbnlvbmUgY2hlY2sgaWYgdGhpcyBpcyBzcGVjaWZpZWQgaW4gdGhl
IHZiaW9zPyBUaGVyZSBhcHBlYXJzIHRvIGJlIGEKZmllbGQgZGVmaW5lZCBmb3IgdGhpcyByaWdo
dC4uLgoKZW51bSBpbnRlbF9iYWNrbGlnaHRfdHlwZSB7CglJTlRFTF9CQUNLTElHSFRfUE1JQywK
CUlOVEVMX0JBQ0tMSUdIVF9MUFNTLAoJSU5URUxfQkFDS0xJR0hUX0RJU1BMQVlfRERJLAoJSU5U
RUxfQkFDS0xJR0hUX0RTSV9EQ1MsCglJTlRFTF9CQUNLTElHSFRfUEFORUxfRFJJVkVSX0lOVEVS
RkFDRSwgLyogPC0gLi4uIG92ZXIgaGVyZSAqLwoJSU5URUxfQkFDS0xJR0hUX1ZFU0FfRURQX0FV
WF9JTlRFUkZBQ0UsCn07Cgo+IAo+IEJSLAo+IEphbmkuCj4gCj4gCi0tIApDaGVlcnMsCglMeXVk
ZSBQYXVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
