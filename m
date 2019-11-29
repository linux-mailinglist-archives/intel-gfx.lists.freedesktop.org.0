Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9586C10D9A8
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 19:35:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A13056E961;
	Fri, 29 Nov 2019 18:34:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE5736E961
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2019 18:34:58 +0000 (UTC)
Received: from localhost (unknown [40.117.208.15])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 128AD2176D;
 Fri, 29 Nov 2019 18:34:58 +0000 (UTC)
Date: Fri, 29 Nov 2019 18:34:57 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
To: Ville Syrjälä <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20191127201222.16669-2-ville.syrjala@linux.intel.com>
References: <20191127201222.16669-2-ville.syrjala@linux.intel.com>
Message-Id: <20191129183458.128AD2176D@mail.kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=default; t=1575052498;
 bh=05C5mn/xID7diW61oCxEImQwGddymVlDoJvI2nPz5Cs=;
 h=Date:From:To:To:To:To:Cc:Cc:Cc:Cc:Cc:Cc:Cc:Subject:In-Reply-To:
 References:From;
 b=ibR6vVok1Xtd4x8BdaGWbcNKbqzNOqV5PpMrUSG1IhXxJHf3OeVkedTh04Dsz3Iv5
 TkGsV7Q//CY6hmXXccqNhnyJkpdByZDBPTUVrSxy3xDPZAhUjrhT23b90pPpzasNIL
 E9Ccikd8ayeqGSb7zMlWedAw/5LJCCQNWcYmqlhQ=
Subject: Re: [Intel-gfx] [PATCH v2 01/14] drm/i915/fbc: Disable fbc by
 default on all glk+
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
Cc: , Paulo Zanoni <paulo.r.zanoni@intel.com>, stable@vger.kernel.org,
 Daniel Drake <drake@endlessm.com>, Jian-Hong Pan <jian-hong@endlessm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpbVGhpcyBpcyBhbiBhdXRvbWF0ZWQgZW1haWxdCgpUaGlzIGNvbW1pdCBoYXMgYmVlbiBw
