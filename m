Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6FDFD183A
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 21:13:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE1216E30D;
	Wed,  9 Oct 2019 19:13:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb43.google.com (mail-yb1-xb43.google.com
 [IPv6:2607:f8b0:4864:20::b43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB41B6E30D
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2019 19:13:00 +0000 (UTC)
Received: by mail-yb1-xb43.google.com with SMTP id s7so1104396ybq.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 09 Oct 2019 12:13:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mPw9fZMHr080FGDD3z3zhym+U05iVJwp1+wWZYUtR9w=;
 b=YpO/zsNpFwlO4nUbI+J/jgkgvCJWFuI8n/wKF8W35/hawmX02QQr54zcOtQbg6jmYF
 7Z1Kfxz0EzeJecGqoJy4SJCsy0MldWIWFa/zRqK6eTTjSC6jIdrjnpTxXuHhDrJ1dUei
 rdMxsny2rbwM041RAtp5w5LSQcDFxkfVIRqujwEQ+bHecdGY/M5ELyAZdLYGHTRK918a
 HqVKrVBhkO9BNSiS+NrCBuLgNtk9L6PIxpyMjxvW3IzuoRoH7pXjQ2X3fFIDVRNZDKbn
 BCzVtFrhx9KtXwcYOWoceMfsqT2M1pOcXscGV3AANqXGEE5ekZClMZXHmoQ1N+zRdnpS
 nxYw==
X-Gm-Message-State: APjAAAVjICbR9RJJ2pArnw6bYJiVydIHj+zilfmZCnNGp1qRqtiWmc/P
 si6RarkDtsgOfpS5FuKmal5wmQ==
X-Google-Smtp-Source: APXvYqyavUrqms0j8jcTfiCeuv5LleJTjDrL8IL23YRplyeMt26VHuqVnJRTc/Tkd0mRyNP0VWbPFw==
X-Received: by 2002:a25:908e:: with SMTP id t14mr2767540ybl.329.1570648379861; 
 Wed, 09 Oct 2019 12:12:59 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id i134sm849431ywa.9.2019.10.09.12.12.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 12:12:59 -0700 (PDT)
Date: Wed, 9 Oct 2019 15:12:59 -0400
From: Sean Paul <sean@poorly.run>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191009191259.GF85762@art_vandelay>
References: <20190822065917.18988-1-chris@chris-wilson.co.uk>
 <156647232345.11829.12799168742587793498@jlahtine-desk.ger.corp.intel.com>
 <156647264559.20466.5531617090699173011@skylake-alporthouse-com>
 <CAOw6vbKE32aewT7agF9hjWzf_sLYXQsAF3pnLZJbUN4io+vVUA@mail.gmail.com>
 <157064745334.18808.8929010738713347779@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157064745334.18808.8929010738713347779@skylake-alporthouse-com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=mPw9fZMHr080FGDD3z3zhym+U05iVJwp1+wWZYUtR9w=;
 b=UBu8BxY5kYp7xSOgljCL3Lsbyz9kDnECbymZJw24MHrL4RkF4bSHexYpmfiPJFy+Nf
 N3fhDBL6f8+8mq8lgYgjeut1jGdhse2aq2pTRuO5Fc97jRZ+rp0DJXJ8zMlDgxJ68CdJ
 rRsFxbI/UwUtoL86j16K7t+pt4YxT9hk64yZVuSswafG/ukavamhOGMD6TYMzEwogIdi
 QPDcArq0D65QJON9l93oIeYA/ci9YK2YB+rT4ukLnrwNcLoAsZvRSUUWkGd9gz3DuKsj
 fyCPeKoVDSWFHq/ZlwKeoBqMS2oBc70+pAiHxtdGSju8+5sqjOzmW9FxCcykQ9uvv7Uw
 It2g==
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Kill the undead
 i915_gem_batch_pool.c
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBPY3QgMDksIDIwMTkgYXQgMDc6NTc6MzNQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgU2VhbiBQYXVsICgyMDE5LTEwLTA5IDE5OjUzOjMxKQo+ID4gT24gVGh1
LCBBdWcgMjIsIDIwMTkgYXQgNzoxNyBBTSBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4gd3JvdGU6Cj4gPiA+Cj4gPiA+IFF1b3RpbmcgSm9vbmFzIExhaHRpbmVuICgyMDE5
LTA4LTIyIDEyOjEyOjAzKQo+ID4gPiA+IFF1b3RpbmcgQ2hyaXMgV2lsc29uICgyMDE5LTA4LTIy
IDA5OjU5OjE3KQo+ID4gPiA+ID4gWW91IGhhdmUgdG8gY3V0IGl0IG9mZiBhdCB0aGUgbmVjaywg
b3RoZXJ3aXNlIGl0IGp1c3QgcmVhcHBlYXJzIGluIHRoZQo+ID4gPiA+ID4gbmV4dCBtZXJnZSwg
bGlrZSBjb21taXQgM2Y4NjYwMjZmMGNlICgiTWVyZ2UgZHJtL2RybS1uZXh0Cj4gPiA+ID4gPiBp
bnRvIGRybS1pbnRlbC1uZXh0LXF1ZXVlZCIpCj4gPiA+ID4gPgo+ID4gPiA+ID4gUmVmZXJlbmNl
czogM2Y4NjYwMjZmMGNlICgiTWVyZ2UgZHJtL2RybS1uZXh0IGludG8gZHJtLWludGVsLW5leHQt
cXVldWVkIikKPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgo+ID4gPiA+ID4gQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZp
QGludGVsLmNvbT4KPiA+ID4gPgo+ID4gPiA+IEFja2VkLWJ5OiBKb29uYXMgTGFodGluZW4gPGpv
b25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+Cj4gPiA+Cj4gPiA+IEFuZCBvbmNlIG1vcmUg
dGhlIG5haWxzIGhhdmUgYmVlbiBwdXQgYmFjayBpbiB0aGUgY29mZmluLgo+ID4gCj4gPiBNb250
aHMgbGF0ZXIsIGEgaGFuZCByZWFjaGVzIG91dCBmcm9tIHRoZSBncmF2ZSBhbmQgc2F5czoKPiA+
IAo+ID4gRXJyb3I6IENhbm5vdCBvcGVuIGZpbGUgLi4vZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9nZW1fYmF0Y2hfcG9vbC5jCj4gPiBFcnJvcjogQ2Fubm90IG9wZW4gZmlsZSAuLi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9iYXRjaF9wb29sLmMKPiA+IEVycm9yOiBDYW5ub3Qgb3Bl
biBmaWxlIC4uL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2JhdGNoX3Bvb2wuYwo+IAo+
IGNvbW1pdCBiMDQ3NDYzYzg1MjI3MmVmOTk1NmFkM2E0YzcwNmY3OGY4YjA2YzE3Cj4gQXV0aG9y
OiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+Cj4gRGF0
ZTogICBGcmkgQXVnIDMwIDExOjU4OjQ4IDIwMTkgKzAzMDAKPiAKPiAgICAgZHJtL2k5MTU6IFJl
bW92ZSBsaW5rIHRvIG1pc3NpbmcgIkJhdGNoYnVmZmVyIFBvb2xzIiBkb2N1bWVudGF0aW9uCj4g
CgpBaCwgdGhhdCdzIHNvIG11Y2ggbGVzcyBmdW4gOi0pCgpUaGFua3MgZm9yIHRoZSByZWZlcmVu
Y2UsIEkgbG9vayBmb3J3YXJkIHRvIGdldHRpbmcgaXQgaW4gLW1pc2Mgb24gdGhlIG5leHQKYmFj
a21lcmdlLgoKU2VhbgoKPiAtQ2hyaXMKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngKCi0tIApTZWFuIFBhdWwsIFNvZnR3YXJlIEVuZ2luZWVyLCBH
b29nbGUgLyBDaHJvbWl1bSBPUwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
