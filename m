Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C4A7A534
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 11:50:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC65D88E34;
	Tue, 30 Jul 2019 09:50:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D993B88E34
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 09:50:42 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id v15so62018595eds.9
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 02:50:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=n7OLSIjH2ZWOAi85hSfKjM9aeyjpCnbEqbmHbLi5wWI=;
 b=dgD0rUXtKTGNvHwYPay3X9euhAhMmbLnR//ZtTAYTnQtNfZICb2PodQ08OvjICfdhg
 CVLn1uSUNXjMWc4RUVT4EDMlafeVDlxBtoqkAgUxrPYIWtTcWFPrF0Tpom2zOcL2X0Pf
 upu1W13wODnlskWWUMbNz/8Wxx2EOTKt5dKwBc6aqaPxAkM/+f8EkkULSSWISVzc8VsI
 Cgxw1S2EHOQTCkQl/FekAcjVB0Km/x3SO147ZAUAW+diR3Z86JU1ID8qkyGFSg5Oi9oS
 E5HgvhN8bNwvBefR4t/M6GLfxp+aVDn4Y8BYc+ow/88IHXRUh23uZAKhIsneqtm3+EOx
 4aRQ==
X-Gm-Message-State: APjAAAXQUiqq4XWJpfJRTC3oTsw3dXrs/L7kvdCsFmmZbHsFOKgt+cJ4
 KVQPnAxQiCooil1117eOYLA=
X-Google-Smtp-Source: APXvYqwFSafdTbFnB1zGqo9wrFBgOBjHEEQbxW8x/sKFQwkf1w0Nm+DUAp+HszNaC//bY+/tyVWGXg==
X-Received: by 2002:a17:906:e0cd:: with SMTP id
 gl13mr88124502ejb.52.1564480241497; 
 Tue, 30 Jul 2019 02:50:41 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id ay8sm11882479ejb.4.2019.07.30.02.50.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 30 Jul 2019 02:50:40 -0700 (PDT)
Date: Tue, 30 Jul 2019 11:50:39 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <20190730095039.GR15868@phenom.ffwll.local>
References: <20190627205633.1143-1-matthew.auld@intel.com>
 <20190627205633.1143-17-matthew.auld@intel.com>
 <20190730085822.GL15868@phenom.ffwll.local>
 <85ba8bc8-d3b2-da46-1116-3032c02aafb6@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <85ba8bc8-d3b2-da46-1116-3032c02aafb6@intel.com>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=n7OLSIjH2ZWOAi85hSfKjM9aeyjpCnbEqbmHbLi5wWI=;
 b=TZsaqhtYr3ql3teen6p4Rc2D7RmAW4fH++U0cMRskGYIA5iFfrjtYBTTqQ0uG7i4pF
 54CkBcXoLvqtN+gvWSNbZ9m/q/yXGKi7QSV186L4EuW0pLzi8qEwOUWZrynMo3OZjDq0
 m9ct4U+14TBlCfcfHIJxVQ4jUsumVYFYT6slM=
Subject: Re: [Intel-gfx] [PATCH v2 16/37] drm/i915/lmem: support pread
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdWwgMzAsIDIwMTkgYXQgMTA6MjU6MTBBTSArMDEwMCwgTWF0dGhldyBBdWxkIHdy
b3RlOgo+IE9uIDMwLzA3LzIwMTkgMDk6NTgsIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4gPiBPbiBU
aHUsIEp1biAyNywgMjAxOSBhdCAwOTo1NjoxMlBNICswMTAwLCBNYXR0aGV3IEF1bGQgd3JvdGU6
Cj4gPiA+IFdlIG5lZWQgdG8gYWRkIHN1cHBvcnQgZm9yIHByZWFkJ2luZyBhbiBMTUVNIG9iamVj
dC4KPiA+IAo+ID4gV2h5PyBVc2FnZSBvdXRzaWRlIGZyb20gaWd0cyBzZWVtcyBwcmV0dHkgZGVh
ZCwgYXQgbGVhc3QgbG9va2luZyBhdCBpcmlzCj4gPiBhbmQgYW52LiBUaGlzIHdhcyBraW5kYSBh
IG5lYXQgdGhpbmcgZm9yIHdoZW4gd2UgZGlkbid0IHlldCByZWFsaXplZCB0aGF0Cj4gPiBkb2lu
ZyBjbGZsdXNoIGluIHVzZXJzcGFjZSBpcyBib3RoIHBvc3NpYmxlIGFuZCBtb3JlIGVmZmljaWVu
dC4KPiA+IAo+ID4gU2FtZSBmb3IgcHdyaXRlLCBpcmlzIGp1c3QgZHJvcHBlZCBpdCwgYW52IGRv
ZXNuJ3Qgc2VlbSB0byB1c2UgaXQuIEFuZCBJCj4gPiB0aG91Z2h0IG1lc2EgcGxhbiBpcyB0byBk
cm9wIHRoZSBvbGQgY2xhc3NpYyBkcml2ZXIgZm9yIHdoZW4gd2UnbGwgbmVlZAo+ID4gbG1lbS4g
SXQncyBub3QgbXVjaCwgYnV0IHdvdWxkIGFsbG93IHVzIHRvIGRyb3AgYSBmZXcgdGhpbmdzLgo+
IAo+IEhtbSwgaXQgd2FzIGF0IGxlYXN0IHVzZWZ1bCBpbiB0aGUgc3VwZXIgZWFybHkgZGF5cyBm
b3IgZGVidWdnaW5nLiBJZiB3ZQo+IHdlcmUgdG8gZHJvcCB0aGlzIHdoYXQgZG8gd2UgZG8gd2l0
aCB0aGUgaWd0cz8gSnVzdCB1c2UgbW1hcD8KCndjIG1tYXAgaXMgcHJvYmFibHkgc2ltcGxlc3Qu
IEkgdGhpbmsgd2UgY291bGQgZG8gYSBjb21wYXQgZnVuY3Rpb24gaW4gaWd0CnRoYXQgZG9lcyB0
aGF0IHdoZW4gcHdyaXRlIGlzbid0IGF2YWlsYWJsZS4gQ291bGQgYWxzbyBoYXZlIHRoYXQgaW4K
bGliZHJtX2ludGVsLCBpbiBjYXNlIHNvbWUgb2YgdGhlIFVNRHMgaGF2ZSBhIGhhcmQgdGltZSBn
ZXR0aW5nIG9mZiBpdC4KLURhbmllbAotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVl
ciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
