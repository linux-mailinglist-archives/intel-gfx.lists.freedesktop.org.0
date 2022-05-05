Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C17D551C2ED
	for <lists+intel-gfx@lfdr.de>; Thu,  5 May 2022 16:49:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1743710E3CC;
	Thu,  5 May 2022 14:49:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 917D610E3CC
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 May 2022 14:49:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651762165; x=1683298165;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=FuHB1IYG2f1BYanOQdFskxcbUAYb52rGUCtjitmS7DI=;
 b=RiwHgcGvK++PKxIcqk7PsAnABTmTA0thrFWufUtUIaDH15awkcx8oTOp
 cH590P5v/4qr+B/541eFNv1seNChnqQy7pC/5QdJ61BW9p5XAQb9tT31U
 M5D+2F1y88N/JkhNuPZqGEbGhHW6c36LDOxGEYaqA6BIoeBLYNfNpbJrm
 +xG1Lr+1odbZvf7HTu5IN2azfsJCtBYNr1BlZcTl/00n7fmvyiW+pDwSN
 hdlk/Lp+6QBACdvXupdWfn0XJu9uLc0hmMi9M1awieerixqadOi9O4r63
 c2QM0FiRTFyGzT8TwhjgQ+Gb1iXT41wZwmpf6o0IhGLA6EkyrvJvkxmTT w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10338"; a="267728213"
X-IronPort-AV: E=Sophos;i="5.91,201,1647327600"; d="scan'208";a="267728213"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 07:49:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,201,1647327600"; d="scan'208";a="708963702"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga001.fm.intel.com with SMTP; 05 May 2022 07:49:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 05 May 2022 17:49:20 +0300
Date: Thu, 5 May 2022 17:49:20 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <YnPj8Lg979Y3Z5Py@intel.com>
References: <20220504190756.466270-1-jose.souza@intel.com>
 <87sfpol0kz.fsf@intel.com>
 <6d6c50f9c3da32be62147ffd41a969cf5cee3f7f.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6d6c50f9c3da32be62147ffd41a969cf5cee3f7f.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 01/12] drm/i915: Drop IPC from display 13
 and newer
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 05, 2022 at 02:00:50PM +0000, Souza, Jose wrote:
> On Thu, 2022-05-05 at 13:45 +0300, Jani Nikula wrote:
> > - has_rc6p - complicated
> 
> Matt Ropper suggested to use IS_GRAPHICS_VER(i915, 6, 7) so it will become even less complicated.

That won't really simplify it. The simplest form would be
IS_SNB||IS_IVB.

-- 
Ville Syrjälä
Intel
