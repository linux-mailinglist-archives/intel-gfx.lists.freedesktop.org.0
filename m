Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1750E26E43E
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Sep 2020 20:43:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0B3C6E2DF;
	Thu, 17 Sep 2020 18:43:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7DA96E2E1
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Sep 2020 18:43:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1600368198;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=X3YNQVnEuBKgoNoOeSf/PGT265VJnw8WjVqokOBI4jU=;
 b=JWeFitXMfa4I7uCxV06wks4yCVZMoIXCGSqKT/97hjHwKvaLfAsS9TKsSBd7Se4VzNxg7m
 rt6nKygVhZdmeCNl9gpDa+/GZ5buCeby3cUFFyb6CAh5JZXbW36kZDtOS2LfVPI8HCbQGr
 V71n/I3ah3xXDjDEISwgft8N5lFXlp0=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-595-Gfl4lmnKPXi7MiC84pqD0g-1; Thu, 17 Sep 2020 14:43:15 -0400
X-MC-Unique: Gfl4lmnKPXi7MiC84pqD0g-1
Received: by mail-qv1-f70.google.com with SMTP id a20so2005204qvk.17
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Sep 2020 11:43:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
 :in-reply-to:references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=X3YNQVnEuBKgoNoOeSf/PGT265VJnw8WjVqokOBI4jU=;
 b=Vthpg1zjL+1stW9puuE56zYIrBvm6TsYFMq+7ArF3uqxtonFPd7mpUJIx/AtnfiZCH
 H9BB0ax4pRXvcHaa5xbvwYJ/KGV376vpFvFIyZiA2KL2KVj6In2auNuc8tkQN7EKVmUo
 7hSTdgsNuTHUQ0mH7AKEaYDCcO/HfRIIT0Vr963aUIL5vyIh1SYumjLPr2EU+yN7DFaj
 tzb2HzHdcCt35n0xVzcXC9ND9ZH4ndCO4RuBYq5R0JibLTYe8XppPogd7nITD7POnk9n
 fLAi6BBziRv3Ml98Q0u419wSi61q61xAoN0/W/XfDjuhVKnTIDcXLNV5npPmFm3n6IpO
 3gdQ==
X-Gm-Message-State: AOAM530li/AMrJQZK2ph0/JH9+sQ9IAGd5l5Wi6lvh/zEn26mt+ULc8B
 MOIH+/9RN/Ce08hWzdNH9qJVcfHVfYnnUAuYxQ2exB519+92MpnGmxn0mA1agVh7hgmdTkxBpI4
 gqh2VKuPwSw1RMSCJvNrqyaUGvILo
X-Received: by 2002:a37:d41:: with SMTP id 62mr28143218qkn.444.1600368194656; 
 Thu, 17 Sep 2020 11:43:14 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxk05EjX7xa4fRonNyj7Mx6EBr991YUqmf+oiqoc5wCLLzGZb5RBN6j4SU3TcogZaG/7aXr+g==
X-Received: by 2002:a37:d41:: with SMTP id 62mr28143102qkn.444.1600368193202; 
 Thu, 17 Sep 2020 11:43:13 -0700 (PDT)
