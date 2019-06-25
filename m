Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD48C55351
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 17:26:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 258CD6E151;
	Tue, 25 Jun 2019 15:26:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FD956E14F
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 15:26:49 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id w13so27749671eds.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 08:26:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=7BXGq5mRQa/USSocJsnxJWdAwlGE/hw6b5q59tY0N7k=;
 b=jm6oBFw8lcJD1As30BVy7qupFj81rOZv18tdyWXpbHgK4Ui0SbXBLU0zR6ccC6ec6n
 GBN6NMihRR/g9+ja/czhcg6cmaRZrAmet4To7dmm6icEJ8HsEfTztqMHNum1sRQmArST
 7dCZi7DTOZsuLYf7ntBFUo+B/QyECu2oywIrDk6BnwXCKtTCLuOo774xuqBWH/f4otIE
 v6+95b5Sa+KvGCwJuyn/y0LkwegTOOXqoNPKF+Ggf1hd4qBh4glz3kz+1cZxxgElcXlG
 eEOeBpRWOtsUtDSKLnf024kucefFQbnSV/GqU9fzcrTARPqknhB458TF0wxp5mnQj7Wu
 Fa/Q==
X-Gm-Message-State: APjAAAXHX+xp4VRcFqERmQplb1t7RDersvpA5AN+qfcAuTCMco826WRz
 s50KBweNl0uiALekpwJpcCH4bw==
X-Google-Smtp-Source: APXvYqyO17MQZYGetmqiwFiiRI7J6e5hUfiiIoifCevRu+GwoyGXODKhMtRveNoZ0JmHhrAgxUuEng==
X-Received: by 2002:a17:906:28db:: with SMTP id
 p27mr84497268ejd.3.1561476407986; 
 Tue, 25 Jun 2019 08:26:47 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id p15sm2507639ejb.6.2019.06.25.08.26.46
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 08:26:46 -0700 (PDT)
Date: Tue, 25 Jun 2019 17:26:44 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: christian.koenig@amd.com
Message-ID: <20190625152644.GZ12905@phenom.ffwll.local>
References: <20190625124654.122364-1-christian.koenig@amd.com>
 <20190625143548.GX12905@phenom.ffwll.local>
 <256e6aef-b4c9-3b1e-6522-31fed42d2c62@gmail.com>
 <CAKMK7uGyh2J3es=1OBEv1Dn46mkPa2vgz+xxqqTQhkEAxzqs_g@mail.gmail.com>
 <6fdde041-89f8-ff12-d237-3e280f0af21c@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6fdde041-89f8-ff12-d237-3e280f0af21c@gmail.com>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent;
 bh=7BXGq5mRQa/USSocJsnxJWdAwlGE/hw6b5q59tY0N7k=;
 b=C5t857aYCb95bnuWJSPzQSxZCqULeJ7QRFnwo3A87JqAiKGnthiJp/q9MsQ4pXYOrs
 JXT1ZQWdmao9i2BzF73tX/Wyzi4Hg36gmbMhEqftTR8kfErwuKnxn5ZSxkB/YF4/xgDF
 DVhkco5KYasx5ge4ahjICA2xHOXU+UTwRJB+4=
Subject: Re: [Intel-gfx] [PATCH 1/6] dma-buf: add dynamic DMA-buf handling
 v12
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

