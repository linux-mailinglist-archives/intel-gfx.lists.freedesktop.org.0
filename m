Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0ACC98F383
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2024 18:05:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 825EE10E8A4;
	Thu,  3 Oct 2024 16:05:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ke7bgJXM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA26010E8A4
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2024 16:05:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727971505; x=1759507505;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=DwvPcgVYwIfVlswO0QZyqKT39nDwXjkJhFwHgBchz0Y=;
 b=ke7bgJXMMekOjAhAa8gbCSwvPb1LyqpYN4xpjqgjWUzIR96S3/06bbvf
 R7CeN6wRKifaC1kf/wiax29ruxLEQ7QHW5RbNaIqOesd0gD2/pXEqszyT
 G8i8YWNxj9YjXwa2WwvRgXSkIrn7cbMY12RvdcdHnAcmZfZNr8ycZQXY9
 nrun6wzDMOr3mP+pp6fmE+xrfVyMrLKbYDC248aAKXmL6W/3/1E8dY2Ok
 Du5W/14oO6Hmjaka0DP1veb2INBG3/ifjpwuomPH9Xl3vvagqNBnIFRdH
 kObGreMt/GL+9fvtOYEzQE6ptQ07rvFWnohRvfJg7jitNSzl5oz4RpDf6 w==;
X-CSE-ConnectionGUID: 7a7PsiQ3RQ2PxvxOdsCg3w==
X-CSE-MsgGUID: ypQ1usbwQvWuIjxB8LKpjA==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="26685301"
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="26685301"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 09:02:31 -0700
X-CSE-ConnectionGUID: T6uA4K5lTteUpS3celGYaQ==
X-CSE-MsgGUID: dxd1c1MeT5q67/wzQQ44AA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="74640846"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.186])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 09:02:28 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>, Ville
 =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org,
 ville.syrjala@intel.com, sai.teja.pottumuttu@intel.com
Subject: Re: [PATCH] drm/i915/icl: Update csc and gamma enable checks
In-Reply-To: <55bb7824-15fd-43fa-a285-03533d693a66@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241003090341.3140997-1-sai.teja.pottumuttu@intel.com>
 <Zv57pzLX4ltH4w00@intel.com>
 <20241003142237.GK5725@mdroper-desk1.amr.corp.intel.com>
 <Zv6rGHmLiL5GrpKG@intel.com> <Zv6xBKixcWn_gJEW@intel.com>
 <a80d1e55-a294-41b9-8369-495450fa9c34@intel.com>
 <Zv68V6A_HTQihdWu@intel.com>
 <55bb7824-15fd-43fa-a285-03533d693a66@intel.com>
Date: Thu, 03 Oct 2024 19:02:24 +0300
Message-ID: <87msjlrx7z.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Thu, 03 Oct 2024, "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>=
 wrote:
> On 03-10-2024 21:16, Ville Syrj=C3=A4l=C3=A4 wrote:
>> No. The current code already works correctly, and pipe_csc_enable and
>> gamma_enable are not meant to be used on icl+.
>
> So, if that is the case, would it be good to still have the=20
> icl_get_config function here and completely remove the gamma_enable and=20
> csc_enable setting part so that its clear that we don't need these in icl=
+?

Then you'll lose the check on those bit actually having been left at 0.

BR,
Jani.


--=20
Jani Nikula, Intel
