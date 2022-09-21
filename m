Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D7DD05DD30C
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 20:12:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B442510E3BB;
	Wed, 21 Sep 2022 18:12:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75E1D10E1F9
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Sep 2022 18:12:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663783931; x=1695319931;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=uFbqfq76NITcEWaGOlkDZU2/2Kv3SgvC40EtEyMK8Eo=;
 b=BoJm7kZ/rci14FfnsAng1qQ9ON+yI35Bo7I3KQvERDzVB+/hiy9CISOd
 3PpfABu8hIbKuqiCPITZ46do+ahpMD02MQziDhwVnO3g+QeBG3ni1spiF
 nx484NNV/24+/Envf78VZO+VuhowutPnt1dz7uz+r0GSNJVfl/Oep2888
 0oh1srI1jE6Qf67MPzP4DaiqJ1hP6Pgv2JKhDqadcLGngta7Yjpo3KWrv
 c3Z9y6z0OmOT43i9aWpIDXfhmOh8ZuFZswiCPxfKrgyAbBpErhR8uMQAA
 bjyL4Tk9YHa9kq6YQtMfyVnra4ZAsc7/JSERFD/bE/mIv75WfoT/wZZsV w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="300926406"
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="300926406"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 11:12:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="652642441"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga001.jf.intel.com with SMTP; 21 Sep 2022 11:12:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 21 Sep 2022 21:12:07 +0300
Date: Wed, 21 Sep 2022 21:12:07 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Message-ID: <YytT9xhRYyEjrTX6@intel.com>
References: <20220921172300.130964-1-balasubramani.vivekanandan@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220921172300.130964-1-balasubramani.vivekanandan@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Don't use port enum as
 register offset
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

On Wed, Sep 21, 2022 at 10:52:59PM +0530, Balasubramani Vivekanandan wrote:
> Display DDI ports are enumerated as PORT_A,PORT_B... . The enums are
> also used as an index to access the DDI_BUF_CTL register for the port.
> 
> With the introduction of TypeC ports, new enums PORT_TC1,PORT_TC2.. were
> added starting from enum value 4 to match the index position of the
> DDI_BUF_CTL register of those ports. Because those early platforms had
> only 3 non-TypeC ports PORT_A,PORT_B, PORT_C followed by TypeC ports.
> So the enums PORT_D,PORT_E.. and PORT_TC1,PORT_TC2.. used the same enum
> values.
> 
> Driver also used the condition `if (port > PORT_TC1)` to identify if a
> port is a TypeC port or non-TypeC.

No one should really be doing that, apart from a few exceptions
during initialization. Apart from that I don't think enum port
should really be doing anything else these days than being the
register block offset we pass to the port registers.

Well, the VBT code does screw over that idea kinda. I've been
occasionally pondering some kind of separate namespace for ports
for the VBT code but haven't really it throught it through in
any detail.

> 
> >From XELPD, additional non-TypeC ports were added in the platform
> calling them as PORT D, PORT E and the DDI registers for those ports
> were positioned after TypeC ports.  So the enums PORT_D and PORT_E can't
> be used as their values do not match with register position. It led to
> creating new enums PORT_D_XELPD, PORT_E_XELPD for ports D and E.
> 
> The condition `if (port > PORT_TC1)` was no more valid for XELPD to
> identify a TypeC port. Also it led to many additional special checks for
> ports PORT_D_XELPD/PORT_E_XELPD.
> 
> With new platforms indicating that the DDI register positions of ports
> can vary across platforms it makes no more feasible to maintain the port
> enum values to match the DDI register position.

Do we know that it's going to get even more messy?

Anyways, we have the exact same thing with AUX CH, so trying to
change one but not the other isn't really going to help.

And on top of that we have the horrorshow in intel_port_to_phy()
& co. I think the phy stuff is probably what we should try to sort
out next, since IMO it's the bigger mess.

-- 
Ville Syrjälä
Intel
