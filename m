Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D32A624A4EA
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Aug 2020 19:29:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F3CF6E598;
	Wed, 19 Aug 2020 17:29:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10F826E593
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Aug 2020 17:29:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1597858158;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2KvgaCYohQhokdvpsCdvRkGWCDtbthJZmZ4XIsksp3I=;
 b=c5MarOTrd2bJYZzZMq3R2D0uRNRhzKinI30DnTLnIk6/sVjzpO+HFZ9N+e+HlIx0q3vMVq
 8LPBV04RE3EHj3hGTmPnFdFkbud4RDvocd0Q0FK8nHYY70OQwHgN619sXKI1P3rPBkLOZw
 PC9GerH66E/1yn+TH1CqC68YOW/PyDE=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-233-aFw2JdbvPvmZyPomSbVLsQ-1; Wed, 19 Aug 2020 13:29:00 -0400
X-MC-Unique: aFw2JdbvPvmZyPomSbVLsQ-1
Received: by mail-qk1-f197.google.com with SMTP id 195so15922821qke.14
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Aug 2020 10:29:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
 :in-reply-to:references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=2KvgaCYohQhokdvpsCdvRkGWCDtbthJZmZ4XIsksp3I=;
 b=TFleYedqcMskfT8dWcjD+O7897o6ziX6mu8mXasjo1F8hj3cNRTJNfcbjwtWZe9ZLl
 EHrddDNRozp8x9S9EL3eeKf1ZFJx3/uDwSPFQZMilTRuPJCAmaBSU253vLPvF/L2mKS9
 H7uxvV4yc0y6g8YX02C1tph2rf/bXliAGZ9iBRgV9kfx7ngbilbY6ldJSQrYhUo8ZRQ9
 7YyCpzI2Q8I2E3h7DL/gLDXbRCIIqVozjtmKa7OaXgms6P7DrFBpaDxrQ0KSSXOAHnJ6
 0G2V1SOiDaKM/95hRO4lCWVx+XyUVZRQLAD7BqMu1AijXSbzIpoRhFvtVZbJdjfEeIjT
 ASDg==
X-Gm-Message-State: AOAM533D/IyZeutiOWjcDFVnzW78i38MxIonXPRcLXvXBoY1nUFYYceG
 MvKFo+Sr2iKI2MV4BIuMdoWvZJUz6uXYD4W/oNcFxi+3RSf1KKPzKpFPqaXquz9M17Nz7V6lBD8
 9nurRvJ5ICOILeVNVTSeTF5sdeTca
X-Received: by 2002:aed:2f44:: with SMTP id l62mr22414142qtd.207.1597858140093; 
 Wed, 19 Aug 2020 10:29:00 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxIqzNjwxOOu6zLyJjLqOnz+3XI2ZOYHaFSMcNnljH/NqEhnUQEvbxwdlKjcIiBIoyuwTy9hw==
X-Received: by 2002:aed:2f44:: with SMTP id l62mr22414117qtd.207.1597858139794; 
 Wed, 19 Aug 2020 10:28:59 -0700 (PDT)
