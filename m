Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 87AB7E77A0
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 18:33:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 592A96E999;
	Mon, 28 Oct 2019 17:33:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com
 [IPv6:2a00:1450:4864:20::141])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E18B6E157
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 17:27:22 +0000 (UTC)
Received: by mail-lf1-x141.google.com with SMTP id j5so2061895lfh.10
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 10:27:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ZSb+GI+dlDvTS/CuNvswHy3Zjrk6DbNi0/Z4MmzIrxE=;
 b=n1I+XrUc9t6PSt4aNZ7E3VObE4lXmL6sAbyNm3rg8hooYIqDlhRXmk+CfP1Oc/+ARf
 mz7CuwU04gv/TimL1CLRUIdWG/O6KxOzF4Yy8r8pf/gEQmmIqQbBdJCyG5Lf0bRynM8y
 c7H2l+PMtcSXnr+c+YcCDLNLRlEoIrRlMDyBESf/ZKGyNAwAY+0ADmDe7FBk/5YYy8aK
 mBSIQ3PqfJpxGd+07Go+mzWwnv4pec2oqWm4WmwncKwKgtUpFlq0XFl/GLulmfK1+5Xf
 ELEER3+O5CHDPiyviKvHtm2WeF+LFtO4lTZ1lMMpfog0E/GU5M0xYJ8Wwe06jlDVX+fg
 /8lA==
X-Gm-Message-State: APjAAAXFq6Hp+EE647GNF8iAxq3ulIWIhXvmcWgbd6RJRN+EJSRW7UID
 VlR5F+Johdo2Pn4JSj4JVPCF5/oyP38ayDIw9yk=
X-Google-Smtp-Source: APXvYqwy6erh39lXc3GB6IfNDcRyNWjxfohaYGgZ3VE6+CHPpxtD6VQkooYSQoPtBMW2LxkuIgpzYUWagDjymSdHM1c=
X-Received: by 2002:a19:746:: with SMTP id 67mr5333997lfh.42.1572283640753;
 Mon, 28 Oct 2019 10:27:20 -0700 (PDT)
