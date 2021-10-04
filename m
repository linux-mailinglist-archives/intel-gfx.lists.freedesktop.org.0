Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C391421746
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Oct 2021 21:20:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C82BE6E02B;
	Mon,  4 Oct 2021 19:20:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC36B6E02B
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Oct 2021 19:20:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10127"; a="205675001"
X-IronPort-AV: E=Sophos;i="5.85,346,1624345200"; d="scan'208";a="205675001"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2021 11:38:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,346,1624345200"; d="scan'208";a="521530295"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 04 Oct 2021 11:38:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 04 Oct 2021 21:38:47 +0300
Date: Mon, 4 Oct 2021 21:38:47 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Sean Paul <seanpaul@chromium.org>,
 "C, Ramalingam" <ramalingam.c@intel.com>,
 "B S, Karthik" <karthik.b.s@intel.com>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <YVtKN2GRw5T3tSSw@intel.com>
References: <YVrctgdJ8EYdW9i0@intel.com>
 <9078bb70f03e41738043771fb1d89ff3@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9078bb70f03e41738043771fb1d89ff3@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] i915 MST HDCP code looks broken
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

On Mon, Oct 04, 2021 at 03:04:01PM +0000, Gupta, Anshuman wrote:
> 
> 
> > -----Original Message-----
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Sent: Monday, October 4, 2021 4:22 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Sean Paul <seanpaul@chromium.org>; Gupta, Anshuman
> > <anshuman.gupta@intel.com>; C, Ramalingam <ramalingam.c@intel.com>; B S,
> > Karthik <karthik.b.s@intel.com>
> > Subject: i915 MST HDCP code looks broken
> > 
> > Hi,
> > 
> > I took a quick peek at intel_dp_add_mst_connector() the other day and noticed
> > that it calls intel_dp_hdcp_init() and passes in the SST dig_port. And digging in a
> > bit further that seems to clobber all kinds of things in dig_port->hdcp_port_data.
> > This looks rather broken to me.
> > 
> > So has anyone actually thought what happens if you first use MST on the port,
> > and then later switch to SST on the same port?
> AFAIU there shouldn't be , when the last connector of MST topology get destroyed  and it switches to SST mode on same port.
> The base static connector of same dig_port should get connected and will call  intel_dp_init_connector()->intel_dp_hdcp_init().

SST conectors are static. They are created exactly once when the driver
loads.

-- 
Ville Syrjälä
Intel
