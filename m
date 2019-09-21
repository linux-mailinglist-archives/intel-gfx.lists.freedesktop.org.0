Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60AB1BA26E
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Sep 2019 14:07:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5A906E063;
	Sun, 22 Sep 2019 12:05:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1B466E04A
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Sep 2019 12:06:22 +0000 (UTC)
Received: from localhost (unknown [40.117.208.15])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5457F2086A;
 Sat, 21 Sep 2019 12:06:22 +0000 (UTC)
Date: Sat, 21 Sep 2019 12:06:21 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20190920114235.22411-1-maarten.lankhorst@linux.intel.com>
References: <20190920114235.22411-1-maarten.lankhorst@linux.intel.com>
Message-Id: <20190921120622.5457F2086A@mail.kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=default; t=1569067582;
 bh=IWwK7lFAdBfqfGlw7cleZxD8wOkynUWyzQcQovi0x8c=;
 h=Date:From:To:To:To:Cc:Cc:Cc:Subject:In-Reply-To:References:From;
 b=xWmA7ZrJUwuM9qX2s8gQyl+Rso/99UFvKptbcTTSIxp8De9i+mHlF8mApoHKIdb/z
 Y9Nw5FcZvBWtybX9XNyBsUVMkzIS9rVxp0w3kGoCreP0AAd8xxukYTVnOfXCJEuCJW
 y/4iIkD1EBwnF8I1v3Cjh7MvERr9e8dpSdSlVdFo=
Subject: Re: [Intel-gfx] [PATCH 01/23] drm/i915/dp: Fix dsc bpp calculations, v2.
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
Cc: , stable@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpbVGhpcyBpcyBhbiBhdXRvbWF0ZWQgZW1haWxdCgpUaGlzIGNvbW1pdCBoYXMgYmVlbiBw
cm9jZXNzZWQgYmVjYXVzZSBpdCBjb250YWlucyBhICJGaXhlczoiIHRhZywKZml4aW5nIGNvbW1p
dDogZDkyMThjOGY2Y2Y0IGRybS9pOTE1L2RwOiBBZGQgaGVscGVycyBmb3IgQ29tcHJlc3NlZCBC
UFAgYW5kIFNsaWNlIENvdW50IGZvciBEU0MuCgpUaGUgYm90IGhhcyB0ZXN0ZWQgdGhlIGZvbGxv
d2luZyB0cmVlczogdjUuMi4xNi4KCnY1LjIuMTY6IEZhaWxlZCB0byBhcHBseSEgUG9zc2libGUg
ZGVwZW5kZW5jaWVzOgogICAgM2MwNTNhOTZlZjVmICgiZHJtL2k5MTUvZHA6IFByb2dyYW0gVlND
IEhlYWRlciBhbmQgREIgZm9yIFBpeGVsIEVuY29kaW5nL0NvbG9yaW1ldHJ5IEZvcm1hdCIpCiAg
ICA3YWZjN2Y4MTY4NzAgKCJkcm0vaTkxNTogRHJvcCB0aGUgX0lOQ09NUExFVEUgZm9yIGhhc19p
bmZvZnJhbWUiKQogICAgOGU5ZDY0NWM2ODMxICgiZHJtL2k5MTUvZHA6IEFkZCBhIGNvbmZpZyBm
dW5jdGlvbiBmb3IgWUNCQ1I0MjAgb3V0cHV0cyIpCgoKTk9URTogVGhlIHBhdGNoIHdpbGwgbm90
IGJlIHF1ZXVlZCB0byBzdGFibGUgdHJlZXMgdW50aWwgaXQgaXMgdXBzdHJlYW0uCgpIb3cgc2hv
dWxkIHdlIHByb2NlZWQgd2l0aCB0aGlzIHBhdGNoPwoKLS0KVGhhbmtzLApTYXNoYQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
