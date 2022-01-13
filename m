Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4724F48DC4E
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 17:58:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1738810E128;
	Thu, 13 Jan 2022 16:58:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0739610E46D
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jan 2022 16:58:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642093132; x=1673629132;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=dp3CIE5LwrA/5K0UpaJSSTi9UHI7CFcisbGJz9uRlhk=;
 b=PQ7uJRf65oRnJMY8irnunh/2BOH2hkntFjVkbcuoYRP+Wpjo1VPbgFQo
 MWeYx0EG/1g8+nNoK1U6sxV5ae71MXkfPnguRqho8YHWKpOAVuWVS5SxY
 IWaC/MoagZoLQRLfKQE/GbCwDkTmQRp+uNyQAWns+DIoeKc1JxDs5vSZH
 aFajtgv3fGAW+F85NlQMzCc+XffFXVs56IBKSUtWXifZouDLY61YZKISp
 ZCPiQ0QvQWjYRHx1fIAeu5qUnFrG0BdOMWqCGOOFlG9hHkKQwBIO7J/Vy
 ZHzflfJXxu04vT1jwpV0z004obLa3+7gPWZ9YQ29mTWijYvw+lULSWmke A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10225"; a="244257582"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="244257582"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 08:58:51 -0800
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="623910667"
Received: from joneil3-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.0.221])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 08:58:49 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, Matt Roper
 <matthew.d.roper@intel.com>
In-Reply-To: <Yd9LFygL5q43ziNW@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220111051600.3429104-1-matthew.d.roper@intel.com>
 <Yd9LFygL5q43ziNW@intel.com>
Date: Thu, 13 Jan 2022 18:58:47 +0200
Message-ID: <8735lr7et4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v3 00/11] Start cleaning up register
 definitions
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 12 Jan 2022, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> I understand that I'm late to the fun here, but I got myself wondering if
> we couldn't separated the registers in a "regs" directory
> and find some way to organize them in IP blocks matching the hw...
>
> mainly thinking about 2 cases:
>
> 1. searching for registers usages...
> 2. the idea of having some sort of auto generation from spec...

At least to me it's more important to split these between display and
gt, and I'd prefer not to have them in the same directory.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
