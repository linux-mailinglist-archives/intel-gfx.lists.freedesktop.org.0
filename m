Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 083956D60D
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 22:54:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B4846E466;
	Thu, 18 Jul 2019 20:54:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 455 seconds by postgrey-1.36 at gabe;
 Wed, 17 Jul 2019 19:44:09 UTC
Received: from mail.fgv6.net (mail.fgv6.net [IPv6:2001:41d0:a:c44::4])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C24F06E29E
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 19:44:09 +0000 (UTC)
Received: from xps16 (ip1f11c9a4.dynamic.kabel-deutschland.de [31.17.201.164])
 (Authenticated sender: kubrick@fgv6.net)
 by mail.fgv6.net (Postfix) with ESMTPSA id F3A203C0073
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 19:36:32 +0000 (UTC)
Message-ID: <71957464c894b821adba939201e392ed366a5d91.camel@fgv6.net>
From: =?ISO-8859-1?Q?Fran=E7ois?= Guerraz <kubrick@fgv6.net>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jul 2019 21:36:32 +0200
In-Reply-To: <20190716220321.32192-1-dhinakaran.pandiyan@intel.com>
References: <20190716220321.32192-1-dhinakaran.pandiyan@intel.com>
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 18 Jul 2019 20:54:18 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=fgv6.net; s=2018; 
 t=1563392193; bh=6XkglcJJXRYg9f8J2muYfjeaqePFyN4aYi1LfI0s+zI=;
 h=Subject:From:To:Date:In-Reply-To:References:From;
 b=l6Exw5CxufaB4lLrl96tMpGKzHU9TbmzMziMGsdxtg0dd1MHOZtDfT7wj6Gxt4EHe
 gd7oD5gwveYNRoZpPj1AQQXzxTeptLjFKXh+dol2qnT17wn9b6M6eN2y14nm8WFhXf
 PdHLxOXwb36hBjcC3Oe/OgIYpiF80SfzdUvHzz7o=
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

VGVzdGVkLWJ5OiBGcmFuw6dvaXMgR3VlcnJheiA8a3Vicmlja0BmZ3Y2Lm5ldD4KCk9uIERlbGwg
WFBTIDkzNTAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