Received: from Whitewolf.lyude.net
 (pool-108-49-102-102.bstnma.fios.verizon.net. [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id t8sm28688880qtc.50.2020.08.19.10.28.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Aug 2020 10:28:58 -0700 (PDT)
Message-ID: <e949791af3a41321c10bec8b862914e3c9952f4f.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Sean Paul <sean@poorly.run>
Date: Wed, 19 Aug 2020 13:28:57 -0400
In-Reply-To: <20200819151547.GB46474@art_vandelay>
References: <20200811200457.134743-1-lyude@redhat.com>
 <20200811200457.134743-14-lyude@redhat.com>
 <20200819151547.GB46474@art_vandelay>
Organization: Red Hat
User-Agent: Evolution 3.36.5 (3.36.5-1.fc32)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [RFC 13/20] drm/i915/dp: Extract
 drm_dp_downstream_read_info()
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
Cc: David Airlie <airlied@linux.ie>, nouveau@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 open list <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIwLTA4LTE5IGF0IDExOjE1IC0wNDAwLCBTZWFuIFBhdWwgd3JvdGU6Cj4gT24g
VHVlLCBBdWcgMTEsIDIwMjAgYXQgMDQ6MDQ6NTBQTSAtMDQwMCwgTHl1ZGUgUGF1bCB3cm90ZToK
PiA+IFdlJ3JlIGdvaW5nIHRvIGJlIGRvaW5nIHRoZSBzYW1lIHByb2JpbmcgcHJvY2VzcyBpbiBu
b3V2ZWF1IGZvcgo+ID4gZGV0ZXJtaW5pbmcgZG93bnN0cmVhbSBEUCBwb3J0IGNhcGFiaWxpdGll
cywgc28gbGV0J3MgZGVkdXBsaWNhdGUgdGhlCj4gPiB3b3JrIGJ5IG1vdmluZyBpOTE1J3MgY29k
ZSBmb3IgaGFuZGxpbmcgdGhpcyBpbnRvIGEgc2hhcmVkIGhlbHBlcjoKPiA+IGRybV9kcF9kb3du
c3RyZWFtX3JlYWRfaW5mbygpLgo+ID4gCj4gPiBOb3RlIHRoYXQgd2hlbiB3ZSBkbyB0aGlzLCB3
ZSBhbHNvIGRvIG1ha2Ugc29tZSBmdW5jdGlvbmFsIGNoYW5nZXMgd2hpbGUKPiA+IHdlJ3JlIGF0
IGl0Ogo+ID4gKiBXZSBhbHdheXMgY2xlYXIgdGhlIGRvd25zdHJlYW0gcG9ydCBpbmZvIGJlZm9y
ZSB0cnlpbmcgdG8gcmVhZCBpdCwKPiA+ICAganVzdCB0byBtYWtlIHRoaW5ncyBlYXNpZXIgZm9y
IHRoZSBjYWxsZXIKPiA+ICogV2Ugc2tpcCByZWFkaW5nIGRvd25zdHJlYW0gcG9ydCBpbmZvIGlm
IHRoZSBEUENEIGluZGljYXRlcyB0aGF0IHdlCj4gPiAgIGRvbid0IHN1cHBvcnQgZG93bnN0cmVh
bSBwb3J0IGluZm8KPiA+ICogV2Ugb25seSByZWFkIGFzIG1hbnkgYnl0ZXMgYXMgbmVlZGVkIGZv
ciB0aGUgcmVwb3J0ZWQgbnVtYmVyIG9mCj4gPiAgIGRvd25zdHJlYW0gcG9ydHMsIG5vIHNlbnNl
IGluIHJlYWRpbmcgdGhlIHdob2xlIHRoaW5nIGV2ZXJ5IHRpbWUKPiA+IAo+ID4gU2lnbmVkLW9m
Zi1ieTogTHl1ZGUgUGF1bCA8bHl1ZGVAcmVkaGF0LmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMv
Z3B1L2RybS9kcm1fZHBfaGVscGVyLmMgICAgICAgICB8IDMyICsrKysrKysrKysrKysrKysrKysr
KysrKysKPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCAxNCAr
Ky0tLS0tLS0tLQo+ID4gIGluY2x1ZGUvZHJtL2RybV9kcF9oZWxwZXIuaCAgICAgICAgICAgICB8
ICAzICsrKwo+ID4gIDMgZmlsZXMgY2hhbmdlZCwgMzcgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRp
b25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX2hlbHBl
ci5jCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZHBfaGVscGVyLmMKPiA+IGluZGV4IDRjMjFj
ZjY5ZGFkNWEuLjk3MDNiMzM1OTljM2IgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
ZHJtX2RwX2hlbHBlci5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX2hlbHBlci5j
Cj4gPiBAQCAtNDIzLDYgKzQyMywzOCBAQCBib29sIGRybV9kcF9zZW5kX3JlYWxfZWRpZF9jaGVj
a3N1bShzdHJ1Y3QgZHJtX2RwX2F1eAo+ID4gKmF1eCwKPiA+ICB9Cj4gPiAgRVhQT1JUX1NZTUJP
TChkcm1fZHBfc2VuZF9yZWFsX2VkaWRfY2hlY2tzdW0pOwo+ID4gIAo+ID4gKy8qKgo+ID4gKyAq
IGRybV9kcF9kb3duc3RyZWFtX3JlYWRfaW5mbygpIC0gcmVhZCBEUENEIGRvd25zdHJlYW0gcG9y
dCBpbmZvIGlmCj4gPiBhdmFpbGFibGUKPiA+ICsgKiBAYXV4OiBEaXNwbGF5UG9ydCBBVVggY2hh
bm5lbAo+ID4gKyAqIEBkcGNkOiBBIGNhY2hlZCBjb3B5IG9mIHRoZSBwb3J0J3MgRFBDRAo+ID4g
KyAqIEBkb3duc3RyZWFtX3BvcnRzOiBidWZmZXIgdG8gc3RvcmUgdGhlIGRvd25zdHJlYW0gcG9y
dCBpbmZvIGluCj4gPiArICoKPiA+ICsgKiBSZXR1cm5zOiAwIGlmIGVpdGhlciB0aGUgZG93bnN0
cmVhbSBwb3J0IGluZm8gd2FzIHJlYWQgc3VjY2Vzc2Z1bGx5IG9yCj4gPiArICogdGhlcmUgd2Fz
IG5vIGRvd25zdHJlYW0gaW5mbyB0byByZWFkLCBvciBhIG5lZ2F0aXZlIGVycm9yIGNvZGUKPiA+
IG90aGVyd2lzZS4KPiA+ICsgKi8KPiA+ICtpbnQgZHJtX2RwX2Rvd25zdHJlYW1fcmVhZF9pbmZv
KHN0cnVjdCBkcm1fZHBfYXV4ICphdXgsCj4gPiArCQkJCWNvbnN0IHU4IGRwY2RbRFBfUkVDRUlW
RVJfQ0FQX1NJWkVdLAo+ID4gKwkJCQl1OCBkb3duc3RyZWFtX3BvcnRzW0RQX01BWF9ET1dOU1RS
RUFNX1BPUlRTXSkKPiA+ICt7Cj4gPiArCWludCByZXQ7Cj4gPiArCXU4IGxlbjsKPiA+ICsKPiA+
ICsJbWVtc2V0KGRvd25zdHJlYW1fcG9ydHMsIDAsIERQX01BWF9ET1dOU1RSRUFNX1BPUlRTKTsK
PiA+ICsKPiA+ICsJLyogTm8gZG93bnN0cmVhbSBpbmZvIHRvIHJlYWQgKi8KPiA+ICsJaWYgKCFk
cm1fZHBfaXNfYnJhbmNoKGRwY2QpIHx8Cj4gPiArCSAgICBkcGNkW0RQX0RQQ0RfUkVWXSA8IERQ
X0RQQ0RfUkVWXzEwIHx8Cj4gPiArCSAgICAhKGRwY2RbRFBfRE9XTlNUUkVBTVBPUlRfUFJFU0VO
VF0gJiBEUF9EV05fU1RSTV9QT1JUX1BSRVNFTlQpKQo+ID4gKwkJcmV0dXJuIDA7Cj4gPiArCj4g
PiArCWxlbiA9IChkcGNkW0RQX0RPV05fU1RSRUFNX1BPUlRfQ09VTlRdICYgRFBfUE9SVF9DT1VO
VF9NQVNLKSAqIDQ7Cj4gCj4gSSdtIGhhdmluZyBhIGhhcmQgdGltZSByYXRpb25hbGl6aW5nIERQ
X01BWF9ET1dOU1RSRUFNX1BPUlRTIGJlaW5nIDE2LCBidXQKPiBvbmx5Cj4gaGF2aW5nIDQgcG9y
dHMgd29ydGggb2YgZGF0YSBpbiB0aGUgRFBfRE9XTlNUUkVBTV9QT1JUXyogcmVnaXN0ZXJzLiBE
byB5b3UKPiBrbm93Cj4gd2hhdCdzIHN1cHBvc2VkIHRvIGhhcHBlbiBpZiBkcGNkW0RQX0RPV05f
U1RSRUFNX1BPUlRfQ09VTlRdIGlzID4gND8KCkkgdGhvdWdodCBJIGhhZCBhZGRyZXNzZWQgdGhp
cyBiaXQgYnV0IEkgZ3Vlc3MgSSBtaXNzZWQgc29tZSBwYXJ0cyBoZXJlLgoKU287IHRoZXJlJ3Mg
YWN0dWFsbHkgdHdvIGRpZmZlcmVudCBwb3NzaWJsZSBsZW5ndGhzIGZvciBob3cgbG9uZyBlYWNo
IGRvd25zdHJlYW0KcG9ydCdzIGNhcGFiaWxpdGllcyBjYW4gYmU6IDEgYnl0ZSBsb25nIChpZiBE
RVRBSUxFRF9DQVBfSU5GT19BVkFJTEFCTEUgaW4gdGhlCkRPV05fU1RSRUFNX1BPUlRfUFJFU0VO
VCBpcyAwLCBlLmcuIDAwNWggYml0IDQpLCBhbmQgNCBieXRlcyBsb25nIGlmIHRoYXQgYml0IGlz
CjEuIFdoYXQncyB1bmZvcnR1bmF0ZWx5IG5vdCBhcyBjbGVhciwgaXMgd2hldGhlciBvciBub3Qg
MSBieXRlIGxvbmcgY2FwIGZpZWxkcwptZWFuICJlYWNoIHBvcnQgaGFzIGZvdXIgYnl0ZXMsIGJ1
dCBvbmx5IG9uZSBieXRlIGlzIHVzZWQiIG9yICJlYWNoIHBvcnQgdHJ1bHkKb25seSBoYXMgb25l
IGJ5dGUiLiBUaGUgRFAgc3BlYyBzYXlzOgoKICAgREZQWF9DQVAKICAgMSBieXRlL0RGUAogICBY
ID0gREZQIG51bWJlci4gUG9ydF94IGNhcGFiaWxpdHkgaXMgc3RvcmVkIGF0IHRoZSBERlAgbnVt
YmVy4oCZcyBhZGRyZXNzIHBsdXMKICAgODBoCgpXaGljaCBhdCBmaXJzdCBzZWVtcyB0byBpbXBs
eSB0aGF0IGVhY2ggY2FwIGlzIGF0IDgwICsgWCwgZS5nLiBvbmx5IG9uZSBieXRlCmxvbmcuIEhv
d2V2ZXIsIHRoZSBleHBsYW5hdGlvbiBmb3Igd2hlbiBERVRBSUxFRF9DQVBfSU5GT19BVkFJTEFC
TEUgPT0gMSBzYXlzCmFsbW9zdCB0aGUgc2FtZSB0aGluZzoKCiAgIERGUFhfQ0FQCiAgIFggPSBE
RlAgbnVtYmVyLiBQb3J0X3ggY2FwYWJpbGl0eSBpcyBzdG9yZWQgYXQgdGhlIERGUCBudW1iZXLi
gJlzIGFkZHJlc3MgcGx1cwogICA4MGguCgpBbHRob3VnaCByaWdodCBhYm92ZSB0aGF0IHVubGlr
ZSB0aGUgcHJldmlvdXMgc2VjdGlvbiwgdGhleSBtZW50aW9uIHRoYXQgREZQMApnb2VzIGZyb20g
ODAtODMsIERGUDEgODQtODcsIGV0Yy4uLgoKTm90IGVudGlyZWx5IHN1cmUgd2hhdCB0byB0aGlu
ayBoZXJlIHNpbmNlIEkgZG9uJ3QgcmVhbGx5IGhhdmUgYW55IGRldmljZXMgKG5vcgpkbyBJIHRo
aW5rIEkndmUgZXZlciBzZWVuIGFueSkgdGhhdCBoYXZlIG1vcmUgdGhlbiBvbmUgREZQLiBBcyB3
ZWxsLCBmb3IgdGhlCmNhc2Ugd2hlcmUgd2UgaGF2ZSBtdWx0aXBsZSBERlBzICh3aGljaCBhY2Nv
cmRpbmcgdG8gdGhlIHNwZWMgYXBwZWFycyB0byBvbmx5IGJlCnNvbWV0aGluZyB3ZSBuZWVkIHRv
IHdvcnJ5IGFib3V0IGZvciBTU1QpIHRoZXkncmUgbm90IHJlYWxseSBleHBsaWNpdCBvbiBob3cg
dG8KY29tYmluZSB0aGUgZG93bnN0cmVhbSBjYXBhYmlsaXRpZXMgZnJvbSBlYWNoIERGUC4gTXkg
Z3Vlc3MgaXMgbWF5YmUgeW91CmRldGVybWluZSB0aGUgbWF4IGRvd25zdHJlYW0gY2xvY2sgYW5k
IGJwcCBmcm9tIHRoZSBsb3dlc3QgY2xvY2sgbGltaXRzCmFkdmVydGlzZWQgYWNyb3NzIGVhY2gg
cG9ydD8KKGlmIHlvdSBoYXZlIGEgRFAgZGV2aWNlIHdpdGggbXVsdGlwbGUgREZQcyBhbmQgY2Fu
IHRlc3QgdGhpcywgdGhhdCB3b3VsZCByb2NrCjopLCBidXQgSSBoYXZlIGEgZmVlbGluZyB5b3Ug
cHJvYmFibHkgZG9uJ3QgaGF2ZSBvbmUgZWl0aGVyKQo+IAo+IFNlYW4KPiAKPiA+ICsJcmV0ID0g
ZHJtX2RwX2RwY2RfcmVhZChhdXgsIERQX0RPV05TVFJFQU1fUE9SVF8wLCBkb3duc3RyZWFtX3Bv
cnRzLAo+ID4gKwkJCSAgICAgICBsZW4pOwo+ID4gKwo+ID4gKwlyZXR1cm4gcmV0ID09IGxlbiA/
IDAgOiAtRUlPOwo+ID4gK30KPiA+ICtFWFBPUlRfU1lNQk9MKGRybV9kcF9kb3duc3RyZWFtX3Jl
YWRfaW5mbyk7Cj4gPiArCj4gPiAgLyoqCj4gPiAgICogZHJtX2RwX2Rvd25zdHJlYW1fbWF4X2Ns
b2NrKCkgLSBleHRyYWN0IGJyYW5jaCBkZXZpY2UgbWF4Cj4gPiAgICogICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBwaXhlbCByYXRlIGZvciBsZWdhY3kgVkdBCj4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+ID4gaW5kZXggMWUyOWQzYTAxMjg1Ni4u
OTg0ZTQ5MTk0Y2EzMSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcC5jCj4gPiBAQCAtNDY4NSwxOCArNDY4NSw4IEBAIGludGVsX2RwX2dldF9kcGNkKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHApCj4gPiAgCQkJcmV0dXJuIGZhbHNlOwo+ID4gIAl9Cj4gPiAg
Cj4gPiAtCWlmICghZHJtX2RwX2lzX2JyYW5jaChpbnRlbF9kcC0+ZHBjZCkpCj4gPiAtCQlyZXR1
cm4gdHJ1ZTsgLyogbmF0aXZlIERQIHNpbmsgKi8KPiA+IC0KPiA+IC0JaWYgKGludGVsX2RwLT5k
cGNkW0RQX0RQQ0RfUkVWXSA9PSAweDEwKQo+ID4gLQkJcmV0dXJuIHRydWU7IC8qIG5vIHBlci1w
b3J0IGRvd25zdHJlYW0gaW5mbyAqLwo+ID4gLQo+ID4gLQlpZiAoZHJtX2RwX2RwY2RfcmVhZCgm
aW50ZWxfZHAtPmF1eCwgRFBfRE9XTlNUUkVBTV9QT1JUXzAsCj4gPiAtCQkJICAgICBpbnRlbF9k
cC0+ZG93bnN0cmVhbV9wb3J0cywKPiA+IC0JCQkgICAgIERQX01BWF9ET1dOU1RSRUFNX1BPUlRT
KSA8IDApCj4gPiAtCQlyZXR1cm4gZmFsc2U7IC8qIGRvd25zdHJlYW0gcG9ydCBzdGF0dXMgZmV0
Y2ggZmFpbGVkICovCj4gPiAtCj4gPiAtCXJldHVybiB0cnVlOwo+ID4gKwlyZXR1cm4gZHJtX2Rw
X2Rvd25zdHJlYW1fcmVhZF9pbmZvKCZpbnRlbF9kcC0+YXV4LCBpbnRlbF9kcC0+ZHBjZCwKPiA+
ICsJCQkJCSAgIGludGVsX2RwLT5kb3duc3RyZWFtX3BvcnRzKSA9PSAwOwo+ID4gIH0KPiA+ICAK
PiA+ICBzdGF0aWMgYm9vbAo+ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2RybV9kcF9oZWxw
ZXIuaCBiL2luY2x1ZGUvZHJtL2RybV9kcF9oZWxwZXIuaAo+ID4gaW5kZXggNWMyODE5OTI0ODYy
Ni4uMTM0OWYxNjU2NGFjZSAxMDA2NDQKPiA+IC0tLSBhL2luY2x1ZGUvZHJtL2RybV9kcF9oZWxw
ZXIuaAo+ID4gKysrIGIvaW5jbHVkZS9kcm0vZHJtX2RwX2hlbHBlci5oCj4gPiBAQCAtMTYxMyw2
ICsxNjEzLDkgQEAgaW50IGRybV9kcF9kcGNkX3JlYWRfbGlua19zdGF0dXMoc3RydWN0IGRybV9k
cF9hdXgKPiA+ICphdXgsCj4gPiAgYm9vbCBkcm1fZHBfc2VuZF9yZWFsX2VkaWRfY2hlY2tzdW0o
c3RydWN0IGRybV9kcF9hdXggKmF1eCwKPiA+ICAJCQkJICAgIHU4IHJlYWxfZWRpZF9jaGVja3N1
bSk7Cj4gPiAgCj4gPiAraW50IGRybV9kcF9kb3duc3RyZWFtX3JlYWRfaW5mbyhzdHJ1Y3QgZHJt
X2RwX2F1eCAqYXV4LAo+ID4gKwkJCQljb25zdCB1OCBkcGNkW0RQX1JFQ0VJVkVSX0NBUF9TSVpF
XSwKPiA+ICsJCQkJdTggZG93bnN0cmVhbV9wb3J0c1tEUF9NQVhfRE9XTlNUUkVBTV9QT1JUU10p
Owo+ID4gIGludCBkcm1fZHBfZG93bnN0cmVhbV9tYXhfY2xvY2soY29uc3QgdTggZHBjZFtEUF9S
RUNFSVZFUl9DQVBfU0laRV0sCj4gPiAgCQkJCWNvbnN0IHU4IHBvcnRfY2FwWzRdKTsKPiA+ICBp
bnQgZHJtX2RwX2Rvd25zdHJlYW1fbWF4X2JwYyhjb25zdCB1OCBkcGNkW0RQX1JFQ0VJVkVSX0NB
UF9TSVpFXSwKPiA+IC0tIAo+ID4gMi4yNi4yCj4gPiAKPiA+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBkcmktZGV2ZWwgbWFpbGluZyBsaXN0Cj4g
PiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gPiBodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAotLSAKU2luY2VyZWx5LAogICAg
ICBMeXVkZSBQYXVsIChzaGUvaGVyKQogICAgICBTb2Z0d2FyZSBFbmdpbmVlciBhdCBSZWQgSGF0
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
