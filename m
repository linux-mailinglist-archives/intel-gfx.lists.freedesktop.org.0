Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 910FF6980E6
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 17:32:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28A3F10E28A;
	Wed, 15 Feb 2023 16:32:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C21D10E28A;
 Wed, 15 Feb 2023 16:32:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676478752; x=1708014752;
 h=date:message-id:from:to:cc:subject:in-reply-to:
 references:mime-version;
 bh=lXFju9gOE7j5cKrCN30L2c9pP8xDGLgCH8yDOjjwb9A=;
 b=loiUUGL1MmM9vugG5fo395nHQAl+99DsWoC6pJStFjKpNHu3T/a32DJ2
 LB5yFWhqFa/pw2WszJEAu0Rj/OC1YDti3iOIRB1jW+qA+iOdKYW/GycTK
 VJpYtEwD343Fg1rNuvOkWO/8Ntwhm4J4dDqns7LzSMir7f/wv0BmmhM8p
 ci2L14R1I7tLaCwGaWfbgMuiBA/yPrDHDKYpI8lXqH4Xe4DXKy1PCsw7D
 ZwQqrowB8fdxGspLtmFejE3/PPcRzQTAEQMMFqJOxzwWIJcXJAcs56HWy
 DZ2iLTtbPpgc2z5JM8mc+7AZYq/8GRJ4qR27vMzz12d4JCp8ppeGkDUJC w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="358895588"
X-IronPort-AV: E=Sophos;i="5.97,300,1669104000"; d="scan'208";a="358895588"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 08:32:31 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="758478180"
X-IronPort-AV: E=Sophos;i="5.97,300,1669104000"; d="scan'208";a="758478180"
Received: from adixit-mobl.amr.corp.intel.com (HELO adixit-arch.intel.com)
 ([10.251.28.186])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 08:32:31 -0800
Date: Wed, 15 Feb 2023 08:24:51 -0800
Message-ID: <875yc2oq0c.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
In-Reply-To: <877cwjq6rp.fsf@intel.com>
References: <20230208190312.1611335-1-ashutosh.dixit@intel.com>	<Y+QBJLXJ7uTo3p7l@intel.com>	<877cwjq6rp.fsf@intel.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/28.2 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/i915/hwmon: Enable PL1 power
 limit"
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
Cc: intel-gfx@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>,
 dri-devel@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 15 Feb 2023 07:37:30 -0800, Jani Nikula wrote:
>
> On Wed, 08 Feb 2023, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> > On Wed, Feb 08, 2023 at 11:03:12AM -0800, Ashutosh Dixit wrote:
> >> This reverts commit 0349c41b05968befaffa5fbb7e73d0ee6004f610.
> >>
> >> 0349c41b0596 ("drm/i915/hwmon: Enable PL1 power limit") is incorrect and
> >> caused a major regression on ATSM. The change enabled the PL1 power limit
> >> but FW sets the default value of the PL1 limit to 0 which implies HW now
> >> works at minimum power and therefore the lowest effective frequency. This
> >> means all workloads now run slower resulting in even GuC FW load operations
> >> timing out, rendering ATSM unusable.
> >>
> >> A different solution to the original issue of the PL1 limit being disabled
> >> on ATSM is needed but till that is developed, revert 0349c41b0596.
> >>
> >> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8062
> >
> > pushed to drm-intel-next and removed from drm-intel-fixes.
> >
> > Thanks for the quick reaction.
>
> Please always add Fixes: tags also to reverts.
>
> I suppose we should fix dim to also detect reverts, but I ended up
> cherry-picking and pushing the original commit out to
> drm-intel-next-fixes before realizing it's been reverted.

Oops, sorry!
