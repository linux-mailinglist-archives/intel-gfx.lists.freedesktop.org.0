Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E4D432E2
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 08:14:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55F1389132;
	Thu, 13 Jun 2019 06:14:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com
 [IPv6:2607:f8b0:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C4F689132
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 06:14:27 +0000 (UTC)
Received: by mail-pg1-x544.google.com with SMTP id l19so7699599pgh.9
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jun 2019 23:14:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=OVe/GlETub+4dfFgY2Wo+nSHNnQy50AdzwgW/ZgVSw0=;
 b=pObOnHGrm9YjWWpuwbu2Lc4Fegy0RQ3s604bWXuU+7g0F4pGL3L/dQcyYpHekmmcqL
 HHT/bXatz5ycVKyfrGbJjx6R6sWuAKsYYw0V3KJKG5Ii6/reA+ykoZejD2Eh/nvMQSPe
 U6WEU5oZ+WIrekty0Re8cmzNN9IC0WpE/9/tmRiPtSwYSJN8UBzoCX0g8jG27CnYjdh+
 QV8lV02SiPaO5z9nSJ7ODlV6l7VEI0Cu7wQZcU1olev8AXHw69fC3m4SLbhwlXDQOb9Z
 /sNc6Acp+sAxop5UXBFWCSsywEPUICeRZuqpwlAsz4zNs2s5a1KCuGeACQaIbf49kear
 2xiA==
X-Gm-Message-State: APjAAAURBiVy/d3vfBzaJLYjmlEpZH5vWIFY05tTlZ+/B7W1EyEh20I5
 MSY9c4PAglNLhLzQdywuKUg=
X-Google-Smtp-Source: APXvYqzCwKxy/20tNOFY19LHziEG96fQgPGOfgtiAgFijmR9hJwJnDPpqJjJqwD0BnubfFHWRzuErw==
X-Received: by 2002:a17:90a:9a83:: with SMTP id
 e3mr3359762pjp.105.1560406466480; 
 Wed, 12 Jun 2019 23:14:26 -0700 (PDT)
Received: from ldmartin-desk.amr.corp.intel.com ([192.55.54.44])
 by smtp.gmail.com with ESMTPSA id k184sm1271090pgk.7.2019.06.12.23.14.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 23:14:24 -0700 (PDT)
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
X-Google-Original-From: Lucas De Marchi <lucas.demarchi@gmail.com>
Date: Wed, 12 Jun 2019 23:14:14 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190613061414.GA1967@ldmartin-desk.amr.corp.intel.com>
References: <20190612162900.13777-1-lucas.demarchi@intel.com>
 <156040604804.27443.9644179905271704766@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156040604804.27443.9644179905271704766@skylake-alporthouse-com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=OVe/GlETub+4dfFgY2Wo+nSHNnQy50AdzwgW/ZgVSw0=;
 b=HbikHsb5iV9Ok0kv9DlZn2YaFGUSr96p4wLD2xtS05/IohlIzXnZnvBPa5Y+TYl/lh
 9i2rBrtvKOxYnNwdUN+gDq2heUX5f4+8u9ilDXY5PvNAYzxN7bM1BrnYDt+hQQhdS0JT
 qYfMbgVwwmJwXfUR2JKFAJeer8tNf+N/n/iymJcI7I9My5foKv9c9WgWW9DyiB4QYUlO
 D8L6gBn2evegPQlhKy8dBR0ALK65UAYSI5hdo/fIHOxJqz+obX04UStXRMpQmy0RVb/S
 /vdjxtYATLHDRrNHtye3Li7DT32fD4mXrhKVJ/PwXquvPJEyub9sKbOr/HUXInlYYJa0
 eDDw==
Subject: Re: [Intel-gfx] [PATCH] gpu/drm/i915: globally replace dev_priv
 with i915
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdW4gMTMsIDIwMTkgYXQgMDc6MDc6MjhBTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+UXVvdGluZyBMdWNhcyBEZSBNYXJjaGkgKDIwMTktMDYtMTIgMTc6Mjk6MDApCj4+IFdl
IGFyZSBzbG93bHkgY29udmVydGluZyBkZXZfcHJpdiB0byBpOTE1IGV2ZXJ5d2hlcmUsIHNwcmVh
ZCBpbnRvCj4+IHNtYWxsZXIgc2VyaWVzLiBXaGlsZSB0aGlzIGlzIGdvb2QgdG8gYXZvaWQgdW5y
ZWxhdGVkIGJyZWFrYWdlcyB0byBvdGhlcgo+PiBpbmZsaWdodCBwYXRjaGVzLCBpdCdzIGJhZCBi
ZWNhdXNlIGluZmxpZ2h0IHBhdGNoZXMgb24gbmVhcmJ5IHBhdGhzIGtlZXAKPj4gYnJlYWtpbmcu
IFBhaXJlZCB3aXRoIG90aGVyIGNvZGUgbW92ZXMgYW5kIHJlZmFjdG9yZXMgdGhpcyBpcyBiZWNv
bWluZyBhCj4+IG5pZ2h0bWFyZS4KPj4KPj4gTm93IHRoYXQgSTkxNV97UkVBRCxXUklURX0gYXJl
IGdvbmUgYW5kIGltcGxpY2l0IGFjY2VzcyB0byBkZXZfcHJpdiBubwo+PiBsb25nZXIgZXhpc3Rz
IHdlIGNhbiBzaW1wbHkgc2VkIGFsbCBmaWxlcyBhbmQgYmUgZG9uZSB3aXRoIHRoZQo+PiBjb252
ZXJzaW9uLiBUaGlzIHdhcyBnZW5lcmF0ZWQgd2l0aCB0aGUgZm9sbG93aW5nIGNvbW1hbmRzIHdp
dGggbm8KPj4gYWRkaXRpb25hbCBmaXh1cHM6Cj4+Cj4+ICAgICAgICAgZ2l0IGxzLWZpbGVzIC0t
ZnVsbC1uYW1lIC16IC0tIGRyaXZlcnMvZ3B1L2RybS9pOTE1LyB8IFwKPj4gICAgICAgICAgICAg
ICAgIHhhcmdzIC0wIHNlZCAtaSAncy9cYmRldl9wcml2XGIvaTkxNS9nJwo+Pgo+PiBBbnkgcGVu
ZGluZyBzZXJpZXMgY2FuIGFwcGx5IHRoZSBzYW1lIHNlYXJjaCBhbmQgcmVwbGFjZSB3aGVuIHJl
YmFzaW5nLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFy
Y2hpQGludGVsLmNvbT4KPj4gLS0tCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kdm9fY2g3MDE3
LmMgICAgICAgICAgICAgfCAgICA2ICstCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kdm9fY2g3
eHh4LmMgICAgICAgICAgICAgfCAgIDEwICstCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kdm9f
aXZjaC5jICAgICAgICAgICAgICAgfCAgIDE0ICstCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
dm9fbnMyNTAxLmMgICAgICAgICAgICAgfCAgIDE0ICstCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kdm9fc2lsMTY0LmMgICAgICAgICAgICAgfCAgIDEwICstCj4+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kdm9fdGZwNDEwLmMgICAgICAgICAgICAgfCAgIDEwICstCj4KPk5vdGljZSB0aGF0IHRo
ZSB2ZXJ5IHN0YXJ0IG9mIHRoaXMsIHRoZSBkZXZfcHJpdiBiYWNrcG9pbnRlcnMgYXJlCj5ub3Qg
aTkxNS4KCnRydWUuIEFGQUlDUyBpdCdzIGluIGFsbCB0aGUgZHZvXyouYyAtIEkgd2lsbCBmaXgg
aXQgZm9yIG5leHQgdGltZS4KCnRoYW5rcwpMdWNhcyBEZSBNYXJjaGkKCj4tQ2hyaXMKPl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj5JbnRlbC1nZnggbWFp
bGluZyBsaXN0Cj5JbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj5odHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
