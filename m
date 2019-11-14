Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 083FBFC14B
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2019 09:13:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0530A6E37C;
	Thu, 14 Nov 2019 08:13:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com
 [IPv6:2607:f8b0:4864:20::244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 444CA6E347
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Nov 2019 08:13:24 +0000 (UTC)
Received: by mail-oi1-x244.google.com with SMTP id n16so4511691oig.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Nov 2019 00:13:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=usVDWHmv5DZNuthEvhDRqqQKzdMyMIvl9UxvVAa6s+c=;
 b=mRqeke8usbQLJkqN+58pBOIaMPf1p6khAW3C8QK45bcjBOsfTHtQXUKPSM6b6FpZQ9
 MOWWMAg0rlAWY+q2v3QsO9bEfiTrEJTHncEQI1HmlWUINo28md/fXAhg7vFkirdo4Pco
 b06tT3HYlWwG0mZTiSMnJEezmTduFO6etIl7LPfXZdUo6sAcfC+bLJtF5kB9lqSQnp+e
 jeJ5tmhV+uJeTm7C0ByxNCZnTZrvoSDQsAR0Sw7vol1fCIUM1aZgJORqmJkJc3OutFxY
 M4e7n8q0oFTdVdibyGfA3Fb3WSJw2Vd7qwS89ZLVv22iAQrubFYGdt7PHAuM1riPAyzs
 3z+A==
X-Gm-Message-State: APjAAAVl323VCjxKwESrkM4JnMGdSCmxWzzQpnxk3/6E26asdT2gt5mU
 7VSJtaPRpLGSCRXqOLteBpk20XyAzcbhCWQAUq/1iA==
X-Google-Smtp-Source: APXvYqwqQCQaA3F6ZKKUKpEx9Eoo5sCURhlwvYB8pTkEdyjKJ6eqP4fUfUiX75oO6pBis7dQUh1wZMgkTrevONrO9Mc=
X-Received: by 2002:aca:ead7:: with SMTP id i206mr2548604oih.128.1573719203449; 
 Thu, 14 Nov 2019 00:13:23 -0800 (PST)
MIME-Version: 1.0
References: <CAPM=9txqtne1+ycij3YYmxWA1jAOB=VoWCZbjnLb71hwxB7_Cw@mail.gmail.com>
In-Reply-To: <CAPM=9txqtne1+ycij3YYmxWA1jAOB=VoWCZbjnLb71hwxB7_Cw@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 14 Nov 2019 09:13:11 +0100
Message-ID: <CAKMK7uFtbRifpYanq3qOAOfzFFKWEe0zvJUg8A241TJ6rqoE+A@mail.gmail.com>
To: Dave Airlie <airlied@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=usVDWHmv5DZNuthEvhDRqqQKzdMyMIvl9UxvVAa6s+c=;
 b=BbCt6M/v9oopnar8pEN7RlVzFklqP69U8AbkzOIN+5GrjamrCRP1+qvY7wqrofMBb3
 Mk2jKbnksSOdVFooQtP7eItdaHnE/bRK0JHOZP+oM0OAu/cF0u052ois71XgMSpH4wkE
 nK66VYcZHhsQhluupF5/ivusOJogeOV3wM+G8=
Subject: Re: [Intel-gfx] drm-next + i915 CVE yolo merge
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBOb3YgMTQsIDIwMTkgYXQgMjozMyBBTSBEYXZlIEFpcmxpZSA8YWlybGllZEBnbWFp
bC5jb20+IHdyb3RlOgo+IFRoZSBsYW5kaW5nIG9mIHRoZSBpOTE1IENWRSBmaXhlcyBpbnRvIExp
bnVzIHRyZWUgaGFzIGNyZWF0ZWQgYSBiaXQgb2YKPiBhIG1lc3MgaW4gbGludXgtbmV4dCBhbmQg
ZG93bnN0cmVhbSBpbiBkcm0tbmV4dCB0cmVlcy4KPgo+IEkgdGFsa2VkIHRvIERhbmllbCBhbmQg
aGUgaGFkIHRhbGtlZCB0byBKb29uYXMgYSBiaXQsIGFuZCBJIGRlY2lkZWQgdG8KPiBnbyB3aXRo
IHdoYXQgRGFuaWVsIGRlc2NyaWJlcyBhcyB0aGUgWU9MTyBtZXJnZSwgd2hlcmUgSSBqdXN0IHNv
bHZlIGl0Cj4gYW5kIHByYXksIGFuZCBldmVyeW9uZSBlbHNlIHZlcmlmaWVzL2ZpeGVzIGl0Lgo+
Cj4gSW4gbXkgZmF2b3VyIEkndmUgYmVlbiByZWFkaW5nIHRoZXNlIHBhdGNoZXMgZm9yIGEgY291
cGxlIG9mIG1vbnRocwo+IG5vdyBhbmQgYXBwbGllZCB0aGVtIHRvIGEgbG90IG9mIHBsYWNlcywg
c28gSSdtIHF1aXRlIGZhbWlsaWFyIHdpdGgKPiB3aGF0IHRoZXkgYXJlIGRvaW5nLgo+Cj4gVGhl
IHdvcnN0IGN1bHByaXQgd2FzIHRoZSBSQzYgY3R4IGNvcnJ1cHRpb24gZml4IHNpbmNlIHRoZSB3
aG9sZSBvZgo+IHJjNiBnb3QgcmVmYWN0b3JlZCBpbiBuZXh0LiBIb3dldmVyIEkgYWxzbyBoYWQg
YWNjZXNzIHRvIGEgdmVyc2lvbiBvZgo+IHRoaXMgcGF0Y2ggSm9uIHdyb3RlIG9uIGRybS10aXAg
YSBjb3VwbGUgb2Ygd2Vla3MgYWdvLgo+Cj4gSSB0b29rIHRoYXQgcGF0Y2gsIGFwcGxpZWQgaXQg
YW5kIGZpeGVkIGl0IHVwIG9uIHRvcCBvZiBkcm0tbmV4dC4gVGhlbgo+IEkgYmFja21lcmdlZCB0
aGUgY29tbWl0IHRoYXQgYWxzbyB3ZW50IGludG8gTGludXMnIHRyZWUuIFRoZW4gSQo+IHJlbW92
ZWQgYW55IGV2aWRlbmNlIG9mIHRoZSBSQzYgcGF0Y2ggZnJvbSBMaW51cycgdHJlZSBhbmQgbGVm
dCB0aGUKPiBuZXdlciB2ZXJzaW9uIHBpZWNlcyBpbiBwbGFjZS4gVGhlIG90aGVyIHN0dWZmIG1v
c3RseSBtZXJnZWQgZmluZSBhbmQKPiB0aGUgcmVzdWx0cyBsb29rZWQgZmluZSwgYnV0IEknZCBk
ZWZpbml0ZWx5IHRoaW5rIGV2ZXJ5b25lIGF0IEludGVsCj4gc2hvdWxkIGJlIHN0YXJpbmcgYXQg
aXQsIGFuZCBteSBkaW5xIHRpcCByZXNvbHV0aW9ucyBBU0FQIGFuZAo+IGhvcGVmdWxseSBpdCBn
b2VzIGludG8gQ0kgYW5kIGNvbWVzIG91dCBzbWVsbGluZyBvZiBzb21ldGhpbmcgZ29vZC4KPgo+
IExldCBtZSBrbm93IGlmIGl0J3MgYWxsIGhvcnJpYmxlIGFzYXAsCgpBZGQgTWFydGluIGFuZCBB
cmVrIGZvciBDSSByZXN1bHRzLiBUaGUgeW9sbyBzdHVmZiBsYW5kZWQgaW4KQ0lfRFJNXzczNDAs
IGRpZCB3ZSBicmVhayBhbnl0aGluZyBpbiB0aGVyZT8gRnJvbSBhIHF1aWNrIGxvb2sgc2VlbXMK
YWxsIG9rLgotRGFuaWVsCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRl
bCBDb3Jwb3JhdGlvbgorNDEgKDApIDc5IDM2NSA1NyA0OCAtIGh0dHA6Ly9ibG9nLmZmd2xsLmNo
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
