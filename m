Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F24286C1B4
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 21:49:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FBDE6E29E;
	Wed, 17 Jul 2019 19:49:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 761 seconds by postgrey-1.36 at gabe;
 Wed, 17 Jul 2019 19:49:17 UTC
Received: from mail.fgv6.net (greebo.fgv6.net [151.80.214.200])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E40D6E29E
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 19:49:16 +0000 (UTC)
Received: from xps16 (ip1f11c9a4.dynamic.kabel-deutschland.de [31.17.201.164])
 (Authenticated sender: kubrick@fgv6.net)
 by mail.fgv6.net (Postfix) with ESMTPSA id 4237D3C0071;
 Wed, 17 Jul 2019 19:49:15 +0000 (UTC)
Message-ID: <f90b1425b74668e8cd80df1dc6d0c99badd7da35.camel@fgv6.net>
From: =?ISO-8859-1?Q?Fran=E7ois?= Guerraz <kubrick@fgv6.net>
To: "Pandiyan, Dhinakaran" <dhinakaran.pandiyan@intel.com>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Date: Wed, 17 Jul 2019 21:49:14 +0200
In-Reply-To: <df5f95a4c2a7e7bf9fd076f43e4e65bfb10375d1.camel@intel.com>
References: <df5f95a4c2a7e7bf9fd076f43e4e65bfb10375d1.camel@intel.com>
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=fgv6.net; s=2018; 
 t=1563392955; bh=6XkglcJJXRYg9f8J2muYfjeaqePFyN4aYi1LfI0s+zI=;
 h=Subject:From:To:Date:In-Reply-To:References:From;
 b=Ug5zVKVtnrO437J8GatlJk1aWRp7UrvttBDTLdBAbnzEeqD0ZKn2w2skaZE1U5y8s
 J2vTpOfbRTKs9onlqBkOXm4guOClmp3jlU6rYt+BHVa+OKsw4wYuTwwk/gFbZnP0+h
 TWFp5UfG8ipZN9BZ9sZ1569aDhv86pPbUw7hIjpg=
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
