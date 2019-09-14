Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E314B2A14
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Sep 2019 08:33:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15A0B6F4D0;
	Sat, 14 Sep 2019 06:33:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8AA46F4D7
 for <intel-gfx@lists.freedesktop.org>; Sat, 14 Sep 2019 06:33:02 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id c10so4786801wmc.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2019 23:33:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=3XPcJ1K6zSrEHgTdxlSmIIWjE5Z7FotjxcL8PRM0ODE=;
 b=SfhlqoWpCJ+FVNKbqMhz07nM7cKqwCeqWYa72w/OYKiOnWdFrbtAK62W/jixg1WwNt
 TMsadT7GJIC9HouvTaj/a+h6a0OdjHM/oi8UkTyc92dxBvKBbo/cLlSzN9f8SnQ+VV6j
 mM7u48tB93pCF8sE9VRkVmlDaBQR7QF8owMa4V9gXe87rcFVtfd1QYJzSf7L3OVkeUbQ
 bK3uWifl27fXzwAQSz6d6ctQXbSHiQCyVEFlbm/1Ffanxh7Xi7B8sYTdk/0YM3zjSRvF
 HImpl6bidhj3uFq2UDYCeAZQNsj8ThawDid9glFZNEO9e91CeIO1sEs9ZCziFxi4NFNf
 COTg==
X-Gm-Message-State: APjAAAV3R5+ckt3mk+u2l3RKWYlopkOBKdUFkg3QkA8RjjTf8SLokutH
 KkWDlMYgSr4vcjVlc39un6PuNqwsFpQDXqxHjHubIw==
X-Google-Smtp-Source: APXvYqwlY71z2twFEK3KMy1LvjepDrt8/f1Oj7Z1h8OVRJQhbVzhvl2EWXFlfDiCNNn4Q/Oh66fp3d+b0QhIT2of4W0=
X-Received: by 2002:a1c:1a4b:: with SMTP id a72mr6113480wma.44.1568442781220; 
 Fri, 13 Sep 2019 23:33:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190913223251.354877-1-jose.souza@intel.com>
 <20190913223251.354877-5-jose.souza@intel.com>
In-Reply-To: <20190913223251.354877-5-jose.souza@intel.com>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Fri, 13 Sep 2019 23:32:49 -0700
Message-ID: <CAKi4VAKxwwnpT8J_4FwrgKDEaEgzZacy_H+20dCDDQ4VYUF5aA@mail.gmail.com>
To: =?UTF-8?Q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=3XPcJ1K6zSrEHgTdxlSmIIWjE5Z7FotjxcL8PRM0ODE=;
 b=qKbZpawNJFTqfT/KWs1ilDuPi81Cqjz7UdeyAzF+xV6gRVULxyThp8UUBcXt2Mj5uh
 qJvaRRZ5Vik8GVqhXaIiT1iWPfvtz6n9hpFaHlWpH2jRgCLPxNx3HWxl3Cq+VY+ShlhP
 OzXO5K36NGTT4DK/PGYDcUVreFFKfK37yGQEMrK41RUX5MYlakaKrJmetXXGIl2RcKJM
 00e10Fabw8vwUcPTXI10nWxh24n8dZfchtQF5/bhGkWQSkQU/35TYC/j78DoqO1PcWmx
 FCZzu4pEeSiBPGT4H0+0z/rmjsFQGcK1SCyOWv4W33VL+tje0+MiI6Fuq/Wjfr3gV+Va
 GwbQ==
