Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 745A0427325
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Oct 2021 23:40:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD4636E51A;
	Fri,  8 Oct 2021 21:40:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
 [66.111.4.26])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D43106E51A
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Oct 2021 21:40:23 +0000 (UTC)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.nyi.internal (Postfix) with ESMTP id 45BA65C00A7
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Oct 2021 17:40:23 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Fri, 08 Oct 2021 17:40:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=u92.eu; h=date
 :from:to:subject:message-id:references:mime-version:content-type
 :in-reply-to; s=fm3; bh=v1nJPCzaVwwRTSGo6Pcsl72Ms2nmMqKzHOvKnhnX
 urk=; b=VsJOzEF40Rvf6OXxAievGFTRFNODOIQjEE+EgZyGinMTczwethAHBa+5
 +t+C+Ichxexuhu1kJzrqeHLkTjizu3ptnpyE2KJyUkqOVl/jCVH2XeITeZN8YAyW
 +fJa7rdRUzmqCuI8LOqory4lCQP6PPlgEeh22kGkVrD/pGf4qC64W8J8ADdQemtd
 F/hCu585Om2PWHB+rS2cGJIeTREKm6HydZMXmdJNW1UFZy6A1tZLPZLQiHk0DTRs
 9X1rfEwommkuE4tKW5uYlLSUhQpw8fDBCOax1RIsQX417xicoWOQ3eLn4WS66SXY
 khKMrRwhhGJeJ3M+X4pRsIFuizteUw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=v1nJPC
 zaVwwRTSGo6Pcsl72Ms2nmMqKzHOvKnhnXurk=; b=RVfUNE/P0IlS5cJ5EvtkXu
 U4XCKbwmy5mer+mYUvt8KnsuvcHcvjATDwz2xxYUFSxkhXwb3PIeDwgSdoBFULO1
 C4WYPbvqyyOMal8t8u5QhBIuxsAmdDSHLZVL3NK3iS1X+QL6WcrTrcgX+tgT36O2
 c9hZYdZ/LUXPk/7Ux5/210zFV3wjSBcbvt+ApNUCJsvGOBLVcXB9JY45ne9hDB0Q
 fHzqIVimwsR5G23K82ige6AdTa+ioLXUg/djcpw78P8MvF2rQBxBgH3+65AlOldp
 fUUDqh0DC33BVdEWArGK4UW0xTMz08ZkQHa6aYI0J/2BfQZANX3/aHCgfYcbC0kQ
 ==
X-ME-Sender: <xms:x7pgYTj5_xMw9U20N-dkobDmrrHrh9I_zcymPHXCABQ5__859Othvg>
 <xme:x7pgYQCJexWfqf-DYCHUx823SQ3awcg8wePaqbOJirC5hTjvSm0owNhm4qxUq2ggC
 lfmzSl1LHotT4m2IQ>
X-ME-Received: <xmr:x7pgYTGtD2Yneo8eM-IFAJQHl-6lCya_0YLeEAd7OAhFrDHhXNi1DBKRzIHhGgaPEGKBmWj8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrvddtuddgtdduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtre
 dttddtjeenucfhrhhomhephfgvrhhnrghnughoucftrghmohhsuceoghhrvggvnhhfohho
 sehuledvrdgvuheqnecuggftrfgrthhtvghrnhepvdejieeflefhteeihffhtdfhfeekhf
 fhuedttedvgfevgfevfeehfffgkeejfeehnecuvehluhhsthgvrhfuihiivgeptdenucfr
 rghrrghmpehmrghilhhfrhhomhepghhrvggvnhhfohhosehuledvrdgvuh
X-ME-Proxy: <xmx:x7pgYQQwVvaT7mCaCTN38QDNqGo3RqnaS52-yJc3S2WMS0aFjV4aKg>
 <xmx:x7pgYQzOyUnN2ht05vSUDVX_rswcXezgyI59nRLbgSjzFUj5_loJSQ>
 <xmx:x7pgYW4fApaR8fwPxve_DFlZjiMzAJ5VuUy23T2jq2nFHnS5a7vyTQ>
 <xmx:x7pgYdvbx7tXyx6uCK-qXVP7sxwvB19CuGQ2a4_jYLQLD6bqGnComw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <intel-gfx@lists.freedesktop.org>; Fri, 8 Oct 2021 17:40:22 -0400 (EDT)
Date: Fri, 8 Oct 2021 23:40:19 +0200
From: Fernando Ramos <greenfoo@u92.eu>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YWC6wxI2ySS7TE/G@zacax395.localdomain>
References: <20211007193755.29579-1-greenfoo@u92.eu>
 <163364031208.5187.990934714742838785@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <163364031208.5187.990934714742838785@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?_for_drm=3A_cleanup=3A_Use_DRM=5FMODESET=5FLOCK=5FALL=5F*_helpe?=
 =?utf-8?q?rs?=
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

On 21/10/07 08:58PM, Patchwork wrote:
>
> 7bf784bb287c drm: cleanup: remove acquire_ctx from drm_mode_config
> -:8: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one
> 
> -:27: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)
> 
> total: 1 errors, 1 warnings, 0 checks, 16 lines checked
> 
> 
Thanks, I somehow forgot to run checkpatch.pl on the latest commit. Fixing.
