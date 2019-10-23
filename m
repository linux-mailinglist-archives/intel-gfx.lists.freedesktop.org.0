Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC841E272C
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 01:52:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EE1C6E048;
	Wed, 23 Oct 2019 23:52:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 352 seconds by postgrey-1.36 at gabe;
 Wed, 23 Oct 2019 23:52:41 UTC
Received: from smtprelay.hostedemail.com (smtprelay0131.hostedemail.com
 [216.40.44.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BF596E039
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2019 23:52:41 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave05.hostedemail.com (Postfix) with ESMTP id 0B85E18062B60
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2019 23:46:50 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay07.hostedemail.com (Postfix) with ESMTP id 8C573181D3417;
 Wed, 23 Oct 2019 23:46:48 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com,
 :::::::::::::::::::::::,
 RULES_HIT:41:355:379:599:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1537:1566:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2693:2828:3138:3139:3140:3141:3142:3622:3866:3868:3870:4321:5007:6119:8603:10004:10400:11026:11232:11473:11658:11914:12297:12740:12760:12895:13069:13255:13311:13357:13439:14659:14721:21080:21433:21451:21627:30054:30070:30091,
 0,
 RBL:47.151.135.224:@perches.com:.lbl8.mailshell.net-62.8.0.100 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:24,
 LUA_SUMMARY:none
X-HE-Tag: plot32_3b2e9464b9b05
X-Filterd-Recvd-Size: 1614
Received: from XPS-9350.home (unknown [47.151.135.224])
 (Authenticated sender: joe@perches.com)
 by omf20.hostedemail.com (Postfix) with ESMTPA;
 Wed, 23 Oct 2019 23:46:46 +0000 (UTC)
Message-ID: <dbecfcf9ed62c481bb040c619af3b1ee5a7de848.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Andrew Morton <akpm@linux-foundation.org>, Jani Nikula
 <jani.nikula@intel.com>
Date: Wed, 23 Oct 2019 16:46:45 -0700
In-Reply-To: <20191023155619.43e0013f0c8c673a5c508c1e@linux-foundation.org>
References: <20191023131308.9420-1-jani.nikula@intel.com>
 <20191023155619.43e0013f0c8c673a5c508c1e@linux-foundation.org>
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v4] string-choice: add yesno(), onoff(),
 enableddisabled(), plural() helpers
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
Cc: linux-usb@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 netdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 Julia Lawall <julia.lawall@lip6.fr>, Vishal Kulkarni <vishal@chelsio.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDE5LTEwLTIzIGF0IDE1OjU2IC0wNzAwLCBBbmRyZXcgTW9ydG9uIHdyb3RlOgo+
IEFuZCBkb2luZyB0aGlzIHdpbGwgY2F1c2UgYWRkaXRpb25hbCBzYXZpbmdzOiBjYWxsaW5nIGEg
c2luZ2xlLWFyZwo+IG91dC1vZi1saW5lIGZ1bmN0aW9uIGdlbmVyYXRlcyBsZXNzIC50ZXh0IHRo
YW4gY2FsbGluZyB5ZXNubygpLgoKSSBnZXQgbm8gY2hhbmdlIGluIHNpemUgYXQgYWxsIHdpdGgg
YW55IG9mCglleHRlcm4KCXN0YXRpYyBfX2Fsd2F5c19pbmxpbmUKd2l0aCBlaXRoZXIgb2YgYm9v
bCBvciBpbnQgYXJndW1lbnQuCgpnY2MgOC4zLCBkZWZjb25maWcgd2l0aCBDT05GSUdfQ0hFTFNJ
T19UNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
