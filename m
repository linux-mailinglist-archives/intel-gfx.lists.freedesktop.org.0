Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D60DC42CD20
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 23:54:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 060DB6EBED;
	Wed, 13 Oct 2021 21:54:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
 [66.111.4.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0EDB6EBF6
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 21:54:28 +0000 (UTC)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id 527095C01BF
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 17:54:26 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Wed, 13 Oct 2021 17:54:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=u92.eu; h=date
 :from:to:subject:message-id:references:mime-version:content-type
 :in-reply-to; s=fm3; bh=E0rRhRtxdt8BWV/tovUlDnDZ/aZJ3sFKY+qlIgRm
 /PM=; b=SUyHdyFf/JCa8HVlHb31JjW1jKVljctouWqtX0hTnGu8iN5sGUq1UpwZ
 hfzqpH3Z07mqLBx+xXtchfYZ1+44c4LaUyB6WkNup+yifR8Ptxdrrocl7T/jZrIu
 DQmDlHL+i7eEoybVRBD0KMoi//aW82Z8QT+2B8x4ScmNmtJtKju875QnK/tO744v
 Av2nQcDjRwwxCAPD1fa7C9yGF7UK26NpEqmTXAqolzq90xJlrQoi+KSYDp95oGtd
 O7ORAaBHZeMdxPXT1mnmpf0h0yQ/VgHc60uAxXyLeQ6alLpigV03CjR6h0+4QJfP
 00ud+49uQ+0jF9wYHIP/Lf+hn/t+zQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=E0rRhR
 txdt8BWV/tovUlDnDZ/aZJ3sFKY+qlIgRm/PM=; b=l49lqyq6UiSMbqtfFhNU3u
 DCPbmzKX+iZinnB/qrRZzmSREShSQA1oEmriD7+LSff0GdG2r1D3r360S3Xz7x79
 nl9tU5EDC6iiKSHlSRuEgNleIZcH8k4Z5DlsJNMd2FTCRCnFVQf+4KvcvFsMWtFa
 ggqWyDsb5En99wEYNUWHXIwVlTHZA/TPRv/y8/H2OsT6SMEN9jEwAbftOvI3YX1l
 BFr80XiJexEr2KWPs4VX8vGP/rLume5bvhS7tekAICZpEgkLpe4tYwadGY0UNK2Z
 pIbvGOWDDvOXCDx5Vvpqf5ZIIXGzet4bjTM4mzUOxKmAJOfOAXJimzDuRWQmcw7w
 ==
X-ME-Sender: <xms:klVnYRVK0FKXKbjiBEaQ-kPQrWENxIj4hG1zp8r7VcDIkKP5MUGKzQ>
 <xme:klVnYRmFkC7WMiNDSJzOj65By4TIKj8LZwUxtjGmizWSgA_9uZQqI1g5kM_yM2rKd
 MQBOvjBb-21WOvEIw>
X-ME-Received: <xmr:klVnYdZ5iQMkK0XpNG1pp8xA1_IyqYmuCrcWvKrScrEyK-h950r-dHnO35HXoys50MXGrgI->
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrvddutddgudeigecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehttd
 ertddttdejnecuhfhrohhmpefhvghrnhgrnhguohcutfgrmhhoshcuoehgrhgvvghnfhho
 ohesuhelvddrvghuqeenucggtffrrghtthgvrhhnpedvgfegvdfhieduvdevfeefgeevhe
 ejveeikefhgeeghffgvdduudeuhfeuvdekveenucffohhmrghinheptddurdhorhhgnecu
 vehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepghhrvggvnh
 hfohhosehuledvrdgvuh
X-ME-Proxy: <xmx:klVnYUWQKi9q2d20-qDeTKPNCTO8GY4eYxgO3ko9h3cSjiLio_tTQA>
 <xmx:klVnYbkvnWQx03uFF5T3nw6ZKNPeBgbTmNjheIPgbgeBhrBd6jIzTQ>
 <xmx:klVnYRckQP2pN7Di2k_EleroWNxWDifcadtR3dUuRtm4OfJd3sYtnA>
 <xmx:klVnYRTirPZbHjTb0f95jeQ_G_bZhqXfWxudIZFzHLXEGeJwwCvHhw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <intel-gfx@lists.freedesktop.org>; Wed,
 13 Oct 2021 17:54:25 -0400 (EDT)
Date: Wed, 13 Oct 2021 23:54:22 +0200
From: Fernando Ramos <greenfoo@u92.eu>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YWdVjh55XuYlOD8u@zacax395.localdomain>
References: <20211013204846.90026-1-greenfoo@u92.eu>
 <163416098524.10253.5906232603028257891@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <163416098524.10253.5906232603028257891@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?=3A_cleanup=3A_Use_DRM=5FMODESET=5FLOCK=5FALL=5F*_helpers_=28re?=
 =?utf-8?b?djIp?=
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

On 21/10/13 09:36PM, Patchwork wrote:
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_21333 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_21333, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21333/index.html
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_21333:
> 
> ### CI changes ###
> 
> #### Possible regressions ####
> 
>   * boot:
>     - fi-kbl-r:           [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10732/fi-kbl-r/boot.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21333/fi-kbl-r/boot.html

Hi, by looking at the report (first link) it looks like this is an issue with a
specific machine (where all tests failed).

Considering this same patch set ran without problems before this last rebase,
could this be a setup issue? Is there a way to request a re-trigger on that
machine?

Thanks.
