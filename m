Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F34261A4C
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Sep 2020 20:34:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 089B96E8A7;
	Tue,  8 Sep 2020 18:34:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C20DE6E8A7
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Sep 2020 18:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1599590074;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=a1bqVudAN6PTbMT2dOHXBPWk66L7Z68motaomVT1aFw=;
 b=E87u6gRXiRV7W6Cy8hQkHHqe1hCCrPEqu+87XnclPyQhVU3o8vxK8X3QRGI+7O/Zdy75Ur
 V3YMamxbafEJvhFwcUuSkaQcJHKWex3r0UCBlZcvkCfoteRqsT9UL9JU50olTIHu3s35q+
 igDAjm2DdP/nJzwevowGb/j3BrxEck8=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-41-9W9vLvkKM7OUpdeOeB_mGQ-1; Tue, 08 Sep 2020 14:34:26 -0400
X-MC-Unique: 9W9vLvkKM7OUpdeOeB_mGQ-1
Received: by mail-qk1-f200.google.com with SMTP id r184so6399797qka.21
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Sep 2020 11:34:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=a1bqVudAN6PTbMT2dOHXBPWk66L7Z68motaomVT1aFw=;
 b=CppfeOyq0Aj3Tf511YWSDOncjU2c6TaoJx1+MQlq0yDmbCSLQcs4lKa+K4lCR5MPN+
 H2Z/YAL6RUmiDgoEx+S9xymKOQNNLzeRQgZeYh0pwPSGlV7hdjeo333lEZ27gVrPfX29
 RsTH3HyHb8om4+yOsu2RDhK+qA2mQrnYnjOwkuxpJ6tXXe+jBxF96RIWatZ+8cBjrXny
 0uPRT3LMGh++qJkFFT+u1TAjOLjBunSy8bLeLwLG4tr3vxvj/9Jo6lWnCNO3sum1zatz
 8P2xoyZN9aYDFUBCZsth5kIa1xOmG/mfecYu2ySd+rUWF9jdkTKfsN/QTYxYsxBKz428
 QBnA==
X-Gm-Message-State: AOAM531HePivWCHDj79OPXtAP7C27j7Dis9kIKO2gQAtTAXrxjEhmF2a
 9gpPSmZ+ZfHszPqByk+uw1p276JxdSgTpxV5DG34uowhJ3bSQiLVUlonlpYY4EYjgmUZbp+g+pr
 RgZVGAYnZ5WADiCrfBeJd/6jQUAD8
X-Received: by 2002:aed:2fe7:: with SMTP id m94mr1484476qtd.34.1599590066179; 
 Tue, 08 Sep 2020 11:34:26 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwErw3SP+Nwgr+3Ww39e/A26hwYIDDnZxTAad/LjvcLst1HC4Ta0nDxvynY0drrkZkkFswT9g==
X-Received: by 2002:aed:2fe7:: with SMTP id m94mr1484460qtd.34.1599590065946; 
 Tue, 08 Sep 2020 11:34:25 -0700 (PDT)
