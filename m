Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 721661520D
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2019 18:56:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F3BA899E6;
	Mon,  6 May 2019 16:56:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EF1989916
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2019 16:56:08 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id m4so16010545edd.8
 for <intel-gfx@lists.freedesktop.org>; Mon, 06 May 2019 09:56:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=6kae6SBAzMukw2uO1sb4J3ToEbWPyJgQbuxLyO0KXKk=;
 b=egEpNTD3/nklHg5YzB7Fr6oE9x3/0Plq3fX8PeGqEZgGVIxR0OMEsej7dIZmOzjDft
 nD/hoezKLZLacxZ1DqyoGg53aV76x7sP32HwGzxIbr6zf8NIFnkyOH41W3FfKayc+zld
 9YDCRHnBQh//Z4LDO8DeAXCVScRg/JnBPGirVpJGF29my0S/ZikOtqZtLkoWbeHS3IYf
 jEYOXMrUo3uW8NKJAp0pByols4WiMDZ0uo0IxwUZOhRZJB9E7UaEIiYftAuSON5OKRDT
 O+ZtXzFlYk573DRh2eUMuaktfXX7qnQABxOPUVxnr7TJ54Xup2Ynku335ZgnbbH2bvHp
 IBHw==
X-Gm-Message-State: APjAAAXWjWs48X+M2cjyFWqWbhYU+Nka1KeRokUk/Swg7cElaxYIY0ca
 SKi3qNisdFofqhno+aes/umyBg==
X-Google-Smtp-Source: APXvYqyow49Mu+RLMUIfkrceAb2RIPpFeD+xblZohQU3gGxx6AGUt6yx4v1Jv3yRG+Jkg9YhGwHBpA==
X-Received: by 2002:a17:906:7f18:: with SMTP id
 d24mr4346370ejr.95.1557161766855; 
 Mon, 06 May 2019 09:56:06 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id x30sm3242262edd.74.2019.05.06.09.56.05
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 06 May 2019 09:56:05 -0700 (PDT)
Date: Mon, 6 May 2019 18:56:03 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Ramalingam C <ramalingam.c@intel.com>
Message-ID: <20190506165603.GL17751@phenom.ffwll.local>
References: <20190502132303.27696-1-ramalingam.c@intel.com>
 <20190502132303.27696-4-ramalingam.c@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190502132303.27696-4-ramalingam.c@intel.com>
X-Operating-System: Linux phenom 4.14.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6kae6SBAzMukw2uO1sb4J3ToEbWPyJgQbuxLyO0KXKk=;
 b=kXCza1yNBec3kHyUfSFgcZHXa4Hh60juePHkWaoqpArb+hTSHli+sWCUwRa4rx6IHP
 wk6U2F0/CLpKv2FworiBXFYkLIs9vGS5bUdYOltryWswk8uik6U0pW3T8NijfzbCeEw7
 //3npK+MDaSwDfXCNMENxFh6zoUHzBkdvjZkE=
