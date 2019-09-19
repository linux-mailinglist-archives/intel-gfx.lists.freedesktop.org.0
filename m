Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC46CB8113
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 20:56:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 017A86F91E;
	Thu, 19 Sep 2019 18:56:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62AE76F91E
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 18:56:41 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id r17so7809197wme.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 11:56:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=MrLrKXtWm0m+wbRSACm32ph6Zvhht661oXxkfHjPd1E=;
 b=VPYfHwOsV0JMBCSfKfMvl+Q1Gatnc+iw0C9mo1ccr7AQOw0JDAZeia11ZdXCsn73gu
 48c6dKSB4cy3DI3I54CfhjuU+BUW946xZqYGgeqFG3EohkqBILkFYp/4Yj/dDQ1xo0yG
 vS5Wb3DLoXchXyDYTfvb6SHL6ndu9bzzMkkv/izSsIelbJ6XQo8ZHgspw1pxteLS0urW
 uU4dWEtzuq0FWoAYt4xCsaSQjBzymJudK3lTql3cToylhQF1aUX7x7bYO3JnfHdlNff3
 NKX87dvSKTALSVlcTTlPPFfz/DTWoYmO8IFFbIJRpQeOocHpBxFXmoCtU2T1Cz72eOIm
 XZEw==
X-Gm-Message-State: APjAAAVs0OW+QcBBV3EOC4GAUfalQHuQtt2oZy+1e+PttcWBpDCxyVbv
 yLkSh0hyRAYjmhJcTyjfddwwZ4vNW/+mYS9dofY=
X-Google-Smtp-Source: APXvYqyjwnUchrR8OQRGvz4lwxvNIyp5WRVIY2Zv/PQyAUZhfakEqqEeyWVpPQVF5kgC5wm/mXReh7fW/DRJG19op/g=
X-Received: by 2002:a7b:c932:: with SMTP id h18mr3703299wml.86.1568919399878; 
 Thu, 19 Sep 2019 11:56:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190919000726.267988-1-jose.souza@intel.com>
 <20190919000726.267988-2-jose.souza@intel.com>
 <20190919172007.GG29039@ideak-desk.fi.intel.com>
In-Reply-To: <20190919172007.GG29039@ideak-desk.fi.intel.com>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Thu, 19 Sep 2019 11:56:27 -0700
Message-ID: <CAKi4VAJ8V9qo9LtVSQaF9Ph6qZw9HVxHhntyP+LpCu18yzFsWw@mail.gmail.com>
To: Imre Deak <imre.deak@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=MrLrKXtWm0m+wbRSACm32ph6Zvhht661oXxkfHjPd1E=;
 b=m9somGbIBPnmHrkHMdgzvieOqop7B/3h78yBR8Mruk83Gw7+07KSbRb93A+VnKiBjI
 L0cM1rq41fmPYR+q7bP+1E6PIeY+XKjh4kW/fJP5oK2nsHlJENN6JevNYo+Qr3vqnX8a
 tULhKDDNlY6/l8pIELuSfX3ALZpqcdwoCfHlAIp9P844wL/jj2Ax5oYyackqlW70dWKr
 2HbSFEHANNmTBH8ipZR5S9hRw5OQVGY+9CoDOeNYzLFUzrX8vXA69y4VEN8Au63V0ytS
 10JkI9CzkX/02bcYc+geLA3R+NSLlte1BhtgqikStisQPudwE4CCkIDYKRzSArolnWhi
 0ULg==
Subject: Re: [Intel-gfx] [PATCH v2 01/13] drm/i915/tgl: Add missing ddi
 clock select during DP init sequence
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

