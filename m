Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A8BE1434DF
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 01:50:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3841388D1E;
	Tue, 21 Jan 2020 00:50:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE32C6E138
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2020 00:50:08 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jan 2020 16:49:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,343,1574150400"; d="scan'208";a="275161104"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by FMSMGA003.fm.intel.com with ESMTP; 20 Jan 2020 16:49:41 -0800
Date: Tue, 21 Jan 2020 06:19:37 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200121004937.GB5190@intel.com>
References: <20200120054954.5786-1-anshuman.gupta@intel.com>
 <20200120064215.GA14839@intel.com> <87v9p6fmjz.fsf@intel.com>
 <20200120110044.GB14839@intel.com> <87sgkafk16.fsf@intel.com>
 <20200120115134.GB15991@intel.com> <87pnfeffgp.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87pnfeffgp.fsf@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/hdcp: Update CP as per the
 kernel internal state
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

On 2020-01-20 at 15:02:46 +0200, Jani Nikula wrote:
> On Mon, 20 Jan 2020, Ramalingam C <ramalingam.c@intel.com> wrote:
> > hdcp->value is used to track the internal transistions during the link
> > failure and re-establishing it. When ever kernel want to update the
> > "content protection" we take the required locks and update the property
> > state along with uevent.
> 
> My point is this: How many states does your state machine need?
> 
> Considering the tri-state content_protection and tri-state hdcp->value,
> you have 9 possible states and 362880 transitions. Add the new flag from
> this patch, and you have 18 possible states and 6e15 transitions.
> 
> Obviously you don't need or use that many states or transitions, but you
> need the code to limit the states and the transitions. You need the
> review to ensure any changes take into account all the possible states
> and transitions.
Yes. We dont use all those combination. Agreed that we need to review the
changes which impacts the updatation of hdcp state of internal state machine or
property state.

> 
> I've already noted one possible scenario in the proposed patch where
> stuff goes out of sync, and I don't know what's really going to happen.
> 
> ---
> 
> So maybe I don't understand what the hdcp code does, but then maybe you
> shouldn't ask me to have a look at it... ;) I'm trying to point out why
> I think it's maybe difficult to understand, and why I think adding
> another flag might make it more difficult to maintain.

Even we tried alternate solutions like retrieving the new drm_connector
state at DDI disable. We dropped it as that wont be received well. Any
suggestion on alternate approach to get the new connector state at
DDI disable call.

-Ram
> 
> BR,
> Jani.
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
