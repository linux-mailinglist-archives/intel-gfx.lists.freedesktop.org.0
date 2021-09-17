Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F17840F235
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Sep 2021 08:19:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E87D06EB8A;
	Fri, 17 Sep 2021 06:19:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
 [66.111.4.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A62696EB8A
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 06:19:31 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 4D7865C0194
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 02:19:28 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 17 Sep 2021 02:19:28 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=u92.eu; h=date
 :from:to:subject:message-id:references:mime-version:content-type
 :in-reply-to; s=fm3; bh=N883k0tKOwzllyDroJ54PRkVihQ/RUs92kLGQhXt
 bZg=; b=voY/UY0klTkdxoJJRdgaiBGdyycor1QQWjylilCyh6BviKkN/WooOyJt
 jmSc+ZEYMsDyOX6nz3Ia1NCXoSbnSiamHQuOzEqdtL3Qze6fu2GH6lbKEFj61o5x
 9trFipIN5l9LZhGT/SvvcFveyVLebJ75IB3RaGRT590uetpfTnnGR3635C/SSEV2
 4yJo8PnUlvp2rwisjDhwW6DpNFNP3hRSp1qf5rlwS1Z7kl+f4cHjK48lXZwrI5jE
 UFgNWf38MCvZ7WIw/q9hYUFg6MXzNwF1CuT+g3tBrCcEjAIwNraA3wAMOfsJ7Bk8
 8TCnJgCx/jKp+wUsw3BzQjM2+gBpUA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=N883k0
 tKOwzllyDroJ54PRkVihQ/RUs92kLGQhXtbZg=; b=GXW+dHfT9/DnPQpYvd+Zq0
 yhMaSZr82whYtjTM8aAQXgcS7lzofOlZfjwyrRoPx2Bi/uLTNWJG4z1HaVOtMRSz
 3oeEaLWcKYjWi0JKRkOG460ne3BTQ4J1tc+rih5L+uKuRcJpeb9sHHWHnB0IO420
 VNf5nu4G/iSOqkvTdFdNiOMTgXQeMb83DkIs5Mdq3Jcy8XoXOPTI/p1A5AqQRL/x
 nV3NAdpb1fxSzF5Izjr2oPaMe2CuNjZ2rgtA9BncQuKpBMtprRNM23jXW/ytRdbx
 CDAEtr4+lpU3C18B9/AwNFWvz8hWE/DAOLNn40wbSnykatIrFRHfbv/bVif8pYqw
 ==
X-ME-Sender: <xms:bzNEYbW7hJR5YsxoAjTHqTgT6ZUAxmzI8omhs1FUHsh_14gezMyvvw>
 <xme:bzNEYTmm-sUfdY_IA7wUQOQtxolJz2tfseb6fv7MPQFU0ZC8WBlDGGFMIAXrg1LwF
 W9s4b5IIJQ3ktJ4VQ>
X-ME-Received: <xmr:bzNEYXZU_B7vEAPgCbVRk_chXBSheNKzLaa2XdGXZwRhQjVozpqFVwAbbaMdXnEoQkQvGvr4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrudehhedguddthecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehttd
 ortddttdejnecuhfhrohhmpefhvghrnhgrnhguohcutfgrmhhoshcuoehgrhgvvghnfhho
 ohesuhelvddrvghuqeenucggtffrrghtthgvrhhnpeevveffleevtddtvdeljeffvdehle
 ffffehfefhhfdvtdffkeevvdfhfffhfffhhfenucffohhmrghinhepudehqdhrtgdurdgr
 mhenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrh
 gvvghnfhhoohesuhelvddrvghu
X-ME-Proxy: <xmx:bzNEYWVm_VrWmYjRbPjYppGD-HqBM6gZwATeb0EpUymIJB68HHej5A>
 <xmx:bzNEYVkbQ59--OlM87Bwc6GzpWvPDyQ48_le4omNBt9-Z5nsPePDNg>
 <xmx:bzNEYTc3F__OO_rmnMjFpCgaSDtDbqT4fcSI42BvTIQ2Lm_3lQG7eQ>
 <xmx:cDNEYTQHjg8xdPohDH3PmfAjBTfvIWeUD1pxmsArIKHqsgoV-ejd_A>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <intel-gfx@lists.freedesktop.org>; Fri,
 17 Sep 2021 02:19:26 -0400 (EDT)
Date: Fri, 17 Sep 2021 08:19:18 +0200
From: Fernando Ramos <greenfoo@u92.eu>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YUQzZsWuXRhapjXH@zacax395.localdomain>
References: <20210916211552.33490-1-greenfoo@u92.eu>
 <163183640457.8837.7824778788682274896@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <163183640457.8837.7824778788682274896@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm=3A_cleanup=3A_Use_DRM=5FMODESET=5FLOCK=5FALL=5F*_helpers_whe?=
 =?utf-8?q?re_possible?=
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

On 21/09/16 11:53PM, Patchwork wrote:

> Patch failed at 0012 drm/i915: cleanup: drm_modeset_lock_all() --> DRM_MODESET_LOCK_ALL_BEGIN()

Hi, I created the patch against drm-next (which currently points to
<v5.15-rc1>).

Am I doing something wrong? Should I be targeting a different commit?

Thanks.
