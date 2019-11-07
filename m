Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B4E8F35D3
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2019 18:40:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E81966F764;
	Thu,  7 Nov 2019 17:40:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BED06F764
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2019 17:40:18 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id e6so4076259wrw.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 07 Nov 2019 09:40:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=zXmWudCShEawz/D0Mg3vzGP57fZoy63UkHj2SDR4s0k=;
 b=ieYmQBZiTJICRPOc+OFM/200cpeiFjIv+wDAPAeUOGTPacsU9rb/yqo5I0SWSUa4jC
 l5j9JBGfg5oGc6iXiIB7z5XOwOm7M/5+iJj4pkEg/2gDRfBa1kqKBQCJcYveAT3JnUtb
 Nbf3ZfUtAxw0mQNWmS7T5rkLa2vLxhrHdQ5N+7svmHS4hymhKkd/VLigeqr+Hv5950+I
 1aggVEsvnXK36xVCKwerRlDeXRkO/xdIo8p6y5t8SUhLVaABFpY2NdPYZE/tzdlIHlgb
 sgW+UGOblBz3RjVutUDpB8zP+IFtaHTxv9ppE8fffhQwXI7iiEc1g5uG7YdskeHZPu8T
 +ezA==
X-Gm-Message-State: APjAAAWXTD20urS/gcEM9F1uBslt0LlpKXvSZaiJ1K8Qu2trQnWR0wPa
 1JcK9+GDZOgKVPAEFYzIbw82+Q==
X-Google-Smtp-Source: APXvYqxxafq3sGJonQ2sxODvwXYAmi+FO7Uwc79Dgv53oK5yex6Svnw+7Et/NFD/b9w5Gj3HXRiTwQ==
X-Received: by 2002:a05:6000:1605:: with SMTP id
 u5mr3880635wrb.252.1573148416969; 
 Thu, 07 Nov 2019 09:40:16 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id l13sm2511292wmh.12.2019.11.07.09.40.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 09:40:16 -0800 (PST)
Date: Thu, 7 Nov 2019 18:40:14 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20191107174014.GQ23790@phenom.ffwll.local>
References: <20191107151725.10507-1-ville.syrjala@linux.intel.com>
 <20191107151725.10507-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191107151725.10507-2-ville.syrjala@linux.intel.com>
X-Operating-System: Linux phenom 5.2.0-3-amd64 
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent;
 bh=zXmWudCShEawz/D0Mg3vzGP57fZoy63UkHj2SDR4s0k=;
 b=ew6rr7A6US2taFagcGYTncPy8r9OB/gBR2XfUgcZ4fP18Awm5JDTn5aXs9SdcY2KsV
 Mt4ot4evm9EVZSENDS11b00j2TeimTY+BvmfFaL91krLkI0crXnvY9LD4qAH3yi8A3MT
 WWz90lqYWDhqxs0m+sc7DPbebVNz2KJHJSXWw=
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

