Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D75E122654
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 09:11:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D7906E95A;
	Tue, 17 Dec 2019 08:11:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90E2C6E95B
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2019 08:11:29 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id j42so6021762wrj.12
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2019 00:11:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=19dNxyewZB4bW5EpbtiZDPOC9w8YFBemE/6BfNexMJ0=;
 b=VJSF7QL+BcPWBFi5TTVf4GyWri6KWZKSJ0pcqDeRFj+QPYczAvOVz7S693VcdasDGx
 tc8bjYleSN+8Bl5XBywxzbrV27JkQHbuv5ayw/jbK2qxK+1o3p52RTdpG7x5rM08UFsh
 mtcIxOmnbfEmL48XL7/azzvRVlcwX7GSVx1EGUzlAUeTylIeZpUj/VZ7Ywrf4wR0ORwW
 uU2Av/njCfZ644n7dyAytFVJmNj+EuLBGgcvkV2s0La8frLSm0ze3ra9mLzWTdeCbsli
 Ce9aOcNzsprDNZswFtdu/qi+SqeWrQxMymod02lhGseic4Iah4SpHAIu4eLY4Yibei8q
 80iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=19dNxyewZB4bW5EpbtiZDPOC9w8YFBemE/6BfNexMJ0=;
 b=jMG8Sb+Z+v8QNuQgRe8vSxmKYRZTYvMxq26/IAlKqEuWKeR1n0+BkS34B6CI600TzY
 Wl+x/s2vhR7n02AxQ6PqP7H5H14n5r3MFBFMjFOn2v7CaYreiOrJFqXEp02EhdG/V18t
 stef6urmPEYzOcBR63yhnTYM7zEuTNel+UnbIYICD1CG0zoGm4rBbmAeBXQRXHevIOlw
 8FAIof52gEXTHzLpsEMxpLw9JakDoEjP+M0BDmqJZCWLBWHKbljvfv56S4UndZZOSH/n
 THUAXA/yX8Y240VWSZG68ZG5wHklRK53HsDaLS3nhaZeNNAMF4KMJoj3z7E1bH5l8K45
 8+5A==
X-Gm-Message-State: APjAAAX/N9ZAH+RMAlL5aA/yWgK4zddJwT3OS7haRq18sZQ0BctPhCyA
 GSieap5xegOtLMHbj97XEwBVRQ==
X-Google-Smtp-Source: APXvYqwsEgFgq+4gwcQu8MwsxsRlS9smqiXdgF8o6OW6OU+GyBfno1a/1gxtpoebGTfkhJmcAFDCkg==
X-Received: by 2002:a5d:6708:: with SMTP id o8mr35810316wru.296.1576570288028; 
 Tue, 17 Dec 2019 00:11:28 -0800 (PST)
Received: from dell (h185-20-99-142.host.redstation.co.uk. [185.20.99.142])
 by smtp.gmail.com with ESMTPSA id n16sm24673119wro.88.2019.12.17.00.11.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 00:11:27 -0800 (PST)
Date: Tue, 17 Dec 2019 08:11:27 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID: <20191217081127.GI18955@dell>
References: <20191210085111.GQ3468@dell>
 <a05e5a2b-568e-2b0d-0293-aa937c590a74@redhat.com>
 <20191212084546.GA3468@dell>
 <d22e9a04-da09-0f41-a78e-ac17a947650a@redhat.com>
 <20191212155209.GC3468@dell>
 <4d07445d-98b1-f23c-0aac-07709b45df78@redhat.com>
 <20191213082734.GE3468@dell>
 <d648794d-4c76-cfa1-dcbd-16c34d409c51@redhat.com>
 <20191216093016.GE3648@dell>
 <fc3c29da-528d-a6b6-d13b-92e6469eadea@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fc3c29da-528d-a6b6-d13b-92e6469eadea@redhat.com>
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