Received: from Whitewolf.lyude.net
 (pool-108-49-102-102.bstnma.fios.verizon.net. [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id t26sm445203qkt.29.2020.09.17.11.43.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Sep 2020 11:43:12 -0700 (PDT)
Message-ID: <be7332a49139dd12e3569b35ce4533f6bf415db4.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Ville =?ISO-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, 
 Puthikorn Voravootivat <puthik@chromium.org>
Date: Thu, 17 Sep 2020 14:43:11 -0400
In-Reply-To: <20200917182535.GC6112@intel.com>
References: <20200917110838.1.I63d52f5b96d7e81e1e2dc2a72c4bf5fd84d3d3d0@changeid>
 <87o8m4uxcn.fsf@intel.com>
 <CANM=9DOn9wvL1RBDhxzawY1rRq0PFUBmKdXUGmG1CygApK1Vyg@mail.gmail.com>
 <CANCcNXc18jEXF+wdLm8sxR3ySR88D8S65a2x_vYtR5ihZ6XnMw@mail.gmail.com>
 <20200917182535.GC6112@intel.com>
Organization: Red Hat
User-Agent: Evolution 3.36.5 (3.36.5-1.fc32)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH] i915: Introduce quirk for shifting eDP
 brightness.
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
Cc: Kevin Chowski <chowski@chromium.org>, David Airlie <airlied@linux.ie>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIwLTA5LTE3IGF0IDIxOjI1ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
Cj4gT24gVGh1LCBTZXAgMTcsIDIwMjAgYXQgMTE6MTQ6NDNBTSAtMDcwMCwgUHV0aGlrb3JuIFZv
cmF2b290aXZhdCB3cm90ZToKPiA+IFRoZSBMeXVkZSBmZGU3MjY2ZmIyZjYgY2hhbmdlIGlzIGFj
dHVhbGx5IGJhc2VkIG9uIENocm9taXVtIGNoYW5nZQo+ID4gKGh0dHBzOi8vY3JyZXYuY29tL2Mv
MTY1MDMyNSkgdGhhdCBmaXhlcyB0aGUgYnJpZ2h0bmVzcyBmb3IgU2Ftc3VuZwo+ID4gR2FsYXh5
IENocm9tZWJvb2suIFNvIGN1cnJlbnRseSB3ZSBoYXZlIDIgZXhhbXBsZXMgdGhhdCB1c2UgTFNC
Cj4gPiBpbnRlcnByZXRhdGlvbiBhbmQgMSB0aGF0IHVzZSBNU0IuCj4gCj4gIklmIGZpZWxkIDQ6
MCBvZiB0aGUgRURQX1BXTUdFTl9CSVRfQ09VTlQgcmVnaXN0ZXIgcmVwcmVzZW50cyBhIHZhbHVl
Cj4gb2YgZ3JlYXRlciB0aGFuIDggYW5kIHRoZSBCQUNLTElHSFRfQlJJR0hUTkVTU19CWVRFX0NP
VU5UIGJpdAo+IGlzIGNsZWFyZWQgdG8gMCwgb25seSB0aGUgOCBNU0Igb2YgdGhlIGJyaWdodG5l
c3MgY29udHJvbCB2YWx1ZSBjYW4gYmUKPiBjb250cm9sbGVkLgo+IChTZWUgTm90ZSBiZWxvdy4p
Cj4gQXNzaWduZWQgYml0cyBhcmUgYWxsb2NhdGVkIHRvIHRoZSBNU0Igb2YgdGhlIGVuYWJsZWQg
cmVnaXN0ZXIKPiBjb21iaW5hdGlvbi4iCj4gCj4gSSB0aGluayB0aGF0J3MgcHJldHR5IGNsZWFy
IHRoZSBhc3NpZ25lZCBiaXRzIGFyZSBzdXBwb3NlZCB0byBiZQo+IG1zYiBhbGlnbmVkLgoKQXJl
IHdlIHN1cmUgdGhhdCBpc24ndCBqdXN0IHJlZmVycmluZyB0byB0aGUgRFBfRURQX0JBQ0tMSUdI
VF9CUklHSFRORVNTX01TQgpyZWdpc3RlciwgYXMgb3Bwb3NlZCB0byBhbGlnbm1lbnQgb2YgdGhl
IHdob2xlIHZhbHVlIGluIHRoYXQgcmVnaXN0ZXI/IE15CnVuZGVyc3RhbmRpbmcgb2YgdGhpcyB3
YXMganVzdCB0aGF0IGlmIHRoZXJlIHdhc24ndCBhIHB3bWdlbiBiaXQgY291bnQKc3BlY2lmaWVk
LCB0aGF0IHRoZSBiYWNrbGlnaHQgbGV2ZWwgd291bGQganVzdCBiZSB3cml0dGVuIHRvCkRQX0VE
UF9CQUNLTElHSFRfQlJJR0hUTkVTU19NU0IgYW5kIERQX0VEUF9CQUNLTElHSFRfQlJJR0hUTkVT
U19MU0Igd291bGQgYmUKaWdub3JlZC4gCgpIb3BlZnVsbHkgSSdtIG5vdCBtaXN1bmRlcnN0YW5k
aW5nIFZpbGxlLCBidXQgSSBkb24ndCB0aGluayBzbyBzaW5jZSB0aGUgY3VycmVudApjb2RlIHdl
IGhhdmUgYWxyZWFkeSBmb2xsb3dzIHRoZSB1bmRlcnN0YW5kaW5nIEkganVzdCBnYXZlOgoKCXZh
bHNbMF0gPSBsZXZlbDsKCgkvKiBXcml0ZSB0aGUgTVNCIGFuZC9vciBMU0IgKi8KCWlmIChpbnRl
bF9kcC0+ZWRwX2RwY2RbMl0gJiBEUF9FRFBfQkFDS0xJR0hUX0JSSUdIVE5FU1NfQllURV9DT1VO
VCkgewoJCXZhbHNbMF0gPSAobGV2ZWwgJiAweEZGMDApID4+IDg7CgkJdmFsc1sxXSA9IChsZXZl
bCAmIDB4RkYpOwoJfQoKKHZhbHNbMF0gPT0gTVNCKQo+IAo+ID4gCj4gPiBPbiBUaHUsIFNlcCAx
NywgMjAyMCBhdCAxMDo1NSBBTSBLZXZpbiBDaG93c2tpIDxjaG93c2tpQGNocm9taXVtLm9yZz4g
d3JvdGU6Cj4gPiA+IEFwb2xvZ2llcyBmb3IgYmVpbmcgdG9vIHZhZ3VlLiBUbyBiZSBhcyBwcmVj
aXNlIEkgY2FuIGJlLCBoZXJlIGlzIHRoZQo+ID4gPiBzcGVjaWZpYyBjb2RlIGRlbHRhIEkgdGVz
dGVkOiBodHRwczovL2NycmV2LmNvbS9jLzI0MDY2MTYgLiBUbyBhbnN3ZXIKPiA+ID4geW91ciBv
dGhlciBxdWVzdGlvbiwgdGhlIGNvZGUgSSB0ZXN0ZWQgYWdhaW5zdCBpcyBpbmRlZWQgaW5jbHVk
aW5nIHRoZQo+ID4gPiBmZGU3MjY2ZmIyZjYgKGRlc3BpdGUgb3N0ZW5zaWJseSBiZWluZyBjYWxs
ZWQgNS40IGluIG15IGNvbW1pdAo+ID4gPiBtZXNzYWdlKTogb3VyIGN1cnJlbnQgdG9wLW9mLXRy
ZWUgZm9yIG91ciA1LjQgYnJhbmNoIGluY2x1ZGVzIHRoZQo+ID4gPiBpbnRlbF9kcF9hdXhfY2Fs
Y19tYXhfYmFja2xpZ2h0IGxvZ2ljLiBGdXJ0aGVyLCBJJ2xsIG5vdGUgdGhhdCBjaGFuZ2UKPiA+
ID4gaXMgZXhhY3RseSB0aGUgY2hhbmdlIHdoaWNoIGJyZWFrcyBteSBQaXhlbGJvb2sgbW9kZWw6
IHByaW9yIHRvIHRoZQo+ID4gPiBjaGFuZ2UsIHRoZSBtYXhfYnJpZ2h0bmVzcyB3YXMgaGFyZC1j
b2RlZCB0byAweEZGRkYgYW5kIHRoZSBtYXRoCj4gPiA+IHdvcmtlZCBvdXQgdGhhdCBpdCBkaWRu
J3QgbWF0dGVyIHRoYXQgdGhlIGhhcmR3YXJlIGNhcmVkIGFib3V0IHRoZSBNU0IKPiA+ID4gZGVz
cGl0ZSB0aGUgZHJpdmVyIGNvZGUgY2FyaW5nIGFib3V0IHRoZSBMU0IuCj4gPiA+IAo+ID4gPiBU
byBhbnN3ZXIgVmlsbGUncyBxdWVzdGlvbjogdGhlIGZkZTcyNjZmYjJmNiBjaGFuZ2Ugd2hpY2gg
Zml4ZXMgb25lCj4gPiA+IGxhcHRvcCAoSSBiZWxpZXZlIFRoaW5rcGFkIFgxIGV4dHJlbWUgR2Vu
IDIsIGZyb20gc29tZSBidWcgcmVwb3J0cyBJCj4gPiA+IGR1ZyB1cCkgYW5kIGJyZWFrcyBhbm90
aGVyIChQaXhlbGJvb2spOyBzbyB1bmZvcnR1bmF0ZWx5IEkgYmVsaWV2ZSB3ZQo+ID4gPiBuZWVk
IGEgcXVpcmsgYXQgbGVhc3QgZm9yIHNvbWUgbGFwdG9wLiBSZWFkaW5nIHRocm91Z2ggdGhlIGNv
cHkgb2YgdGhlCj4gPiA+IGRhdGFzaGVldCBJIGhhdmUsIGl0IHdhc24ndCBjbGVhciB0byBtZSB3
aGljaCB3YXMgdGhlIGNvcnJlY3QKPiA+ID4gaW50ZXJwcmV0YXRpb24uIEknbSBjYydpbmcgcHV0
aGlrQCwgd2hvIHdhcyBsZWFuaW5nIHRvd2FyZCB0aGUgY3VycmVudAo+ID4gPiBrZXJuZWwgY29k
ZSAoY2FyaW5nIGFib3V0IExTQikgYmVpbmcgdGhlIGNvcnJlY3QgaW50ZXJwcmV0YXRpb24uIEkK
PiA+ID4gYmVsaWV2ZSB3ZSBoYXZlIG90aGVyIGNocm9tZWJvb2tzIHdoaWNoIGRvIHJlbHkgb24g
TFNCIGZ1bmN0aW9uYWxpdHksCj4gPiA+IHNvIHVubGVzcyB3ZSBjYW4gZmluZCBtb3JlIGV4YW1w
bGVzIG9mIGxhcHRvcHMgd2FudGluZyBNU0IgaXQKPiA+ID4gY3VycmVudGx5IGxvb2tzIGxpa2Ug
UGl4ZWxib29rIGlzIHRoZSBvdXRsaWVyLgo+ID4gPiAKPiA+ID4gT24gVGh1LCBTZXAgMTcsIDIw
MjAgYXQgMTE6MjggQU0gSmFuaSBOaWt1bGEKPiA+ID4gPGphbmkubmlrdWxhQGxpbnV4LmludGVs
LmNvbT4gd3JvdGU6Cj4gPiA+ID4gT24gVGh1LCAxNyBTZXAgMjAyMCwgS2V2aW4gQ2hvd3NraSA8
Y2hvd3NraUBjaHJvbWl1bS5vcmc+IHdyb3RlOgo+ID4gPiA+ID4gV2UgaGF2ZSBvYnNlcnZlZCB0
aGF0IEdvb2dsZSBQaXhlbGJvb2sncyBiYWNrbGlnaHQgaGFyZHdhcmUgaXMKPiA+ID4gPiA+IGlu
dGVycHJldHRpbmcgdGhlc2UgYmFja2xpZ2h0IGJpdHMgZnJvbSB0aGUgbW9zdC1zaWduaWZpY2Fu
dCBzaWRlIG9mCj4gPiA+ID4gPiB0aGUKPiA+ID4gPiA+IDE2IGJpdCB3b3JkIChpZiBEUF9FRFBf
UFdNR0VOX0JJVF9DT1VOVCA8IDE2KSwgd2hlcmVhcyB0aGUgZHJpdmVyIGNvZGUKPiA+ID4gPiA+
IGFzc3VtZXMgdGhlIHBlcmlwaGVyYWwgY2FyZXMgYWJvdXQgdGhlIGxlYXN0LXNpZ25pZmljYW50
IGJpdHMuCj4gPiA+ID4gPiAKPiA+ID4gPiA+IFRlc3Rpbmcgd2FzIGRvbmUgZnJvbSB3aXRoaW4g
Q2hyb21lIE9TJ3MgYnVpbGQgZW52aXJvbm1lbnQgd2hlbiB0aGUKPiA+ID4gPiA+IHBhdGNoIGlz
IGJhY2twb3J0ZWQgdG8gNS40ICh0aGUgdmVyc2lvbiB3ZSBhcmUgbmV3bHkgdGFyZ2V0aW5nIGZv
ciB0aGUKPiA+ID4gPiA+IFBpeGVsYm9vayk7IGZvciB0aGUgcmVjb3JkOgo+ID4gPiA+ID4gICAg
JCBlbWVyZ2UtZXZlLWtlcm5lbG5leHQgc3lzLWtlcm5lbC9jaHJvbWVvcy1rZXJuZWwtNV80ICYm
IFwKPiA+ID4gPiA+ICAgICAgIC4vdXBkYXRlX2tlcm5lbC5zaCAtLXJlbW90ZT0kSVAKPiA+ID4g
PiA+IAo+ID4gPiA+ID4gSSB1c2VkIGAvc3lzL2tlcm5lbC9kZWJ1Zy9kcmkvMC9lRFAtMS9pOTE1
X2RwY2RgIG9uIG15IGxhcHRvcCB0bwo+ID4gPiA+ID4gdmVyaWZ5Cj4gPiA+ID4gPiB0aGF0IHRo
ZSByZWdpc3RlcnMgd2VyZSBiZWluZyBzZXQgYWNjb3JkaW5nIHRvIHdoYXQgdGhlIGFjdHVhbAo+
ID4gPiA+ID4gaGFyZHdhcmUKPiA+ID4gPiA+IGV4cGVjdHM7IEkgYWxzbyBvYnNlcnZlIHRoYXQg
dGhlIGJhY2tsaWdodCBpcyBub3RpY2VhYmx5IGJyaWdodGVyIHdpdGgKPiA+ID4gPiA+IHRoaXMg
cGF0Y2guCj4gPiA+ID4gCj4gPiA+ID4gSXQncyB1bmNsZWFyIHRvIG1lIHdoYXQga2VybmVsIHZl
cnNpb24gdGhpcyBpcyBhZ2FpbnN0LCBhbmQgd2hhdCB5b3UndmUKPiA+ID4gPiBhY3R1YWxseSB0
ZXN0ZWQuCj4gPiA+ID4gCj4gPiA+ID4gSGF2ZSB5b3UgdHJpZWQgdjUuNyBrZXJuZWwgd2l0aCBM
eXVkZSdzIGZkZTcyNjZmYjJmNiAoImRybS9pOTE1OiBGaXggZURQCj4gPiA+ID4gRFBDRCBhdXgg
bWF4IGJhY2tsaWdodCBjYWxjdWxhdGlvbnMiKT8KPiA+ID4gPiAKPiA+ID4gPiBJIGp1c3Qgd2Fu
dCB0byBtYWtlIHN1cmUgeW91J3ZlIHRlc3RlZCB3aXRoIGFsbCB0aGUgcmVsZXZhbnQgZml4ZXMK
PiA+ID4gPiBiZWZvcmUgYWRkaW5nIHF1aXJrcy4KPiA+ID4gPiAKPiA+ID4gPiBCUiwKPiA+ID4g
PiBKYW5pLgo+ID4gPiA+IAo+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogS2V2aW4gQ2hvd3NraSA8
Y2hvd3NraUBjaHJvbWl1bS5vcmc+Cj4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+IAo+ID4gPiA+ID4g
IC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1eF9iYWNrbGlnaHQuYyB8IDM0Cj4gPiA+
ID4gPiArKysrKysrKysrKysrKysrKysrCj4gPiA+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9xdWlya3MuYyAgIHwgMTMgKysrKysrKwo+ID4gPiA+ID4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgICB8ICAxICsKPiA+ID4gPiA+ICAz
IGZpbGVzIGNoYW5nZWQsIDQ4IGluc2VydGlvbnMoKykKPiA+ID4gPiA+IAo+ID4gPiA+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4X2JhY2ts
aWdodC5jCj4gPiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBf
YXV4X2JhY2tsaWdodC5jCj4gPiA+ID4gPiBpbmRleCBhY2JkN2ViNjZjYmUzLi45OWM5OGYyMTcz
NTZkIDEwMDY0NAo+ID4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcF9hdXhfYmFja2xpZ2h0LmMKPiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4X2JhY2tsaWdodC5jCj4gPiA+ID4gPiBAQCAtOTEsNiAr
OTEsMjMgQEAgc3RhdGljIHUzMiBpbnRlbF9kcF9hdXhfZ2V0X2JhY2tsaWdodChzdHJ1Y3QKPiA+
ID4gPiA+IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yKQo+ID4gPiA+ID4gICAgICAgaWYgKGlu
dGVsX2RwLT5lZHBfZHBjZFsyXSAmCj4gPiA+ID4gPiBEUF9FRFBfQkFDS0xJR0hUX0JSSUdIVE5F
U1NfQllURV9DT1VOVCkKPiA+ID4gPiA+ICAgICAgICAgICAgICAgbGV2ZWwgPSAocmVhZF92YWxb
MF0gPDwgOCB8IHJlYWRfdmFsWzFdKTsKPiA+ID4gPiA+IAo+ID4gPiA+ID4gKyAgICAgaWYgKGk5
MTUtPnF1aXJrcyAmIFFVSVJLX1NISUZUX0VEUF9CQUNLTElHSFRfQlJJR0hUTkVTUykgewo+ID4g
PiA+ID4gKyAgICAgICAgICAgICBpZiAoIWRybV9kcF9kcGNkX3JlYWRiKCZpbnRlbF9kcC0+YXV4
LAo+ID4gPiA+ID4gRFBfRURQX1BXTUdFTl9CSVRfQ09VTlQsCj4gPiA+ID4gPiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJnJlYWRfdmFsWzBdKSkgewo+ID4g
PiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIERSTV9ERUJVR19LTVMoIkZhaWxlZCB0byByZWFk
IERQQ0QgcmVnaXN0ZXIKPiA+ID4gPiA+IDB4JXhcbiIsCj4gPiA+ID4gPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIERQX0VEUF9QV01HRU5fQklUX0NPVU5UKTsKPiA+ID4g
PiA+ICsgICAgICAgICAgICAgICAgICAgICByZXR1cm4gMDsKPiA+ID4gPiA+ICsgICAgICAgICAg
ICAgfQo+ID4gPiA+ID4gKyAgICAgICAgICAgICAvLyBPbmx5IGJpdHMgNDowIGFyZSB1c2VkLCA3
OjUgYXJlIHJlc2VydmVkLgo+ID4gPiA+ID4gKyAgICAgICAgICAgICByZWFkX3ZhbFswXSA9IHJl
YWRfdmFsWzBdICYgMHgxRjsKPiA+ID4gPiA+ICsgICAgICAgICAgICAgaWYgKHJlYWRfdmFsWzBd
ID4gMTYpIHsKPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICBEUk1fREVCVUdfS01TKCJJ
bnZhbGlkIERQX0VEUF9QV05HRU5fQklUX0NPVU5UCj4gPiA+ID4gPiAweCVYLCBleHBlY3RlZCBh
dCBtb3N0IDE2XG4iLAo+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHJlYWRfdmFsWzBdKTsKPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAg
ICByZXR1cm4gMDsKPiA+ID4gPiA+ICsgICAgICAgICAgICAgfQo+ID4gPiA+ID4gKyAgICAgICAg
ICAgICBsZXZlbCA+Pj0gMTYgLSByZWFkX3ZhbFswXTsKPiA+ID4gPiA+ICsgICAgIH0KPiA+ID4g
PiA+ICsKPiA+ID4gPiA+ICAgICAgIHJldHVybiBsZXZlbDsKPiA+ID4gPiA+ICB9Cj4gPiA+ID4g
PiAKPiA+ID4gPiA+IEBAIC0xMDYsNiArMTIzLDIzIEBAIGludGVsX2RwX2F1eF9zZXRfYmFja2xp
Z2h0KGNvbnN0IHN0cnVjdAo+ID4gPiA+ID4gZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqY29ubl9zdGF0
ZSwgdTMyIGxldgo+ID4gPiA+ID4gICAgICAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUg
PSBkcF90b19pOTE1KGludGVsX2RwKTsKPiA+ID4gPiA+ICAgICAgIHU4IHZhbHNbMl0gPSB7IDB4
MCB9Owo+ID4gPiA+ID4gCj4gPiA+ID4gPiArICAgICBpZiAoaTkxNS0+cXVpcmtzICYgUVVJUktf
U0hJRlRfRURQX0JBQ0tMSUdIVF9CUklHSFRORVNTKSB7Cj4gPiA+ID4gPiArICAgICAgICAgICAg
IGlmICghZHJtX2RwX2RwY2RfcmVhZGIoJmludGVsX2RwLT5hdXgsCj4gPiA+ID4gPiBEUF9FRFBf
UFdNR0VOX0JJVF9DT1VOVCwKPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAmdmFsc1swXSkpIHsKPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAg
ICAgICBEUk1fREVCVUdfS01TKCJGYWlsZWQgdG8gd3JpdGUgYXV4IGJhY2tsaWdodAo+ID4gPiA+
ID4gbGV2ZWw6IEZhaWxlZCB0byByZWFkIERQQ0QgcmVnaXN0ZXIgMHgleFxuIiwKPiA+ID4gPiA+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBEUF9FRFBfUFdNR0VOX0JJ
VF9DT1VOVCk7Cj4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgcmV0dXJuOwo+ID4gPiA+
ID4gKyAgICAgICAgICAgICB9Cj4gPiA+ID4gPiArICAgICAgICAgICAgIC8vIE9ubHkgYml0cyA0
OjAgYXJlIHVzZWQsIDc6NSBhcmUgcmVzZXJ2ZWQuCj4gPiA+ID4gPiArICAgICAgICAgICAgIHZh
bHNbMF0gPSB2YWxzWzBdICYgMHgxRjsKPiA+ID4gPiA+ICsgICAgICAgICAgICAgaWYgKHZhbHNb
MF0gPiAxNikgewo+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIERSTV9ERUJVR19LTVMo
IkZhaWxlZCB0byB3cml0ZSBhdXggYmFja2xpZ2h0Cj4gPiA+ID4gPiBsZXZlbDogSW52YWxpZCBE
UF9FRFBfUFdOR0VOX0JJVF9DT1VOVCAweCVYLCBleHBlY3RlZCBhdCBtb3N0IDE2XG4iLAo+ID4g
PiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZhbHNb
MF0pOwo+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIHJldHVybjsKPiA+ID4gPiA+ICsg
ICAgICAgICAgICAgfQo+ID4gPiA+ID4gKyAgICAgICAgICAgICBsZXZlbCA8PD0gKDE2IC0gdmFs
c1swXSkgJiAweEZGRkY7Cj4gPiA+ID4gPiArICAgICB9Cj4gPiA+ID4gPiArCj4gPiA+ID4gPiAg
ICAgICB2YWxzWzBdID0gbGV2ZWw7Cj4gPiA+ID4gPiAKPiA+ID4gPiA+ICAgICAgIC8qIFdyaXRl
IHRoZSBNU0IgYW5kL29yIExTQiAqLwo+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcXVpcmtzLmMKPiA+ID4gPiA+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9xdWlya3MuYwo+ID4gPiA+ID4gaW5kZXggNDZiZWIxNTVk
ODM1Zi4uNjNiMjdkNDliMjg2NCAxMDA2NDQKPiA+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcXVpcmtzLmMKPiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcXVpcmtzLmMKPiA+ID4gPiA+IEBAIC01Myw2ICs1Mywx
NiBAQCBzdGF0aWMgdm9pZCBxdWlya19pbmNyZWFzZV9kZGlfZGlzYWJsZWRfdGltZShzdHJ1Y3QK
PiA+ID4gPiA+IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gPiA+ID4gPiAgICAgICBkcm1faW5m
bygmaTkxNS0+ZHJtLCAiQXBwbHlpbmcgSW5jcmVhc2UgRERJIERpc2FibGVkIHF1aXJrXG4iKTsK
PiA+ID4gPiA+ICB9Cj4gPiA+ID4gPiAKPiA+ID4gPiA+ICsvKgo+ID4gPiA+ID4gKyAqIFNvbWUg
ZURQIGJhY2tsaWdodCBoYXJkd2FyZSB1c2VzIHRoZSBtb3N0LXNpZ25pZmljYW50IGJpdHMgb2Yg
dGhlCj4gPiA+ID4gPiBicmlnaHRuZXNzCj4gPiA+ID4gPiArICogcmVnaXN0ZXIsIHNvIGJyaWdo
dG5lc3MgdmFsdWVzIG11c3QgYmUgc2hpZnRlZCBmaXJzdC4KPiA+ID4gPiA+ICsgKi8KPiA+ID4g
PiA+ICtzdGF0aWMgdm9pZCBxdWlya19zaGlmdF9lZHBfYmFja2xpZ2h0X2JyaWdodG5lc3Moc3Ry
dWN0Cj4gPiA+ID4gPiBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+ID4gPiA+ID4gK3sKPiA+ID4g
PiA+ICsgICAgIGk5MTUtPnF1aXJrcyB8PSBRVUlSS19TSElGVF9FRFBfQkFDS0xJR0hUX0JSSUdI
VE5FU1M7Cj4gPiA+ID4gPiArICAgICBEUk1fSU5GTygiQXBwbHlpbmcgc2hpZnQgZURQIGJhY2ts
aWdodCBicmlnaHRuZXNzIHF1aXJrXG4iKTsKPiA+ID4gPiA+ICt9Cj4gPiA+ID4gPiArCj4gPiA+
ID4gPiAgc3RydWN0IGludGVsX3F1aXJrIHsKPiA+ID4gPiA+ICAgICAgIGludCBkZXZpY2U7Cj4g
PiA+ID4gPiAgICAgICBpbnQgc3Vic3lzdGVtX3ZlbmRvcjsKPiA+ID4gPiA+IEBAIC0xNTYsNiAr
MTY2LDkgQEAgc3RhdGljIHN0cnVjdCBpbnRlbF9xdWlyayBpbnRlbF9xdWlya3NbXSA9IHsKPiA+
ID4gPiA+ICAgICAgIC8qIEFTUm9jayBJVFgqLwo+ID4gPiA+ID4gICAgICAgeyAweDMxODUsIDB4
MTg0OSwgMHgyMjEyLCBxdWlya19pbmNyZWFzZV9kZGlfZGlzYWJsZWRfdGltZSB9LAo+ID4gPiA+
ID4gICAgICAgeyAweDMxODQsIDB4MTg0OSwgMHgyMjEyLCBxdWlya19pbmNyZWFzZV9kZGlfZGlz
YWJsZWRfdGltZSB9LAo+ID4gPiA+ID4gKwo+ID4gPiA+ID4gKyAgICAgLyogR29vZ2xlIFBpeGVs
Ym9vayAqLwo+ID4gPiA+ID4gKyAgICAgeyAweDU5MUUsIDB4ODA4NiwgMHgyMjEyLCBxdWlya19z
aGlmdF9lZHBfYmFja2xpZ2h0X2JyaWdodG5lc3MKPiA+ID4gPiA+IH0sCj4gPiA+ID4gPiAgfTsK
PiA+ID4gPiA+IAo+ID4gPiA+ID4gIHZvaWQgaW50ZWxfaW5pdF9xdWlya3Moc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUpCj4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuaAo+ID4gPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5oCj4gPiA+ID4gPiBpbmRleCBlNGY3ZjY1MTg5NDViLi5jYzkzYmVkZTRmYWI4IDEwMDY0NAo+
ID4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+ID4gPiA+ID4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+ID4gPiA+ID4gQEAgLTUyNSw2
ICs1MjUsNyBAQCBzdHJ1Y3QgaTkxNV9wc3Igewo+ID4gPiA+ID4gICNkZWZpbmUgUVVJUktfUElO
X1NXSVpaTEVEX1BBR0VTICgxPDw1KQo+ID4gPiA+ID4gICNkZWZpbmUgUVVJUktfSU5DUkVBU0Vf
VDEyX0RFTEFZICgxPDw2KQo+ID4gPiA+ID4gICNkZWZpbmUgUVVJUktfSU5DUkVBU0VfRERJX0RJ
U0FCTEVEX1RJTUUgKDE8PDcpCj4gPiA+ID4gPiArI2RlZmluZSBRVUlSS19TSElGVF9FRFBfQkFD
S0xJR0hUX0JSSUdIVE5FU1MgKDE8PDgpCj4gPiA+ID4gPiAKPiA+ID4gPiA+ICBzdHJ1Y3QgaW50
ZWxfZmJkZXY7Cj4gPiA+ID4gPiAgc3RydWN0IGludGVsX2ZiY193b3JrOwo+ID4gPiA+IAo+ID4g
PiA+IC0tCj4gPiA+ID4gSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENl
bnRlcgotLSAKU2luY2VyZWx5LAogICAgICBMeXVkZSBQYXVsIChzaGUvaGVyKQogICAgICBTb2Z0
d2FyZSBFbmdpbmVlciBhdCBSZWQgSGF0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