T24gVGh1LCBOb3YgMDcsIDIwMTkgYXQgMDU6MTc6MTRQTSArMDIwMCwgVmlsbGUgU3lyamFsYSB3
cm90ZToKPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgo+IAo+IFRoaXMgdGhpbmcgY2FuIGdldCBjYWxsZWQgc2V2ZXJhbCB0aG91c2FuZCB0aW1l
cyBwZXIgTFVUCj4gc28gc2VlbXMgbGlrZSB3ZSB3YW50IHRvIGlubGluZSBpdCB0bzoKPiAtIGF2
b2lkIHRoZSBmdW5jdGlvbiBjYWxsIG92ZXJoZWFkCj4gLSBhbGxvdyBjb25zdGFudCBmb2xkaW5n
Cj4gCj4gQSBxdWljayBzeW50aGV0aWMgdGVzdCAody9vIGFueSBoYXJkd2FyZSBpbnRlcmFjdGlv
bikgd2l0aAo+IGEgcmlkaWN1bG91c2x5IGxhcmdlIExVVCBzaXplIHNob3dzIGFib3V0IDUwJSBy
ZWR1Y3Rpb24gaW4KPiBydW50aW1lIG9uIG15IEhTVyBhbmQgQlNXIGJveGVzLiBTbGlnaHRseSBs
ZXNzIHdpdGggbW9yZQo+IHJlYXNvbmFibGUgTFVUIHNpemUgYnV0IHN0aWxsIGVhc2lseSBtZWFz
dXJhYmxlIGluIHRlbnMKPiBvZiBtaWNyb3NlY29uZHMuCj4gCj4gU2lnbmVkLW9mZi1ieTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiAgZHJp
dmVycy9ncHUvZHJtL2RybV9jb2xvcl9tZ210LmMgfCAyNCAtLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0KPiAgaW5jbHVkZS9kcm0vZHJtX2NvbG9yX21nbXQuaCAgICAgfCAyMyArKysrKysrKysrKysr
KysrKysrKysrLQoKWW91IGZvcmdvdCB0byBhZGQgdGhlIGluY2x1ZGUgc3RhbnphIGluIHRoZSBr
ZXJuZWxkb2MgLnJzdCBmaWxlcywgd2hpY2gKbWVhbnMgdGhpcyBpcyBub3cgbG9zdCBmcm9tIHRo
ZSBvdXRwdXQuIFBsZWFzZSBmaXguCi1EYW5pZWwKCj4gIDIgZmlsZXMgY2hhbmdlZCwgMjIgaW5z
ZXJ0aW9ucygrKSwgMjUgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9kcm1fY29sb3JfbWdtdC5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9jb2xvcl9tZ210LmMK
PiBpbmRleCA0Y2U1YzZkOGRlOTkuLjE5YzVmNjM1OTkyYSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vZHJtX2NvbG9yX21nbXQuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fY29s
b3JfbWdtdC5jCj4gQEAgLTEwOCwzMCArMTA4LDYgQEAKPiAgICogCXN0YW5kYXJkIGVudW0gdmFs
dWVzIHN1cHBvcnRlZCBieSB0aGUgRFJNIHBsYW5lLgo+ICAgKi8KPiAgCj4gLS8qKgo+IC0gKiBk
cm1fY29sb3JfbHV0X2V4dHJhY3QgLSBjbGFtcCBhbmQgcm91bmQgTFVUIGVudHJpZXMKPiAtICog
QHVzZXJfaW5wdXQ6IGlucHV0IHZhbHVlCj4gLSAqIEBiaXRfcHJlY2lzaW9uOiBudW1iZXIgb2Yg
Yml0cyB0aGUgaHcgTFVUIHN1cHBvcnRzCj4gLSAqCj4gLSAqIEV4dHJhY3QgYSBkZWdhbW1hL2dh
bW1hIExVVCB2YWx1ZSBwcm92aWRlZCBieSB1c2VyIChpbiB0aGUgZm9ybSBvZgo+IC0gKiAmZHJt
X2NvbG9yX2x1dCBlbnRyaWVzKSBhbmQgcm91bmQgaXQgdG8gdGhlIHByZWNpc2lvbiBzdXBwb3J0
ZWQgYnkgdGhlCj4gLSAqIGhhcmR3YXJlLgo+IC0gKi8KPiAtdWludDMyX3QgZHJtX2NvbG9yX2x1
dF9leHRyYWN0KHVpbnQzMl90IHVzZXJfaW5wdXQsIHVpbnQzMl90IGJpdF9wcmVjaXNpb24pCj4g
LXsKPiAtCXVpbnQzMl90IHZhbCA9IHVzZXJfaW5wdXQ7Cj4gLQl1aW50MzJfdCBtYXggPSAweGZm
ZmYgPj4gKDE2IC0gYml0X3ByZWNpc2lvbik7Cj4gLQo+IC0JLyogUm91bmQgb25seSBpZiB3ZSdy
ZSBub3QgdXNpbmcgZnVsbCBwcmVjaXNpb24uICovCj4gLQlpZiAoYml0X3ByZWNpc2lvbiA8IDE2
KSB7Cj4gLQkJdmFsICs9IDFVTCA8PCAoMTYgLSBiaXRfcHJlY2lzaW9uIC0gMSk7Cj4gLQkJdmFs
ID4+PSAxNiAtIGJpdF9wcmVjaXNpb247Cj4gLQl9Cj4gLQo+IC0JcmV0dXJuIGNsYW1wX3ZhbCh2
YWwsIDAsIG1heCk7Cj4gLX0KPiAtRVhQT1JUX1NZTUJPTChkcm1fY29sb3JfbHV0X2V4dHJhY3Qp
Owo+IC0KPiAgLyoqCj4gICAqIGRybV9jcnRjX2VuYWJsZV9jb2xvcl9tZ210IC0gZW5hYmxlIGNv
bG9yIG1hbmFnZW1lbnQgcHJvcGVydGllcwo+ICAgKiBAY3J0YzogRFJNIENSVEMKPiBkaWZmIC0t
Z2l0IGEvaW5jbHVkZS9kcm0vZHJtX2NvbG9yX21nbXQuaCBiL2luY2x1ZGUvZHJtL2RybV9jb2xv
cl9tZ210LmgKPiBpbmRleCBkMWM2NjJkOTJhYjcuLjA2OWIyMWQ2MTg3MSAxMDA2NDQKPiAtLS0g
YS9pbmNsdWRlL2RybS9kcm1fY29sb3JfbWdtdC5oCj4gKysrIGIvaW5jbHVkZS9kcm0vZHJtX2Nv
bG9yX21nbXQuaAo+IEBAIC0yOSw3ICsyOSwyOCBAQAo+ICBzdHJ1Y3QgZHJtX2NydGM7Cj4gIHN0
cnVjdCBkcm1fcGxhbmU7Cj4gIAo+IC11aW50MzJfdCBkcm1fY29sb3JfbHV0X2V4dHJhY3QodWlu
dDMyX3QgdXNlcl9pbnB1dCwgdWludDMyX3QgYml0X3ByZWNpc2lvbik7Cj4gKy8qKgo+ICsgKiBk
cm1fY29sb3JfbHV0X2V4dHJhY3QgLSBjbGFtcCBhbmQgcm91bmQgTFVUIGVudHJpZXMKPiArICog
QHVzZXJfaW5wdXQ6IGlucHV0IHZhbHVlCj4gKyAqIEBiaXRfcHJlY2lzaW9uOiBudW1iZXIgb2Yg
Yml0cyB0aGUgaHcgTFVUIHN1cHBvcnRzCj4gKyAqCj4gKyAqIEV4dHJhY3QgYSBkZWdhbW1hL2dh
bW1hIExVVCB2YWx1ZSBwcm92aWRlZCBieSB1c2VyIChpbiB0aGUgZm9ybSBvZgo+ICsgKiAmZHJt
X2NvbG9yX2x1dCBlbnRyaWVzKSBhbmQgcm91bmQgaXQgdG8gdGhlIHByZWNpc2lvbiBzdXBwb3J0
ZWQgYnkgdGhlCj4gKyAqIGhhcmR3YXJlLgo+ICsgKi8KPiArc3RhdGljIGlubGluZSB1MzIgZHJt
X2NvbG9yX2x1dF9leHRyYWN0KHUzMiB1c2VyX2lucHV0LCBpbnQgYml0X3ByZWNpc2lvbikKPiAr
ewo+ICsJdTMyIHZhbCA9IHVzZXJfaW5wdXQ7Cj4gKwl1MzIgbWF4ID0gMHhmZmZmID4+ICgxNiAt
IGJpdF9wcmVjaXNpb24pOwo+ICsKPiArCS8qIFJvdW5kIG9ubHkgaWYgd2UncmUgbm90IHVzaW5n
IGZ1bGwgcHJlY2lzaW9uLiAqLwo+ICsJaWYgKGJpdF9wcmVjaXNpb24gPCAxNikgewo+ICsJCXZh
bCArPSAxVUwgPDwgKDE2IC0gYml0X3ByZWNpc2lvbiAtIDEpOwo+ICsJCXZhbCA+Pj0gMTYgLSBi
aXRfcHJlY2lzaW9uOwo+ICsJfQo+ICsKPiArCXJldHVybiBjbGFtcF92YWwodmFsLCAwLCBtYXgp
Owo+ICt9Cj4gIAo+ICB2b2lkIGRybV9jcnRjX2VuYWJsZV9jb2xvcl9tZ210KHN0cnVjdCBkcm1f
Y3J0YyAqY3J0YywKPiAgCQkJCXVpbnQgZGVnYW1tYV9sdXRfc2l6ZSwKPiAtLSAKPiAyLjIzLjAK
PiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IElu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4g
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
Ci0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpo
dHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