cm9jZXNzZWQgYmVjYXVzZSBpdCBjb250YWlucyBhIC1zdGFibGUgdGFnLgpUaGUgc3RhYmxlIHRh
ZyBpbmRpY2F0ZXMgdGhhdCBpdCdzIHJlbGV2YW50IGZvciB0aGUgZm9sbG93aW5nIHRyZWVzOiBh
bGwKClRoZSBib3QgaGFzIHRlc3RlZCB0aGUgZm9sbG93aW5nIHRyZWVzOiB2NS4zLjEzLCB2NC4x
OS44NiwgdjQuMTQuMTU2LCB2NC45LjIwMywgdjQuNC4yMDMuCgp2NS4zLjEzOiBCdWlsZCBPSyEK
djQuMTkuODY6IEZhaWxlZCB0byBhcHBseSEgUG9zc2libGUgZGVwZW5kZW5jaWVzOgogICAgVW5h
YmxlIHRvIGNhbGN1bGF0ZQoKdjQuMTQuMTU2OiBGYWlsZWQgdG8gYXBwbHkhIFBvc3NpYmxlIGRl
cGVuZGVuY2llczoKICAgIFVuYWJsZSB0byBjYWxjdWxhdGUKCnY0LjkuMjAzOiBGYWlsZWQgdG8g
YXBwbHkhIFBvc3NpYmxlIGRlcGVuZGVuY2llczoKICAgIDFkMjU3MjRiNDFmYSAoImRybS9pOTE1
L2ZiYzogZGlzYWJsZSBmcmFtZWJ1ZmZlciBjb21wcmVzc2lvbiBvbiBHZW1pbmlMYWtlIikKICAg
IGZkN2Q2YzVjOGYzZSAoImRybS9pOTE1OiBlbmFibGUgRkJDIG9uIGdlbjkrIHRvbyIpCgp2NC40
LjIwMzogRmFpbGVkIHRvIGFwcGx5ISBQb3NzaWJsZSBkZXBlbmRlbmNpZXM6CiAgICAwZTYzMWFk
YzFhZWYgKCJkcm0vaTkxNTogaW50cm9kdWNlIGlzX2FjdGl2ZS9hY3RpdmF0ZS9kZWFjdGl2YXRl
IHRvIHRoZSBGQkMgdGVybWlub2xvZ3kiKQogICAgMTI4ZDczNTYwNmQ0ICgiZHJtL2k5MTU6IHVz
ZSBhIHNpbmdsZSBpbnRlbF9mYmNfd29yayBzdHJ1Y3QiKQogICAgMWQyNTcyNGI0MWZhICgiZHJt
L2k5MTUvZmJjOiBkaXNhYmxlIGZyYW1lYnVmZmVyIGNvbXByZXNzaW9uIG9uIEdlbWluaUxha2Ui
KQogICAgMzBjNThkNTg5NmU1ICgiZHJtL2k5MTU6IGV4dHJhY3QgY3J0Y19pc192YWxpZCgpIG9u
IHRoZSBGQkMgY29kZSIpCiAgICAzNmRiYzRkNzY5MTggKCJkcm0vaTkxNS9mYmM6IEZCQyBjYXVz
ZXMgZGlzcGxheSBmbGlja2VyIHdoZW4gVlQtZCBpcyBlbmFibGVkIG9uIFNreWxha2UiKQogICAg
NDViMzJhMjkxOTc4ICgiZHJtL2k5MTU6IHVzZSBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyBhdCBf
X2ludGVsX2ZiY191cGRhdGUoKSIpCiAgICA1NzEwNTAyMjZjNWQgKCJkcm0vaTkxNTogZXh0cmFj
dCBmYmNfb25fcGlwZV9hX29ubHkoKSIpCiAgICA3NTRkMTEzMzA0YWEgKCJkcm0vaTkxNTogcGFz
cyB0aGUgY3J0YyBhcyBhbiBhcmd1bWVudCB0byBpbnRlbF9mYmNfdXBkYXRlKCkiKQogICAgNzkz
YWYwNzBhNzE2ICgiZHJtL2k5MTU6IHJlbW92ZSBuZXdsaW5lIGZyb20gYSBub19mYmNfcmVhc29u
IG1lc3NhZ2UiKQogICAgODA3ODhhMGZiYmRmICgiZHJtL2k5MTUvZmJjOiBzYW5pdGl6ZSBpOTE1
LmVuYWJsZV9mYmMgZHVyaW5nIEZCQyBpbml0IikKICAgIDkxM2EzYTZhY2FlMyAoImRybS9pOTE1
L2ZiYzogZG9uJ3QgcHJpbnQgbm9fZmJjX3JlYXNvbiB0byBkbWVzZyIpCiAgICBhNGRlZGQ1YTE0
YTggKCJkcm0vaTkxNTogcmVtb3ZlIHVubmVjZXNzYXJ5IGNoZWNrIGZvciBjcnRjLT5wcmltYXJ5
LT5mYiIpCiAgICBhYjM0YTdlOGI1NWEgKCJkcm0vaTkxNS9mYmM6IHJlcGxhY2UgZnJlcXVlbnQg
ZGV2X3ByaXYtPmZiYy54IHdpdGggZmJjLT54IikKICAgIGJmNjE4OWM2ZjA2MiAoImRybS9pOTE1
OiBjaGFuZ2Ugbm9fZmJjX3JlYXNvbiBmcm9tIGVudW0gdG8gc3RyaW5nIikKICAgIGM2OGFlMzM5
ZTcxMCAoImRybS9pOTE1OiBkb24ndCBkaXNhYmxlX2ZiYygpIGlmIEZCQyBpcyBhbHJlYWR5IGRp
c2FibGVkIikKICAgIGU5YzVmZDI2YWMzOCAoImRybS9pOTE1OiBzZXQgZGV2X3ByaXYtPmZiYy5j
cnRjIGJlZm9yZSBzY2hlZHVsaW5nIHRoZSBlbmFibGUgd29yayIpCgoKTk9URTogVGhlIHBhdGNo
IHdpbGwgbm90IGJlIHF1ZXVlZCB0byBzdGFibGUgdHJlZXMgdW50aWwgaXQgaXMgdXBzdHJlYW0u
CgpIb3cgc2hvdWxkIHdlIHByb2NlZWQgd2l0aCB0aGlzIHBhdGNoPwoKLS0gClRoYW5rcywKU2Fz
aGEKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
