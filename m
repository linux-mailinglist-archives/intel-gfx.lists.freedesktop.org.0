Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A2B144AD88
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 23:47:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E1D56E260;
	Tue, 18 Jun 2019 21:47:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAFFD6E25E
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 21:47:00 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id k21so23868016edq.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 14:47:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=LZrn7Rr8zleiGvdxF1w3tKSgpu14wo0qoDaXcva9cvY=;
 b=R/h2CWCAGrR7UqnFgPL2TZRJmrZNiUM1+D09MC038QL9hRRCeojowaH+tXTWHRUa9h
 zDnw9vbeLQgFr4PVpZtyyqEWfUMMxo+4eycAWdvr6D670EDl68yT5VlSJkwf0F1IBrhW
 WqucEuvXA7F1nnBA289FNcM0FObM+rcYZqJUYjT6wzqkY4CdOSEJvgJETELYmYxFXJLh
 5YDq/HVUasQkoUsHT7JME6SGM4fo7+o7h1J/xWhouO2VpUc4aZMqQOLcgUaGeQwipe+Z
 56gAYR7x1TVaMTXSXuxO7vT+TYPuNvDpbZqY0CnNvXB3X1Sjc125rVm38wu50+NFnpoW
 Z3cA==
X-Gm-Message-State: APjAAAWP4DFPfqI5r4i9hOrSryBcc6FwCicmXe8WvhHF4mRv03dvA419
 ei2kotcdObgj9YMf5IwMJc+0qA==
X-Google-Smtp-Source: APXvYqwJvQ6v8diODmfivubZ8dOtPtpsb20XW5926nxdAIASSUgh96jzAqpn/te9CMxx45doYfrhew==
X-Received: by 2002:a50:8dc5:: with SMTP id s5mr128399509edh.138.1560894419613; 
 Tue, 18 Jun 2019 14:46:59 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id h23sm869911edh.40.2019.06.18.14.46.58
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 18 Jun 2019 14:46:58 -0700 (PDT)
Date: Tue, 18 Jun 2019 23:46:56 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <20190618214656.GH12905@phenom.ffwll.local>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
 <20190614203615.12639-59-daniel.vetter@ffwll.ch>
 <20190618151938.GA2567@kroah.com> <20190618152530.GA4576@kroah.com>
 <CAKMK7uEd0sZ81RMjDsz6cnkW+krPuvoqUcEY4U3ofB9W_qeFvA@mail.gmail.com>
 <20190618180113.GA26105@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190618180113.GA26105@kroah.com>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=LZrn7Rr8zleiGvdxF1w3tKSgpu14wo0qoDaXcva9cvY=;
 b=cENkHwfGotPGYAS9ExYWo2joZg+slq8McfhA3rkxAqOPj0ksLNdOTNAxpl5enwcP5V
 3cnJt6nTzVQlDqo6fcl2fBjx9ljMJMj4YNEIQPrgWbv4nTRjx9ehHycRkMOP1QVqOA4g
 P3SyvrpeP4wyJz7wm+YeVuo6sw8Bmlz8VH4z0=
