Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E43EA2AF2BC
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Nov 2020 14:58:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED00689E86;
	Wed, 11 Nov 2020 13:58:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2981A89E86
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Nov 2020 13:58:03 +0000 (UTC)
IronPort-SDR: mW23/75ZYbyeWr/VF60WQ/wGp7UWXhwhjKq1eb3A+GTjhoisOO0mPvr4vsS7PHUIFZ7vQxfdZe
 7z5bnjBiZzHQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9801"; a="157926388"
X-IronPort-AV: E=Sophos;i="5.77,469,1596524400"; d="scan'208";a="157926388"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2020 05:57:59 -0800
IronPort-SDR: pk5exVAGDcjvWCR/+3pT2dIH4dsZd4cNiw9AA/X4MHOp4zboPCohQVr6RBjVmBNImGpbGzUNS1
 KFXHBazhXY5g==
X-IronPort-AV: E=Sophos;i="5.77,469,1596524400"; d="scan'208";a="531709553"
Received: from cwatters-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.80.153])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2020 05:57:57 -0800
MIME-Version: 1.0
In-Reply-To: <5a9ed343-b73c-34cb-6420-1acdb9aeb202@jguk.org>
References: <7730fe97-f906-4dd9-df96-9d722ed6ad11@jguk.org>
 <160405294406.7917.4399095853364861325@jlahtine-mobl.ger.corp.intel.com>
 <160405303686.7917.12971155325318156066@jlahtine-mobl.ger.corp.intel.com>
 <160405525007.15070.2337887176301828625@build.alporthouse.com>
 <5a9ed343-b73c-34cb-6420-1acdb9aeb202@jguk.org>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, Jonny Grant <jg@jguk.org>,
 intel-gfx@lists.freedesktop.org, jani.nikula@linux.intel.com
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <160510307375.12900.12830853398871603700@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Wed, 11 Nov 2020 15:57:54 +0200
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

Quoting Jonny Grant (2020-10-30 16:05:02)
> 
> 
> On 30/10/2020 10:54, Chris Wilson wrote:
> > Quoting Joonas Lahtinen (2020-10-30 10:17:17)
> >> + intel-gfx mailing list
> >>
> >> Quoting Joonas Lahtinen (2020-10-30 12:15:44)
> >>> Quoting Jonny Grant (2020-10-27 22:42:19)
> >>>> Hello Jani, Joonas
> >>>>
> >>>> https://gitlab.gnome.org/GNOME/eog/-/issues/146
> >>>>
> >>>> Is this issue something you could debug?
> >>>
> >>> Can you file a bug according to the instructions here with details
> >>> about the hardware:
> >>>
> >>> https://gitlab.freedesktop.org/drm/intel/-/wikis/How-to-file-i915-bugs
> >>>
> >>>> I've got some screenshots
> >>>>
> >>>>
> >>>>
> >>>> Seems to be above 32bit.
> >>>>
> >>>> https://gitlab.gnome.org/GNOME/eog/-/issues/150#note_946421
> >>>>
> >>>> If you don't think it is an i915 issue, could you post a comment?
> >>>> It only reproduces on intel i915 chipset laptops
> >>>
> >>> Quite a few components are involved, so it might also be a bug in the
> >>> Mesa 3D side.
> >>>
> >>> An useful excercise would be to figure out the exact pixel width after
> >>> which the contents is clipped. I noticed one reporting user is using
> >>> Thinkpad X220, have any users of more modern hardware reported similar
> >>> issue?
> > 
> > Large pixmap support was dropped from glamor, -modesetting can only
> > support images up to the HW surface limit. It is a functional
> > regression.
> > -Chris
> > 
> 
> Hell Chris, Joonas
> 
> Thank you for your reply.
> 
> May I ask if you can reproduce the issue on one of your developer machines at Intel? so we can rule in/out intel graphics...

Chris's reply indicates that this is a problem in the higher software
layers. There is a maximum texture size the HW can support, and
previously it has been overcome by splitting the image into portions.

I think such image splitting needs to be re-introduced in the upper
software layers.

Regards, Joonas

> Let me know if you have a Gnome desktop with EOG. Let me know if you'd like me to email the image
> Jonny
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
