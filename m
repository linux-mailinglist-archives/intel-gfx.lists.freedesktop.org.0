Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D0DCE01C0
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 12:13:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46DDA6E57A;
	Tue, 22 Oct 2019 10:13:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A61A46E578
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 10:13:51 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id l10so16950217wrb.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 03:13:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=pK9/rY/JZgPtRY4Q4j81Qucr1STrAEbOo1Ua7jFI9zM=;
 b=U9L2uhcG0X7fcbBXRFH79GmutvUECdfbJ3HkuyEJErjiBnsOHMNFC4Kxo7w0pPj5lH
 amyGT9F3URyzPKMvwjN8fDrMRz8y4ssBhi1SXZWte+u0cXh0eepCu59GMHqgXedsQHoH
 425sIw4TIViTVhN9Y3KDKV1pvzh3YggNAu1Y0eLRn68YGcHadDL/bmt0hNkTRC7SfBCl
 9dQt+5BealIG+31ZE4LBUW2fSHjzuu9y8LZ38ZhegfV573jJESsOwrgayAQ2pWpBJn9D
 ghYH04lkIzHeMImei183dNGrGI2oHTxFWAQfPPO7ZKqd0HdVnlz+zsfMyAKwygx3RGnS
 Ij4Q==
X-Gm-Message-State: APjAAAVr0PrafO+e2Aely6HrdldoP1cof2EEtRTECMxED1FH9MX7QmZg
 2rdUM90UbYHSIvWUZjpwKNFZGw==
X-Google-Smtp-Source: APXvYqw6ghqyuE8x3VkynzKoxx3WrxUDpro08Ye4Q9v5HIS3EGVk6GwJaisS9N/lXuI15PCZStok+g==
X-Received: by 2002:a5d:54c7:: with SMTP id x7mr2005783wrv.99.1571739230027;
 Tue, 22 Oct 2019 03:13:50 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id t13sm24712080wra.70.2019.10.22.03.13.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 03:13:49 -0700 (PDT)
Date: Tue, 22 Oct 2019 12:13:47 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <20191022101347.GJ11828@phenom.ffwll.local>
References: <20191021111524.14793-1-christian.koenig@amd.com>
 <20191021111524.14793-2-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021111524.14793-2-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.2.0-2-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent;
 bh=pK9/rY/JZgPtRY4Q4j81Qucr1STrAEbOo1Ua7jFI9zM=;
 b=LGjnViclLbVNZGFF0p/oLHPt94cTigJ/L5fMYnxWxXyMQCNoVZSmcGE9LL1m5oAsCX
 r8MRhpUvvy5RnWhHlSkmqlArjjq8RNll8e0slVKF/Eey7fufF6ppKFcm5oQ7z5WuCbk6
 0N3VWtIxIV+7uxjOvyHvyk4/lx4OW0Zx/SqnA=