T24gTW9uLCAxNiBEZWMgMjAxOSwgSGFucyBkZSBHb2VkZSB3cm90ZToKCj4gSGksCj4gCj4gT24g
MTYtMTItMjAxOSAxMDozMCwgTGVlIEpvbmVzIHdyb3RlOgo+ID4gWy4uLl0KPiA+IAo+ID4gPiA+
ID4gPiA+ID4gPiA+ID4gV2hpY2ggdXNlIGEgQ3J5c3RhbCBDb3ZlIFBNSUMsIHlldCB0aGUgTENE
IGlzIGNvbm5lY3RlZCB0byB0aGUgU29DL0xQU1MKPiA+ID4gPiA+ID4gPiA+ID4gPiA+IFBXTSBj
b250cm9sbGVyIChhbmQgdGhlIFZCVCBjb3JyZWN0bHkgaW5kaWNhdGVzIHRoaXMpLCBzbyBoZXJl
IG91ciBvbGQKPiA+ID4gPiA+ID4gPiA+ID4gPiA+IGhldXJpc3RpY3MgZmFpbC4KPiA+ID4gPiA+
ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gU2luY2Ugb25seSB0aGUgaTkxNSBk
cml2ZXIgaGFzIGFjY2VzcyB0byB0aGUgVkJULCB0aGlzIGNvbW1pdCByZW5hbWVzCj4gPiA+ID4g
PiA+ID4gPiA+ID4gPiB0aGUgInB3bV9iYWNrbGlnaHQiIGxvb2t1cCBlbnRyaWVzIGZvciB0aGUg
Q3J5c3RhbCBDb3ZlIFBNSUMncyBQV00KPiA+ID4gPiA+ID4gPiA+ID4gPiA+IGNvbnRyb2xsZXIg
dG8gInB3bV9wbWljX2JhY2tsaWdodCIgc28gdGhhdCB0aGUgaTkxNSBkcml2ZXIgY2FuIGRvIGEK
PiA+ID4gPiA+ID4gPiA+ID4gPiA+IHB3bV9nZXQoKSBmb3IgdGhlIHJpZ2h0IGNvbnRyb2xsZXIg
ZGVwZW5kaW5nIG9uIHRoZSBWQlQgYml0LCBpbnN0ZWFkIG9mCj4gPiA+ID4gPiA+ID4gPiA+ID4g
PiB0aGUgaTkxNSBkcml2ZXIgcmVseWluZyBvbiBhICJwd21fYmFja2xpZ2h0IiBsb29rdXAgZ2V0
dGluZyByZWdpc3RlcmVkCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiB3aGljaCBtYWdpY2FsbHkgcG9p
bnRzIHRvIHRoZSByaWdodCBjb250cm9sbGVyLgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gCj4gPiA+
ID4gPiA+ID4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBIYW5zIGRlIEdvZWRlIDxoZGVnb2VkZUBy
ZWRoYXQuY29tPgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gLS0tCj4gPiA+ID4gPiA+ID4gPiA+ID4g
PiAgICAgICBkcml2ZXJzL21mZC9pbnRlbF9zb2NfcG1pY19jb3JlLmMgfCAyICstCj4gPiA+ID4g
PiA+ID4gPiA+ID4gPiAgICAgICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVs
ZXRpb24oLSkKPiA+ID4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+ID4gPiBGb3IgbXkg
b3duIHJlZmVyZW5jZToKPiA+ID4gPiA+ID4gPiA+ID4gPiAgICAgICAgQWNrZWQtZm9yLU1GRC1i
eTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KPiA+ID4gPiA+ID4gPiA+ID4gCj4g
PiA+ID4gPiA+ID4gPiA+IEFzIG1lbnRpb25lZCBpbiB0aGUgY292ZXItbGV0dGVyLCB0byBhdm9p
ZCBicmVha2luZyBiaS1zZWN0YWJpbGl0eQo+ID4gPiA+ID4gPiA+ID4gPiBhcyB3ZWxsIGFzIHRv
IGF2b2lkIGJyZWFraW5nIHRoZSBpbnRlbC1nZnggQ0kgd2UgbmVlZCB0byBtZXJnZSB0aGlzIHNl
cmllcwo+ID4gPiA+ID4gPiA+ID4gPiBpbiBvbmUgZ28gdGhyb3VnaCBvbmUgdHJlZS4gU3BlY2lm
aWNhbGx5IHRocm91Z2ggdGhlIGRybS1pbnRlbCB0cmVlLgo+ID4gPiA+ID4gPiA+ID4gPiBJcyB0
aGF0IG9rIHdpdGggeW91ID8KPiA+ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiA+IElm
IHRoaXMgaXMgb2sgd2l0aCB5b3UsIHRoZW4geW91IGRvIG5vdCBoYXZlIHRvIGRvIGFueXRoaW5n
LCBJIHdpbGwganVzdCBwdXNoCj4gPiA+ID4gPiA+ID4gPiA+IHRoZSBlbnRpcmUgc2VyaWVzIHRv
IGRybS1pbnRlbC4gZHJpdmVycy9tZmQvaW50ZWxfc29jX3BtaWNfY29yZS5jCj4gPiA+ID4gPiA+
ID4gPiA+IGRvZXMgbm90IHNlZSBtdWNoIGNoYW5nZXMgc28gSSBkbyBub3QgZXhwZWN0IHRoaXMg
dG8gbGVhZCB0byBhbnkgY29uZmxpY3RzLgo+ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4g
PiBJdCdzIGZpbmUsIHNvIGxvbmcgYXMgYSBtaW5pbWFsIGltbXV0YWJsZSBwdWxsLXJlcXVlc3Qg
aXMgcHJvdmlkZWQuCj4gPiA+ID4gPiA+ID4gPiBXaGV0aGVyIGl0J3MgcHVsbGVkIG9yIG5vdCB3
aWxsIGRlcGVuZCBvbiBhIG51bWJlciBvZiBmYWN0b3JzLCBidXQgaXQKPiA+ID4gPiA+ID4gPiA+
IG5lZWRzIHRvIGJlIGFuIG9wdGlvbi4KPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiBUaGUg
d2F5IHRoZSBkcm0gc3Vic3lzIHdvcmtzIHRoYXQgaXMgbm90IHJlYWxseSBhIHJlYWRpbHkgYXZh
aWxhYmxlCj4gPiA+ID4gPiA+ID4gb3B0aW9uLiBUaGUgc3RydWN0IGRlZmluaXRpb24gd2hpY2gg
dGhpcyBwYXRjaCBjaGFuZ2VzIGEgc2luZ2xlIGxpbmUgaW4KPiA+ID4gPiA+ID4gPiBoYXMgbm90
IGJlZW4gdG91Y2hlZCBzaW5jZSAyMDE1LTA2LTI2IHNvIEkgcmVhbGx5IGRvdWJ0IHdlIHdpbGwg
Z2V0IGEKPiA+ID4gPiA+ID4gPiBjb25mbGljdCBmcm9tIHRoaXMuCj4gPiA+ID4gPiA+IAo+ID4g
PiA+ID4gPiBBbHdheXMgd2l0aCB0aGUgZXhjZXB0aW9ucyAuLi4KPiA+ID4gPiA+ID4gCj4gPiA+
ID4gPiA+IE9PSSwgd2h5IGRvZXMgdGhpcyAqaGF2ZSogdG8gZ28gdGhyb3VnaCB0aGUgRFJNIHRy
ZWU/Cj4gPiA+ID4gPiAKPiA+ID4gPiA+IFRoaXMgcGF0Y2ggcmVuYW1lcyB0aGUgbmFtZSB1c2Vk
IHRvIGxvb2t1cCB0aGUgcHdtIGNvbnRyb2xsZXIgZnJvbQo+ID4gPiA+ID4gInB3bV9iYWNrbGln
aHQiIHRvICJwd21fcG1pY19iYWNrbGlnaHQiIGJlY2F1c2UgdGhlcmUgYXJlIDIgcG9zc2libGUK
PiA+ID4gPiA+IHB3bSBjb250cm9sbGVycyB3aGljaCBtYXkgYmUgdXNlZCwgb25lIGluIHRoZSBT
b0MgaXRzZWxmIGFuZCBvbmUKPiA+ID4gPiA+IGluIHRoZSBQTUlDLiBXaGljaCBjb250cm9sbGVy
IHNob3VsZCBiZSB1c2VkIGlzIGRlc2NyaWJlZCBpbiBhIHRhYmxlCj4gPiA+ID4gPiBpbiB0aGUg
VmlkZW8gQklPUywgc28gYW5vdGhlciBwYXJ0IG9mIHRoaXMgc2VyaWVzIGFkZHMgdGhpcyBjb2Rl
IHRvCj4gPiA+ID4gPiB0aGUgaTkxNSBkcml2ZXI6Cj4gPiA+ID4gPiAKPiA+ID4gPiA+IC0JcGFu
ZWwtPmJhY2tsaWdodC5wd20gPSBwd21fZ2V0KGRldi0+ZGV2LCAicHdtX2JhY2tsaWdodCIpOwo+
ID4gPiA+ID4gKwkvKiBHZXQgdGhlIHJpZ2h0IFBXTSBjaGlwIGZvciBEU0kgYmFja2xpZ2h0IGFj
Y29yZGluZyB0byBWQlQgKi8KPiA+ID4gPiA+ICsJaWYgKGRldl9wcml2LT52YnQuZHNpLmNvbmZp
Zy0+cHdtX2JsYyA9PSBQUFNfQkxDX1BNSUMpIHsKPiA+ID4gPiA+ICsJCXBhbmVsLT5iYWNrbGln
aHQucHdtID0gcHdtX2dldChkZXYtPmRldiwgInB3bV9wbWljX2JhY2tsaWdodCIpOwo+ID4gPiA+
ID4gKwkJZGVzYyA9ICJQTUlDIjsKPiA+ID4gPiA+ICsJfSBlbHNlIHsKPiA+ID4gPiA+ICsJCXBh
bmVsLT5iYWNrbGlnaHQucHdtID0gcHdtX2dldChkZXYtPmRldiwgInB3bV9zb2NfYmFja2xpZ2h0
Iik7Cj4gPiA+ID4gPiArCQlkZXNjID0gIlNvQyI7Cj4gPiA+ID4gPiArCX0KPiA+ID4gPiA+IAo+
ID4gPiA+ID4gU28gYm90aCBub3QgdG8gYnJlYWsgYmlzZWN0YWJpbGl0eSwgYnV0IGFsc28gc28g
YXMgdG8gbm90IGJyZWFrIHRoZSBleHRlbnNpdmUKPiA+ID4gPiA+IENJIHN5c3RlbSB3aGljaCBp
cyB1c2VkIHRvIHRlc3QgdGhlIGk5MTUgZHJpdmVyIHdlIG5lZWQgdGhlIE1GRCBjaGFuZ2UgZG9p
bmcKPiA+ID4gPiA+IHRoZSByZW5hbWUgdG8gZ28gdXBzdHJyZWFtIHRocm91Z2ggdGhlIHNhbWUg
dHJlZSBhcyB0aGUgaTkxNSBjaGFuZ2UuCj4gPiA+ID4gPiAKPiA+ID4gPiA+IEkgaGF2ZSBldmVu
IGNvbnNpZGVyZWQganVzdCBzcXVhc2hpbmcgdGhlIDIgY29tbWl0cyB0b2dldGhlciBhcyBoYXZp
bmcgb25seSAxCj4gPiA+ID4gPiBwcmVzZW50LCBidXQgbm90IHRoZSBvdGhlciBicmVha3Mgc3R1
ZmYgbGVmdCBhbmQgcmlnaHQuCj4gPiA+ID4gCj4gPiA+ID4gVGhhdCBkb2Vzbid0IGFuc3dlciB0
aGUgcXVlc3Rpb24uCj4gPiA+ID4gCj4gPiA+ID4gV2h5IGRvIHRoZXkgYWxsICpoYXZlKiB0byBn
byBpbiB2aWEgdGhlIERSTSB0cmVlIHNwZWNpZmljYWxseT8KPiA+ID4gCj4gPiA+IDEuIEFzIGV4
cGxhaW5lZCB0aGVzZSBjaGFuZWdzIG5lZWQgdG8gc3RheSB0b2dldGhlcgo+ID4gPiAyLiBUaGlz
IGNoYW5nZSBpcyBwcmltYXJpbHkgYSBkcm0vaTkxNSBjaGFuZ2UuIEFsc28gdGhlIGk5MTUgY29k
ZSBzZWVzIGxvdHMKPiA+ID4gb2YgY2hhbmdlcyBldmVyeSBjeWNsZSwgd2hlcmUgYXMgdGhlIGNo
YW5nZSB0byB0aGUgbWZkIGNvZGUgdG91Y2hlcyBhIGJsb2NrCj4gPiA+IG9mIGNvZGUgd2hpY2gg
aGFzIG5vdCBiZWVuIHRvdWNoZWQgc2luY2UgMjAxNS0wNi0yNiwgc28gdGhlIGNoYW5jZSBvZiBj
b25mbGljdHMKPiA+ID4gaXMgbXVjaCBiaWdnZXIgaWYgdGhpcyBnb2VzIG9uIHRocm91Z2ggYW5v
dGhlciB0cmVlLgo+ID4gPiAKPiA+ID4gSSBob25lc3RseSBkbyBub3Qgc2VlIHRoZSBwcm9ibGVt
IGhlcmU/IExldCBtZSByZXZlcnNlIHRoZSBxdWVzdGlvbiB3aHkgc2hvdWxkIHRoaXMKPiA+ID4g
Tk9UIGdvIGluIHRocm91Z2ggdGhlIGRybSB0cmVlPwo+ID4gCj4gPiBUaGVyZSBpc24ndCBhIHBy
b2JsZW0gd2l0aCAqdGhpcyogcGF0Y2guICBJIGNvdWxkIHNheSwgInN1cmUsIHRha2UgaXQiCj4g
PiBhbmQgdGhlIGNoYW5jZXMgYXJlIGV2ZXJ5dGhpbmcgY291bGQgYmUgZmluZSBmcm9tIGEgdGVj
aG5pY2FsCj4gPiBwZXJzcGVjdGl2ZS4KPiA+IAo+ID4gSG93ZXZlciwgSSdtIHRha2luZyBleGNl
cHRpb24gdG8gdGhlIGZhY3QgeW91IHRoaW5rIHRoaXMgc2VyaWVzIGlzCj4gPiAqc3BlY2lhbCog
ZW5vdWdoIHRvIHdhcnJhbnQgY2lyY3VtdmVudGluZyB0aGUgdXN1YWwgd2F5IGluIHdoaWNoIHdl
Cj4gPiB1c3VhbGx5IHdvcmsgd2hlbiBkZWFsaW5nIHdpdGggY3Jvc3Mtc3Vic3lzdGVtIHBhdGNo
LXNldHMuICBTb21ldGhpbmcKPiA+IEkgcGVyc29uYWxseSBkZWFsIHdpdGggYSBsb3QgZHVlIHRv
IHRoZSBpbmhlcmVudCBoaWVyYXJjaGljYWwgbmF0dXJlCj4gPiBvZiBNdWx0aS1GdW5jdGlvbmFs
IERldmljZXMuCj4gPiAKPiA+IEknbSBvbiB0aGUgZmVuY2Ugb24gdGhpcyBvbmUuICBEdWUgdG8g
dGhlIGNpcmN1bXN0YW5jZXMgc3Vycm91bmRpbmcKPiA+ICp0aGlzKiBwYXRjaCBhbG9uZSwgaXQg
d291bGQgYmUgc28gbXVjaCBlYXNpZXIgKGZvciBib3RoIG9mIHVzISkgdG8KPiA+IGp1c3QgQWNr
IHRoZSBwYXRjaCBhbmQgaG9wZSBubyBmdXJ0aGVyIGNoYW5nZXMgb2NjdXIgd2hpY2ggY291bGQK
PiA+IHBvdGVudGlhbGx5IGNhdXNlIHNvbWVvbmUgZWxzZSAoeW91LCBtZSwgTGludXMpIG1vcmUg
d29yayBsYXRlciBvbi4KPiA+IEhvd2V2ZXIsIEknbSB2ZXJ5IGtlZW4gdG8gcHJldmVudCBzZXR0
aW5nIGEgcHJlY2VkZW50IGZvciB0aGlzIGtpbmQgb2YKPiA+IGFjdGlvbiwgYXMgaXQncyBjbGVh
cmx5IG5vdCB0aGUgcmlnaHQgcGF0aCB0byB0YWtlIGluIGEgdmFzdCBtYWpvcml0eQo+ID4gb2Yg
Y2FzZXMuCj4gPiAKPiA+ID4gMS4gQXMgZXhwbGFpbmVkIHRoZXNlIGNoYW5lZ3MgbmVlZCB0byBz
dGF5IHRvZ2V0aGVyCj4gPiAKPiA+IFRoZSBwYXRjaC1zZXQgd291bGQgc3RheSB0b2dldGhlciBy
ZWdhcmRsZXNzLiAgVGhhdCdzIHRoZSBwb2ludCBvZiBhbgo+ID4gaW1tdXRhYmxlIGJyYW5jaCwg
aXQgY2FuIGJlIHRha2VuIGluIGJ5IGFsbCByZWxldmFudCBwYXJ0aWVzIGFuZCBHaXQKPiA+IHdp
bGwganVzdCBkby10aGUtcmlnaHQtdGhpbmcuCj4gPiAKPiA+ID4gMi4gVGhpcyBjaGFuZ2UgaXMg
cHJpbWFyaWx5IGEgZHJtL2k5MTUgY2hhbmdlLiBBbHNvIHRoZSBpOTE1IGNvZGUgc2VlcyBsb3Rz
Cj4gPiA+IG9mIGNoYW5nZXMgZXZlcnkgY3ljbGUsIHdoZXJlIGFzIHRoZSBjaGFuZ2UgdG8gdGhl
IG1mZCBjb2RlIHRvdWNoZXMgYSBibG9jawo+ID4gPiBvZiBjb2RlIHdoaWNoIGhhcyBub3QgYmVl
biB0b3VjaGVkIHNpbmNlIDIwMTUtMDYtMjYsIHNvIHRoZSBjaGFuY2Ugb2YgY29uZmxpY3RzCj4g
PiA+IGlzIG11Y2ggYmlnZ2VyIGlmIHRoaXMgZ29lcyBvbiB0aHJvdWdoIGFub3RoZXIgdHJlZS4K
PiA+IAo+ID4gVGhpcyB0b28gaXMgaXJyZWxldmFudCwgc2luY2UgdGhlIHBhdGNoLXNldCBjb3Vs
ZC93b3VsZCBnbyB0aG91Z2gKPiA+IGJvdGgvYWxsIHRyZWVzIHNpbXVsdGFuZW91c2x5LiAgVGhl
IHdheSBpbiB3aGljaCB3ZSBub3JtYWxseSB3b3JrIHdpdGgKPiA+IG90aGVyIHN1YnN5c3RlbXMg
ZG9lc24ndCBpbnZvbHZlIGEgZ2FtYmxlIG92ZXIgd2hpY2ggc3Vic3lzdGVtIGlzIG1vc3QKPiA+
IGxpa2VseSBnb2luZyB0byBiZSBhZmZlY3RlZCBieSBhIG1lcmdlIGNvbmZsaWN0IGFzIHlvdSBz
dWdnZXN0LCBpdAo+ID4gZXJhZGljYXRlcyBjb25mbGljdHMgZm9yIGFsbC4KPiAKPiBJJ20gd2Vs
bCBhd2FyZSBvZiB1c2luZyBpbW11dGFibGUgYnJhbmNoZXMgYW5kIHRoYXQgdGhvc2UgYXJlCj4g
b2Z0ZW4gdXNlZCBmb3IgcGF0Y2gtc2V0J3Mgd2hpY2ggdG91Y2ggbXVsdGlwbGUgc3Vic3lzdGVt
cy4gQnV0Cj4gYWx0aG91Z2ggaW1tdXRhYmxlIGJyYW5jaGVzIGFyZSB1c2VkIG9mdGVuIHRoZXkg
YXJlIGFib3V0IGFzIG9mdGVuCj4gbm90IHVzZWQgZm9yIHZhcmlvdXMgcmVhc29ucywgd2l0aCBw
ZW9wbGUgY2hvb3NpbmcgdG8ganVzdCBtZXJnZQo+IHRocm91Z2ggYSBzaW5nbGUgdHJlZS4KPiA+
IEknbSBub3Qgc2F5aW5nICJubyIgYnkgdGhlIHdheS4gIEkganVzdCB3YW50IHRvIGZpbmQgb3V0
IHlvdXIKPiA+IHJlYXNvbnMvbW90aXZhdGlvbiBhcyB0byB3aHkgeW91J3JlIGluc2lzdGluZyB0
aGlzIG5lZWRzIGdvIHRocm91Z2gKPiA+IGEpIGEgc3BlY2lmaWMgdHJlZSBhbmQgYikganVzdCBv
bmUgdHJlZS4gIFF1ZXN0aW9ucyB3aGljaCBJIGFtIHlldCB0bwo+ID4gc2VlIGEgY29tcGVsbGlu
ZyBhbnN3ZXIuCj4gCj4gRG9pbmcgaW1tdXRhYmxlIGJyYW5jaGVzIGFzc3VtZXMgdGhhdCB0aGVy
ZSBpcyBhIGJhc2UgcG9pbnQsCj4gZS5nLiA1LjUtcmMxIHdoZXJlIHRoZSBpbW11dGFibGUgYnJh
bmNoIGNhbiB0aGVuIGJlIGJhc2VkIG9uIGFuZAo+IHRoYXQgdGhlIGJyYW5jaCBjYW4gdGhlbiBi
ZSBtZXJnZWQgd2l0aG91dCBpc3N1ZXMgaW50byBib3RoIHN1YnN5c3RlbXMuCj4gCj4gZHJtIGlz
IGNvbnN0YW50bHkgZXZvbHZpbmcgdG8gZGVhbCB3aXRoIGFuZCBtb3N0bHkgY2F0Y2ggdXAgd2l0
aCBuZXcKPiBoYXJkd2FyZSBhcyBib3RoIEdQVXMgYW5kIGRpc3BsYXktcGlwZWxpbmVzIGFyZSBl
dm9sdmluZyBxdWl0ZSByYXBpZGx5Cj4gYXRtIGRybS1pbnRlbC1uZXh0IGhhcyBhYm91dCA0MDAg
Y29tbWl0cyBvbiB0b3Agb2YgNS41LXJjMSBzbyBmb3IgYW4KPiBpbW11dGFibGUgYnJhbmNoIEkg
Y2FuIGVpdGhlciBiYXNlIGl0IG9uIGRybS1pbnRlbC1uZXh0IHdoaWNoCj4gdmlvbGF0ZXMgeW91
ciByZXF1ZXN0IGZvciBhIGNsZWFuIG1pbmltYWwgYnJhbmNoIHRvIG1lcmdlOyBvciBJIGNhbgo+
IGJhc2UgaXQgb24gNS41LXJjMSB3aGljaCBsZWFkcyB0byBhIGJpZyBjaGFuY2Ugb2YgcHJvYmxl
bXMgd2hlbgo+IG1lcmdpbmcgaXQgZ2l2ZW4gdG8gbGFyZ2UgYW1vdW50IG9mIGNodXJuIGluIGRy
bS1pbnRlbC1uZXh0LgoKVGhpcyBpcyBhICpzbGlnaHRseSogbW9yZSBjb21wZWxsaW5nIHJlYXNv
biB0aGFuIHRoZSBvbmVzIHlvdSd2ZQpwcmV2aW91c2x5IHByb3ZpZGVkLgoKPiBTbyBpbnN0ZWFk
IG9mIHRoZSBub3JtYWwgY2FzZSBvZiAyIHN1YnN5c3RlbXMgc2VlaW5nIHNvbWUgY2hhbmdlcwo+
IG9uIGJvdGggc2lkZSB0aGUgY2FzZSB3ZSBoYXZlIGhlcmUgaXMgYSBwYXJ0IG9mIGEgZmlsZSB3
aGljaCBoYXMKPiBub3QgY2hhbmdlZCBzaW5jZSAyMDE1LTA2LTI2IGluIG9uZSBzdWJzeXMgKGFu
ZCBjaGFuZ2luZyBvbmx5Cj4gYSBzaW5nbGUgbGluZSB0aGVyZSEpIGFuZCBPVE9IIHdlIGhhdmUg
YmlnZ2VyIGNoYW5nZXMgdG8gYSBzdWJzeXMKPiB3aGljaCBzZWUgNDAwIHBhdGNoZXMgbGFuZCBp
biB0aGUgZmlyc3Qgd2VlayBzaW5jZSByYzEgLgoKVGhpcyBpcyBub3QuCgo+IEkgaG9wZSB0aGF0
IHlvdSBhZ3JlZSB0aGF0IGluIHRoaXMgY2FzZSBnaXZlbiB0aGUgbGFyZ2UgYW1vdW50IG9mCj4g
Y2h1cm4gaW4gZHJtLWludGVsLW5leHQgaXQgbWFrZXMgc2luY2UgdG8ganVzdCBzdHJhaWdodCBm
b3J3YXJkCj4gYXBwbHkgdGhlc2UgcGF0Y2hlcyBvbiB0b3Agb2YgZHJtLWludGVsLW5leHQuCgpJ
IGhhdmUgQWNrZWQgdGhpcyBwYXRjaCwgYnV0IHJlbWVtYmVyICp0aGlzKiBpcyB0aGUgZXhjZXB0
aW9uIHJhdGhlcgp0aGFuIHRoZSBydWxlLiAgSWYvd2hlbiB3ZSBoYXZlIGEgY2FzZSB3aGVyZSBh
IGNvbnRyaWJ1dG9yIHdvcmtzCmNyb3NzLXN1YnN5c3RlbSB3aXRoIERSTSBhbmQgdGhlIGNvZGUv
ZmlsZSBhZGFwdGVkIGlzIGxpdmUgKG1vcmUKbGlrZWx5IHRvIGNoYW5nZSksIEkgd2lsbCBoYXZl
IHRvIGluc2lzdCBvbiBhbiBpbW11dGFibGUgYnJhbmNoCnN0cmF0ZWd5LiAgRFJNIHdpbGwgaGF2
ZSB0byBkZWFsIHdpdGggdGhhdCBhcHByb3ByaWF0ZWx5LgoKLS0gCkxlZSBKb25lcyBb5p2O55C8
5pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBz
b3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdp
dHRlciB8IEJsb2cKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
