Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IDCpOB5wzmnxngYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 15:33:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD55389CB4
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 15:33:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CBEF10F264;
	Thu,  2 Apr 2026 13:33:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FxNVpsRO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BA7110F260;
 Thu,  2 Apr 2026 13:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775136794; x=1806672794;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=k6MoFPIW0QlCYvxRLfP3xubaGhSFaWBJB6fnqz0V210=;
 b=FxNVpsROjNabwZmSN+tWeyKq8nJNGgKLwj69bHH3jtLmV7BO7mW/SqDC
 bjVd8DlfYvINkJ4KEu7sE6rv2UAhkY2X3xFOc5Pf9S9G7Qye3ze/beWmA
 0fb3y3yDSHxW6BJUzNByYbdhJ5vKgduJ2sI6KKIeobI7GsMMTTosMO58R
 hd7YjzAKe1NNDoaH8s7PQV7LYSn1zk3z3KzH6IDxI+2lzxewRk8u+ld4y
 FHH/HXl7qwd0oNCHyItcJT4shXCtAO1JeTOpJBnY4bOgcJ/hdMMLBuf5L
 NLzg9f5euxsqgKX+dIokp1OMACIobf7ojCk+szSJ4EsIqwRztBGtlzm3N g==;
X-CSE-ConnectionGUID: sEjJGExrQnqaZzQZGoF8jg==
X-CSE-MsgGUID: 58AM4VTDRTSMLQNFPLtrZg==
X-IronPort-AV: E=McAfee;i="6800,10657,11746"; a="86895843"
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; d="scan'208";a="86895843"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 06:33:14 -0700
X-CSE-ConnectionGUID: cXwBTIXzQVi1S7qVO1hN7w==
X-CSE-MsgGUID: CoEbEeN4TJ2oQioVQd6p6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; d="scan'208";a="257463705"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.245.61])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 06:33:12 -0700
Date: Thu, 2 Apr 2026 16:33:08 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [CI] drm/i915/display: change pipe allocation order for discrete
 platforms
Message-ID: <ac5wFFxx0HHpczWz@intel.com>
References: <20260316121837.1264876-1-jani.nikula@intel.com>
 <2db8f3e8adde89b85da08477ed3f4bd6b7392b5c@intel.com>
 <acqYWkrs5b3MOrnO@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <acqYWkrs5b3MOrnO@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [0.36 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.67)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: DDD55389CB4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 30, 2026 at 06:35:54PM +0300, Ville Syrjälä wrote:
> On Mon, Mar 30, 2026 at 02:37:47PM +0300, Jani Nikula wrote:
> > On Mon, 16 Mar 2026, Jani Nikula <jani.nikula@intel.com> wrote:
> > > When big joiner is enabled, it reserves the adjacent pipe as the
> > > secondary pipe. This happens without the user space knowing, and
> > > subsequent attempts at using the CRTC with that pipe will fail. If the
> > > user space does not have a coping mechanism, i.e. trying another CRTC,
> > > this leads to a black screen.
> > >
> > > Try to reduce the impact of the problem on discrete platforms by mapping
> > > the CRTCs to pipes in order A, C, B, and D. If the user space reserves
> > > CRTCs in order, this should trick it to using pipes that are more likely
> > > to be available for and after joining.
> > >
> > > Limit this to discrete platforms, which have four pipes, and no eDP, a
> > > combination that should benefit the most with least drawbacks.
> > 
> > Ville, I think it's time to review and, pretty soon, merge this.
> > 
> > Our IGT changes to deconflate CRTCs and pipes have been merged, and
> > there's the removal of invalid igt_crtc_t at [1] left. The trybot CI
> > results on i915 for swapping pipes B and C on all platforms, not just
> > discrete like here, didn't break anything either anymore [2].
> > 
> > I'm contemplating slapping Cc: stable on this too.
> > 
> > There's the FIXME on the CRTC index warning.
> 
> IIRC we already concluded that the WARN is unnecessary. I'd have to
> look through the previous mails to see what I actually said there.

Couldn't find the mail, but glanced at the code again, and I think I
removed that requirement long ago.

After commit 3a5e09d82f97 ("drm/i915: Fix intel_modeset_pipe_config_late()
for bigjoiner") intel_atomic_check_(big)joiner() isn't even in the same
loop anymore as the uapi->hw state copy,compute_config*(),etc. so clearly
all that stuff will have happened beforehand. Before that the situation
was a bit more unclear so that requirement might have still held then.
Too lazy to really dig that far.

> 
> > With the A+C and B+D
> > pairing there's no issue, the CRTC indexes remain in that order. But can
> > we ever really end up with B+C pairing?
> 
> It might be rare if userspace picks crtcs in order. But IIRC we had
> bugs where it was clear userspace was just picking random crtcs willy
> nilly. IIRC it was sway doing it, and I think I even proposed a
> uapi documentation update to suggest using crtcs in order. Can't 
> remember that happened to that one.
> 
> But I think we still want the "walk the crtcs in pipe order" change,
> mainly to keep the more optimal commit sequence. Also I'm not quite
> 100% convinced we don't have some subtle assumption somewhere about
> the order.
> 
> BTW I just realized that DG2 may also get a slight extra benefit from
> the reordering because A+C has twice the dbuf space compared to A+B.
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Ville Syrjälä
Intel
