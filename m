Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D80F5155
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 17:41:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07ECE6FA07;
	Fri,  8 Nov 2019 16:41:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 966DC6FA08
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2019 16:41:17 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id p2so7819767wro.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 08 Nov 2019 08:41:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=QMVOeJnUcQK88/Evx6eR2pU4VaDF/wduYwQ7ibemhfM=;
 b=rqebA2AoPusNdZsf5axJDTynIQ1J5Kz8Gm9o+vjMSTzJp+snx3lG4DRT84FVH0WC7/
 /I0fqDfyxV4UgRBeiyxom41z96EXQsya8QWjwYH/jxHh1jMA8l08DuVtRq2QphkKKHZQ
 obCHjTWH/72thIaizt2e9HLN9QBSD1S3b/HTdL1/Vz9hGKgSztoNU0aK0kP95mr+2l7n
 hY7GHAiF7dAjCvVG0kFEbjrW6DUkHnxroQQBzvb82u7s6ceZlWN+om1R+j2HJ53HrO6d
 MaoSTSDI3kJPg0EP0UbJ01MjjBfAbruHHx9W0hYQgF2J7zamUU39FYSKLEiN8njEpkqj
 YqmA==
X-Gm-Message-State: APjAAAVtJOAxyZv/syodBAWcoZDkrDexnqUZzn2ddIAgQL259/85G31Y
 Sfv+88NJ05eXneljES/boTsBvA==
X-Google-Smtp-Source: APXvYqwr4Aad8tj1kD1jlEMGjwiKHBIQdpLJxbd0lnKEnp4+Ft4XzscllrHCB4fXRHTTG3qMGSkf3g==
X-Received: by 2002:a5d:4688:: with SMTP id u8mr9171687wrq.40.1573231276181;
 Fri, 08 Nov 2019 08:41:16 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id x8sm6272318wrm.7.2019.11.08.08.41.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 08:41:15 -0800 (PST)
Date: Fri, 8 Nov 2019 17:41:13 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20191108164113.GA23790@phenom.ffwll.local>
References: <20191107151725.10507-1-ville.syrjala@linux.intel.com>
 <20191107151725.10507-2-ville.syrjala@linux.intel.com>
 <20191107174014.GQ23790@phenom.ffwll.local>
 <20191108133657.GG1208@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191108133657.GG1208@intel.com>
X-Operating-System: Linux phenom 5.2.0-3-amd64 
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent;
 bh=QMVOeJnUcQK88/Evx6eR2pU4VaDF/wduYwQ7ibemhfM=;
 b=UQ4hn1TcHzl1oioyqVYNS+PPLAYLlxwJDnB0hg5w49E7AG7qcww3hHj/Ajm65tw4xy
 ENnwpwRhYqz2sZkCVD3RwxW4Fi06ZmWmtqHWfVYkycw1EGY8m5bj5PPTcNeRjTGNtNCK
 pizyMisNGRNO4FVSTD9g1A05+X9fu1+jCaUf0=
