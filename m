Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF136B0BEF
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 11:51:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7C4E6EC95;
	Thu, 12 Sep 2019 09:51:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D6706EC95
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 09:51:51 +0000 (UTC)
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 89CDA2A09D1
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 09:51:50 +0000 (UTC)
Received: by mail-qk1-f200.google.com with SMTP id c7so22815623qkc.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 02:51:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Bz0vgQ+BkVyu6heHi03tITHLE5ryNGKRf56ZJJ9wdRo=;
 b=Qc7x53rMIihWJVoRsLaAGPtgH/NUtClj5HnfD86FdrkWedZOa6ni52B+Vul5F/cKvi
 wAOj2r9O9gR6G2q/tvfNidWVetpjOGEWitiVCC+V+tm6SePsD53Z1w9Jen+B5agBqQ6H
 BZEy8V4N2ZoGyvJCXzbItXMe24Xcr7g5d4w51x9isVaxl0+9lmqZWypUgfgxrh3QkWkN
 gpit0jrL6BO/rlGO9luMkpgtGN28mvprrpLUFBROxrPGtWnFo4J0DkCKFzH8RfUxJcaI
 tH8Gfht0iglsTIW7RcutFtZTUZfW113Ph5trky0sMJVt7Ldw+EaRPOWwGoa+lnFeNa2v
 oVFw==
X-Gm-Message-State: APjAAAW7BJsQ1WPk6mNsXD0vTv/tVaKf7pC14RPEftiYow5K8YoZIFEQ
 voxCfhtyvqnyvpmh7Koe+KJ2aMv0ysdxBeCXM+dIFhfNRa/ohjsOyawn8Ss+NmSBJeF+TLc7YIr
 jw9j9P6QYcoAT3P/a+XpoNqKhspt/
X-Received: by 2002:ac8:3647:: with SMTP id n7mr41093107qtb.159.1568281909460; 
 Thu, 12 Sep 2019 02:51:49 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyDlD0ePR3jiHiLRFOr8sxOGetAxQ16lUQKr9+iVwYghI0rOFUzoUIK5pKVt3qjaGD6ZBmPzA==
X-Received: by 2002:ac8:3647:: with SMTP id n7mr41093075qtb.159.1568281909192; 
 Thu, 12 Sep 2019 02:51:49 -0700 (PDT)
Received: from redhat.com ([80.74.107.118])
 by smtp.gmail.com with ESMTPSA id a22sm4923888qkl.117.2019.09.12.02.51.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Sep 2019 02:51:48 -0700 (PDT)
Date: Thu, 12 Sep 2019 05:51:36 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Jason Wang <jasowang@redhat.com>
Message-ID: <20190912055037-mutt-send-email-mst@kernel.org>
References: <20190912094012.29653-1-jasowang@redhat.com>
 <20190912094012.29653-3-jasowang@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190912094012.29653-3-jasowang@redhat.com>
Subject: Re: [Intel-gfx] [RFC PATCH 2/2] mdev: introduce device specific ops
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
Cc: sebott@linux.ibm.com, airlied@linux.ie, heiko.carstens@de.ibm.com,
 dri-devel@lists.freedesktop.org, oberpar@linux.ibm.com, kwankhede@nvidia.com,
 rob.miller@broadcom.com, linux-s390@vger.kernel.org, kvm@vger.kernel.org,
 pasic@linux.ibm.com, borntraeger@de.ibm.com, cunming.liang@intel.com,
 farman@linux.ibm.com, idos@mellanox.com, gor@linux.ibm.com,
 intel-gfx@lists.freedesktop.org, xiao.w.wang@intel.com, freude@linux.ibm.com,
 virtualization@lists.linux-foundation.org, intel-gvt-dev@lists.freedesktop.org,
 lingshan.zhu@intel.com, akrowiak@linux.ibm.com, tiwei.bie@intel.com,
 pmorel@linux.ibm.com, cohuck@redhat.com, linux-kernel@vger.kernel.org,
 maxime.coquelin@redhat.com, zhihong.wang@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBTZXAgMTIsIDIwMTkgYXQgMDU6NDA6MTJQTSArMDgwMCwgSmFzb24gV2FuZyB3cm90
