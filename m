Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9F6610D7D3
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 16:22:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E3176E929;
	Fri, 29 Nov 2019 15:22:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C939A6E928
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2019 15:22:37 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id s14so8724872wmh.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2019 07:22:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=F/Q8DCEQHxipt0D809lFJ1ZaQIeTBrtpgHJwkLpYboQ=;
 b=hS3CJZTqKW3gxhYtGn9+mwqYdErQaJfo2tob0rdORe+h4urLJ69IUMpVPxVwoZmBDR
 NnFd/tQcdAAHWr88j7G82dZ9Yp7nqEAmOgtXLQPAw573/m2f2cnCn/Z4cmrTLV4SpXrq
 FLgtPQgAxhPfdb/AS3VThllyOp/Hj/6eVEr9+J6KBq58FpH+3FVzgsSMzOG6c40lYhna
 +43iEdv4fBIWBy1+35tfwtksXu7KMu2PVagfyB2C1XyVJD5f7P9n31i+YZZb5f1EZAUN
 M43WYI82n/NaMtp4UGIvI2b5NcefAMxlVO9kc79AhAOtfdj5SOc4Soh2cCJZl8WEigol
 1D2Q==
X-Gm-Message-State: APjAAAXdx3zcqBByw/eEo33zgBd88SeodFOiz3NAyUUIoUdAdxCWhntr
 7aC2ig+UxWPus5d0v2T/YvSflv/f4Bg=
X-Google-Smtp-Source: APXvYqwv+qUWfUvPlwhsbTw+GSuqKACcjSIji4gM5DzWTQ0B4B1vAyEIyU6RSflfsgvRveAEZVzzQg==
X-Received: by 2002:a1c:2e8f:: with SMTP id
 u137mr15635844wmu.105.1575040956343; 
 Fri, 29 Nov 2019 07:22:36 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id r2sm14461823wma.44.2019.11.29.07.22.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Nov 2019 07:22:35 -0800 (PST)
Date: Fri, 29 Nov 2019 16:22:33 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20191129152233.GF624164@phenom.ffwll.local>
References: <cover.1575022735.git.jani.nikula@intel.com>
 <022c82429da15d6450ff9ac1a897322ec3124db4.1575022735.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <022c82429da15d6450ff9ac1a897322ec3124db4.1575022735.git.jani.nikula@intel.com>
X-Operating-System: Linux phenom 5.3.0-2-amd64 
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent;
 bh=F/Q8DCEQHxipt0D809lFJ1ZaQIeTBrtpgHJwkLpYboQ=;
 b=dz7QEhPlpcx0Lq5GK/rlPwe/mDkO6pvPhOHrMlDpbXQgj/QLgnpS8sXzfGOxXzVh1D
 CiZb4sKcEl42usn9Gi7cT7gIpneT6qHePWVWUfdbtN2SWaf3DXQq4GT56XZmweXLyBQs
 vM65/ZHrJVjVRrqFScUMHbsRpXBz5k9Jq9XOo=
