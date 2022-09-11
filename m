Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E3D95B503B
	for <lists+intel-gfx@lfdr.de>; Sun, 11 Sep 2022 19:22:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2255410E4FC;
	Sun, 11 Sep 2022 17:22:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F69C10E4F9;
 Sun, 11 Sep 2022 17:22:11 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id ABFA4B80AFE;
 Sun, 11 Sep 2022 17:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F948C433B5;
 Sun, 11 Sep 2022 17:22:07 +0000 (UTC)
Authentication-Results: smtp.kernel.org;
 dkim=pass (1024-bit key) header.d=zx2c4.com header.i=@zx2c4.com
 header.b="hao55/o6"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zx2c4.com; s=20210105; 
 t=1662916925;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=MtjM9PGCgkli9u/1g6h/fxcGqHy0IGdr92wuKREDxEc=;
 b=hao55/o6mLWdkqbkTXMIiSkBX0wkw/YT/wIkWpJk9MdkwnT5e371xh1fjdhPDsfqrbviE2
 c7uDcG5Z+52bbW+fZgf3f2GXaKitQVeOxk3860WA4pKdzqqmIAvDhz48o9594ePePhf3w5
 IJzQGalf6NpA6qyjaoLF/XelywcT2uA=
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 6ae389f1
 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO); 
 Sun, 11 Sep 2022 17:22:05 +0000 (UTC)
Date: Sun, 11 Sep 2022 19:22:02 +0200
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <Yx4ZOprT+BAsI2sj@zx2c4.com>
References: <Yxn1WpmUJnJpqq23@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Yxn1WpmUJnJpqq23@intel.com>
Subject: Re: [Intel-gfx] [PULL] drm-intel-fixes
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
Cc: dim-tools@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Thomas Zimmermann <tzimmermann@suse.de>, Dave Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Rodrigo,

On Thu, Sep 08, 2022 at 09:59:54AM -0400, Rodrigo Vivi wrote:
> Hi Dave and Daniel,
> 
> A few fixes, but most targeting stable.
> 
> [...]
>
> Ville Syrjälä (2):
>       drm/i915: Implement WaEdpLinkRateDataReload

Don't you need to revert d5929835080a60f9119d024fa42f315913942f76 in
order for "drm/i915: Implement WaEdpLinkRateDataReload" to actually be
useful/interesting? Otherwise, what's the point?

Regards,
Jason
