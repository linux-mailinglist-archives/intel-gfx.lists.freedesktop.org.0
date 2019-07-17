Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 95CC96D60F
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 22:54:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0832E6E467;
	Thu, 18 Jul 2019 20:54:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 331 seconds by postgrey-1.36 at gabe;
 Wed, 17 Jul 2019 19:40:24 UTC
Received: from mail.fgv6.net (mail.fgv6.net [IPv6:2001:41d0:a:c44::4])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1DEE6E29E
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 19:40:24 +0000 (UTC)
Received: from xps16 (ip1f11c9a4.dynamic.kabel-deutschland.de [31.17.201.164])
 (Authenticated sender: francois@guerraz.net)
 by mail.fgv6.net (Postfix) with ESMTPSA id DF40F3C0071
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 19:34:48 +0000 (UTC)
Message-ID: <06de47b1538b29db3f1ffbdd61cf096cb57d9e4d.camel@guerraz.net>
From: =?ISO-8859-1?Q?Fran=E7ois?= Guerraz <francois@guerraz.net>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jul 2019 21:34:48 +0200
In-Reply-To: <20190716220321.32192-1-dhinakaran.pandiyan@intel.com>
References: <20190716220321.32192-1-dhinakaran.pandiyan@intel.com>
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 18 Jul 2019 20:54:18 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=guerraz.net; s=2018; 
 t=1563392089; bh=JwRorH8zmt91com7ZAa54ypgLN4NWK0rZMERVSToMcY=;
 h=Subject:From:To:Date:In-Reply-To:References:From;
 b=h3yASBTaXXiVZBiomepd/hA9CbLeu1AUruEjkXVl+xjMThQDXIU3djCwzhzTELFIg
 wRYe2VVHeXVNdtziSefX9hfOWQPk23/AyaYfkM4Elsrj8gFoMsJJwHGdzmzwLRza0L
 rRqzVSmN8KK9HGsYQYN+2cAVMzz1AZ+XAfhGx+HU=
Subject: Re: [Intel-gfx] drm/i915/vbt: Fix VBT parsing for the PSR section
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

VGVzdGVkLWJ5OiBGcmFuw6dvaXMgR3VlcnJheiA8a3Vicmlja0BmZ3Y2Lm5ldD4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