ZToKPiBDdXJyZW50bHksIGV4Y2VwdCBmb3IgdGhlIGNyYXRlIGFuZCByZW1vdmUuIFRoZSByZXN0
IGZpZWxkcyBvZgoKCmJldHRlcjoKCkN1cnJlbnRseSwgZXhjZXB0IGZvciBjcmVhdGUgYW5kIHJl
bW92ZSwgdGhlIHJlc3Qgb2YgdGhlIGZpZWxkIGluIC4uLgoKCj4gbWRldl9wYXJlbnRfb3BzIGlz
IGp1c3QgZGVzaWduZWQgZm9yIHZmaW8tbWRldiBkcml2ZXIgYW5kIG1heSBub3QgaGVscAo+IGZv
ciBrZXJuZWwgbWRldiBkcml2ZXIuIFNvIGZvbGxvdyB0aGUgZGV2aWNlIGlkIHN1cHBvcnQgYnkg
cHJldmlvdXMKPiBwYXRjaCwgdGhpcyBwYXRjaCBpbnRyb2R1Y2VzIGRldmljZSBzcGVjaWZpYyBv
cHMgd2hpY2ggcG9pbnRzIHRvCj4gZGV2aWNlIHNwZWNpZmljIG9wcyAoZS5nIHZmaW8gb3BzKS4g
VGhpcyBhbGxvd3MgdGhlIGZ1dHVyZSBkcml2ZXJzCj4gbGlrZSB2aXJ0aW8tbWRldiB0byBpbXBs
ZW1lbnQgaXRzIG93biBkZXZpY2Ugc3BlY2lmaWMgb3BzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEph
c29uIFdhbmcgPGphc293YW5nQHJlZGhhdC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d2dC9rdm1ndC5jICB8IDE0ICsrKy0tLQo+ICBkcml2ZXJzL3MzOTAvY2lvL3ZmaW9fY2N3
X29wcy5jICAgfCAxNCArKystLS0KPiAgZHJpdmVycy9zMzkwL2NyeXB0by92ZmlvX2FwX29wcy5j
IHwgMTAgKysrLS0KPiAgZHJpdmVycy92ZmlvL21kZXYvdmZpb19tZGV2LmMgICAgIHwgMzAgKysr
KysrKy0tLS0tLQo+ICBpbmNsdWRlL2xpbnV4L21kZXYuaCAgICAgICAgICAgICAgfCA3MiArKysr
KysrKysrKysrKysrKystLS0tLS0tLS0tLS0tCj4gIHNhbXBsZXMvdmZpby1tZGV2L21ib2Nocy5j
ICAgICAgICB8IDE2ICsrKystLS0KPiAgc2FtcGxlcy92ZmlvLW1kZXYvbWRweS5jICAgICAgICAg
IHwgMTYgKysrKy0tLQo+ICBzYW1wbGVzL3ZmaW8tbWRldi9tdHR5LmMgICAgICAgICAgfCAxNCAr
KystLS0KPiAgOCBmaWxlcyBjaGFuZ2VkLCAxMTMgaW5zZXJ0aW9ucygrKSwgNzMgZGVsZXRpb25z
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d2dC9rdm1ndC5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2t2bWd0LmMKPiBpbmRleCAxOWQ1MWEzNWYwMTkuLjY0
ODIzOTk4ZmQ1OCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQva3ZtZ3Qu
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d2dC9rdm1ndC5jCj4gQEAgLTE2MDAsMjAg
KzE2MDAsMjIgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBhdHRyaWJ1dGVfZ3JvdXAgKmludGVsX3Zn
cHVfZ3JvdXBzW10gPSB7Cj4gIAlOVUxMLAo+ICB9Owo+ICAKPiAtc3RhdGljIHN0cnVjdCBtZGV2
X3BhcmVudF9vcHMgaW50ZWxfdmdwdV9vcHMgPSB7Cj4gLQkubWRldl9hdHRyX2dyb3VwcyAgICAg
ICA9IGludGVsX3ZncHVfZ3JvdXBzLAo+IC0JLmNyZWF0ZQkJCT0gaW50ZWxfdmdwdV9jcmVhdGUs
Cj4gLQkucmVtb3ZlCQkJPSBpbnRlbF92Z3B1X3JlbW92ZSwKPiAtCj4gK3N0YXRpYyBzdHJ1Y3Qg
dmZpb19tZGV2X3BhcmVudF9vcHMgaW50ZWxfdmZpb192Z3B1X29wcyA9IHsKPiAgCS5vcGVuCQkJ
PSBpbnRlbF92Z3B1X29wZW4sCj4gIAkucmVsZWFzZQkJPSBpbnRlbF92Z3B1X3JlbGVhc2UsCj4g
LQo+ICAJLnJlYWQJCQk9IGludGVsX3ZncHVfcmVhZCwKPiAgCS53cml0ZQkJCT0gaW50ZWxfdmdw
dV93cml0ZSwKPiAgCS5tbWFwCQkJPSBpbnRlbF92Z3B1X21tYXAsCj4gIAkuaW9jdGwJCQk9IGlu
dGVsX3ZncHVfaW9jdGwsCj4gIH07Cj4gIAo+ICtzdGF0aWMgc3RydWN0IG1kZXZfcGFyZW50X29w
cyBpbnRlbF92Z3B1X29wcyA9IHsKPiArCS5tZGV2X2F0dHJfZ3JvdXBzICAgICAgID0gaW50ZWxf
dmdwdV9ncm91cHMsCj4gKwkuY3JlYXRlCQkJPSBpbnRlbF92Z3B1X2NyZWF0ZSwKPiArCS5yZW1v
dmUJCQk9IGludGVsX3ZncHVfcmVtb3ZlLAo+ICsJLmRldmljZV9vcHMJICAgICAgICA9ICZpbnRl
bF92ZmlvX3ZncHVfb3BzLAo+ICt9Owo+ICsKPiAgc3RhdGljIGludCBrdm1ndF9ob3N0X2luaXQo
c3RydWN0IGRldmljZSAqZGV2LCB2b2lkICpndnQsIGNvbnN0IHZvaWQgKm9wcykKPiAgewo+ICAJ
c3RydWN0IGF0dHJpYnV0ZSAqKmt2bV90eXBlX2F0dHJzOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3MzOTAvY2lvL3ZmaW9fY2N3X29wcy5jIGIvZHJpdmVycy9zMzkwL2Npby92ZmlvX2Njd19vcHMu
Ywo+IGluZGV4IGY4N2Q5NDA5ZTI5MC4uOTZlOWYxODEwMGFlIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvczM5MC9jaW8vdmZpb19jY3dfb3BzLmMKPiArKysgYi9kcml2ZXJzL3MzOTAvY2lvL3ZmaW9f
Y2N3X29wcy5jCj4gQEAgLTU2NCwxMSArNTY0LDcgQEAgc3RhdGljIHNzaXplX3QgdmZpb19jY3df
bWRldl9pb2N0bChzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYsCj4gIAl9Cj4gIH0KPiAgCj4gLXN0
YXRpYyBjb25zdCBzdHJ1Y3QgbWRldl9wYXJlbnRfb3BzIHZmaW9fY2N3X21kZXZfb3BzID0gewo+
IC0JLm93bmVyCQkJPSBUSElTX01PRFVMRSwKPiAtCS5zdXBwb3J0ZWRfdHlwZV9ncm91cHMgID0g
bWRldl90eXBlX2dyb3VwcywKPiAtCS5jcmVhdGUJCQk9IHZmaW9fY2N3X21kZXZfY3JlYXRlLAo+
IC0JLnJlbW92ZQkJCT0gdmZpb19jY3dfbWRldl9yZW1vdmUsCj4gK3N0YXRpYyBjb25zdCBzdHJ1
Y3QgdmZpb19tZGV2X3BhcmVudF9vcHMgdmZpb19tZGV2X29wcyA9IHsKPiAgCS5vcGVuCQkJPSB2
ZmlvX2Njd19tZGV2X29wZW4sCj4gIAkucmVsZWFzZQkJPSB2ZmlvX2Njd19tZGV2X3JlbGVhc2Us
Cj4gIAkucmVhZAkJCT0gdmZpb19jY3dfbWRldl9yZWFkLAo+IEBAIC01NzYsNiArNTcyLDE0IEBA
IHN0YXRpYyBjb25zdCBzdHJ1Y3QgbWRldl9wYXJlbnRfb3BzIHZmaW9fY2N3X21kZXZfb3BzID0g
ewo+ICAJLmlvY3RsCQkJPSB2ZmlvX2Njd19tZGV2X2lvY3RsLAo+ICB9Owo+ICAKPiArc3RhdGlj
IGNvbnN0IHN0cnVjdCBtZGV2X3BhcmVudF9vcHMgdmZpb19jY3dfbWRldl9vcHMgPSB7Cj4gKwku
b3duZXIJCQk9IFRISVNfTU9EVUxFLAo+ICsJLnN1cHBvcnRlZF90eXBlX2dyb3VwcyAgPSBtZGV2
X3R5cGVfZ3JvdXBzLAo+ICsJLmNyZWF0ZQkJCT0gdmZpb19jY3dfbWRldl9jcmVhdGUsCj4gKwku
cmVtb3ZlCQkJPSB2ZmlvX2Njd19tZGV2X3JlbW92ZSwKPiArCS5kZXZpY2Vfb3BzCQk9ICZ2Zmlv
X21kZXZfb3BzLAo+ICt9Owo+ICsKPiAgaW50IHZmaW9fY2N3X21kZXZfcmVnKHN0cnVjdCBzdWJj
aGFubmVsICpzY2gpCj4gIHsKPiAgCXJldHVybiBtZGV2X3JlZ2lzdGVyX3ZmaW9fZGV2aWNlKCZz
Y2gtPmRldiwgJnZmaW9fY2N3X21kZXZfb3BzKTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zMzkw
L2NyeXB0by92ZmlvX2FwX29wcy5jIGIvZHJpdmVycy9zMzkwL2NyeXB0by92ZmlvX2FwX29wcy5j
Cj4gaW5kZXggZWFjYmRlM2M3YTk3Li5hNDgyODJiZmYwNjYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9zMzkwL2NyeXB0by92ZmlvX2FwX29wcy5jCj4gKysrIGIvZHJpdmVycy9zMzkwL2NyeXB0by92
ZmlvX2FwX29wcy5jCj4gQEAgLTEyODAsMTUgKzEyODAsMTkgQEAgc3RhdGljIHNzaXplX3QgdmZp
b19hcF9tZGV2X2lvY3RsKHN0cnVjdCBtZGV2X2RldmljZSAqbWRldiwKPiAgCXJldHVybiByZXQ7
Cj4gIH0KPiAgCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgdmZpb19tZGV2X3BhcmVudF9vcHMgdmZp
b19tZGV2X29wcyA9IHsKPiArCS5vcGVuCQkJPSB2ZmlvX2FwX21kZXZfb3BlbiwKPiArCS5yZWxl
YXNlCQk9IHZmaW9fYXBfbWRldl9yZWxlYXNlLAo+ICsJLmlvY3RsCQkJPSB2ZmlvX2FwX21kZXZf
aW9jdGwsCj4gK307Cj4gKwo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IG1kZXZfcGFyZW50X29wcyB2
ZmlvX2FwX21hdHJpeF9vcHMgPSB7Cj4gIAkub3duZXIJCQk9IFRISVNfTU9EVUxFLAo+ICAJLnN1
cHBvcnRlZF90eXBlX2dyb3Vwcwk9IHZmaW9fYXBfbWRldl90eXBlX2dyb3VwcywKPiAgCS5tZGV2
X2F0dHJfZ3JvdXBzCT0gdmZpb19hcF9tZGV2X2F0dHJfZ3JvdXBzLAo+ICAJLmNyZWF0ZQkJCT0g
dmZpb19hcF9tZGV2X2NyZWF0ZSwKPiAgCS5yZW1vdmUJCQk9IHZmaW9fYXBfbWRldl9yZW1vdmUs
Cj4gLQkub3BlbgkJCT0gdmZpb19hcF9tZGV2X29wZW4sCj4gLQkucmVsZWFzZQkJPSB2ZmlvX2Fw
X21kZXZfcmVsZWFzZSwKPiAtCS5pb2N0bAkJCT0gdmZpb19hcF9tZGV2X2lvY3RsLAo+ICsJLmRl
dmljZV9vcHMJCT0gJnZmaW9fbWRldl9vcHMsCj4gIH07Cj4gIAo+ICBpbnQgdmZpb19hcF9tZGV2
X3JlZ2lzdGVyKHZvaWQpCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdmZpby9tZGV2L3ZmaW9fbWRl
di5jIGIvZHJpdmVycy92ZmlvL21kZXYvdmZpb19tZGV2LmMKPiBpbmRleCA4ODdjNTdmMTA4ODAu
LjExOTZmYmI2YzNkMiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3ZmaW8vbWRldi92ZmlvX21kZXYu
Ywo+ICsrKyBiL2RyaXZlcnMvdmZpby9tZGV2L3ZmaW9fbWRldi5jCj4gQEAgLTI1LDE1ICsyNSwx
NiBAQCBzdGF0aWMgaW50IHZmaW9fbWRldl9vcGVuKHZvaWQgKmRldmljZV9kYXRhKQo+ICB7Cj4g
IAlzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYgPSBkZXZpY2VfZGF0YTsKPiAgCXN0cnVjdCBtZGV2
X3BhcmVudCAqcGFyZW50ID0gbWRldi0+cGFyZW50Owo+ICsJY29uc3Qgc3RydWN0IHZmaW9fbWRl
dl9wYXJlbnRfb3BzICpvcHMgPSBwYXJlbnQtPm9wcy0+ZGV2aWNlX29wczsKPiAgCWludCByZXQ7
Cj4gIAo+IC0JaWYgKHVubGlrZWx5KCFwYXJlbnQtPm9wcy0+b3BlbikpCj4gKwlpZiAodW5saWtl
bHkoIW9wcy0+b3BlbikpCj4gIAkJcmV0dXJuIC1FSU5WQUw7Cj4gIAo+ICAJaWYgKCF0cnlfbW9k
dWxlX2dldChUSElTX01PRFVMRSkpCj4gIAkJcmV0dXJuIC1FTk9ERVY7Cj4gIAo+IC0JcmV0ID0g
cGFyZW50LT5vcHMtPm9wZW4obWRldik7Cj4gKwlyZXQgPSBvcHMtPm9wZW4obWRldik7Cj4gIAlp
ZiAocmV0KQo+ICAJCW1vZHVsZV9wdXQoVEhJU19NT0RVTEUpOwo+ICAKPiBAQCAtNDQsOSArNDUs
MTAgQEAgc3RhdGljIHZvaWQgdmZpb19tZGV2X3JlbGVhc2Uodm9pZCAqZGV2aWNlX2RhdGEpCj4g
IHsKPiAgCXN0cnVjdCBtZGV2X2RldmljZSAqbWRldiA9IGRldmljZV9kYXRhOwo+ICAJc3RydWN0
IG1kZXZfcGFyZW50ICpwYXJlbnQgPSBtZGV2LT5wYXJlbnQ7Cj4gKwljb25zdCBzdHJ1Y3QgdmZp
b19tZGV2X3BhcmVudF9vcHMgKm9wcyA9IHBhcmVudC0+b3BzLT5kZXZpY2Vfb3BzOwo+ICAKPiAt
CWlmIChsaWtlbHkocGFyZW50LT5vcHMtPnJlbGVhc2UpKQo+IC0JCXBhcmVudC0+b3BzLT5yZWxl
YXNlKG1kZXYpOwo+ICsJaWYgKGxpa2VseShvcHMtPnJlbGVhc2UpKQo+ICsJCW9wcy0+cmVsZWFz
ZShtZGV2KTsKPiAgCj4gIAltb2R1bGVfcHV0KFRISVNfTU9EVUxFKTsKPiAgfQo+IEBAIC01Niwx
MSArNTgsMTIgQEAgc3RhdGljIGxvbmcgdmZpb19tZGV2X3VubG9ja2VkX2lvY3RsKHZvaWQgKmRl
dmljZV9kYXRhLAo+ICB7Cj4gIAlzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYgPSBkZXZpY2VfZGF0
YTsKPiAgCXN0cnVjdCBtZGV2X3BhcmVudCAqcGFyZW50ID0gbWRldi0+cGFyZW50Owo+ICsJY29u
c3Qgc3RydWN0IHZmaW9fbWRldl9wYXJlbnRfb3BzICpvcHMgPSBwYXJlbnQtPm9wcy0+ZGV2aWNl
X29wczsKPiAgCj4gLQlpZiAodW5saWtlbHkoIXBhcmVudC0+b3BzLT5pb2N0bCkpCj4gKwlpZiAo
dW5saWtlbHkoIW9wcy0+aW9jdGwpKQo+ICAJCXJldHVybiAtRUlOVkFMOwo+ICAKPiAtCXJldHVy
biBwYXJlbnQtPm9wcy0+aW9jdGwobWRldiwgY21kLCBhcmcpOwo+ICsJcmV0dXJuIG9wcy0+aW9j
dGwobWRldiwgY21kLCBhcmcpOwo+ICB9Cj4gIAo+ICBzdGF0aWMgc3NpemVfdCB2ZmlvX21kZXZf
cmVhZCh2b2lkICpkZXZpY2VfZGF0YSwgY2hhciBfX3VzZXIgKmJ1ZiwKPiBAQCAtNjgsMTEgKzcx
LDEyIEBAIHN0YXRpYyBzc2l6ZV90IHZmaW9fbWRldl9yZWFkKHZvaWQgKmRldmljZV9kYXRhLCBj
aGFyIF9fdXNlciAqYnVmLAo+ICB7Cj4gIAlzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYgPSBkZXZp
Y2VfZGF0YTsKPiAgCXN0cnVjdCBtZGV2X3BhcmVudCAqcGFyZW50ID0gbWRldi0+cGFyZW50Owo+
ICsJY29uc3Qgc3RydWN0IHZmaW9fbWRldl9wYXJlbnRfb3BzICpvcHMgPSBwYXJlbnQtPm9wcy0+
ZGV2aWNlX29wczsKPiAgCj4gLQlpZiAodW5saWtlbHkoIXBhcmVudC0+b3BzLT5yZWFkKSkKPiAr
CWlmICh1bmxpa2VseSghb3BzLT5yZWFkKSkKPiAgCQlyZXR1cm4gLUVJTlZBTDsKPiAgCj4gLQly
ZXR1cm4gcGFyZW50LT5vcHMtPnJlYWQobWRldiwgYnVmLCBjb3VudCwgcHBvcyk7Cj4gKwlyZXR1
cm4gb3BzLT5yZWFkKG1kZXYsIGJ1ZiwgY291bnQsIHBwb3MpOwo+ICB9Cj4gIAo+ICBzdGF0aWMg
c3NpemVfdCB2ZmlvX21kZXZfd3JpdGUodm9pZCAqZGV2aWNlX2RhdGEsIGNvbnN0IGNoYXIgX191
c2VyICpidWYsCj4gQEAgLTgwLDIyICs4NCwyNCBAQCBzdGF0aWMgc3NpemVfdCB2ZmlvX21kZXZf
d3JpdGUodm9pZCAqZGV2aWNlX2RhdGEsIGNvbnN0IGNoYXIgX191c2VyICpidWYsCj4gIHsKPiAg
CXN0cnVjdCBtZGV2X2RldmljZSAqbWRldiA9IGRldmljZV9kYXRhOwo+ICAJc3RydWN0IG1kZXZf
cGFyZW50ICpwYXJlbnQgPSBtZGV2LT5wYXJlbnQ7Cj4gKwljb25zdCBzdHJ1Y3QgdmZpb19tZGV2
X3BhcmVudF9vcHMgKm9wcyA9IHBhcmVudC0+b3BzLT5kZXZpY2Vfb3BzOwo+ICAKPiAtCWlmICh1
bmxpa2VseSghcGFyZW50LT5vcHMtPndyaXRlKSkKPiArCWlmICh1bmxpa2VseSghb3BzLT53cml0
ZSkpCj4gIAkJcmV0dXJuIC1FSU5WQUw7Cj4gIAo+IC0JcmV0dXJuIHBhcmVudC0+b3BzLT53cml0
ZShtZGV2LCBidWYsIGNvdW50LCBwcG9zKTsKPiArCXJldHVybiBvcHMtPndyaXRlKG1kZXYsIGJ1
ZiwgY291bnQsIHBwb3MpOwo+ICB9Cj4gIAo+ICBzdGF0aWMgaW50IHZmaW9fbWRldl9tbWFwKHZv
aWQgKmRldmljZV9kYXRhLCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSkKPiAgewo+ICAJc3Ry
dWN0IG1kZXZfZGV2aWNlICptZGV2ID0gZGV2aWNlX2RhdGE7Cj4gIAlzdHJ1Y3QgbWRldl9wYXJl
bnQgKnBhcmVudCA9IG1kZXYtPnBhcmVudDsKPiArCWNvbnN0IHN0cnVjdCB2ZmlvX21kZXZfcGFy
ZW50X29wcyAqb3BzID0gcGFyZW50LT5vcHMtPmRldmljZV9vcHM7Cj4gIAo+IC0JaWYgKHVubGlr
ZWx5KCFwYXJlbnQtPm9wcy0+bW1hcCkpCj4gKwlpZiAodW5saWtlbHkoIW9wcy0+bW1hcCkpCj4g
IAkJcmV0dXJuIC1FSU5WQUw7Cj4gIAo+IC0JcmV0dXJuIHBhcmVudC0+b3BzLT5tbWFwKG1kZXYs
IHZtYSk7Cj4gKwlyZXR1cm4gb3BzLT5tbWFwKG1kZXYsIHZtYSk7Cj4gIH0KPiAgCj4gIHN0YXRp
YyBjb25zdCBzdHJ1Y3QgdmZpb19kZXZpY2Vfb3BzIHZmaW9fbWRldl9kZXZfb3BzID0gewo+IGRp
ZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L21kZXYuaCBiL2luY2x1ZGUvbGludXgvbWRldi5oCj4g
aW5kZXggZjg1MDQ1MzkyMTIwLi4zYjhhNzZiYzY5Y2YgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9s
aW51eC9tZGV2LmgKPiArKysgYi9pbmNsdWRlL2xpbnV4L21kZXYuaAo+IEBAIC0yNywyNyArMjcs
OSBAQCBpbnQgbWRldl9zZXRfaW9tbXVfZGV2aWNlKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0
IGRldmljZSAqaW9tbXVfZGV2aWNlKTsKPiAgc3RydWN0IGRldmljZSAqbWRldl9nZXRfaW9tbXVf
ZGV2aWNlKHN0cnVjdCBkZXZpY2UgKmRldik7Cj4gIAo+ICAvKioKPiAtICogc3RydWN0IG1kZXZf
cGFyZW50X29wcyAtIFN0cnVjdHVyZSB0byBiZSByZWdpc3RlcmVkIGZvciBlYWNoIHBhcmVudCBk
ZXZpY2UgdG8KPiAtICogcmVnaXN0ZXIgdGhlIGRldmljZSB0byBtZGV2IG1vZHVsZS4KPiArICog
c3RydWN0IHZmaW9fbWRldl9wYXJlbnRfb3BzIC0gU3RydWN0dXJlIHRvIGJlIHJlZ2lzdGVyZWQg
Zm9yIGVhY2gKPiArICogcGFyZW50IGRldmljZSB0byByZWdpc3RlciB0aGUgZGV2aWNlIHRvIHZm
aW8tbWRldiBtb2R1bGUuCj4gICAqCj4gLSAqIEBvd25lcjoJCVRoZSBtb2R1bGUgb3duZXIuCj4g
LSAqIEBkZXZfYXR0cl9ncm91cHM6CUF0dHJpYnV0ZXMgb2YgdGhlIHBhcmVudCBkZXZpY2UuCj4g
LSAqIEBtZGV2X2F0dHJfZ3JvdXBzOglBdHRyaWJ1dGVzIG9mIHRoZSBtZWRpYXRlZCBkZXZpY2Uu
Cj4gLSAqIEBzdXBwb3J0ZWRfdHlwZV9ncm91cHM6IEF0dHJpYnV0ZXMgdG8gZGVmaW5lIHN1cHBv
cnRlZCB0eXBlcy4gSXQgaXMgbWFuZGF0b3J5Cj4gLSAqCQkJdG8gcHJvdmlkZSBzdXBwb3J0ZWQg
dHlwZXMuCj4gLSAqIEBjcmVhdGU6CQlDYWxsZWQgdG8gYWxsb2NhdGUgYmFzaWMgcmVzb3VyY2Vz
IGluIHBhcmVudCBkZXZpY2Uncwo+IC0gKgkJCWRyaXZlciBmb3IgYSBwYXJ0aWN1bGFyIG1lZGlh
dGVkIGRldmljZS4gSXQgaXMKPiAtICoJCQltYW5kYXRvcnkgdG8gcHJvdmlkZSBjcmVhdGUgb3Bz
Lgo+IC0gKgkJCUBrb2JqOiBrb2JqZWN0IG9mIHR5cGUgZm9yIHdoaWNoICdjcmVhdGUnIGlzIGNh
bGxlZC4KPiAtICoJCQlAbWRldjogbWRldl9kZXZpY2Ugc3RydWN0dXJlIG9uIG9mIG1lZGlhdGVk
IGRldmljZQo+IC0gKgkJCSAgICAgIHRoYXQgaXMgYmVpbmcgY3JlYXRlZAo+IC0gKgkJCVJldHVy
bnMgaW50ZWdlcjogc3VjY2VzcyAoMCkgb3IgZXJyb3IgKDwgMCkKPiAtICogQHJlbW92ZToJCUNh
bGxlZCB0byBmcmVlIHJlc291cmNlcyBpbiBwYXJlbnQgZGV2aWNlJ3MgZHJpdmVyIGZvciBhCj4g
LSAqCQkJYSBtZWRpYXRlZCBkZXZpY2UuIEl0IGlzIG1hbmRhdG9yeSB0byBwcm92aWRlICdyZW1v
dmUnCj4gLSAqCQkJb3BzLgo+IC0gKgkJCUBtZGV2OiBtZGV2X2RldmljZSBkZXZpY2Ugc3RydWN0
dXJlIHdoaWNoIGlzIGJlaW5nCj4gLSAqCQkJICAgICAgIGRlc3Ryb3llZAo+IC0gKgkJCVJldHVy
bnMgaW50ZWdlcjogc3VjY2VzcyAoMCkgb3IgZXJyb3IgKDwgMCkKPiAgICogQG9wZW46CQlPcGVu
IG1lZGlhdGVkIGRldmljZS4KPiAgICoJCQlAbWRldjogbWVkaWF0ZWQgZGV2aWNlLgo+ICAgKgkJ
CVJldHVybnMgaW50ZWdlcjogc3VjY2VzcyAoMCkgb3IgZXJyb3IgKDwgMCkKPiBAQCAtNzIsNiAr
NTQsNDMgQEAgc3RydWN0IGRldmljZSAqbWRldl9nZXRfaW9tbXVfZGV2aWNlKHN0cnVjdCBkZXZp
Y2UgKmRldik7Cj4gICAqIEBtbWFwOgkJbW1hcCBjYWxsYmFjawo+ICAgKgkJCUBtZGV2OiBtZWRp
YXRlZCBkZXZpY2Ugc3RydWN0dXJlCj4gICAqCQkJQHZtYTogdm1hIHN0cnVjdHVyZQo+ICsgKi8K
PiArc3RydWN0IHZmaW9fbWRldl9wYXJlbnRfb3BzIHsKPiArCWludCAgICAgKCpvcGVuKShzdHJ1
Y3QgbWRldl9kZXZpY2UgKm1kZXYpOwo+ICsJdm9pZCAgICAoKnJlbGVhc2UpKHN0cnVjdCBtZGV2
X2RldmljZSAqbWRldik7Cj4gKwlzc2l6ZV90ICgqcmVhZCkoc3RydWN0IG1kZXZfZGV2aWNlICpt
ZGV2LCBjaGFyIF9fdXNlciAqYnVmLAo+ICsJCQlzaXplX3QgY291bnQsIGxvZmZfdCAqcHBvcyk7
Cj4gKwlzc2l6ZV90ICgqd3JpdGUpKHN0cnVjdCBtZGV2X2RldmljZSAqbWRldiwgY29uc3QgY2hh
ciBfX3VzZXIgKmJ1ZiwKPiArCQkJIHNpemVfdCBjb3VudCwgbG9mZl90ICpwcG9zKTsKPiArCWxv
bmcJKCppb2N0bCkoc3RydWN0IG1kZXZfZGV2aWNlICptZGV2LCB1bnNpZ25lZCBpbnQgY21kLAo+
ICsJCQkgdW5zaWduZWQgbG9uZyBhcmcpOwo+ICsJaW50CSgqbW1hcCkoc3RydWN0IG1kZXZfZGV2
aWNlICptZGV2LCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSk7Cj4gK307Cj4gKwo+ICsvKioK
PiArICogc3RydWN0IG1kZXZfcGFyZW50X29wcyAtIFN0cnVjdHVyZSB0byBiZSByZWdpc3RlcmVk
IGZvciBlYWNoIHBhcmVudCBkZXZpY2UgdG8KPiArICogcmVnaXN0ZXIgdGhlIGRldmljZSB0byBt
ZGV2IG1vZHVsZS4KPiArICoKPiArICogQG93bmVyOgkJVGhlIG1vZHVsZSBvd25lci4KPiArICog
QGRldl9hdHRyX2dyb3VwczoJQXR0cmlidXRlcyBvZiB0aGUgcGFyZW50IGRldmljZS4KPiArICog
QG1kZXZfYXR0cl9ncm91cHM6CUF0dHJpYnV0ZXMgb2YgdGhlIG1lZGlhdGVkIGRldmljZS4KPiAr
ICogQHN1cHBvcnRlZF90eXBlX2dyb3VwczogQXR0cmlidXRlcyB0byBkZWZpbmUgc3VwcG9ydGVk
IHR5cGVzLiBJdCBpcyBtYW5kYXRvcnkKPiArICoJCQl0byBwcm92aWRlIHN1cHBvcnRlZCB0eXBl
cy4KPiArICogQGNyZWF0ZToJCUNhbGxlZCB0byBhbGxvY2F0ZSBiYXNpYyByZXNvdXJjZXMgaW4g
cGFyZW50IGRldmljZSdzCj4gKyAqCQkJZHJpdmVyIGZvciBhIHBhcnRpY3VsYXIgbWVkaWF0ZWQg
ZGV2aWNlLiBJdCBpcwo+ICsgKgkJCW1hbmRhdG9yeSB0byBwcm92aWRlIGNyZWF0ZSBvcHMuCj4g
KyAqCQkJQGtvYmo6IGtvYmplY3Qgb2YgdHlwZSBmb3Igd2hpY2ggJ2NyZWF0ZScgaXMgY2FsbGVk
Lgo+ICsgKgkJCUBtZGV2OiBtZGV2X2RldmljZSBzdHJ1Y3R1cmUgb24gb2YgbWVkaWF0ZWQgZGV2
aWNlCj4gKyAqCQkJICAgICAgdGhhdCBpcyBiZWluZyBjcmVhdGVkCj4gKyAqCQkJUmV0dXJucyBp
bnRlZ2VyOiBzdWNjZXNzICgwKSBvciBlcnJvciAoPCAwKQo+ICsgKiBAcmVtb3ZlOgkJQ2FsbGVk
IHRvIGZyZWUgcmVzb3VyY2VzIGluIHBhcmVudCBkZXZpY2UncyBkcml2ZXIgZm9yIGEKPiArICoJ
CQlhIG1lZGlhdGVkIGRldmljZS4gSXQgaXMgbWFuZGF0b3J5IHRvIHByb3ZpZGUgJ3JlbW92ZScK
PiArICoJCQlvcHMuCj4gKyAqCQkJQG1kZXY6IG1kZXZfZGV2aWNlIGRldmljZSBzdHJ1Y3R1cmUg
d2hpY2ggaXMgYmVpbmcKPiArICoJCQkgICAgICAgZGVzdHJveWVkCj4gKyAqCQkJUmV0dXJucyBp
bnRlZ2VyOiBzdWNjZXNzICgwKSBvciBlcnJvciAoPCAwKQo+ICsgKiBAZGV2aWNlX29wczogICAg
ICAgICBEZXZpY2Ugc3BlY2lmaWMgZW11bGF0aW9uIGNhbGxiYWNrLgo+ICsgKgo+ICAgKiBQYXJl
bnQgZGV2aWNlIHRoYXQgc3VwcG9ydCBtZWRpYXRlZCBkZXZpY2Ugc2hvdWxkIGJlIHJlZ2lzdGVy
ZWQgd2l0aCBtZGV2Cj4gICAqIG1vZHVsZSB3aXRoIG1kZXZfcGFyZW50X29wcyBzdHJ1Y3R1cmUu
Cj4gICAqKi8KPiBAQCAtODMsMTUgKzEwMiw3IEBAIHN0cnVjdCBtZGV2X3BhcmVudF9vcHMgewo+
ICAKPiAgCWludCAgICAgKCpjcmVhdGUpKHN0cnVjdCBrb2JqZWN0ICprb2JqLCBzdHJ1Y3QgbWRl
dl9kZXZpY2UgKm1kZXYpOwo+ICAJaW50ICAgICAoKnJlbW92ZSkoc3RydWN0IG1kZXZfZGV2aWNl
ICptZGV2KTsKPiAtCWludCAgICAgKCpvcGVuKShzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYpOwo+
IC0Jdm9pZCAgICAoKnJlbGVhc2UpKHN0cnVjdCBtZGV2X2RldmljZSAqbWRldik7Cj4gLQlzc2l6
ZV90ICgqcmVhZCkoc3RydWN0IG1kZXZfZGV2aWNlICptZGV2LCBjaGFyIF9fdXNlciAqYnVmLAo+
IC0JCQlzaXplX3QgY291bnQsIGxvZmZfdCAqcHBvcyk7Cj4gLQlzc2l6ZV90ICgqd3JpdGUpKHN0
cnVjdCBtZGV2X2RldmljZSAqbWRldiwgY29uc3QgY2hhciBfX3VzZXIgKmJ1ZiwKPiAtCQkJIHNp
emVfdCBjb3VudCwgbG9mZl90ICpwcG9zKTsKPiAtCWxvbmcJKCppb2N0bCkoc3RydWN0IG1kZXZf
ZGV2aWNlICptZGV2LCB1bnNpZ25lZCBpbnQgY21kLAo+IC0JCQkgdW5zaWduZWQgbG9uZyBhcmcp
Owo+IC0JaW50CSgqbW1hcCkoc3RydWN0IG1kZXZfZGV2aWNlICptZGV2LCBzdHJ1Y3Qgdm1fYXJl
YV9zdHJ1Y3QgKnZtYSk7Cj4gKwljb25zdCB2b2lkICpkZXZpY2Vfb3BzOwo+ICB9Owo+ICAKPiAg
LyogaW50ZXJmYWNlIGZvciBleHBvcnRpbmcgbWRldiBzdXBwb3J0ZWQgdHlwZSBhdHRyaWJ1dGVz
ICovCj4gQEAgLTEzNyw3ICsxNDgsOCBAQCBjb25zdCBndWlkX3QgKm1kZXZfdXVpZChzdHJ1Y3Qg
bWRldl9kZXZpY2UgKm1kZXYpOwo+ICAKPiAgZXh0ZXJuIHN0cnVjdCBidXNfdHlwZSBtZGV2X2J1
c190eXBlOwo+ICAKPiAtaW50IG1kZXZfcmVnaXN0ZXJfdmZpb19kZXZpY2Uoc3RydWN0IGRldmlj
ZSAqZGV2LCBjb25zdCBzdHJ1Y3QgbWRldl9wYXJlbnRfb3BzICpvcHMpOwo+ICtpbnQgbWRldl9y
ZWdpc3Rlcl92ZmlvX2RldmljZShzdHJ1Y3QgZGV2aWNlICpkZXYsCj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGNvbnN0IHN0cnVjdCBtZGV2X3BhcmVudF9vcHMgKm9wcyk7Cj4gIHZv
aWQgbWRldl91bnJlZ2lzdGVyX2RldmljZShzdHJ1Y3QgZGV2aWNlICpkZXYpOwo+ICAKPiAgaW50
IG1kZXZfcmVnaXN0ZXJfZHJpdmVyKHN0cnVjdCBtZGV2X2RyaXZlciAqZHJ2LCBzdHJ1Y3QgbW9k
dWxlICpvd25lcik7Cj4gZGlmZiAtLWdpdCBhL3NhbXBsZXMvdmZpby1tZGV2L21ib2Nocy5jIGIv
c2FtcGxlcy92ZmlvLW1kZXYvbWJvY2hzLmMKPiBpbmRleCA3MWE0NDY5YmU4NWQuLjUzY2ViMzU3
ZjE1MiAxMDA2NDQKPiAtLS0gYS9zYW1wbGVzL3ZmaW8tbWRldi9tYm9jaHMuYwo+ICsrKyBiL3Nh
bXBsZXMvdmZpby1tZGV2L21ib2Nocy5jCj4gQEAgLTE0MTgsMTIgKzE0MTgsNyBAQCBzdGF0aWMg
c3RydWN0IGF0dHJpYnV0ZV9ncm91cCAqbWRldl90eXBlX2dyb3Vwc1tdID0gewo+ICAJTlVMTCwK
PiAgfTsKPiAgCj4gLXN0YXRpYyBjb25zdCBzdHJ1Y3QgbWRldl9wYXJlbnRfb3BzIG1kZXZfZm9w
cyA9IHsKPiAtCS5vd25lcgkJCT0gVEhJU19NT0RVTEUsCj4gLQkubWRldl9hdHRyX2dyb3Vwcwk9
IG1kZXZfZGV2X2dyb3VwcywKPiAtCS5zdXBwb3J0ZWRfdHlwZV9ncm91cHMJPSBtZGV2X3R5cGVf
Z3JvdXBzLAo+IC0JLmNyZWF0ZQkJCT0gbWJvY2hzX2NyZWF0ZSwKPiAtCS5yZW1vdmUJCQk9IG1i
b2Noc19yZW1vdmUsCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgdmZpb19tZGV2X3BhcmVudF9vcHMg
dmZpb19tZGV2X29wcyA9IHsKPiAgCS5vcGVuCQkJPSBtYm9jaHNfb3BlbiwKPiAgCS5yZWxlYXNl
CQk9IG1ib2Noc19jbG9zZSwKPiAgCS5yZWFkCQkJPSBtYm9jaHNfcmVhZCwKPiBAQCAtMTQzMiw2
ICsxNDI3LDE1IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgbWRldl9wYXJlbnRfb3BzIG1kZXZfZm9w
cyA9IHsKPiAgCS5tbWFwCQkJPSBtYm9jaHNfbW1hcCwKPiAgfTsKPiAgCj4gK3N0YXRpYyBjb25z
dCBzdHJ1Y3QgbWRldl9wYXJlbnRfb3BzIG1kZXZfZm9wcyA9IHsKPiArCS5vd25lcgkJCT0gVEhJ
U19NT0RVTEUsCj4gKwkubWRldl9hdHRyX2dyb3Vwcwk9IG1kZXZfZGV2X2dyb3VwcywKPiArCS5z
dXBwb3J0ZWRfdHlwZV9ncm91cHMJPSBtZGV2X3R5cGVfZ3JvdXBzLAo+ICsJLmNyZWF0ZQkJCT0g
bWJvY2hzX2NyZWF0ZSwKPiArCS5yZW1vdmUJCQk9IG1ib2Noc19yZW1vdmUsCj4gKwkuZGV2aWNl
X29wcwkJPSAmdmZpb19tZGV2X29wcywKPiArfTsKPiArCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
ZmlsZV9vcGVyYXRpb25zIHZkX2ZvcHMgPSB7Cj4gIAkub3duZXIJCT0gVEhJU19NT0RVTEUsCj4g
IH07Cj4gZGlmZiAtLWdpdCBhL3NhbXBsZXMvdmZpby1tZGV2L21kcHkuYyBiL3NhbXBsZXMvdmZp
by1tZGV2L21kcHkuYwo+IGluZGV4IGQzMDI5ZGQyN2Q5MS4uNGJhMjg1YTU3NjhmIDEwMDY0NAo+
IC0tLSBhL3NhbXBsZXMvdmZpby1tZGV2L21kcHkuYwo+ICsrKyBiL3NhbXBsZXMvdmZpby1tZGV2
L21kcHkuYwo+IEBAIC03MjUsMTIgKzcyNSw3IEBAIHN0YXRpYyBzdHJ1Y3QgYXR0cmlidXRlX2dy
b3VwICptZGV2X3R5cGVfZ3JvdXBzW10gPSB7Cj4gIAlOVUxMLAo+ICB9Owo+ICAKPiAtc3RhdGlj
IGNvbnN0IHN0cnVjdCBtZGV2X3BhcmVudF9vcHMgbWRldl9mb3BzID0gewo+IC0JLm93bmVyCQkJ
PSBUSElTX01PRFVMRSwKPiAtCS5tZGV2X2F0dHJfZ3JvdXBzCT0gbWRldl9kZXZfZ3JvdXBzLAo+
IC0JLnN1cHBvcnRlZF90eXBlX2dyb3Vwcwk9IG1kZXZfdHlwZV9ncm91cHMsCj4gLQkuY3JlYXRl
CQkJPSBtZHB5X2NyZWF0ZSwKPiAtCS5yZW1vdmUJCQk9IG1kcHlfcmVtb3ZlLAo+ICtzdGF0aWMg
Y29uc3Qgc3RydWN0IHZmaW9fbWRldl9wYXJlbnRfb3BzIHZmaW9fbWRldl9vcHMgPSB7Cj4gIAku
b3BlbgkJCT0gbWRweV9vcGVuLAo+ICAJLnJlbGVhc2UJCT0gbWRweV9jbG9zZSwKPiAgCS5yZWFk
CQkJPSBtZHB5X3JlYWQsCj4gQEAgLTczOSw2ICs3MzQsMTUgQEAgc3RhdGljIGNvbnN0IHN0cnVj
dCBtZGV2X3BhcmVudF9vcHMgbWRldl9mb3BzID0gewo+ICAJLm1tYXAJCQk9IG1kcHlfbW1hcCwK
PiAgfTsKPiAgCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgbWRldl9wYXJlbnRfb3BzIG1kZXZfZm9w
cyA9IHsKPiArCS5vd25lcgkJCT0gVEhJU19NT0RVTEUsCj4gKwkubWRldl9hdHRyX2dyb3Vwcwk9
IG1kZXZfZGV2X2dyb3VwcywKPiArCS5zdXBwb3J0ZWRfdHlwZV9ncm91cHMJPSBtZGV2X3R5cGVf
Z3JvdXBzLAo+ICsJLmNyZWF0ZQkJCT0gbWRweV9jcmVhdGUsCj4gKwkucmVtb3ZlCQkJPSBtZHB5
X3JlbW92ZSwKPiArCS5kZXZpY2Vfb3BzCQk9ICZ2ZmlvX21kZXZfb3BzLAo+ICt9Owo+ICsKPiAg
c3RhdGljIGNvbnN0IHN0cnVjdCBmaWxlX29wZXJhdGlvbnMgdmRfZm9wcyA9IHsKPiAgCS5vd25l
cgkJPSBUSElTX01PRFVMRSwKPiAgfTsKPiBkaWZmIC0tZ2l0IGEvc2FtcGxlcy92ZmlvLW1kZXYv
bXR0eS5jIGIvc2FtcGxlcy92ZmlvLW1kZXYvbXR0eS5jCj4gaW5kZXggNzQ0Yzg4YTZiMjJjLi5h
NDY4OTA0ZWM2MjYgMTAwNjQ0Cj4gLS0tIGEvc2FtcGxlcy92ZmlvLW1kZXYvbXR0eS5jCj4gKysr
IGIvc2FtcGxlcy92ZmlvLW1kZXYvbXR0eS5jCj4gQEAgLTE0MTAsNiArMTQxMCwxNCBAQCBzdGF0
aWMgc3RydWN0IGF0dHJpYnV0ZV9ncm91cCAqbWRldl90eXBlX2dyb3Vwc1tdID0gewo+ICAJTlVM
TCwKPiAgfTsKPiAgCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgdmZpb19tZGV2X3BhcmVudF9vcHMg
dmZpb19tZGV2X29wcyA9IHsKPiArCS5vcGVuICAgICAgICAgICAgICAgICAgID0gbXR0eV9vcGVu
LAo+ICsJLnJlbGVhc2UgICAgICAgICAgICAgICAgPSBtdHR5X2Nsb3NlLAo+ICsJLnJlYWQgICAg
ICAgICAgICAgICAgICAgPSBtdHR5X3JlYWQsCj4gKwkud3JpdGUgICAgICAgICAgICAgICAgICA9
IG10dHlfd3JpdGUsCj4gKwkuaW9jdGwJCSAgICAgICAgPSBtdHR5X2lvY3RsLAo+ICt9Owo+ICsK
PiAgc3RhdGljIGNvbnN0IHN0cnVjdCBtZGV2X3BhcmVudF9vcHMgbWRldl9mb3BzID0gewo+ICAJ
Lm93bmVyICAgICAgICAgICAgICAgICAgPSBUSElTX01PRFVMRSwKPiAgCS5kZXZfYXR0cl9ncm91
cHMgICAgICAgID0gbXR0eV9kZXZfZ3JvdXBzLAo+IEBAIC0xNDE3LDExICsxNDI1LDcgQEAgc3Rh
dGljIGNvbnN0IHN0cnVjdCBtZGV2X3BhcmVudF9vcHMgbWRldl9mb3BzID0gewo+ICAJLnN1cHBv
cnRlZF90eXBlX2dyb3VwcyAgPSBtZGV2X3R5cGVfZ3JvdXBzLAo+ICAJLmNyZWF0ZSAgICAgICAg
ICAgICAgICAgPSBtdHR5X2NyZWF0ZSwKPiAgCS5yZW1vdmUJCQk9IG10dHlfcmVtb3ZlLAo+IC0J
Lm9wZW4gICAgICAgICAgICAgICAgICAgPSBtdHR5X29wZW4sCj4gLQkucmVsZWFzZSAgICAgICAg
ICAgICAgICA9IG10dHlfY2xvc2UsCj4gLQkucmVhZCAgICAgICAgICAgICAgICAgICA9IG10dHlf
cmVhZCwKPiAtCS53cml0ZSAgICAgICAgICAgICAgICAgID0gbXR0eV93cml0ZSwKPiAtCS5pb2N0
bAkJICAgICAgICA9IG10dHlfaW9jdGwsCj4gKwkuZGV2aWNlX29wcyAgICAgICAgICAgICA9ICZ2
ZmlvX21kZXZfb3BzLAo+ICB9Owo+ICAKPiAgc3RhdGljIHZvaWQgbXR0eV9kZXZpY2VfcmVsZWFz
ZShzdHJ1Y3QgZGV2aWNlICpkZXYpCj4gLS0gCj4gMi4xOS4xCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
