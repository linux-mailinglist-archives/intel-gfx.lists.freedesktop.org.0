Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD1D3515E85
	for <lists+intel-gfx@lfdr.de>; Sat, 30 Apr 2022 17:01:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E20D210E7F2;
	Sat, 30 Apr 2022 15:01:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D961610E7F2;
 Sat, 30 Apr 2022 15:01:19 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 477AFB8013B;
 Sat, 30 Apr 2022 15:01:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F4BCC385A7;
 Sat, 30 Apr 2022 15:01:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1651330875;
 bh=Ajnucx/H/ioVOWtM+z252WJjKeKWS+lbUTXB0YVIvko=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cyIUBA6pqqg/B5wyOdcBDSKNfjtyMoj5sWt3Xdh4pX+zHEGGcxKJ95CN6T0JFdHby
 hV9/K8uobLdNYn/ulaPsgu8Fx2ZaTb2Xue2Dzv8mIqmlZJHvELez5fJErThevr2fUv
 pPLrIsIA43sEFEbS80j0j1nzwT++PjVZBIhE1KHg=
Date: Sat, 30 Apr 2022 17:01:12 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Message-ID: <Ym1POJ58psy2UBUo@kroah.com>
References: <cover.1651326000.git.mchehab@kernel.org>
 <a403bfabca4ce587ddd275f2a3c1dfc1d99bda86.1651326000.git.mchehab@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a403bfabca4ce587ddd275f2a3c1dfc1d99bda86.1651326000.git.mchehab@kernel.org>
Subject: Re: [Intel-gfx] [PATCH v3 1/2] module: update dependencies at
 try_module_get()
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
Cc: alsa-devel@alsa-project.org, mauro.chehab@linux.intel.com,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 Takashi Iwai <tiwai@suse.com>, dri-devel@lists.freedesktop.org,
 Jaroslav Kysela <perex@perex.cz>, Kai Vehmanen <kai.vehmanen@intel.com>,
 Luis Chamberlain <mcgrof@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 linux-modules@vger.kernel.org,
 Pierre-Louis Bossart <pierre-louis.bossart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Apr 30, 2022 at 02:41:47PM +0100, Mauro Carvalho Chehab wrote:
> Sometimes, device drivers are bound into each other via try_module_get(),
> making such references invisible when looking at /proc/modules or lsmod.
> 
> Add a function to allow setting up module references for such
> cases, and call it when try_module_get() is used.
> 
> Reviewed-by: Dan Williams <dan.j.williams@intel.com>
> Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

