Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E83011715C
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2019 17:17:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 969D26E4EC;
	Mon,  9 Dec 2019 16:17:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com
 [IPv6:2607:f8b0:4864:20::d41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 411236E4DD
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Dec 2019 16:17:04 +0000 (UTC)
Received: by mail-io1-xd41.google.com with SMTP id f82so15333653ioa.9
 for <intel-gfx@lists.freedesktop.org>; Mon, 09 Dec 2019 08:17:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=9784w5ZOUxKyeU2spgH6aez2GEQBVQi3HYHsDTA+zC4=;
 b=mbUAEUl2TuJ5F+blytaRPmSNGBS1Tdt8E+VmwCB3nLf7eH1Hy16Xq7WXlId4rFWJm3
 NMngYR4riD6h8fEZvpQ5dUZ+JX8sHJUI+CXEr9Q6/0KqSpIbB9H1VKwOJTBm0bOl7F72
 83JBxjsSCjpvvKeP8o0el7xYogjzwmF6k2nBLfowCFpouseNUCWqpv8TV7wAbfPGsKzE
 6leyaDYKwOJ/iBQ7bTZ4OQANFzuJDpM2f5MT5kKfE3DmT5Z5HMXpS1OLdYtx3gIg23nR
 zOuJQDJgVGhZiSRgTGLn79RcMbvxLeG2Ozy9iD0HLbYA5T8b0jWFaONa7K1Dbx2GxSRn
 x90Q==
X-Gm-Message-State: APjAAAWyBQJySw6FaMDwC3rm+tgbVtGPQCIz7pgEmcmPBk8qk2onRhUe
 CseJAM4mD/n1nwMpt5hEcSsJEQj5Duw/SbaOAnXuZA==
X-Google-Smtp-Source: APXvYqxJQ+xGXITqfgXLQE7LEc/kMXlhCqoxR+cukZCSvQ7E2WoxioMFCYCSREJf1c69LloO9haH0mMqw1RaNK53QFU=
X-Received: by 2002:a6b:6f17:: with SMTP id k23mr4535759ioc.75.1575908223534; 
 Mon, 09 Dec 2019 08:17:03 -0800 (PST)
MIME-Version: 1.0
References: <20191203173638.94919-1-sean@poorly.run>
 <20191203173638.94919-5-sean@poorly.run>
 <20191205193935.GL1208@intel.com> <20191206135233.GD162979@art_vandelay>
 <20191209152124.GR1208@intel.com>
In-Reply-To: <20191209152124.GR1208@intel.com>
From: Sean Paul <sean@poorly.run>
Date: Mon, 9 Dec 2019 11:16:27 -0500
Message-ID: <CAMavQKLROAneH7P+jXUUtdcSSvGjYyz_SE-zeFzYzoZokZFBrQ@mail.gmail.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=poorly.run; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=9784w5ZOUxKyeU2spgH6aez2GEQBVQi3HYHsDTA+zC4=;
 b=LKukQtmPVUz4TLLWuQwkAGAVd4JxJAIEBNTtwDGTrtDQZMhD+U2M+lt5sA28AaT5aV
 GiIs1uo0u8bR+RabCSawz1LOAcZTzMpnfCFZUxgLY5pRo7glJgxsz2IMbL0RwPON+6+u
 lxnMG1y1eqTfkyuC0z9GQ7YOw3C59/lpMozKkUhnhS6mVC/lEKbvxYCiNH6YgkTYPAOE
 Hv1hbky80SrROEk6/8l0dH3yUpb0i/uV4yYHCVlg4AGyVZPgs5VqkQLluB2wDP5r/3+4
 anTES4zSQkRlcx7ke5/pXQFY448+wIT+TnmPcmmS/HJOmZMFKp24GkFK0yuGfRcNXZKx
 vCAQ==
Subject: Re: [Intel-gfx] [PATCH 04/11] drm/i915: Don't WARN on HDCP toggle
 if get_hw_state returns false
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
Cc: David Airlie <airlied@linux.ie>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, ramalingm.c@intel.com,
 Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBEZWMgOSwgMjAxOSBhdCAxMDoyMSBBTSBWaWxsZSBTeXJqw6Rsw6QKPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPiB3cm90ZToKPgo+IE9uIEZyaSwgRGVjIDA2LCAyMDE5IGF0
IDA4OjUyOjMzQU0gLTA1MDAsIFNlYW4gUGF1bCB3cm90ZToKPiA+IE9uIFRodSwgRGVjIDA1LCAy
MDE5IGF0IDA5OjM5OjM1UE0gKzAyMDAsIFZpbGxlIFN5cmrDpGzDpCB3cm90ZToKPiA+ID4gT24g
VHVlLCBEZWMgMDMsIDIwMTkgYXQgMTI6MzY6MjdQTSAtMDUwMCwgU2VhbiBQYXVsIHdyb3RlOgo+
ID4gPiA+IEZyb206IFNlYW4gUGF1bCA8c2VhbnBhdWxAY2hyb21pdW0ub3JnPgo+ID4gPiA+Cj4g
PiA+ID4gTm93IHRoYXQgd2UgY2FuIHJlbHkgb24gdHJhbnNjb2RlciBkaXNhYmxlIHRvIHRvZ2ds
ZSBzaWduYWxsaW5nIG9mZiwKPiA+ID4gPiBpdCdzIGxlc3Mgb2YgYSBjYXRhc3Ryb3BoZSBpZiBn
ZXRfaHdfc3RhdGUoKSByZXR1cm5zIGZhbHNlLgo+ID4gPiA+Cj4gPiA+ID4gT25jZSB3ZSBlbmFi
bGUgTVNULCB0aGlzIHdpbGwgYmUgYSB2YWxpZCBleGl0IHBhdGggYW5kIHdlIHdhbnQgdG8gbWFr
ZQo+ID4gPiA+IHN1cmUgd2UncmUgbm90IHNwYW1taW5nIHRoZSBsb2dzIG5lZWRsZXNzbHkuCj4g
PiA+ID4KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBTZWFuIFBhdWwgPHNlYW5wYXVsQGNocm9taXVt
Lm9yZz4KPiA+ID4gPiAtLS0KPiA+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kZGkuYyB8IDIgKy0KPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAxIGRlbGV0aW9uKC0pCj4gPiA+ID4KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGRpLmMKPiA+ID4gPiBpbmRleCBlOGFjOThhOGVlN2YuLmNhMjg5MTNhNGM5ZiAx
MDA2NDQKPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rk
aS5jCj4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGku
Ywo+ID4gPiA+IEBAIC0xOTgzLDcgKzE5ODMsNyBAQCBpbnQgaW50ZWxfZGRpX3RvZ2dsZV9oZGNw
X3NpZ25hbGxpbmcoc3RydWN0IGludGVsX2VuY29kZXIgKmludGVsX2VuY29kZXIsCj4gPiA+ID4g
ICBpZiAoV0FSTl9PTighd2FrZXJlZikpCj4gPiA+ID4gICAgICAgICAgIHJldHVybiAtRU5YSU87
Cj4gPiA+ID4KPiA+ID4gPiAtIGlmIChXQVJOX09OKCFpbnRlbF9lbmNvZGVyLT5nZXRfaHdfc3Rh
dGUoaW50ZWxfZW5jb2RlciwgJnBpcGUpKSkgewo+ID4gPiA+ICsgaWYgKCFpbnRlbF9lbmNvZGVy
LT5nZXRfaHdfc3RhdGUoaW50ZWxfZW5jb2RlciwgJnBpcGUpKSB7Cj4gPiA+Cj4gPiA+IEhvdyBj
YW4gdGhpcyBnZXQgY2FsbGVkIHdoZW4gdGhlIGVuY29kZXIgaXMgbm90IGVuYWJsZWQ/Cj4gPiA+
IEZlZWxzIGxpa2UgdGhpcyB3aG9sZSB0aGluZyBpcyB0cnlpbmcgdG8gcGFwZXIgb3ZlciBzb21l
Cj4gPiA+IGJpZ2dlciBidWcgaW4gdGhlIGhkY3AgY29kZS4KPiA+Cj4gPiBJbiB0aGUgTVNUIHBh
dGNoLCBJJ3ZlIGFkZGVkIGEgY2FsbCB0byBpbnRlbF9oZGNwX2Rpc2FibGUoKSBpbiB0aGUgY29u
bmVjdG9yCj4gPiBkZXN0cm95IHBhdGguIFVzdWFsbHkgdG9nZ2xpbmcgd2lsbCBiZSBkaXNhYmxl
ZCBhcyBwYXJ0IG9mIHRoZSBjaGVja19saW5rIGNhbGwKPiA+IHRoYXQgaXMgaW5pdGlhdGVkIG9u
IHVucGx1Zywgc28gaW4gdGhlIGRlc3Ryb3kgcGF0aCBpdCdzIG5vbi1lc3NlbnRpYWwgdG8gZG8K
PiA+IHRoaXMgYWdhaW4uCj4KPiBDYW4ndCB3ZSBqdXN0IGxlYXZlIHRoaW5ncyBiZSB1bnRpbCB1
c2Vyc3BhY2UgZGlzYWJsZXMgdGhlIHRoaW5nPwoKVGhlIGNvbm5lY3RvciBkaXNhcHBlYXJzLCBz
byB1c2Vyc3BhY2Ugd29uJ3QgYmUgYWJsZSB0byBkaXNhYmxlIGl0LgoKPiBJZiBub3QsIHRoZW4g
d2Ugc2hvdWxkIGtub3cgd2hldGhlciBoZGNwIGlzIHN0aWxsIGVuYWJsZWQuIEFuZCBpZgo+IGhk
Y3AgaXMgZW5hYmxlZCBzbyBpcyB0aGUgZW5jb2RlciwgdGh1cyB3ZSBkb24ndCBuZWVkIHN1Y2gg
c2lsbHkKPiBjaGVja3MuCgpBbHJpZ2h0LCBJJ2xsIGxvb2sgYXQgdGFraW5nIHRoaXMgYW5nbGUu
CgpTZWFuCgo+Cj4gLS0KPiBWaWxsZSBTeXJqw6Rsw6QKPiBJbnRlbApfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
