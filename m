Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF2954ED25
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2019 18:28:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0D466E8F9;
	Fri, 21 Jun 2019 16:28:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC9E66E8F1
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jun 2019 16:28:01 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id w13so10930235eds.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jun 2019 09:28:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=t9F+QaRt359WCu87ZUdi3DP0mKG2vscXgzM6dBDxLuM=;
 b=NOb/xF037VLpBL/VNmGF3DYM24Rc8YPRP3NMlTNJ8/E3+lRrQAaUlfGTb4bQP4/0hp
 qm0N/AzqirE24JRL0xyRENTJUxP4FzynpKvH/wod6rrmdHPUKM7coIcQsKhciRUp/2R6
 Ld7lh3yggoAeXawFNQack4PORH0/dv+OApI+p5IffVs26srnnm2MJ10Bz/gljLrBr/ey
 AiX43oqf/EoKL9uxG6x3OlF7SxOYT5XpZSAqjrmaEPaEOBIPYJUitonQBitCx9E/HRfB
 7dLcb6ncQpwWdsvoOo/QXFBapQBrTGQB3hbiFz3afVSfEXHOwY2OYPdWPC2FablRIRZx
 Vm4w==
X-Gm-Message-State: APjAAAUIrDb5LwTt8q/6hOvJuDnYwtq8DukSDMAxtcjedteokoYfyHum
 EVIAxp/wqOdMKUb4M92iZFoWkg==
X-Google-Smtp-Source: APXvYqykFtgJLmj7WsNamXKiDemZ1JyKRMyjH/Jc0RCUqb9bLl9/UcghDZVVoctlEivf0LotHVoBrg==
X-Received: by 2002:a50:97ac:: with SMTP id e41mr91059732edb.27.1561134480576; 
 Fri, 21 Jun 2019 09:28:00 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id e12sm970841edb.72.2019.06.21.09.27.59
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 21 Jun 2019 09:27:59 -0700 (PDT)
Date: Fri, 21 Jun 2019 18:27:53 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: christian.koenig@amd.com
Message-ID: <20190621162753.GI12905@phenom.ffwll.local>
References: <20190618115455.1253-1-christian.koenig@amd.com>
 <20190621092022.GB12905@phenom.ffwll.local>
 <46bc08a3-1b84-c819-dbb5-882e95ab23e5@gmail.com>
 <CAKMK7uE6NUujY0ubOYkux-StOxMT-hYhBdAnQJkDsgEkuDjH9g@mail.gmail.com>
 <78db8951-2e62-2a9d-3d87-3b458fbba880@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <78db8951-2e62-2a9d-3d87-3b458fbba880@gmail.com>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent;
 bh=t9F+QaRt359WCu87ZUdi3DP0mKG2vscXgzM6dBDxLuM=;
 b=TAole/SQf277bt1SWB3dQXTjad04B/6QecS+zglVQkkSHCnvAaCeHG7X9nmlVuvzNd
 ko6mfOP6NkpMi57+y8LPYceJ3Zk+HMy9+ltsSxyPzoDptWXFwfm2xIWMlmTQ/FDh/3yo
 FcD8ZELfMoi7j6ZoXrTpUrz/CVcWmyQ25vS3g=
