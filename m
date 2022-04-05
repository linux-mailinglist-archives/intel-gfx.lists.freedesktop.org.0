Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A9934F3D7D
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 22:07:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F41910EE4D;
	Tue,  5 Apr 2022 20:07:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70A7310EE4D
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Apr 2022 20:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649189220; x=1680725220;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=P1R4fQx7yyhYX0t3qkUIgwsdq4dhKz7YKMI2P9LVYtc=;
 b=Zdhwi8LRbB9WM7/oUFFQKdUjuDK1OW4T9GHalmM+bBy/ciecXnjr3+1e
 dI2XIKX+ZjnWrm0mvCZP1hJvcSPlBxgpn54wt45sAyBRdrwMrsR96nhWB
 WsWm9oJ3AJXJEfymBWIon7pA4ajt0FPRP2dYOQ0dI3+hlrS/4wQHIomWR
 rkKxhbAMjRedC5dNHOfrgy99D/Ek8EUHv/tF4FlGBHSWB/7yBGcrGs+M4
 4p8oA+qp0TJu6PibTnuqWaDTXtykL0PBczWYR+A7q0Pyvl8YCGE+RZj3W
 rrZ6xhD1JQ10SqriJihhsujOEuK4uUMkwzT7APrCWjayZ6unv0MCbNN9/ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="248370223"
X-IronPort-AV: E=Sophos;i="5.90,238,1643702400"; d="scan'208";a="248370223"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 13:06:59 -0700
X-IronPort-AV: E=Sophos;i="5.90,238,1643702400"; d="scan'208";a="789995135"
Received: from wendu-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.136.77])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 13:06:59 -0700
Date: Tue, 5 Apr 2022 13:06:58 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Casey Bowman <casey.g.bowman@intel.com>
Message-ID: <20220405200658.xukfm7y347k6joge@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220331204343.1256150-1-casey.g.bowman@intel.com>
 <20220331204343.1256150-2-casey.g.bowman@intel.com>
 <fcf7384d-7ee4-a261-9dd8-8ff0698c3365@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <fcf7384d-7ee4-a261-9dd8-8ff0698c3365@intel.com>
Subject: Re: [Intel-gfx] [PATCH v6 1/1] Split i915_run_as_guest into x86 and
 non-x86
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
Cc: intel-gfx@lists.freedesktop.org, daniel.vetter@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 05, 2022 at 11:04:54AM -0700, Casey Bowman wrote:
>@Jani/Lucas, any other thoughts here?

last version didn't pass CI:

https://patchwork.freedesktop.org/series/102041/

when this happens, developer should analyze the results to check if it's
a regression from their changes. When it's not a regression we can merge
it, but in this case it didn't pass BAT, so there wasn't even a full
run.

Lucas De Marchi
