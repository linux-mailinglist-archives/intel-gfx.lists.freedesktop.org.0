Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A299D136E3A
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 14:39:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB3586EA1C;
	Fri, 10 Jan 2020 13:39:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf42.google.com (mail-qv1-xf42.google.com
 [IPv6:2607:f8b0:4864:20::f42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4E896EA1C
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 13:38:59 +0000 (UTC)
Received: by mail-qv1-xf42.google.com with SMTP id x1so724612qvr.8
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 05:38:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=fMAknfduyJ4KGyOdOztEB55i6TuQcuStmuAf8sYi2eI=;
 b=Y4E1E1wUN53of8IKrA0UNXWcZ0od9J5pJD4CL7BcST6fyGUAy9OBi/XHtSE0+st8gq
 TGEE9zurQhxWwAhggI0+8iYrga2zsnu8EpueVcqg2M2WD9Kx0fvEliLvArowBqdDC/78
 myfyPj/1qPFqWZQRf5dvWU7rWU0D3LAmSgaoMY1vQaMxYPR5rhUwu4BN0f7jUzFjj6X9
 veF4h408LAm5cEyifzScQA+MFgplBXPnY60Qz5+lEuBujA8lMIePhoDGpOQwqj/Vdu76
 4Ot9ZIbZ+/sXDrTxktGCT3LrDOnvNu6KIEPYgKeEaa8E9HRwaRxEQyxwyGvhG9yTXm8B
 uWIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=fMAknfduyJ4KGyOdOztEB55i6TuQcuStmuAf8sYi2eI=;
 b=J4TyZzpCOwtkASuHveoGiH9F++XR6jGT9kB9ZHWZRaGiAFZ0I++U2mMaixcfLCUja7
 /aoe1XOKlh2M9HE/wVYuoDhMij22MxQLgt7rxa347IloYr/dUXVPmQF3GKsSrnna+Gi5
 BAqpCACFINQ6Fvr6q4BXjV8acnTYyEkZvhbRyJf3TEiMDPUPzLlrGkyNJNyTJzjzcAhL
 oRTn1REuQS+qWc6YuQ4L8jfk+4zGtqlq+/jgYNfz+qZSvBAY+Ot+UEBaPUSHv8eUoenm
 2DPe19GL6zQqu/kYlethc7QKaBxEBTx/qzMwUNUIxstTatelIlmsWjgKqFhDcYAhaxqK
 lDVw==
X-Gm-Message-State: APjAAAUdcTfDbpD2iuKai6MsycOfJA0PwOf5c+DvtyBF6b9IEG/uHLie
 GTV4sV9xN2SJgpXDXEDCZ1UjGDFmilkQ33GpDz4FNA==
X-Google-Smtp-Source: APXvYqzt0hS9515d/LMBMh30b3dDfboM+EvgjQK5PnPq9CxP8nSXa8zseir0K/ItbGYsdAvOkTTPA7bWz+aHqvETPhQ=
X-Received: by 2002:a0c:f748:: with SMTP id e8mr2753245qvo.233.1578663538806; 
 Fri, 10 Jan 2020 05:38:58 -0800 (PST)
MIME-Version: 1.0
References: <20200110092127.27847-1-tzimmermann@suse.de>
 <20200110092127.27847-19-tzimmermann@suse.de>
In-Reply-To: <20200110092127.27847-19-tzimmermann@suse.de>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Fri, 10 Jan 2020 14:38:47 +0100
Message-ID: <CA+M3ks5ejLV2ggi3kzkR5YOV6+SJavOHDT7oT6HBCHe33LqtcA@mail.gmail.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [Intel-gfx] [PATCH 18/23] drm/sti: Convert to CRTC VBLANK
 callbacks
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
Cc: hamohammed.sa@gmail.com, David Airlie <airlied@linux.ie>,
 nouveau@lists.freedesktop.org, ML dri-devel <dri-devel@lists.freedesktop.org>,
 Eric Anholt <eric@anholt.net>, amd-gfx@lists.freedesktop.org,
 Alexandre Torgue <alexandre.torgue@st.com>, David Zhou <David1.Zhou@amd.com>,
 Thomas Hellstrom <thellstrom@vmware.com>, linux-graphics-maintainer@vmware.com,
 bskeggs@redhat.com, Harry Wentland <harry.wentland@amd.com>,
 sunpeng.li@amd.com, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Vincent Abriou <vincent.abriou@st.com>,
 Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>,
 Philippe Cornu <philippe.cornu@st.com>, Yannick Fertre <yannick.fertre@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alex Deucher <alexander.deucher@amd.com>, freedreno@lists.freedesktop.org,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TGUgdmVuLiAxMCBqYW52LiAyMDIwIMOgIDEwOjIxLCBUaG9tYXMgWmltbWVybWFubiA8dHppbW1l
cm1hbm5Ac3VzZS5kZT4gYSDDqWNyaXQgOgo+Cj4gVkJMQU5LIGNhbGxiYWNrcyBpbiBzdHJ1Y3Qg
ZHJtX2RyaXZlciBhcmUgZGVwcmVjYXRlZCBpbiBmYXZvciBvZgo+IHRoZWlyIGVxdWl2YWxlbnRz
IGluIHN0cnVjdCBkcm1fY3J0Y19mdW5jcy4gQ29udmVydCBzdGkgb3Zlci4KPgoKSGkgVGhvbWFz
LAoKU2luY2UgeW91IHJlbW92ZSB0aGUgbGFzdCBjYWxscyB0byBzdGlfY3J0YyBmdW5jdGlvbnMg
ZnJvbSBzdGlfZHJ2LmMgSQp0aGluayB0aGF0IHRoZSBpbmNsdWRlIGNvdWxkIGFsc28gYmUgcmVt
b3ZlZC4KCkFueXdheSB0aGF0IGxvb2tzIGZvciBtZToKQWNrZWQtYnk6IEJlbmphbWluIEdhaWdu
YXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBsaW5hb3Iub3JnPgoKVGhhbmtzLApCZW5qYW1pbgoKPiBT
aWduZWQtb2ZmLWJ5OiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4KPiAt
LS0KPiAgZHJpdmVycy9ncHUvZHJtL3N0aS9zdGlfY3J0Yy5jIHwgMTEgKysrKysrKystLS0KPiAg
ZHJpdmVycy9ncHUvZHJtL3N0aS9zdGlfY3J0Yy5oIHwgIDIgLS0KPiAgZHJpdmVycy9ncHUvZHJt
L3N0aS9zdGlfZHJ2LmMgIHwgIDMgLS0tCj4gIDMgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25z
KCspLCA4IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9zdGkv
c3RpX2NydGMuYyBiL2RyaXZlcnMvZ3B1L2RybS9zdGkvc3RpX2NydGMuYwo+IGluZGV4IGRjNjRm
YmZjNGU2MS4uNDllNmNiOGY1ODM2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zdGkv
c3RpX2NydGMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9zdGkvc3RpX2NydGMuYwo+IEBAIC0y
NzksMTIgKzI3OSwxMyBAQCBpbnQgc3RpX2NydGNfdmJsYW5rX2NiKHN0cnVjdCBub3RpZmllcl9i
bG9jayAqbmIsCj4gICAgICAgICByZXR1cm4gMDsKPiAgfQo+Cj4gLWludCBzdGlfY3J0Y19lbmFi
bGVfdmJsYW5rKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHVuc2lnbmVkIGludCBwaXBlKQo+ICtz
dGF0aWMgaW50IHN0aV9jcnRjX2VuYWJsZV92Ymxhbmsoc3RydWN0IGRybV9jcnRjICpjcnRjKQo+
ICB7Cj4gKyAgICAgICBzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gY3J0Yy0+ZGV2Owo+ICsgICAg
ICAgdW5zaWduZWQgaW50IHBpcGUgPSBjcnRjLT5pbmRleDsKPiAgICAgICAgIHN0cnVjdCBzdGlf
cHJpdmF0ZSAqZGV2X3ByaXYgPSBkZXYtPmRldl9wcml2YXRlOwo+ICAgICAgICAgc3RydWN0IHN0
aV9jb21wb3NpdG9yICpjb21wbyA9IGRldl9wcml2LT5jb21wbzsKPiAgICAgICAgIHN0cnVjdCBu
b3RpZmllcl9ibG9jayAqdnRnX3ZibGFua19uYiA9ICZjb21wby0+dnRnX3ZibGFua19uYltwaXBl
XTsKPiAtICAgICAgIHN0cnVjdCBkcm1fY3J0YyAqY3J0YyA9ICZjb21wby0+bWl4ZXJbcGlwZV0t
PmRybV9jcnRjOwo+ICAgICAgICAgc3RydWN0IHN0aV92dGcgKnZ0ZyA9IGNvbXBvLT52dGdbcGlw
ZV07Cj4KPiAgICAgICAgIERSTV9ERUJVR19EUklWRVIoIlxuIik7Cj4gQEAgLTI5Nyw4ICsyOTgs
MTAgQEAgaW50IHN0aV9jcnRjX2VuYWJsZV92Ymxhbmsoc3RydWN0IGRybV9kZXZpY2UgKmRldiwg
dW5zaWduZWQgaW50IHBpcGUpCj4gICAgICAgICByZXR1cm4gMDsKPiAgfQo+Cj4gLXZvaWQgc3Rp
X2NydGNfZGlzYWJsZV92Ymxhbmsoc3RydWN0IGRybV9kZXZpY2UgKmRybV9kZXYsIHVuc2lnbmVk
IGludCBwaXBlKQo+ICtzdGF0aWMgdm9pZCBzdGlfY3J0Y19kaXNhYmxlX3ZibGFuayhzdHJ1Y3Qg
ZHJtX2NydGMgKmNydGMpCj4gIHsKPiArICAgICAgIHN0cnVjdCBkcm1fZGV2aWNlICpkcm1fZGV2
ID0gY3J0Yy0+ZGV2Owo+ICsgICAgICAgdW5zaWduZWQgaW50IHBpcGUgPSBjcnRjLT5pbmRleDsK
PiAgICAgICAgIHN0cnVjdCBzdGlfcHJpdmF0ZSAqcHJpdiA9IGRybV9kZXYtPmRldl9wcml2YXRl
Owo+ICAgICAgICAgc3RydWN0IHN0aV9jb21wb3NpdG9yICpjb21wbyA9IHByaXYtPmNvbXBvOwo+
ICAgICAgICAgc3RydWN0IG5vdGlmaWVyX2Jsb2NrICp2dGdfdmJsYW5rX25iID0gJmNvbXBvLT52
dGdfdmJsYW5rX25iW3BpcGVdOwo+IEBAIC0zMzAsNiArMzMzLDggQEAgc3RhdGljIGNvbnN0IHN0
cnVjdCBkcm1fY3J0Y19mdW5jcyBzdGlfY3J0Y19mdW5jcyA9IHsKPiAgICAgICAgIC5hdG9taWNf
ZHVwbGljYXRlX3N0YXRlID0gZHJtX2F0b21pY19oZWxwZXJfY3J0Y19kdXBsaWNhdGVfc3RhdGUs
Cj4gICAgICAgICAuYXRvbWljX2Rlc3Ryb3lfc3RhdGUgPSBkcm1fYXRvbWljX2hlbHBlcl9jcnRj
X2Rlc3Ryb3lfc3RhdGUsCj4gICAgICAgICAubGF0ZV9yZWdpc3RlciA9IHN0aV9jcnRjX2xhdGVf
cmVnaXN0ZXIsCj4gKyAgICAgICAuZW5hYmxlX3ZibGFuayA9IHN0aV9jcnRjX2VuYWJsZV92Ymxh
bmssCj4gKyAgICAgICAuZGlzYWJsZV92YmxhbmsgPSBzdGlfY3J0Y19kaXNhYmxlX3ZibGFuaywK
PiAgfTsKPgo+ICBib29sIHN0aV9jcnRjX2lzX21haW4oc3RydWN0IGRybV9jcnRjICpjcnRjKQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vc3RpL3N0aV9jcnRjLmggYi9kcml2ZXJzL2dw
dS9kcm0vc3RpL3N0aV9jcnRjLmgKPiBpbmRleCBkZjQ4OWFiMTRlMmIuLjExMzJiNDU4NjcxMiAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vc3RpL3N0aV9jcnRjLmgKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vc3RpL3N0aV9jcnRjLmgKPiBAQCAtMTUsOCArMTUsNiBAQCBzdHJ1Y3Qgc3Rp
X21peGVyOwo+Cj4gIGludCBzdGlfY3J0Y19pbml0KHN0cnVjdCBkcm1fZGV2aWNlICpkcm1fZGV2
LCBzdHJ1Y3Qgc3RpX21peGVyICptaXhlciwKPiAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJt
X3BsYW5lICpwcmltYXJ5LCBzdHJ1Y3QgZHJtX3BsYW5lICpjdXJzb3IpOwo+IC1pbnQgc3RpX2Ny
dGNfZW5hYmxlX3ZibGFuayhzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB1bnNpZ25lZCBpbnQgcGlw
ZSk7Cj4gLXZvaWQgc3RpX2NydGNfZGlzYWJsZV92Ymxhbmsoc3RydWN0IGRybV9kZXZpY2UgKmRl
diwgdW5zaWduZWQgaW50IHBpcGUpOwo+ICBpbnQgc3RpX2NydGNfdmJsYW5rX2NiKHN0cnVjdCBu
b3RpZmllcl9ibG9jayAqbmIsCj4gICAgICAgICAgICAgICAgICAgICAgICB1bnNpZ25lZCBsb25n
IGV2ZW50LCB2b2lkICpkYXRhKTsKPiAgYm9vbCBzdGlfY3J0Y19pc19tYWluKHN0cnVjdCBkcm1f
Y3J0YyAqZHJtX2NydGMpOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vc3RpL3N0aV9k
cnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9zdGkvc3RpX2Rydi5jCj4gaW5kZXggYTM5ZmMzNmY4MTVi
Li44ZTMwMDAxYmY1NDUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3N0aS9zdGlfZHJ2
LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vc3RpL3N0aV9kcnYuYwo+IEBAIC0xNDYsOSArMTQ2
LDYgQEAgc3RhdGljIHN0cnVjdCBkcm1fZHJpdmVyIHN0aV9kcml2ZXIgPSB7Cj4gICAgICAgICAu
ZHVtYl9jcmVhdGUgPSBkcm1fZ2VtX2NtYV9kdW1iX2NyZWF0ZSwKPiAgICAgICAgIC5mb3BzID0g
JnN0aV9kcml2ZXJfZm9wcywKPgo+IC0gICAgICAgLmVuYWJsZV92YmxhbmsgPSBzdGlfY3J0Y19l
bmFibGVfdmJsYW5rLAo+IC0gICAgICAgLmRpc2FibGVfdmJsYW5rID0gc3RpX2NydGNfZGlzYWJs
ZV92YmxhbmssCj4gLQo+ICAgICAgICAgLnByaW1lX2hhbmRsZV90b19mZCA9IGRybV9nZW1fcHJp
bWVfaGFuZGxlX3RvX2ZkLAo+ICAgICAgICAgLnByaW1lX2ZkX3RvX2hhbmRsZSA9IGRybV9nZW1f
cHJpbWVfZmRfdG9faGFuZGxlLAo+ICAgICAgICAgLmdlbV9wcmltZV9nZXRfc2dfdGFibGUgPSBk
cm1fZ2VtX2NtYV9wcmltZV9nZXRfc2dfdGFibGUsCj4gLS0KPiAyLjI0LjEKPgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
