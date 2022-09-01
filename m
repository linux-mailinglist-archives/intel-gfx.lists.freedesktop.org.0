Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C6B5A9B42
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Sep 2022 17:09:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B265610E16E;
	Thu,  1 Sep 2022 15:09:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 406F210E16E
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Sep 2022 15:09:15 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id C53BDB82793;
 Thu,  1 Sep 2022 15:09:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 590C6C433D6;
 Thu,  1 Sep 2022 15:09:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1662044951;
 bh=Zfu18nSkzL58oEN660XiJknnjBz40fILMUsFoMnmQtM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=irKcvZR4FTqMeAbrRid6T5HEEvrlk0t+8GWAfVDZr4qQqdPBlb/Z66sDoH879P2Nl
 PEjrJkCXSLh+7dSExn3pxYF64C5PzrXWmOMMZZYO2WWdhh/L/iwmg1VB+KkmY6t+mY
 AZQCawkkcVaoAz9AS/ANR+4U5GQg9LrpPfJ7uUWk=
Date: Thu, 1 Sep 2022 17:09:09 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Tomas Winkler <tomas.winkler@intel.com>
Message-ID: <YxDLFWjIllqqh9de@kroah.com>
References: <20220806122636.43068-1-tomas.winkler@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220806122636.43068-1-tomas.winkler@intel.com>
Subject: Re: [Intel-gfx] [PATCH v7 00/15] GSC support for XeHP SDV and DG2
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
 Alexander Usyskin <alexander.usyskin@intel.com>, linux-kernel@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Aug 06, 2022 at 03:26:21PM +0300, Tomas Winkler wrote:
> Add GSC support for XeHP SDV and DG2 platforms.
> 
> The series includes changes for the mei driver:
> - add ability to use polling instead of interrupts
> - add ability to use extended timeouts
> - setup extended operational memory for GSC
> 
> The series includes changes for the i915 driver:
> - allocate extended operational memory for GSC
> - GSC on XeHP SDV offsets and definitions
> 
> This patch set should be merged via gfx tree as
> the auxiliary device belongs there.
> Greg, your ACK is required for the drives/misc/mei code base,
> please review the patches.

With the exception that you all don't know what year it is:

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
