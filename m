Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DBFD141239
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 21:22:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4D506F90B;
	Fri, 17 Jan 2020 20:22:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AEF36F90B
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 20:22:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579292535;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=NIYyAOUlSap6NxGaU9Z9Gg8Thp8tDujkT+cOMhp/dO8=;
 b=LoRa+/EYFexbQAI4K+7WzMTl093J2PQfWdJMb0klkHiy9xGcLf8IPLCuko1LVzTS7xPPI4
 38pg2xWQYRXgmE59s+Y/16XYBlbJpr+eE2EtPCclowzzhVUYP/eRvDvZD8unpkJYwca3L/
 gEEy+NUGR4AAPRTXKbLwy05/qAYb1UM=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-341-lunbLMpTN0eaB7p53cVfBg-1; Fri, 17 Jan 2020 15:22:14 -0500
Received: by mail-qv1-f72.google.com with SMTP id f16so16445719qvr.7
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 12:22:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=kAw947MEqzb11qPRvlIK1Nyaj6U03S3UbJZfwwrNr3U=;
 b=q0PQ+IusbgtBxtLLdm24P7vf5jxB6SNQVRX8UhiqO6DXoo8Q7dj64I380/LJIO7fNZ
 i9jOYPD6QC7La8IK+UbZYPoAhlMDPZaIC1CJQDngKPPO6yerZdOydqf1kTJIKoXzHfcp
 ZvqmOHCDbGbp5lXFxHpocXzrfS84/Yjkjfpm6/yTXh22bfzLFHBxedZXihyvC32Ox1mL
 e938KyjgqB8Xgv2RqAW6hEMQPa3vn8tIknVbwEuTAEdGVeVVaU9+HpZ2mtdnlbkMH+0i
 Q84GWAHyoLuU/ZB77gUJJ2yU4tsoLg4H3QMkZPGIJIvQ0xyRN/kPmX/9ZoIqhtL1mq3H
 Iv/w==
X-Gm-Message-State: APjAAAXrs2EMQ+BNF69UH6v5fAriKOd4K47lUwv+sbWA7eJwwkhIaSQB
 CfJbkPMFSNj2YSbcWjMRqoug5WYlZgxKDHze34OuJlz4+a61aH1rfqrX13c/8yEXAGrOCxqlaFZ
 fa+l3a30OIdgSF3QmKpKDge/+9IVj
X-Received: by 2002:ae9:ed47:: with SMTP id c68mr34133113qkg.136.1579292533968; 
 Fri, 17 Jan 2020 12:22:13 -0800 (PST)
X-Google-Smtp-Source: APXvYqyuv9qmuAVgFwq4kjXJ0Jjs/N70gVS54HOIG2DI8UpaWaLfjinvaRN6PH5UUg3rFLp5bllzSQ==
X-Received: by 2002:ae9:ed47:: with SMTP id c68mr34133101qkg.136.1579292533769; 
 Fri, 17 Jan 2020 12:22:13 -0800 (PST)
Received: from dhcp-10-20-1-90.bss.redhat.com ([144.121.20.162])
 by smtp.gmail.com with ESMTPSA id c24sm13849649qtk.40.2020.01.17.12.22.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Jan 2020 12:22:13 -0800 (PST)
Message-ID: <6a5b0155847d06f4b89da4eeb810ae3afaaf5053.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: =?ISO-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>, 
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Date: Fri, 17 Jan 2020 15:22:12 -0500
In-Reply-To: <20200117015837.402239-2-jose.souza@intel.com>
References: <20200117015837.402239-1-jose.souza@intel.com>
 <20200117015837.402239-2-jose.souza@intel.com>
