Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC78142B6F
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2020 14:02:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71E0F6E936;
	Mon, 20 Jan 2020 13:02:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6A906E936
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jan 2020 13:02:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jan 2020 05:02:52 -0800
X-IronPort-AV: E=Sophos;i="5.70,342,1574150400"; d="scan'208";a="215228688"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jan 2020 05:02:49 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ramalingam C <ramalingam.c@intel.com>
In-Reply-To: <20200120115134.GB15991@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200120054954.5786-1-anshuman.gupta@intel.com>
 <20200120064215.GA14839@intel.com> <87v9p6fmjz.fsf@intel.com>
 <20200120110044.GB14839@intel.com> <87sgkafk16.fsf@intel.com>
 <20200120115134.GB15991@intel.com>
Date: Mon, 20 Jan 2020 15:02:46 +0200
Message-ID: <87pnfeffgp.fsf@intel.com>
MIME-Version: 1.0
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

On Mon, 20 Jan 2020, Ramalingam C <ramalingam.c@intel.com> wrote:
> hdcp->value is used to track the internal transistions during the link
> failure and re-establishing it. When ever kernel want to update the
> "content protection" we take the required locks and update the property
> state along with uevent.

My point is this: How many states does your state machine need?

Considering the tri-state content_protection and tri-state hdcp->value,
you have 9 possible states and 362880 transitions. Add the new flag from
this patch, and you have 18 possible states and 6e15 transitions.

Obviously you don't need or use that many states or transitions, but you
need the code to limit the states and the transitions. You need the
review to ensure any changes take into account all the possible states
and transitions.

I've already noted one possible scenario in the proposed patch where
stuff goes out of sync, and I don't know what's really going to happen.

---

So maybe I don't understand what the hdcp code does, but then maybe you
shouldn't ask me to have a look at it... ;) I'm trying to point out why
I think it's maybe difficult to understand, and why I think adding
another flag might make it more difficult to maintain.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
