Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20096BB2BE
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 13:23:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D39A76E872;
	Mon, 23 Sep 2019 11:23:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B2DC6E872
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 11:23:18 +0000 (UTC)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
 [209.85.222.172])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 36D3320882
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 11:23:18 +0000 (UTC)
Received: by mail-qk1-f172.google.com with SMTP id p10so14903969qkg.8
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 04:23:18 -0700 (PDT)
X-Gm-Message-State: APjAAAWzOVGT0Q1F++6TXyhUedPeljFZ/IjLoQ5CqhLjG2/qLatAEORu
 ZcB27y3+HJs1BOYh3OKm63tiz//mWBq7w/JGPZ4=
X-Google-Smtp-Source: APXvYqx0QC9ItReEiKOPRdZx9EjqD0L2dD+pQo0aT2p8iSOlIAHPJKovHQDUNt55/41XFJCUEHPTKiOlnyi9XhRCcW4=
X-Received: by 2002:a37:5943:: with SMTP id n64mr15650495qkb.95.1569237797386; 
 Mon, 23 Sep 2019 04:23:17 -0700 (PDT)
MIME-Version: 1.0
References: <83F5C7385F545743AD4FB2A62F75B0734815CF42@ORSMSX108.amr.corp.intel.com>
In-Reply-To: <83F5C7385F545743AD4FB2A62F75B0734815CF42@ORSMSX108.amr.corp.intel.com>
From: Josh Boyer <jwboyer@kernel.org>
Date: Mon, 23 Sep 2019 07:23:06 -0400
X-Gmail-Original-Message-ID: <CA+5PVA7_NSoXZic5qXxFu9s2wKomTEcyReyjq3HMdaBxujX3gA@mail.gmail.com>
Message-ID: <CA+5PVA7_NSoXZic5qXxFu9s2wKomTEcyReyjq3HMdaBxujX3gA@mail.gmail.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=default; t=1569237798;
 bh=nxOf7PS/5HwYjGEDM+E6Q/feBJWhrTq0ZeRSAl4+Tvw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=UIj45+A+VitTPXOkHNpSAqAq2pXkNUUKuQz9NKGFHYBFXNXcksI2ONRLIDtDvN7Eq
 1y3Xb+dgcFGInxybvO/PkyNDWj7UjeYbE0Fm7+9D18FYZjWDWE1dq8cK1DlwEXr02s
 Jzk289+UDxnRWH+n1g/OCk+8NER0IFtuLqGuZGI0=
Subject: Re: [Intel-gfx] i915 firmware updates (CMl- GuC,HuC;
 TGL-DMC,ICL-DMC, HuC Updates-SKL,BXT,KBL,GLK,ICL)
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "kyle@kernel.org" <kyle@kernel.org>,
 "ben@decadent.org.uk" <ben@decadent.org.uk>,
 "linux-firmware@kernel.org" <linux-firmware@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBTZXAgMTMsIDIwMTkgYXQgNjozMCBQTSBTcml2YXRzYSwgQW51c2hhCjxhbnVzaGEu
