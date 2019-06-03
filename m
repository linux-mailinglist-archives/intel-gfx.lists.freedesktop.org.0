Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C9B83331E
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2019 17:08:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC561891CD;
	Mon,  3 Jun 2019 15:08:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0AA4891CD
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2019 15:08:40 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id p26so27438861edr.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 Jun 2019 08:08:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=DlTuaWUGZx8fD1BlnWpmbbrfW8N0Ydh59ENF1l7KERw=;
 b=NTQkTO2oUIEFidZKFoPQTjqwZLJ07zS5gN0DyKMvK/4QYiAq8EvDau/0Mv6jRzNNvs
 vthfpAlLonzDmCQ0k+jiUW603zpQ3j9NMYtRkOQL4xhll6fYJ3EbSVodm843U2fBCYAm
 km7XGjo6q0Uj0oiYZeKKd5PfPz/CXmMFQP6UuDAthh0O8YMeXuvAAU6Qn19UDKLL+BI+
 tSaG/4Em9fVzJzYpDTWQdiTPhHBVMDbm4CzTsVi6jaTJfbIz4cw2M/YOl3DinuQoyAVi
 PaU3jjPcdlEL7GfjcaAOAwiB6JiW+Es0O0SjPe212TdXUF1zhVyAv/eHss22Sv4s64y8
 SbLA==
X-Gm-Message-State: APjAAAUjsg+YTNZAZP3H9s2EhS0bQT/JuZtlk9WICCWsk6ecn1m/mKRv
 vXnU4znUccvZNdOJzFTUOj1pZQ==
X-Google-Smtp-Source: APXvYqwtMN6faO2RJR/LRm9O4sTLsVE8uWayQmihvtYp+J2QJNiQNHrFso0g2cNzb+qKCYPrE8tRSA==
X-Received: by 2002:a50:b343:: with SMTP id r3mr29966331edd.53.1559574519585; 
 Mon, 03 Jun 2019 08:08:39 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id y42sm1991995ede.86.2019.06.03.08.08.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 03 Jun 2019 08:08:37 -0700 (PDT)
Date: Mon, 3 Jun 2019 17:08:35 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Michel =?iso-8859-1?Q?D=E4nzer?= <michel@daenzer.net>
Message-ID: <20190603150834.GL21222@phenom.ffwll.local>
References: <CAKMK7uGMJMZiOP4rhhiu=Obu6sO0oav5se-vy8bNLu8dfoZmvA@mail.gmail.com>
 <20190515103731.16855195@eldfell.localdomain>
 <20190515082449.GA17751@phenom.ffwll.local>
 <20190516112211.1cd5a8c6@eldfell.localdomain>
 <20190516122455.GA3851@phenom.ffwll.local>
 <20190517130824.17372663@eldfell.localdomain>
 <20190520161107.GA21222@phenom.ffwll.local>
 <20190521095505.7ef1cbdf@eldfell.localdomain>
 <CAKMK7uGoVhAOkZN7G1fuzdUjihjxqRhVuVvE3K5HFZwGjyC6Hg@mail.gmail.com>
 <9953e1fa-dafa-21c1-9604-50ed1e9fecaf@daenzer.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9953e1fa-dafa-21c1-9604-50ed1e9fecaf@daenzer.net>
X-Operating-System: Linux phenom 4.14.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent;
 bh=DlTuaWUGZx8fD1BlnWpmbbrfW8N0Ydh59ENF1l7KERw=;
 b=E+bzATqI1fHTgdUGgKJecOtjYWC4jXDpBQz/BkgGtLBt62sfoZlKzeXlv0XPsAmWip
 E/1kUrrwBoxbbxU8wO3PmBcv5EOjhOAo70BygfOXDGz+21Eve+okUvAKeYTGxXKceJ18
 0FJd5jTygpveYlkaz6L1CaaYWCkpVicOmuqMY=
Subject: Re: [Intel-gfx] [PATCH v7 09/11] drm: uevent for connector status
 change
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
Cc: "paul.kocialkowski@bootlin.com" <paul.kocialkowski@bootlin.com>,
 "thomas.petazzoni@bootlin.com" <thomas.petazzoni@bootlin.com>,
 "maxime.ripard@bootlin.com" <maxime.ripard@bootlin.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "Ser,
 Simon" <simon.ser@intel.com>, "airlied@linux.ie" <airlied@linux.ie>,
 Pekka Paalanen <ppaalanen@gmail.com>, "Vetter,
 Daniel" <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBKdW4gMDMsIDIwMTkgYXQgMTE6NTA6NTNBTSArMDIwMCwgTWljaGVsIETDpG56ZXIg
