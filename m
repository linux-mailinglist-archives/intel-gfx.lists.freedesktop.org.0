Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 510471735D8
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 12:12:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80DBF6EF38;
	Fri, 28 Feb 2020 11:11:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91FC76F3F5
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 11:11:57 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id j16so2511751wrt.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 03:11:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=DHQ6TzRktfwCFm2G9nYdTK63QiLmDj/mtTDHdDVEhuo=;
 b=g4C7DdAEqM4BKXX20OOHqg1jMbkUdn4kj4rTEouy1QKgYT0nk2TjxlAZjK10Wmf728
 kfzYLmO7somr4O7GfJsilkrGWsonG5wEm/U0gqyvvtDEfV6lHIuhcvmNsIZCW/yxArf6
 Fg9YuGFPMUNEdyC0AFMt63kfuMwDM1xQ/TB3MSESmxMSeqcR7WpoovpDU9F4DxZJaksl
 Ya7rZG+SrhDJyst13zvU6YvtBX/NvQd57mGb68E+7j2KXsT8StwPYYYp6z4DL4ES0sBJ
 1j7n1cTo+KuazVLKgIPWLEF3B8CQIbshox+u9VkRYKsk6TaFD1lujddwJJO2WuZ3Uo5D
 0pfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=DHQ6TzRktfwCFm2G9nYdTK63QiLmDj/mtTDHdDVEhuo=;
 b=O5r9ZYrQQs+LBX3V4oDyu6hLzGy3jB2St3DMaOwiP+lxIlUczvkAsQWPkxlnfRZvBO
 A4p0N2w3iXLkMyU52DEHv5FgsOGzQ23c/pNOJS0FB/zoq4NEdlgJgm0XtGim13thDn3w
 VpgbgPjW3Em21lAXPZ4g4np7oeVIUhfUWHoFN9tlr5/mCUyJCTUdE3T77t0GkbcfgMce
 J0Mqk20Wnx8wytbmVHxpuHNZQ0BCgh+AlRVzJ56U7tHcArPwY2c5BaC9Tv53LQvVEAOJ
 a8e0Bqbb9+XsAqn2UQ8wfvOaGFOzKx7ReZgI30CYz0scDg8tBZLN23YkPUnvDiht1cF2
 Yg2w==
X-Gm-Message-State: APjAAAUlVjjPdaYMAr3wwEGuFLRRnc2Y5l5As3p6nB4jJQ77jDohB3qE
 pESPjsy7cSYhBh7VdK7zdzwqdpSJW7xsbWR0MIlrOQ==
X-Google-Smtp-Source: APXvYqwARf5DZs1zg6/ecp9sruGG1vb9RhyuI2hP5UvlreueEs7N7/Xx1koU3RPXd3D2P8QO3Kd44Sqsy05qaxAK14I=
X-Received: by 2002:adf:f586:: with SMTP id f6mr4346004wro.256.1582888315899; 
 Fri, 28 Feb 2020 03:11:55 -0800 (PST)
MIME-Version: 1.0
References: <CAKMK7uHHK2SsCfpmZwEUyTJJHsoccKoadoko3cEBOoYDFkmeAw@mail.gmail.com>
 <CAEdQ38Hr-L6rg80Gf18QNM7eK-QDK0BBU-9tChT6VxrP+T4qCw@mail.gmail.com>
 <CAPj87rOhwLPGHaHvPrZ6j8zufO8VqiwNFoBGFjx95yHr3cBm3Q@mail.gmail.com>
 <nycvar.YFH.7.76.2002281033590.15553@n3.vanv.qr>
In-Reply-To: <nycvar.YFH.7.76.2002281033590.15553@n3.vanv.qr>
From: Daniel Stone <daniel@fooishbar.org>
Date: Fri, 28 Feb 2020 11:11:15 +0000
Message-ID: <CAPj87rOwKMorAw_roNuBG63oRO-pMZZNHkYJ3Bo9OL6=o5xMrA@mail.gmail.com>
To: Jan Engelhardt <jengelh@inai.de>
Subject: Re: [Intel-gfx] gitlab.fd.o financial situation and impact on
 services
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 "X.Org development" <xorg-devel@lists.x.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 wayland <wayland-devel@lists.freedesktop.org>,
 "X.Org Foundation Board" <board@foundation.x.org>,
 Xorg Members List <members@x.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Mesa Dev <mesa-dev@lists.freedesktop.org>, Matt Turner <mattst88@gmail.com>,
 gstreamer-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgSmFuLAoKT24gRnJpLCAyOCBGZWIgMjAyMCBhdCAxMDowOSwgSmFuIEVuZ2VsaGFyZHQgPGpl
