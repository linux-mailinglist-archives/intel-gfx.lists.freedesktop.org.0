Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A0660104F39
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 10:29:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0E2C6EBF3;
	Thu, 21 Nov 2019 09:29:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com
 [IPv6:2607:f8b0:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E03656E047
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Nov 2019 09:29:10 +0000 (UTC)
Received: by mail-ot1-x341.google.com with SMTP id 23so542454otf.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Nov 2019 01:29:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=L/9XG4T3ODzwDGpdLeDW9uanHmB2LkgxN7fPQOMgPCw=;
 b=oPhoh8qUrNQ/tST7tohzLVQeIzCfZ/cfcqYGCA5Ylb95nkqUz8ujm2kS8y0+JR8hHx
 B2g6smm0ym74U8+sAE9diJGXvApZUohCvywJFUR40VkhucOVrp8SXBYgQpHCkpHX/zJM
 bWUs4ONmTg6H8WNO/7bKkgG2Ws3lD1xlMSRbKBgpq4fnhd0+YZHiDqyJU8nms3iNPd7V
 xZdB44o8yyVyJbUluyIeKKvbpXDfcKApJHOtyDDQp7G27mX4V3Vcrz9n+DhLrdcVZR5e
 WhvOYFRnjGK92TyeTf5sUELyVCQDHjdjiBRaQbRqwxy9WD6Dpzt8A9lOrtuPf1EzL7ju
 LaTw==
X-Gm-Message-State: APjAAAWCAww4RkCFtRAYXiLdnecLrUHrboUIgmIoxaIaytzy9imrLnXn
 n7qbZ+n+mYMKNpVZGrX8qR4k/jNpQgq/Zr8jlR00Ag==
X-Google-Smtp-Source: APXvYqwRJSENwl2IaiQZim1jRwTxV3k69SEND2Ro4jcRS96EWtrG9s6XV2oO8/oB0pVjRuWp2TgG+iMSUWhmT0bOWf0=
X-Received: by 2002:a9d:1b4b:: with SMTP id l69mr359513otl.303.1574328550009; 
 Thu, 21 Nov 2019 01:29:10 -0800 (PST)
MIME-Version: 1.0
References: <20191003183125.4520-1-juston.li@intel.com>
 <20191009155054.GM16989@phenom.ffwll.local>
 <14d291d3-774b-faec-370d-0d0164f33447@ubuntu.com>
In-Reply-To: <14d291d3-774b-faec-370d-0d0164f33447@ubuntu.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 21 Nov 2019 10:28:58 +0100
Message-ID: <CAKMK7uHM=z5gbjmd6aTxJ6tnxM81hMYndNav85i55-nCSQi+4w@mail.gmail.com>
To: Timo Aaltonen <tjaalton@ubuntu.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=L/9XG4T3ODzwDGpdLeDW9uanHmB2LkgxN7fPQOMgPCw=;
 b=hsA6CyWKb70/pUyKWCu4AWHrV9lPFxe1hF6Azdid5QUg+dxr0bvyDChwucJYU53amO
 66Ff6KiTyG/j+UQch4ueACVw+8GEMBwAvvej602ieAJhxamVBGvN/eOE6jZnOjo5g6mI
 EEDxP75mTiWCrH5ZQiVgk7tpQ5rAk4MWTbBMc=
Subject: Re: [Intel-gfx] [RESEND PATCH v2] drm: Add getfb2 ioctl
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
 Daniel Stone <daniels@collabora.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBOb3YgMjEsIDIwMTkgYXQgOToyNiBBTSBUaW1vIEFhbHRvbmVuIDx0amFhbHRvbkB1
YnVudHUuY29tPiB3cm90ZToKPgo+IE9uIDkuMTAuMjAxOSAxOC41MCwgRGFuaWVsIFZldHRlciB3
cm90ZToKPiA+IE9uIFRodSwgT2N0IDAzLCAyMDE5IGF0IDExOjMxOjI1QU0gLTA3MDAsIEp1c3Rv
biBMaSB3cm90ZToKPiA+PiBGcm9tOiBEYW5pZWwgU3RvbmUgPGRhbmllbHNAY29sbGFib3JhLmNv
bT4KPiA+Pgo+ID4+IGdldGZiMiBhbGxvd3MgdXMgdG8gcGFzcyBtdWx0aXBsZSBwbGFuZXMgYW5k
IG1vZGlmaWVycywganVzdCBsaWtlIGFkZGZiMgo+ID4+IG92ZXIgYWRkZmIuCj4gPj4KPiA+PiBD
aGFuZ2VzIHNpbmNlIHYxOgo+ID4+ICAtIHVudXNlZCBtb2RpZmllcnMgc2V0IHRvIDAgaW5zdGVh
ZCBvZiBEUk1fRk9STUFUX01PRF9JTlZBTElECj4gPj4gIC0gdXBkYXRlIGlvY3RsIG51bWJlcgo+
ID4+Cj4gPj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFN0b25lIDxkYW5pZWxzQGNvbGxhYm9yYS5j
b20+Cj4gPj4gU2lnbmVkLW9mZi1ieTogSnVzdG9uIExpIDxqdXN0b24ubGlAaW50ZWwuY29tPgo+
ID4KPiA+IExvb2tzIGFsbCBnb29kIGZyb20gYSB2ZXJ5IHF1aWNrIGdsYW5jZSAoa2VybmVsLCBs
aWJkcm0sIGlndCksIGJ1dCB3aGVyZSdzCj4gPiB0aGUgdXNlcnNwYWNlPyBMaW5rIHRvIHdlc3Rv
bi9kcm1faHdjL3doYXRldmVyIE1SIGdvb2QgZW5vdWdoLgo+ID4gLURhbmllbAo+Cj4geHNlcnZl
ciB0b28KPgo+IGh0dHBzOi8vbGlzdHMueC5vcmcvYXJjaGl2ZXMveG9yZy1kZXZlbC8yMDE4LU1h
cmNoLzA1NjM2My5odG1sCj4KPiB0byBmaXgKPgo+IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9w
Lm9yZy94b3JnL3hzZXJ2ZXIvaXNzdWVzLzMzCj4KPiB3aGljaCBmb3JjZXMgVWJ1bnR1IHRvIGRp
c2FibGUgQ0NTIGNvbXByZXNzaW9uLCBhbmQgSSdkIGxpa2UgdG8gZ2V0IHJpZAo+IG9mIHRoYXQg
cGF0Y2guCj4KPiBUaGFua3MgSnVzdG9uIGZvciBwdXNoaW5nIHRoaXMhCgpBY2tlZC1ieTogRGFu
aWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KCi4uLiBidXQgc29tZW9uZSBuZWVk
cyB0byByZXZpZXcgYWxsIHRoZSBwYXRjaGVzIGFuZCBtYWtlIHN1cmUga2VybmVsCnBhdGNoICsg
aWd0IHdvcmsgYW5kIHBhc3MgaW50ZWwgQ0kgYW5kIHRoZW4gcHVzaCBpdCBhbGwsIGFuZCBnaXZl
biB0aGUKcGlsZSBvZiBjb21taXR0ZXJzIHdlIGhhdmUgdGhhdCdzIG5vdCBtZSBJIHRoaW5rLiBK
dXN0IGluIGNhc2UgcGVvcGxlCmV4cGVjdCBtZSB0byBwdXNoIHRoaXMgZm9yd2FyZCwgSSBvbmx5
IGp1bXBlZCBpbiBoZXJlIHRvIG1ha2Ugc3VyZSBuZXcKdWFwaSBpcyBkb25lIGJ5IHRoZSBib29r
IGFuZCBjaGVja3MgYWxsIHRoZSBib3hlcy4KLURhbmllbAotLSAKRGFuaWVsIFZldHRlcgpTb2Z0
d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KKzQxICgwKSA3OSAzNjUgNTcgNDggLSBo
dHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
