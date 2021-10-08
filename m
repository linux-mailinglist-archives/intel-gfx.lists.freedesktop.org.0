Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F4216427323
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Oct 2021 23:38:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30BFF6E10B;
	Fri,  8 Oct 2021 21:38:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
 [66.111.4.26])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77D2D6E10B
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Oct 2021 21:38:47 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id CB5985C00DF
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Oct 2021 17:38:46 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 08 Oct 2021 17:38:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=u92.eu; h=date
 :from:to:subject:message-id:references:mime-version:content-type
 :in-reply-to; s=fm3; bh=BtkZd/hD89gKe2ORuBXZfvrDzNwIOU6K00OF+KrS
 kfY=; b=FRhoNBeFQxLHBvoNx2l0Y05dYo+x6Gcgm4DO3y9ctkaJ8RfIR5+uLPTu
 ptUdB2CN3Af98on/76/sw3Hgit9HysBfItQvKcZPf4Gg24o4X2bArxSBwltHMBUf
 h/C8INCrmGqbMGOzC15+6c91lkeZzTvm0uSpzbjZFzPHlv5wM5FqHB2dV1gRr+uw
 hJEG614D8MR/FzppfWHRon+/JoIOjxkkvb22CptlIAR48iwl5VV88I5AbE0ZQPYl
 1luiVrlziIJo/zoQqruq2r1D8me/JVaHq1O1l0W5IjNKovBA0kvxJQ+9M8EDVRHl
 PF1HBIZTAtmYikmemehJ3QRQMUdszA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=BtkZd/
 hD89gKe2ORuBXZfvrDzNwIOU6K00OF+KrSkfY=; b=foQ419xgABGncJeeMjIE9o
 za2gVzKYBUKGAne0LCk27ujgTVXfEAzCxF9Kh6nCHuRXn72hEr6DntXQMMDMa6GD
 2YpBlP5TDFJb47hRMxRXqYoLr7JB9D/AX4s9nyp6EbS6zr9kib5PtHiciyPNwtFF
 DZ6XED3qZNh4ERsSjQ1OJRLf9glO87R/8wSKJ4lUQGIp5w0i7YubxebF68gZKoDp
 J+hr/9/ndwzdgrzsvcH1gmQgofQjpdqdHMcnLDY64FNchj3Mg6Prn0Aq2amqmvZx
 6MU3wx+REPUHn1zktDvRvmH2610kKOiJafoISZ/0eMDNHCltT6gRpbmk8NENEQAQ
 ==
X-ME-Sender: <xms:ZrpgYQZMbeZoO7fwcvWiXC0xGQ3k9LIXmnvmQCZB2akk5yFvQaQhVA>
 <xme:ZrpgYbbeVOA5r0eqWRu7YsBplQZROq39TtdLctSH08Iakz34UhdQOvM90o1i_qkLY
 nzooPkz-Zt0wB8RJw>
X-ME-Received: <xmr:ZrpgYa-vYt_ilRIlBPf3DXXauyryxOJexd7rmc0K5Wkh4i4tpatBqDX3sp-mA8uN6_RE7Y1->
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrvddtuddgtdduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtre
 dttddtjeenucfhrhhomhephfgvrhhnrghnughoucftrghmohhsuceoghhrvggvnhhfohho
 sehuledvrdgvuheqnecuggftrfgrthhtvghrnhepffdvudfglefgveffveejveejheegje
 fggeeltdelhfejledvjeejjefhleffvdegnecuffhomhgrihhnpehfrhgvvgguvghskhht
 ohhprdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
 homhepghhrvggvnhhfohhosehuledvrdgvuh
X-ME-Proxy: <xmx:ZrpgYapzE8PEugXbdSxiKSB8Z6MTEa3GNw1s9kJHbbRTQr2hWv0Z0w>
 <xmx:ZrpgYbq_LtI7t9HhCTPhKzgFLO4ZRfMpCB3ZHe8naYH9n0eGxq-tSg>
 <xmx:ZrpgYYRahwqNzrAu7obhwFUnZjRHFBGOwFCrtfCmf4QVXcWwe-rSQQ>
 <xmx:ZrpgYVHyVUusT7BPvXqFL2vAQAt_fHIOETEBHO1b9JQ6PbVpwIaasg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <intel-gfx@lists.freedesktop.org>; Fri, 8 Oct 2021 17:38:45 -0400 (EDT)
Date: Fri, 8 Oct 2021 23:38:43 +0200
From: Fernando Ramos <greenfoo@u92.eu>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YWC6Y3b/xy2lDl14@zacax395.localdomain>
References: <20211007193755.29579-1-greenfoo@u92.eu>
 <163364050815.5186.4268812458613280009@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <163364050815.5186.4268812458613280009@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?drm=3A_cleanup=3A_Use_DRM=5FMODESET=5FLOCK=5FALL=5F*_helpers?=
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

On 21/10/07 09:01PM, Patchwork wrote:
> == Series Details ==
> 
> Series: drm: cleanup: Use DRM_MODESET_LOCK_ALL_* helpers
> URL   : https://patchwork.freedesktop.org/series/95578/
> State : warning
> 
> == Summary ==
> 
> $ dim sparse --fast origin/drm-tip
> Sparse version: v0.6.2
> Fast mode used, each commit won't be checked separately.
> -drivers/gpu/drm/amd/amdgpu/amdgpu_display.c:28:
> -drivers/gpu/drm/amd/amdgpu/amdgpu_display.c:28:
> -drivers/gpu/drm/amd/amdgpu/amdgpu_display.c:28:
> -drivers/gpu/drm/amd/amdgpu/amdgpu_display.c:28:
> -drivers/gpu/drm/amd/amdgpu/amdgpu_display.c:28:
> -drivers/gpu/drm/amd/amdgpu/amdgpu_display.c:28:
> -drivers/gpu/drm/amd/amdgpu/amdgpu_display.c:28:
> -drivers/gpu/drm/amd/amdgpu/amdgpu_display.c:28:
> +                 from drivers/gpu/drm/amd/amdgpu/amdgpu_display.c:28:
> +                 from drivers/gpu/drm/amd/amdgpu/amdgpu_display.c:28:
> +                 from drivers/gpu/drm/amd/amdgpu/amdgpu_display.c:28:
> +                 from drivers/gpu/drm/amd/amdgpu/amdgpu_display.c:28:
> +                 from drivers/gpu/drm/amd/amdgpu/amdgpu_display.c:28:
> +                 from drivers/gpu/drm/amd/amdgpu/amdgpu_display.c:28:
> +                 from drivers/gpu/drm/amd/amdgpu/amdgpu_display.c:28:
> +                 from drivers/gpu/drm/amd/amdgpu/amdgpu_display.c:28:
> -                 from drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c:28:
> -                 from drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c:28:
> -                 from drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c:28:
> -                 from drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c:28:
> +                 from drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c:30:
> +                 from drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c:30:
> +                 from drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c:30:
> +                 from drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c:30:
> 
> 
The output of this bot seems to be corrupted. Or am I missing something?

I ran sparse against "amdgpu_display.c" before and after my changes and the
outputs seem to be identical.
