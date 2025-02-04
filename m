Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB178A2795E
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 19:09:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0569B10E044;
	Tue,  4 Feb 2025 18:09:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MQm7bckc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FE9810E044
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2025 18:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738692549; x=1770228549;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=WI2pS1p/socKGY4BrveK2PsNonurZre/sJDmCv3h5xg=;
 b=MQm7bckcPKelRZO73Rlhuu4GPy7Lxy3NIqp+nAeAs3PoHMO3uT1/sqzM
 L4/nhFCpT4iuzYjRXfXHXSiQZiob3AYui92UWDYFXsDgaqMJrhIZT+ALG
 zq5TUJ+NflCPSsACT2wWY7ALFpKyJzSRsClVcQlSuGe5v2IwP9+uX7Bc8
 9W3WVkl0ShNNuViSik49BSmC/SfIxKnRIv4nwekMHAtThx4UBhqP0hFnS
 S2zlZpN98vCXpyF/AzeSu68NrOhLfkI/+DxCvVwvurKMt2APs2Nx6SmUq
 Onr2vOU+0qOfwk5xaZYlAAdjBf+suZtBSOGLIv29uEMwIYDU11qwpIjb+ A==;
X-CSE-ConnectionGUID: ApwDG1FaSmOY3VFd6Fu95w==
X-CSE-MsgGUID: 3ZIzxK4MTCa/iXrF3FParQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39496327"
X-IronPort-AV: E=Sophos;i="6.13,259,1732608000"; d="scan'208";a="39496327"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 10:09:08 -0800
X-CSE-ConnectionGUID: 2k7+XopDQmusExiP/HF+kg==
X-CSE-MsgGUID: A+E2xDJHTka8rn1dWWOqGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,259,1732608000"; d="scan'208";a="110547814"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 10:09:06 -0800
Date: Tue, 4 Feb 2025 20:10:03 +0200
From: Imre Deak <imre.deak@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "Thasleem, Mohammed" <mohammed.thasleem@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/dmc: Add debugfs for dc6 counter
Message-ID: <Z6JX-0o18jtIubQ_@ideak-desk.fi.intel.com>
References: <Z6DuZS_9hVqzZuwA@ideak-desk.fi.intel.com>
 <Z6Dx4ypYV3NJVuf1@intel.com>
 <Z6D0BdYxiq8rLYnx@ideak-desk.fi.intel.com>
 <Z6D5rl5bcI1v675e@intel.com>
 <Z6EXhDOE3Mx9ueCF@ideak-desk.fi.intel.com>
 <173861394843.77773.14213626182925674257@intel.com>
 <8102bd56478db361607ddd2848fabf3c4768f3c9.camel@intel.com>
 <173861525455.77773.11090522110857446904@intel.com>
 <816975f84d2005fad3f870f9d7486f18cfef3578.camel@intel.com>
 <173861750965.77773.16119113504082709088@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <173861750965.77773.16119113504082709088@intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Feb 03, 2025 at 06:18:29PM -0300, Gustavo Sousa wrote:
> Quoting Vivi, Rodrigo (2025-02-03 17:59:19-03:00)
> [...]
> Perhaps Imre can explain this better, but I believe the point is that we
> want to track increments to DC5 counter when we have DC6 enabled. That
> driver-managed counter would be in dc6_allowed.
> 
> Repeating Imre's suggestions with a minor tweak:
> 
> 1. Before we tell the hardware that we are allowing DC6 (disable ->
>    DC6), we store the value of the current DC5 counter.
>
> 2. After we disable DC states from DC6 (DC6 -> disable), we read the DC5
>    counter again and subtract the value from (1). The result would then be
>    added to the current value of dc6_allowed.

Yes, with the actual delta being: DC5 counter read here - DC5 counter read
at (1).

> In (1) I think we should read the DC5 counter before we update
> DC_STATE_EN, just to be sure we avoid some sort of race (although that
> appears to be unlikely to happen).

Yes, the orders you described in both (1) and (2) are correct (since a
DC5 -> DC6 or DC6 -> DC5 transition is not possible).

The dc6_allowed counter should be also updated before returning it to
userspace via the debugfs entry, as I mentioned earlier (to account
for the case where DC6 is enabled when the read happens).

> During DC6 validation, if the test sees that dc6_allowed was
> incremented, that means that the display engine reached a state where
> the SOC would be able to put the display in DC6.

Yes, that's my understanding.

--Imre