Subject: Re: [Intel-gfx] [PATCH 2/4] dma-buf: stop using the dmabuf->lock so
 much
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, sumit.semwal@linaro.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBPY3QgMjEsIDIwMTkgYXQgMDE6MTU6MjJQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiBUaGUgYXR0YWNobWVudCBsaXN0IGlzIG5vdyBwcm90ZWN0ZWQgYnkgdGhlIGRt
YV9yZXN2IG9iamVjdC4KPiBTbyB3ZSBjYW4gZHJvcCBob2xkaW5nIHRoaXMgbG9jayB0byBhbGxv
dyBjb25jdXJyZW50IGF0dGFjaAo+IGFuZCBkZXRhY2ggb3BlcmF0aW9ucy4KPiAKPiBTaWduZWQt
b2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gLS0t
Cj4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgfCAxNiAtLS0tLS0tLS0tLS0tLS0tCj4gIDEg
ZmlsZSBjaGFuZ2VkLCAxNiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9k
bWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKPiBpbmRleCA3NTNi
ZTg0YjVmZDYuLmM3MzZlNjdhZTFhMSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1h
LWJ1Zi5jCj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwo+IEBAIC02ODUsOCArNjg1
LDYgQEAgZG1hX2J1Zl9keW5hbWljX2F0dGFjaChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCBzdHJ1
Y3QgZGV2aWNlICpkZXYsCj4gIAlhdHRhY2gtPmRtYWJ1ZiA9IGRtYWJ1ZjsKPiAgCWF0dGFjaC0+
ZHluYW1pY19tYXBwaW5nID0gZHluYW1pY19tYXBwaW5nOwo+ICAKPiAtCW11dGV4X2xvY2soJmRt
YWJ1Zi0+bG9jayk7Cj4gLQo+ICAJaWYgKGRtYWJ1Zi0+b3BzLT5hdHRhY2gpIHsKPiAgCQlyZXQg
PSBkbWFidWYtPm9wcy0+YXR0YWNoKGRtYWJ1ZiwgYXR0YWNoKTsKPiAgCQlpZiAocmV0KQo+IEBA
IC02OTYsOCArNjk0LDYgQEAgZG1hX2J1Zl9keW5hbWljX2F0dGFjaChzdHJ1Y3QgZG1hX2J1ZiAq
ZG1hYnVmLCBzdHJ1Y3QgZGV2aWNlICpkZXYsCj4gIAlsaXN0X2FkZCgmYXR0YWNoLT5ub2RlLCAm
ZG1hYnVmLT5hdHRhY2htZW50cyk7Cj4gIAlkbWFfcmVzdl91bmxvY2soZG1hYnVmLT5yZXN2KTsK
PiAgCj4gLQltdXRleF91bmxvY2soJmRtYWJ1Zi0+bG9jayk7CgpUaGlzIGNoYW5nZXMgdGhlIHJ1
bGVzLCBub3cgLT5hdHRhY2gvLT5kZXRhY2ggYW5kIHRoZSBsaXN0IG1hbmlwdWxhdGlvbgphcmVu
J3QgZG9uZSB1bmRlciB0aGUgc2FtZSBsb2NrIGFueW1vcmUuIEkgZG9uJ3QgdGhpbmsgdGhpcyBt
YXR0ZXJzLCBidXQKaW1vIGdvb2QgdG8gbWVudGlvbiBpbiB0aGUgY29tbWl0IG1lc3NhZ2UuCgo+
IC0KPiAgCS8qIFdoZW4gZWl0aGVyIHRoZSBpbXBvcnRlciBvciB0aGUgZXhwb3J0ZXIgY2FuJ3Qg
aGFuZGxlIGR5bmFtaWMKPiAgCSAqIG1hcHBpbmdzIHdlIGNhY2hlIHRoZSBtYXBwaW5nIGhlcmUg
dG8gYXZvaWQgaXNzdWVzIHdpdGggdGhlCj4gIAkgKiByZXNlcnZhdGlvbiBvYmplY3QgbG9jay4K
PiBAQCAtNzI2LDcgKzcyMiw2IEBAIGRtYV9idWZfZHluYW1pY19hdHRhY2goc3RydWN0IGRtYV9i
dWYgKmRtYWJ1Ziwgc3RydWN0IGRldmljZSAqZGV2LAo+ICAKPiAgZXJyX2F0dGFjaDoKPiAgCWtm
cmVlKGF0dGFjaCk7Cj4gLQltdXRleF91bmxvY2soJmRtYWJ1Zi0+bG9jayk7Cj4gIAlyZXR1cm4g
RVJSX1BUUihyZXQpOwo+ICAKPiAgZXJyX3VubG9jazoKPiBAQCAtNzc2LDE0ICs3NzEsMTIgQEAg
dm9pZCBkbWFfYnVmX2RldGFjaChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCBzdHJ1Y3QgZG1hX2J1
Zl9hdHRhY2htZW50ICphdHRhY2gpCj4gIAkJCWRtYV9yZXN2X3VubG9jayhhdHRhY2gtPmRtYWJ1
Zi0+cmVzdik7Cj4gIAl9Cj4gIAo+IC0JbXV0ZXhfbG9jaygmZG1hYnVmLT5sb2NrKTsKPiAgCWRt
YV9yZXN2X2xvY2soZG1hYnVmLT5yZXN2LCBOVUxMKTsKPiAgCWxpc3RfZGVsKCZhdHRhY2gtPm5v
ZGUpOwo+ICAJZG1hX3Jlc3ZfdW5sb2NrKGRtYWJ1Zi0+cmVzdik7Cj4gIAlpZiAoZG1hYnVmLT5v
cHMtPmRldGFjaCkKPiAgCQlkbWFidWYtPm9wcy0+ZGV0YWNoKGRtYWJ1ZiwgYXR0YWNoKTsKPiAg
Cj4gLQltdXRleF91bmxvY2soJmRtYWJ1Zi0+bG9jayk7Cj4gIAlrZnJlZShhdHRhY2gpOwo+ICB9
Cj4gIEVYUE9SVF9TWU1CT0xfR1BMKGRtYV9idWZfZGV0YWNoKTsKPiBAQCAtMTI0NywxNCArMTI0
MCw2IEBAIHN0YXRpYyBpbnQgZG1hX2J1Zl9kZWJ1Z19zaG93KHN0cnVjdCBzZXFfZmlsZSAqcywg
dm9pZCAqdW51c2VkKQo+ICAJCSAgICJzaXplIiwgImZsYWdzIiwgIm1vZGUiLCAiY291bnQiLCAi
aW5vIik7Cj4gIAo+ICAJbGlzdF9mb3JfZWFjaF9lbnRyeShidWZfb2JqLCAmZGJfbGlzdC5oZWFk
LCBsaXN0X25vZGUpIHsKPiAtCQlyZXQgPSBtdXRleF9sb2NrX2ludGVycnVwdGlibGUoJmJ1Zl9v
YmotPmxvY2spOwo+IC0KPiAtCQlpZiAocmV0KSB7Cj4gLQkJCXNlcV9wdXRzKHMsCj4gLQkJCQkg
Ilx0RVJST1IgbG9ja2luZyBidWZmZXIgb2JqZWN0OiBza2lwcGluZ1xuIik7Cj4gLQkJCWNvbnRp
bnVlOwo+IC0JCX0KPiAtCgpUaGlzIHdpbGwgbWlsZGx5IGNvbmZsaWN0IHdpdGggdGhlIHJldmlz
ZWQgdmVyc2lvbiBvZiBwYXRjaCAxIChzaW5jZSB0aGUKZG1hX3Jlc3ZfbG9jayBuZWVkcyB0byBi
ZSBoZXJlKS4KCldpdGggYm90aCBuaXRzIGFkZHJlc3NlZDoKClJldmlld2VkLWJ5OiBEYW5pZWwg
VmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgoKPiAgCQlzZXFfcHJpbnRmKHMsICIlMDh6
dVx0JTA4eFx0JTA4eFx0JTA4bGRcdCVzXHQlMDhsdVx0JXNcbiIsCj4gIAkJCQlidWZfb2JqLT5z
aXplLAo+ICAJCQkJYnVmX29iai0+ZmlsZS0+Zl9mbGFncywgYnVmX29iai0+ZmlsZS0+Zl9tb2Rl
LAo+IEBAIC0xMzA3LDcgKzEyOTIsNiBAQCBzdGF0aWMgaW50IGRtYV9idWZfZGVidWdfc2hvdyhz
dHJ1Y3Qgc2VxX2ZpbGUgKnMsIHZvaWQgKnVudXNlZCkKPiAgCj4gIAkJY291bnQrKzsKPiAgCQlz
aXplICs9IGJ1Zl9vYmotPnNpemU7Cj4gLQkJbXV0ZXhfdW5sb2NrKCZidWZfb2JqLT5sb2NrKTsK
PiAgCX0KPiAgCj4gIAlzZXFfcHJpbnRmKHMsICJcblRvdGFsICVkIG9iamVjdHMsICV6dSBieXRl
c1xuIiwgY291bnQsIHNpemUpOwo+IC0tIAo+IDIuMTcuMQo+IAoKLS0gCkRhbmllbCBWZXR0ZXIK
U29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNo
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
