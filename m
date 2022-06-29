Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E345604C7
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jun 2022 17:39:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2071410E265;
	Wed, 29 Jun 2022 15:39:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0295810E0AB
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jun 2022 15:39:25 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 66C7F615F7;
 Wed, 29 Jun 2022 15:39:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E18D1C34114;
 Wed, 29 Jun 2022 15:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1656517164;
 bh=DWY+ZOEqY30QW9jCDPiHYE3yU8+XoNeGqu5hV9ZWYP0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cc/YHcSYSpxQ2JCsCyGaAE6hCdHu/sHDk4XdvqmiUshpKCXTvgS/sDW8tZHyO7OOW
 vnQF8V7QiHjXJd139/I7njZ7kgMRcBjxNpVVniW09CRBy0I8n+JoXLxK8pQ5ZASoUD
 fv79CyZhyR+up5lCyVj2vnSkZ7PlARGChzbJAejE=
Date: Wed, 29 Jun 2022 17:39:17 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Alexander Usyskin <alexander.usyskin@intel.com>
Message-ID: <YrxyJROfuLpVYDjF@kroah.com>
References: <20220629112913.1210933-1-alexander.usyskin@intel.com>
 <20220629112913.1210933-14-alexander.usyskin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220629112913.1210933-14-alexander.usyskin@intel.com>
Subject: Re: [Intel-gfx] [PATCH v4 13/14] mei: debugfs: add pxp mode to
 devstate in debugfs
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tomas Winkler <tomas.winkler@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 29, 2022 at 02:29:12PM +0300, Alexander Usyskin wrote:
> From: Tomas Winkler <tomas.winkler@intel.com>
> 
> Add pxp mode devstate to debugfs to monitor
> pxp state machine progress. During debug
> it is important to understand in what state
> the pxp handshake is.

You have 72 columns for changelog text, as your editor will tell you
when you run git commit...

Anyway, it's better than nothing, but really, do you think this is a
good changelog description?  That last sentence means nothing.  I too
think it is important to understand things...

{sigh}

Anyway, you all are pushing this hard for some crazy reason, and it's
only a debugfs file, so it doesn't matter much, but it feels indicative
of other patches from your employer for the past few years so I'll be a
pain and ask for you to fix it up again.

thanks,

greg k-h
