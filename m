Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6415D177E71
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 19:31:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DF836E859;
	Tue,  3 Mar 2020 18:31:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D600F6E859
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 18:31:25 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id n18so5628984edw.9
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Mar 2020 10:31:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=2nyeKlb7+gX9yI1TokFJCRogOrSSik875m90igI3Xkk=;
 b=rXQXFp3/rSseSQVknNJgAZlGaGiLKMsY/lg0y2ZryJ/mJ4jGF/2mkCnjqwP9JnJ+2s
 +jk9yDwXajmV6DdCuH7cDNLm5B6Fd1NcTAxPf0zCn3Ycct1JGd0BHRRLSM9vnuJWOJp4
 Db11qGIHV4VF0U2MxH5u/Mzc62q5GSAW8G7kDEDaqqdDnEPlyCeFj0prJWK+7MQii8ud
 ZJ1rNxF3ehAU+jVwhP1Nc7HNqjsCxRO1PyYa0OfuGDk8H3Igf2oetotU050emISyzbBQ
 3CuFpyGduLe2G1Po1v9obfE1zpViR3CmoN/8u4/CO2nQMVMRdoryN16U6c4P3BsEFd9C
 6lHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=2nyeKlb7+gX9yI1TokFJCRogOrSSik875m90igI3Xkk=;
 b=FN+Sfj+MODVaDnrVLz/Z9Hu2G62/8RMBwGjhgpQlHXHX1/8ekx286YpoGFlSIHK9w5
 uGt+MJcOjQwHN9hrrNGsrRO9JTPHFzUCcD0qvBSMCo/pMUBF63xSQsnHks+Zi2MIvcxK
 Ouq3HgX3gOw9c6ZbBY1vGfeqzPEvcfWczDSLLUcvAUV17pMNJ2TTKpS5hBJ29mJAuf1X
 dHYyd/PKPYMKlpsIn6PYSiHqKbZZ34CV9dmMEywGAe9bFhfmqCG1zMM8Z/FcfzkOTaBO
 WGPPexAZRHlTJLcwXyNIlneaLUxPUZH1s1idpvjqVft2YHDvF/ODO+pvrUvNvGdmvVu9
 uovw==
X-Gm-Message-State: ANhLgQ2a71Pg9880kAKm8yWtpr/GpzliNSn2jUVKrEWaHobbXr6TZurd
 1fJQwtWz5ufdHp/rdaxJ3rXmW+TjZBe23O9mYsY/Sg==
X-Google-Smtp-Source: ADFU+vvjnqodQRs6VP5TngnZkhfRPo0NMvtyq/JchE4yn2OsgsEPCgWdjBRdc7q2L5dLlarXDOCvHDxFySoUY+D+x7I=
X-Received: by 2002:a05:6402:6c2:: with SMTP id
 n2mr5090157edy.241.1583260284417; 
 Tue, 03 Mar 2020 10:31:24 -0800 (PST)
MIME-Version: 1.0
References: <20190305124827.23446-1-michal.winiarski@intel.com>
 <20190305173000.zjgm4cg7oiwh4zwn@rantogno-mobl4.amr.corp.intel.com>
 <155181303697.27405.9554842481668039149@skylake-alporthouse-com>
 <155187122368.10431.16362785897903608522@jlahtine-desk.ger.corp.intel.com>
In-Reply-To: <155187122368.10431.16362785897903608522@jlahtine-desk.ger.corp.intel.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Tue, 3 Mar 2020 12:31:13 -0600
Message-ID: <CAOFGe95tFm44bcxLt48V6PSVdTKoEHZBmkwESqOE8dyH0T9cbg@mail.gmail.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/icl: Default to Thread Group
 preemption for compute workloads
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>,
 Anuj Phogat <anuj.phogat@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RllJOiBGb3IgY29tcHV0ZSBzaGFkZXJzLCB3ZSBoYXZlIGEgYml0IGluIElOVEVSRkFDRV9ERVND
