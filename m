Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF0613940A
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 15:55:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D22B89AEB;
	Mon, 13 Jan 2020 14:55:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB88489AEB
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2020 14:55:01 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id z7so8849919wrl.13
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2020 06:55:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=reply-to:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=EYTVgZ1IGfe9tIQbUh6p6CqAKXONoTvom4Fu/MjPnew=;
 b=m/8vT9iyDef+FO9x0KcrS1H80FRKG1QnhthkC151KKbMwO4v+k612ZqcxErXcEugEl
 Lwe8zZ6DSr652vXYtFyBYDK0JNnls4yL4Sf/x6voa3XfNNMjxqROxDRBzo137ms032mg
 D6aqkANbzJYCMMhhxiKDgpXEUfm44EKlnJXnUSPLHodsdlmfmvw8WBK2RXaRCFee+YA3
 Jjcu66JKg4XOKtdOWu295V5+XihBx/qe0SZzA20oRRXa5SgoTLoyBOxJa5VmmLZXgXuJ
 A+oR6NWNgQINJDnDIrrLXSsvyCWTGQUyHFTYFa23btPvAZxB/9PtyBeRabvsuODx1C5r
 Cfvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=EYTVgZ1IGfe9tIQbUh6p6CqAKXONoTvom4Fu/MjPnew=;
 b=HFXBB1Bsy+cE5WEQIwgFtEgcjkUdwl7SEEP6kLeH1PPfqEkZT8OktcJaBp7e5gKs3C
 P2k+T1vH84ezvvPHyHIYqXMg9bbrkgBtmNzch3X5UojmjIuhU8sJgTkIORye67Wkr3hr
 6xbS0WRe59yaHgMltmNAMBtOcBxW/xhMULi94zurlNd4Ft8woIHAwJMppR0+4/QXoySs
 O8mwwObjj+f54+Y11w/IUB5rozcUzvNXJTokrqe1sL/t/3doR2WhM6tPkKtY3q8h3FJ/
 dTtx7coed83GhG6Jrc8Nk0RzmlkgURA6bZJWBSaUnFXc4HQhn+VJpk9Qq05W04Vh4gV+
 ksaQ==
X-Gm-Message-State: APjAAAX4wAl3KP+Uun5rTQ9DDzrqjMwLyc5e0fTmg7XuzLTV2t1xGlep
 jH+RDa9a2MhkacLBrm5i7yXiTQFZeJ4=
X-Google-Smtp-Source: APXvYqz8CPQ+K4pLQDWpMK68SOEoCocGH8G5s1AYV9HgX2Uw6nP7xBBdE/le26bNcvo4m+OdYeJPfg==
X-Received: by 2002:a5d:4752:: with SMTP id o18mr18591687wrs.330.1578927299935; 
 Mon, 13 Jan 2020 06:54:59 -0800 (PST)
