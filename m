Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E3131029B7
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 17:48:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D0756E9A2;
	Tue, 19 Nov 2019 16:48:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AC126E9B5
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 16:48:50 +0000 (UTC)
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-372-6oBfOAqaM8efvTpbm7FD7Q-1; Tue, 19 Nov 2019 11:48:45 -0500
Received: by mail-wr1-f71.google.com with SMTP id q12so18782012wrr.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 08:48:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=bQY9tLNNxnbdPwtEhggYUFtw2jJHqDVh8BuZ6Z2Kho0=;
 b=kFRN3qVhOGLoJTuRxHhkHl+Gq8RTfLgPVzo/SwpfmRAvWqlAETOCmkOevHN+jHfnZi
 t+yoIr9oPSJj85TYmvElSOBhIS5OThIimRsuABqqLt2aIuNzyVDN0fVKLXKBWsU+WJg0
 XB/hJNfe22kUV/vuIK/KX7j/GVD1xWmxyCucrKvD//l9P4Kuu9ER9HVAltKXUo/1YiM8
 T9NJHRwE5e3RPLIzfhwR774mhR06Syhml/r+UckmEoqSWtoskWnELzZY9SiWowE2bsb7
 XSYV/yYIcQhQ/mj/Xm+6r/QtbMvY+YwcCM/wrH1nS6VoTbjhuq3iBOn47rCcCJFrBrqu
 TyiQ==
X-Gm-Message-State: APjAAAVlvojbzRMGLvBHQPNs196/i38ydYO1YWO/ApHYqLGD/tG0v0qC
 fJw4nLeynvY41l+/BeKTMKve9qGPSl5lm0vznE+30onm9iPAInbxP6+JXi7PEGieOkob99S6DR3
 aAHWyYU1YOy2Sbx6bUSAQ/WmEHrTO
X-Received: by 2002:adf:b686:: with SMTP id j6mr27356807wre.186.1574182124285; 
 Tue, 19 Nov 2019 08:48:44 -0800 (PST)
X-Google-Smtp-Source: APXvYqwApib8Jl+2FG1ncYwG6183TIRBPyyBXi7Zjqx2NP//yeAiiCOVAsxyxV3giwkvkDX1dBtvoA==
X-Received: by 2002:adf:b686:: with SMTP id j6mr27356787wre.186.1574182124020; 
 Tue, 19 Nov 2019 08:48:44 -0800 (PST)
Received: from shalem.localdomain (84-106-84-65.cable.dynamic.v4.ziggo.nl.
 [84.106.84.65])
 by smtp.gmail.com with ESMTPSA id d11sm27830196wrn.28.2019.11.19.08.48.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 Nov 2019 08:48:43 -0800 (PST)
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20191119151818.67531-1-hdegoede@redhat.com>
 <20191119151818.67531-4-hdegoede@redhat.com>
 <20191119154717.GA1208@intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <0b71327b-4afd-1ff2-3e72-7b1b713f12b7@redhat.com>
