Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89AFD2EF7CF
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 20:01:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F36DD6E1FB;
	Fri,  8 Jan 2021 19:01:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 803716E1FB
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 19:01:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1610132515;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1sD1eZv7JZRwttnalOB1m2cuEcGwMY83yW6AhUvcDJM=;
 b=i3au9DJ3AwM7J8SirbQsT6OacPlQSd/pn8Fd+VvjHxxAdkL5UaJP0/qzTUUrXZC3axvTA1
 8MMwfppHAvpuDm0CbNPqVknT49jyrTidS7CnsQ6J+Z1obFLiUQyzUV5TdRsclULYeTtaaA
 FRuj41VRaBkSGsLyYYWcxkqk+RmxA4U=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-534-q3wFMU7dObGKshFPRVfcTw-1; Fri, 08 Jan 2021 14:01:54 -0500
X-MC-Unique: q3wFMU7dObGKshFPRVfcTw-1
Received: by mail-qv1-f70.google.com with SMTP id cc1so8955273qvb.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 08 Jan 2021 11:01:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
 :in-reply-to:references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=1sD1eZv7JZRwttnalOB1m2cuEcGwMY83yW6AhUvcDJM=;
 b=WNO/6XgTbauT/RaMOsmeB8IjrgxXEZLlxn3WbMiDFrq5wmlIT3XVJw9Ql8TfdWpUmp
 FDV7f8HpHe0tZcZIDC8m75UjV7fmrTWkQkWUgaN5VHbCYaQhn2TF8zciwjBq/kC9syM9
 oJMy6vvx/mv3EQuyHQHWfviSX/ocPRjAZrrWS5xFfz1JrhGOZtsIzbtMIy52s2MbQJ3A
 1ktTKiDKNx+X9QIYu0FblLa2TuYohdZDvX0P2PS/EzWaY3ZzddkXdMSG+KXbmedPLn+w
 hn9mJi5DDAOHQJZy0ESOJR9ZIfD5+WkEJzDIeoCCLfc8KEsiOulO7oyunFrxrIAqP/md
 9kRA==
X-Gm-Message-State: AOAM532SjRlCUrO0EC6e2r5qJtOBwAB5GyqISkzXWgUsCMN7/5dX8T2l
 LaHPwS62A1rBRkjRzElHo9hFwfCewHnXSVWL8es8dShTxpsxAiKL3ZXpLdA9RCNg44uwgEaowlf
 NvkZvFM4usCi8NfKPJVBrBlPq1CbT
X-Received: by 2002:a05:620a:a9c:: with SMTP id
 v28mr5223842qkg.107.1610132513557; 
 Fri, 08 Jan 2021 11:01:53 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwg4dzi6rxVQQjlvpYTsPGfXkAIhakChTQLT1zzbDOwvPss0Oyv4/Xoh8KgLILVOJz3gst3EA==
X-Received: by 2002:a05:620a:a9c:: with SMTP id
 v28mr5223797qkg.107.1610132513141; 
 Fri, 08 Jan 2021 11:01:53 -0800 (PST)
