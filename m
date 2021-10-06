Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78647423FA7
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Oct 2021 15:55:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7470C6E514;
	Wed,  6 Oct 2021 13:55:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B08196E4F3;
 Wed,  6 Oct 2021 13:55:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10128"; a="224768783"
X-IronPort-AV: E=Sophos;i="5.85,350,1624345200"; d="scan'208";a="224768783"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 06:54:56 -0700
X-IronPort-AV: E=Sophos;i="5.85,350,1624345200"; d="scan'208";a="522241719"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 06:54:52 -0700
Date: Wed, 6 Oct 2021 16:47:57 +0300 (EEST)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: Greg KH <gregkh@linuxfoundation.org>
cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>, 
 dri-devel@lists.freedesktop.org, Takashi Iwai <tiwai@suse.de>, 
 alsa-devel@alsa-project.org, jani.nikula@intel.com, 
 Imre Deak <imre.deak@intel.com>, 
 Russell King <rmk+kernel@arm.linux.org.uk>, 
 "Rafael J . Wysocki" <rafael@kernel.org>, intel-gfx@lists.freedesktop.org, 
 Russell King <rmk+kernel@armlinux.org.uk>
In-Reply-To: <YVxiyzNrKG8S1GDb@kroah.com>
Message-ID: <alpine.DEB.2.22.394.2110061613520.3554566@eliteleevi.tm.intel.com>
References: <20210922085432.2776886-1-kai.vehmanen@linux.intel.com>
 <YVxiyzNrKG8S1GDb@kroah.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH v2] component: do not leave master devres
 group open after bind
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Tue, 5 Oct 2021, Greg KH wrote:

> On Wed, Sep 22, 2021 at 11:54:32AM +0300, Kai Vehmanen wrote:
> > In current code, the devres group for aggregate master is left open
> > after call to component_master_add_*(). This leads to problems when the
> > master does further managed allocations on its own. When any
> > participating driver calls component_del(), this leads to immediate
> > release of resources.
[...]
> > the devres group, and by closing the devres group after
> > the master->ops->bind() call is done. This allows devres allocations
> > done by the driver acting as master to be isolated from the binding state
> > of the aggregate driver. This modifies the logic originally introduced in
> > commit 9e1ccb4a7700 ("drivers/base: fix devres handling for master device")
> > 
> > BugLink: https://gitlab.freedesktop.org/drm/intel/-/issues/4136
> > Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> > Acked-by: Imre Deak <imre.deak@intel.com>
> > Acked-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
> 
> What commit does this "fix:"?  And does it need to go to stable
> kernel(s)?

I didn't put a "Fixes" on the original commit 9e1ccb4a7700 
("drivers/base: fix devres handling for master device") as it alone
didn't cause problems. It did open the door for possible devres issues
for anybody calling component_master_add_().

On audio side, this surfaced with the more recent commit 3fcaf24e5dce 
("ALSA: hda: Allocate resources with device-managed APIs"). In theory one 
could have hit issues already before, but this made it very easy to hit
on actual systems.

If I'd have to pick one, it would be 9e1ccb4a7700 ("drivers/base: fix 
devres handling for master device"). And yes, given comments on this 
thread, I'd say this needs to go to stable kernels.

Br, Kai
