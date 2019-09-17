Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D3448B44DD
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 02:26:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 215166EAB7;
	Tue, 17 Sep 2019 00:26:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 640A96EAB7
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2019 00:26:24 +0000 (UTC)
Received: by mail-wr1-x436.google.com with SMTP id n14so326245wrw.9
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2019 17:26:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5OKEf+k2Gy6N+FwBZKHbvDDiuBr4w4jov8A1vIuzMZU=;
 b=dpM7JQZMrX9J9NhncyC3Re0zeacf/f72El2DJCRZ3/IJYkaqVdszMKwcrmnlUvtXtd
 tipBjVin5raTUNdjoNw/zQZzOTh3uZiRfM4MJ/B3kx4AQy1JNZbLUAxrJaHdl1yMMJh0
 11eaw5FK7qv0qNTdK2QHMugwX8n+duZBwr/A/wgoppq9J6pKsNBoXjeljLMqAV+vkoOQ
 SIqXUkVYLWEKXKSfoeXSU/WAjPOW1CcgmUGbQ8sWPxi3x0lz11Li4sCN8mOfZ31Kby8S
 bRscZHO5L9iVJqspVsqLIPV1M/KrthUVVyTpUNkEicgAM1ohQyXS6zGeeL1M926yaT6s
 CmBA==
X-Gm-Message-State: APjAAAURbB/MGEXLwjCGR0MBlBAGjIDQi42P9/FyjUsMdZ/e4jHmejsK
 yBkutX2anNiNWE1As5ceJTWqt6uDJr1WTrwoSyg=
X-Google-Smtp-Source: APXvYqzTlz7JAJ5lrv7IGVogVDyQRGTc7EekRXsW08pH3oIhCOFtgIKLTs54GA4vyKRU/Gncv/ac2yZm0NdXA1np468=
X-Received: by 2002:a5d:430f:: with SMTP id h15mr678564wrq.177.1568679982872; 
 Mon, 16 Sep 2019 17:26:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190916233251.387-1-matthew.d.roper@intel.com>
In-Reply-To: <20190916233251.387-1-matthew.d.roper@intel.com>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Mon, 16 Sep 2019 17:26:10 -0700
Message-ID: <CAKi4VAKyACS29Rsj+6EkaF_Qfg==zkPvvuWHvhp-ycWK2vnpKg@mail.gmail.com>
To: Matt Roper <matthew.d.roper@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=5OKEf+k2Gy6N+FwBZKHbvDDiuBr4w4jov8A1vIuzMZU=;
 b=ldJSt2O8Vcow2PoB9EHe1zFERrdb1box/NeQ2C6oJiUAaeE98P/n9xgKoB0znFHhFD
 1tMA8ndX6zqKel9BlL38CRvxUQa4iKRvhSrOyk4L9tL+vPEJUVmonOh3krFLOoDNYSe6
 5TqDiFQC4IZjGtVLz1HmzABc8l3/34NPwwfUbDl8poQa0/G8FSHUjxSGrDVzXZK/NyYH
 WSS8F0baSCi7UcDMTnxgEfq2V+zm2DG/utckx6ysVZaLlpMjn3EF7qP3V/e5hMNawuDo
 /xDv+qFIHo0J0FTzxyAXbIn5RdKotJm3f8vFRwLIyr3S2xi1dGJmFBPZUHRnrNNQd6UT
 /FlQ==