bmdlbGhAaW5haS5kZT4gd3JvdGU6Cj4gT24gRnJpZGF5IDIwMjAtMDItMjggMDg6NTksIERhbmll
bCBTdG9uZSB3cm90ZToKPiA+SSBiZWxpZXZlIHRoYXQgaW4gSmFudWFyeSwgd2UgaGFkICQyMDgy
IG9mIG5ldHdvcmsgY29zdCAoYWxtb3N0Cj4gPmVudGlyZWx5IGVncmVzczsgaW5ncmVzcyBpcyBi
YXNpY2FsbHkgZnJlZSkgYW5kICQxNzUwIG9mCj4gPmNsb3VkLXN0b3JhZ2UgY29zdCAoYWxtb3N0
IGFsbCBvZiB3aGljaCB3YXMgZG93bmxvYWQpLiBUaGF0J3MgYmFzZWQKPiA+b24gMTZUQiBvZiBj
bG91ZC1zdG9yYWdlIChDSSBhcnRpZmFjdHMsIGNvbnRhaW5lciBpbWFnZXMsIGZpbGUKPiA+dXBs
b2FkcywgR2l0IExGUykgZWdyZXNzIGFuZCAxNy45VEIgb2Ygb3RoZXIgZWdyZXNzICh0aGUgd2Vi
IHNlcnZpY2UKPiA+aXRzZWxmLCByZXBvIGFjdGl2aXR5KS4gUHJvamVjdGluZyB0aGF0IG91dCBb
w5cxMiBmb3IgYSB5ZWFyXSBnaXZlcwo+ID51cyByb3VnaGx5ICQ0NWsgb2YgbmV0d29yayBhY3Rp
dml0eSBhbG9uZSwKPgo+IEkgaGFkIGNvbWUgdG8gYSBzaW1pbGFyIGNvbmNsdXNpb24gYSBmZXcg
eWVhcnMgYmFjazogSXQgaXMgbm90IHZlcnkKPiBlY29ub21pYyB0byBydW4gZXBoZW1lcmVhbCBi
dWlsZHJvb3RzIChhbmQgYW55dGhpbmcgbGlrZSBpdCkgYmV0d2Vlbgo+IHR3byAob3IgbW9yZSkg
InNpZ25pZmljYW50IGxvY2F0aW9ucyIgb2Ygd2hpY2ggb25lIGVuZCBpcyBsb2NhdGVkIGluCj4g
YSBMYXJnZSBDbG91ZCBkYXRhY2VudGVyIGxpa2UgRUMyL0FXUy9ldGMuCj4KPiBBcyBmb3Igc3Vj
aCB1c2VjYXNlcywgbWUgYW5kIG15IHN1cnJvdW5kaW5nIHBlZXJzIGhhdmUgdXNlZCAob3RoZXIp
Cj4gb2ZmZXJpbmdzIHdoZXJlIHRoZXJlIGlzIDUwIFRCIGZyZWUgbmV0d29yay9tb250aCwgYW5k
IHllcyB0aGF0IG1heQo+IGhhdmUgZW50YWlsZWQgZG9pbmcgbW9yZSBhZG1pbm5pbmcgdGhhbiBl
bHNld2hlcmUgLSBidXQgYW4gYWRtaW4KPiBhcHByZWNpYXRlcyAkMjAwMCBhIGxvdCBtb3JlIHRo
YW4gYSBjb3Jwb3JhdGlvbiwgdG9vLgoKWWVzLCBhYnNvbHV0ZWx5LiBGb3IgY29udGV4dCwgb3Vy
IHN0b3JhZ2UgJiBuZXR3b3JrIGNvc3RzIGhhdmUKaW5jcmVhc2VkID4xMHggaW4gdGhlIHBhc3Qg
MTIgbW9udGhzICh+JDMyMCBKYW4gMjAxOSksID4zeCBpbiB0aGUgcGFzdAo2IG1vbnRocyAofiQx
MzUwIEp1bHkgMjAxOSksIGFuZCB+MnggaW4gdGhlIHBhc3QgMyBtb250aHMgKH4kMjAwMCBPY3QK
MjAxOSkuCgpJIGRvIG5vdyAocGVyc29uYWxseSkgdGhpbmsgdGhhdCBpdCdzIGNyb3NzZWQgdGhl
IHBvaW50IGF0IHdoaWNoIGl0CndvdWxkIGJlIHdvcnRod2hpbGUgcGF5aW5nIGFuIGFkbWluIHRv
IHNvbHZlIHRoZSBwcm9ibGVtcyB0aGF0IGNsb3VkCnNlcnZpY2VzIGN1cnJlbnRseSBzb2x2ZSBm
b3IgdXMgLSB3aGljaCB3YXNuJ3QgdHJ1ZSBiZWZvcmUuIFN1Y2ggYW4KYWRtaW4gY291bGQgYWxz
byBkZWFsIHdpdGggdGhpbmdzIGxpa2Ugb3VyIFNNVFAgZGVsaXZlcnkgZmFpbHVyZSByYXRlLAp3
aGljaCBpbiB0aGUgcGFzdCB5ZWFyIGhhcyBzcGlrZWQgb3ZlciA1MCUgKHNlZSBwcmV2aW91cyBl
bWFpbCksCmRlbWFuZCBmb3IgbmV3IHNlcnZpY2VzIHN1Y2ggYXMgRGlzY291cnNlIHdoaWNoIHdp
bGwgZW5hYmxlIHVzZXIKc3VwcG9ydCB3aXRob3V0IGVpdGhlciBhKSB1c2VycyBoYXZpbmcgdG8g
c3Vic2NyaWJlIHRvIGEgbWFpbGluZyBsaXN0LApvciBiKSBidWcgdHJhY2tlcnMgYmVpbmcgY2x1
dHRlcmVkIHVwIHdpdGggdXNlciByZXF1ZXN0cyBhbmQgb3RoZXIKbm9uLWJ1Z3MsIGV0Yy4KCkNo
ZWVycywKRGFuaWVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