c3JpdmF0c2FAaW50ZWwuY29tPiB3cm90ZToKPgo+IEhpLAo+IEt5bGUsIEpvc2gsQmVuCj4KPiBJ
Z25vcmUgdGhlIHByZXZpb3VzIFBSIGFuZCBraW5kbHkgY29uc2lkZXIgdGhpcyBvbmUuIEl0IGhh
cyBhbm90aGVyIG5ldyB1cGRhdGUgYW5kIGlzIHRoZSBsYXRlc3Qgb25lLQo+Cj4gVGhlIGZvbGxv
d2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCA2YzY5MThhZDhhZTBkZmIyY2I1OTE0ODRlYmE1MjU0
MDk5ODBjMTZmOgo+Cj4gICBsaW51eC1maXJtd2FyZTogVXBkYXRlIGZpcm13YXJlIGZpbGUgZm9y
IEludGVsIEJsdWV0b290aCBBWDIwMSAoMjAxOS0wOS0wOSAwNDoyMjo0MiAtMDQwMCkKPgo+IGFy
ZSBhdmFpbGFibGUgaW4gdGhlIEdpdCByZXBvc2l0b3J5IGF0Ogo+Cj4gICBnaXQ6Ly9hbm9uZ2l0
LmZyZWVkZXNrdG9wLm9yZy9kcm0vZHJtLWZpcm13YXJlIGNtbF90Z2wtaWNsLWRtY19odWNfdXBk
YXRlcwo+Cj4gZm9yIHlvdSB0byBmZXRjaCBjaGFuZ2VzIHVwIHRvIDNlYTg0ZTUyMzA2ZTdiNzhj
YzZkNzI3ZDlhNDFjODQ0OTE0NmQ3NjU6Cj4KPiAgIGRybS9pOTE1L2Zpcm13YXJlOiBBZGQgdjku
MC4wIG9mIEh1QyBmb3IgSWNlbGFrZSAoMjAxOS0wOS0xMyAxNDo0ODo0NyAtMDcwMCkKPgo+IC0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0KPiBBbnVzaGEgU3JpdmF0c2EgKDkpOgo+ICAgICAgIGRybS9pOTE1L2Zpcm13YXJlOiBB
ZGQgdjEuMDkgb2YgRE1DIGZvciBJQ0wKPiAgICAgICBkcm0vaTkxNS9maXJtd2FyZTogQWRkIHYy
LjA0IG9mIERNQyBmb3IgVEdMCj4gICAgICAgZHJtL2k5MTUvZmlybXdhcmU6IEFkZCB2MzMgb2Yg
R3VDIGZvciBDTUwKPiAgICAgICBkcm0vaTkxNS9maXJtd2FyZTogQWRkIHYyLjAuMCBvZiBIdUMg
Zm9yIFNreWxha2UKPiAgICAgICBkcm0vaTkxNS9maXJtd2FyZTogQWRkIHY0LjAuMCBvZiBIdUMg
Zm9yIEthYnlsYWtlCj4gICAgICAgZHJtL2k5MTUvZmlybXdhcmU6IEFkZCB2Mi4wLjAgb2YgSHVD
IGZvciBCcm94dG9uCj4gICAgICAgZHJtL2k5MTUvZmlybXdhcmU6IEFkZCB2NC4wLjAgb2YgSHVD
IGZvciBHZW1pbmlsYWtlCj4gICAgICAgZHJtL2k5MTUvZmlybXdhcmU6IEFkZCB2NC4wLjAgb2Yg
SHVDIGZvciBDb21ldGxha2UKPiAgICAgICBkcm0vaTkxNS9maXJtd2FyZTogQWRkIHY5LjAuMCBv
ZiBIdUMgZm9yIEljZWxha2UKPgo+ICBXSEVOQ0UgICAgICAgICAgICAgICAgICAgfCAgMjggKysr
KysrKysrKysrKysrKysrKysrKysrKysrKwo+ICBpOTE1L2J4dF9odWNfMi4wLjAuYmluICAgfCBC
aW4gMCAtPiAxNDk4MjQgYnl0ZXMKPiAgaTkxNS9jbWxfZ3VjXzMzLjAuMC5iaW4gIHwgQmluIDAg
LT4gMTgyOTEyIGJ5dGVzCj4gIGk5MTUvY21sX2h1Y180LjAuMC5iaW4gICB8IEJpbiAwIC0+IDIy
NjA0OCBieXRlcwo+ICBpOTE1L2dsa19odWNfNC4wLjAuYmluICAgfCBCaW4gMCAtPiAyMjYwNDgg
Ynl0ZXMKPiAgaTkxNS9pY2xfZG1jX3ZlcjFfMDkuYmluIHwgQmluIDAgLT4gMjU5NTIgYnl0ZXMK
PiAgaTkxNS9pY2xfaHVjXzkuMC4wLmJpbiAgIHwgQmluIDAgLT4gNDk4ODgwIGJ5dGVzCj4gIGk5
MTUva2JsX2h1Y180LjAuMC5iaW4gICB8IEJpbiAwIC0+IDIyNjA0OCBieXRlcwo+ICBpOTE1L3Nr
bF9odWNfMi4wLjAuYmluICAgfCBCaW4gMCAtPiAxMzYzMjAgYnl0ZXMKPiAgaTkxNS90Z2xfZG1j
X3ZlcjJfMDQuYmluIHwgQmluIDAgLT4gMTg0MzYgYnl0ZXMKPiAgMTAgZmlsZXMgY2hhbmdlZCwg
MjggaW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgaTkxNS9ieHRfaHVjXzIuMC4w
LmJpbgo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgaTkxNS9jbWxfZ3VjXzMzLjAuMC5iaW4KPiAgY3Jl
YXRlIG1vZGUgMTAwNjQ0IGk5MTUvY21sX2h1Y180LjAuMC5iaW4KPiAgY3JlYXRlIG1vZGUgMTAw
NjQ0IGk5MTUvZ2xrX2h1Y180LjAuMC5iaW4KPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGk5MTUvaWNs
X2RtY192ZXIxXzA5LmJpbgo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgaTkxNS9pY2xfaHVjXzkuMC4w
LmJpbgo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgaTkxNS9rYmxfaHVjXzQuMC4wLmJpbgo+ICBjcmVh
dGUgbW9kZSAxMDA2NDQgaTkxNS9za2xfaHVjXzIuMC4wLmJpbgo+ICBjcmVhdGUgbW9kZSAxMDA2
NDQgaTkxNS90Z2xfZG1jX3ZlcjJfMDQuYmluCgpQdWxsZWQgYW5kIHB1c2hlZCBvdXQuCgpqb3No
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