Date: Tue, 19 Nov 2019 17:48:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20191119154717.GA1208@intel.com>
Content-Language: en-US
X-MC-Unique: 6oBfOAqaM8efvTpbm7FD7Q-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1574182129;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3bp3KrK4PHmkU4mU+tFATJPu8Jpbe5Nja6U4AQyzxEs=;
 b=iqtEhFhAdK7nBmNIdqnrEtXu5Uw8f+Mb6C1ClNtW7YqrK/6FtKLtS1G4vA+4XH6dtTt8yg
 LDuAWDFszy0vZHPPxChId4j+rmf5onrgwqfzUt+HieYBQm5LITtWR4iKpsRy6/zGhEuL7A
 XPfc4cnX+w6m5i3avbR3jVyyDIx2F68=
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: DSI: select correct PWM
 controller to use based on the VBT
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 linux-acpi@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Lee Jones <lee.jones@linaro.org>, Len Brown <lenb@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpPbiAxOS0xMS0yMDE5IDE2OjQ3LCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6Cj4gT24gVHVl
LCBOb3YgMTksIDIwMTkgYXQgMDQ6MTg6MThQTSArMDEwMCwgSGFucyBkZSBHb2VkZSB3cm90ZToK
Pj4gQXQgbGVhc3QgQmF5IFRyYWlsIChCWVQpIGFuZCBDaGVycnkgVHJhaWwgKENIVCkgZGV2aWNl
cyBjYW4gdXNlIDEgb2YgMgo+PiBkaWZmZXJlbnQgUFdNIGNvbnRyb2xsZXJzIGZvciBjb250cm9s
bGluZyB0aGUgTENEJ3MgYmFja2xpZ2h0IGJyaWdodG5lc3MuCj4+IEVpdGhlciB0aGUgb25lIGlu
dGVncmF0ZWQgaW50byB0aGUgUE1JQyBvciB0aGUgb25lIGludGVncmF0ZWQgaW50byB0aGUKPj4g
U29DICh0aGUgMXN0IExQU1MgUFdNIGNvbnRyb2xsZXIpLgo+Pgo+PiBTbyBmYXIgaW4gdGhlIExQ
U1MgY29kZSBvbiBCWVQgd2UgaGF2ZSBza2lwcGVkIHJlZ2lzdGVyaW5nIHRoZSBMUFNTIFBXTQo+
PiBjb250cm9sbGVyICJwd21fYmFja2xpZ2h0IiBsb29rdXAgZW50cnkgd2hlbiBhIENyeXN0YWwg
Q292ZSBQTUlDIGlzCj4+IHByZXNlbnQsIGFzc3VtaW5nIHRoYXQgaW4gdGhpcyBjYXNlIHRoZSBQ
TUlDIFBXTSBjb250cm9sbGVyIHdpbGwgYmUgdXNlZC4KPj4KPj4gT24gQ0hUIHdlIGhhdmUgYmVl
biByZWx5aW5nIG9uIG9ubHkgMSBvZiB0aGUgMiBQV00gY29udHJvbGxlcnMgYmVpbmcKPj4gZW5h
YmxlZCBpbiB0aGUgRFNEVCBhdCB0aGUgc2FtZSB0aW1lOyBhbmQgYWx3YXlzIHJlZ2lzdGVyZWQg
dGhlIGxvb2t1cC4KPj4KPj4gU28gZmFyIHRoaXMgaGFzIGJlZW4gd29ya2luZywgYnV0IHRoZSBj
b3JyZWN0IHdheSB0byBkZXRlcm1pbmUgd2hpY2ggUFdNCj4+IGNvbnRyb2xsZXIgbmVlZHMgdG8g
YmUgdXNlZCBpcyBieSBjaGVja2luZyBhIGJpdCBpbiB0aGUgVkJUIHRhYmxlIGFuZAo+PiByZWNl
bnRseSBJJ3ZlIGxlYXJuZWQgYWJvdXQgMiBkaWZmZXJlbnQgQllUIGRldmljZXM6Cj4+IFBvaW50
IG9mIFZpZXcgTU9CSUkgVEFCLVA4MDBXCj4+IEFjZXIgU3dpdGNoIDEwIFNXNS0wMTIKPj4KPj4g
V2hpY2ggdXNlIGEgQ3J5c3RhbCBDb3ZlIFBNSUMsIHlldCB0aGUgTENEIGlzIGNvbm5lY3RlZCB0
byB0aGUgU29DL0xQU1MKPj4gUFdNIGNvbnRyb2xsZXIgKGFuZCB0aGUgVkJUIGNvcnJlY3RseSBp
bmRpY2F0ZXMgdGhpcyksIHNvIGhlcmUgb3VyIG9sZAo+PiBoZXVyaXN0aWNzIGZhaWwuCj4+Cj4+
IFRoaXMgY29tbWl0IGZpeGVzIHVzaW5nIHRoZSB3cm9uZyBQV00gY29udHJvbGxlciBvbiB0aGVz
ZSBkZXZpY2VzIGJ5Cj4+IGNhbGxpbmcgcHdtX2dldCgpIGZvciB0aGUgcmlnaHQgUFdNIGNvbnRy
b2xsZXIgYmFzZWQgb24gdGhlCj4+IFZCVCBkc2kuY29uZmlnLnB3bV9ibGMgYml0Lgo+Pgo+PiBO
b3RlIHRoaXMgaXMgcGFydCBvZiBhIHNlcmllcyB3aGljaCBjb250YWlucyAyIG90aGVyIHBhdGNo
ZXMgd2hpY2ggcmVuYW1lcwo+PiB0aGUgUFdNIGxvb2t1cCBmb3IgdGhlIDFzdCBTb0MvTFBTUyBQ
V00gZnJvbSAicHdtX2JhY2tsaWdodCIgdG8KPj4gInB3bV9wbWljX2JhY2tsaWdodCIgYW5kIHRo
ZSBQV00gbG9va3VwIGZvciB0aGUgQ3J5c3RhbCBDb3ZlIFBNSUMgUFdNCj4+IGZyb20gInB3bV9i
YWNrbGlnaHQiIHRvICJwd21fcG1pY19iYWNrbGlnaHQiLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBI
YW5zIGRlIEdvZWRlIDxoZGVnb2VkZUByZWRoYXQuY29tPgo+PiAtLS0KPj4gICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3BhbmVsLmMgfCAxNiArKysrKysrKysrKysrLS0tCj4+
ICAgMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4+Cj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3BhbmVsLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3BhbmVsLmMKPj4gaW5kZXggYmMx
NGU5YzAyODVhLi5kZGNmMzExZDExMTQgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcGFuZWwuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3BhbmVsLmMKPj4gQEAgLTE4NDAsMTMgKzE4NDAsMjIgQEAgc3RhdGljIGlu
dCBwd21fc2V0dXBfYmFja2xpZ2h0KHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvciwK
Pj4gICAJCQkgICAgICAgZW51bSBwaXBlIHBpcGUpCj4+ICAgewo+PiAgIAlzdHJ1Y3QgZHJtX2Rl
dmljZSAqZGV2ID0gY29ubmVjdG9yLT5iYXNlLmRldjsKPj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRldik7Cj4+ICAgCXN0cnVjdCBpbnRlbF9wYW5lbCAq
cGFuZWwgPSAmY29ubmVjdG9yLT5wYW5lbDsKPj4gKwljb25zdCBjaGFyICpkZXNjOwo+PiAgIAlp
bnQgcmV0dmFsOwo+PiAgIAo+PiAtCS8qIEdldCB0aGUgUFdNIGNoaXAgZm9yIGJhY2tsaWdodCBj
b250cm9sICovCj4+IC0JcGFuZWwtPmJhY2tsaWdodC5wd20gPSBwd21fZ2V0KGRldi0+ZGV2LCAi
cHdtX2JhY2tsaWdodCIpOwo+PiArCS8qIEdldCB0aGUgcmlnaHQgUFdNIGNoaXAgZm9yIERTSSBi
YWNrbGlnaHQgYWNjb3JkaW5nIHRvIFZCVCAqLwo+PiArCWlmIChkZXZfcHJpdi0+dmJ0LmRzaS5j
b25maWctPnB3bV9ibGMgPT0gUFBTX0JMQ19QTUlDKSB7Cj4+ICsJCXBhbmVsLT5iYWNrbGlnaHQu
cHdtID0gcHdtX2dldChkZXYtPmRldiwgInB3bV9wbWljX2JhY2tsaWdodCIpOwo+PiArCQlkZXNj
ID0gIlBNSUMiOwo+PiArCX0gZWxzZSB7Cj4+ICsJCXBhbmVsLT5iYWNrbGlnaHQucHdtID0gcHdt
X2dldChkZXYtPmRldiwgInB3bV9zb2NfYmFja2xpZ2h0Iik7Cj4+ICsJCWRlc2MgPSAiU29DIjsK
Pj4gKwl9Cj4gCj4gTWlnaHQgd2Ugd2FudCB0aGUgc2FtZSB0aGluZyBmb3IgdGhlIHBhbmVsIGVu
YWJsZSBncGlvPwoKClRMO0RSOiB5ZXMgYnV0IHRoYXQgaXMgZm9yIGEgc2VwYXJhdGUgc2VyaWVz
LCB3aGljaCBjdXJyZW50bHkgb25seSBleGlzdHMgaW4gbXkgaGVhZC4KCkxvbmdlciBzdG9yeToK
Ckl0IGxvb2tzIGxpa2Ugb24gQllUIHdlIG5lZWQgdG8gY29udHJvbCBib3RoIFZMVl9HUElPX05D
XzEwX1BBTkVMMV9CS0xURU4gYW5kClZMVl9HUElPX05DXzExX1BBTkVMMV9CS0xUQ1RMIGZyb20g
dmx2X2RzaS5jIHdoZW4gdGhlIExQU1MgaXMgdXNlZCBmb3IgUFdNLgpXaXRoIEJLTFRDVEwgd29y
a2luZyBhcyBhIHBhbmVsX2VuYWJsZSAobmVlZHMgdG8gYmUgZHJpdmVuIGhpZ2ggZWFybHkgb24K
d2hlbiBpbml0aWFsaXppbmcgdGhlIHBhbmVsKSBhbmQgQktMVEVOIGlzIGp1c3QgYSBiYWNrbGln
aHQgZW5hYmxlL2Rpc2FibGUKR1BJTy4KCldpdGhvdXQgdGhpcyBEU0kgcGFuZWxzIHdpbGwgbm90
IGxpZ2h0LXVwIG9uIEJZVCB3aGVuIGEgSERNSSBtb25pdG9yIGlzCmNvbm5lY3RlZCBhbmQgdGhl
IEdPUCBjaG9vc2VzIHRvIGluaXRpYWxpemUgdGhlIEhETUkgcmF0aGVyIHRoZW4gdGhlIHBhbmVs
LApzaW5jZSB0aGVuIHRoZXNlIDIgcGlucyBzdGF5IGxvdy4KCk9uIENIVCB0aGUgTUlQSSBwb3dl
ciBvbi9vZmYgc2VxdWVuY2VzIHNlZW0gdG8gdGFrZSBjYXJlIG9mIHRoaXMgdGhlbXNlbHZlcy4K
Ckkgc3RpbGwgd2FudCB0byBydW4gc29tZSBtb3JlIHRlc3RzLiBDdXJyZW50bHkgaWYgSSBleHBv
cnQgdGhlIDIgZ3Bpb3MgaW4KcXVlc3Rpb24gaW4gc3lzZnMgKHNpbmNlIHRoZWlyIG5vdCBjbGFp
bWVkIHlldCkgYW5kIHJlYWQgdGhlbSB0aGV5IGFsd2F5cwpyZWFkIDAuIEkgaGF2ZSB0aGUgZmVl
bGluZyB0aGlzIGlzIGNhdXNlZCBieSB0aGUgaW5wdXQtYnVmZmVyIG5vdCBiZWluZwplbmFibGVk
IG9uIHRoZXNlIEdQSU9zLCBhbmQgdGhhdCB0aGV5IHJlYWxseSBhcmUgaGlnaC4gU28gSSB3YW50
IHRvIGRvCmEgbGl0dGxlIGhhY2sgdG8gZW5hYmxlIHRoZSBpbnB1dCBidWZmZXIgYW5kIHRoZW4g
c2VlIGlmIGluZGVlZCB0aGV5CmFyZSBoaWdoIHdoZW4gdGhlIEdPUCBoYXMgaW5pdGlhbGl6ZWQg
dGhlIHBhbmVsLgoKVGVzdGluZyBoYXMgYWxyZWFkeSBzaG93biB0aGF0IGRyaXZpbmcgdGhlbSBo
aWdoIG1hbnVhbHkgYmVmb3JlIGxvYWRpbmcKaTkxNSB3aGVuIHRoZSBHT1AgZGlkIG5vdCBpbml0
IHRoZSBwYW5lbCBmaXhlcyB0aGUgcGFuZWwgbm90IGxpZ2h0aW5nIHVwLgpTbyBJJ20gcHJldHR5
IHN1cmUgdGhhdCB0aGlzIGlzIHRoZSBjYXNlLCBidXQgSSB3YW50IHRvIHZlcmlmeSB0aGlzIGJl
Zm9yZQp3cml0aW5nIGEgc2VyaWVzIGZvciB0aGF0LgoKUmVnYXJkcywKCkhhbnMKCgoKPiAKPj4g
Kwo+PiAgIAlpZiAoSVNfRVJSKHBhbmVsLT5iYWNrbGlnaHQucHdtKSkgewo+PiAtCQlEUk1fRVJS
T1IoIkZhaWxlZCB0byBvd24gdGhlIHB3bSBjaGlwXG4iKTsKPj4gKwkJRFJNX0VSUk9SKCJGYWls
ZWQgdG8gZ2V0IHRoZSAlcyBQV00gY2hpcFxuIiwgZGVzYyk7Cj4+ICAgCQlwYW5lbC0+YmFja2xp
Z2h0LnB3bSA9IE5VTEw7Cj4+ICAgCQlyZXR1cm4gLUVOT0RFVjsKPj4gICAJfQo+PiBAQCAtMTg3
Myw2ICsxODgyLDcgQEAgc3RhdGljIGludCBwd21fc2V0dXBfYmFja2xpZ2h0KHN0cnVjdCBpbnRl
bF9jb25uZWN0b3IgKmNvbm5lY3RvciwKPj4gICAJCQkJIENSQ19QTUlDX1BXTV9QRVJJT0RfTlMp
Owo+PiAgIAlwYW5lbC0+YmFja2xpZ2h0LmVuYWJsZWQgPSBwYW5lbC0+YmFja2xpZ2h0LmxldmVs
ICE9IDA7Cj4+ICAgCj4+ICsJRFJNX0lORk8oIlVzaW5nICVzIFBXTSBmb3IgTENEIGJhY2tsaWdo
dCBjb250cm9sXG4iLCBkZXNjKTsKPj4gICAJcmV0dXJuIDA7Cj4+ICAgfQo+PiAgIAo+PiAtLSAK
Pj4gMi4yMy4wCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
