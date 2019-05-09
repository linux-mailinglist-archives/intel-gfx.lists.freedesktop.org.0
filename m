Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B08521883A
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2019 12:16:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 117CE89A92;
	Thu,  9 May 2019 10:16:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-it1-x141.google.com (mail-it1-x141.google.com
 [IPv6:2607:f8b0:4864:20::141])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 830CA89A92
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2019 10:16:48 +0000 (UTC)
Received: by mail-it1-x141.google.com with SMTP id u16so4643124itc.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 09 May 2019 03:16:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BIlULqxElJ1UVkE3nskm96wPdXbmsrmyS+2BEAOEbgA=;
 b=MN3XHI2IJRYmeEnrlxu/jgy2LwfjXP5r/jDTxkUCGh/DFUwKmMlmSDmmNQxjq6OXfl
 ZBFrntvDA1TpeGSSIqsg4tXA5SCwXwJX8FoB52FaTVebrHaG12MpHI56Qoh5Hnir7abz
 CLcblZ9YYNH1JRewoHFR2GblnnNgOmMdpnxhlBHlgsXlgPd8tlsF+hvFQDelixNuIyDU
 uVJ4GSUi4N9Riaypyf4FDWEuOFKplIpqsBgdsE7c1vFPFXV70ip9sjrfnOqa/kGbCvOJ
 kAK/L9yi9IqKONYbX8kXoxafQ2MLIlhO2L5gkBz/zVChNZZSsIMAxIl0VLJM2Yky7YZv
 3imw==
X-Gm-Message-State: APjAAAVdvrmJ4fcdCZzIIRIoF8gXbASQYeB2nzq2ZHuSAL1/MyIKxlYg
 BP/skYLHLGb/WaS8cE20tjTZO6nq2RSYpYVXsmAQJw==
X-Google-Smtp-Source: APXvYqyZlmQcMPgQ+QkSHFT6+ztPhQmc+dytbArYoVbadg3EgiCWpUn4c2dBNw1rJluViMtD20lPN8dtBf56VOQz0Zg=
X-Received: by 2002:a05:660c:6c8:: with SMTP id
 z8mr1111816itk.51.1557397007880; 
 Thu, 09 May 2019 03:16:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190502194208.3535-1-daniel.vetter@ffwll.ch>
 <20190502194208.3535-2-daniel.vetter@ffwll.ch>
 <20190509092449.GA10828@jagdpanzerIV>
In-Reply-To: <20190509092449.GA10828@jagdpanzerIV>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 9 May 2019 12:16:36 +0200
Message-ID: <CAKMK7uGXyvnvq4ZVN+ps8ua5vaT13a2h+sjep7PgKeVxZU=qug@mail.gmail.com>
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=BIlULqxElJ1UVkE3nskm96wPdXbmsrmyS+2BEAOEbgA=;
 b=TKNaXcgtz8qYEpIJukTzgb1p/hYDziVtcRMnhldabv9IEZDEmmTt6GQ0b32MdOp/Fw
 ezNjxHfzLcgAjU8NOmJ1J4l22ulRC/LF75pwJkpb8H9286c1K3NokoOjR5I3cDesGGOO
 7j8dariqP5gQI1oJ8E544TNYLpNorg0/ZRmHo=
Subject: Re: [Intel-gfx] [PATCH 2/2] RFC: soft/hardlookup: taint kernel
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
Cc: Don Zickus <dzickus@redhat.com>, Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 Andrew Morton <akpm@linux-foundation.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Vincent Whitchurch <vincent.whitchurch@axis.com>,
 Sinan Kaya <okaya@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Laurence Oberman <loberman@redhat.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Thomas Gleixner <tglx@linutronix.de>,
 Ingo Molnar <mingo@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBNYXkgOSwgMjAxOSBhdCAxMToyNCBBTSBTZXJnZXkgU2Vub3poYXRza3kKPHNlcmdl
