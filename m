Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36846114EB5
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2019 11:07:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD84B6F9AB;
	Fri,  6 Dec 2019 10:07:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2CE76F9AB
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Dec 2019 10:07:30 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-255-CmzEfi7tP9evyYLm71Htdg-1; Fri, 06 Dec 2019 05:07:28 -0500
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E96A0107ACC4;
 Fri,  6 Dec 2019 10:07:25 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-116-67.ams2.redhat.com
 [10.36.116.67])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A4CD15D6A3;
 Fri,  6 Dec 2019 10:07:25 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id D155616E18; Fri,  6 Dec 2019 11:07:24 +0100 (CET)
Date: Fri, 6 Dec 2019 11:07:24 +0100
From: Gerd Hoffmann <kraxel@redhat.com>
To: dri-devel@lists.freedesktop.org, robh@kernel.org,
 intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@linux.ie>,
 Christian Koenig <christian.koenig@amd.com>, Huang Rui <ray.huang@amd.com>,
 open list <linux-kernel@vger.kernel.org>
Message-ID: <20191206100724.ukzdyaym3ltcyfaa@sirius.home.kraxel.org>
References: <20191127092523.5620-1-kraxel@redhat.com>
 <20191127092523.5620-2-kraxel@redhat.com>
 <20191128113930.yhckvneecpvfhlls@sirius.home.kraxel.org>
 <20191205221523.GN624164@phenom.ffwll.local>
MIME-Version: 1.0
In-Reply-To: <20191205221523.GN624164@phenom.ffwll.local>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-MC-Unique: CmzEfi7tP9evyYLm71Htdg-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1575626849;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Wc1Uv6Nj7IUv6CX0rM0U3pEdROrdD6V3JPm9xjrxf2s=;
 b=F6bfczSSQ+Z8EjJZS9UjrGz6JHP/BM7WWMPkVoX4KOS74ZJxOD4cWMw0AvHfjoEH/tuIus
 PVu6WlFirGy1IcGMzK8FF6UrtQd1h9s259LEr2VVpA/GtNEALiKIfGtZ4Fm22DGJwvOu1L
 A8UjHLcbGfWAyVi/jowlrNugWzzrKj8=
Subject: Re: [Intel-gfx] [PATCH v3 1/2] drm: call drm_gem_object_funcs.mmap
 with fake offset
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBEZWMgMDUsIDIwMTkgYXQgMTE6MTU6MjNQTSArMDEwMCwgRGFuaWVsIFZldHRlciB3
cm90ZToKPiBPbiBUaHUsIE5vdiAyOCwgMjAxOSBhdCAxMjozOTozMFBNICswMTAwLCBHZXJkIEhv
ZmZtYW5uIHdyb3RlOgo+ID4gT24gV2VkLCBOb3YgMjcsIDIwMTkgYXQgMTA6MjU6MjJBTSArMDEw
MCwgR2VyZCBIb2ZmbWFubiB3cm90ZToKPiA+ID4gVGhlIGZha2Ugb2Zmc2V0IGlzIGdvaW5nIHRv
IHN0YXksIHNvIGNoYW5nZSB0aGUgY2FsbGluZyBjb252ZW50aW9uIGZvcgo+ID4gPiBkcm1fZ2Vt
X29iamVjdF9mdW5jcy5tbWFwIHRvIGluY2x1ZGUgdGhlIGZha2Ugb2Zmc2V0LiAgVXBkYXRlIGFs
bCB1c2Vycwo+ID4gPiBhY2NvcmRpbmdseS4KPiA+ID4gCj4gPiA+IE5vdGUgdGhhdCB0aGlzIHJl
dmVydHMgODNiOGE2ZjI0MmVhICgiZHJtL2dlbTogRml4IG1tYXAgZmFrZSBvZmZzZXQKPiA+ID4g
aGFuZGxpbmcgZm9yIGRybV9nZW1fb2JqZWN0X2Z1bmNzLm1tYXAiKSBhbmQgb24gdG9wIHRoZW4g
YWRkcyB0aGUgZmFrZQo+ID4gPiBvZmZzZXQgdG8gIGRybV9nZW1fcHJpbWVfbW1hcCB0byBtYWtl
IHN1cmUgYWxsIHBhdGhzIGxlYWRpbmcgdG8KPiA+ID4gb2JqLT5mdW5jcy0+bW1hcCBhcmUgY29u
c2lzdGVudC4KPiA+ID4gCj4gPiA+IHYzOiBtb3ZlIGZha2Utb2Zmc2V0IHR3ZWFrIGluIGRybV9n
ZW1fcHJpbWVfbW1hcCgpIHNvIHdlIGhhdmUgdGhpcyBjb2RlCj4gPiA+ICAgICBvbmx5IG9uY2Ug
aW4gdGhlIGZ1bmN0aW9uIChSb2IgSGVycmluZykuCj4gPiAKPiA+IE5vdyB0aGlzIHNlcmllcyBm
YWlscyBpbiBJbnRlbCBDSS4gIENhbid0IHNlZSB3aHkgdGhvdWdoLiAgVGhlCj4gPiBkaWZmZXJl
bmNlIGJldHdlZW4gdjIgYW5kIHYzIGlzIGp1c3QgdGhlIHBsYWNlIHdoZXJlIHZtYS0+dm1fcGdv
ZmYgZ2V0cwo+ID4gdXBkYXRlZCwgYW5kIG5vIGNvZGUgYmV0d2VlbiB0aGUgdjIgYW5kIHYzIGxv
Y2F0aW9uIHRvdWNoZXMgdm1hIC4uLgo+IAo+IExvb2tzIGxpa2UgdW5yZWxhdGVkIGZsdWtlcywg
dGhpcyBoYXBwZW5zIG9jY2FzaW9uYWxseS4gSWYgeW91J3JlIHBhcmFub2lkCj4gaGl0IHRoZSBy
ZXRlc3QgYnV0dG9uIG9uIHBhdGNod29yayB0byBkb3VibGUtY2hlY2suCj4gLURhbmllbAoKR3Vl
c3MgeW91IGtpY2tlZCBDST8gIEp1c3QgZ290IENJIG1haWxzLCBub3cgcmVwb3J0aW5nIHN1Y2Nl
c3MsIHdpdGhvdXQKZG9pbmcgYW55dGhpbmcuICBTbyBJJ2xsIGdvIHB1c2ggdjMgdG8gbWlzYy1u
ZXh0LgoKY2hlZXJzLAogIEdlcmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
