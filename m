Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3FC31DEC8
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Feb 2021 19:07:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F0FE89F73;
	Wed, 17 Feb 2021 18:07:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 899F389F41
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Feb 2021 18:07:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1613585238;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wLuJZoMXALpSJG63q3wMLa8C/ZHblVgtvkDcyke0a4U=;
 b=PB6oVuBJUxrY3xoPoPH+jSqAJFCaAeqDjdy1KDAk5SUdc4yGDEcNT7WnSgIAfBg6SVD+1e
 peaT4JV+gBmhm/TyilqBxASKVKMIKohGvaV2/OjIJOMcerI1mPwc1QqDCYEuhRWz4y08sX
 PTYlwWEv/HbtYZgudcQS/bwweOJgh9M=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-395-0hEpFFo8Ony4WYpwdYG0Vg-1; Wed, 17 Feb 2021 13:07:15 -0500
X-MC-Unique: 0hEpFFo8Ony4WYpwdYG0Vg-1
Received: by mail-qv1-f70.google.com with SMTP id p4so10493597qvn.23
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Feb 2021 10:07:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
 :in-reply-to:references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=wLuJZoMXALpSJG63q3wMLa8C/ZHblVgtvkDcyke0a4U=;
 b=fF3NL2FOre0nKJVx9cCl+CCOXefuhG8NaFtz6bIO3Pg4k/nQ3ZsOaIGnTLZAsK5Lm4
 aPhTnJzPw0dlreZxMAcVQ2EdVhoeVksZu5JIMCML6lLKLeLjcLv96nevQhCGu3tWIy+/
 xcZ/t00VIG+Ad2hw32V/xAyCwcowujoaR+pROcLEE8McIsICHNuywJHbPB+/mllg+6T8
 kJq4rbm3KqaqFREj+hld6+zYJmqWMf7DC0zZROOWLfVS2eXhsYdF7NkIl762HENF7TGs
 0vhL4ip5Ac5PvlOq78Tjy+wg09z4Hfj1UctBllAdCMQSulRxh9Fb/hX6X+x8Oq+jWYOz
 9zhw==
X-Gm-Message-State: AOAM532gsn62wwQSh6dDLhKcwqFZVuIP/ySBcRwOHYQlDlayVr83Unvj
 /xAyWWvWIYNhV3SHeKEIzRhhyDQsUSwRyddIPY+29BhhfAG3mP8JShnXqFTccly1sMfEPj8Nhpb
 vwrum3mCZF1DMyV2kzjaqAe6w0PNP
X-Received: by 2002:a0c:ee2b:: with SMTP id l11mr277784qvs.7.1613585234868;
 Wed, 17 Feb 2021 10:07:14 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxTLWdQUa/UJ0Jk1q3UTH2CZ3FFVMNM0Qsx+XqYNn68xiV4IilmKRiIKu+Nys8bEkIZuv4gxg==
X-Received: by 2002:a0c:ee2b:: with SMTP id l11mr277767qvs.7.1613585234675;
 Wed, 17 Feb 2021 10:07:14 -0800 (PST)