Subject: Re: [Intel-gfx] [PATCH v6 03/10] drm: revocation check at drm
 subsystem
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
Cc: daniel.vetter@intel.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBNYXkgMDIsIDIwMTkgYXQgMDY6NTI6NTZQTSArMDUzMCwgUmFtYWxpbmdhbSBDIHdy
b3RlOgo+IE9uIGV2ZXJ5IGhkY3AgcmV2b2NhdGlvbiBjaGVjayByZXF1ZXN0IFNSTSBpcyByZWFk
IGZyb20gZncgZmlsZQo+IC9saWIvZmlybXdhcmUvZGlzcGxheV9oZGNwX3NybS5iaW4KPiAKPiBT
Uk0gdGFibGUgaXMgcGFyc2VkIGFuZCBzdG9yZWQgYXQgZHJtX2hkY3AuYywgd2l0aCBmdW5jdGlv
bnMgZXhwb3J0ZWQKPiBmb3IgdGhlIHNlcnZpY2VzIGZvciByZXZvY2F0aW9uIGNoZWNrIGZyb20g
ZHJpdmVycyAod2hpY2gKPiBpbXBsZW1lbnRzIHRoZSBIRENQIGF1dGhlbnRpY2F0aW9uKQo+IAo+
IFRoaXMgcGF0Y2ggaGFuZGxlcyB0aGUgSERDUDEuNCBhbmQgMi4yIHZlcnNpb25zIG9mIFNSTSB0
YWJsZS4KPiAKPiB2MjoKPiAgIG1vdmVkIHRoZSB1QVBJIHRvIHJlcXVlc3RfZmlybXdhcmVfZGly
ZWN0KCkgW0RhbmllbF0KPiB2MzoKPiAgIGtkb2MgYWRkZWQuIFtEYW5pZWxdCj4gICBzcm1faGVh
ZGVyIHVuaWZpZWQgYW5kIGJpdCBmaWVsZCBkZWZpbml0aW9ucyBhcmUgcmVtb3ZlZC4gW0Rhbmll
bF0KPiAgIGxvY2tpbmcgaW1wcm92ZWQuIFtEYW5pZWxdCj4gICB2cmwgbGVuZ3RoIHZpb2xhdGlv
biBpcyBmaXhlZC4gW0RhbmllbF0KPiAKPiBTaWduZWQtb2ZmLWJ5OiBSYW1hbGluZ2FtIEMgPHJh
bWFsaW5nYW0uY0BpbnRlbC5jb20+Cj4gU3VnZ2VzdGVkLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5p
ZWxAZmZ3bGwuY2g+CgpGb3VuZCBhIGZldyBzbWFsbCBkZXRhaWxzIHRvIHBvbGlzaCwgYnV0IGxv
b2tzIGdvb2QgdG8gbWUuIFdpdGggdGhlCmRldGFpbHMgYWRkcmVzc2VkOgoKUmV2aWV3ZWQtYnk6
IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+CgpXZSBhbHNvIHN0aWxsIG5l
ZWQgYW4gYWNrIG9uIHRoZSBmaXJtd2FyZSBibG9iIGFwcHJvYWNoIGZyb20gTWF0dCBSb3BlciBv
cgpzb21lb25lIGVsc2UgYXQgaW90ZyBJIHRoaW5rLgoKQ2hlZXJzLCBEYW5pZWwKCj4gLS0tCj4g
IERvY3VtZW50YXRpb24vZ3B1L2RybS1rbXMtaGVscGVycy5yc3QgfCAgIDYgKwo+ICBkcml2ZXJz
L2dwdS9kcm0vTWFrZWZpbGUgICAgICAgICAgICAgIHwgICAyICstCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9kcm1faGRjcC5jICAgICAgICAgICAgfCAzNDIgKysrKysrKysrKysrKysrKysrKysrKysrKysK
PiAgZHJpdmVycy9ncHUvZHJtL2RybV9pbnRlcm5hbC5oICAgICAgICB8ICAgNCArCj4gIGRyaXZl
cnMvZ3B1L2RybS9kcm1fc3lzZnMuYyAgICAgICAgICAgfCAgIDIgKwo+ICBpbmNsdWRlL2RybS9k
cm1faGRjcC5oICAgICAgICAgICAgICAgIHwgIDI0ICsrCj4gIDYgZmlsZXMgY2hhbmdlZCwgMzc5
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZl
cnMvZ3B1L2RybS9kcm1faGRjcC5jCj4gCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZ3B1
L2RybS1rbXMtaGVscGVycy5yc3QgYi9Eb2N1bWVudGF0aW9uL2dwdS9kcm0ta21zLWhlbHBlcnMu
cnN0Cj4gaW5kZXggMTQxMDJhZTAzNWRjLi4wZmU3MjZhNmVlNjcgMTAwNjQ0Cj4gLS0tIGEvRG9j
dW1lbnRhdGlvbi9ncHUvZHJtLWttcy1oZWxwZXJzLnJzdAo+ICsrKyBiL0RvY3VtZW50YXRpb24v
Z3B1L2RybS1rbXMtaGVscGVycy5yc3QKPiBAQCAtMTgxLDYgKzE4MSwxMiBAQCBQYW5lbCBIZWxw
ZXIgUmVmZXJlbmNlCj4gIC4uIGtlcm5lbC1kb2M6OiBkcml2ZXJzL2dwdS9kcm0vZHJtX3BhbmVs
X29yaWVudGF0aW9uX3F1aXJrcy5jCj4gICAgIDpleHBvcnQ6Cj4gIAo+ICtIRENQIEhlbHBlciBG
dW5jdGlvbnMgUmVmZXJlbmNlCj4gKz09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KPiAr
Cj4gKy4uIGtlcm5lbC1kb2M6OiBkcml2ZXJzL2dwdS9kcm0vZHJtX2hkY3AuYwo+ICsgICA6ZXhw
b3J0Ogo+ICsKPiAgRGlzcGxheSBQb3J0IEhlbHBlciBGdW5jdGlvbnMgUmVmZXJlbmNlCj4gID09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQo+ICAKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL01ha2VmaWxlIGIvZHJpdmVycy9ncHUvZHJtL01ha2VmaWxlCj4gaW5k
ZXggNzJmNTAzNmQ5YmZhLi5kZDAyZTlkZWM4MTAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL01ha2VmaWxlCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL01ha2VmaWxlCj4gQEAgLTE3LDcg
KzE3LDcgQEAgZHJtLXkgICAgICAgOj0JZHJtX2F1dGgubyBkcm1fY2FjaGUubyBcCj4gIAkJZHJt
X3BsYW5lLm8gZHJtX2NvbG9yX21nbXQubyBkcm1fcHJpbnQubyBcCj4gIAkJZHJtX2R1bWJfYnVm
ZmVycy5vIGRybV9tb2RlX2NvbmZpZy5vIGRybV92YmxhbmsubyBcCj4gIAkJZHJtX3N5bmNvYmou
byBkcm1fbGVhc2UubyBkcm1fd3JpdGViYWNrLm8gZHJtX2NsaWVudC5vIFwKPiAtCQlkcm1fYXRv
bWljX3VhcGkubwo+ICsJCWRybV9hdG9taWNfdWFwaS5vIGRybV9oZGNwLm8KPiAgCj4gIGRybS0k
KENPTkZJR19EUk1fTEVHQUNZKSArPSBkcm1fbGVnYWN5X21pc2MubyBkcm1fYnVmcy5vIGRybV9j
b250ZXh0Lm8gZHJtX2RtYS5vIGRybV9zY2F0dGVyLm8gZHJtX2xvY2subwo+ICBkcm0tJChDT05G
SUdfRFJNX0xJQl9SQU5ET00pICs9IGxpYi9kcm1fcmFuZG9tLm8KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2RybV9oZGNwLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2hkY3AuYwo+IG5l
dyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi5kYzBlMTM0MDkyMjEKPiAt
LS0gL2Rldi9udWxsCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9oZGNwLmMKPiBAQCAtMCww
ICsxLDM0MiBAQAo+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAo+ICsvKgo+
ICsgKiBDb3B5cmlnaHQgKEMpIDIwMTkgSW50ZWwgQ29ycG9yYXRpb24uCj4gKyAqCj4gKyAqIEF1
dGhvcnM6Cj4gKyAqIFJhbWFsaW5nYW0gQyA8cmFtYWxpbmdhbS5jQGludGVsLmNvbT4KPiArICov
Cj4gKwo+ICsjaW5jbHVkZSA8bGludXgvZGV2aWNlLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9lcnIu
aD4KPiArI2luY2x1ZGUgPGxpbnV4L2dmcC5oPgo+ICsjaW5jbHVkZSA8bGludXgvZXhwb3J0Lmg+
Cj4gKyNpbmNsdWRlIDxsaW51eC9zbGFiLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9maXJtd2FyZS5o
Pgo+ICsKPiArI2luY2x1ZGUgPGRybS9kcm1faGRjcC5oPgo+ICsjaW5jbHVkZSA8ZHJtL2RybV9z
eXNmcy5oPgo+ICsjaW5jbHVkZSA8ZHJtL2RybV9wcmludC5oPgo+ICsjaW5jbHVkZSA8ZHJtL2Ry
bV9kZXZpY2UuaD4KPiArCj4gK3N0cnVjdCBoZGNwX3NybSB7Cj4gKwl1OCAqc3JtX2J1ZjsKCkFs
bG9jYXRlZCwgYnV0IHNlZW1zIHRvIG5vdCBiZSB1c2VkLgoKPiArCXNpemVfdCByZWNlaXZlZF9z
cm1fc3o7CgpTZWVtcyB0byBiZSB1bnVzZWQuIFNlZW1zIHRvIGJvdGggYmUgbGVmdG92ZXJzIGZy
b20gdGhlIHN5c2ZzIGludGVyZmFjZS4KCj4gKwl1MzIgcmV2b2tlZF9rc3ZfY250Owo+ICsJdTgg
KnJldm9rZWRfa3N2X2xpc3Q7Cj4gKwo+ICsJLyogTXV0ZXggdG8gcHJvdGVjdCBhYm92ZSBzdHJ1
Y3QgbWVtYmVyICovCj4gKwlzdHJ1Y3QgbXV0ZXggbXV0ZXg7Cj4gK30gKnNybV9kYXRhOwo+ICsK
PiArc3RhdGljIGlubGluZSB2b2lkIGRybV9oZGNwX3ByaW50X2tzdihjb25zdCB1OCAqa3N2KQo+
ICt7Cj4gKwlEUk1fREVCVUcoIlx0JSMwMngsICUjMDJ4LCAlIzAyeCwgJSMwMngsICUjMDJ4XG4i
LAo+ICsJCSAga3N2WzBdLCBrc3ZbMV0sIGtzdlsyXSwga3N2WzNdLCBrc3ZbNF0pOwo+ICt9Cj4g
Kwo+ICtzdGF0aWMgdTMyIGRybV9oZGNwX2dldF9yZXZva2VkX2tzdl9jb3VudChjb25zdCB1OCAq
YnVmLCB1MzIgdnJsc19sZW5ndGgpCj4gK3sKPiArCXUzMiBwYXJzZWRfYnl0ZXMgPSAwLCBrc3Zf
Y291bnQgPSAwLCB2cmxfa3N2X2NudCwgdnJsX3N6Owo+ICsKPiArCXdoaWxlIChwYXJzZWRfYnl0
ZXMgPCB2cmxzX2xlbmd0aCkgewo+ICsJCXZybF9rc3ZfY250ID0gKmJ1ZjsKPiArCQlrc3ZfY291
bnQgKz0gdnJsX2tzdl9jbnQ7Cj4gKwo+ICsJCXZybF9zeiA9ICh2cmxfa3N2X2NudCAqIERSTV9I
RENQX0tTVl9MRU4pICsgMTsKPiArCQlidWYgKz0gdnJsX3N6Owo+ICsJCXBhcnNlZF9ieXRlcyAr
PSB2cmxfc3o7Cj4gKwl9Cj4gKwo+ICsJLyoKPiArCSAqIFdoZW4gdnJscyBhcmUgbm90IHZhbGlk
LCBrc3ZzIGFyZSBub3QgY29uc2lkZXJlZC4KPiArCSAqIEhlbmNlIFNSTSB3aWxsIGJlIGRpc2Nh
cmRlZC4KPiArCSAqLwo+ICsJaWYgKHBhcnNlZF9ieXRlcyAhPSB2cmxzX2xlbmd0aCkKPiArCQlr
c3ZfY291bnQgPSAwOwo+ICsKPiArCXJldHVybiBrc3ZfY291bnQ7Cj4gK30KPiArCj4gK3N0YXRp
YyB1MzIgZHJtX2hkY3BfZ2V0X3Jldm9rZWRfa3N2cyhjb25zdCB1OCAqYnVmLCB1OCAqcmV2b2tl
ZF9rc3ZfbGlzdCwKPiArCQkJCSAgICAgdTMyIHZybHNfbGVuZ3RoKQo+ICt7Cj4gKwl1MzIgcGFy
c2VkX2J5dGVzID0gMCwga3N2X2NvdW50ID0gMDsKPiArCXUzMiB2cmxfa3N2X2NudCwgdnJsX2tz
dl9zeiwgdnJsX2lkeCA9IDA7Cj4gKwo+ICsJZG8gewo+ICsJCXZybF9rc3ZfY250ID0gKmJ1ZjsK
PiArCQl2cmxfa3N2X3N6ID0gdnJsX2tzdl9jbnQgKiBEUk1fSERDUF9LU1ZfTEVOOwo+ICsKPiAr
CQlidWYrKzsKPiArCj4gKwkJRFJNX0RFQlVHKCJ2cmw6ICVkLCBSZXZva2VkIEtTVnM6ICVkXG4i
LCB2cmxfaWR4KyssCj4gKwkJCSAgdnJsX2tzdl9jbnQpOwo+ICsJCW1lbWNweShyZXZva2VkX2tz
dl9saXN0LCBidWYsIHZybF9rc3Zfc3opOwo+ICsKPiArCQlrc3ZfY291bnQgKz0gdnJsX2tzdl9j
bnQ7Cj4gKwkJcmV2b2tlZF9rc3ZfbGlzdCArPSB2cmxfa3N2X3N6Owo+ICsJCWJ1ZiArPSB2cmxf
a3N2X3N6Owo+ICsKPiArCQlwYXJzZWRfYnl0ZXMgKz0gKHZybF9rc3Zfc3ogKyAxKTsKPiArCX0g
d2hpbGUgKHBhcnNlZF9ieXRlcyA8IHZybHNfbGVuZ3RoKTsKPiArCj4gKwlyZXR1cm4ga3N2X2Nv
dW50Owo+ICt9Cj4gKwo+ICtzdGF0aWMgaW5saW5lIHUzMiBnZXRfdnJsX2xlbmd0aChjb25zdCB1
OCAqYnVmKQo+ICt7Cj4gKwlyZXR1cm4gKHUzMikoYnVmWzBdIDw8IDE2IHwgYnVmWzFdIDw8IDgg
fCBidWZbMl0pOwoKVGhpcyBpcyB0aGUgc2FtZSBjb252ZXJzaW9uIGFzIGRybV9oZGNwMl9zZXFf
bnVtX3RvX3UzMi4gTWF5YmUgcmVuYW1lIHRoYXQKdG8gZHJtX2hkY3BfYmUyNF9ieXRlc190b19j
cHUgYW5kIHVzZSB0aGF0IGluc3RlYWQgb2Ygd2hhdCB5b3UgaGF2ZSBoYXJlLgpQbHVzIHJlbmFt
ZSB0aGUgb3RoZXIgZnVuY3Rpb24gdG8gZHJtX2hkY3BfdTMyX3RvX2IyNF9ieXRlcyBmb3IKY29u
c2lzdGVuY3kuIFByb2JhYmx5IGJlc3QgdG8gZG8gdGhhdCBpbiBhIHNtYWxsIHByZXAgcGF0Y2gu
Cj4gK30KPiArCj4gK3N0YXRpYyBpbnQgZHJtX2hkY3BfcGFyc2VfaGRjcDFfc3JtKGNvbnN0IHU4
ICpidWYsIHNpemVfdCBjb3VudCkKPiArewo+ICsJc3RydWN0IGhkY3Bfc3JtX2hlYWRlciAqaGVh
ZGVyOwo+ICsJdTMyIHZybF9sZW5ndGgsIGtzdl9jb3VudDsKPiArCj4gKwlpZiAoY291bnQgPCAo
c2l6ZW9mKHN0cnVjdCBoZGNwX3NybV9oZWFkZXIpICsKPiArCSAgICBEUk1fSERDUF8xXzRfVlJM
X0xFTkdUSF9TSVpFICsgRFJNX0hEQ1BfMV80X0RDUF9TSUdfU0laRSkpIHsKPiArCQlEUk1fRVJS
T1IoIkludmFsaWQgYmxvYiBsZW5ndGhcbiIpOwo+ICsJCXJldHVybiAtRUlOVkFMOwo+ICsJfQo+
ICsKPiArCWhlYWRlciA9IChzdHJ1Y3QgaGRjcF9zcm1faGVhZGVyICopYnVmOwo+ICsJRFJNX0RF
QlVHKCJTUk0gSUQ6IDB4JXgsIFNSTSBWZXI6IDB4JXgsIFNSTSBHZW4gTm86IDB4JXhcbiIsCj4g
KwkJICBoZWFkZXItPnNybV9pZCwKPiArCQkgIF9fc3dhYjE2KGhlYWRlci0+c3JtX3ZlcnNpb24p
LCBoZWFkZXItPnNybV9nZW5fbm8pOwoKcy9fX3N3YWIxNi9iZTE2X3RvX2NwdS8gZXZlcnl3aGVy
ZS4gT3RoZXJ3aXNlIGl0J2xsIHN0b3Agd29ya2luZyBvbiBiaWcKZW5kaWFuIGNwdXMuIFllcyB3
b24ndCBtYXR0ZXIsIGJ1dCBiZXR0ZXIgY29ycmVjdCwgaXQncyBhbHNvIGJldHRlcgpzZWxmLWRv
Y3VtZW50aW5nIGNvZGUuCgoKPiArCj4gKwlXQVJOX09OKGhlYWRlci0+cmVzZXJ2ZWQpOwo+ICsK
PiArCWJ1ZiA9IGJ1ZiArIHNpemVvZigqaGVhZGVyKTsKPiArCXZybF9sZW5ndGggPSBnZXRfdnJs
X2xlbmd0aChidWYpOwo+ICsJaWYgKGNvdW50IDwgKHNpemVvZihzdHJ1Y3QgaGRjcF9zcm1faGVh
ZGVyKSArIHZybF9sZW5ndGgpIHx8Cj4gKwkgICAgdnJsX2xlbmd0aCA8IChEUk1fSERDUF8xXzRf
VlJMX0xFTkdUSF9TSVpFICsKPiArCQkJICBEUk1fSERDUF8xXzRfRENQX1NJR19TSVpFKSkgewo+
ICsJCURSTV9FUlJPUigiSW52YWxpZCBibG9iIGxlbmd0aCBvciB2cmwgbGVuZ3RoXG4iKTsKPiAr
CQlyZXR1cm4gLUVJTlZBTDsKPiArCX0KPiArCj4gKwkvKiBMZW5ndGggb2YgdGhlIGFsbCB2cmxz
IGNvbWJpbmVkICovCj4gKwl2cmxfbGVuZ3RoIC09IChEUk1fSERDUF8xXzRfVlJMX0xFTkdUSF9T
SVpFICsKPiArCQkgICAgICAgRFJNX0hEQ1BfMV80X0RDUF9TSUdfU0laRSk7Cj4gKwo+ICsJaWYg
KCF2cmxfbGVuZ3RoKSB7Cj4gKwkJRFJNX0VSUk9SKCJObyB2cmwgZm91bmRcbiIpOwo+ICsJCXJl
dHVybiAtRUlOVkFMOwo+ICsJfQo+ICsKPiArCWJ1ZiArPSBEUk1fSERDUF8xXzRfVlJMX0xFTkdU
SF9TSVpFOwo+ICsJa3N2X2NvdW50ID0gZHJtX2hkY3BfZ2V0X3Jldm9rZWRfa3N2X2NvdW50KGJ1
ZiwgdnJsX2xlbmd0aCk7Cj4gKwlpZiAoIWtzdl9jb3VudCkgewo+ICsJCURSTV9ERUJVRygiUmV2
b2tlZCBLU1YgY291bnQgaXMgMFxuIik7Cj4gKwkJcmV0dXJuIGNvdW50Owo+ICsJfQo+ICsKPiAr
CWtmcmVlKHNybV9kYXRhLT5yZXZva2VkX2tzdl9saXN0KTsKPiArCXNybV9kYXRhLT5yZXZva2Vk
X2tzdl9saXN0ID0ga2NhbGxvYyhrc3ZfY291bnQsIERSTV9IRENQX0tTVl9MRU4sCj4gKwkJCQkJ
ICAgICBHRlBfS0VSTkVMKTsKPiArCWlmICghc3JtX2RhdGEtPnJldm9rZWRfa3N2X2xpc3QpIHsK
PiArCQlEUk1fRVJST1IoIk91dCBvZiBNZW1vcnlcbiIpOwo+ICsJCXJldHVybiAtRU5PTUVNOwo+
ICsJfQo+ICsKPiArCWlmIChkcm1faGRjcF9nZXRfcmV2b2tlZF9rc3ZzKGJ1Ziwgc3JtX2RhdGEt
PnJldm9rZWRfa3N2X2xpc3QsCj4gKwkJCQkgICAgICB2cmxfbGVuZ3RoKSAhPSBrc3ZfY291bnQp
IHsKPiArCQlzcm1fZGF0YS0+cmV2b2tlZF9rc3ZfY250ID0gMDsKPiArCQlrZnJlZShzcm1fZGF0
YS0+cmV2b2tlZF9rc3ZfbGlzdCk7Cj4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4gKwl9Cj4gKwo+ICsJ
c3JtX2RhdGEtPnJldm9rZWRfa3N2X2NudCA9IGtzdl9jb3VudDsKPiArCXJldHVybiBjb3VudDsK
PiArfQo+ICsKPiArc3RhdGljIGludCBkcm1faGRjcF9wYXJzZV9oZGNwMl9zcm0oY29uc3QgdTgg
KmJ1Ziwgc2l6ZV90IGNvdW50KQo+ICt7Cj4gKwlzdHJ1Y3QgaGRjcF9zcm1faGVhZGVyICpoZWFk
ZXI7Cj4gKwl1MzIgdnJsX2xlbmd0aCwga3N2X2NvdW50LCBrc3Zfc3o7Cj4gKwo+ICsJaWYgKGNv
dW50IDwgKHNpemVvZihzdHJ1Y3QgaGRjcF9zcm1faGVhZGVyKSArCj4gKwkgICAgRFJNX0hEQ1Bf
Ml9WUkxfTEVOR1RIX1NJWkUgKyBEUk1fSERDUF8yX0RDUF9TSUdfU0laRSkpIHsKPiArCQlEUk1f
RVJST1IoIkludmFsaWQgYmxvYiBsZW5ndGhcbiIpOwo+ICsJCXJldHVybiAtRUlOVkFMOwo+ICsJ
fQo+ICsKPiArCWhlYWRlciA9IChzdHJ1Y3QgaGRjcF9zcm1faGVhZGVyICopYnVmOwo+ICsJRFJN
X0RFQlVHKCJTUk0gSUQ6IDB4JXgsIFNSTSBWZXI6IDB4JXgsIFNSTSBHZW4gTm86IDB4JXhcbiIs
Cj4gKwkJICBoZWFkZXItPnNybV9pZCAmIERSTV9IRENQX1NSTV9JRF9NQVNLLAo+ICsJCSAgX19z
d2FiMTYoaGVhZGVyLT5zcm1fdmVyc2lvbiksIGhlYWRlci0+c3JtX2dlbl9ubyk7Cj4gKwo+ICsJ
aWYgKGhlYWRlci0+cmVzZXJ2ZWQpCj4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4gKwo+ICsJYnVmID0g
YnVmICsgc2l6ZW9mKCpoZWFkZXIpOwo+ICsJdnJsX2xlbmd0aCA9IGdldF92cmxfbGVuZ3RoKGJ1
Zik7Cj4gKwo+ICsJaWYgKGNvdW50IDwgKHNpemVvZihzdHJ1Y3QgaGRjcF9zcm1faGVhZGVyKSAr
IHZybF9sZW5ndGgpIHx8Cj4gKwkgICAgdnJsX2xlbmd0aCA8IChEUk1fSERDUF8yX1ZSTF9MRU5H
VEhfU0laRSArCj4gKwkgICAgRFJNX0hEQ1BfMl9EQ1BfU0lHX1NJWkUpKSB7Cj4gKwkJRFJNX0VS
Uk9SKCJJbnZhbGlkIGJsb2IgbGVuZ3RoIG9yIHZybCBsZW5ndGhcbiIpOwo+ICsJCXJldHVybiAt
RUlOVkFMOwo+ICsJfQo+ICsKPiArCS8qIExlbmd0aCBvZiB0aGUgYWxsIHZybHMgY29tYmluZWQg
Ki8KPiArCXZybF9sZW5ndGggLT0gKERSTV9IRENQXzJfVlJMX0xFTkdUSF9TSVpFICsKPiArCQkg
ICAgICAgRFJNX0hEQ1BfMl9EQ1BfU0lHX1NJWkUpOwo+ICsKPiArCWlmICghdnJsX2xlbmd0aCkg
ewo+ICsJCURSTV9FUlJPUigiTm8gdnJsIGZvdW5kXG4iKTsKPiArCQlyZXR1cm4gLUVJTlZBTDsK
PiArCX0KPiArCj4gKwlidWYgKz0gRFJNX0hEQ1BfMl9WUkxfTEVOR1RIX1NJWkU7Cj4gKwlrc3Zf
Y291bnQgPSAoKmJ1ZiA8PCAyKSB8IERSTV9IRENQXzJfS1NWX0NPVU5UXzJfTFNCSVRTKCooYnVm
ICsgMSkpOwo+ICsJaWYgKCFrc3ZfY291bnQpIHsKPiArCQlEUk1fREVCVUcoIlJldm9rZWQgS1NW
IGNvdW50IGlzIDBcbiIpOwo+ICsJCXJldHVybiBjb3VudDsKPiArCX0KPiArCj4gKwlrZnJlZShz
cm1fZGF0YS0+cmV2b2tlZF9rc3ZfbGlzdCk7Cj4gKwlzcm1fZGF0YS0+cmV2b2tlZF9rc3ZfbGlz
dCA9IGtjYWxsb2Moa3N2X2NvdW50LCBEUk1fSERDUF9LU1ZfTEVOLAo+ICsJCQkJCSAgICAgR0ZQ
X0tFUk5FTCk7Cj4gKwlpZiAoIXNybV9kYXRhLT5yZXZva2VkX2tzdl9saXN0KSB7Cj4gKwkJRFJN
X0VSUk9SKCJPdXQgb2YgTWVtb3J5XG4iKTsKPiArCQlyZXR1cm4gLUVOT01FTTsKPiArCX0KPiAr
Cj4gKwlrc3Zfc3ogPSBrc3ZfY291bnQgKiBEUk1fSERDUF9LU1ZfTEVOOwo+ICsJYnVmICs9IERS
TV9IRENQXzJfTk9fT0ZfREVWX1BMVVNfUkVTRVJWRURfU1o7Cj4gKwo+ICsJRFJNX0RFQlVHKCJS
ZXZva2VkIEtTVnM6ICVkXG4iLCBrc3ZfY291bnQpOwo+ICsJbWVtY3B5KHNybV9kYXRhLT5yZXZv
a2VkX2tzdl9saXN0LCBidWYsIGtzdl9zeik7Cj4gKwo+ICsJc3JtX2RhdGEtPnJldm9rZWRfa3N2
X2NudCA9IGtzdl9jb3VudDsKPiArCXJldHVybiBjb3VudDsKPiArfQo+ICsKPiArc3RhdGljIGlu
bGluZSBib29sIGlzX3NybV92ZXJzaW9uX2hkY3AxKGNvbnN0IHU4ICpidWYpCj4gK3sKPiArCXJl
dHVybiAqYnVmID09ICh1OCkoRFJNX0hEQ1BfMV80X1NSTV9JRCA8PCA0KTsKPiArfQo+ICsKPiAr
c3RhdGljIGlubGluZSBib29sIGlzX3NybV92ZXJzaW9uX2hkY3AyKGNvbnN0IHU4ICpidWYpCj4g
K3sKPiArCXJldHVybiAqYnVmID09ICh1OCkoRFJNX0hEQ1BfMl9TUk1fSUQgPDwgNCB8IERSTV9I
RENQXzJfSU5ESUNBVE9SKTsKPiArfQo+ICsKPiArc3RhdGljIHNzaXplX3QgZHJtX2hkY3Bfc3Jt
X3VwZGF0ZShjb25zdCB1OCAqYnVmLCBzaXplX3QgY291bnQpCj4gK3sKPiArCWlmIChpc19zcm1f
dmVyc2lvbl9oZGNwMShidWYpKQo+ICsJCXJldHVybiAoc3NpemVfdClkcm1faGRjcF9wYXJzZV9o
ZGNwMV9zcm0oYnVmLCBjb3VudCk7Cj4gKwllbHNlIGlmIChpc19zcm1fdmVyc2lvbl9oZGNwMihi
dWYpKQo+ICsJCXJldHVybiAoc3NpemVfdClkcm1faGRjcF9wYXJzZV9oZGNwMl9zcm0oYnVmLCBj
b3VudCk7Cj4gKwo+ICsJcmV0dXJuIChzc2l6ZV90KS1FSU5WQUw7CgpZb3Ugd2lyZSByZXR1cm4g
dmFsdWVzIHRocm91Z2ggYnV0IHRoZW4gdGhyb3cgdGhlbSBhd2F5LiBQbHVzIHRoZXJlJ3MgYQpj
b25mdXNpb24gYmV0d2VlbiBpbnQgYW5kIHNzaXplX3QuIFNpbmNlIHlvdSBoYXZlIERSTV9ERUJV
RyBldmVyeXdoZXJlCmFscmVhZHkgYW5kIHdlIGRvbid0IGNhcmUgYWJvdXQgYW55IHBhcnNpbmcg
ZXJyb3JzIGFueXl3YXkgSSB0aGluayBiZXN0IHRvCnRocm93IHRoZSByZXR1cm4gdmFsdWVzIGF3
YXkgYW5kIHVzZSB2b2lkIGZvciBhbGwgdGhlc2UgZnVuY3Rpb25zLgoKPiArfQo+ICsKPiArdm9p
ZCBkcm1faGRjcF9yZXF1ZXN0X3NybShzdHJ1Y3QgZHJtX2RldmljZSAqZHJtX2RldikKPiArewo+
ICsJY2hhciBmd19uYW1lWzM2XSA9ICJkaXNwbGF5X2hkY3Bfc3JtLmJpbiI7Cj4gKwljb25zdCBz
dHJ1Y3QgZmlybXdhcmUgKmZ3Owo+ICsKPiArCWludCByZXQ7Cj4gKwo+ICsJcmV0ID0gcmVxdWVz
dF9maXJtd2FyZV9kaXJlY3QoJmZ3LCAoY29uc3QgY2hhciAqKWZ3X25hbWUsCj4gKwkJCQkgICAg
ICBkcm1fZGV2LT5kZXYpOwo+ICsJaWYgKHJldCA8IDApCj4gKwkJZ290byBleGl0Owo+ICsKPiAr
CWlmIChmdy0+c2l6ZSAmJiBmdy0+ZGF0YSkKPiArCQlkcm1faGRjcF9zcm1fdXBkYXRlKGZ3LT5k
YXRhLCBmdy0+c2l6ZSk7Cj4gKwo+ICtleGl0Ogo+ICsJcmVsZWFzZV9maXJtd2FyZShmdyk7Cj4g
K30KPiArCj4gKy8qKgo+ICsgKiBkcm1faGRjcF9jaGVja19rc3ZzX3Jldm9rZWQgLSBDaGVjayB0
aGUgcmV2b2tlZCBzdGF0dXMgb2YgdGhlIElEcwo+ICsgKgo+ICsgKiBAZHJtX2RldjogZHJtX2Rl
dmljZSBmb3Igd2hpY2ggSERDUCByZXZvY2F0aW9uIGNoZWNrIGlzIHJlcXVlc3RlZAo+ICsgKiBA
a3N2czogTGlzdCBvZiBLU1ZzIChIRENQIHJlY2VpdmVyIElEcykKPiArICogQGtzdl9jb3VudDog
S1NWIGNvdW50IHBhc3NlZCBpbiB0aHJvdWdoIEBrc3ZzCj4gKyAqCj4gKyAqIFRoaXMgZnVuY3Rp
b24gcmVhZHMgdGhlIEhEQ1AgU3lzdGVtIHJlbmV3YWJpbGl0eSBNZXNzYWdlKFNSTSBUYWJsZSkK
PiArICogZnJvbSB1c2Vyc3BhY2UgYXMgYSBmaXJtd2FyZSBhbmQgcGFyc2VzIGl0IGZvciB0aGUg
cmV2b2tlZCBIRENQCj4gKyAqIEtTVnMoUmVjZWl2ZXIgSURzKSBkZXRlY3RlZCBieSBEQ1AgTExD
LiBPbmNlIHRoZSByZXZva2VkIEtTVnMgYXJlIGtub3duLAo+ICsgKiByZXZva2VkIHN0YXRlIG9m
IHRoZSBLU1ZzIGluIHRoZSBsaXN0IHBhc3NlZCBpbiBieSBkaXNwbGF5IGRyaXZlcnMgYXJlCj4g
KyAqIGRlY2lkZWQgYW5kIHJlc3BvbnNlIGlzIHNlbnQuCj4gKyAqCj4gKyAqIFNSTSBzaG91bGQg
YmUgcHJlc2VudGVkIGluIHRoZSBuYW1lIG9mICJkaXNwbGF5X2hkY3Bfc3JtLmJpbiIuCj4gKyAq
Cj4gKyAqIFJldHVybnM6Cj4gKyAqIFRSVUUgb24gYW55IG9mIHRoZSBLU1YgaXMgcmV2b2tlZCwg
ZWxzZSBGQUxTRS4KPiArICovCj4gK2Jvb2wgZHJtX2hkY3BfY2hlY2tfa3N2c19yZXZva2VkKHN0
cnVjdCBkcm1fZGV2aWNlICpkcm1fZGV2LCB1OCAqa3N2cywKPiArCQkJCSB1MzIga3N2X2NvdW50
KQo+ICt7Cj4gKwl1MzIgcmV2X2tzdl9jbnQsIGNudCwgaSwgajsKPiArCXU4ICpyZXZfa3N2X2xp
c3Q7Cj4gKwo+ICsJaWYgKCFzcm1fZGF0YSkKPiArCQlyZXR1cm4gZmFsc2U7Cj4gKwo+ICsJbXV0
ZXhfbG9jaygmc3JtX2RhdGEtPm11dGV4KTsKPiArCWRybV9oZGNwX3JlcXVlc3Rfc3JtKGRybV9k
ZXYpOwo+ICsKPiArCXJldl9rc3ZfY250ID0gc3JtX2RhdGEtPnJldm9rZWRfa3N2X2NudDsKPiAr
CXJldl9rc3ZfbGlzdCA9IHNybV9kYXRhLT5yZXZva2VkX2tzdl9saXN0Owo+ICsKPiArCS8qIElm
IHRoZSBSZXZva2VkIGtzdiBsaXN0IGlzIGVtcHR5ICovCj4gKwlpZiAoIXJldl9rc3ZfY250IHx8
ICFyZXZfa3N2X2xpc3QpIHsKPiArCQltdXRleF91bmxvY2soJnNybV9kYXRhLT5tdXRleCk7Cj4g
KwkJcmV0dXJuIGZhbHNlOwo+ICsJfQo+ICsKPiArCWZvciAgKGNudCA9IDA7IGNudCA8IGtzdl9j
b3VudDsgY250KyspIHsKPiArCQlyZXZfa3N2X2xpc3QgPSBzcm1fZGF0YS0+cmV2b2tlZF9rc3Zf
bGlzdDsKPiArCQlmb3IgKGkgPSAwOyBpIDwgcmV2X2tzdl9jbnQ7IGkrKykgewo+ICsJCQlmb3Ig
KGogPSAwOyBqIDwgRFJNX0hEQ1BfS1NWX0xFTjsgaisrKQo+ICsJCQkJaWYgKGtzdnNbal0gIT0g
cmV2X2tzdl9saXN0W2pdKSB7Cj4gKwkJCQkJYnJlYWs7Cj4gKwkJCQl9IGVsc2UgaWYgKGogPT0g
KERSTV9IRENQX0tTVl9MRU4gLSAxKSkgewo+ICsJCQkJCURSTV9ERUJVRygiUmV2b2tlZCBLU1Yg
aXMgIik7Cj4gKwkJCQkJZHJtX2hkY3BfcHJpbnRfa3N2KGtzdnMpOwo+ICsJCQkJCW11dGV4X3Vu
bG9jaygmc3JtX2RhdGEtPm11dGV4KTsKPiArCQkJCQlyZXR1cm4gdHJ1ZTsKPiArCQkJCX0KPiAr
CQkJLyogTW92ZSB0aGUgb2Zmc2V0IHRvIG5leHQgS1NWIGluIHRoZSByZXZva2VkIGxpc3QgKi8K
PiArCQkJcmV2X2tzdl9saXN0ICs9IERSTV9IRENQX0tTVl9MRU47Cj4gKwkJfQo+ICsKPiArCQkv
KiBJdGVyYXRlIHRvIG5leHQga3N2X29mZnNldCAqLwo+ICsJCWtzdnMgKz0gRFJNX0hEQ1BfS1NW
X0xFTjsKPiArCX0KPiArCW11dGV4X3VubG9jaygmc3JtX2RhdGEtPm11dGV4KTsKPiArCXJldHVy
biBmYWxzZTsKPiArfQo+ICtFWFBPUlRfU1lNQk9MX0dQTChkcm1faGRjcF9jaGVja19rc3ZzX3Jl
dm9rZWQpOwo+ICsKPiAraW50IGRybV9zZXR1cF9oZGNwX3NybShzdHJ1Y3QgY2xhc3MgKmRybV9j
bGFzcykKPiArewo+ICsJc3JtX2RhdGEgPSBremFsbG9jKHNpemVvZigqc3JtX2RhdGEpLCBHRlBf
S0VSTkVMKTsKPiArCWlmICghc3JtX2RhdGEpCj4gKwkJcmV0dXJuIC1FTk9NRU07Cj4gKwo+ICsJ
c3JtX2RhdGEtPnNybV9idWYgPSBrY2FsbG9jKERSTV9IRENQX1NSTV9HRU4xX01BWF9CWVRFUywK
PiArCQkJCSAgICBzaXplb2YodTgpLCBHRlBfS0VSTkVMKTsKPiArCWlmICghc3JtX2RhdGEtPnNy
bV9idWYpIHsKPiArCQlrZnJlZShzcm1fZGF0YSk7Cj4gKwkJcmV0dXJuIC1FTk9NRU07Cj4gKwl9
Cj4gKwltdXRleF9pbml0KCZzcm1fZGF0YS0+bXV0ZXgpOwo+ICsKPiArCXJldHVybiAwOwo+ICt9
Cj4gKwo+ICt2b2lkIGRybV90ZWFyZG93bl9oZGNwX3NybShzdHJ1Y3QgY2xhc3MgKmRybV9jbGFz
cykKPiArewo+ICsJaWYgKHNybV9kYXRhKSB7Cj4gKwkJa2ZyZWUoc3JtX2RhdGEtPnNybV9idWYp
Owo+ICsJCWtmcmVlKHNybV9kYXRhLT5yZXZva2VkX2tzdl9saXN0KTsKPiArCQlrZnJlZShzcm1f
ZGF0YSk7Cj4gKwl9Cj4gK30KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9pbnRl
cm5hbC5oIGIvZHJpdmVycy9ncHUvZHJtL2RybV9pbnRlcm5hbC5oCj4gaW5kZXggZTE5YWM3Y2E2
MDJkLi40NzZhNDIyNDE0ZjYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9pbnRl
cm5hbC5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9pbnRlcm5hbC5oCj4gQEAgLTIwMSwz
ICsyMDEsNyBAQCBpbnQgZHJtX3N5bmNvYmpfcXVlcnlfaW9jdGwoc3RydWN0IGRybV9kZXZpY2Ug
KmRldiwgdm9pZCAqZGF0YSwKPiAgdm9pZCBkcm1fZnJhbWVidWZmZXJfcHJpbnRfaW5mbyhzdHJ1
Y3QgZHJtX3ByaW50ZXIgKnAsIHVuc2lnbmVkIGludCBpbmRlbnQsCj4gIAkJCQljb25zdCBzdHJ1
Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYik7Cj4gIGludCBkcm1fZnJhbWVidWZmZXJfZGVidWdmc19p
bml0KHN0cnVjdCBkcm1fbWlub3IgKm1pbm9yKTsKPiArCj4gKy8qIGRybV9oZGNwLmMgKi8KPiAr
aW50IGRybV9zZXR1cF9oZGNwX3NybShzdHJ1Y3QgY2xhc3MgKmRybV9jbGFzcyk7Cj4gK3ZvaWQg
ZHJtX3RlYXJkb3duX2hkY3Bfc3JtKHN0cnVjdCBjbGFzcyAqZHJtX2NsYXNzKTsKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9zeXNmcy5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9z
eXNmcy5jCj4gaW5kZXggZWNiN2IzMzAwMmJiLi4xOGIxYWM0NDI5OTcgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2RybV9zeXNmcy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9z
eXNmcy5jCj4gQEAgLTc4LDYgKzc4LDcgQEAgaW50IGRybV9zeXNmc19pbml0KHZvaWQpCj4gIAl9
Cj4gIAo+ICAJZHJtX2NsYXNzLT5kZXZub2RlID0gZHJtX2Rldm5vZGU7Cj4gKwlkcm1fc2V0dXBf
aGRjcF9zcm0oZHJtX2NsYXNzKTsKPiAgCXJldHVybiAwOwo+ICB9Cj4gIAo+IEBAIC05MCw2ICs5
MSw3IEBAIHZvaWQgZHJtX3N5c2ZzX2Rlc3Ryb3kodm9pZCkKPiAgewo+ICAJaWYgKElTX0VSUl9P
Ul9OVUxMKGRybV9jbGFzcykpCj4gIAkJcmV0dXJuOwo+ICsJZHJtX3RlYXJkb3duX2hkY3Bfc3Jt
KGRybV9jbGFzcyk7Cj4gIAljbGFzc19yZW1vdmVfZmlsZShkcm1fY2xhc3MsICZjbGFzc19hdHRy
X3ZlcnNpb24uYXR0cik7Cj4gIAljbGFzc19kZXN0cm95KGRybV9jbGFzcyk7Cj4gIAlkcm1fY2xh
c3MgPSBOVUxMOwo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1faGRjcC5oIGIvaW5jbHVk
ZS9kcm0vZHJtX2hkY3AuaAo+IGluZGV4IGYyNDM0MDhlY2YyNi4uMjkyOTk4YTI0OTdmIDEwMDY0
NAo+IC0tLSBhL2luY2x1ZGUvZHJtL2RybV9oZGNwLmgKPiArKysgYi9pbmNsdWRlL2RybS9kcm1f
aGRjcC5oCj4gQEAgLTI2NSw0ICsyNjUsMjggQEAgdm9pZCBkcm1faGRjcDJfdTMyX3RvX3NlcV9u
dW0odTggc2VxX251bVtIRENQXzJfMl9TRVFfTlVNX0xFTl0sIHUzMiB2YWwpCj4gIAlzZXFfbnVt
WzJdID0gdmFsOwo+ICB9Cj4gIAo+ICsjZGVmaW5lIERSTV9IRENQX1NSTV9HRU4xX01BWF9CWVRF
UwkJKDUgKiAxMDI0KQo+ICsjZGVmaW5lIERSTV9IRENQXzFfNF9TUk1fSUQJCQkweDgKPiArI2Rl
ZmluZSBEUk1fSERDUF9TUk1fSURfTUFTSwkJCSgweEYgPDwgNCkKClRoaXMgaXMgc3VycHJpc2lu
ZyAoSSdkIGhhdmUgZXhwZWN0ZWQgdGhlIGhkY3AyIGluZGljYXRvciBpbiB0aGUgbG93IGJpdHMp
CmZyb20gcmVhZGluZyB0aGUgc3BlYy4gQnV0IEkgZ3Vlc3MgeW91IHRlc3RlZCB0aGlzLCBhbmQg
dGhlcmUncyBzb21lCm11bWJvLWp1bWJvIGFib3V0ICJldmVyeXRoaW5nIGlzIGJpZyBlbmRpYW4i
LCB3aGljaCBtaWdodCBhbHNvIG1lYW4KbmliYmxlcy4gV2hvIGtub3dzLgoKPiArI2RlZmluZSBE
Uk1fSERDUF8xXzRfVlJMX0xFTkdUSF9TSVpFCQkzCj4gKyNkZWZpbmUgRFJNX0hEQ1BfMV80X0RD
UF9TSUdfU0laRQkJNDAKPiArI2RlZmluZSBEUk1fSERDUF8yX1NSTV9JRAkJCTB4OQo+ICsjZGVm
aW5lIERSTV9IRENQXzJfSU5ESUNBVE9SCQkJMHgxCj4gKyNkZWZpbmUgRFJNX0hEQ1BfMl9JTkRJ
Q0FUT1JfTUFTSwkJMHhGCj4gKyNkZWZpbmUgRFJNX0hEQ1BfMl9WUkxfTEVOR1RIX1NJWkUJCTMK
PiArI2RlZmluZSBEUk1fSERDUF8yX0RDUF9TSUdfU0laRQkJCTM4NAo+ICsjZGVmaW5lIERSTV9I
RENQXzJfTk9fT0ZfREVWX1BMVVNfUkVTRVJWRURfU1oJNAo+ICsjZGVmaW5lIERSTV9IRENQXzJf
S1NWX0NPVU5UXzJfTFNCSVRTKGJ5dGUpCSgoKGJ5dGUpICYgMHhDKSA+PiA2KQo+ICsKPiArc3Ry
dWN0IGhkY3Bfc3JtX2hlYWRlciB7Cj4gKwl1OCBzcm1faWQ7Cj4gKwl1OCByZXNlcnZlZDsKPiAr
CXUxNiBzcm1fdmVyc2lvbjsKCk5lZWRzIHRvIGJlIF9fYmUxNiwgc28gdGhhdCBzcGFyc2UgY2Fu
IHZhbGlkYXRlIHlvdSBnb3QgYWxsIHRoZSBieXRlCnN3YXBwaW5nIGNvcnJlY3QuIFdvdWxkIGJl
IGdvb2QgdG8gZG91YmxlLWNoZWNrIHdpdGggc3BhcnNlIHlvdXJzZWxmCihvdGhlcndpc2UgMGRh
eSB3aWxsIGRvIGl0IGZvciB5b3UsIGJ1dCBpZiB0aGVyZSdzIGEgcHJvYmxlbSBiZXR0ZXIgdG8K
Y2F0Y2ggaXQgZWFybHkpLgoKPiArCXU4IHNybV9nZW5fbm87Cj4gK30gX19wYWNrZWQ7Cj4gKwo+
ICtzdHJ1Y3QgZHJtX2RldmljZTsKPiArCj4gK2Jvb2wgZHJtX2hkY3BfY2hlY2tfa3N2c19yZXZv
a2VkKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCj4gKwkJCQkgdTggKmtzdnMsIHUzMiBrc3ZfY291
bnQpOwo+ICAjZW5kaWYKPiAtLSAKPiAyLjE5LjEKPiAKPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJl
IEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
