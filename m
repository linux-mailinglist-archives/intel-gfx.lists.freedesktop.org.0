Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE6A8DB9C3
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2019 00:33:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC5C76E0D0;
	Thu, 17 Oct 2019 22:33:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78DFE6E0D0
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Oct 2019 22:33:04 +0000 (UTC)
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-253-HBH-Hr6YN2m9N3BUoIfHAg-1; Thu, 17 Oct 2019 18:33:00 -0400
Received: by mail-qk1-f198.google.com with SMTP id s28so3719243qkm.5
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Oct 2019 15:33:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=Ll10P5ViglyMi6nHQJE/PL9uu4mBGhDZZOWwZr93EMg=;
 b=WEE3QtBz8fYWftpDPEi76gqZLPGMhlAT4Ds2RP34uL3Wm0f6fx44tBQjmEeS7wDLR5
 U30ccdv9+G1lMQDGNq55O++YGn9NCp9RRSjtUHXPVlzZiwtVSc71/GVGIVAm40TtZVEZ
 MSWlaFKqputCMHhAjsDijnZX0oWbSjyLrqNEW1bzSm3ucjj4juztQT9K7pn5ZxD8BI/k
 kiXDcTKhi31GjDejt+QfJ56QTTU2UTXB763+ivcexuJ2BzFyBCJt8FfuFvUm0PYLj4+0
 PHNm9ir7V9MFJO2aQNtp4lfAsW8YRESZmGKtvAJRQMdrX+P/7WI4wbflaTZ92AdhjNfv
 3zow==
X-Gm-Message-State: APjAAAWKOYpOuiVLfBiNMPJ7BT/BrfcCyGM6sj7PI6/6drVS8DjE/AKs
 DX2PYljI+v+UFPEkzPIXMQ+AmUa59W+FwO7xMGFpyVblMQdUpd/OXcvdZJGqDP5w0rNX5AWNf8M
 qaoX1wQ+8FwbSqfOCe0um5epdPZ/v
X-Received: by 2002:ac8:4655:: with SMTP id f21mr6644054qto.43.1571351579732; 
 Thu, 17 Oct 2019 15:32:59 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwjXNkzzOK5Y2jVMyZlvh1MvaRKGQSUdjVUtNXByoSNX+cC1TC+nxoASMyI7cbV2IaDipZ7ww==
X-Received: by 2002:ac8:4655:: with SMTP id f21mr6644029qto.43.1571351579451; 
 Thu, 17 Oct 2019 15:32:59 -0700 (PDT)
Received: from dhcp-10-20-1-34.bss.redhat.com ([144.121.20.162])
 by smtp.gmail.com with ESMTPSA id z8sm1767236qkf.37.2019.10.17.15.32.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 15:32:58 -0700 (PDT)
Message-ID: <7a216cedcf9b65759370ba6f390f413254fe3475.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: James Ausmus <james.ausmus@intel.com>, intel-gfx@lists.freedesktop.org
Date: Thu, 17 Oct 2019 18:32:57 -0400
In-Reply-To: <20191017194203.9645-1-james.ausmus@intel.com>
References: <20191017194203.9645-1-james.ausmus@intel.com>
Organization: Red Hat
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30)
MIME-Version: 1.0
X-MC-Unique: HBH-Hr6YN2m9N3BUoIfHAg-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1571351583;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Kb9vZjSHzSewI6guoA5fOgKpQmPu+Ak8Krs9Neb3/kw=;
 b=gjhYFhFabKmawF8mh22MxyPh7LXU8E6jKqA7K77QQXPcEL9JYIWVLf4/nJ7M0lfUnmmZ8T
 ek87HdUFQjlkNWlt0Vvu5Od87AmQvbSzRlkQnRfz0qKFpVpXwGyHk15xVfybLIk8NbnzEn
 vwpS7ZAHkZN3l6xsrxvNjz2ulPCEp+k=
Subject: Re: [Intel-gfx] [PATCH] drm/i915/aml: Allow SPT PCH for all AML
 devices
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

SGV5ISB3b3JrIGJyb3VnaHQgdGhpcyBpc3N1ZSB0byBteSBhdHRlbnRpb24sIHNvIEkgZmlndXJl
ZCBJJ2QgaGVscCBzcGVlZAp0aGluZ3MgdXAgYW5kIHJldmlldyB0aGlzIDopCgpBbnl3YXktbG9v
a3MgZmluZSB0byBtZQpSZXZpZXdlZC1ieTogTHl1ZGUgUGF1bCA8bHl1ZGVAcmVkaGF0LmNvbT4K
Ck9uIFRodSwgMjAxOS0xMC0xNyBhdCAxMjo0MiAtMDcwMCwgSmFtZXMgQXVzbXVzIHdyb3RlOgo+
IEV2ZW4gdGhlIEFNTCBkZXZpY2VzIHRoYXQgYmVoYXZlIGxpa2UgQ0ZMcyBjYW4gYmUgcGFpcmVk
IHdpdGggYW4gU1BUCj4gUENILiBBbGxvdyB0aGlzIHRvIGhhcHBlbiB3aXRob3V0IGJsb3dpbmcg
dXAgZG1lc2cuCj4gCj4gQlNwZWM6IDMzNjY1Cj4gCj4gQnVnemlsbGE6IGh0dHBzOi8vYnVncy5m
cmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMjAxMwo+IENjOiBRdWFueGlhbiBXYW5n
IDxxdWFueGlhbi53YW5nQGludGVsLmNvbT4KPiBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZp
dmlAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEphbWVzIEF1c211cyA8amFtZXMuYXVzbXVz
QGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNoLmMgfCAz
ICsrLQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4g
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5jCj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guYwo+IGluZGV4IDEwMzVkM2Q0NmZkOC4uYmIxY2I2
ZjEyYTUwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5jCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNoLmMKPiBAQCAtNTIsNyArNTIsOCBA
QCBpbnRlbF9wY2hfdHlwZShjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
Cj4gdW5zaWduZWQgc2hvcnQgaWQpCj4gIAkJcmV0dXJuIFBDSF9TUFQ7Cj4gIAljYXNlIElOVEVM
X1BDSF9TUFRfTFBfREVWSUNFX0lEX1RZUEU6Cj4gIAkJRFJNX0RFQlVHX0tNUygiRm91bmQgU3Vu
cmlzZVBvaW50IExQIFBDSFxuIik7Cj4gLQkJV0FSTl9PTighSVNfU0tZTEFLRShkZXZfcHJpdikg
JiYgIUlTX0tBQllMQUtFKGRldl9wcml2KSk7Cj4gKwkJV0FSTl9PTighSVNfU0tZTEFLRShkZXZf
cHJpdikgJiYgIUlTX0tBQllMQUtFKGRldl9wcml2KSAmJgo+ICsJCQkhSVNfQ09GRkVFTEFLRShk
ZXZfcHJpdikpOwo+ICAJCXJldHVybiBQQ0hfU1BUOwo+ICAJY2FzZSBJTlRFTF9QQ0hfS0JQX0RF
VklDRV9JRF9UWVBFOgo+ICAJCURSTV9ERUJVR19LTVMoIkZvdW5kIEthYnkgTGFrZSBQQ0ggKEtC
UClcbiIpOwotLSAKQ2hlZXJzLAoJTHl1ZGUgUGF1bAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