Received: from Whitewolf.lyude.net
 (pool-108-49-102-102.bstnma.fios.verizon.net. [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id d14sm1622702qtw.67.2021.02.17.10.07.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Feb 2021 10:07:13 -0800 (PST)
Message-ID: <d070b8fa29ee357eae1943e7d3ede6c7b9a92a40.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Imre Deak <imre.deak@intel.com>, dri-devel@lists.freedesktop.org
Date: Wed, 17 Feb 2021 13:07:11 -0500
In-Reply-To: <20210216123448.410545-1-imre.deak@intel.com>
References: <20210216123448.410545-1-imre.deak@intel.com>
Organization: Red Hat
User-Agent: Evolution 3.38.3 (3.38.3-1.fc33)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH] drm/dp_mst: Tune down the WARN modesetting
 a port with full_pbn=0
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIxLTAyLTE2IGF0IDE0OjM0ICswMjAwLCBJbXJlIERlYWsgd3JvdGU6Cj4gSXQn
cyBwb3NzaWJsZSB0byBtb2Rlc2V0IGEgY29ubmVjdG9yL21zdCBwb3J0IHRoYXQgaGFzIGEgMCBm
dWxsX3Bibgo+IHZhbHVlOiBpZiB0aGUgc2luayBvbiB0aGUgcG9ydCBkZWFzc2VydHMgaXRzIEhQ
RCBhbmQgYSBicmFuY2ggZGV2aWNlCj4gcmVwb3J0cyB0aGlzIHZpYSBhIENTTiB3aXRoIHRoZSBw
b3J0J3MgZGRwcz0wIGFuZCBwZHQhPU5PTkUgdGhlIGRyaXZlcgo+IGNsZWFycyBmdWxsX3Bibiwg
YnV0IHRoZSBjb3JyZXNwb25kaW5nIGNvbm5lY3RvciBjYW4gYmUgc3RpbGwKPiBtb2Rlc2V0dGVk
Lgo+IAo+IFRoaXMgaGFwcGVuZWQgb24gYSBERUxMIFUyNzE5RCBtb25pdG9yIGFzIHRoZSBicmFu
Y2ggZGV2aWNlIGFuZCBhbiBMRwo+IDI3VUw2NTAtVyBkYWlzeS1jaGFpbmVkIHRvIGl0LCB0aGUg
TEcgbW9uaXRvciBnZW5lcmF0aW5nIGEgbG9uZyBIUEQKPiBwdWxzZSAoZG9pbmcgdGhpcyBmb3Ig
c29tZSByZWFzb24gYWx3YXlzIHdoZW4gd2FraW5nIHVwIGZyb20gc29tZSBwb3dlcgo+IHNhdmlu
ZyBzdGF0ZSkuCj4gCj4gVHVuZSBkb3duIHRoZSBXQVJOIGFib3V0IHRoaXMgc2NlbmFyaW8gdG8g
YSBkZWJ1ZyBtZXNzYWdlLgo+IAo+IFJlZmVyZW5jZXM6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNr
dG9wLm9yZy9kcm0vaW50ZWwvLS9pc3N1ZXMvMTkxNwo+IENjOiBMeXVkZSBQYXVsIDxseXVkZUBy
ZWRoYXQuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNv
bT4KPiAtLS0KPiDCoGRyaXZlcnMvZ3B1L2RybS9kcm1fZHBfbXN0X3RvcG9sb2d5LmMgfCAxMCAr
KysrKysrLS0tCj4gwqAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9u
cygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX21zdF90b3BvbG9n
eS5jCj4gYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX21zdF90b3BvbG9neS5jCj4gaW5kZXggMGE1
NDUwNmMyNzczOC4uZGNhZjRiZjliNjJmNiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
ZHJtX2RwX21zdF90b3BvbG9neS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9kcF9tc3Rf
dG9wb2xvZ3kuYwo+IEBAIC01MTE4LDExICs1MTE4LDE1IEBAIGRybV9kcF9tc3RfYXRvbWljX2No
ZWNrX3BvcnRfYndfbGltaXQoc3RydWN0Cj4gZHJtX2RwX21zdF9wb3J0ICpwb3J0LAo+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKCFmb3VuZCkKPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gMDsKPiDCoAo+IC3CoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAvKiBUaGlzIHNob3VsZCBuZXZlciBoYXBwZW4sIGFzIGl0
IG1lYW5zIHdlIHRyaWVkIHRvCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIHNl
dCBhIG1vZGUgYmVmb3JlIHF1ZXJ5aW5nIHRoZSBmdWxsX3Bibgo+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAvKgo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBUaGlz
IGNvdWxkIGhhcHBlbiBpZiB0aGUgc2luayBkZWFzc2VydGVkIGl0cyBIUEQgbGluZSwgYnV0Cj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIHRoZSBicmFuY2ggZGV2aWNlIHN0aWxs
IHJlcG9ydHMgaXQgYXMgYXR0YWNoZWQgKFBEVCAhPQo+IE5PTkUpLgo+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgICovCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlm
IChXQVJOX09OKCFwb3J0LT5mdWxsX3BibikpCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoGlmICghcG9ydC0+ZnVsbF9wYm4pIHsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoGRybV9kYmdfa21zKHBvcnQtPm1nci0+ZGV2LCAiW01TVEI6JXBd
IFtNU1QgUE9SVDolcF0KPiBubyBCVyBhdmFpbGFibGUgZm9yIHRoZSBwb3J0XG4iLAo+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBwb3J0LT5wYXJlbnQsIHBvcnQpOwoKU2hvdWxkbid0IHRoaXMgdXNlIHRoZSBhdG9t
aWMgZGVidWdnaW5nIGxldmVsPyBXaXRoIHRoYXQgZml4ZWQsIHRoaXMgaXM6CgpSZXZpZXdlZC1i
eTogTHl1ZGUgUGF1bCA8bHl1ZGVAcmVkaGF0LmNvbT4KCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIC1FSU5WQUw7Cj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoH0KPiDCoAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgcGJuX3VzZWQgPSB2Y3BpLT5wYm47Cj4gwqDCoMKgwqDCoMKgwqDCoH0gZWxzZSB7CgotLSAK
U2luY2VyZWx5LAogICBMeXVkZSBQYXVsIChzaGUvaGVyKQogICBTb2Z0d2FyZSBFbmdpbmVlciBh
dCBSZWQgSGF0CiAgIApOb3RlOiBJIGRlYWwgd2l0aCBhIGxvdCBvZiBlbWFpbHMgYW5kIGhhdmUg
YSBsb3Qgb2YgYnVncyBvbiBteSBwbGF0ZS4gSWYgeW91J3ZlCmFza2VkIG1lIGEgcXVlc3Rpb24s
IGFyZSB3YWl0aW5nIGZvciBhIHJldmlldy9tZXJnZSBvbiBhIHBhdGNoLCBldGMuIGFuZCBJCmhh
dmVuJ3QgcmVzcG9uZGVkIGluIGEgd2hpbGUsIHBsZWFzZSBmZWVsIGZyZWUgdG8gc2VuZCBtZSBh
bm90aGVyIGVtYWlsIHRvIGNoZWNrCm9uIG15IHN0YXR1cy4gSSBkb24ndCBiaXRlIQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
