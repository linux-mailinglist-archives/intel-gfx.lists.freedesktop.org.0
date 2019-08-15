Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 146948E93E
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 12:48:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00F176E297;
	Thu, 15 Aug 2019 10:48:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com
 [IPv6:2607:f8b0:4864:20::e44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE6926E297
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 10:48:31 +0000 (UTC)
Received: by mail-vs1-xe44.google.com with SMTP id 190so1215337vsf.9
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 03:48:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mQhaYdfmxjyk8wQKh+4QIl3hfZRBy0NCuR6OVYBn/EY=;
 b=i6ict6yLRnoH9JCUPw+/LOwWykMJBdLETWmsH4PXuAmVlOb+iEV5bOxHOsk5B5YZ7p
 APak0/1apEmavoJCbAZKOKjtzW7OfS0W0lUnvtVnKrek5aacP9KxBR7MZXhzrN9Dq7aa
 ULQjsRM4+GjT3Mrrih2+aEsDxIF7HZJQ9tlQUKQEa5c0MssR4IXc1ckRxxr7UpEjQ4mI
 yj0TMcJ9va1dQGH9EJBviuRZOa86VndetLaKsbYnlKuFbmza48OhZZIZnK2fpddbIUqX
 YGkk/TiCFMlEpTZItaQiPLHrZNfLccRqK3WrVM6/W/k4hYH0LueUDsJyxY3UIpWhGaNw
 794Q==
X-Gm-Message-State: APjAAAXaTVwOUjqC+LsI+msKcSAmne+RK8NaPDRn4t93YwAJ/dML1qQY
 3EWOkIqtaQZpy+IF533xWptX42q3ZP/0je/pirc=
X-Google-Smtp-Source: APXvYqxBTRMe2vTxMw2T+u4shXyZrElPWqKtUzefaEVtCoU+2FVVGx5ho07vx7BlMVHQIryfOFESH+zLqzbN62Q9OKw=
X-Received: by 2002:a67:fe4e:: with SMTP id m14mr2207071vsr.34.1565866110889; 
 Thu, 15 Aug 2019 03:48:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190627205633.1143-1-matthew.auld@intel.com>
 <20190627205633.1143-4-matthew.auld@intel.com>
 <20190730162605.GC7444@phenom.ffwll.local>
In-Reply-To: <20190730162605.GC7444@phenom.ffwll.local>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 15 Aug 2019 11:48:04 +0100
Message-ID: <CAM0jSHOXWzhLa4rjf68yuLHdU5x1duEbtL+uzhWDg0dQg+XWiQ@mail.gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=mQhaYdfmxjyk8wQKh+4QIl3hfZRBy0NCuR6OVYBn/EY=;
 b=kcx+RPxk93bChr28HTxDcJwZGH7+kTJRN6AwrCpbZxBlGAsNtT9wUvIvzLvl6Uto3r
 kpRyut+28eJfgbMLXp3G3ABDRQXpdiniEf29yewxC8ZjM/OuQ+K0uetlB7y1EP9rw4Mk
 VEpcJj+YUf0By168y7WSpAWgDY1ZCsGNF8IOgrhE3VpvD1ky8oE/tGAKPyXRYX5hITyy
 U04KJKdMEk/70y+JRPTteJPbpuApcs7jjMz2bKNK6fKofyoWyIv8tYc6C85EE0dHeHvQ
 jgPti15C4FdyKXNQpnz6LThWejhDSSeSlkzco8/hHzyqO1Cj/35z7buD/ZhoJqg3DAx2
 eoYA==
Subject: Re: [Intel-gfx] [PATCH v2 03/37] drm/i915/region: support basic
 eviction
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
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAzMCBKdWwgMjAxOSBhdCAxNzoyNiwgRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xs
LmNoPiB3cm90ZToKPgo+IE9uIFRodSwgSnVuIDI3LCAyMDE5IGF0IDA5OjU1OjU5UE0gKzAxMDAs
IE1hdHRoZXcgQXVsZCB3cm90ZToKPiA+IFN1cHBvcnQgYmFzaWMgZXZpY3Rpb24gZm9yIHJlZ2lv
bnMuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50
ZWwuY29tPgo+ID4gQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4Lmlu
dGVsLmNvbT4KPiA+IENjOiBBYmRpZWwgSmFudWxndWUgPGFiZGllbC5qYW51bGd1ZUBsaW51eC5p
bnRlbC5jb20+Cj4KPiBTbyBmcm9tIGEgdmVyeSBoaWdoIGxldmVsIHRoaXMgbG9va3MgbGlrZSBp
dCB3YXMgbGFyZ2VseSBtb2RlbGxlZCBhZnRlcgo+IGk5MTVfZ2VtX3Nocmluay5jIGFuZCBub3Qg
aTkxNV9nZW1fZXZpY3QuYyAob3VyIG90aGVyICJtYWtlIHJvb20sIHdlJ3JlCj4gcnVubmluZyBv
dXQgb2Ygc3R1ZmYiIGNvZGUpLiBBbnkgc3BlY2lmaWMgcmVhc29ucz8KCklJUkMgSSB0aGluayBp
dCB3YXMgb3JpZ2luYWxseSBiYXNlZCBvbiB0aGUgcGF0Y2hlcyB0aGF0IGV4cG9zZWQKc3RvbGVu
LW1lbW9yeSB0byB1c2Vyc3BhY2UgZnJvbSBhIGZldyB5ZWFycyBhZ28uCgo+Cj4gSSB0aGluayBp
OTE1X2dlbV9ldmljdCBpcyBhIGxvdCBjbG9zZXIgbWF0Y2ggZm9yIHdoYXQgd2Ugd2FudCBmb3Ig
dnJhbSAoaXQKPiBzdGFydGVkIG91dCB0byBtYW5hZ2Ugc2V2ZXJlbHkgbGltaXR0ZWQgR1RUIG9u
IGdlbjIvMy80KSBhZnRlciBhbGwuIFdpdGgKPiB0aGUgY29tcGxpY2F0aW9uIHRoYXQgd2UnbGwg
aGF2ZSB0byBtYW5hZ2UgcGh5c2ljYWwgbWVtb3J5IHdpdGggbXVsdGlwbGUKPiB2aXJ0dWFsIG1h
cHBpbmdzIG9mIGl0IG9uIHRvcCwgc28gdW5mb3J0dW5hdGVseSB3ZSBjYW4ndCBqdXN0IHJldXNl
IHRoZQo+IGxvY2tpbmcgcGF0dGVyIENocmlzIGhhcyBjb21lIHVwIHdpdGggaW4gaGlzIHN0cnVj
dF9tdXRleC1yZW1vdmFsIGJyYW5jaC4KPiBCdXQgYXQgbGVhc3QgY29uY2VwdHVhbGx5IGl0IHNo
b3VsZCBiZSBhIGxvdCBjbG9zZXIuCgpXaGVuIHlvdSBzYXkgbWFrZSBpdCBtb3JlIGxpa2UgaTkx
NV9nZW1fZXZpY3QsIHdoYXQgZG9lcyB0aGF0IG1lYW4/CkFyZSB5b3UgdGFsa2luZyBhYm91dCB0
aGUgZXZpY3Rpb24gcm9zdGVyIHN0dWZmLCBvciB0aGUKcGxhY2VtZW50L2xvY2tpbmcgb2YgdGhl
IGV2aWN0aW9uIGxvZ2ljLCB3aXRoIGl0IGJlaW5nIGRlZXAgZG93biBpbgpnZXRfcGFnZXM/Cgo+
Cj4gQnV0IEkgbWlnaHQgYmUgZW50aXJlbHkgb2ZmIHRoZSB0cmFjayB3aXRoIHJlY29uc3RydWN0
aW5nIGhvdyB0aGlzIGNvZGUKPiBjYW1lIHRvIGJlLCBzbyBwbGVhc2UgZWxhYm9yYXRlIGEgYml0
Lgo+Cj4gVGhhbmtzLCBEYW5pZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
