Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 490B5392959
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 10:16:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12F3C6EE39;
	Thu, 27 May 2021 08:16:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa2.bahnhof.se (ste-pvt-msa2.bahnhof.se
 [213.80.101.71])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 689726EE38;
 Thu, 27 May 2021 08:16:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTP id BAB323F720;
 Thu, 27 May 2021 10:16:17 +0200 (CEST)
Authentication-Results: ste-pvt-msa2.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b="hI6pkhzB";
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.001,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Authentication-Results: ste-ftg-msa2.bahnhof.se (amavisd-new);
 dkim=pass (1024-bit key) header.d=shipmail.org
Received: from ste-pvt-msa2.bahnhof.se ([127.0.0.1])
 by localhost (ste-ftg-msa2.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 54M89AOev3mK; Thu, 27 May 2021 10:16:16 +0200 (CEST)
Received: by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id 94DBA3F6D2;
 Thu, 27 May 2021 10:16:16 +0200 (CEST)
Received: from [192.168.0.209] (irdmzpr01-ext.ir.intel.com [192.198.151.36])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 62FEF360128;
 Thu, 27 May 2021 10:16:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1622103375; bh=oFWmAp3WfqpDGfNqpzYYvA4gfdudrFCx6xZ2/zIXrA0=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=hI6pkhzBAtXRPAqUC8aOoLyaf29UoeMHofHsvEvHj+WU+jI+HEQD70gvnl/N17CpX
 2gEZ0fRciW6dg4SUXy31bwPRi8Ja8hy4VJWPKsu2ZwyfhntgMpeYPspcarS+OqKdeu
 LWhLe+kp96PgET9xTbiZUffDuHmIpkF8AH3We2qw=
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
References: <20210526113259.1661914-1-thomas.hellstrom@linux.intel.com>
 <20210526113259.1661914-15-thomas.hellstrom@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <d39070fd-7eb5-7ce4-cd82-6d23f6df392b@shipmail.org>
Date: Thu, 27 May 2021 10:16:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210526113259.1661914-15-thomas.hellstrom@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 14/15] drm/vma: Add a driver_private
 member to vma_node.
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgTWFhcnRlbiwKCk9uIDUvMjYvMjEgMTozMiBQTSwgVGhvbWFzIEhlbGxzdHLDtm0gd3JvdGU6
Cj4gRnJvbTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVs
LmNvbT4KPgo+IFRoaXMgYWxsb3dzIGRyaXZlcnMgdG8gZGlzdGluZ3Vpc2ggYmV0d2VlbiBkaWZm
ZXJlbnQgdHlwZXMgb2Ygdm1hX25vZGUncy4KPiBUaGUgcmVhZG9ubHkgZmxhZyB3YXMgdW51c2Vk
IGFuZCBpcyB0aHVzIHJlbW92ZWQuCj4KPiBTaWduZWQtb2ZmLWJ5OiBNYWFydGVuIExhbmtob3Jz
dCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+IFJldmlld2VkLWJ5OiBUaG9t
YXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+CgpUaGlzIG9u
ZSB3YXMgYWNrZWQgYnkgZGFudmV0IG9uIElSQywgYnV0IGhlIHdhbnRlZCBhIG1vcmUgdmVyYm9z
ZSBjb21taXQgCm1lc3NhZ2Ugc3RhdGluZyB0aGF0IGl0IHdvdWxkIGJlIHRlbXBvcmFyeSB1bnRp
bCBhbGwgbW1hcC1jYXBhYmxlIGdlbSAKb2JqIGJhY2tlbmRzIGNvdWxkIGJlIG1vdmVkIG92ZXIg
dG8gVFRNIGZvciBkaXNjcmV0ZS4KCi9UaG9tYXMKCgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJt
L2RybV9nZW0uYyAgICAgfCA5IC0tLS0tLS0tLQo+ICAgaW5jbHVkZS9kcm0vZHJtX3ZtYV9tYW5h
Z2VyLmggfCAyICstCj4gICAyIGZpbGVzIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxMCBkZWxl
dGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbS5jIGIvZHJp
dmVycy9ncHUvZHJtL2RybV9nZW0uYwo+IGluZGV4IDk5ODk0MjVlOTg3NS4uZTcxMGU3OTA2OWY2
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtLmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vZHJtX2dlbS5jCj4gQEAgLTExNDksMTUgKzExNDksNiBAQCBpbnQgZHJtX2dlbV9t
bWFwKHN0cnVjdCBmaWxlICpmaWxwLCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSkKPiAgIAkJ
cmV0dXJuIC1FQUNDRVM7Cj4gICAJfQo+ICAgCj4gLQlpZiAobm9kZS0+cmVhZG9ubHkpIHsKPiAt
CQlpZiAodm1hLT52bV9mbGFncyAmIFZNX1dSSVRFKSB7Cj4gLQkJCWRybV9nZW1fb2JqZWN0X3B1
dChvYmopOwo+IC0JCQlyZXR1cm4gLUVJTlZBTDsKPiAtCQl9Cj4gLQo+IC0JCXZtYS0+dm1fZmxh
Z3MgJj0gflZNX01BWVdSSVRFOwo+IC0JfQo+IC0KPiAgIAlyZXQgPSBkcm1fZ2VtX21tYXBfb2Jq
KG9iaiwgZHJtX3ZtYV9ub2RlX3NpemUobm9kZSkgPDwgUEFHRV9TSElGVCwKPiAgIAkJCSAgICAg
ICB2bWEpOwo+ICAgCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2RybV92bWFfbWFuYWdlci5o
IGIvaW5jbHVkZS9kcm0vZHJtX3ZtYV9tYW5hZ2VyLmgKPiBpbmRleCA3NmFjNWU5N2E1NTkuLjRm
OGMzNTIwNmY3YyAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL2RybS9kcm1fdm1hX21hbmFnZXIuaAo+
ICsrKyBiL2luY2x1ZGUvZHJtL2RybV92bWFfbWFuYWdlci5oCj4gQEAgLTUzLDcgKzUzLDcgQEAg
c3RydWN0IGRybV92bWFfb2Zmc2V0X25vZGUgewo+ICAgCXJ3bG9ja190IHZtX2xvY2s7Cj4gICAJ
c3RydWN0IGRybV9tbV9ub2RlIHZtX25vZGU7Cj4gICAJc3RydWN0IHJiX3Jvb3Qgdm1fZmlsZXM7
Cj4gLQlib29sIHJlYWRvbmx5OjE7Cj4gKwl2b2lkICpkcml2ZXJfcHJpdmF0ZTsKPiAgIH07Cj4g
ICAKPiAgIHN0cnVjdCBkcm1fdm1hX29mZnNldF9tYW5hZ2VyIHsKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
