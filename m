Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5199C5E8C25
	for <lists+intel-gfx@lfdr.de>; Sat, 24 Sep 2022 14:16:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5194810E606;
	Sat, 24 Sep 2022 12:16:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1585810E606;
 Sat, 24 Sep 2022 12:16:23 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 89C9D60E8F;
 Sat, 24 Sep 2022 12:16:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99D98C433C1;
 Sat, 24 Sep 2022 12:16:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1664021782;
 bh=eqt29u6F7sasfKOpgDtfMFLVRpWUkNMnU240aTNHiss=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VhvpYu+zJqnKOXFsE606TTt6pmEgkwyyY/er+UjCaMIbPxI1uKo0RlHa48GgvRXFz
 Oobur3LSoMb3q4MEy/rElfyyqSWshT+RaGAvOe4qXKJ7wSW88O9+6wKMSPfp5QdaST
 P6DbcnblvSoaK3wZgUPbEgtkNMCTKG/i1FdUHUys=
Date: Sat, 24 Sep 2022 14:16:19 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <Yy71Eyua8hC+xi/n@kroah.com>
References: <20220913005739.798337-1-daniele.ceraolospurio@intel.com>
 <20220913005739.798337-5-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220913005739.798337-5-daniele.ceraolospurio@intel.com>
Subject: Re: [Intel-gfx] [PATCH v5 04/15] mei: bus: extend bus API to
 support command streamer API
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
Cc: intel-gfx@lists.freedesktop.org, Tomas Winkler <tomas.winkler@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Sep 12, 2022 at 05:57:28PM -0700, Daniele Ceraolo Spurio wrote:
> From: Vitaly Lubart <vitaly.lubart@intel.com>
> 
> Add mei bus API for sending gsc commands: mei_cldev_send_gsc_command()
> 
> The GSC commands are originated in the graphics stack
> and are in form of SGL DMA buffers.
> The GSC commands are synchronous, the response is received
> in the same call on the out sg list buffers.
> The function setups pointers for in and out sg lists in the
> mei sgl extended header and sends it to the firmware.
> 
> Signed-off-by: Vitaly Lubart <vitaly.lubart@intel.com>
> Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> ---

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
