Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF0412E6E8
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jan 2020 14:47:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60F976E0ED;
	Thu,  2 Jan 2020 13:47:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCDCC6E0ED
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jan 2020 13:47:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jan 2020 05:47:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,387,1571727600"; d="scan'208";a="270322401"
Received: from zeliteleevi.tm.intel.com ([10.237.55.130])
 by FMSMGA003.fm.intel.com with ESMTP; 02 Jan 2020 05:47:10 -0800
Date: Thu, 2 Jan 2020 15:47:10 +0200 (EET)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@zeliteleevi
To: Matt Roper <matthew.d.roper@intel.com>
In-Reply-To: <20191231170157.GV2877816@mdroper-desk1.amr.corp.intel.com>
Message-ID: <alpine.DEB.2.21.2001021524460.16459@zeliteleevi>
References: <20191231144718.32127-1-kai.vehmanen@linux.intel.com>
 <20191231170157.GV2877816@mdroper-desk1.amr.corp.intel.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: save state of AUD_FREQ_CNTRL on
 all gen9+ platforms
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hey,

On Tue, 31 Dec 2019, Matt Roper wrote:

> On Tue, Dec 31, 2019 at 04:47:18PM +0200, Kai Vehmanen wrote:
> > On old platforms the default values of AUD_FREQ_CNTRL are
> > typically used (as set by BIOS), so this has not been an issue,
> > but future platforms will definitely need this. Extend the state
> > save logic to cover all gen9+ platforms.
[...]
> Given that the lack of this save/restore was causing noticeable problems
> on ICL/TGL, do you know whether the same problems were also seen on
> EHL/JSL?  If so, we may want Cc: stable and Fixes: tags so that it gets
> backported?

the fix is most critical for TGL and later (due to changed hw default 
values gen12 display onwards). For EHL/JSL, this would seem less important 
as systems are shipping using the hw default configuration in which case 
this patch is not needed. Based on current data, I'd probably skip the Cc 
stable at this point as TGL is already covered -- or limit to "v5.5+". 

PS A newbie question, if decision is to cc stable, should I add it as the 
   original submitted and resend V2, or are stable tags typically
   added by the intel-gfx maintainers when applying a patch (i.e. no 
   actions needed from me). In sound tree, latter seems to be the norm..
   I see both conventions used here on intel-gfx.

Br, Kai
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
