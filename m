Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB64F5095
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 17:06:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77B566F9E8;
	Fri,  8 Nov 2019 16:06:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com
 [IPv6:2607:f8b0:4864:20::241])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A93DD6F9E9
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2019 16:06:33 +0000 (UTC)
Received: by mail-oi1-x241.google.com with SMTP id y194so5691501oie.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 08 Nov 2019 08:06:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8UIeW3zrOpYokMYDGknRg53lAFhadyV9JY7AU38qI68=;
 b=kSUoW7atHVkIdi4mOsahwCZc74GkjS9i4cwWnW4DnAx9ky0U+TNWclrG/hW+tyg2Ta
 SD5w2ytBXHtNUZ3l6ebGzfyH+SSBno/kt6/eFPjKP591VbU3MqSlLH6/kOzlGSjmGg1/
 +U72kfiJnTSyGOZXE67NCGuPEcr48PtyRs9iRg76BsVcBsVa4+zCW2Apwll8ljxzVYKe
 MJso/+t5swdJ3jaPsRi9nDhAsaEG4+ia8oIQa71fcQg8wsxzWtYunbE0AFxy7whGr8Dq
 QX5w4XEZ99AdyH5qsDXAmMLxx7jo3clTZYDnSrloSNBUIHZ2YyaKzlzFK1ajLbBMoR6U
 MtQQ==
X-Gm-Message-State: APjAAAVEWISrt1M70nLVFq2eUgIwGHhmfIQO2JiTAt2DzRcKY/grOS/R
 ar7mgoib5Av/FfmkV7BK6gctNbdCpxMXcP6C1QovtQ==
X-Google-Smtp-Source: APXvYqwROzNDu6QG9SszWzaqX6u2efSiUEsJwwEjH/FTnUkRlxM16Z45pJO0pFonY60t5lD+gX/8ZPB+3p7fjZA07Tw=
X-Received: by 2002:aca:3889:: with SMTP id f131mr10308983oia.14.1573229192843; 
 Fri, 08 Nov 2019 08:06:32 -0800 (PST)
MIME-Version: 1.0
References: <20191106154810.5843-1-chris@chris-wilson.co.uk>
 <20191106154810.5843-2-chris@chris-wilson.co.uk>
 <CAKMK7uFSfEPYgzeLtZXTOH7o77jDu7ULtvexq-=R6jeXwsLGTQ@mail.gmail.com>
 <157320790442.9461.15671764737191591137@skylake-alporthouse-com>
 <CAKMK7uE5tCFHALPQbYJkJdC0iVXMeO3ut37MrT02f4e6aveEhQ@mail.gmail.com>
 <157320960375.9461.12119953763105684230@skylake-alporthouse-com>
