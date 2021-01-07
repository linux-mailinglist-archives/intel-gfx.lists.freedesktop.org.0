Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 144A72ECE63
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jan 2021 12:04:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F27276E437;
	Thu,  7 Jan 2021 11:04:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 490E56E439
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Jan 2021 11:04:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1610017474;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6BPOAAWATY84TC3xxaKQNyQK2s0RrmDpPoUu8DRhLXE=;
 b=NP6AKGahc/LNEI3hQ6d6fWbQc/3E7j2GhXsc34ZRZz1GzpDZKEtrNcpd5QrJoKUKXOXLuJ
 msZyeyQZ0VKGU4/JQY3qcaTE6an+xb/SYOGVLiACAO1JXq6UJo+FGomgNmvJ6hrWfrRiuR
 RkSotrDFA4SHMmMKiPLOrONsa4mYtHo=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-97-q1NA9L6hPJyQwNIHAOv8tA-1; Thu, 07 Jan 2021 06:04:30 -0500
X-MC-Unique: q1NA9L6hPJyQwNIHAOv8tA-1
Received: by mail-ed1-f71.google.com with SMTP id g6so3217354edw.13
 for <intel-gfx@lists.freedesktop.org>; Thu, 07 Jan 2021 03:04:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=6BPOAAWATY84TC3xxaKQNyQK2s0RrmDpPoUu8DRhLXE=;
 b=U1KWVTQdEOFM8CIM6LkCM4XvrPsyzho/IXGLHR7OcMLaBzISGV4LncpLLX6AEuMUME
 Eg7YwN7RdLVJZY8dJYJWMu8JPMxrUYyE0+t8ABqtxKiY+qZ7faxP0k0SnVDLzI6okCdB
 DR7zvoUcQkWnsIrV5TSqM7rf2QaHGk5JlX0TroN2VDdgjTlSLB6Fe/H1rsxkwTIojG7J
 XUJ+mmE+1VP2WD+8mjVCNG6dal29amAMrC5Sv59DBlw0P0UgNh5znOalp1gHCujpEQka
 GV2gFryPrr/TI8mtCWJTFqai61kGB1Z8QbZ17KhnzKpZykzlC8JOkIFREZiIbFYx4eR/
 QR/g==
X-Gm-Message-State: AOAM5325XULaIVs9JHktt0NQF0ffgc2wqcK/CB9WxqCn9v0Sx52Gl3Gk
 /NYMif2Mffaf6zyFGUB1P3YekIbYWO2Tvt2Q7u6sPLa39qUQ6viBPzsl4SUTwgmZ/U5HtfWz10k
 RUtwv0wL43TZ/wENxyJ3mLzYX1w2a
X-Received: by 2002:a17:906:38c3:: with SMTP id
 r3mr5904062ejd.193.1610017468890; 
 Thu, 07 Jan 2021 03:04:28 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxd09hC6QVtOE8mOdwoTqfPgjIJThPoBlRV9uYzoAo2YSBEq5P4921+axYWMt4BNYy/+TyV6w==
X-Received: by 2002:a17:906:38c3:: with SMTP id
 r3mr5904049ejd.193.1610017468709; 
 Thu, 07 Jan 2021 03:04:28 -0800 (PST)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-37a3-353b-be90-1238.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:37a3:353b:be90:1238])
 by smtp.gmail.com with ESMTPSA id t12sm2534464edy.49.2021.01.07.03.04.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 07 Jan 2021 03:04:28 -0800 (PST)
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20201118124058.26021-1-hdegoede@redhat.com>
 <20201124154956.GL6112@intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <a83cab99-5f8a-8112-40c0-4e6c6a2e977f@redhat.com>