Subject: Re: [Intel-gfx] drm connectors, tegra,
 and the web they weave (was Re: [PATCH 58/59] drm/todo: Add new
 debugfs todo)
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdW4gMTgsIDIwMTkgYXQgMDg6MDE6MTNQTSArMDIwMCwgR3JlZyBLcm9haC1IYXJ0
bWFuIHdyb3RlOgo+IE9uIFR1ZSwgSnVuIDE4LCAyMDE5IGF0IDA3OjMyOjIwUE0gKzAyMDAsIERh
bmllbCBWZXR0ZXIgd3JvdGU6Cj4gPiBPbiBUdWUsIEp1biAxOCwgMjAxOSBhdCA1OjI1IFBNIEdy
ZWcgS3JvYWgtSGFydG1hbgo+ID4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPiB3cm90ZToK
PiA+ID4gT24gVHVlLCBKdW4gMTgsIDIwMTkgYXQgMDU6MTk6MzhQTSArMDIwMCwgR3JlZyBLcm9h
aC1IYXJ0bWFuIHdyb3RlOgo+ID4gPiA+IEkgY291bGQganVzdCAib3BlbiBjb2RlIiBhIGJ1bmNo
IG9mIGNhbGxzIHRvIGRlYnVnZnNfY3JlYXRlX2ZpbGUoKSBmb3IKPiA+ID4gPiB0aGVzZSBkcml2
ZXJzLCB3aGljaCB3b3VsZCBzb2x2ZSB0aGlzIGlzc3VlLCBidXQgaW4gYSBtb3JlICJub24tZHJt
Igo+ID4gPiA+IHdheS4gIElzIGl0IHdvcnRoIHRvIGp1c3QgZG8gdGhhdCBpbnN0ZWFkIG9mIG92
ZXJ0aGlua2luZyB0aGUgd2hvbGUKPiA+ID4gPiB0aGluZyBhbmQgdHJ5aW5nIHRvIHNxdWlzaCBp
dCBpbnRvIHRoZSBkcm0gIm1vZGVsIiBvZiBkcm0gZGVidWdmcyBjYWxscz8KPiA+ID4KPiA+ID4g
QW4gZXhhbXBsZSBvZiAib3BlbiBjb2RpbmciIHRoaXMgaXMgdGhlIHBhdGNoIGJlbG93IGZvciB0
aGUgc29yLmMKPiA+ID4gZHJpdmVyLgo+ID4gCj4gPiBJIHRoaW5rIG9wZW4tY29kaW5nIGlzIHRo
ZSB3YXkgdG8gZ28gaGVyZS4gT25lIG9mIHRoZSB0b2RvcyBpcyB0bwo+ID4gZXh0ZW5kIGRlYnVn
ZnMgc3VwcG9ydCBmb3IgY3J0Yy9jb25uZWN0b3JzLCBidXQgbG9va2luZyBhdCB0aGUKPiA+IG9w
ZW4tY29kZWQgdmVyc2lvbiB3ZSByZWFsbHkgZG9uJ3QgbmVlZCBhIGRybS1mbGF2b3VyZWQgbWlk
bGF5ZXIgaGVyZS4KPiAKPiBUaGVyZSBhbHJlYWR5IGlzIGRlYnVnZnMgc3VwcG9ydCBpbiB0aGUg
Y29kZSBmb3IgY3J0Yy9jb25uZWN0b3JzLCB0aGVzZQo+IGZpbGVzIGFyZSAiaGFuZ2luZyIgb2Zm
IG9mIHRob3NlIGxvY2F0aW9ucyBhbHJlYWR5LiAgSSdsbCBrZWVwIHRoYXQsIGJ1dAo+IGluZGVu
dCBpdCBvbmUgbW9yZSBkaXJlY3Rvcnkgc28gdGhhdCB0aGVyZSdzIG5vIG5hbWVzcGFjZSBjb2xs
aXNpb25zLgoKVGhlIHRvZG8gd2FzIHRvIGhhdmUgc29tZSBkcm0gd3JhcHBlcnMgaGVyZSBmb3Ig
dGhlIGJvaWxlcnBsYXRlLCBidXQgYWZ0ZXIKbG9va2luZyBhdCB5b3VyIHZlcnNpb24gdGhhdCdz
IG5vdCBhIGdvb2QgaWRlYS4gU28gbm90IGp1c3QgbWFraW5nIHN1cmUKY3J0Y3MvY29ubmVjdG9y
cyBoYXZlIGEgZGVidWdmcyBkaXJlY3RvcnkgbWFkZSBmb3IgdGhlbSwgYnV0IG1vcmUuCgpXcnQg
YWRkaW5nIGEgbmV3IGRpcmVjdG9yeTogZGVidWdmcyBpc250IHVhcGksIGJ1dCB0aGVyZSdzIHVz
dWFsbHkgYQptYXNzaXZlIHBpbGUgb2Ygc2NyaXB0IHJlbHlpbmcgb24gdGhlbSwgc28gaXQncyBu
b3QgbmljZSB0byBzaHVmZmxlIHBhdGhzCmFyb3VuZC4gUGx1cyB0aGUgbGlmZXRpbWVzIG1hdGNo
IGFueXdheSAoYXQgbGVhc3QgaWYgeW91IGRvbid0IGhvdHBsdWcKY29ubmVjdG9ycywgd2hpY2gg
dGVncmEgZG9lc24ndCBkbykuCi1EYW5pZWwKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5n
aW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
