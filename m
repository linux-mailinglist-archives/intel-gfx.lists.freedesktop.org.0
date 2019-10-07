Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AFDC3CEAC9
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 19:38:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45CA76E629;
	Mon,  7 Oct 2019 17:38:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A363B6E629
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Oct 2019 17:38:40 +0000 (UTC)
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-325-NBPmTKn-N0yhezzymjHnPQ-1; Mon, 07 Oct 2019 13:38:37 -0400
Received: by mail-qt1-f197.google.com with SMTP id d6so2048950qtn.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 07 Oct 2019 10:38:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=KcieA/2Xt6/7cG4p7yFwF153nHVTb/aDWMfjqMJALPY=;
 b=I28Jd08VZ0d2bNTBPll+NdQfqqC2Qa7ZWdi59dnwHgbNFseiy+HNFJrO5aQIlEGYdn
 aCor/k9QG7bftjiBGUxie8ocAJYRO0FLAYGzHYvQ/erbEmsLIhNNJaSznGfDpcoJYqnq
 On/62WbpFyhM4yBxBAEFU+NrpVGfzSqA2EuLWS5r0RBQqUW1kpnkQ+/ORZniMtPiF8bW
 vMvLUTftKGk+nZHo2v1QD99b9z09zYZ6NAJa6DJ04nC55/EF1XgFJFokJL7oHoC8pNR8
 VLvDVdj0Ur2MNO6jDqOq5D8zGb143IrX0j0sX/QfwdgI8+aXfHNSUy+UoH7Da7FuZgH0
 tLmQ==
X-Gm-Message-State: APjAAAXsyRxOBnfytiGV/TtvjFeucCTsvsRhK0NrgQvdfHhDQ06PSLJJ
 BSZhlSYTB2vQgaimkO240JHXzotqDWJ3Wua2/Kr0bEfNKcronPcdWX53QjXQ0RlbNTPgNgaRWZV
 ih5jDi0U4Wtc+3y5LuDeFC9oFoR89
X-Received: by 2002:a37:9d53:: with SMTP id g80mr24111489qke.67.1570469916977; 
 Mon, 07 Oct 2019 10:38:36 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzWZtSJJOqNn4spAi2Ge280yxxf1P6qRyg6ze5DowmWzG37A58TUJyjB720s9PTBdIeZfGUNg==
X-Received: by 2002:a37:9d53:: with SMTP id g80mr24111454qke.67.1570469916659; 
 Mon, 07 Oct 2019 10:38:36 -0700 (PDT)
Received: from desoxy (c-24-61-245-152.hsd1.ma.comcast.net. [24.61.245.152])
 by smtp.gmail.com with ESMTPSA id j2sm8281468qki.15.2019.10.07.10.38.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2019 10:38:36 -0700 (PDT)
Message-ID: <75105bb4d3c4ea37aaf53144be5d644f998f3626.camel@redhat.com>
From: Adam Jackson <ajax@redhat.com>
To: Jani Nikula <jani.nikula@intel.com>, 
 "20191004215851.31446-1-shawn.c.lee@intel.com"
 <20191004215851.31446-1-shawn.c.lee@intel.com>, 
 "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "dri-devel@lists.freedesktop.org"
 <dri-devel@lists.freedesktop.org>
Date: Mon, 07 Oct 2019 13:38:34 -0400
In-Reply-To: <877e5gj52f.fsf@intel.com>
References: <20191004215851.31446-1-shawn.c.lee@intel.com>
 <33dcaf669eae3acfc3b716e68b69c0fe76dd2dbc.camel@redhat.com>
 <87d0fce4mh.fsf@intel.com>
 <D42A2A322A1FCA4089E30E9A9BA36AC65D6A9C66@PGSMSX111.gar.corp.intel.com>
 <877e5gj52f.fsf@intel.com>
User-Agent: Evolution 3.34.0 (3.34.0-1.fc31)
MIME-Version: 1.0
X-MC-Unique: NBPmTKn-N0yhezzymjHnPQ-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1570469919;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=utDzNVc5Po9Srf0wYPq3tnhKS2BoqIcfwjc0diQPbJM=;
 b=i3IB/KVaGN5GXYTBn0iwVptK8OxCu4vQ67e99jjmHMp0s9ZBsPmrxg5bsAb8OBqSFRAflr
 4gqdUQEUB/VSKcSqf6OMp2+pGpDotGc44Q4wW0bfLseZa2pK1s77oxSzaU6Oagp/+MaL3A
 Ny2D2BQOqL0jBapDxy+y4omldrUTVQg=
Subject: Re: [Intel-gfx] [PATCH] drm/i915: customize DPCD brightness control
 for specific panel
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
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>,
 Gustavo Padovan <gustavo@padovan.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDE5LTEwLTA3IGF0IDEyOjA4ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToKCj4g
