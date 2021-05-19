Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD2B388954
	for <lists+intel-gfx@lfdr.de>; Wed, 19 May 2021 10:25:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA4BD6ECE3;
	Wed, 19 May 2021 08:25:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA6136ECE0;
 Wed, 19 May 2021 08:25:33 +0000 (UTC)
IronPort-SDR: d7UmjA3SoBQzleVe5nq6IC484EUNFNP7KHACFTyX+te0I7A9rGsv2cAQDagNDI+XQzoeZSDOvq
 E7VmGU1m6lGg==
X-IronPort-AV: E=McAfee;i="6200,9189,9988"; a="264837906"
X-IronPort-AV: E=Sophos;i="5.82,312,1613462400"; d="scan'208";a="264837906"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 01:25:29 -0700
IronPort-SDR: P20o1fT9rO4uoOMWLf4hWE9/8CSZ0IvJap9Fj4x4GJdyhyxXRRFFrlQ0r8aRq2DJbFex0K+deV
 rmYzhrlYAwEg==
X-IronPort-AV: E=Sophos;i="5.82,312,1613462400"; d="scan'208";a="473387264"
Received: from akrolak-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.37.74])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 01:25:27 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Petri Latvala <petri.latvala@intel.com>,
 Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <YKTKAT7szb+DvKRH@platvala-desk.ger.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210511165117.428062-1-matthew.auld@intel.com>
 <20210511165117.428062-8-matthew.auld@intel.com>
 <YKTKAT7szb+DvKRH@platvala-desk.ger.corp.intel.com>
Date: Wed, 19 May 2021 11:25:24 +0300
Message-ID: <87o8d7dtaj.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t 07/12] i915_drm.h sync
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
Cc: igt-dev@lists.freedesktop.org, thomas.hellstrom@linux.intel.com,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 19 May 2021, Petri Latvala <petri.latvala@intel.com> wrote:
> On Tue, May 11, 2021 at 05:51:12PM +0100, Matthew Auld wrote:
>> Sync to get gem_create_ext and the regions query stuff.
>
> Kernel commit sha in commit message please.

Might be nice to have a script or a build target to update a file from
kernel, with the proper commit message.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