eS5zZW5vemhhdHNreS53b3JrQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBPbiAoMDUvMDIvMTkgMjE6
NDIpLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+IFsuLl0KPiA+IEBAIC00NjksNiArNDY5LDggQEAg
c3RhdGljIGVudW0gaHJ0aW1lcl9yZXN0YXJ0IHdhdGNoZG9nX3RpbWVyX2ZuKHN0cnVjdCBocnRp
bWVyICpocnRpbWVyKQo+ID4gICAgICAgICAgICAgICBhZGRfdGFpbnQoVEFJTlRfU09GVExPQ0tV
UCwgTE9DS0RFUF9TVElMTF9PSyk7Cj4gPiAgICAgICAgICAgICAgIGlmIChzb2Z0bG9ja3VwX3Bh
bmljKQo+ID4gICAgICAgICAgICAgICAgICAgICAgIHBhbmljKCJzb2Z0bG9ja3VwOiBodW5nIHRh
c2tzIik7Cj4gPiArICAgICAgICAgICAgIGVsc2UKPiA+ICsgICAgICAgICAgICAgICAgICAgICBh
ZGRfdGFpbnQoVEFJTlRfV0FSTiwgTE9DS0RFUF9TVElMTF9PSyk7Cj4gPiAgICAgICAgICAgICAg
IF9fdGhpc19jcHVfd3JpdGUoc29mdF93YXRjaGRvZ193YXJuLCB0cnVlKTsKPgo+IFNvZnQgbG9j
a3VwIHNldHMgVEFJTlRfU09GVExPQ0tVUCBiaXQuIFdvdWxkIGl0IGJlIGVub3VnaCBmb3IgeW91
ciBDST8KCkknbSBibGluZCA6LS8gWWVzIHRoaXMgaXMgdG90YWxseSB1c2VmdWwuCgo+IFsuLl0K
PiA+IEBAIC0xNTQsNiArMTU0LDggQEAgc3RhdGljIHZvaWQgd2F0Y2hkb2dfb3ZlcmZsb3dfY2Fs
bGJhY2soc3RydWN0IHBlcmZfZXZlbnQgKmV2ZW50LAo+ID4KPiA+ICAgICAgICAgICAgICAgaWYg
KGhhcmRsb2NrdXBfcGFuaWMpCj4gPiAgICAgICAgICAgICAgICAgICAgICAgbm1pX3BhbmljKHJl
Z3MsICJIYXJkIExPQ0tVUCIpOwo+ID4gKyAgICAgICAgICAgICBlbHNlCj4gPiArICAgICAgICAg
ICAgICAgICAgICAgYWRkX3RhaW50KFRBSU5UX1dBUk4sIExPQ0tERVBfU1RJTExfT0spOwo+Cj4g
TWF5YmUgeW91IGNhbiBtaXJyb3Igd2hhdCBzb2Z0IGxvY2t1cCBkb2VzLiBBZGQgYSBIQVJETE9D
S1VQIHRhaW50IGJpdAoKV2UnZCBhbHNvIHdhbnQgYSB0YWludCBmb3IgaHVuZyB0YXNrcyAoc2Vw
YXJhdGUgcGF0Y2gsIHNhbWUgaWRlYSksIG5vdApzdXJlIGl0J3MgYSBnb29kIGlkZWEgdG8gdXNl
IGEgbmV3IHRhaW50IGJpdCBmb3IgYWxsIG9mIHRoZW0/IEF0bSB3ZQpkb24ndCBjaGVjayBmb3Ig
YWxsIHRhaW50IGJpdHMgKHNvbWUgb2YgdGhlbSBhcmUgc2V0IGJlY2F1c2Ugb2YgdGhpbmdzCm91
ciB0ZXN0Y2FzZXMgZG8sIGxpa2UgbW9kdWxlIHJlbG9hZCBvciBzZXR0aW5nIHVuc2FmZSBrZXJu
ZWwgb3B0aW9ucwptZWFudCBmb3IgdGVzdGluZyBvbmx5LCBzbyBwaWNraW5nIG9uZSBvZiB0aGUg
Yml0cyB3ZSBjaGVjayBhbHJlYWR5CndhcyBsZWFzdCByZXNpc3RhbmNlLgoKPiArKysgYi9pbmNs
dWRlL2xpbnV4L2tlcm5lbC5oCj4gQEAgLTU3MSw3ICs1NzEsOCBAQCBleHRlcm4gZW51bSBzeXN0
ZW1fc3RhdGVzIHsKPiAgI2RlZmluZSBUQUlOVF9MSVZFUEFUQ0ggICAgICAgICAgICAgICAgICAg
ICAgICAxNQo+ICAjZGVmaW5lIFRBSU5UX0FVWCAgICAgICAgICAgICAgICAgICAgICAxNgo+ICAj
ZGVmaW5lIFRBSU5UX1JBTkRTVFJVQ1QgICAgICAgICAgICAgICAxNwo+IC0jZGVmaW5lIFRBSU5U
X0ZMQUdTX0NPVU5UICAgICAgICAgICAgICAxOAo+ICsjZGVmaW5lIFRBSU5UX0hBUkRMT0NLVVAg
ICAgICAgICAgICAgICAxOAo+ICsjZGVmaW5lIFRBSU5UX0ZMQUdTX0NPVU5UICAgICAgICAgICAg
ICAxOQo+Cj4gYW5kIHRoZW4gc2V0IFRBSU5UX0hBUkRMT0NLVVAgaW4gd2F0Y2hkb2dfb3ZlcmZs
b3dfY2FsbGJhY2soKS4KPgo+IEp1c3QgYSBzbWFsbCBpZGVhLCBJJ2xsIGxlYXZlIHRoaXMgdG8g
bW9yZSBleHBlcmllbmNlZCBwZW9wbGUuCgpUaGUgaHVuZ190YXNrcyB0YWludCB3YXNuJ3QgYWxs
IHRoYXQgcG9zaXRpdmVseSByZWNlaXZlZCwgSSBmZWVscyBsaWtlCnRoaXMgd2lsbCBzdGF5IGEg
aGFjayBwcml2YXRlIHRvIG91ciBDSS4gRXhjZXB0IGlmIHNvbWVvbmUgZWxzZSBwaXBlcwp1cCB3
aG8gd2FudHMgdGhpcywgdGhlbiBJJ20gaGFwcHkgdG8gcG9saXNoLgotRGFuaWVsCi0tIApEYW5p
ZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgorNDEgKDApIDc5
IDM2NSA1NyA0OCAtIGh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
