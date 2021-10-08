Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 182D5427327
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Oct 2021 23:42:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDFAD6E869;
	Fri,  8 Oct 2021 21:42:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
 [66.111.4.26])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A2786E869
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Oct 2021 21:42:38 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id A698A5C00DF
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Oct 2021 17:42:37 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Fri, 08 Oct 2021 17:42:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=u92.eu; h=date
 :from:to:subject:message-id:references:mime-version:content-type
 :in-reply-to; s=fm3; bh=erQRNgi/q14hEmzZpagvRR6qVmotdcEpQCKmAnAY
 aek=; b=Cfy2DJJAgh2kypFFhrlMICdfV5ERu835Jrm98wS+7bVl2iPxM8/VIkhU
 1J6VmzMVwIcU5y6eGuGdgdqW09QfnFFPU56oQzaq7Q7gatuEhogcUB1wuixBQmIw
 cT6CQG50aiPKjqVtyp0DERduyf35uwkpW1L7xtVs0CdBowvXUuSOKmJRRgPgaYaI
 M6Ln5c4egAKFBx562GUwRg4eN57kskLsWmU9RRHIBjtMNC/jg0W6xxOclp2rZpYr
 O9xFgM9FrkZOYaDoxnkGEOuF6wgg7UheZVabFLvnTik3oI4h5lrv9E44U/iXDk6M
 Gf6mAlsdtD3uIHjvWtYLGTxPO9Mpjg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=erQRNg
 i/q14hEmzZpagvRR6qVmotdcEpQCKmAnAYaek=; b=N2CBT4RzojH81f5ZrYDn2D
 ez9BaFecTrt6KvJzFRCzgvKlj9EOPrpCsOI8XwoOpizQ3HJA8nCXYYqUDfZ/hSC7
 0vOm0CNlZI6xLw8JpOQWXNas8oxCBh7rsdQ/vB4FBFfddD17B9Ad03rwypPudrof
 vhHxdzb19KUNw9sq7/sffse39E6YF4THhCBXOW5bctGtKTO6/l90CVDeSiQxD567
 9XYhJl9pT4Tk4aM53KHv6MKQCkEm+5iXsmxPfPJR2DKt1mYmFj/XFFbaGp6CRJ50
 /pQzXJlvVbpPW0klKhLkdsRkVgRHdZCgFJSgqogvh5ZY7sDLj8+dxN15UXiGcM1g
 ==
X-ME-Sender: <xms:TbtgYVVDvQmkK9wo9QMKYSupmnUOCLZu3LJNLdYoQ6AchFcVpgY3XA>
 <xme:TbtgYVklZkAfQJmUkxRUU0WDa1RCx2UiMMaurrG9CSdg-hbs_tc3uCsR9W2Of7DDx
 7IAWHQjUODZPw3hEA>
X-ME-Received: <xmr:TbtgYRY1eMTNrZU4ukGiSC7V5ycuIc4a1A4DZ7tDqygopwVgQVAe82Jls1OqOEmxSrmyGOYb>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrvddtuddgtdduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtre
 dttddtjeenucfhrhhomhephfgvrhhnrghnughoucftrghmohhsuceoghhrvggvnhhfohho
 sehuledvrdgvuheqnecuggftrfgrthhtvghrnhepvdfggedvhfeiuddvveeffeegveehje
 evieekhfeggefhgfdvudduuefhuedvkeevnecuffhomhgrihhnpedtuddrohhrghenucev
 lhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvvghnfh
 hoohesuhelvddrvghu
X-ME-Proxy: <xmx:TbtgYYXKC_BSx74PN_z4A9US9R5jg9jIlyAqqPXtmF-x652CfUpn_g>
 <xmx:TbtgYfl82BE9OLyzvAhJ-51DQY3T4dpwewn66GTnOIZVgFKohmeJrw>
 <xmx:TbtgYVeI570w_M6agW4v6DZZzR5LXo0t4QmeF5Cfb6NTIUsGYOgHww>
 <xmx:TbtgYVRK_trk7vJDFmJoykISYu9aGTZ-1QH1znXvRGCG-qbTqlEqIQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <intel-gfx@lists.freedesktop.org>; Fri, 8 Oct 2021 17:42:36 -0400 (EDT)
Date: Fri, 8 Oct 2021 23:42:34 +0200
From: Fernando Ramos <greenfoo@u92.eu>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YWC7SmsZoaHKM4Ps@zacax395.localdomain>
References: <20211007193755.29579-1-greenfoo@u92.eu>
 <163365109685.5189.4928741703910891300@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <163365109685.5189.4928741703910891300@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?=3A_cleanup=3A_Use_DRM=5FMODESET=5FLOCK=5FALL=5F*_helpers?=
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

On 21/10/07 11:58PM, Patchwork wrote:
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_21282_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_invalid_mode@clock-too-high:
>     - shard-tglb:         NOTRUN -> [SKIP][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21282/shard-tglb8/igt@kms_invalid_mode@clock-too-high.html
> 
Can someone more familiar with the tests have a look at this? Could it be
related to my changes?

Thanks.
