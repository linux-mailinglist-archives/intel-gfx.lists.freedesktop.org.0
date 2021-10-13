Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9678F42BD37
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 12:39:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C7A76E0C4;
	Wed, 13 Oct 2021 10:39:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CEED6E0C4
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 10:39:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10135"; a="313597174"
X-IronPort-AV: E=Sophos;i="5.85,370,1624345200"; d="scan'208";a="313597174"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2021 03:39:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,370,1624345200"; d="scan'208";a="441599741"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 13 Oct 2021 03:38:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 Oct 2021 13:38:57 +0300
Date: Wed, 13 Oct 2021 13:38:57 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <YWa3QeJ3s0+9+fbH@intel.com>
References: <cover.1634119597.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1634119597.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 0/1] drm/i915: vlv sideband
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

On Wed, Oct 13, 2021 at 01:11:58PM +0300, Jani Nikula wrote:
> Three main ideas here:
> 
> - vlv sideband only has the name "sideband" in common with the rest of
>   intel_sideband.[ch]

I wouldn't put it like that. There are two actual sideband 
implementtions in that file:
- vlv/chv iosf sideband (vlv_sideband)
- lpt/wpt iosf sideband (intel_sbi)

And the third thing in that file is the snb+ pcode mailbox stuff,
which has nothing to do with sideband.

-- 
Ville Syrjälä
Intel
