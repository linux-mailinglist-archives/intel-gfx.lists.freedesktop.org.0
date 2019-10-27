Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC5AE6571
	for <lists+intel-gfx@lfdr.de>; Sun, 27 Oct 2019 21:53:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEC8E6E30D;
	Sun, 27 Oct 2019 20:53:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 499E26E30D
 for <intel-gfx@lists.freedesktop.org>; Sun, 27 Oct 2019 20:53:31 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id r1so7773084wrs.9
 for <intel-gfx@lists.freedesktop.org>; Sun, 27 Oct 2019 13:53:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2GI0rvLLMoOLOzyXpxx4npGXzX0AvyTlc+Q+4tKQJE8=;
 b=YhLaLTifLjJTx24FXOxDDJayTKcvrTICHkXsSMud6muk60109SAgXcjay+LE1fMtSr
 Jfrq5jWVb6na3stTxPlSpavAolw/F2cudveiRwSVb4WFc9+GPivXSuEdp9KH7h4AU+wZ
 ts96ixEKRk/YmMnRhWky+zNg6VSLKs/lcqyCtRCpKpre+loTdKbG0IGJXTbP9IwZdxIE
 EzDCad+JuDAqDPxWG87FpHxWYuBYqEzFmC5F8L1uB6ou87N7hXcQs21WHyXCUfflddTF
 pRvUlFmUOekSDqaSYtT2FY9fm//a3HqyoN6y41B+x/0Ar695hBWhYEHonZMBw4vIiBQY
 Ssjg==
X-Gm-Message-State: APjAAAUAWLCIaF6tBHcn+dO9nTZ/wHURGZZLLAqfyzEA5S7GRNXbtMh3
 GM+bLAYJT4s+Kf4LDXmO2yK4fClz7+E=
X-Google-Smtp-Source: APXvYqwIra6iJG8Gzo/dm07KyPI3Lq51F0obLD95w6iGArvea73bnmldlRAk2nI7/TyKiM+4pTBe/A==
X-Received: by 2002:adf:e7cf:: with SMTP id e15mr12067602wrn.303.1572209609316; 
 Sun, 27 Oct 2019 13:53:29 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.139.76])
 by smtp.googlemail.com with ESMTPSA id a71sm10230496wme.11.2019.10.27.13.53.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 27 Oct 2019 13:53:28 -0700 (PDT)
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191008161441.12721-1-ville.syrjala@linux.intel.com>
 <20191008161441.12721-6-ville.syrjala@linux.intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Message-ID: <1edb0c61-f6fe-4989-7582-ccf40469a0e5@gmail.com>
Date: Sun, 27 Oct 2019 22:53:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191008161441.12721-6-ville.syrjala@linux.intel.com>
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=reply-to:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=2GI0rvLLMoOLOzyXpxx4npGXzX0AvyTlc+Q+4tKQJE8=;
 b=krddF6JV4D/qTVw67j2vmKWRro3kaGQj+wWjmG9yknu0LipWxo4gmEcyepc+x3FZRg
 X8iV+uGZ4ZUGdz8/2vtC2tAYQTZh3my1Iyalxga74MazfcyDhTcNU2ZK2OPqfDIksc+3
 Nf35swvGfbijqKy4FzLKCcQul7eSrRiyLRf/kQ02wfPte2RVbT+bvcD+DLAMItpeIQqz
 3gSLSrksJ/UKC2K7NXZx6+eaT5CiBPK8zJwTGwiOwrw2mlW6GxkseI289UEYUTSVrWit
 g4tOQB+k4mvZ3PcymwElX5tzfamNvYwdBAy4/TNEQ0WHz1c+Mhk65ruuM8JzQTtnmB93
 /ewg==
