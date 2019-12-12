Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F3C11D179
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 16:52:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9810A88E84;
	Thu, 12 Dec 2019 15:52:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1793788E84
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 15:52:21 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id p9so2907417wmc.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 07:52:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=ppVt/c6SNGbxwMT06FmYWiQkL8ReCtZAObgQLli/bGc=;
 b=FQK+F5Tqc8VmatT6qdaJSBwIwwPtF4BX7q+Zo2tSJdUU7H3Poig4l99vIp+I1/Vvlh
 mimYc8wDLLjPw0140MevtlhicgJTxyOHkfWRR5ay61yk0bxeCWWLe4PrBHC4fIXmy8xg
 ffcCWN9W2Sts1HHv2X6IJH3dkKfXiIOEIBUem78RJYbraY689kLWgWeWyJNiG3YG7Mru
 PJyaMuC+g111+wvG/l7UEPS5W5yajVSs2te9dnR4P63kRf/E3jnMGPhIBVqUIGqSyNk7
 JlY1+9WWAU6STu+j4Oi234ZDrjlFqABIbb7Sj/1lHOB31K2H9V5kA4HnFDRFrdDawBKB
 vBHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=ppVt/c6SNGbxwMT06FmYWiQkL8ReCtZAObgQLli/bGc=;
 b=ixf8c41swSVvITfLNwQtk8EPZZaHD26qIxXMQsn1cq9cwwW1rEBYf+vHgS/4ScZZJC
 lBnvvfFPADRMWEIa4kZasY0fkN/kOrVLbL8vY7pRUozaSDLZ8BecjRqSZZsYxjVjsuD9
 3CuXIqwAdc3caq45iFB+Nb0H5BqXb+fBgtNKQIzpjFlgUAP18lo5ivdIN26is6YqedYT
 SFV0BjAbVYE9eGAPPuUFZQoaibu9uvSI7Kat/R+A35LFeUKwaCgIcfP9RFKuWUKG9YD3
 J0iiHpXS0M+wFN1m4Xo9I4HGeNy8Yueph2dylDC0XQUJN6r5BqtUlHxsSy2aWSjax3aL
 s0mA==
X-Gm-Message-State: APjAAAVqCZ1HWCBoVXMFQaCgfLtPF8qi6MSE7xRifCAVaR5aCdc/CFsY
 h4WTGq2KDdEdipHKjB81mbY8Dg==
X-Google-Smtp-Source: APXvYqyvc2Y2xdShKzDEsC4cVAZysnpb3aqCe69/dn9O8AQEa41FSMBBexqoLXh3Te7JRAVg4RzXxA==
X-Received: by 2002:a1c:14a:: with SMTP id 71mr7609430wmb.48.1576165939689;
 Thu, 12 Dec 2019 07:52:19 -0800 (PST)
Received: from dell ([95.149.164.71])
 by smtp.gmail.com with ESMTPSA id z189sm7190746wmc.2.2019.12.12.07.52.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 07:52:19 -0800 (PST)
