Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28F27EB149
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2019 14:34:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0CAA6EE90;
	Thu, 31 Oct 2019 13:34:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75EB06EE90
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2019 13:34:21 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id x5so5925771wmi.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2019 06:34:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=kv9qI3qgncK6gz3LrbES0hm6NDeaaYHzPu+M7PDz9/Q=;
 b=OQIIj3jQN5GU6AKhrVusJsQlP6EvfbI16BKk08Zc8AXocbM7/DEDfzf6eRsl1Kq9pS
 x1RqEhSsRtzVGbMjv6g0fD6oPDLGDEBzecXWQd3al0EsM4hQMGlY43o8B0mpM6RGoTMu
 7BWFV5Dck7Geo09XtiG0Z+ykfAwhOwzYGIVotBDGjK9IL+NsRFGMnJcwRPbR0JZNV7wf
 ZAQ12+cNF4kfuQDRJBV7GZQl9lXbTNvNalAGcQiMcScHK6/cntE6rRCGvq8fDJV9LUKd
 qnAU896duru7PDnVrc3dg4xacyMkx532s0Zh9yW3NhW636YYe+nldH5tPalDtIJMe4Fh
 5xoQ==
X-Gm-Message-State: APjAAAWmGilFglZpprLccg87Ta9khEBOtIL1IZuuYwZTING0m/TBYlqe
 xRKE5nZ0xetOyrkEHjJvimE9F0wdOqc=
X-Google-Smtp-Source: APXvYqy9IFBfeFKcv9lkKsCHoUwcmkMrki6jOuFfy/B5e1NF7oWqfJhe2BlI944hXtKcWGJZCxKSpg==
X-Received: by 2002:a1c:1b0d:: with SMTP id b13mr5271145wmb.120.1572528859546; 
 Thu, 31 Oct 2019 06:34:19 -0700 (PDT)
Received: from [0.0.0.0] (jfdmzpr05-ext.jf.intel.com. [134.134.139.74])
 by smtp.googlemail.com with ESMTPSA id r1sm3821466wrw.60.2019.10.31.06.34.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 31 Oct 2019 06:34:18 -0700 (PDT)
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191002162505.30716-1-ville.syrjala@linux.intel.com>
 <20191002162505.30716-2-ville.syrjala@linux.intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Message-ID: <647e333d-64c8-e80f-fe66-f2ee9464179e@gmail.com>
Date: Thu, 31 Oct 2019 15:34:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191002162505.30716-2-ville.syrjala@linux.intel.com>
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=reply-to:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=kv9qI3qgncK6gz3LrbES0hm6NDeaaYHzPu+M7PDz9/Q=;
 b=CT6MqVGeeRW7khur4H3ejF+rtyx6bCwsd95e521+tjro2VphiSQS0R2GJiYiJFLj06
 470HoYlJoo85wtY2Uqd1oFcybcB1TF8Qtxf7M+M981DY8ptA7oZ67pTxMaeZ2pyIyDvA
 CBE82Vvdw2y8RWoAeDqoE4ZQGGdC3HbPx7YD1k61QsqjW6GmRs/v3Zu+KhadwK0NpiDN
 PZcyK//XIZaErQ7drxfEe0PCsXRxGbkxTkIbxw2v/6Ypdo+asX1BPwRTWeiDxHnhFQlI
 +Mm5qrVaJ9O5+OMmv+jDy0hZ943gciR2yNts65w8JzNw6941wMBSoW24UxdMXHOb0+1M
 LXiw==
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915: Simplfy LVDS crtc_mask setup
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
Reply-To: juhapekka.heikkila@gmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

IEZyb20gdGhpcyBzZXQgcGF0Y2hlcyAyLDUsNiBsb29rIGFsbCBvayB0byBtZS4KClJldmlld2Vk
LWJ5OiBKdWhhLVBla2thIEhlaWtraWxhIDxqdWhhcGVra2EuaGVpa2tpbGFAZ21haWwuY29tPgoK
T24gMi4xMC4yMDE5IDE5LjI1LCBWaWxsZSBTeXJqYWxhIHdyb3RlOgo+IEZyb206IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gV2UgZG9uJ3QgbmVl
ZCB0byBzcGVjaWFsIGNhc2UgUENIIHZzLiBnZW40IHdoZW4gc2V0dGluZyB1cCB0aGUgTFZEUwo+
IGNydGNfbWFzay4gSnVzdCBjbGFpbSBwaXBlcyBBfEJ8QyB3b3JrIGFuZAo+IGludGVsX2VuY29k
ZXJfcG9zc2libGVfY3J0Y3MoKSB3aWxsIGRyb3Agb3V0IGFueSBjcnRjIHRoYXQgZG9lc24ndAo+
IGV4aXN0Lgo+IAo+IHYyOiBQdXQgdGhlIHNwZWNpYWwgY2FzZSBmaXJzdCB0byBtYXRjaCB3aGF0
IG1vc3Qgb3RoZXIgZW5jb2RlcnMgZG8KPiAKPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sdmRzLmMgfCA4ICsrKy0tLS0tCj4gICAxIGZpbGUgY2hh
bmdlZCwgMyBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2x2ZHMuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHZkcy5jCj4gaW5kZXggMTM4NDFkN2M0NTViLi5jZjFjZDIy
OTViOWIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9s
dmRzLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2x2ZHMuYwo+
IEBAIC04OTksMTIgKzg5OSwxMCBAQCB2b2lkIGludGVsX2x2ZHNfaW5pdChzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gICAJaW50ZWxfZW5jb2Rlci0+cG93ZXJfZG9tYWluID0g
UE9XRVJfRE9NQUlOX1BPUlRfT1RIRVI7Cj4gICAJaW50ZWxfZW5jb2Rlci0+cG9ydCA9IFBPUlRf
Tk9ORTsKPiAgIAlpbnRlbF9lbmNvZGVyLT5jbG9uZWFibGUgPSAwOwo+IC0JaWYgKEhBU19QQ0hf
U1BMSVQoZGV2X3ByaXYpKQo+IC0JCWludGVsX2VuY29kZXItPmNydGNfbWFzayA9IEJJVChQSVBF
X0EpIHwgQklUKFBJUEVfQikgfCBCSVQoUElQRV9DKTsKPiAtCWVsc2UgaWYgKElTX0dFTihkZXZf
cHJpdiwgNCkpCj4gLQkJaW50ZWxfZW5jb2Rlci0+Y3J0Y19tYXNrID0gQklUKFBJUEVfQSkgfCBC
SVQoUElQRV9CKTsKPiAtCWVsc2UKPiArCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpIDwgNCkKPiAg
IAkJaW50ZWxfZW5jb2Rlci0+Y3J0Y19tYXNrID0gQklUKFBJUEVfQik7Cj4gKwllbHNlCj4gKwkJ
aW50ZWxfZW5jb2Rlci0+Y3J0Y19tYXNrID0gQklUKFBJUEVfQSkgfCBCSVQoUElQRV9CKSB8IEJJ
VChQSVBFX0MpOwo+ICAgCj4gICAJZHJtX2Nvbm5lY3Rvcl9oZWxwZXJfYWRkKGNvbm5lY3Rvciwg
JmludGVsX2x2ZHNfY29ubmVjdG9yX2hlbHBlcl9mdW5jcyk7Cj4gICAJY29ubmVjdG9yLT5kaXNw
bGF5X2luZm8uc3VicGl4ZWxfb3JkZXIgPSBTdWJQaXhlbEhvcml6b250YWxSR0I7Cj4gCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
