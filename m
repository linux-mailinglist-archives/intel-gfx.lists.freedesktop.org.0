Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E01B77EB104
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Nov 2023 14:40:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DCA210E441;
	Tue, 14 Nov 2023 13:40:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FBFE10E214;
 Tue, 14 Nov 2023 13:40:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699969203; x=1731505203;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=IxbnVp92CtiiW6TO1K5s/oZfAKHXB6pZjhSjijIYkm4=;
 b=loQV6nddRqlmnLug1kN0OlOCdxku7kSBJS9su4W6TAk5D+9xrYeyTgYZ
 TjC5F9IXTIakbxLo0ReOgvISii8lqW0q1hEfWNUa3WQfBNF6OHg4kIL++
 WfvGPS9ABcYu15hbkw/FK5o/NlHZ14FxswNkf2hL664EGErlK0Wj3AEo3
 +9WBRE8aFzzb2wI9Hphvr/iz+L3XoT13tJ/b6/2GUIoxY5fSjLbZn8pa2
 QmwzXYgZ95omZCCRq1d/5KGZ72StwuR+zpkToMien2vjlT7/KSVwByV2k
 HhF48hyygLI1VyRrgT8SldTiJlKaAawF9ypto9pqIOXwqUXy1dvNNaSI4 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="370853405"
X-IronPort-AV: E=Sophos;i="6.03,302,1694761200"; d="scan'208";a="370853405"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 05:40:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="758176952"
X-IronPort-AV: E=Sophos;i="6.03,302,1694761200"; d="scan'208";a="758176952"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 14 Nov 2023 05:39:58 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Nov 2023 15:39:57 +0200
Date: Tue, 14 Nov 2023 15:39:57 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <ZVN4rQjLxROOjTE-@intel.com>
References: <20231002193847.7134-1-maarten.lankhorst@linux.intel.com>
 <20231002193847.7134-11-maarten.lankhorst@linux.intel.com>
 <ZVNUxZzCGcxQzqJX@intel.com> <87bkbwsebl.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87bkbwsebl.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 11/14] ALSA: hda/intel: Move
 snd_hdac_i915_init to before probe_work.
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
Cc: alsa-devel@alsa-project.org, Takashi Iwai <tiwai@suse.de>,
 intel-gfx@lists.freedesktop.org, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 14, 2023 at 02:35:10PM +0200, Jani Nikula wrote:
> On Tue, 14 Nov 2023, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > On Mon, Oct 02, 2023 at 09:38:44PM +0200, maarten.lankhorst@linux.intel.com wrote:
> >> From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> >> 
> >> Now that we can use -EPROBE_DEFER, it's no longer required to spin off
> >> the snd_hdac_i915_init into a workqueue.
> >> 
> >> Use the -EPROBE_DEFER mechanism instead, which must be returned in the
> >> probe function.
> >
> > This completely broke i915 audio!
> >
> > I also can't see any trace of this stuff ever being posted to 
> > intel-gfx so it never went through the CI.
> >
> > Please fix or revert ASAP.
> 
> Cc: Jani, Suresh
> 
> Ville, please file a bug at gitlab so we can track this, thanks.

https://gitlab.freedesktop.org/drm/intel/-/issues/9671

-- 
Ville Syrjälä
Intel