Received: from Whitewolf.lyude.net
 (pool-108-49-102-102.bstnma.fios.verizon.net. [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id 9sm5087072qtr.64.2021.01.08.11.01.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Jan 2021 11:01:52 -0800 (PST)
Message-ID: <e5fd2290fae25fc1167ea6fe91e7060840d0db47.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Date: Fri, 08 Jan 2021 14:01:51 -0500
In-Reply-To: <20210108152841.6944-1-jani.nikula@intel.com>
References: <20210108152841.6944-1-jani.nikula@intel.com>
Organization: Red Hat
User-Agent: Evolution 3.38.2 (3.38.2-1.fc33)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/backlight: fix CPU mode backlight
 takeover on LPT
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
Reply-To: lyude@redhat.com
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmV2aWV3ZWQtYnk6IEx5dWRlIFBhdWwgPGx5dWRlQHJlZGhhdC5jb20+CgpMZXQgbWUga25vdyB3
aGVuIHlvdSd2ZSBwdXNoZWQgdGhpcyB1cHN0cmVhbSBhbmQgSSdsbCBnbyBhaGVhZCBhbmQgc2Vu
ZCBvdXQgYQpyZWJhc2VkIHZlcnNpb24gb2YgbXkgYmFja2xpZ2h0IHNlcmllcy4KCk9uIEZyaSwg
MjAyMS0wMS0wOCBhdCAxNzoyOCArMDIwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4gVGhlIHBjaF9n
ZXRfYmFja2xpZ2h0KCksIGxwdF9nZXRfYmFja2xpZ2h0KCksIGFuZCBscHRfc2V0X2JhY2tsaWdo
dCgpCj4gZnVuY3Rpb25zIG9wZXJhdGUgZGlyZWN0bHkgb24gdGhlIGhhcmR3YXJlIHJlZ2lzdGVy
cy4gSWYgaW52ZXJ0aW5nIHRoZQo+IHZhbHVlIGlzIG5lZWRlZCwgdXNpbmcgaW50ZWxfcGFuZWxf
Y29tcHV0ZV9icmlnaHRuZXNzKCksIGl0IHNob3VsZCBvbmx5Cj4gYmUgZG9uZSBpbiB0aGUgaW50
ZXJmYWNlIGJldHdlZW4gaGFyZHdhcmUgcmVnaXN0ZXJzIGFuZAo+IHBhbmVsLT5iYWNrbGlnaHQu
bGV2ZWwuCj4gCj4gVGhlIENQVSBtb2RlIHRha2VvdmVyIGNvZGUgYWRkZWQgaW4gY29tbWl0IDVi
MWVjOWFjN2FiNQo+ICgiZHJtL2k5MTUvYmFja2xpZ2h0OiBGaXggYmFja2xpZ2h0IHRha2VvdmVy
IG9uIExQVCwgdjMuIikgcmVhZHMgdGhlCj4gaGFyZHdhcmUgcmVnaXN0ZXIgYW5kIGNvbnZlcnRz
IHRvIHBhbmVsLT5iYWNrbGlnaHQubGV2ZWwgY29ycmVjdGx5LAo+IGhvd2V2ZXIgdGhlIHZhbHVl
IHdyaXR0ZW4gYmFjayBzaG91bGQgcmVtYWluIGluIHRoZSBoYXJkd2FyZSByZWdpc3Rlcgo+ICJk
b21haW4iLgo+IAo+IFRoaXMgaGFzbid0IGJlZW4gYW4gaXNzdWUsIGJlY2F1c2UgR000NSBtYWNo
aW5lcyBhcmUgdGhlIG9ubHkga25vd24KPiB1c2VycyBvZiBpOTE1LmludmVydF9icmlnaHRuZXNz
IGFuZCB0aGUgYnJpZ2h0bmVzcyBpbnZlcnQgcXVpcmssIGFuZAo+IHdpdGhvdXQgb25lIG9mIHRo
ZW0gbm8gY29udmVyc2lvbiBpcyBtYWRlLiBJdCdzIGxpa2VseSBub2JvZHkncyBldmVyIGhpdAo+
IHRoZSBwcm9ibGVtLgo+IAo+IEZpeGVzOiA1YjFlYzlhYzdhYjUgKCJkcm0vaTkxNS9iYWNrbGln
aHQ6IEZpeCBiYWNrbGlnaHQgdGFrZW92ZXIgb24gTFBULCB2My4iKQo+IENjOiBNYWFydGVuIExh
bmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+IENjOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IENjOiBMeXVkZSBQYXVs
IDxseXVkZUByZWRoYXQuY29tPgo+IENjOiA8c3RhYmxlQHZnZXIua2VybmVsLm9yZz4gIyB2NS4x
Kwo+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4g
LS0tCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3BhbmVsLmMgfCA5ICsr
KysrLS0tLQo+IMKgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMo
LSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
YW5lbC5jCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3BhbmVsLmMKPiBp
bmRleCA2N2Y4MWFlOTk1YzQuLjdhNDIzOWQxYzI0MSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3BhbmVsLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3BhbmVsLmMKPiBAQCAtMTY0OSwxNiArMTY0OSwxMyBAQCBzdGF0
aWMgaW50IGxwdF9zZXR1cF9iYWNrbGlnaHQoc3RydWN0IGludGVsX2Nvbm5lY3Rvcgo+ICpjb25u
ZWN0b3IsIGVudW0gcGlwZSB1bnVzCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB2
YWwgPSBwY2hfZ2V0X2JhY2tsaWdodChjb25uZWN0b3IpOwo+IMKgwqDCoMKgwqDCoMKgwqBlbHNl
Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB2YWwgPSBscHRfZ2V0X2JhY2tsaWdo
dChjb25uZWN0b3IpOwo+IC3CoMKgwqDCoMKgwqDCoHZhbCA9IGludGVsX3BhbmVsX2NvbXB1dGVf
YnJpZ2h0bmVzcyhjb25uZWN0b3IsIHZhbCk7Cj4gLcKgwqDCoMKgwqDCoMKgcGFuZWwtPmJhY2ts
aWdodC5sZXZlbCA9IGNsYW1wKHZhbCwgcGFuZWwtPmJhY2tsaWdodC5taW4sCj4gLcKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHBhbmVsLT5iYWNrbGlnaHQubWF4KTsKPiDCoAo+IMKgwqDCoMKgwqDCoMKgwqBp
ZiAoY3B1X21vZGUpIHsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRybV9kYmdf
a21zKCZkZXZfcHJpdi0+ZHJtLAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCAiQ1BVIGJhY2tsaWdodCByZWdpc3RlciB3YXMgZW5hYmxlZCwg
c3dpdGNoaW5nIHRvCj4gUENIIG92ZXJyaWRlXG4iKTsKPiDCoAo+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgLyogV3JpdGUgY29udmVydGVkIENQVSBQV00gdmFsdWUgdG8gUENIIG92
ZXJyaWRlIHJlZ2lzdGVyICovCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGxwdF9z
ZXRfYmFja2xpZ2h0KGNvbm5lY3Rvci0+YmFzZS5zdGF0ZSwgcGFuZWwtCj4gPmJhY2tsaWdodC5s
ZXZlbCk7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGxwdF9zZXRfYmFja2xpZ2h0
KGNvbm5lY3Rvci0+YmFzZS5zdGF0ZSwgdmFsKTsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoGludGVsX2RlX3dyaXRlKGRldl9wcml2LCBCTENfUFdNX1BDSF9DVEwxLAo+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBw
Y2hfY3RsMSB8IEJMTV9QQ0hfT1ZFUlJJREVfRU5BQkxFKTsKPiDCoAo+IEBAIC0xNjY2LDYgKzE2
NjMsMTAgQEAgc3RhdGljIGludCBscHRfc2V0dXBfYmFja2xpZ2h0KHN0cnVjdCBpbnRlbF9jb25u
ZWN0b3IKPiAqY29ubmVjdG9yLCBlbnVtIHBpcGUgdW51cwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjcHVfY3RsMiAmIH5CTE1f
UFdNX0VOQUJMRSk7Cj4gwqDCoMKgwqDCoMKgwqDCoH0KPiDCoAo+ICvCoMKgwqDCoMKgwqDCoHZh
bCA9IGludGVsX3BhbmVsX2NvbXB1dGVfYnJpZ2h0bmVzcyhjb25uZWN0b3IsIHZhbCk7Cj4gK8Kg
wqDCoMKgwqDCoMKgcGFuZWwtPmJhY2tsaWdodC5sZXZlbCA9IGNsYW1wKHZhbCwgcGFuZWwtPmJh
Y2tsaWdodC5taW4sCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBhbmVsLT5iYWNrbGlnaHQubWF4KTsK
PiArCj4gwqDCoMKgwqDCoMKgwqDCoHJldHVybiAwOwo+IMKgfQo+IMKgCgotLSAKU2luY2VyZWx5
LAogICBMeXVkZSBQYXVsIChzaGUvaGVyKQogICBTb2Z0d2FyZSBFbmdpbmVlciBhdCBSZWQgSGF0
CiAgIApOb3RlOiBJIGRlYWwgd2l0aCBhIGxvdCBvZiBlbWFpbHMgYW5kIGhhdmUgYSBsb3Qgb2Yg
YnVncyBvbiBteSBwbGF0ZS4gSWYgeW91J3ZlCmFza2VkIG1lIGEgcXVlc3Rpb24sIGFyZSB3YWl0
aW5nIGZvciBhIHJldmlldy9tZXJnZSBvbiBhIHBhdGNoLCBldGMuIGFuZCBJCmhhdmVuJ3QgcmVz
cG9uZGVkIGluIGEgd2hpbGUsIHBsZWFzZSBmZWVsIGZyZWUgdG8gc2VuZCBtZSBhbm90aGVyIGVt
YWlsIHRvIGNoZWNrCm9uIG15IHN0YXR1cy4gSSBkb24ndCBiaXRlIQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
