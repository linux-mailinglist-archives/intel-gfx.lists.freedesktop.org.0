Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AB0083663
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 18:11:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B19EE6E45C;
	Tue,  6 Aug 2019 16:11:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BB576E45C
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2019 16:11:37 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id m10so82787583edv.6
 for <intel-gfx@lists.freedesktop.org>; Tue, 06 Aug 2019 09:11:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=FJLpU7390BPYN8TwaYQY8BW5/nenEZxDcSym82GTVcA=;
 b=nYaDp/+p3pNFoPIwIwlID6ErbjPg05TP28bxZqutEOS9h7gYR3xoxwTo4lTLp9cS9Z
 eRnTiEml5Yuv7yTcWwq+5e1st1wGDxakw//uP0RiimCXuO9tpOgfmkolJnPt6kY560xA
 HC2zffgMqQMkPXnnHZABIC4Kpxpb3N2/68C5zydXHSPsXDf28UBwzrrkvSA1Uk5RNPhi
 ik+/B0nccK+1DZ/yNfvt/TGgGxjyQxpcv7y/MUJtH6CixEzFSIWa5h45NZtM00yrAF9Y
 xFao0pf4TYcV0/+DnkQlnhGflczfjIFxZnSSLOhIzTlIWubpJkzcGf2Qm0yehg4NLoNK
 dJLg==
X-Gm-Message-State: APjAAAXiRWBQBO0YlBojt0ci243Z7zLN9MXgr19myMNZdHH8C5el/Y8l
 bx17q/ozSJxf9YcNMPpTJSE5rA==
X-Google-Smtp-Source: APXvYqxJ9p03x4a0tov5TaaD4Zzxzaz1jyUDGWHtbF3zqVUAgUpXo5s2KEWm9mWzZ472l6+q9ySbrQ==
X-Received: by 2002:a17:907:110b:: with SMTP id
 qu11mr4104507ejb.18.1565107895725; 
 Tue, 06 Aug 2019 09:11:35 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id bq1sm14802144ejb.45.2019.08.06.09.11.34
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 09:11:35 -0700 (PDT)
Date: Tue, 6 Aug 2019 18:11:32 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Message-ID: <20190806161132.GC7444@phenom.ffwll.local>
References: <20190803104719.gwb6hmreeaqyye6n@flea>
 <CAPM=9tygocpAnOzJHy3TW2UQc0_6A86e7CpQT1CCMEhWfjzheg@mail.gmail.com>
 <20190806160146.sj7l5wrrjtt5nhbz@flea>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190806160146.sj7l5wrrjtt5nhbz@flea>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=FJLpU7390BPYN8TwaYQY8BW5/nenEZxDcSym82GTVcA=;
 b=FEzVKFIkbtvXz882WzjlvN9M7PDddEYreJQoVnejRgWjPc9go+gVNYg3NYWSY0JMq9
 Yo8cneBTslZxj4wzYGN4jgmStKCrTROAhHQzkE/UqcZu9xQMXzkQANegNDFCORsfn/Sn
 emyC90rPJOg1rlJlMZvbLbnaqXajNqsO5BhDE=
Subject: Re: [Intel-gfx] [PULL] drm-misc-next
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
Cc: "DRM maintainer tools announcements, discussion,
 and development" <dim-tools@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBBdWcgMDYsIDIwMTkgYXQgMDY6MDE6NDZQTSArMDIwMCwgTWF4aW1lIFJpcGFyZCB3