VGhlIHByb2JsZW0gd2l0aCB0aGUgRURJRCBxdWlya3MgaXMgdGhhdCBleHBvc2luZyB0aGUgcXVp
cmtzIHN0aWNrcyBvdXQKPiBsaWtlIGEgc29yZSB0aHVtYi4gVGh1cyBmYXIgYWxsIG9mIGl0IGhh
cyBiZWVuIGNvbnRhaW5lZCBpbiBkcm1fZWRpZC5jCj4gYW5kIHRoZXkgYWZmZWN0IGhvdyB0aGUg
RURJRCBnZXRzIHBhcnNlZCwgZm9yIGFsbCBkcml2ZXJzLiBPYnZpb3VzbHkKPiB0aGlzIGNvdWxk
IGJlIGNoYW5nZWQsIGJ1dCBpcyBpdCB0aGUgcmlnaHQgdGhpbmcgdG8gZG8/Cj4gCj4gV2hhdCBJ
IHN1Z2dlc3RlZCB3YXMsIGNoZWNrIHRoZSBPVUkgb25seSwgYW5kIGlmIGl0IG1hdGNoZXMsIGRv
Cj4gbW9yZS4gUGVyaGFwcyB0aGVyZSdzIHNvbWV0aGluZyBpbiB0aGUgMHgzMDAgcmFuZ2Ugb2Yg
RFBDRCBvZmZzZXRzIHRoYXQKPiB5b3UgY2FuIHJlYWQ/IE9yIHBlcmhhcHMgeW91IG5lZWQgdG8g
d3JpdGUgdGhlIHNvdXJjZSBPVUkgZmlyc3QsIGFuZAo+IHRoZW4gZG8gdGhhdC4KCk15IGlzc3Vl
IGlzbid0IHJlYWxseSB3aXRoIGlkZW50aWZ5aW5nIHRoZSBwYW5lbCBmcm9tIEVESUQgcmF0aGVy
IHRoYW4KRFBDRCwgd2hpY2hldmVyIGlkZW50aWZpZXIgaXMgbW9zdCBzcGVjaWZpYyBpcyBwcm9i
YWJseSB0aGUgYmVzdCB0aGluZwp0byB1c2UuIEl0J3MgbW9yZSB0aGF0IHRoaXMgcXVpcmsgaXMg
aWRlbnRpZmllZCBpbiBjb21tb24gY29kZSBidXQgb25seQphcHBsaWVkIGluIG9uZSBkcml2ZXIu
IElmIHRoaXMgcGFuZWwgd2VyZSBldmVyIHRvIGJlIGF0dGFjaGVkIHRvIHNvbWUKb3RoZXIgc291
cmNlLCB0aGV5IG1pZ2h0IHdlbGwgd2FudCB0byBhcHBseSB0aGUgc2FtZSBraW5kIG9mIGZpeC4g
TXkKKGFkbWl0dGVkbHkgbmHDr3ZlKSByZWFkaW5nIG9mIHRoZSBPVUkgaGFuZHNoYWtlIHByb2Nl
c3MgaXMgdGhhdCB3aGVuCnRoZSBzb3VyY2UgZGV2aWNlIHdyaXRlcyBhbiBPVUkgdG8gRFBfU09V
UkNFX09VSSBpdCBpcyB0ZWxsaW5nIHRoZSBzaW5rCiJJJ20gYWJvdXQgdG8gaXNzdWUgY29tbWFu
ZHMgdGhhdCBjb25mb3JtIHRvIF90aGlzXyB2ZW5kb3IncyBvd24KY29udmVudGlvbnMiLiBJZiB0
aGF0IGNvbnZlbnRpb24gY29tbXVuaWNhdGVzIGluZm9ybWF0aW9uIHRoYXQgaXMKZW50aXJlbHkg
Y29udGFpbmVkIHdpdGhpbiBBVVhDSCB0cmFuc2FjdGlvbnMgKGFuZCBkb2Vzbid0LCBmb3IgZXhh
bXBsZSwKcmVxdWlyZSBsb29raW5nIGF0IHNvbWUgb3RoZXIgc3RyYXBwaW5nIHBpbiBvciBleHRl
cm5hbCBkZXZpY2UpIHRoZW4gaW4KcHJpbmNpcGxlIGl0IGRvZXNuJ3QgbWF0dGVyIGlmIHRoZSBz
b3VyY2UgZGV2aWNlICJtYXRjaGVzIiB0aGF0IE9VSTsgaXQKd291bGQgYmUgbGVnYWwgZm9yIGFu
IEFNRCBHUFUgdG8gd3JpdGUgdGhlIHNhbWUgc2VxdWVuY2UgYW5kIGV4cGVjdCB0aGUKc2FtZSBy
ZWFjdGlvbiwgc2hvdWxkIHRoYXQgcGFuZWwgYmUgYXR0YWNoZWQgdG8gYW4gQU1EIEdQVS4KClNv
LCBpdCB3b3VsZCBiZSBuaWNlIHRvIGtub3cgZXhhY3RseSB3aGF0IHRoYXQgcHJvdG9jb2wgaXMg
bWVhbnQgdG8gZG8sCmlmIGl0IGFwcGxpZXMgb25seSB0byB0aGlzIHNwZWNpZmljIHBhbmVsIG9y
IGFueXRoaW5nIGVsc2Ugd2l0aCB0aGUKc2FtZSBUQ09OLCBob3cgb25lIHdvdWxkIGlkZW50aWZ5
IHN1Y2ggVENPTnMgaW4gdGhlIHdpbGQgb3RoZXIgdGhhbgpFRElELCBpZiBpdCByZWxpZXMgb24g
YW4gZXh0ZXJuYWwgUFdNIG9yIHNvbWV0aGluZywgZXRjLiBBbmQgaXQgbWlnaHQKbWFrZSBzZW5z
ZSBmb3Igbm93IHRvIG1ha2UgdGhpcyBhIChzaHVkZGVyKSBkcml2ZXItc3BlY2lmaWMgRURJRCBx
dWlyawpyYXRoZXIgdGhhbiBtYXRjaCBieSBEUENELCBhdCBsZWFzdCB1bnRpbCB3ZSBrbm93IGlm
IHRoZSBwYW5lbCBpcyBldmVyCnNlZW4gYXR0YWNoZWQgdG8gb3RoZXIgc291cmNlIGRldmljZXMg
YW5kIGlmIHRoZSBPVUkgY29udmVudGlvbiBpcwpzZWxmLWNvbnRhaW5lZC4KCi0gYWpheAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