Subject: Re: [Intel-gfx] [PATCH 01/12] drm: Inline drm_color_lut_extract()
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBOb3YgMDgsIDIwMTkgYXQgMDM6MzY6NTdQTSArMDIwMCwgVmlsbGUgU3lyasOkbMOk
IHdyb3RlOgo+IE9uIFRodSwgTm92IDA3LCAyMDE5IGF0IDA2OjQwOjE0UE0gKzAxMDAsIERhbmll
bCBWZXR0ZXIgd3JvdGU6Cj4gPiBPbiBUaHUsIE5vdiAwNywgMjAxOSBhdCAwNToxNzoxNFBNICsw
MjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOgo+ID4gPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+ID4gPiAKPiA+ID4gVGhpcyB0aGluZyBjYW4g
Z2V0IGNhbGxlZCBzZXZlcmFsIHRob3VzYW5kIHRpbWVzIHBlciBMVVQKPiA+ID4gc28gc2VlbXMg
bGlrZSB3ZSB3YW50IHRvIGlubGluZSBpdCB0bzoKPiA+ID4gLSBhdm9pZCB0aGUgZnVuY3Rpb24g
Y2FsbCBvdmVyaGVhZAo+ID4gPiAtIGFsbG93IGNvbnN0YW50IGZvbGRpbmcKPiA+ID4gCj4gPiA+
IEEgcXVpY2sgc3ludGhldGljIHRlc3QgKHcvbyBhbnkgaGFyZHdhcmUgaW50ZXJhY3Rpb24pIHdp
dGgKPiA+ID4gYSByaWRpY3Vsb3VzbHkgbGFyZ2UgTFVUIHNpemUgc2hvd3MgYWJvdXQgNTAlIHJl
ZHVjdGlvbiBpbgo+ID4gPiBydW50aW1lIG9uIG15IEhTVyBhbmQgQlNXIGJveGVzLiBTbGlnaHRs
eSBsZXNzIHdpdGggbW9yZQo+ID4gPiByZWFzb25hYmxlIExVVCBzaXplIGJ1dCBzdGlsbCBlYXNp
bHkgbWVhc3VyYWJsZSBpbiB0ZW5zCj4gPiA+IG9mIG1pY3Jvc2Vjb25kcy4KPiA+ID4gCj4gPiA+
IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+Cj4gPiA+IC0tLQo+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2RybV9jb2xvcl9tZ210LmMg
fCAyNCAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+ID4gIGluY2x1ZGUvZHJtL2RybV9jb2xv
cl9tZ210LmggICAgIHwgMjMgKysrKysrKysrKysrKysrKysrKysrKy0KPiA+IAo+ID4gWW91IGZv
cmdvdCB0byBhZGQgdGhlIGluY2x1ZGUgc3RhbnphIGluIHRoZSBrZXJuZWxkb2MgLnJzdCBmaWxl
cywgd2hpY2gKPiA+IG1lYW5zIHRoaXMgaXMgbm93IGxvc3QgZnJvbSB0aGUgb3V0cHV0LiBQbGVh
c2UgZml4Lgo+IAo+IEF5ZS4gQSBiaXQgZnVubnkgdGhhdCB3ZSBhbHJlYWR5IGhhdmUgYSBidW5j
aCBvZiBvdGhlciBrZXJuZWxkb2NzCj4gaW4gdGhhdCBoZWFkZXIgYnV0IGl0J3Mgbm90IGluY2x1
ZGVkIGluIHRoZSAucnN0LgoKa2VybmVsZG9jIGNvbXBsYWlucyBpZiB0aGVyZSdzIG5vIGtlcm5l
bGRvYywgd2hpY2ggaXMgb2Z0ZW4gdGhlIGNhc2UgZm9yCmhlYWRlcnMuIFNvIHdlIHN0YXJ0IG91
dCB3aXRob3V0IHRoZSBoZWFkZXIgaW5jbHVkZWQsIGFuZCB0aGVuIHNvbWVvbmUKbWlzc2VzIHRo
YXQgd2hlbiBhZGRpbmcgdGhlIGZpcnN0L3NlY29uZC8uLi4ga2VybmVsZG9jLgoKSXQncyByYXRo
ZXIgYW5ub3lpbmcgdW5mb3J0dW5hdGVseSA6LS8KLURhbmllbAoKPiAKPiA+IC1EYW5pZWwKPiA+
IAo+ID4gPiAgMiBmaWxlcyBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspLCAyNSBkZWxldGlvbnMo
LSkKPiA+ID4gCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2NvbG9yX21n
bXQuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fY29sb3JfbWdtdC5jCj4gPiA+IGluZGV4IDRjZTVj
NmQ4ZGU5OS4uMTljNWY2MzU5OTJhIDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
ZHJtX2NvbG9yX21nbXQuYwo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2NvbG9yX21n
bXQuYwo+ID4gPiBAQCAtMTA4LDMwICsxMDgsNiBAQAo+ID4gPiAgICogCXN0YW5kYXJkIGVudW0g
dmFsdWVzIHN1cHBvcnRlZCBieSB0aGUgRFJNIHBsYW5lLgo+ID4gPiAgICovCj4gPiA+ICAKPiA+
ID4gLS8qKgo+ID4gPiAtICogZHJtX2NvbG9yX2x1dF9leHRyYWN0IC0gY2xhbXAgYW5kIHJvdW5k
IExVVCBlbnRyaWVzCj4gPiA+IC0gKiBAdXNlcl9pbnB1dDogaW5wdXQgdmFsdWUKPiA+ID4gLSAq
IEBiaXRfcHJlY2lzaW9uOiBudW1iZXIgb2YgYml0cyB0aGUgaHcgTFVUIHN1cHBvcnRzCj4gPiA+
IC0gKgo+ID4gPiAtICogRXh0cmFjdCBhIGRlZ2FtbWEvZ2FtbWEgTFVUIHZhbHVlIHByb3ZpZGVk
IGJ5IHVzZXIgKGluIHRoZSBmb3JtIG9mCj4gPiA+IC0gKiAmZHJtX2NvbG9yX2x1dCBlbnRyaWVz
KSBhbmQgcm91bmQgaXQgdG8gdGhlIHByZWNpc2lvbiBzdXBwb3J0ZWQgYnkgdGhlCj4gPiA+IC0g
KiBoYXJkd2FyZS4KPiA+ID4gLSAqLwo+ID4gPiAtdWludDMyX3QgZHJtX2NvbG9yX2x1dF9leHRy
YWN0KHVpbnQzMl90IHVzZXJfaW5wdXQsIHVpbnQzMl90IGJpdF9wcmVjaXNpb24pCj4gPiA+IC17
Cj4gPiA+IC0JdWludDMyX3QgdmFsID0gdXNlcl9pbnB1dDsKPiA+ID4gLQl1aW50MzJfdCBtYXgg
PSAweGZmZmYgPj4gKDE2IC0gYml0X3ByZWNpc2lvbik7Cj4gPiA+IC0KPiA+ID4gLQkvKiBSb3Vu
ZCBvbmx5IGlmIHdlJ3JlIG5vdCB1c2luZyBmdWxsIHByZWNpc2lvbi4gKi8KPiA+ID4gLQlpZiAo
Yml0X3ByZWNpc2lvbiA8IDE2KSB7Cj4gPiA+IC0JCXZhbCArPSAxVUwgPDwgKDE2IC0gYml0X3By
ZWNpc2lvbiAtIDEpOwo+ID4gPiAtCQl2YWwgPj49IDE2IC0gYml0X3ByZWNpc2lvbjsKPiA+ID4g
LQl9Cj4gPiA+IC0KPiA+ID4gLQlyZXR1cm4gY2xhbXBfdmFsKHZhbCwgMCwgbWF4KTsKPiA+ID4g
LX0KPiA+ID4gLUVYUE9SVF9TWU1CT0woZHJtX2NvbG9yX2x1dF9leHRyYWN0KTsKPiA+ID4gLQo+
ID4gPiAgLyoqCj4gPiA+ICAgKiBkcm1fY3J0Y19lbmFibGVfY29sb3JfbWdtdCAtIGVuYWJsZSBj
b2xvciBtYW5hZ2VtZW50IHByb3BlcnRpZXMKPiA+ID4gICAqIEBjcnRjOiBEUk0gQ1JUQwo+ID4g
PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vZHJtX2NvbG9yX21nbXQuaCBiL2luY2x1ZGUvZHJt
L2RybV9jb2xvcl9tZ210LmgKPiA+ID4gaW5kZXggZDFjNjYyZDkyYWI3Li4wNjliMjFkNjE4NzEg
MTAwNjQ0Cj4gPiA+IC0tLSBhL2luY2x1ZGUvZHJtL2RybV9jb2xvcl9tZ210LmgKPiA+ID4gKysr
IGIvaW5jbHVkZS9kcm0vZHJtX2NvbG9yX21nbXQuaAo+ID4gPiBAQCAtMjksNyArMjksMjggQEAK
PiA+ID4gIHN0cnVjdCBkcm1fY3J0YzsKPiA+ID4gIHN0cnVjdCBkcm1fcGxhbmU7Cj4gPiA+ICAK
PiA+ID4gLXVpbnQzMl90IGRybV9jb2xvcl9sdXRfZXh0cmFjdCh1aW50MzJfdCB1c2VyX2lucHV0
LCB1aW50MzJfdCBiaXRfcHJlY2lzaW9uKTsKPiA+ID4gKy8qKgo+ID4gPiArICogZHJtX2NvbG9y
X2x1dF9leHRyYWN0IC0gY2xhbXAgYW5kIHJvdW5kIExVVCBlbnRyaWVzCj4gPiA+ICsgKiBAdXNl
cl9pbnB1dDogaW5wdXQgdmFsdWUKPiA+ID4gKyAqIEBiaXRfcHJlY2lzaW9uOiBudW1iZXIgb2Yg
Yml0cyB0aGUgaHcgTFVUIHN1cHBvcnRzCj4gPiA+ICsgKgo+ID4gPiArICogRXh0cmFjdCBhIGRl
Z2FtbWEvZ2FtbWEgTFVUIHZhbHVlIHByb3ZpZGVkIGJ5IHVzZXIgKGluIHRoZSBmb3JtIG9mCj4g
PiA+ICsgKiAmZHJtX2NvbG9yX2x1dCBlbnRyaWVzKSBhbmQgcm91bmQgaXQgdG8gdGhlIHByZWNp
c2lvbiBzdXBwb3J0ZWQgYnkgdGhlCj4gPiA+ICsgKiBoYXJkd2FyZS4KPiA+ID4gKyAqLwo+ID4g
PiArc3RhdGljIGlubGluZSB1MzIgZHJtX2NvbG9yX2x1dF9leHRyYWN0KHUzMiB1c2VyX2lucHV0
LCBpbnQgYml0X3ByZWNpc2lvbikKPiA+ID4gK3sKPiA+ID4gKwl1MzIgdmFsID0gdXNlcl9pbnB1
dDsKPiA+ID4gKwl1MzIgbWF4ID0gMHhmZmZmID4+ICgxNiAtIGJpdF9wcmVjaXNpb24pOwo+ID4g
PiArCj4gPiA+ICsJLyogUm91bmQgb25seSBpZiB3ZSdyZSBub3QgdXNpbmcgZnVsbCBwcmVjaXNp
b24uICovCj4gPiA+ICsJaWYgKGJpdF9wcmVjaXNpb24gPCAxNikgewo+ID4gPiArCQl2YWwgKz0g
MVVMIDw8ICgxNiAtIGJpdF9wcmVjaXNpb24gLSAxKTsKPiA+ID4gKwkJdmFsID4+PSAxNiAtIGJp
dF9wcmVjaXNpb247Cj4gPiA+ICsJfQo+ID4gPiArCj4gPiA+ICsJcmV0dXJuIGNsYW1wX3ZhbCh2
YWwsIDAsIG1heCk7Cj4gPiA+ICt9Cj4gPiA+ICAKPiA+ID4gIHZvaWQgZHJtX2NydGNfZW5hYmxl
X2NvbG9yX21nbXQoc3RydWN0IGRybV9jcnRjICpjcnRjLAo+ID4gPiAgCQkJCXVpbnQgZGVnYW1t
YV9sdXRfc2l6ZSwKPiA+ID4gLS0gCj4gPiA+IDIuMjMuMAo+ID4gPiAKPiA+ID4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+ID4gSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdAo+ID4gPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gPiA+IGh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cj4g
PiAKPiA+IC0tIAo+ID4gRGFuaWVsIFZldHRlcgo+ID4gU29mdHdhcmUgRW5naW5lZXIsIEludGVs
IENvcnBvcmF0aW9uCj4gPiBodHRwOi8vYmxvZy5mZndsbC5jaAo+IAo+IC0tIAo+IFZpbGxlIFN5
cmrDpGzDpAo+IEludGVsCgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50
ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