Received: from [0.0.0.0] ([134.134.139.83])
 by smtp.googlemail.com with ESMTPSA id h8sm15960052wrx.63.2020.01.13.06.54.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 Jan 2020 06:54:59 -0800 (PST)
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200110183228.8199-1-ville.syrjala@linux.intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Message-ID: <8063735e-51e7-2b48-9bd0-4488957eb656@gmail.com>
Date: Mon, 13 Jan 2020 16:54:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200110183228.8199-1-ville.syrjala@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915: Make a copy of the ggtt view
 for slave plane
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
Reply-To: juhapekka.heikkila@gmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMTAuMS4yMDIwIDIwLjMyLCBWaWxsZSBTeXJqYWxhIHdyb3RlOgo+IEZyb206IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gaW50ZWxfcHJlcGFy
ZV9wbGFuZV9mYigpIHdpbGwgYWx3YXlzIHBpbiBwbGFuZV9zdGF0ZS0+aHcuZmIgd2hlbmV2ZXIK
PiBpdCBpcyBwcmVzZW50LiBXZSBjb3B5IHRoYXQgZnJvbSB0aGUgbWFzdGVyIHBsYW5lIHRvIHRo
ZSBzbGF2ZSBwbGFuZSwKPiBidXQgd2UgZmFpbCB0byBjb3B5IHRoZSBjb3JyZXNwb25kaW5nIGdn
dHQgdmlldy4gVGh1cyB3aGVuIGl0IGNvbWVzIHRpbWUKPiB0byBwaW4gdGhlIHNsYXZlIHBsYW5l
J3MgZmIgd2UgdXNlIHNvbWUgc3RhbGUgZ2d0dCB2aWV3IGxlZnQgb3ZlciBmcm9tCj4gdGhlIGxh
c3QgdGltZSB0aGUgcGxhbmUgd2FzIHVzZWQgYXMgYSBub24tc2xhdmUgcGxhbmUuIElmIHRoYXQg
cHJldmlvdXMKPiB1c2UgaW52b2x2ZWQgOTAvMjcwIGRlZ3JlZSByb3RhdGlvbiBvciByZW1hcHBp
bmcgd2UnbGwgdHJ5IHRvIHNodWZmbGUKPiB0aGUgcGFnZXMgb2YgdGhlIG5ldyBmYiBhcm91bmQg
YWNjb3JkaW5naW5nbHkuIEhvd2V2ZXIgdGhlIG5ldwo+IGZiIG1heSBiZSBiYWNrZWQgYnkgYSBi
byB3aXRoIGxlc3MgcGFnZXMgdGhhbiB3aGF0IHRoZSBnZ3R0IHZpZXcKPiByb3RhdGlvbi9yZW1h
cHBlZCBpbmZvIHJlcXVpcmVzLCBhbmQgc28gd2Ugd2UgdHJpcCBhIEdFTV9CVUcoKS4KPiAKPiBT
dGVwcyB0byByZXByb2R1Y2Ugb24gaWNsOgo+IDEuIHBsYW5lIDE6IHdoYXRldmVyCj4gICAgIHBs
YW5lIDY6IGxhcmdpc2ggIU5WMTIgZmIgKyA5MCBkZWdyZWUgcm90YXRpb24KPiAyLiBwbGFuZSAx
OiBzbWFsbGlzaCBOVjEyIGZiCj4gICAgIHBsYW5lIDY6IG1ha2UgaW52aXNpYmxlIHNvIGl0IGdl
dHMgc2xhdmVkIHRvIHBsYW5lIDEKPiAzLiBHRU1fQlVHKCkKPiAKPiBDYzogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFy
dGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4gQ2xvc2VzOiBodHRwczovL2dpdGxhYi5m
cmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy85NTEKPiBGaXhlczogMWY1OTRiMjA5ZmUx
ICgiZHJtL2k5MTU6IFJlbW92ZSBzcGVjaWFsIGNhc2Ugc2xhdmUgaGFuZGxpbmcgZHVyaW5nIGh3
IHByb2dyYW1taW5nLCB2My4iKQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDEgKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMKPiBpbmRleCA1OWMzNzU4NzkxODYuLmZhZmI2NzY4OWRlZSAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gQEAgLTEyMzY2LDYgKzEy
MzY2LDcgQEAgc3RhdGljIGludCBpY2xfY2hlY2tfbnYxMl9wbGFuZXMoc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUpCj4gICAJCS8qIENvcHkgcGFyYW1ldGVycyB0byBzbGF2ZSBw
bGFuZSAqLwo+ICAgCQlsaW5rZWRfc3RhdGUtPmN0bCA9IHBsYW5lX3N0YXRlLT5jdGwgfCBQTEFO
RV9DVExfWVVWNDIwX1lfUExBTkU7Cj4gICAJCWxpbmtlZF9zdGF0ZS0+Y29sb3JfY3RsID0gcGxh
bmVfc3RhdGUtPmNvbG9yX2N0bDsKPiArCQlsaW5rZWRfc3RhdGUtPnZpZXcgPSBwbGFuZV9zdGF0
ZS0+dmlldzsKPiAgIAkJbWVtY3B5KGxpbmtlZF9zdGF0ZS0+Y29sb3JfcGxhbmUsIHBsYW5lX3N0
YXRlLT5jb2xvcl9wbGFuZSwKPiAgIAkJICAgICAgIHNpemVvZihsaW5rZWRfc3RhdGUtPmNvbG9y
X3BsYW5lKSk7Cj4gICAKPiAKClRoaXMgZml4ZXMgYWxzbyBodHRwczovL2dpdGxhYi5mcmVlZGVz
a3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy8xOTkKClRob3VnaCwgdGhhdCBpcyBsaXN0ZWQgYWxz
byBmb3Igb2xkZXIgcGxhdGZvcm1zIGJ1dCBJIHNlZSBpdCBoYXBwZW5pbmcgCm9ubHkgb24gaWNs
L3RnbC4KCi9KdWhhLVBla2thCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
