Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0327210A082
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 15:40:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5286F6E400;
	Tue, 26 Nov 2019 14:40:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 781286E400
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 14:40:34 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id i12so22818836wro.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 06:40:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=vDlRkpzIOrPRGh5pysj0vN3V4ARniTOU0E64e7Y7I4k=;
 b=cSqsE8qkpNLpqMg3afOo52kd1CO4oRMRFN+PFGvwjgBsIFJfzSoR24lyr6+M0wEBeH
 tVZUHLHbGbX2aegEiBzIt5zkm6oMLO/6OKiOF3kauGaODP05KSFiM3tK29+nTiBgpCjf
 mKy+u1ffLCt7qdaOpWWlPOj3wicwrTLSWTUVKz7vCGZPhdOA5griVGVrDpzPyJzG/fjL
 xzKSxUdSuNatGQYqgn4ikfeuhPctPHRLab3+Km63xF4LUrF1C56CYta9xUQ1y0NBXesH
 eUwtW9pfn4Kkm8wDVXlqw1ugNNvF3dVa+SSq1R5dbkZLEfHGU5+DhDous7wGGpT4BRKa
 jliw==
X-Gm-Message-State: APjAAAU5exozvYpKDBy+p5MXFpMy8myjmO8qYjoNPtGxRQJ9YIwhZ0c8
 cHwg1yLhGDd4n4v7JVPtNxymBQ==
X-Google-Smtp-Source: APXvYqxUmVBdcCYS7XSP5o8fYGZrhfhKicMhDiOZnyWOiksf2+PAvxuADqC946BHGNEBKb39ApM0Fg==
X-Received: by 2002:a05:6000:12c9:: with SMTP id
 l9mr1904540wrx.304.1574779233142; 
 Tue, 26 Nov 2019 06:40:33 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id z26sm1479738wmk.33.2019.11.26.06.40.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Nov 2019 06:40:32 -0800 (PST)
Date: Tue, 26 Nov 2019 15:40:30 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20191126144030.GY29965@phenom.ffwll.local>
References: <20191122175623.13565-1-ville.syrjala@linux.intel.com>
 <20191122175623.13565-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191122175623.13565-2-ville.syrjala@linux.intel.com>
X-Operating-System: Linux phenom 5.3.0-2-amd64 
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent;
 bh=vDlRkpzIOrPRGh5pysj0vN3V4ARniTOU0E64e7Y7I4k=;
 b=We11rIf9pkSTfvXQfufaU9H4/tUZLZP0zPiq0QyBZx7rXYqB/Lbo00B9w3TyI38XDv
 IhhGUDrIyAjy3QwAIPo/ExlDP8YSHI0593gfyeq7rRfh69HiUpK3fujAH1PdUg1sySIg
 sCASiOk+mxUmzGq9FfOGPhaUbRwd8+9WobLFc=
Subject: Re: [Intel-gfx] [PATCH v2 1/4] drm/rect: Avoid division by zero
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
Cc: Benjamin Gaignard <benjamin.gaignard@st.com>,
 intel-gfx@lists.freedesktop.org, stable@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBOb3YgMjIsIDIwMTkgYXQgMDc6NTY6MjBQTSArMDIwMCwgVmlsbGUgU3lyamFsYSB3
cm90ZToKPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgo+IAo+IENoZWNrIGZvciB6ZXJvIHdpZHRoL2hlaWdodCBkZXN0aW5hdGlvbiByZWN0YW5n
bGUgaW4KPiBkcm1fcmVjdF9jbGlwX3NjYWxlZCgpIHRvIGF2b2lkIGEgZGl2aXNpb24gYnkgemVy
by4KPiAKPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwo+IEZpeGVzOiBmOTZiZGY1NjRmM2Ug
KCJkcm0vcmVjdDogSGFuZGxlIHJvdW5kaW5nIGVycm9ycyBpbiBkcm1fcmVjdF9jbGlwX3NjYWxl
ZCwgdjMuIikKPiBDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4
LmludGVsLmNvbT4KPiBDYzogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQHN0
LmNvbT4KPiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPgo+IFRlc3RjYXNlOiBp
Z3Qva21zX3NlbGZ0ZXN0L2RybV9yZWN0X2NsaXBfc2NhbGVkX2Rpdl9ieV96ZXJvCj4gU2lnbmVk
LW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4K
CkNsYW1waW5nIHNyYyB0byAwIGlmIGRzdCBpcyAwIG1ha2VzIHNlbnNlIHRvIG1lLgoKUmV2aWV3
ZWQtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+Cgo+IC0tLQo+ICBk
cml2ZXJzL2dwdS9kcm0vZHJtX3JlY3QuYyB8IDcgKysrKysrLQo+ICAxIGZpbGUgY2hhbmdlZCwg
NiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9kcm1fcmVjdC5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9yZWN0LmMKPiBpbmRleCBi
ODM2M2FhYTkwMzIuLjgxODczOGU4M2QwNiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
ZHJtX3JlY3QuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fcmVjdC5jCj4gQEAgLTU0LDcg
KzU0LDEyIEBAIEVYUE9SVF9TWU1CT0woZHJtX3JlY3RfaW50ZXJzZWN0KTsKPiAgCj4gIHN0YXRp
YyB1MzIgY2xpcF9zY2FsZWQodTMyIHNyYywgdTMyIGRzdCwgdTMyIGNsaXApCj4gIHsKPiAtCXU2
NCB0bXAgPSBtdWxfdTMyX3UzMihzcmMsIGRzdCAtIGNsaXApOwo+ICsJdTY0IHRtcDsKPiArCj4g
KwlpZiAoZHN0ID09IDApCj4gKwkJcmV0dXJuIDA7Cj4gKwo+ICsJdG1wID0gbXVsX3UzMl91MzIo
c3JjLCBkc3QgLSBjbGlwKTsKPiAgCj4gIAkvKgo+ICAJICogUm91bmQgdG93YXJkIDEuMCB3aGVu
IGNsaXBwaW5nIHNvIHRoYXQgd2UgZG9uJ3QgYWNjaWRlbnRhbGx5Cj4gLS0gCj4gMi4yMy4wCj4g
CgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24K
aHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
