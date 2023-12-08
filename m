Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32FA380A1D3
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Dec 2023 12:08:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6188E10E982;
	Fri,  8 Dec 2023 11:08:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB03110EA6F
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Dec 2023 11:07:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702033683; x=1733569683;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=xZP7WI47lzY3iCn5G85A0Zw8RucLSGR6LF0ZVfz29d0=;
 b=N7TC+9OJGfTNk5pCp/oXMwDoXkTng0WlI9gJQn0IXGe6OGrGfaJpiGz2
 RstyDALEV3opfKsm+hZKN/EZRE+A7rMxqrcFSYvtPfeR/Mso0Kf0jGXIY
 3jjBPXIse9j0IPaT9gIZTLmukF8QopluPUp7hgMAm3hc2IZE8Oq9HOcZ2
 jGhqXuHzIbrlSXOLpW1BbaSiQ3nLCo8UT30RG2atvUiQy+Y1RZx8RHsBp
 S7WSsrbI/1LoxGdUBUYc5q7y2lAATS+CUC9McoaXHLki2BM9sqRnE74gw
 DXtQtGqIkNnvC5fEfFQ8Jku+IsPvEaVWuRR5ddddpI0RWntl1+cG8NcDB Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="384794732"
X-IronPort-AV: E=Sophos;i="6.04,260,1695711600"; d="scan'208";a="384794732"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2023 03:07:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="945385103"
X-IronPort-AV: E=Sophos;i="6.04,260,1695711600"; d="scan'208";a="945385103"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2023 03:07:55 -0800
Date: Fri, 8 Dec 2023 13:07:50 +0200 (EET)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: "Saarinen, Jani" <jani.saarinen@intel.com>
Subject: =?UTF-8?Q?RE=3A_=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_ALSA=3A?=
 =?UTF-8?Q?_hda=2Fhdmi=3A_add_force-connect_quirk_for_ASUSTeK?=
 =?UTF-8?Q?_Z170M_Pro?=
In-Reply-To: <DM8PR11MB565513B5B3ECDE7B15A4BD2BE08AA@DM8PR11MB5655.namprd11.prod.outlook.com>
Message-ID: <alpine.DEB.2.22.394.2312081303160.14041@eliteleevi.tm.intel.com>
References: <20231207170723.2371881-1-kai.vehmanen@linux.intel.com>
 <170202225515.7326.2958624725794863816@emeril.freedesktop.org>
 <DM8PR11MB565513B5B3ECDE7B15A4BD2BE08AA@DM8PR11MB5655.namprd11.prod.outlook.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="-318106570-1940254566-1702033675=:14041"
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Syrjala, Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

---318106570-1940254566-1702033675=:14041
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

Hi,


On Fri, 8 Dec 2023, Saarinen, Jani wrote:

> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Patchwork
> > Sent: Friday, December 8, 2023 9:58 AM
> > To: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> > Cc: intel-gfx@lists.freedesktop.org
> > Subject: ✗ Fi.CI.IGT: failure for ALSA: hda/hdmi: add force-connect quirk for
> > ASUSTeK Z170M Pro
> > 
> > Patch Details
> > Series:	ALSA: hda/hdmi: add force-connect quirk for ASUSTeK Z170M Pro
> > URL:	https://patchwork.freedesktop.org/series/127515/
> > State:	failure
> > Details:	https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127515v1/index.html
[...]
> > Possible regressions
> > 
> > 
> > *	igt@kms_flip@2x-flip-vs-panning@ab-hdmi-a1-hdmi-a2:
> > 
> > 	*	shard-glk: PASS <https://intel-gfx-ci.01.org/tree/drm-
> > tip/CI_DRM_13995/shard-glk9/igt@kms_flip@2x-flip-vs-panning@ab-hdmi-a1-
> > hdmi-a2.html>  -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-
> > tip/Patchwork_127515v1/shard-glk1/igt@kms_flip@2x-flip-vs-panning@ab-
> > hdmi-a1-hdmi-a2.html>
> > 
> Kai, Ville, could this change cause this? 
>

It would seem highly unlikely for the audio side quirk to cause a fail in 
display specific test case. I tried to look for logs but above links and
all shard data seems to be missing in:

https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127515v1/shards-all.html?

The two fails in 
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13995/shard-glk9/igt@kms_flip@2x-flip-vs-panning@ab-hdmi-a1-hdmi-a2.html
did not pass in reference CI_DRM run.

Br, Kai
---318106570-1940254566-1702033675=:14041--