cm90ZToKPiBPbiBUdWUsIEF1ZyAwNiwgMjAxOSBhdCAxMDozMzo1M0FNICsxMDAwLCBEYXZlIEFp
cmxpZSB3cm90ZToKPiA+IE9uIFNhdCwgMyBBdWcgMjAxOSBhdCAyMDo0NywgTWF4aW1lIFJpcGFy
ZCA8bWF4aW1lLnJpcGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4gPiA+Cj4gPiA+IEhpIERhbmll
bCwgRGF2ZSwKPiA+ID4KPiA+ID4gSGVyZSBpcyB0aGUgZmlyc3QgKGFuZCBwcmV0dHkgbGF0ZSkg
ZHJtLW1pc2MtbmV4dCBQUi4KPiA+ID4KPiA+ID4gSXQncyBwcmV0dHkgYmlnIGR1ZSB0byB0aGUg
bGF0ZW5lc3MsIGJ1dCB0aGVyZSdzIG5vdGhpbmcgcmVhbGx5IG1ham9yCj4gPiA+IHNob3dpbmcg
dXAuIEl0J3MgcHJldHR5IG11Y2ggdGhlIHVzdWFsIGJ1bmNoIG9mIHJld29ya3MsIGZpeGVzLCBh
bmQKPiA+ID4gbmV3IGhlbHBlcnMgYmVpbmcgaW50cm9kdWNlZC4KPiA+Cj4gPiBkaW06IDQxNWQy
ZTllMDc1NyAoIlJldmVydCAiZHJtL2dlbTogUmVuYW1lIGRybV9nZW1fZHVtYl9tYXBfb2Zmc2V0
KCkKPiA+IHRvIGRybV9nZW1fbWFwX29mZnNldCgpIiIpOiBtYW5kYXRvcnkgcmV2aWV3IG1pc3Np
bmcuCj4gPiBkaW06IGJlODU1MzgyYmFjYiAoIlJldmVydCAiZHJtL3BhbmZyb3N0OiBVc2UgZHJt
X2dlbV9tYXBfb2Zmc2V0KCkiIik6Cj4gPiBtYW5kYXRvcnkgcmV2aWV3IG1pc3NpbmcuCj4gPiBk
aW06IGU0ZWVlOTNkMjU3NyAoImRybS92Z2VtOiBkcm9wIERSTV9BVVRIIHVzYWdlIGZyb20gdGhl
IGRyaXZlciIpOgo+ID4gbWFuZGF0b3J5IHJldmlldyBtaXNzaW5nLgo+ID4gZGltOiA4ODIwOWQy
YzUwMzUgKCJkcm0vbXNtOiBkcm9wIERSTV9BVVRIIHVzYWdlIGZyb20gdGhlIGRyaXZlciIpOgo+
ID4gbWFuZGF0b3J5IHJldmlldyBtaXNzaW5nLgo+ID4gZGltOiBjY2RhZTQyNTc1NjkgKCJkcm0v
bm91dmVhdTogcmVtb3ZlIG9wZW4tY29kZWQgZHJtX2ludmFsaWRfb3AoKSIpOgo+ID4gbWFuZGF0
b3J5IHJldmlldyBtaXNzaW5nLgo+ID4KPiA+IFByZXR0eSBzdXJlIHJldmlldyBpbiBkcm0tbWlz
Yy1uZXh0IGlzIGEgcnVsZS4gSSBkb24ndCBldmVuIHNlZSBhY2tzCj4gPiBvbiBtb3N0IG9mIHRo
ZXNlLgo+IAo+IFVnaCwgc29ycnkgZm9yIHRoYXQuIEkgZ3Vlc3MgSSdtIHN0aWxsIHByZXR0eSBu
ZXcgdG8gdGhlCj4gbWFpbnRhaW5lci1zaWRlIG9mIGRpbSwgd2hpY2ggY29tbWFuZHMgZGlkIHlv
dSB1c2UgdG8gY2hlY2sgdGhhdD8KCmRpbSBhcHBseS1wdWxsIGRvZXMgdGhpcy4gSWYgYWxsIGNv
bW1pdHRlcnMgdXNlIHRoZSB0b29saW5nIGFzIHRoZXkgc2hvdWxkCnRoZXkgc2hvdWxkbid0IGJl
IGFibGUgdG8gcHVzaCBwYXRjaGVzIHdoaWNoIHZpb2xhdGUgYW55dGhpbmcgaGVyZSwgdGhhdCdz
CndoeSBkaW0gcmVxdWVzdC1wdWxsIGRvZXNuJ3QgcmVqZWN0LiBXZSdyZSBub3cgd29ya2luZyBv
biBwYXRjaGVzIHRvIG1ha2UKc3VyZSB5b3UgcmVhbGx5IGhhdmUgdG8gdXNlIGRpbSBmb3IgbWFu
YWdpbmcgZHJtLW1pc2MgYW5kIGFwcGx5aW5nCnBhdGNoZXMuCi1EYW5pZWwKLS0gCkRhbmllbCBW
ZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZm
d2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