Date: Thu, 12 Dec 2019 15:52:09 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID: <20191212155209.GC3468@dell>
References: <20191119151818.67531-1-hdegoede@redhat.com>
 <20191119151818.67531-3-hdegoede@redhat.com>
 <20191210085111.GQ3468@dell>
 <a05e5a2b-568e-2b0d-0293-aa937c590a74@redhat.com>
 <20191212084546.GA3468@dell>
 <d22e9a04-da09-0f41-a78e-ac17a947650a@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d22e9a04-da09-0f41-a78e-ac17a947650a@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/3] mfd: intel_soc_pmic: Rename
 pwm_backlight pwm-lookup to pwm_pmic_backlight
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 linux-acpi@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAxMiBEZWMgMjAxOSwgSGFucyBkZSBHb2VkZSB3cm90ZToKCj4gSGksCj4gCj4gT24g
MTItMTItMjAxOSAwOTo0NSwgTGVlIEpvbmVzIHdyb3RlOgo+ID4gT24gV2VkLCAxMSBEZWMgMjAx
OSwgSGFucyBkZSBHb2VkZSB3cm90ZToKPiA+IAo+ID4gPiBIaSBMZWUsCj4gPiA+IAo+ID4gPiBP
biAxMC0xMi0yMDE5IDA5OjUxLCBMZWUgSm9uZXMgd3JvdGU6Cj4gPiA+ID4gT24gVHVlLCAxOSBO
b3YgMjAxOSwgSGFucyBkZSBHb2VkZSB3cm90ZToKPiA+ID4gPiAKPiA+ID4gPiA+IEF0IGxlYXN0
IEJheSBUcmFpbCAoQllUKSBhbmQgQ2hlcnJ5IFRyYWlsIChDSFQpIGRldmljZXMgY2FuIHVzZSAx
IG9mIDIKPiA+ID4gPiA+IGRpZmZlcmVudCBQV00gY29udHJvbGxlcnMgZm9yIGNvbnRyb2xsaW5n
IHRoZSBMQ0QncyBiYWNrbGlnaHQgYnJpZ2h0bmVzcy4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gRWl0
aGVyIHRoZSBvbmUgaW50ZWdyYXRlZCBpbnRvIHRoZSBQTUlDIG9yIHRoZSBvbmUgaW50ZWdyYXRl
ZCBpbnRvIHRoZQo+ID4gPiA+ID4gU29DICh0aGUgMXN0IExQU1MgUFdNIGNvbnRyb2xsZXIpLgo+
ID4gPiA+ID4gCj4gPiA+ID4gPiBTbyBmYXIgaW4gdGhlIExQU1MgY29kZSBvbiBCWVQgd2UgaGF2
ZSBza2lwcGVkIHJlZ2lzdGVyaW5nIHRoZSBMUFNTIFBXTQo+ID4gPiA+ID4gY29udHJvbGxlciAi
cHdtX2JhY2tsaWdodCIgbG9va3VwIGVudHJ5IHdoZW4gYSBDcnlzdGFsIENvdmUgUE1JQyBpcwo+
ID4gPiA+ID4gcHJlc2VudCwgYXNzdW1pbmcgdGhhdCBpbiB0aGlzIGNhc2UgdGhlIFBNSUMgUFdN
IGNvbnRyb2xsZXIgd2lsbCBiZSB1c2VkLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBPbiBDSFQgd2Ug
aGF2ZSBiZWVuIHJlbHlpbmcgb24gb25seSAxIG9mIHRoZSAyIFBXTSBjb250cm9sbGVycyBiZWlu
Zwo+ID4gPiA+ID4gZW5hYmxlZCBpbiB0aGUgRFNEVCBhdCB0aGUgc2FtZSB0aW1lOyBhbmQgYWx3
YXlzIHJlZ2lzdGVyZWQgdGhlIGxvb2t1cC4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gU28gZmFyIHRo
aXMgaGFzIGJlZW4gd29ya2luZywgYnV0IHRoZSBjb3JyZWN0IHdheSB0byBkZXRlcm1pbmUgd2hp
Y2ggUFdNCj4gPiA+ID4gPiBjb250cm9sbGVyIG5lZWRzIHRvIGJlIHVzZWQgaXMgYnkgY2hlY2tp
bmcgYSBiaXQgaW4gdGhlIFZCVCB0YWJsZSBhbmQKPiA+ID4gPiA+IHJlY2VudGx5IEkndmUgbGVh
cm5lZCBhYm91dCAyIGRpZmZlcmVudCBCWVQgZGV2aWNlczoKPiA+ID4gPiA+IFBvaW50IG9mIFZp
ZXcgTU9CSUkgVEFCLVA4MDBXCj4gPiA+ID4gPiBBY2VyIFN3aXRjaCAxMCBTVzUtMDEyCj4gPiA+
ID4gPiAKPiA+ID4gPiA+IFdoaWNoIHVzZSBhIENyeXN0YWwgQ292ZSBQTUlDLCB5ZXQgdGhlIExD
RCBpcyBjb25uZWN0ZWQgdG8gdGhlIFNvQy9MUFNTCj4gPiA+ID4gPiBQV00gY29udHJvbGxlciAo
YW5kIHRoZSBWQlQgY29ycmVjdGx5IGluZGljYXRlcyB0aGlzKSwgc28gaGVyZSBvdXIgb2xkCj4g
PiA+ID4gPiBoZXVyaXN0aWNzIGZhaWwuCj4gPiA+ID4gPiAKPiA+ID4gPiA+IFNpbmNlIG9ubHkg
dGhlIGk5MTUgZHJpdmVyIGhhcyBhY2Nlc3MgdG8gdGhlIFZCVCwgdGhpcyBjb21taXQgcmVuYW1l
cwo+ID4gPiA+ID4gdGhlICJwd21fYmFja2xpZ2h0IiBsb29rdXAgZW50cmllcyBmb3IgdGhlIENy
eXN0YWwgQ292ZSBQTUlDJ3MgUFdNCj4gPiA+ID4gPiBjb250cm9sbGVyIHRvICJwd21fcG1pY19i
YWNrbGlnaHQiIHNvIHRoYXQgdGhlIGk5MTUgZHJpdmVyIGNhbiBkbyBhCj4gPiA+ID4gPiBwd21f
Z2V0KCkgZm9yIHRoZSByaWdodCBjb250cm9sbGVyIGRlcGVuZGluZyBvbiB0aGUgVkJUIGJpdCwg
aW5zdGVhZCBvZgo+ID4gPiA+ID4gdGhlIGk5MTUgZHJpdmVyIHJlbHlpbmcgb24gYSAicHdtX2Jh
Y2tsaWdodCIgbG9va3VwIGdldHRpbmcgcmVnaXN0ZXJlZAo+ID4gPiA+ID4gd2hpY2ggbWFnaWNh
bGx5IHBvaW50cyB0byB0aGUgcmlnaHQgY29udHJvbGxlci4KPiA+ID4gPiA+IAo+ID4gPiA+ID4g
U2lnbmVkLW9mZi1ieTogSGFucyBkZSBHb2VkZSA8aGRlZ29lZGVAcmVkaGF0LmNvbT4KPiA+ID4g
PiA+IC0tLQo+ID4gPiA+ID4gICAgZHJpdmVycy9tZmQvaW50ZWxfc29jX3BtaWNfY29yZS5jIHwg
MiArLQo+ID4gPiA+ID4gICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0
aW9uKC0pCj4gPiA+ID4gCj4gPiA+ID4gRm9yIG15IG93biByZWZlcmVuY2U6Cj4gPiA+ID4gICAg
IEFja2VkLWZvci1NRkQtYnk6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+Cj4gPiA+
IAo+ID4gPiBBcyBtZW50aW9uZWQgaW4gdGhlIGNvdmVyLWxldHRlciwgdG8gYXZvaWQgYnJlYWtp
bmcgYmktc2VjdGFiaWxpdHkKPiA+ID4gYXMgd2VsbCBhcyB0byBhdm9pZCBicmVha2luZyB0aGUg
aW50ZWwtZ2Z4IENJIHdlIG5lZWQgdG8gbWVyZ2UgdGhpcyBzZXJpZXMKPiA+ID4gaW4gb25lIGdv
IHRocm91Z2ggb25lIHRyZWUuIFNwZWNpZmljYWxseSB0aHJvdWdoIHRoZSBkcm0taW50ZWwgdHJl
ZS4KPiA+ID4gSXMgdGhhdCBvayB3aXRoIHlvdSA/Cj4gPiA+IAo+ID4gPiBJZiB0aGlzIGlzIG9r
IHdpdGggeW91LCB0aGVuIHlvdSBkbyBub3QgaGF2ZSB0byBkbyBhbnl0aGluZywgSSB3aWxsIGp1
c3QgcHVzaAo+ID4gPiB0aGUgZW50aXJlIHNlcmllcyB0byBkcm0taW50ZWwuIGRyaXZlcnMvbWZk
L2ludGVsX3NvY19wbWljX2NvcmUuYwo+ID4gPiBkb2VzIG5vdCBzZWUgbXVjaCBjaGFuZ2VzIHNv
IEkgZG8gbm90IGV4cGVjdCB0aGlzIHRvIGxlYWQgdG8gYW55IGNvbmZsaWN0cy4KPiA+IAo+ID4g
SXQncyBmaW5lLCBzbyBsb25nIGFzIGEgbWluaW1hbCBpbW11dGFibGUgcHVsbC1yZXF1ZXN0IGlz
IHByb3ZpZGVkLgo+ID4gV2hldGhlciBpdCdzIHB1bGxlZCBvciBub3Qgd2lsbCBkZXBlbmQgb24g
YSBudW1iZXIgb2YgZmFjdG9ycywgYnV0IGl0Cj4gPiBuZWVkcyB0byBiZSBhbiBvcHRpb24uCj4g
Cj4gVGhlIHdheSB0aGUgZHJtIHN1YnN5cyB3b3JrcyB0aGF0IGlzIG5vdCByZWFsbHkgYSByZWFk
aWx5IGF2YWlsYWJsZQo+IG9wdGlvbi4gVGhlIHN0cnVjdCBkZWZpbml0aW9uIHdoaWNoIHRoaXMg
cGF0Y2ggY2hhbmdlcyBhIHNpbmdsZSBsaW5lIGluCj4gaGFzIG5vdCBiZWVuIHRvdWNoZWQgc2lu
Y2UgMjAxNS0wNi0yNiBzbyBJIHJlYWxseSBkb3VidCB3ZSB3aWxsIGdldCBhCj4gY29uZmxpY3Qg
ZnJvbSB0aGlzLgoKQWx3YXlzIHdpdGggdGhlIGV4Y2VwdGlvbnMgLi4uCgpPT0ksIHdoeSBkb2Vz
IHRoaXMgKmhhdmUqIHRvIGdvIHRocm91Z2ggdGhlIERSTSB0cmVlPwoKLS0gCkxlZSBKb25lcyBb
5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIg
T3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29r
IHwgVHdpdHRlciB8IEJsb2cKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
