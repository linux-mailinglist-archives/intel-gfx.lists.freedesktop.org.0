Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B731F96C9D
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 01:02:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A9946E8AF;
	Tue, 20 Aug 2019 23:02:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87E576E14A
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 23:02:04 +0000 (UTC)
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D677B46660
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 23:02:03 +0000 (UTC)
Received: by mail-qt1-f200.google.com with SMTP id r10so570682qte.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 16:02:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=KJoqObo66CUzJ9UoiBDeSGBnzUEbDV63YL1UyIMcJRI=;
 b=EqPNwiDLwV5JTh8alolzth6r2DUv3Vrg+J+aJNXf+onkzoeRBy1MsOF5o7SoB8sR27
 xB4E9lp2x4IdfovXvDAh4mdwTDQErGg2mZ84nN2p0enyI1LOr0jC66UADMPXHia7cn16
 z3nHp9e1pjOJpP27v+YzAuYBLGJvvgw4JTqW1X9FRFkZazN6/jEO/QF+nF3tjf5nRwv6
 LdfPOyaER7vxsseQDQWFAKqJLra3wl8pYSzRP48sqZjm+sZJtJmIvb9MiqOWPTtPsYCC
 ODFxIJ103e3zOrVed69+SVmg6NZV7u4p3BAIB0CBCu273MQD1wKJhuj1482V0qQuA1AT
 sHkg==
X-Gm-Message-State: APjAAAUW2iGP6pU8W2XUo620ShjhYEXSX0EbYgjT95QIIhMhIvlripV7
 gPuJeaazYiZBlngAp+6U78qAl5mpYJMEBbhpIXqEfhkhQZQwrez6VY1pq3PJNg1hBBESqFNJkep
 vOJnmSb96L1mdcwIeC2svSBbrviWt
X-Received: by 2002:a37:d2c2:: with SMTP id
 f185mr29192055qkj.173.1566342122419; 
 Tue, 20 Aug 2019 16:02:02 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwm8rGZCptIyLSmmy+1EZgF2A2+z2L8uBIeAjHH0L0wrGt5pzaMzJ5BOujyu5YLYyARMVM5Ow==
X-Received: by 2002:a37:d2c2:: with SMTP id
 f185mr29192031qkj.173.1566342122174; 
 Tue, 20 Aug 2019 16:02:02 -0700 (PDT)
Received: from dhcp-10-20-1-11.bss.redhat.com ([144.121.20.162])
 by smtp.gmail.com with ESMTPSA id v23sm8737178qtq.40.2019.08.20.16.02.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 16:02:01 -0700 (PDT)
Message-ID: <af6925a36948b12b8e3490f27cd2c08d80d5c50f.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org
Date: Tue, 20 Aug 2019 19:01:59 -0400
In-Reply-To: <20190820161657.9658-1-ville.syrjala@linux.intel.com>
References: <20190820161657.9658-1-ville.syrjala@linux.intel.com>
Organization: Red Hat
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Do not create a new max_bpc prop
 for MST connectors
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
Cc: sunpeng.li@amd.com, Daniel Vetter <daniel.vetter@ffwll.ch>,
 stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmV2aWV3ZWQtYnk6IEx5dWRlIFBhdWwgPGx5dWRlQHJlZGhhdC5jb20+CgpPbiBUdWUsIDIwMTkt
