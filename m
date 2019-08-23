Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC8869B7A2
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 22:26:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26A586ED31;
	Fri, 23 Aug 2019 20:25:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa41.google.com (mail-vk1-xa41.google.com
 [IPv6:2607:f8b0:4864:20::a41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A80B6ED31
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 20:25:58 +0000 (UTC)
Received: by mail-vk1-xa41.google.com with SMTP id t136so2666551vkt.9
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 13:25:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zhcZyK6UkU2Sv57k0w3N2ERu2fUrPfKit0QPl9y00wE=;
 b=fI+WOkdZrQbcdExdJkxWzaSjmNsmE25mC6UzzwfTxb0G0HUSO97tzkL7yKvI/pIUCz
 auKN6nZzRVQFqBcHz9uC96QZYrRTyKMDl0nwtHp4uq9S6VVghzRJsuMqibGsMNUdju73
 Bk1Z21PHS8u0nhlrKbabGwkYD/jb5sghstbCJGSKtcUGIWg2QFnsSaNGEBwQ9dWGvQq4
 LK6vwPhiWC29rS+53/DF/BKokhlfEEfevReCL7BMkhrEokp2cXUILtJUl+6lT6oUShsg
 IFhOw4cQNI9yNwdfAdQD7dTRMheUjqR+S7Ns0N7tL+11NxjQIuUVApSBSA2k9fqRS07e
 NTog==
X-Gm-Message-State: APjAAAVMrosoRf862Re82vvE9hEkUiURlSCNrqtQU1zMWDLj2PeSRDqV
 ljHD580jW0H18rkszIuNWwUMKzNOrOS2W+qaxio=
X-Google-Smtp-Source: APXvYqzj6wmsJ9t7H2hKsBBbOAjKgPDb1erxkP3R9ZeSf71mMLbAhW3DZJY8ea3fl99Ou7LVBD53WkPPp4MZj2p4x/U=
X-Received: by 2002:a1f:6045:: with SMTP id u66mr3477835vkb.54.1566591957504; 
 Fri, 23 Aug 2019 13:25:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190823181455.31910-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190823181455.31910-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 23 Aug 2019 21:25:31 +0100
Message-ID: <CAM0jSHNxx8HoX9ru42Pib7cno6ENVucNmuLtT75NhjSz-prwhw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=zhcZyK6UkU2Sv57k0w3N2ERu2fUrPfKit0QPl9y00wE=;
 b=H+ZdA6pPnih62Offa3SGahwbwdCBl5Mio+AXAC3Q2mMR69l9KwjV3qvaCErJ4x0Fpr
 srhLCdxgB59IF6RZHHCEP3ok9hoPxVXc0HAaPIQDSZQy/VLMQc6IdaZnsQgpadVdOw7v
 KvXiuaVAliTMMeZuKbVwqlI5OmiWb+2WQFG+V6txjNT6/vhH0RLwp/D9GSKP6Rog/oAX
 uOLU1RxDH+Nu1YpDMDixRqKixvr4AwfivUwrjoiGBwqB+Epnvuz7JDm4QuwsMWcefrlQ
 /ctm2r+zZBHmU3Kk9vYwsvjEZ3oRikK5DPBINKH/gnh5lAA3BzWWft72jPjECdcz2b0d
 eeLQ==
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Keep drm_i915_file_private around
 under RCU
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMyBBdWcgMjAxOSBhdCAxOToxNSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gRW5zdXJlIHRoYXQgdGhlIGRybV9pOTE1X2ZpbGVfcHJp
dmF0ZSBjb250aW51ZXMgdG8gZXhpc3QgYXMgd2UgYXR0ZW1wdAo+IHRvIHJlbW92ZSBhIHJlcXVl
c3QgZnJvbSBpdHMgbGlzdCwgd2hpY2ggbWF5IHJhY2Ugd2l0aCB0aGUgZGVzdHJ1Y3Rpb24KPiBv
ZiB0aGUgZmlsZS4KPgo+IDw2PiBbMzguMzgwNzE0XSBbSUdUXSBnZW1fY3R4X2NyZWF0ZTogc3Rh
cnRpbmcgc3VidGVzdCBiYXNpYy1maWxlcwo+IDwwPiBbNDIuMjAxMzI5XSBCVUc6IHNwaW5sb2Nr
IGJhZCBtYWdpYyBvbiBDUFUjMCwga3dvcmtlci91MTY6MC83Cj4gPDQ+IFs0Mi4yMDEzNTZdIGdl
bmVyYWwgcHJvdGVjdGlvbiBmYXVsdDogMDAwMCBbIzFdIFBSRUVNUFQgU01QIFBUSQo+IDw0PiBb
NDIuMjAxMzcxXSBDUFU6IDAgUElEOiA3IENvbW06IGt3b3JrZXIvdTE2OjAgVGFpbnRlZDogRyAg
ICAgVSAgICAgICAgICAgIDUuMy4wLXJjNS1DSS1QYXRjaHdvcmtfMTQxNjkrICMxCj4gPDQ+IFs0
Mi4yMDEzOTFdIEhhcmR3YXJlIG5hbWU6IERlbGwgSW5jLiAgICAgICAgICAgICAgICAgT3B0aVBs
ZXggNzQ1ICAgICAgICAgICAgICAgICAvMEdXNzI2LCBCSU9TIDIuMy4xICAwNS8yMS8yMDA3Cj4g
PDQ+IFs0Mi4yMDE1OTRdIFdvcmtxdWV1ZTogaTkxNSByZXRpcmVfd29ya19oYW5kbGVyIFtpOTE1
XQo+IDw0PiBbNDIuMjAxNjE0XSBSSVA6IDAwMTA6c3Bpbl9kdW1wKzB4NWEvMHg5MAo+IDw0PiBb
NDIuMjAxNjI1XSBDb2RlOiAwMCA0OCA4ZCA4OCBjMCAwNiAwMCAwMCA0OCBjNyBjNyAwMCA3MSAw
OSA4MiBlOCAzNSBlZiAwMCAwMCA0OCA4NSBkYiA0NCA4YiA0ZCAwOCA0MSBiOCBmZiBmZiBmZiBm
ZiA0OCBjNyBjMSAwYiBjZCAwZiA4MiA3NCAwZSA8NDQ+IDhiIDgzIGUwIDA0IDAwIDAwIDQ4IDhk
IDhiIGMwIDA2IDAwIDAwIDhiIDU1IDA0IDQ4IDg5IGVlIDQ4IGM3Cj4gPDQ+IFs0Mi4yMDE2NjBd
IFJTUDogMDAxODpmZmZmYzkwMDAwMDRiZDgwIEVGTEFHUzogMDAwMTAyMDIKPiA8ND4gWzQyLjIw
MTY3M10gUkFYOiAwMDAwMDAwMDAwMDAwMDMxIFJCWDogNmI2YjZiNmI2YjZiNmI2YiBSQ1g6IGZm
ZmZmZmZmODIwZmNkMGIKPiA8ND4gWzQyLjIwMTY4OF0gUkRYOiAwMDAwMDAwMDAwMDAwMDAwIFJT
STogZmZmZjg4ODAzZGUyNjZmOCBSREk6IDAwMDAwMDAwZmZmZmZmZmYKPiA8ND4gWzQyLjIwMTcw
M10gUkJQOiBmZmZmODg4MDM4MzgxZmY4IFIwODogMDAwMDAwMDBmZmZmZmZmZiBSMDk6IDAwMDAw
MDAwNmI2YjZiNmIKPiA8ND4gWzQyLjIwMTcxOF0gUjEwOiAwMDAwMDAwMDQxY2IwYjg5IFIxMTog
NjQ2MTYyMjA2YjYzNmY2YyBSMTI6IGZmZmY4ODgwMmE2MTg1MDAKPiA8ND4gWzQyLjIwMTczM10g
UjEzOiBmZmZmODg4MDJiMzJjMjg4IFIxNDogZmZmZjg4ODAzODM4MWZmOCBSMTU6IGZmZmY4ODgw
MmIzMmMyNTAKPiA8ND4gWzQyLjIwMTc0OF0gRlM6ICAwMDAwMDAwMDAwMDAwMDAwKDAwMDApIEdT
OmZmZmY4ODgwM2RlMDAwMDAoMDAwMCkga25sR1M6MDAwMDAwMDAwMDAwMDAwMAo+IDw0PiBbNDIu
MjAxNzY1XSBDUzogIDAwMTAgRFM6IDAwMDAgRVM6IDAwMDAgQ1IwOiAwMDAwMDAwMDgwMDUwMDMz
Cj4gPDQ+IFs0Mi4yMDE3NzhdIENSMjogMDAwMDdmMmNlZmM2ZDE4MCBDUjM6IDAwMDAwMDAwMzgx
ZWUwMDAgQ1I0OiAwMDAwMDAwMDAwMDAwNmYwCj4gPDQ+IFs0Mi4yMDE3OTNdIENhbGwgVHJhY2U6
Cj4gPDQ+IFs0Mi4yMDE4MDVdICBkb19yYXdfc3Bpbl9sb2NrKzB4NjYvMHhiMAo+IDw0PiBbNDIu
MjAxODk4XSAgaTkxNV9yZXF1ZXN0X3JldGlyZSsweDU0OC8weDdjMCBbaTkxNV0KPiA8ND4gWzQy
LjIwMTk4OV0gIHJldGlyZV9yZXF1ZXN0cysweDRkLzB4NjAgW2k5MTVdCj4gPDQ+IFs0Mi4yMDIw
NzhdICBpOTE1X3JldGlyZV9yZXF1ZXN0cysweDE0NC8weDJlMCBbaTkxNV0KPiA8ND4gWzQyLjIw
MjE2OV0gIHJldGlyZV93b3JrX2hhbmRsZXIrMHgxMC8weDQwIFtpOTE1XQo+Cj4gUmVjZW50bHks
IGluIGNvbW1pdCA0NGMyMmYzZjFhMGEgKCJkcm0vaTkxNTogU2VyaWFsaXplIGluc2VydGlvbiBp
bnRvIHRoZQo+IGZpbGUtPm1tLnJlcXVlc3RfbGlzdCIpLCB3ZSBmaXhlZCBhIHJhY2Ugb24gaW5z
ZXJ0aW9uLiBOb3csIGl0IGFwcGVhcnMKPiB3ZSBhbHNvIGhhdmUgYSByYWNlIHdpdGggZGVzdHJ1
Y3Rpb24hCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KPiBDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpSZXZp
ZXdlZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