Date: Thu, 7 Jan 2021 12:04:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201124154956.GL6112@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsi: Use unconditional msleep for
 the panel_on_delay when there is no reset-deassert MIPI-sequence
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpPbiAxMS8yNC8yMCA0OjQ5IFBNLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6Cj4gT24gV2Vk
LCBOb3YgMTgsIDIwMjAgYXQgMDE6NDA6NThQTSArMDEwMCwgSGFucyBkZSBHb2VkZSB3cm90ZToK
Pj4gQ29tbWl0IDI1YjQ2MjBlZTgyMiAoImRybS9pOTE1L2RzaTogU2tpcCBkZWxheXMgZm9yIHYz
IFZCVHMgaW4gdmlkLW1vZGUiKQo+PiBhZGRlZCBhbiBpbnRlbF9kc2lfbXNsZWVwKCkgaGVscGVy
IHdoaWNoIHNraXBzIHNsZWVwaW5nIGlmIHRoZQo+PiBNSVBJLXNlcXVlbmNlcyBoYXZlIGEgdmVy
c2lvbiBvZiAzIG9yIG5ld2VyIGFuZCB0aGUgcGFuZWwgaXMgaW4gdmlkLW1vZGU7Cj4+IGFuZCBp
dCBtb3ZlZCBhIGJ1bmNoIG9mIG1zbGVlcC1zIG92ZXIgdG8gdGhpcyBuZXcgaGVscGVyLgo+Pgo+
PiBUaGlzIHdhcyBiYXNlZCBvbiBteSByZWFkaW5nIG9mIHRoZSBiaWcgY29tbWVudCBhcm91bmQg
bGluZSA3MzAgd2hpY2gKPj4gc3RhcnRzIHdpdGggIlBhbmVsIGVuYWJsZS9kaXNhYmxlIHNlcXVl
bmNlcyBmcm9tIHRoZSBWQlQgc3BlYy4iLAo+PiB3aGVyZSB0aGUgInYzIHZpZGVvIG1vZGUgc2Vx
IiBjb2x1bW4gZG9lcyBub3QgaGF2ZSBhbnkgd2FpdCB0IyBlbnRyaWVzLgo+Pgo+PiBHaXZlbiB0
aGF0IHRoaXMgY29kZSBoYXMgYmVlbiB1c2VkIG9uIGEgbG90IG9mIGRpZmZlcmVudCBkZXZpY2Vz
IHdpdGhvdXQKPj4gaXNzdWVzIHVudGlsIG5vdywgaXQgc2VlbXMgdGhhdCBteSBpbnRlcnByZXRh
dGlvbiBvZiB0aGUgc3BlYyBoZXJlIGlzCj4+IG1vc3RseSBjb3JyZWN0Lgo+Pgo+PiBCdXQgbm93
IEkgaGF2ZSBlbmNvdW50ZXJlZCBvbmUgZGV2aWNlLCBhbiBBY2VyIEFzcGlyZSBTd2l0Y2ggMTAg
RQo+PiBTVzMtMDE2LCB3aGVyZSB0aGUgcGFuZWwgd2lsbCBub3QgbGlnaHQgdXAgdW5sZXNzIHdl
IGRvIGFjdHVhbGx5IGhvbm9yIHRoZQo+PiBwYW5lbF9vbl9kZWxheSBhZnRlciBleGV4dXRpbmcg
dGhlIE1JUElfU0VRX1BBTkVMX09OIHNlcXVlbmNlLgo+Pgo+PiBXaGF0IHNlZW1zIHRvIHNldCB0
aGlzIG1vZGVsIGFwYXJ0IGlzIHRoYXQgaXQgaXMgbGFja2luZyBhCj4+IE1JUElfU0VRX0RFQVNT
RVJUX1JFU0VUIHNlcXVlbmNlLCB3aGljaCBpcyB3aGVyZSB0aGUgcG93ZXItb24KPj4gZGVsYXkg
dXN1YWxseSBoYXBwZW5zLgo+Pgo+PiBGaXggdGhlIHBhbmVsIG5vdCBsaWdodGluZyB1cCBvbiB0
aGlzIG1vZGVsIGJ5IHVzaW5nIGFuIHVuY29uZGl0aW9uYWwKPj4gbXNsZWVwKHBhbmVsX29uX2Rl
bGF5KSBpbnN0ZWFkIG9mIGludGVsX2RzaV9tc2xlZXAoKSB3aGVuIHRoZXJlIGlzCj4+IG5vIE1J
UElfU0VRX0RFQVNTRVJUX1JFU0VUIHNlcXVlbmNlLgo+Pgo+PiBGaXhlczogMjViNDYyMGVlODIy
ICgiZHJtL2k5MTUvZHNpOiBTa2lwIGRlbGF5cyBmb3IgdjMgVkJUcyBpbiB2aWQtbW9kZSIpCj4+
IFNpZ25lZC1vZmYtYnk6IEhhbnMgZGUgR29lZGUgPGhkZWdvZWRlQHJlZGhhdC5jb20+Cj4+IC0t
LQo+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS92bHZfZHNpLmMgfCAxMCArKysrKysr
LS0tCj4+ICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+
Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS92bHZfZHNpLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3Zsdl9kc2kuYwo+PiBpbmRleCAxOTRjMjM5
YWI2YjEuLmVmNjczMjc3YjM2ZCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS92bHZfZHNpLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS92
bHZfZHNpLmMKPj4gQEAgLTgxNiwxMCArODE2LDE0IEBAIHN0YXRpYyB2b2lkIGludGVsX2RzaV9w
cmVfZW5hYmxlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAo+PiAgCQlpbnRlbF9k
c2lfcHJlcGFyZShlbmNvZGVyLCBwaXBlX2NvbmZpZyk7Cj4+ICAKPj4gIAlpbnRlbF9kc2lfdmJ0
X2V4ZWNfc2VxdWVuY2UoaW50ZWxfZHNpLCBNSVBJX1NFUV9QT1dFUl9PTik7Cj4+IC0JaW50ZWxf
ZHNpX21zbGVlcChpbnRlbF9kc2ksIGludGVsX2RzaS0+cGFuZWxfb25fZGVsYXkpOwo+PiAgCj4+
IC0JLyogRGVhc3NlcnQgcmVzZXQgKi8KPj4gLQlpbnRlbF9kc2lfdmJ0X2V4ZWNfc2VxdWVuY2Uo
aW50ZWxfZHNpLCBNSVBJX1NFUV9ERUFTU0VSVF9SRVNFVCk7Cj4+ICsJaWYgKGRldl9wcml2LT52
YnQuZHNpLnNlcXVlbmNlW01JUElfU0VRX0RFQVNTRVJUX1JFU0VUXSkgewo+PiArCQlpbnRlbF9k
c2lfbXNsZWVwKGludGVsX2RzaSwgaW50ZWxfZHNpLT5wYW5lbF9vbl9kZWxheSk7Cj4+ICsJCS8q
IERlYXNzZXJ0IHJlc2V0ICovCj4+ICsJCWludGVsX2RzaV92YnRfZXhlY19zZXF1ZW5jZShpbnRl
bF9kc2ksIE1JUElfU0VRX0RFQVNTRVJUX1JFU0VUKTsKPj4gKwl9IGVsc2Ugewo+PiArCQltc2xl
ZXAoaW50ZWxfZHNpLT5wYW5lbF9vbl9kZWxheSk7Cj4+ICsJfQo+IAo+IENvdWxkIHBlcmhhcHMg
dXNlIGEgY29tbWVudCBvdCBleHBsYWluIHRvIHRoZSByZWFkZXIgd2hhdCdzIGdvaW5nIG9uLgo+
IAo+IExvb2tzIHNhbmUgZW5vdWdoIHRvIG1lLCBhbmQgaWYgd2UgZ2V0IHRoaXMgd3Jvbmcgd2Ug
anVzdCBnZXQgYSBiaWdnZXIKPiBkZWxheSB0aGFuIG5lY2Vzc2FyeSBJIGd1ZXNzLiBTbyBtb3N0
bHkgaGFybWxlc3MuCj4gCj4gUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+CgpUaGFuayB5b3UsIGFuZCBzb3JyeSBmb3IgYmVpbmcgc2xv
dyB3aXRoIGdldHRpbmcgYXJvdW5kIHRvCnB1c2hpbmcgdGhpcyB0byBkcm0taW50ZWwtbmV4dC4K
CkkndmUganVzdCBwdXNoZWQgaXQgdG8gZHJtLWludGVsLW5leHQgd2l0aCBhIGNvbW1lbnQgYWRk
ZWQgYWJvdmUgdGhlIGlmCihhbmQgZHJvcHBlZCB0aGUgc2luZ2xlIGxpbmUgY29tbWVudCBpbnNp
ZGUgdGhlIGlmKSwgc28gdGhpcyBub3cKbG9va3MgbGlrZSB0aGlzOgoKCS8qCgkgKiBHaXZlIHRo
ZSBwYW5lbCB0aW1lIHRvIHBvd2VyLW9uIGFuZCB0aGVuIGRlYXNzZXJ0IGl0cyByZXNldC4KCSAq
IERlcGVuZGluZyBvbiB0aGUgVkJUIE1JUEkgc2VxdWVuY2VzIHZlcnNpb24gdGhlIGRlYXNzZXJ0
LXNlcQoJICogbWF5IGNvbnRhaW4gdGhlIG5lY2Vzc2FyeSBkZWxheSwgaW50ZWxfZHNpX21zbGVl
cCgpIHdpbGwgc2tpcAoJICogdGhlIGRlbGF5IGluIHRoYXQgY2FzZS4gSWYgdGhlcmUgaXMgbm8g
ZGVhc3NlcnQtc2VxLCB0aGVuIGFuCgkgKiB1bmNvbmRpdGlvbmFsIG1zbGVlcCBpcyB1c2VkIHRv
IGdpdmUgdGhlIHBhbmVsIHRpbWUgdG8gcG93ZXItb24uCgkgKi8KCWlmIChkZXZfcHJpdi0+dmJ0
LmRzaS5zZXF1ZW5jZVtNSVBJX1NFUV9ERUFTU0VSVF9SRVNFVF0pIHsKCQlpbnRlbF9kc2lfbXNs
ZWVwKGludGVsX2RzaSwgaW50ZWxfZHNpLT5wYW5lbF9vbl9kZWxheSk7CgkJaW50ZWxfZHNpX3Zi
dF9leGVjX3NlcXVlbmNlKGludGVsX2RzaSwgTUlQSV9TRVFfREVBU1NFUlRfUkVTRVQpOwoJfSBl
bHNlIHsKCQltc2xlZXAoaW50ZWxfZHNpLT5wYW5lbF9vbl9kZWxheSk7Cgl9CgoodGhlIGNvZGUg
aXMgdW5jaGFuZ2VkIGZyb20gd2hlbiB5b3UgcmV2aWV3ZWQgaXQpLgoKUmVnYXJkcywKCkhhbnMK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
