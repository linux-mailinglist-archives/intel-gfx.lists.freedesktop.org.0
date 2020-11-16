Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB4E2B423C
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Nov 2020 12:08:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CD2D89E01;
	Mon, 16 Nov 2020 11:08:25 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B95189A1E
 for <Intel-gfx@lists.freedesktop.org>; Mon, 16 Nov 2020 11:08:24 +0000 (UTC)
IronPort-SDR: uIkmA/Thi6FjfiLdt7JZyP/gPMG+q/wQSSA5UorMG0ztHt63x3dcblTBv3oHbZeKKe4Doeu+I+
 mK150lpEYLbw==
X-IronPort-AV: E=McAfee;i="6000,8403,9806"; a="169946578"
X-IronPort-AV: E=Sophos;i="5.77,482,1596524400"; d="scan'208";a="169946578"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 03:08:24 -0800
IronPort-SDR: 3JaAyPcR93/LK9Bd1kZffE4+k4KnNjq7FmNrKNC0VGCiYKqzBWkBBp6UmWZBT8l2D4eCsgA8HV
 ZujesrO9WRIA==
X-IronPort-AV: E=Sophos;i="5.77,482,1596524400"; d="scan'208";a="309840261"
Received: from joejam1x-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.3.39])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 03:08:22 -0800
MIME-Version: 1.0
In-Reply-To: <13ba7eabd5234380ad3ffdc33a25e150@intel.com>
References: <20201115210815.5272-1-sean.z.huang@intel.com>
 <20201115210815.5272-23-sean.z.huang@intel.com>
 <160552361446.10586.17624770348766864713@jlahtine-mobl.ger.corp.intel.com>
 <13ba7eabd5234380ad3ffdc33a25e150@intel.com>
To: "Huang, Sean Z" <sean.z.huang@intel.com>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>, "Winkler,
 Tomas" <tomas.winkler@intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <160552490039.11557.16875558922475882406@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Mon, 16 Nov 2020 13:08:20 +0200
Subject: Re: [Intel-gfx] [PATCH 23/27] mei: bus: enable pavp device.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Winkler, Tomas (2020-11-16 12:49:54)
> 
> 
> > -----Original Message-----
> > From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > Sent: Monday, November 16, 2020 11:47
> > To: Huang, Sean Z <sean.z.huang@intel.com>; Intel-
> > gfx@lists.freedesktop.org
> > Cc: Winkler, Tomas <tomas.winkler@intel.com>
> > Subject: Re: [Intel-gfx] [PATCH 23/27] mei: bus: enable pavp device.
> > 
> > Obviously needs to be reviewed in the right mailing lists and as there don't
> > seem to be any code dependencies should be merged there too.
> > 
> > Regards, Joonas
> 
> I will send my patches via GregKH misc tree, but that might create a bit of disconnection. 

Right, just indicating that these need at least Acked-by to merge
through drm. And usually if there are no code-level dependencies
it's better to merge directly at the right tree to avoid requiring
backmerges.

Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
