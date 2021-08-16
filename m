Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B5263EDE39
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Aug 2021 21:52:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7C0289CCB;
	Mon, 16 Aug 2021 19:52:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43B9989CCB
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Aug 2021 19:52:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10078"; a="196194902"
X-IronPort-AV: E=Sophos;i="5.84,326,1620716400"; d="scan'208";a="196194902"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2021 12:52:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,326,1620716400"; d="scan'208";a="530681014"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 16 Aug 2021 12:52:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 16 Aug 2021 22:52:24 +0300
Date: Mon, 16 Aug 2021 22:52:24 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <YRrB+C5zxZ5n/A2b@intel.com>
References: <20210722054338.12891-1-jose.souza@intel.com>
 <20210722054338.12891-2-jose.souza@intel.com>
 <87zgthituw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87zgthituw.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 02/10] drm/i915/bios: Start to support two
 integrated panels
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

On Mon, Aug 16, 2021 at 01:09:27PM +0300, Jani Nikula wrote:
> On Wed, 21 Jul 2021, José Roberto de Souza <jose.souza@intel.com> wrote:
> > VBT has support for up two integrated panels but i915 only supports one.
> >
> > So here stating to add the basic support for two integrated panels
> > and moving the DRRS to ddi_vbt_port_info instead of keeping a global
> > one.
> > Other VBT blocks will be converted in following patches.
> >
> > While at is also nucking lvds_dither as it is not used.
> 
> If you were to get a mysterious bisect result on this patch, would you
> know what's wrong?
> 
> I think there's too much going on in one patch, and this needs to be
> split. Small, incremental changes with functional and non-functional
> separated if possible. This is incredibly fragile stuff.
> 
> Also, I think we'll need to be able to figure out the panel type based
> on EDID, i.e. we need to parse some stuff first, and the panel stuff
> only after we've read EDID. Obviously you don't have to do that here,
> but this need to be done so that this doesn't become impossible.

My incredibly incomplete start at that:
git://github.com/vsyrjala/linux.git vbt_panel_type_pnp_id

Totally missing any and all restructuring of the VBT
parsing to happen after we have the EDID.

And apart from that we also have this horrible
chicken vs. egg issue:
1. need the panel type to get power sequencer delays
2. need to turn on the VDD to read the EDID
3. need the EDID to get the panel type

-- 
Ville Syrjälä
Intel
