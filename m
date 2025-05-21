Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5F40ABFC6B
	for <lists+intel-gfx@lfdr.de>; Wed, 21 May 2025 19:41:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 081D910E6FB;
	Wed, 21 May 2025 17:41:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lxnaLqE5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4A4110E6FB;
 Wed, 21 May 2025 17:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747849259; x=1779385259;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Uj7LFnF+tCuZM/9eDunV1/frFF7klgy1TIn4Rx8/Mr4=;
 b=lxnaLqE5cevMMddqzXAUKFnEsTE8gCzkXJiI8A2GSpeXHMkEkbNajZvt
 DA7riSNYnyRfepmAlPVSqKwE4N09Rx5pL9f5J03zMs5fKLEpqL3eJGxmg
 U+8SF9fDMunx6lMcf+24AIEtPl6mFD5Kljz136TahaDQ4L5QzFK9FJVUJ
 V6530RRVQwuJY5rZQ/FEUHmoS0MZDEQhuiganky7tJiQlHNPa/7433m+6
 6ArZTs3ZQ1eussRhRapTaM3j1cEapOC7/h6Ie8xF1oEfnCKIw2WpJn5gJ
 mAfO9DIylYOsEJR8m9bM9+aahfH5quxwoDfzHGYJFhgWztc3219AZf8zq g==;
X-CSE-ConnectionGUID: dbwPvjWLTxC5xOmWglbyxg==
X-CSE-MsgGUID: 1ybxk/EpQAC2AmZ7mrMvvg==
X-IronPort-AV: E=McAfee;i="6700,10204,11440"; a="49982501"
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="49982501"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 10:40:59 -0700
X-CSE-ConnectionGUID: Zxy7IhesTPCZ3zeI52lTmQ==
X-CSE-MsgGUID: ykxSX9b1SN6gp7n/l1bzVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="145311317"
Received: from oandoniu-mobl3.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.255])
 by orviesa005.jf.intel.com with SMTP; 21 May 2025 10:40:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 21 May 2025 20:40:56 +0300
Date: Wed, 21 May 2025 20:40:56 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 07/12] drm/i915/flipq: Provide the nuts and bolts code
 for flip queue
Message-ID: <aC4QKAibwpjWmLCf@intel.com>
References: <20250516113408.11689-8-ville.syrjala@linux.intel.com>
 <20250519170857.14201-1-ville.syrjala@linux.intel.com>
 <DM4PR11MB63608A222F893F4AE14DF776F49FA@DM4PR11MB6360.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM4PR11MB63608A222F893F4AE14DF776F49FA@DM4PR11MB6360.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
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

On Tue, May 20, 2025 at 07:06:42AM +0000, Shankar, Uma wrote:
> > +static int intel_flipq_exec_time_us(struct intel_display *display) {
> > +	/* TODO ask the DSB code what this should be */
> > +	int dsb_exec_time = 20;
> 
> I think optimum value would be 100.
> From bspec: "For the flip queue use case, the recommended DSB execution time is 100us + one SAGV block time"

That's just a random number someone pulled out of a hat. We currently
use 20 usec for the arming registers writes, and we don't have any estimate
for the non-arming stuff since we don't need it. But for flip queue we need
to guesstimate the whole thing, so I suppose I might as well slap in a 80usec
for the non-arming part now. 

Ideally we should calculate this based on how many registers we are writing,
but that would require measuring the DSB execution speed and coming up with
a reasonable formula for it...

-- 
Ville Syrjälä
Intel