MDgtMjAgYXQgMTk6MTYgKzAzMDAsIFZpbGxlIFN5cmphbGEgd3JvdGU6Cj4gRnJvbTogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiAKPiBXZSdyZSBub3Qg
YWxsb3dlZCB0byBjcmVhdGUgbmV3IHByb3BlcnRpZXMgYWZ0ZXIgZGV2aWNlIHJlZ2lzdHJhdGlv
bgo+IHNvIGZvciBNU1QgY29ubmVjdG9ycyB3ZSBuZWVkIHRvIGVpdGhlciBjcmVhdGUgdGhlIG1h
eF9icGMgcHJvcGVydHkKPiBlYXJsaWVyLCBvciB3ZSByZXVzZSBvbmUgd2UgYWxyZWFkeSBoYXZl
LiBMZXQncyBkbyB0aGUgbGF0dGVyIGFwcG9yYWNoCj4gc2luY2UgdGhlIGNvcnJlc3BvbmRpbmcg
U1NUIGNvbm5lY3RvciBhbHJlYWR5IGhhcyB0aGUgcHJvcCBhbmQgaXRzCj4gbWluL21heCBhcmUg
Y29ycmVjdCBhbHNvIGZvciB0aGUgTVNUIGNvbm5lY3Rvci4KPiAKPiBUaGUgcHJvYmxlbSB3YXMg
aGlnaGxpZ2h0ZWQgYnkgY29tbWl0IDRmNTM2OGI1NTQxYSAoImRybS9rbXM6Cj4gQ2F0Y2ggbW9k
ZV9vYmplY3QgbGlmZXRpbWUgZXJyb3JzIikgd2hpY2ggcmVzdWx0cyBpbiB0aGUgZm9sbG93aW5n
Cj4gc3BldzoKPiBbIDEzMzAuODc4OTQxXSBXQVJOSU5HOiBDUFU6IDIgUElEOiAxNTU0IGF0Cj4g
ZHJpdmVycy9ncHUvZHJtL2RybV9tb2RlX29iamVjdC5jOjQ1IF9fZHJtX21vZGVfb2JqZWN0X2Fk
ZCsweGEwLzB4YjAgW2RybV0KPiAuLi4KPiBbIDEzMzAuODc5MDA4XSBDYWxsIFRyYWNlOgo+IFsg
MTMzMC44NzkwMjNdICBkcm1fcHJvcGVydHlfY3JlYXRlKzB4YmEvMHgxODAgW2RybV0KPiBbIDEz
MzAuODc5MDM2XSAgZHJtX3Byb3BlcnR5X2NyZWF0ZV9yYW5nZSsweDE1LzB4MzAgW2RybV0KPiBb
IDEzMzAuODc5MDQ4XSAgZHJtX2Nvbm5lY3Rvcl9hdHRhY2hfbWF4X2JwY19wcm9wZXJ0eSsweDYy
LzB4ODAgW2RybV0KPiBbIDEzMzAuODc5MDg2XSAgaW50ZWxfZHBfYWRkX21zdF9jb25uZWN0b3Ir
MHgxMWYvMHgxNDAgW2k5MTVdCj4gWyAxMzMwLjg3OTA5NF0gIGRybV9kcF9hZGRfcG9ydC5pc3Jh
LjIwKzB4MjBiLzB4NDQwIFtkcm1fa21zX2hlbHBlcl0KPiAuLi4KPiAKPiBDYzogc3RhYmxlQHZn
ZXIua2VybmVsLm9yZwo+IENjOiBMeXVkZSBQYXVsIDxseXVkZUByZWRoYXQuY29tPgo+IENjOiBz
dW5wZW5nLmxpQGFtZC5jb20KPiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZnds
bC5jaD4KPiBDYzogU2VhbiBQYXVsIDxzZWFuQHBvb3JseS5ydW4+Cj4gRml4ZXM6IDVjYTBlZjhh
NTZiOCAoImRybS9pOTE1OiBBZGQgbWF4X2JwYyBwcm9wZXJ0eSBmb3IgRFAgTVNUIikKPiBTaWdu
ZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
Pgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jIHwg
MTAgKysrKysrKysrLQo+ICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAxIGRlbGV0
aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHBfbXN0LmMKPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0
LmMKPiBpbmRleCA4M2ZhYTI0NmUzNjEuLjk3NDg1ODFjMWQ2MiAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYwo+IEBAIC01MzYsNyArNTM2LDE1IEBA
IHN0YXRpYyBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcgo+ICppbnRlbF9kcF9hZGRfbXN0X2Nvbm5lY3Rv
cihzdHJ1Y3QgZHJtX2RwX21zdF90b3BvbG8KPiAgCj4gIAlpbnRlbF9hdHRhY2hfZm9yY2VfYXVk
aW9fcHJvcGVydHkoY29ubmVjdG9yKTsKPiAgCWludGVsX2F0dGFjaF9icm9hZGNhc3RfcmdiX3By
b3BlcnR5KGNvbm5lY3Rvcik7Cj4gLQlkcm1fY29ubmVjdG9yX2F0dGFjaF9tYXhfYnBjX3Byb3Bl
cnR5KGNvbm5lY3RvciwgNiwgMTIpOwo+ICsKPiArCS8qCj4gKwkgKiBSZXVzZSB0aGUgcHJvcCBm
cm9tIHRoZSBTU1QgY29ubmVjdG9yIGJlY2F1c2Ugd2UncmUKPiArCSAqIG5vdCBhbGxvd2VkIHRv
IGNyZWF0ZSBuZXcgcHJvcHMgYWZ0ZXIgZGV2aWNlIHJlZ2lzdHJhdGlvbi4KPiArCSAqLwo+ICsJ
Y29ubmVjdG9yLT5tYXhfYnBjX3Byb3BlcnR5ID0KPiArCQlpbnRlbF9kcC0+YXR0YWNoZWRfY29u
bmVjdG9yLT5iYXNlLm1heF9icGNfcHJvcGVydHk7Cj4gKwlpZiAoY29ubmVjdG9yLT5tYXhfYnBj
X3Byb3BlcnR5KQo+ICsJCWRybV9jb25uZWN0b3JfYXR0YWNoX21heF9icGNfcHJvcGVydHkoY29u
bmVjdG9yLCA2LCAxMik7Cj4gIAo+ICAJcmV0dXJuIGNvbm5lY3RvcjsKPiAgCi0tIApDaGVlcnMs
CglMeXVkZSBQYXVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
