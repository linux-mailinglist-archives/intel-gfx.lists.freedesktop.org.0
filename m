Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7C465FC6C6
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 15:53:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51B4510E0D4;
	Wed, 12 Oct 2022 13:53:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB54F10E0D4
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 13:53:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665582807; x=1697118807;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=kEV+7+frdzrVF67HjtWRCsAQvQnoEcUA0vt9HflastU=;
 b=hXWkpZOsajgfM1j8JiM8lmZ3M40lbP4KUTuEbKxtB6dYQMMlEB3g15Q+
 GcGshAeFQuz61G26tgynXwJsxdj5lczzxISemy4LxLBjaOdkrw7gOlkbV
 J2DMV9Yfk5KmNqZiN6UA/uABUDq23u4SUNDBaC9z6+bKBMkxtwxOvMBJs
 /ndq3QHWpPnkZvYVXjoVyg89ec8ShBeurzoxXRtta20UXEUmHuz8ICQEL
 0HPs4bb8hNkbpmhYdE3PG+2rUWs/MJ9+Q/vDoby+tmtn2cQG7zOMgOD6Y
 01C3equaAZmMtZUnTjNmd0Rkr2SYNPfAWYUxD2L4RGe70eEuOKl2LKb2g A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="292121376"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="292121376"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 06:53:27 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="801848071"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="801848071"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 06:53:25 -0700
Date: Wed, 12 Oct 2022 16:53:52 +0300 (EEST)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>
In-Reply-To: <alpine.DEB.2.22.394.2210121436400.3532114@eliteleevi.tm.intel.com>
Message-ID: <alpine.DEB.2.22.394.2210121652360.3532114@eliteleevi.tm.intel.com>
References: <20221011170011.17198-23-ville.syrjala@linux.intel.com>
 <20221012104936.30911-1-ville.syrjala@linux.intel.com>
 <alpine.DEB.2.22.394.2210121436400.3532114@eliteleevi.tm.intel.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH v2 22/22] drm/i915/audio: Resume HSW/BDW HDA
 controller around ELD access
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
Cc: Takashi Iwai <tiwai@suse.de>, Cezary Rojewski <cezary.rojewski@intel.com>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Wed, 12 Oct 2022, Kai Vehmanen wrote:

> On Wed, 12 Oct 2022, Ville Syrjala wrote:
> 
> > On HSW/BDW the hardware ELD buffer does not work if the controller
> > is suspended. I'm not 100% which thing in there is needed to make it
> > work (at least just forcing the controller into D0 with setpci is
> 
> how does the error show up? I'm puzzled how this could have gone 
> unreported for so long. I know many distros have had runtime PM disabled 
> for the HDA controller driver, so that could perhaps explain some of this, 
> but still seems a bit amazing.
> 
> We started SOF testing with upstream around GLK, so we never covered 
> HSW/BDW, but surely in SOF we always have runtime suspend by default 
> enabled on the audio side.
> 
> I'll need some more time for review. Will follow up later.

adding Cezary to the mail thread as well (I forwarded you some context
separately.

Br, Kai


