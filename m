Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA530C41A6
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 22:16:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1C9D6E887;
	Tue,  1 Oct 2019 20:16:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E22F6E887
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 20:16:27 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id h7so17037899wrw.8
 for <intel-gfx@lists.freedesktop.org>; Tue, 01 Oct 2019 13:16:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HXi7aKqzKXOMDOwNkldXsUUDuALcjgfYzxUPHYeThnM=;
 b=EUvCd7BLJN0ie4xiZw8uYrVw5S2Ja9zARIjCnJvj8Qb4zc+HBIU2e9hL1gzZKgZX9j
 TILzNprE6XfwsQLcqF8jyRLE0pmVkbrbV3qyS3R+uLOXNq5Or0fr4pA6LSfxfqt1nESC
 R3/zk5ag15+gCTsiGeoHUwbyaKcOy+d1erVHfPsHEl1hRYKLcMbWZUk7CPYP9RzjyHJ8
 SUZpS50pgE7G3ZlZ6CUGs8qkSAxZK0jtj+AS/JRzkAp5plBhpDRT0oqbo02qUOZhn6n4
 NkZ9PniacoLIagyaa3MdrUWraA1KS5oNJwf2B51FFS5YGcrma9/wc27di0rkL316wnJ1
 CXTw==
X-Gm-Message-State: APjAAAXg8Sdj0TZIHrop3JorBIotPYPjXmc9Y3pmjxvIMXv0+X9azxUl
 31VtR0+X5A8LqHbtQRZrxb66uQPTYEE+jmrGrB0=
X-Google-Smtp-Source: APXvYqw+FVY8m1OpSJLRdtfRBHIYFAur6zwdpnDLVRKgt8WTr5tLRcyTgtzoNOU5UOaog1nu5YbrJOWXiJujsiV7GZ4=
X-Received: by 2002:adf:f689:: with SMTP id v9mr20872816wrp.82.1569960986116; 
 Tue, 01 Oct 2019 13:16:26 -0700 (PDT)
MIME-Version: 1.0
References: <20191001172624.26479-1-ramalingam.c@intel.com>
 <156995131579.1880.10276094944299738871@skylake-alporthouse-com>
In-Reply-To: <156995131579.1880.10276094944299738871@skylake-alporthouse-com>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Tue, 1 Oct 2019 13:16:11 -0700
Message-ID: <CAKi4VA+e6PM_qRYtyZcJ50WEcUvN=JFw82oLPUWT-+eYyk_07g@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=HXi7aKqzKXOMDOwNkldXsUUDuALcjgfYzxUPHYeThnM=;
 b=NdmApcBpJsaO8PpfJRb4f82Cvsww3coYdoDQAFWQHm5TS1rR7PcJ8TDTrbn+BtsqRR
 rFaXFWxwmcKspmkdkmqer500t4zrWn4Rjzp6SaFUE7TSi0JOM45En2jVmbbJLoEbO2U9
 Cgx4swLOCDYg8LI9/7nRNj9b5PKYf6NzG12WHswZsr6NCc6Zm/cmLwuKuo1lYYgTTssk
 WGt73sXz9IkAe+aFmFUuc2YYPIj1/UGDlNAYXJGlmeCIZAYPyxiYEtj2iSpQ/nnobVCT
 SydzU54AAkI9Gtl3UDXHZWGiujEyhAPgkEieSdhs/OxF+PmuWhScDwSw285AqIAe5Dfa
 h3bw==
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/tgl: Implement Wa_1604555607
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