Received: from Ruby.lyude.net (pool-108-49-102-102.bstnma.fios.verizon.net.
 [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id e10sm278672qtq.59.2020.09.08.11.34.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Sep 2020 11:34:25 -0700 (PDT)
Message-ID: <fa772231854424f2b4edc69e23b0edd924695e6c.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, 
 dri-devel@lists.freedesktop.org
Date: Tue, 08 Sep 2020 14:34:24 -0400
In-Reply-To: <20200904115354.25336-1-ville.syrjala@linux.intel.com>
References: <20200904115354.25336-1-ville.syrjala@linux.intel.com>
Organization: Red Hat
User-Agent: Evolution 3.36.5 (3.36.5-1.fc32)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH v2 00/18] drm/i915: Pimp DP DFP handling
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2l0aCB0aGUgbml0cGlja3MgYWRkcmVzc2VkIChub3RlIHRoZXJlIHdlcmUgYSBjb3VwbGUgb2Yg
b3RoZXIgc3BvdHMgd2hlcmUgd2UKd2FudGVkIHRvIHVzZSBSZXR1cm46IGluIHRoZSBrZG9jcywg
YnV0IEkgZGlkbid0IGJvdGhlciBwb2ludGluZyBhbGwgb2YgdGhlbQpvdXQpLCBhbGwgYnV0IHBh
dGNoIDA3IGlzOgoKUmV2aWV3ZWQtYnk6IEx5dWRlIFBhdWwgPGx5dWRlQHJlZGhhdC5jb20+CgpP
biBGcmksIDIwMjAtMDktMDQgYXQgMTQ6NTMgKzAzMDAsIFZpbGxlIFN5cmphbGEgd3JvdGU6Cj4g
RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiAK
PiBBdHRlbXB0IHRvIGRlYWwgd2l0aCBEUCBkb3duc3RyZWFtIGZhY2luZyBwb3J0cyAoREZQKSBt
b3JlCj4gdGhvcm91Z2hseS4gVGhpcyBpbnZvbHZlcyByZWFkaW5nIG1vcmUgb2YgdGhlIHBvcnQg
Y2Fwcwo+IGFuZCBkZWFsaW5nIHdpdGggdmFyaW91cyBjbG9jay9icGMgbGltaXRhdGlvbnMuCj4g
Cj4gQW5kIHdlIHRyeSB0byBlbmFibGUgWUNiQ3IgNDQ0LT40MjAgY29udmVyc2lvbiBmb3IgSERN
SSBERlBzCj4gd2hpY2ggY291bGQgYWxsb3cgc29tZSA0ayBkaXNwbGF5cyB0byBhY3R1YWxseSB1
c2UgNGsgb24KPiBwcmUtaWNsIGhhcmR3YXJlICh3aGljaCBkb2Vzbid0IGhhdmUgbmF0aXZlIDQy
MCBvdXRwdXQpLAo+IGFzc3VtaW5nIHdlIGRvbid0IHJ1biBpbnRvIHNvbWUgb3RoZXIgaGFyZHdh
cmUgbGltaXRzLgo+IAo+IEkgZHJvcHBlZCBteSBlYXJsaWVyIHBhdGNoZXMgdG8gYWxzbyBob29r
IGluIHRoZSBEUCBkdWFsIG1vZGUKPiBhZGFwdGVyIHByb2Jpbmcgc2luY2Ugc2FkbHkgSSd2ZSBu
b3QgYWN0dWFsbHkgc2VlbiBhIERQLT5EUCsrCj4gZG9uZ2xlIHRoYXQgcGFzc2VzIHRocm91Z2gg
dGhlIGkyYyB0cmFmZmljIGZvciB0aG9zZS4KPiAKPiBPbmx5IHBpbXBlZCB0aGUgU1NUIHNpZGUg
b2YgdGhpbmdzLiBOb3Qgc3VyZSB3aGF0IHdvdWxkCj4gYmUgcmVxdWlyZWQgdG8gZ2V0IGl0IGFs
bCB3b3JraW5nIGZvciBNU1QuCj4gCj4gVmlsbGUgU3lyasOkbMOkICgxOCk6Cj4gICBkcm0vZHA6
IER1bXAgZG93bnN0cmVhbSBmYWNpbmcgcG9ydCBjYXBzCj4gICBkcm0vaTkxNS9sc3Bjb246IERv
IG5vdCBzZW5kIGluZm9mcmFtZXMgdG8gbm9uLUhETUkgc2lua3MKPiAgIGRybS9kcDogRGVmaW5l
IHByb3RvY29sIGNvbnZlcnRlciBEUENEIHJlZ2lzdGVycwo+ICAgZHJtL2RwOiBEZWZpbmUgbW9y
ZSBkb3duc3RyZWFtIGZhY2luZyBwb3J0IGNhcHMKPiAgIGRybS9pOTE1OiBSZXdvcmtkIERGUCBt
YXggYnBjIGhhbmRsaW5nCj4gICBkcm0vZHA6IEFkZCBoZWxwZXJzIHRvIGlkZW50aWZ5IGRvd25z
dHJlYW0gZmFjaW5nIHBvcnQgdHlwZXMKPiAgIGRybS9kcDogUGltcCBkcm1fZHBfZG93bnN0cmVh
bV9tYXhfYnBjKCkKPiAgIGRybS9kcDogUmVkbyBkcm1fZHBfZG93bnN0cmVhbV9tYXhfY2xvY2so
KSBhcwo+ICAgICBkcm1fZHBfZG93bnN0cmVhbV9tYXhfZG90Y2xvY2soKQo+ICAgZHJtL2k5MTU6
IFJld29ya2QgRFAgREZQIGNsb2NrIGhhbmRsaW5nCj4gICBkcm0vZHA6IEFkZCBkcm1fZHBfZG93
bnN0cmVhbV97bWluLG1heH1fdG1kc19jbG9jaygpCj4gICBkcm0vaTkxNTogRGVhbCB3aXRoIFRN
RFMgREZQIGNsb2NrIGxpbWl0cwo+ICAgZHJtL2k5MTU6IENvbmZpZ3VyZSBEUCAxLjMrIHByb3Rv
Y29sIGNvbnZlcnRlZCBIRE1JIG1vZGUKPiAgIGRybS9kcDogQWRkIGRybV9kcF9kb3duc3RyZWFt
X21vZGUoKQo+ICAgZHJtL2k5MTU6IEhhbmRsZSBkb3duc3RyZWFtIGZhY2luZyBwb3J0cyB3L28g
RURJRAo+ICAgZHJtL2k5MTU6IEV4dHJhY3QgaW50ZWxfaGRtaV9oYXNfYXVkaW8oKQo+ICAgZHJt
L2k5MTU6IERQLT5IRE1JIFRNRFMgY2xvY2sgbGltaXRzIHZzLiBkZWVwIGNvbG9yCj4gICBkcm0v
ZHA6IEFkZCBoZWxwZXJzIGZvciBERlAgWUNiQ3IgNDoyOjAgaGFuZGxpbmcKPiAgIGRybS9pOTE1
OiBEbyBZQ2JDciA0NDQtPjQyMCBjb252ZXJzaW9uIHZpYSBEUCBwcm90b2NvbCBjb252ZXJ0ZXJz
Cj4gCj4gIGRyaXZlcnMvZ3B1L2RybS9kcm1fZHBfaGVscGVyLmMgICAgICAgICAgICAgICB8IDM4
MiArKysrKysrKysrKysrKystLS0KPiAgZHJpdmVycy9ncHUvZHJtL2RybV9lZGlkLmMgICAgICAg
ICAgICAgICAgICAgIHwgIDE5ICsKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kZGkuYyAgICAgIHwgIDExICstCj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfZGVidWdmcy5jICB8ICAgMyArLQo+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3R5cGVzLmggICAgfCAgIDkgKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmMgICAgICAgfCAzMDQgKysrKysrKysrKystLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5oICAgICAgIHwgICAxICsKPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMgICAgIHwgIDgyICsrLS0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmggICAgIHwgICAyICsKPiAgaW5jbHVkZS9kcm0vZHJt
X2RwX2hlbHBlci5oICAgICAgICAgICAgICAgICAgIHwgIDYzICsrLQo+ICBpbmNsdWRlL2RybS9k
cm1fZWRpZC5oICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDQgKwo+ICAxMSBmaWxlcyBjaGFu
Z2VkLCA3MzggaW5zZXJ0aW9ucygrKSwgMTQyIGRlbGV0aW9ucygtKQo+IAotLSAKQ2hlZXJzLAoJ
THl1ZGUgUGF1bCAoc2hlL2hlcikKCVNvZnR3YXJlIEVuZ2luZWVyIGF0IFJlZCBIYXQKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
