Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 122844676B3
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Dec 2021 12:48:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FE5789198;
	Fri,  3 Dec 2021 11:48:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D0B273E34
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Dec 2021 11:48:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10186"; a="323214410"
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="323214410"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 03:48:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="541599985"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 03 Dec 2021 03:48:01 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 Dec 2021 13:48:00 +0200
Date: Fri, 3 Dec 2021 13:48:00 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YaoD8J3CxqdPQPrj@intel.com>
References: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
 <20211124113652.22090-21-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211124113652.22090-21-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 20/20] drm/i915/fbc: Pimp the FBC debugfs
 output
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

On Wed, Nov 24, 2021 at 01:36:52PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Now that each plane tracks its own no_fbc_reason we can print that
> out in debugfs, and we can also show which plane is currently
> selected for FBC duty.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

This one is still missing review.

I've pushed everything else, thans for the reviews so far.

-- 
Ville Syrjälä
Intel
