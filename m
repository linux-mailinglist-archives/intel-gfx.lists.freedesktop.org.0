Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9905461F3F2
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 14:05:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2A3C10E30B;
	Mon,  7 Nov 2022 13:04:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D7F210E30B
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 13:04:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667826294; x=1699362294;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=bTBbxL24Xg9aYuAF06jXxCES0KFIqiTppIDIqsmrwbM=;
 b=HVUpPLJbMWvrHSGAep1W1kaz47ziDvW20pRQ3x5sWPNlNijfw9wj+vR5
 aM7yteW7lZxeB/a3PTxhJXrtD7XVdN+xBNX+1+XzAkRjtMo28MFLD3Xk6
 GftF0WDGFSR9j/a83Nby1Eo8FJ8Nya5DtEbEcAtKndoxnOEcT4h3uXdqi
 FMwFDaveukcyLQxFBSwDnXrZ0vjTjNyhh+jKLbiJ0AQsyZRMfD7R+cHx9
 dJUXHCdG6Hi13GfV+8AhJGYy590alzawAfy1BKCfXNbBvX/J4e9dBJTh2
 jDmjZho5hcu0JU2Pd/bYwgjc1e4XlX9mXXLcKzFhQhw9cW979qOARqlkJ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="309114355"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="309114355"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 05:04:53 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="965143228"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="965143228"
Received: from briansim-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.14.193])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 05:04:52 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20221107084258.1353210-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221107084258.1353210-1-suraj.kandpal@intel.com>
Date: Mon, 07 Nov 2022 15:04:49 +0200
Message-ID: <87pmdyapam.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 0/8] Enable YCbCr420 for VDSC
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

On Mon, 07 Nov 2022, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> This patch series aims to enable the YCbCr420 format
> for DSC. Changes are mostly compute params related for
> hdmi,dp and dsi along with the addition of new rc_tables
> for native_420 and corresponding changes to macros used to
> fetch them.

Huh, what's the deal with all the series on this sent today?

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
