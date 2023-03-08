Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC3E6B13EA
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Mar 2023 22:33:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E21B910E71E;
	Wed,  8 Mar 2023 21:33:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14F5D10E720
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Mar 2023 21:33:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678311195; x=1709847195;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=qoKp3EgeQBDyb/xA4tRQoxTA4SILGmgRk3VIzilq5bE=;
 b=B05Kxy+3eiPHdYbkH0QBTP4VtIpOUXZlAmNqVhheS1KUH7YfVIboP7Zk
 xjjKdNmdKSUE4CEQQjq36rqBiFJWh9Lc/JN6+JJOrULr3hLzPgUBONrNS
 E0QOeq6ieI7iQZLCMukfpeMShi5wxBHN4Jw9BGknGbK2pq2BJ5uIqwKM7
 ZljlGW0TJRXqFuiIBnnBC27n1fwr5c7Es4M1/MsCkJbjI/ilGQj9+ImmM
 E2Wl5KFbSq1aWHwiTeqiJ02Cyru+vBkJmILLrCWYbNDJWsLvumfpwDFcE
 eJ8xIzbpz1BKhz+0PzMKxq3xkFoAVtGaHVGkbRifn31yuOsAheyvg9beP A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="338617233"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="338617233"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 13:33:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="677141899"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="677141899"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 08 Mar 2023 13:28:08 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 08 Mar 2023 23:28:07 +0200
Date: Wed, 8 Mar 2023 23:28:07 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZAj8FHyaMWi+EGyY@intel.com>
References: <20230214134348.11020-1-ville.syrjala@linux.intel.com>
 <20230214134348.11020-3-ville.syrjala@linux.intel.com>
 <ZADzDhPBjkhNsT7+@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZADzDhPBjkhNsT7+@ideak-desk.fi.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Fix idle pattern enabling
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

On Thu, Mar 02, 2023 at 09:03:42PM +0200, Imre Deak wrote:
> On Tue, Feb 14, 2023 at 03:43:48PM +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Currently we are always switching to the idle pattern after the
> > link training, but we don't always wait for the minimum number
> > of idle patterns sent. That doesn't look to be what Bspec
> > asks of us.
> > 
> > According to bspec what we should do is switch to idle pattern
> > and wait for it only in DP1.4 MST cases. In all other cases we
> > should apparently do neither.
> > 
> > What confuses matters further is that the port sync SST sequence
> > asks us to "stay in idle pattern". But if we never switched to it
> > how can we stay in it? This still needs further clarificaiton.
> 
> HSW seems to require it also for SST, but yes for all other platforms
> bspec only requires it for MST.

commit 3ab9c63705cb ("drm/i915: hsw: fix link training for eDP on
port-A") (written by you it seems :) says there was some problem on
HSW that needed it for DDI A SST as well. But it's not really obvious
why you skipped the IDLE_DONE thing there. Maybe just an optimization?

Anyways, that does suggest that perhaps the current code is more
correct than what I'm proposing here.

> The DP2.1 standard has some addition
> (3.5.1.2.6) referring to idle pattern to be sent after TPS even for SST.
> Not sure if this would be done automatically by HW w/o manually
> switching to it.

I did at some point spot some DP state machine status bits in some
debug register. If I get bored I might see if I can spot the idle
pattern transmission on those when we don't explicitly enable it.

-- 
Ville Syrjälä
Intel
