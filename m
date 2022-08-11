Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A36458FF23
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Aug 2022 17:18:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17F58B3F14;
	Thu, 11 Aug 2022 15:18:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5047F18B66D
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Aug 2022 15:17:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660231055; x=1691767055;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=S5pWztbTX7aP8+/zoa6Krd7pOp74lNXlHUDKyyt9L6M=;
 b=aM4CnZ7vBnwlKrJWoHoF4H/l75w0oBxIz6A9yJnskWQ4LHylRaL5C2c6
 VWhI23W1pX8bKNirLY5Zzwww6ianI0OEpW+VhlxH7Jrxz2CbqbpNlUICJ
 uhqBB/p5rd2HHIac2Ole+uHghfiZGxOokuGxgklbFj0in0Q9OGNxz+wPK
 vuILsLPTWQsF3cHvveYhggtaU9a9zRelRN9SgfOIdG1bVPbJ5bVkDLuQM
 WeqZldwihZ2EimglHw/TG3Ubdyh262O50hNkjMqdCfl6iJule4EAcnmoH
 IEr8hJteJuV05RbK9ni5llPVI55UqsYCQyxP/XjGtZKI1CWxZsZ+RBNi4 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="274430326"
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="274430326"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:15:39 -0700
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="665416299"
Received: from gdogaru-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.102])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:15:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <cover.1660230121.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1660230121.git.jani.nikula@intel.com>
Date: Thu, 11 Aug 2022 18:15:35 +0300
Message-ID: <87pmh6u7zc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 00/39] drm/i915: add display sub-struct to
 drm_i915_private
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
Cc: lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 11 Aug 2022, Jani Nikula <jani.nikula@intel.com> wrote:
> Add display sub-struct to drm_i915_private, and start moving display
> related members there.
>
> This doesn't help with build dependencies yet, but adds a lot of clarity
> in organizing the display data, and who accesses display data and where.
>
> This is a beginning, there are still stragglers, but need to start
> sending the patches instead of accumulating tons more.

Also pushed the lot to
https://cgit.freedesktop.org/~jani/drm/log/?h=display-substruct


-- 
Jani Nikula, Intel Open Source Graphics Center