MIME-Version: 1.0
References: <20191028110031.29616-1-imre.deak@intel.com>
In-Reply-To: <20191028110031.29616-1-imre.deak@intel.com>
From: Val Kulkov <val.kulkov@gmail.com>
Date: Mon, 28 Oct 2019 13:27:09 -0400
Message-ID: <CABFXWOAstjHw=4Mj6Ajpd49+A5LoFNrTcEQccJWJsEgenbHzaA@mail.gmail.com>
To: Imre Deak <imre.deak@intel.com>
X-Mailman-Approved-At: Mon, 28 Oct 2019 17:33:41 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ZSb+GI+dlDvTS/CuNvswHy3Zjrk6DbNi0/Z4MmzIrxE=;
 b=dqpSz+qEP3bgG9giBGZhtQHDJtM4zJ84eC7/SI231oTd99sj5MOArqUHWv1G/z1Vx7
 7qGvNkWjUhoZrVRKATUZ9WBaKuYnvKhlKubnuCRzlC7avL0H2AtvR+Mebr62URXATghm
 oHa9PGzbxX9/8YtoPGJK50Czio/K9+yO89AmpdyBSXp74KiD0u+n7s2YxHJgX+7vjwSY
 sbfW7XO0NYpXixLz8Fk0Yby5JY5MSXNIHDgk6p2MuUzB8N75Ds9RzW6U9P7ZSsczKwjD
 WiHa+cUZBPlbfSRQeHEbefWQM8QyHtSIp2oIMljcb36jSLH8ig+EXoNSxmOOQvlR/di9
 Ki8w==
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Avoid HPD poll detect triggering
 a new detect cycle
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
Cc: intel-gfx@lists.freedesktop.org, wangqr <wqr.prg@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyOCBPY3QgMjAxOSBhdCAwNzowMiwgSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwu
Y29tPiB3cm90ZToKPgo+IEZvciB0aGUgSFBEIGludGVycnVwdCBmdW5jdGlvbmFsaXR5IHRoZSBI
VyBkZXBlbmRzIG9uIHBvd2VyIHdlbGxzIGluIHRoZQo+IGRpc3BsYXkgY29yZSBkb21haW4gdG8g
YmUgb24uIEFjY29yZGluZ2x5IHdoZW4gZW5hYmxpbmcgdGhlc2UgcG93ZXIKPiB3ZWxscyB0aGUg
SFBEIHBvbGxpbmcgbG9naWMgd2lsbCBmb3JjZSBhbiBIUEQgZGV0ZWN0aW9uIGN5Y2xlIHRvIGFj
Y291bnQKPiBmb3IgaG90cGx1ZyBldmVudHMgdGhhdCBtYXkgaGF2ZSBoYXBwZW5lZCB3aGVuIHN1
Y2ggYSBwb3dlciB3ZWxsIHdhcwo+IG9mZi4KPgo+IFRodXMgYSBkZXRlY3QgY3ljbGUgc3RhcnRl
ZCBieSBwb2xsaW5nIGNvdWxkIHN0YXJ0IGEgbmV3IGRldGVjdCBjeWNsZSBpZgo+IGEgcG93ZXIg
d2VsbCBpbiB0aGUgZGlzcGxheSBjb3JlIGRvbWFpbiBnZXRzIGVuYWJsZWQgZHVyaW5nIGRldGVj
dCBhbmQKPiBzdGF5cyBlbmFibGVkIGFmdGVyIGRldGVjdCBjb21wbGV0ZXMuIFRoYXQgaW4gdHVy
biBjYW4gbGVhZCB0byBhCj4gZGV0ZWN0aW9uIGN5Y2xlIHJ1bmF3YXkuCj4KPiBUbyBwcmV2ZW50
IHJlLXRyaWdnZXJpbmcgYSBwb2xsLWRldGVjdCBjeWNsZSBtYWtlIHN1cmUgd2UgZHJvcCBhbGwg
cG93ZXIKPiByZWZlcmVuY2VzIHdlIGFjcXVpcmVkIGR1cmluZyBkZXRlY3Qgc3luY2hyb25vdXNs
eSBieSB0aGUgZW5kIG9mIGRldGVjdC4KPiBUaGlzIHdpbGwgbGV0IHRoZSBwb2xsLWRldGVjdCBs
b2dpYyBjb250aW51ZSB3aXRoIHBvbGxpbmcgKG1hdGNoaW5nIHRoZQo+IG9mZiBzdGF0ZSBvZiB0
aGUgY29ycmVzcG9uZGluZyBwb3dlciB3ZWxscykgaW5zdGVhZCBvZiBzY2hlZHVsaW5nIGEgbmV3
Cj4gZGV0ZWN0aW9uIGN5Y2xlLgo+Cj4gRml4ZXM6IDZjZmU3ZWMwMmU4NSAoImRybS9pOTE1OiBS
ZW1vdmUgdGhlIHVubmVlZGVkIEFVWCBwb3dlciByZWYgZnJvbSBpbnRlbF9kcF9kZXRlY3QoKSIp
Cj4gQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lk
PTExMjEyNQo+IFJlcG9ydGVkLWJ5OiBWYWwgS3Vsa292IDx2YWwua3Vsa292QGdtYWlsLmNvbT4K
PiBSZXBvcnRlZC1hbmQtdGVzdGVkLWJ5OiB3YW5ncXIgPCB3cXIucHJnQGdtYWlsLmNvbT4KPiBD
YzogVmFsIEt1bGtvdiA8dmFsLmt1bGtvdkBnbWFpbC5jb20+Cj4gQ2M6IHdhbmdxciA8IHdxci5w
cmdAZ21haWwuY29tPgo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNv
bT4KClRoZSBwYXRjaCBoYXMgYmVlbiB0ZXN0ZWQgd2l0aCBsaW51eC1kcm0tdGlwLWdpdAo1LjQu
ODY1MTYyLmRkNWJjY2ZhM2I1ZC0xIG9uIEVnbG9iYWwgTlVDIEZhbmxlc3MgTWluaSBQQyBJbnRl
bCBOMzE1MAphbmQgSW50ZWwgTlVDIEQzNDAxMFdZSy4gSW4gYm90aCBjYXNlcywgdGhlIHJlcG9y
dGVkIHByb2JsZW0gd2FzIG5vCmxvbmdlciBvYnNlcnZlZC4KClRlc3RlZC1ieTogVmFsIEt1bGtv
diA8dmFsLmt1bGtvdkBnbWFpbC5jb20+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
