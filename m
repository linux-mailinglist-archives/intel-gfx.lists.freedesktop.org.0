Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C3A4BD969
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Feb 2022 12:27:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28E9510E598;
	Mon, 21 Feb 2022 11:27:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9D2910E592
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Feb 2022 11:27:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645442821; x=1676978821;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=StOBJxlWUhNPInsOVed9k9g8BLPjAlTJ7s4kBZ2hqQU=;
 b=Ebis+7KGBESDLVTraAfOJztoeY2M7RWTSj9Fjqe21C12JLsjUtzxa0C8
 LsEqAMvKf+rS2cUcjPmOOEAnAo5tPmaJd5FKB/WOPXhs3FG61UALBIsy6
 Dhlq0jShlCOuMgXG4BjM1BoKoomMiZVs+5z0TiC+zsP7xqheW2ysoDCwe
 BQlOgHxKUJbLpZu6toqlcLNJAmy9DXqyMu4dE+verC6G3TLI9e1Ih+XLC
 TM1yUFY5+YYcLqOYkJZ903U2QC/CLE5iQ1mhs9DAGq4GCkjoX9kbhWxB9
 urC76VEjkJ8XNkVZUsYaHjc26w5MAWH1PFaHP0iiJgKT1jU57207Ho8to A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10264"; a="314754388"
X-IronPort-AV: E=Sophos;i="5.88,385,1635231600"; d="scan'208";a="314754388"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 03:27:01 -0800
X-IronPort-AV: E=Sophos;i="5.88,385,1635231600"; d="scan'208";a="547298742"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 03:27:00 -0800
Date: Mon, 21 Feb 2022 13:26:56 +0200
From: Imre Deak <imre.deak@intel.com>
To: Matthias Walther <matthias@walther.xyz>
Message-ID: <20220221112656.GB834116@ideak-desk.fi.intel.com>
References: <326ea3aa-1eb9-3458-0c99-5a15d4f7a437@walther.xyz>
 <ea520ac7-3955-398b-0646-28ae033e3ada@walther.xyz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ea520ac7-3955-398b-0646-28ae033e3ada@walther.xyz>
Subject: Re: [Intel-gfx] Enable DisplayPort MST on low cost USB-C docks
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Matthias,

could you open a ticket at gitlab, providing a dmesg as described at
https://gitlab.freedesktop.org/drm/intel/-/wikis/How-to-file-i915-bugs

Thanks,
Imre

On Sun, Feb 20, 2022 at 03:33:56PM +0100, Matthias Walther wrote:
> Hm, no ideas on this?
> 
> 
> Am 28.01.22 um 20:50 schrieb Matthias Walther:
> > Hello,
> > 
> > there are a lot of quite similar, low cost USB-C docks with multiple
> > display output (usually 2x HDMI + 1x VGA) available on the big online
> > platforms such as Amazon, Ebay, and Aliexpress.
> > 
> > Internally the display outputs are connected via DisplayPort. If you
> > connect a monitor to one of the ports, it's detected as display port
> > connection in xrandr. Always the same dpX in xrandr, independently of
> > which physical port in use. This suggests that all physical outputs are
> > connected to the same DisplayPort output.
> > 
> > On Microsoft's Windows these docks support multi headed output, like a
> > different image on all displays (called expand mode in Windows). However
> > the vendor advertises, that on MacOS the adapter can only display the
> > same image on all ports of the adapter. This might be a hint, that the
> > adapter internally uses DisplayPort's Multi-Stream Transport (MST)
> > technology for the second and third display output (2nd HDMI, VGA), as
> > Apple does not support MST while Microsoft does. Linux behaves just like
> > MacOS here and only mirrors the image.
> > 
> > Linux is supposed to support MST since like around 2014. There are
> > parameters to enable it for i915, e. g. i915.enable_dp_mst={1,2}.
> > 
> > However unfortunately those USB-C docks do not support multi-headed
> > output on Linux. The second monitor is not detected, there is just a
> > mirrored image of the first monitor on monitor two and three.
> > 
> > Does Linux support MST over Thunderbolt 3/4? Is there maybe a hidden
> > command that the Windows driver uses to switch MST on in the dock's
> > chipset?
> > 
> > Any hints on how to debug this would be highly appreciated! Those
> > adapters become more and more popular, they are affordable and it would
> > be awesome to make them fully work with Linux.
> > 
> > Best,
> > Matthias
> > 
> 