T24gVGh1LCBTZXAgMTksIDIwMTkgYXQgMTA6MjEgQU0gSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50
ZWwuY29tPiB3cm90ZToKPgo+IE9uIFdlZCwgU2VwIDE4LCAyMDE5IGF0IDA1OjA3OjE0UE0gLTA3
MDAsIEpvc8OpIFJvYmVydG8gZGUgU291emEgd3JvdGU6Cj4gPiBGcm9tOiBDbGludG9uIEEgVGF5
bG9yIDxjbGludG9uLmEudGF5bG9yQGludGVsLmNvbT4KPiA+Cj4gPiBTdGVwIDQuYiB3YXMgY29t
cGxldGUgbWlzc2VkIGJlY2F1c2UgaXQgaXMgb25seSByZXF1aXJlZCB0byBUQyBhbmQgVEJULgo+
ID4KPiA+IEJzcGVjOiA0OTE5MAo+ID4gU2lnbmVkLW9mZi1ieTogQ2xpbnRvbiBBIFRheWxvciA8
Y2xpbnRvbi5hLnRheWxvckBpbnRlbC5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2Jl
cnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCA1ICsrKystCj4gPiAgMSBmaWxlIGNo
YW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+ID4KPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwo+ID4gaW5kZXggM2U2Mzk0MTM5OTY0Li44MTc5
MmEwNGUwYWEgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RkaS5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rk
aS5jCj4gPiBAQCAtMzIyNCwxMSArMzIyNCwxNCBAQCBzdGF0aWMgdm9pZCB0Z2xfZGRpX3ByZV9l
bmFibGVfZHAoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4gPiAgICAgICBpbnRlbF9l
ZHBfcGFuZWxfb24oaW50ZWxfZHApOwo+ID4KPiA+ICAgICAgIC8qCj4gPiAtICAgICAgKiAxLmIs
IDMuIGFuZCA0LiBpcyBkb25lIGJlZm9yZSB0Z2xfZGRpX3ByZV9lbmFibGVfZHAoKSBieToKPiA+
ICsgICAgICAqIDEuYiwgMy4gYW5kIDQuYSBpcyBkb25lIGJlZm9yZSB0Z2xfZGRpX3ByZV9lbmFi
bGVfZHAoKSBieToKPiA+ICAgICAgICAqIGhhc3dlbGxfY3J0Y19lbmFibGUoKS0+aW50ZWxfZW5j
b2RlcnNfcHJlX3BsbF9lbmFibGUoKSBhbmQKPiA+ICAgICAgICAqIGhhc3dlbGxfY3J0Y19lbmFi
bGUoKS0+aW50ZWxfZW5hYmxlX3NoYXJlZF9kcGxsKCkKPiA+ICAgICAgICAqLwo+ID4KPiA+ICsg
ICAgIC8qIDQuYiAqLwo+ID4gKyAgICAgaW50ZWxfZGRpX2Nsa19zZWxlY3QoZW5jb2RlciwgY3J0
Y19zdGF0ZSk7Cj4KPiBUaGUgQlNwZWMgNC5iIHN0ZXAgY291bGQgYmUgbW9yZSBzcGVjaWZpYyBh
Ym91dCB0aGUgcmVnaXN0ZXIgdG8gcHJvZ3JhbQo+IChhdCBsZWFzdCBJIGhhdmVuJ3QgZm91bmQg
dGhlIG1lbnRpb24gYWJvdXQgaXQpIGJ1dCBzZWVtcyB0byBtYXRjaDoKPgo+IFJldmlld2VkLWJ5
OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+Cj4KPiBXaGlsZSByZXZpZXdpbmcgdGhp
cyBJIG5vdGljZWQgdGhhdCBib3RoCj4gaWNsX3BsbF90b19kZGlfY2xrX3NlbCgpICAgKG1pc3Np
bmcgY2FzZXMgZm9yIE1HUExMNSw2KQo+IGFuZAo+IGludGVsX3BoeV9pc19jb21ibygpICAgKG5v
dCBjb3JyZWN0IGZvciBwb3J0L3BoeSBDKQo+IHdpbGwgYWxzbyBuZWVkIHRvIGdldCB1cGRhdGVk
IGZvciBUR0wuCgpwb3J0L3BoeSBDIGlzIGRpc2FibGVkIGZvciBUR0wuIGludGVsX3BoeV9pc19j
b21ibygpIGxvb2tzIGNvcnJlY3QgdG8gbWUuClNlZSBlYTY1OTFiNGRhZGIgKCJkcm0vaTkxNS90
Z2w6IGRpc2FibGUgRERJQyIpCgpSZXZpZXdlZC1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5k
ZW1hcmNoaUBpbnRlbC5jb20+CgpMdWNhcyBEZSBNYXJjaGkKCj4KPiA+ICsKPiA+ICAgICAgIC8q
IDUuICovCj4gPiAgICAgICBpZiAoIWludGVsX3BoeV9pc190YyhkZXZfcHJpdiwgcGh5KSB8fAo+
ID4gICAgICAgICAgIGRpZ19wb3J0LT50Y19tb2RlICE9IFRDX1BPUlRfVEJUX0FMVCkKPiA+IC0t
Cj4gPiAyLjIzLjAKPiA+Cj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+ID4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+ID4gSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwo+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngKCgoKLS0gCkx1Y2FzIERlIE1hcmNoaQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
