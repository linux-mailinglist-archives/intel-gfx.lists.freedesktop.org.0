Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D881227B77
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jul 2020 11:17:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5631E6E52D;
	Tue, 21 Jul 2020 09:17:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com
 [IPv6:2607:f8b0:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A33F6E520
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jul 2020 09:17:01 +0000 (UTC)
Received: by mail-ot1-x342.google.com with SMTP id 72so14563721otc.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jul 2020 02:17:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=zVQSUY5HZU/pPtYoYXUGW3LmwsCziy0wve5UBkyHrrQ=;
 b=YcswjV5+sW7k4OtUfwNn9hx67gBvVQOvW9Tk9wGMNqaG/doxsM5y4CyCrpKg1usyTt
 bH/LZD0gc2etqlISZDR7lPuxTqeYU52Zx3go4OimP5DjwpVo8TuBZGGS4wLt+NCMwM1Z
 AiEtABu/1Xgz7dcByADkkFcrh14udYEoEEaDk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=zVQSUY5HZU/pPtYoYXUGW3LmwsCziy0wve5UBkyHrrQ=;
 b=XSos/I5sYbUH9/iJQb0xlhwjQky+E4F5V1KT53fTbE1tK3gB9We1I/DtIqoXOLLh5f
 PiQo9VBoWcnnIaVjpi/Yjvxxlptw4/OiypTUUrXTSKIxBpNFv0dOuL4pmO4/YD1e78ID
 7GShYnQMJrUjjRTYykV1n9MW9ot0DVXl8ZO9RIT4AFVptFSSzME93AaJWxX1s7RB1z9N
 /iCtgauTXtq4t8XmyGakZkZkLj+892xLclKNBVDgbSibExvglBEwMT+GT1YfoZbu4tsb
 KU6w7Vfl+hFFb03In0ntskz7ZzmEeI7P6kkXSxUsVi+15OJvKg7ew01EqtTQwZ+jSP6/
 D/DQ==
X-Gm-Message-State: AOAM533X1IxeKZoiXtN0nU0ZSb0slswtn6ommiHXqduixyYo+VKOLb81
 V5F4u3ZxG7P1aWjzJnUv2BcLuSWgze2w/hPD8G0FKg==
X-Google-Smtp-Source: ABdhPJxZquZ0N4eWOhwpu33exVxqqStZYn7FsvW9Ie8Zgyle1yIBJkUOzhMdXgOzZ23hXhbKc5hk6nuu/ySFzfqVga0=
X-Received: by 2002:a05:6830:1613:: with SMTP id
 g19mr22748873otr.303.1595323020252; 
 Tue, 21 Jul 2020 02:17:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200707201229.472834-4-daniel.vetter@ffwll.ch>
 <20200709123339.547390-1-daniel.vetter@ffwll.ch>
 <93b673b7-bb48-96eb-dc2c-bd4f9304000e@shipmail.org>
 <20200721074157.GB3278063@phenom.ffwll.local>
 <3603bb71-318b-eb53-0532-9daab62dce86@amd.com>
 <57a5eb9d-b74f-8ce4-7199-94e911d9b68b@shipmail.org>
 <2ca2c004-1e11-87f5-4bd8-761e1b44d21f@amd.com>
In-Reply-To: <2ca2c004-1e11-87f5-4bd8-761e1b44d21f@amd.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Tue, 21 Jul 2020 11:16:49 +0200
Message-ID: <CAKMK7uHcWMGnLqmNqoyYmk_UcErEZwRon-ybc9t-Joa+bHacaQ@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Subject: Re: [Intel-gfx] [Linaro-mm-sig] [PATCH 1/2] dma-buf.rst: Document
 why indefinite fences are a bad idea
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
Cc: Daniel Stone <daniels@collabora.com>,
 linux-rdma <linux-rdma@vger.kernel.org>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Steve Pronovost <spronovo@microsoft.com>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Jesse Natalie <jenatali@microsoft.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdWwgMjEsIDIwMjAgYXQgMTA6NTUgQU0gQ2hyaXN0aWFuIEvDtm5pZwo8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToKPgo+IEFtIDIxLjA3LjIwIHVtIDEwOjQ3IHNjaHJp
ZWIgVGhvbWFzIEhlbGxzdHLDtm0gKEludGVsKToKPiA+Cj4gPiBPbiA3LzIxLzIwIDk6NDUgQU0s
IENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4gPj4gQW0gMjEuMDcuMjAgdW0gMDk6NDEgc2Nocmll
YiBEYW5pZWwgVmV0dGVyOgo+ID4+PiBPbiBNb24sIEp1bCAyMCwgMjAyMCBhdCAwMToxNToxN1BN
ICswMjAwLCBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwpCj4gPj4+IHdyb3RlOgo+ID4+Pj4gSGks
Cj4gPj4+Pgo+ID4+Pj4gT24gNy85LzIwIDI6MzMgUE0sIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4g
Pj4+Pj4gQ29tZXMgdXAgZXZlcnkgZmV3IHllYXJzLCBnZXRzIHNvbWV3aGF0IHRlZGlvdXMgdG8g
ZGlzY3VzcywgbGV0J3MKPiA+Pj4+PiB3cml0ZSB0aGlzIGRvd24gb25jZSBhbmQgZm9yIGFsbC4K
PiA+Pj4+Pgo+ID4+Pj4+IFdoYXQgSSdtIG5vdCBzdXJlIGFib3V0IGlzIHdoZXRoZXIgdGhlIHRl
eHQgc2hvdWxkIGJlIG1vcmUKPiA+Pj4+PiBleHBsaWNpdCBpbgo+ID4+Pj4+IGZsYXQgb3V0IG1h
bmRhdGluZyB0aGUgYW1ka2ZkIGV2aWN0aW9uIGZlbmNlcyBmb3IgbG9uZyBydW5uaW5nCj4gPj4+
Pj4gY29tcHV0ZQo+ID4+Pj4+IHdvcmtsb2FkcyBvciB3b3JrbG9hZHMgd2hlcmUgdXNlcnNwYWNl
IGZlbmNpbmcgaXMgYWxsb3dlZC4KPiA+Pj4+IEFsdGhvdWdoIChpbiBteSBodW1ibGUgb3Bpbmlv
bikgaXQgbWlnaHQgYmUgcG9zc2libGUgdG8gY29tcGxldGVseQo+ID4+Pj4gdW50YW5nbGUKPiA+
Pj4+IGtlcm5lbC1pbnRyb2R1Y2VkIGZlbmNlcyBmb3IgcmVzb3VyY2UgbWFuYWdlbWVudCBhbmQg
ZG1hLWZlbmNlcwo+ID4+Pj4gdXNlZCBmb3IKPiA+Pj4+IGNvbXBsZXRpb24tIGFuZCBkZXBlbmRl
bmN5IHRyYWNraW5nIGFuZCBsaWZ0IGEgbG90IG9mIHJlc3RyaWN0aW9ucwo+ID4+Pj4gZm9yIHRo
ZQo+ID4+Pj4gZG1hLWZlbmNlcywgaW5jbHVkaW5nIHByb2hpYml0aW5nIGluZmluaXRlIG9uZXMs
IEkgdGhpbmsgdGhpcyBtYWtlcwo+ID4+Pj4gc2Vuc2UKPiA+Pj4+IGRlc2NyaWJpbmcgdGhlIGN1
cnJlbnQgc3RhdGUuCj4gPj4+IFllYWggSSB0aGluayBhIGZ1dHVyZSBwYXRjaCBuZWVkcyB0byB0
eXBlIHVwIGhvdyB3ZSB3YW50IHRvIG1ha2UgdGhhdAo+ID4+PiBoYXBwZW4gKGZvciBzb21lIGNy
b3NzIGRyaXZlciBjb25zaXN0ZW5jeSkgYW5kIHdoYXQgbmVlZHMgdG8gYmUKPiA+Pj4gY29uc2lk
ZXJlZC4gU29tZSBvZiB0aGUgbmVjZXNzYXJ5IHBhcnRzIGFyZSBhbHJlYWR5IHRoZXJlICh3aXRo
IGxpa2UKPiA+Pj4gdGhlCj4gPj4+IHByZWVtcHRpb24gZmVuY2VzIGFtZGtmZCBoYXMgYXMgYW4g
ZXhhbXBsZSksIGJ1dCBJIHRoaW5rIHNvbWUgY2xlYXIKPiA+Pj4gZG9jcwo+ID4+PiBvbiB3aGF0
J3MgcmVxdWlyZWQgZnJvbSBib3RoIGh3LCBkcml2ZXJzIGFuZCB1c2Vyc3BhY2Ugd291bGQgYmUg
cmVhbGx5Cj4gPj4+IGdvb2QuCj4gPj4KPiA+PiBJJ20gY3VycmVudGx5IHdyaXRpbmcgdGhhdCB1
cCwgYnV0IHByb2JhYmx5IHN0aWxsIG5lZWQgYSBmZXcgZGF5cyBmb3IKPiA+PiB0aGlzLgo+ID4K
PiA+IEdyZWF0ISBJIHB1dCBkb3duIHNvbWUgKHZlcnkpIGluaXRpYWwgdGhvdWdodHMgYSBjb3Vw
bGUgb2Ygd2Vla3MgYWdvCj4gPiBidWlsZGluZyBvbiBldmljdGlvbiBmZW5jZXMgZm9yIHZhcmlv
dXMgaGFyZHdhcmUgY29tcGxleGl0eSBsZXZlbHMgaGVyZToKPiA+Cj4gPiBodHRwczovL25hbTEx
LnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cHMlM0ElMkYlMkZnaXRs
YWIuZnJlZWRlc2t0b3Aub3JnJTJGdGhvbWFzaCUyRmRvY3MlMkYtJTJGYmxvYiUyRm1hc3RlciUy
RlVudGFuZ2xpbmclMjUyMGRtYS1mZW5jZSUyNTIwYW5kJTI1MjBtZW1vcnklMjUyMGFsbG9jYXRp
b24ub2R0JmFtcDtkYXRhPTAyJTdDMDElN0NjaHJpc3RpYW4ua29lbmlnJTQwYW1kLmNvbSU3Qzg5
NzhiYmQ3ODIzZTRiNDE2NjM3MDhkODJkNTJhZGQzJTdDM2RkODk2MWZlNDg4NGU2MDhlMTFhODJk
OTk0ZTE4M2QlN0MwJTdDMCU3QzYzNzMwOTE4MDQyNDMxMjM5MCZhbXA7c2RhdGE9dFR4eDJ2Znpm
d0xNMUlCSlNxcUFaUncxNjA0UiUyRjBiSTNNd04xJTJGQmYyVlElM0QmYW1wO3Jlc2VydmVkPTAK
PiA+Cj4KPiBJIGRvbid0IHRoaW5rIHRoYXQgdGhpcyB3aWxsIGV2ZXIgYmUgcG9zc2libGUuCj4K
PiBTZWUgdGhhdCBEYW5pZWwgZGVzY3JpYmVzIGluIGhpcyB0ZXh0IGlzIHRoYXQgaW5kZWZpbml0
ZSBmZW5jZXMgYXJlIGEKPiBiYWQgaWRlYSBmb3IgbWVtb3J5IG1hbmFnZW1lbnQsIGFuZCBJIHRo
aW5rIHRoYXQgdGhpcyBpcyBhIGZpeGVkIGZhY3QuCj4KPiBJbiBvdGhlciB3b3JkcyB0aGUgd2hv
bGUgY29uY2VwdCBvZiBzdWJtaXR0aW5nIHdvcmsgdG8gdGhlIGtlcm5lbCB3aGljaAo+IGRlcGVu
ZHMgb24gc29tZSB1c2VyIHNwYWNlIGludGVyYWN0aW9uIGRvZXNuJ3Qgd29yayBhbmQgbmV2ZXIg
d2lsbC4KPgo+IFdoYXQgY2FuIGJlIGRvbmUgaXMgdGhhdCBkbWFfZmVuY2VzIHdvcmsgd2l0aCBo
YXJkd2FyZSBzY2hlZHVsZXJzLiBFLmcuCj4gd2hhdCB0aGUgS0ZEIHRyaWVzIHRvIGRvIHdpdGgg
aXRzIHByZWVtcHRpb24gZmVuY2VzLgo+Cj4gQnV0IGZvciB0aGlzIHlvdSBuZWVkIGEgYmV0dGVy
IGNvbmNlcHQgYW5kIGRlc2NyaXB0aW9uIG9mIHdoYXQgdGhlCj4gaGFyZHdhcmUgc2NoZWR1bGVy
IGlzIHN1cHBvc2VkIHRvIGRvIGFuZCBob3cgdGhhdCBpbnRlcmFjdHMgd2l0aAo+IGRtYV9mZW5j
ZSBvYmplY3RzLgoKWWVhaCBJIHRoaW5rIHRyeWluZyB0byBzcGxpdCBkbWFfZmVuY2Ugd29udCB3
b3JrLCBzaW1wbHkgYmVjYXVzZSBvZgppbmVydGlhLiBDcmVhdGluZyBhbiBlbnRpcmVseSBuZXcg
dGhpbmcgZm9yIGF1Z21lbnRlZCB1c2Vyc3BhY2UKY29udHJvbGxlZCBmZW5jaW5nLCBhbmQgdGhl
biBqb3R0aW5nIGRvd24gYWxsIHRoZSBydWxlcyB0aGUKa2VybmVsL2h3L3VzZXJzcGFjZSBuZWVk
IHRvIG9iZXkgdG8gbm90IGJyZWFrIGRtYV9mZW5jZSBpcyB3aGF0IEkgaGFkCmluIG1pbmQuIEFu
ZCBJIGd1ZXNzIHRoYXQncyBhbHNvIHdoYXQgQ2hyaXN0aWFuIGlzIHdvcmtpbmcgb24uIEUuZy4K
anVzdCBnb2luZyB0aHJvdWdoIGFsbCB0aGUgY2FzZXMgb2YgaG93IG11Y2ggeW91ciBodyBjYW4g
cHJlZW1wdCBvcgpoYW5kbGUgcGFnZSBmYXVsdHMgb24gdGhlIGdwdSwgYW5kIHdoYXQgdGhhdCBt
ZWFucyBpbiB0ZXJtcyBvZgpkbWFfZmVuY2VfYmVnaW4vZW5kX3NpZ25hbGxpbmcgYW5kIG90aGVy
IGNvbnN0cmFpbnRzIHdvdWxkIGJlIHJlYWxseQpnb29kLgotRGFuaWVsCgo+Cj4gQ2hyaXN0aWFu
Lgo+Cj4gPgo+ID4gL1Rob21hcwo+ID4KPiA+Cj4KCgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2Fy
ZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
