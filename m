Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E50F14BB8B1
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Feb 2022 12:51:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9962310E2A4;
	Fri, 18 Feb 2022 11:51:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.smtp.larsendata.com (mx1.smtp.larsendata.com
 [91.221.196.215])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C495210E391
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Feb 2022 11:51:12 +0000 (UTC)
Received: from mail01.mxhotel.dk (mail01.mxhotel.dk [91.221.196.236])
 by mx1.smtp.larsendata.com (Halon) with ESMTPS
 id 1bda185b-90b1-11ec-baa1-0050568c148b;
 Fri, 18 Feb 2022 11:51:29 +0000 (UTC)
Received: from ravnborg.org (80-162-45-141-cable.dk.customer.tdc.net
 [80.162.45.141])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: sam@ravnborg.org)
 by mail01.mxhotel.dk (Postfix) with ESMTPSA id 0E0B3194B47;
 Fri, 18 Feb 2022 12:51:10 +0100 (CET)
Date: Fri, 18 Feb 2022 12:51:07 +0100
X-Report-Abuse-To: abuse@mxhotel.dk
From: Sam Ravnborg <sam@ravnborg.org>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <Yg+IK85b3R3J0Y4U@ravnborg.org>
References: <20220218100403.7028-1-ville.syrjala@linux.intel.com>
 <20220218100403.7028-21-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220218100403.7028-21-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 20/22] drm/panel: Use drm_mode_duplicate()
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Ville,

On Fri, Feb 18, 2022 at 12:04:01PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Replace the hand rolled drm_mode_duplicate() with the
> real thing.
> 
> @is_dup@
> @@
> drm_mode_duplicate(...)
> { ... }
> 
> @depends on !is_dup@
> expression dev, oldmode;
> identifier newmode;
> @@
> - newmode = drm_mode_create(dev);
> + newmode = drm_mode_duplicate(dev, oldmode);
>   ...
> - drm_mode_copy(newmode, oldmode);
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>

Looks good,
Acked-by: Sam Ravnborg <sam@ravnborg.org>