T24gVHVlLCBPY3QgMSwgMjAxOSBhdCAxMDozNiBBTSBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4gd3JvdGU6Cj4KPiBRdW90aW5nIFJhbWFsaW5nYW0gQyAoMjAxOS0xMC0w
MSAxODoyNjoyMykKPiA+IEZyb206IE1pY2hlbCBUaGllcnJ5IDxtaWNoZWwudGhpZXJyeUBpbnRl
bC5jb20+Cj4gPgo+ID4gSW1wbGVtZW50IFdhXzE2MDQ1NTU2MDcgKHNldCB0aGUgRFMgcGFpcmlu
ZyB0aW1lciB0byAxMjggY3ljbGVzKS4KPiA+IEZGX01PREUyIGlzIHBhcnQgb2YgdGhlIHJlZ2lz
dGVyIHN0YXRlIGNvbnRleHQsIHRoYXQncyB3aHkgaXQgaXMKPiA+IGltcGxlbWVudGVkIGhlcmUu
Cj4gPgo+ID4gdjI6IFJlYmFzZWQgb24gdG9wIG9mIHRoZSBXQSByZWZhY3RvcmluZyAoT3NjYXIp
Cj4gPiB2MzogQ29ycmVjdGx5IGFkZCB0byBjdHhfd29ya2Fyb3VuZHNfaW5pdCAoTWljaGVsKQo+
ID4KPiA+IEJTcGVjOiAxOTM2Mwo+ID4gSFNERVM6IDE2MDQ1NTU2MDcKPiA+IFNpZ25lZC1vZmYt
Ynk6IE1pY2hlbCBUaGllcnJ5IDxtaWNoZWwudGhpZXJyeUBpbnRlbC5jb20+Cj4gPiBTaWduZWQt
b2ZmLWJ5OiBSYW1hbGluZ2FtIEMgPHJhbWxpbmdhbS5jQGludGVsLmNvbT4KPiA+IC0tLQo+ID4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgfCA5ICsrKysrKysr
Kwo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgfCA1ICsr
KysrCj4gPiAgMiBmaWxlcyBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspCj4gPgo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gPiBpbmRleCBiYTY1ZTUw
MTg5NzguLjQwNDliODc2NDkyYSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3dvcmthcm91bmRzLmMKPiA+IEBAIC01NjcsOSArNTY3LDE4IEBAIHN0YXRpYyB2b2lk
IGljbF9jdHhfd29ya2Fyb3VuZHNfaW5pdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUs
Cj4gPiAgc3RhdGljIHZvaWQgdGdsX2N0eF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBpbnRlbF9l
bmdpbmVfY3MgKmVuZ2luZSwKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpCj4gPiAgewo+ID4gKyAgICAgICBzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBlbmdpbmUtPmk5MTU7Cj4gPiArICAgICAgIHUzMiB2
YWw7Cj4gPiArCj4gPiAgICAgICAgIC8qIFdhXzE0MDkxNDIyNTkgKi8KPiA+ICAgICAgICAgV0Ff
U0VUX0JJVF9NQVNLRUQoR0VOMTFfQ09NTU9OX1NMSUNFX0NISUNLRU4zLAo+ID4gICAgICAgICAg
ICAgICAgICAgICAgICAgICBHRU4xMl9ESVNBQkxFX0NQU19BV0FSRV9DT0xPUl9QSVBFKTsKPiA+
ICsKPiA+ICsgICAgICAgLyogV2FfMTYwNDU1NTYwNzp0Z2wgKi8KPiA+ICsgICAgICAgdmFsID0g
STkxNV9SRUFEKEZGX01PREUyKTsKPgo+IE5vLCB5b3UgY2FuJ3QgdXNlIGluZGlzY3JpbWluYXRl
IG1taW8gYWNjZXNzIHRoYXQgbWF5IG5vdCBtYXRjaCB0aGUgZW5naW5lCj4gKGVuZ2luZS0+Z3Qt
PnVuY29yZSkuCj4KPiBCdXQgcmVhbGx5IGNvbnNpZGVyIGRvaW5nIHRoZSBybXcgYXMgcGFydCBv
ZiB0aGUgd2EuCgpBbmQ6Cmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC8z
MTk5NTIvP3Nlcmllcz02NDI3NCZyZXY9MQpodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5v
cmcvcGF0Y2gvMzE3NjU0Lz9zZXJpZXM9NjM2NzAmcmV2PTIKClBsZWFzZSBkb24ndCBzaW1wbHkg
cmVzZW5kIHBhdGNoZXMgdGhhdCB3ZXJlIGFscmVhZHkgcmV2aWV3ZWQuCgpMdWNhcyBEZSBNYXJj
aGkKCj4KPiA+ICsgICAgICAgdmFsICY9IH5GRl9NT0RFMl9URFNfVElNRVJfTUFTSzsKPiA+ICsg
ICAgICAgdmFsIHw9IEZGX01PREUyX1REU19USU1FUl8xMjg7Cj4gPiArICAgICAgIHdhX3dyaXRl
X21hc2tlZF9vcih3YWwsIEZGX01PREUyLCBGRl9NT0RFMl9URFNfVElNRVJfTUFTSywgdmFsKTsK
PiA+ICB9Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4CgoKCi0tIApMdWNhcyBEZSBNYXJjaGkKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
