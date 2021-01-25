Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D2DF302E12
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 22:39:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B16289B22;
	Mon, 25 Jan 2021 21:39:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E1496E037
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 21:39:28 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id gx5so20154710ejb.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 13:39:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=t9M0ITSOMveR16He0Zm7nxQPCeyzBQO582YAXWbdC2o=;
 b=t0oz/yLhImMScrEx2TROt6/Yj3l4nmrPWnMrhRHCnMxVDCMTlsIzNkdZ2eROmvDMrv
 5vP69HxELvTiYSAVQG12RN9H75We6yVDbMFNnlh/WRORv5i1NCttzVBb9EZaLWjQGmHK
 gFdLbjNX6TaGRsiA8XbqMMdq4vxqnAvTfZRQfetfURkUfkHu1iKKl+Sv+MkkUNhB9VgQ
 XQ6QvEthiGSNOSfBlPzNXv4jLO3IXy1c/By1rKpMKaO7+p0ZhrOP7Ec73hT9G52jzYGU
 J3kyZ7bLTYApYSG6wDla3CvjivJ3oUKtMpuhL21VxUYq6SjJHw2dhSMkSzdW8vpXLdc+
 bhxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=t9M0ITSOMveR16He0Zm7nxQPCeyzBQO582YAXWbdC2o=;
 b=BUYVXAXYOKMMhJ/8vZUxebkJXswkEDtZyYsIAQyO3OdbtEiA3BCpef7liGWdsa1aOV
 LoZ+is+PKnQUTdeJysFHUg0Umvd5VfnECWIQDUplhFpkKAWBHyKEbnpgjSOtBm9ZuuKV
 qcGKpjb6gTOAkfd5LQm/7oBhJvKIQ47N7C5XMYSS4FM7TKvgYyZOy7nJgGC2rk9aveEB
 PUwaAVnQP53iMAlsPqXSnbvFlyW9crH17row0zDl13YTfiT3HPgNdPVW0YZT+WwKS1Tu
 apRpFnoBXyq52h130WBk56ulO+7R8sEC4l9XVXhpSNjUXr3C8kymsRPS87CDMnijJWuQ
 M6cQ==
X-Gm-Message-State: AOAM53195R3lCX2VBYnCYzQ6MeqgYWA1DshpfVuJUZUN64yFEJpMJUP4
 swdlKmlTx/8DOoZ/15AxvZUje9FKN7IJ7dtvp3TI2Q==
X-Google-Smtp-Source: ABdhPJzrO99CGgskBefYU39omC9nnH6nw3FKnnSGsYGK8edxEXo2adNViTXnxzMLTczwgTE6VE4u7ypkvTn2T/5MSYY=
X-Received: by 2002:a17:906:4893:: with SMTP id
 v19mr1544854ejq.454.1611610767093; 
 Mon, 25 Jan 2021 13:39:27 -0800 (PST)
MIME-Version: 1.0
References: <20201126105539.2661-1-chris@chris-wilson.co.uk>
 <20201126140841.1982-1-chris@chris-wilson.co.uk>
 <20201126155010.GD6112@intel.com>