In-Reply-To: <157320960375.9461.12119953763105684230@skylake-alporthouse-com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Fri, 8 Nov 2019 17:06:20 +0100
Message-ID: <CAKMK7uHmTPDk=nZTdb=12WbAn1LKX40HYy4FqYhFY6TOAGHY-w@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=8UIeW3zrOpYokMYDGknRg53lAFhadyV9JY7AU38qI68=;
 b=kpHC9ylCbwgjPLiXOXIdYb5AM9RwwAOyH7I4KtKgOMulpCv4qAUsCjfhoD63gO8QCr
 sConWjbv0e9EWwghXJenJJvm+DKxpI+7xvMdZd/HVrOnzQjBGK2sGzco2KwwtDOyH584
 jGs74K4o1zqw0uEpPCM31I3j7w9qO29e8yMx4=
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Drop inspection of execbuf
 flags during evict
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBOb3YgOCwgMjAxOSBhdCAxMTo0MCBBTSBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4gd3JvdGU6Cj4KPiBRdW90aW5nIERhbmllbCBWZXR0ZXIgKDIwMTktMTEt
MDggMTA6MjA6MjMpCj4gPiBPbiBGcmksIE5vdiA4LCAyMDE5IGF0IDExOjExIEFNIENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cm90ZToKPiA+ID4gUXVvdGluZyBEYW5p
ZWwgVmV0dGVyICgyMDE5LTExLTA4IDA5OjU0OjQyKQo+ID4gPiA+IE9uIFdlZCwgTm92IDYsIDIw
MTkgYXQgNDo0OSBQTSBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4gd3Jv
dGU6Cj4gPiA+ID4gPgo+ID4gPiA+ID4gV2l0aCB0aGUgZ29hbCBvZiByZW1vdmluZyB0aGUgc2Vy
aWFsaXNhdGlvbiBmcm9tIGFyb3VuZCBleGVjYnVmLCB3ZSB3aWxsCj4gPiA+ID4gPiBubyBsb25n
ZXIgaGF2ZSB0aGUgcHJpdmlsZWdlIG9mIHRoZXJlIGJlaW5nIGEgc2luZ2xlIGV4ZWNidWYgaW4g
ZmxpZ2h0Cj4gPiA+ID4gPiBhdCBhbnkgdGltZSBhbmQgc28gd2lsbCBvbmx5IGJlIGFibGUgdG8g
aW5zcGVjdCB0aGUgdXNlcidzIGZsYWdzIHdpdGhpbgo+ID4gPiA+ID4gdGhlIGNhcmVmdWxseSBj
b250cm9sbGVkIGV4ZWNidWYgY29udGV4dC4gaTkxNV9nZW1fZXZpY3RfZm9yX25vZGUoKSBpcwo+
ID4gPiA+ID4gdGhlIG9ubHkgdXNlciBvdXRzaWRlIG9mIGV4ZWNidWYgdGhhdCBjdXJyZW50bHkg
cGVla3MgYXQgdGhlIGZsYWcgdG8KPiA+ID4gPiA+IGNvbnZlcnQgYW4gb3ZlcmxhcHBpbmcgc29m
dHBpbm5lZCByZXF1ZXN0IGZyb20gRU5PU1BDIHRvIEVJTlZBTC4gUmV0cmFjdAo+ID4gPiA+ID4g
dGhpcyBuaWNldHkgYW5kIG9ubHkgcmVwb3J0IEVOT1NQQyBpZiB0aGUgbG9jYXRpb24gaXMgaW4g
Y3VycmVudCB1c2UsCj4gPiA+ID4gPiBlaXRoZXIgZHVlIHRvIHRoaXMgZXhlY2J1ZiBvciBhbm90
aGVyLgo+ID4gPiA+ID4KPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gPiA+ID4gQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9v
bmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KPiA+ID4gPiA+IFJldmlld2VkLWJ5OiBKb29u
YXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+Cj4gPiA+ID4KPiA+
ID4gPiBTYW1lIHJlYXNvbnMgYXMgZm9yIHBhdGNoIDMsIEkgZG9uJ3QgdGhpbmsgd2UgaGF2ZSB0
byBkbyB0aGlzIGF0IGFsbC4KPiA+ID4KPiA+ID4gVGhpcyBpcyBhbHJlYWR5IHVuZGVmaW5lZCBi
ZWhhdmlvdXIuIFRoYXQgZmllbGQgaXMgcHJvdGVjdGVkIGJ5Cj4gPiA+IHN0cnVjdF9tdXRleCBh
bmQgYmVpbmcgZXZhbHVhdGVkIG91dHNpZGUgb2YgdGhhdCBsb2NrLgo+ID4KPiA+IElmIHRoaXMg
Y2FuIGJlIGNhbGxlZCBvbiBvYmplY3RzIGludm9sdmVkIGluIGV4ZWNidWYsIHdpdGhvdXQKPiA+
IHN0cnVjdF9tdXRleCwgdGhlbiB3ZSBhbHJlYWR5IGhhdmUgYSBjb3JyZWN0bmVzcyBwcm9ibGVt
IG9mIHZtYSBzcGFjZQo+ID4gKHdoaWNoIGlzIHN1cGVyIHRpZ2h0IG9uIG9sZCBwbGF0Zm9ybXMg
YW5kIHJhdGhlciBtdWNoIHJlcXVpcmVkIHRvIGJlCj4gPiB3ZWxsLW1hbmFnZWQgYmVjYXVzZSBv
ZiB0aGF0KSBiZWluZyBsb3N0IGJlY2F1c2UgY29uY3VycmVudCB0aHJlYWRzCj4gPiB0aHJhc2gg
aXQgaW5zdGVhZCBvZiBmb3JtaW5nIGFuIG9yZGVybHkgcXVldWUuIEFuZCBpZiB0aGF0J3Mgbm90
IHRoZQo+ID4gY2FzZSwgYW5kIHRoZXkgZG8gZm9ybSBhbiBvcmRlcmx5IHF1ZXVlLCB0aGVuIHRo
ZXJlJ3Mgbm8gcHJvYmxlbSBzaW5jZQo+ID4gZXZlbiB0aGUgYXMtbmVlZGVkLW9ubHkgb3JkZXJs
eSBxdWV1ZSBwcm92aWRlZCBieSB3d19tdXRleCB3aWxsIHRoZW4KPiA+IGJlIGVub3VnaCBsb2Nr
aW5nIHRvIGtlZXAgdGhpcyB3b3JraW5nLgo+Cj4gSXQgZG9lc24ndCBnZXQgY2FsbGVkIG9uIHRo
b3NlIG9iamVjdHMsIHRob3NlIG9iamVjdHMgbWF5IGp1c3QgYmUKPiBuZWlnaGJvdXJpbmcgYW5k
IGJlaW5nIGluc3BlY3RlZCBmb3IgcG90ZW50aWFsIGV2aWN0aW9uIGNhbmRpZGF0ZXMuIFRoZQo+
IGxpc3RzIHRoZW1zZWx2ZXMgYXJlIHByb3RlY3RlZCBieSB0aGVpciBtdXRleCwgaXQncyBqdXN0
IHRoZSBjb250ZW50aW9uCj4gb3ZlciB0aGUgcGluX2NvdW50LgoKSG0geWVhaCBpbiBhIHBlci1i
byBsb2NrZWQgZnV0dXJlIHdvcmxkIHRoaXMgd29uJ3Qgd29yay4gQnV0IHRvZGF5IGl0CnNob3Vs
ZCBiZSBlaXRoZXIgdm0tPm11dGV4IG9yIGRldi0+c3RydWN0X211dGV4LCBub3QgYWxyZWFkeSBi
cm9rZW4/CgpPdG9oIGluIHRoZSBwZXItYm8gbG9ja2VkIGZ1dHVyZSB3ZSBvbmx5IGNhcmUgYWJv
dXQgY29uZmxpY3RzIHdpdGggb3VyCm93biBleGVjYnVmLCB3aGljaCBtZWFucyB3ZSBjb3VsZCBj
aGVjayB3aGV0aGVyIHRoZSBvYmplY3QgYmVsb25ncyB0bwpvdXIgYmF0Y2ggKHZlcnkgZWFzeSBi
eSBsb29raW5nIGF0IGRtYV9yZXN2LT5sb2NrLmN0eCwgdHRtIGRvZXMgdGhhdAppbiBhIGZldyBw
bGFjZXMpLCBhbmQgb25seSBkbyB0aGUgY2hlY2sgaW4gdGhhdCBjYXNlLiBTbyBjb3VsZCByZXRh
aW4KZnVsbCB1YXBpIHNlbWFudGljcyBoZXJlIHdpdGhvdXQgYWRkaXRpb25hbCBlZmZvcnQgKHdl
IG5lZWQgdG8gaGF2ZQp0aGVzZSBsb2NrcyBhbndheSwgYXQgbGVhc3QgaW4gYW55IGtpbmQgb2Yg
ZXhlY2J1ZiBzbG93cGF0aCB3aGVyZSB0aGUKYm8gYXJlbid0IGFsbCBtYXBwZWQgd2hlbiB3ZSBz
dGFydCBvdXQpLiBTbyBzdGlsbCBub3QgdW5kZXJzdGFuZGluZwooZXZlbiB3aXRoIHRoZSAiaXQn
cyBvdGhlciBibyIgb3Zlcmxvb2sgcmVjdGlmaWVkKSB3aHkgd2UgaGF2ZSB0byBkcm9wCnRoaXM/
Cgo+ID4gQXNpZGU6IFllYWggSSB0aGluayB3ZSBuZWVkIHRvIHJlLWFkZCBzdHJ1Y3RfbXV0ZXgg
dG8gdGhlIGd0dCBmYXVsdAo+ID4gcGF0aCwgdGhlIHRlbXBvcmFyeSBwaW5uaW5nIGluIHRoZXJl
IGNvdWxkIGVhc2lseSBzdGFydmUgZXhlY2J1ZiBvbgo+ID4gcGxhdGZvcm1zIHdoZXJlIGJhdGNo
ZXMgcnVuIGluIGdndHQuIE1heWJlIGFsc28gc29tZSBvdGhlciBhcmVhcyB3aGVyZQo+ID4gd2Ug
bG9zdCBzdHJ1Y3RfbXV0ZXggYXJvdW5kIHRlbXBvcmFyeSB2bWEtPnBpbl9jb3VudCBlbGV2YXRp
b25zLgo+Cj4gVGhhdCdzIHdoZXJlIHdlIGFyZSBnb2luZyBuZXh0OyBub3Qgd2l0aCBzdHJ1Y3Rf
bXV0ZXggYnV0IGZlbmNlZCBhY2Nlc3MKPiB0byByZXNlcnZhdGlvbnMgdG8gcmVwbGFjZSB0aGUg
dGVtcG9yYXJ5IChub3QgSFcgYWNjZXNzKSBwaW5uaW5nLgoKZmVuY2VkIGFzIGluIGRtYV9mZW5j
ZSBvciBkbWFfcmVzdl9sb2NrPwoKQWxzbyBpZiB3ZSBpbmRlZWQgaGF2ZSBhbiBpc3N1ZSB3aXRo
IGxvc3QgZWxldmF0ZWQgcGluX2NvdW50cyBub3cgSQp0aGluayB3ZSBzaG91bGRuJ3Qgc2hpcCA1
LjUgd2l0aCB0aGF0LCBhbmQgcmVhcHBseSB0aGUgZHVjdCB0YXBlIHVudGlsCml0J3MgZml4ZWQg
Zm9yIGdvb2QuCi1EYW5pZWwKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIElu
dGVsIENvcnBvcmF0aW9uCis0MSAoMCkgNzkgMzY1IDU3IDQ4IC0gaHR0cDovL2Jsb2cuZmZ3bGwu
Y2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
