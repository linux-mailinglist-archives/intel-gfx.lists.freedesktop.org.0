Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9382A02A5
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Oct 2020 11:17:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B7E76E062;
	Fri, 30 Oct 2020 10:17:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC8DD6E062
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Oct 2020 10:17:30 +0000 (UTC)
IronPort-SDR: 7vnpGNpZdpXzXQaLAjJCaaG9KxFByswQt4ABFG6h5EL74cxijw01xSo/RJym+/j1XHcTguQN/Z
 OVbJz1Q/azYQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9789"; a="147873052"
X-IronPort-AV: E=Sophos;i="5.77,432,1596524400"; d="scan'208";a="147873052"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 03:17:21 -0700
IronPort-SDR: h3J4oB3+C25t2XvCPgDruqIe1GrJ/MFQkdzmFCQLPGM8KUXDiAhlgqtDPsEQs/daq820wtCsyx
 XBXjfq5hoGXA==
X-IronPort-AV: E=Sophos;i="5.77,432,1596524400"; d="scan'208";a="469483233"
Received: from bvandelf-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.7.179])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 03:17:19 -0700
MIME-Version: 1.0
In-Reply-To: <160405294406.7917.4399095853364861325@jlahtine-mobl.ger.corp.intel.com>
References: <7730fe97-f906-4dd9-df96-9d722ed6ad11@jguk.org>
 <160405294406.7917.4399095853364861325@jlahtine-mobl.ger.corp.intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Jonny Grant <jg@jguk.org>, jani.nikula@linux.intel.com,
 intel-gfx@lists.freedesktop.org
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <160405303686.7917.12971155325318156066@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Fri, 30 Oct 2020 12:17:17 +0200
Subject: Re: [Intel-gfx] Intel i915 corruption issue Gnome EOG #146
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

+ intel-gfx mailing list

Quoting Joonas Lahtinen (2020-10-30 12:15:44)
> Quoting Jonny Grant (2020-10-27 22:42:19)
> > Hello Jani, Joonas
> > 
> > https://gitlab.gnome.org/GNOME/eog/-/issues/146
> > 
> > Is this issue something you could debug?
> 
> Can you file a bug according to the instructions here with details
> about the hardware:
> 
> https://gitlab.freedesktop.org/drm/intel/-/wikis/How-to-file-i915-bugs
> 
> > I've got some screenshots
> > 
> > 
> > 
> > Seems to be above 32bit.
> > 
> > https://gitlab.gnome.org/GNOME/eog/-/issues/150#note_946421
> > 
> > If you don't think it is an i915 issue, could you post a comment?
> > It only reproduces on intel i915 chipset laptops
> 
> Quite a few components are involved, so it might also be a bug in the
> Mesa 3D side.
> 
> An useful excercise would be to figure out the exact pixel width after
> which the contents is clipped. I noticed one reporting user is using
> Thinkpad X220, have any users of more modern hardware reported similar
> issue?
> 
> Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