Subject: Re: [Intel-gfx] [PATCH] drm/i915/cml: Add second PCH ID for CMP
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
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBTZXAgMTYsIDIwMTkgYXQgNDozMyBQTSBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9w
ZXJAaW50ZWwuY29tPiB3cm90ZToKPgo+IFRoZSBDTVAgUENIIElEIHdlIGhhdmUgaW4gdGhlIGRy
aXZlciBpcyBjb3JyZWN0IGZvciB0aGUgQ01MLVUgbWFjaGluZXMgd2UgaGF2ZQo+IGluIG91ciBD
SSBzeXN0ZW0sIGJ1dCB0aGUgQ01MLVMgYW5kIENNTC1IIENJIG1hY2hpbmVzIGFwcGVhciB0byB1
c2UgYQoKQ01MLVMgaXMgYmFjayB0byBsaWZlLCBidXQgQ01MLUggaXMgc3RpbGwgZmFpbGluZy4g
SXMgQ01MLUggYWN0dWFsbHkKdXNpbmcgdGhlIHNhbWUgUENIPwoKTHVjYXMgRGUgTWFyY2hpCgo+
IGRpZmZlcmVudCBQQ0ggSUQsIGxlYWRpbmcgb3VyIGRyaXZlciB0byBkZXRlY3Qgbm8gUENIIGZv
ciB0aGVtLgo+Cj4gQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KPiBD
YzogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgo+IFJlZmVyZW5j
ZXM6IDcyOWFlMzMwYTBmMmUyICgiZHJtL2k5MTUvY21sOiBJbnRyb2R1Y2UgQ29tZXQgTGFrZSBQ
Q0giKQo+IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNn
aT9pZD0xMTE0NjEKPiBTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJA
aW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guYyB8IDEg
Kwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guaCB8IDEgKwo+ICAyIGZpbGVzIGNo
YW5nZWQsIDIgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3BjaC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNoLmMKPiBpbmRl
eCBmYTg2NGQ4ZjJiNzMuLjE1ZjhiZmYxNDFmOSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9wY2guYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Bj
aC5jCj4gQEAgLTY5LDYgKzY5LDcgQEAgaW50ZWxfcGNoX3R5cGUoY29uc3Qgc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2LCB1bnNpZ25lZCBzaG9ydCBpZCkKPiAgICAgICAgICAgICAg
ICAgV0FSTl9PTighSVNfQ0FOTk9OTEFLRShkZXZfcHJpdikgJiYgIUlTX0NPRkZFRUxBS0UoZGV2
X3ByaXYpKTsKPiAgICAgICAgICAgICAgICAgcmV0dXJuIFBDSF9DTlA7Cj4gICAgICAgICBjYXNl
IElOVEVMX1BDSF9DTVBfREVWSUNFX0lEX1RZUEU6Cj4gKyAgICAgICBjYXNlIElOVEVMX1BDSF9D
TVAyX0RFVklDRV9JRF9UWVBFOgo+ICAgICAgICAgICAgICAgICBEUk1fREVCVUdfS01TKCJGb3Vu
ZCBDb21ldCBMYWtlIFBDSCAoQ01QKVxuIik7Cj4gICAgICAgICAgICAgICAgIFdBUk5fT04oIUlT
X0NPRkZFRUxBS0UoZGV2X3ByaXYpKTsKPiAgICAgICAgICAgICAgICAgLyogQ29tZXRQb2ludCBp
cyBDTlAgQ29tcGF0aWJsZSAqLwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9wY2guaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5oCj4gaW5kZXggZTZh
MmQ2NWYxOWM2Li5jMjljODFlYzc5NzEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfcGNoLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guaAo+
IEBAIC00MSw2ICs0MSw3IEBAIGVudW0gaW50ZWxfcGNoIHsKPiAgI2RlZmluZSBJTlRFTF9QQ0hf
Q05QX0RFVklDRV9JRF9UWVBFICAgICAgICAgICAweEEzMDAKPiAgI2RlZmluZSBJTlRFTF9QQ0hf
Q05QX0xQX0RFVklDRV9JRF9UWVBFICAgICAgICAgICAgICAgIDB4OUQ4MAo+ICAjZGVmaW5lIElO
VEVMX1BDSF9DTVBfREVWSUNFX0lEX1RZUEUgICAgICAgICAgIDB4MDI4MAo+ICsjZGVmaW5lIElO
VEVMX1BDSF9DTVAyX0RFVklDRV9JRF9UWVBFICAgICAgICAgIDB4MDY4MAo+ICAjZGVmaW5lIElO
VEVMX1BDSF9JQ1BfREVWSUNFX0lEX1RZUEUgICAgICAgICAgIDB4MzQ4MAo+ICAjZGVmaW5lIElO
VEVMX1BDSF9NQ0NfREVWSUNFX0lEX1RZUEUgICAgICAgICAgIDB4NEIwMAo+ICAjZGVmaW5lIElO
VEVMX1BDSF9NQ0MyX0RFVklDRV9JRF9UWVBFICAgICAgICAgIDB4Mzg4MAo+IC0tCj4gMi4yMS4w
Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IElu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4g
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
CgoKLS0gCkx1Y2FzIERlIE1hcmNoaQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