Subject: Re: [Intel-gfx] [PATCH v2 01/14] video: fb_defio: preserve user
 fb_ops
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
Cc: linux-fbdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Jaya Kumar <jayalk@intworks.biz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBOb3YgMjksIDIwMTkgYXQgMTI6Mjk6MzFQTSArMDIwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gTW9kaWZ5aW5nIGZiX29wcyBkaXJlY3RseSB0byBvdmVycmlkZSBmYl9tbWFwIHdpdGgg
ZmJfZGVmZXJyZWRfaW9fbW1hcAo+IGFuZCB0aGVuIHJlc2V0dGluZyBpdCB0byBOVUxMIGFmdGVy
d2FyZHMgY2F1c2VzIHByb2JsZW1zIGFsbCBvdmVyIHRoZQo+IHBsYWNlLiBGaXJzdCwgaXQgcHJl
dmVudHMgbWFraW5nIHRoZSBmYm9wcyBtZW1iZXIgb2Ygc3RydWN0IGZiX2luZm8gYQo+IGNvbnN0
IHBvaW50ZXIsIHdoaWNoIG1lYW5zIHdlIGNhbid0IG1ha2Ugc3RydWN0IGZiX29wcyBjb25zdAo+
IGFueXdoZXJlLiBTZWNvbmQsIGEgZmV3IHBsYWNlcyBoYXZlIHRvIGdvIG91dCBvZiB0aGVpciB3
YXkgdG8gcmVzdG9yZQo+IHRoZSBvcmlnaW5hbCBmYl9tbWFwIHBvaW50ZXIgdGhhdCBnZXRzIHJl
c2V0IHRvIE5VTEwuCj4gCj4gU2luY2UgdGhlIG9ubHkgdXNlciBvZiB0aGUgZmJvcHMtPmZiX21t
YXAgaG9vayBpcyBmYl9tbWFwKCkgaW4gZmJtZW0uYywKPiBjYWxsIGZiX2RlZmVycmVkX2lvX21t
YXAoKSBkaXJlY3RseSB3aGVuIGRlZmVycmVkIElPIGlzIGVuYWJsZWQsIGFuZAo+IGF2b2lkIG1v
ZGlmeWluZyBmYl9vcHMgYWx0b2dldGhlci4KPiAKPiBTaW1wbHkgdXNlIGluZm8tPmZiZGVmaW8g
dG8gZGV0ZXJtaW5lIHdoZXRoZXIgZGVmZXJyZWQgSU8gc2hvdWxkIGJlIHVzZWQKPiBvciBub3Qu
IFRoaXMgc2hvdWxkIGJlIGFjY3VyYXRlIGVub3VnaCBmb3IgYWxsIHVzZSBjYXNlcywgYWx0aG91
Z2gKPiBwZXJoYXBzIG5vdCBwZWRhbnRpY2FsbHkgY29ycmVjdC4KPiAKPiB2MjogU2ltcGxpZnkg
Y29uc2lkZXJhYmx5IGJ5IGNhbGxpbmcgZmJfZGVmZXJyZWRfaW9fbW1hcCgpIGRpcmVjdGx5Cj4g
ICAgIChEYW5pZWwsIFZpbGxlKQo+IAo+IENjOiBKYXlhIEt1bWFyIDxqYXlhbGtAaW50d29ya3Mu
Yml6Pgo+IENjOiBsaW51eC1mYmRldkB2Z2VyLmtlcm5lbC5vcmcKPiBDYzogRGFuaWVsIFZldHRl
ciA8ZGFuaWVsQGZmd2xsLmNoPgo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3Vs
YUBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvdmlkZW8vZmJkZXYvY29yZS9mYl9kZWZpby5j
IHwgIDMgLS0tCj4gIGRyaXZlcnMvdmlkZW8vZmJkZXYvY29yZS9mYm1lbS5jICAgIHwgMTUgKysr
KysrKysrKystLS0tCj4gIDIgZmlsZXMgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgNyBkZWxl
dGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy92aWRlby9mYmRldi9jb3JlL2ZiX2Rl
ZmlvLmMgYi9kcml2ZXJzL3ZpZGVvL2ZiZGV2L2NvcmUvZmJfZGVmaW8uYwo+IGluZGV4IDgyYzIw
YzYwNDdiMC4uYTU5MWQyOTFiMjMxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvdmlkZW8vZmJkZXYv
Y29yZS9mYl9kZWZpby5jCj4gKysrIGIvZHJpdmVycy92aWRlby9mYmRldi9jb3JlL2ZiX2RlZmlv
LmMKPiBAQCAtMTcxLDcgKzE3MSw2IEBAIGludCBmYl9kZWZlcnJlZF9pb19tbWFwKHN0cnVjdCBm
Yl9pbmZvICppbmZvLCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSkKPiAgCXZtYS0+dm1fcHJp
dmF0ZV9kYXRhID0gaW5mbzsKPiAgCXJldHVybiAwOwo+ICB9Cj4gLUVYUE9SVF9TWU1CT0woZmJf
ZGVmZXJyZWRfaW9fbW1hcCk7Cj4gIAo+ICAvKiB3b3JrcXVldWUgY2FsbGJhY2sgKi8KPiAgc3Rh
dGljIHZvaWQgZmJfZGVmZXJyZWRfaW9fd29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCj4g
QEAgLTIwNiw3ICsyMDUsNiBAQCB2b2lkIGZiX2RlZmVycmVkX2lvX2luaXQoc3RydWN0IGZiX2lu
Zm8gKmluZm8pCj4gIAo+ICAJQlVHX09OKCFmYmRlZmlvKTsKPiAgCW11dGV4X2luaXQoJmZiZGVm
aW8tPmxvY2spOwo+IC0JaW5mby0+ZmJvcHMtPmZiX21tYXAgPSBmYl9kZWZlcnJlZF9pb19tbWFw
Owo+ICAJSU5JVF9ERUxBWUVEX1dPUksoJmluZm8tPmRlZmVycmVkX3dvcmssIGZiX2RlZmVycmVk
X2lvX3dvcmspOwo+ICAJSU5JVF9MSVNUX0hFQUQoJmZiZGVmaW8tPnBhZ2VsaXN0KTsKPiAgCWlm
IChmYmRlZmlvLT5kZWxheSA9PSAwKSAvKiBzZXQgYSBkZWZhdWx0IG9mIDEgcyAqLwo+IEBAIC0y
MzcsNyArMjM1LDYgQEAgdm9pZCBmYl9kZWZlcnJlZF9pb19jbGVhbnVwKHN0cnVjdCBmYl9pbmZv
ICppbmZvKQo+ICAJCXBhZ2UtPm1hcHBpbmcgPSBOVUxMOwo+ICAJfQo+ICAKPiAtCWluZm8tPmZi
b3BzLT5mYl9tbWFwID0gTlVMTDsKPiAgCW11dGV4X2Rlc3Ryb3koJmZiZGVmaW8tPmxvY2spOwo+
ICB9Cj4gIEVYUE9SVF9TWU1CT0xfR1BMKGZiX2RlZmVycmVkX2lvX2NsZWFudXApOwo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL3ZpZGVvL2ZiZGV2L2NvcmUvZmJtZW0uYyBiL2RyaXZlcnMvdmlkZW8v
ZmJkZXYvY29yZS9mYm1lbS5jCj4gaW5kZXggODZiMDZhNTk5Zjk2Li45OTA1NTA5MzBhOGUgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy92aWRlby9mYmRldi9jb3JlL2ZibWVtLmMKPiArKysgYi9kcml2
ZXJzL3ZpZGVvL2ZiZGV2L2NvcmUvZmJtZW0uYwo+IEBAIC0xMzMyLDE2ICsxMzMyLDIzIEBAIHN0
YXRpYyBpbnQKPiAgZmJfbW1hcChzdHJ1Y3QgZmlsZSAqZmlsZSwgc3RydWN0IHZtX2FyZWFfc3Ry
dWN0ICogdm1hKQo+ICB7Cj4gIAlzdHJ1Y3QgZmJfaW5mbyAqaW5mbyA9IGZpbGVfZmJfaW5mbyhm
aWxlKTsKPiAtCXN0cnVjdCBmYl9vcHMgKmZiOwo+ICsJaW50ICgqZmJfbW1hcF9mbikoc3RydWN0
IGZiX2luZm8gKmluZm8sIHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hKTsKCk9oIEkgZnVuY3Rp
b24gcG9pbnRlciBmb3IgdGlkaWVyIGNvbnRyb2wgZmxvdywgbmVhdG8uCgpSZXZpZXdlZC1ieTog
RGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KCj4gIAl1bnNpZ25lZCBsb25n
IG1taW9fcGdvZmY7Cj4gIAl1bnNpZ25lZCBsb25nIHN0YXJ0Owo+ICAJdTMyIGxlbjsKPiAgCj4g
IAlpZiAoIWluZm8pCj4gIAkJcmV0dXJuIC1FTk9ERVY7Cj4gLQlmYiA9IGluZm8tPmZib3BzOwo+
ICAJbXV0ZXhfbG9jaygmaW5mby0+bW1fbG9jayk7Cj4gLQlpZiAoZmItPmZiX21tYXApIHsKPiAr
Cj4gKwlmYl9tbWFwX2ZuID0gaW5mby0+ZmJvcHMtPmZiX21tYXA7Cj4gKwo+ICsjaWYgSVNfRU5B
QkxFRChDT05GSUdfRkJfREVGRVJSRURfSU8pCj4gKwlpZiAoaW5mby0+ZmJkZWZpbykKPiArCQlm
Yl9tbWFwX2ZuID0gZmJfZGVmZXJyZWRfaW9fbW1hcDsKPiArI2VuZGlmCj4gKwo+ICsJaWYgKGZi
X21tYXBfZm4pIHsKPiAgCQlpbnQgcmVzOwo+ICAKPiAgCQkvKgo+IEBAIC0xMzQ5LDcgKzEzNTYs
NyBAQCBmYl9tbWFwKHN0cnVjdCBmaWxlICpmaWxlLCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKiB2
bWEpCj4gIAkJICogU01FIHByb3RlY3Rpb24gaXMgcmVtb3ZlZCBhaGVhZCBvZiB0aGUgY2FsbAo+
ICAJCSAqLwo+ICAJCXZtYS0+dm1fcGFnZV9wcm90ID0gcGdwcm90X2RlY3J5cHRlZCh2bWEtPnZt
X3BhZ2VfcHJvdCk7Cj4gLQkJcmVzID0gZmItPmZiX21tYXAoaW5mbywgdm1hKTsKPiArCQlyZXMg
PSBmYl9tbWFwX2ZuKGluZm8sIHZtYSk7Cj4gIAkJbXV0ZXhfdW5sb2NrKCZpbmZvLT5tbV9sb2Nr
KTsKPiAgCQlyZXR1cm4gcmVzOwo+ICAJfQo+IC0tIAo+IDIuMjAuMQo+IAoKLS0gCkRhbmllbCBW
ZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZm
d2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
