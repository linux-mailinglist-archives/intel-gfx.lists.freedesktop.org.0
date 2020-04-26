Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06F601B910B
	for <lists+intel-gfx@lfdr.de>; Sun, 26 Apr 2020 17:03:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F09589C61;
	Sun, 26 Apr 2020 15:03:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A39489C61;
 Sun, 26 Apr 2020 15:03:45 +0000 (UTC)
Received: from localhost (unknown [137.135.114.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 83D41206D4;
 Sun, 26 Apr 2020 15:03:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587913424;
 bh=OYn9EWDsVU0Gxpi78Ra8Eo9cK7lzLOzy03OcHbfFtnQ=;
 h=Date:From:To:To:To:To:Cc:Cc:Cc:Subject:In-Reply-To:References:
 From;
 b=NtpEXsYMmivgdHCEOTZCHgD7mE0XdzGYDOC9R298tbghWRP+yS+3qGjxHJjW7UaIK
 nmfK4B6dBDhFSW43zuRyPJkH2jPSeUKPtUSIKAM8xOZrPChtKzyEDwRQz9CltKYQ/9
 QNud9WCKM+4w7m6KJZAdlhAAZoxWGfJxp4TonIn4=
Date: Sun, 26 Apr 2020 15:03:43 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
To: Ville Syrjälä <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
In-Reply-To: <20200423151743.18767-1-ville.syrjala@linux.intel.com>
References: <20200423151743.18767-1-ville.syrjala@linux.intel.com>
Message-Id: <20200426150344.83D41206D4@mail.kernel.org>
Subject: Re: [Intel-gfx] [PATCH] drm/edid: Fix off-by-one in DispID DTD
 pixel clock
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi

[This is an automated email]

This commit has been processed because it contains a -stable tag.
The stable tag indicates that it's relevant for the following trees: all

The bot has tested the following trees: v5.6.7, v5.4.35, v4.19.118, v4.14.177, v4.9.220, v4.4.220.

v5.6.7: Build OK!
v5.4.35: Build OK!
v4.19.118: Build OK!
v4.14.177: Build OK!
v4.9.220: Build OK!
v4.4.220: Failed to apply! Possible dependencies:
    3a4a2ea39f86 ("drm/displayid: Iterate over all DisplayID blocks")
    5e546cd5b3bc ("drm/edid: move displayid tiled block parsing into separate function.")
    a39ed680bddb ("drm/edid: add displayid detailed 1 timings to the modelist. (v1.1)")
    c97291774c1b ("drm/edid: move displayid validation to it's own function.")


NOTE: The patch will not be queued to stable trees until it is upstream.

How should we proceed with this patch?

-- 
Thanks
Sasha
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