Subject: Re: [Intel-gfx] [PATCH 04/14] drm/i915/tgl: Fix driver crash when
 update_active_dpll is called
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
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>, Taylor@freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBTZXAgMTMsIDIwMTkgYXQgMzozMyBQTSBKb3PDqSBSb2JlcnRvIGRlIFNvdXphCjxq
b3NlLnNvdXphQGludGVsLmNvbT4gd3JvdGU6Cj4KPiBGcm9tOiAiVGF5bG9yLCBDbGludG9uIEEi
IDxjbGludG9uLmEudGF5bG9yQGludGVsLmNvbT4KPgo+IFRHTCBQTEwgZnVuY3Rpb24gdGFibGUg
ZG9lc24ndCBpbmNsdWRlIGFuZCB1cGRhdGVfYWN0aXZlX3BsbCBmdW5jdGlvbi4KPiBUaGUgZHJp
dmVyIGF0dGVtcHRzIHRvIG1ha2UgYSBjYWxsIHRvIHRoaXMgZnVuY3Rpb24gYW5kIGNyYXNoZXMg
ZHVyaW5nCj4gUExMIGNoYW5nZXMuCgp0aGUgY3Jhc2ggd291bGQgb25seSBvY2N1ciBpZiB0aGUg
cG9ydCB3YXMgaW5pdGlhbGl6ZWQuIFRoZSBvcmRlcmluZwppbiB0aGlzIHNlcmllcyBtZWFucyB0
aGlzIGlzCm5vdCBhICJmaXgiIGJ1dCByYXRoZXIgZmluaXNoaW5nIHRoZSBpbXBsZW1lbnRhdGlv
biBmb3IgVEMgcG9ydHMKYmVmb3JlIGluaXRpYWxpemluZyB0aGVtLiBTbyB3ZSBtYXkKd2FudCB0
byBhZGp1c3QgdGhlIGNvbW1pdCBtZXNzYWdlIGFjY29yZGluZ2x5LiBUaGUgcmVhc29uIHdlIG1p
c3NlZAp0aGF0IGZvciBUR0wgaXMgdGhhdCBpdHMgbmVlZCBjYW1lCmluIHBhcmFsbGVsIHRvIHRo
ZSBUR0wgc3VwcG9ydCBoaXR0aW5nIHVwc3RyZWFtLgoKTXkgbml0IHdpdGggdGhpcyBob29rIGlz
IHRoYXQgYHVwZGF0ZV9hY3RpdmVfZHBsbGAgaXMgZXhjbHVzaXZlbHkgdXNlZApieSAqVEMqIHBv
cnRzIG9uIGdlbiAxMSsgYW5kCmEpIGl0J3MgIG5vdCBjbGVhciBhYm91dCB0aGF0IGZyb20gdGhl
IG5hbWUgYW5kL29yIGIpIGlmIGl0J3MgZ2VuZXJpYwppdCBzaG91bGQgbm90IGNyYXNoIHdoZW4g
aXQncyBtaXNzaW5nLgoKSSB0aGluayBJbXJlIGhhZCBhIHBhdGNoIHRvIGFkZHJlc3MgaXQsIGF0
IGxlYXN0IHJlbmFtaW5nIHRoZSBob29rLCBJCmRvbid0IHJlbWVtYmVyLiArSW1yZS4KCkx1Y2Fz
IERlIE1hcmNoaQoKPgo+IFNpZ25lZC1vZmYtYnk6IFRheWxvciwgQ2xpbnRvbiBBIDxjbGludG9u
LmEudGF5bG9yQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcGxsX21nci5jIHwgMSArCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBs
bF9tZ3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYwo+
IGluZGV4IDk4Mjg4ZWRmODhmMC4uODRlNzM0ZDQ0ODI4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYwo+IEBAIC0zNDc5LDYgKzM0NzksNyBA
QCBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2RwbGxfbWdyIHRnbF9wbGxfbWdyID0gewo+ICAg
ICAgICAgLmRwbGxfaW5mbyA9IHRnbF9wbGxzLAo+ICAgICAgICAgLmdldF9kcGxscyA9IGljbF9n
ZXRfZHBsbHMsCj4gICAgICAgICAucHV0X2RwbGxzID0gaWNsX3B1dF9kcGxscywKPiArICAgICAg
IC51cGRhdGVfYWN0aXZlX2RwbGwgPSBpY2xfdXBkYXRlX2FjdGl2ZV9kcGxsLAo+ICAgICAgICAg
LmR1bXBfaHdfc3RhdGUgPSBpY2xfZHVtcF9od19zdGF0ZSwKPiAgfTsKPgo+IC0tCj4gMi4yMy4w
Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IElu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4g
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
CgoKLS0gCkx1Y2FzIERlIE1hcmNoaQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