T24gVHVlLCBKdW4gMjUsIDIwMTkgYXQgMDU6MTM6NDJQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiBBbSAyNS4wNi4xOSB1bSAxNzowNyBzY2hyaWViIERhbmllbCBWZXR0ZXI6Cj4g
PiBPbiBUdWUsIEp1biAyNSwgMjAxOSBhdCA0OjQ1IFBNIENocmlzdGlhbiBLw7ZuaWcKPiA+IDxj
a29lbmlnLmxlaWNodHp1bWVya2VuQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiA+ID4gPiAtICAgIGlm
IChhdHRhY2gtPnNndCkKPiA+ID4gPiA+ICsgICAgaWYgKGF0dGFjaC0+c2d0KSB7Cj4gPiA+ID4g
PiArICAgICAgICAgICAgaWYgKGRtYV9idWZfaXNfZHluYW1pYyhhdHRhY2gtPmRtYWJ1ZikpCj4g
PiA+ID4gPiArICAgICAgICAgICAgICAgICAgICByZXNlcnZhdGlvbl9vYmplY3RfbG9jayhhdHRh
Y2gtPmRtYWJ1Zi0+cmVzdiwgTlVMTCk7Cj4gPiA+ID4gPiArCj4gPiA+ID4gPiAgICAgICAgICAg
ICAgIGRtYWJ1Zi0+b3BzLT51bm1hcF9kbWFfYnVmKGF0dGFjaCwgYXR0YWNoLT5zZ3QsIGF0dGFj
aC0+ZGlyKTsKPiA+ID4gPiA+IAo+ID4gPiA+ID4gKyAgICAgICAgICAgIGlmIChkbWFfYnVmX2lz
X2R5bmFtaWMoYXR0YWNoLT5kbWFidWYpKSB7Cj4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAg
ICBkbWFfYnVmX3VucGluKGF0dGFjaCk7Cj4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICBy
ZXNlcnZhdGlvbl9vYmplY3RfdW5sb2NrKGF0dGFjaC0+ZG1hYnVmLT5yZXN2KTsKPiA+ID4gPiA+
ICsgICAgICAgICAgICB9Cj4gPiA+ID4gPiArICAgIH0KPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICAg
ICAgIG11dGV4X2xvY2soJmRtYWJ1Zi0+bG9jayk7Cj4gPiA+ID4gVGltZSB0byBkaXRjaCBkbWFi
dWYtPmxvY2sgaW4gZmF2b3VyIG9mIHRoZSByZXNlcnZhdGlvbiBvYmo/IFdlIGhhdmUgYQo+ID4g
PiA+IGZhbGxiYWNrIHJlc3Zfb2JqIGluIHN0cnVjdCBkbWFfYnVmIGFscmVhZHksIHNvIHRoaXMg
aXMgbmV2ZXIgbnVsbCwgYW5kIEkKPiA+ID4gPiB0aGluayB3b3VsZCBjbGVhbiB1cCB0aGUgY29k
ZSBhIGJpdC4KPiA+ID4gWWVhaCwgdGhvdWdodCBhYm91dCB0aGF0IGFzIHdlbGwuIEJ1dCB0aGVu
IGRlY2lkZWQgYWdhaW5zdCBpdCBmb3Igbm93Lgo+ID4gPiAKPiA+ID4gS2V5IHBvaW50IGlzIHRo
YXQgZXhwb3J0ZXJzIGN1cnJlbnRseSBkb2Vzbid0IGNhcmUgYWJvdXQgZG1hYnVmLT5sb2NrLAo+
ID4gPiBidXQgdGhleSBkbyBjYXJlIGFib3V0IHRoZSByZXNlcnZhdGlvbiBsb2NrLgo+ID4gPiAK
PiA+ID4gU28gd2Ugd2lsbCBwcm9iYWJseSBoYXZlIGEgYnVuY2ggb2YgY2FzZXMgd2hlcmUgd2Ug
aGF2ZSB0byBmaXggdXAKPiA+ID4gZXhwb3J0ZXJzIGJlY2F1c2UgdGhleSB3aWxsIHRyeSB0byBn
cmFiIHRoZSByZXNlcnZhdGlvbiBsb2NrIGFzIHdlbGwuCj4gPiA+IAo+ID4gPiBPbiB0aGUgb3Ro
ZXIgaGFuZCB3ZSBtYXliZSBub3QgbmVlZCBhIGxvY2sgYXQgYWxsIGhlcmUgaWYgd2UganVzdCBj
YW4KPiA+ID4gbGl2ZSB3aXRoIG11bHRpcGxlIGF0dGFjaC9kZXRhY2ggY2FsbGJhY2tzIHJ1bm5p
bmcgaW4gcGFyYWxsZWwuCj4gPiBXZWxsIGxvb2tpbmcgdGhyb3VnaCB0aGUgY29kZSBJIHRob3Vn
aHQgdGhhdCBhbGwgdGhlIHBsYWNlcyB5b3UgZ3JhYgo+ID4gZG1hYnVmLT5yZXN2IHdlIGFsc28g
Z3JhYiBkbWFidWYtPmxvY2ssIHNvIHNlZW1lZCBmdWxseSByZWR1bmRhbnQuIEJ1dAo+ID4gSSBk
aWRuJ3QgY2hlY2sgY29tcGxldGVseS4KPiAKPiBUaGUgZGlmZmVyZW5jZSBpcyB0aGF0IEkgZGlk
bid0IGNhbGwgYXR0YWNoL2RldGFjaCB3aXRoIHRoZSBsb2NrIGhlbGQgeWV0Lgo+IAo+IEFuZCB3
ZSBjb3VsZCBhY3R1YWxseSBkcm9wIGxvY2tpbmcgdGhlIHJlc2VydmF0aW9uIG9iamVjdCB3aGls
ZSBtYW5pcHVsYXRpbmcKPiB0aGUgbGlzdCBvZiBhdHRhY2htZW50cyBzaW5jZSB3ZSBubyBsb25n
ZXIgdXNlIHRoYXQgd29ya2Fyb3VuZC4KPiAKPiBHb2luZyB0byBmaXggdGhhdCB1cCB0b21vcnJv
dyBhcyB3ZWxsLAoKWW91IHJlbHkgb24gdGhlIHJlc2VydmF0aW9uIGxvY2sgZm9yIHdhbGtpbmcg
dGhlIGxpc3Qgd2hlbiBjYWxsaW5nCm1vdmVfbm90aWZ5LiBTbyB0aGF0IGxvY2sgaXMgZGVmaW5p
dGVseSBuZWVkZWQgdGhlcmUuIElmIHlvdSdkIHB1dCBpdCBpbgp0aGVyZSB0aGVuIGxvY2tkZXAg
d291bGQgc3BsYXQgYWJvdXQgbG9ja2luZyBpbnZlcnNpb25zLgoKSW4gZ2VuZXJhbCBkbWFidWYt
PmxvY2sgbm90IGJlaW5nIGEgd3dfbXV0ZXgga2luZGEgZ2V0cyBpbiB0aGUgd2F5IGFuZApqdXN0
IG5lZWRsZXNzIGNvbXBsaWNhdGVzIHRoZSBoaWVyYXJjaHkuIEF0bSBpdHMgZXZlbiBvdXRzaWRl
IG9mIHRoZQpyZXNlcnZhdGlvbiBsb2NrLCBzbyBhbnl3aGVyZSB3aGVyZSB3ZSBleHBlY3QgY2Fs
bGVycyB0byBob2xkIHRoZQpyZXNlcnZhdGlvbiBsb2NrIGFscmVhZHkgd2UgY2FuJ3QgdGFrZSBp
dC4KLURhbmllbAotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29y
cG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
