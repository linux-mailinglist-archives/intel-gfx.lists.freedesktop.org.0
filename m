Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 954E4122634
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 09:05:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A1D66E959;
	Tue, 17 Dec 2019 08:05:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 271646E958
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2019 08:05:11 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id g17so10218730wro.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2019 00:05:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=fxAZfC9vmolZiVlLpMvcqpScZw+v0UnXZ2/3gdD1PQU=;
 b=P8Ir1Y+sa+9qizCrqZ9njBGtZhOlAxadSDlDWqoVv7majgjwz4KLATGq1ypY8Xadx8
 6AvVDfimq5rweOvMWz5Rk9RVH7vyBtxaWMhteVEWZ5XDqguzvk9qEG/+aa6/mEt5wpsZ
 G9OEqbh+GNCSd20GHTQ2L/41fdh6Sv5J9D58dwsMJh5d/5RmJHsNtTzzcJdK592Yul9a
 48K8pY4RgPCGuXdLxq8JFqE/bZXUz1V3qILJdoPmlcATjCAR20tF+YwRhEMBoFf/ACBy
 vQQXkpZM+Oitb5xp1XYO0RcX0+jG0Lm8xKVspfxrifwq7iGKvSGd1KtENhSJARdfLUOg
 Xpqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=fxAZfC9vmolZiVlLpMvcqpScZw+v0UnXZ2/3gdD1PQU=;
 b=VmfrH7mixENJDo7paLepHIybdw6S93zFUpIz4l8BFaxDeY4jSgg9CHepbWyx6i0YZV
 BeOeTckIMoJ7cYofhFJ9T4ifg+c/fa1XiIRBwEpiEGrN0R66qcPjQJ9xY+vUNkj+0ozA
 7/Dlxo+sFeF6njC1sjcc+YaQ+CJ3waHzLSQztMvhKJ1ocxOd+wGncXxqBZ6hDCH4Ms61
 93ZWgEHvHsZoc0BAPWbFuFe+2ao4L4Nr/VN9Z6x4QThdLrvdPNF5K1O8uPIkTbBGs2l6
 dvro6U7wwBIaF7UpofQG6Qj8jzWtu/fFHrccl+95xfBlwZ3knHpeA/CbdznrAHvzGzZl
 sLRQ==
X-Gm-Message-State: APjAAAUXC5bx++Ht8Jt6UdXQk9a8CefQ+FlrXlkX81RpMRBq68IRq4Lh
 Hcb7JqeMsHBIfrfbqiADMN0WVw==
X-Google-Smtp-Source: APXvYqzdM1IU1Znt+UOIvBqM1ONjsi0UnVLRZGI/dQjTYSpWTXPuvwYov3WaFnfb+CyufHv8opBDnA==
X-Received: by 2002:a5d:608a:: with SMTP id w10mr4406380wrt.136.1576569909844; 
 Tue, 17 Dec 2019 00:05:09 -0800 (PST)
Received: from dell (h185-20-99-142.host.redstation.co.uk. [185.20.99.142])
 by smtp.gmail.com with ESMTPSA id z11sm24880779wrt.82.2019.12.17.00.05.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 00:05:09 -0800 (PST)
Date: Tue, 17 Dec 2019 08:05:09 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID: <20191217080509.GH18955@dell>
References: <20191216205122.1850923-1-hdegoede@redhat.com>
 <20191216205122.1850923-5-hdegoede@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191216205122.1850923-5-hdegoede@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 4/5] drm/i915/dsi: Move Crystal Cove PMIC
 panel GPIO lookup from mfd to the i915 driver
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
Cc: Andy Shevchenko <andriy.shevchenko@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAxNiBEZWMgMjAxOSwgSGFucyBkZSBHb2VkZSB3cm90ZToKCj4gTW92ZSB0aGUgQ3J5
c3RhbCBDb3ZlIFBNSUMgcGFuZWwgR1BJTyBsb29rdXAtdGFibGUgZnJvbQo+IGRyaXZlcnMvbWZk
L2ludGVsX3NvY19wbWljX2NvcmUuYyB0byB0aGUgaTkxNSBkcml2ZXIuCj4gCj4gVGhlIG1vdmVk
IGxvb2tlZC11cCB0YWJsZSBpcyBhZGRpbmcgYSBHUElPIGxvb2t1cCB0byB0aGUgaTkxNSBQQ0kK
PiBkZXZpY2UgYW5kIHRoZSBHUElPIHN1YnN5cyBhbGxvd3Mgb25seSBvbmUgbG9va3VwIHRhYmxl
IHBlciBkZXZpY2UsCj4gCj4gVGhlIGludGVsX3NvY19wbWljX2NvcmUuYyBjb2RlIG9ubHkgYWRk
cyBsb29rdXAtdGFibGUgZW50cmllcyBmb3IgdGhlCj4gUE1JQyBwYW5lbCBHUElPIChhcyBpdCBk
ZWFscyBvbmx5IHdpdGggdGhlIFBNSUMpLCBidXQgd2UgYWxzbyBuZWVkIHRvIGJlCj4gYWJsZSB0
byBhY2Nlc3Mgc29tZSBHUElPcyBvbiB0aGUgU29DIGl0c2VsZiwgd2hpY2ggcmVxdWlyZXMgZW50
cmllcyBmb3IKPiB0aGVzZSBHUElPcyBpbiB0aGUgbG9va3VwLXRhYmxlLgo+IAo+IFNpbmNlIHRo
ZSBsb29rdXAtdGFibGUgaXMgYXR0YWNoZWQgdG8gdGhlIGk5MTUgUENJIGRldmljZSBpdCByZWFs
bHkKPiBzaG91bGQgYmUgcGFydCBvZiB0aGUgaTkxNSBkcml2ZXIsIHRoaXMgd2lsbCBhbHNvIGFs
bG93IHVzIHRvIGV4dGVuZAo+IGl0IHdpdGggR1BJT3MgZnJvbSBvdGhlciBzb3VyY2VzIHdoZW4g
bmVjZXNzYXJ5Lgo+IAo+IEFja2VkLWJ5OiBMaW51cyBXYWxsZWlqIDxsaW51cy53YWxsZWlqQGxp
bmFyby5vcmc+Cj4gUmV2aWV3ZWQtYnk6IEFuZHkgU2hldmNoZW5rbyA8YW5kcml5LnNoZXZjaGVu
a29AaW50ZWwuY29tPgo+IFJldmlld2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEhhbnMgZGUgR29lZGUgPGhkZWdv
ZWRlQHJlZGhhdC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHNpX3ZidC5jIHwgMjMgKysrKysrKysrKysrKysrKysrKy0KPiAgZHJpdmVycy9tZmQvaW50
ZWxfc29jX3BtaWNfY29yZS5jICAgICAgICAgICAgfCAxOSAtLS0tLS0tLS0tLS0tLS0tCj4gIDIg
ZmlsZXMgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKSwgMjAgZGVsZXRpb25zKC0pCgpBY2tlZC1i
eTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KCi0tIApMZWUgSm9uZXMgW+adjueQ
vOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4g
c291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3
aXR0ZXIgfCBCbG9nCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