In-Reply-To: <20201126155010.GD6112@intel.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Mon, 25 Jan 2021 15:39:15 -0600
Message-ID: <CAOFGe96x7bDEo_g7ga97q=sRCNNSrKcJvBK=fguwwCaSobFSRQ@mail.gmail.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Program mocs:63 for cache
 eviction on gen9
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>, stable@vger.kernel.org,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SSBqdXN0IHB1bGxlZCBkcm0tdGlwIHdpdGggYm90aCB0aGlzIGFuZCAiZHJtL2k5MTUvZ3Q6IERl
Y2xhcmUgZ2VuOQpoYXMgNjQgbW9jcyBlbnRyaWVzISIgYW5kIHRoZSBoYW5nIHBlcnNpc3RzLiAg
WW91IHJlYWxseSBoYWQgbXkgaG9wZXMKdXAgdGhlcmUuLi4uICBJIHRoaW5rIHdlIG5lZWQgdG8g
bWVyZ2UgdGhlIEwzJCBkaXNhYmxlIHBhdGNoLgoKLS1KYXNvbgoKCk9uIFRodSwgTm92IDI2LCAy
MDIwIGF0IDk6NTAgQU0gVmlsbGUgU3lyasOkbMOkCjx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4gd3JvdGU6Cj4KPiBPbiBUaHUsIE5vdiAyNiwgMjAyMCBhdCAwMjowODo0MVBNICswMDAw
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBWaWxsZSBub3RpY2VkIHRoYXQgdGhlIGxhc3QgbW9j
cyBlbnRyeSBpcyB1c2VkIHVuY29uZGl0aW9uYWxseSBieSB0aGUgSFcKPiA+IHdoZW4gaXQgcGVy
Zm9ybXMgY2FjaGUgZXZpY3Rpb25zLCBhbmQgbm90ZWQgdGhhdCB3aGlsZSB0aGUgdmFsdWUgaXMg
bm90Cj4gPiBtZWFudCB0byBiZSB3cml0YWJsZSBieSB0aGUgZHJpdmVyLCB3ZSBzaG91bGQgcHJv
Z3JhbSBpdCB0byBhIHJlYXNvbmFibGUKPiA+IHZhbHVlIG5ldmVydGhlbGVzcy4KPiA+Cj4gPiBB
cyBpdCB0dXJucyBvdXQsIHdlIGNhbiBjaGFuZ2UgdGhlIHZhbHVlIG9mIG1vY3M6NjMgYW5kIHRo
ZSB2YWx1ZSB3ZQo+ID4gd2VyZSBwcm9ncmFtbWluZyBpbnRvIGl0IHdvdWxkIGNhdXNlIGhhcmQg
aGFuZ3MgaW4gY29uanVuY3Rpb24gd2l0aAo+ID4gYXRvbWljIG9wZXJhdGlvbnMuCj4gPgo+ID4g
djI6IEFkZCBkZXRhaWxzIGZyb20gYnNwZWMgYWJvdXQgaG93IGl0IGlzIHVzZWQgYnkgSFcKPiA+
Cj4gPiBTdWdnZXN0ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+Cj4gPiBDbG9zZXM6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0v
aW50ZWwvLS9pc3N1ZXMvMjcwNwo+ID4gRml4ZXM6IDNiYmFiYTBjZWFhMiAoImRybS9pOTE1OiBB
ZGRlZCBQcm9ncmFtbWluZyBvZiB0aGUgTU9DUyIpCj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IENjOiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+ID4gQ2M6IEphc29uIEVrc3RyYW5kIDxq
YXNvbkBqbGVrc3RyYW5kLm5ldD4KPiA+IENjOiA8c3RhYmxlQHZnZXIua2VybmVsLm9yZz4gIyB2
NC4zKwo+ID4gLS0tCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jIHwg
MTQgKysrKysrKysrKysrKy0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9tb2NzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmMKPiA+
IGluZGV4IDI1NDg3M2UxNjQ2ZS4uMjZjZWRkZTgwNDc2IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9tb2NzLmMKPiA+IEBAIC0xMzEsNyArMTMxLDE5IEBAIHN0YXRpYyBjb25z
dCBzdHJ1Y3QgZHJtX2k5MTVfbW9jc19lbnRyeSBza2xfbW9jc190YWJsZVtdID0gewo+ID4gICAg
ICAgR0VOOV9NT0NTX0VOVFJJRVMsCj4gPiAgICAgICBNT0NTX0VOVFJZKEk5MTVfTU9DU19DQUNI
RUQsCj4gPiAgICAgICAgICAgICAgICAgIExFXzNfV0IgfCBMRV9UQ18yX0xMQ19FTExDIHwgTEVf
TFJVTSgzKSwKPiA+IC0gICAgICAgICAgICAgICAgTDNfM19XQikKPiA+ICsgICAgICAgICAgICAg
ICAgTDNfM19XQiksCj4gPiArCj4gPiArICAgICAvKgo+ID4gKyAgICAgICogbW9jczo2Mwo+ID4g
KyAgICAgICogLSB1c2VkIGJ5IHRoZSBMMyBmb3IgYWxsIGl0cyBldmljdGlvbnMuCj4gPiArICAg
ICAgKiAgIFRodXMgaXQgaXMgZXhwZWN0ZWQgdG8gYWxsb3cgTExDIGNhY2hlYWJpbGl0eSB0byBl
bmFibGUgY29oZXJlbnQKPiA+ICsgICAgICAqICAgZmxvd3MgdG8gYmUgbWFpbnRhaW5lZC4KPiA+
ICsgICAgICAqIC0gdXNlZCB0byBmb3JjZSBMMyB1bmNhY2hhYmxlIGN5Y2xlcy4KPiA+ICsgICAg
ICAqICAgVGh1cyBpdCBpcyBleHBlY3RlZCB0byBtYWtlIHRoZSBzdXJjZSBMMyB1bmNhY2hlYWJs
ZS4KPgo+ICJzdXJjZSI/Cj4KPiA+ICsgICAgICAqLwo+ID4gKyAgICAgTU9DU19FTlRSWSg2MywK
PiA+ICsgICAgICAgICAgICAgICAgTEVfM19XQiB8IExFX1RDXzFfTExDIHwgTEVfTFJVTSgzKSwK
PiA+ICsgICAgICAgICAgICAgICAgTDNfMV9VQykKPiA+ICB9Owo+ID4KPiA+ICAvKiBOT1RFOiB0
aGUgTEVfVEdUX0NBQ0hFIGlzIG5vdCB1c2VkIG9uIEJyb3h0b24gKi8KPiA+IC0tCj4gPiAyLjIw
LjEKPgo+IC0tCj4gVmlsbGUgU3lyasOkbMOkCj4gSW50ZWwKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