Subject: Re: [Intel-gfx] [PATCH 6/9] drm/i915: Sort format arrays
 consistently
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
Reply-To: juhapekka.heikkila@gmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmV2aWV3ZWQtYnk6IEp1aGEtUGVra2EgSGVpa2tpbGEgPGp1aGFwZWtrYS5oZWlra2lsYUBnbWFp
bC5jb20+CgpPbiA4LjEwLjIwMTkgMTkuMTQsIFZpbGxlIFN5cmphbGEgd3JvdGU6Cj4gRnJvbTog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiAKPiBMZXQn
cyB0cnkgdG8ga2VlcCB0aGUgcGl4ZWwgZm9ybWF0IGFycmF5cyBzb21ld2hhdCBzb3J0ZWQ6Cj4g
MS4gUkdCIGJlZm9yZSBZVVYKPiAyLiBzbWFsbGVyIGJwcCBiZWZvcmUgbGFyZ2VyIGJwcAo+IDMu
IFggYmVmb3JlIEEKPiA0LiBSR0IgYmVmb3JlIEJHUgo+IAo+IFNpZ25lZC1vZmYtYnk6IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8ICAyICstCj4gICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jICB8IDIwICsrKysrKysrKyst
LS0tLS0tLS0tCj4gICAyIGZpbGVzIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDExIGRlbGV0
aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jCj4gaW5kZXggMWNkY2QwZWEwNTY0Li5hODEyNGYwMWJkYjIgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IEBAIC04Myw4ICs4Myw4IEBA
Cj4gICAvKiBQcmltYXJ5IHBsYW5lIGZvcm1hdHMgZm9yIGdlbiA8PSAzICovCj4gICBzdGF0aWMg
Y29uc3QgdTMyIGk4eHhfcHJpbWFyeV9mb3JtYXRzW10gPSB7Cj4gICAJRFJNX0ZPUk1BVF9DOCwK
PiAtCURSTV9GT1JNQVRfUkdCNTY1LAo+ICAgCURSTV9GT1JNQVRfWFJHQjE1NTUsCj4gKwlEUk1f
Rk9STUFUX1JHQjU2NSwKPiAgIAlEUk1fRk9STUFUX1hSR0I4ODg4LAo+ICAgfTsKPiAgIAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYwo+IGluZGV4IGFhYWJl
YWYxMWFlOS4uY2M5ZTVjOTY2OGIxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Nwcml0ZS5jCj4gQEAgLTIwMDIsMTAgKzIwMDIsMTAgQEAgc3RhdGljIGNvbnN0
IHU2NCBpOXh4X3BsYW5lX2Zvcm1hdF9tb2RpZmllcnNbXSA9IHsKPiAgIH07Cj4gICAKPiAgIHN0
YXRpYyBjb25zdCB1MzIgc25iX3BsYW5lX2Zvcm1hdHNbXSA9IHsKPiAtCURSTV9GT1JNQVRfWEJH
Ujg4ODgsCj4gICAJRFJNX0ZPUk1BVF9YUkdCODg4OCwKPiAtCURSTV9GT1JNQVRfWFJHQjIxMDEw
MTAsCj4gKwlEUk1fRk9STUFUX1hCR1I4ODg4LAo+ICAgCURSTV9GT1JNQVRfWEJHUjIxMDEwMTAs
Cj4gKwlEUk1fRk9STUFUX1hSR0IyMTAxMDEwLAo+ICAgCURSTV9GT1JNQVRfWVVZViwKPiAgIAlE
Uk1fRk9STUFUX1lWWVUsCj4gICAJRFJNX0ZPUk1BVF9VWVZZLAo+IEBAIC0yMDE1LDEwICsyMDE1
LDEwIEBAIHN0YXRpYyBjb25zdCB1MzIgc25iX3BsYW5lX2Zvcm1hdHNbXSA9IHsKPiAgIHN0YXRp
YyBjb25zdCB1MzIgdmx2X3BsYW5lX2Zvcm1hdHNbXSA9IHsKPiAgIAlEUk1fRk9STUFUX0M4LAo+
ICAgCURSTV9GT1JNQVRfUkdCNTY1LAo+IC0JRFJNX0ZPUk1BVF9BQkdSODg4OCwKPiAtCURSTV9G
T1JNQVRfQVJHQjg4ODgsCj4gLQlEUk1fRk9STUFUX1hCR1I4ODg4LAo+ICAgCURSTV9GT1JNQVRf
WFJHQjg4ODgsCj4gKwlEUk1fRk9STUFUX1hCR1I4ODg4LAo+ICsJRFJNX0ZPUk1BVF9BUkdCODg4
OCwKPiArCURSTV9GT1JNQVRfQUJHUjg4ODgsCj4gICAJRFJNX0ZPUk1BVF9YQkdSMjEwMTAxMCwK
PiAgIAlEUk1fRk9STUFUX0FCR1IyMTAxMDEwLAo+ICAgCURSTV9GT1JNQVRfWVVZViwKPiBAQCAt
MjAzMCwxNCArMjAzMCwxNCBAQCBzdGF0aWMgY29uc3QgdTMyIHZsdl9wbGFuZV9mb3JtYXRzW10g
PSB7Cj4gICBzdGF0aWMgY29uc3QgdTMyIGNodl9waXBlX2Jfc3ByaXRlX2Zvcm1hdHNbXSA9IHsK
PiAgIAlEUk1fRk9STUFUX0M4LAo+ICAgCURSTV9GT1JNQVRfUkdCNTY1LAo+IC0JRFJNX0ZPUk1B
VF9BQkdSODg4OCwKPiAtCURSTV9GT1JNQVRfQVJHQjg4ODgsCj4gLQlEUk1fRk9STUFUX1hCR1I4
ODg4LAo+ICAgCURSTV9GT1JNQVRfWFJHQjg4ODgsCj4gLQlEUk1fRk9STUFUX1hCR1IyMTAxMDEw
LAo+IC0JRFJNX0ZPUk1BVF9BQkdSMjEwMTAxMCwKPiArCURSTV9GT1JNQVRfWEJHUjg4ODgsCj4g
KwlEUk1fRk9STUFUX0FSR0I4ODg4LAo+ICsJRFJNX0ZPUk1BVF9BQkdSODg4OCwKPiAgIAlEUk1f
Rk9STUFUX1hSR0IyMTAxMDEwLAo+ICsJRFJNX0ZPUk1BVF9YQkdSMjEwMTAxMCwKPiAgIAlEUk1f
Rk9STUFUX0FSR0IyMTAxMDEwLAo+ICsJRFJNX0ZPUk1BVF9BQkdSMjEwMTAxMCwKPiAgIAlEUk1f
Rk9STUFUX1lVWVYsCj4gICAJRFJNX0ZPUk1BVF9ZVllVLAo+ICAgCURSTV9GT1JNQVRfVVlWWSwK
PiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