d3JvdGU6Cj4gT24gMjAxOS0wNS0yMSA5OjUyIGEubS4sIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4g
PiBPbiBUdWUsIE1heSAyMSwgMjAxOSBhdCA4OjU1IEFNIFBla2thIFBhYWxhbmVuIDxwcGFhbGFu
ZW5AZ21haWwuY29tPiB3cm90ZToKPiA+PiBPbiBNb24sIDIwIE1heSAyMDE5IDE4OjExOjA3ICsw
MjAwCj4gPj4gRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPiB3cm90ZToKPiA+Pgo+ID4+
PiBUaGVyZSdzIGFsc28gYSBmYWlybHkgZWFzeSBmaXggZm9yIHRoYXQgLW1vZGVzZXR0aW5nIGlz
c3VlOiBXZSBkb24ndAo+ID4+PiBleHBvc2UgYXRvbWljIGlmIHRoZSBjb21wb3NpdG9yIGhhcyBh
IHByb2Nlc3MgbmFtZSBvZiAiWHNlcnZlciIuIEJydXRhbCwKPiA+Pj4gYnV0IGdldHMgdGhlIGpv
YiBkb25lLiBPbmNlIFggaXMgZml4ZWQsIHdlIGNhbiBnaXZlIGEgbmV3ICJJJ20gbm90IHRvdGFs
bHkKPiA+Pj4gYnJva2VuIGFueW1vcmUiIGludGVyZmFjZSB0byBnZXQgYmFjayBhdCBhdG9taWMu
Cj4gPj4KPiA+PiBZb3UgbWVhbiAiWG9yZyIuIE9yIG1heWJlICJYIi4gT3IgbWF5YmUgdGhlIHNl
dHVpZCBoZWxwZXI/IFdhaXQsIGRvIHlvdQo+ID4+IGNoZWNrIGFnYWluc3QgdGhlIHByb2Nlc3Mg
aXNzdWluZyBpb2N0bCBieSBpb2N0bCwgb3IgdGhlIHByb2Nlc3MgdGhhdAo+ID4+IG9wZW5lZCB0
aGUgZGV2aWNlPyBXaGljaCB3b3VsZCBiZSBsb2dpbmQ/IFdoYXQgYWJvdXQgRFJNIGxlYXNpbmc/
IC4uLgo+ID4gCj4gPiBJbiB0aGUgR2V0L1NldENhcHMgaW9jdGwgd2UgY2FuIGRvIHRoZSBjaGVj
aywgd2hpY2ggaXMgY2FsbGVkIGZyb20gWCwKPiA+IG5vdCBsb2dpbmQuIFdlIGp1c3QgbmVlZCBz
b21lIHdheSB0byB0ZWxsIC1tb2Rlc2V0dGluZyBhcGFydCBmcm9tCj4gPiBldmVyeXRoaW5nIGVs
c2UsIGFuZCBsdWNraWx5IHRoZXJlJ3Mgbm90IGFueSBvdGhlciBhdG9taWMgWCBkcml2ZXJzLgo+
IAo+IE5vdCB5ZXQuLi4KPiAKPiBBcyBmb3IgYSAiSSdtIG5vdCB0b3RhbGx5IGJyb2tlbiBhbnlt
b3JlIiBpbnRlcmZhY2UsIHdlIGRpZCBzb21ldGhpbmcKPiBsaWtlIHRoYXQgKHRob3VnaCBraW5k
IG9mIGluIHRoZSBvdGhlciBkaXJlY3Rpb24pIHdpdGgKPiBSQURFT05fSU5GT19BQ0NFTF9XT1JL
SU5HLCBidXQgbGF0ZXIgUkFERU9OX0lORk9fQUNDRUxfV09SS0lORzIgaGFkIHRvCj4gYmUgYWRk
ZWQsIGJlY2F1c2UgdGhlIGZvcm1lciBjbGFpbWVkIGFjY2VsZXJhdGlvbiB3YXMgIndvcmtpbmci
IGluIGNhc2VzCj4gd2hlcmUgaXQgcmVhbGx5IHdhc24ndC4uLiBUaGF0IGtpbmQgb2YgdGhpbmcg
Y291bGQgYmVjb21lIHVnbHkgaW4gdGhlCj4gbG9uZyBydW4gaWYgb3RoZXIgWG9yZyBkcml2ZXIg
c3RhcnQgdXNpbmcgYXRvbWljLCBhbmQgdGhleSdsbCBpbmV2aXRhYmx5Cj4gYmUgYnJva2VuIGlu
IGRpZmZlcmVudCB3YXlzLgoKSXQncyBkZWZpbml0ZWx5IGEgdmVyeSBzdWJvcHRpbWFsIHNpdHVh
dGlvbi4gTm90IHN1cmUgdGhlcmUncyBhIGdvb2Qgd2F5Cm91dC4gVGhlIHRyb3VibGUgaGVyZSBp
cyB0aGF0IGk5MTUgZW5kZWQgdXAgY29uZmlndXJpbmcgY3J0Yy9jb25uZWN0b3JzCmRpZmZlcmVu
dGx5IHRoYW4gLW1vZGVzZXR0aW5nICh0byBhbGxvdyBmYXN0Ym9vdCwgd2hpY2ggSSB0aGluayBp
cyBzdGlsbAppOTE1IGV4Y2x1c2l2ZSkuIFRoaXMgdGhlbiBoaWdobGlnaHRlZCB0aGF0IG1vZGVz
ZXR0aW5nIGNhbid0IGRvIGF0b21pYwptb2Rlc2V0cyBpZiB5b3UgdHJ5IHRvIHJlYXNzaWduIGNv
bm5lY3RvcnMuCgpPbmUgaWRlYSBJIGhhdmUgaXMgdGhhdCB2Z21zIHdvdWxkIGhlbHAgY29tcG9z
aXRvcnMgdG8gcGxheSBvdXQgYSBidW5jaCBvZgpzdGFuZGFyZCBzY2VuYXJpb3MsIGV2ZW4gYXV0
b21hdGVkLiBCdXQgdGhhdCdzIG5vdCB0aGVyZSB5ZXQsIGFuZCBldmVyeQpjb21wb3NpdG9yIHBy
b2plY3QgbmVlZHMgdG8gY2FyZSBiZXlvbmQgImJvb3RzIG9uIG15IGxhcHRvcCwgc2hpcCBpdCIu
IE5vCmlkZWEgdGhhdCdzIGV2ZW4gcG9zc2libGUuCi1EYW5pZWwKLS0gCkRhbmllbCBWZXR0ZXIK
U29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNo
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