UklQVE9SX0RBVEEKZm9yIHRoaXMgd2hpY2ggd2UgY2FuIHNldCBmcm9tIHVzZXJzcGFjZSB3aXRo
b3V0IHdoaXRlbGlzdGluZyBhCnJlZ2lzdGVyLiAgSWYgZHJpdmVycyBjYW4ndCBoYW5kbGUgbWlk
LXRocmVhZCwgdGhleSBzaG91bGQganVzdCBzZXQKdGhhdCBiaXQuICBVbmxlc3Mgd2UgY2FuIG1p
ZC10aHJlYWQgcHJlZW1wdCBtZWRpYSBvciAzRCB3aGljaCBkb24ndApoYXZlIHN1Y2ggYSBiaXQg
aW4gd2hpY2ggY2FzZSBtYXliZSB3ZSBuZWVkIHRvIGRvIHNvbWV0aGluZyBpbiB0aGUKa2VybmVs
LgoKLS1KYXNvbgoKT24gV2VkLCBNYXIgNiwgMjAxOSBhdCA1OjIwIEFNIEpvb25hcyBMYWh0aW5l
bgo8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4KPiBRdW90aW5nIENo
cmlzIFdpbHNvbiAoMjAxOS0wMy0wNSAyMToxMDo0MikKPiA+IFF1b3RpbmcgUmFmYWVsIEFudG9n
bm9sbGkgKDIwMTktMDMtMDUgMTc6MzA6MDApCj4gPiA+IE9uIFR1ZSwgTWFyIDA1LCAyMDE5IGF0
IDAxOjQ4OjI2UE0gKzAxMDAsIE1pY2hhxYIgV2luaWFyc2tpIHdyb3RlOgo+ID4gPiA+IFdlIGFz
c3VtZWQgdGhhdCB0aGUgZGVmYXVsdCBwcmVlbXB0aW9uIGdyYW51bGFyaXR5IGlzIGZpbmUgZm9y
IElDTC4KPiA+ID4gPiBVbmZvcnR1bmF0ZWx5LCBpdCB0dXJucyBvdXQgdGhhdCBzb21lIGRyaXZl
cnMgZG9uJ3Qgc3VwcG9ydCBtaWQtdGhyZWFkCj4gPiA+ID4gcHJlZW1wdGlvbiBmb3IgY29tcHV0
ZSB3b3JrbG9hZHMuCj4gPiA+ID4gSWYgYSB3b3JrbG9hZCB0aGF0IGRvZXNuJ3Qgc3VwcG9ydCBt
aWQtdGhyZWFkIHByZWVtcHRpb24gZ2V0cyBtaWQtdGhyZWFkCj4gPiA+ID4gcHJlZW1wdGVkLCB3
ZSdyZSBnb2luZyB0byBvYnNlcnZlIGEgR1BVIGhhbmcuCj4gPiA+ID4gV2hpbGUgSSdtIGhlcmUs
IGxldCdzIGFsc28gdXBkYXRlIHRoZSAid29ya2Fyb3VuZCIgbmFtaW5nLgo+ID4gPgo+ID4gPiBZ
ZWFoLCBpbiBNZXNhIHdlIGFyZSBub3QgaW1wbGVtZW50aW5nIHRoZSBTSVAsIHNvIHdlIGNhbid0
IGRvCj4gPiA+IHRocmVhZC1sZXZlbCBwcmVlbXB0aW9uIHlldCBhbmQgbmVlZCB0aGUgZ3JhbnVs
YXJpdHkgdG8gYmUgbm8gaGlnaGVyCj4gPiA+IHRoYW4gdGhyZWFkIGdyb3VwIGxldmVsLgo+ID4g
Pgo+ID4gPiBBY2tlZC1ieTogUmFmYWVsIEFudG9nbm9sbGkgPHJhZmFlbC5hbnRvZ25vbGxpQGlu
dGVsLmNvbT4KPiA+ID4KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYcWCIFdpbmlhcnNraSA8
bWljaGFsLndpbmlhcnNraUBpbnRlbC5jb20+Cj4gPiA+ID4gQ2M6IEFudWogUGhvZ2F0IDxhbnVq
LnBob2dhdEBpbnRlbC5jb20+Cj4gPiA+ID4gQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxh
aHRpbmVuQGxpbnV4LmludGVsLmNvbT4KPiA+ID4gPiBDYzogTWF0dCBSb3BlciA8bWF0dGhldy5k
LnJvcGVyQGludGVsLmNvbT4KPiA+ID4gPiBDYzogUmFmYWVsIEFudG9nbm9sbGkgPHJhZmFlbC5h
bnRvZ25vbGxpQGludGVsLmNvbT4KPiA+ID4gPiBUZXN0ZWQtYnk6IEFudWogUGhvZ2F0IDxhbnVq
LnBob2dhdEBpbnRlbC5jb20+Cj4gPiA+ID4gUmV2aWV3ZWQtYnk6IFJvZHJpZ28gVml2aSA8cm9k
cmlnby52aXZpQGludGVsLmNvbT4KPiA+Cj4gPiBBbmQgcHVzaGVkLCB0aGFua3MgZXZlcnlvbmUg
Zm9yIHRoZSB0ZXN0aW5nIGFuZCByZXZpZXdlZC4gSSd2ZSBoZWxkIG9mZgo+ID4gb24gcHVzaGlu
ZyB0aGUgc2Vjb25kIHBhdGNoIGFzIHdlIGp1c3Qgd2FudCB0byBkb3VibGUgY2hlY2sgdGhhdCB0
aGUKPiA+IHdoaXRlbGlzdGluZyBpcyByZXF1aXJlZC4KPgo+IFllYWgsIHdlIHNob3VsZCBvbmx5
IG5lZWQgdG8gcHVzaCBpdCBvbmNlIHRoZXJlIGlzIGFuIGFjdHVhbCBjb25zdW1lcgo+IHRoYXQg
d2lsbCBlbmFibGUgaXQuCj4KPiBSZWdhcmRzLCBKb29uYXMKPgo+ID4gLUNocmlzCj4gPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdAo+ID4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4gaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdm
eCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
