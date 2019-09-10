Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56293AEA59
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 14:29:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E47F6E084;
	Tue, 10 Sep 2019 12:29:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x943.google.com (mail-ua1-x943.google.com
 [IPv6:2607:f8b0:4864:20::943])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7AF889BD5
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 12:29:38 +0000 (UTC)
Received: by mail-ua1-x943.google.com with SMTP id f9so5482648uaj.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 05:29:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sr+3zWD9BvUPbexQJw+gSGaOBvrUSerCBfW48jkiPX4=;
 b=M2BaYcQKf8mQHrcYPgg9E1f30CM70NtVxg6fogtseaamwBlhJQea4zdvZNWUoRolXD
 /vJdoi35xT18tJSXsjMy8/ARi+b76vZuSRxW1DreTM7VEOUtj+vGiU3OQcHIfi4Iwmp2
 WYig8O4YAwQ5DKQ8O7IWKeuMBir4z23HO85AB+aoBMrL1uFQmVhZaVtmoVsyzPOn6iG8
 wttJxYcmuvgr/5Er110MsLsKTVogrz7XPqIzkWrfsmjUzMNctR3Rz6MjU9eUTvrDvuZz
 HMsBhDDGUWWhkzjNRnFfH6qIH7Y1oYTmDMgtCSOv2KztHzLfZXVoOEWYm63U01Mk6Stc
 F1gA==
X-Gm-Message-State: APjAAAVYRnH2rmYzk6g2DO7aSCy3qR02VFLdNOih9uOFnBAGrtKtBQ/p
 PV3OMj4v3gbn8gFnoDqHb9KNU9YyXEskpf/4nWMw1g==
X-Google-Smtp-Source: APXvYqxkmVWyUO+kfSY3CXSEVloXCCY0sd4/VdWa2hPoeIr4tvIwSVPcO0dyBhoRscHdRi6K+LceiQIKaGjijS+mn+E=
X-Received: by 2002:ab0:2658:: with SMTP id q24mr13143029uao.141.1568118577787; 
 Tue, 10 Sep 2019 05:29:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190910121009.13431-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190910121009.13431-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 10 Sep 2019 13:29:11 +0100
Message-ID: <CAM0jSHPKhTbj-ohG+L2VrekYS111fWqZEcOdyT5vV+YQJT3msQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=sr+3zWD9BvUPbexQJw+gSGaOBvrUSerCBfW48jkiPX4=;
 b=uDsDnAi0TVxdPYfv0TXfIXA6nXt7wNjCL5fWjvdv3wrS6N1x8GOp5e8nqv/0/89inX
 rxVjvLZ1PdHXN407whtjhNe6JIMSiQ5Uv6KxL+ZnLTyVm+VwvjBxrwybjDHUBnMwgHFy
 7h4hMjukAptjaRE+1uLbhB/xPa8Iv+/9uj9LEbDkfLl/SwTx3qJPYoRdsh3TTylGDxHR
 ZS/af41zsn0nyE6WfzUdZxB+IVdIDZ2etSvSBhNVZ0f1lKGGdk00UC9ntA3vp2v2dI9A
 SvbhwxponJTmFlj1sIDFCZ451TjNC5tbP1VlKquGb2bKhd7Z0iWi3OcsyfO2OZu1udEe
 ZjQQ==
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Tighten the timeout
 testing for partial mmaps
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

T24gVHVlLCAxMCBTZXAgMjAxOSBhdCAxMzoxMCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gQ3VycmVudGx5LCBpZiB0aGVyZSBpcyB0aW1lIHJlbWFp
bmluZyBiZWZvcmUgdGhlIHN0YXJ0IG9mIHRoZSBsb29wLCB3ZQo+IGRvIG9uZSBmdWxsIGl0ZXJh
dGlvbiBvdmVyIG1hbnkgcG9zc2libGUgZGlmZmVyZW50IGNodW5rcyB3aXRoaW4gdGhlCj4gb2Jq
ZWN0LiBBIGZ1bGwgbG9vcCBtYXkgdGFrZSA1MCtzIChkZXBlbmRpbmcgb24gc3BlZWQgb2YgaW5k
aXJlY3QgR1RUCj4gbW1hcGluZ3MpIGFuZCB3ZSB0cnkgc2VwYXJhdGVseSB3aXRoIExJTkVBUiwg
WCBhbmQgWSAtLSBhdCB3aGljaCBwb2ludAo+IGlndCB0aW1lcyBvdXQuIElmIHdlIGNoZWNrIG1v
cmUgZnJlcXVlbnRseSwgd2Ugd2lsbCBpbnRlcnJ1cHQgdGhlIGxvb3AKPiB1cG9uIG91ciB0aW1l
b3V0IC0tIGl0IGlzIGhhcmQgdG8gYXJndWUgZm9yIGFzIHRoaXMgc2lnbmlmaWNhbnRseSByZWR1
Y2VzCj4gdGhlIHRlc3QgY292ZXJhZ2UgYXMgd2UgZHJhbWF0aWNhbGx5IHJlZHVjZSB0aGUgcnVu
dGltZS4gSW4gcHJhY3RpY2FsCj4gdGVybXMsIHRoZSBjb3ZlcmFnZSB3ZSBzaG91bGQgcHJpb3Jp
dGlzZSBpcyBpbiB1c2luZyBkaWZmZXJlbnQgZmVuY2UKPiBzZXR1cHMsIGZvcmNpbmcgdmVyaWZp
Y2F0aW9uIG9mIHRoZSB0aWxlIHJvdyBjb21wdXRhdGlvbnMgb3ZlciB0aGUKPiBjdXJyZW50IHBy
ZWZlcmVuY2Ugb2YgY2hlY2tpbmcgZXh0cmFjdGluZyBjaHVua3MuIFRob3VnaCB0aGUgZXhoYXVz
dGl2ZQo+IHNlYXJjaCBpcyBncmVhdCBnaXZlbiBhbiBpbmZpbml0ZSB0aW1lb3V0LCB0byBpbXBy
b3ZlIG91ciBjdXJyZW50Cj4gY292ZXJhZ2UsIHdlIGFsc28gYWRkIGEgcmFuZG9taXNlZCBzbW9r
ZXRlc3Qgb2YgcGFydGlhbCBtbWFwcy4gU28gbGV0J3MKPiBkbyBib3RoLCBhZGQgYSByYW5kb21p
c2VkIHNtb2tldGVzdCBvZiBwYXJ0aWFsIHRpbGluZyBjaHVua3MgYW5kIHRoZQo+IGV4aGF1c3Rp
dmUgKHRob3VnaCB0aW1lIGxpbWl0ZWQpIHNlYXJjaCBmb3IgZmFpbHVyZXMuCj4KPiBFdmVuIGlu
IGFkZGluZyBhbm90aGVyIHN1YnRlc3QsIHdlIHNob3VsZCBzaGF2ZSAxMDBzIG9mZiBCQVQhIChX
aXRoLAo+IGhvcGVmdWxseSwgbm8gbG9zcyBpbiBjb3ZlcmFnZSwgYXQgbGVhc3Qgb3ZlciBtdWx0
aXBsZSBydW5zLikKPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgo+IENjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+
ClJldmlld2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