Subject: Re: [Intel-gfx] [PATCH 1/6] dma-buf: add dynamic DMA-buf handling
 v10
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
Cc: dri-devel <dri-devel@lists.freedesktop.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdW4gMjEsIDIwMTkgYXQgMDI6MDY6NTRQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiBBbSAyMS4wNi4xOSB1bSAxMjozMiBzY2hyaWViIERhbmllbCBWZXR0ZXI6Cj4g
PiBPbiBGcmksIEp1biAyMSwgMjAxOSBhdCAxMTo1NSBBTSBDaHJpc3RpYW4gS8O2bmlnCj4gPiA8
Y2tvZW5pZy5sZWljaHR6dW1lcmtlbkBnbWFpbC5jb20+IHdyb3RlOgo+ID4gPiBBbSAyMS4wNi4x
OSB1bSAxMToyMCBzY2hyaWViIERhbmllbCBWZXR0ZXI6Cj4gPiA+ID4gT24gVHVlLCBKdW4gMTgs
IDIwMTkgYXQgMDE6NTQ6NTBQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPiA+ID4g
PiBbU05JUF0KPiA+ID4gPiBJbW8gdGhlIGJlbG93IHNlbWFudGljcyB3b3VsZCBiZSBtdWNoIGNs
ZWFuZXI6Cj4gPiA+ID4gCj4gPiA+ID4gLSBpbnZhbGlkYXRlIG1heSBhZGQgbmV3IGZlbmNlcwo+
ID4gPiA+IC0gaW52YWxpZGF0ZSBfbXVzdF8gdW5tYXAgaXRzIG1hcHBpbmdzCj4gPiA+ID4gLSBh
biB1bm1hcCBtdXN0IHdhaXQgZm9yIGN1cnJlbnQgZmVuY2VzIGJlZm9yZSB0aGUgbWFwcGluZyBj
YW4gYmUKPiA+ID4gPiAgICAgcmVsZWFzZWQuCj4gPiA+ID4gCj4gPiA+ID4gSW1vIHRoZXJlJ3Mg
bm8gcmVhc29uIHdoeSB1bm1hcCBpcyBzcGVjaWFsLCBhbmQgdGhlIG9ubHkgdGhpbmcgd2hlcmUg
d2UKPiA+ID4gPiBkb24ndCB1c2UgZmVuY2VzIHRvIGdhdGUgYWNjZXNzIHRvIHJlc291cmNlcy9t
ZW1vcnkgd2hlbiBpdCdzIGluIHRoZQo+ID4gPiA+IHByb2Nlc3Mgb2YgZ2V0dGluZyBtb3ZlZCBh
cm91bmQuCj4gPiA+IFdlbGwgaW4gZ2VuZXJhbCBJIHdhbnQgdG8gYXZvaWQgd2FpdGluZyBmb3Ig
ZmVuY2VzIGFzIG11Y2ggYXMgcG9zc2libGUuCj4gPiA+IEJ1dCB0aGUga2V5IHBvaW50IGhlcmUg
aXMgdGhhdCB0aGlzIGFjdHVhbGx5IHdvbid0IGhlbHAgd2l0aCB0aGUgcHJvYmxlbQo+ID4gPiBJ
J20gdHJ5aW5nIHRvIHNvbHZlLgo+ID4gVGhlIHBvaW50IG9mIHVzaW5nIGZlbmNlcyBpcyBub3Qg
dG8gd2FpdCBvbiB0aGVtLiBJIG1lYW4gaWYgeW91IGhhdmUKPiA+IHRoZSBzaGFkb3cgdHRtIGJv
IG9uIHRoZSBscnUgeW91IGFsc28gZG9uJ3Qgd2FpdCBmb3IgdGhhdCBmZW5jZSB0bwo+ID4gcmV0
aXJlIGJlZm9yZSB5b3UgaW5zZXJ0IHRoZSBzaGFkb3cgYm8gb250byB0aGUgbHJ1LiBZb3UgZG9u
J3QgZXZlbgo+ID4gd2FpdCB3aGVuIHlvdSB0cnkgdG8gdXNlIHRoYXQgbWVtb3J5IGFnYWluLCB5
b3UganVzdCBwaXBlbGluZSBtb3JlCj4gPiBzdHVmZiBvbiB0b3AuCj4gCj4gQ29ycmVjdC4KPiAK
PiBPaywgaWYgSSB1bmRlcnN0YW5kIGl0IGNvcnJlY3RseSB5b3VyIHN1Z2dlc3Rpb24gaXMgdG8g
bW92ZSB0aGUKPiByZXNwb25zaWJpbGl0eSB0byBkZWxheSBkZXN0cnVjdGlvbiBvZiBtYXBwaW5n
cyB1bnRpbCB0aGV5IGFyZSBubyBsb25nZXIKPiB1c2VkIGZyb20gdGhlIGltcG9ydGVyIHRvIHRo
ZSBleHBvcnRlciBiYXNlZCBvbiB0aGUgZmVuY2VzIG9mIHRoZQo+IHJlc2VydmF0aW9uIG9iamVj
dC4KPiAKPiBJIHNlcmlvdXNseSBkb24ndCB0aGluayB0aGF0IHRoaXMgaXMgYSBnb29kIGlkZWEg
YmVjYXVzZSB5b3UgbmVlZCB0byBtb3ZlCj4gdGhlIHRyYWNraW5nIHdobyBpcyB1c2luZyB3aGlj
aCBtYXBwaW5nIGZyb20gdGhlIGltcG9ydGVyIHRvIHRoZSBleHBvcnRlciBhcwo+IHdlbGwuIFNv
IGR1cGxpY2F0aW5nIHF1aXRlIGEgYnVuY2ggb2YgaG91c2VrZWVwaW5nLgo+IAo+IE9uIHRoZSBv
dGhlciBoYW5kIHRoYXQgd2UgaGF2ZSB0aGlzIGhvdXNlIGtlZXBpbmcgaW4gdGhlIGltcG9ydGVy
IGJlY2F1c2Ugd2UKPiBnZXQgaXQgZm9yIGZyZWUgZnJvbSBUVE0uIEJ1dCBJIGNhbid0IHRoaW5r
IG9mIGEgd2F5IG90aGVyIG1lbW9yeSBtYW5hZ2VtZW50Cj4gYmFja2VuZHMgd291bGQgZG8gdGhp
cyB3aXRob3V0IGtlZXBpbmcgdGhlIHNnIHRhYmxlIGFyb3VuZCBlaXRoZXIuCj4gCj4gPiBJbiB0
aGUgZW5kIGl0IHdpbGwgYmUgdGhlIGV4YWN0IHNhbWUgYW1vdW50IG9mIGZlbmNlcyBhbmQgd2Fp
dGluZyBpbgo+ID4gYm90aCBzb2x1dGlvbnMuIE9uZSBqdXN0IGxlYWtzIGxlc3MgaW1wbGVtZW50
YXRpb250IGRldGFpbHMgKGF0IGxlYXN0Cj4gPiBpbiBteSBvcGluaW9uKSBhY3Jvc3MgdGhlIGRt
YS1idWYgYm9yZGVyLgo+IAo+IEkgYWdyZWUgdGhhdCBsZWFraW5nIGltcGxlbWVudGF0aW9uIGRl
dGFpbHMgb3ZlciB0aGUgRE1BLWJ1ZiBib3JkZXIgaXMgYSBiYWQKPiBpZGVhLgo+IAo+IEJ1dCBJ
IGNhbiBhc3N1cmUgeW91IHRoYXQgdGhpcyBoYXMgYWJzb2x1dGVseSBub3RoaW5nIHRvZG8gd2l0
aCB0aGUgZ2hvc3QKPiBvYmplY3QgaGFuZGxpbmcgb2YgVFRNLiBnaG9zdCBvYmplY3RzIGRvZXNu
J3QgZXZlbiByZWNlaXZlIGFuIGludmFsaWRhdGlvbiwKPiB0aGV5IGFyZSBqdXN0IGEgcG9zc2li
bGUgaW1wbGVtZW50YXRpb24gb2YgdGhlIGRlbGF5ZWQgZGVzdHJ1Y3Rpb24gb2Ygc2cKPiB0YWJs
ZXMuCj4gCj4gPiA+ID4gYnR3IHRoaXMgaXMgbGlrZSB0aGUgMm5kIG9yIDNyZCB0aW1lIEknbSB0
eXBpbmcgdGhpcywgaGF2ZW4ndCBzZWVuIHlvdXIKPiA+ID4gPiB0aG91Z2h0cyBvbiB0aGlzIHll
dC4KPiA+ID4gWWVhaCwgYW5kIEknbSByZXNwb25kaW5nIGZvciB0aGUgM3JkIHRpbWUgbm93IHRo
YXQgeW91IGFyZQo+ID4gPiBtaXN1bmRlcnN0YW5kaW5nIHdoeSB3ZSBuZWVkIHRoaXMgaGVyZSA6
KQo+ID4gPiAKPiA+ID4gTWF5YmUgSSBjYW4gbWFrZSB0aGF0IGNsZWFyIHdpdGggYW4gZXhhbXBs
ZToKPiA+ID4gCj4gPiA+IDEuIFlvdSBnb3QgYSBzaGFyaW5nIGJldHdlZW4gZGV2aWNlIEEgKGV4
cG9ydGVyKSBhbmQgQiAoaW1wb3J0ZXIpIHdoaWNoCj4gPiA+IHVzZXMgUDJQLgo+ID4gPiAKPiA+
ID4gMi4gTm93IGRldmljZSBDIChpbXBvcnRlcikgY29tZXMgYWxvbmcgYW5kIHdhbnRzIHRvIHVz
ZSB0aGUgRE1BLWJ1Zgo+ID4gPiBvYmplY3QgYXMgd2VsbC4KPiA+ID4gCj4gPiA+IDMuIFRoZSBo
YW5kbGluZyBub3cgZmlndXJlcyBvdXQgdGhhdCB3ZSBjYW4ndCBkbyBQMlAgYmV0d2VlbiBkZXZp
Y2UgQQo+ID4gPiBhbmQgZGV2aWNlIEMgKGZvciB3aGF0ZXZlciByZWFzb24pLgo+ID4gPiAKPiA+
ID4gNC4gVGhlIG1hcF9hdHRhY2htZW50IGltcGxlbWVudGF0aW9uIGluIGRldmljZSBkcml2ZXIg
QSBkb2Vzbid0IHdhbnQgdG8KPiA+ID4gZmFpbCB3aXRoIC1FQlVTWSBhbmQgbWlncmF0ZXMgdGhl
IERNQS1idWYgc29tZXdoZXJlIHdoZXJlIGJvdGggZGV2aWNlIEEKPiA+ID4gYW5kIGRldmljZSBD
IGNhbiBhY2Nlc3MgaXQuCj4gPiA+IAo+ID4gPiA1LiBUaGlzIG1pZ3JhdGlvbiB3aWxsIHJlc3Vs
dCBpbiBzZW5kaW5nIGFuIGludmFsaWRhdGlvbiBldmVudCBhcm91bmQuCj4gPiA+IEFuZCBoZXJl
IGl0IGRvZXNuJ3QgbWFrZSBzZW5zZSB0byBzZW5kIHRoaXMgaW52YWxpZGF0aW9uIGV2ZW50IHRv
IGRldmljZQo+ID4gPiBDLCBiZWNhdXNlIHdlIGtub3cgdGhhdCBkZXZpY2UgQyBpcyBhY3R1YWxs
eSBjYXVzaW5nIHRoaXMgZXZlbnQgYW5kCj4gPiA+IGRvZXNuJ3QgaGF2ZSBhIHZhbGlkIG1hcHBp
bmcuCj4gPiBIbSBJIHRob3VnaHQgdGhlIGxhc3QgdGltZSBhcm91bmQgdGhlcmUgd2FzIGEgZGlm
ZmVyZW50IHNjZW5hcmlvLCB3aXRoCj4gPiBqdXN0IG9uZSBpbXBvcnRlcjoKPiA+IAo+ID4gLSBp
bXBvcnRlciBoYXMgYSBtYXBwaW5nLCBnZXRzIGFuIC0+aW52YWxpZGF0ZSBjYWxsLgo+ID4gLSBp
bXBvcnRlciBhcnJhbmdlcyBmb3IgdGhlIG1hcHBpbmdzL3VzYWdlIHRvIGdldCB0b3JuIGRvd24s
IG1heWJlCj4gPiB1cGRhdGluZyBmZW5jZXMsIGFsbCBmcm9tIC0+aW52YWxpZGF0ZS4gQnV0IHRo
ZSBtYXBwaW5nIGl0c2VsZiB3b250Cj4gPiBkaXNhcHBlYXIuCj4gPiAtIGV4cG9ydGVyIG1vdmVz
IGJ1ZmZlciB0byBuZXcgcGxhY2VzIChmb3Igd2hhdGV2ZXIgcmVhc29ucyBpdCBmZWx0Cj4gPiB0
aGF0IHdhcyB0aGUgdGhpbmcgdG8gZG8pLgo+ID4gLSBpbXBvcnRlciBkb2VzIGFub3RoZXIgZXhl
Y2J1ZiwgdGhlIGV4cG9ydGVyIG5lZWRzIHRvIG1vdmUgdGhlIGJ1ZmZlcgo+ID4gYmFjay4gQWdh
aW4gaXQgY2FsbHMgLT5pbnZhbGlkYXRlLCBidXQgb24gYSBtYXBwaW5nIGl0IGFscmVhZHkgaGFz
Cj4gPiBjYWxsZWQgLT5pbnZhbGlkYXRlIG9uLCBhbmQgdG8gcHJldmVudCB0aGF0IHNpbGxpbmVz
cyB3ZSB0YWtlIHRoZQo+ID4gaW1wb3J0ZXIgdGVtcG9yYXJ5IG9mZiB0aGUgbGlzdC4KPiAKPiBN
aG0sIHN0cmFuZ2UgSSBkb24ndCByZW1lbWJlciBnaXZpbmcgdGhpcyBleHBsYW5hdGlvbi4gSXQg
YWxzbyBkb2Vzbid0IG1ha2UKPiB0byBtdWNoIHNlbnNlLCBidXQgc2VlIGJlbG93LgoKWWVhaCBt
YXliZSBJIG1peGVkIHRoaW5ncyB1cCBzb21ld2hlcmUuIEkgZ3Vlc3MgeW91IHN0YXJ0ZWQgd2l0
aCB0aGUgZmlyc3QKc2NlbmFyaW8sIEkgcmVwbGllZCB3aXRoICJ3aHkgZG9uJ3Qgd2UgdHJhY2sg
dGhpcyBpbiB0aGUgZXhwb3J0ZXIgb3IKZG1hLWJ1Zi5jIHRoZW4/IiBhbmQgdGhlbiB0aGUgdGhy
ZWFkIGRpZWQgb3V0IG9yIHNvbWV0aGluZy4KPiAKPiA+IFlvdXIgc2NlbmFyaW8gaGVyZSBpcyBu
ZXcsIGFuZCBpaXJjIG15IHN1Z2dlc3Rpb24gYmFjayB0aGVuIHdhcyB0bwo+ID4gY291bnQgdGhl
IG51bWJlciBvZiBwZW5kaW5nIG1hcHBpbmdzIHNvIHlvdSBkb24ndCBnbyBhcm91bmQgY2FsbGlu
Zwo+ID4gLT5pbnZhbGlkYXRlIG9uIG1hcHBpbmdzIHRoYXQgZG9uJ3QgZXhpc3QuCj4gCj4gV2Vs
bCB0aGUga2V5IHBvaW50IGlzIHdlIGRvbid0IGNhbGwgaW52YWxpZGF0ZSBvbiBtYXBwaW5ncywg
YnV0IHdlIGNhbGwKPiBpbnZhbGlkYXRlIG9uIGF0dGFjaG1lbnRzLgo+IAo+IFdoZW4gdGhlIGlu
dmFsaWRhdGUgb24gYW4gYXR0YWNobWVudCBpcyByZWNlaXZlZCBhbGwgdGhlIGltcG9ydGVyIHNo
b3VsZCBhdAo+IGxlYXN0IHN0YXJ0IHRvIHRlYXIgZG93biBhbGwgbWFwcGluZ3MuCgpIbSwgc28g
ZWl0aGVyIHdlIGludmFsaWRhdGUgbWFwcGluZ3MgaW5zdGVhZCAocHJldHR5IGJpZyBjaGFuZ2Ug
Zm9yCmRtYS1idWYsIGJ1dCBtYXliZSB3b3J0aCBpdCkuIE9yIGltcG9ydGVycyBuZWVkIHRvIGRl
YWwgd2l0aCBpbnZhbGlkYXRlIG9uCnN0dWZmIHRoZXkncmUgZG9uJ3QgZXZlbiBoYXZlIG1hcHBl
ZCBhbnl3aGVyZSBhbnl3YXkuCgo+ID4gQnV0IGV2ZW4gaWYgeW91IGZpeCB5b3VyIHNjZW5hcmlv
IGhlcmUgdGhlcmUncyBzdGlsbCB0aGUgaXNzdWUgdGhhdCB3ZQo+ID4gY2FuIHJlY2VpdmUgaW52
YWxpZGF0ZXMgb24gYSBtYXBwaW5nIHdlJ3ZlIGFscmVhZHkgdG9ybiBkb3duIGFuZCB3aGljaAo+
ID4gaXMgb24gdGhlIHByb2Nlc3Mgb2YgZGlzYXBwZWFyaW5nLiBUaGF0J3Mga2luZGEgdGhlIHBh
cnQgSSBkb24ndCB0aGluawo+ID4gaXMgZ3JlYXQgc2VtYW50aWNzLgo+IAo+IFllYWgsIHRoYXQg
aXMgYSByYXRoZXIgdmFsaWQgcG9pbnQuCj4gCj4gQ3VycmVudGx5IGl0IGlzIHBlcmZlY3RseSB2
YWxpZCB0byByZWNlaXZlIGFuIGludmFsaWRhdGlvbiB3aGVuIHlvdSBkb24ndAo+IGV2ZW4gaGF2
ZSBhbnkgbWFwcGluZ3MgYXQgYWxsLgo+IAo+IEJ1dCB0aGlzIGlzIGludGVudGlvbmFsLCBiZWNh
dXNlIG90aGVyd2lzZSBJIHdvdWxkIG5lZWQgdG8gbW92ZSB0aGUKPiBob3VzZWtlZXBpbmcgd2hp
Y2ggbWFwcGluZ3MgYXJlIGN1cnJlbnRseSBtYWRlIGZyb20gdGhlIGltcG9ydGVyIHRvIHRoZQo+
IGV4cG9ydGVyLgo+IAo+IEFuZCBhcyBleHBsYWluZWQgYWJvdmUgdGhhdCB3b3VsZCBlc3NlbnRp
YWxseSBtZWFuIGRvdWJsZSBob3VzZWtlZXBpbmcuCj4gCj4gPiBbU05JUF0KPiA+ID4gVGhlIHJl
YXNvbiBJIGRvbid0IGhhdmUgdGhhdCBvbiB1bm1hcCBpcyB0aGF0IEkgdGhpbmsgbWlncmF0aW5n
IHRoaW5ncwo+ID4gPiBvbiB1bm1hcCBkb2Vzbid0IG1ha2Ugc2Vuc2UuIElmIHlvdSB0aGluayBv
dGhlcndpc2UgaXQgY2VydGFpbmx5IGRvZXMKPiA+ID4gbWFrZSBzZW5zZSB0byBhZGQgdGhhdCB0
aGVyZSBhcyB3ZWxsLgo+ID4gVGhlIHByb2JsZW0gaXNuJ3QgdGhlIHJlY3Vyc2lvbiwgYnV0IHRo
ZSBib29rLWtlZXBpbmcuIFRoZXJlJ3MgaW1vIHR3byBjYXNlczoKPiAKPiBDb21wbGV0ZWx5IGFn
cmVlLCB5ZXMuCj4gCj4gPiAtIHlvdXIgc2NlbmFyaW8sIHdoZXJlIHlvdSBjYWxsIC0+aW52YWxp
ZGF0ZSBvbiBhbiBhdHRhY2htZW50IHdoaWNoCj4gPiBkb2Vzbid0IGhhdmUgYSBtYXBwaW5nLiBJ
J2xsIGNhbGwgdGhhdCB2ZXJ5IGxhenkgYWNjb3VudGluZywgZmVlbHMKPiA+IGxpa2UgYSBidWcg
Oi0pIEl0J3MgYWxzbyB2ZXJ5IGVhc3kgdG8gZml4IGJ5IGtlZXBpbmcgdHJhY2sgd2hvCj4gPiBh
Y3R1YWxseSBoYXMgYSBtYXBwaW5nLCBhbmQgdGhlbiB5b3UgZml4IGl0IGV2ZXJ5d2hlcmUsIG5v
dCBqdXN0IGZvcgo+ID4gdGhlIHNwZWNpZmljIGNhc2Ugb2YgYSByZWN1cnNpb24gaW50byB0aGUg
c2FtZSBjYWxsZXIuCj4gCj4gWWVhaCwgZXhhY3RseS4gVW5mb3J0dW5hdGVseSBpdCdzIG5vdCBz
byBlYXN5IHRvIGhhbmRsZSBhcyBqdXN0IGEgY291bnRlci4KPiAKPiBXaGVuIHNvbWVib2R5IHVu
bWFwcyBhIG1hcHBpbmcgeW91IG5lZWQgdG8ga25vdyBpZiB0aGF0IGlzIGFscmVhZHkKPiBpbnZh
bGlkYXRlZCBvciBub3QuIEFuZCB0aGlzIHJlcXVpcmVzIHRyYWNraW5nIG9mIGVhY2ggbWFwcGlu
Zy4KClllYWggd2UnZCBuZWVkIHRvIHRyYWNrIG1hcHBpbmdzLiBXZWxsLCBzb21lb25lIGhhcyB0
byB0cmFjayBtYXBwaW5ncywgYW5kCmF0bSBpdCBzZWVtcyB0byBiZSBhIG1peCBvZiBib3RoIGlt
cG9ydGVyIGFuZCBleHBvcnRlciAoYW5kIGRtYS1idWYuYykuCgo+ID4gLSBjYWxsaW5nIGludmFs
aWRhdGUgbXVsdGlwbGUgdGltZXMuIFRoYXQncyBteSBzY2VuYXJpbyAob3IgeW91ciBvbGRlcgo+
ID4gb25lKSwgd2hlcmUgeW91IGNhbGwgaW52YWxpZGF0ZSBhZ2FpbiBvbiBzb21ldGhpbmcgdGhh
dCdzIGFscmVhZHkKPiA+IGludmFsaWRhdGVkLiBKdXN0IGtlZXBpbmcgdHJhY2sgb2Ygd2hvIGFj
dHVhbGx5IGhhcyBhIG1hcHBpbmcgd29udCBmaXgKPiA+IHRoYXQsIGltbyB0aGUgcHJvcGVyIGZp
eCBpcyB0byB0byBwaXBlbGluZSB0aGUgdW5tYXBwaW5nIHVzaW5nIGZlbmNlcy4KPiAKPiBVbm1h
cHBpbmcgdXNpbmcgZmVuY2VzIGlzIGV4YWN0bHkgd2hhdCBJIGltcGxlbWVudGVkIHVzaW5nIHRo
ZSBUVE0gZ2hvc3QKPiBvYmplY3RzLgo+IAo+IFRoZSBxdWVzdGlvbiBpcyByZWFsbHkgd2hvIHNo
b3VsZCBpbXBsZW1lbnRzIHRoaXM/IFRoZSBleHBvcnRlciBvciB0aGUKPiBpbXBvcnRlcj8KPiAK
PiA+IEJ1dCBJIGd1ZXNzIHRoZXJlJ3Mgb3RoZXIgZml4ZXMgdG9vIHBvc3NpYmxlLgo+ID4gCj4g
PiBFaXRoZXIgd2F5IG5vbmUgb2YgdGhpcyBpcyBhYm91dCByZWN1cnNpb24sIEkgdGhpbmsgdGhl
IHJlY3Vyc2l2ZSBjYXNlCj4gPiBpcyBzaW1wbHkgdGhlIG9uZSB3aGVyZSB5b3UndmUgaGl0IHRo
aXMgYWxyZWFkeS4gRHJpdmVycyB3aWxsIGhhdmUgdG8KPiA+IGhhbmRsZSBhbGwgdGhlc2UgYWRk
aXRpb25hbCAtPmludmFsaWRhdGVzIG5vIG1hdHRlciB3aGF0IHdpdGggeW91cgo+ID4gY3VycmVu
dCBwcm9wb3NhbC4gQWZ0ZXIgYWxsIHRoZSBwb2ludCBoZXJlIGlzIHRoYXQgdGhlIGV4cG9ydGVy
IGNhbgo+ID4gbW92ZSB0aGUgYnVmZmVycyBhcm91bmQgd2hlbmV2ZXIgaXQgZmVlbHMgbGlrZSwg
Zm9yIHdoYXRldmVyIHJlYXNvbnMuCj4gCj4gVGhlIHJlY3Vyc2lvbiBjYXNlIGlzIHN0aWxsIHBl
cmZlY3RseSB2YWxpZC4gSW4gdGhlIGltcG9ydGVyIEkgbmVlZCB0bwo+IGlnbm9yZSBpbnZhbGlk
YXRpb25zIHdoaWNoIGFyZSBjYXVzZWQgYnkgY3JlYXRpbmcgYSBtYXBwaW5nLgo+IAo+IE90aGVy
d2lzZSBpdCBpcyBwZXJmZWN0bHkgcG9zc2libGUgdGhhdCB3ZSBpbnZhbGlkYXRlIGEgbWFwcGlu
ZyBiZWNhdXNlIG9mCj4gaXRzIGNyZWF0aW9uIHdoaWNoIHdpbGwgcmVzdWx0IGluIGNyZWF0aW5n
IGEgbmV3IG9uZS4uLi4KPiAKPiBTbyBldmVuIGlmIHlvdSBmaXggdXAgeW91ciBtYXBwaW5nIGNh
c2UsIHlvdSBhYnNvbHV0ZWx5IHN0aWxsIG5lZWQgdGhpcyB0bwo+IHByZXZlbnQgcmVjdXJzaW9u
IDopCgpIbSwgYnV0IGlmIHdlIHN0b3AgdHJhY2tpbmcgYXR0YWNobWVudHMgYW5kIGluc3RlYWQg
c3RhcnQgdHJhY2tpbmcKbWFwcGluZ3MsIHRoZW4gaG93IGlzIHRoYXQgcG9zc2libGU6CjEuIGlt
cG9ydGVyIGhhcyBubyBtYXBwaW5ncwoyLiBpbXBvcnRlciBjcmVhdGVzIGF0dGFjaG1lbnQuIHN0
aWxsIG5vIG1hcHBpbmcKMy4gaW1wb3J0ZXIgY2FsbHMgZG1hX2J1Zl9hdHRhY2hfbWFwX3NnLCBz
dGlsbCBubyBtYXBwaW5nIGF0IHRoaXMgcG9pbnQKNC4gd2UgY2FsbCBpbnRvIHRoZSBleHBvcnRl
ciBpbXBsZW1lbnRhdGlvbi4gc3RpbGwgbm8gbWFwcGluZwo1LiBleHBvcnRlciBkb2VzIHdoYXRl
dmVyIGl0IGRvZXMuIHN0aWxsIG5vIG1hcHBpbmcKNi4gZXhwb3J0ZXIgZmluaXNoZXMuIGNvbmNl
cHR1YWxseSBmcm9tIHRoZSBkbWEtYnVmIHBvdiwgX3RoaXNfIGlzIHdoZXJlCnRoZSBtYXBwaW5n
IHN0YXJ0cyB0byBleGlzdC4KNy4gaW52YWxpZGF0ZXMgKGhleSB0aGUgZXhwb3J0ZXIgbWF5YmUg
Y2hhbmdlZCBpdHMgbWluZCEpIGFyZSB0b3RhbGx5CmZpbmUsIGFuZCB3aWxsIGJlIHNlcmlhbGl6
ZWQgd2l0aCB3d19tdXRleC4KClNvIEkga2luZGEgZG9uIHVuZGVyc3RhbmQgd2h5IHRoZSBleHBv
cnRlciBoZXJlIGlzIGFsbG93ZWQgdG8gY2FsbAppbnZhbGlkYXRlIHRvbyBlYXJseSAodGhlIG1h
cHBpbmcgZG9lc24ndCBleGlzdCB5ZXQgZnJvbSBkbWEtYnVmIHBvdiksIGFuZApkbWEtYnVmIG5l
ZWRzIHRvIGZpbHRlciBpdCBvdXQuCgpCdXQgYW55d2hlcmUgZWxzZSB3aGVyZSB3ZSBtaWdodCBj
YWxsIC0+aW52YWxpZGF0ZSBhbmQgdGhlcmUncyBub3QgeWV0IGEKbWFwcGluZyAoYWdhaW4gcHVy
ZWx5IGZyb20gZG1hLWJ1ZiBwb3YpLCB0aGVyZSB0aGUgaW1wb3J0ZXIgaXMgc3VwcG9zZWQgdG8K
ZG8gdGhlIGZpbHRlci4KClNvbWVvbmUgbmVlZHMgdG8ga2VlcCB0cmFjayBvZiBhbGwgdGhpcywg
YW5kIEkgd2FudCBjbGVhcgpyZXNwb25zaWJpbGl0aWVzLiBXaGF0IHRoZXkgYXJlIGV4YWN0bHkg
aXMgbm90IHRoYXQgaW1wb3J0YW50LgoKPiA+IEZvciBzb2x1dGlvbnMgSSB0aGluayB0aGVyZSdz
IHJvdWdobHkgdGhyZWU6Cj4gPiAtIGltcG9ydGVycyBuZWVkIHRvIGRlYWwuIFlvdSBkb24ndCBs
aWtlIHRoYXQsIEkgYWdyZWUKPiA+IC0gZXhwb3J0ZXJzIG5lZWQgdG8gZGVhbCwgcHJvYmFibHkg
bm90IG11Y2ggYmV0dGVyLCBidXQgSSB0aGluawo+ID4gc3RyaWN0ZXIgY29udHJhY3QgaXMgYmV0
dGVyIGluIGl0c2VsZiBhdCBsZWFzdC4KPiA+IC0gZG1hLWJ1Zi5jIGtlZXBzIGJldHRlciB0cmFj
ayBvZiBtYXBwaW5ncyBhbmQgd2hpY2ggaGF2ZSBiZWVuCj4gPiBpbnZhbGlkYXRlZCBhbHJlYWR5
Cj4gPiAKPiA+IFdlIGNvdWxkIGFsc28gY29tYmluZSB0aGUgbGFzdCB0d28gd2l0aCBzb21lIGhl
bHBlcnMsIGUuZy4gaWYgeW91cgo+ID4gZXhwb3J0ZXIgcmVhbGx5IGV4cGVjdHMgaW1wb3J0ZXJz
IHRvIGRlbGF5IHRoZSB1bm1hcCB1bnRpbCBpdCdzIG5vCj4gPiBsb25nZXIgaW4gdXNlLCB0aGVu
IHdlIGNvdWxkIGRvIGEgc21hbGwgaGVscGVyIHdoaWNoIHB1dHMgYWxsIHRoZXNlCj4gPiB1bm1h
cHMgb250byBhIGxpc3Qgd2l0aCBhIHdvcmtlci4gQnV0IEkgdGhpbmsgeW91IHdhbnQgdG8gaW50
ZWdyYXRlCj4gPiB0aGF0IGludG8geW91ciBleHBvcnRlcnMgbHJ1IG1hbmFnZW1lbnQgZGlyZWN0
bHkuCj4gPiAKPiA+ID4gU28gdGhpcyBpcyBqdXN0IHRoZSBtb3N0IGRlZmVuc2l2ZSB0aGluZyBJ
IHdhcyBhYmxlIHRvIGNvbWUgdXAgd2l0aCwKPiA+ID4gd2hpY2ggbGVhdmVzIHRoZSBsZWFzdCBw
b3NzaWJpbGl0eSBmb3IgZHJpdmVycyB0byBkbyBzb21ldGhpbmcgc3R1cGlkLgo+ID4gTWF5YmUg
d2UncmUgc3RpbGwgdGFsa2luZyBwYXN0IGVhY2ggYW5vdGhlciwgYnV0IEkgZmVlbCBsaWtlIHRo
ZSBiaWcKPiA+IGlzc3VlcyBhcmUgYWxsIHN0aWxsIHRoZXJlLiBQcm9ibGVtIGlkZW50aWZpZWQs
IHllcywgc29sdmVkLCBuby4KPiAKPiBZZWFoLCBhZ3JlZWQgeW91ciBsYXN0IG1haWwgc291bmRl
ZCBsaWtlIHdlIGFyZSBhYnNvbHV0ZWx5IG9uIHRoZSBzYW1lIHBhZ2UKPiBvbiB0aGUgcHJvYmxl
bSBub3cuCgpTbyBJIHBvbmRlcmVkIGEgZmV3IGlkZWFzIHdoaWxlIHdvcmtpbmcgb3V0OgoKMSkg
V2UgZHJvcCB0aGlzIGZpbHRlcmluZy4gSW1wb3J0ZXIgbmVlZHMgdG8ga2VlcCB0cmFjayBvZiBh
bGwgaXRzCm1hcHBpbmdzIGFuZCBmaWx0ZXIgb3V0IGludmFsaWRhdGVzIHRoYXQgYXJlbid0IGZv
ciB0aGF0IHNwZWNpZmljIGltcG9ydGVyCihlaXRoZXIgYmVjYXVzZSBhbHJlYWR5IGludmFsaWRh
dGVkLCBvciBub3QgeWV0IG1hcHBlZCwgb3Igd2hhdGV2ZXIpLgpGZWVscyBmcmFnaWxlLgoKMikg
ZG1hLWJ1Zi5jIGtlZXBzIHRyYWNrIG9mIGFsbCB0aGUgbWFwcGluZ3MuIFdpbGwgYmUgcXVpdGUg
aW52YXNpdmUgSQp0aGluaywgYW5kIHdpbGwgZHVwbGljYXRlIHdoYXQgZWl0aGVyIHRoZSBpbXBv
cnRlciBvciBleHBvcnRlciBhcmUgYWxyZWFkeQpkb2luZyBhbnl3YXkuIFdlIG1pZ2h0IG5lZWQg
YSBtYXBfZHluYW1pY19zZyBzbyB0aGF0IHRoZSBpbnZhbGlkYXRlCmhhcHBlbnMgb24gdGhhdCwg
YW5kIHRoZSBpbnZhbGlkYXRlIGlzIG9uZS1zaG90IChpLmUuIG9uY2UgdW5tYXBwZWQgeW91CmNh
biBuZXZlciB1c2UgdGhlIHNhbWUgbWFwcGluZyBhZ2FpbiwgeW91IG5lZWQgdG8gY3JlYXRlIGEg
bmV3IG9uZSkuIFdpbGwKcHJvYmFibHkgYmUgcXVpdGUgYSBiaXQgb2YgY29kZSBjaHVybi4KCjMp
IExpa2UgdHdvLCBidXQgaW5zdGVhZCBvZiBjcmVhdGluZyBzb21ldGhpbmcgbmV3IHdlIGNoYW5n
ZSB0aGUgc2VtYW50aWNzCm9mIGF0dGFjaG1lbnRzLiBGb3IgZHluYW1pYyBkbWEtYnVmIGltcG9y
dGVycywgY3JlYXRlIGEgbmV3CmRtYV9idWZfYXR0YWNoX2FuZF9tYXBfc2csIHdoaWNoIGRvZXMg
Ym90aCwgdG9nZXRoZXIsIGF0b21pY2FsbHkuIFNhbWUgZm9yCnVubWFwLiBGb3IgdW5tYXAgSSBz
ZWUgYSBjbGV2ZXIgb3B0aW9uIGhlcmU6ICBUaGVzZSBhdHRhY2hlbWVudHMgYXJlCm9uZS1zaG90
IG9ubHksIGkuZS4geW91IGF0dGFjaF9hbmRfbWFwX3NnLCB0aGVuIHlvdSBnZXQgYW4gaW52YWxp
ZGF0ZSwKYWZ0ZXIgdGhhdCB0aGUgYXR0YWNobWVudCBpcyBkZWFkLiBDYW4ndCBldmVyIHJlbWFw
IGl0LiBJIHRoaW5rIHRoaXMgd291bGQKbmVhdGx5IHNvbHZlIHRoZSAieW91J3ZlIGludmFsaWRh
dGVkIHRoaXMgYWxyZWFkeSIgaXNzdWUuIEJ1dCBpdCBpcyBhIGJpdAptb3JlIGNvZGUgY2h1cm4g
SSBndWVzcy4gQWxzbywgaXQgYnJlYWtzIHRoZSBpZGVhIG9mIHVzaW5nIHRoZSBhdHRhY2htZW50
CnRvIGluZGljYXRlIGZvciB3aGljaCBkZXZpY2VzIGEgYnVmZmVyIHNob3VsZCBiZSBhY2Nlc3Np
YmxlLCBzbyBpdCdzIG5vdAphY2NpZGVudGFsbHkgcGlubmVkIGludG8gYSBiYWQgc3BvdC4gV2Ug
bWlnaHQgc3RpbGwgbmVlZCB0aGF0IGV2ZW4gZm9yCmR5bmFtaWMgaW1wb3J0ZXJzLgoKNCkgVGhl
IGV4cG9ydGVyIGtlZXBzIHRyYWNrIG9mIHdoaWNoIGF0dGFjaG1lbnRzIGhhdmUgYSBtYXBwaW5n
LCBhbmQKaW52YWxpZGF0ZXMgdGhlbSBpbmRpdmlkdWFsbHkuIE5vdCBzdXJlIHRoaXMgd291bGQg
YWN0dWFsbHkgc29sdmUKYW55dGhpbmcgYmVjYXVzZSBvZiB0aGUgZG91YmxlLWludmFsaWRhdGUg
dGhpbmcuIElmIHdlIGdvIHdpdGggdGhpcyB3ZSdkCnByb2JhYmx5IG5lZWQgdG8gcHV0IHRoZSBy
ZXNwb25zaWJpbGl0eSBvZiBkZWxheWluZyB0aGUgdW5tYXAgYWZ0ZXIgdGhlCmNvcnJlc3BvbmRp
bmcgZmVuY2UgaGFzIHNpZ25hbGxlZCBhbHNvIG9udG8gdGhlIGV4cG9ydGVyLiBTbyBpbXBvcnRl
cgp3b3VsZCB1bm1hcCBmcm9tIGl0J3MgLT5pbnZhbGlkYXRlIGNhbGxiYWNrLCBidXQgZXhwb3J0
ZXIgbmVlZHMgdG8gb2JleQp0aGUgY3VycmVudCBmZW5jZXMgYXR0YWNoZWQgdG8gdGhlIHJlc3Zf
b2JqLiBBbHNvIGZlZWxzIGEgYml0IGZyYWdpbGUKc2luY2UgaXQgZGVwZW5kcyB1cG9uIHRoZSBl
eHBvcnRlciBpbnN0ZWFkIG9mIHNoYXJlZCBjb2RlIHRvIGRvIHRoZSByaWdodAp0aGluZy4KCkkg
dGhpbmsgdGhlcmUncyBwcm9iYWJseSBhIGZldyBtb3JlIHZhcmlhbnRzIHRoYXQgbWlnaHQgd29y
aywgYnV0IHRob3NlIGlzCndoYXQgSSBjYW1lIHVwIHdpdGguCi1EYW5pZWwKLS0gCkRhbmllbCBW
ZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZm
d2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