Organization: Red Hat
User-Agent: Evolution 3.34.3 (3.34.3-1.fc31)
MIME-Version: 1.0
X-MC-Unique: lunbLMpTN0eaB7p53cVfBg-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/mst: Some style improvements in
 drm_dp_mst_topology_mgr_set_mst()
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmV2aWV3ZWQtYnk6IEx5dWRlIFBhdWwgPGx5dWRlQHJlZGhhdC5jb20+CgpPbiBUaHUsIDIwMjAt
MDEtMTYgYXQgMTc6NTggLTA4MDAsIEpvc8OpIFJvYmVydG8gZGUgU291emEgd3JvdGU6Cj4gUmVt
b3ZpbmcgdGhpcyBsb3NlIGNvZGUgYmxvY2sgYW5kIHJlbW92aW5nIHVubmVjZXNzYXJ5IGJyYWNr
ZXQuCj4gCj4gQ2M6IEx5dWRlIFBhdWwgPGx5dWRlQHJlZGhhdC5jb20+Cj4gU2lnbmVkLW9mZi1i
eTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4gLS0tCj4g
IGRyaXZlcnMvZ3B1L2RybS9kcm1fZHBfbXN0X3RvcG9sb2d5LmMgfCAxNCArKysrKystLS0tLS0t
LQo+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQo+IAo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX21zdF90b3BvbG9neS5jCj4gYi9k
cml2ZXJzL2dwdS9kcm0vZHJtX2RwX21zdF90b3BvbG9neS5jCj4gaW5kZXggMzhiZjExMWU1Zjli
Li5lM2EyMjM2MmFhZjIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9kcF9tc3Rf
dG9wb2xvZ3kuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZHBfbXN0X3RvcG9sb2d5LmMK
PiBAQCAtMzQ5MSw2ICszNDkxLDggQEAgaW50IGRybV9kcF9tc3RfdG9wb2xvZ3lfbWdyX3NldF9t
c3Qoc3RydWN0Cj4gZHJtX2RwX21zdF90b3BvbG9neV9tZ3IgKm1nciwgYm9vbCBtcwo+ICAJbWdy
LT5tc3Rfc3RhdGUgPSBtc3Rfc3RhdGU7Cj4gIAkvKiBzZXQgdGhlIGRldmljZSBpbnRvIE1TVCBt
b2RlICovCj4gIAlpZiAobXN0X3N0YXRlKSB7Cj4gKwkJc3RydWN0IGRybV9kcF9wYXlsb2FkIHJl
c2V0X3BheTsKPiArCj4gIAkJV0FSTl9PTihtZ3ItPm1zdF9wcmltYXJ5KTsKPiAgCj4gIAkJLyog
Z2V0IGRwY2QgaW5mbyAqLwo+IEBAIC0zNTIxLDE2ICszNTIzLDEyIEBAIGludCBkcm1fZHBfbXN0
X3RvcG9sb2d5X21ncl9zZXRfbXN0KHN0cnVjdAo+IGRybV9kcF9tc3RfdG9wb2xvZ3lfbWdyICpt
Z3IsIGJvb2wgbXMKPiAgCj4gIAkJcmV0ID0gZHJtX2RwX2RwY2Rfd3JpdGViKG1nci0+YXV4LCBE
UF9NU1RNX0NUUkwsCj4gIAkJCQkJCQkgRFBfTVNUX0VOIHwKPiBEUF9VUF9SRVFfRU4gfCBEUF9V
UFNUUkVBTV9JU19TUkMpOwo+IC0JCWlmIChyZXQgPCAwKSB7Cj4gKwkJaWYgKHJldCA8IDApCj4g
IAkJCWdvdG8gb3V0X3VubG9jazsKPiAtCQl9Cj4gIAo+IC0JCXsKPiAtCQkJc3RydWN0IGRybV9k
cF9wYXlsb2FkIHJlc2V0X3BheTsKPiAtCQkJcmVzZXRfcGF5LnN0YXJ0X3Nsb3QgPSAwOwo+IC0J
CQlyZXNldF9wYXkubnVtX3Nsb3RzID0gMHgzZjsKPiAtCQkJZHJtX2RwX2RwY2Rfd3JpdGVfcGF5
bG9hZChtZ3IsIDAsICZyZXNldF9wYXkpOwo+IC0JCX0KPiArCQlyZXNldF9wYXkuc3RhcnRfc2xv
dCA9IDA7Cj4gKwkJcmVzZXRfcGF5Lm51bV9zbG90cyA9IDB4M2Y7Cj4gKwkJZHJtX2RwX2RwY2Rf
d3JpdGVfcGF5bG9hZChtZ3IsIDAsICZyZXNldF9wYXkpOwo+ICAKPiAgCQlxdWV1ZV93b3JrKHN5
c3RlbV9sb25nX3dxLCAmbWdyLT53b3JrKTsKPiAgCi0tIApDaGVlcnMsCglMeXVkZSBQYXVsCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
