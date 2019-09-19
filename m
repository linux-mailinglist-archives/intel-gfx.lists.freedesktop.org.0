Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE26B8359
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 23:30:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D77B6F55D;
	Thu, 19 Sep 2019 21:30:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com
 [IPv6:2a00:1450:4864:20::32e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BFCC6FBCF
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 21:30:18 +0000 (UTC)
Received: by mail-wm1-x32e.google.com with SMTP id 5so27250wmg.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 14:30:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vUD5BtjcnyXakNml4FZ/VYz9fwGbpE1bSxrOHxqs0Iw=;
 b=N96KFJ1euIO0W5BMq2y75nqA2OcK+RlCm/L8CKYnmdWL4p1rjXo7bHxTRw0s6+kcr/
 rtPsPXhGPxDPl9TLIL7gnueB/2IgmvWLujC2t+HyHGwC7Jn5wxHIrous1H3FYJLyBjDZ
 m+2JmDv5VhQOZ3F+xq3LTKVLWnCwEy8nRf3lLXCzlF6sWx2wAlb+1yOeh7tzxmv/kRku
 hbWbxCsIImEUUq7HT6lBW7stMPRjPQlgLX8eTlm7seDb4sJtrpG6Iwc7Hw0whIF9JU9r
 4gGusoHTqi3X4o8DljQP1Hovcof6X1gud4+wiDE3oou/rtoyoBmcFOm56gBVc5baRTRC
 QToA==
X-Gm-Message-State: APjAAAVQOtUkaBHJaY9LRgD/5H1Sr1BqFXys7W4HNAnTxB05IA1qbCOb
 PTY7Y6OILJqSakLnfy21sYtUkbqf+ry98MNqB/U=
X-Google-Smtp-Source: APXvYqw5amq99eCB689CMreXMRr/MwfJZv7QXxKcXLjCYh053BoRyaXNo9DSJQfU4yyVU8UfyM4yTWR7gnSKf9nxL6s=
X-Received: by 2002:a1c:cb05:: with SMTP id b5mr75994wmg.79.1568928616785;
 Thu, 19 Sep 2019 14:30:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190918222815.13190-1-lucas.demarchi@intel.com>
 <20190919023043.21835.10225@emeril.freedesktop.org>
 <156892246895.1196.12210352498088723505@skylake-alporthouse-com>
In-Reply-To: <156892246895.1196.12210352498088723505@skylake-alporthouse-com>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Thu, 19 Sep 2019 14:30:04 -0700
Message-ID: <CAKi4VAJyJFJA9yxjCQakAQo1fpFvmTP249cD2YsTwwgpWVAk+Q@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=vUD5BtjcnyXakNml4FZ/VYz9fwGbpE1bSxrOHxqs0Iw=;
 b=um8hVbEOJeE5ppEgMcMzxi8rWbw8snHe5B5pgwzGzFmfyP8qJRiGACdwio1sLSIeEl
 wqZ7nejkwEwXWTRh4w5rtnFIG2bJkHcwr/Q5FKnhDFXHyhiP2kylvunsJdPWe4ZMAOQJ
 xUx4XdHho2jr7vL9LPHI/K7m5AK7fs7v5NV2cnaag4SBcRlluMAZu8OYUq3tfZue56Rd
 czJTwNnYBPNdizGZkjqNFLmoEbqke5laJlfj+9iF8Ci9t9Kkbm7Ixah2dThIJPRkNuNt
 AJ1DLzgkMh2VzFDX3Zz2neS91Dzd6G36ZNA3cLUKsgJfDOIG37ycdU+cl+q8KcCEQXFe
 7t6w==
Subject: Re: [Intel-gfx] 
	=?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
	=?utf-8?q?/i915/tgl=3A_Implement_Wa=5F1406941453?=
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
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBTZXAgMTksIDIwMTkgYXQgMTI6NDcgUE0gQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gUXVvdGluZyBQYXRjaHdvcmsgKDIwMTktMDktMTkg
MDM6MzA6NDMpCj4gPiAgICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV93b3JrYXJvdW5kczoKPiA+
ICAgICAtIHtmaS10Z2wtdX06ICAgICAgICAgTk9UUlVOIC0+IFtETUVTRy1GQUlMXVsxXQo+ID4g
ICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xNDQ0OC9maS10Z2wtdS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX3dvcmthcm91bmRzLmh0bWwK
PiA+ICAgICAtIHtmaS10Z2wtdTJ9OiAgICAgICAgW1BBU1NdWzJdIC0+IFtETUVTRy1GQUlMXVsz
XQo+ID4gICAgWzJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV82OTE3L2ZpLXRnbC11Mi9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX3dvcmthcm91bmRzLmh0
bWwKPiA+ICAgIFszXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTQ0NDgvZmktdGdsLXUyL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfd29ya2Fyb3Vu
ZHMuaHRtbAo+Cj4gQWhlbT8KPgo+IEFkZGluZyBhIHdvcmthcm91bmQgdGhhdCBjYXVzZXMgdGhl
IHNhbml0eWNoZWNrcyB0byBmYWlsIGlzIG5vdAo+IHJlY29tbWVuZGVkLgo+Cj4gU28gcmV2ZXJ0
PwoKdWdoLCB0aGUgc3VwcHJlc3NlZCBvbmVzLiBTb3JyeSBmb3IgdGhhdC4gWWVzLCBsZXQncyBy
ZXZlcnQgdW50aWwgSQpmaW5kIG91dCB3aGF0IEkgc2hvdWxkIHJlYWxseSBkby4KCnRoYW5rcwpM
dWNhcyBEZSBNYXJjaGkKCj4gLUNocmlzCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4CgoKCi0tIApMdWNhcyBEZSBNYXJjaGkKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
