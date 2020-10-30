Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 095942A035B
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Oct 2020 11:54:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62A7489C03;
	Fri, 30 Oct 2020 10:54:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A8B389B20
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Oct 2020 10:54:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22842672-1500050 for multiple; Fri, 30 Oct 2020 10:54:11 +0000
MIME-Version: 1.0
In-Reply-To: <160405303686.7917.12971155325318156066@jlahtine-mobl.ger.corp.intel.com>
References: <7730fe97-f906-4dd9-df96-9d722ed6ad11@jguk.org>
 <160405294406.7917.4399095853364861325@jlahtine-mobl.ger.corp.intel.com>
 <160405303686.7917.12971155325318156066@jlahtine-mobl.ger.corp.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Jonny Grant <jg@jguk.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, jani.nikula@linux.intel.com
Date: Fri, 30 Oct 2020 10:54:10 +0000
Message-ID: <160405525007.15070.2337887176301828625@build.alporthouse.com>
User-Agent: alot/0.9
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

Quoting Joonas Lahtinen (2020-10-30 10:17:17)
> + intel-gfx mailing list
> 
> Quoting Joonas Lahtinen (2020-10-30 12:15:44)
> > Quoting Jonny Grant (2020-10-27 22:42:19)
> > > Hello Jani, Joonas
> > > 
> > > https://gitlab.gnome.org/GNOME/eog/-/issues/146
> > > 
> > > Is this issue something you could debug?
> > 
> > Can you file a bug according to the instructions here with details
> > about the hardware:
> > 
> > https://gitlab.freedesktop.org/drm/intel/-/wikis/How-to-file-i915-bugs
> > 
> > > I've got some screenshots
> > > 
> > > 
> > > 
> > > Seems to be above 32bit.
> > > 
> > > https://gitlab.gnome.org/GNOME/eog/-/issues/150#note_946421
> > > 
> > > If you don't think it is an i915 issue, could you post a comment?
> > > It only reproduces on intel i915 chipset laptops
> > 
> > Quite a few components are involved, so it might also be a bug in the
> > Mesa 3D side.
> > 
> > An useful excercise would be to figure out the exact pixel width after
> > which the contents is clipped. I noticed one reporting user is using
> > Thinkpad X220, have any users of more modern hardware reported similar
> > issue?

Large pixmap support was dropped from glamor, -modesetting can only
support images up to the HW surface limit. It is a functional
regression.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
