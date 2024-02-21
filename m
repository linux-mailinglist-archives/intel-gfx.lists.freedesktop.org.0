Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F5F85FA9C
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 15:01:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF16010E943;
	Thu, 22 Feb 2024 14:01:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=metux.net header.i=info@metux.net header.b="Q9aXGuOg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 302 seconds by postgrey-1.36 at gabe;
 Wed, 21 Feb 2024 15:12:08 UTC
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0443510E775
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb 2024 15:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=metux.net;
 s=s1-ionos; t=1708528327; x=1709133127; i=info@metux.net;
 bh=/TOwv8YdQhpQSxTULnAua+dQ+LPjxXSURSVa0P0Kdx8=;
 h=X-UI-Sender-Class:From:To:Subject:Date;
 b=Q9aXGuOgVr0uiibNLREIgkWm9BNaEjKnLsI+ngnM1+z/0DkNlPye6s4Rfjsnb4Bd
 PsHYe8VPvl9ourO1SMUVkndrAqJNGgGtgSikU/zINHTAVsi0NaHmiGYUnDQQm6lJQ
 zz4rcnFXD+awBG1+aK72JhtfgnjiA9CZvTDkbWh6cEqOi83pdEtnlE6VTr2pfnyOT
 Zw45KTD3GUYtJrQ5z51l4VrvZtutUkkyvYuERVWzgOdXchw2TlHslbP8GoF8iv4oE
 dV4q7gs2fgq4QYavnr3+x78z27vV2//2bvVWtVnFBgRQU9BIby93WsxDd8FO1SNB9
 hQS/aerAFW0a5U9oBQ==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from orion.localdomain ([77.4.30.125]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MRTEr-1rG2XN1Nvp-00NTUa for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb
 2024 16:07:04 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: intel-gfx@lists.freedesktop.org
Subject: misc fixes for xf86-video-drive
Date: Wed, 21 Feb 2024 16:06:53 +0100
Message-Id: <20240221150656.30539-1-info@metux.net>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Provags-ID: V03:K1:kyEcYDffP9DHH1QVqTUU5G9bUfNz/TnS5UkM0DS3oaNZsJXm1Lr
 hY4eGBpabDy4IiWWtFqE/Ca13Ci5bM6qlFIE0jvBug02lz0VhR2F2M1PFcrRZtzOJquAGKo
 sty7dp5IRf8F94nnjqGp+zQ3cUpDXBlilRdtwNVPvOUriScVJ2M/FxrACvLMhyFOi+BnhtP
 umJrcIaqxOL4kwHGgN76g==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:k29NAB+tO0w=;E10yoKJGkyFRgOEt+IBxcLlvOK+
 s85c/0oPb76EliBvNNbDA9/1MKXMXl6ofR8qzKMNiITtd0lFy/xDOdnmai1qFrTbD6bYFp8L3
 0TW4753w1ytFaaOmZvIbZTN8YyVLF0LqionFeOTm1Dy+8/ZaX9QOLrSwn1ThBYI9Kfl7UDjeW
 uCidn5eIHs4MPercXQHWL9Cv31N70oSCnBl/pHi3+VxHsm9Tlxcdgpdg6ph7FzWCT8xWwMyM+
 lyGrxGKsaUgDCs8zwpdv39AK0l4kDqLvrzYMdzj8kYGdsqebD5Dyi0e/GDZhS36BXe8XMuhnv
 i2t0+1GG+2RRSHUUt200XfRVJ5QqZTEDmdQXB7bgGNrh4aVnEpeeYOVMUeeAU/Bg0/jaqb/n2
 C9P4UpawrCjNJegW0WXKOgTd0Na3AfDPDkBoO8BLE1/hq87RN0FJsUNllaFvaYdgnwUSvOyfO
 tAcME2UI27DLuyJb1yAOVoi4wnp0IxoXoB5O2U0K9uTxd2sa7p/PqZIf0YTTboHgLjxMTT+dJ
 SkZlKeVAOvikGu+pmsdXtFlwMD5AEO+06cMuHnDDEsRYwYvws2XV1c1yl/AWARggeh1/UKEvw
 vYDqcsF6wgi+lZwUXYpeVZBSi7eROdzwfDfrk/UBY0WqvkxQW7l2JshZUauGT18UDITKXpPA+
 o/zZDPuNOIF50/2C1i+gQWMP/73/7QOSbhuFdYJhBRLRfxz+FQOFkzLsL2WA+Zq/UvlKqgAkL
 REozQ6OrqMJcZIDRlb/qL8g1cOq15+IbxboHc8BbM9OpId+EpZ/mPc=
X-Mailman-Approved-At: Thu, 22 Feb 2024 14:01:06 +0000
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello folks,


here's a small queue of pretty trivial fixes / cleanups.

* sna: stop using obsolete type aliases
* sna: use GCPtr instead of GC *
* backlight: use system() instead of System()


have fun,

--mtx

