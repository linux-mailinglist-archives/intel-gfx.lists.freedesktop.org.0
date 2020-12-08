Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 037EB2D2976
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Dec 2020 12:04:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB5CF8999A;
	Tue,  8 Dec 2020 11:04:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89E958999A;
 Tue,  8 Dec 2020 11:04:12 +0000 (UTC)
IronPort-SDR: IIaHZH/MjKnSWU5xGH0QUOVNQUtF0ZDhQ/P5XTpnedLbiG0gsopzCslxEpcXRzoulXric7H3dz
 dsX5L37ebe5w==
X-IronPort-AV: E=McAfee;i="6000,8403,9828"; a="192154752"
X-IronPort-AV: E=Sophos;i="5.78,402,1599548400"; d="scan'208";a="192154752"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2020 03:04:08 -0800
IronPort-SDR: T3qYfZCERfoJ6CZRSkqPOME8CzmMEM/MtU72uX800d/6B11PlB6bE6OcsTD7atZeCyCMNjxVit
 vkO1KI+5jIpA==
X-IronPort-AV: E=Sophos;i="5.78,402,1599548400"; d="scan'208";a="347854790"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2020 03:04:07 -0800
Received: from platvala by thrakatuluk with local (Exim 4.92)
 (envelope-from <petri.latvala@intel.com>)
 id 1kmamr-0005uT-0i; Tue, 08 Dec 2020 13:04:05 +0200
Date: Tue, 8 Dec 2020 13:04:05 +0200
From: Petri Latvala <petri.latvala@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201208110405.GO7444@platvala-desk.ger.corp.intel.com>
References: <20201207161150.1841453-1-chris@chris-wilson.co.uk>
 <20201207161150.1841453-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201207161150.1841453-2-chris@chris-wilson.co.uk>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH i-g-t 2/2] i915/query: Directly check query
 results against GETPARAM
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 07, 2020 at 04:11:50PM +0000, Chris Wilson wrote:
> Simplify the cross-check by asserting that the existence of an engine in
> the list matches the existence of the engine as reported by GETPARAM.
> By using the comparison, we check both directions at once.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Petri Latvala <petri.latvala@intel.com>


For the series,
Reviewed-by: Petri Latvala <petri.latvala@intel.com>

Thanks!
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
