Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3DD603A32
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 08:56:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAA7210E42D;
	Wed, 19 Oct 2022 06:56:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0E7510E42D
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 06:56:01 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id C42BEB82239;
 Wed, 19 Oct 2022 06:55:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01FAFC433D6;
 Wed, 19 Oct 2022 06:55:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1666162558;
 bh=60gEc3RgEwOlMqkL2MQmnLX+69yH4/JmuY0w5uGeb2s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IHnFJTia4HWiYFoYeyMCXsdfR9ZTil/XnvHMZR6opKb/xENge1mcrLXB+BW+8I5zY
 ucZZh5k4lgS5kwFVPKasvtGjUB0EUioQ6Ew/zoMeXyt0YEhlsi7J2TkNzt1x6tTqbS
 to0lakJx/A3cacNQz1ZYy8bEIsBJ0caGCH83Y2Xc=
Date: Wed, 19 Oct 2022 08:55:55 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y0+fex0i0vmBL6QX@kroah.com>
References: <87k04xiedr.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87k04xiedr.fsf@intel.com>
Subject: Re: [Intel-gfx] v5.19 & v6.0 stable backport request
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
Cc: Hans de Goede <hdegoede@redhat.com>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 18, 2022 at 02:02:08PM +0300, Jani Nikula wrote:
> 
> Hello stable team, please backport these two commits to stable kernels
> v5.19 and v6.0:
> 
> 4e78d6023c15 ("drm/i915/bios: Validate fp_timing terminator presence")

Does not apply to 5.19.y, can you provide a working backport?

> d3a7051841f0 ("drm/i915/bios: Use hardcoded fp_timing size for generating LFP data pointers")

Queued up to both trees now, thanks.

greg k-h
